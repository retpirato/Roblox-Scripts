


-- @Lilith.lua
-- author: lenny
local f_print, printing = print, true
local function print ( ... )
	if printing then
		f_print("[Lilith] - ", ...)
	end
end
print "Version 1.4b, official release;"
print "Aimbot will not work in every game, such as Phantom Forces."

-- configuration:
local settings = {	
	-- hotkeys:
	commandbar_Hotkey = "Minus",
	esp_Hotkey = "RightAlt",
	aimbot_Hotkey = "RightControl";
	
	-- defaults:
	esp_boxColor = "Bright red",
	esp_boxTransparent = true,
	esp_useTeamColorIfApplicable = true,
	esp_showDistance = true,
	esp_holdHotkey = false,
	esp_showCharacterEspd = true,
	aimbot_clickToLock = true,
	aimbot_clickToLockDistanceOverride = true,
	aimbot_maxDistance = 250,
	aimbot_aimFor = "Head";
	
	-- ignores:
	esp_ignoreTeam = true,
	esp_dont_ignoreSelf = false,
	aimbot_ignoreWalls = false,
	aimbot_ignoreTeam = false;
}

-- mainscript:
local Players = game:GetService("Players")
local Teams = game:GetService("Teams")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local localPlayer = Players.LocalPlayer
local Mouse = localPlayer:GetMouse()
local CoreGui = game:GetService("CoreGui")

local function findFirstChild (obj, name, sensitive)
	local children = obj:GetChildren()
	for i = 1, #children do
		local objN = children[i].Name
		if not sensitive then
			objN, name = objN:lower(), name:lower()
		end
		if objN:sub(1, name:len()) == name then
			return children[i]
		end
	end	
end
local function setHotkey (section, keyName)
	if Enum.KeyCode[keyName] then
		settings[section .. '_Hotkey'] = Enum.KeyCode[keyName]
		print ("Sucessfully set " .. section .. "'s hotkey to " .. keyName)
	end
end setHotkey("esp", settings.esp_Hotkey); setHotkey("aimbot", settings.aimbot_Hotkey); setHotkey("commandbar", settings.commandbar_Hotkey)
local function splitString (str, delimeter)	
	local strParts = {}
	local pattern = ("([^%s]+)"):format(delimeter)
	
	str:gsub(pattern, function(section)
		strParts[#strParts + 1] = section
	end)
	return strParts	
end
local function isHumanoidAlive (character)
	if character then
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if humanoid and humanoid.Health > 0 then 
			return character, humanoid
		end
	end
end
local function getCharacterFromPart (obj) -- made this in haste, so its unorganized!
	while (obj ~= game and obj ~= workspace) and (obj.Parent and not Players:GetPlayerFromCharacter(obj.Parent)) do
		obj = obj.Parent
	end
	return obj	
end
local function viewNotObstructed (lookingAt, parent)
	local character, _ = isHumanoidAlive(localPlayer.Character)
	if character then
		local headPos = character.Head.CFrame.p
		local viewRay = Ray.new(headPos, (lookingAt.CFrame.p - headPos).unit * 
			settings.aimbot_maxDistance)
		local object = workspace:FindPartOnRay(viewRay, character, true, true)
		if object then
			return object:IsDescendantOf(parent)
		end
	end
end
local function setColor (color)
	return select(2, pcall(function()
		if typeof(color) == "BrickColor" then
			color = color.Color
		elseif typeof(color) == "string" then
			color = BrickColor.new(color).Color
		end
		return color
	end))	
end

-- @create objects
local ESPOBJF do
	ESPOBJF = findFirstChild(CoreGui, "ESPOBJF")
	if not ESPOBJF then
		ESPOBJF = Instance.new("Folder", CoreGui)
		ESPOBJF.Name = "ESPOBJF"
	end
end
local Box, espText, aimbotText
local commandBar do	
	commandBar = Instance.new("ScreenGui")
	commandBar.Name = "%$#@$!&"
	
	local frame = Instance.new("Frame", commandBar)
	frame.BackgroundTransparency = 1; frame.Size, frame.Position = UDim2.new(0.221, 0,0.111, 0), UDim2.new(0.407, 0,0.644, 0); frame.Draggable = true; frame.Active = true
	
	local textlabel = Instance.new("TextLabel", frame)
	textlabel.BackgroundTransparency = 1; textlabel.TextSize = 16; textlabel.TextColor3 = Color3.fromRGB(255, 255, 255); textlabel.Font = Enum.Font.SourceSansLight; textlabel.Position, textlabel.Size = UDim2.new(0.132, 0,0.1, 0), UDim2.new(0.75, 0, 0.201, 0); textlabel.ZIndex = 1; textlabel.Text = "[Lilith]"
	
	Box = Instance.new("TextBox", frame)
	Box.BackgroundColor3 = Color3.fromRGB(58, 58, 58); Box.BackgroundTransparency = 0.5; Box.BorderSizePixel = 0; Box.TextSize = 16; Box.TextColor3 = Color3.fromRGB(255, 255, 255); Box.Font = Enum.Font.SourceSansItalic; Box.ClipsDescendants = true; Box.ZIndex = 1; Box.Text = "press to `-` to type"; Box.Size, Box.Position = UDim2.new(0.922, 0,0.402, 0), UDim2.new(0.026, 0,0.402, 0) ; Box.TextTransparency = 0.5	

	aimbotText = textlabel:Clone()
	aimbotText.Size, aimbotText.Position =UDim2.new(0.079, 0,0.201, 0), UDim2.new(0.74, 0,0.1, 0); aimbotText.TextColor3, aimbotText.Font = Color3.fromRGB(48, 48, 48), Enum.Font.SourceSansBold; aimbotText.Text = "bot"; aimbotText.Parent = frame
	
	espText = textlabel:Clone()
	espText.Size, espText.Position =UDim2.new(0.079, 0,0.201, 0), UDim2.new(0.184, 0,0.1, 0); espText.TextColor3, espText.Font = Color3.fromRGB(48, 48, 48), Enum.Font.SourceSansBold; espText.Text = "esp"; espText.Parent = frame
end
local active_espObjects = {}
local function clear_active_espObjects (ofParent)
	if not ofParent then
		ESPOBJF:ClearAllChildren()
		local a = 1
		while active_espObjects[a] do
			if active_espObjects[a] then
				active_espObjects[a]:Destroy()
			end
			active_espObjects[a] = nil
			a = a + 1
		end
	else
		local j = 1
		while active_espObjects[j] do
			local espObj = active_espObjects[j]
			if espObj and espObj:IsDescendantOf(ofParent) or ((espObj:IsA("BoxHandleAdornment") or espObj:IsA("BillboardGui")) and espObj.Adornee and espObj.Adornee:IsDescendantOf(ofParent)) then
				espObj:Destroy()
				espObj = nil
			end
			j = j + 1
		end
	end
end
local function createEspBoxOnObj (obj, color)	
	local espBox do
		espBox = Instance.new("BoxHandleAdornment")
		espBox.AlwaysOnTop = true
		espBox.ZIndex = 10
		espBox.Color3 = BrickColor.new(settings.esp_boxColor).Color
	end

	local color = setColor(color)
	if color then
		espBox.Color3 = color
	end
	
	if settings.esp_boxTransparent then
		espBox.Transparency = 0.8
	end
	
	espBox.Size = obj.Size
	espBox.Adornee = obj
	espBox.Parent = ESPOBJF
	active_espObjects[#active_espObjects + 1] = espBox
	
	return espBox	
end
local function getDistanceFrom (object)
	if localPlayer.Character and localPlayer.Character.Head then
		return math.floor((object.Position - localPlayer.Character.Head.Position).magnitude)
	else
		return "err"
	end
end
local function createDistTagOnCharacter (character, removeTag, color)
	local _, humanoid = isHumanoidAlive(character) 
	if humanoid then	
		humanoid.Died:Connect(function()
			clear_active_espObjects(character)
		end)
		local head = character:FindFirstChild("Head")	
		if head then
			if ESPOBJF:findFirstChild(character.Name) then
				ESPOBJF[character.Name]:Destroy()
				if removeTag then
					return
				end
			end
			
			local textLabel
			local distTag do
				distTag = Instance.new("BillboardGui")
				distTag.AlwaysOnTop = true
				distTag.Enabled = true
				distTag.Size = UDim2.new(0, 10,0, 50)
				
				textLabel = Instance.new("TextLabel", distTag)
				textLabel.Size = UDim2.new(0, 75,0, 25)
				textLabel.BackgroundColor3 = (color ~= nil and color) or Color3.fromRGB(48, 48, 48)  
				textLabel.BackgroundTransparency = 0.5
				textLabel.Font = Enum.Font.SourceSansBold
				textLabel.TextSize = 18
				textLabel.TextColor3 = Color3.fromRGB(255, 255 ,255)
				textLabel.ClipsDescendants = true
				textLabel.BorderSizePixel = 0	
			end
			distTag.Adornee = head
			distTag.Parent = ESPOBJF
			distTag.Name = character.Name
			textLabel.Text = character.Name
			active_espObjects[#active_espObjects + 1] = distTag

			coroutine.resume(coroutine.create(function()
				local now = tick()
				while isHumanoidAlive(character) and distTag do
					local t = tick() - now
					if t < 5 then
						if textLabel.Text ~= character.Name then
							textLabel.Text = character.Name 
						end
					elseif t < 10 and t > 5 then
						textLabel.Text = getDistanceFrom(head)
					elseif t > 10 then
						now = tick()
					end						
					wait()
				end
			end))
			return distTag	
		end
	end
end
 
-- @esp component
local function esp_getPlayers ()	
	local players = {}
	for _, player in next, Players:GetPlayers() do
		if (not settings.esp_ignoreTeam and player.Team ~= localPlayer.Team) or settings.esp_ignoreTeam then
			if settings.esp_dont_ignoreSelf or player ~= localPlayer then
				players[#players + 1] = player
			end
		end
	end
	return players
end
function espCharacter (character, color, override)
	local alreadyESPdTag = character:FindFirstChild("AESPT")
	if alreadyESPdTag then
		if override then
			clear_active_espObjects(character)
		else
			return
		end
	end		
	
	local _, humanoid = isHumanoidAlive(character)
	if humanoid then
		
		humanoid.Died:Connect(function()
			clear_active_espObjects(character)
		end)
		for _, part in next, character:GetChildren() do
			if part:IsA("BasePart") then
				createEspBoxOnObj(part, color)
			end
		end
		
		alreadyESPdTag = Instance.new("BoolValue", character)
		alreadyESPdTag.Name = "AESPT"
		active_espObjects[#active_espObjects + 1] = alreadyESPdTag
	end	
end
local espEnabled = false
local esp_Cache = {}
function clear_esp_Cache ()
	local a = 1
	while esp_Cache[a] do
		esp_Cache[a]:Disconnect()
		esp_Cache[a] = nil
		a = a + 1
	end
	esp_Cache = {}
end
local function handle_Esp (character)

	local timeout = tick()
	if not isHumanoidAlive(character) then 
		repeat wait() until isHumanoidAlive(character) or (tick() - timeout) >= 2
		if not isHumanoidAlive(character) then return end
	end
	
	local teamColor = Players:GetPlayerFromCharacter(character).TeamColor
	local color = (settings.esp_useTeamColorIfApplicable and teamColor) or settings.esp_boxColor
	color = setColor(color)
	if settings.esp_showCharacterEspd then
		espCharacter(character, color)
	end	
	if settings.esp_showDistance then
		createDistTagOnCharacter(character, false, color)
	end
	
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	humanoid.Died:Connect(function()
		clear_active_espObjects(character)
	end)
	
end
local function toggle_Esp (turnOff)
	if turnOff then
		clear_esp_Cache()
		clear_active_espObjects()
		espEnabled = false
		espText.TextColor3 = Color3.fromRGB(48, 48, 48)
		print "ESP successfully disabled"
		return	
	elseif not turnOff and not espEnabled then
		print "Attempting to enabled ESP .."
		clear_esp_Cache()
		clear_active_espObjects()
		local players = esp_getPlayers()
		for _, player in next, players do
			local rbxScriptSignal = player.CharacterAdded:Connect(function(character)
				if (not espEnabled and rbxScriptSignal) then rbxScriptSignal:Disconnect(); rbxScriptSignal = nil return end
				handle_Esp(character)
			end); esp_Cache[#esp_Cache + 1] = rbxScriptSignal
			if player.Character and isHumanoidAlive(player.Character) then
				handle_Esp(player.Character)
			end	
		end
		espText.TextColor3 = Color3.fromRGB(0, 255, 0)
		print "ESP successfully enabled"
	end		
end

-- @aimbot component
local targetPlayer, targetTeam, currentLock
local function clickToTarget (target, override_maxDistance)
	if target and (override_maxDistance or (not override_maxDistance and getDistanceFrom(target) <= settings.aimbot_maxDistance)) then
		if target.Parent and isHumanoidAlive(target.Parent) then
			targetPlayer = game.Players:GetPlayerFromCharacter(target.Parent)
			return true
		end
	end
end
local function getClosestCharacter ()
	if isHumanoidAlive(localPlayer.Character) then
		local closestDist, chrctr
		if targetPlayer then
			chrctr, _ = isHumanoidAlive(targetPlayer.Character)
			if not chrctr then
				chrctr = targetPlayer.CharacterAdded:wait()
			end
		else
			local players = (targetTeam and targetTeam:GetPlayers()) or Players:GetPlayers()
			for i = 1, #players do
				if players[i] ~= localPlayer and (targetTeam or settings.aimbot_ignoreTeam or (not settings.aimbot_ignoreTeam and players[i].Team ~= localPlayer.Team)) then
					local player = players[i]
					if isHumanoidAlive(player.Character) then
						local bodyPart = player.Character:FindFirstChild(settings.aimbot_aimFor)
						if bodyPart then
							local distanceBetween = getDistanceFrom(bodyPart)
							if distanceBetween <= settings.aimbot_maxDistance and (not closestDist or distanceBetween < closestDist) then
								if (settings.aimbot_ignoreWalls or (not settings.aimbot_ignoreWalls and viewNotObstructed(bodyPart, player.Character))) then
									closestDist = distanceBetween
									chrctr = player.character
								end
							end
						end
					end
				end
			end
		end		
		return chrctr
	end
end
local function targetCamera ()
	if isHumanoidAlive(localPlayer.Character) then
		local head = localPlayer.Character.Head
		local camera = workspace.CurrentCamera
		local character = (targetPlayer and isHumanoidAlive(targetPlayer.Character) and targetPlayer.Character) or getClosestCharacter()
		if character and character:FindFirstChild(settings.aimbot_aimFor) then
			currentLock = Players:GetPlayerFromCharacter(character)
			camera.CFrame = CFrame.new(camera.CFrame.p, character[settings.aimbot_aimFor].CFrame.p)
		end
	end	
end
aimbotEnabled = false
local function toggle_Aimbot ()
	aimbotEnabled = not aimbotEnabled
	print ("Aimbot successfully " .. ((aimbotEnabled and "enabled") or "disabled"))
	aimbotText.TextColor3 = (aimbotEnabled and Color3.fromRGB(0, 255, 0)) or Color3.fromRGB(48, 48, 48)
end

-- @commandbar component
local function isSetting (settingName)
	for k in next, settings do
		if k:lower() == settingName:lower() then
			return k
		end
	end
	return nil
end
local function changeSetting (settingName, newValue, notBoolean)
	if typeof(newValue) == "string" and not notBoolean then
		if (newValue:lower() == "enable" or newValue:lower() == "true") then newValue = true
	elseif (newValue:lower() == "disable" or newValue:lower() == "false") then newValue = false end
	end
	local k = isSetting(settingName)
	if k then
		settings[k] = newValue
		print("changed", k, newValue)
	end
end
function execute_Command (contents)
	local section = contents[1]:lower()
	local command = contents[2] and contents[2]:lower()
	
	if (section == "enable" or section == "on") or (section == "disable" or section == "off")	then
		if command == "aimbot" then	
			aimbotEnabled = (section == "enable" or section == "on")
	print ("Aimbot successfully " .. ((aimbotEnabled and "enabled") or "disabled"))
		aimbotText.TextColor3 = (aimbotEnabled and Color3.fromRGB(0, 255, 0)) or Color3.fromRGB(48, 48, 48)
		elseif command == "esp" then
			toggle_Esp((section == "disable" or section == "off") and true)
			espEnabled = (section == "enable" or section == "on")
		end
		
	--
	
	elseif section == "esp" then
		if (command == "enable" or command == "on") or (command == "disable" or command == "off") then	
			toggle_Esp((command == "disable" or command == "off") and true)
			espEnabled = (command == "enable" or command == "on")
		elseif command == "find" or command == "hide" or command:find("dist") then
			local plyr = findFirstChild(Players, contents[3]:lower())	
			local color = (#contents > 4 and table.concat(contents, " ", 4)) or contents[4]
			if color == "" or color == " " then
				color = nil
			end
			if plyr then
				if command == "showdist" or command == "hidedist" then
					createDistTagOnCharacter(plyr.Character, command == "hidedist", color)
					return
				else
						if command == "find" then
						espCharacter(plyr.Character, color, true)
						espEnabled = true
						espText.TextColor3 = Color3.fromRGB(0, 255, 0)
					elseif command == "hide" then
						clear_active_espObjects(plyr.Character)
					end
				end
			end					
		elseif command == "boxcolor" then
			local color = (#contents > 3 and table.concat(contents, " ", 3)) or contents[3]
			if color ~= " " and color ~= "" then
				changeSetting("esp_boxColor", color)
				toggle_Esp(true); toggle_Esp()
				print "Esp reset due to setting change."
			end
		elseif command == "ignoreteam" or command == "dontignoreself" or command == "showdistance" or command == "showcharacterespd" or command == "holdhotkey" or command == "useteamcolorifapplicable" or command == "boxtransparent" then
			
			local value = contents[3]:lower()
			if command ~= "holdhotkey" then
				if command == "ignoreteam" then
					changeSetting("esp_ignoreTeam", value)
				elseif command == "dontignoreself" then
					changeSetting("esp_dont_ignoreSelf", value)
				elseif command == "showdistance" then
					changeSetting("esp_showDistance", value)
				elseif command == "boxtransparent" then
					changeSetting("esp_boxTransparent", value)
				elseif command == "showcharacterespd" then
					changeSetting("esp_showCharacterEspd", value)
				elseif command == "useteamcolorifapplicable" then
					changeSetting("esp_useTeamColorIfApplicable", value)
				end
				toggle_Esp(true); toggle_Esp()
				print "Esp reset due to setting change."
			else
				changeSetting("esp_holdHotkey", value)
				if settings.esp_holdHotkey then
					print "Esp must now be activated by holding the hotkey."
				else
					print "Esp must now be toggled by pressing the hotkey."
				end
				toggle_Esp(true)
				print "Esp turned off due to activation change."
			end			
		elseif command == "hotkey" or command == "sethotkey" then
			setHotkey("esp", contents[3])
			toggle_Esp(true)
			print "Esp turned off due to activation change."
		end
	
	--
	
	elseif section == "aimbot" then
		if (command == "enable" or command == "on") or (command == "disable" or command == "off") then	
			aimbotEnabled = (command == "enable" or command == "on")
			aimbotText.TextColor3 = (aimbotEnabled and Color3.fromRGB(0, 255, 0)) or Color3.fromRGB(48, 48, 48)
			print ("Aimbot successfully " .. ((aimbotEnabled and "enabled") or "disabled"))
		elseif command == "target" then
			local content3 = contents[3]:lower()
			local plyr = findFirstChild(Players, content3)
			if not plyr then
				if content3 == "team" then
					local content4 = (#contents > 4 and table.concat(contents, " ", 4)) or contents[4]
					local team = findFirstChild(Teams, content4)
					if not team and (content4 == "disable" or content4 == "__disable") then
						targetTeam = nil
						aimbotEnabled = false
						aimbotText.TextColor3 = Color3.fromRGB(48, 48, 48)
						print "Aimbot disabled; target team removed."
					else
						targetTeam = team 
						if aimbotEnabled then
							aimbotEnabled = false
						end
						aimbotEnabled = true
						aimbotText.TextColor3 = Color3.fromRGB(0, 255, 0)
						print "Aimbot enabled; target team set."
					end
				elseif content3 == "disable" or content3 == "__disable" then
					targetPlayer = nil
					aimbotEnabled = false
					aimbotText.TextColor3 = Color3.fromRGB(48, 48, 48)
					print "Aimbot disabled; target player removed."
				end
			else
				targetPlayer = plyr
				if aimbotEnabled then
					aimbotEnabled = false
				end
				aimbotEnabled = true
				aimbotText.TextColor3 = Color3.fromRGB(0, 255, 0)
				print "Aimbot target enabled; player set."
			end
		else
			if command == "maxdistance" then
				local number = tonumber(contents[3])
				if number then
					changeSetting("aimbot_maxDistance", number)
				end
				
			elseif (command == "ignorewalls" or command == "ignoreteam" or command == "aimfor" or command == "clicktolock" or command == "clicktolockdistanceoverride") then
				local value = contents[3]
				if command == "ignorewalls" then
					changeSetting("aimbot_ignoreWalls", value)
				elseif command == "ignoreteam" then
					changeSetting("aimbot_ignoreTeam", value)
				elseif command == "clicktolock" then
					changeSetting("aimbot_clickToLock", value)
				elseif command == "clicktolockdistanceoverride" then
					changeSetting("aimbot_clickToLockDistanceOverride", value)
				elseif command == "aimfor" then
					changeSetting("aimbot_aimFor", (#contents > 3 and table.concat(contents, " ", 3) or contents[3]), true)
				end
				aimbotEnabled = false; aimbotEnabled = "true"
				aimbotText.TextColor3 = Color3.fromRGB(0, 255, 0)
				print "Aimbot reset due to setting change."
		
			elseif command == "hotkey" or command == "sethotkey" then
				setHotkey("aimbot", contents[3])
				aimbotEnabled = false
				aimbotText.TextColor3 = Color3.fromRGB(48, 48, 48)
				print "Aimbot turned off due to activation change."
			end		
		end
	

	-- @some flexiblity
	elseif section == "target" then
		execute_Command({"aimbot", "target", contents[2], contents[3]})
	elseif (section == "find" or section == "hide" or section:find("dist")) then
		execute_Command({"esp", section, contents[2], (#contents > 3 and table.concat(contents, " ", 3) or contents[3])})
	
	
	-- @basic fix
	elseif section == "resetcache" then
		clear_active_espObjects()
	elseif section == "terminate" then
		ESP_RBXScriptSignal:Disconnect()
		ESP_RBXScriptSignal = nil
		AIMBOT_RbxScriptSignal:Disconnect()
		AIMBOT_RbxScriptSignal = nil
		KEYS_RbxScriptSignal:Disconnect()
		KEYS_RbxScriptSignal = nil
		
		clear_esp_Cache()
		clear_active_espObjects()
		ESPOBJF:Destroy()
		commandBar:Destroy()
	
	end		
end
local function on_FocusLost (enterPressed)
	local content = Box.Text
	Box.Text = "press `-` to type"
	Box.Font = Enum.Font.SourceSansItalic
	Box.TextTransparency = 0.5
	if enterPressed then
		if content ~= " " or content ~= "" then
			execute_Command(splitString(content, " "))
		end
	end	
end

-- @endscript
ESP_RBXScriptSignal = RunService.RenderStepped:Connect(function()
	if not script then
		return
	end
	if not settings.esp_holdHotkey then
		return
	end
	if not espEnabled and UserInputService:IsKeyDown(settings.esp_Hotkey) then
		toggle_Esp()
		espEnabled = true
	elseif espEnabled and not UserInputService:IsKeyDown(settings.esp_Hotkey) then
		toggle_Esp(true)
	end
end)
AIMBOT_RbxScriptSignal = RunService.RenderStepped:Connect(function()
	if aimbotEnabled then
		targetCamera()
	end
end)
KEYS_RbxScriptSignal = UserInputService.InputBegan:Connect(function(inputObj, gpe)	
	local key = inputObj.KeyCode
	if (key == settings.esp_Hotkey) or (key == settings.aimbot_Hotkey)  or (key == settings.commandbar_Hotkey) then
		if key == settings.commandbar_Hotkey and not gpe then
			Box:CaptureFocus()
		end
		if key == settings.aimbot_Hotkey  then
			toggle_Aimbot()
		end
		if key == settings.esp_Hotkey then
			if espEnabled then
				toggle_Esp(true)
			else
				toggle_Esp()
				espEnabled = true
			end
		end
	end	
end)
AIMBOTLOCK_RbxScriptSignal = Mouse.Button2Down:Connect(function()

	local t = Mouse.Target
	if not t then
		return
	end
	if not Players:GetPlayerFromCharacter(t.Parent) then
		local character = getCharacterFromPart(t)
		if not character then
			return
		else
			t = character:FindFirstChild("HumanoidRootPart")
			if not t then
				return
			end
		end
	end
	
	if not aimbotEnabled and settings.aimbot_clickToLock then
		local success = clickToTarget(t, settings.aimbot_clickToLockDistanceOverride)
		if success then
			currentLock = targetPlayer
			aimbotEnabled = true
			aimbotText.TextColor3 = Color3.fromRGB(0, 255, 0)
			print "Aimbot Enabled; target player set. [click to lock method]"
		end
	elseif aimbotEnabled then
		if currentLock and currentLock.Character and t:IsDescendantOf(currentLock.Character) then
			if targetPlayer ~= currentLock then
				targetPlayer = currentLock
			elseif targetPlayer == currentLock then
				targetPlayer, currentLock = nil, nil
				aimbotEnabled = false
				aimbotText.TextColor3 = Color3.fromRGB(48, 48, 48)
				print "Aimbot disabled; target player removed. [click to lock method]"
			end
		end
	end
	
end)
Box.FocusLost:Connect(on_FocusLost)
Box.Focused:Connect(function()
	Box.Font = Enum.Font.SourceSans
	Box.TextTransparency = 0
end)

ESPOBJF.Parent = CoreGui
commandBar.Parent = CoreGui
