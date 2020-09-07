local FishingSimulatorGUI = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local AutoFishButton = Instance.new("TextButton")
local Deco = Instance.new("TextLabel")
local AutoSellButton = Instance.new("TextButton")
local Deco_2 = Instance.new("TextLabel")
local Deco_3 = Instance.new("TextLabel")

FishingSimulatorGUI.Name = "FishingSimulatorGUI"
FishingSimulatorGUI.Parent = game.CoreGui

MainFrame.Name = "MainFrame"
MainFrame.Parent = FishingSimulatorGUI
MainFrame.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
MainFrame.BorderSizePixel = 0
MainFrame.Draggable = true
MainFrame.Position = UDim2.new(0.25, 0, 0.25, 0)
MainFrame.Size = UDim2.new(0.150000006, 0, 0.150000006, 0)
MainFrame.Active = true

AutoFishButton.Name = "AutoFishButton"
AutoFishButton.Parent = MainFrame
AutoFishButton.BackgroundColor3 = Color3.new(0, 0, 0)
AutoFishButton.BorderSizePixel = 0
AutoFishButton.Position = UDim2.new(0.5, 0, 0.300000012, 0)
AutoFishButton.Size = UDim2.new(0.400000006, 0, 0.25, 0)
AutoFishButton.Font = Enum.Font.SourceSans
AutoFishButton.FontSize = Enum.FontSize.Size14
AutoFishButton.Text = "OFF"
AutoFishButton.TextColor3 = Color3.new(1, 0, 0)
AutoFishButton.TextScaled = true
AutoFishButton.TextSize = 14
AutoFishButton.TextWrapped = true

Deco.Name = "Deco"
Deco.Parent = MainFrame
Deco.BackgroundColor3 = Color3.new(1, 1, 1)
Deco.BackgroundTransparency = 0.89999997615814
Deco.BorderSizePixel = 0
Deco.Size = UDim2.new(1, 0, 0.200000003, 0)
Deco.Font = Enum.Font.SourceSansBold
Deco.FontSize = Enum.FontSize.Size14
Deco.Text = "Fishing Simulator"
Deco.TextColor3 = Color3.new(1, 1, 1)
Deco.TextScaled = true
Deco.TextSize = 14
Deco.TextWrapped = true

AutoSellButton.Name = "AutoSellButton"
AutoSellButton.Parent = MainFrame
AutoSellButton.BackgroundColor3 = Color3.new(0, 0, 0)
AutoSellButton.BorderSizePixel = 0
AutoSellButton.Position = UDim2.new(0.5, 0, 0.600000024, 0)
AutoSellButton.Size = UDim2.new(0.400000006, 0, 0.25, 0)
AutoSellButton.Font = Enum.Font.SourceSans
AutoSellButton.FontSize = Enum.FontSize.Size14
AutoSellButton.Text = "OFF"
AutoSellButton.TextColor3 = Color3.new(1, 0, 0)
AutoSellButton.TextScaled = true
AutoSellButton.TextSize = 14
AutoSellButton.TextWrapped = true

Deco_2.Name = "Deco"
Deco_2.Parent = MainFrame
Deco_2.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_2.BackgroundTransparency = 1
Deco_2.BorderSizePixel = 0
Deco_2.Position = UDim2.new(0.103909552, 0, 0.300000012, 0)
Deco_2.Size = UDim2.new(0.349999994, 0, 0.25, 0)
Deco_2.Font = Enum.Font.SourceSansBold
Deco_2.FontSize = Enum.FontSize.Size14
Deco_2.Text = "Auto Fish"
Deco_2.TextColor3 = Color3.new(1, 1, 1)
Deco_2.TextScaled = true
Deco_2.TextSize = 14
Deco_2.TextWrapped = true

Deco_3.Name = "Deco"
Deco_3.Parent = MainFrame
Deco_3.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_3.BackgroundTransparency = 1
Deco_3.BorderSizePixel = 0
Deco_3.Position = UDim2.new(0.103909552, 0, 0.594840288, 0)
Deco_3.Size = UDim2.new(0.349999994, 0, 0.25, 0)
Deco_3.Font = Enum.Font.SourceSansBold
Deco_3.FontSize = Enum.FontSize.Size14
Deco_3.Text = "Auto Sell"
Deco_3.TextColor3 = Color3.new(1, 1, 1)
Deco_3.TextScaled = true
Deco_3.TextSize = 14
Deco_3.TextWrapped = true


local autofish = false
AutoFishButton.MouseButton1Down:connect(function()
if autofish == false then
autofish = true
AutoFishButton.TextColor3 = Color3.new(0, 1, 0)
AutoFishButton.Text = "ON"
else
autofish = false
AutoFishButton.TextColor3 = Color3.new(1, 0, 0)
AutoFishButton.Text = "OFF"
end
end)

local autosell = false
AutoSellButton.MouseButton1Down:connect(function()
if autosell == false then
autosell = true
AutoSellButton.TextColor3 = Color3.new(0, 1, 0)
AutoSellButton.Text = "ON"
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.WORLD.Buildings.FishShop.Halo.Position.Position)
wait(0.2)
game.Players.LocalPlayer.Character.Head.Anchored = true
else
autosell = false
AutoSellButton.TextColor3 = Color3.new(1, 0, 0)
AutoSellButton.Text = "OFF"
game.Players.LocalPlayer.Character.Head.Anchored = false
end
end)

spawn(function()
while true do
wait()
if autofish == true then
wait()
game:GetService("ReplicatedStorage").Remotes.FishingRemote:FireServer()
wait()
game:GetService("ReplicatedStorage").Remotes.FishingRemote:FireServer("success")
end
end
end)

spawn(function()
while true do
wait()
if autosell == true then
wait()
game.ReplicatedStorage.Remotes.ZoneInput:InvokeServer("fishshop")
end
end
end)