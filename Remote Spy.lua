--[[

	-Created by Vaeb.

]]

_G.scanRemotes = true

_G.ignoreNames = {
	Event = true;
	MessagesChanged = true;
}

setreadonly(getrawmetatable(game), false)
local pseudoEnv = {}
local gameMeta = getrawmetatable(game)

local tabChar = "      "

local function getSmaller(a, b, notLast)
	local aByte = a:byte() or -1
	local bByte = b:byte() or -1
	if aByte == bByte then
		if notLast and #a == 1 and #b == 1 then
			return -1
		elseif #b == 1 then
			return false
		elseif #a == 1 then
			return true
		else
			return getSmaller(a:sub(2), b:sub(2), notLast)
		end
	else
		return aByte < bByte
	end
end

local function parseData(obj, numTabs, isKey, overflow, noTables, forceDict)
	local objType = typeof(obj)
	local objStr = tostring(obj)
	if objType == "table" then
		if noTables then
			return objStr
		end
		local isCyclic = overflow[obj]
		overflow[obj] = true
		local out = {}
		local nextIndex = 1
		local isDict = false
		local hasTables = false
		local data = {}

		for key, val in next, obj do
			if not hasTables and typeof(val) == "table" then
				hasTables = true
			end

			if not isDict and key ~= nextIndex then
				isDict = true
			else
				nextIndex = nextIndex + 1
			end

			data[#data+1] = {key, val}
		end

		if isDict or hasTables or forceDict then
			out[#out+1] = (isCyclic and "Cyclic " or "") .. "{"
			table.sort(data, function(a, b)
				local aType = typeof(a[2])
				local bType = typeof(b[2])
				if bType == "string" and aType ~= "string" then
					return false
				end
				local res = getSmaller(aType, bType, true)
				if res == -1 then
					return getSmaller(tostring(a[1]), tostring(b[1]))
				else
					return res
				end
			end)
			for i = 1, #data do
				local arr = data[i]
				local nowKey = arr[1]
				local nowVal = arr[2]
				local parseKey = parseData(nowKey, numTabs+1, true, overflow, isCyclic)
				local parseVal = parseData(nowVal, numTabs+1, false, overflow, isCyclic)
				if isDict then
					local nowValType = typeof(nowVal)
					local preStr = ""
					local postStr = ""
					if i > 1 and (nowValType == "table" or typeof(data[i-1][2]) ~= nowValType) then
						preStr = "\n"
					end
					if i < #data and nowValType == "table" and typeof(data[i+1][2]) ~= "table" and typeof(data[i+1][2]) == nowValType then
						postStr = "\n"
					end
					out[#out+1] = preStr .. string.rep(tabChar, numTabs+1) .. parseKey .. " = " .. parseVal .. ";" .. postStr
				else
					out[#out+1] = string.rep(tabChar, numTabs+1) .. parseVal .. ";"
				end
			end
			out[#out+1] = string.rep(tabChar, numTabs) .. "}"
		else
			local data2 = {}
			for i = 1, #data do
				local arr = data[i]
				local nowVal = arr[2]
				local parseVal = parseData(nowVal, 0, false, overflow, isCyclic)
				data2[#data2+1] = parseVal
			end
			out[#out+1] = "{" .. table.concat(data2, ", ") .. "}"
		end

		return table.concat(out, "\n")
	else
		local returnVal = nil
		if (objType == "string" or objType == "Content") and (not isKey or tonumber(obj:sub(1, 1))) then
			local retVal = '"' .. objStr .. '"'
			if isKey then
				retVal = "[" .. retVal .. "]"
			end
			returnVal = retVal
		elseif objType == "EnumItem" then
			returnVal = "Enum." .. tostring(obj.EnumType) .. "." .. obj.Name
		elseif objType == "Enum" then
			returnVal = "Enum." .. objStr
		elseif objType == "Instance" then
			returnVal = obj.Parent and obj:GetFullName() or obj.ClassName
		elseif objType == "CFrame" then
			returnVal = "CFrame.new(" .. objStr .. ")"
		elseif objType == "Vector3" then
			returnVal = "Vector3.new(" .. objStr .. ")"
		elseif objType == "Vector2" then
			returnVal = "Vector2.new(" .. objStr .. ")"
		elseif objType == "UDim2" then
			returnVal = "UDim2.new(" .. objStr:gsub("[{}]", "") .. ")"
		elseif objType == "BrickColor" then
			returnVal = "BrickColor.new(\"" .. objStr .. "\")"
		elseif objType == "Color3" then
			returnVal = "Color3.new(" .. objStr .. ")"
		elseif objType == "NumberRange" then
			returnVal = "NumberRange.new(" .. objStr:gsub("^%s*(.-)%s*$", "%1"):gsub(" ", ", ") .. ")"
		elseif objType == "PhysicalProperties" then
			returnVal = "PhysicalProperties.new(" .. objStr .. ")"
		else
			returnVal = objStr
		end
		return returnVal
	end
end

function tableToString(t)
	return parseData(t, 0, false, {}, nil, false)
end

local detectClasses = {
	BindableEvent = true;
	BindableFunction = true;
	RemoteEvent = true;
	RemoteFunction = true;
}

local classMethods = {
	BindableEvent = "Fire";
	BindableFunction = "Invoke";
	RemoteEvent = "FireServer";
	RemoteFunction = "InvokeServer";
}

local realMethods = {}

for name, enabled in next, detectClasses do
	if enabled then
		realMethods[classMethods[name]] = Instance.new(name)[classMethods[name]]
	end
end

for key, value in next, gameMeta do pseudoEnv[key] = value end

local incId = 0

local function getValues(self, key, ...)
	return {realMethods[key](self, ...)}
end

gameMeta.__index, gameMeta.__namecall = function(self, key)
	if not realMethods[key] or _G.ignoreNames[self.Name] or not _G.scanRemotes then return pseudoEnv.__index(self, key) end
	return function(_, ...)
		incId = incId + 1
		local nowId = incId
		local strId = "[RemoteSpy_" .. nowId .. "]"

		local allPassed = {...}
		local returnValues = {}

		local ok, data = pcall(getValues, self, key, ...)

		if ok then
			returnValues = data
			print("\n" .. strId .. " ClassName: " .. self.ClassName .. " | Path: " .. self:GetFullName() .. " | Method: " .. key .. "\n" .. strId .. " Packed Arguments: " .. tableToString(allPassed) .. "\n" .. strId .. " Packed Returned: " .. tableToString(returnValues) .. "\n")
		else
			print("\n" .. strId .. " ClassName: " .. self.ClassName .. " | Path: " .. self:GetFullName() .. " | Method: " .. key .. "\n" .. strId .. " Packed Arguments: " .. tableToString(allPassed) .. "\n" .. strId .. " Packed Returned: [ERROR] " .. data .. "\n")
		end

		return unpack(returnValues)
	end
end

print("\nRan Vaeb's RemoteSpy\n")