-- Made By ItzDan
-- Fixed By ItzDan
if game.CoreGui:FindFirstChild("TheButton") then
	game.CoreGui["TheButton"]:remove()
end
-- Objects

local TheButton = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local PushMe = Instance.new("TextButton")
local Credit = Instance.new("TextLabel")
local Tittle = Instance.new("TextLabel")

-- Properties

TheButton.Name = "TheButton"
TheButton.Parent = game.CoreGui
TheButton.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = TheButton
Main.Active = true
Main.BackgroundColor3 = Color3.new(0, 0.666667, 1)
Main.BorderSizePixel = 5
Main.ClipsDescendants = true
Main.Draggable = true
Main.Position = UDim2.new(0.462462455, 0, 0.430747926, 0)
Main.Selectable = true
Main.Size = UDim2.new(0, 100, 0, 100)

PushMe.Name = "PushMe"
PushMe.Parent = Main
PushMe.BackgroundColor3 = Color3.new(0.270588, 0.819608, 0.819608)
PushMe.BorderSizePixel = 5
PushMe.Position = UDim2.new(0.104999997, 0, 0.580000043, 0)
PushMe.Size = UDim2.new(0, 79, 0, 32)
PushMe.FontSize = Enum.FontSize.Size14
PushMe.Text = "Push Me"
PushMe.TextScaled = true
PushMe.TextSize = 14
PushMe.TextWrapped = true

Credit.Name = "Credit"
Credit.Parent = Main
Credit.BackgroundColor3 = Color3.new(0, 1, 0.498039)
Credit.BorderSizePixel = 5
Credit.Size = UDim2.new(0, 100, 0, 15)
Credit.Font = Enum.Font.Arial
Credit.FontSize = Enum.FontSize.Size14
Credit.Text = "Made By ItzDan"
Credit.TextScaled = true
Credit.TextSize = 14
Credit.TextWrapped = true

Tittle.Name = "Tittle"
Tittle.Parent = Main
Tittle.BackgroundColor3 = Color3.new(0, 1, 0.498039)
Tittle.BorderSizePixel = 5
Tittle.Position = UDim2.new(0, 0, 0.289999992, 0)
Tittle.Size = UDim2.new(0, 100, 0, 15)
Tittle.Font = Enum.Font.ArialBold
Tittle.FontSize = Enum.FontSize.Size14
Tittle.Text = "The Button"
Tittle.TextScaled = true
Tittle.TextSize = 14
Tittle.TextWrapped = true

-- Funtion

PushMe.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.Humanoid.Sit = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4,-4,-4)
game.Players.LocalPlayer.Character.Torso.Anchored = true
for i,v in pairs(game.Players:GetChildren()) do 
local Target = v.Name
local R_C = Instance.new("BallSocketConstraint")
R_C.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
local hah = Instance.new("Attachment")
hah.Parent = game.Players[Target].Character.HumanoidRootPart
local hah2 = Instance.new("Attachment")
hah2.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
R_C.Attachment0 = hah
R_C.Attachment1 = hah2
R_C.Visible = false
wait(0.1)
game.Players.LocalPlayer.Character.Torso.Anchored = false
end
end)