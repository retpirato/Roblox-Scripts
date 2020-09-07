-- Objects

local phemzyxR15 = Instance.new("ScreenGui")
local Topbar = Instance.new("Frame")
local menu = Instance.new("Frame")
local fe = Instance.new("TextLabel")
local R15 = Instance.new("TextButton")
local Separator = Instance.new("TextButton")
local rh = Instance.new("TextButton")
local lh = Instance.new("TextButton")
local rlarm = Instance.new("TextButton")
local llarm = Instance.new("TextButton")
local fe_2 = Instance.new("TextLabel")
local invis = Instance.new("TextButton")
local cut = Instance.new("TextButton")
local title = Instance.new("TextLabel")

-- Properties

phemzyxR15.Name = "phemzyxR15"
phemzyxR15.Parent = game.CoreGui

Topbar.Name = "Topbar"
Topbar.Parent = phemzyxR15
Topbar.Active = true
Topbar.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
Topbar.BorderColor3 = Color3.new(1, 0, 0)
Topbar.BorderSizePixel = 2
Topbar.Draggable = true
Topbar.Position = UDim2.new(0.4375, -100, 0.499388754, -13)
Topbar.Selectable = true
Topbar.Size = UDim2.new(0, 362, 0, 27)

menu.Name = "menu"
menu.Parent = Topbar
menu.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
menu.BorderColor3 = Color3.new(1, 0, 0)
menu.BorderSizePixel = 2
menu.Position = UDim2.new(0, 0, 0, 27)
menu.Size = UDim2.new(0, 362, 0, 200)

fe.Name = "fe"
fe.Parent = menu
fe.BackgroundColor3 = Color3.new(1, 1, 1)
fe.BackgroundTransparency = 1
fe.Position = UDim2.new(0, 279, 0, -27)
fe.Size = UDim2.new(0, 83, 0, 27)
fe.Font = Enum.Font.ArialBold
fe.FontSize = Enum.FontSize.Size14
fe.Text = "FE IS ON"
fe.TextColor3 = Color3.new(1, 1, 1)
fe.TextSize = 13

R15.Name = "R15"
R15.Parent = menu
R15.BackgroundColor3 = Color3.new(0.247059, 0, 0)
R15.BorderColor3 = Color3.new(1, 0, 0)
R15.Size = UDim2.new(0, 51, 0, 25)
R15.Font = Enum.Font.SourceSans
R15.FontSize = Enum.FontSize.Size14
R15.Text = "R15"
R15.TextColor3 = Color3.new(1, 1, 1)
R15.TextSize = 14

Separator.Name = "Separator"
Separator.Parent = menu
Separator.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
Separator.BorderColor3 = Color3.new(1, 0, 0)
Separator.Position = UDim2.new(0, 0, 0.136000007, 0)
Separator.Selectable = false
Separator.Size = UDim2.new(0, 362, 0, 0)
Separator.Font = Enum.Font.SourceSans
Separator.FontSize = Enum.FontSize.Size14
Separator.Text = ""
Separator.TextColor3 = Color3.new(1, 1, 1)
Separator.TextSize = 14

rh.Name = "rh"
rh.Parent = menu
rh.BackgroundColor3 = Color3.new(0.133333, 0, 0)
rh.BorderColor3 = Color3.new(1, 0, 0)
rh.Position = UDim2.new(0.0165745858, 0, 0.200000003, 0)
rh.Size = UDim2.new(0, 82, 0, 27)
rh.Font = Enum.Font.ArialBold
rh.FontSize = Enum.FontSize.Size12
rh.Text = "RIGHT HAND"
rh.TextColor3 = Color3.new(1, 1, 1)
rh.TextSize = 12

lh.Name = "lh"
lh.Parent = menu
lh.BackgroundColor3 = Color3.new(0.133333, 0, 0)
lh.BorderColor3 = Color3.new(1, 0, 0)
lh.Position = UDim2.new(0.243093923, 0, 0.200000003, 0)
lh.Size = UDim2.new(0, 82, 0, 27)
lh.Font = Enum.Font.ArialBold
lh.FontSize = Enum.FontSize.Size12
lh.Text = "LEFT HAND"
lh.TextColor3 = Color3.new(1, 1, 1)
lh.TextSize = 12

rlarm.Name = "rlarm"
rlarm.Parent = menu
rlarm.BackgroundColor3 = Color3.new(0.133333, 0, 0)
rlarm.BorderColor3 = Color3.new(1, 0, 0)
rlarm.Position = UDim2.new(0.0165745914, 0, 0.335000008, 0)
rlarm.Size = UDim2.new(0, 82, 0, 27)
rlarm.Font = Enum.Font.ArialBold
rlarm.FontSize = Enum.FontSize.Size12
rlarm.Text = "RIGHT LOWER ARM"
rlarm.TextColor3 = Color3.new(1, 1, 1)
rlarm.TextSize = 12
rlarm.TextWrapped = true

llarm.Name = "llarm"
llarm.Parent = menu
llarm.BackgroundColor3 = Color3.new(0.133333, 0, 0)
llarm.BorderColor3 = Color3.new(1, 0, 0)
llarm.Position = UDim2.new(0.243093923, 0, 0.335000008, 0)
llarm.Size = UDim2.new(0, 82, 0, 27)
llarm.Font = Enum.Font.ArialBold
llarm.FontSize = Enum.FontSize.Size12
llarm.Text = "LEFT LOWER ARM"
llarm.TextColor3 = Color3.new(1, 1, 1)
llarm.TextSize = 12
llarm.TextWrapped = true

fe_2.Name = "fe"
fe_2.Parent = menu
fe_2.BackgroundColor3 = Color3.new(1, 1, 1)
fe_2.BackgroundTransparency = 1
fe_2.Position = UDim2.new(0, 51, 0, 138)
fe_2.Size = UDim2.new(0, 73, 0, 27)
fe_2.Font = Enum.Font.ArialBold
fe_2.FontSize = Enum.FontSize.Size14
fe_2.Text = "more coming soon.."
fe_2.TextColor3 = Color3.new(1, 1, 1)
fe_2.TextSize = 13

invis.Name = "invis"
invis.Parent = menu
invis.BackgroundColor3 = Color3.new(0.133333, 0, 0)
invis.BorderColor3 = Color3.new(1, 0, 0)
invis.Position = UDim2.new(0.585635364, 0, 0.200000003, 0)
invis.Size = UDim2.new(0, 122, 0, 54)
invis.Font = Enum.Font.ArialBold
invis.FontSize = Enum.FontSize.Size18
invis.Text = "INVISIBLE"
invis.TextColor3 = Color3.new(1, 1, 1)
invis.TextSize = 16
invis.TextWrapped = true

cut.Name = "cut"
cut.Parent = menu
cut.BackgroundColor3 = Color3.new(0.133333, 0, 0)
cut.BorderColor3 = Color3.new(1, 0, 0)
cut.Position = UDim2.new(0.585635364, 0, 0.470000029, 0)
cut.Size = UDim2.new(0, 122, 0, 54)
cut.Font = Enum.Font.ArialBold
cut.FontSize = Enum.FontSize.Size18
cut.Text = "CUT BODY IN HALF"
cut.TextColor3 = Color3.new(1, 1, 1)
cut.TextSize = 16
cut.TextWrapped = true

title.Name = "title"
title.Parent = Topbar
title.BackgroundColor3 = Color3.new(1, 1, 1)
title.BackgroundTransparency = 1
title.Size = UDim2.new(0, 124, 0, 27)
title.Font = Enum.Font.Arial
title.FontSize = Enum.FontSize.Size18
title.Text = "GUI by Phemzyx"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextSize = 18

--Functions

lh.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.LeftHand.LeftWrist:Destroy()
end)

rh.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.RightHand.RightWrist:Destroy()
end)

llarm.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.LeftLowerArm.LeftElbow:Destroy()
end)

rlarm.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.RightLowerArm.RightElbow:Destroy()
end)

if game.Workspace.FilteringEnabled == true
then fe.Text = "FE IS ON"
else fe.Text = "FE IS OFF"
end

cut.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.UpperTorso.Waist:Destroy()
end)

invis.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.LowerTorso.Root:Destroy()
end)