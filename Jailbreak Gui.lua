-- Objects

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local escape = Instance.new("TextButton")
local hqbase = Instance.new("TextButton")
local garage = Instance.new("TextButton")
local guns = Instance.new("TextButton")
local helicopter = Instance.new("TextButton")
local policecars = Instance.new("TextButton")
local bank = Instance.new("TextButton")
local money = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")

-- Properties

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BackgroundTransparency = 0.5
Frame.BorderColor3 = Color3.new(0.333333, 0.666667, 1)
Frame.BorderSizePixel = 3
Frame.Draggable = true
Frame.Position = UDim2.new(0, 214, 0, 32)
Frame.Size = UDim2.new(0, 295, 0, 396)

escape.Name = "escape"
escape.Parent = Frame
escape.BackgroundColor3 = Color3.new(0.333333, 0.666667, 1)
escape.BorderColor3 = Color3.new(0.333333, 0.666667, 1)
escape.BorderSizePixel = 5
escape.Position = UDim2.new(0, 26, 0, 105)
escape.Size = UDim2.new(0, 94, 0, 40)
escape.Font = Enum.Font.SourceSansBold
escape.FontSize = Enum.FontSize.Size14
escape.Text = "Escape H C"
escape.TextSize = 14

hqbase.Name = "hqbase"
hqbase.Parent = Frame
hqbase.BackgroundColor3 = Color3.new(0.333333, 0.666667, 1)
hqbase.BorderColor3 = Color3.new(0.333333, 0.666667, 1)
hqbase.BorderSizePixel = 5
hqbase.Position = UDim2.new(0, 168, 0, 105)
hqbase.Size = UDim2.new(0, 94, 0, 40)
hqbase.Font = Enum.Font.SourceSansBold
hqbase.FontSize = Enum.FontSize.Size14
hqbase.Text = "HQ Base"
hqbase.TextSize = 14

garage.Name = "garage"
garage.Parent = Frame
garage.BackgroundColor3 = Color3.new(0.333333, 0.666667, 1)
garage.BorderColor3 = Color3.new(0.333333, 0.666667, 1)
garage.BorderSizePixel = 5
garage.Position = UDim2.new(0, 168, 0, 180)
garage.Size = UDim2.new(0, 94, 0, 40)
garage.Font = Enum.Font.SourceSansBold
garage.FontSize = Enum.FontSize.Size14
garage.Text = "Garage"
garage.TextSize = 14

guns.Name = "guns"
guns.Parent = Frame
guns.BackgroundColor3 = Color3.new(0.333333, 0.666667, 1)
guns.BorderColor3 = Color3.new(0.333333, 0.666667, 1)
guns.BorderSizePixel = 5
guns.Position = UDim2.new(0, 26, 0, 180)
guns.Size = UDim2.new(0, 94, 0, 40)
guns.Font = Enum.Font.SourceSansBold
guns.FontSize = Enum.FontSize.Size14
guns.Text = "Guns"
guns.TextSize = 14

helicopter.Name = "helicopter"
helicopter.Parent = Frame
helicopter.BackgroundColor3 = Color3.new(0.333333, 0.666667, 1)
helicopter.BorderColor3 = Color3.new(0.333333, 0.666667, 1)
helicopter.BorderSizePixel = 5
helicopter.Position = UDim2.new(0, 26, 0, 249)
helicopter.Size = UDim2.new(0, 94, 0, 40)
helicopter.Font = Enum.Font.SourceSansBold
helicopter.FontSize = Enum.FontSize.Size14
helicopter.Text = "Helicopter"
helicopter.TextSize = 14

policecars.Name = "policecars"
policecars.Parent = Frame
policecars.BackgroundColor3 = Color3.new(0.333333, 0.666667, 1)
policecars.BorderColor3 = Color3.new(0.333333, 0.666667, 1)
policecars.BorderSizePixel = 5
policecars.Position = UDim2.new(0, 168, 0, 249)
policecars.Size = UDim2.new(0, 94, 0, 40)
policecars.Font = Enum.Font.SourceSansBold
policecars.FontSize = Enum.FontSize.Size14
policecars.Text = "Police Cars"
policecars.TextSize = 14

bank.Name = "bank"
bank.Parent = Frame
bank.BackgroundColor3 = Color3.new(0.333333, 0.666667, 1)
bank.BorderColor3 = Color3.new(0.333333, 0.666667, 1)
bank.BorderSizePixel = 5
bank.Position = UDim2.new(0, 26, 0, 319)
bank.Size = UDim2.new(0, 94, 0, 40)
bank.Font = Enum.Font.SourceSansBold
bank.FontSize = Enum.FontSize.Size14
bank.Text = "Bank"
bank.TextSize = 14

money.Name = "money"
money.Parent = Frame
money.BackgroundColor3 = Color3.new(0.333333, 0.666667, 1)
money.BorderColor3 = Color3.new(0.333333, 0.666667, 1)
money.BorderSizePixel = 5
money.Position = UDim2.new(0, 168, 0, 319)
money.Size = UDim2.new(0, 94, 0, 40)
money.Font = Enum.Font.SourceSansBold
money.FontSize = Enum.FontSize.Size14
money.Text = "Money"
money.TextSize = 14

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel.BackgroundTransparency = 0.5
TextLabel.Size = UDim2.new(0, 295, 0, 60)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.FontSize = Enum.FontSize.Size18
TextLabel.Text = "By Cozmo"
TextLabel.TextColor3 = Color3.new(0.333333, 0.666667, 1)
TextLabel.TextSize = 18


bank.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1.1110189, 17.9213142, 782.103455) + Vector3.new(1,0,0)
end)
helicopter.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1176.4231, 59.7911148, -1572.6908) + Vector3.new(1,0,0)
end)
guns.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1130.11426, 17.950058, -1593.09766) + Vector3.new(1,0,0)
end)
policecars.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1100.4469, 17.7500038, -1493.18286) + Vector3.new(1,0,0)
end)
garage.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-342.130798, 19.3135223, 1182.73669) + Vector3.new(1,0,0)
end)
hqbase.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-222.339157, 17.9125443, 1575.82336) + Vector3.new(1,0,0)
end)
escape.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(744.981506, 38.1523933, 1132.73462) + Vector3.new(1,0,0)
end)
money.MouseButton1Click:connect(function()
	local Player = game.Players.LocalPlayer
wait(0.5)
for i,v in pairs(game.Teams.Criminal:GetPlayers()) do
repeat
wait()
Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
until v.Team.Name ~= "Criminal"
end
end)