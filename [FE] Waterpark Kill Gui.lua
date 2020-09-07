- Objects

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")

-- Properties

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0.00784314, 0.917647, 1)
Frame.Position = UDim2.new(0.551697493, 0, 0.129584357, 0)
Frame.Size = UDim2.new(0, 408, 0, 194)
Frame.Active = true
Frame.Draggable = true

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.new(0.286275, 0.776471, 1)
Frame_2.BorderSizePixel = 0
Frame_2.Size = UDim2.new(0, 408, 0, 48)

TextLabel.Parent = Frame_2
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 345
TextLabel.Size = UDim2.new(0, 408, 0, 50)
TextLabel.Font = Enum.Font.SourceSansLight
TextLabel.Text = "ROBLOXian Waterpark Kill GUI"
TextLabel.TextColor3 = Color3.new(0.0627451, 0.392157, 1)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

TextBox.Parent = TextLabel
TextBox.BackgroundColor3 = Color3.new(0.286275, 0.776471, 1)
TextBox.Position = UDim2.new(0.0171568636, 0, 2.68000007, 0)
TextBox.Size = UDim2.new(0, 395, 0, 50)
TextBox.Font = Enum.Font.Code
TextBox.Text = "Username"
TextBox.TextScaled = true
TextBox.TextSize = 14
TextBox.TextWrapped = true

TextButton.Parent = TextBox
TextButton.BackgroundColor3 = Color3.new(0.286275, 0.776471, 1)
TextButton.Position = UDim2.new(0.245569617, 0, -1.46000004, 0)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.Code
TextButton.Text = "Kill"
TextButton.TextSize = 50

TextButton.MouseButton1Down:connect(function()
now = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.ReplicatedStorage.ClothingService:FireServer("Hat", 1055299)

game.ReplicatedStorage.RemoveHats:FireServer()
wait(0.1)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
=
game.Players.LocalPlayer.Character.TeapotTurret.GravityHammer.Handle.CFrame
wait(0.2)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
=
game.Players[TextBox.Text].Character.HumanoidRootPart.CFrame
wait(0.1)

for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetDescendants()) do
if v:IsA'Tool' then
v.Parent = workspace
wait(0.1)
v.Parent = game.Players.LocalPlayer.Character.Head
end
end
wait()

game.ReplicatedStorage.RemoveHats:FireServer()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = now
end)