-- Issues:
-- I'm still working on Tracers, I know they can cause huge frame rate drops. (I think I got it running as smooth as it's going to get.)
-- Phantom Forces: Weird positioning bug with tracers? Tracer positions a bit behind localplayer. (Maybe make the update faster? > RenderPriority.First ?

-- Settings can be found on line: 51
-- Don't change anything if you don't understand.

local Plrs = game:GetService("Players")
local Run = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local StartGui = game:GetService("StarterGui")
local Teams = game:GetService("Teams")
local UserInput = game:GetService("UserInputService")
local Light = game:GetService("Lighting")
local HTTP = game:GetService("HttpService")
local RepStor = game:GetService("ReplicatedStorage")
 
function GetCamera() -- Just in case some game renames the player's camera.
	return workspace:FindFirstChildOfClass("Camera")
end
 
local ChamsFolder = Instance.new("Folder", CoreGui)
ChamsFolder.Name = "Chams"
local PlayerChams = Instance.new("Folder", ChamsFolder)
PlayerChams.Name = "PlayerChams"
local ItemChams = Instance.new("Folder", ChamsFolder)
ItemChams.Name = "ItemChams"

local ESPFolder = Instance.new("Folder", CoreGui)
ESPFolder.Name = "ESP Stuff"
local PlayerESP = Instance.new("Folder", ESPFolder)
PlayerESP.Name = "PlayerESP"
local ItemESP = Instance.new("Folder", ESPFolder)
ItemESP.Name = "ItemESP"

local MyPlr = Plrs.LocalPlayer
local MyChar = MyPlr.Character
local MyMouse = MyPlr:GetMouse()
local MyCam = GetCamera()
if MyCam == nil then
	error("WHAT KIND OF BLACK MAGIC IS THIS, CAMERA NOT FOUND.")
	return
end

local Tracers = Instance.new("Folder", MyCam)
Tracers.Name = "Tracers"
local TracerData = { }
local TracerMT = setmetatable(TracerData, {
	__newindex = function(tab, index, val)
		rawset(tab, index, val)
	end
})

function RemoveSpacesFromString(Str)
	local newstr = ""
	for i = 1, #Str do
		if Str:sub(i, i) ~= " " then
			newstr = newstr .. Str:sub(i, i)
		end
	end

	return newstr
end

function CloneTable(T)
    local temp = { }
    for i,v in next, T do
        if type(v) == "table" then
            temp[i] = CloneTable(v)
        else
            temp[i] = v 
        end
    end
    return temp
end

local Bullshit = {
	ESPEnabled = false, -- Self explanatory. LEAVE OFF BY DEFAULT.
	CHAMSEnabled = false, -- Self explanatory. LEAVE OFF BY DEFAULT.
	TracersEnabled = false, -- Self explanatory. LEAVE OFF BY DEFAULT.
	DebugInfo = false, -- Self explanatory. LEAVE OFF BY DEFAULT.
	OutlinesEnabled = false,
	FullbrightEnabled = false,
	CrosshairEnabled = false,
	AimbotEnabled = false,
	Aimbot = false,
	TracersLength = 500, -- MAX DISTANCE IS 2048 DO NOT GO ABOVE OR YOU'LL ENCOUNTER PROBLEMS.
	ESPLength = 10000,
	CHAMSLength = 500,
	PlaceTracersUnderCharacter = false, -- Change to true if you want tracers to be placed under your character instead of at the bottom of your camera.
	FreeForAll = false, -- use for games that don't have teams (Apocalypse Rising)
	AutoFire = false,
	MobChams = false,
	MobESP = false,
	AimbotKey = "Enum.UserInputType.MouseButton2", -- Doesn't do anything yet.
	Colors = {
		Enemy = Color3.new(1, 0, 0),
		Ally = Color3.new(0, 1, 0),
		Friend = Color3.new(1, 1, 0),
		Neutral = Color3.new(1, 1, 1),
		Crosshair = Color3.new(1, 0, 0),
		ColorOverride = nil, -- Every player will have the chosen color regardless of enemy or ally.
	},

	-- VVVV DON'T EDIT BELOW VVVV --
	ClosestEnemy = nil,
	CharAddedEvent = { },
	OutlinedParts = { },
	WorkspaceChildAddedEvent = nil,
	LightingEvent = nil,
	AmbientBackup = Light.Ambient,
	ColorShiftBotBackup = Light.ColorShift_Bottom,
	ColorShiftTopBackup = Light.ColorShift_Top,
	FPSAverage = { },
	Blacklist = { },
	FriendList = { },
	CameraModeBackup = MyPlr.CameraMode,
	GameSpecificCrap = { 
	},
	Mob_ESP_CHAMS_Ran_Once = false,
}

function SaveBullshitSettings()
	local temp = { }
	local succ, out = pcall(function()
		temp.TracersLength = Bullshit.TracersLength
		temp.ESPLength = Bullshit.ESPLength
		temp.CHAMSLength = Bullshit.CHAMSLength
		temp.PlaceTracersUnderCharacter = Bullshit.PlaceTracersUnderCharacter
		temp.FreeForAll = Bullshit.FreeForAll
		temp.AutoFire = Bullshit.AutoFire
		temp.AimbotKey = tostring(Bullshit.AimbotKey)
		temp.MobChams = Bullshit.MobChams
		temp.MobESP = Bullshit.MobESP
		temp.Colors = { }
		for i, v in next, Bullshit.Colors do
			temp.Colors[i] = tostring(v)
		end
		writefile("ProjectBullshit.txt", HTTP:JSONEncode(temp))
	end)
	if not succ then
		error(out)
	end
end

fuck = pcall(function()
	local temp = HTTP:JSONDecode(readfile("ProjectBullshit.txt"))
	if temp.MobChams ~= nil and temp.MobESP ~= nil then
		for i, v in next, temp do
			if i ~= "Colors" then
				Bullshit[i] = v
			end
		end
		for i, v in next, temp.Colors do
			local r, g, b = string.match(RemoveSpacesFromString(v), "(%d+),(%d+),(%d+)")
			r = tonumber(r)
			g = tonumber(g)
			b = tonumber(b)

			temp.Colors[i] = Color3.new(r, g, b)
		end
		Bullshit.Colors = temp.Colors
	else
		spawn(function()
			SaveBullshitSettings()
			local hint = Instance.new("Hint", CoreGui)
			hint.Text = "Major update requried your settings to be wiped! Sorry!"
			wait(5)
			hint:Destroy()
		end)
	end

	Bullshit.AutoFire = false
end)

-- Load blacklist file if it exists
fuck2 = pcall(function()
	Bullshit.Blacklist = HTTP:JSONDecode(readfile("Blacklist.txt"))
end)

fuck3 = pcall(function()
	Bullshit.FriendList = HTTP:JSONDecode(readfile("Whitelist.txt"))
end)

local DebugMenu = { }
DebugMenu["SC"] = Instance.new("ScreenGui", CoreGui)
DebugMenu["SC"].Name = "Debug"
DebugMenu["Main"] = Instance.new("Frame", DebugMenu["SC"])
DebugMenu["Main"].Name = "Debug Menu"
DebugMenu["Main"].Position = UDim2.new(0, 20, 1, -220)
DebugMenu["Main"].Size = UDim2.new(1, 0, 0, 200)
DebugMenu["Main"].BackgroundTransparency = 1
DebugMenu["Main"].Visible = false
if game.PlaceId == 606849621 then
	DebugMenu["Main"].Position = UDim2.new(0, 230, 1, -220)
end
DebugMenu["Main"].Draggable = true
DebugMenu["Main"].Active = true
DebugMenu["Position"] = Instance.new("TextLabel", DebugMenu["Main"])
DebugMenu["Position"].BackgroundTransparency = 1
DebugMenu["Position"].Position = UDim2.new(0, 0, 0, 0)
DebugMenu["Position"].Size = UDim2.new(1, 0, 0, 15)
DebugMenu["Position"].Font = "Arcade"
DebugMenu["Position"].Text = ""
DebugMenu["Position"].TextColor3 = Color3.new(1, 1, 1)
DebugMenu["Position"].TextSize = 15
DebugMenu["Position"].TextStrokeColor3 = Color3.new(0, 0, 0)
DebugMenu["Position"].TextStrokeTransparency = 0.3
DebugMenu["Position"].TextXAlignment = "Left"
DebugMenu["FPS"] = Instance.new("TextLabel", DebugMenu["Main"])
DebugMenu["FPS"].BackgroundTransparency = 1
DebugMenu["FPS"].Position = UDim2.new(0, 0, 0, 15)
DebugMenu["FPS"].Size = UDim2.new(1, 0, 0, 15)
DebugMenu["FPS"].Font = "Arcade"
DebugMenu["FPS"].Text = ""
DebugMenu["FPS"].TextColor3 = Color3.new(1, 1, 1)
DebugMenu["FPS"].TextSize = 15
DebugMenu["FPS"].TextStrokeColor3 = Color3.new(0, 0, 0)
DebugMenu["FPS"].TextStrokeTransparency = 0.3
DebugMenu["FPS"].TextXAlignment = "Left"
DebugMenu["PlayerSelected"] = Instance.new("TextLabel", DebugMenu["Main"])
DebugMenu["PlayerSelected"].BackgroundTransparency = 1
DebugMenu["PlayerSelected"].Position = UDim2.new(0, 0, 0, 35)
DebugMenu["PlayerSelected"].Size = UDim2.new(1, 0, 0, 15)
DebugMenu["PlayerSelected"].Font = "Arcade"
DebugMenu["PlayerSelected"].Text = ""
DebugMenu["PlayerSelected"].TextColor3 = Color3.new(1, 1, 1)
DebugMenu["PlayerSelected"].TextSize = 15
DebugMenu["PlayerSelected"].TextStrokeColor3 = Color3.new(0, 0, 0)
DebugMenu["PlayerSelected"].TextStrokeTransparency = 0.3
DebugMenu["PlayerSelected"].TextXAlignment = "Left"
DebugMenu["PlayerTeam"] = Instance.new("TextLabel", DebugMenu["Main"])
DebugMenu["PlayerTeam"].BackgroundTransparency = 1
DebugMenu["PlayerTeam"].Position = UDim2.new(0, 0, 0, 50)
DebugMenu["PlayerTeam"].Size = UDim2.new(1, 0, 0, 15)
DebugMenu["PlayerTeam"].Font = "Arcade"
DebugMenu["PlayerTeam"].Text = ""
DebugMenu["PlayerTeam"].TextColor3 = Color3.new(1, 1, 1)
DebugMenu["PlayerTeam"].TextSize = 15
DebugMenu["PlayerTeam"].TextStrokeColor3 = Color3.new(0, 0, 0)
DebugMenu["PlayerTeam"].TextStrokeTransparency = 0.3
DebugMenu["PlayerTeam"].TextXAlignment = "Left"
DebugMenu["PlayerHealth"] = Instance.new("TextLabel", DebugMenu["Main"])
DebugMenu["PlayerHealth"].BackgroundTransparency = 1
DebugMenu["PlayerHealth"].Position = UDim2.new(0, 0, 0, 65)
DebugMenu["PlayerHealth"].Size = UDim2.new(1, 0, 0, 15)
DebugMenu["PlayerHealth"].Font = "Arcade"
DebugMenu["PlayerHealth"].Text = ""
DebugMenu["PlayerHealth"].TextColor3 = Color3.new(1, 1, 1)
DebugMenu["PlayerHealth"].TextSize = 15
DebugMenu["PlayerHealth"].TextStrokeColor3 = Color3.new(0, 0, 0)
DebugMenu["PlayerHealth"].TextStrokeTransparency = 0.3
DebugMenu["PlayerHealth"].TextXAlignment = "Left"
DebugMenu["PlayerPosition"] = Instance.new("TextLabel", DebugMenu["Main"])
DebugMenu["PlayerPosition"].BackgroundTransparency = 1
DebugMenu["PlayerPosition"].Position = UDim2.new(0, 0, 0, 80)
DebugMenu["PlayerPosition"].Size = UDim2.new(1, 0, 0, 15)
DebugMenu["PlayerPosition"].Font = "Arcade"
DebugMenu["PlayerPosition"].Text = ""
DebugMenu["PlayerPosition"].TextColor3 = Color3.new(1, 1, 1)
DebugMenu["PlayerPosition"].TextSize = 15
DebugMenu["PlayerPosition"].TextStrokeColor3 = Color3.new(0, 0, 0)
DebugMenu["PlayerPosition"].TextStrokeTransparency = 0.3
DebugMenu["PlayerPosition"].TextXAlignment = "Left"
DebugMenu["BehindWall"] = Instance.new("TextLabel", DebugMenu["Main"])
DebugMenu["BehindWall"].BackgroundTransparency = 1
DebugMenu["BehindWall"].Position = UDim2.new(0, 0, 0, 95)
DebugMenu["BehindWall"].Size = UDim2.new(1, 0, 0, 15)
DebugMenu["BehindWall"].Font = "Arcade"
DebugMenu["BehindWall"].Text = ""
DebugMenu["BehindWall"].TextColor3 = Color3.new(1, 1, 1)
DebugMenu["BehindWall"].TextSize = 15
DebugMenu["BehindWall"].TextStrokeColor3 = Color3.new(0, 0, 0)
DebugMenu["BehindWall"].TextStrokeTransparency = 0.3
DebugMenu["BehindWall"].TextXAlignment = "Left"

local LastTick = tick()
local FPSTick = tick()

if #Teams:GetChildren() <= 0 then
	Bullshit.FreeForAll = true
end

if Bullshit.TracersLength > 2048 then
	Bullshit.TracersLength = 2048
end

if Bullshit.CHAMSLength > 2048 then
	Bullshit.CHAMSLength = 2048
end

local wildrevolvertick = tick()
local wildrevolverteamdata = nil
function GetTeamColor(Plr)
	if Plr == nil then return nil end
	if not Plr:IsA("Player") then
		return nil
	end
	local PickedColor = Bullshit.Colors.Enemy
	
	if Plr ~= nil then
		if game.PlaceId == 606849621 then
			if Bullshit.Colors.ColorOverride == nil then
				if not Bullshit.FreeForAll then
					if MyPlr.Team ~= nil and Plr.Team ~= nil then
						if Bullshit.FriendList[Plr.Name] == nil then
							if MyPlr.Team.Name == "Prisoner" then
								if Plr.Team == MyPlr.Team or Plr.Team.Name == "Criminal" then
									PickedColor = Bullshit.Colors.Ally
								else
									PickedColor = Bullshit.Colors.Enemy
								end
							elseif MyPlr.Team.Name == "Criminal" then
								if Plr.Team == MyPlr.Team or Plr.Team.Name == "Prisoner" then
									PickedColor = Bullshit.Colors.Ally
								else
									PickedColor = Bullshit.Colors.Enemy
								end
							elseif MyPlr.Team.Name == "Police" then
								if Plr.Team == MyPlr.Team then
									PickedColor = Bullshit.Colors.Ally
								else
									if Plr.Team.Name == "Criminal" then
										PickedColor = Bullshit.Colors.Enemy
									elseif Plr.Team.Name == "Prisoner" then
										PickedColor = Bullshit.Colors.Neutral
									end
								end
							end
						else
							PickedColor = Bullshit.Colors.Friend
						end
					end
				else
					if Bullshit.FriendList[Plr.Name] ~= nil then
						PickedColor = Bullshit.Colors.Friend
					else
						PickedColor = Bullshit.Colors.Enemy
					end
				end
			else
				PickedColor = Bullshit.Colors.ColorOverride
			end
		elseif game.PlaceId == 155615604 then
			if Bullshit.Colors.ColorOverride == nil then
				if MyPlr.Team ~= nil and Plr.Team ~= nil then
					if Bullshit.FriendList[Plr.Name] == nil then
						if MyPlr.Team.Name == "Inmates" then
							if Plr.Team.Name == "Inmates" then
								PickedColor = Bullshit.Colors.Ally
							elseif Plr.Team.Name == "Guards" or Plr.Team.Name == "Criminals" then
								PickedColor = Bullshit.Colors.Enemy
							else
								PickedColor = Bullshit.Colors.Neutral
							end
						elseif MyPlr.Team.Name == "Guards" then
							if Plr.Team.Name == "Inmates" then
								PickedColor = Bullshit.Colors.Neutral
							elseif Plr.Team.Name == "Criminals" then
								PickedColor = Bullshit.Colors.Enemy
							elseif Plr.Team.Name == "Guards" then
								PickColor = Bullshit.Colors.Ally
							end
						elseif MyPlr.Team.Name == "Criminals" then
							if Plr.Team.Name == "Inmates" then
								PickedColor = Bullshit.Colors.Ally
							elseif Plr.Team.Name == "Guards" then
								PickedColor = Bullshit.Colors.Enemy
							else
								PickedColor = Bullshit.Colors.Neutral
							end
						end
					else
						PickedColor = Bullshit.Colors.Friend
					end
				end
			else
				PickedColor = Bullshit.Colors.ColorOverride
			end
		elseif game.PlaceId == 746820961 then
			if Bullshit.Colors.ColorOverride == nil then
				if MyPlr:FindFirstChild("TeamC") and Plr:FindFirstChild("TeamC") then
					if Plr.TeamC.Value == MyPlr.TeamC.Value then
						PickedColor = Bullshit.Colors.Ally
					else
						PickedColor = Bullshit.Colors.Enemy
					end
				end
			else
				PickedColor = Bullshit.Colors.ColorOverride
			end
		elseif game.PlaceId == 1382113806 then
			if Bullshit.Colors.ColorOverride == nil then
				if MyPlr:FindFirstChild("role") and Plr:FindFirstChild("role") then
					if MyPlr.role.Value == "assassin" then
						if Plr.role.Value == "target" then
							PickedColor = Bullshit.Colors.Enemy
						elseif Plr.role.Value == "guard" then
							PickedColor = Color3.new(1, 135 / 255, 0)
						else
							PickedColor = Bullshit.Colors.Neutral
						end
					elseif MyPlr.role.Value == "target" then
						if Plr.role.Value == "guard" then
							PickedColor = Bullshit.Colors.Ally
						elseif Plr.role.Value == "assassin" then
							PickedColor = Bullshit.Colors.Enemy
						else
							PickedColor = Bullshit.Colors.Neutral
						end
					elseif MyPlr.role.Value == "guard" then
						if Plr.role.Value == "target" then
							PickedColor = Bullshit.Colors.Friend
						elseif Plr.role.Value == "guard" then
							PickedColor = Bullshit.Colors.Ally
						elseif Plr.role.Value == "assassin" then
							PickedColor = Bullshit.Colors.Enemy
						else
							PickedColor = Bullshit.Colors.Neutral
						end
					else
						if MyPlr.role.Value == "none" then
							PickedColor = Bullshit.Colors.Neutral
						end
					end
				end
			else
				PickedColor = Bullshit.Colors.ColorOverride
			end
		elseif game.PlaceId == 1072809192 then
			if MyPlr:FindFirstChild("Backpack") and Plr:FindFirstChild("Backpack") then
				if MyPlr.Backpack:FindFirstChild("Knife") or MyChar:FindFirstChild("Knife") then
					if Plr.Backpack:FindFirstChild("Revolver") or Plr.Character:FindFirstChild("Revolver") then
						PickedColor = Bullshit.Colors.Enemy
					else
						PickedColor = Color3.new(1, 135 / 255, 0)
					end
				elseif MyPlr.Backpack:FindFirstChild("Revolver") or MyChar:FindFirstChild("Revolver") then
					if Plr.Backpack:FindFirstChild("Knife") or Plr.Character:FindFirstChild("Knife") then
						PickedColor = Bullshit.Colors.Enemy
					elseif Plr.Backpack:FindFirstChild("Revolver") or Plr.Character:FindFirstChild("Revolver") then
						PickedColor = Bullshit.Colors.Enemy
					else
						PickedColor = Bullshit.Colors.Ally
					end
				else
					if Plr.Backpack:FindFirstChild("Knife") or Plr.Character:FindFirstChild("Knife") then
						PickedColor = Bullshit.Colors.Enemy
					elseif Plr.Backpack:FindFirstChild("Revolver") or Plr.Character:FindFirstChild("Revolver") then
						PickedColor = Bullshit.Colors.Ally
					else
						PickedColor = Bullshit.Colors.Neutral
					end
				end
			end
		elseif game.PlaceId == 142823291 or game.PlaceId == 1122507250 then
			if MyPlr:FindFirstChild("Backpack") and Plr:FindFirstChild("Backpack") then
				if MyPlr.Backpack:FindFirstChild("Knife") or MyChar:FindFirstChild("Knife") then
					if (Plr.Backpack:FindFirstChild("Gun") or Plr.Backpack:FindFirstChild("Revolver")) or (Plr.Character:FindFirstChild("Gun") or Plr.Character:FindFirstChild("Revolver")) then
						PickedColor = Bullshit.Colors.Enemy
					else
						PickedColor = Color3.new(1, 135 / 255, 0)
					end
				elseif (MyPlr.Backpack:FindFirstChild("Gun") or MyPlr.Backpack:FindFirstChild("Revolver")) or (MyChar:FindFirstChild("Gun") or MyChar:FindFirstChild("Revolver")) then
					if Plr.Backpack:FindFirstChild("Knife") or Plr.Character:FindFirstChild("Knife") then
						PickedColor = Bullshit.Colors.Enemy
					else
						PickedColor = Bullshit.Colors.Ally
					end
				else
					if Plr.Backpack:FindFirstChild("Knife") or Plr.Character:FindFirstChild("Knife") then
						PickedColor = Bullshit.Colors.Enemy
					elseif (Plr.Backpack:FindFirstChild("Gun") or Plr.Backpack:FindFirstChild("Revolver")) or (Plr.Character:FindFirstChild("Gun") or Plr.Character:FindFirstChild("Revolver")) then
						PickedColor = Bullshit.Colors.Ally
					else
						PickedColor = Bullshit.Colors.Neutral
					end
				end
			end
		elseif game.PlaceId == 379614936 then
			if Bullshit.Colors.ColorOverride == nil then
				if not Bullshit.FriendList[Plr.Name] then
					local targ = MyPlr:FindFirstChild("PlayerGui"):FindFirstChild("ScreenGui"):FindFirstChild("UI"):FindFirstChild("Target"):FindFirstChild("Img"):FindFirstChild("PlayerText")
					if targ then
						if Plr.Name:lower() == targ.Text:lower() then
							PickedColor = Bullshit.Colors.Enemy
						else
							PickedColor = Bullshit.Colors.Neutral
						end
					else
						PickedColor = Bullshit.Colors.Neutral
					end
				else
					PickedColor = Bullshit.Colors.Friend
				end
			else
				PickedColor = Bullshit.Colors.ColorOverride
			end
		elseif game.PlaceId == 983224898 then
			if (tick() - wildrevolvertick) > 10 or wildrevolverteamdata == nil then
				wildrevolverteamdata = RepStor.Functions.RequestGameData:InvokeServer()
				wildrevolvertick = tick()
				return Bullshit.Colors.Neutral
			end
			local succ = pcall(function()
				if wildrevolverteamdata[Plr.Name] ~= nil then
					if Bullshit.Colors.ColorOverride == nil then
						if not Bullshit.FriendList[Plr.Name] then
							if wildrevolverteamdata[Plr.Name]["TeamName"] == wildrevolverteamdata[MyPlr.Name]["TeamName"] then
								PickedColor = Bullshit.Colors.Ally
							else
								PickedColor = Bullshit.Colors.Enemy
							end
						else
							PickedColor = Bullshit.Colors.Friend
						end
					else
						PickedColor = Bullshit.Colors.ColorOverride
					end
				else
					PickedColor = Bullshit.Colors.Neutral
				end
			end)
			if not succ then
				wildrevolverteamdata = RepStor.Functions.RequestGameData:InvokeServer()
				wildrevolvertick = tick()
				return Bullshit.Colors.Neutral
			end
		else
			if Bullshit.Colors.ColorOverride == nil then
				if not Bullshit.FreeForAll then
					if MyPlr.Team ~= Plr.Team and not Bullshit.FriendList[Plr.Name] then
						PickedColor = Bullshit.Colors.Enemy
					elseif MyPlr.Team == Plr.Team and not Bullshit.FriendList[Plr.Name] then
						PickedColor = Bullshit.Colors.Ally
					else
						PickedColor = Bullshit.Colors.Friend
					end
				else
					if Bullshit.FriendList[Plr.Name] ~= nil then
						PickedColor = Bullshit.Colors.Friend
					else
						PickedColor = Bullshit.Colors.Enemy
					end
				end
			else
				PickedColor = Bullshit.Colors.ColorOverride
			end
		end
	end
	
	return PickedColor
end

function FindCham(Obj)
	for i, v in next, ItemChams:GetChildren() do
		if v.className == "ObjectValue" then
			if v.Value == Obj then
				return v.Parent
			end
		end
	end

	return nil
end

function FindESP(Obj)
	for i, v in next, ItemESP:GetChildren() do
		if v.className == "ObjectValue" then
			if v.Value == Obj then
				return v.Parent
			end
		end
	end

	return nil
end

function GetFirstPart(Obj)
	for i, v in next, Obj:GetDescendants() do
		if v:IsA("BasePart") then
			return v
		end
	end

	return nil
end

function GetSizeOfObject(Obj)
	if Obj:IsA("BasePart") then
		return Obj.Size
	elseif Obj:IsA("Model") then
		return Obj:GetExtentsSize()
	end
end

function GetClosestPlayerNotBehindWall()
	local Players = { }
	local CurrentClosePlayer = nil
	local SelectedPlr = nil

	for _, v in next, Plrs:GetPlayers() do
		if v ~= MyPlr and not Bullshit.Blacklist[v.Name] then
			local IsAlly = GetTeamColor(v)
			if IsAlly ~= Bullshit.Colors.Ally and IsAlly ~= Bullshit.Colors.Friend and IsAlly ~= Bullshit.Colors.Neutral then
				local GetChar = v.Character
				if MyChar and GetChar then
					local MyHead, MyTor = MyChar:FindFirstChild("Head"), MyChar:FindFirstChild("HumanoidRootPart")
					local GetHead, GetTor, GetHum = GetChar:FindFirstChild("Head"), GetChar:FindFirstChild("HumanoidRootPart"), GetChar:FindFirstChild("Humanoid")

					if MyHead and MyTor and GetHead and GetTor and GetHum then
						if game.PlaceId == 455366377 then
							if not GetChar:FindFirstChild("KO") and GetHum.Health > 1 then
								local Ray = Ray.new(MyCam.CFrame.p, (GetHead.Position - MyCam.CFrame.p).unit * 2048)
								local part = workspace:FindPartOnRayWithIgnoreList(Ray, {MyChar})
								if part ~= nil then
									if part:IsDescendantOf(GetChar) then
										local Dist = (MyTor.Position - GetTor.Position).magnitude
										Players[v] = Dist
									end
								end
							end
						elseif game.PlaceId == 746820961 then
							if GetHum.Health > 1 then
								local Ray = Ray.new(MyCam.CFrame.p, (GetHead.Position - MyCam.CFrame.p).unit * 2048)
								local part = workspace:FindPartOnRayWithIgnoreList(Ray, {MyChar, MyCam})
								if part ~= nil then
									if part:IsDescendantOf(GetChar) then
										local Dist = (MyTor.Position - GetTor.Position).magnitude
										Players[v] = Dist
									end
								end
							end
						else
							if GetHum.Health > 1 then
								local Ray = Ray.new(MyCam.CFrame.p, (GetHead.Position - MyCam.CFrame.p).unit * 2048)
								local part = workspace:FindPartOnRayWithIgnoreList(Ray, {MyChar})
								if part ~= nil then
									if part:IsDescendantOf(GetChar) then
										local Dist = (MyTor.Position - GetTor.Position).magnitude
										Players[v] = Dist
									end
								end
							end
						end
					end
				end
			end
		end
	end

	for i, v in next, Players do
		if CurrentClosePlayer ~= nil then
			if v <= CurrentClosePlayer then
				CurrentClosePlayer = v
				SelectedPlr = i
			end
		else
			CurrentClosePlayer = v
			SelectedPlr = i
		end
	end
	
	return SelectedPlr
end

function GetClosestPlayer()
	local Players = { }
	local CurrentClosePlayer = nil
	local SelectedPlr = nil
	
	for _, v in next, Plrs:GetPlayers() do
		if v ~= MyPlr then
			local IsAlly = GetTeamColor(v)
			if IsAlly ~= Bullshit.Colors.Ally and IsAlly ~= Bullshit.Colors.Friend and IsAlly ~= Bullshit.Colors.Neutral then
				local GetChar = v.Character
				if MyChar and GetChar then
					local MyTor = MyChar:FindFirstChild("HumanoidRootPart")
					local GetTor = GetChar:FindFirstChild("HumanoidRootPart")
					local GetHum = GetChar:FindFirstChild("Humanoid")
					if MyTor and GetTor and GetHum then
						if game.PlaceId == 455366377 then
							if not GetChar:FindFirstChild("KO") and GetHum.Health > 1 then
								local Dist = (MyTor.Position - GetTor.Position).magnitude
								Players[v] = Dist
							end
						else
							if GetHum.Health > 1 then
								local Dist = (MyTor.Position - GetTor.Position).magnitude
								Players[v] = Dist
							end
						end
					end
				end
			end
		end
	end
	
	for i, v in next, Players do
		if CurrentClosePlayer ~= nil then
			if v <= CurrentClosePlayer then
				CurrentClosePlayer = v
				SelectedPlr = i
			end
		else
			CurrentClosePlayer = v
			SelectedPlr = i
		end
	end
	
	return SelectedPlr
end

function FindPlayer(Txt)
	local ps = { }
	for _, v in next, Plrs:GetPlayers() do
		if string.lower(string.sub(v.Name, 1, string.len(Txt))) == string.lower(Txt) then
			table.insert(ps, v)
		end
	end

	if #ps == 1 then
		if ps[1] ~= MyPlr then
			return ps[1]
		else
			return nil
		end
	else
		return nil
	end
end

function UpdateESP(Plr)
	if Plr ~= nil then
		local Find = PlayerESP:FindFirstChild("ESP Crap_" .. Plr.Name)
		if Find then
			local PickColor = GetTeamColor(Plr)
			Find.Frame.Names.TextColor3 = PickColor
			Find.Frame.Dist.TextColor3 = PickColor
			Find.Frame.Health.TextColor3 = PickColor
			--Find.Frame.Pos.TextColor3 = PickColor
			local GetChar = Plr.Character
			if MyChar and GetChar then
				local Find2 = MyChar:FindFirstChild("HumanoidRootPart")
				local Find3 = GetChar:FindFirstChild("HumanoidRootPart")
				local Find4 = GetChar:FindFirstChildOfClass("Humanoid")
				if Find2 and Find3 then
					local pos = Find3.Position
					local Dist = (Find2.Position - pos).magnitude
					if Dist > Bullshit.ESPLength or Bullshit.Blacklist[Plr.Name] then
						Find.Frame.Names.Visible = false
						Find.Frame.Dist.Visible = false
						Find.Frame.Health.Visible = false
						return
					else
						Find.Frame.Names.Visible = true
						Find.Frame.Dist.Visible = true
						Find.Frame.Health.Visible = true
					end
					Find.Frame.Dist.Text = "Distance: " .. string.format("%.0f", Dist)
					--Find.Frame.Pos.Text = "(X: " .. string.format("%.0f", pos.X) .. ", Y: " .. string.format("%.0f", pos.Y) .. ", Z: " .. string.format("%.0f", pos.Z) .. ")"
					if Find4 then
						Find.Frame.Health.Text = "Health: " .. string.format("%.0f", Find4.Health)
					else
						Find.Frame.Health.Text = ""
					end
				end
			end
		end
	end
end

function RemoveESP(Obj)
	if Obj ~= nil then
		local IsPlr = Obj:IsA("Player")
		local UseFolder = ItemESP
		if IsPlr then UseFolder = PlayerESP end

		local FindESP = ((IsPlr) and UseFolder:FindFirstChild("ESP Crap_" .. Obj.Name)) or FindESP(Obj)
		if FindESP then
			FindESP:Destroy()
		end
	end
end

function CreateESP(Obj)
	if Obj ~= nil then
		local IsPlr = Obj:IsA("Player")
		local UseFolder = ItemESP
		local GetChar = ((IsPlr) and Obj.Character) or Obj
		local Head = GetChar:FindFirstChild("Head")
		local t = tick()
		if IsPlr then UseFolder = PlayerESP end
		if Head == nil then
			repeat
				Head = GetChar:FindFirstChild("Head")
				wait()
			until Head ~= nil or (tick() - t) >= 10
		end
		if Head == nil then return end
		
		local bb = Instance.new("BillboardGui")
		bb.Adornee = Head
		bb.ExtentsOffset = Vector3.new(0, 1, 0)
		bb.AlwaysOnTop = true
		bb.Size = UDim2.new(0, 5, 0, 5)
		bb.StudsOffset = Vector3.new(0, 3, 0)
		bb.Name = "ESP Crap_" .. Obj.Name
		bb.Parent = UseFolder
		
		local frame = Instance.new("Frame", bb)
		frame.ZIndex = 10
		frame.BackgroundTransparency = 1
		frame.Size = UDim2.new(1, 0, 1, 0)
		
		local TxtName = Instance.new("TextLabel", frame)
		TxtName.Name = "Names"
		TxtName.ZIndex = 10
		TxtName.Text = Obj.Name
		TxtName.BackgroundTransparency = 1
		TxtName.Position = UDim2.new(0, 0, 0, -45)
		TxtName.Size = UDim2.new(1, 0, 10, 0)
		TxtName.Font = "SourceSansBold"
		TxtName.TextSize = 13
		TxtName.TextStrokeTransparency = 0.5

		local TxtDist = nil
		local TxtHealth = nil
		if IsPlr then
			TxtDist = Instance.new("TextLabel", frame)
			TxtDist.Name = "Dist"
			TxtDist.ZIndex = 10
			TxtDist.Text = ""
			TxtDist.BackgroundTransparency = 1
			TxtDist.Position = UDim2.new(0, 0, 0, -35)
			TxtDist.Size = UDim2.new(1, 0, 10, 0)
			TxtDist.Font = "SourceSansBold"
			TxtDist.TextSize = 13
			TxtDist.TextStrokeTransparency = 0.5

			TxtHealth = Instance.new("TextLabel", frame)
			TxtHealth.Name = "Health"
			TxtHealth.ZIndex = 10
			TxtHealth.Text = ""
			TxtHealth.BackgroundTransparency = 1
			TxtHealth.Position = UDim2.new(0, 0, 0, -25)
			TxtHealth.Size = UDim2.new(1, 0, 10, 0)
			TxtHealth.Font = "SourceSansBold"
			TxtHealth.TextSize = 13
			TxtHealth.TextStrokeTransparency = 0.5
		else
			local ObjVal = Instance.new("ObjectValue", bb)
			ObjVal.Value = Obj
		end
		
		local PickColor = GetTeamColor(Obj) or Bullshit.Colors.Neutral
		TxtName.TextColor3 = PickColor

		if IsPlr then
			TxtDist.TextColor3 = PickColor
			TxtHealth.TextColor3 = PickColor
		end
	end
end

function UpdateTracer(Plr)
	if Bullshit.TracersEnabled then
		if MyChar then
			local MyTor = MyChar:FindFirstChild("HumanoidRootPart")
			local GetTor = TracerData[Plr.Name]
			if MyTor and GetTor ~= nil and GetTor.Parent ~= nil then
				local Dist = (MyTor.Position - GetTor.Position).magnitude
				if (Dist < Bullshit.TracersLength and not Bullshit.Blacklist[Plr.Name]) and not (MyChar:FindFirstChild("InVehicle") or GetTor.Parent:FindFirstChild("InVehicle")) then
					if not Bullshit.PlaceTracersUnderCharacter then
						local R = MyCam:ScreenPointToRay(MyCam.ViewportSize.X / 2, MyCam.ViewportSize.Y, 0)
						Dist = (R.Origin - (GetTor.Position - Vector3.new(0, 3, 0))).magnitude
						Tracers[Plr.Name].Transparency = 1
						Tracers[Plr.Name].Size = Vector3.new(0.05, 0.05, Dist)
						Tracers[Plr.Name].CFrame = CFrame.new(R.Origin, (GetTor.Position - Vector3.new(0, 4.5, 0))) * CFrame.new(0, 0, -Dist / 2)
						Tracers[Plr.Name].BrickColor = BrickColor.new(GetTeamColor(Plr))
						Tracers[Plr.Name].BoxHandleAdornment.Transparency = 0
						Tracers[Plr.Name].BoxHandleAdornment.Size = Vector3.new(0.001, 0.001, Dist)
						Tracers[Plr.Name].BoxHandleAdornment.Color3 = GetTeamColor(Plr)
					else
						Dist = (MyTor.Position - (GetTor.Position - Vector3.new(0, 3, 0))).magnitude
						Tracers[Plr.Name].Transparency = 1
						Tracers[Plr.Name].Size = Vector3.new(0.3, 0.3, Dist)
						Tracers[Plr.Name].CFrame = CFrame.new(MyTor.Position - Vector3.new(0, 3, 0), (GetTor.Position - Vector3.new(0, 4.5, 0))) * CFrame.new(0, 0, -Dist / 2)
						Tracers[Plr.Name].BrickColor = BrickColor.new(GetTeamColor(Plr))
						Tracers[Plr.Name].BoxHandleAdornment.Transparency = 0
						Tracers[Plr.Name].BoxHandleAdornment.Size = Vector3.new(0.05, 0.05, Dist)
						Tracers[Plr.Name].BoxHandleAdornment.Color3 = GetTeamColor(Plr)
					end
				else
					Tracers[Plr.Name].Transparency = 1
					Tracers[Plr.Name].BoxHandleAdornment.Transparency = 1
				end
			end
		end
	end
end

function RemoveTracers(Plr)
	local Find = Tracers:FindFirstChild(Plr.Name)
	if Find then
		Find:Destroy()
	end
end

function CreateTracers(Plr)
	local Find = Tracers:FindFirstChild(Plr.Name)
	if not Find then
		local P = Instance.new("Part")
		P.Name = Plr.Name
		P.Material = "Neon"
		P.Transparency = 1
		P.Anchored = true
		P.Locked = true
		P.CanCollide = false
		local B = Instance.new("BoxHandleAdornment", P)
		B.Adornee = P
		B.Size = GetSizeOfObject(P)
		B.AlwaysOnTop = true
		B.ZIndex = 5
		B.Transparency = 0
		B.Color3 = GetTeamColor(Plr) or Bullshit.Colors.Neutral
		P.Parent = Tracers

		coroutine.resume(coroutine.create(function()
			while Tracers:FindFirstChild(Plr.Name) do
				UpdateTracer(Plr)
				Run.RenderStepped:wait()
			end
		end))
	end
end

function UpdateChams(Obj)
	if Obj == nil then return end

	if Obj:IsA("Player") then
		local Find = PlayerChams:FindFirstChild(Obj.Name)
		local GetChar = Obj.Character

		local Trans = 0
		if GetChar and MyChar then
			local GetHead = GetChar:FindFirstChild("Head")
			local GetTor = GetChar:FindFirstChild("HumanoidRootPart")
			local MyHead = MyChar:FindFirstChild("Head")
			local MyTor = MyChar:FindFirstChild("HumanoidRootPart")
			if GetHead and GetTor and MyHead and MyTor then
				if (MyTor.Position - GetTor.Position).magnitude > Bullshit.CHAMSLength or Bullshit.Blacklist[Obj.Name] then
					Trans = 1
				else
					--local MyCharStuff = MyChar:GetDescendants()
					local Ray = Ray.new(MyCam.CFrame.p, (GetTor.Position - MyCam.CFrame.p).unit * 2048)
					local part = workspace:FindPartOnRayWithIgnoreList(Ray, {MyChar})
					if part ~= nil then
						if part:IsDescendantOf(GetChar) then
							Trans = 0.9
						else
							Trans = 0
						end
					end
				end
			end
		end

		if Find then
			for i, v in next, Find:GetChildren() do
				if v.className ~= "ObjectValue" then
					v.Color3 = GetTeamColor(Obj) or Bullshit.Colors.Neutral
					v.Transparency = Trans
				end
			end
		end
	end
end

function RemoveChams(Obj)
	if Obj ~= nil then
		local IsPlr = Obj:IsA("Player")
		local UseFolder = ItemChams
		if IsPlr then UseFolder = PlayerChams end

		local FindC = UseFolder:FindFirstChild(tostring(Obj)) or FindCham(Obj)
		if FindC then
			FindC:Destroy()
		end
	end
end

function CreateChams(Obj)
	if Obj ~= nil then
		local IsPlr = Obj:IsA("Player")
		local UseFolder = ItemChams
		local Crap = nil
		local GetTor = nil
		local t = tick()
		if IsPlr then
			Obj = Obj.Character
			UseFolder = PlayerChams
		end
		if Obj == nil then return end
		GetTor = Obj:FindFirstChild("HumanoidRootPart") or Obj:WaitForChild("HumanoidRootPart")
		if IsPlr then Crap = Obj:GetChildren() else Crap = Obj:GetDescendants() end

		local FindC = ((IsPlr) and UseFolder:FindFirstChild(Obj.Name)) or FindCham(Obj)
		if not FindC then
			FindC = Instance.new("Folder", UseFolder)
			FindC.Name = Obj.Name
			local ObjVal = Instance.new("ObjectValue", FindC)
			ObjVal.Value = Obj
		end

		for _, P in next, Crap do
			if P:IsA("PVInstance") and P.Name ~= "HumanoidRootPart" then
				local Box = Instance.new("BoxHandleAdornment")
				Box.Size = GetSizeOfObject(P)
				Box.Name = "Cham"
				Box.Adornee = P
				Box.AlwaysOnTop = true
				Box.ZIndex = 5
				Box.Transparency = 0
				Box.Color3 = ((IsPlr) and GetTeamColor(Plrs:GetPlayerFromCharacter(Obj))) or Bullshit.Colors.Neutral
				Box.Parent = FindC
			end
		end
	end
end

function CreateMobESPChams()
	local mobspawn = { }

	for i, v in next, workspace:GetDescendants() do
		local hum = v:FindFirstChildOfClass("Humanoid")
		if hum and not Plrs:GetPlayerFromCharacter(hum.Parent) and FindCham(v) == nil and FindESP(v) == nil then
			mobspawn[tostring(v.Parent)] = v.Parent
			if Bullshit.CHAMSEnabled and Bullshit.MobChams then
				CreateChams(v)
			end
			if Bullshit.ESPEnabled and Bullshit.MobESP then
				CreateESP(v)
			end
		end
	end

	if Bullshit.Mob_ESP_CHAMS_Ran_Once == false then
		for i, v in next, mobspawn do
			v.ChildAdded:connect(function(Obj)
				if Bullshit.MobChams then
					local t = tick()
					local GetHum = Obj:FindFirstChildOfClass("Humanoid")
					if GetHum == nil then
						repeat
							GetHum = Obj:FindFirstChildOfClass("Humanoid")
							wait()
						until GetHum ~= nil or (tick() - t) >= 10
					end
					if GetHum == nil then return end

					CreateChams(Obj)
				end

				if Bullshit.MobESP then
					local t = tick()
					local GetHum = Obj:FindFirstChildOfClass("Humanoid")
					if GetHum == nil then
						repeat
							GetHum = Obj:FindFirstChildOfClass("Humanoid")
							wait()
						until GetHum ~= nil or (tick() - t) >= 10
					end
					if GetHum == nil then return end

					CreateESP(Obj)
				end
			end)
		end

		Bullshit.Mob_ESP_CHAMS_Ran_Once = true
	end
end

function CreateChildAddedEventFor(Obj)
	Obj.ChildAdded:connect(function(Obj2)
		if Bullshit.OutlinesEnabled then
			if Obj2:IsA("BasePart") and not Plrs:GetPlayerFromCharacter(Obj2.Parent) and not Obj2.Parent:IsA("Hat") and not Obj2.Parent:IsA("Accessory") and Obj2.Parent.Name ~= "Tracers" then
				local Data = { }
				Data[2] = Obj2.Transparency
				Obj2.Transparency = 1
				local outline = Instance.new("SelectionBox")
				outline.Name = "Outline"
				outline.Color3 = Color3.new(0, 0, 0)
				outline.SurfaceColor3 = Color3.new(0, 1, 0)
				--outline.SurfaceTransparency = 0.9
				outline.LineThickness = 0.01
				outline.Transparency = 0.5
				outline.Transparency = 0.5
				outline.Adornee = Obj2
				outline.Parent = Obj2
				Data[1] = outline
				rawset(Bullshit.OutlinedParts, Obj2, Data)
			end

			for i, v in next, Obj2:GetDescendants() do
				if v:IsA("BasePart") and not Plrs:GetPlayerFromCharacter(v.Parent) and not v.Parent:IsA("Hat") and not v.Parent:IsA("Accessory") and v.Parent.Name ~= "Tracers" then
					local Data = { }
					Data[2] = v.Transparency
					v.Transparency = 1
					local outline = Instance.new("SelectionBox")
					outline.Name = "Outline"
					outline.Color3 = Color3.new(0, 0, 0)
					outline.SurfaceColor3 = Color3.new(0, 1, 0)
					--outline.SurfaceTransparency = 0.9
					outline.LineThickness = 0.01
					outline.Transparency = 0.5
					outline.Adornee = v
					outline.Parent = v
					Data[1] = outline
					rawset(Bullshit.OutlinedParts, v, Data)
				end
				CreateChildAddedEventFor(v)
			end
		end
		CreateChildAddedEventFor(Obj2)
	end)
end

function LightingHax()
	if Bullshit.OutlinesEnabled then
		Light.TimeOfDay = "00:00:00"
	end

	if Bullshit.FullbrightEnabled then
		Light.Ambient = Color3.new(1, 1, 1)
		Light.ColorShift_Bottom = Color3.new(1, 1, 1)
		Light.ColorShift_Top = Color3.new(1, 1, 1)
	end
end

Plrs.PlayerAdded:connect(function(Plr)
	if Bullshit.CharAddedEvent[Plr.Name] == nil then
		Bullshit.CharAddedEvent[Plr.Name] = Plr.CharacterAdded:connect(function(Char)
			if Bullshit.ESPEnabled then
				RemoveESP(Plr)
				CreateESP(Plr)
			end
			if Bullshit.CHAMSEnabled then
				RemoveChams(Plr)
				CreateChams(Plr)
			end
			if Bullshit.TracersEnabled then
				CreateTracers(Plr)
			end
			repeat wait() until Char:FindFirstChild("HumanoidRootPart")
			TracerMT[Plr.Name] = Char.HumanoidRootPart
		end)
	end
end)

Plrs.PlayerRemoving:connect(function(Plr)
	if Bullshit.CharAddedEvent[Plr.Name] ~= nil then
		Bullshit.CharAddedEvent[Plr.Name]:Disconnect()
		Bullshit.CharAddedEvent[Plr.Name] = nil
	end
	RemoveESP(Plr)
	RemoveChams(Plr)
	RemoveTracers(Plr)
	TracerMT[Plr.Name] = nil
end)

function InitMain()
	-- Objects
	
	local Bullshit20 = Instance.new("ScreenGui")
	local MainFrame = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local design = Instance.new("Frame")
	local buttons = Instance.new("Frame")
	local ESPToggle = Instance.new("TextButton")
	local ChamsToggle = Instance.new("TextButton")
	local TracersToggle = Instance.new("TextButton")
	local OutlineToggle = Instance.new("TextButton")
	local DebugToggle = Instance.new("TextButton")
	local FullbrightToggle = Instance.new("TextButton")
	local BlacklistToggle = Instance.new("TextButton")
	local WhitelistToggle = Instance.new("TextButton")
	local Crosshair = Instance.new("TextButton")
	local AimbotToggle = Instance.new("TextButton")
	local Settings = Instance.new("TextButton")
	local Information = Instance.new("TextButton")
	local Information_2 = Instance.new("Frame")
	local Title_2 = Instance.new("TextLabel")
	local design_2 = Instance.new("Frame")
	local buttons_2 = Instance.new("ScrollingFrame")
	local TextLabel = Instance.new("TextLabel")
	local Settings_2 = Instance.new("Frame")
	local Title_3 = Instance.new("TextLabel")
	local design_3 = Instance.new("Frame")
	local buttons_3 = Instance.new("ScrollingFrame")
	local AllyColor = Instance.new("TextBox")
	local CHAMSLength = Instance.new("TextBox")
	local CrosshairColor = Instance.new("TextBox")
	local ESPLength = Instance.new("TextBox")
	local EnemyColor = Instance.new("TextBox")
	local FreeForAll = Instance.new("TextButton")
	local FriendColor = Instance.new("TextBox")
	local NeutralColor = Instance.new("TextBox")
	local TracersLength = Instance.new("TextBox")
	local TracersUnderChars = Instance.new("TextButton")
	local AutoFireToggle = Instance.new("TextButton")
	local AimbotKey = Instance.new("TextButton")
	local MobESPButton = Instance.new("TextButton")
	local MobChamsButton = Instance.new("TextButton")
	local TextLabel_2 = Instance.new("TextLabel")
	local TextLabel_3 = Instance.new("TextLabel")
	local TextLabel_4 = Instance.new("TextLabel")
	local TextLabel_5 = Instance.new("TextLabel")
	local TextLabel_6 = Instance.new("TextLabel")
	local TextLabel_7 = Instance.new("TextLabel")
	local TextLabel_8 = Instance.new("TextLabel")
	local TextLabel_9 = Instance.new("TextLabel")
	local TextLabel_10 = Instance.new("TextLabel")
	local TextLabel_11 = Instance.new("TextLabel")
	local TextLabel_12 = Instance.new("TextLabel")
	local TextLabel_13 = Instance.new("TextLabel")
	local TextLabel_14 = Instance.new("TextLabel")
	local TextLabel_15 = Instance.new("TextLabel")
	local SaveSettings = Instance.new("TextButton")
	local Blacklist = Instance.new("Frame")
	local nigga = Instance.new("TextLabel")
	local niggerfaggot = Instance.new("Frame")
	local players = Instance.new("ScrollingFrame")
	local buttonsex = Instance.new("Frame")
	local Playername = Instance.new("TextBox")
	local AddToBlacklist = Instance.new("TextButton")
	local RemoveToBlacklist = Instance.new("TextButton")
	local SaveBlacklist = Instance.new("TextButton")
	local Whitelist = Instance.new("Frame")
	local nigga2 = Instance.new("TextLabel")
	local niggerfaggot2 = Instance.new("Frame")
	local players2 = Instance.new("ScrollingFrame")
	local buttonsex2 = Instance.new("Frame")
	local Playername2 = Instance.new("TextBox")
	local AddToWhitelist = Instance.new("TextButton")
	local RemoveToWhitelist = Instance.new("TextButton")
	local SaveWhitelist = Instance.new("TextButton")
	
	-- Properties
	
	Bullshit20.Name = "Bullshit 3.0"
	Bullshit20.Parent = CoreGui
	Bullshit20.ResetOnSpawn = false
	
	MainFrame.Name = "MainFrame"
	MainFrame.Parent = Bullshit20
	MainFrame.Active = true
	MainFrame.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
	MainFrame.BorderSizePixel = 0
	MainFrame.Draggable = true
	MainFrame.Position = UDim2.new(0.200000003, -175, 0.5, -100)
	MainFrame.Size = UDim2.new(0, 350, 0, 315)
	
	Title.Name = "Title"
	Title.Parent = MainFrame
	Title.BackgroundColor3 = Color3.new(1, 1, 1)
	Title.BackgroundTransparency = 1
	Title.Size = UDim2.new(1, 0, 0, 50)
	Title.Font = Enum.Font.SourceSansBold
	Title.Text = "Project: Bullshit\nMade by: Racist Dolphin#5199\nVersion 3.5.5 (RE-WORK IN THE WORKS)"
	Title.TextColor3 = Color3.new(1, 1, 1)
	Title.TextSize = 18
	Title.TextTransparency = 0.5
	
	design.Name = "design"
	design.Parent = MainFrame
	design.BackgroundColor3 = Color3.new(1, 1, 1)
	design.BackgroundTransparency = 0.5
	design.BorderSizePixel = 0
	design.Position = UDim2.new(0.0500000007, 0, 0, 50)
	design.Size = UDim2.new(0.899999976, 0, 0, 2)
	
	buttons.Name = "buttons"
	buttons.Parent = MainFrame
	buttons.BackgroundColor3 = Color3.new(1, 1, 1)
	buttons.BackgroundTransparency = 1
	buttons.Position = UDim2.new(0, 20, 0, 70)
	buttons.Size = UDim2.new(1, -40, 1, -80)

	Blacklist.Name = "Blacklist"
	Blacklist.Parent = MainFrame
	Blacklist.Active = true
	Blacklist.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
	Blacklist.BorderSizePixel = 0
	Blacklist.Position = UDim2.new(1, 3, 0.5, -138)
	Blacklist.Size = UDim2.new(0, 350, 0, 375)
	Blacklist.Visible = false
	
	nigga.Name = "nigga"
	nigga.Parent = Blacklist
	nigga.BackgroundColor3 = Color3.new(1, 1, 1)
	nigga.BackgroundTransparency = 1
	nigga.Size = UDim2.new(1, 0, 0, 50)
	nigga.Font = Enum.Font.SourceSansBold
	nigga.Text = "Blacklist Menu"
	nigga.TextColor3 = Color3.new(1, 1, 1)
	nigga.TextSize = 18
	nigga.TextTransparency = 0.5
	
	niggerfaggot.Name = "niggerfaggot"
	niggerfaggot.Parent = Blacklist
	niggerfaggot.BackgroundColor3 = Color3.new(1, 1, 1)
	niggerfaggot.BackgroundTransparency = 0.5
	niggerfaggot.BorderSizePixel = 0
	niggerfaggot.Position = UDim2.new(0.0500000007, 0, 0, 50)
	niggerfaggot.Size = UDim2.new(0.899999976, 0, 0, 2)
	
	players.Name = "players"
	players.Parent = Blacklist
	players.BackgroundColor3 = Color3.new(1, 1, 1)
	players.BackgroundTransparency = 1
	players.BorderSizePixel = 0
	players.Position = UDim2.new(0, 20, 0, 60)
	players.Size = UDim2.new(1, -40, 1, -175)
	players.CanvasSize = UDim2.new(0, 0, 5, 0)
	players.ScrollBarThickness = 8
	
	buttonsex.Name = "buttonsex"
	buttonsex.Parent = Blacklist
	buttonsex.BackgroundColor3 = Color3.new(1, 1, 1)
	buttonsex.BackgroundTransparency = 1
	buttonsex.Position = UDim2.new(0, 20, 0, 250)
	buttonsex.Size = UDim2.new(1, -40, 0, 100)
	
	Playername.Name = "Playername"
	Playername.Parent = buttonsex
	Playername.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	Playername.BackgroundTransparency = 0.5
	Playername.BorderSizePixel = 0
	Playername.Size = UDim2.new(1, 0, 0, 20)
	Playername.Font = Enum.Font.SourceSansBold
	Playername.Text = "Enter Player Name"
	Playername.TextSize = 14
	Playername.TextWrapped = true
	
	AddToBlacklist.Name = "AddToBlacklist"
	AddToBlacklist.Parent = buttonsex
	AddToBlacklist.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	AddToBlacklist.BackgroundTransparency = 0.5
	AddToBlacklist.BorderSizePixel = 0
	AddToBlacklist.Position = UDim2.new(0, 0, 0, 30)
	AddToBlacklist.Size = UDim2.new(1, 0, 0, 20)
	AddToBlacklist.Font = Enum.Font.SourceSansBold
	AddToBlacklist.Text = "Add to Blacklist"
	AddToBlacklist.TextSize = 14
	AddToBlacklist.TextWrapped = true
	
	RemoveToBlacklist.Name = "RemoveToBlacklist"
	RemoveToBlacklist.Parent = buttonsex
	RemoveToBlacklist.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	RemoveToBlacklist.BackgroundTransparency = 0.5
	RemoveToBlacklist.BorderSizePixel = 0
	RemoveToBlacklist.Position = UDim2.new(0, 0, 0, 60)
	RemoveToBlacklist.Size = UDim2.new(1, 0, 0, 20)
	RemoveToBlacklist.Font = Enum.Font.SourceSansBold
	RemoveToBlacklist.Text = "Remove from Blacklist"
	RemoveToBlacklist.TextSize = 14
	RemoveToBlacklist.TextWrapped = true

	SaveBlacklist.Name = "SaveBlacklist"
	SaveBlacklist.Parent = buttonsex
	SaveBlacklist.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	SaveBlacklist.BackgroundTransparency = 0.5
	SaveBlacklist.BorderSizePixel = 0
	SaveBlacklist.Position = UDim2.new(0, 0, 0, 90)
	SaveBlacklist.Size = UDim2.new(1, 0, 0, 20)
	SaveBlacklist.Font = Enum.Font.SourceSansBold
	SaveBlacklist.Text = "Save Blacklist"
	SaveBlacklist.TextSize = 14
	SaveBlacklist.TextWrapped = true

	Whitelist.Name = "Whitelist"
	Whitelist.Parent = MainFrame
	Whitelist.Active = true
	Whitelist.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
	Whitelist.BorderSizePixel = 0
	Whitelist.Position = UDim2.new(1, 3, 0.5, -138)
	Whitelist.Size = UDim2.new(0, 350, 0, 375)
	Whitelist.Visible = false
	
	nigga2.Name = "nigga2"
	nigga2.Parent = Whitelist
	nigga2.BackgroundColor3 = Color3.new(1, 1, 1)
	nigga2.BackgroundTransparency = 1
	nigga2.Size = UDim2.new(1, 0, 0, 50)
	nigga2.Font = Enum.Font.SourceSansBold
	nigga2.Text = "Friends List Menu"
	nigga2.TextColor3 = Color3.new(1, 1, 1)
	nigga2.TextSize = 18
	nigga2.TextTransparency = 0.5
	
	niggerfaggot2.Name = "niggerfaggot2"
	niggerfaggot2.Parent = Whitelist
	niggerfaggot2.BackgroundColor3 = Color3.new(1, 1, 1)
	niggerfaggot2.BackgroundTransparency = 0.5
	niggerfaggot2.BorderSizePixel = 0
	niggerfaggot2.Position = UDim2.new(0.0500000007, 0, 0, 50)
	niggerfaggot2.Size = UDim2.new(0.899999976, 0, 0, 2)
	
	players2.Name = "players2"
	players2.Parent = Whitelist
	players2.BackgroundColor3 = Color3.new(1, 1, 1)
	players2.BackgroundTransparency = 1
	players2.BorderSizePixel = 0
	players2.Position = UDim2.new(0, 20, 0, 60)
	players2.Size = UDim2.new(1, -40, 1, -175)
	players2.CanvasSize = UDim2.new(0, 0, 5, 0)
	players2.ScrollBarThickness = 8
	
	buttonsex2.Name = "buttonsex2"
	buttonsex2.Parent = Whitelist
	buttonsex2.BackgroundColor3 = Color3.new(1, 1, 1)
	buttonsex2.BackgroundTransparency = 1
	buttonsex2.Position = UDim2.new(0, 20, 0, 250)
	buttonsex2.Size = UDim2.new(1, -40, 0, 100)
	
	Playername2.Name = "Playername2"
	Playername2.Parent = buttonsex2
	Playername2.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	Playername2.BackgroundTransparency = 0.5
	Playername2.BorderSizePixel = 0
	Playername2.Size = UDim2.new(1, 0, 0, 20)
	Playername2.Font = Enum.Font.SourceSansBold
	Playername2.Text = "Enter Player Name"
	Playername2.TextSize = 14
	Playername2.TextWrapped = true
	
	AddToWhitelist.Name = "AddToWhitelist"
	AddToWhitelist.Parent = buttonsex2
	AddToWhitelist.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	AddToWhitelist.BackgroundTransparency = 0.5
	AddToWhitelist.BorderSizePixel = 0
	AddToWhitelist.Position = UDim2.new(0, 0, 0, 30)
	AddToWhitelist.Size = UDim2.new(1, 0, 0, 20)
	AddToWhitelist.Font = Enum.Font.SourceSansBold
	AddToWhitelist.Text = "Add to Friends List"
	AddToWhitelist.TextSize = 14
	AddToWhitelist.TextWrapped = true
	
	RemoveToWhitelist.Name = "RemoveToWhitelist"
	RemoveToWhitelist.Parent = buttonsex2
	RemoveToWhitelist.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	RemoveToWhitelist.BackgroundTransparency = 0.5
	RemoveToWhitelist.BorderSizePixel = 0
	RemoveToWhitelist.Position = UDim2.new(0, 0, 0, 60)
	RemoveToWhitelist.Size = UDim2.new(1, 0, 0, 20)
	RemoveToWhitelist.Font = Enum.Font.SourceSansBold
	RemoveToWhitelist.Text = "Remove from Friends List"
	RemoveToWhitelist.TextSize = 14
	RemoveToWhitelist.TextWrapped = true

	SaveWhitelist.Name = "SaveWhitelist"
	SaveWhitelist.Parent = buttonsex2
	SaveWhitelist.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	SaveWhitelist.BackgroundTransparency = 0.5
	SaveWhitelist.BorderSizePixel = 0
	SaveWhitelist.Position = UDim2.new(0, 0, 0, 90)
	SaveWhitelist.Size = UDim2.new(1, 0, 0, 20)
	SaveWhitelist.Font = Enum.Font.SourceSansBold
	SaveWhitelist.Text = "Save Friends List"
	SaveWhitelist.TextSize = 14
	SaveWhitelist.TextWrapped = true

	BlacklistToggle.Name = "BlacklistToggle"
	BlacklistToggle.Parent = buttons
	BlacklistToggle.BackgroundColor3 = Color3.new(1, 1, 1)
	BlacklistToggle.BackgroundTransparency = 0.5
	BlacklistToggle.BorderSizePixel = 0
	BlacklistToggle.Position = UDim2.new(0, 0, 0, 200)
	BlacklistToggle.Size = UDim2.new(0, 150, 0, 30)
	BlacklistToggle.Font = Enum.Font.SourceSansBold
	BlacklistToggle.Text = "Blacklist"
	BlacklistToggle.TextColor3 = Color3.new(0.176471, 0.176471, 0.176471)
	BlacklistToggle.TextSize = 14
	BlacklistToggle.TextWrapped = true

	WhitelistToggle.Name = "WhitelistToggle"
	WhitelistToggle.Parent = buttons
	WhitelistToggle.BackgroundColor3 = Color3.new(1, 1, 1)
	WhitelistToggle.BackgroundTransparency = 0.5
	WhitelistToggle.BorderSizePixel = 0
	WhitelistToggle.Position = UDim2.new(1, -150, 0, 200)
	WhitelistToggle.Size = UDim2.new(0, 150, 0, 30)
	WhitelistToggle.Font = Enum.Font.SourceSansBold
	WhitelistToggle.Text = "Friends List"
	WhitelistToggle.TextColor3 = Color3.new(0.176471, 0.176471, 0.176471)
	WhitelistToggle.TextSize = 14
	WhitelistToggle.TextWrapped = true
	
	ESPToggle.Name = "ESPToggle"
	ESPToggle.Parent = buttons
	ESPToggle.BackgroundColor3 = Color3.new(1, 1, 1)
	ESPToggle.BackgroundTransparency = 0.5
	ESPToggle.BorderSizePixel = 0
	ESPToggle.Size = UDim2.new(0, 150, 0, 30)
	ESPToggle.Font = Enum.Font.SourceSansBold
	ESPToggle.Text = "ESP"
	ESPToggle.TextColor3 = Color3.new(0.176471, 0.176471, 0.176471)
	ESPToggle.TextSize = 14
	ESPToggle.TextWrapped = true
	
	ChamsToggle.Name = "ChamsToggle"
	ChamsToggle.Parent = buttons
	ChamsToggle.BackgroundColor3 = Color3.new(1, 1, 1)
	ChamsToggle.BackgroundTransparency = 0.5
	ChamsToggle.BorderSizePixel = 0
	ChamsToggle.Position = UDim2.new(1, -150, 0, 0)
	ChamsToggle.Size = UDim2.new(0, 150, 0, 30)
	ChamsToggle.Font = Enum.Font.SourceSansBold
	ChamsToggle.Text = "Chams"
	ChamsToggle.TextColor3 = Color3.new(0.176471, 0.176471, 0.176471)
	ChamsToggle.TextSize = 14
	ChamsToggle.TextWrapped = true
	
	TracersToggle.Name = "TracersToggle"
	TracersToggle.Parent = buttons
	TracersToggle.BackgroundColor3 = Color3.new(1, 1, 1)
	TracersToggle.BackgroundTransparency = 0.5
	TracersToggle.BorderSizePixel = 0
	TracersToggle.Position = UDim2.new(0, 0, 0, 40)
	TracersToggle.Size = UDim2.new(0, 150, 0, 30)
	TracersToggle.Font = Enum.Font.SourceSansBold
	TracersToggle.Text = "Tracers"
	TracersToggle.TextColor3 = Color3.new(0.176471, 0.176471, 0.176471)
	TracersToggle.TextSize = 14
	TracersToggle.TextWrapped = true
	
	OutlineToggle.Name = "OutlineToggle"
	OutlineToggle.Parent = buttons
	OutlineToggle.BackgroundColor3 = Color3.new(1, 1, 1)
	OutlineToggle.BackgroundTransparency = 0.5
	OutlineToggle.BorderSizePixel = 0
	OutlineToggle.Position = UDim2.new(1, -150, 0, 40)
	OutlineToggle.Size = UDim2.new(0, 150, 0, 30)
	OutlineToggle.Font = Enum.Font.SourceSansBold
	OutlineToggle.Text = "Outlines"
	OutlineToggle.TextColor3 = Color3.new(0.176471, 0.176471, 0.176471)
	OutlineToggle.TextSize = 14
	OutlineToggle.TextWrapped = true
	
	DebugToggle.Name = "DebugToggle"
	DebugToggle.Parent = buttons
	DebugToggle.BackgroundColor3 = Color3.new(1, 1, 1)
	DebugToggle.BackgroundTransparency = 0.5
	DebugToggle.BorderSizePixel = 0
	DebugToggle.Position = UDim2.new(1, -150, 0, 80)
	DebugToggle.Size = UDim2.new(0, 150, 0, 30)
	DebugToggle.Font = Enum.Font.SourceSansBold
	DebugToggle.Text = "Debug Info"
	DebugToggle.TextColor3 = Color3.new(0.176471, 0.176471, 0.176471)
	DebugToggle.TextSize = 14
	DebugToggle.TextWrapped = true
	
	FullbrightToggle.Name = "FullbrightToggle"
	FullbrightToggle.Parent = buttons
	FullbrightToggle.BackgroundColor3 = Color3.new(1, 1, 1)
	FullbrightToggle.BackgroundTransparency = 0.5
	FullbrightToggle.BorderSizePixel = 0
	FullbrightToggle.Position = UDim2.new(0, 0, 0, 80)
	FullbrightToggle.Size = UDim2.new(0, 150, 0, 30)
	FullbrightToggle.Font = Enum.Font.SourceSansBold
	FullbrightToggle.Text = "Fullbright"
	FullbrightToggle.TextColor3 = Color3.new(0.176471, 0.176471, 0.176471)
	FullbrightToggle.TextSize = 14
	FullbrightToggle.TextWrapped = true
	
	Crosshair.Name = "Crosshair"
	Crosshair.Parent = buttons
	Crosshair.BackgroundColor3 = Color3.new(1, 1, 1)
	Crosshair.BackgroundTransparency = 0.5
	Crosshair.BorderSizePixel = 0
	Crosshair.Position = UDim2.new(0, 0, 0, 120)
	Crosshair.Size = UDim2.new(0, 150, 0, 30)
	Crosshair.Font = Enum.Font.SourceSansBold
	Crosshair.Text = "Crosshair"
	Crosshair.TextColor3 = Color3.new(0.176471, 0.176471, 0.176471)
	Crosshair.TextSize = 14
	Crosshair.TextWrapped = true
	
	AimbotToggle.Name = "AimbotToggle"
	AimbotToggle.Parent = buttons
	AimbotToggle.BackgroundColor3 = Color3.new(1, 1, 1)
	AimbotToggle.BackgroundTransparency = 0.5
	AimbotToggle.BorderSizePixel = 0
	AimbotToggle.Position = UDim2.new(1, -150, 0, 120)
	AimbotToggle.Size = UDim2.new(0, 150, 0, 30)
	AimbotToggle.Font = Enum.Font.SourceSansBold
	AimbotToggle.Text = "Aimlock"
	AimbotToggle.TextColor3 = Color3.new(0.176471, 0.176471, 0.176471)
	AimbotToggle.TextSize = 14
	AimbotToggle.TextWrapped = true
	
	Settings.Name = "Settings"
	Settings.Parent = buttons
	Settings.BackgroundColor3 = Color3.new(1, 1, 1)
	Settings.BackgroundTransparency = 0.5
	Settings.BorderSizePixel = 0
	Settings.Position = UDim2.new(1, -150, 0, 160)
	Settings.Size = UDim2.new(0, 150, 0, 30)
	Settings.Font = Enum.Font.SourceSansBold
	Settings.Text = "Settings"
	Settings.TextColor3 = Color3.new(0.176471, 0.176471, 0.176471)
	Settings.TextSize = 14
	Settings.TextWrapped = true
	
	Information.Name = "Information"
	Information.Parent = buttons
	Information.BackgroundColor3 = Color3.new(1, 1, 1)
	Information.BackgroundTransparency = 0.5
	Information.BorderSizePixel = 0
	Information.Position = UDim2.new(0, 0, 0, 160)
	Information.Size = UDim2.new(0, 150, 0, 30)
	Information.Font = Enum.Font.SourceSansBold
	Information.Text = "Information"
	Information.TextColor3 = Color3.new(0.176471, 0.176471, 0.176471)
	Information.TextSize = 14
	Information.TextWrapped = true
	
	Information_2.Name = "Information"
	Information_2.Parent = MainFrame
	Information_2.Active = true
	Information_2.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
	Information_2.BorderSizePixel = 0
	Information_2.Position = UDim2.new(1, 3, 0.5, -138)
	Information_2.Size = UDim2.new(0, 350, 0, 365)
	Information_2.Visible = false
	
	Title_2.Name = "Title"
	Title_2.Parent = Information_2
	Title_2.BackgroundColor3 = Color3.new(1, 1, 1)
	Title_2.BackgroundTransparency = 1
	Title_2.Size = UDim2.new(1, 0, 0, 50)
	Title_2.Font = Enum.Font.SourceSansBold
	Title_2.Text = "Information"
	Title_2.TextColor3 = Color3.new(1, 1, 1)
	Title_2.TextSize = 18
	Title_2.TextTransparency = 0.5
	
	design_2.Name = "design"
	design_2.Parent = Information_2
	design_2.BackgroundColor3 = Color3.new(1, 1, 1)
	design_2.BackgroundTransparency = 0.5
	design_2.BorderSizePixel = 0
	design_2.Position = UDim2.new(0.0500000007, 0, 0, 50)
	design_2.Size = UDim2.new(0.899999976, 0, 0, 2)
	
	buttons_2.Name = "buttons"
	buttons_2.Parent = Information_2
	buttons_2.BackgroundColor3 = Color3.new(1, 1, 1)
	buttons_2.BackgroundTransparency = 1
	buttons_2.BorderSizePixel = 0
	buttons_2.Position = UDim2.new(0, 20, 0, 60)
	buttons_2.Size = UDim2.new(1, -40, 1, -70)
	buttons_2.CanvasSize = UDim2.new(5, 0, 5, 0)
	buttons_2.ScrollBarThickness = 5
	
	TextLabel.Parent = buttons_2
	TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel.BackgroundTransparency = 1
	TextLabel.Size = UDim2.new(1, -20, 1, 0)
	TextLabel.Font = Enum.Font.SourceSansBold
	TextLabel.Text = [[
Scripting by: Racist Dolphin#5199
GUI by: SOMEONE WHO WANTS HIS NAME HIDDEN.

To hide/show the GUI press the "P" key on your keyboard.

NOTICE: Since my string manipulation skills aren't the greatest, changing esp/cham colors might be quite buggy.
NOTICE #2: The blacklist feature will return! I just didn't have enough time to make the gui.
NOTICE #3: Save Settings might still be bugged. Message me if it's fucked up still.

This works on every game, though the Aimbot does NOT! (Doesn't work on: Jailbreak, and Phantom Forces)

FAQ:
1) How do I use the aimbot?
A: Activate it, and hold right-click in-game. The aimbot will lock on to the closest enemy NOT behind a wall. (If said player is behind a wall, it will find the next closest player not behind a wall.)

2) ESP/Chams don't work on the game I play?
A: Some games require me to make patches (ex: Murder Mystery, Murder Mystery X) to request a patch or a game message me on discord.

3) How did I detect when a player is behind a wall?
A: Raycasting the camera to another player.

4) My bullets still miss when using aimbot?!
A: Blame bullet spread, try and control how often you fire. (Murder Mystery 2 = trash) (Why the fuck does a single shot pistol have bullet spread? lol wtf?)

Change Log:
3/10/2018:
+ Fixed more bugs with chams

3/10/2018:
+ Fixed how chams broke when a player respawned.

3/10/2018:
+ Fixed ESP not updating correctly.
+ Fixed Chams not updating correctly. (MAYBE? IDK WHAT IS BREAKING THIS)

3/9/2018:
+ Mob ESP/Chams! (BETA!)

3/8/2018:
+ Fixed the error you get when not entering a valid number for esp/chams/tracer lengths.
+ Fixed lag issues with aimlock.
+ Fixed lag issues with chams.

3/8/2018:
+ Patch for Murder 15
- Temporarily removed auto fire since mouse1click is broken on Synapse :(

3/7/2018:
+ Updated save settings.
+ Can now customize aimlock key.

3/7/2018:
+ Patch for Wild Revolver.
+ Fix for autofire. (Hopefully)

3/6/2018:
- Removed :IsFriendsWith check. (Use Friends List GUI instead)

3/4/2018:
+ Added Friend List Menu
+ Patch for Assassin!

3/4/2018:
+ Fixed crosshair toggle.
+ Aimlock patch for Island Royal.
+ Finally fixed save settings.

3/4/2018:
+ Aimlock fixed for Unit 1968: Vietnam
+ Autofire setting for aimlock
+ Fixed how you sometimes had to double click buttons to activate a option

3/4/2018:
+ Fixed FreeForAll setting bug.
+ Using aimlock on Phantom Forces / Jailbreak will now tell you it will not work.
* Renamed Aimbot back to Aimlock

3/3/2018:
+ Blacklist feature re-added.
+ Aimbot will no longer focus people in the blacklist.
+ Compatible on exploits that have readfile and writefile.

3/3/2018:
+ GUI Overhaul
+ Aimbot now only targets people NOT behind walls
+ Chams now dim when x player is visible on your screen.
+ Chams no longer have the humanoid root part. (Your welcome)
+ Patch for Silent Assassin
+ My discord was deleted, so I'm using pastebin now. (Auto updates :)
]]
	TextLabel.TextColor3 = Color3.new(1, 1, 1)
	TextLabel.TextSize = 16
	TextLabel.TextTransparency = 0.5
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel.TextYAlignment = Enum.TextYAlignment.Top
	
	Settings_2.Name = "Settings"
	Settings_2.Parent = MainFrame
	Settings_2.Active = true
	Settings_2.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
	Settings_2.BorderSizePixel = 0
	Settings_2.Position = UDim2.new(1, 3, 0.5, -138)
	Settings_2.Size = UDim2.new(0, 350, 0, 365)
	Settings_2.Visible = false
	
	Title_3.Name = "Title"
	Title_3.Parent = Settings_2
	Title_3.BackgroundColor3 = Color3.new(1, 1, 1)
	Title_3.BackgroundTransparency = 1
	Title_3.Size = UDim2.new(1, 0, 0, 50)
	Title_3.Font = Enum.Font.SourceSansBold
	Title_3.Text = "Settings Menu"
	Title_3.TextColor3 = Color3.new(1, 1, 1)
	Title_3.TextSize = 18
	Title_3.TextTransparency = 0.5
	
	design_3.Name = "design"
	design_3.Parent = Settings_2
	design_3.BackgroundColor3 = Color3.new(1, 1, 1)
	design_3.BackgroundTransparency = 0.5
	design_3.BorderSizePixel = 0
	design_3.Position = UDim2.new(0.0500000007, 0, 0, 50)
	design_3.Size = UDim2.new(0.899999976, 0, 0, 2)
	
	buttons_3.Name = "buttons"
	buttons_3.Parent = Settings_2
	buttons_3.BackgroundColor3 = Color3.new(1, 1, 1)
	buttons_3.BackgroundTransparency = 1
	buttons_3.BorderSizePixel = 0
	buttons_3.Position = UDim2.new(0, 20, 0, 60)
	buttons_3.Size = UDim2.new(1, -40, 1, -70)
	buttons_3.ScrollBarThickness = 8
	
	AllyColor.Name = "AllyColor"
	AllyColor.Parent = buttons_3
	AllyColor.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	AllyColor.BackgroundTransparency = 0.5
	AllyColor.BorderSizePixel = 0
	AllyColor.Position = UDim2.new(1, -150, 0, 180)
	AllyColor.Size = UDim2.new(0, 135, 0, 20)
	AllyColor.Font = Enum.Font.SourceSansBold
	AllyColor.Text = tostring(Bullshit.Colors.Ally)
	AllyColor.TextSize = 14
	AllyColor.TextWrapped = true
	
	CHAMSLength.Name = "CHAMSLength"
	CHAMSLength.Parent = buttons_3
	CHAMSLength.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	CHAMSLength.BackgroundTransparency = 0.5
	CHAMSLength.BorderSizePixel = 0
	CHAMSLength.Position = UDim2.new(1, -150, 0, 60)
	CHAMSLength.Size = UDim2.new(0, 135, 0, 20)
	CHAMSLength.Font = Enum.Font.SourceSansBold
	CHAMSLength.Text = tostring(Bullshit.CHAMSLength)
	CHAMSLength.TextSize = 14
	CHAMSLength.TextWrapped = true
	
	CrosshairColor.Name = "CrosshairColor"
	CrosshairColor.Parent = buttons_3
	CrosshairColor.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	CrosshairColor.BackgroundTransparency = 0.5
	CrosshairColor.BorderSizePixel = 0
	CrosshairColor.Position = UDim2.new(1, -150, 0, 270)
	CrosshairColor.Size = UDim2.new(0, 135, 0, 20)
	CrosshairColor.Font = Enum.Font.SourceSansBold
	CrosshairColor.Text = tostring(Bullshit.Colors.Crosshair)
	CrosshairColor.TextSize = 14
	CrosshairColor.TextWrapped = true
	
	ESPLength.Name = "ESPLength"
	ESPLength.Parent = buttons_3
	ESPLength.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	ESPLength.BackgroundTransparency = 0.5
	ESPLength.BorderSizePixel = 0
	ESPLength.Position = UDim2.new(1, -150, 0, 30)
	ESPLength.Size = UDim2.new(0, 135, 0, 20)
	ESPLength.Font = Enum.Font.SourceSansBold
	ESPLength.Text = tostring(Bullshit.ESPLength)
	ESPLength.TextSize = 14
	ESPLength.TextWrapped = true
	
	EnemyColor.Name = "EnemyColor"
	EnemyColor.Parent = buttons_3
	EnemyColor.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	EnemyColor.BackgroundTransparency = 0.5
	EnemyColor.BorderSizePixel = 0
	EnemyColor.Position = UDim2.new(1, -150, 0, 150)
	EnemyColor.Size = UDim2.new(0, 135, 0, 20)
	EnemyColor.Font = Enum.Font.SourceSansBold
	EnemyColor.Text = tostring(Bullshit.Colors.Enemy)
	EnemyColor.TextSize = 14
	EnemyColor.TextWrapped = true
	
	FreeForAll.Name = "FreeForAll"
	FreeForAll.Parent = buttons_3
	FreeForAll.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	FreeForAll.BackgroundTransparency = 0.5
	FreeForAll.BorderSizePixel = 0
	FreeForAll.Position = UDim2.new(1, -150, 0, 120)
	FreeForAll.Size = UDim2.new(0, 135, 0, 20)
	FreeForAll.Font = Enum.Font.SourceSansBold
	FreeForAll.Text = tostring(Bullshit.FreeForAll)
	FreeForAll.TextSize = 14
	FreeForAll.TextWrapped = true
	
	FriendColor.Name = "FriendColor"
	FriendColor.Parent = buttons_3
	FriendColor.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	FriendColor.BackgroundTransparency = 0.5
	FriendColor.BorderSizePixel = 0
	FriendColor.Position = UDim2.new(1, -150, 0, 210)
	FriendColor.Size = UDim2.new(0, 135, 0, 20)
	FriendColor.Font = Enum.Font.SourceSansBold
	FriendColor.Text = tostring(Bullshit.Colors.Friend)
	FriendColor.TextSize = 14
	FriendColor.TextWrapped = true
	
	NeutralColor.Name = "NeutralColor"
	NeutralColor.Parent = buttons_3
	NeutralColor.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	NeutralColor.BackgroundTransparency = 0.5
	NeutralColor.BorderSizePixel = 0
	NeutralColor.Position = UDim2.new(1, -150, 0, 240)
	NeutralColor.Size = UDim2.new(0, 135, 0, 20)
	NeutralColor.Font = Enum.Font.SourceSansBold
	NeutralColor.Text = tostring(Bullshit.Colors.Neutral)
	NeutralColor.TextSize = 14
	NeutralColor.TextWrapped = true
	
	TracersLength.Name = "TracersLength"
	TracersLength.Parent = buttons_3
	TracersLength.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	TracersLength.BackgroundTransparency = 0.5
	TracersLength.BorderSizePixel = 0
	TracersLength.Position = UDim2.new(1, -150, 0, 0)
	TracersLength.Size = UDim2.new(0, 135, 0, 20)
	TracersLength.Font = Enum.Font.SourceSansBold
	TracersLength.Text = tostring(Bullshit.TracersLength)
	TracersLength.TextSize = 14
	TracersLength.TextWrapped = true
	
	TracersUnderChars.Name = "TracersUnderChars"
	TracersUnderChars.Parent = buttons_3
	TracersUnderChars.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	TracersUnderChars.BackgroundTransparency = 0.5
	TracersUnderChars.BorderSizePixel = 0
	TracersUnderChars.Position = UDim2.new(1, -150, 0, 90)
	TracersUnderChars.Size = UDim2.new(0, 135, 0, 20)
	TracersUnderChars.Font = Enum.Font.SourceSansBold
	TracersUnderChars.Text = tostring(Bullshit.PlaceTracersUnderCharacter)
	TracersUnderChars.TextSize = 14
	TracersUnderChars.TextWrapped = true

	AutoFireToggle.Name = "AutoFireToggle"
	AutoFireToggle.Parent = buttons_3
	AutoFireToggle.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	AutoFireToggle.BackgroundTransparency = 0.5
	AutoFireToggle.BorderSizePixel = 0
	AutoFireToggle.Position = UDim2.new(1, -150, 0, 300)
	AutoFireToggle.Size = UDim2.new(0, 135, 0, 20)
	AutoFireToggle.Font = Enum.Font.SourceSansBold
	AutoFireToggle.Text = tostring(Bullshit.AutoFire)
	AutoFireToggle.TextSize = 14
	AutoFireToggle.TextWrapped = true

	AimbotKey.Name = "AimbotKey"
	AimbotKey.Parent = buttons_3
	AimbotKey.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	AimbotKey.BackgroundTransparency = 0.5
	AimbotKey.BorderSizePixel = 0
	AimbotKey.Position = UDim2.new(1, -150, 0, 330)
	AimbotKey.Size = UDim2.new(0, 135, 0, 20)
	AimbotKey.Font = Enum.Font.SourceSansBold
	AimbotKey.Text = tostring(Bullshit.AimbotKey)
	AimbotKey.TextSize = 14
	AimbotKey.TextWrapped = true

	MobESPButton.Name = "MobESPButton"
	MobESPButton.Parent = buttons_3
	MobESPButton.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	MobESPButton.BackgroundTransparency = 0.5
	MobESPButton.BorderSizePixel = 0
	MobESPButton.Position = UDim2.new(1, -150, 0, 360)
	MobESPButton.Size = UDim2.new(0, 135, 0, 20)
	MobESPButton.Font = Enum.Font.SourceSansBold
	MobESPButton.Text = tostring(Bullshit.MobESP)
	MobESPButton.TextSize = 14
	MobESPButton.TextWrapped = true

	MobChamsButton.Name = "MobChamsButton"
	MobChamsButton.Parent = buttons_3
	MobChamsButton.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	MobChamsButton.BackgroundTransparency = 0.5
	MobChamsButton.BorderSizePixel = 0
	MobChamsButton.Position = UDim2.new(1, -150, 0, 390)
	MobChamsButton.Size = UDim2.new(0, 135, 0, 20)
	MobChamsButton.Font = Enum.Font.SourceSansBold
	MobChamsButton.Text = tostring(Bullshit.MobChams)
	MobChamsButton.TextSize = 14
	MobChamsButton.TextWrapped = true
	
	TextLabel_2.Parent = buttons_3
	TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel_2.BackgroundTransparency = 1
	TextLabel_2.Size = UDim2.new(0.5, 0, 0, 20)
	TextLabel_2.Font = Enum.Font.SourceSansBold
	TextLabel_2.Text = "Tracers Length"
	TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
	TextLabel_2.TextSize = 16
	TextLabel_2.TextTransparency = 0.5
	
	TextLabel_3.Parent = buttons_3
	TextLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel_3.BackgroundTransparency = 1
	TextLabel_3.Position = UDim2.new(0, 0, 0, 30)
	TextLabel_3.Size = UDim2.new(0.5, 0, 0, 20)
	TextLabel_3.Font = Enum.Font.SourceSansBold
	TextLabel_3.Text = "ESP Length"
	TextLabel_3.TextColor3 = Color3.new(1, 1, 1)
	TextLabel_3.TextSize = 16
	TextLabel_3.TextTransparency = 0.5
	
	TextLabel_4.Parent = buttons_3
	TextLabel_4.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel_4.BackgroundTransparency = 1
	TextLabel_4.Position = UDim2.new(0, 0, 0, 60)
	TextLabel_4.Size = UDim2.new(0.5, 0, 0, 20)
	TextLabel_4.Font = Enum.Font.SourceSansBold
	TextLabel_4.Text = "Chams Length"
	TextLabel_4.TextColor3 = Color3.new(1, 1, 1)
	TextLabel_4.TextSize = 16
	TextLabel_4.TextTransparency = 0.5
	
	TextLabel_5.Parent = buttons_3
	TextLabel_5.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel_5.BackgroundTransparency = 1
	TextLabel_5.Position = UDim2.new(0, 0, 0, 90)
	TextLabel_5.Size = UDim2.new(0.5, 0, 0, 20)
	TextLabel_5.Font = Enum.Font.SourceSansBold
	TextLabel_5.Text = "Tracers Under Chars"
	TextLabel_5.TextColor3 = Color3.new(1, 1, 1)
	TextLabel_5.TextSize = 16
	TextLabel_5.TextTransparency = 0.5
	
	TextLabel_6.Parent = buttons_3
	TextLabel_6.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel_6.BackgroundTransparency = 1
	TextLabel_6.Position = UDim2.new(0, 0, 0, 270)
	TextLabel_6.Size = UDim2.new(0.5, 0, 0, 20)
	TextLabel_6.Font = Enum.Font.SourceSansBold
	TextLabel_6.Text = "Crosshair Color"
	TextLabel_6.TextColor3 = Color3.new(1, 1, 1)
	TextLabel_6.TextSize = 16
	TextLabel_6.TextTransparency = 0.5
	
	TextLabel_7.Parent = buttons_3
	TextLabel_7.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel_7.BackgroundTransparency = 1
	TextLabel_7.Position = UDim2.new(0, 0, 0, 120)
	TextLabel_7.Size = UDim2.new(0.5, 0, 0, 20)
	TextLabel_7.Font = Enum.Font.SourceSansBold
	TextLabel_7.Text = "Free For All"
	TextLabel_7.TextColor3 = Color3.new(1, 1, 1)
	TextLabel_7.TextSize = 16
	TextLabel_7.TextTransparency = 0.5
	
	TextLabel_8.Parent = buttons_3
	TextLabel_8.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel_8.BackgroundTransparency = 1
	TextLabel_8.Position = UDim2.new(0, 0, 0, 240)
	TextLabel_8.Size = UDim2.new(0.5, 0, 0, 20)
	TextLabel_8.Font = Enum.Font.SourceSansBold
	TextLabel_8.Text = "Neutral Color"
	TextLabel_8.TextColor3 = Color3.new(1, 1, 1)
	TextLabel_8.TextSize = 16
	TextLabel_8.TextTransparency = 0.5
	
	TextLabel_9.Parent = buttons_3
	TextLabel_9.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel_9.BackgroundTransparency = 1
	TextLabel_9.Position = UDim2.new(0, 0, 0, 150)
	TextLabel_9.Size = UDim2.new(0.5, 0, 0, 20)
	TextLabel_9.Font = Enum.Font.SourceSansBold
	TextLabel_9.Text = "Enemy Color"
	TextLabel_9.TextColor3 = Color3.new(1, 1, 1)
	TextLabel_9.TextSize = 16
	TextLabel_9.TextTransparency = 0.5
	
	TextLabel_10.Parent = buttons_3
	TextLabel_10.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel_10.BackgroundTransparency = 1
	TextLabel_10.Position = UDim2.new(0, 0, 0, 180)
	TextLabel_10.Size = UDim2.new(0.5, 0, 0, 20)
	TextLabel_10.Font = Enum.Font.SourceSansBold
	TextLabel_10.Text = "Ally Color"
	TextLabel_10.TextColor3 = Color3.new(1, 1, 1)
	TextLabel_10.TextSize = 16
	TextLabel_10.TextTransparency = 0.5
	
	TextLabel_11.Parent = buttons_3
	TextLabel_11.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel_11.BackgroundTransparency = 1
	TextLabel_11.Position = UDim2.new(0, 0, 0, 210)
	TextLabel_11.Size = UDim2.new(0.5, 0, 0, 20)
	TextLabel_11.Font = Enum.Font.SourceSansBold
	TextLabel_11.Text = "Friend Color"
	TextLabel_11.TextColor3 = Color3.new(1, 1, 1)
	TextLabel_11.TextSize = 16
	TextLabel_11.TextTransparency = 0.5

	TextLabel_12.Parent = buttons_3
	TextLabel_12.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel_12.BackgroundTransparency = 1
	TextLabel_12.Position = UDim2.new(0, 0, 0, 300)
	TextLabel_12.Size = UDim2.new(0.5, 0, 0, 20)
	TextLabel_12.Font = Enum.Font.SourceSansBold
	TextLabel_12.Text = "Aimlock Auto Fire"
	TextLabel_12.TextColor3 = Color3.new(1, 1, 1)
	TextLabel_12.TextSize = 16
	TextLabel_12.TextTransparency = 0.5

	TextLabel_13.Parent = buttons_3
	TextLabel_13.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel_13.BackgroundTransparency = 1
	TextLabel_13.Position = UDim2.new(0, 0, 0, 330)
	TextLabel_13.Size = UDim2.new(0.5, 0, 0, 20)
	TextLabel_13.Font = Enum.Font.SourceSansBold
	TextLabel_13.Text = "Aimbot Key"
	TextLabel_13.TextColor3 = Color3.new(1, 1, 1)
	TextLabel_13.TextSize = 16
	TextLabel_13.TextTransparency = 0.5

	TextLabel_14.Parent = buttons_3
	TextLabel_14.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel_14.BackgroundTransparency = 1
	TextLabel_14.Position = UDim2.new(0, 0, 0, 360)
	TextLabel_14.Size = UDim2.new(0.5, 0, 0, 20)
	TextLabel_14.Font = Enum.Font.SourceSansBold
	TextLabel_14.Text = "Mob ESP"
	TextLabel_14.TextColor3 = Color3.new(1, 1, 1)
	TextLabel_14.TextSize = 16
	TextLabel_14.TextTransparency = 0.5

	TextLabel_15.Parent = buttons_3
	TextLabel_15.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel_15.BackgroundTransparency = 1
	TextLabel_15.Position = UDim2.new(0, 0, 0, 390)
	TextLabel_15.Size = UDim2.new(0.5, 0, 0, 20)
	TextLabel_15.Font = Enum.Font.SourceSansBold
	TextLabel_15.Text = "Mob CHAMS"
	TextLabel_15.TextColor3 = Color3.new(1, 1, 1)
	TextLabel_15.TextSize = 16
	TextLabel_15.TextTransparency = 0.5
	
	SaveSettings.Name = "SaveSettings"
	SaveSettings.Parent = buttons_3
	SaveSettings.BackgroundColor3 = Color3.new(0.972549, 0.972549, 0.972549)
	SaveSettings.BackgroundTransparency = 0.5
	SaveSettings.BorderSizePixel = 0
	SaveSettings.Position = UDim2.new(0, 0, 0, 420)
	SaveSettings.Size = UDim2.new(1, -15, 0, 20)
	SaveSettings.Font = Enum.Font.SourceSansBold
	SaveSettings.Text = "Save Settings"
	SaveSettings.TextSize = 14
	SaveSettings.TextWrapped = true

	function CreatePlayerLabel(Str, frame)
		local n = #frame:GetChildren()
		local playername = Instance.new("TextLabel")
		playername.Name = Str
		playername.Parent = frame
		playername.BackgroundColor3 = Color3.new(1, 1, 1)
		playername.BackgroundTransparency = 1
		playername.BorderSizePixel = 0
		playername.Position = UDim2.new(0, 5, 0, (n * 15))
		playername.Size = UDim2.new(1, -25, 0, 15)
		playername.Font = Enum.Font.SourceSans
		playername.Text = Str
		playername.TextColor3 = Color3.new(1, 1, 1)
		playername.TextSize = 16
		playername.TextXAlignment = Enum.TextXAlignment.Left
	end

	function RefreshPlayerLabels(frame, t)
		frame:ClearAllChildren()
		for i, v in next, t do
			CreatePlayerLabel(i, frame)
		end
	end

	RefreshPlayerLabels(players, Bullshit.Blacklist)
	RefreshPlayerLabels(players2, Bullshit.FriendList)
	
	ESPToggle.MouseButton1Click:connect(function()
		Bullshit.ESPEnabled = not Bullshit.ESPEnabled
		if Bullshit.ESPEnabled then
			ESPToggle.BackgroundColor3 = Color3.new(0/255,171/255,11/255)
			for _, v in next, Plrs:GetPlayers() do
				if v ~= MyPlr then
					if Bullshit.CharAddedEvent[v.Name] == nil then
						Bullshit.CharAddedEvent[v.Name] = v.CharacterAdded:connect(function(Char)
							if Bullshit.ESPEnabled then
								RemoveESP(v)
								CreateESP(v)
							end
							if Bullshit.CHAMSEnabled then
								RemoveChams(v)
								CreateChams(v)
							end
							if Bullshit.TracersEnabled then
								RemoveTracers(v)
								CreateTracers(v)
							end
							repeat wait() until Char:FindFirstChild("HumanoidRootPart")
							TracerMT[v.Name] = Char.HumanoidRootPart
						end)
					end
					RemoveESP(v)
					CreateESP(v)
				end
			end
			CreateMobESPChams()
		else
			ESPToggle.BackgroundColor3 = Color3.new(1, 1, 1)
			PlayerESP:ClearAllChildren()
			ItemESP:ClearAllChildren()
		end
	end)
	
	ChamsToggle.MouseButton1Click:connect(function()
		Bullshit.CHAMSEnabled = not Bullshit.CHAMSEnabled
		if Bullshit.CHAMSEnabled then
			ChamsToggle.BackgroundColor3 = Color3.new(0/255,171/255,11/255)
			for _, v in next, Plrs:GetPlayers() do
				if v ~= MyPlr then
					if Bullshit.CharAddedEvent[v.Name] == nil then
						Bullshit.CharAddedEvent[v.Name] = v.CharacterAdded:connect(function(Char)
							if Bullshit.ESPEnabled then
								RemoveESP(v)
								CreateESP(v)
							end
							if Bullshit.CHAMSEnabled then
								RemoveChams(v)
								CreateChams(v)
							end
							if Bullshit.TracersEnabled then
								RemoveTracers(v)
								CreateTracers(v)
							end
							repeat wait() until Char:FindFirstChild("HumanoidRootPart")
							TracerMT[v.Name] = Char.HumanoidRootPart
						end)
					end
					RemoveChams(v)
					CreateChams(v)
				end
			end
			CreateMobESPChams()
		else
			ChamsToggle.BackgroundColor3 = Color3.new(1, 1, 1)
			PlayerChams:ClearAllChildren()
			ItemChams:ClearAllChildren()
		end
	end)
	
	TracersToggle.MouseButton1Click:connect(function()
		Bullshit.TracersEnabled = not Bullshit.TracersEnabled
		if Bullshit.TracersEnabled then
			TracersToggle.BackgroundColor3 = Color3.new(0/255,171/255,11/255)
			for _, v in next, Plrs:GetPlayers() do
				if v ~= MyPlr then
					if Bullshit.CharAddedEvent[v.Name] == nil then
						Bullshit.CharAddedEvent[v.Name] = v.CharacterAdded:connect(function(Char)
							if Bullshit.ESPEnabled then
								RemoveESP(v)
								CreateESP(v)
							end
							if Bullshit.CHAMSEnabled then
								RemoveChams(v)
								CreateChams(v)
							end
							if Bullshit.TracersEnabled then
								RemoveTracers(v)
								CreateTracers(v)
							end
						end)
					end
					if v.Character ~= nil then
						local Tor = v.Character:FindFirstChild("HumanoidRootPart")
						if Tor then
							TracerMT[v.Name] = Tor
						end
					end
					RemoveTracers(v)
					CreateTracers(v)
				end
			end
		else
			TracersToggle.BackgroundColor3 = Color3.new(1, 1, 1)
			for _, v in next, Plrs:GetPlayers() do
				RemoveTracers(v)
			end
		end
	end)

	DebugToggle.MouseButton1Click:connect(function()
		Bullshit.DebugInfo = not Bullshit.DebugInfo
		DebugMenu["Main"].Visible = Bullshit.DebugInfo
		if Bullshit.DebugInfo then
			DebugToggle.BackgroundColor3 = Color3.new(0/255,171/255,11/255)
		else
			DebugToggle.BackgroundColor3 = Color3.new(1, 1, 1)
		end
	end)

	OutlineToggle.MouseButton1Click:connect(function()
		Bullshit.OutlinesEnabled = not Bullshit.OutlinesEnabled
		if Bullshit.OutlinesEnabled then
			OutlineToggle.BackgroundColor3 = Color3.new(0/255,171/255,11/255)
			for _, v in next, workspace:GetDescendants() do
				if v:IsA("BasePart") and not Plrs:GetPlayerFromCharacter(v.Parent) and not v.Parent:IsA("Hat") and not v.Parent:IsA("Accessory") and v.Parent.Name ~= "Tracers" then
					local Data = { }
					Data[2] = v.Transparency
					v.Transparency = 1
					local outline = Instance.new("SelectionBox")
					outline.Name = "Outline"
					outline.Color3 = Color3.new(0, 0, 0)
					outline.SurfaceColor3 = Color3.new(0, 1, 0)
					--outline.SurfaceTransparency = 0.9
					outline.LineThickness = 0.01
					outline.Transparency = 0.3
					outline.Adornee = v
					outline.Parent = v
					Data[1] = outline
					rawset(Bullshit.OutlinedParts, v, Data)
				end
				CreateChildAddedEventFor(v)
			end
			CreateChildAddedEventFor(workspace)
			if Bullshit.LightingEvent == nil then
				Bullshit.LightingEvent = game:GetService("Lighting").Changed:connect(LightingHax)
			end
		else
			OutlineToggle.BackgroundColor3 = Color3.new(1, 1, 1)
			for i, v in next, Bullshit.OutlinedParts do
				i.Transparency = v[2]
				v[1]:Destroy()
			end
		end
	end)

	FullbrightToggle.MouseButton1Click:connect(function()
		Bullshit.FullbrightEnabled = not Bullshit.FullbrightEnabled
		if Bullshit.FullbrightEnabled then
			FullbrightToggle.BackgroundColor3 = Color3.new(0/255,171/255,11/255)
			if Bullshit.LightingEvent == nil then
				Bullshit.LightingEvent = Light.Changed:connect(LightingHax)
			end
		else
			FullbrightToggle.BackgroundColor3 = Color3.new(1, 1, 1)
			Light.Ambient = Bullshit.AmbientBackup
			Light.ColorShift_Bottom = Bullshit.ColorShiftBotBackup
			Light.ColorShift_Top = Bullshit.ColorShiftTopBackup
		end
	end)

	Crosshair.MouseButton1Click:connect(function()
		Bullshit.CrosshairEnabled = not Bullshit.CrosshairEnabled
		if Bullshit.CrosshairEnabled then
			local g = Instance.new("ScreenGui", CoreGui)
			g.Name = "Corsshair"
			local line1 = Instance.new("TextLabel", g)
			line1.Text = ""
			line1.Size = UDim2.new(0, 35, 0, 1)
			line1.BackgroundColor3 = Bullshit.Colors.Crosshair
			line1.BorderSizePixel = 0
			line1.ZIndex = 10
			local line2 = Instance.new("TextLabel", g)
			line2.Text = ""
			line2.Size = UDim2.new(0, 1, 0, 35)
			line2.BackgroundColor3 = Bullshit.Colors.Crosshair
			line2.BorderSizePixel = 0
			line2.ZIndex = 10

            local viewport = MyCam.ViewportSize
            local centerx = viewport.X / 2
            local centery = viewport.Y / 2

            line1.Position = UDim2.new(0, centerx - (35 / 2), 0, centery - 35)
            line2.Position = UDim2.new(0, centerx, 0, centery - (35 / 2) - 35)

			Crosshair.BackgroundColor3 = Color3.new(0/255,171/255,11/255)
		else
			local find = CoreGui:FindFirstChild("Corsshair")
			if find then
				find:Destroy()
			end

			Crosshairs.BackgroundColor3 = Color3.new(1, 1, 1)
		end
	end)

	AimbotToggle.MouseButton1Click:connect(function()
		if not (game.PlaceId == 292439477 or game.PlaceId == 606849621) then
			Bullshit.AimbotEnabled = not Bullshit.AimbotEnabled
			if Bullshit.AimbotEnabled then
				AimbotToggle.BackgroundColor3 = Color3.new(0/255,171/255,11/255)
			else
				AimbotToggle.BackgroundColor3 = Color3.new(1, 1, 1)
			end
		else
			local hint = Instance.new("Hint", CoreGui)
			hint.Text = "This game prevents camera manipulation!"
			wait(5)
			hint:Destroy()
		end
	end)

	TracersUnderChars.MouseButton1Click:connect(function()
		Bullshit.PlaceTracersUnderCharacter = not Bullshit.PlaceTracersUnderCharacter
		if Bullshit.PlaceTracersUnderCharacter then
			TracersUnderChars.Text = "true"
		else
			TracersUnderChars.Text = "false"
		end
	end)

	FreeForAll.MouseButton1Click:connect(function()
		Bullshit.FreeForAll = not Bullshit.FreeForAll
		if Bullshit.FreeForAll then
			FreeForAll.Text = "true"
		else
			FreeForAll.Text = "false"
		end
	end)

	ESPLength.FocusLost:connect(function()
		local txt = ESPLength.Text
		local num = tonumber(txt) or 10000
		if num ~= nil then
			if num < 100 then
				num = 100
				ESPLength.Text = num
			elseif num > 10000 then
				num = 10000
				ESPLength.Text = num
			end
		end

		Bullshit.ESPLength = num
		ESPLength.Text = num
	end)

	CHAMSLength.FocusLost:connect(function()
		local txt = CHAMSLength.Text
		local num = tonumber(txt) or 500
		if num ~= nil then
			if num < 100 then
				num = 100
				CHAMSLength.Text = num
			elseif num > 2048 then
				num = 2048
				CHAMSLength.Text = num
			end
		end

		Bullshit.CHAMSLength = num
		CHAMSLength.Text = num
	end)

	TracersLength.FocusLost:connect(function()
		local txt = TracersLength.Text
		local num = tonumber(txt) or 500
		if num ~= nil then
			if num < 100 then
				num = 100
				TracersLength.Text = num
			elseif num > 2048 then
				num = 2048
				TracersLength.Text = num
			end
		end

		Bullshit.TracersLength = num
		TracersLength.Text = num
	end)

	EnemyColor.FocusLost:connect(function()
		local R, G, B = string.match(RemoveSpacesFromString(EnemyColor.Text), "(%d+),(%d+),(%d+)")
		R = tonumber(R)
		G = tonumber(G)
		B = tonumber(B)
		if R > 1 then
			R = R / 255
		end
		if G > 1 then
			G = G / 255
		end
		if B > 1 then
			B = B / 255
		end

		if R ~= nil and G ~= nil and B ~= nil then
			if not (R > 1 and G > 1 and B > 1) and not (R < 0 and G < 0 and B < 0) then
				Bullshit.Colors.Enemy = Color3.new(R, G, B)
				EnemyColor.Text = tostring(Bullshit.Colors.Enemy)
			else
				EnemyColor.Text = tostring(Bullshit.Colors.Enemy)
			end
		else
			EnemyColor.Text = tostring(Bullshit.Colors.Enemy)
		end
	end)

	AllyColor.FocusLost:connect(function()
		local R, G, B = string.match(RemoveSpacesFromString(AllyColor.Text), "(%d+),(%d+),(%d+)")
		R = tonumber(R)
		G = tonumber(G)
		B = tonumber(B)
		if R > 1 then
			R = R / 255
		end
		if G > 1 then
			G = G / 255
		end
		if B > 1 then
			B = B / 255
		end

		if R ~= nil and G ~= nil and B ~= nil then
			if not (R > 1 and G > 1 and B > 1) and not (R < 0 and G < 0 and B < 0) then
				Bullshit.Colors.Ally = Color3.new(R, G, B)
				AllyColor.Text = tostring(Bullshit.Colors.Ally)
			else
				AllyColor.Text = tostring(Bullshit.Colors.Ally)
			end
		else
			AllyColor.Text = tostring(Bullshit.Colors.Ally)
		end
	end)

	FriendColor.FocusLost:connect(function()
		local R, G, B = string.match(RemoveSpacesFromString(FriendColor.Text), "(%d+),(%d+),(%d+)")
		R = tonumber(R)
		G = tonumber(G)
		B = tonumber(B)
		if R > 1 then
			R = R / 255
		end
		if G > 1 then
			G = G / 255
		end
		if B > 1 then
			B = B / 255
		end

		if R ~= nil and G ~= nil and B ~= nil then
			if not (R > 1 and G > 1 and B > 1) and not (R < 0 and G < 0 and B < 0) then
				Bullshit.Colors.Ally = Color3.new(R, G, B)
				FriendColor.Text = tostring(Bullshit.Colors.Friend)
			else
				FriendColor.Text = tostring(Bullshit.Colors.Friend)
			end
		else
			FriendColor.Text = tostring(Bullshit.Colors.Friend)
		end
	end)

	NeutralColor.FocusLost:connect(function()
		local R, G, B = string.match(RemoveSpacesFromString(NeutralColor.Text), "(%d+),(%d+),(%d+)")
		R = tonumber(R)
		G = tonumber(G)
		B = tonumber(B)
		if R > 1 then
			R = R / 255
		end
		if G > 1 then
			G = G / 255
		end
		if B > 1 then
			B = B / 255
		end

		if R ~= nil and G ~= nil and B ~= nil then
			if not (R > 1 and G > 1 and B > 1) and not (R < 0 and G < 0 and B < 0) then
				Bullshit.Colors.Ally = Color3.new(R, G, B)
				NeutralColor.Text = tostring(Bullshit.Colors.Neutral)
			else
				NeutralColor.Text = tostring(Bullshit.Colors.Neutral)
			end
		else
			NeutralColor.Text = tostring(Bullshit.Colors.Neutral)
		end
	end)

	CrosshairColor.FocusLost:connect(function()
		local R, G, B = string.match(RemoveSpacesFromString(CrosshairColor.Text), "(%d+),(%d+),(%d+)")
		R = tonumber(R)
		G = tonumber(G)
		B = tonumber(B)
		if R > 1 then
			R = R / 255
		end
		if G > 1 then
			G = G / 255
		end
		if B > 1 then
			B = B / 255
		end

		if R ~= nil and G ~= nil and B ~= nil then
			if not (R > 1 and G > 1 and B > 1) and not (R < 0 and G < 0 and B < 0) then
				Bullshit.Colors.Ally = Color3.new(R, G, B)
				EnemyColor.Text = tostring(Bullshit.Colors.Crosshair)
			else
				EnemyColor.Text = tostring(Bullshit.Colors.Crosshair)
			end
		else
			EnemyColor.Text = tostring(Bullshit.Colors.Crosshair)
		end
	end)

	AutoFireToggle.MouseButton1Click:connect(function()
		local hint = Instance.new("Hint", CoreGui)
		hint.Text = "Currently broken. :("
		wait(3)
		hint:Destroy()
		--Bullshit.AutoFire = not Bullshit.AutoFire
		--AutoFireToggle.Text = tostring(Bullshit.AutoFire)
	end)

	AimbotKey.MouseButton1Click:connect(function()
		AimbotKey.Text = "Press any Key now."
		local input = UserInput.InputBegan:wait()
		if input.UserInputType == Enum.UserInputType.Keyboard then
			Bullshit.AimbotKey = tostring(input.KeyCode)
			AimbotKey.Text = string.sub(tostring(input.KeyCode), 14)
		else
			Bullshit.AimbotKey = tostring(input.UserInputType)
			AimbotKey.Text = string.sub(tostring(input.UserInputType), 20)
		end
	end)

	MobESPButton.MouseButton1Click:connect(function()
		Bullshit.MobESP = not Bullshit.MobESP
		MobESPButton.Text = tostring(Bullshit.MobESP)
		if Bullshit.MobESP then
			local hint = Instance.new("Hint", CoreGui)
			hint.Text = "Turn ESP/Chams off and on again to see mob ESP."
			wait(5)
			hint.Text = "This is still in beta, expect problems! Message Racist Dolphin#5199 on discord if you encounter a bug!"
			wait(10)
			hint:Destroy()
		end
	end)

	MobChamsButton.MouseButton1Click:connect(function()
		Bullshit.MobChams = not Bullshit.MobChams
		MobChamsButton.Text = tostring(Bullshit.MobChams)
		if Bullshit.MobChams then
			local hint = Instance.new("Hint", CoreGui)
			hint.Text = "Turn ESP/Chams off and on again to see mob chams."
			wait(5)
			hint.Text = "This is still in beta, expect problems! Message Racist Dolphin#5199 on discord if you encounter a bug!"
			wait(10)
			hint:Destroy()
		end
	end)

	Playername.FocusLost:connect(function()
		local FindPlr = FindPlayer(Playername.Text)
		if FindPlr then
			Playername.Text = FindPlr.Name
		elseif not Bullshit.Blacklist[Playername.Text] then
			Playername.Text = "Player not Found!"
			wait(1)
			Playername.Text = "Enter Player Name"
		end
	end)

	AddToBlacklist.MouseButton1Click:connect(function()
		local FindPlr = FindPlayer(Playername.Text)
		if FindPlr then
			if not Bullshit.Blacklist[FindPlr.Name] then
				Bullshit.Blacklist[FindPlr.Name] = true
				UpdateChams(FindPlr)
				CreatePlayerLabel(FindPlr.Name, players)
			end
		end
	end)

	RemoveToBlacklist.MouseButton1Click:connect(function()
		local FindPlr = FindPlayer(Playername.Text)
		if FindPlr then
			if Bullshit.Blacklist[FindPlr.Name] then
				Bullshit.Blacklist[FindPlr.Name] = nil
				UpdateChams(FindPlr)
				RefreshPlayerLabels(players, Bullshit.Blacklist)
			end
		else
			if Bullshit.Blacklist[Playername.Text] then
				Bullshit.Blacklist[Playername.Text] = nil
				RefreshPlayerLabels(players, Bullshit.Blacklist)
			end
		end
	end)

	Playername2.FocusLost:connect(function()
		local FindPlr = FindPlayer(Playername2.Text)
		if FindPlr then
			Playername2.Text = FindPlr.Name
		elseif not Bullshit.FriendList[Playername2.Text] then
			Playername2.Text = "Player not Found!"
			wait(1)
			Playername2.Text = "Enter Player Name"
		end
	end)

	AddToWhitelist.MouseButton1Click:connect(function()
		local FindPlr = FindPlayer(Playername2.Text)
		if FindPlr then
			if not Bullshit.FriendList[FindPlr.Name] then
				Bullshit.FriendList[FindPlr.Name] = true
				UpdateChams(FindPlr)
				CreatePlayerLabel(FindPlr.Name, players2)
			end
		end
	end)

	RemoveToWhitelist.MouseButton1Click:connect(function()
		local FindPlr = FindPlayer(Playername2.Text)
		if FindPlr then
			if Bullshit.FriendList[FindPlr.Name] then
				Bullshit.FriendList[FindPlr.Name] = nil
				UpdateChams(FindPlr)
				RefreshPlayerLabels(players2, Bullshit.FriendList)
			end
		else
			if Bullshit.FriendList[Playername2.Text] then
				Bullshit.FriendList[Playername2.Text] = nil
				RefreshPlayerLabels(players2, Bullshit.FriendList)
			end
		end
	end)

	SaveWhitelist.MouseButton1Click:connect(function()
		pcall(function()
			writefile("Whitelist.txt", HTTP:JSONEncode(Bullshit.FriendList))
		end)
		SaveWhitelist.Text = "Saved!"
		wait(1)
		SaveWhitelist.Text = "Save Friends List"
	end)

	SaveBlacklist.MouseButton1Click:connect(function()
		pcall(function()
			writefile("Blacklist.txt", HTTP:JSONEncode(Bullshit.Blacklist))
		end)
		SaveBlacklist.Text = "Saved!"
		wait(1)
		SaveBlacklist.Text = "Save Blacklist"
	end)

	Settings.MouseButton1Click:connect(function()
		Settings_2.Visible = not Settings_2.Visible
		Information_2.Visible = false
		Blacklist.Visible = false
		Whitelist.Visible = false
		if Settings_2.Visible then
			Settings.BackgroundColor3 = Color3.new(0/255,171/255,11/255)
			Information.BackgroundColor3 = Color3.new(1, 1, 1)
			BlacklistToggle.BackgroundColor3 = Color3.new(1, 1, 1)
			WhitelistToggle.BackgroundColor3 = Color3.new(1, 1, 1)
		else
			Settings.BackgroundColor3 = Color3.new(1, 1, 1)
		end
	end)

	Information.MouseButton1Click:connect(function()
		Information_2.Visible = not Information_2.Visible
		Settings_2.Visible = false
		Blacklist.Visible = false
		Whitelist.Visible = false
		if Information_2.Visible then
			Information.BackgroundColor3 = Color3.new(0/255,171/255,11/255)
			Settings.BackgroundColor3 = Color3.new(1, 1, 1)
			BlacklistToggle.BackgroundColor3 = Color3.new(1, 1, 1)
			WhitelistToggle.BackgroundColor3 = Color3.new(1, 1, 1)
		else
			Information.BackgroundColor3 = Color3.new(1, 1, 1)
		end
	end)

	BlacklistToggle.MouseButton1Click:connect(function()
		Blacklist.Visible = not Blacklist.Visible
		Settings_2.Visible = false
		Information_2.Visible = false
		Whitelist.Visible = false
		if Blacklist.Visible then
			BlacklistToggle.BackgroundColor3 = Color3.new(0/255,171/255,11/255)
			Settings.BackgroundColor3 = Color3.new(1, 1, 1)
			Information.BackgroundColor3 = Color3.new(1, 1, 1)
			WhitelistToggle.BackgroundColor3 = Color3.new(1, 1, 1)
		else
			BlacklistToggle.BackgroundColor3 = Color3.new(1, 1, 1)
		end
	end)

	WhitelistToggle.MouseButton1Click:connect(function()
		Whitelist.Visible = not Whitelist.Visible
		Settings_2.Visible = false
		Information_2.Visible = false
		Blacklist.Visible = false
		if Whitelist.Visible then
			WhitelistToggle.BackgroundColor3 = Color3.new(0/255,171/255,11/255)
			Settings.BackgroundColor3 = Color3.new(1, 1, 1)
			Information.BackgroundColor3 = Color3.new(1, 1, 1)
			BlacklistToggle.BackgroundColor3 = Color3.new(1, 1, 1)
		else
			WhitelistToggle.BackgroundColor3 = Color3.new(1, 1, 1)
		end
	end)

	SaveSettings.MouseButton1Click:connect(function()
		SaveBullshitSettings()
		SaveSettings.Text = "Saved!"
		wait(1)
		SaveSettings.Text = "Save Settings"
	end)

	UserInput.InputBegan:connect(function(input, ingui)
		if not ingui then
			if input.UserInputType == Enum.UserInputType.Keyboard then
				if input.KeyCode == Enum.KeyCode.P then
					MainFrame.Visible = not MainFrame.Visible
				end
			end

			if tostring(input.KeyCode) == Bullshit.AimbotKey or tostring(input.UserInputType) == Bullshit.AimbotKey then
				Bullshit.Aimbot = true
			end
		end
	end)

	UserInput.InputEnded:connect(function(input)
		if tostring(input.KeyCode) == Bullshit.AimbotKey or tostring(input.UserInputType) == Bullshit.AimbotKey then
			Bullshit.Aimbot = false
		end
	end)
end

InitMain()

Run:BindToRenderStep("UpdateESP", Enum.RenderPriority.Character.Value, function()
	for _, v in next, Plrs:GetPlayers() do
		if v ~= MyPlr then
			UpdateESP(v)
		end
	end
end)

Run:BindToRenderStep("UpdateInfo", 1000, function()
	Bullshit.ClosestEnemy = GetClosestPlayer()
	MyChar = MyPlr.Character
	if Bullshit.DebugInfo then
		local MyHead, MyTor, MyHum = MyChar:FindFirstChild("Head"), MyChar:FindFirstChild("HumanoidRootPart"), MyChar:FindFirstChild("Humanoid")

		local GetChar, GetHead, GetTor, GetHum = nil, nil, nil, nil
		if Bullshit.ClosestEnemy ~= nil then
			GetChar = Bullshit.ClosestEnemy.Character
			GetHead = GetChar:FindFirstChild("Head")
			GetTor = GetChar:FindFirstChild("HumanoidRootPart")
			GetHum = GetChar:FindFirstChild("Humanoid")

			DebugMenu["PlayerSelected"].Text = "Closest Enemy: " .. tostring(Bullshit.ClosestEnemy)

			if Bullshit.ClosestEnemy.Team ~= nil then
				DebugMenu["PlayerTeam"].Text = "Team: " .. tostring(Bullshit.ClosestEnemy.Team)
			else
				DebugMenu["PlayerTeam"].Text = "Team: nil"
			end

			if GetHum then
				DebugMenu["PlayerHealth"].Text = "Health: " .. string.format("%.0f", GetHum.Health)
			end
			if MyTor and GetTor then
				local Pos = GetTor.Position
				local Dist = (MyTor.Position - Pos).magnitude
				DebugMenu["PlayerPosition"].Text = "Position: (X: " .. string.format("%.3f", Pos.X) .. " Y: " .. string.format("%.3f", Pos.Y) .. " Z: " .. string.format("%.3f", Pos.Z) .. ") Distance: " .. string.format("%.0f", Dist) .. " Studs"

				local MyCharStuff = MyChar:GetDescendants()
				local GetCharStuff = GetChar:GetDescendants()
				for _, v in next, GetCharStuff do
					if v ~= GetTor then
						table.insert(MyCharStuff, v)
					end
				end
				local Ray = Ray.new(MyTor.Position, (Pos - MyTor.Position).unit * 300)
				local part = workspace:FindPartOnRayWithIgnoreList(Ray, MyCharStuff)
				if part == GetTor then
					DebugMenu["BehindWall"].Text = "Behind Wall: false"
				else
					DebugMenu["BehindWall"].Text = "Behind Wall: true"
				end

				DebugMenu["Main"].Size = UDim2.new(0, DebugMenu["PlayerPosition"].TextBounds.X, 0, 200)
			end
		end

		-- My Position
		if MyTor then
			local Pos = MyTor.Position
			DebugMenu["Position"].Text = "My Position: (X: " .. string.format("%.3f", Pos.x) .. " Y: " .. string.format("%.3f", Pos.Y) .. " Z: " .. string.format("%.3f", Pos.Z) .. ")"
		end

		-- FPS
		local fps = math.floor(.5 + (1 / (tick() - LastTick)))
		local sum = 0
		local ave = 0
		table.insert(Bullshit.FPSAverage, fps)
		for i = 1, #Bullshit.FPSAverage do
			sum = sum + Bullshit.FPSAverage[i]
		end
		DebugMenu["FPS"].Text = "FPS: " .. tostring(fps) .. " Average: " .. string.format("%.0f", (sum / #Bullshit.FPSAverage))
		if (tick() - LastTick) >= 15 then
			Bullshit.FPSAverage = { }
			LastTick = tick()
		end
		LastTick = tick()
	end
end)

Run:BindToRenderStep("Aimbot", Enum.RenderPriority.First.Value, function()
	ClosestEnemy = GetClosestPlayerNotBehindWall()
	if Bullshit.AimbotEnabled and Bullshit.Aimbot then
		if ClosestEnemy ~= nil then
			local GetChar = ClosestEnemy.Character
			if MyChar and GetChar then
				local MyCharStuff = MyChar:GetDescendants()
				local MyHead = MyChar:FindFirstChild("Head")
				local MyTor = MyChar:FindFirstChild("HumanoidRootPart")
				local MyHum = MyChar:FindFirstChild("Humanoid")
				local GetHead = GetChar:FindFirstChild("Head")
				local GetTor = GetChar:FindFirstChild("HumanoidRootPart")
				local GetHum = GetChar:FindFirstChild("Humanoid")
				if MyHead and MyTor and MyHum and GetHead and GetTor and GetHum then
					if MyHum.Health > 1 and (GetHum.Health > 1 and not GetChar:FindFirstChild("KO")) then
						MyPlr.CameraMode = Enum.CameraMode.LockFirstPerson
						MyCam.CFrame = CFrame.new(MyHead.CFrame.p, GetHead.CFrame.p)
						if Bullshit.AutoFire then
							mouse1click() -- >:(
						end
					end
				end
			end
		end
	else
		MyPlr.CameraMode = Bullshit.CameraModeBackup
	end
end)

local succ, out = coroutine.resume(coroutine.create(function()
	while true do
		for _, v in next, Plrs:GetPlayers() do
			UpdateChams(v)
			Run.RenderStepped:wait()
		end
	end
end))

if not succ then
	error(out)
end