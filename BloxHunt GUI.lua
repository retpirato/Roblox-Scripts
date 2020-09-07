-- Objects

local ScreenGui = Instance.new("ScreenGui")
local Op = Instance.new("TextButton")
local Gui = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local Money = Instance.new("TextButton")
local Esp = Instance.new("TextButton")
local God = Instance.new("TextButton")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")
local TextLabel_6 = Instance.new("TextLabel")
local Zap = Instance.new("TextButton")
local Close = Instance.new("TextButton")
local On = true
-- Properties

ScreenGui.Parent = game.CoreGui

Op.Name = "Op"
Op.Parent = ScreenGui
Op.BackgroundColor3 = Color3.new(0.368627, 0.368627, 0.368627)
Op.Position = UDim2.new(0, 0, 0.957708955, 0)
Op.Size = UDim2.new(0, 70, 0, 23)
Op.Font = Enum.Font.SourceSans
Op.FontSize = Enum.FontSize.Size14
Op.Text = "Open"
Op.TextSize = 14
Op.MouseButton1Click:connect(function()
	Gui.Visible = true
end)
Gui.Name = "Gui"
Gui.Parent = ScreenGui
Gui.Active = true
Gui.BackgroundColor3 = Color3.new(0.368627, 0.368627, 0.368627)
Gui.Draggable = true
Gui.Position = UDim2.new(0.227272719, 0, 0.291208804, 0)
Gui.Selectable = true
Gui.Size = UDim2.new(0, 198, 0, 249)
Gui.Visible = false

TextLabel.Parent = Gui
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(0, 198, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.FontSize = Enum.FontSize.Size14
TextLabel.Text = "Blox hunt Gui made with haxxor222 scripts"
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

TextLabel_2.Parent = Gui
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.Position = UDim2.new(0, 0, 0.907630503, 0)
TextLabel_2.Size = UDim2.new(0, 198, 0, 23)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.FontSize = Enum.FontSize.Size14
TextLabel_2.Text = "made by bot1034"
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14
TextLabel_2.TextWrapped = true

Money.Name = "Money"
Money.Parent = Gui
Money.BackgroundColor3 = Color3.new(0.666667, 0, 0)
Money.BackgroundTransparency = 0.40000000596046
Money.Position = UDim2.new(0.792929292, 0, 0.273092389, 0)
Money.Size = UDim2.new(0, 28, 0, 21)
Money.Font = Enum.Font.SourceSans
Money.FontSize = Enum.FontSize.Size14
Money.Text = "X"
Money.TextSize = 14
Money.MouseButton1Click:connect(function()
		Money.BackgroundColor3 = Color3.new(0, 0.666667, 0)
for i = 1, 1000 do
game.ReplicatedStorage.GameFunctions.Taunt:FireServer()
wait()
end
end)
Esp.Name = "Esp"
Esp.Parent = Gui
Esp.BackgroundColor3 = Color3.new(0.666667, 0, 0)
Esp.BackgroundTransparency = 0.40000000596046
Esp.Position = UDim2.new(0.792929292, 0, 0.415662676, 0)
Esp.Size = UDim2.new(0, 28, 0, 21)
Esp.Font = Enum.Font.SourceSans
Esp.FontSize = Enum.FontSize.Size14
Esp.Text = "X"
Esp.TextSize = 14
Esp.MouseButton1Click:connect(function()
		Esp.BackgroundColor3 = Color3.new(0, 0.666667, 0)
players = game:GetService("Players")
while wait(1) do
for i, v in pairs(players:GetChildren()) do
if v.Name ~= players.LocalPlayer.Name then
if v.Character and v.Character:FindFirstChild("Object") then
for j, k in pairs(v.Character.Object:GetChildren()) do
if k:IsA("Part") then
k.BrickColor = BrickColor.new("Hot pink")
end
end
end
end
end
end
end)
God.Name = "God"
God.Parent = Gui
God.BackgroundColor3 = Color3.new(0.666667, 0, 0)
God.BackgroundTransparency = 0.40000000596046
God.Position = UDim2.new(0.792929292, 0, 0.57429719, 0)
God.Size = UDim2.new(0, 28, 0, 21)
God.Font = Enum.Font.SourceSans
God.FontSize = Enum.FontSize.Size14
God.Text = "X"
God.TextSize = 14
God.MouseButton1Click:connect(function()
	game.ReplicatedStorage.GameFunctions.StatChange:FireServer("Health", 1000)
	God.BackgroundColor3 = Color3.new(0, 0.666667, 0)
	end)
TextLabel_3.Parent = Gui
TextLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_3.BackgroundTransparency = 1
TextLabel_3.Position = UDim2.new(0.0303030312, 0, 0.253012061, 0)
TextLabel_3.Size = UDim2.new(0, 142, 0, 32)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.FontSize = Enum.FontSize.Size14
TextLabel_3.Text = "Money Hack"
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14
TextLabel_3.TextWrapped = true

TextLabel_4.Parent = Gui
TextLabel_4.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_4.BackgroundTransparency = 1
TextLabel_4.Position = UDim2.new(0.0303030312, 0, 0.393574297, 0)
TextLabel_4.Size = UDim2.new(0, 142, 0, 32)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.FontSize = Enum.FontSize.Size14
TextLabel_4.Text = "Pink Esp"
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14
TextLabel_4.TextWrapped = true

TextLabel_5.Parent = Gui
TextLabel_5.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_5.BackgroundTransparency = 1
TextLabel_5.Position = UDim2.new(0.0303030312, 0, 0.552208841, 0)
TextLabel_5.Size = UDim2.new(0, 142, 0, 32)
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.FontSize = Enum.FontSize.Size14
TextLabel_5.Text = "Lots health -- god"
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 14
TextLabel_5.TextWrapped = true

TextLabel_6.Parent = Gui
TextLabel_6.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_6.BackgroundTransparency = 1
TextLabel_6.Position = UDim2.new(0.0303030312, 0, 0.726907611, 0)
TextLabel_6.Size = UDim2.new(0, 142, 0, 32)
TextLabel_6.Font = Enum.Font.SourceSans
TextLabel_6.FontSize = Enum.FontSize.Size14
TextLabel_6.Text = "Lots Zap power"
TextLabel_6.TextScaled = true
TextLabel_6.TextSize = 14
TextLabel_6.TextWrapped = true

Zap.Name = "Zap"
Zap.Parent = Gui
Zap.BackgroundColor3 = Color3.new(0.666667, 0, 0)
Zap.BackgroundTransparency = 0.40000000596046
Zap.Position = UDim2.new(0.792929292, 0, 0.75100404, 0)
Zap.Size = UDim2.new(0, 28, 0, 21)
Zap.Font = Enum.Font.SourceSans
Zap.FontSize = Enum.FontSize.Size14
Zap.Text = "X"
Zap.TextSize = 14
Zap.MouseButton1Click:connect(function()
	game.ReplicatedStorage.GameFunctions.StatChange:FireServer("Energy", 1000)
	Zap.BackgroundColor3 = Color3.new(0, 0.666667, 0)
end)
Close.Name = "Close"
Close.Parent = Gui
Close.BackgroundColor3 = Color3.new(0.666667, 0, 0)
Close.Position = UDim2.new(0, 0, 0.891566277, 0)
Close.Size = UDim2.new(0, 30, 0, 27)
Close.Font = Enum.Font.SourceSans
Close.FontSize = Enum.FontSize.Size14
Close.Text = "Close "
Close.TextSize = 14
Close.MouseButton1Click:connect(function()
	Gui.Visible = false
end)
