--Credits: BararakSeika
local WizardWorld = Instance.new("ScreenGui")
local Menu = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")
local playername = Instance.new("TextBox")
local Speed = Instance.new("TextButton")
local Jump = Instance.new("TextButton")
local MoneyFarm = Instance.new("TextButton")
local LevelFarm = Instance.new("TextButton")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local Open = Instance.new("Frame")
local TextButton_3 = Instance.new("TextButton")

-- Properties

WizardWorld.Name = "WizardWorld"
WizardWorld.Parent = game.Players.LocalPlayer.PlayerGui
WizardWorld.ResetOnSpawn = false

Menu.Name = "Menu"
Menu.Parent = WizardWorld
Menu.BackgroundColor3 = Color3.new(1, 0.666667, 0)
Menu.BorderColor3 = Color3.new(1, 1, 1)
Menu.BorderSizePixel = 5
Menu.Position = UDim2.new(0.681818187, 0, 0.147921756, 0)
Menu.Size = UDim2.new(0, 429, 0, 369)

TextLabel.Parent = Menu
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.296037287, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 38)
TextLabel.Font = Enum.Font.Code
TextLabel.Text = "Wizard World"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 20
TextLabel.TextStrokeColor3 = Color3.new(1, 0.666667, 0)
TextLabel.TextStrokeTransparency = 0

TextLabel_2.Parent = Menu
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.Position = UDim2.new(0.533799529, 0, 0.880503118, 0)
TextLabel_2.Size = UDim2.new(0, 200, 0, 38)
TextLabel_2.Font = Enum.Font.Code
TextLabel_2.Text = "Credits: BararakSeika"
TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
TextLabel_2.TextSize = 14
TextLabel_2.TextStrokeColor3 = Color3.new(1, 0.666667, 0)
TextLabel_2.TextStrokeTransparency = 0

TextLabel_3.Parent = Menu
TextLabel_3.BackgroundColor3 = Color3.new(1, 1, 0)
TextLabel_3.BackgroundTransparency = 1
TextLabel_3.Position = UDim2.new(0, 0, 0.16260162, 0)
TextLabel_3.Size = UDim2.new(0, 200, 0, 50)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "Money Farm"
TextLabel_3.TextColor3 = Color3.new(1, 1, 1)
TextLabel_3.TextSize = 14

TextLabel_4.Parent = Menu
TextLabel_4.BackgroundColor3 = Color3.new(1, 1, 0)
TextLabel_4.BackgroundTransparency = 1
TextLabel_4.Position = UDim2.new(0, 0, 0.468834668, 0)
TextLabel_4.Size = UDim2.new(0, 200, 0, 50)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "Level Farm"
TextLabel_4.TextColor3 = Color3.new(1, 1, 1)
TextLabel_4.TextSize = 14

TextLabel_5.Parent = Menu
TextLabel_5.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_5.BackgroundTransparency = 1
TextLabel_5.Position = UDim2.new(0, 0, 0.528199613, 0)
TextLabel_5.Size = UDim2.new(0, 200, 0, 38)
TextLabel_5.Font = Enum.Font.Code
TextLabel_5.Text = "That can cause lag"
TextLabel_5.TextColor3 = Color3.new(1, 1, 1)
TextLabel_5.TextSize = 10
TextLabel_5.TextStrokeColor3 = Color3.new(1, 0.666667, 0)
TextLabel_5.TextStrokeTransparency = 0

playername.Name = "playername"
playername.Parent = Menu
playername.BackgroundColor3 = Color3.new(1, 1, 1)
playername.BorderColor3 = Color3.new(1, 1, 0)
playername.BorderSizePixel = 5
playername.Position = UDim2.new(0.503496528, 0, 0.200542003, 0)
playername.Size = UDim2.new(0, 200, 0, 50)
playername.Font = Enum.Font.SourceSans
playername.Text = "Player Name"
playername.TextColor3 = Color3.new(0, 0, 0)
playername.TextSize = 14

Speed.Name = "Speed"
Speed.Parent = Menu
Speed.BackgroundColor3 = Color3.new(1, 1, 1)
Speed.BorderColor3 = Color3.new(1, 1, 0)
Speed.BorderSizePixel = 5
Speed.Position = UDim2.new(0.59673661, 0, 0.373983741, 0)
Speed.Size = UDim2.new(0, 133, 0, 50)
Speed.Font = Enum.Font.SourceSans
Speed.Text = "+100 Speed"
Speed.TextColor3 = Color3.new(0, 0, 0)
Speed.TextSize = 14

Jump.Name = "Jump"
Jump.Parent = Menu
Jump.BackgroundColor3 = Color3.new(1, 1, 1)
Jump.BorderColor3 = Color3.new(1, 1, 0)
Jump.BorderSizePixel = 5
Jump.Position = UDim2.new(0.59673661, 0, 0.552845478, 0)
Jump.Size = UDim2.new(0, 133, 0, 50)
Jump.Font = Enum.Font.SourceSans
Jump.Text = "+100 Jump Power"
Jump.TextColor3 = Color3.new(0, 0, 0)
Jump.TextSize = 14

MoneyFarm.Name = "MoneyFarm"
MoneyFarm.Parent = Menu
MoneyFarm.BackgroundColor3 = Color3.new(1, 1, 1)
MoneyFarm.BorderColor3 = Color3.new(1, 1, 0)
MoneyFarm.BorderSizePixel = 5
MoneyFarm.Position = UDim2.new(0.0769230723, 0, 0.298102975, 0)
MoneyFarm.Size = UDim2.new(0, 133, 0, 50)
MoneyFarm.Font = Enum.Font.SourceSans
MoneyFarm.Text = "Start"
MoneyFarm.TextColor3 = Color3.new(0, 0, 0)
MoneyFarm.TextSize = 14

LevelFarm.Name = "LevelFarm"
LevelFarm.Parent = Menu
LevelFarm.BackgroundColor3 = Color3.new(1, 1, 1)
LevelFarm.BorderColor3 = Color3.new(1, 1, 0)
LevelFarm.BorderSizePixel = 5
LevelFarm.Position = UDim2.new(0.0769230723, 0, 0.688346863, 0)
LevelFarm.Size = UDim2.new(0, 133, 0, 50)
LevelFarm.Font = Enum.Font.SourceSans
LevelFarm.Text = "Start"
LevelFarm.TextColor3 = Color3.new(0, 0, 0)
LevelFarm.TextSize = 14

TextButton.Parent = Menu
TextButton.BackgroundColor3 = Color3.new(1, 0.666667, 0)
TextButton.BackgroundTransparency = 1
TextButton.BorderColor3 = Color3.new(1, 0, 0)
TextButton.BorderSizePixel = 2
TextButton.Position = UDim2.new(0.885780871, 0, 0, 0)
TextButton.Size = UDim2.new(0, 49, 0, 38)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "X"
TextButton.TextColor3 = Color3.new(0, 0, 0)
TextButton.TextSize = 25

TextButton_2.Parent = Menu
TextButton_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_2.BorderColor3 = Color3.new(1, 1, 0)
TextButton_2.BorderSizePixel = 5
TextButton_2.Position = UDim2.new(0.59673661, 0, 0.745257437, 0)
TextButton_2.Size = UDim2.new(0, 133, 0, 50)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Click TP"
TextButton_2.TextColor3 = Color3.new(0, 0, 0)
TextButton_2.TextSize = 14

Open.Name = "Open"
Open.Parent = WizardWorld
Open.BackgroundColor3 = Color3.new(1, 1, 1)
Open.Position = UDim2.new(0, 0, 0.929095268, 0)
Open.Size = UDim2.new(0, 67, 0, 58)

TextButton_3.Parent = Open
TextButton_3.BackgroundColor3 = Color3.new(1, 0.666667, 0)
TextButton_3.BorderColor3 = Color3.new(1, 1, 1)
TextButton_3.BorderSizePixel = 7
TextButton_3.Size = UDim2.new(0, 67, 0, 58)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "Open"
TextButton_3.TextColor3 = Color3.new(0, 0, 0)
TextButton_3.TextSize = 14

-- Scripts

TextButton_3.MouseButton1Click:connect(function()
game.Players.LocalPlayer.PlayerGui.WizardWorld.Menu.Visible = true
end)

TextButton.MouseButton1Click:connect(function()
game.Players.LocalPlayer.PlayerGui.WizardWorld.Menu.Visible = false
end)

TextButton.MouseEnter:connect(function()
TextButton.Text = "Quit?"
end)

LevelFarm.MouseButton1Click:connect(function()
while true do
wait()
for i, v in pairs(game.Workspace.Monsters:GetChildren()) do 
if v.Humanoid.Health <= 49 then
v.HumanoidRootPart.Anchored = true
v.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.Head.Position.X,game.Players.LocalPlayer.Character.Head.Position.Y,game.Players.LocalPlayer.Character.Head.Position.Z+10) 
end
end
end
end)

MoneyFarm.MouseButton1Click:connect(function()
local ScreenGui = Instance.new("ScreenGui")
local TextButtoni = Instance.new("TextButton")


ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui
ScreenGui.ResetOnSpawn = false

TextButtoni.Parent = ScreenGui
TextButtoni.BackgroundColor3 = Color3.new(0.333333, 1, 0)
TextButtoni.BackgroundTransparency = 0.5
TextButtoni.BorderSizePixel = 5
TextButtoni.Position = UDim2.new(0.349288464, 0, 0.12224938, 0)
TextButtoni.Size = UDim2.new(0, 200, 0, 50)
TextButtoni.Font = Enum.Font.SourceSans
TextButtoni.Text = "Use any autoclicker here and be off"
TextButtoni.TextColor3 = Color3.new(0, 0, 0)
TextButtoni.TextSize = 14
TextButtoni.Draggable = true

while wait() do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Money["Money"].CFrame
end
end)

Speed.MouseButton1Click:connect(function()
game.Workspace[Menu.playername.Text].Humanoid.WalkSpeed = 100
end)

Jump.MouseButton1Click:connect(function()
game.Workspace[Menu.playername.Text].Humanoid.JumpPower = 100
end)

TextButton.MouseLeave:connect(function()
TextButton.Text = "X"
end)

TextButton_2.MouseButton1Click:connect(function()
mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Click Teleport"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end)
tool.Parent = game.Players.LocalPlayer.Backpack
end)

local m = Instance.new("Message", game.Players.LocalPlayer.PlayerGui)
m.Text = "Wizard World Loading"
game.Debris:AddItem(m, 1)
wait(1)
local m = Instance.new("Message", game.Players.LocalPlayer.PlayerGui)
m.Text = "Wizard World Loading."
game.Debris:AddItem(m, 1)
wait(1)
local m = Instance.new("Message", game.Players.LocalPlayer.PlayerGui)
m.Text = "Wizard World Loading.."
game.Debris:AddItem(m, 1)
wait(1)
local m = Instance.new("Message", game.Players.LocalPlayer.PlayerGui)
m.Text = "Wizard World Loading..."
game.Debris:AddItem(m, 1)
wait(1)
local m = Instance.new("Message", game.Players.LocalPlayer.PlayerGui)
m.Text = "Wizard World Loaded"
game.Debris:AddItem(m, 1)
wait(3)
local m = Instance.new("Message", game.Players.LocalPlayer.PlayerGui)
m.Text = "If you like this GUI vouch please :D"
game.Debris:AddItem(m, 5)