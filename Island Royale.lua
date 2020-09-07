-- https://discord.gg/Hr4XUzC
-- ^ All updates will go there ^

--[[
	Blacklist feature:
	Just released, you may or may not encounter problems.

	Full player name is NOT requried.
	Saving blacklist table to a .txt file REQURIES SYNAPSE!
]]

--[[
	Aimbot:
	Enable, hold Right Click to auto lock. It'll only focus enemies. (Anyone marked in red)
	P.S If your bullets miss: blame the autisitc developers, who think bullets go left/right of the barrel when fired.
]]

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
	ESPLength = 2048,
	CHAMSLength = 500,
	PlaceTracersUnderCharacter = false, -- Change to true if you want tracers to be placed under your character instead of at the bottom of your camera.
	FreeForAll = false, -- use for games that don't have teams (Apocalypse Rising)
	Colors = {
		Enemy = Color3.new(1, 0, 0),
		Ally = Color3.new(0, 1, 0),
		Friend = Color3.new(1, 1, 0),
		Neutral = Color3.new(1, 1, 1), -- Jailbreak only.
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
	CameraModeBackup = MyPlr.CameraMode,
	BlacklistSettings = {
		RemovePlayerFromBlacklistAponLeavingGame_JesusFuckingChristThisIsABigAssVariable = false,
		SaveBlacklist = true, -- Saves blacklist to a file. Synapse ONLY
	},
	GameSpecificCrap = { },
}

-- Load blacklist file if it exists
fuck = pcall(function()
	Bullshit.Blacklist = HTTP:JSONDecode(Synapse:ReadFile("Blacklist.txt"))
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

function GetTeamColor(Plr)
	local PickedColor = Bullshit.Colors.Enemy
	
	if Plr ~= nil then
		if game.PlaceId == 606849621 then
			if Bullshit.Colors.ColorOverride == nil then
				if not Bullshit.FreeForAll then
					if MyPlr.Team ~= nil and Plr.Team ~= nil then
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
					end
				else
					if MyPlr:IsFriendsWith(Plr.userId) then
						PickedColor = Bullshit.Colors.Friend
					else
						PickedColor = Bullshit.Colors.Enemy
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
		elseif game.PlaceId == 142823291 then
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
		else
			if Bullshit.Colors.ColorOverride == nil then
				if not Bullshit.FreeForAll then
					if MyPlr.Team ~= Plr.Team and not MyPlr:IsFriendsWith(Plr.userId) then
						PickedColor = Bullshit.Colors.Enemy
					elseif MyPlr.Team == Plr.Team and not MyPlr:IsFriendsWith(Plr.userId) then
						PickedColor = Bullshit.Colors.Ally
					else
						PickedColor = Bullshit.Colors.Friend
					end
				else
					if MyPlr:IsFriendsWith(Plr.userId) then
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
		if v ~= MyPlr then
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
								local part = workspace:FindPartOnRayWithIgnoreList(Ray, MyChar:GetDescendants())
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
								local part = workspace:FindPartOnRayWithIgnoreList(Ray, MyChar:GetDescendants())
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
	local Find = CoreGui:FindFirstChild("ESP Crap_" .. Plr.Name)
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

function RemoveESP(Plr)
	local ESP = CoreGui:FindFirstChild("ESP Crap_" .. Plr.Name)
	if ESP then
		ESP:Destroy()
	end
end

function CreateESP(Plr)
	if Plr ~= nil then
		local GetChar = Plr.Character
		if not GetChar then return end
		local GetHead do
			repeat wait() until GetChar:FindFirstChild("Head")
		end
		GetHead = GetChar.Head
		
		local bb = Instance.new("BillboardGui", CoreGui)
		bb.Adornee = GetHead
		bb.ExtentsOffset = Vector3.new(0, 1, 0)
		bb.AlwaysOnTop = true
		bb.Size = UDim2.new(0, 5, 0, 5)
		bb.StudsOffset = Vector3.new(0, 3, 0)
		bb.Name = "ESP Crap_" .. Plr.Name
		
		local frame = Instance.new("Frame", bb)
		frame.ZIndex = 10
		frame.BackgroundTransparency = 1
		frame.Size = UDim2.new(1, 0, 1, 0)
		
		local TxtName = Instance.new("TextLabel", frame)
		TxtName.Name = "Names"
		TxtName.ZIndex = 10
		TxtName.Text = Plr.Name
		TxtName.BackgroundTransparency = 1
		TxtName.Position = UDim2.new(0, 0, 0, -45)
		TxtName.Size = UDim2.new(1, 0, 10, 0)
		TxtName.Font = "SourceSansBold"
		TxtName.TextSize = 13
		TxtName.TextStrokeTransparency = 0.5
		
		local TxtDist = Instance.new("TextLabel", frame)
		TxtDist.Name = "Dist"
		TxtDist.ZIndex = 10
		TxtDist.Text = ""
		TxtDist.BackgroundTransparency = 1
		TxtDist.Position = UDim2.new(0, 0, 0, -35)
		TxtDist.Size = UDim2.new(1, 0, 10, 0)
		TxtDist.Font = "SourceSansBold"
		TxtDist.TextSize = 13
		TxtDist.TextStrokeTransparency = 0.5

		local TxtHealth = Instance.new("TextLabel", frame)
		TxtHealth.Name = "Health"
		TxtHealth.ZIndex = 10
		TxtHealth.Text = ""
		TxtHealth.BackgroundTransparency = 1
		TxtHealth.Position = UDim2.new(0, 0, 0, -25)
		TxtHealth.Size = UDim2.new(1, 0, 10, 0)
		TxtHealth.Font = "SourceSansBold"
		TxtHealth.TextSize = 13
		TxtHealth.TextStrokeTransparency = 0.5

		--[[local TxtPos = Instance.new("TextLabel", frame)
		TxtPos.Name = "Pos"
		TxtPos.ZIndex = 10
		TxtPos.Text = ""
		TxtPos.BackgroundTransparency = 1
		TxtPos.Position = UDim2.new(0, 0, 0, 100)
		TxtPos.Size = UDim2.new(1, 0, 10, 0)
		TxtPos.Font = "SourceSansBold"
		TxtPos.TextSize = 13
		TxtPos.TextStrokeTransparency = 0.5]]
		
		local PickColor = GetTeamColor(Plr)
		TxtName.TextColor3 = PickColor
		TxtDist.TextColor3 = PickColor
		TxtHealth.TextColor3 = PickColor
		--TxtPos.TextColor3 = PickColor
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
		B.Color3 = GetTeamColor(Plr)
		P.Parent = Tracers

		coroutine.resume(coroutine.create(function()
			while Tracers:FindFirstChild(Plr.Name) do
				UpdateTracer(Plr)
				Run.RenderStepped:wait()
			end
		end))
	end
end

function UpdateChams(Plr)
	local Find = ChamsFolder:FindFirstChild(Plr.Name)
	local GetChar = Plr.Character

	local Trans = 0
	if GetChar and MyChar then
		local GetHead = GetChar:FindFirstChild("Head")
		local GetTor = GetChar:FindFirstChild("HumanoidRootPart")
		local MyHead = MyChar:FindFirstChild("Head")
		local MyTor = MyChar:FindFirstChild("HumanoidRootPart")
		if GetHead and GetTor and MyHead and MyTor then
			if (MyTor.Position - GetTor.Position).magnitude > Bullshit.CHAMSLength or Bullshit.Blacklist[Plr.Name] then
				Trans = 1
			else
				local MyCharStuff = MyChar:GetDescendants()
				local Ray = Ray.new(MyCam.CFrame.p, (GetTor.Position - MyCam.CFrame.p).unit * 2048)
				local part = workspace:FindPartOnRayWithIgnoreList(Ray, MyCharStuff)
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
			v.Color3 = GetTeamColor(Plr)
			v.Transparency = Trans
		end
	end
end

function RemoveChams(Plr)
	local Cham = ChamsFolder:FindFirstChild(Plr.Name)
	if Cham then
		Cham:Destroy()
	end
end

function CreateChams(Plr)
	if Plr ~= nil then
		local GetChar = Plr.Character
		if not GetChar then return end
		local GetTor do
			repeat wait() until GetChar:FindFirstChild("HumanoidRootPart")
		end
		GetTor = GetChar.HumanoidRootPart
		
		local GetHum do
			repeat wait() until GetChar:FindFirstChild("Humanoid")
		end
		GetHum = GetChar.Humanoid
		
		local PlrCham = ChamsFolder:FindFirstChild(Plr.Name)
		if not PlrCham then
			PlrCham = Instance.new("Folder", ChamsFolder)
			PlrCham.Name = Plr.Name
		end
			
		for _, P in next, GetChar:GetChildren() do
			if P:IsA("PVInstance") then
				local Box = Instance.new("BoxHandleAdornment")
				Box.Size = GetSizeOfObject(P)
				Box.Name = "Cham"
				Box.Adornee = P
				Box.AlwaysOnTop = true
				Box.ZIndex = 5
				Box.Transparency = 0
				Box.Color3 = GetTeamColor(Plr)
				Box.Parent = PlrCham
			end
		end
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

	if Bullshit.BlacklistSettings.RemovePlayerFromBlacklistAponLeavingGame_JesusFuckingChristThisIsABigAssVariable then
		if Bullshit.Blacklist[Plr.Name] then
			Bullshit.Blacklist[Plr.Name] = nil
		end
	end
end)

function CreateGUI()
	-- Objects

	local SC = Instance.new("ScreenGui")
	local Background = Instance.new("Frame")
	local Blacklist = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local BlacklistList = Instance.new("ScrollingFrame")
	--local playername = Instance.new("TextLabel")
	local PlayerBox = Instance.new("TextBox")
	local BlacklistButton = Instance.new("TextButton")
	local ESPToggle = Instance.new("TextButton")
	local Title_2 = Instance.new("TextLabel")
	local ChamsToggle = Instance.new("TextButton")
	local TracersToggle = Instance.new("TextButton")
	local OutlineToggle = Instance.new("TextButton")
	local FullbrightToggle = Instance.new("TextButton")
	local DebugToggle = Instance.new("TextButton")
	local TracerPosition = Instance.new("TextButton")
	local ToggleFreeForAll = Instance.new("TextButton")
	local Crosshairs = Instance.new("TextButton")
	local BlacklistToggle = Instance.new("TextButton")
	local AimbotToggle = Instance.new("TextButton")
	local Frame = Instance.new("Frame")

	-- Properties

	SC.Name = "Bullshit"
	SC.Parent = CoreGui

	Background.Name = "Background"
	Background.Parent = SC
	Background.Active = true
	Background.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
	Background.BackgroundTransparency = 0.5
	Background.BorderSizePixel = 0
	Background.Draggable = true
	Background.Position = UDim2.new(0, 100, 0.100000001, 0)
	Background.Size = UDim2.new(0, 250, 0, 210)

	Blacklist.Name = "Blacklist"
	Blacklist.Visible = false
	Blacklist.Parent = Background
	Blacklist.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
	Blacklist.BackgroundTransparency = 0.5
	Blacklist.BorderSizePixel = 0
	Blacklist.Position = UDim2.new(0, 255, 0, 0)
	Blacklist.Size = UDim2.new(0, 250, 0, 180)

	Title.Name = "Title"
	Title.Parent = Blacklist
	Title.BackgroundColor3 = Color3.new(1, 1, 1)
	Title.BackgroundTransparency = 1
	Title.BorderSizePixel = 0
	Title.Size = UDim2.new(1, 0, 0, 25)
	Title.Font = Enum.Font.SourceSansBold
	Title.Text = "Blacklist"
	Title.TextColor3 = Color3.new(1, 1, 1)
	Title.TextSize = 18
	Title.TextTransparency = 0.25

	BlacklistList.Name = "BlacklistList"
	BlacklistList.Parent = Blacklist
	BlacklistList.BackgroundColor3 = Color3.new(1, 1, 1)
	BlacklistList.BackgroundTransparency = 1
	BlacklistList.BorderSizePixel = 0
	BlacklistList.Position = UDim2.new(0, 0, 0, 30)
	BlacklistList.Size = UDim2.new(1, 0, 0, 75)

	--[[playername.Name = "playername"
	playername.Parent = BlacklistList
	playername.BackgroundColor3 = Color3.new(1, 1, 1)
	playername.BackgroundTransparency = 1
	playername.BorderSizePixel = 0
	playername.Position = UDim2.new(0, 5, 0, 0)
	playername.Size = UDim2.new(1, -25, 0, 15)
	playername.Font = Enum.Font.SourceSans
	playername.Text = "DangCoolIsReal3"
	playername.TextColor3 = Color3.new(1, 1, 1)
	playername.TextSize = 16
	playername.TextXAlignment = Enum.TextXAlignment.Left]]

	PlayerBox.Name = "PlayerBox"
	PlayerBox.Parent = Blacklist
	PlayerBox.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
	PlayerBox.BackgroundTransparency = 0.5
	PlayerBox.BorderSizePixel = 0
	PlayerBox.Position = UDim2.new(0, 5, 0, 110)
	PlayerBox.Size = UDim2.new(1, -10, 0, 25)
	PlayerBox.Font = Enum.Font.SourceSansBold
	PlayerBox.Text = "Enter Player Name"
	PlayerBox.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	PlayerBox.TextSize = 16

	BlacklistButton.Name = "BlacklistButton"
	BlacklistButton.Parent = Blacklist
	BlacklistButton.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
	BlacklistButton.BackgroundTransparency = 0.5
	BlacklistButton.BorderSizePixel = 0
	BlacklistButton.Position = UDim2.new(0, 5, 0, 140)
	BlacklistButton.Size = UDim2.new(1, -10, 0, 25)
	BlacklistButton.Font = Enum.Font.SourceSansBold
	BlacklistButton.Text = "Add / Remove From Blacklist"
	BlacklistButton.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	BlacklistButton.TextSize = 16

	ESPToggle.Name = "ESPToggle"
	ESPToggle.Parent = Background
	ESPToggle.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
	ESPToggle.BackgroundTransparency = 0.5
	ESPToggle.BorderSizePixel = 0
	ESPToggle.Position = UDim2.new(0, 5, 0, 30)
	ESPToggle.Size = UDim2.new(0.5, -10, 0, 25)
	ESPToggle.Font = Enum.Font.SourceSansBold
	ESPToggle.Text = "ESP"
	ESPToggle.TextColor3 = Color3.new(0.815686, 0.815686, 0.815686)
	ESPToggle.TextSize = 16

	Title_2.Name = "Title"
	Title_2.Parent = Background
	Title_2.BackgroundColor3 = Color3.new(1, 1, 1)
	Title_2.BackgroundTransparency = 1
	Title_2.BorderSizePixel = 0
	Title_2.Size = UDim2.new(1, 0, 0, 25)
	Title_2.Font = Enum.Font.SourceSansBold
	Title_2.Text = "Made by @Racist Dolphin#5199"
	Title_2.TextColor3 = Color3.new(1, 1, 1)
	Title_2.TextSize = 18
	Title_2.TextTransparency = 0.25

	ChamsToggle.Name = "ChamsToggle"
	ChamsToggle.Parent = Background
	ChamsToggle.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
	ChamsToggle.BackgroundTransparency = 0.5
	ChamsToggle.BorderSizePixel = 0
	ChamsToggle.Position = UDim2.new(0.5, 5, 0, 30)
	ChamsToggle.Size = UDim2.new(0.5, -10, 0, 25)
	ChamsToggle.Font = Enum.Font.SourceSansBold
	ChamsToggle.Text = "Chams"
	ChamsToggle.TextColor3 = Color3.new(0.815686, 0.815686, 0.815686)
	ChamsToggle.TextSize = 16

	TracersToggle.Name = "TracersToggle"
	TracersToggle.Parent = Background
	TracersToggle.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
	TracersToggle.BackgroundTransparency = 0.5
	TracersToggle.BorderSizePixel = 0
	TracersToggle.Position = UDim2.new(0, 5, 0, 60)
	TracersToggle.Size = UDim2.new(0.5, -10, 0, 25)
	TracersToggle.Font = Enum.Font.SourceSansBold
	TracersToggle.Text = "Tracers"
	TracersToggle.TextColor3 = Color3.new(0.815686, 0.815686, 0.815686)
	TracersToggle.TextSize = 16

	OutlineToggle.Name = "OutlineToggle"
	OutlineToggle.Parent = Background
	OutlineToggle.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
	OutlineToggle.BackgroundTransparency = 0.5
	OutlineToggle.BorderSizePixel = 0
	OutlineToggle.Position = UDim2.new(0.5, 5, 0, 60)
	OutlineToggle.Size = UDim2.new(0.5, -10, 0, 25)
	OutlineToggle.Font = Enum.Font.SourceSansBold
	OutlineToggle.Text = "Outlines"
	OutlineToggle.TextColor3 = Color3.new(0.815686, 0.815686, 0.815686)
	OutlineToggle.TextSize = 16

	FullbrightToggle.Name = "FullbrightToggle"
	FullbrightToggle.Parent = Background
	FullbrightToggle.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
	FullbrightToggle.BackgroundTransparency = 0.5
	FullbrightToggle.BorderSizePixel = 0
	FullbrightToggle.Position = UDim2.new(0, 5, 0, 90)
	FullbrightToggle.Size = UDim2.new(0.5, -10, 0, 25)
	FullbrightToggle.Font = Enum.Font.SourceSansBold
	FullbrightToggle.Text = "Fullbright"
	FullbrightToggle.TextColor3 = Color3.new(0.815686, 0.815686, 0.815686)
	FullbrightToggle.TextSize = 16

	DebugToggle.Name = "DebugToggle"
	DebugToggle.Parent = Background
	DebugToggle.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
	DebugToggle.BackgroundTransparency = 0.5
	DebugToggle.BorderSizePixel = 0
	DebugToggle.Position = UDim2.new(0.5, 5, 0, 90)
	DebugToggle.Size = UDim2.new(0.5, -10, 0, 25)
	DebugToggle.Font = Enum.Font.SourceSansBold
	DebugToggle.Text = "Debug Info"
	DebugToggle.TextColor3 = Color3.new(0.815686, 0.815686, 0.815686)
	DebugToggle.TextSize = 16

	TracerPosition.Name = "TracerPosition"
	TracerPosition.Parent = Background
	TracerPosition.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
	TracerPosition.BackgroundTransparency = 0.5
	TracerPosition.BorderSizePixel = 0
	TracerPosition.Position = UDim2.new(0, 5, 0, 120)
	TracerPosition.Size = UDim2.new(0.5, -10, 0, 25)
	TracerPosition.Font = Enum.Font.SourceSansBold
	TracerPosition.Text = "Tracer Position"
	TracerPosition.TextColor3 = Color3.new(0.815686, 0.815686, 0.815686)
	TracerPosition.TextSize = 16

	ToggleFreeForAll.Name = "ToggleFreeForAll"
	ToggleFreeForAll.Parent = Background
	ToggleFreeForAll.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
	ToggleFreeForAll.BackgroundTransparency = 0.5
	ToggleFreeForAll.BorderSizePixel = 0
	ToggleFreeForAll.Position = UDim2.new(0.5, 5, 0, 120)
	ToggleFreeForAll.Size = UDim2.new(0.5, -10, 0, 25)
	ToggleFreeForAll.Font = Enum.Font.SourceSansBold
	ToggleFreeForAll.Text = "Free for All"
	ToggleFreeForAll.TextColor3 = Color3.new(0.815686, 0.815686, 0.815686)
	ToggleFreeForAll.TextSize = 16

	Crosshairs.Name = "Crosshairs"
	Crosshairs.Parent = Background
	Crosshairs.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
	Crosshairs.BackgroundTransparency = 0.5
	Crosshairs.BorderSizePixel = 0
	Crosshairs.Position = UDim2.new(0, 5, 0, 150)
	Crosshairs.Size = UDim2.new(0.5, -10, 0, 25)
	Crosshairs.Font = Enum.Font.SourceSansBold
	Crosshairs.Text = "Crosshair"
	Crosshairs.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	Crosshairs.TextSize = 16

	BlacklistToggle.Name = "BlacklistToggle"
	BlacklistToggle.Parent = Background
	BlacklistToggle.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
	BlacklistToggle.BackgroundTransparency = 0.5
	BlacklistToggle.BorderSizePixel = 0
	BlacklistToggle.Position = UDim2.new(0.5, 5, 0, 150)
	BlacklistToggle.Size = UDim2.new(0.5, -10, 0, 25)
	BlacklistToggle.Font = Enum.Font.SourceSansBold
	BlacklistToggle.Text = "Blacklist"
	BlacklistToggle.TextColor3 = Color3.new(0.815686, 0.815686, 0.815686)
	BlacklistToggle.TextSize = 16

	AimbotToggle.Name = "AimbotToggle"
	AimbotToggle.Parent = Background
	AimbotToggle.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
	AimbotToggle.BackgroundTransparency = 0.5
	AimbotToggle.BorderSizePixel = 0
	AimbotToggle.Position = UDim2.new(0, 5, 0, 180)
	AimbotToggle.Size = UDim2.new(0.5, -10, 0, 25)
	AimbotToggle.Font = Enum.Font.SourceSansBold
	AimbotToggle.Text = "Aimlock"
	AimbotToggle.TextColor3 = Color3.new(0.811765, 0.811765, 0.811765)
	AimbotToggle.TextSize = 16

	Frame.Parent = Background
	Frame.BackgroundColor3 = Color3.new(1, 1, 1)
	Frame.BorderSizePixel = 0
	Frame.Size = UDim2.new(0, -2, 1, 0)

	function CreatePlayerLabel(Str)
		local n = #BlacklistList:GetChildren()
		local playername = Instance.new("TextLabel")
		playername.Name = Str
		playername.Parent = BlacklistList
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

	function RefreshPlayerLabels()
		BlacklistList:ClearAllChildren()
		for i, v in next, Bullshit.Blacklist do
			CreatePlayerLabel(i)
		end
	end
	
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
		else
			ESPToggle.BackgroundColor3 = Color3.new(31/255,31/255,31/255)
			for _, v in next, Plrs:GetPlayers() do
				RemoveESP(v)
			end
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
		else
			ChamsToggle.BackgroundColor3 = Color3.new(31/255,31/255,31/255)
			CoreGui.Chams:ClearAllChildren()
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
			TracersToggle.BackgroundColor3 = Color3.new(31/255,31/255,31/255)
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
			DebugToggle.BackgroundColor3 = Color3.new(31/255,31/255,31/255)
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
			OutlineToggle.BackgroundColor3 = Color3.new(31/255,31/255,31/255)
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
			FullbrightToggle.BackgroundColor3 = Color3.new(31/255,31/255,31/255)
			Light.Ambient = Bullshit.AmbientBackup
			Light.ColorShift_Bottom = Bullshit.ColorShiftBotBackup
			Light.ColorShift_Top = Bullshit.ColorShiftTopBackup
		end
	end)

	TracerPosition.MouseButton1Click:connect(function()
		Bullshit.PlaceTracersUnderCharacter = not Bullshit.PlaceTracersUnderCharacter
		if Bullshit.PlaceTracersUnderCharacter then
			TracerPosition.BackgroundColor3 = Color3.new(0/255,171/255,11/255)
		else
			TracerPosition.BackgroundColor3 = Color3.new(31/255,31/255,31/255)
		end
	end)

	ToggleFreeForAll.MouseButton1Click:connect(function()
		if #Teams:GetChildren() > 0 then
			Bullshit.FreeForAll = not Bullshit.FreeForAll
			if Bullshit.FreeForAll then
				ToggleFreeForAll.BackgroundColor3 = Color3.new(0/255,171/255,11/255)
			else
				ToggleFreeForAll.BackgroundColor3 = Color3.new(31/255,31/255,31/255)
			end
		end
	end)

	Crosshairs.MouseButton1Click:connect(function()
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

			Crosshairs.BackgroundColor3 = Color3.new(0/255,171/255,11/255)
		else
			local find = CoreGui:FindFirstChild("Corsshair")
			if find then
				find:Destroy()
			end

			Crosshairs.BackgroundColor3 = Color3.new(31/255,31/255,31/255)
		end
	end)

	BlacklistToggle.MouseButton1Click:connect(function()
		Blacklist.Visible = not Blacklist.Visible
		if Blacklist.Visible then
			BlacklistToggle.BackgroundColor3 = Color3.new(0/255,171/255,11/255)
			RefreshPlayerLabels()
		else
			BlacklistToggle.BackgroundColor3 = Color3.new(31/255,31/255,31/255)
		end
	end)

	PlayerBox.FocusLost:connect(function()
		local FindPlr = FindPlayer(PlayerBox.Text)
		if FindPlr then
			PlayerBox.Text = FindPlr.Name
		elseif not Bullshit.Blacklist[PlayerBox.Text] then
			PlayerBox.Text = "Player not Found!"
			wait(1)
			PlayerBox.Text = "Enter Player Name"
		end
	end)

	BlacklistButton.MouseButton1Click:connect(function()
		local FindPlr = FindPlayer(PlayerBox.Text)
		if FindPlr then
			if not Bullshit.Blacklist[FindPlr.Name] then
				Bullshit.Blacklist[FindPlr.Name] = true
				UpdateChams(FindPlr)
				CreatePlayerLabel(FindPlr.Name)
			else
				Bullshit.Blacklist[FindPlr.Name] = nil
				UpdateChams(FindPlr)
				RefreshPlayerLabels()
			end
		else
			if Bullshit.Blacklist[PlayerBox.Text] then
				Bullshit.Blacklist[PlayerBox.Text] = nil
				RefreshPlayerLabels()
			end
		end

		if Bullshit.BlacklistSettings.SaveBlacklist then
			local suc = pcall(function()
				Synapse:WriteFile("Blacklist.txt", HTTP:JSONEncode(Bullshit.Blacklist))
			end)
			if not suc then
				warn("Unable to save blacklist!")
				warn("You need Synapse for this feature!")
			end
		end
	end)

	AimbotToggle.MouseButton1Click:connect(function()
		Bullshit.AimbotEnabled = not Bullshit.AimbotEnabled
		if Bullshit.AimbotEnabled then
			AimbotToggle.BackgroundColor3 = Color3.new(0/255,171/255,11/255)
		else
			AimbotToggle.BackgroundColor3 = Color3.new(31/255,31/255,31/255)
		end
	end)

	UserInput.InputBegan:connect(function(input, ingui)
		if not ingui then
			if input.UserInputType == Enum.UserInputType.Keyboard then
				if input.KeyCode == Enum.KeyCode.P then
					Background.Visible = not Background.Visible
				end
			elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
				Bullshit.Aimbot = true
			end
		end
	end)

	UserInput.InputEnded:connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton2 then
			Bullshit.Aimbot = false
		end
	end)
end

CreateGUI()

Run:BindToRenderStep("UpdateESP", Enum.RenderPriority.Character.Value, function()
	for _, v in next, Plrs:GetPlayers() do
		UpdateESP(v)
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
						--[[local Ray = Ray.new(MyHead.Position, (GetHead.Position - MyHead.Position).unit * 2048)
						local part = workspace:FindPartOnRayWithIgnoreList(Ray, MyCharStuff)
						if part:IsDescendantOf(GetChar) then]]
							MyPlr.CameraMode = Enum.CameraMode.LockFirstPerson
							MyCam.CFrame = CFrame.new(MyHead.CFrame.p, GetHead.CFrame.p)
							pcall(function()
								mouse1click()
							end)
						--end
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