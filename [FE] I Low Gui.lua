local MENU = Instance.new("ScreenGui")
local Topbar = Instance.new("Frame")
local menu = Instance.new("Frame")
local Players = game:GetService("Players")
local god = Instance.new("TextButton")
local victim = Instance.new("TextBox")
local tpto = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local FeCheck = Instance.new("TextLabel")
local FE = Workspace.FilteringEnabled
local reach = Instance.new("TextButton")
local insane = Instance.new("TextButton")

MENU.Name = "MENU"
MENU.Parent = game.CoreGui

Topbar.Name = "Topbar"
Topbar.Parent = MENU
Topbar.Active = true
Topbar.BackgroundColor = BrickColor.new("Really black")
Topbar.Draggable = true
Topbar.Position = UDim2.new(0.5, -100, 0.5, -13)
Topbar.Selectable = true
Topbar.Size = UDim2.new(0, 200, 0, 27)
Topbar.BorderColor = BrickColor.new("Really red")
Topbar.BorderSizePixel = 2


menu.Name = "menu"
menu.Parent = Topbar
menu.BackgroundColor = BrickColor.new("Really black")
menu.Position = UDim2.new(0, 0, 0, 27)
menu.Size = UDim2.new(0, 200, 0, 200)
menu.BorderColor = BrickColor.new("Really red")
menu.BorderSizePixel = 2

god.Name = "god"
god.Parent = menu
god.BackgroundColor = BrickColor.new("Really black")
god.BorderSizePixel = 2
god.Position = UDim2.new(0, 107, 0, 45)
god.Size = UDim2.new(0, 80, 0, 50)
god.Font = Enum.Font.Arial
god.FontSize = Enum.FontSize.Size18
god.Text = "FE GOD"
god.TextColor3 = Color3.new(1, 1, 1)
god.TextSize = 18
god.TextWrapped = true
god.BorderColor = BrickColor.new("Really red")

reach.Name = "reach"
reach.Parent = menu
reach.BackgroundColor = BrickColor.new("Really black")
reach.BorderSizePixel = 2
reach.Position = UDim2.new(0, 14, 0, 110)
reach.Size = UDim2.new(0, 80, 0, 50)
reach.Font = Enum.Font.Arial
reach.FontSize = Enum.FontSize.Size18
reach.Text = "FENCING REACH"
reach.TextColor3 = Color3.new(1, 1, 1)
reach.TextSize = 18
reach.TextWrapped = true
reach.BorderColor = BrickColor.new("Really red")

victim.Name = "victim"
victim.Parent = menu
victim.BackgroundColor3 = Color3.new(50, 50, 50)
victim.BorderColor = BrickColor.new("Really red")
victim.BorderSizePixel = 2
victim.Position = UDim2.new(0, 16, 0, 10)
victim.Size = UDim2.new(0, 170, 0, 25)
victim.Font = Enum.Font.Arial
victim.FontSize = Enum.FontSize.Size14
victim.Text = ""
victim.TextColor3 = Color3.new(0.1, 0.1, 0.1)
victim.TextSize = 14

tpto.Name = "goto"
tpto.Parent = menu
tpto.BackgroundColor = BrickColor.new("Really black")
tpto.BorderSizePixel = 2
tpto.Position = UDim2.new(0, 14, 0, 45)
tpto.Size = UDim2.new(0, 80, 0, 50)
tpto.Font = Enum.Font.Arial
tpto.FontSize = Enum.FontSize.Size18
tpto.Text = "TP TO"
tpto.TextColor3 = Color3.new(1, 1, 1)
tpto.TextSize = 18
tpto.BorderColor = BrickColor.new("Really red")

TextLabel.Parent = Topbar
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0, 43, 0, 0)
TextLabel.Size = UDim2.new(0, 115, 0, 27)
TextLabel.Font = Enum.Font.Arial
TextLabel.FontSize = Enum.FontSize.Size18
TextLabel.Text = "FE GUI by I low"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 18

insane.Name = "insane"
insane.Parent = menu
insane.BackgroundColor = BrickColor.new("Really black")
insane.BorderSizePixel = 2
insane.Position = UDim2.new(0, 107, 0, 110)
insane.Size = UDim2.new(0, 80, 0, 50)
insane.Font = Enum.Font.Arial
insane.FontSize = Enum.FontSize.Size18
insane.Text = "INSANE"
insane.TextColor3 = Color3.new(1, 1, 1)
insane.TextSize = 18
insane.TextWrapped = true
insane.BorderColor = BrickColor.new("Really red")

FeCheck.Parent = menu
FeCheck.BackgroundColor3 = Color3.new(1, 1, 1)
FeCheck.BackgroundTransparency = 1
FeCheck.Position = UDim2.new(0, 43, 0, 168)
FeCheck.Size = UDim2.new(0, 115, 0, 27)
FeCheck.Font = Enum.Font.Arial
FeCheck.FontSize = Enum.FontSize.Size18
FeCheck.Text = ""
FeCheck.TextColor3 = Color3.new(1, 1, 1)
FeCheck.TextSize = 13

tpto.MouseButton1Click:connect(function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players:FindFirstChild(victim.Text).Character.HumanoidRootPart.Position)
end)

god.MouseButton1Click:connect(function()
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

if FE == true then
    FeCheck.Text = "Filtering is Enabled"
elseif FE == false then
    FeCheck.Text = "Filtering is Disabled"
end

reach.MouseButton1Click:connect(function()
local foil=game.Players.LocalPlayer.Backpack.Foil
a=Instance.new("SelectionBox",foil.Handle)
a.Adornee=foil.Handle
foil.Handle.Size=Vector3.new(0.2,0.2,60)
foil.Equipped:connect(function()
while wait() do
game.Workspace[game.Players.LocalPlayer.Name].Foil.GripPos=Vector3.new(0,0,-30)
end
end)
end)

insane.MouseButton1Click:connect(function()
for i,v in pairs(game.Players:GetPlayers()) do
local AnimationId = "33796059"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = v.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(90)
end
end)