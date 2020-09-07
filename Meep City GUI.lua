--MEEPCITY FUCKER BY RENNI/REN 
 
 -- GUI

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Plus = Instance.new("TextButton")
local Boombox = Instance.new("TextButton")
local Farm = Instance.new("TextButton")
local tp = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
local trailer = Instance.new("TextButton")
local Party = Instance.new("TextButton")
local large = Instance.new("TextButton")
local small = Instance.new("TextButton")
local reg = Instance.new("TextButton")
local TextLabel_3 = Instance.new("TextLabel")

-- yee

ScreenGui.Parent = game.CoreGui

Frame.Parent           = ScreenGui
Frame.BackgroundColor3 = Color3.new(0.12549, 0.12549, 0.12549)
Frame.BorderSizePixel  = 0
Frame.Position         = UDim2.new(0.0736468509, 0, 0.4413203, 0)
Frame.Size             = UDim2.new(0, 694, 0, 318)
Frame.Active           = true
Frame.Draggable        = true


TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(0.541176, 0.137255, 0.505882)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 0, -0.0251572318, 0)
TextLabel.Size = UDim2.new(0, 694, 0, 50)
TextLabel.Font = Enum.Font.Highway
TextLabel.Text = "MeepCity Fucker 2.0 By Ren"
TextLabel.TextColor3 = Color3.new(0, 0, 0)
TextLabel.TextSize = 20

Plus.Name = "Plus"
Plus.Parent = Frame
Plus.BackgroundColor3 = Color3.new(0.541176, 0.137255, 0.505882)
Plus.BorderSizePixel = 0
Plus.Position = UDim2.new(0.0214285702, 0, 0.171027273, 0)
Plus.Size = UDim2.new(0, 200, 0, 50)
Plus.Font = Enum.Font.Cartoon
Plus.Text = "Become a Plus Member"
Plus.TextColor3 = Color3.new(0, 0, 0)
Plus.TextSize = 20
Plus.MouseButton1Click:connect(function()
	game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].PLUS.Value = true
end)

Boombox.Name = "Boombox"
Boombox.Parent = Frame
Boombox.BackgroundColor3 = Color3.new(0.541176, 0.137255, 0.505882)
Boombox.BorderSizePixel = 0
Boombox.Position = UDim2.new(0.0214285702, 0, 0.350272536, 0)
Boombox.Size = UDim2.new(0, 200, 0, 50)
Boombox.Font = Enum.Font.Cartoon
Boombox.Text = "Get the Boombox"
Boombox.TextColor3 = Color3.new(0, 0, 0)
Boombox.TextSize = 20
Boombox.MouseButton1Click:connect(function()
	game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].BoomBox.Value = true
end)

Farm.Name = "Farm"
Farm.Parent = Frame
Farm.BackgroundColor3 = Color3.new(0.541176, 0.137255, 0.505882)
Farm.BorderSizePixel = 0
Farm.Position = UDim2.new(0.0214285702, 0, 0.535807133, 0)
Farm.Size = UDim2.new(0, 200, 0, 50)
Farm.Font = Enum.Font.Cartoon
Farm.Text = "Lake Money Farm 2.0"
Farm.TextColor3 = Color3.new(0, 0, 0)
Farm.TextSize = 20
Farm.MouseButton1Click:connect(function()
		game.ReplicatedStorage.Connection:InvokeServer(9,2) --Go Near a lake
game.ReplicatedStorage.Connection:InvokeServer(50)
game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].PLUS.Value = true 
while wait() do
game.ReplicatedStorage.Connection:InvokeServer(49)
game.ReplicatedStorage.Connection:InvokeServer(51)
end 
end)

tp.Name = "tp"
tp.Parent = Frame
tp.BackgroundColor3 = Color3.new(0.541176, 0.137255, 0.505882)
tp.BorderSizePixel = 0
tp.Position = UDim2.new(0.0214285702, 0, 0.721341729, 0)
tp.Size = UDim2.new(0, 200, 0, 50)
tp.Font = Enum.Font.Cartoon
tp.Text = "CTRL + Click TP"
tp.TextColor3 = Color3.new(0, 0, 0)
tp.TextSize = 20
tp.MouseButton1Click:connect(function()
	local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local UserInputService = game:GetService('UserInputService')

local HoldingControl = false

Mouse.Button1Down:connect(function()
if HoldingControl then
Player.Character:MoveTo(Mouse.Hit.p)
end
end)

UserInputService.InputBegan:connect(function(Input, Processed)
if Input.UserInputType == Enum.UserInputType.Keyboard then
if Input.KeyCode == Enum.KeyCode.LeftControl then
HoldingControl = true
elseif Input.KeyCode == Enum.KeyCode.RightControl then
HoldingControl = true 
end
end
end)

UserInputService.InputEnded:connect(function(Input, Processed)
if Input.UserInputType == Enum.UserInputType.Keyboard then
if Input.KeyCode == Enum.KeyCode.LeftControl then
HoldingControl = false
elseif Input.KeyCode == Enum.KeyCode.RightControl then
HoldingControl = false
end
end
end)
end)

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.new(0.541176, 0.137255, 0.505882)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.318443805, 0, 0.169811323, 0)
TextLabel_2.Size = UDim2.new(0, 18, 0, 225)
TextLabel_2.Font = Enum.Font.Code
TextLabel_2.Text = ""
TextLabel_2.TextColor3 = Color3.new(0, 0, 0)
TextLabel_2.TextSize = 20

trailer.Name = "trailer"
trailer.Parent = Frame
trailer.BackgroundColor3 = Color3.new(0.541176, 0.137255, 0.505882)
trailer.BorderSizePixel = 0
trailer.Position = UDim2.new(0.357142866, 0, 0.171027243, 0)
trailer.Size = UDim2.new(0, 200, 0, 50)
trailer.Font = Enum.Font.Cartoon
trailer.Text = "Trailer Estate"
trailer.TextColor3 = Color3.new(0, 0, 0)
trailer.TextSize = 20
trailer.MouseButton1Click:connect(function()
	game.ReplicatedStorage.Connection:InvokeServer(45, 482)
	end)

Party.Name = "Party"
Party.Parent = Frame
Party.BackgroundColor3 = Color3.new(0.541176, 0.137255, 0.505882)
Party.BorderSizePixel = 0
Party.Position = UDim2.new(0.652857184, 0, 0.171027243, 0)
Party.Size = UDim2.new(0, 200, 0, 50)
Party.Font = Enum.Font.Cartoon
Party.Text = "Party Estate"
Party.TextColor3 = Color3.new(0, 0, 0)
Party.TextSize = 20
Party.MouseButton1Click:connect(function()
	game.ReplicatedStorage.Connection:InvokeServer(45, 369) 
end)

large.Name = "large"
large.Parent = Frame
large.BackgroundColor3 = Color3.new(0.541176, 0.137255, 0.505882)
large.BorderSizePixel = 0
large.Position = UDim2.new(0.357142895, 0, 0.350272536, 0)
large.Size = UDim2.new(0, 200, 0, 50)
large.Font = Enum.Font.Cartoon
large.Text = "Larger Estate"
large.TextColor3 = Color3.new(0, 0, 0)
large.TextSize = 20
large.MouseButton1Click:connect(function()
	game.ReplicatedStorage.Connection:InvokeServer(45, 185)
end)

small.Name = "small"
small.Parent = Frame
small.BackgroundColor3 = Color3.new(0.541176, 0.137255, 0.505882)
small.BorderSizePixel = 0
small.Position = UDim2.new(0.652857184, 0, 0.350272536, 0)
small.Size = UDim2.new(0, 200, 0, 50)
small.Font = Enum.Font.Cartoon
small.Text = "Small Estate"
small.TextColor3 = Color3.new(0, 0, 0)
small.TextSize = 20
small.MouseButton1Click:connect(function()
	game.ReplicatedStorage.Connection:InvokeServer(45, 134) 
end)

reg.Name = "reg"
reg.Parent = Frame
reg.BackgroundColor3 = Color3.new(0.541176, 0.137255, 0.505882)
reg.BorderSizePixel = 0
reg.Position = UDim2.new(0.357142866, 0, 0.534591198, 0)
reg.Size = UDim2.new(0, 407, 0, 50)
reg.Font = Enum.Font.Cartoon
reg.Text = "Regular Estate"
reg.TextColor3 = Color3.new(0, 0, 0)
reg.TextSize = 20
reg.MouseButton1Click:connect(function()
	game.ReplicatedStorage.Connection:InvokeServer(45, 119)
end)

TextLabel_3.Parent = Frame
TextLabel_3.BackgroundColor3 = Color3.new(0.541176, 0.137255, 0.505882)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.357142866, 0, 0.720125794, 0)
TextLabel_3.Size = UDim2.new(0, 407, 0, 50)
TextLabel_3.Font = Enum.Font.Code
TextLabel_3.Text = "More Functions Soon <3 "
TextLabel_3.TextColor3 = Color3.new(0, 0, 0)
TextLabel_3.TextSize = 20

-- Scripts 
