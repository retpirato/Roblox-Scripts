-- Objects

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Credits = Instance.new("TextLabel")
local insaneall = Instance.new("TextButton")
local daball = Instance.new("TextButton")
local dabothers = Instance.new("TextButton")
local insaneothers = Instance.new("TextButton")

-- Properties

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.Active = true
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BackgroundTransparency = 0.5
Frame.Draggable = true
Frame.Position = UDim2.new(0, 341, 0, 41)
Frame.Size = UDim2.new(0, 358, 0, 423)

Credits.Name = "Credits"
Credits.Parent = Frame
Credits.BackgroundColor3 = Color3.new(0, 0, 0)
Credits.BackgroundTransparency = 0.5
Credits.Position = UDim2.new(0, 79, 0, 0)
Credits.Size = UDim2.new(0, 200, 0, 50)
Credits.Font = Enum.Font.SciFi
Credits.FontSize = Enum.FontSize.Size24
Credits.Text = "By Cozmo V3rm"
Credits.TextColor3 = Color3.new(0, 1, 1)
Credits.TextSize = 24

insaneall.Name = "insaneall"
insaneall.Parent = Frame
insaneall.BackgroundColor3 = Color3.new(0, 0, 0)
insaneall.BackgroundTransparency = 0.5
insaneall.Position = UDim2.new(0, 0, 0, 106)
insaneall.Size = UDim2.new(0, 155, 0, 50)
insaneall.Font = Enum.Font.SciFi
insaneall.FontSize = Enum.FontSize.Size18
insaneall.Text = "FE Insane all"
insaneall.TextColor3 = Color3.new(0, 1, 1)
insaneall.TextSize = 18

daball.Name = "daball"
daball.Parent = Frame
daball.BackgroundColor3 = Color3.new(0, 0, 0)
daball.BackgroundTransparency = 0.5
daball.Position = UDim2.new(0, 0, 0, 228)
daball.Size = UDim2.new(0, 155, 0, 50)
daball.Font = Enum.Font.SciFi
daball.FontSize = Enum.FontSize.Size18
daball.Text = "FE Dab all"
daball.TextColor3 = Color3.new(0, 1, 1)
daball.TextSize = 18

dabothers.Name = "dabothers"
dabothers.Parent = Frame
dabothers.BackgroundColor3 = Color3.new(0, 0, 0)
dabothers.BackgroundTransparency = 0.5
dabothers.Position = UDim2.new(0, 203, 0, 230)
dabothers.Size = UDim2.new(0, 155, 0, 50)
dabothers.Font = Enum.Font.SciFi
dabothers.FontSize = Enum.FontSize.Size18
dabothers.Text = "FE Dab others"
dabothers.TextColor3 = Color3.new(0, 1, 1)
dabothers.TextSize = 18

insaneothers.Name = "insaneothers"
insaneothers.Parent = Frame
insaneothers.BackgroundColor3 = Color3.new(0, 0, 0)
insaneothers.BackgroundTransparency = 0.5
insaneothers.Position = UDim2.new(0, 203, 0, 105)
insaneothers.Size = UDim2.new(0, 155, 0, 50)
insaneothers.Font = Enum.Font.SciFi
insaneothers.FontSize = Enum.FontSize.Size18
insaneothers.Text = "FE Insane others"
insaneothers.TextColor3 = Color3.new(0, 1, 1)
insaneothers.TextSize = 18

insaneall.MouseButton1Click:connect(function()
for i,v in pairs(game.Players:GetPlayers()) do
local AnimationId = "33796059"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = v.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(90)
end
end)
insaneothers.MouseButton1Click:connect(function()
for i,v in pairs(game.Players:GetPlayers()) do
if v.Name~=game.Players.LocalPlayer.Name then
local AnimationId = "33796059"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = v.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(90)
end
end
end)
dabothers.MouseButton1Click:connect(function()
for i,v in pairs(game.Players:GetPlayers()) do
if v.Name~=game.Players.LocalPlayer.Name then
local AnimationId = "248263260"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = v.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
end)
daball.MouseButton1Click:connect(function()
for i,v in pairs(game.Players:GetPlayers()) do
local AnimationId = "248263260"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = v.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end)