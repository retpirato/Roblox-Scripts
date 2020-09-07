-- Objects

local FHH = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local title = Instance.new("TextLabel")
local main2 = Instance.new("Frame")
local handcuff = Instance.new("TextButton")
local gamepass = Instance.new("TextButton")
local inviswalls = Instance.new("TextButton")
local roomdoors = Instance.new("TextButton")
local fly = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local noclip = Instance.new("TextButton")

-- Properties

FHH.Name = "FHH"
FHH.Parent = game.CoreGui

main.Name = "main"
main.Parent = FHH
main.Active = true
main.BackgroundColor3 = Color3.new(0.666667, 0, 0)
main.BackgroundTransparency = 0.5
main.Draggable = true
main.Position = UDim2.new(0.0468846373, 0, 0.183374077, 0)
main.Size = UDim2.new(0, 297, 0, 384)

title.Name = "title"
title.Parent = main
title.BackgroundColor3 = Color3.new(1, 0, 0)
title.BackgroundTransparency = 1
title.BorderSizePixel = 0
title.Size = UDim2.new(0, 297, 0, 50)
title.Font = Enum.Font.SourceSansLight
title.FontSize = Enum.FontSize.Size14
title.Text = "Fuck Hilton Hotel"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextScaled = true
title.TextSize = 14
title.TextWrapped = true

main2.Name = "main2"
main2.Parent = main
main2.BackgroundColor3 = Color3.new(1, 0.333333, 0)
main2.BackgroundTransparency = 0.69999998807907
main2.Position = UDim2.new(0, 0, 0.130208328, 0)
main2.Size = UDim2.new(0, 297, 0, 334)

handcuff.Name = "handcuff"
handcuff.Parent = main2
handcuff.BackgroundColor3 = Color3.new(1, 1, 1)
handcuff.BackgroundTransparency = 0.5
handcuff.Size = UDim2.new(0, 297, 0, 50)
handcuff.Font = Enum.Font.SourceSansLight
handcuff.FontSize = Enum.FontSize.Size14
handcuff.Text = "Handcuff Bypass"
handcuff.TextScaled = true
handcuff.TextSize = 14
handcuff.TextWrapped = true

gamepass.Name = "gamepass"
gamepass.Parent = main2
gamepass.BackgroundColor3 = Color3.new(1, 1, 1)
gamepass.BackgroundTransparency = 0.5
gamepass.Position = UDim2.new(0, 0, 0.149700597, 0)
gamepass.Size = UDim2.new(0, 297, 0, 50)
gamepass.Font = Enum.Font.SourceSansLight
gamepass.FontSize = Enum.FontSize.Size14
gamepass.Text = "Remove Gamepass Doors"
gamepass.TextScaled = true
gamepass.TextSize = 14
gamepass.TextWrapped = true

inviswalls.Name = "inviswalls"
inviswalls.Parent = main2
inviswalls.BackgroundColor3 = Color3.new(1, 1, 1)
inviswalls.BackgroundTransparency = 0.5
inviswalls.Position = UDim2.new(0, 0, 0.299401194, 0)
inviswalls.Size = UDim2.new(0, 297, 0, 50)
inviswalls.Font = Enum.Font.SourceSansLight
inviswalls.FontSize = Enum.FontSize.Size14
inviswalls.Text = "Remove Invisible Walls"
inviswalls.TextScaled = true
inviswalls.TextSize = 14
inviswalls.TextWrapped = true

roomdoors.Name = "roomdoors"
roomdoors.Parent = main2
roomdoors.BackgroundColor3 = Color3.new(1, 1, 1)
roomdoors.BackgroundTransparency = 0.5
roomdoors.Position = UDim2.new(0, 0, 0.449101806, 0)
roomdoors.Size = UDim2.new(0, 297, 0, 50)
roomdoors.Font = Enum.Font.SourceSansLight
roomdoors.FontSize = Enum.FontSize.Size14
roomdoors.Text = "Remove all room doors."
roomdoors.TextScaled = true
roomdoors.TextSize = 14
roomdoors.TextWrapped = true

fly.Name = "fly"
fly.Parent = main2
fly.BackgroundColor3 = Color3.new(1, 1, 1)
fly.BackgroundTransparency = 0.5
fly.Position = UDim2.new(0, 0, 0.598802388, 0)
fly.Size = UDim2.new(0, 297, 0, 50)
fly.Font = Enum.Font.SourceSansLight
fly.FontSize = Enum.FontSize.Size14
fly.Text = "Fly (Toggle: E)"
fly.TextScaled = true
fly.TextSize = 14
fly.TextWrapped = true

TextLabel.Parent = main2
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0, 0, 0.901197612, 0)
TextLabel.Size = UDim2.new(0, 297, 0, 33)
TextLabel.Font = Enum.Font.SourceSansLight
TextLabel.FontSize = Enum.FontSize.Size14
TextLabel.Text = "Created by GtaMasterYT"
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

noclip.Name = "noclip"
noclip.Parent = main2
noclip.BackgroundColor3 = Color3.new(1, 1, 1)
noclip.BackgroundTransparency = 0.5
noclip.Position = UDim2.new(0, 0, 0.74850297, 0)
noclip.Size = UDim2.new(0, 297, 0, 50)
noclip.Font = Enum.Font.SourceSansLight
noclip.FontSize = Enum.FontSize.Size14
noclip.Text = "NoClip (Toggle: F)"
noclip.TextScaled = true
noclip.TextSize = 14
noclip.TextWrapped = true

handcuff.MouseButton1Down:connect(function()
	local Playr = "LocalPlayer"
	local Anchored = false

	if Anchored == true then
		local Anchored2 = false
	else
		local Anchored2 = true
	end

	game.Players[Playr].Character["Head"].Anchored = Anchored
	game.Players[Playr].Character["Torso"].Anchored = Anchored
	game.Players[Playr].Character["Right Arm"].Anchored = Anchored
	game.Players[Playr].Character["Left Arm"].Anchored = Anchored
	game.Players[Playr].Character["Right Leg"].Anchored = Anchored
	game.Players[Playr].Character["Left Leg"].Anchored = Anchored
	wait(2)
	game.Players[Playr].Character["Head"].Anchored = Anchored2
	game.Players[Playr].Character["Torso"].Anchored = Anchored2
	game.Players[Playr].Character["Right Arm"].Anchored = Anchored2
	game.Players[Playr].Character["Left Arm"].Anchored = Anchored2
	game.Players[Playr].Character["Right Leg"].Anchored = Anchored2
	game.Players[Playr].Character["Left Leg"].Anchored = Anchored2
end)

inviswalls.MouseButton1Down:connect(function()
	for i,v in pairs(game.Workspace:GetChildren()) do
		if v.Name == "GroupDoorArea" then
			v:Destroy()
		end
	end
end)
gamepass.MouseButton1Down:connect(function()
	while true do
		wait()
		game.Workspace.GamepassDoorArea:Destroy()
	end
end)
roomdoors.MouseButton1Down:connect(function()
	for i,v in pairs(game.Workspace:GetChildren()) do
		if v.Name == "SuiteRoom" or v.Name == "Room" then
			for a,b in pairs(v:GetChildren()) do
				if b.Name == "RoomDoor" then
					b:Destroy()
				end
			end
		end
	end
end)
fly.MouseButton1Down:connect(function()
repeat wait()
until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
local mouse = game.Players.LocalPlayer:GetMouse()
repeat wait() until mouse
local plr = game.Players.LocalPlayer
local torso = plr.Character.Torso
local flying = true
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 50
local speed = 0

function Fly()
local bg = Instance.new("BodyGyro", torso)
bg.P = 9e4
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
bg.cframe = torso.CFrame
local bv = Instance.new("BodyVelocity", torso)
bv.velocity = Vector3.new(0,0.1,0)
bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
repeat wait()
plr.Character.Humanoid.PlatformStand = true
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
speed = speed+.5+(speed/maxspeed)
if speed > maxspeed then
speed = maxspeed
end
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
speed = speed-1
if speed < 0 then
speed = 0
end
end
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
else
bv.velocity = Vector3.new(0,0.1,0)
end
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
until not flying
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrl = {f = 0, b = 0, l = 0, r = 0}
speed = 0
bg:Destroy()
bv:Destroy()
plr.Character.Humanoid.PlatformStand = false
end
mouse.KeyDown:connect(function(key)
if key:lower() == "e" then
if flying then flying = false
else
flying = true
Fly()
end
elseif key:lower() == "w" then
ctrl.f = 1
elseif key:lower() == "s" then
ctrl.b = -1
elseif key:lower() == "a" then
ctrl.l = -1
elseif key:lower() == "d" then
ctrl.r = 1
end
end)
mouse.KeyUp:connect(function(key)
if key:lower() == "w" then
ctrl.f = 0
elseif key:lower() == "s" then
ctrl.b = 0
elseif key:lower() == "a" then
ctrl.l = 0
elseif key:lower() == "d" then
ctrl.r = 0
end
end)
Fly()
end)

noclip.MouseButton1Down:connect(function()
	local noclip = false
	game:GetService('RunService').Stepped:connect(function()
    	if noclip then
        	game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    	end
	end)

	local plr = game.Players.LocalPlayer
	local mouse = plr:GetMouse()
	mouse.KeyDown:connect(function(key)
    	if key == 'f' then
        	noclip = not noclip
        	game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
   	end
	end)
end)