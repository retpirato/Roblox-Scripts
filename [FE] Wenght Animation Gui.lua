--[[ 
	Designed by Wength
	Plugin used "GUI to Lua V2.3
	The Scripts aren't mine, I only turned them into a GUI :)
--]]


local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local Dab = Instance.new("TextButton")
local Insane = Instance.new("TextButton")
local Retardation = Instance.new("TextButton")
local Wength = Instance.new("TextButton")
local Jump = Instance.new("TextButton")

ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.Active = true
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.BackgroundTransparency = 1
Frame.Draggable = true
Frame.Position = UDim2.new(0.22687225, 0, 0.287999988, 0)
Frame.Selectable = true
Frame.Size = UDim2.new(0.193832606, 100, 0.37439999, 100)

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BackgroundTransparency = 1
ImageLabel.Draggable = true
ImageLabel.Position = UDim2.new(-0.210526317, 0, 0.0803108811, 0)
ImageLabel.Selectable = true
ImageLabel.Size = UDim2.new(1.06666672, 100, 0.62176168, 100)
ImageLabel.ZIndex = 2

Dab.Name = "Dab"
Dab.Parent = ImageLabel
Dab.BackgroundColor3 = Color3.new(1, 1, 1)
Dab.BackgroundTransparency = 1
Dab.BorderColor3 = Color3.new(1, 1, 1)
Dab.BorderSizePixel = 4
Dab.Position = UDim2.new(0.373799026, 0, 0.269256622, 0)
Dab.Size = UDim2.new(-0.239401489, 200, -0.0295566507, 50)
Dab.ZIndex = 3
Dab.Font = Enum.Font.ArialBold
Dab.FontSize = Enum.FontSize.Size28
Dab.Text = "Dab"
Dab.TextColor3 = Color3.new(1, 0.666667, 0.556863)
Dab.TextScaled = true
Dab.TextSize = 28
Dab.TextStrokeTransparency = 0
Dab.TextWrapped = true

Insane.Name = "Insane"
Insane.Parent = ImageLabel
Insane.BackgroundColor3 = Color3.new(1, 1, 1)
Insane.BackgroundTransparency = 1
Insane.BorderColor3 = Color3.new(0, 0, 0)
Insane.BorderSizePixel = 5
Insane.Position = UDim2.new(0.373799026, 0, 0.389946282, 0)
Insane.Size = UDim2.new(-0.239401489, 200, -0.0295566507, 50)
Insane.ZIndex = 3
Insane.Font = Enum.Font.ArialBold
Insane.FontSize = Enum.FontSize.Size28
Insane.Text = "Insane"
Insane.TextColor3 = Color3.new(1, 0.666667, 0.556863)
Insane.TextScaled = true
Insane.TextSize = 28
Insane.TextStrokeTransparency = 0
Insane.TextWrapped = true

Retardation.Name = "Retardation"
Retardation.Parent = ImageLabel
Retardation.BackgroundColor3 = Color3.new(1, 1, 1)
Retardation.BackgroundTransparency = 1
Retardation.BorderColor3 = Color3.new(0, 0, 0)
Retardation.BorderSizePixel = 5
Retardation.Position = UDim2.new(0.357868046, 0, 0.519480467, 0)
Retardation.Size = UDim2.new(-0.223350257, 200, -0.0292207785, 50)
Retardation.ZIndex = 4
Retardation.Font = Enum.Font.ArialBold
Retardation.FontSize = Enum.FontSize.Size28
Retardation.Text = "Retardation"
Retardation.TextColor3 = Color3.new(1, 0.666667, 0.556863)
Retardation.TextScaled = true
Retardation.TextSize = 28
Retardation.TextStrokeTransparency = 0
Retardation.TextWrapped = true

Wength.Name = "Wength"
Wength.Parent = ImageLabel
Wength.Active = false
Wength.BackgroundColor3 = Color3.new(1, 1, 1)
Wength.BackgroundTransparency = 1
Wength.BorderColor3 = Color3.new(0, 0, 0)
Wength.BorderSizePixel = 5
Wength.Position = UDim2.new(0.357868016, 0, 0.811688304, 0)
Wength.Selectable = false
Wength.Size = UDim2.new(-0.223350257, 200, -0.0487012975, 50)
Wength.ZIndex = 4
Wength.Font = Enum.Font.ArialBold
Wength.FontSize = Enum.FontSize.Size28
Wength.Text = "Designed by Wength"
Wength.TextColor3 = Color3.new(1, 0, 0)
Wength.TextScaled = true
Wength.TextSize = 28
Wength.TextStrokeTransparency = 0
Wength.TextWrapped = true

Jump.Name = "Jump"
Jump.Parent = ImageLabel
Jump.BackgroundColor3 = Color3.new(1, 1, 1)
Jump.BackgroundTransparency = 1
Jump.BorderColor3 = Color3.new(1, 1, 1)
Jump.BorderSizePixel = 4
Jump.Position = UDim2.new(0.366184801, 0, 0.654276788, 0)
Jump.Size = UDim2.new(-0.239401489, 200, -0.0295566507, 50)
Jump.ZIndex = 4
Jump.Font = Enum.Font.ArialBold
Jump.FontSize = Enum.FontSize.Size28
Jump.Text = "Jump"
Jump.TextColor3 = Color3.new(1, 0.666667, 0.556863)
Jump.TextScaled = true
Jump.TextSize = 28
Jump.TextStrokeTransparency = 0
Jump.TextWrapped = true

local Button = script.Parent
function onClick() 
for _,player in pairs(game.Players:GetPlayers()) do
AnimationId = "248263260"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = player.Character.Humanoid:LoadAnimation(Anim) -- script will error if Humanoid doesnt exist in character
k:Play() --Play the animation
k:AdjustSpeed(1) --Set '1' to any value you want to adjust the animation speed.
end
end 

Dab.MouseButton1Down:connect(function()
	for _,player in pairs(game.Players:GetPlayers()) do
AnimationId = "248263260"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = player.Character.Humanoid:LoadAnimation(Anim) -- script will error if Humanoid doesnt exist in character
k:Play() --Play the animation
k:AdjustSpeed(1) --Set '1' to any value you want to adjust the animation speed.
end
end)

Insane.MouseButton1Down:connect(function()
	while wait(1) do
for _,player in pairs(game.Players:GetPlayers()) do
AnimationId = "33796059"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = player.Character.Humanoid:LoadAnimation(Anim) -- script will error if Humanoid doesnt exist in character
k:Play() --Play the animation
k:AdjustSpeed(99) --Set '1' to any value you want to adjust the animation speed.
end
end
end)

Jump.MouseButton1Down:connect(function()
	while wait(.5) do
for _,player in pairs(game.Players:GetPlayers()) do	
AnimationId = "125750702"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = player.Character.Humanoid:LoadAnimation(Anim) -- script will error if Humanoid doesnt exist in character
k:Play() --Play the animation
k:AdjustSpeed(1) --Set '1' to any value you want to adjust the animation speed.
end
end
end)

Retardation.MouseButton1Down:connect(function()
	for _,player in pairs(game.Players:GetPlayers()) do
AnimationId = "33796059"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = player.Character.Humanoid:LoadAnimation(Anim) -- script will error if Humanoid doesnt exist in character
k:Play() --Play the animation
k:AdjustSpeed(99) --Set '1' to any value you want to adjust the animation speed.
	end
	
	for _,player in pairs(game.Players:GetPlayers()) do
AnimationId = "248263260"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = player.Character.Humanoid:LoadAnimation(Anim) -- script will error if Humanoid doesnt exist in character
k:Play() --Play the animation
k:AdjustSpeed(99) --Set '1' to any value you want to adjust the animation speed.
	end
	
end)