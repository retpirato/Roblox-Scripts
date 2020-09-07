--[[
	AimHot, made by Herrtt#3868
	Press H to start the aimbot.
	Press right ALT to enable ESP.
	type /e -help if you need info about the aimbot/esp.
--]]

_G.FRIEND_LIST = {"ROBLOX","builderman"} --Add players you want to ignore

_G.IGNORE_TEAM = true
_G.START_AIMBOT = Enum.KeyCode.H
_G.MAX_DIST = 5000
_G.TARGET_PART = "Head"

_G.START_ESP = Enum.KeyCode.RightAlt
_G.PREFIX = "/e " --If you want a space between the command and pref, you need to type a space! Ex: /ehelp . /e help



local startTime = tick()
local AIMBOT = false
local EspEnabled = false

local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")
local CoreGui = game:GetService("CoreGui")
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local plr = Players.LocalPlayer
local camera = workspace.CurrentCamera
local mouse = plr:GetMouse()
local newray = Ray.new

local function RandomCharacters(length)
	local STR = ''
	
	for i = 1, length do
		STR = STR .. string.char(math.random(65,90))
	end
	
	return STR
end
local faces = {
	"Back",
	"Bottom",
	"Front",
	"Left",
	"Right",
	"Top"
}
local EspObjects = Instance.new("Folder")
EspObjects.Parent = CoreGui
EspObjects.Name = RandomCharacters(8)

local function SendMessage(txt,title,dur,size,color)
	print(txt)
	StarterGui:SetCore("ChatMakeSystemMessage",{
		Text = txt,
		Color = color,
		FontSize = size
	})
	StarterGui:SetCore("SendNotification",{
		Title = title,
		Text = txt,
		Duration = dur
	})
end
local function ChangeColor(player, color)
	if EspObjects:FindFirstChild(player) then
		for i,v in pairs(EspObjects:FindFirstChild(player):GetChildren()) do
			if v:IsA("SurfaceGui") then
				for _,x in pairs(v:GetChildren()) do
					if x:IsA("Frame") then
						x.BackgroundColor3 = color
					end
				end
			elseif v:IsA("BillboardGui") then
				for _,x in pairs(v:GetChildren()) do
					if x:IsA("TextLabel") then
						x.TextColor = color
					end
				end
			end
		end
	end
end
local function GetClosestPlayer(returnPlr,ignoreList)
	ignoreList = _G.FRIEND_LIST
	returnPlr = returnPlr or false
	
	local ignoreTeam = _G.IGNORE_TEAM
	local maxdist = _G.MAX_DIST
	local targetpart = _G.TARGET_PART
	
	if ignoreTeam == true then
		if #game:GetService("Teams"):GetChildren() <= 1 then
			ignoreTeam = false
		end
		if plr.Neutral == true then
			ignoreTeam = false
		end
	end
	
	local temp1 = (maxdist)
	local FoundPlr
	local FoundPart
	
	local Table = game.Players:GetPlayers()
	for _,v in pairs(Table) do
		local skip = false
		for _,i in pairs(ignoreList) do
			if i:lower() == v.Name:lower() then
				skip = true
			end
		end
		if ignoreTeam == true then
			if v.Team == plr.Team then
				skip = true
			end
		end
		if v.Character == nil or v.Character:FindFirstChild(targetpart) == nil then 
			skip = true
		end

		if skip == false then
			if (temp1 ~= nil and v.Character:FindFirstChild(targetpart) and plr.Character ~= nil and plr.Character:FindFirstChild(targetpart)) then
				if temp1 > (plr.Character.Head.Position - v.Character:FindFirstChild(targetpart).Position).magnitude then
					local vChar = v.Character
					if vChar:FindFirstChild("Humanoid") then
						local vHuman = vChar:FindFirstChild("Humanoid")
						if vHuman.Health > 0 then
							local dist = (plr.Character.Head.Position - vChar:FindFirstChild(targetpart).Position).magnitude
							if dist <= maxdist then
								local ray = newray(plr.Character.Head.CFrame.p, (vChar:FindFirstChild(targetpart).CFrame.p - plr.Character.Head.CFrame.p).unit * _G.MAX_DIST)
								local hitPart,position = workspace:FindPartOnRay(ray,plr.Character)
									
								if hitPart then
									if hitPart:IsDescendantOf(vChar) then
										temp1 = dist
										FoundPlr = v
										FoundPart = vChar:FindFirstChild(targetpart)
									end
								end
							end
						end	
					end
				end
			end
		end
	end
	if returnPlr == false then
		return FoundPart
	elseif returnPlr == true then
		return FoundPlr
	end
end
local function CreateEspBox(pObj, color)
	if (pObj:IsA("Part") and pObj.Parent:IsA("Model") and pObj.Parent ~= workspace) then
		for i,v in pairs(EspObjects:GetChildren()) do 
			if v.Name == pObj.Parent.Name then
				return nil
			end
		end
		local newFlder = Instance.new("Folder")
		newFlder.Parent = EspObjects
		newFlder.Name = pObj.Parent.Name
		
		for i,v in pairs(faces) do
			local surfGui = Instance.new("SurfaceGui")
			surfGui.AlwaysOnTop = true
			surfGui.Adornee = pObj
			surfGui.Face = v
			
			local frme = Instance.new("Frame")
			frme.Size = UDim2.new(1,0,1,0)
			frme.BackgroundColor3 = color
			frme.BackgroundTransparency = .5
			frme.BorderSizePixel = 0
			frme.Parent = surfGui
			
			surfGui.Parent = newFlder
		end
		local bbGui = Instance.new("BillboardGui")
		bbGui.Adornee = pObj
		bbGui.Size = UDim2.new(5.5,0,1.75,0)
		bbGui.ExtentsOffset = Vector3.new(0,2.5,0)
		bbGui.AlwaysOnTop = true
		local txtLab = Instance.new("TextLabel")
		txtLab.Text = pObj.Parent.Name
		txtLab.TextColor3 = color
		txtLab.TextScaled = false
		txtLab.TextSize = 17
		txtLab.Size = UDim2.new(1,0,1,0)
		txtLab.BackgroundTransparency = 1
		txtLab.BorderSizePixel = 0
		txtLab.Parent = bbGui
		bbGui.Parent = newFlder
		
		local objPar = Instance.new("ObjectValue")
		objPar.Value = pObj
		objPar.Parent = newFlder
		objPar.Name = "pObj"
		
		return newFlder
	end
	return nil
end
local function ClearEsp()
	EspObjects:ClearAllChildren()
end
local function ConnectEsp(player)
	local func1
	local func2
	if player.Character ~= nil and player.Character:FindFirstChild("Head") then
		if plr.Team == nil or player.Team == nil or plr.Neutral == true or player.Neutral == true then
			local fldr = CreateEspBox(player.Character:FindFirstChild("Head"), Color3.fromRGB(255,0,0))
			if fldr ~= nil then
				local func3
				func3 = fldr.pObj.Changed:Connect(function()
					if fldr.pObj.Value == nil then
						if EspObjects:FindFirstChild(player.Name) then
							EspObjects:FindFirstChild(player.Name):Destroy()
						end
						func3:Disconnect()
					end
				end)
			end
		elseif plr.Team == player.Team then 
			CreateEspBox(player.Character:FindFirstChild("Head"), Color3.fromRGB(0,255,0))
		elseif plr.Team ~= player.Team then 
			CreateEspBox(player.Character:FindFirstChild("Head"), Color3.fromRGB(255,0,0))
		end
	end
	func1 = player.CharacterAdded:Connect(function(char)
		wait(1)
		if player.Character ~= nil then
			func2 = player.Character:WaitForChild("Humanoid").Died:Connect(function()
				if EspObjects:FindFirstChild(player.Name) then
					EspObjects:FindFirstChild(player.Name):Destroy()
				end
			end)
		end
		if EspEnabled == true then
			if plr.Team == nil or player.Team == nil or plr.Neutral == true or player.Neutral == true then
				CreateEspBox(char:FindFirstChild("Head"), Color3.fromRGB(255,0,0))
			elseif plr.Team == player.Team then 
				CreateEspBox(char:FindFirstChild("Head"), Color3.fromRGB(0,255,0))
			elseif plr.Team ~= player.Team then 
				CreateEspBox(char:FindFirstChild("Head"), Color3.fromRGB(255,0,0))
			end
		else
			if EspObjects:FindFirstChild(player.Name) then
				EspObjects:FindFirstChild(player.Name):Destroy()
			end
			func2:Disconnect()
			func1:Disconnect()
		end
	end)
	if player.Character ~= nil then
		func2 = player.Character:WaitForChild("Humanoid").Died:Connect(function()
			if EspObjects:FindFirstChild(player.Name) then
				EspObjects:FindFirstChild(player.Name):Destroy()
			end
		end)
	end
	return
end
local function EnableEsp()
	if EspEnabled == true then
		for i,v in pairs(Players:GetPlayers()) do
			if v ~= plr then
				ConnectEsp(v)
			end
		end
	end
end
Players.PlayerAdded:Connect(function(player)
	if EspEnabled == true then
		ConnectEsp(player)
	end
end)
Players.PlayerRemoving:Connect(function(player)
	if EspObjects:FindFirstChild(player.Name) then
		EspObjects:FindFirstChild(player.Name):Destroy()
	end
end)
UIS.InputBegan:Connect(function(KEY, gpe)
	if gpe then return end;
	if KEY.KeyCode == _G.START_AIMBOT then
		if AIMBOT == false then
			AIMBOT = true
			SendMessage("Aimbot enabled.",
				"AimHot has been enabled.",
				3,
				Enum.FontSize.Size28,
				Color3.fromRGB(200,50,50)
			)
		elseif AIMBOT == true then
			AIMBOT = false
			SendMessage("Aimbot disabled.",
				"AimHot has been disabled.",
				3,
				Enum.FontSize.Size28,
				Color3.fromRGB(200,50,50)
			)
		end
	end
	if KEY.KeyCode == _G.START_ESP then
		if EspEnabled == false then
			SendMessage("ESP has been enabled.",
				"ESP enabled;",
				3,
				Enum.FontSize.Size28,
				Color3.fromRGB(200,50,50)
			)
			EspEnabled = true
			EnableEsp()
			while EspEnabled == true do
				ClearEsp()
				EnableEsp()
				wait(1)
			end
		elseif EspEnabled == true then
			SendMessage("ESP has been disabled.",
				"ESP disabled;",
				3,
				Enum.FontSize.Size28,
				Color3.fromRGB(200,50,50)
			)
			EspEnabled = false
			ClearEsp()
		end
	end
end)

RunService.RenderStepped:Connect(function()
	if (AIMBOT == true and plr.Character ~= nil and plr.Character:FindFirstChild("Humanoid") and plr.Character.Humanoid.Health > 0) then
		local closestPart = GetClosestPlayer(false,{})
		if closestPart ~= nil then
			camera.CoordinateFrame = CFrame.new(camera.CoordinateFrame.p, closestPart.CFrame.p)
			if _G.AUTO_TRIGGER == true then
				mouse1click()
			end
		end
	end
end)
_G.AIMHOT_SECRETKEY = "dF10qLMn" --Not kind of secret but..

local helptxt = (
		"AimHot loaded. Time taken: ".. tick()-startTime .."\n"..
		"AimHot made by Herrtt#3868." .."\n"..
		"	Command prefix are: "..(_G.PREFIX) .."\n"..
		"	Commands are;" .."\n"..
		"	<prefix>maxdist <number> (counted in studs)" .."\n"..
		"	<prefix>ignoreteam <bool> (true/false)" .."\n"..
		"	<prefix>targetpart <string> (Head, Torso etc.)" .."\n"..
		"	<prefix>addfriend <plrname> (ROBLOX, etc.)" .."\n"..
		"	<prefix>removefriend <plrname> (ROBLOX, etc.)" .."\n"..
		"	<prefix>changepref <newprefix>" .."\n"..
		"	<prefix>friends" .."\n"..
		"	<prefix>help" .."\n"..
		"	/e reset (will set all settings to regular.)" .."\n"..
		"	Have fun!"
		)

plr.Chatted:Connect(function(msg)
	local pref = _G.PREFIX
	if type(pref) ~= "string" then
		print("Prefix must be a string!")
	end
	
	if string.sub(msg,1,8+pref:len()) == pref.."maxdist " then
		local maxdist = tonumber(string.sub(msg,9,msg:len()))
		if type(maxdist) == "number" then
			_G.MAX_DIST = maxdist
			SendMessage("Changed maxdist to; "..(tostring(maxdist)),
				"Setting Changed;",
				3,
				Enum.FontSize.Size28,
				Color3.fromRGB(200,50,50)
			)
		end
	end
	if string.sub(msg,1,11+pref:len()) == pref.."ignoreteam " then 
		local setting = string.sub(msg,12,msg:len()):lower()
		print(setting)
		if setting == "true" or "false" then 
			_G.IGNORE_TEAM = setting
			
			SendMessage("Changed ignoreteam to; "..(tostring(setting)),
				"Setting Changed;",
				3,
				Enum.FontSize.Size28,
				Color3.fromRGB(200,50,50)
			)
		end
	end
	if string.sub(msg,1,11+pref:len()) == pref.."targetpart " then
		local setting = string.sub(msg,12,msg:len())
		if type(setting) == "string" then 
			_G.TARGET_PART = setting
			
			SendMessage("Changed targetpart to; "..(tostring(setting)),
				"Setting Changed;",
				3,
				Enum.FontSize.Size28,
				Color3.fromRGB(200,50,50)
			)
		end	
	end
	if string.sub(msg,1,13+pref:len()) == pref.."removefriend " then
		local setting = string.sub(msg,14,msg:len())
		if type(setting) == "string" then 
			for i,v in pairs(_G.FRIEND_LIST) do
				if v:lower() == setting:lower() then
					table.remove(_G.FRIEND_LIST,i)
				end
			end
			SendMessage("Removed player from friend list; "..(tostring(setting)),
				"Friend removed;",
				3,
				Enum.FontSize.Size28,
				Color3.fromRGB(200,50,50)
			)
		end	
	end
	if string.sub(msg,1,10+pref:len()) == pref.."addfriend " then
		local setting = string.sub(msg,11,msg:len())
		if type(setting) == "string" then 
			for i,v in pairs(_G.FRIEND_LIST) do
				if v == setting:lower() then
					return
				end
			end
			table.insert(_G.FRIEND_LIST,setting:lower())
			SendMessage("Added player to friend list; "..(tostring(setting)),
				"Friend added;",
				3,
				Enum.FontSize.Size28,
				Color3.fromRGB(200,50,50)
			)
		end	
	end
	if string.sub(msg,1,7+pref:len()) == pref.."friends" then
		local friends = ""
		for i,v in pairs(_G.FRIEND_LIST) do
			if i == 1 then
				friends = v
			else
				friends = friends..", "..v
			end
		end
		SendMessage("Your friends are; " .."\n".. friends,
			"Your friends;",
			3,
			Enum.FontSize.Size28,
			Color3.fromRGB(200,50,50)
		)
	end
	if string.sub(msg,1,11+pref:len()) == pref.."changepref " then
		local setting = string.sub(msg,12+pref:len(),msg:len())
		if type(setting) == "string" then
			_G.PREFIX = setting
			SendMessage("Changed prefix to; "..setting,
				"Setting changed;",
				3,
				Enum.FontSize.Size28,
				Color3.fromRGB(200,50,50)
			)
		end
	end
	if string.sub(msg,1,4+pref:len()) == pref.."help" then
		SendMessage(helptxt,
			"AimHot by Herrtt#3868;",
			3,
			Enum.FontSize.Size28,
			Color3.fromRGB(200,50,50)
		)
	end
	if msg == "/e reset" then
		_G.FRIEND_LIST = {"ROBLOX","builderman"}

		_G.IGNORE_TEAM = true
		_G.START_AIMBOT = Enum.KeyCode.H
		_G.MAX_DIST = 5000
		_G.TARGET_PART = "Head"
		_G.PREFIX = "/e "

		SendMessage("All settings are set back to regular.",
			"Settings reseted.",
			Enum.FontSize.Size28,
			Color3.fromRGB(200,50,50)
		)
	end
end)

SendMessage(helptxt,
	"AimHot by Herrtt#3868;",
	3,
	Enum.FontSize.Size28,
	Color3.fromRGB(200,50,50)
)
_G.AIMHOT_VERSION = "4.0"