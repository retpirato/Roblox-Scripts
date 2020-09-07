local Gui = Instance.new("ScreenGui")
local Bar = Instance.new("Frame")
local Button1 = Instance.new("TextLabel")
local Button2 = Instance.new("TextLabel")
local Button3 = Instance.new("TextLabel")
local Button4 = Instance.new("TextLabel")
Gui.Parent = game.CoreGui

Bar.Name = "Bar"
Bar.Parent = Gui
Bar.Active = true
Bar.Transparency = 1
Bar.Draggable = true
Bar.Position = UDim2.new(0.05, 0, -0.03, 0)
Bar.Selectable = true
Bar.Size = UDim2.new(0, 300, 0, 30)

Button1.Name = "TextButton1"
Button1.Parent = Bar
Button1.BackgroundColor3 = Color3.new(0.6, 0.2, 0.2)
Button1.Position = UDim2.new(0, 0, -0.18, 0)
Button1.Size = UDim2.new(0, 148, 0, 33)
Button1.Font = Enum.Font.SourceSans
Button1.Text = "Flying-Off (V)"
Button1.TextColor3 = Color3.new(1, 1, 1)
Button1.TextSize = 30
                                            
Button2.Name = "TextButton2"
Button2.Parent = Bar
Button2.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Button2.Position = UDim2.new(0.5, 0, -0.18, 0)
Button2.Size = UDim2.new(0, 150, 0, 33)
Button2.Font = Enum.Font.SourceSans
Button2.Text = "Q-SavePos"
Button2.TextColor3 = Color3.new(1, 1, 1)
Button2.TextSize = 30

Button3.Name = "TextButton3"
Button3.Parent = Bar
Button3.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Button3.Position = UDim2.new(1, 0, -0.18, 0)
Button3.Size = UDim2.new(0, 150, 0, 33)
Button3.Font = Enum.Font.SourceSans
Button3.Text = "E-TpToPos"
Button3.TextColor3 = Color3.new(1, 1, 1)
Button3.TextSize = 30

Button4.Name = "TextButton4"
Button4.Parent = Bar
Button4.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Button4.Position = UDim2.new(1.5, 0, -0.18, 0)
Button4.Size = UDim2.new(0, 150, 0, 33)
Button4.Font = Enum.Font.SourceSans
Button4.Text = "X-TpToMouse"
Button4.TextColor3 = Color3.new(1, 1, 1)
Button4.TextSize = 30

flying = false
speedfly = 2
local Imput = game:GetService("UserInputService")
local Plr = game.Players.LocalPlayer
local Mouse = Plr:GetMouse()

local T = Plr.Character.HumanoidRootPart
local CONTROL = {F = 0, B = 0, L = 0, R = 0}
local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
local SPEED = 1

local function fly()
if flying == true then
local BG = Instance.new('BodyGyro', Plr.Character.HumanoidRootPart)
local BV = Instance.new('BodyVelocity', Plr.Character.HumanoidRootPart)
BG.P = 9e4
BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
BG.cframe = Plr.Character.HumanoidRootPart.CFrame
BV.velocity = Vector3.new(0, 0, 0)
BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
spawn(function()
repeat wait()
Plr.Character.Humanoid.PlatformStand = true
if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
SPEED = 50
elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
SPEED = 0
end
if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
else
BV.velocity = Vector3.new(0, 0, 0)
end
BG.cframe = workspace.CurrentCamera.CoordinateFrame
until not flying
CONTROL = {F = 0, B = 0, L = 0, R = 0}
lCONTROL = {F = 0, B = 0, L = 0, R = 0}
SPEED = 0
BG:destroy()
BV:destroy()
Plr.Character.Humanoid.PlatformStand = false
end)
end
end

Mouse.KeyDown:connect(function(KEY)
if KEY:lower() == 'w' then
CONTROL.F = speedfly
elseif KEY:lower() == 's' then
CONTROL.B = -speedfly
elseif KEY:lower() == 'a' then
CONTROL.L = -speedfly 
elseif KEY:lower() == 'd' then 
CONTROL.R = speedfly
end
end)
Mouse.KeyUp:connect(function(KEY)
if KEY:lower() == 'w' then
CONTROL.F = 0
elseif KEY:lower() == 's' then
CONTROL.B = 0
elseif KEY:lower() == 'a' then
CONTROL.L = 0
elseif KEY:lower() == 'd' then
CONTROL.R = 0
end
end)
fly()


game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(key)
if key == "v" then
if flying == true then flying = false print("Disabled Flying")
fly()
Button1.Text = "Flying-Off (V)"
Button1.BackgroundColor3 = Color3.new(0.6, 0.2, 0.2)
elseif
flying == false then flying = true print("Enabled Flying")
fly()
Button1.Text = "Flying-on (V)"
Button1.BackgroundColor3 = Color3.new(0.2, 0.6, 0.2)
end
end
end)

Plr.CharacterAdded:Connect(function(character)
flying = false
Plr.Character.Humanoid.PlatformStand = false
end)

function To(position)
local Chr = Plr.Character
if Chr ~= nil then
Chr:MoveTo(position)
end
end

game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(key)
if key == "x" then
To(Mouse.Hit.p)
print("TeleportedTo " .. tostring(Mouse.Hit.p))
Button4.BackgroundColor3 = Color3.new(0.2, 0.6, 0.2)
wait(0.1)
Button4.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(key)
if key == "q" then
savedpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
stringpos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
print("PositionSaved " .. tostring(stringpos))
Button2.BackgroundColor3 = Color3.new(0.2, 0.6, 0.2)
wait(0.1)
Button2.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(key)
if key == "e" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedpos
print("TeleportedTo " .. tostring(stringpos))
Button3.BackgroundColor3 = Color3.new(0.2, 0.6, 0.2)
wait(0.1)
Button3.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
end
end)

game:GetService('RunService').Stepped:connect(function()
for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
if v.ClassName == "Part"
or v.ClassName == "MeshPart" then
v.CanCollide = false
end
end
end)

while wait(0) do
Level = game.Players.LocalPlayer.Level.Value
if Level == "Forest" then
Area = CFrame.new(918.87, 4.74, -254.15)
end
if Level == "City" then
Area = CFrame.new(-582.58, 67.02, 778.98)
end
if Level == "Wilderness" then
Area = CFrame.new(918.87, 4.74, -254.15)
end
if Level == "Beach" then
Area = CFrame.new(918.87, 4.74, -254.15)
end
if Level == "Sea" then
Area = CFrame.new(918.87, 4.74, -254.15)
end
if Level == "Magma" then
Area = CFrame.new(918.87, 4.74, -254.15)
end
Level = game.Players.LocalPlayer.Level.Value
if tonumber(game.Players.LocalPlayer.Mana.Value) < tonumber(game.Players.LocalPlayer.MaxMana.Value) / 3  then
if Level ~= "Boss" then
pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Area
wait(0.4)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end
end
if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
if tonumber(game.Players.LocalPlayer.Character.Humanoid.Health) == 0 then
if Level ~= "Boss" then
pos2 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(7)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos2
end
end
end
end