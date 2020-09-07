-- Made by iVerzide
-- Press "e" for drop your hats 
-- FE hammer works in some cafes only
 
 -- Objects

local FuckFE = Instance.new("ScreenGui")
local FuckFEMain = Instance.new("Frame")
local title = Instance.new("TextLabel")
local title2 = Instance.new("TextLabel")
local useless = Instance.new("Frame")
local FECreeperR15 = Instance.new("TextButton")
local FEShutdown = Instance.new("TextButton")
local FEDropHats = Instance.new("TextButton")
local FEFloatinghead = Instance.new("TextButton")
local credits = Instance.new("TextLabel")
local FESounds = Instance.new("TextButton")
local FEhammer = Instance.new("TextButton")
local FECreeperR6 = Instance.new("TextButton")
local CloseGUIButton = Instance.new("TextButton")
local OpenGui = Instance.new("Frame")
local OpenGUIbutton = Instance.new("TextButton")

-- Properties

FuckFE.Name = "FuckFE"
FuckFE.Parent = game.CoreGui

FuckFEMain.Name = "FuckFEMain"
FuckFEMain.Parent = FuckFE
FuckFEMain.Active = true
FuckFEMain.BackgroundColor3 = Color3.new(0, 0, 0)
FuckFEMain.BorderColor3 = Color3.new(0.666667, 0.666667, 0.666667)
FuckFEMain.BorderSizePixel = 3
FuckFEMain.Draggable = true
FuckFEMain.Position = UDim2.new(0, 256, 0, 78)
FuckFEMain.Size = UDim2.new(0, 290, 0, 364)
FuckFEMain.Style = Enum.FrameStyle.RobloxRound

title.Name = "title"
title.Parent = FuckFEMain
title.BackgroundColor3 = Color3.new(1, 1, 1)
title.BackgroundTransparency = 1
title.Position = UDim2.new(0, 32, 0, -2)
title.Size = UDim2.new(0, 200, 0, 50)
title.Font = Enum.Font.Code
title.Text = "Fuck FE"
title.TextColor3 = Color3.new(0, 0, 0)
title.TextSize = 40
title.TextWrapped = true

title2.Name = "title 2"
title2.Parent = FuckFEMain
title2.BackgroundColor3 = Color3.new(1, 1, 1)
title2.BackgroundTransparency = 1
title2.Position = UDim2.new(0, 30, 0, 0)
title2.Size = UDim2.new(0, 200, 0, 50)
title2.Font = Enum.Font.Code
title2.Text = "Fuck FE"
title2.TextColor3 = Color3.new(1, 1, 1)
title2.TextSize = 40
title2.TextWrapped = true

useless.Name = "useless"
useless.Parent = FuckFEMain
useless.BackgroundColor3 = Color3.new(1, 1, 1)
useless.Position = UDim2.new(0, 62, 0, 52)
useless.Size = UDim2.new(0, 138, 0, 2)

FECreeperR15.Name = "FE CreeperR15"
FECreeperR15.Parent = FuckFEMain
FECreeperR15.BackgroundColor3 = Color3.new(0.207843, 0.207843, 0.207843)
FECreeperR15.BorderColor3 = Color3.new(1, 1, 1)
FECreeperR15.Position = UDim2.new(0, 0, 0, 94)
FECreeperR15.Size = UDim2.new(0, 106, 0, 44)
FECreeperR15.Font = Enum.Font.SourceSans
FECreeperR15.Text = "FE Creeper R15"
FECreeperR15.TextColor3 = Color3.new(1, 1, 1)
FECreeperR15.TextSize = 14

FECreeperR15.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.Head.Mesh:Destroy()
game.Players.LocalPlayer.Character.LeftHand:Destroy()
game.Players.LocalPlayer.Character.LeftLowerArm:Destroy()
game.Players.LocalPlayer.Character.LeftUpperArm:Destroy()
game.Players.LocalPlayer.Character.RightHand:Destroy()
game.Players.LocalPlayer.Character.RightLowerArm:Destroy()
game.Players.LocalPlayer.Character.RightUpperArm:Destroy()
end)

FEShutdown.Name = "FE Shutdown"
FEShutdown.Parent = FuckFEMain
FEShutdown.BackgroundColor3 = Color3.new(0.207843, 0.207843, 0.207843)
FEShutdown.BorderColor3 = Color3.new(1, 1, 1)
FEShutdown.Position = UDim2.new(0, 167, 0, 94)
FEShutdown.Size = UDim2.new(0, 106, 0, 44)
FEShutdown.Font = Enum.Font.SourceSans
FEShutdown.Text = "FE Shutdown"
FEShutdown.TextColor3 = Color3.new(1, 1, 1)
FEShutdown.TextSize = 14

FEShutdown.MouseButton1Down:connect(function()
	for i =1,100 do
spawn(function()
while wait() do
for i,v in pairs(game:GetService'Players':GetPlayers()) do
if v.Character ~= nil and v.Character:FindFirstChild'Head' then
for _,x in pairs(v.Character.Head:GetChildren()) do
if x:IsA'Sound' then x.Playing = true end
end
end
end
end
end)
end
end)


FEDropHats.Name = "FE Drop Hats"
FEDropHats.Parent = FuckFEMain
FEDropHats.BackgroundColor3 = Color3.new(0.207843, 0.207843, 0.207843)
FEDropHats.BorderColor3 = Color3.new(1, 1, 1)
FEDropHats.Position = UDim2.new(0, 167, 0, 154)
FEDropHats.Size = UDim2.new(0, 106, 0, 44)
FEDropHats.Font = Enum.Font.SourceSans
FEDropHats.Text = "FE Drop Hats"
FEDropHats.TextColor3 = Color3.new(1, 1, 1)
FEDropHats.TextSize = 14

FEDropHats.MouseButton1Down:connect(function()
	game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(key)
if (key=="e") then
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if (v:IsA("Accessory")) then
v.Parent = workspace
end
end
end
end)
end)

FEFloatinghead.Name = "FE Floating head"
FEFloatinghead.Parent = FuckFEMain
FEFloatinghead.BackgroundColor3 = Color3.new(0.207843, 0.207843, 0.207843)
FEFloatinghead.BorderColor3 = Color3.new(1, 1, 1)
FEFloatinghead.Position = UDim2.new(0, 0, 0, 154)
FEFloatinghead.Size = UDim2.new(0, 106, 0, 44)
FEFloatinghead.Font = Enum.Font.SourceSans
FEFloatinghead.Text = "FE Floating Head"
FEFloatinghead.TextColor3 = Color3.new(1, 1, 1)
FEFloatinghead.TextSize = 14

FEFloatinghead.MouseButton1Down:connect(function()
local speed = 50 -- This is the fly speed. Change it to whatever you like. The variable can be changed while running
local c
local h
local bv
local bav
local cam
local flying
local p = game:GetService'Players'.LocalPlayer
local buttons = {W = false, S = false, A = false, D = false, Moving = false}
local startFly = function () -- Call this function to begin flying 
if not p.Character or not p.Character.Head or flying then return end
c = p.Character
h = c.Humanoid
h.PlatformStand = true
cam = workspace:WaitForChild('Camera')
bv = Instance.new("BodyVelocity")
bav = Instance.new("BodyAngularVelocity")
bv.Velocity, bv.MaxForce, bv.P = Vector3.new(0, 0, 0), Vector3.new(10000, 10000, 10000), 1000
bav.AngularVelocity, bav.MaxTorque, bav.P = Vector3.new(0, 0, 0), Vector3.new(10000, 10000, 10000), 1000
bv.Parent = c.Head
bav.Parent = c.Head
flying = true
h.Died:connect(function() flying = false end)
end
local endFly = function () -- Call this function to stop flying
if not p.Character or not flying then return end
h.PlatformStand = false
bv:Destroy()
bav:Destroy()
flying = false
end
game:GetService("UserInputService").InputBegan:connect(function (input, GPE) 
if GPE then return end
for i, e in pairs(buttons) do
if i ~= "Moving" and input.KeyCode == Enum.KeyCode[i] then
buttons[i] = true
buttons.Moving = true
end
end
end)
game:GetService("UserInputService").InputEnded:connect(function (input, GPE) 
if GPE then return end
local a = false
for i, e in pairs(buttons) do
if i ~= "Moving" then
if input.KeyCode == Enum.KeyCode[i] then
buttons[i] = false
end
if buttons[i] then a = true end
end
end
buttons.Moving = a
end)
local setVec = function (vec)
return vec * (speed / vec.Magnitude)
end
game:GetService("RunService").Heartbeat:connect(function (step) -- The actual fly function, called every frame
if flying and c and c.PrimaryPart then
local p = c.PrimaryPart.Position
local cf = cam.CFrame
local ax, ay, az = cf:toEulerAnglesXYZ()
c:SetPrimaryPartCFrame(CFrame.new(p.x, p.y, p.z) * CFrame.Angles(ax, ay, az))
if buttons.Moving then
local t = Vector3.new()
if buttons.W then t = t + (setVec(cf.lookVector)) end
if buttons.S then t = t - (setVec(cf.lookVector)) end
if buttons.A then t = t - (setVec(cf.rightVector)) end
if buttons.D then t = t + (setVec(cf.rightVector)) end
c:TranslateBy(t * step)
end
end
end)
FEFloatinghead.MouseButton1Down:connect(function()
local lol = game:GetService'Players'.LocalPlayer.Character
pcall(function()
for i,v in pairs(lol:GetChildren()) do
if v.Name ~= 'Head' and v.Name ~= 'Torso' and v.Name ~= 'HumanoidRootPart' then
v:Destroy()
end
end
local ok = lol:FindFirstChild'Torso'
if ok then ok = ok:FindFirstChild'roblox' if ok then ok:Destroy() end end
Instance.new('Humanoid', lol)
if lol.HumanoidRootPart:FindFirstChild'Rank' then lol.HumanoidRootPart:FindFirstChild'Rank':Destroy() end
local nouxd = lol:FindFirstChild'Torso'
wait'1'
lol.Head.Position = lol.Head.Position + Vector3.new(1,1,1)
if nouxd then nouxd.Transparency = 1 end
wait'.3'
startFly()
end)
end)
end)

credits.Name = "credits"
credits.Parent = FuckFEMain
credits.BackgroundColor3 = Color3.new(1, 1, 1)
credits.BackgroundTransparency = 1
credits.Position = UDim2.new(0, -38, 0, 316)
credits.Size = UDim2.new(0, 198, 0, 60)
credits.Font = Enum.Font.Code
credits.Text = "Made by iVerzide"
credits.TextColor3 = Color3.new(1, 1, 1)
credits.TextSize = 15
credits.TextWrapped = true

FESounds.Name = "FE Sounds"
FESounds.Parent = FuckFEMain
FESounds.BackgroundColor3 = Color3.new(0.207843, 0.207843, 0.207843)
FESounds.BorderColor3 = Color3.new(1, 1, 1)
FESounds.Position = UDim2.new(0, 0, 0, 215)
FESounds.Size = UDim2.new(0, 106, 0, 44)
FESounds.Font = Enum.Font.SourceSans
FESounds.Text = "FE Sounds"
FESounds.TextColor3 = Color3.new(1, 1, 1)
FESounds.TextSize = 14

FESounds.MouseButton1Down:connect(function()
	while wait() do
    for i,v in pairs(game:GetService'Players':GetPlayers()) do
        if v.Character ~= nil and v.Character:FindFirstChild'Head' then
            for _,x in pairs(v.Character.Head:GetChildren()) do
                if x:IsA'Sound' then x.Playing = true end
            end
        end
    end
	end
	end)

FEhammer.Name = "FE hammer"
FEhammer.Parent = FuckFEMain
FEhammer.BackgroundColor3 = Color3.new(0.207843, 0.207843, 0.207843)
FEhammer.BorderColor3 = Color3.new(1, 1, 1)
FEhammer.Position = UDim2.new(0, 167, 0, 215)
FEhammer.Size = UDim2.new(0, 106, 0, 44)
FEhammer.Font = Enum.Font.SourceSans
FEhammer.Text = "FE Hammer"
FEhammer.TextColor3 = Color3.new(1, 1, 1)
FEhammer.TextSize = 14

FEhammer.MouseButton1Down:connect(function()
	maind = nil
if workspace:FindFirstChild'GiveSystem' then
 if workspace.GiveSystem:FindFirstChild'GiveItem' then
  maind = workspace.GiveSystem.GiveItem
 end
end
if workspace:FindFirstChild'HandToCentre' then
 if workspace.HandToCentre:FindFirstChild'SendItem' then
  maind = workspace.HandToCentre.SendItem
 end
end
if maind == nil then
 print'could not find give event :('
 return
end
tool = Instance.new'Tool'
me = game:GetService'Players'.LocalPlayer
tool.RequiresHandle = false
tool.TextureId = 'http://www.roblox.com/asset/?id=12223874'
tool.Name = 'ya like jazz?'
tool.Parent = me.Backpack
buttonf = nil
tool.Equipped:connect(function()
 local m = game:GetService'Players'.LocalPlayer:GetMouse()
 m.Icon = 'rbxasset://textures/HammerCursor.png'
 buttonf = m.Button1Down:connect(function()
  if m.Target == nil then return end
  local ob = m.Target
  if ob:IsA'BasePart' or ob:IsA'WedgePart' then
   if ob:IsDescendantOf(me.Character) then return end
   m.Icon = 'rbxasset://textures/HammerOverCursor.png'
   local ex = Instance.new'Explosion'
   ex.BlastRadius = 0
   ex.Position = ob.Position
   ex.Parent = workspace
   maind:FireServer(workspace, ob)
   wait(0.3)
   m.Icon = 'rbxasset://textures/HammerCursor.png'
  end
 end)
end)
tool.Unequipped:connect(function()
 if buttonf ~= nil then
  buttonf:Disconnect()
  buttonf = nil
 end
 local m = game:GetService'Players'.LocalPlayer:GetMouse()
 m.Icon = ''
end)
end)

FECreeperR6.Name = "FE CreeperR6"
FECreeperR6.Parent = FuckFEMain
FECreeperR6.BackgroundColor3 = Color3.new(0.207843, 0.207843, 0.207843)
FECreeperR6.BorderColor3 = Color3.new(1, 1, 1)
FECreeperR6.Position = UDim2.new(0, 84, 0, 276)
FECreeperR6.Size = UDim2.new(0, 106, 0, 44)
FECreeperR6.Font = Enum.Font.SourceSans
FECreeperR6.Text = "FE Creeper R6"
FECreeperR6.TextColor3 = Color3.new(1, 1, 1)
FECreeperR6.TextSize = 14

FECreeperR6.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.Head.Mesh:Destroy()
game.Players.LocalPlayer.Character["Left Arm"]:Destroy()
game.Players.LocalPlayer.Character["Right Arm"]:Destroy()
end)



CloseGUIButton.Name = "CloseGUIButton"
CloseGUIButton.Parent = FuckFEMain
CloseGUIButton.BackgroundColor3 = Color3.new(1, 1, 1)
CloseGUIButton.BackgroundTransparency = 1
CloseGUIButton.Position = UDim2.new(0, 248, 0, -6)
CloseGUIButton.Size = UDim2.new(0, 30, 0, 26)
CloseGUIButton.Text = "X"
CloseGUIButton.TextColor3 = Color3.new(1, 1, 1)
CloseGUIButton.TextSize = 14

CloseGUIButton.MouseButton1Down:connect(function()
	game.CoreGui.FuckFE.FuckFEMain.Visible = false
	game.CoreGui.FuckFE.OpenGui.Visible = true
end)

OpenGui.Name = "OpenGui"
OpenGui.Parent = FuckFE
OpenGui.BackgroundColor3 = Color3.new(1, 1, 1)
OpenGui.Position = UDim2.new(0, 0, 0, 384)
OpenGui.Size = UDim2.new(0, 98, 0, 46)
OpenGui.Style = Enum.FrameStyle.RobloxRound

OpenGUIbutton.Name = "OpenGUIbutton"
OpenGUIbutton.Parent = OpenGui
OpenGUIbutton.BackgroundColor3 = Color3.new(1, 1, 1)
OpenGUIbutton.BackgroundTransparency = 1
OpenGUIbutton.Position = UDim2.new(0, -6, 0, -6)
OpenGUIbutton.Size = UDim2.new(0, 96, 0, 42)
OpenGUIbutton.Font = Enum.Font.Code
OpenGUIbutton.Text = "Open"
OpenGUIbutton.TextColor3 = Color3.new(1, 1, 1)
OpenGUIbutton.TextSize = 30

OpenGUIbutton.MouseButton1Down:connect(function()
	game.CoreGui.FuckFE.FuckFEMain.Visible = true
	game.CoreGui.FuckFE.OpenGui.Visible = false
end)