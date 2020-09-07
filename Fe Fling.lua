-- Made By JackMcJagger15
local FlingKill = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Label = Instance.new("Frame")
local Shadow = Instance.new("Frame")
local StartKill = Instance.new("TextButton")
local StopKill = Instance.new("TextButton")
local Instructions = Instance.new("TextLabel")
local CurrentPower = Instance.new("TextLabel")
local Recomendation = Instance.new("TextLabel")
local NameOfGui = Instance.new("TextLabel")
local Exit = Instance.new("TextButton")
local UPArrow = Instance.new("TextButton")
local DownArrow = Instance.new("TextButton")

-- Properties

FlingKill.Name = "Fling/Kill"
FlingKill.Parent = game.CoreGui

Main.Name = "Main"
Main.Parent = FlingKill
Main.BackgroundColor3 = Color3.new(0.92549, 0.941177, 0.945098)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.702554762, 0, 0.446640313, 0)
Main.Size = UDim2.new(0, 217, 0, 233)
Main.Selectable = true
Main.Active = true
Main.Draggable = true

Label.Name = "Label"
Label.Parent = Main
Label.BackgroundColor3 = Color3.new(0.741176, 0.764706, 0.780392)
Label.BorderSizePixel = 0
Label.Size = UDim2.new(0, 217, 0, 27)

Shadow.Name = "Shadow"
Shadow.Parent = Main
Shadow.BackgroundColor3 = Color3.new(0.67451, 0.694118, 0.705882)
Shadow.BorderSizePixel = 0
Shadow.Position = UDim2.new(0, 0, 0.115879826, 0)
Shadow.Size = UDim2.new(0, 217, 0, 9)

StartKill.Name = "StartKill"
StartKill.Parent = Main
StartKill.BackgroundColor3 = Color3.new(0.741176, 0.764706, 0.780392)
StartKill.BorderSizePixel = 0
StartKill.Position = UDim2.new(0.195852548, 0, 0.227467805, 0)
StartKill.Size = UDim2.new(0, 126, 0, 23)
StartKill.Font = Enum.Font.Cartoon
StartKill.Text = "FE Kill/Fling"
StartKill.TextColor3 = Color3.new(0, 0, 0)
StartKill.TextSize = 14

StopKill.Name = "StopKill"
StopKill.Parent = Main
StopKill.BackgroundColor3 = Color3.new(0.741176, 0.764706, 0.780392)
StopKill.BorderSizePixel = 0
StopKill.Position = UDim2.new(0.207373276, 0, 0.38197428, 0)
StopKill.Size = UDim2.new(0, 124, 0, 23)
StopKill.Font = Enum.Font.Cartoon
StopKill.Text = "Stop FE Kill/Fling"
StopKill.TextColor3 = Color3.new(0, 0, 0)
StopKill.TextSize = 14

Instructions.Name = "Instructions"
Instructions.Parent = Main
Instructions.BackgroundColor3 = Color3.new(1, 1, 1)
Instructions.BackgroundTransparency = 1
Instructions.Position = UDim2.new(0.0391705073, 0, 0.549356222, 0)
Instructions.Size = UDim2.new(0, 200, 0, 32)
Instructions.Font = Enum.Font.Cartoon
Instructions.Text = "Just touch someone to watch the fly to their death!"
Instructions.TextColor3 = Color3.new(0, 0, 0)
Instructions.TextSize = 14
Instructions.TextWrapped = true

CurrentPower.Name = "CurrentPower"
CurrentPower.Parent = Main
CurrentPower.BackgroundColor3 = Color3.new(1, 1, 1)
CurrentPower.BackgroundTransparency = 1
CurrentPower.Position = UDim2.new(0.276497692, 0, 0.686695278, 0)
CurrentPower.Size = UDim2.new(0, 98, 0, 36)
CurrentPower.Font = Enum.Font.Cartoon
CurrentPower.Text = "Current Power = 5"
CurrentPower.TextColor3 = Color3.new(0, 0, 0)
CurrentPower.TextSize = 14

Recomendation.Name = "Recomendation"
Recomendation.Parent = Main
Recomendation.BackgroundColor3 = Color3.new(1, 1, 1)
Recomendation.BackgroundTransparency = 1
Recomendation.Position = UDim2.new(0.0414746553, 0, 0.884120166, 0)
Recomendation.Size = UDim2.new(0, 200, 0, 21)
Recomendation.Font = Enum.Font.Cartoon
Recomendation.Text = "Recommended Power is 5"
Recomendation.TextColor3 = Color3.new(0, 0, 0)
Recomendation.TextSize = 14

NameOfGui.Name = "NameOfGui"
NameOfGui.Parent = Main
NameOfGui.BackgroundColor3 = Color3.new(1, 1, 1)
NameOfGui.BackgroundTransparency = 1
NameOfGui.Position = UDim2.new(0.0806451589, 0, 0, 0)
NameOfGui.Size = UDim2.new(0, 154, 0, 27)
NameOfGui.Font = Enum.Font.Cartoon
NameOfGui.Text = "FE Kill/Fling By JackMcJagger15"
NameOfGui.TextColor3 = Color3.new(0, 0, 0)
NameOfGui.TextSize = 14

Exit.Name = "Exit"
Exit.Parent = Main
Exit.BackgroundColor3 = Color3.new(1, 1, 1)
Exit.BackgroundTransparency = 1
Exit.Position = UDim2.new(0.907834113, 0, 0, 0)
Exit.Size = UDim2.new(0, 20, 0, 27)
Exit.Font = Enum.Font.Cartoon
Exit.Text = "X"
Exit.TextColor3 = Color3.new(0, 0, 0)
Exit.TextSize = 14

UPArrow.Name = "UPArrow"
UPArrow.Parent = Main
UPArrow.BackgroundColor3 = Color3.new(1, 1, 1)
UPArrow.BackgroundTransparency = 1
UPArrow.Position = UDim2.new(0.0783410147, 0, 0.716738224, 0)
UPArrow.Size = UDim2.new(0, 26, 0, 23)
UPArrow.Font = Enum.Font.Cartoon
UPArrow.Text = "Up"
UPArrow.TextColor3 = Color3.new(0, 0, 0)
UPArrow.TextSize = 12
UPArrow.TextWrapped = true

DownArrow.Name = "DownArrow"
DownArrow.Parent = Main
DownArrow.BackgroundColor3 = Color3.new(1, 1, 1)
DownArrow.BackgroundTransparency = 1
DownArrow.Position = UDim2.new(0.792626739, 0, 0.714592278, 0)
DownArrow.Size = UDim2.new(0, 26, 0, 23)
DownArrow.Font = Enum.Font.Cartoon
DownArrow.Text = "Down"
DownArrow.TextColor3 = Color3.new(0, 0, 0)
DownArrow.TextSize = 12
DownArrow.TextWrapped = true

power = 500
active = false
local val = Instance.new("IntValue")
val.Name = "Number"
val.Parent = game.Players.LocalPlayer
val.Value = 5

Exit.MouseButton1Click:connect(function()
FlingKill.Enabled = false
end)

StartKill.MouseButton1Click:connect(function()
game:GetService('RunService').Stepped:connect(function()
if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
game.Players.LocalPlayer.Character.Head.CanCollide = false
game.Players.LocalPlayer.Character.Torso.CanCollide = false
game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
else
if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
game.Players.LocalPlayer.Character.Head.CanCollide = false
game.Players.LocalPlayer.Character.UpperTorso.CanCollide = false
game.Players.LocalPlayer.Character.LowerTorso.CanCollide = false
game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
end
end
end)
wait(.1)
local bambam = Instance.new("BodyThrust")
bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bambam.Force = Vector3.new(power,0,power)
bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
end)

StopKill.MouseButton1Click:connect(function()
active = false
game.Players.LocalPlayer.Character.HumanoidRootPart.BodyThrust:Remove()
end)

UPArrow.MouseButton1Click:connect(function()
power = power + 100
game.Players.LocalPlayer.Number.Value = game.Players.LocalPlayer.Number.Value + 1
CurrentPower.Text = "Current Power = " .. game.Players.LocalPlayer.Number.Value
end)

DownArrow.MouseButton1Click:connect(function()
power = power - 100
game.Players.LocalPlayer.Number.Value = game.Players.LocalPlayer.Number.Value - 1
CurrentPower.Text = "Current Power = " .. game.Players.LocalPlayer.Number.Value
end)