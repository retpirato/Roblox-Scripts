local Gui = Instance.new("ScreenGui", game.CoreGui)
Gui.Name = "FE Animations"
local Background = Instance.new("Frame",Gui)
Background.Name = "Background"
Background.Active = true
Background.BackgroundColor3 = Color3.fromRGB(220,190,200)
Background.Transparency = 0.3
Background.BorderSizePixel = 5
Background.Draggable = true
Background.Position = UDim2.new(0,300,0,300)
Background.Size = UDim2.new(0,345,0,190)
local Title = Instance.new("TextLabel",Background)
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0,0,0,-80)
Title.Size = UDim2.new(0,290,1,0)
Title.Font = "SourceSansLight"
Title.FontSize = "Size18"
Title.Text = "FE Animations [by illremember] IMPROVED"
Title.TextColor3 = Color3.fromRGB(20,20,25)
 
local BarrelRoll = Instance.new("TextButton", Background)
BarrelRoll.Name = "BarrelRoll"
BarrelRoll.BackgroundColor3 = Color3.fromRGB(20,20,20)
BarrelRoll.BackgroundTransparency = 0.1
BarrelRoll.BorderSizePixel = 0
BarrelRoll.Position = UDim2.new(0,120,0,30)
BarrelRoll.Size = UDim2.new(0,100,0,30)
BarrelRoll.Font = "SourceSansItalic"
BarrelRoll.FontSize = "Size18"
BarrelRoll.Text = "BarrelRoll"
BarrelRoll.TextColor3 = Color3.fromRGB(230,230,230)
BarrelRoll.TextWrapped = true
 
local Dab = BarrelRoll:Clone()
Dab.Name = "Dab"
Dab.Parent = Background
Dab.Position = UDim2.new(0,120,0,70)
Dab.Text = "Dab"
 
local Crouch = BarrelRoll:Clone()
Crouch.Name = "Crouch"
Crouch.Parent = Background
Crouch.Position = UDim2.new(0,10,0,110)
Crouch.Text = "Crouch"
 
local Scream = BarrelRoll:Clone()
Scream.Name = "Scream"
Scream.Parent = Background
Scream.Position = UDim2.new(0,10,0,30)
Scream.Text = "Scream"
 
local HeadOff = BarrelRoll:Clone()
HeadOff.Name = "HeadOff"
HeadOff.Parent = Background
HeadOff.Position = UDim2.new(0,10,0,70)
HeadOff.Text = "HeadOff"
 
local LayDown = BarrelRoll:Clone()
LayDown.Name = "LayDown"
LayDown.Parent = Background
LayDown.Position = UDim2.new(0,120,0,110)
LayDown.Text = "LayDown"
 
local hmm2 = BarrelRoll:Clone()
hmm2.Name = "hmm2"
hmm2.Parent = Background
hmm2.Position = UDim2.new(0,120,0,150)
hmm2.Text = "hmm2"
 
local HeadTHROW = BarrelRoll:Clone()
HeadTHROW.Name = "HeadTHROW"
HeadTHROW.Parent = Background
HeadTHROW.Position = UDim2.new(0,10,0,150)
HeadTHROW.Size = UDim2.new(0,100,0,30)
HeadTHROW.Text = "HeadTHROW"
 
local Scared = BarrelRoll:Clone()
Scared.Name = "Scared"
Scared.Parent = Background
Scared.Position = UDim2.new(0,230,0,30)
Scared.Size = UDim2.new(0,100,0,30)
Scared.Text = "Scared"
 
local WARNING = BarrelRoll:Clone()
WARNING.Name = "WARNING"
WARNING.Parent = Background
WARNING.Position = UDim2.new(0,230,0,70)
WARNING.Size = UDim2.new(0,100,0,30)
WARNING.Text = "WARNING"
 
local LoopHead = BarrelRoll:Clone()
LoopHead.Name = "LoopHead"
LoopHead.Parent = Background
LoopHead.Position = UDim2.new(0,230,0,110)
LoopHead.Size = UDim2.new(0,100,0,30)
LoopHead.Text = "LoopHead"
 
local armturbine = BarrelRoll:Clone()
armturbine.Name = "armturbine"
armturbine.Parent = Background
armturbine.Position = UDim2.new(0,230,0,150)
armturbine.Size = UDim2.new(0,100,0,30)
armturbine.Text = "armturbine"
 
--
 local plr = game.Players.LocalPlayer
 
local mouse = plr:GetMouse()
 
lpc = game.Players.LocalPlayer.Character
 
weld1 = Instance.new("Weld")
 
BarrelRoll.MouseButton1Down:connect(function()
local gg = mouse.Target
if gg ~= nil then
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "136801964"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
end)
 
armturbine.MouseButton1Down:connect(function()
local gg = mouse.Target
if gg ~= nil then
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "259438880"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(100)
end
end
end)
 
 
LoopHead.MouseButton1Click:connect(function()
local gg = mouse.Target
if gg ~= nil then
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "35154961"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
while wait(0.00703125) do
k:Play()
k:AdjustSpeed(640)
end
end
end
end)
 
hmm2.MouseButton1Down:connect(function()
local gg = mouse.Target
if gg ~= nil then
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "148840371"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
end)
 
LayDown.MouseButton1Down:connect(function()
local gg = mouse.Target
if gg ~= nil then
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "282574440"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
end)
 
Dab.MouseButton1Down:connect(function()
local gg = mouse.Target
if gg ~= nil then
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "248263260"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
end)
 
Scream.MouseButton1Down:connect(function()
local gg = mouse.Target
if gg ~= nil then
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "180611870"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
end)
 
HeadTHROW.MouseButton1Down:connect(function()
local gg = mouse.Target
if gg ~= nil then
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "35154961"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
end)
 
Scared.MouseButton1Down:connect(function()
local gg = mouse.Target
if gg ~= nil then
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "180612465"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
end)
 
HeadOff.MouseButton1Down:connect(function()
local gg = mouse.Target
if gg ~= nil then
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "121572214"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
end)
 
Crouch.MouseButton1Down:connect(function()
local gg = mouse.Target
if gg ~= nil then
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "182724289"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
end)