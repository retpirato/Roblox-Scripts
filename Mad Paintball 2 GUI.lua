-- Objects

local Mp2Gui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local Fegod = Instance.new("TextButton")
local _4slots = Instance.new("TextButton")
local InRubies = Instance.new("TextButton")
local Open = Instance.new("Frame")
local Open2 = Instance.new("TextButton")
local StarterGui = game:GetService('StarterGui')

-- Properties

Mp2Gui.Name = "Mp2 Gui"
Mp2Gui.Parent = game.CoreGui


Main.Name = "Main"
Main.Parent = Mp2Gui
Main.BackgroundColor3 = Color3.new(0.329412, 0.709804, 1)
Main.BackgroundTransparency = 0.34999999403954
Main.Position = UDim2.new(0.0311890841, 0, 0.471786827, 0)
Main.Size = UDim2.new(0, 449, 0, 217)


TextLabel.Parent = Main
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.301496655, 0, 0.0956898928, 0)
TextLabel.Size = UDim2.new(0, 204, 0, 57)
TextLabel.Font = Enum.Font.Code
TextLabel.FontSize = Enum.FontSize.Size48
TextLabel.Text = "Mad Paintball 2"
TextLabel.TextColor3 = Color3.new(0.109804, 0.941177, 0.0941177)
TextLabel.TextSize = 40


Close.Name = "Close"
Close.Parent = Main
Close.Active = false
Close.BackgroundColor3 = Color3.new(1, 1, 1)
Close.BackgroundTransparency = 0.75
Close.Position = UDim2.new(0, 0, -8.38190317e-09, 0)
Close.Size = UDim2.new(0, 40, 0, 38)
Close.Font = Enum.Font.SourceSans
Close.FontSize = Enum.FontSize.Size14
Close.Text = "Close"
Close.TextSize = 14


Fegod.Name = "Fegod"
Fegod.Parent = Main
Fegod.Active = false
Fegod.BackgroundColor3 = Color3.new(1, 1, 1)
Fegod.BackgroundTransparency = 0.75
Fegod.Position = UDim2.new(0.0334075727, 0, 0.49308756, 0)
Fegod.Size = UDim2.new(0, 86, 0, 39)
Fegod.Font = Enum.Font.SourceSans
Fegod.FontSize = Enum.FontSize.Size14
Fegod.Text = "FE GOD"
Fegod.TextSize = 14


_4slots.Name = "4 slots"
_4slots.Parent = Main
_4slots.Active = false
_4slots.BackgroundColor3 = Color3.new(1, 1, 1)
_4slots.BackgroundTransparency = 0.75
_4slots.Position = UDim2.new(0.404231608, 0, 0.49308756, 0)
_4slots.Size = UDim2.new(0, 86, 0, 39)
_4slots.Font = Enum.Font.SourceSans
_4slots.FontSize = Enum.FontSize.Size14
_4slots.Text = "4 SLOTS"
_4slots.TextSize = 14


InRubies.Name = "InRubies"
InRubies.Parent = Main
InRubies.Active = false
InRubies.BackgroundColor3 = Color3.new(1, 1, 1)
InRubies.BackgroundTransparency = 0.75
InRubies.Position = UDim2.new(0.775055707, 0, 0.49308756, 0)
InRubies.Size = UDim2.new(0, 86, 0, 39)
InRubies.Font = Enum.Font.SourceSans
InRubies.FontSize = Enum.FontSize.Size14
InRubies.Text = "Infinite Rubies"
InRubies.TextSize = 14




InRubies.MouseButton1Down:connect(function()
game.ReplicatedStorage.GameMain.Select:FireServer("BuySlot", {"2Slots1Day", -2e99})
end)

_4slots.MouseButton1Down:connect(function()
game.ReplicatedStorage.GameMain.Select:FireServer("BuySlot", {"4Slots1Day", -1000})
end)
Close.MouseButton1Down:connect(function()
Mp2Gui:ClearAllChildren()
Mp2Gui:remove()
print("Goodbye "..game.Players.LocalPlayer.Name)
end)



Fegod.MouseButtone1Down:connect(function()
game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
wait(0.1)
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait(0.1)
game.Players.LocalPlayer.Character.Animate.Disabled = false
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
end)