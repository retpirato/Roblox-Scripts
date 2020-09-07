game:GetService("StarterGui"):SetCore("SendNotification", {Title = "FunTratOr On V3rm", Text = "AckroyJR Is Gay ASF!"})

local DarkDevs = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local header2 = Instance.new("Frame")
local title = Instance.new("TextLabel")
local title_2 = Instance.new("TextLabel")
local title_3 = Instance.new("TextLabel")
local title_4 = Instance.new("TextLabel")
local sp = Instance.new("TextButton")
local orb = Instance.new("TextButton")

DarkDevs.Name = "DarkDevs"
DarkDevs.Parent = game.CoreGui

Main.Name = "Main"
Main.Parent = DarkDevs
Main.Active = true
Main.Draggable = true
Main.BackgroundColor3 = Color3.new(0.0941177, 0.0941177, 0.0941177)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.545152962, 0, 0.485403061, 0)
Main.Size = UDim2.new(0, 251, 0, 122)

header2.Name = "header2"
header2.Parent = Main
header2.BackgroundColor3 = Color3.new(0.290196, 0.0117647, 0.454902)
header2.BorderSizePixel = 0
header2.Position = UDim2.new(0, 0, -0.00129949849, 0)
header2.Size = UDim2.new(0, 250, 0, 29)

title.Name = "title"
title.Parent = header2
title.BackgroundColor3 = Color3.new(1, 1, 1)
title.BackgroundTransparency = 1
title.Position = UDim2.new(-0.0817396864, 0, 0.0344827585, 0)
title.Size = UDim2.new(0, 170, 0, 28)
title.Font = Enum.Font.GothamBold
title.Text = "ark Devs"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextSize = 18

title_2.Name = "title"
title_2.Parent = header2
title_2.BackgroundColor3 = Color3.new(1, 1, 1)
title_2.BackgroundTransparency = 1
title_2.Position = UDim2.new(-0.247512206, 0, 0.0344827585, 0)
title_2.Size = UDim2.new(0, 167, 0, 28)
title_2.Font = Enum.Font.GothamBold
title_2.Text = "D"
title_2.TextColor3 = Color3.new(1, 0.0313726, 0.0470588)
title_2.TextSize = 18

title_3.Name = "title"
title_3.Parent = header2
title_3.BackgroundColor3 = Color3.new(1, 1, 1)
title_3.BackgroundTransparency = 1
title_3.BorderSizePixel = 0
title_3.Position = UDim2.new(-0.00800000038, 0, 3.75862074, 0)
title_3.Size = UDim2.new(0, 251, 0, 13)
title_3.Font = Enum.Font.GothamBold
title_3.Text = "Created By FunTratOr/AckroyJr | DarkDevs.Pro"
title_3.TextColor3 = Color3.new(1, 1, 1)

title_4.Name = "title"
title_4.Parent = header2
title_4.BackgroundColor3 = Color3.new(1, 1, 1)
title_4.BackgroundTransparency = 1
title_4.BorderSizePixel = 0
title_4.Position = UDim2.new(0.639999986, 0, 0.413793117, 0)
title_4.Size = UDim2.new(0, 83, 0, 17)
title_4.Font = Enum.Font.GothamBold
title_4.Text = "DASHING SIMULATOR"
title_4.TextColor3 = Color3.new(1, 1, 1)

sp.Name = "sp"
sp.Parent = Main
sp.BackgroundColor3 = Color3.new(0.215686, 0.219608, 0.219608)
sp.BorderSizePixel = 0
sp.Position = UDim2.new(0.0924554169, 0, 0.356830299, 0)
sp.Size = UDim2.new(0, 202, 0, 20)
sp.Font = Enum.Font.GothamBold
sp.Text = "Farm Speed (SuperFast)"
sp.TextColor3 = Color3.new(1, 1, 1)
sp.TextSize = 14

orb.Name = "orb"
orb.Parent = Main
orb.BackgroundColor3 = Color3.new(0.215686, 0.219608, 0.219608)
orb.BorderSizePixel = 0
orb.Position = UDim2.new(0.0924554169, 0, 0.660108984, 0)
orb.Size = UDim2.new(0, 202, 0, 20)
orb.Font = Enum.Font.GothamBold
orb.Text = "Farm Orb (SuperFast)"
orb.TextColor3 = Color3.new(1, 1, 1)
orb.TextSize = 14
orb.MouseButton1Down:connect(function()
orb.BackgroundColor3 = Color3.new(0.270588, 0, 0.427451)
	while true do
		wait()
		local plr = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game.Workspace.CollectableOrbs:GetChildren()) do
if v.ClassName == "Model" then
v.Big.CFrame = plr.CFrame
end
end
	end
end)

sp.MouseButton1Down:connect(function()
sp.BackgroundColor3 = Color3.new(0.270588, 0, 0.427451)
	game:GetService("RunService").RenderStepped:connect(function()
local Path = game:GetService("ReplicatedStorage").Events.AddSpeed
Path:FireServer()
end)
end)