local Gui = Instance.new("ScreenGui", game.CoreGui)
Gui.Name = "FE Animations"
local Background = Instance.new("Frame",Gui)
Background.Name = "Background"
Background.Active = true
Background.BackgroundColor3 = Color3.fromRGB(220,220,255)
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
Title.Text = "FE Animations [by illremember]"
Title.TextColor3 = Color3.fromRGB(20,20,25)
 
local Chop = Instance.new("TextButton", Background)
Chop.Name = "Chop"
Chop.BackgroundColor3 = Color3.fromRGB(20,20,20)
Chop.BackgroundTransparency = 0.1
Chop.BorderSizePixel = 0
Chop.Position = UDim2.new(0,120,0,30)
Chop.Size = UDim2.new(0,100,0,30)
Chop.Font = "SourceSansItalic"
Chop.FontSize = "Size18"
Chop.Text = "Chop"
Chop.TextColor3 = Color3.fromRGB(230,230,230)
Chop.TextWrapped = true
 
local Dance = Chop:Clone()
Dance.Name = "Dance"
Dance.Parent = Background
Dance.Position = UDim2.new(0,120,0,70)
Dance.Text = "Dance"
 
local ArmsOut = Chop:Clone()
ArmsOut.Name = "ArmsOut"
ArmsOut.Parent = Background
ArmsOut.Position = UDim2.new(0,10,0,110)
ArmsOut.Text = "ArmsOut"
 
local Stab = Chop:Clone()
Stab.Name = "Stab"
Stab.Parent = Background
Stab.Position = UDim2.new(0,10,0,30)
Stab.Text = "Stab"
 
local SmellyRun = Chop:Clone()
SmellyRun.Name = "SmellyRun"
SmellyRun.Parent = Background
SmellyRun.Position = UDim2.new(0,10,0,70)
SmellyRun.Text = "SmellyRun"
 
local rando = Chop:Clone()
rando.Name = "rando"
rando.Parent = Background
rando.Position = UDim2.new(0,120,0,110)
rando.Text = "rando"
 
local hmm = Chop:Clone()
hmm.Name = "hmm"
hmm.Parent = Background
hmm.Position = UDim2.new(0,120,0,150)
hmm.Text = "hmm"
 
local Kick = Chop:Clone()
Kick.Name = "Kick"
Kick.Parent = Background
Kick.Position = UDim2.new(0,10,0,150)
Kick.Size = UDim2.new(0,100,0,30)
Kick.Text = "Kick"
 
local Flying = Chop:Clone()
Flying.Name = "Flying"
Flying.Parent = Background
Flying.Position = UDim2.new(0,230,0,30)
Flying.Size = UDim2.new(0,100,0,30)
Flying.Text = "Flying"
 
local Arms = Chop:Clone()
Arms.Name = "Arms"
Arms.Parent = Background
Arms.Position = UDim2.new(0,230,0,70)
Arms.Size = UDim2.new(0,100,0,30)
Arms.Text = "Arms"
 
local Sword = Chop:Clone()
Sword.Name = "Sword"
Sword.Parent = Background
Sword.Position = UDim2.new(0,230,0,110)
Sword.Size = UDim2.new(0,100,0,30)
Sword.Text = "Sword"
 
local Insane = Chop:Clone()
Insane.Name = "Insane"
Insane.Parent = Background
Insane.Position = UDim2.new(0,230,0,150)
Insane.Size = UDim2.new(0,100,0,30)
Insane.Text = "Insane"
 
--
 local plr = game.Players.LocalPlayer
 
local mouse = plr:GetMouse()
 
lpc = game.Players.LocalPlayer.Character
 
weld1 = Instance.new("Weld")
 
Chop.MouseButton1Down:connect(function()
local gg = mouse.Target
if gg ~= nil then
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "33169596"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
end)
 
Insane.MouseButton1Down:connect(function()
local gg = mouse.Target
if gg ~= nil then
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "33796059"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(10000)
end
end
end)
 
Arms.MouseButton1Down:connect(function()
local gg = mouse.Target
if gg ~= nil then
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "33169583"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
end)
 
Sword.MouseButton1Click:connect(function()
local gg = mouse.Target
if gg ~= nil then
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "35978879"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
end)
 
hmm.MouseButton1Down:connect(function()
local gg = mouse.Target
if gg ~= nil then
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "33855276"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
end)
 
rando.MouseButton1Down:connect(function()
local gg = mouse.Target
if gg ~= nil then
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "48977286"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
end)
 
Dance.MouseButton1Down:connect(function()
local gg = mouse.Target
if gg ~= nil then
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "35654637"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
end)
 
Stab.MouseButton1Down:connect(function()
local gg = mouse.Target
if gg ~= nil then
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "66703241"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
end)
 
Kick.MouseButton1Down:connect(function()
local gg = mouse.Target
if gg ~= nil then
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "45737360"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
end)
 
Flying.MouseButton1Down:connect(function()
local gg = mouse.Target
if gg ~= nil then
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "46196309"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(0.001)
end
end
end)
 
SmellyRun.MouseButton1Down:connect(function()
local gg = mouse.Target
if gg ~= nil then
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "30235165"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
end)
 
ArmsOut.MouseButton1Down:connect(function()
local gg = mouse.Target
if gg ~= nil then
for i,v in pairs(game.Players:GetPlayers()) do
AnimationId = "27432691"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end
end)