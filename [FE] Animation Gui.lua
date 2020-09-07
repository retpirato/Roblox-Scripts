--FE Animation Gui Made by Dark Magic Rblx in ROBLOX Studio, please give credits if you use this.
--You can use all and me in the Name Here Section!
gui = Instance.new("ScreenGui",game.CoreGui)
gui.Name = "FE Animation Gui by Dark Magic Rblx"
box = Instance.new("Frame",gui)
box.Size = UDim2.new(0,400,0,100)
box.Position = UDim2.new(0,800,0,500)
box.BackgroundTransparency = 0
box.BackgroundColor3 = Color3.new(167,0,0)
box.BorderSizePixel = 5
box.BorderColor3 = Color3.new(27,42,53)

o = Instance.new("TextBox",gui)
o.Name = "Speed Here"
o.Size = UDim2.new(0,150,0,15)
o.Position = UDim2.new(0,1000,0,590)
o.BackgroundTransparency = 0
o.BackgroundColor3 = Color3.new(0,0,0)
o.BorderSizePixel = 0
o.Font = "Arcade"
o.TextColor3 = Color3.new(255,255,255)
o.TextScaled = true
o.TextWrapped = true
o.Text = "Speed Here"

a = Instance.new("TextBox",gui)
a.Name = "ID Here"
a.Size = UDim2.new(0,300,0,25)
a.Position = UDim2.new(0,900,0,530)
a.BackgroundTransparency = 0
a.BackgroundColor3 = Color3.new(0,0,0)
a.BorderSizePixel = 0
a.Font = "Arcade"
a.TextColor3 = Color3.new(255,255,255)
a.TextScaled = true
a.TextWrapped = true
a.Text = "ID Here"

b = Instance.new("TextBox",gui)
b.Name = "Namehere"
b.Size = UDim2.new(0,300,0,25)
b.Position = UDim2.new(0,900,0,560)
b.BackgroundTransparency = 0
b.BackgroundColor3 = Color3.new(0,0,0)
b.BorderSizePixel = 0
b.Font = "Arcade"
b.TextColor3 = Color3.new(255,255,255)
b.TextScaled = true
b.TextWrapped = true
b.Text = "Name here"

c = Instance.new("TextButton",gui)
c.Name = "Animation"
c.Size = UDim2.new(0,100,0,40)
c.Position = UDim2.new(0,800,0,520)
c.BackgroundTransparency = 0
c.BackgroundColor3 = Color3.new(0,0,0)
c.BorderSizePixel = 0
c.Font = "Arcade"
c.TextColor3 = Color3.new(255,255,255)
c.TextScaled = true
c.TextWrapped = true
c.Text = "Animation"

d = Instance.new("TextButton",gui)
d.Name = "Player"
d.Size = UDim2.new(0,100,0,40)
d.Position = UDim2.new(0,800,0,560)
d.BackgroundTransparency = 0
d.BackgroundColor3 = Color3.new(0,0,0)
d.BorderSizePixel = 0
d.Font = "Arcade"
d.TextColor3 = Color3.new(255,255,255)
d.TextScaled = true
d.TextWrapped = true
d.Text = "Player"

cred = Instance.new("TextLabel",gui)
cred.Name = "Credits"
cred.Size = UDim2.new(0,400,0,20)
cred.Position = UDim2.new(0,800,0,500)
cred.BackgroundTransparency = 0
cred.BackgroundColor3 = Color3.new(0,0,0)
box.BorderSizePixel = 5
box.BorderColor3 = Color3.new(27,42,53)
cred.Font = "Arcade"
cred.FontSize = "Size24"
cred.TextColor3 = Color3.new(255,255,255)
cred.Text = "FE Animation Gui by Dark Magic Rblx!"
cred.TextSize = 19

c.MouseButton1Down:connect(function()
local AnimationId = gui["ID Here"].Text
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local Player = game.Players:FindFirstChild(gui.Namehere.Text)
if Player ~= nil then
local k = Player.Character.Humanoid:LoadAnimation(Anim)
k:Play()  
k:AdjustSpeed(gui["Speed Here"].Text)
end 
if gui.Namehere.Text =="me" then
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()  
k:AdjustSpeed(gui["Speed Here"].Text)	
end
if gui.Namehere.Text =="all" then
for i,v in pairs(game.Players:GetChildren()) do
local k = v.Character.Humanoid:LoadAnimation(Anim)
k:Play()  
k:AdjustSpeed(gui["Speed Here"].Text)	
end
end
end)
   

d.MouseButton1Down:connect(function()
local AnimationId = gui["ID Here"].Text
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local Player = game.Players:FindFirstChild(gui.Namehere.Text)
if Player ~= nil then
local k = Player.Character.Humanoid:LoadAnimation(Anim)
k:Play()  
k:AdjustSpeed(gui["Speed Here"].Text)
end 
if gui.Namehere.Text =="me" then
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()  
k:AdjustSpeed(gui["Speed Here"].Text)	
end
if gui.Namehere.Text =="all" then
for i,v in pairs(game.Players:GetChildren()) do
local k = v.Character.Humanoid:LoadAnimation(Anim)
k:Play()  
k:AdjustSpeed(gui["Speed Here"].Text)	
end
end
end)