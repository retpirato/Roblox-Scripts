--workspace.ayyman:Remove() (Run this after each use of the guillotine)
NiggaKilla = "XTheShowcaserX" -- Person who is going to kill the victim
Victim = "the770zone" -- Person who gonna die xd
game.Players[Victim].Character.Humanoid.WalkSpeed = 0
game.Players[Victim].Character.Humanoid.JumpPower = 0
game:GetObjects("rbxassetid://1064951471")[1].Parent = game.Workspace
-- Lib Func --
loadstring(game:GetObjects("rbxassetid://1064957068")[1].Source)() -- Realistic Blood
loadstring(game:GetObjects("rbxassetid://1064956088")[1].Source)() -- Guillotine Script Main
-- Lib Func --
wait(.5)
game.Workspace[Victim].HumanoidRootPart.CFrame = CFrame.new(105.919, 2046.955, -40.277)
game.Workspace[NiggaKilla].HumanoidRootPart.CFrame = CFrame.new(109.305, 2045.6, -34.156)

--Gui version

local BitchHoldUp = Instance.new("ScreenGui")
local Opener = Instance.new("Frame")
local Open = Instance.new("TextButton")
local DaGui = Instance.new("Frame")
local Frame = Instance.new("Frame")
local Close = Instance.new("TextButton")
local Username = Instance.new("TextBox")
local VanDaPlayer = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")

-- asd

BitchHoldUp.Name = "BitchHoldUp"
BitchHoldUp.Parent = game.CoreGui

Opener.Name = "Opener"
Opener.Parent = BitchHoldUp
Opener.BackgroundColor3 = Color3.new(0, 0, 0)
Opener.BackgroundTransparency = 0.5
Opener.Position = UDim2.new(0, 19, 0, 564)
Opener.Size = UDim2.new(0, 224, 0, 40)

Open.Name = "Open"
Open.Parent = Opener
Open.BackgroundColor3 = Color3.new(0, 0, 0)
Open.BackgroundTransparency = 0.5
Open.Size = UDim2.new(0, 224, 0, 40)
Open.Font = Enum.Font.SciFi
Open.FontSize = Enum.FontSize.Size42
Open.Text = "Open"
Open.TextColor3 = Color3.new(0, 1, 1)
Open.TextSize = 42

DaGui.Name = "DaGui"
DaGui.Parent = BitchHoldUp
DaGui.BackgroundColor3 = Color3.new(0, 0, 0)
DaGui.BackgroundTransparency = 0.5
DaGui.Draggable = true
DaGui.Position = UDim2.new(0, 0, 0, 311)
DaGui.Size = UDim2.new(0, 343, 0, 197)
DaGui.Visible = false

Frame.Parent = DaGui
Frame.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
Frame.Position = UDim2.new(0, 313, 0, 0)
Frame.Size = UDim2.new(0, 30, 0, 26)

Close.Name = "Close"
Close.Parent = Frame
Close.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
Close.Size = UDim2.new(0, 30, 0, 26)
Close.Font = Enum.Font.SciFi
Close.FontSize = Enum.FontSize.Size14
Close.Text = "X"
Close.TextColor3 = Color3.new(1, 1, 1)
Close.TextSize = 14
Close.TextStrokeTransparency = 5

Username.Name = "Username"
Username.Parent = DaGui
Username.BackgroundColor3 = Color3.new(0, 0, 0)
Username.BackgroundTransparency = 0.5
Username.Position = UDim2.new(0, 72, 0, 76)
Username.Size = UDim2.new(0, 200, 0.0999999866, 24)
Username.Font = Enum.Font.SciFi
Username.FontSize = Enum.FontSize.Size18
Username.Text = "Username"
Username.TextColor3 = Color3.new(0, 1, 1)
Username.TextSize = 18

VanDaPlayer.Name = "VanDaPlayer"
VanDaPlayer.Parent = DaGui
VanDaPlayer.BackgroundColor3 = Color3.new(0, 0, 0)
VanDaPlayer.BackgroundTransparency = 0.5
VanDaPlayer.Position = UDim2.new(0.0199999996, 90, 0.00999999978, 138)
VanDaPlayer.Size = UDim2.new(0, 150, 0, 26)
VanDaPlayer.Font = Enum.Font.SciFi
VanDaPlayer.FontSize = Enum.FontSize.Size14
VanDaPlayer.Text = "Van Player"
VanDaPlayer.TextColor3 = Color3.new(0, 1, 1)
VanDaPlayer.TextSize = 14

TextLabel.Parent = DaGui
TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel.BackgroundTransparency = 0.5
TextLabel.Position = UDim2.new(0, 48, 0, 22)
TextLabel.Size = UDim2.new(0, 246, 0, 19)
TextLabel.TextScaled = true
TextLabel.Font = Enum.Font.SciFi
TextLabel.FontSize = Enum.FontSize.Size18
TextLabel.Text = "Van Player Gui by Hopeless (Talha)"
TextLabel.TextColor3 = Color3.new(0, 1, 1)
TextLabel.TextSize = 17

Open.MouseButton1Down:connect(function()
	DaGui.Visible = true
	Opener.Visible = false

end)

Close.MouseButton1Down:connect(function()
	DaGui.Visible = false
	Opener.Visible = true
end)

VanDaPlayer.MouseButton1Down:connect(function()
Victim = Username.Text -- Person who gonna die xd
game.Players[Victim].Character.Humanoid.WalkSpeed = 0
game.Players[Victim].Character.Humanoid.JumpPower = 0
game:GetObjects("rbxassetid://1064951471")[1].Parent = game.Workspace
-- Lib Func --
loadstring(game:GetObjects("rbxassetid://1064957068")[1].Source)() -- Realistic Blood
loadstring(game:GetObjects("rbxassetid://1064956088")[1].Source)() -- Guillotine Script Main
-- Lib Func --
wait(.5)
game.Workspace[Victim].HumanoidRootPart.CFrame = CFrame.new(105.919, 2046.955, -40.277)
game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = CFrame.new(109.305, 2045.6, -34.156)
end)

-- I like to asd a lot