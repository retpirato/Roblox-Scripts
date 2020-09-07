--Ishida Sword And Armor--
p = game.Players.LocalPlayer
char = p.Character
torso = char.Torso
neck = char.Torso.Neck
hum = char.Humanoid

dot = false
des = false
local ChatService = game:GetService("Chat")
local player = game.Players.LocalPlayer
char = player.Character
hum = char.Humanoid
torso = hum.Torso
lig = Instance.new("PointLight",player.Character.Torso)
lig.Color=Color3.new(0,0,255)
m=player:GetMouse()
bb = Instance.new("BillboardGui",player.Character.Head)
bb.Enabled = true
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,200,0,50)
bb.StudsOffset = Vector3.new(0,1,0)
gui=Instance.new("TextBox",bb)
gui.Text = "Wanderer"
gui.Size = UDim2.new(0,133,0,45)
gui.Position=UDim2.new(0,57,0,-40)
gui.TextColor3 = Color3.new(0/255,0/255,255/255)
gui.BackgroundColor3=Color3.new(0/255,0/255,255/255)
gui.TextWrapped = true
gui.TextScaled = true
gui.TextXAlignment = "Left"
gui.TextYAlignment = "Top"
gui.Visible = false
gui.BorderColor3 = Color3.new(0,0,255)
 
gui1=Instance.new("TextButton",bb)
gui1.Position=UDim2.new(0,5,0,-43)
gui1.Size = UDim2.new(0,190,0,51)
 
gui1.TextColor3 = Color3.new(0/255,0/255,255/255)
gui1.BackgroundColor3=Color3.new(0/255,0/255,255/255)
 
Debounces = {
["IsSpeech"]=false;
}
 
 
Speeches = {
"rbxassetid://316403916",
"rbxassetid://316403844",
"rbxassetid://316403787",
"rbxassetid://316403490"
};
 
 
 
 
function swait(num)
if num==0 or num==nil then
game:service'RunService'.Stepped:wait(0)
else
for i=0,num do
game:service'RunService'.Stepped:wait(0)
end
end
end
 
 
for _,v in pairs(Speeches) do
   
    game:GetService("ContentProvider"):Preload(v)
   
end
 
so = function(id,par,vol,pit)
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait()
sou:play()
game:GetService("Debris"):AddItem(sou,sou.TimeLength)
end))
end
 
 
 
 function speech()
 if Debounces.IsSpeech then return end
 Debounces.IsSpeech = true
 
 so(""..Speeches[math.random(1,#Speeches)].."",torso,1,1)
 
swait()
 
 Debounces.IsSpeech = false
 end
 
 
gui1.Visible = false
img = Instance.new("ImageLabel",bb)
img.Size = UDim2.new(0,46,0,47)
img.Position = UDim2.new(0,10,0,-41)
img.Image = "rbxassetid://698463405"
img.BorderColor3 = Color3.new(0,0,0)
img.Visible = false
asd = Instance.new("Sound",player.Character.Torso)
asd.SoundId = "http://www.roblox.com/asset/?id = 565939471"
 
asd1 = Instance.new("Sound",player.Character.Torso)
asd1.SoundId = "http://www.roblox.com/asset/?id = 565939471"
 
asd2 = Instance.new("Sound",player.Character.Torso)
asd2.SoundId = "http://www.roblox.com/asset/?id = 565939471"
asd2.Looped = true
asd3 = Instance.new("Sound",player.Character.Torso)
asd3.SoundId = "http://www.roblox.com/asset/?id = 565939471"
asd3.Looped = true
asd4 = Instance.new("Sound",player.Character.Torso)
asd4.SoundId = "http://www.roblox.com/asset/?id = 565939471"
asd4.Looped = false
asd5 = Instance.new("Sound",player.Character.Torso)
asd5.SoundId = "http://www.roblox.com/asset/?id = 0"
asd5.Looped = true
dunkd = Instance.new("Sound",player.Character.Torso)
dunkd.SoundId = "http://www.roblox.com/asset/?id = 565939471"
dunkd.Looped = false
function play(play)
asd:Play()
asd1:Play()
end
eye = Instance.new("Part",player.Character)
eye.BrickColor = BrickColor.new("Toothpaste")
eye.Material = "Neon"
eye.FormFactor = 3
eye.Shape = "Ball"
eye.Size = Vector3.new(0.37,0.37,0.1)
weld = Instance.new("Weld",eye)
weld.Part0 = eye
weld.Part1 = player.Character.Head
weld.C0 = CFrame.new(0.1,-0.2,0.45)
eye.Transparency = 1
-- listen for their chatting
player.Chatted:connect(function(message)
a = string.len(message)
gui.Text = "* "
gui.Visible = true
gui1.Visible = true
des = false
img.Visible = true
print(a)
if dot == false then
for i = 1,string.len(message) do wait(0.07)
gui.Text =gui.Text..message:sub(i,i)
 
play()
end
end
 
des = true
end)
m.KeyDown:connect(function(k)
if k == "" then
asd2:Play()
eye.Transparency = 0
 
elseif k == "" then
speech()
end
end)
m.KeyDown:connect(function(k)
if k == "" then
eye.Transparency = 1
asd3:Play()
end
end)
m.KeyDown:connect(function(k)
if k == "" then
eye.Transparency = 0
asd4:Play()
end
end)
m.KeyDown:connect(function(k)
if k == "" then
eye.Transparency = 1
asd5:Play()
end
end)
m.KeyDown:connect(function(k)
if k == "l" then
 
img.Image = "rbxassetid://46829824"
end
end)
m.KeyDown:connect(function(k)
if k == "k" then
img.Image = "rbxassetid://296125372"
end
end)
m.KeyDown:connect(function(k)
if k == "j" then
img.Image = "rbxassetid://383104729"
end
end)
m.KeyDown:connect(function(k)
if k == "" then
img.Image = "rbxassetid://388167154"
print("You take your very last breath...")
asdd = Instance.new("Sound",player.Character.Torso)
asdd.SoundId = "http://www.roblox.com/asset/?id = 357417055"
asdd.Looped = false
spawn(function()
wait()
asdd:Play()
end)
wait(2)
asddd = Instance.new("Sound",player.Character.Torso)
asddd.SoundId = "http://www.roblox.com/asset/?id = 387183672"
asddd.Looped = false
spawn(function()
wait()
asddd:Play()
end)
wait(2)
asdded = Instance.new("Sound",player.Character.Torso)
asdded.SoundId = "http://www.roblox.com/asset/?id = 387187707"
asdded.Looped = false
spawn(function()
wait()
asdded:Play()
end)
char:BreakJoints()
end
end)
m.KeyDown:connect(function(k)
if k == "x" then
if des == true then
gui.Visible = false
gui.Text = "* "
gui1.Visible = false
img.Visible = false
end
end
end)
m.KeyDown:connect(function(k)
if k == "f" then
asd3:Stop()
asd2:Stop()
asd4:Stop()
dunkd:Stop()
eye.Transparency = 1
asd5:Stop()
end
end)
m.KeyDown:connect(function(k)
if k == "" then
dunkd = Instance.new("Sound",player.Character.Torso)
dunkd.SoundId = "http://www.roblox.com/asset/?id = 333078694"
dunkd.Looped = false
dunkd:Play()
end
end)
m.KeyDown:connect(function(k)
if k == "" then
img.Image = "rbxassetid://378198656"
end
end)
--
--
plr = game.Players.LocalPlayer
char = plr.Character
hum = game.Players.LocalPlayer.Character.Humanoid
to = game.Players.LocalPlayer.Character.Torso
he = game.Players.LocalPlayer.Character.Head
neck = char.Torso.Neck
rar = game.Players.LocalPlayer.Character["Right Arm"]
lar = game.Players.LocalPlayer.Character["Left Arm"]
rla = game.Players.LocalPlayer.Character["Right Leg"]
lla = game.Players.LocalPlayer.Character["Left Leg"]
local maincolor = Color3.new(255/255,85/255,0/255)
local blu = Color3.new(0/255,0/255,255/255)
local gree = Color3.new(0/255,255/255,0/255)
local red = Color3.new(255/255,0/255,0/255)
local dred = Color3.new(0/255,0/255,255/255)
local purp = Color3.new(100/255,0/255,255/255)
local pt1 = NumberSequenceKeypoint.new(0,50,0)
local pt2 = NumberSequenceKeypoint.new(1,0,0)
local pt1a = NumberSequenceKeypoint.new(0,7,0)
local pt2a = NumberSequenceKeypoint.new(1,0,0)
local bigg1 = NumberSequenceKeypoint.new(0,10,0)
local bigg2 = NumberSequenceKeypoint.new(1,0,0)
vt = Vector3.new
bc = BrickColor.new
hum.WalkSpeed = 0
hum.JumpPower = 100
aura = Instance.new("Sound",to)
aura.SoundId = "rbxassetid://260567626"
aura.Looped = false
aura.Volume = 10
lol = Instance.new("Sound",to)
lol.SoundId = "rbxassetid://137473066"
lol.Looped = false
lol.Volume = 10
beyond = Instance.new("Sound",to)
beyond.SoundId = "rbxassetid://256643436"
beyond.Looped = false
beyond.Volume = 10
hum.WalkSpeed = 50
t = Instance.new("ParticleEmitter",to)
t.Rate = 0
t.Size = NumberSequence.new({pt1a,pt2a})
t.Lifetime = NumberRange.new(1)
t.RotSpeed = NumberRange.new(1000000)
t.Texture = "rbxassetid://666724084"
t.VelocitySpread= 50
t.LightEmission = 1
h = Instance.new("ParticleEmitter",he)
h.Rate = 0
h.Size = NumberSequence.new({pt1a,pt2a})
h.Lifetime = NumberRange.new(1)
h.RotSpeed = NumberRange.new(1000000)
h.Texture = "rbxassetid://666724084"
h.VelocitySpread = 90
h.LightEmission = 1
rl = Instance.new("ParticleEmitter",rla)
rl.Rate = 0
rl.Size = NumberSequence.new({pt1a,pt2a})
rl.Lifetime = NumberRange.new(1)
rl.RotSpeed = NumberRange.new(1000000)
rl.Texture = "rbxassetid://666724084"
rl.VelocitySpread = 50
rl.LightEmission = 1
ll = Instance.new("ParticleEmitter",lla)
ll.Rate = 0
ll.Size = NumberSequence.new({pt1a,pt2a})
ll.Lifetime = NumberRange.new(1)
ll.RotSpeed = NumberRange.new(1000000)
ll.Texture = "rbxassetid://666724084"
ll.VelocitySpread = 50
ll.LightEmission = 1
ra = Instance.new("ParticleEmitter",rar)
ra.Rate = 0
ra.Size = NumberSequence.new({pt1a,pt2a})
ra.Lifetime = NumberRange.new(1)
ra.RotSpeed = NumberRange.new(1000000)
ra.Texture = "rbxassetid://666724084"
ra.VelocitySpread = 50
ra.LightEmission = 1

game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
if msg == "boost" then
aura:Play()
h.Rate = 100
t.Rate = 100
rl.Rate = 100
ll.Rate = 100
h.Color = ColorSequence.new(blu)
h.Transparency = NumberSequence.new(0.4)
t.Color = ColorSequence.new(blu)
t.Transparency = NumberSequence.new(0.4)
rl.Color = ColorSequence.new(blu)
rl.Transparency = NumberSequence.new(0.4)
ll.Color = ColorSequence.new(blu)
ll.Transparency = NumberSequence.new(0.4)
ra.Color = ColorSequence.new(blu)
ra.Transparency = NumberSequence.new(0.4)
la.Color = ColorSequence.new(blu)
la.Transparency = NumberSequence.new(0.4)
h.Texture = "rbxassetid://666724084"
t.Texture = "rbxassetid://666724084"
rl.Texture = "rbxassetid://666724084"
ll.Texture = "rbxassetid://666724084"
ra.Texture = "rbxassetid://666724084"
la.Texture = "rbxassetid://666724084"
hum.WalkSpeed = 100
end
end)

game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
if msg == "calm" then
lol:Play()
h.Rate = 0
t.Rate = 0
rl.Rate = 0
ll.Rate = 0
ra.Rate = 0
la.Rate = 0
hum.WalkSpeed = 100
end
end)

game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
if msg == "ultimate" then
beyond:Play()
t.Size = NumberSequence.new(10)
t.Lifetime = NumberRange.new(5)
t.Texture = "rbxassetid://243098098"
t.Color = ColorSequence.new(dred)
t.VelocitySpread = 360
t.ZOffset = 10
t.Rate = 30
bonus1 = Instance.new("ParticleEmitter",rar)
bonus1.Texture = "rbxassetid://257173628"
bonus1.VelocitySpread = 360
bonus1.Rate = 20
bonus1.Lifetime = NumberRange.new(5)
bonus1.Size = NumberSequence.new(10)
bonus1.Color = ColorSequence.new(dred)
bonus1.LightEmission = 1
bonus1.RotSpeed = NumberRange.new(1000000)
bonus1.LockedToPart = true
bonus2 = Instance.new("ParticleEmitter",lar)
bonus2.Texture = "rbxassetid://257173628"
bonus2.VelocitySpread = 360
bonus2.Rate = 10
bonus2.Lifetime = NumberRange.new(5)
bonus2.Size = NumberSequence.new(10)
bonus2.Color = ColorSequence.new(dred)
bonus2.LightEmission = 1
bonus2.RotSpeed = NumberRange.new(1000000)
bonus2.LockedToPart = true
wait(1)
hum.WalkSpeed = 200
hum.JumpPower = 150
end
end)

game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
if msg == "summon" then
p1 = Instance.new("Part",workspace)
p1.Size = Vector3.new(0,0,0)
p1.TopSurface = "Smooth"
p1.BottomSurface = "Smooth"
p1.CFrame = CFrame.new(to.Position + Vector3.new(0,-3,0))
p1.Parent = game.Players.LocalPlayer.Character.Humanoid
p1.Anchored = true
p1.BrickColor = BrickColor.new("Cyan")
p1.Transparency = 0.6
p1.Material = "Neon"
p1.CanCollide = false
p1.Touched:connect(function(h) if
h.Parent ~= game.Players.LocalPlayer.Character and h.Name ~= "Base" then h:Destroy() end end)
p2 = Instance.new("Part",workspace)
p2.Size = Vector3.new(1,25,30)
p2.TopSurface = "Smooth"
p2.BottomSurface = "Smooth"
p2.CFrame = CFrame.new(p1.Position + Vector3.new(15,p2.Size.Y/2,0))
p2.Parent = game.Players.LocalPlayer.Character.Humanoid
p2.Anchored = true
p2.BrickColor = BrickColor.new("Cyan")
p2.Transparency = 0.6
p2.Material = "Neon"
p2.Touched:connect(function(h) if
h.Parent ~= game.Players.LocalPlayer.Character and h.Name ~= "Base" then h:Destroy() end end)
p3 = Instance.new("Part",workspace)
p3.Size = Vector3.new(1,25,30)
p3.TopSurface = "Smooth"
p3.BottomSurface = "Smooth"
p3.CFrame = CFrame.new(p1.Position + Vector3.new(-15,p2.Size.Y/2,0))
p3.Parent = game.Players.LocalPlayer.Character.Humanoid
p3.Anchored = true
p3.BrickColor = BrickColor.new("Cyan")
p3.Transparency = 0.6
p3.Material = "Neon"
p3.Touched:connect(function(h) if
h.Parent ~= game.Players.LocalPlayer.Character and h.Name ~= "Base" then h:Destroy() end end)
p4 = Instance.new("Part",workspace)
p4.Size = Vector3.new(30,25,1)
p4.TopSurface = "Smooth"
p4.BottomSurface = "Smooth"
p4.CFrame = CFrame.new(p1.Position + Vector3.new(0,p2.Size.Y/2,15))
p4.Parent = game.Players.LocalPlayer.Character.Humanoid
p4.Anchored = true
p4.BrickColor = BrickColor.new("Cyan")
p4.Transparency = 0.6
p4.Material = "Neon"
p4.Touched:connect(function(h) if
h.Parent ~= game.Players.LocalPlayer.Character and h.Name ~= "Base" then h:Destroy() end end)
p5 = Instance.new("Part",workspace)
p5.Size = Vector3.new(30,25,1)
p5.TopSurface = "Smooth"
p5.BottomSurface = "Smooth"
p5.CFrame = CFrame.new(p1.Position + Vector3.new(0,p2.Size.Y/2,-15))
p5.Parent = game.Players.LocalPlayer.Character.Humanoid
p5.Anchored = true
p5.BrickColor = BrickColor.new("Cyan")
p5.Transparency = 0.6
p5.Material = "Neon"
p5.Touched:connect(function(h) if
h.Parent ~= game.Players.LocalPlayer.Character and h.Name ~= "Base" then h:Destroy() end end)
p6 = Instance.new("Part",workspace)
p6.Size = Vector3.new(30,1,30)
p6.TopSurface = "Smooth"
p6.BottomSurface = "Smooth"
p6.Position = workspace.LocalPlayer.Torso.Position + Vector3.new(0,23,0)
p6.Parent = game.Players.LocalPlayer.Character.Humanoid
p6.Anchored = true
p6.BrickColor = BrickColor.new("Cyan")
p6.Transparency = 0.6
p6.Material = "Neon"
p6.Touched:connect(function(h) if
h.Parent ~= game.Players.LocalPlayer.Character and h.Name ~= "Base" then h:Destroy() end end)
for i=1,4 do 
wait(.05)
p1.Transparency = 1-(i/10)
p2.Transparency = 1-(i/10)
p3.Transparency = 1-(i/10)
p4.Transparency = 1-(i/10)
p5.Transparency = 1-(i/10)
p6.Transparency = 1-(i/10)
end
p1p = Instance.new("ParticleEmitter",p1)
p1p.Rate = 200
p1p.VelocitySpread = 360
p1p.Texture = "rbxassetid://199910011"
p1p.Color = ColorSequence.new(blu)
p1p.Size = NumberSequence.new({pt1a,pt2a})
p1p.LightEmission = 1
p1p.ZOffset = 10
p1p.RotSpeed = NumberRange.new(10)
p2p = Instance.new("ParticleEmitter",p2)
p2p.Rate = 200
p2p.VelocitySpread = 360
p2p.Texture = "rbxassetid://199910011"
p2p.Color = ColorSequence.new(blu)
p2p.Size = NumberSequence.new({pt1a,pt2a})
p2p.LightEmission = 1
p2p.ZOffset = 10
p2p.RotSpeed = NumberRange.new(10)
p3p = Instance.new("ParticleEmitter",p3)
p3p.Rate = 200
p3p.VelocitySpread = 360
p3p.Texture = "rbxassetid://199910011"
p3p.Color = ColorSequence.new(blu)
p3p.Size = NumberSequence.new({pt1a,pt2a})
p3p.LightEmission = 1
p3p.ZOffset = 10
p3p.RotSpeed = NumberRange.new(10)
p4p = Instance.new("ParticleEmitter",p4)
p4p.Rate = 200
p4p.VelocitySpread = 360
p4p.Texture = "rbxassetid://199910011"
p4p.Color = ColorSequence.new(blu)
p4p.Size = NumberSequence.new({pt1a,pt2a})
p4p.LightEmission = 1
p4p.ZOffset = 10
p4p.RotSpeed = NumberRange.new(10)
p5p = Instance.new("ParticleEmitter",p5)
p5p.Rate = 200
p5p.VelocitySpread = 360
p5p.Texture = "rbxassetid://199910011"
p5p.Color = ColorSequence.new(blu)
p5p.Size = NumberSequence.new({pt1a,pt2a})
p5p.LightEmission = 1
p5p.ZOffset = 10
p5p.RotSpeed = NumberRange.new(10)
p6p = Instance.new("ParticleEmitter",p6)
p6p.Rate = 200
p6p.VelocitySpread = 360
p6p.Texture = "rbxassetid://199910011"
p6p.Color = ColorSequence.new(blu)
p6p.Size = NumberSequence.new({pt1a,pt2a})
p6p.LightEmission = 10
p6p.ZOffset = 1
p6p.RotSpeed = NumberRange.new(10)
end
end)

game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
if msg == "destroy" then
p1p.Enabled = false
p2p.Enabled = false
p3p.Enabled = false
p4p.Enabled = false
p5p.Enabled = false
p6p.Enabled = false
for i=1,10 do
wait(.05)
p1.Transparency = i/10
p2.Transparency = i/10
p3.Transparency = i/10
p4.Transparency = i/10
p5.Transparency = i/10
p6.Transparency = i/10
end
wait(10)
p1:Destroy()
p2:Destroy()
p3:Destroy()
p4:Destroy()
p5:Destroy()
p6:Destroy()
end
end)
--------
game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
if msg == "shelter" then
p1 = Instance.new("Part",workspace)
p1.Size = Vector3.new(0,0,0)
p1.TopSurface = "Smooth"
p1.BottomSurface = "Smooth"
p1.CFrame = CFrame.new(to.Position + Vector3.new(0,-3,0))
p1.Parent = game.Players.LocalPlayer.Character.Humanoid
p1.Anchored = true
p1.BrickColor = BrickColor.new("Dark blue")
p1.Transparency = 0.6
p1.Material = "Neon"
p1.CanCollide = false
p1.Touched:connect(function(h) if
h.Parent ~= game.Players.LocalPlayer.Character and h.Name ~= "Base" then h:Destroy() end end)
p2 = Instance.new("Part",workspace)
p2.Size = Vector3.new(1,100,100)
p2.TopSurface = "Smooth"
p2.BottomSurface = "Smooth"
p2.CFrame = CFrame.new(p1.Position + Vector3.new(50,p2.Size.Y/2,0))
p2.Parent = game.Players.LocalPlayer.Character.Humanoid
p2.Anchored = true
p2.BrickColor = BrickColor.new("Dark blue")
p2.Transparency = 0.6
p2.Material = "Neon"
p2.Touched:connect(function(h) if
h.Parent ~= game.Players.LocalPlayer.Character and h.Name ~= "Base" then h:Destroy() end end)
p3 = Instance.new("Part",workspace)
p3.Size = Vector3.new(1,100,100)
p3.TopSurface = "Smooth"
p3.BottomSurface = "Smooth"
p3.CFrame = CFrame.new(p1.Position + Vector3.new(-50,p2.Size.Y/2,0))
p3.Parent = game.Players.LocalPlayer.Character.Humanoid
p3.Anchored = true
p3.BrickColor = BrickColor.new("Dark blue")
p3.Transparency = 0.6
p3.Material = "Neon"
p3.Touched:connect(function(h) if
h.Parent ~= game.Players.LocalPlayer.Character and h.Name ~= "Base" then h:Destroy() end end)
p4 = Instance.new("Part",workspace)
p4.Size = Vector3.new(100,100,1)
p4.TopSurface = "Smooth"
p4.BottomSurface = "Smooth"
p4.CFrame = CFrame.new(p1.Position + Vector3.new(0,p2.Size.Y/2,50))
p4.Parent = game.Players.LocalPlayer.Character.Humanoid
p4.Anchored = true
p4.BrickColor = BrickColor.new("Dark blue")
p4.Transparency = 0.6
p4.Material = "Neon"
p4.Touched:connect(function(h) if
h.Parent ~= game.Players.LocalPlayer.Character and h.Name ~= "Base" then h:Destroy() end end)
p5 = Instance.new("Part",workspace)
p5.Size = Vector3.new(100,100,1)
p5.TopSurface = "Smooth"
p5.BottomSurface = "Smooth"
p5.CFrame = CFrame.new(p1.Position + Vector3.new(0,p2.Size.Y/2,-50))
p5.Parent = game.Players.LocalPlayer.Character.Humanoid
p5.Anchored = true
p5.BrickColor = BrickColor.new("Dark blue")
p5.Transparency = 0.6
p5.Material = "Neon"
p5.Touched:connect(function(h) if
h.Parent ~= game.Players.LocalPlayer.Character and h.Name ~= "Base" then h:Destroy() end end)
p6 = Instance.new("Part",workspace)
p6.Size = Vector3.new(100,1,100)
p6.TopSurface = "Smooth"
p6.BottomSurface = "Smooth"
p6.Position = workspace.LocalPlayer.Torso.Position + Vector3.new(0,23,0)
p6.Parent = game.Players.LocalPlayer.Character.Humanoid
p6.Anchored = true
p6.BrickColor = BrickColor.new("Dark blue")
p6.Transparency = 0.6
p6.Material = "Neon"
p6.Touched:connect(function(h) if
h.Parent ~= game.Players.LocalPlayer.Character and h.Name ~= "Base" then h:Destroy() end end)
for i=1,4 do 
wait(.05)
p1.Transparency = 1-(i/10)
p2.Transparency = 1-(i/10)
p3.Transparency = 1-(i/10)
p4.Transparency = 1-(i/10)
p5.Transparency = 1-(i/10)
p6.Transparency = 1-(i/10)
end
p1p = Instance.new("ParticleEmitter",p1)
p1p.Rate = 200
p1p.VelocitySpread = 360
p1p.Texture = "rbxassetid://199910011"
p1p.Color = ColorSequence.new(blu)
p1p.Size = NumberSequence.new({pt1a,pt2a})
p1p.LightEmission = 1
p1p.ZOffset = 10
p1p.RotSpeed = NumberRange.new(10)
p2p = Instance.new("ParticleEmitter",p2)
p2p.Rate = 200
p2p.VelocitySpread = 360
p2p.Texture = "rbxassetid://199910011"
p2p.Color = ColorSequence.new(blu)
p2p.Size = NumberSequence.new({pt1a,pt2a})
p2p.LightEmission = 1
p2p.ZOffset = 10
p2p.RotSpeed = NumberRange.new(10)
p3p = Instance.new("ParticleEmitter",p3)
p3p.Rate = 200
p3p.VelocitySpread = 360
p3p.Texture = "rbxassetid://199910011"
p3p.Color = ColorSequence.new(blu)
p3p.Size = NumberSequence.new({pt1a,pt2a})
p3p.LightEmission = 1
p3p.ZOffset = 10
p3p.RotSpeed = NumberRange.new(10)
p4p = Instance.new("ParticleEmitter",p4)
p4p.Rate = 200
p4p.VelocitySpread = 360
p4p.Texture = "rbxassetid://199910011"
p4p.Color = ColorSequence.new(blu)
p4p.Size = NumberSequence.new({pt1a,pt2a})
p4p.LightEmission = 1
p4p.ZOffset = 10
p4p.RotSpeed = NumberRange.new(10)
p5p = Instance.new("ParticleEmitter",p5)
p5p.Rate = 200
p5p.VelocitySpread = 360
p5p.Texture = "rbxassetid://199910011"
p5p.Color = ColorSequence.new(blu)
p5p.Size = NumberSequence.new({pt1a,pt2a})
p5p.LightEmission = 1
p5p.ZOffset = 10
p5p.RotSpeed = NumberRange.new(10)
p6p = Instance.new("ParticleEmitter",p6)
p6p.Rate = 200
p6p.VelocitySpread = 360
p6p.Texture = "rbxassetid://199910011"
p6p.Color = ColorSequence.new(blu)
p6p.Size = NumberSequence.new({pt1a,pt2a})
p6p.LightEmission = 10
p6p.ZOffset = 1
p6p.RotSpeed = NumberRange.new(10)
end
end)

game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
if msg == "off" then
p1p.Enabled = false
p2p.Enabled = false
p3p.Enabled = false
p4p.Enabled = false
p5p.Enabled = false
p6p.Enabled = false
for i=1,10 do
wait(.05)
p1.Transparency = i/10
p2.Transparency = i/10
p3.Transparency = i/10
p4.Transparency = i/10
p5.Transparency = i/10
p6.Transparency = i/10
end
wait(10)
p1:Destroy()
p2:Destroy()
p3:Destroy()
p4:Destroy()
p5:Destroy()
p6:Destroy()
end
end)
--------
wait(1/60)
Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Face=Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
necko=cf(0,1,0,-1,-0,-0,0,0,1,0,1,0)
RootCF=angles(math.rad(-90),0,math.rad(180))
--necko2=cf(0,-0.5,0,-1,-0,-0,0,0,1,0,1,0)
--LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
--RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
attack=false
equipped=false
Mouse=Player:GetMouse()
local idle=0
local Anim="Idle"
local ShotTarget=RootPart
player=nil

--[[Saz's Artificial Heartbeat]]--

ArtificialHB=Instance.new("BindableEvent",script)
ArtificialHB.Name="ArtificialHB"

script:WaitForChild("ArtificialHB")

frame=1/60 --1/30 is old Heartbeat and 1/60 is like Renderstepped speed
tf=0
allowframeloss=false
tossremainder=false
lastframe=tick()
script.ArtificialHB:Fire()

game:GetService("RunService").Heartbeat:connect(function(s,p)
tf=tf+s
if tf>=frame then
if allowframeloss then
script.ArtificialHB:Fire()
lastframe=tick()
else
for i=1,math.floor(tf/frame) do
script.ArtificialHB:Fire()
end
lastframe=tick()
end
if tossremainder then
tf=0
else
tf=tf-frame*math.floor(tf/frame)
end
end
end)
----------------------------------------

--[[HB wait]]--
local animationspeed=2 --The speed the script goes and stuff.

function hbwait(number)
if number==0 or number==nil then
game:GetService("RunService").Stepped:wait()
--ArtificialHB.Event:wait()
else
for i=0,number do
game:GetService("RunService").Stepped:wait()
--ArtificialHB.Event:wait()
end
end
end
----------------------------------------

--[[Stats and Other Values]]--
local Stats=Instance.new("Folder",Character)
Stats.Name="Stats"
local Defense=Instance.new("NumberValue",Stats)
Defense.Name="Defense"
Defense.Value=1
local Movement=Instance.new("NumberValue",Stats)
Movement.Name="Movement"
Movement.Value=1
local Damage=Instance.new("NumberValue",Stats)
Damage.Name="Damage"
Damage.Value=1
local Mana=Instance.new("NumberValue",Stats)
Mana.Name="Mana"
Mana.Value=0
local Rooted=Instance.new("BoolValue",Stats)
Rooted.Name="Rooted"
Rooted.Value=false
local BlockValue=Instance.new("BoolValue",Stats)
BlockValue.Name="BlockValue"
BlockValue.Value=false
local StaggerHitAnim=Instance.new("BoolValue",Stats)
StaggerHitAnim.Name="StaggerHitAnim"
StaggerHitAnim.Value=false
local StaggerAnim=Instance.new("BoolValue",Stats)
StaggerAnim.Name="StaggerAnim"
StaggerAnim.Value=false
local StunAnim=Instance.new("BoolValue",Stats)
StunAnim.Name="StunAnim"
StunAnim.Value=false
local StunValue=Instance.new("NumberValue",Stats)
StunValue.Name="StunValue"
StunValue.Value=0
local CanCrit=Instance.new("BoolValue",Stats)
CanCrit.Name="CanCrit"
CanCrit.Value=true
local CritChance=Instance.new("NumberValue",Stats)
CritChance.Name="CritChance"
CritChance.Value=75
local CanPenetrateArmor=Instance.new("BoolValue",Stats)
CanPenetrateArmor.Name="CanPenetrateArmor"
CanPenetrateArmor.Value=false
local AntiTeamKill=Instance.new("BoolValue",Stats)
AntiTeamKill.Name="AntiTeamKill"
AntiTeamKill.Value=false
----------------------------------------

--[[Ignore these values.]]--
local LastPoint=nil
local staggerhitanim=false
local staggeranim=false
local stunanim=false
local CritChanceNumber=0
local CustomColor=Torso.BrickColor
local Colorpart1=CustomColor.r
local Colorpart2=CustomColor.g
local Colorpart3=CustomColor.b
local InverseColor=BrickColor.new(Color3.new(1-Colorpart1,1-Colorpart2,1-Colorpart3))
local idleangle=0
local idlen=0
local donum=0
local sine=0
local change=2/animationspeed
local walkinganim=false
local handidle=false
local walk=0
local someangle=0
local change2=1
local stundelay=0
local manadelay=0
local robloxidleanimation=Instance.new("Animation",Torso)
robloxidleanimation.Name="robloxidleanimation"
robloxidleanimation.AnimationId="http://www.roblox.com/asset/?id="
local Animator=Humanoid:FindFirstChild("Animator")
local Animate=Character:FindFirstChild("Animate")
----------------------------------------

--[[Damage Function Sounds]]--
local HitPlayerSounds={199149137,199149186,199149221,199149235,199149269,199149297}
local HitArmorSounds={199149321,199149338,199149367,199149409,199149452}
local HitWeaponSounds={199148971,199149025,199149072,199149109,199149119}
local HitBlockSounds={199148933,199148947}
----------------------------------------

--[[Gui Stuff]]--
local cooldown1=0
local cooldown2=0
local cooldown3=0
local cooldown4=0
local scrn=Instance.new('ScreenGui',PlayerGui)
local ud=UDim2.new
local c3=Color3.new
local skillcolorscheme=c3(1,1,1)
function subtractmana(k)
if Mana.Value>=k then
Mana.Value=Mana.Value-k
end
end
----------------------------------------

--[[Gui Settings]]--
local co1=0 --How long it takes for the skill to cool down.
local co2=0
local co3=0
local co4=0
local maxmana=0 --Maximum amount of mana you can have.
local maxstun=1 --Maximum amount of stun you can have.
local recovermana=0 --Amount of mana you gain.
local losestun=0 --Amount of stun you lose.
local stunwait=0 --Delay between losing stun.
local manawait=0 --Delay between gaining mana.
local skill1mana=0 --How much mana is required to use the skill.
local skill2mana=0
local skill3mana=0
local skill4mana=0
local menuupdatespeed=0 --The speed the guis go to update to their size and position.
local constantupdate=false --If true, then the bars will constantly update.
local showstats=false --If true, then the menu will show your movement, defense, damage, and stun.
local allowstunbar=false --If true, then shows the stun bar.
----------------------------------------

--[[Gui Functions]]--
function makeframe(par,trans,pos,size,color,name)
local frame=Instance.new('Frame')
frame.Parent=par
frame.BackgroundTransparency=trans
frame.BorderSizePixel=0
frame.Position=pos
frame.Size=size
frame.BackgroundColor3=color
frame.Name=name
return frame
end

function makelabel(par,text,trans,stroketrans,name)
local label=Instance.new('TextLabel')
label.Parent=par
label.BackgroundTransparency=1
label.Size=ud(1,0,1,0)
label.Position=ud(0,0,0,0)
label.TextColor3=c3(255,255,255)
label.TextStrokeTransparency=stroketrans
label.TextTransparency=trans
label.FontSize=Enum.FontSize.Size32
label.Font=Enum.Font.Legacy
label.BorderSizePixel=0
label.TextScaled=true
label.Text=text
label.Name=name
return label
end
----------------------------------------

--[[The Gui]]--
framesk1=makeframe(scrn,0.5,ud(0.23,0,0.93,0),ud(0.26,0,0,0),c3(Colorpart1,Colorpart2,Colorpart3),"Frame 1")
framesk2=makeframe(scrn,0.5,ud(0.5,0,0.93,0),ud(0.26,0,0,0),c3(Colorpart1,Colorpart2,Colorpart3),"Frame 2")
framesk3=makeframe(scrn,0.5,ud(0.5,0,0.86,0),ud(0.26,0,0,0),c3(Colorpart1,Colorpart2,Colorpart3),"Frame 3")
framesk4=makeframe(scrn,0.5,ud(0.23,0,0.86,0),ud(0.26,0,0,0),c3(Colorpart1,Colorpart2,Colorpart3),"Frame 4")
bar1=makeframe(framesk1,0,ud(0,0,0,0),ud(0,0,1,0),c3(Colorpart1,Colorpart2,Colorpart3),"Bar 1")
bar2=makeframe(framesk2,0,ud(0,0,0,0),ud(0,0,1,0),c3(Colorpart1,Colorpart2,Colorpart3),"Bar 2")
bar3=makeframe(framesk3,0,ud(0,0,0,0),ud(0,0,1,0),c3(Colorpart1,Colorpart2,Colorpart3),"Bar 3")
bar4=makeframe(framesk4,0,ud(0,0,0,0),ud(0,0,1,0),c3(Colorpart1,Colorpart2,Colorpart3),"Bar 4")
text1=makelabel(framesk1,"[C] Ability 3",1,1,"Text 1")
text2=makelabel(framesk2,"[V] Ability 4",1,1,"Text 2")
text3=makelabel(framesk3,"[X] Ability 2",1,1,"Text 3")
text4=makelabel(framesk4,"[Z] Ability 1",1,1,"Text 4")
manabar=makeframe(scrn,0.5,ud(0.23,0,0.82,0),ud(0.26,0,0,0),c3(Colorpart1,Colorpart2,Colorpart3),"Mana Bar") 
manacover=makeframe(manabar,0,ud(0,0,0,0),ud(0,0,1,0),c3(Colorpart1,Colorpart2,Colorpart3),"Mana Cover")
manatext=makelabel(manabar,"Mana",1,1,"Mana Text")
healthbar=makeframe(scrn,0.5,ud(0.5,0,0.82,0),ud(0.26,0,0,0),c3(255/255,50/255,50/255),"Health Bar")
healthcover=makeframe(healthbar,0,ud(0,0,0,0),ud(0,0,1,0),c3(255/255,50/255,50/255),"Health Cover")
healthtext=makelabel(healthbar,"Health",1,1,"Health Text")
if allowstunbar==true then
stunframe=makeframe(scrn,0.5,ud(0.5,0,0.78,0),ud(0.26,0,0,0),c3(255/255,255/255,50/255),"Stun Frame")
stunbar=makeframe(stunframe,0,ud(0,0,0,0),ud(0,0,1,0),c3(255/255,255/255,50/255),"Stun Bar")
stuntext=makelabel(stunframe,"Stun",1,1,"Stun Text")
end
if showstats==true then
defenseframe=makeframe(scrn,0.5,ud(0.23,0,0.78,0),ud(0.075,0,0,0),c3(100/255,100/255,255/255),"Defense Frame")
damageframe=makeframe(scrn,0.5,ud(0.3225,0,0.78,0),ud(0.075,0,0,0),c3(255/255,100/255,100/255),"Damage Frame")
movementframe=makeframe(scrn,0.5,ud(0.415,0,0.78,0),ud(0.075,0,0,0),c3(100/255,255/255,100/255),"Movement Frame")
--[[
defensecover=makeframe(defenseframe,0,ud(0,0,0,0),ud(1,0,1,0),c3(100/255,100/255,255/255),"Defense Cover")
damagecover=makeframe(damageframe,0,ud(0,0,0,0),ud(1,0,1,0),c3(255/255,100/255,100/255),"Damage Cover")
movementcover=makeframe(movementframe,0,ud(0,0,0,0),ud(1,0,1,0),c3(100/255,255/255,100/255),"Movement Cover")
--]]
defensetext=makelabel(defenseframe,"Defense: "..Defense.Value,1,1,"Defense Text")
damagetext=makelabel(damageframe,"Damage: "..Damage.Value,1,1,"Damage Text")
movementtext=makelabel(movementframe,"Movement: "..Movement.Value,1,1,"Movement Text")
end
----------------------------------------

function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end

local function weldBetween(a, b)
local weldd = Instance.new("ManualWeld")
weldd.Part0 = a
weldd.Part1 = b
weldd.C0 = CFrame.new()
weldd.C1 = b.CFrame:inverse() * a.CFrame
weldd.Parent = a
return weldd
end

function nooutline(part)
part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
end

function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
local fp=it("Part")
fp.formFactor=formfactor
fp.Parent=parent
fp.Reflectance=reflectance
fp.Transparency=transparency
fp.CanCollide=false
fp.Locked=true
fp.BrickColor=BrickColor.new(tostring(brickcolor))
fp.Name=name
fp.Size=size
fp.Position=Character.Torso.Position
nooutline(fp)
fp.Material=material
fp:BreakJoints()
return fp
end

function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh=it(Mesh)
mesh.Parent=part
if Mesh=="SpecialMesh" then
mesh.MeshType=meshtype
mesh.MeshId=meshid
end
mesh.Offset=offset
mesh.Scale=scale
return mesh
end

function weld(parent,part0,part1,c0,c1)
local weld=it("Motor")
weld.Parent=parent
weld.Part0=part0
weld.Part1=part1
weld.C0=c0
weld.C1=c1
return weld
end

m=Instance.new("Model",Character)
m.Name="Orinthion Sword and Shield"

--workspace.CurrentCamera.CameraSubject=Head

local swordhandle=part(3,m,"SmoothPlastic",0,0,"Really black","Sword Handle",vt())
local swordhandlemesh=mesh("SpecialMesh",swordhandle,"FileMesh","http://www.roblox.com/asset/?id=438076439",vt(0,2.5,0),vt(0.7,0.7,0.7))
swordhandlemesh.TextureId="http://www.roblox.com/asset/?id=174896768"
local swordhandleweld=weld(RightArm,RightArm,swordhandle,cf(0,-1,0)*angles(math.rad(-90),0,0),cf(0,0,0))
local Hitbox=part(3,m,"SmoothPlastic",0,1,"Really black","Hitbox",vt())
local Hitboxweld=weld(swordhandle,swordhandle,Hitbox,cf(0,3.4,0),cf(0,0,0))

Effects=Instance.new("Folder",m)
Effects.Name="Effects"

Humanoid.Died:connect(function()
attack=true
for _,v in pairs (Character:GetChildren()) do
if v:IsA"Model" then
m:Destroy()
end
end
end)

for i,v in pairs(Character:GetChildren()) do
if v.ClassName=="Model" then
for _,c in pairs(v:GetChildren()) do
if c.ClassName=="Part" then
c.CustomPhysicalProperties=PhysicalProperties.new(0.001,0.001,0.001,0.001,0.001)
end
end
end
end

--print("Orinthion Sword and Shield loaded.")

function so(id,par,vol,pit)
coroutine.resume(coroutine.create(function()
local sou=Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId="http://roblox.com/asset/?id="..id
hbwait()
sou:play()
game:GetService("Debris"):AddItem(sou,10)
end))
end

function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end
 
function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

function DamageStatLabel(labeltype,cframe,text,color)
local c=part(3,Effects,"SmoothPlastic",0,1,"Really black","Effect",vt(0,0,0))
c.CFrame=cf(cframe.p+vt(0,1.5,0))
game:GetService("Debris"):AddItem(c,5)
Instance.new("BodyGyro",c)
local f=Instance.new("BodyPosition",c)
f.P=2000
f.D=100
f.maxForce=vt(math.huge,math.huge,math.huge)
if labeltype=="Normal" then
f.position=c.Position+vt(math.random(-2,2),6,math.random(-2,2))
elseif labeltype=="Debuff" then
f.position=c.Position+vt(math.random(-2,2),8,math.random(-2,2))
elseif labeltype=="Interruption" then
f.position=c.Position+vt(math.random(-2,2),8,math.random(-2,2))
end
game:GetService("Debris"):AddItem(c,5)
local bg=Instance.new('BillboardGui',c)
bg.Adornee=c
bg.Size=UDim2.new(2.5,0,2.5,0)
bg.StudsOffset=vt(-2,2,0)
bg.AlwaysOnTop=false
local tl=Instance.new('TextLabel',bg)
tl.BackgroundTransparency=1
tl.Size=UDim2.new(2.5,0,2.5,0)
tl.Text=text
tl.Font=Enum.Font.SourceSans
tl.FontSize=Enum.FontSize.Size42
tl.TextColor3=color
tl.TextScaled=false
tl.TextStrokeTransparency=0
tl.TextScaled=true
tl.TextWrapped=true
f.Parent=c
coroutine.resume(coroutine.create(function(Part,BodyPosition,TextLabel)
wait(0.25)
for i=1,5 do
wait()
BodyPosition.position=Part.Position-vt(0,0.5,0)
end
wait(1.25)
for i=1,5 do
wait()
TextLabel.TextTransparency=TextLabel.TextTransparency+0.2
TextLabel.TextStrokeTransparency=TextLabel.TextStrokeTransparency+0.2
BodyPosition.position=Part.Position+vt(0,0.5,0)
end
Part.Parent=nil
end),c,f,tl)
end

function IncreaseStat(Location,Stat,Amount,Duration,ShowTheStat)
if Location:FindFirstChild("Stats")~=nil then
if Location.Stats:FindFirstChild("BlockValue")~=nil then
if Location.Stats:FindFirstChild("BlockValue").Value~=true then
if Location.Stats[Stat]~=nil then
Location.Stats[Stat].Value=Location.Stats[Stat].Value+Amount
if ShowTheStat==true then
if Stat=="Defense" then
DamageStatLabel("Debuff",Location.Head.CFrame,"+Defense",c3(0,0,255))
elseif Stat=="Damage" then
DamageStatLabel("Debuff",Location.Head.CFrame,"+Damage",c3(0,0,255))
elseif Stat=="Movement" then
DamageStatLabel("Debuff",Location.Head.CFrame,"+Movement",c3(0,0,255))
end
end
coroutine.resume(coroutine.create(function(CurrentDecrease)
wait(Duration)
CurrentDecrease.Value=CurrentDecrease.Value-Amount
end),Location.Stats[Stat])
end
else
DamageStatLabel("Interruption",Location.Head.CFrame,"Blocked!",Color3.new(0,0,255))
end
end
end
end

function DecreaseStat(Location,Stat,Amount,Duration,ShowTheStat)
if Location:FindFirstChild("Stats")~=nil then
if Location.Stats:FindFirstChild("BlockValue")~=nil then
if Location.Stats:FindFirstChild("BlockValue").Value~=true then
if Location.Stats[Stat]~=nil then
Location.Stats[Stat].Value=Location.Stats[Stat].Value-Amount
if ShowTheStat==true then
if Stat=="Defense" then
DamageStatLabel("Debuff",Location.Head.CFrame,"-Defense",c3(0,0,255))
elseif Stat=="Damage" then
DamageStatLabel("Debuff",Location.Head.CFrame,"-Damage",c3(0,0,255))
elseif Stat=="Movement" then
DamageStatLabel("Debuff",Location.Head.CFrame,"-Movement",c3(0,0,255))
end
end
coroutine.resume(coroutine.create(function(CurrentDecrease)
wait(Duration)
CurrentDecrease.Value=CurrentDecrease.Value+Amount
end),Location.Stats[Stat])
end
else
DamageStatLabel("Interruption",Location.Head.CFrame,"Blocked!",Color3.new(0,0,255))
end
end
end
end

function GetDistance(Part1,Part2,magnitude)
local target=Part1.Position-Part2.Position
local mag=target.magnitude
if mag<=magnitude then
return true
else
return false
end
end

--Usage: Damagefunc(hit,5,10,math.random(5,10),"Normal",Part,0.5,1,math.random(5,10),nil,true,false,nil,0,0,false)

Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,incstun,stagger,staggerhit,ranged,DecreaseTheStat,DecreaseAmount,DecreaseDuration,ShowDecreasedStat)
if hit.Parent==nil then
return
end
h=hit.Parent:FindFirstChild("Humanoid")
for _,v in pairs(hit.Parent:GetChildren()) do
if v:IsA("Humanoid") then
h=v
end
end
if hit.Name=="Hitbox" and ranged~=true and hit.Parent~=m then
StaggerHitAnim.Value=true
so(HitWeaponSounds[math.random(1,#HitWeaponSounds)],hit,1,1)
return
end
if AntiTeamKill.Value==true then
if game.Players:FindFirstChild(hit.Parent.Name)~=nil then
opponent=game.Players:FindFirstChild(hit.Parent.Name)
end
if opponent~=nil then
if opponent.TeamColor==Player.TeamColor then
return
end
end
end
if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
h=hit.Parent.Parent:FindFirstChild("Humanoid")
end
if hit.Parent.className=="Hat" then
hit=hit.Parent.Parent:FindFirstChild("Head")
end
if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
if hit.Parent:FindFirstChild("DebounceHit")~=nil then
if hit.Parent.DebounceHit.Value==true then
return
end
end
if hit.Parent:FindFirstChild("Humanoid")~=nil then
if hit.Parent:FindFirstChild("Humanoid").Health<=0 then
return
end
end
if hit.Parent:FindFirstChild("Stats")~=nil then
if hit.Parent.Stats:FindFirstChild("StunValue")~=nil then
hit.Parent.Stats:FindFirstChild("StunValue").Value=hit.Parent.Stats:FindFirstChild("StunValue").Value+incstun
end
end
if hit.Parent:FindFirstChild("Stats")~=nil then
if hit.Parent.Stats:FindFirstChild("StaggerAnim")~=nil then
if stagger==true then
hit.Parent.Stats:FindFirstChild("StaggerAnim").Value=true
end
end
end
if hit.Parent:FindFirstChild("Stats")~=nil then
if hit.Parent.Stats:FindFirstChild("BlockValue")~=nil then
if hit.Parent.Stats:FindFirstChild("BlockValue").Value==true then
if hit.Parent.Stats:FindFirstChild("BlockDebounce")==nil then
DamageStatLabel("Interruption",hit.Parent.Head.CFrame,"Blocked!",Color3.new(0,0,255))
local BlockDebounce=Instance.new("BoolValue",hit.Parent.Stats)
BlockDebounce.Name="BlockDebounce"
BlockDebounce.Value=true
game:GetService("Debris"):AddItem(BlockDebounce,0.1)
end
if ranged~=true then
if hit.Parent.Stats:FindFirstChild("BlockDebounce2")==nil then
local BlockDebounce2=Instance.new("BoolValue",hit.Parent.Stats)
BlockDebounce2.Name="BlockDebounce2"
BlockDebounce2.Value=true
game:GetService("Debris"):AddItem(BlockDebounce2,0.1)
so(HitBlockSounds[math.random(1,#HitBlockSounds)],hit,1,1)
end
hit.Parent.Stats:FindFirstChild("BlockValue").Value=false
StaggerAnim.Value=true
end
return
end
end
end
if DecreaseTheStat~=nil then
if hit.Parent:FindFirstChild("Stats")~=nil then
if DecreaseTheStat=="Defense" then
DecreaseStat(hit.Parent,"Defense",DecreaseAmount,DecreaseDuration,ShowDecreasedStat)
elseif DecreaseTheStat=="Damage" then
DecreaseStat(hit.Parent,"Damage",DecreaseAmount,DecreaseDuration,ShowDecreasedStat)
elseif DecreaseTheStat=="Movement" then
DecreaseStat(hit.Parent,"Movement",DecreaseAmount,DecreaseDuration,ShowDecreasedStat)
end
end
end
local D=math.random(minim,maxim)*Damage.Value
if hit.Parent:FindFirstChild("Stats")~=nil then
if hit.Parent.Stats:FindFirstChild("Defense") then
if CanPenetrateArmor.Value==true then
D=D
else
D=D/hit.Parent.Stats:FindFirstChild("Defense").Value
end
elseif hit.Parent.Stats:FindFirstChild("Defense")==nil then
D=D
end
end
if CanCrit.Value==true then
CritChanceNumber=math.random(70,CritChance.Value)
if CritChanceNumber==CritChance.Value then
D=D*2
end
end
D=math.floor(D)
h.Health=h.Health-D
if D<=3 and staggerhit==true then
if ranged~=true then
StaggerHitAnim.Value=true
end
if ranged~=true then
so(HitArmorSounds[math.random(1,#HitArmorSounds)],hit,1,1)
end
elseif D>3 and ranged~=true then
so(HitPlayerSounds[math.random(1,#HitPlayerSounds)],hit,1,1)
end
if D>3 and D<20 then
if CanCrit.Value==true and CritChanceNumber==CritChance.Value then
DamageStatLabel("Normal",hit.Parent.Head.CFrame,"Crit! "..D,Color3.new(0,0,255))
so("296102734",hit,1,1)
else
DamageStatLabel("Normal",hit.Parent.Head.CFrame,D,Color3.new(0,0,255))
end
elseif D>=20 then
if CanCrit.Value==true and CritChanceNumber==CritChance.Value then
DamageStatLabel("Normal",hit.Parent.Head.CFrame,"Crit! "..D,Color3.new(200/255,0,0))
so("296102734",hit,1,1)
else
DamageStatLabel("Normal",hit.Parent.Head.CFrame,D,Color3.new(0,0,255))
end
elseif D<=3 then
if CanCrit.Value==true and CritChanceNumber==CritChance.Value then
DamageStatLabel("Normal",hit.Parent.Head.CFrame,"Crit! "..D,Color3.new(200/255,0,0))
so("296102734",hit,1,1)
else
DamageStatLabel("Normal",hit.Parent.Head.CFrame,D,Color3.new(0,0,255))
end
else
end
if Type=="Normal" then
local vp=Instance.new("BodyVelocity")
vp.P=500
vp.maxForce=vt(math.huge,0,math.huge)
if KnockbackType==1 then
vp.Velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
elseif KnockbackType==2 then
vp.Velocity=Property.CFrame.lookVector*knockback
end
if knockback>0 then
vp.Parent=hit.Parent.Torso
end
game:GetService("Debris"):AddItem(vp,0.5)
elseif Type=="ShieldBlast" then
local vp=Instance.new("BodyVelocity")
vp.P=500
vp.maxForce=vt(10000,10000,10000)
vp.Velocity=((hit.Position-Property.Position).unit+vt(0,1,0))*knockback
if knockback>0 then
vp.Parent=hit.Parent.Torso
end
game:GetService("Debris"):AddItem(vp,0.5)
elseif Type=="ElectricGroundSmash" then
local vp=Instance.new("BodyVelocity")
vp.P=500
vp.maxForce=vt(0,math.huge,0)
vp.Velocity=vt(0,1,0)*knockback
if knockback>0 then
vp.Parent=hit.Parent.Torso
end
game:GetService("Debris"):AddItem(vp,0.5)
elseif Type=="ElectricBlast" then
local vp=Instance.new("BodyVelocity")
vp.P=500
vp.maxForce=vt(10000,0,10000)
vp.Velocity=(hit.Position-Property.Position).unit*knockback
if knockback>0 then
vp.Parent=hit.Parent.Torso
end
game:GetService("Debris"):AddItem(vp,0.5)
end
local DebounceHit=Instance.new("BoolValue",hit.Parent)
DebounceHit.Name="DebounceHit"
DebounceHit.Value=true
game:GetService("Debris"):AddItem(DebounceHit,Delay)
end
end

--Usage: MagniDamage(Part,5,50,70,math.random(5,10),"Normal",Part,0.5,1,math.random(5,10),nil,true,false,nil,0,0,false)
function MagniDamage(Part,magni,mindam,maxdam,knock,Type,Property,Delay,KnockbackType,incstun,stagger,staggerhit,ranged,MagicDecreaseTheStat,MagicDecreaseAmount,MagicDecreaseDuration,MagicShowDecreasedStat)
for _,c in pairs(workspace:GetChildren()) do
local hum=c:FindFirstChild("Humanoid")
local head=nil
if hum~=nil then
head=c:FindFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=Player.Name then
Damagefunc(head,mindam,maxdam,knock,Type,Property,Delay,KnockbackType,incstun,stagger,staggerhit,ranged,MagicDecreaseTheStat,MagicDecreaseAmount,MagicDecreaseDuration,MagicShowDecreasedStat)
end
end
for _,d in pairs(c:GetChildren()) do
if d.ClassName=="Model" and ranged~=true then
head=d:FindFirstChild("Hitbox")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=Player.Name then
local hitrefpart=part(3,Effects,"SmoothPlastic",0,1,"Really black","Effect",vt())
hitrefpart.Anchored=true
hitrefpart.CFrame=cf(head.Position)
so(HitWeaponSounds[math.random(1,#HitWeaponSounds)],hitrefpart,1,1)
StaggerHitAnim.Value=true
end
end
end
end
end
end
end

--[[Effects]]--
function Lightning(p0,p1,tym,ofs,brickcolor,material,th,tra,last)
--[[p0=pos1
p1=pos2
tym=times
ofs=offset
col=color
th=size
tra=transparency
last=lastingtime]]
local magz=(p0-p1).magnitude 
local curpos=p0
local trz={-ofs,ofs}
for i=1,tym do 
local li=part(3,Effects,material,0,0,brickcolor,"Effect",vt(th,th,magz/tym))
li.Anchored=true
local ofz=vt(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)]) 
local trolpos=cf(curpos,p1)*cf(0,0,magz/tym).p+ofz
if tym==i then 
local magz2=(curpos-p1).magnitude
li.Size=vt(th,th,magz2)
li.CFrame=cf(curpos,p1)*cf(0,0,-magz2/2)
else
li.CFrame=cf(curpos,trolpos)*cf(0,0,magz/tym/2)
end
curpos=li.CFrame*cf(0,0,magz/tym/2).p
game.Debris:AddItem(li,last)
coroutine.resume(coroutine.create(function()
while li.Transparency~=1 do
--local StartTransparency=tra
for i=0,1,last do
hbwait()
li.Transparency=li.Transparency+(0.1/last)
end
end
end))
end
end

function MagicRing(brickcolor,material,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,Effects,material,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
coroutine.resume(coroutine.create(function(Part,Mesh)
for i=0,1,delay do
hbwait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicWave(brickcolor,material,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,Effects,material,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=20329976",vt(0,0,(-0.1*z1)),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
hbwait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicBlock(brickcolor,material,rotate,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,Effects,material,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
hbwait()
if rotate==true then
Part.CFrame=Part.CFrame*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50))
else
end
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent = nil
end),prt,msh)
end

function MagicBlock2(brickcolor,material,rotate,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,Effects,material,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
CF=prt.CFrame
num=math.random(5,20)
coroutine.resume(coroutine.create(function(Part,Mesh,CF2,Num)
for i=0,1,delay do
hbwait()
if rotate==true then
Part.CFrame=CF2*cf(0,i*Num,0)*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50))
else
Part.CFrame=CF2*cf(0,i*Num,0)
end
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,CF,num)
end

function MagicCylinder(brickcolor,material,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,Effects,material,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
hbwait()
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicCircle(brickcolor,material,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,Effects,material,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
hbwait()
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicHead(brickcolor,material,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,Effects,material,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Head","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
hbwait()
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function BreakEffect(brickcolor,material,rotate,cframe,x1,y1,z1,delay)
local prt=part(3,Effects,material,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
coroutine.resume(coroutine.create(function(Part,CF,Numbb,randnumb) 
CF=Part.CFrame
Numbb=0
randnumb=math.random()-math.random()
for i=0,1,delay do
hbwait()
CF=CF*cf(0,1,0)
if rotate==true then
Part.CFrame=CF*angles(Numbb,0,0)
elseif rotate==false then
Part.CFrame=CF
end
Part.Transparency=i
Numbb=Numbb+randnumb
end
Part.Parent=nil
end),prt,CF,Numbb,randnumb)
end

function ElecEffect(brickcolor,material,cf,x,y,z,delay)
local prt=part(3,Effects,material,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cf
xval=math.random()
yval=math.random()
zval=math.random()
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x,y,z))
game:GetService("Debris"):AddItem(prt,10)
coroutine.resume(coroutine.create(function(Part,Mesh,xvaal,yvaal,zvaal)
for i=0,1,delay do
hbwait()
Part.CFrame=Part.CFrame
xvaal=xvaal-0.1*(delay*10)
yvaal=yvaal-0.1*(delay*10)
zvaal=zvaal-0.1*(delay*10)
Mesh.Scale=Mesh.Scale+vt(xvaal,yvaal,zvaal)
Part.Transparency=i
end
Part.Parent=nil
end),prt,msh,xval,yval,zval)
end

function TrailEffect(brickcolor,material,currentcf,oldcf,meshtype,reflectance,size,x,y,z,delay)
local magnitudecframe=(currentcf.p-oldcf.p).magnitude
local prt=part(3,Effects,material,reflectance,0,brickcolor,"Effect",vt(1,magnitudecframe,1))
prt.Anchored=true
prt.CFrame=cf((currentcf.p+oldcf.p)/2,oldcf.p)*angles(math.rad(90),0,0)
local TheMeshType="BlockMesh"
if meshtype=="Cylinder" then
TheMeshType="CylinderMesh"
end
local msh=mesh(TheMeshType,prt,"","",vt(0,0,0),vt(0+size,1,0+size))
game:GetService("Debris"):AddItem(prt,10)
coroutine.resume(coroutine.create(function(Part,Mesh,TheCurrentCFrame,TheLastCFrame)
for i=0,1,delay do
hbwait()
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x,y,z)
end
Part.Parent=nil
end),prt,msh,currentcf,oldcf)
end

function ClangEffect(brickcolor,material,cframe,angle,duration,size,power,reflectance,x,y,z,delay)
local prt=part(3,Effects,material,0,1,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(0,0,0))
game:GetService("Debris"):AddItem(prt,10)
local TheLastPoint=cframe
coroutine.resume(coroutine.create(function(Part)
for i=1,duration do
hbwait()
Part.CFrame=Part.CFrame*angles(math.rad(angle),0,0)*cf(0,power,0)
TrailEffect(brickcolor,material,Part.CFrame,TheLastPoint,"Cylinder",reflectance,size,x,y,z,delay)
TheLastPoint=Part.CFrame
end
Part.Parent=nil
end),prt)
end

function MagicCone(brickcolor,material,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,Effects,material,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1778999",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
hbwait()
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicFlatCone(brickcolor,material,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,Effects,material,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1033714",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
hbwait()
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicSpikedCrown(brickcolor,material,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,Effects,material,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1323306",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
hbwait()
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicCrown(brickcolor,material,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,Effects,material,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1078075",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
hbwait()
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicSkull(brickcolor,material,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,Effects,material,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=4770583",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,10)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
hbwait()
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
----------------------------------------

--[[Projectile or something similar]]--
--[[
local spread=vt(0,0,0)
local MainPos=Part.Position
local MainPos2=Mouse.Hit.p+spread
local MouseLook=cf((MainPos+MainPos2)/2,MainPos2)
local speed=2
local num=30
coroutine.resume(coroutine.create(function() 
repeat
hbwait()
local hit,pos=rayCast(MainPos,MouseLook.lookVector,speed,ShotTarget.Parent)
local mag=(MainPos-pos).magnitude 
MagicCylinder(CustomColor,cf((MainPos+pos)/2,pos)*angles(math.rad(90),0,0),1,mag*(speed/(speed/2)),1,0,0,0,0.1)
MainPos=MainPos+(MouseLook.lookVector*speed)
MouseLook=MouseLook*angles(math.rad(-1),0,0)
num=num-1
if hit~=nil then
num=0
local refpart=part(3,workspace,"SmoothPlastic",0,1,BrickColor.new("Really black"),"Effect",vt())
refpart.Anchored=true
refpart.CFrame=cf(pos)
game:GetService("Debris"):AddItem(refpart,0.1)
elseif num<=0 then
local refpart=part(3,workspace,"SmoothPlastic",0,1,BrickColor.new("Really black"),"Effect",vt())
refpart.Anchored=true
refpart.CFrame=cf(pos)
game:GetService("Debris"):AddItem(refpart,0.1)
end
until num<=0
end))
]]--
--------------------------------

--[[Laser]]--
--[[
local spread=vt(0,0,0) --How much spread the laser has. Set all to 0 for no spread.
local range=999
local MainPos=Part.Position --The Part the laser starts at.
local MainPos2=Mouse.Hit.p+spread --Where the laser will go to.
local MouseLook=cf((MainPos+MainPos2)/2,MainPos2) --Ignore this.
local hit,pos=rayCast(MainPos,MouseLook.lookVector,range,ShotTarget.Parent) --Also ignore this.
local mag=(MainPos-pos).magnitude 
MagicCylinder(CustomColor,cf((MainPos+pos)/2,pos)*angles(math.rad(90),0,0),1,mag*5,1,0,0,0,0.1)
if hit~=nil then
local refpart=part(3,workspace,"SmoothPlastic",0,1,BrickColor.new("Really black"),"Effect",vt())
refpart.Anchored=true
refpart.CFrame=cf(pos)
game:GetService("Debris"):AddItem(refpart,0.1)
end
]]--
--------------------------------

--[[Customization]]--
--[[Only choose one of these options or conflict will occur.]]--
local startequipped=true --Makes the Player start with their weapon equipped.
local startequippedwithequipanimation=false --Makes the Player start with their weapon equipped and plays the equip animation.
----------------------------------------
--[[Only choose one of these options or conflict will occur.]]--
local disableanimator=true --Disables the animator script and the Player will NOT have their idle animation playing.
local disableanimate=false --Disables the animate script, but the Player will still have their idle animation playing.
----------------------------------------
--[[Set this to true if you want an alternate walk.]]--
local alternatewalk=false --If true, then the walking function uses a different walking animation. If false, then it will use the default walking animation.
----------------------------------------
--[[Gui stuff]]--
local hidemenu=false --Hides the menus on your screen, but does NOT disable it (Unless if it's already disabled).
local allowmenutofunction=false --Allows the menu to run, but only shows the mana and health bars.
local allowabilitiestofunction=false --Allows abilities with cooldowns. Doesn't work if "allowmenutofunction" is set to false.
----------------------------------------
--[[Other Customization]]--
local canunequiporequip=true --Allows or restricts the Player to equip or unequip their weapon.
local allowidle=false --Allows the idle animation to run while the Player has their weapon equipped. Most noticable with the animator disabled.
local allowwalking=false --Allows the walking animation to run while the Player walks. Noticable with either the animate or animator disabled.
local disablemovingarms=false --Allows or restricts the arms from moving. Most noticable when both the animate and animator are not disabled.
local usemotorsinsteadofwelds=false --If true, then uses motors instead of welds. Pretty self-explanatory.
local leftarm=false --Allows the left arm to move around while you walk.
local rightarm=false --Allows the right arm to move around while you walk.
local allowhopperbin=true --If true, then creates a tool in the Player's inventory, which they must select to use the weapon.
local showstunbar=false --If true, then a stun mechanic will be put in place. Requires "allowstunbar" to be set to true.
local walkspeeddependsonmovementvalue=false --If true, then walkspeed will depend on the movement's value.
local alternatemanaregensystem=false --If true, then uses an alternate mana regen that adds the desired mana after a desired delay.
local showhealthmanaandstunnumbers=true --If true, then shows how much mana and health you have in a number box.
local changebarcolorsifnotenoughmana=false --If true, then if you do not have enough mana for an ability the bar will turn grey.
local disablejump=false --If true, then disables jumping.
----------------------------------------
--[[End of Customization]]--

if hidemenu==true then
for _,v in pairs (scrn:GetChildren()) do
if v.ClassName=="Frame" or v.ClassName=="TextLabel" then
v.Visible=false
end
end
end

Humanoid.Changed:connect(function(Jump)
if Jump=="Jump" and disablejump==true then
Humanoid.Jump=false
end
end)

if allowmenutofunction==true then
for _,v in pairs (scrn:GetChildren()) do
if v.ClassName=="Frame" then
for _,b in pairs (v:GetChildren()) do
if b.ClassName=="TextLabel" then
coroutine.resume(coroutine.create(function(TheTextLabel)
wait(menuupdatespeed)
for i=1,0,-0.1 do
hbwait()
TheTextLabel.TextTransparency=i
TheTextLabel.TextStrokeTransparency=i
end
TheTextLabel.TextTransparency=0
TheTextLabel.TextStrokeTransparency=0
end),b)
if showstats==true then
coroutine.resume(coroutine.create(function(TheTextLabel)
wait(menuupdatespeed)
for i=1,0,-0.1 do
hbwait()
TheTextLabel.TextTransparency=i
TheTextLabel.TextStrokeTransparency=i
end
TheTextLabel.TextTransparency=0
TheTextLabel.TextStrokeTransparency=0
end),b)
end
if showstunbar==true then
coroutine.resume(coroutine.create(function(TheTextLabel)
wait(menuupdatespeed)
for i=1,0,-0.1 do
hbwait()
TheTextLabel.TextTransparency=i
TheTextLabel.TextStrokeTransparency=i
end
TheTextLabel.TextTransparency=0
TheTextLabel.TextStrokeTransparency=0
end),b)
end
if allowabilitiestofunction==true then
coroutine.resume(coroutine.create(function(TheTextLabel)
wait(menuupdatespeed)
for i=1,0,-0.1 do
hbwait()
TheTextLabel.TextTransparency=i
TheTextLabel.TextStrokeTransparency=i
end
TheTextLabel.TextTransparency=0
TheTextLabel.TextStrokeTransparency=0
end),b)
end
end
end
end
end
end

if allowhopperbin==true then
if (script.Parent.className~="HopperBin") then 
Tool=Instance.new("HopperBin") 
Tool.Parent=Backpack 
Tool.Name="Wanderer" 
script.Parent=Tool 
end 
Bin=script.Parent 
end

if disablemovingarms==true then
RWC0=cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))
LWC0=cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))
RSH, LSH=nil, nil 
if usemotorsinsteadofwelds==true then
RW=Instance.new("Motor")
LW=Instance.new("Motor")
else
RW=Instance.new("Weld")
LW=Instance.new("Weld")
end
RW.Name="Right Shoulder"
LW.Name="Left Shoulder"
RSH=Torso["Right Shoulder"] 
LSH=Torso["Left Shoulder"] 
-- 
RSH.Parent=Torso 
LSH.Parent=Torso 
-- 
RW.Name="Right Shoulder"
RW.Part0=Torso 
RW.C0=cf(1.5,0.5,0)
RW.C1=cf(0,0.5,0) 
RW.Part1=Character["Right Arm"] 
RW.Parent=nil 
-- 
LW.Name="Left Shoulder"
LW.Part0=Torso 
LW.C0=cf(-1.5, 0.5, 0)
LW.C1=cf(0, 0.5, 0) 
LW.Part1=Character["Left Arm"] 
LW.Parent=nil 
--
else
RW=Torso["Right Shoulder"]
LW=Torso["Left Shoulder"]
RWC0=cf(-0.5,0,0)*angles(math.rad(0),math.rad(90),math.rad(0))
LWC0=cf(0.5,0,0)*angles(math.rad(0),math.rad(-90),math.rad(0))
end

if allowidle==true then
coroutine.resume(coroutine.create(function()
while true do
for i=0,1,0.08 do
wait()
idleangle=idleangle+0.005*idlen
idlen=idlen-1/10
end
idlen=0
for i=0,1,0.08 do
wait()
idleangle=idleangle-0.005*idlen
idlen=idlen-1/10
end
idlen=0
idleangle=0
end
end))
end

if startequipped==true then
for _,v in pairs (m:GetChildren()) do
if v.ClassName=="Part" and v.Name~="Hitbox" and v.Name~="Handle" then
v.Transparency=0
end
end
elseif startequippedwithequipanimation==true then
for _,v in pairs (m:GetChildren()) do
if v.ClassName=="Part" and v.Name~="Hitbox" and v.Name~="Handle" then
coroutine.resume(coroutine.create(function(Part)
for i=1,0,-0.1 do
hbwait()
Part.Transparency=i
end
Part.Transparency=0
end),v)
end
end
end

function equipanim()
attack=true
Movement.Value=Movement.Value-0.1
Defense.Value=Defense.Value+0.4
for i=0,1,0.08/animationspeed do
hbwait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3/animationspeed)
Neck.C0=clerp(Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3/animationspeed)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0))*RWC0,0.3/animationspeed)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0))*LWC0,0.3/animationspeed)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.3/animationspeed)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.3/animationspeed)
end
attack=false
end

function unequipanim()
attack=true
for i=0,1,0.08/animationspeed do
hbwait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3/animationspeed)
Neck.C0=clerp(Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3/animationspeed)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0))*RWC0,0.3/animationspeed)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0))*LWC0,0.3/animationspeed)
RW.C1=clerp(RW.C1,cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0))*RWC0,0.3/animationspeed)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0))*LWC0,0.3/animationspeed)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.3/animationspeed)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.3/animationspeed)
end
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),1)
Neck.C0=clerp(Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0))*RWC0,1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0))*LWC0,1)
RW.C1=clerp(RW.C1,cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0))*RWC0,1)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0))*LWC0,1)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),1)
RH.C1=clerp(RH.C1,RHC1*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),1)
LH.C1=clerp(LH.C1,LHC1*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),1)
Movement.Value=Movement.Value+0.1
Defense.Value=Defense.Value-0.4
attack=false
end

if startequipped==true then
equipped=true
if disableanimate==true then
Animate.Disabled=true
local idleanimation=Humanoid:LoadAnimation(Torso.robloxidleanimation)
idleanimation:Play()
end
if disableanimator==true then
Animator.Parent=nil
end
if disablemovingarms==true then
RW.Parent=Torso 
LW.Parent=Torso 
RSH.Parent=nil 
LSH.Parent=nil 
end
Movement.Value=Movement.Value-0.1
Defense.Value=Defense.Value+0.4
elseif startequippedwithequipanimation==true then
equipped=true
if disableanimate==true then
Animate.Disabled=true
local idleanimation=Humanoid:LoadAnimation(Torso.robloxidleanimation)
idleanimation:Play()
end
if disableanimator==true then
Animator.Parent=nil
end
if disablemovingarms==true then
RW.Parent=Torso 
LW.Parent=Torso 
RSH.Parent=nil 
LSH.Parent=nil 
end
coroutine.resume(coroutine.create(function()
hbwait()
equipanim()
end))
end

function StaggerHit()
attack=true
if Hitbox~=nil then
for i=1,math.random(2,4) do
ClangEffect("Cyan","Neon",cf(Hitbox.Position)*angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50))),20,5,0.2,math.random(5,15)/10,0,-0.02,0,-0.02,0.1)		
end
end
for i=0,1,0.1/animationspeed do
hbwait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0+idleangle)*angles(math.rad(-10),math.rad(0),math.rad(-30)),0.3/animationspeed)
Neck.C0=clerp(Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(30))*angles(math.rad(5),math.rad(0),math.rad(0)),0.3/animationspeed)
RW.C0=clerp(RW.C0,cf(1.5,0.5+idleangle,0)*angles(math.rad(-30),math.rad(0),math.rad(60))*angles(math.rad(0),math.rad(-30),math.rad(0))*RWC0,0.3/animationspeed)
LW.C0=clerp(LW.C0,cf(-1.5,0.5+idleangle,0)*angles(math.rad(-20),math.rad(0),math.rad(-20))*angles(math.rad(0),math.rad(20),math.rad(0))*LWC0,0.3/animationspeed)
RH.C0=clerp(RH.C0,cf(1,-0.9-idleangle,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(-20)),0.3/animationspeed)
LH.C0=clerp(LH.C0,cf(-1,-1-idleangle,0)*angles(math.rad(0),math.rad(-70),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(10)),0.3/animationspeed)
if StaggerAnim.Value==true or StunAnim.Value==true then
break
end
end
attack=false
end

function Stagger()
attack=true
disablejump=true
if Hitbox~=nil then
for i=1,math.random(2,4) do
ClangEffect("Cyan","Neon",cf(Hitbox.Position)*angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50))),20,5,0.2,math.random(5,15)/10,0,-0.02,0,-0.02,0.1)		
end
end
attacktype=1
local staggervelocity=Instance.new("BodyVelocity",Torso)
staggervelocity.P=500
staggervelocity.maxForce=vt(math.huge,0,math.huge)
if Rooted.Value==false then
staggervelocity.Velocity=RootPart.CFrame.lookVector*-25
end
for i=0,1,0.35/animationspeed do
hbwait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.1+idleangle)*angles(math.rad(-20),math.rad(0),math.rad(-30)),0.3/animationspeed)
Neck.C0=clerp(Neck.C0,necko*cf(0,0,0)*angles(math.rad(5),math.rad(0),math.rad(35))*angles(math.rad(0),math.rad(0),math.rad(0)),0.3/animationspeed)
RW.C0=clerp(RW.C0,cf(1.5,0.5+idleangle,0)*angles(math.rad(20),math.rad(-30),math.rad(40))*RWC0,0.3/animationspeed)
LW.C0=clerp(LW.C0,cf(-1.5,0.5+idleangle,0)*angles(math.rad(10),math.rad(5),math.rad(-20))*LWC0,0.3/animationspeed)
RH.C0=clerp(RH.C0,cf(1,-0.75-idleangle,-0.25)*angles(math.rad(0),math.rad(100),math.rad(0))*angles(math.rad(-20),math.rad(0),math.rad(40)),0.3/animationspeed)
LH.C0=clerp(LH.C0,cf(-1,-1-idleangle,0.25)*angles(math.rad(0),math.rad(-60),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(10)),0.3/animationspeed)
end
for i=0,1,0.2/animationspeed do
hbwait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.2+idleangle)*angles(math.rad(-30),math.rad(0),math.rad(-30)),0.3/animationspeed)
Neck.C0=clerp(Neck.C0,necko*cf(0,0,0)*angles(math.rad(5),math.rad(0),math.rad(35))*angles(math.rad(0),math.rad(0),math.rad(0)),0.3/animationspeed)
RW.C0=clerp(RW.C0,cf(1.5,0.5+idleangle,0)*angles(math.rad(20),math.rad(-30),math.rad(40))*RWC0,0.3/animationspeed)
LW.C0=clerp(LW.C0,cf(-1.5,0.5+idleangle,0)*angles(math.rad(10),math.rad(5),math.rad(-20))*LWC0,0.3/animationspeed)
RH.C0=clerp(RH.C0,cf(1,-0.75-idleangle,-0.25)*angles(math.rad(0),math.rad(100),math.rad(0))*angles(math.rad(-20),math.rad(0),math.rad(40)),0.3/animationspeed)
LH.C0=clerp(LH.C0,cf(-1,-0.9-idleangle,0.25)*angles(math.rad(0),math.rad(-60),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(30)),0.3/animationspeed)
end
staggervelocity:Destroy()
for i=0,1,0.015/animationspeed do
hbwait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1.8+idleangle)*angles(math.rad(0),math.rad(0),math.rad(-20))*angles(math.rad(-5),math.rad(-5),math.rad(0)),0.3/animationspeed)
Neck.C0=clerp(Neck.C0,necko*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(20))*angles(math.rad(0),math.rad(5),math.rad(0)),0.3/animationspeed)
RW.C0=clerp(RW.C0,cf(1.5,0.5+idleangle,0)*angles(math.rad(0),math.rad(0),math.rad(20))*angles(math.rad(0),math.rad(-20),math.rad(0))*RWC0,0.3/animationspeed)
LW.C0=clerp(LW.C0,cf(-1.5,0.5+idleangle,0)*angles(math.rad(-15),math.rad(0),math.rad(-10))*angles(math.rad(0),math.rad(20),math.rad(0))*LWC0,0.3/animationspeed)
RH.C0=clerp(RH.C0,cf(1,-0.5-idleangle,-0.5)*angles(math.rad(0),math.rad(80),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(70))*angles(math.rad(0),math.rad(30),math.rad(0)),0.3/animationspeed)
LH.C0=clerp(LH.C0,cf(-1,0.4-idleangle,-0.5)*angles(math.rad(0),math.rad(-80),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-10)),0.3/animationspeed)
if StunAnim.Value==true then
break
end
end
attacktype=1
disablejump=false
attack=false
end

function Stun()
attack=true
disablejump=true
attacktype=1
DamageStatLabel("Interruption",Head.CFrame,"Stunned!",Color3.new(0,0,255))
for i=0,1,0.4/animationspeed do
hbwait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0+idleangle)*angles(math.rad(15),math.rad(0),math.rad(-160)),0.3/animationspeed)
Neck.C0=clerp(Neck.C0,necko*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.3/animationspeed)
RW.C0=clerp(RW.C0,cf(1.5,0.5+idleangle,0)*angles(math.rad(70),math.rad(0),math.rad(15))*RWC0,0.3/animationspeed)
LW.C0=clerp(LW.C0,cf(-1.5,0.5+idleangle,0)*angles(math.rad(70),math.rad(0),math.rad(-15))*LWC0,0.3/animationspeed)
RH.C0=clerp(RH.C0,cf(1,-1-idleangle,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-20)),0.3/animationspeed)
LH.C0=clerp(LH.C0,cf(-1,-1-idleangle,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-20)),0.3/animationspeed)
end
for i=0,1,0.4/animationspeed do
hbwait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.5+idleangle)*angles(math.rad(45),math.rad(0),math.rad(-170)),0.3/animationspeed)
Neck.C0=clerp(Neck.C0,necko*cf(0,0,0)*angles(math.rad(5),math.rad(0),math.rad(-30))*angles(math.rad(0),math.rad(0),math.rad(0)),0.3/animationspeed)
RW.C0=clerp(RW.C0,cf(1.5,0.5+idleangle,0)*angles(math.rad(80),math.rad(0),math.rad(45))*RWC0,0.3/animationspeed)
LW.C0=clerp(LW.C0,cf(-1.5,0.5+idleangle,0)*angles(math.rad(80),math.rad(0),math.rad(-45))*LWC0,0.3/animationspeed)
RH.C0=clerp(RH.C0,cf(1,-1-idleangle,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-40)),0.3/animationspeed)
LH.C0=clerp(LH.C0,cf(-1,-1-idleangle,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-20)),0.3/animationspeed)
end
for i=0,1,0.4/animationspeed do
hbwait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1+idleangle)*angles(math.rad(75),math.rad(0),math.rad(-180)),0.3/animationspeed)
Neck.C0=clerp(Neck.C0,necko*cf(0,0,0)*angles(math.rad(5),math.rad(0),math.rad(-60))*angles(math.rad(0),math.rad(0),math.rad(0)),0.3/animationspeed)
RW.C0=clerp(RW.C0,cf(1.5,0.5+idleangle,0)*angles(math.rad(90),math.rad(0),math.rad(75))*RWC0,0.3/animationspeed)
LW.C0=clerp(LW.C0,cf(-1.5,0.5+idleangle,0)*angles(math.rad(-45),math.rad(0),math.rad(-75))*LWC0,0.3/animationspeed)
RH.C0=clerp(RH.C0,cf(1,-1-idleangle,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-40)),0.3/animationspeed)
LH.C0=clerp(LH.C0,cf(-1,-1-idleangle,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-30)),0.3/animationspeed)
end
gyro=Instance.new("BodyGyro")
gyro.Parent=nil
gyro.P=1e7
gyro.D=1e3
gyro.MaxTorque=vt(1e7,1e7,1e7)
gyro.cframe=RootPart.CFrame
for i=1,70*animationspeed do
hbwait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-2.5+idleangle)*angles(math.rad(90),math.rad(0),math.rad(-180)),0.3/animationspeed)
Neck.C0=clerp(Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-90))*angles(math.rad(0),math.rad(0),math.rad(0)),0.3/animationspeed)
RW.C0=clerp(RW.C0,cf(1.5,0.5+idleangle,0)*angles(math.rad(90),math.rad(-10),math.rad(90))*RWC0,0.3/animationspeed)
LW.C0=clerp(LW.C0,cf(-1.5,0.5+idleangle,0)*angles(math.rad(-90),math.rad(0),math.rad(-90))*LWC0,0.3/animationspeed)
RH.C0=clerp(RH.C0,cf(1,-1-idleangle,0.2)*angles(math.rad(0),math.rad(70),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(0)),0.3/animationspeed)
LH.C0=clerp(LH.C0,cf(-1,-1-idleangle,0)*angles(math.rad(0),math.rad(-100),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(0)),0.3/animationspeed)
end
for i=0,1,0.5/animationspeed do
hbwait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1+idleangle)*angles(math.rad(90),math.rad(0),math.rad(-180)),0.3/animationspeed)
Neck.C0=clerp(Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-90))*angles(math.rad(0),math.rad(0),math.rad(0)),0.3/animationspeed)
RW.C0=clerp(RW.C0,cf(1.5,0.5+idleangle,0)*angles(math.rad(90),math.rad(-10),math.rad(120))*RWC0,0.3/animationspeed)
LW.C0=clerp(LW.C0,cf(-1.5,0.5+idleangle,0)*angles(math.rad(-90),math.rad(0),math.rad(-120))*LWC0,0.3/animationspeed)
RH.C0=clerp(RH.C0,cf(1,-1-idleangle,0.2)*angles(math.rad(0),math.rad(70),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(-30)),0.3/animationspeed)
LH.C0=clerp(LH.C0,cf(-1,-1-idleangle,0)*angles(math.rad(0),math.rad(-100),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(30)),0.3/animationspeed)
end
for i=0,1,0.15/animationspeed do
hbwait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1.5+idleangle)*angles(math.rad(30),math.rad(0),math.rad(120)),0.3/animationspeed)
Neck.C0=clerp(Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-30))*angles(math.rad(0),math.rad(0),math.rad(0)),0.3/animationspeed)
RW.C0=clerp(RW.C0,cf(1.5,0.5+idleangle,0)*angles(math.rad(-40),math.rad(0),math.rad(30))*RWC0,0.3/animationspeed)
LW.C0=clerp(LW.C0,cf(-1.5,0.5+idleangle,0)*angles(math.rad(80),math.rad(0),math.rad(20))*LWC0,0.3/animationspeed)
RH.C0=clerp(RH.C0,cf(1,-0.5-idleangle,0)*angles(math.rad(0),math.rad(60),math.rad(0))*angles(math.rad(-15),math.rad(0),math.rad(70)),0.3/animationspeed)
LH.C0=clerp(LH.C0,cf(-1,-0.25-idleangle,-1)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(5),math.rad(0),math.rad(30)),0.3/animationspeed)
end
gyro.Parent=nil
attacktype=1
disablejump=false
attack=false
end

function EAbility()
attack=true
attack=false
end

function Attack1()
attack=true
--so("341336274",Hitbox,0.5,1)
for i=0,1,0.12/2 do
hbwait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.5,0+idleangle)*angles(math.rad(0),math.rad(0),math.rad(-50)),0.45/animationspeed)
Neck.C0=clerp(Neck.C0,necko*cf(0,0,0)*angles(math.rad(7.5),math.rad(0),math.rad(50)),0.45/animationspeed)
RW.C0=clerp(RW.C0,cf(1.5,0.5+idleangle,0)*angles(math.rad(100),math.rad(0),math.rad(50))*angles(math.rad(0),math.rad(-80),math.rad(0))*RWC0,0.45/animationspeed)
LW.C0=clerp(LW.C0,cf(-1.25,0.5+idleangle,-0.25)*angles(math.rad(70),math.rad(0),math.rad(40))*LWC0,0.45/animationspeed)
RH.C0=clerp(RH.C0,cf(1,-1-idleangle,0)*angles(math.rad(0),math.rad(80),math.rad(0))*angles(math.rad(-12.5),math.rad(0),math.rad(-2.5)),0.45/animationspeed)
LH.C0=clerp(LH.C0,cf(-1,-1-idleangle,0)*angles(math.rad(0),math.rad(-40),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(-2.5)),0.45/animationspeed)
swordhandleweld.C0=clerp(swordhandleweld.C0,cf(0,-1,0)*angles(math.rad(-90),0,0),0.45/animationspeed)
if StaggerHitAnim.Value==true or StaggerAnim.Value==true or StunAnim.Value==true then
break
end
end
--so("200633029",Hitbox,0.5,1)
so("200633077",Hitbox,0.5,2)
--so("341336307",Hitbox,0.5,1)
so("341336485",Hitbox,0.5,1)
LastPoint=Hitbox.CFrame*cf(0,2.1,0)
for i=0,1,0.12/2 do
hbwait()
TrailEffect("Cyan","Neon",Hitbox.CFrame*cf(0,2.1,0),LastPoint,"Block",0,0.1,-0.01,0,-0.01,0.1)
LastPoint=Hitbox.CFrame*cf(0,2.1,0)
MagniDamage(Hitbox,5,50,70,math.random(5,10),"Normal",RootPart,0.5,1,math.random(5,10),nil,true,false,nil,0,0,false)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-1,-0.5+idleangle)*angles(math.rad(20),math.rad(0),math.rad(40)),0.45/animationspeed)
Neck.C0=clerp(Neck.C0,necko*cf(0,0,0)*angles(math.rad(7.5),math.rad(0),math.rad(-30))*angles(math.rad(-15),math.rad(0),math.rad(0)),0.45/animationspeed)
RW.C0=clerp(RW.C0,cf(0.75,0.5+idleangle,-0.75)*angles(math.rad(80),math.rad(0),math.rad(-60))*angles(math.rad(0),math.rad(-60),math.rad(0))*RWC0,0.45/animationspeed)
LW.C0=clerp(LW.C0,cf(-1.5,0.5+idleangle,0)*angles(math.rad(50),math.rad(0),math.rad(-10))*LWC0,0.45/animationspeed)
RH.C0=clerp(RH.C0,cf(1,-0.35-idleangle,0)*angles(math.rad(0),math.rad(50),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(22.5)),0.45/animationspeed)
LH.C0=clerp(LH.C0,cf(-1,-0.8-idleangle,0)*angles(math.rad(0),math.rad(-80),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-5)),0.45/animationspeed)
swordhandleweld.C0=clerp(swordhandleweld.C0,cf(0,-1,0)*angles(math.rad(-90),0,0),0.45/animationspeed)
if StaggerHitAnim.Value==true or StaggerAnim.Value==true or StunAnim.Value==true then
break
end
end
LastPoint=nil
attack=false
end

function Attack2()
attack=true
--so("341336274",Hitbox,0.5,1)
for i=0,1,0.12/2 do
hbwait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-1,1+idleangle)*angles(math.rad(-10),math.rad(0),math.rad(0)),0.45/animationspeed)
Neck.C0=clerp(Neck.C0,necko*cf(0,0,0)*angles(math.rad(15),math.rad(0),math.rad(0)),0.45/animationspeed)
RW.C0=clerp(RW.C0,cf(1.5,0.5+idleangle,0)*angles(math.rad(170),math.rad(0),math.rad(5))*angles(math.rad(0),math.rad(-10),math.rad(0))*RWC0,0.45/animationspeed)
LW.C0=clerp(LW.C0,cf(-1.25,0.5+idleangle,-0.25)*angles(math.rad(80),math.rad(0),math.rad(20))*LWC0,0.45/animationspeed)
RH.C0=clerp(RH.C0,cf(1,-0.5-idleangle,-0.25)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(17.5)),0.45/animationspeed)
LH.C0=clerp(LH.C0,cf(-1,-0.75-idleangle,-0.25)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(30)),0.45/animationspeed)
swordhandleweld.C0=clerp(swordhandleweld.C0,cf(0,-1,0)*angles(math.rad(-90),0,0),0.45/animationspeed)
if StaggerHitAnim.Value==true or StaggerAnim.Value==true or StunAnim.Value==true then
break
end
end
--so("200633029",Hitbox,0.5,1)
so("200633077",Hitbox,0.5,3)
--so("341336307",Hitbox,0.5,1)
so("341336485",Hitbox,0.5,1)
LastPoint=Hitbox.CFrame*cf(0,2.1,0)
for i=0,1,0.12/2 do
hbwait()
TrailEffect("Cyan","Neon",Hitbox.CFrame*cf(0,2.1,0),LastPoint,"Block",0,0.1,-0.01,0,-0.01,0.1)
LastPoint=Hitbox.CFrame*cf(0,2.1,0)
MagniDamage(Hitbox,5,50,70,math.random(5,10),"Normal",RootPart,0.5,1,math.random(5,10),nil,true,false,nil,0,0,false)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-2,-0.75+idleangle)*angles(math.rad(15),math.rad(0),math.rad(0)),0.6/animationspeed)
Neck.C0=clerp(Neck.C0,necko*cf(0,0,0)*angles(math.rad(5),math.rad(0),math.rad(0)),0.6/animationspeed)
RW.C0=clerp(RW.C0,cf(1.25,0.5+idleangle,-0.25)*angles(math.rad(10),math.rad(0),math.rad(-5))*angles(math.rad(0),math.rad(20),math.rad(0))*RWC0,0.6/animationspeed)
LW.C0=clerp(LW.C0,cf(-1.5,0.5+idleangle,0)*angles(math.rad(40),math.rad(0),math.rad(-10))*LWC0,0.6/animationspeed)
RH.C0=clerp(RH.C0,cf(1,-0.2-idleangle,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(10)),0.6/animationspeed)
LH.C0=clerp(LH.C0,cf(-1,-1-idleangle,-0.5)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(50)),0.6/animationspeed)
swordhandleweld.C0=clerp(swordhandleweld.C0,cf(0,-1,0)*angles(math.rad(-90),0,0),0.6/animationspeed)
if StaggerHitAnim.Value==true or StaggerAnim.Value==true or StunAnim.Value==true then
break
end
end
LastPoint=nil
attack=false
end

function Attack3()
attack=true
--so("341336274",Hitbox,0.5,1)
for i=0,1,0.12/2 do
hbwait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0+idleangle)*angles(math.rad(0),math.rad(0),math.rad(40)),0.45/animationspeed)
Neck.C0=clerp(Neck.C0,necko*cf(0,0,0)*angles(math.rad(-10),math.rad(0),math.rad(-20)),0.45/animationspeed)
RW.C0=clerp(RW.C0,cf(0.5,0.5+idleangle,-0.75)*angles(math.rad(130),math.rad(0),math.rad(-60))*angles(math.rad(0),math.rad(40),math.rad(0))*RWC0,0.45/animationspeed)
LW.C0=clerp(LW.C0,cf(-1.5,0.5+idleangle,0)*angles(math.rad(30),math.rad(0),math.rad(-5))*LWC0,0.45/animationspeed)
RH.C0=clerp(RH.C0,cf(1,-1-idleangle,0)*angles(math.rad(0),math.rad(50),math.rad(0))*angles(math.rad(-7.5),math.rad(0),math.rad(-2.5)),0.45/animationspeed)
LH.C0=clerp(LH.C0,cf(-1,-1-idleangle,0)*angles(math.rad(0),math.rad(-80),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-7.5)),0.45/animationspeed)
swordhandleweld.C0=clerp(swordhandleweld.C0,cf(0,-1,0)*angles(math.rad(-90),0,0),0.45/animationspeed)
if StaggerHitAnim.Value==true or StaggerAnim.Value==true or StunAnim.Value==true then
break
end
end
--so("200633029",Hitbox,0.5,1)
so("200633077",Hitbox,0.5,1.5)
--so("341336307",Hitbox,0.5,1)
so("341336485",Hitbox,0.5,1)
LastPoint=Hitbox.CFrame*cf(0,2.1,0)
for i=0,1,0.12/2 do
hbwait()
TrailEffect("Cyan","Neon",Hitbox.CFrame*cf(0,2.1,0),LastPoint,"Block",0,0.1,-0.01,0,-0.01,0.1)
LastPoint=Hitbox.CFrame*cf(0,2.1,0)
MagniDamage(Hitbox,5,50,70,math.random(5,10),"Normal",RootPart,0.5,1,math.random(5,10),nil,true,false,nil,0,0,false)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-2,-0.5+idleangle)*angles(math.rad(5),math.rad(0),math.rad(-30)),0.45/animationspeed)
Neck.C0=clerp(Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(20)),0.45/animationspeed)
RW.C0=clerp(RW.C0,cf(1.5,0.5+idleangle,0)*angles(math.rad(30),math.rad(0),math.rad(70))*angles(math.rad(0),math.rad(40),math.rad(0))*RWC0,0.45/animationspeed)
LW.C0=clerp(LW.C0,cf(-1.5,0.5+idleangle,0)*angles(math.rad(50),math.rad(0),math.rad(-45))*LWC0,0.45/animationspeed)
RH.C0=clerp(RH.C0,cf(1,-0.75-idleangle,0)*angles(math.rad(0),math.rad(70),math.rad(0))*angles(math.rad(-30),math.rad(0),math.rad(-15)),0.45/animationspeed)
LH.C0=clerp(LH.C0,cf(-1,-0.5-idleangle,0)*angles(math.rad(0),math.rad(-60),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-7.5)),0.45/animationspeed)
swordhandleweld.C0=clerp(swordhandleweld.C0,cf(0,-1,0)*angles(math.rad(-90),0,0),0.45/animationspeed)
if StaggerHitAnim.Value==true or StaggerAnim.Value==true or StunAnim.Value==true then
break
end
end
LastPoint=nil
attack=false
end

function Attack4()
attack=true
local shieldangle=math.random(-2,2)
for i=0,1,0.12/2 do
hbwait()
MagicBlock("Cyan","Neon",true,swordhandle.CFrame,1,1,1,1,1,1,0.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0+idleangle)*angles(math.rad(0),math.rad(0),math.rad(-40)),0.45/animationspeed)
Neck.C0=clerp(Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(40)),0.45/animationspeed)
RW.C0=clerp(RW.C0,cf(1,0.5+idleangle,-0.5)*angles(math.rad(88+shieldangle),math.rad(0),math.rad(-30))*RWC0,0.45/animationspeed)
LW.C0=clerp(LW.C0,cf(-1,0.5+idleangle,-0.5)*angles(math.rad(88+shieldangle),math.rad(0),math.rad(50))*LWC0,0.45/animationspeed)
RH.C0=clerp(RH.C0,cf(1,-1-idleangle,0)*angles(math.rad(0),math.rad(70),math.rad(0))*angles(math.rad(-7.5),math.rad(0),math.rad(-2.5)),0.45/animationspeed)
LH.C0=clerp(LH.C0,cf(-1,-1-idleangle,0)*angles(math.rad(0),math.rad(-50),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(-2.5)),0.45/animationspeed)
swordhandleweld.C0=clerp(swordhandleweld.C0,cf(0,-1,0)*angles(math.rad(-90),0,0),0.45/animationspeed)
if StaggerHitAnim.Value==true or StaggerAnim.Value==true or StunAnim.Value==true then
break
end
end
so("341336274",swordhandle,0.5,2)
so("341336307",swordhandle,0.5,2)
local Pos1=swordhandle.Position
local MousePos=Mouse.hit.p
local MouseLook=cf((Pos1+MousePos)/2,MousePos)
local blasthit,blastpos=rayCast(Pos1,MouseLook.lookVector,999,Character)
local Mag=(Pos1-blastpos).magnitude
MagicCylinder("Cyan","Neon",cf((Pos1+blastpos)/2,blastpos)*angles(math.rad(90),0,0),5,Mag*5,5,0.1,0,0.1,0.05)
if blasthit~=nil and blasthit.Name~="Effect" then
local refpart=part(3,Effects,"SmoothPlastic",0,1,"Really black","Effect",vt())
refpart.Anchored=true
refpart.CFrame=cf(blastpos)
game:GetService("Debris"):AddItem(refpart,5)
so("341336499",refpart,0.5,3)
MagicCircle("Cyan","Neon",refpart.CFrame,10,10,10,1,1,1,0.05)
MagicBlock("Cyan","Neon",true,refpart.CFrame,5,5,5,0.5,0.5,0.5,0.05)
MagniDamage(refpart,5,50,70,0,"Normal",RootPart,0.5,1,math.random(5,10),nil,true,true,nil,0,0,false)
end
for i=0,1,0.12/2 do
hbwait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.2,-0.15+idleangle)*angles(math.rad(-10),math.rad(0),math.rad(-40)),0.45/animationspeed)
Neck.C0=clerp(Neck.C0,necko*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(40)),0.45/animationspeed)
RW.C0=clerp(RW.C0,cf(1,0.5+idleangle,-0.5)*angles(math.rad(98+shieldangle),math.rad(0),math.rad(-30))*RWC0,0.45/animationspeed)
LW.C0=clerp(LW.C0,cf(-1,0.5+idleangle,-0.5)*angles(math.rad(98+shieldangle),math.rad(0),math.rad(50))*LWC0,0.45/animationspeed)
RH.C0=clerp(RH.C0,cf(1,-0.7-idleangle,0)*angles(math.rad(0),math.rad(70),math.rad(0))*angles(math.rad(-17.5),math.rad(0),math.rad(-2.5)),0.45/animationspeed)
LH.C0=clerp(LH.C0,cf(-1,-1-idleangle,0)*angles(math.rad(0),math.rad(-50),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(7.5)),0.45/animationspeed)
swordhandleweld.C0=clerp(swordhandleweld.C0,cf(0,-1,0)*angles(math.rad(-90),0,0),0.45/animationspeed)
if StaggerHitAnim.Value==true or StaggerAnim.Value==true or StunAnim.Value==true then
break
end
end
attack=false
end

function Move1()
attack=true
--so("341336274",Hitbox,0.5,1)
for i=0,1,0.12/2 do
hbwait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-1,1+idleangle)*angles(math.rad(-10),math.rad(0),math.rad(0)),0.45/animationspeed)
Neck.C0=clerp(Neck.C0,necko*cf(0,0,0)*angles(math.rad(-10),math.rad(0),math.rad(0)),0.45/animationspeed)
RW.C0=clerp(RW.C0,cf(1.5,0.5+idleangle,0)*angles(math.rad(170),math.rad(0),math.rad(5))*RWC0,0.45/animationspeed)
LW.C0=clerp(LW.C0,cf(-1.25,0.5+idleangle,-0.25)*angles(math.rad(70),math.rad(0),math.rad(40))*LWC0,0.45/animationspeed)
RH.C0=clerp(RH.C0,cf(1,-1-idleangle,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-20)),0.45/animationspeed)
LH.C0=clerp(LH.C0,cf(-1,-0.5-idleangle,-0.5)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(5)),0.45/animationspeed)
swordhandleweld.C0=clerp(swordhandleweld.C0,cf(0,-1,0)*angles(math.rad(-90),0,0),0.45/animationspeed)
if StaggerHitAnim.Value==true or StaggerAnim.Value==true or StunAnim.Value==true then
break
end
end
--so("200633029",Hitbox,0.5,1)
so("200633077",Hitbox,0.5,1.7)
--so("341336307",Hitbox,0.5,1)
so("341336485",Hitbox,0.5,1)
LastPoint=Hitbox.CFrame*cf(0,2.1,0)
for i=0,1,0.24/2 do
hbwait()
TrailEffect("Cyan","Neon",Hitbox.CFrame*cf(0,2.1,0),LastPoint,"Block",0,0.1,-0.01,0,-0.01,0.1)
LastPoint=Hitbox.CFrame*cf(0,2.1,0)
MagniDamage(Hitbox,5,50,70,math.random(5,10),"Normal",RootPart,0.5,1,math.random(5,10),nil,true,false,nil,0,0,false)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-2,-1+idleangle)*angles(math.rad(10),math.rad(0),math.rad(0)),0.6/animationspeed)
Neck.C0=clerp(Neck.C0,necko*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),0.6/animationspeed)
RW.C0=clerp(RW.C0,cf(1.25,0.5+idleangle,-0.25)*angles(math.rad(0),math.rad(0),math.rad(5))*RWC0,0.6/animationspeed)
LW.C0=clerp(LW.C0,cf(-1.5,0.5+idleangle,0)*angles(math.rad(5),math.rad(0),math.rad(-15))*LWC0,0.6/animationspeed)
RH.C0=clerp(RH.C0,cf(1,-1-idleangle,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-60)),0.6/animationspeed)
LH.C0=clerp(LH.C0,cf(-1,0-idleangle,-0.5)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(5)),0.6/animationspeed)
swordhandleweld.C0=clerp(swordhandleweld.C0,cf(0,-1,0)*angles(math.rad(-90),0,0),0.6/animationspeed)
if StaggerHitAnim.Value==true or StaggerAnim.Value==true or StunAnim.Value==true then
break
end
end
if StaggerHitAnim.Value~=true and StaggerAnim.Value~=true and StunAnim.Value~=true then
local swordhit,swordpos=rayCast(RootPart.Position,cf(RootPart.Position,RootPart.Position+vt(0,-1,0)).lookVector,4,Character)
if swordhit~=nil and swordhit.Name~="Effect" then
local refpart=part(3,Effects,"SmoothPlastic",0,1,"Really black","Effect",vt())
refpart.Anchored=true
refpart.CFrame=RootPart.CFrame*cf(1.1,0,0)
game:GetService("Debris"):AddItem(refpart,5)
coroutine.resume(coroutine.create(function(Origin)
local increment=-10.1
for i=1,4 do
local refpart2=part(3,Effects,"SmoothPlastic",0,1,"Really black","Effect",vt())
refpart2.Anchored=true
refpart2.CFrame=refpart.CFrame*cf(0,0,increment)
game:GetService("Debris"):AddItem(refpart,5)
local refpart2hit,refpart2pos=rayCast(refpart2.Position,cf(refpart2.Position,refpart2.Position+vt(0,-1,0)).lookVector,999,Character)
if refpart2hit~=nil then
local refpart3=part(3,Effects,"SmoothPlastic",0,1,"Really black","Effect",vt())
refpart3.Anchored=true
refpart3.CFrame=cf(refpart2pos)
game:GetService("Debris"):AddItem(refpart3,5)
so("341336499",refpart3,0.5,2)
MagicWave("Cyan","Neon",refpart3.CFrame,20,0.1,20,0.5,0.01,0.5,0.05)
MagicSpikedCrown("Cyan","Neon",refpart3.CFrame,20,20,20,0.5,0.5,0.5,0.05)
MagniDamage(refpart3,15,50,70,math.random(10,20),"ElectricGroundSmash",refpart3,0,1,math.random(5,10),nil,true,true,"Damage",0.1,3,true)
end
increment=increment-10
wait(0.25)
end
end),refpart)
end
end
for i=0,1,0.24/2 do
hbwait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-2,-1+idleangle)*angles(math.rad(10),math.rad(0),math.rad(0)),0.6/animationspeed)
Neck.C0=clerp(Neck.C0,necko*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),0.6/animationspeed)
RW.C0=clerp(RW.C0,cf(1.25,0.5+idleangle,-0.25)*angles(math.rad(0),math.rad(0),math.rad(5))*RWC0,0.6/animationspeed)
LW.C0=clerp(LW.C0,cf(-1.5,0.5+idleangle,0)*angles(math.rad(5),math.rad(0),math.rad(-15))*LWC0,0.6/animationspeed)
RH.C0=clerp(RH.C0,cf(1,-1-idleangle,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-60)),0.6/animationspeed)
LH.C0=clerp(LH.C0,cf(-1,0-idleangle,-0.5)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(5)),0.6/animationspeed)
swordhandleweld.C0=clerp(swordhandleweld.C0,cf(0,-1,0)*angles(math.rad(-90),0,0),0.6/animationspeed)
if StaggerHitAnim.Value==true or StaggerAnim.Value==true or StunAnim.Value==true then
break
end
end
LastPoint=nil
attack=false
end

--[[
local testpart=Instance.new("Part",workspace.CurrentCamera)
testpart.Anchored=true
testpart.CFrame=cf(0,0,-50)
testpart.Size=Vector3.new(50,50,50)
--]]

function Move3()
attack=true
for i=0,1,0.12/2 do
hbwait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.25+idleangle)*angles(math.rad(0),math.rad(-5),math.rad(-10)),0.45/animationspeed)
Neck.C0=clerp(Neck.C0,necko*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(5)),0.45/animationspeed)
RW.C0=clerp(RW.C0,cf(1.5,0.5+idleangle,0)*angles(math.rad(50),math.rad(0),math.rad(20))*RWC0,0.45/animationspeed)
LW.C0=clerp(LW.C0,cf(-1.5,0.25+idleangle,0)*angles(math.rad(130),math.rad(0),math.rad(5))*LWC0,0.45/animationspeed)
RH.C0=clerp(RH.C0,cf(1,-0.75-idleangle,0)*angles(math.rad(0),math.rad(70),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(-10)),0.45/animationspeed)
LH.C0=clerp(LH.C0,cf(-1,-0.8-idleangle,-0.25)*angles(math.rad(0),math.rad(-80),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-5)),0.45/animationspeed)
swordhandleweld.C0=clerp(swordhandleweld.C0,cf(0,-1,0)*angles(math.rad(-55),0,0),0.45/animationspeed)
if StaggerHitAnim.Value==true or StaggerAnim.Value==true or StunAnim.Value==true then
break
end
end
for i=0,1,0.12/2 do
hbwait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.1+idleangle)*angles(math.rad(0),math.rad(5),math.rad(10)),0.45/animationspeed)
Neck.C0=clerp(Neck.C0,necko*cf(0,0,0)*angles(math.rad(-5),math.rad(0),math.rad(-15)),0.45/animationspeed)
RW.C0=clerp(RW.C0,cf(1.5,0.5+idleangle,0)*angles(math.rad(150),math.rad(0),math.rad(10))*angles(math.rad(0),math.rad(10),math.rad(0))*RWC0,0.45/animationspeed)
LW.C0=clerp(LW.C0,cf(-1.5,0.5+idleangle,0)*angles(math.rad(20),math.rad(0),math.rad(-10))*LWC0,0.45/animationspeed)
RH.C0=clerp(RH.C0,cf(1,-1-idleangle,0)*angles(math.rad(0),math.rad(80),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-2.5)),0.45/animationspeed)
LH.C0=clerp(LH.C0,cf(-1,-0.9-idleangle,-0.25)*angles(math.rad(0),math.rad(-100),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(-5)),0.45/animationspeed)
swordhandleweld.C0=clerp(swordhandleweld.C0,cf(0,-1,0)*angles(math.rad(-140),0,0),0.45/animationspeed)
if StaggerHitAnim.Value==true or StaggerAnim.Value==true or StunAnim.Value==true then
break
end
end
so("306247678",Hitbox,0.5,0.75)
--so("341336159",Hitbox,0.5,0.75)
--MagicRing("Cyan","Neon",cf(Hitbox.Position)*cf(0,2.1,0)*angles(math.rad(90),0,0),1,1,1,1,1,0,0.01)
for i=0,1,0.04/2 do
hbwait()
--Lightning(Hitbox.Position+vt(0,2,0),Hitbox.Position+vt(math.random(-20,20),20,math.random(-20,20)),1,1,"Cyan","Neon",1/10,5/10,2)
--MagicCylinder("Cyan","Neon",Hitbox.CFrame*cf(0,2.1+149,-23.6)*angles(math.rad(-9),0,0),0.5,1500,0.5,1,0,1,0.1)
--MagicBlock("Cyan","Neon",true,Hitbox.CFrame--[[*cf(0,2.1,0)--]],1,1,1,1,1,1,0.05)
MagicCircle("Cyan","Neon",Hitbox.CFrame,5,25,5,math.random(5,10)/10,math.random(5,10)/10,math.random(5,10)/10,0.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.1+idleangle)*angles(math.rad(0),math.rad(5),math.rad(10)),0.45/animationspeed)
Neck.C0=clerp(Neck.C0,necko*cf(0,0,0)*angles(math.rad(-5),math.rad(0),math.rad(-15)),0.45/animationspeed)
RW.C0=clerp(RW.C0,cf(1.5,0.5+idleangle,0)*angles(math.rad(150),math.rad(0),math.rad(10))*angles(math.rad(0),math.rad(10),math.rad(0))*RWC0,0.45/animationspeed)
LW.C0=clerp(LW.C0,cf(-1.5,0.5+idleangle,0)*angles(math.rad(20),math.rad(0),math.rad(-10))*LWC0,0.45/animationspeed)
RH.C0=clerp(RH.C0,cf(1,-1-idleangle,0)*angles(math.rad(0),math.rad(80),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-2.5)),0.45/animationspeed)
LH.C0=clerp(LH.C0,cf(-1,-0.9-idleangle,-0.25)*angles(math.rad(0),math.rad(-100),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(-5)),0.45/animationspeed)
swordhandleweld.C0=clerp(swordhandleweld.C0,cf(0,-1,0)*angles(math.rad(-140),0,0),0.45/animationspeed)
if StaggerHitAnim.Value==true or StaggerAnim.Value==true or StunAnim.Value==true then
break
end
end
for i=0,1,0.12/2 do
hbwait()
MagicCircle("Cyan","Neon",Hitbox.CFrame,5,25,5,math.random(5,10)/10,math.random(5,10)/10,math.random(5,10)/10,0.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0+idleangle)*angles(math.rad(0),math.rad(0),math.rad(50)),0.45/animationspeed)
Neck.C0=clerp(Neck.C0,necko*cf(0,0,0)*angles(math.rad(5),math.rad(0),math.rad(-50)),0.45/animationspeed)
RW.C0=clerp(RW.C0,cf(1,0.5+idleangle,-0.5)*angles(math.rad(110),math.rad(0),math.rad(-50))*angles(math.rad(0),math.rad(60),math.rad(0))*RWC0,0.45/animationspeed)
LW.C0=clerp(LW.C0,cf(-1.5,0.5+idleangle,0)*angles(math.rad(-15),math.rad(0),math.rad(-10))*LWC0,0.45/animationspeed)
RH.C0=clerp(RH.C0,cf(1,-1-idleangle,0.25)*angles(math.rad(0),math.rad(40),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(2.5)),0.45/animationspeed)
LH.C0=clerp(LH.C0,cf(-1,-1-idleangle,0)*angles(math.rad(0),math.rad(-70),math.rad(0))*angles(math.rad(-7.5),math.rad(0),math.rad(5)),0.45/animationspeed)
swordhandleweld.C0=clerp(swordhandleweld.C0,cf(0,-1,0)*angles(math.rad(-90),0,0),0.45/animationspeed)
if StaggerHitAnim.Value==true or StaggerAnim.Value==true or StunAnim.Value==true then
break
end
end
--so("200633029",Hitbox,0.5,1)
so("200633077",Hitbox,0.5,2.9)
--so("341336307",Hitbox,0.5,1)
so("341336485",Hitbox,0.5,1)
LastPoint=Hitbox.CFrame*cf(0,2.1,0)
local energywavepart=part(3,Effects,"Neon",0,1,"Cyan","Effect",vt())
energywavepart.Anchored=true
energywavepart.CFrame=RootPart.CFrame*cf(0,0,-6.5)--*angles(math.rad(90),math.rad(80),0)
--local energywavemesh=mesh("SpecialMesh",energywavepart,"FileMesh","http://www.roblox.com/asset/?id=448386996",vt(0,0,0),vt(1/1000,1/20,1/15))
game:GetService("Debris"):AddItem(energywavepart,1)
coroutine.resume(coroutine.create(function(Wave)
local number=500
so("341336274",Wave,0.75,0.75)
repeat
hbwait()
wavecframe=Wave.CFrame
--Wave.CFrame=wavecframe*cf(0,-1,0)
Wave.CFrame=wavecframe*cf(0,0,-1)
MagicBlock("Cyan","Neon",true,Wave.CFrame,100,100,100,-1,-1,-1,0.05)
MagniDamage(Wave,15,70,100,math.random(10,20),"ElectricBlast",Wave,1,1,math.random(5,10),nil,true,true,"Movement",0.1,10,true)
number=number-1
until number<=0
end),energywavepart)
for i=0,1,0.12/2 do
hbwait()
TrailEffect("Cyan","Neon",Hitbox.CFrame*cf(0,2.1,0),LastPoint,"Block",0,0.1,-0.01,0,-0.01,0.1)
LastPoint=Hitbox.CFrame*cf(0,2.1,0)
MagniDamage(Hitbox,5,50,70,math.random(5,10),"Normal",RootPart,0.5,1,math.random(5,10),nil,true,false,nil,0,0,false)
--MagicCircle("Cyan","Neon",Hitbox.CFrame,5,25,5,math.random(5,10)/10,math.random(5,10)/10,math.random(5,10)/10,0.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-1.5,-0.5+idleangle)*angles(math.rad(5),math.rad(0),math.rad(-40)),0.45/animationspeed)
Neck.C0=clerp(Neck.C0,necko*cf(0,0,0)*angles(math.rad(5),math.rad(0),math.rad(40)),0.45/animationspeed)
RW.C0=clerp(RW.C0,cf(1.5,0.5+idleangle,0)*angles(math.rad(50),math.rad(0),math.rad(70))*angles(math.rad(0),math.rad(60),math.rad(0))*RWC0,0.45/animationspeed)
LW.C0=clerp(LW.C0,cf(-1.5,0.5+idleangle,0)*angles(math.rad(-10),math.rad(0),math.rad(-60))*LWC0,0.45/animationspeed)
RH.C0=clerp(RH.C0,cf(1,-0.6-idleangle,0)*angles(math.rad(0),math.rad(80),math.rad(0))*angles(math.rad(-12.5),math.rad(0),math.rad(-5)),0.45/animationspeed)
LH.C0=clerp(LH.C0,cf(-1.1,-0.5-idleangle,0.15)*angles(math.rad(0),math.rad(-50),math.rad(0))*angles(math.rad(-7.5),math.rad(0),math.rad(-7.5)),0.45/animationspeed)
swordhandleweld.C0=clerp(swordhandleweld.C0,cf(0,-1,0)*angles(math.rad(-150),0,0),0.45/animationspeed)
if StaggerHitAnim.Value==true or StaggerAnim.Value==true or StunAnim.Value==true then
break
end
end
LastPoint=nil
attack=false
end

function Move4()
attack=true
--[[
for i=0,1,0.12/2 do
hbwait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1+idleangle)*angles(math.rad(10),math.rad(0),math.rad(0)),0.45/animationspeed)
Neck.C0=clerp(Neck.C0,necko*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),0.45/animationspeed)
RW.C0=clerp(RW.C0,cf(1.5,0.5+idleangle,0)*angles(math.rad(0),math.rad(0),math.rad(40))*RWC0,0.45/animationspeed)
LW.C0=clerp(LW.C0,cf(-1.5,0.5+idleangle,0)*angles(math.rad(0),math.rad(0),math.rad(-30))*LWC0,0.45/animationspeed)
RH.C0=clerp(RH.C0,cf(1,-0-idleangle,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(7.5)),0.45/animationspeed)
LH.C0=clerp(LH.C0,cf(-1,-0.5-idleangle,-0.5)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(25)),0.45/animationspeed)
swordhandleweld.C0=clerp(swordhandleweld.C0,cf(0,-1,0)*angles(math.rad(-90),0,0),0.45/animationspeed)
if StaggerHitAnim.Value==true or StaggerAnim.Value==true or StunAnim.Value==true then
break
end
end
MagicWave("Institutional white","SmoothPlastic",RootPart.CFrame*cf(0,-3,0),5,1,5,0.2,-0.01,0.2,0.025)
Humanoid.Jump=true
Torso.Velocity=Vector3.new(0,50,0)+RootPart.CFrame.lookVector*50
for i=0,1,0.12/2 do
hbwait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0+idleangle)*angles(math.rad(-5),math.rad(0),math.rad(0)),0.45/animationspeed)
Neck.C0=clerp(Neck.C0,necko*cf(0,0,0)*angles(math.rad(-5),math.rad(0),math.rad(0)),0.45/animationspeed)
RW.C0=clerp(RW.C0,cf(1.5,0.5+idleangle,0)*angles(math.rad(-15),math.rad(0),math.rad(15))*RWC0,0.45/animationspeed)
LW.C0=clerp(LW.C0,cf(-1.5,0.5+idleangle,0)*angles(math.rad(-5),math.rad(0),math.rad(-10))*LWC0,0.45/animationspeed)
RH.C0=clerp(RH.C0,cf(1,-0.9-idleangle,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(1.25),math.rad(0),math.rad(-35)),0.45/animationspeed)
LH.C0=clerp(LH.C0,cf(-1,-0.8-idleangle,-0.25)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(15)),0.45/animationspeed)
swordhandleweld.C0=clerp(swordhandleweld.C0,cf(0,-1,0)*angles(math.rad(-90),0,0),0.45/animationspeed)
if StaggerHitAnim.Value==true or StaggerAnim.Value==true or StunAnim.Value==true then
break
end
end
]]--
for i=0,1,0.12/2 do
hbwait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1+idleangle)*angles(math.rad(10),math.rad(0),math.rad(0)),0.45/animationspeed)
Neck.C0=clerp(Neck.C0,necko*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),0.45/animationspeed)
RW.C0=clerp(RW.C0,cf(1,0.5+idleangle,-0.5)*angles(math.rad(110),math.rad(0),math.rad(-45))*angles(math.rad(0),math.rad(-180),math.rad(0))*RWC0,0.45/animationspeed)
LW.C0=clerp(LW.C0,cf(-1,0.5+idleangle,-0.5)*angles(math.rad(110),math.rad(0),math.rad(45))*LWC0,0.45/animationspeed)
RH.C0=clerp(RH.C0,cf(1,-0-idleangle,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(7.5)),0.45/animationspeed)
LH.C0=clerp(LH.C0,cf(-1,-0.5-idleangle,-0.5)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(25)),0.45/animationspeed)
swordhandleweld.C0=clerp(swordhandleweld.C0,cf(0,-1,0)*angles(math.rad(-90),0,0)*angles(0,math.rad(-45),0),0.45/animationspeed)
if StaggerHitAnim.Value==true or StaggerAnim.Value==true or StunAnim.Value==true then
break
end
end
local move4num=0
for i=0,1,0.04/2 do
hbwait()
if move4num>=5 then
move4num=0
MagicWave("Cyan","Neon",RootPart.CFrame*cf(0,-3,0),1,1,1,1,0.1,1,0.05)
else
move4num=move4num+1
end
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-1+idleangle)*angles(math.rad(10),math.rad(0),math.rad(0)),0.45/animationspeed)
Neck.C0=clerp(Neck.C0,necko*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),0.45/animationspeed)
RW.C0=clerp(RW.C0,cf(1,0.5+idleangle,-0.5)*angles(math.rad(110),math.rad(0),math.rad(-45))*angles(math.rad(0),math.rad(-180),math.rad(0))*RWC0,0.45/animationspeed)
LW.C0=clerp(LW.C0,cf(-1,0.5+idleangle,-0.5)*angles(math.rad(110),math.rad(0),math.rad(45))*LWC0,0.45/animationspeed)
RH.C0=clerp(RH.C0,cf(1,-0-idleangle,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(7.5)),0.45/animationspeed)
LH.C0=clerp(LH.C0,cf(-1,-0.5-idleangle,-0.5)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(25)),0.45/animationspeed)
swordhandleweld.C0=clerp(swordhandleweld.C0,cf(0,-1,0)*angles(math.rad(-90),0,0)*angles(0,math.rad(-45),0),0.45/animationspeed)
if StaggerHitAnim.Value==true or StaggerAnim.Value==true or StunAnim.Value==true then
break
end
end
attack=false
end

hold=false

Mouse.Button1Down:connect(function()
--function ob1d(Mouse)
if attack==true or equipped==false then return end
hold=true
if attacktype==1 then
attacktype=2
Attack1()
elseif attacktype==2 then
attacktype=3
Attack2()
elseif attacktype==3 then
attacktype=4
Attack3()
elseif attacktype==4 then
attacktype=1
Attack4()
end
coroutine.resume(coroutine.create(function()
for i=1,50 do
if attack==false then
hbwait()
end
end
if attack==false then
attacktype=1
end
end))
--end
end)

if allowhopperbin==true then
function ob1u(Mouse)
hold=false
end
end

Mouse.KeyDown:connect(function(key)
--function key(key)
if key=="f" and canunequiporequip==true and attack==false then
if equipped==false then
equipped=true
if disableanimate==true then
Animate.Disabled=true
local idleanimation=Humanoid:LoadAnimation(Torso.robloxidleanimation)
idleanimation:Play()
end
if disableanimator==true then
Animator.Parent=nil
end
if disablemovingarms==true then
RW.Parent=Torso 
LW.Parent=Torso 
RSH.Parent=nil 
LSH.Parent=nil 
end
equipanim()
elseif equipped==true then
equipped=false
unequipanim()
hbwait()
if disablemovingarms==true then
RW.Parent=nil 
LW.Parent=nil 
RSH.Parent=Torso 
LSH.Parent=Torso 
end
if disableanimator==true then
Animator.Parent=Humanoid
end
if disableanimate==true then
Animate.Disabled=false
end
end
end
if key=="e" and attack==false and equipped==true then
EAbility()
end
if key=="z" and attack==false and equipped==true and cooldown1>=co1 and Mana.Value>=skill1mana then
subtractmana(skill1mana)
cooldown1=0
Move1()
end
if key=="x" and attack==false and equipped==true and cooldown2>=co2 and Mana.Value>=skill2mana then
subtractmana(skill2mana)
cooldown2=0
Move2()
end
if key=="c" and attack==false and equipped==true and cooldown3>=co3 and Mana.Value>=skill3mana then
subtractmana(skill3mana)
cooldown3=0
Move3()
end
if key=="v" and attack==false and equipped==true and cooldown4>=co4 and Mana.Value>=skill4mana then
subtractmana(skill4mana)
cooldown4=0
Move4()
end
if key=="q" then
Mana.Value=100
cooldown1=co1
cooldown2=co2
cooldown3=co3
cooldown4=co4
end
if key=="p" then
StaggerHitAnim.Value=true
end
if key=="[" then
StaggerAnim.Value=true
end
if key=="]" then
StunAnim.Value=true
end
--end
end)

Mouse.KeyUp:connect(function(key2)
--function key2(key)
--end
end)
----
Me = game.Players.LocalPlayer
player = Me
char = Me.Character
chara = char

New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end

Mouse = player:GetMouse()

for i,v in pairs(chara:children()) do
	if v:IsA("Accessory") or v:IsA("") or v:IsA("") then
		v:Destroy()
	end
end

s = Instance.new("Sound",game.Players.LocalPlayer.Character.Torso)
s.SoundId = "rbxassetid://144260525"
s.Volume = 1
s.Pitch = 1
s.Looped = true
wait()
s:Play()

s = Instance.new("Sound",game.Players.LocalPlayer.Character.Torso)
s.SoundId = "rbxassetid://530138502"
s.Volume = 3
s.Pitch = 0.83
s.Looped = false
wait()
s:Play()

wait(15)

local Player = game.Players.LocalPlayer

local Character = Player.Character

local Humanoid = Character.Humanoid

local Mouse = Player:GetMouse()

Character:WaitForChild("Animate"):Remove()

Humanoid.MaxHealth = 2000

Humanoid.Health = 1980

wait()

function SmoothAllSides(Part)

  local Sides = {

    "TopSurface",

    "BottomSurface",

    "LeftSurface",

    "RightSurface",

    "FrontSurface",

    "BackSurface"

  }

  for i, v in pairs(Sides) do

    Part[v] = "SmoothNoOutlines"

  end

end

local StaffM = Instance.new("Model")

StaffM.Parent = Character

local Staff = Instance.new("Part")

Staff.Parent = StaffM

Staff.Shape = Enum.PartType.Cylinder

Staff.Size = Vector3.new(0, 0, 0)

Staff.BrickColor = BrickColor.new("Really black")

Staff.CanCollide = false

local Ring0 = Instance.new("Part")

Ring0.Parent = StaffM

Ring0.CanCollide = false

Ring0.BrickColor = BrickColor.new("Really black")

Ring0.Material = Enum.Material.SmoothPlastic

local Ring = Instance.new("SpecialMesh")

Ring.Parent = Ring0

Ring.MeshType = Enum.MeshType.FileMesh

Ring.Scale = Vector3.new(0, 0, 0)

Ring.MeshId = "rbxassetid://"

local Ring1 = Ring0:Clone()

Ring1.Parent = StaffM

local Weld1, Weld2, Weld3 = Instance.new("Weld"), Instance.new("Weld"), Instance.new("Weld")

Weld1.Parent = StaffM

Weld1.Part0 = Staff

Weld1.Part1 = Ring0

Weld1.C1 = CFrame.new(0, 0, 0)

Weld2.Parent = StaffM

Weld2.Part0 = Staff

Weld2.Part1 = Ring1

Weld2.C1 = CFrame.new(0, 0, 0)

Weld3.Parent = StaffM

Weld3.Part0 = Character["Left Arm"]

Weld3.Part1 = Staff

Weld3.C0 = CFrame.new(0, Character["Left Arm"].Size.Y / -2, 0) * CFrame.Angles(0, math.pi / 2, 0)

SmoothAllSides(Staff)

local bools = {

  Idle = true,

  Moving = false,

  OffenseDefense = false,

  MovingUp = false,

  MovingDown = false,

  Blocking = false

}

local joints = {

  ["Head"] = Character.Torso.Neck,

  ["Torso"] = Character.HumanoidRootPart.RootJoint,

  ["Left Arm"] = Character.Torso["Left Shoulder"],

  ["Right Arm"] = Character.Torso["Right Shoulder"],

  ["Left Leg"] = Character.Torso["Left Hip"],

  ["Right Leg"] = Character.Torso["Right Hip"]

}

local HeadC0 = joints.Head.C0

local TorsoC0 = joints.Torso.C0

local RightAC0 = joints["Left Arm"].C0

local LeftAC0 = joints["Right Arm"].C0

local RightLC0 = joints["Left Leg"].C0

local LeftLC0 = joints["Right Leg"].C0

local Animations = {

  idle = {

    HeadC0 = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(80), math.rad(180), math.rad(-12)),

    TorsoC0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90), math.rad(180), math.rad(18)),

    LeftAC0 = CFrame.new(1, 0.5, 0) * CFrame.Angles(0, math.rad(90), math.rad(120)) * CFrame.Angles(math.rad(45), 0, 0),

    RightLC0 = CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-90), math.rad(80), math.rad(90)) * CFrame.Angles(0, 0, math.rad(5)),

    LeftLC0 = CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-90), math.rad(-80), math.rad(-90)) * CFrame.Angles(0, math.rad(10), math.rad(15))

  },

  running = {

    HeadC0 = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(115), math.rad(180), 0),

    TorsoC0 = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(60), math.rad(180), 0),

    RightAC0 = CFrame.new(-1, 0.5, 0) * CFrame.Angles(math.rad(50), math.rad(-120), 0) * CFrame.Angles(math.rad(33), 0, 0),

    LeftAC0 = CFrame.new(1, 0.5, 0) * CFrame.Angles(math.rad(-40), math.rad(90), 0) * CFrame.Angles(math.rad(23), 0, 0),

    RightLC0 = CFrame.new(1, -1, -0.2) * CFrame.Angles(math.rad(-10), math.rad(90), 0),

    LeftLC0 = CFrame.new(-1, -1, -0.65) * CFrame.Angles(math.rad(-30), math.rad(-90), 0)

  }

}

local Input = game:GetService("UserInputService")

local RunService = game:GetService("RunService")

Humanoid:ClearAllChildren()



local TruthBall = Instance.new("Part")

TruthBall.Name = "Truth Seeking Ball"

TruthBall.Material = Enum.Material.Neon

TruthBall.Shape = Enum.PartType.Ball

TruthBall.Size = Vector3.new(0, 0, 0)

TruthBall.Anchored = true

TruthBall.Locked = true

TruthBall.CanCollide = false

TruthBall.BrickColor = BrickColor.new("Cyan")

SmoothAllSides(TruthBall)

for i = 1, 6 do

  local TruthSeekBalls = TruthBall:Clone()

  TruthSeekBalls.Parent = Character

end

TruthTable = {}

for ind, var in ipairs(Character:GetChildren()) do

  if var.Name == "Truth Seeking Ball" then

    table.insert(TruthTable, var)

  end

end

RunService.RenderStepped:connect(function()

  for i, v in ipairs(TruthTable) do

    v.CFrame = v.CFrame:lerp(Character.Torso.CFrame * CFrame.new(math.cos(i + 7.5) * 2.5, math.sin(i + 7.5) * 2.5, 1.5), 0.15)

  end

end)

local BodyParts = {

  Character.Head,

  Character.Torso,

  Character["Left Arm"],

  Character["Right Arm"],

  Character["Left Leg"],

  Character["Right Leg"]

}


local Block = TruthTable[math.random(1, #TruthTable)]

local BlockCF = Block.CFrame

local Defense = Block:Clone()

Input.InputBegan:connect(function(Key, GPE)

  if Key.KeyCode == Enum.KeyCode.X and not GPE and bools.Blocking == false then

    Humanoid.WalkSpeed = 0

    Humanoid.JumpPower = 0

    bools.Blocking = true

    while bools.Blocking == true do

      Block.Transparency = 1

      Defense.Parent = Character

      Defense.Shape = Enum.PartType.Block

      Defense.Size = Vector3.new(10, 9, 0.2)

      RunService.RenderStepped:connect(function()

        Defense.CFrame = Block.CFrame:lerp(Character.Torso.CFrame * CFrame.new(0, 0, -10), 0.6)

      end)

      Defense.CanCollide = true

      if bools.Blocking == false then

        elseif Key.KeyCode == Enum.KeyCode.Z and not GPE and Mouse.Target then

          local Copy = Block:Clone()

          Block.Transparency = 1

          Copy.Parent = Character

          Copy.Anchored = false

          Copy.CFrame = Block.CFrame

          local CopyV = Instance.new("BodyVelocity")

          CopyV.Parent = Copy

          CopyV.MaxForce = Vector3.new(math.huge, math.huge, math.huge)

          CopyV.Velocity = Mouse.UnitRay:ClosestPoint() * 100

		else
	
			wait()

        end

      end

    end

end)

Input.InputEnded:connect(function(Key, GPE)

  if Key.KeyCode == Enum.KeyCode.X and not GPE and bools.Blocking == true then

    Humanoid.WalkSpeed = 60

    Humanoid.JumpPower = 200

    bools.Blocking = false

    Defense.CanCollide = false

    Defense.Shape = Enum.PartType.Ball

    Defense.Size = Vector3.new(0, 0, 0)

    RunService.RenderStepped:connect(function()

      Defense.CFrame = Defense.CFrame:lerp(BlockCF, 0.15)

    end)

    Defense:Remove()

    Block.Transparency = 0

    Block = TruthTable[math.random(1, #TruthTable)]

    BlockCF = Block.CFrame

  end

end)

RunService.RenderStepped:connect(function()

  local CurrentAnimation = "Idle"

  if (Character.Torso.Velocity - Vector3.new(1, 0, 1)).magnitude > 2 then

    CurrentAnimation = "Walking"

  elseif (Character.Torso.Velocity - Vector3.new(1, 0, 1)).magnitude < 2 then

    CurrentAnimation = "Idle"

  end

  if CurrentAnimation == "Idle" and not bools.OffenseDefense then

    joints.Head.C0 = joints.Head.C0:lerp(Animations.idle.HeadC0 * CFrame.Angles(math.rad(2 * math.sin(-tick() * 2)), 0, 0), 0.35)

    joints.Torso.C0 = joints.Torso.C0:lerp(Animations.idle.TorsoC0 * CFrame.new(0, 0, 0.1 * math.sin(tick() * 2) / 2), 0.35)
    
    joints["Right Leg"].C0 = joints["Left Leg"].C0:lerp(Animations.idle.RightLC0 * CFrame.new(0, 0.1 * math.sin(-tick() * 2), 0.025 * math.sin(-tick() * 2)) * CFrame.Angles(0, 0, math.rad(3 * math.sin(tick() * -2))), 0.35)

    joints["Left Leg"].C0 = joints["Right Leg"].C0:lerp(Animations.idle.LeftLC0 * CFrame.new(0, 0.1 * math.sin(-tick() * 2), 0.025 * math.sin(-tick() * 2)) * CFrame.Angles(0, 0, math.rad(3 * math.sin(tick() * -2))), 0.35)

  elseif CurrentAnimation == "Walking" and not bools.OffenseDefense then

    joints.Head.C0 = joints.Head.C0:lerp(Animations.running.HeadC0, 0.15)

    joints.Torso.C0 = joints.Torso.C0:lerp(Animations.running.TorsoC0, 0.15)
    
    joints["Right Leg"].C0 = joints["Left Leg"].C0:lerp(Animations.running.RightLC0, 0.15)

    joints["Left Leg"].C0 = joints["Right Leg"].C0:lerp(Animations.running.LeftLC0, 0.15)

  end

end)


name = game.Players.LocalPlayer.Name
player = game.Players:WaitForChild(name)
chara = player.Character
debby = game:GetService("Debris")
chara.Humanoid.MaxHealth = 2000
chara.Humanoid.Health = 2000
chara.Humanoid.WalkSpeed = 50
chara.Humanoid.JumpPower = 200

local p = Instance.new("Part", chara)
p.Name = "Ears"
p.BrickColor = BrickColor.new("Cyan")
p.Size = Vector3.new(0, 0, 0)
p.BottomSurface = 0
p.TopSurface = 0
p.Position = chara.Head.Position
local pweld = Instance.new("Weld", p)
pweld.Part0 = chara.Head
pweld.Part1 = p
pweld.C0 = CFrame.new(0, 0.7, 0)
pweld.C0 = pweld.C0 * CFrame.fromEulerAnglesXYZ(math.rad(180), 0, math.rad(180))
local earmesh = Instance.new("SpecialMesh", p)
earmesh.MeshType = "FileMesh"
earmesh.MeshId = "http://www.roblox.com/asset/?id=1374148"
earmesh.Scale = Vector3.new(1.1, 1.5, 3)

local fakehead = chara.Head:clone()
fakehead.Name = "FakeHead"
fakehead.Parent = chara
fakehead.Position = chara.Head.Position
fakehead.Transparency = 2
fakehead.face.Texture = "http://www.roblox.com/asset/?id=105092745"

local hand1 = Instance.new("Part", chara)
hand1.Name = "Hand1"
hand1.Size = Vector3.new(0.8, 0.8, 0.8)
hand1.Transparency = 1
hand1.Position = chara["Left Arm"].Position
local hand1weld = Instance.new("Weld", hand1)
hand1weld.Part0 = chara["Left Arm"]
hand1weld.Part1 = hand1
hand1weld.C0 = CFrame.new(0, -1, 0)
local hand2 = hand1:Clone()
hand2.Name = "Hand2"
hand2.Parent = chara
hand2.Position = chara["Right Arm"].Position
local hand2weld = Instance.new("Weld", hand2)
hand2weld.Part0 = chara["Right Arm"]
hand2weld.Part1 = hand2
hand2weld.C0 = CFrame.new(0, -1, 0)

color3colour = {
  BrickColor.new("Cyan").Color,
  BrickColor.new("Cyan").Color,
  BrickColor.new("Cyan").Color,
  BrickColor.new("Cyan").Color,
  BrickColor.new("Cyan").Color,
  BrickColor.new("Cyan").Color
}
breekcolour = {
  BrickColor.new("Cyan"),
  BrickColor.new("Cyan"),
  BrickColor.new("Cyan"),
  BrickColor.new("Cyan"),
  BrickColor.new("Cyan"),
  BrickColor.new("Cyan")
}
firecolour = {
  ColorSequenceKeypoint.new(0, BrickColor.new("Cyan").Color),
  ColorSequenceKeypoint.new(0.05, BrickColor.new("Cyan").Color),
  ColorSequenceKeypoint.new(0.1, BrickColor.new("Cyan").Color),
  ColorSequenceKeypoint.new(0.15, BrickColor.new("Cyan").Color),
  ColorSequenceKeypoint.new(0.2, BrickColor.new("Cyan").Color),
  ColorSequenceKeypoint.new(0.25, BrickColor.new("Cyan").Color),
  ColorSequenceKeypoint.new(1, BrickColor.new("Cyan").Color)
}
barcolour = {
  ColorSequenceKeypoint.new(0, BrickColor.new("Cyan").Color),
  ColorSequenceKeypoint.new(0.2, BrickColor.new("Cyan").Color),
  ColorSequenceKeypoint.new(0.4, BrickColor.new("Cyan").Color),
  ColorSequenceKeypoint.new(0.6, BrickColor.new("Cyan").Color),
  ColorSequenceKeypoint.new(0.8, BrickColor.new("Cyan").Color),
  ColorSequenceKeypoint.new(1, BrickColor.new("Cyan").Color)
}
normallife = {
  NumberSequenceKeypoint.new(0, 0),
  NumberSequenceKeypoint.new(1, 1)
}
extendlife = {
  NumberSequenceKeypoint.new(0, 0),
  NumberSequenceKeypoint.new(0.8, 0),
  NumberSequenceKeypoint.new(1, 1)
}
function createrainbow(color, part, texture, size, trans, life, face, speed, accel, velsp, lock, name)
  local fira = Instance.new("ParticleEmitter", part)
  fira.Name = name
  fira.Color = ColorSequence.new(color)
  fira.Size = size
  fira.Texture = texture
  fira.Transparency = trans
  fira.Lifetime = life
  fira.EmissionDirection = face
  fira.Rate = 100000000
  fira.RotSpeed = NumberRange.new(10000)
  fira.Speed = speed
  fira.VelocitySpread = velsp
  fira.Acceleration = accel
  fira.LightEmission = 1
  fira.LockedToPart = lock
end
handfire1 = createrainbow(firecolour, hand1, "rbxasset://textures/particles/smoke_main.dds", NumberSequence.new({
  NumberSequenceKeypoint.new(0, 0.4),
  NumberSequenceKeypoint.new(1, 0)
}), NumberSequence.new(extendlife), NumberRange.new(1), "Left", NumberRange.new(1), Vector3.new(0, 2, 0), 0, false, "FireEffect")
handfire2 = createrainbow(firecolour, hand2, "rbxasset://textures/particles/smoke_main.dds", NumberSequence.new({
  NumberSequenceKeypoint.new(0, 0.4),
  NumberSequenceKeypoint.new(1, 0)
}), NumberSequence.new(extendlife), NumberRange.new(1), "Right", NumberRange.new(1), Vector3.new(0, 2, 0), 0, false, "FireEffect")
createrainbow(barcolour, orbuur, "rbxasset://textures/particles/smoke_main.dds", NumberSequence.new({
  NumberSequenceKeypoint.new(0, 1),
  NumberSequenceKeypoint.new(0.8, 1),
  NumberSequenceKeypoint.new(1, 0)
}), NumberSequence.new(extendlife), NumberRange.new(1), "Front", NumberRange.new(0), Vector3.new(0, 0, 0), 0, false, "OrbEffect")
local spelleffect = Instance.new("ParticleEmitter", chara.Torso)
spelleffect.Texture = "http://www.roblox.com/asset/?id=679657454"
spelleffect.Speed = NumberRange.new(0)
spelleffect.LightEmission = 1
spelleffect.Transparency = NumberSequence.new(normallife)
spelleffect.Size = NumberSequence.new({
  NumberSequenceKeypoint.new(0, 0),
  NumberSequenceKeypoint.new(1, 10)
})
spelleffect.Rate = 0.001
spelleffect.Rotation = NumberRange.new(0, 359)
spelleffect.RotSpeed = NumberRange.new(1000)
spelleffect.Lifetime = NumberRange.new(1)
createrainbow(barcolour, hand2, "rbxasset://textures/particles/smoke_main.dds", NumberSequence.new({
  NumberSequenceKeypoint.new(0, 1),
  NumberSequenceKeypoint.new(1, 0)
}), NumberSequence.new(normallife), NumberRange.new(1), "Front", NumberRange.new(10), Vector3.new(0, 0, 0), 1000, true, "PowerEffect")
powereffect = hand2.PowerEffect
powereffect.Enabled = false
local naeeym = Instance.new("BillboardGui", chara)
naeeym.Size = UDim2.new(0, 100, 0, 40)
naeeym.StudsOffset = Vector3.new(0, 2, 0)
naeeym.Adornee = chara.Head
local tecks = Instance.new("TextLabel", naeeym)
tecks.BackgroundTransparency = 1
tecks.BorderSizePixel = 0
tecks.Text = ""
tecks.Font = "Fantasy"
tecks.FontSize = "Size24"
tecks.TextStrokeTransparency = 0
tecks.TextColor3 = Color3.new(1, 1, 1)
tecks.TextStrokeColor3 = BrickColor.new("Really red").Color
tecks.Size = UDim2.new(1, 0, 0.5, 0)
Void = nil
VoidParts = {}
Equipped = false
Counter = 1
function RayCast(Position, Direction, MaxDistance, IgnoreList)
  return game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(Position, Direction.unit * (MaxDistance or 999.999)), IgnoreList)
end
Player = player
Character = chara
Humanoid = Character:FindFirstChild("Humanoid")
Torso = Character:FindFirstChild("Torso")
if not Player or not Humanoid or Humanoid.Health == 0 or not chara.Torso then
  return
end
Equipped = true
Void = Instance.new("Model")
Void.Name = "Void"
Angle = 0
for i = 1, 1 do
  local VoidPart = Instance.new("Part")
  VoidPart.Name = "VoidPart"
  VoidPart.Transparency = 1
  VoidPart.BrickColor = BrickColor.new("Cyan")
  VoidPart.Material = Enum.Material.Plastic
  VoidPart.Shape = Enum.PartType.Block
  VoidPart.FormFactor = Enum.FormFactor.Custom
  VoidPart.TopSurface = Enum.SurfaceType.Smooth
  VoidPart.BottomSurface = Enum.SurfaceType.Smooth
  VoidPart.Anchored = true
  VoidPart.CanCollide = false
  VoidPart.Locked = true
  VoidPart.Size = Vector3.new(1, 0.2, 1)
  fiyer = createrainbow(firecolour, VoidPart, "http://www.roblox.com/asset/?id=224413104", NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.4),
    NumberSequenceKeypoint.new(1, 0)
  }), NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0),
    NumberSequenceKeypoint.new(0.99, 0),
    NumberSequenceKeypoint.new(1, 1)
  }), NumberRange.new(3), "Top", NumberRange.new(2), Vector3.new(0, 2, 0), 0, false, "FireEffect")
  VoidPart.FireEffect.Rate = 10
  local BlockMesh = Instance.new("BlockMesh")
  BlockMesh.Scale = Vector3.new(10, 2, 10)
  BlockMesh.Parent = VoidPart
  VoidPart.Parent = Void
  local Star = Instance.new("Decal", VoidPart)
  Star.Texture = "http://www.roblox.com/asset/?id=199910011"
  Star.Face = "Top"
  local Light = Instance.new("PointLight", VoidPart)
  Light.Color = Color3.new(0, 0, 0)
  Light.Brightness = 10
  Light.Range = 10
  table.insert(VoidParts, VoidPart)
end
Spawn(function()
  while Equipped and Humanoid.Parent and Humanoid.Health > 0 and chara do
    if Angle == 360 then
      Angle = 0
    end
    Angle = Angle + 0.05
    chara.Humanoid.MaxHealth = 2000
    chara.Humanoid.Health = 1700
    Counter = Counter + 1
    if Counter == 7 then
      Counter = 1
    end
    tecks.TextStrokeColor3 = color3colour[Counter]
    fakehead.face.Color3 = color3colour[Counter]
    Void.VoidPart.Decal.Color3 = color3colour[Counter]
    Void.VoidPart.PointLight.Color = color3colour[Counter]
    local parentPos = chara.Torso.CFrame
    
    local Hit, EndPosition = RayCast(chara.Torso.Position, Vector3.new(0, -1, 0), chara.Torso.Size.Y * 6.5, {Character})
    if Hit then
      if not Void.Parent then
        Void.Parent = Character
      end
      for i, v in pairs(VoidParts) do
        v.CFrame = CFrame.new(chara.Torso.Position.X, EndPosition.Y, chara.Torso.Position.Z) * CFrame.Angles(0, Angle + i, 0)
      end
    else
      Void.Parent = nil
    end
    wait()
  end
end)

p = game.Players.LocalPlayer
char = p.Character
torso = char.Torso
neck = char.Torso.Neck
hum = char.Humanoid

CV="Maroon"
	
local txt = Instance.new("BillboardGui", char)
txt.Adornee = char .Head
txt.Name = "_status"
txt.Size = UDim2.new(2, 0, 1.2, 0)
txt.StudsOffset = Vector3.new(-9, 8, 0)
local text = Instance.new("TextLabel", txt)
text.Size = UDim2.new(10, 0, 7, 0)
text.FontSize = "Size48"
text.TextScaled = true
text.TextTransparency = 0
text.BackgroundTransparency = 1 
text.TextTransparency = 0
text.TextStrokeTransparency = 0
text.Font = "Fantasy"
text.TextStrokeColor3 = Color3.new(0, 0, 0)

v=Instance.new("Part")
v.Name = "ColorBrick"
v.Parent=p.Character
v.FormFactor="Symmetric"
v.Anchored=true
v.CanCollide=false
v.BottomSurface="Smooth"
v.TopSurface="Smooth"
v.Size=Vector3.new(10,5,3)
v.Transparency=1
v.CFrame=char.Torso.CFrame
v.BrickColor=BrickColor.new(CV)
v.Transparency=1
text.TextColor3 = BrickColor.new("Bright blue").Color
v.Shape="Block"
text.Text = "Wanderer"

local runDummyScript = function(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "CompiledModel"
o1 = Instance.new("Model")
o2 = Instance.new("Part")
o3 = Instance.new("SpecialMesh")
o4 = Instance.new("Model")
o5 = Instance.new("Part")
o6 = Instance.new("SpecialMesh")
o7 = Instance.new("Weld")
o8 = Instance.new("Part")
o9 = Instance.new("SpecialMesh")
o10 = Instance.new("Weld")
o11 = Instance.new("Part")
o12 = Instance.new("SpecialMesh")
o13 = Instance.new("Weld")
o14 = Instance.new("Part")
o15 = Instance.new("SpecialMesh")
o16 = Instance.new("Weld")
o17 = Instance.new("Part")
o18 = Instance.new("SpecialMesh")
o19 = Instance.new("Weld")
o20 = Instance.new("Part")
o21 = Instance.new("SpecialMesh")
o22 = Instance.new("Weld")
o23 = Instance.new("Part")
o24 = Instance.new("SpecialMesh")
o25 = Instance.new("Weld")
o26 = Instance.new("Part")
o27 = Instance.new("SpecialMesh")
o28 = Instance.new("Weld")
o29 = Instance.new("Part")
o30 = Instance.new("SpecialMesh")
o31 = Instance.new("Weld")
o32 = Instance.new("Part")
o33 = Instance.new("SpecialMesh")
o34 = Instance.new("Weld")
o35 = Instance.new("Part")
o36 = Instance.new("SpecialMesh")
o37 = Instance.new("Weld")
o38 = Instance.new("Part")
o39 = Instance.new("SpecialMesh")
o40 = Instance.new("Weld")
o41 = Instance.new("Part")
o42 = Instance.new("SpecialMesh")
o43 = Instance.new("Weld")
o44 = Instance.new("Part")
o45 = Instance.new("SpecialMesh")
o46 = Instance.new("Weld")
o47 = Instance.new("Part")
o48 = Instance.new("SpecialMesh")
o49 = Instance.new("Weld")
o50 = Instance.new("Part")
o51 = Instance.new("SpecialMesh")
o52 = Instance.new("Weld")
o53 = Instance.new("Part")
o54 = Instance.new("SpecialMesh")
o55 = Instance.new("Weld")
o56 = Instance.new("Part")
o57 = Instance.new("SpecialMesh")
o58 = Instance.new("Weld")
o59 = Instance.new("Part")
o60 = Instance.new("SpecialMesh")
o61 = Instance.new("Weld")
o62 = Instance.new("Part")
o63 = Instance.new("SpecialMesh")
o64 = Instance.new("Weld")
o1.Name = "Head_"
o1.Parent = mas
o2.Name = "REF"
o2.Parent = o1
o2.Transparency = 1
o2.Position = Vector3.new(110.644409, 4.68007088, -60.6269913)
o2.Rotation = Vector3.new(180, 0.0199999996, -180)
o2.Anchored = false
o2.CanCollide = false
o2.FormFactor = Enum.FormFactor.Symmetric
o2.Size = Vector3.new(2, 1, 1)
o2.CFrame = CFrame.new(110.644409, 4.68007088, -60.6269913, -0.99999994, 1.23944917e-22, 0.000331714633, 1.23908515e-22, 1, -1.09738441e-22, -0.000331714633, -1.09697344e-22, -0.99999994)
o2.BottomSurface = Enum.SurfaceType.Smooth
o2.TopSurface = Enum.SurfaceType.Smooth
o2.Position = Vector3.new(110.644409, 4.68007088, -60.6269913)
o3.Parent = o2
o3.Scale = Vector3.new(1.25, 1.25, 1.25)
o4.Name = "Hat"
o4.Parent = o1
o5.Parent = o4
o5.Material = Enum.Material.Neon
o5.BrickColor = BrickColor.new("Cyan")
o5.Reflectance = 0.5
o5.Position = Vector3.new(110.650101, 5.58175611, -61.1730347)
o5.Rotation = Vector3.new(62.7000008, -90, 0)
o5.Anchored = false
o5.FormFactor = Enum.FormFactor.Plate
o5.Size = Vector3.new(0.200492054, 0.40098393, 0.200492024)
o5.CFrame = CFrame.new(110.650101, 5.58175611, -61.1730347, 0, 0, -1, -0.888631999, 0.458620995, 0, 0.458620995, 0.888631999, 0)
o5.BottomSurface = Enum.SurfaceType.Smooth
o5.TopSurface = Enum.SurfaceType.Smooth
o5.Color = Color3.new(0.0156863, 0.686275, 0.92549)
o5.Position = Vector3.new(110.650101, 5.58175611, -61.1730347)
o6.Parent = o5
o6.MeshType = Enum.MeshType.Wedge
o7.Name = "Joint"
o7.Parent = o5
o7.C0 = CFrame.new(1.05169296, 0.0717010498, 0.00569152832, -0.000152131295, -0.888631999, -0.458620965, -0.000294772239, 0.458620995, -0.88863194, 0.99999994, -1.23944917e-22, -0.000331714633)
o7.Part0 = o5
o7.Part1 = o2
o8.Parent = o4
o8.Material = Enum.Material.Neon
o8.BrickColor = BrickColor.new("Cyan")
o8.Reflectance = 0.5
o8.Position = Vector3.new(111.171722, 5.50142097, -60.4436722)
o8.Rotation = Vector3.new(-173.610001, -0.119999997, 122.860001)
o8.Anchored = false
o8.FormFactor = Enum.FormFactor.Plate
o8.Size = Vector3.new(0.200492054, 0.40098393, 0.200492024)
o8.CFrame = CFrame.new(111.171722, 5.50142097, -60.4436722, -0.542633951, -0.839966655, -0.00210324791, -0.834870875, 0.539063156, 0.111362509, -0.0924069956, 0.0621850155, -0.993777692)
o8.BottomSurface = Enum.SurfaceType.Smooth
o8.TopSurface = Enum.SurfaceType.Smooth
o8.Color = Color3.new(0.0156863, 0.686275, 0.92549)
o8.Position = Vector3.new(111.171722, 5.50142097, -60.4436722)
o9.Parent = o8
o9.MeshType = Enum.MeshType.Wedge
o10.Name = "Joint"
o10.Parent = o8
o10.C0 = CFrame.new(0.988800049, -0.0112380981, 0.0918197632, 0.542664528, -0.834870875, 0.0922269896, 0.839945972, 0.539063156, -0.0624636412, 0.00243289815, 0.111362509, 0.993776917)
o10.Part0 = o8
o10.Part1 = o2
o11.Parent = o4
o11.Material = Enum.Material.Neon
o11.BrickColor = BrickColor.new("Cyan")
o11.Reflectance = 0.5
o11.Position = Vector3.new(111.171341, 5.52380323, -60.6429138)
o11.Rotation = Vector3.new(6.38999987, 0.119999997, 57.1399994)
o11.Anchored = false
o11.FormFactor = Enum.FormFactor.Plate
o11.Size = Vector3.new(0.200492054, 0.40098393, 0.200492024)
o11.CFrame = CFrame.new(111.171341, 5.52380323, -60.6429138, 0.542633951, -0.839966655, 0.00210324791, 0.834870875, 0.539063156, -0.111362509, 0.0924069956, 0.0621850155, 0.993777692)
o11.BottomSurface = Enum.SurfaceType.Smooth
o11.TopSurface = Enum.SurfaceType.Smooth
o11.Color = Color3.new(0.0156863, 0.686275, 0.92549)
o11.Position = Vector3.new(111.171341, 5.52380323, -60.6429138)
o12.Parent = o11
o12.MeshType = Enum.MeshType.Wedge
o13.Name = "Joint"
o13.Parent = o11
o13.C0 = CFrame.new(-0.988868713, -0.0112304688, 0.10867691, -0.542664528, 0.834870875, -0.0922269896, 0.839945972, 0.539063156, -0.0624636412, -0.00243289815, -0.111362509, -0.993776917)
o13.Part0 = o11
o13.Part1 = o2
o14.Parent = o4
o14.Material = Enum.Material.Neon
o14.BrickColor = BrickColor.new("Cyan")
o14.Reflectance = 0.5
o14.Position = Vector3.new(111.508545, 5.28526115, -60.4685593)
o14.Rotation = Vector3.new(-173.610001, -0.119999997, -57.1399994)
o14.Anchored = false
o14.FormFactor = Enum.FormFactor.Plate
o14.Size = Vector3.new(0.200492054, 0.40098393, 0.200492024)
o14.CFrame = CFrame.new(111.508545, 5.28526115, -60.4685593, 0.542633951, 0.839966655, -0.00210324791, 0.834870875, -0.539063156, 0.111362509, 0.0924069956, -0.0621850155, -0.993777692)
o14.BottomSurface = Enum.SurfaceType.Smooth
o14.TopSurface = Enum.SurfaceType.Smooth
o14.Color = Color3.new(0.0156863, 0.686275, 0.92549)
o14.Position = Vector3.new(111.508545, 5.28526115, -60.4685593)
o15.Parent = o14
o15.MeshType = Enum.MeshType.Wedge
o16.Name = "Joint"
o16.Parent = o14
o16.C0 = CFrame.new(-0.988811493, -0.389755249, 0.0918693542, -0.542664528, 0.834870875, -0.0922269896, -0.839945972, -0.539063156, 0.0624636412, 0.00243289815, 0.111362509, 0.993776917)
o16.Part0 = o14
o16.Part1 = o2
o17.Parent = o4
o17.Material = Enum.Material.Neon
o17.BrickColor = BrickColor.new("Cyan")
o17.Reflectance = 0.5
o17.Position = Vector3.new(111.508072, 5.3075819, -60.6678543)
o17.Rotation = Vector3.new(6.38999987, 0.119999997, -122.860001)
o17.Anchored = false
o17.FormFactor = Enum.FormFactor.Plate
o17.Size = Vector3.new(0.200492054, 0.40098393, 0.200492024)
o17.CFrame = CFrame.new(111.508072, 5.3075819, -60.6678543, -0.542633951, 0.839966655, 0.00210324791, -0.834870875, -0.539063156, -0.111362509, -0.0924069956, -0.0621850155, 0.993777692)
o17.BottomSurface = Enum.SurfaceType.Smooth
o17.TopSurface = Enum.SurfaceType.Smooth
o17.Color = Color3.new(0.0156863, 0.686275, 0.92549)
o17.Position = Vector3.new(111.508072, 5.3075819, -60.6678543)
o18.Parent = o17
o18.MeshType = Enum.MeshType.Wedge
o19.Name = "Joint"
o19.Parent = o17
o19.C0 = CFrame.new(0.988769531, -0.389717102, 0.108673096, 0.542664528, -0.834870875, 0.0922269896, -0.839945972, -0.539063156, 0.0624636412, -0.00243289815, -0.111362509, -0.993776917)
o19.Part0 = o17
o19.Part1 = o2
o20.Parent = o4
o20.Material = Enum.Material.Neon
o20.BrickColor = BrickColor.new("Cyan")
o20.Reflectance = 0.5
o20.Position = Vector3.new(109.692062, 5.28414679, -60.4686737)
o20.Rotation = Vector3.new(-173.880005, 0.300000012, 56.5800018)
o20.Anchored = false
o20.FormFactor = Enum.FormFactor.Plate
o20.Size = Vector3.new(0.200492054, 0.40098393, 0.200492024)
o20.CFrame = CFrame.new(109.692062, 5.28414679, -60.4686737, 0.550731003, -0.834666491, 0.00523188757, -0.830228984, -0.547134876, 0.106598929, -0.086112, -0.0630509928, -0.994288385)
o20.BottomSurface = Enum.SurfaceType.Smooth
o20.TopSurface = Enum.SurfaceType.Smooth
o20.Color = Color3.new(0.0156863, 0.686275, 0.92549)
o20.Position = Vector3.new(109.692062, 5.28414679, -60.4686737)
o21.Parent = o20
o21.MeshType = Enum.MeshType.Wedge
o22.Name = "Joint"
o22.Parent = o20
o22.C0 = CFrame.new(1.03963852, -0.454391479, 0.0980033875, -0.550702393, -0.830228984, 0.0862946808, 0.834687352, -0.547134876, 0.0627741143, -0.00490206713, 0.106598929, 0.994290054)
o22.Part0 = o20
o22.Part1 = o2
o23.Parent = o4
o23.Material = Enum.Material.Neon
o23.BrickColor = BrickColor.new("Cyan")
o23.Reflectance = 0.5
o23.Position = Vector3.new(110.4496, 5.48411512, -60.0064392)
o23.Rotation = Vector3.new(-47.9300003, 90, 0)
o23.Anchored = false
o23.FormFactor = Enum.FormFactor.Plate
o23.Size = Vector3.new(0.200492054, 0.40098393, 0.200492024)
o23.CFrame = CFrame.new(110.4496, 5.48411512, -60.0064392, 0, 0, 1, -0.742329776, 0.670034766, 0, -0.670034766, -0.742329776, 0)
o23.BottomSurface = Enum.SurfaceType.Smooth
o23.TopSurface = Enum.SurfaceType.Smooth
o23.Color = Color3.new(0.0156863, 0.686275, 0.92549)
o23.Position = Vector3.new(110.4496, 5.48411512, -60.0064392)
o24.Parent = o23
o24.MeshType = Enum.MeshType.Wedge
o25.Name = "Joint"
o25.Parent = o23
o25.C0 = CFrame.new(1.01265717, -0.0780830383, 0.19480896, 0.000222260336, -0.742329776, 0.670034707, 0.00024624166, 0.670034766, 0.742329717, -0.99999994, 1.23944917e-22, 0.000331714633)
o25.Part0 = o23
o25.Part1 = o2
o26.Parent = o4
o26.Material = Enum.Material.Neon
o26.BrickColor = BrickColor.new("Cyan")
o26.Reflectance = 0.5
o26.Position = Vector3.new(110.027832, 5.52490711, -60.6427917)
o26.Rotation = Vector3.new(6.11999989, -0.300000012, -56.5800018)
o26.Anchored = false
o26.FormFactor = Enum.FormFactor.Plate
o26.Size = Vector3.new(0.200492054, 0.40098393, 0.200492024)
o26.CFrame = CFrame.new(110.027832, 5.52490711, -60.6427917, 0.550731003, 0.834666491, -0.00523188757, -0.830228984, 0.547134876, -0.106598929, -0.086112, 0.0630509928, 0.994288385)
o26.BottomSurface = Enum.SurfaceType.Smooth
o26.TopSurface = Enum.SurfaceType.Smooth
o26.Color = Color3.new(0.0156863, 0.686275, 0.92549)
o26.Position = Vector3.new(110.027832, 5.52490711, -60.6427917)
o27.Parent = o26
o27.MeshType = Enum.MeshType.Wedge
o28.Name = "Joint"
o28.Parent = o26
o28.C0 = CFrame.new(1.03961182, 0.0533828735, 0.102546692, -0.550702393, -0.830228984, 0.0862946808, -0.834687352, 0.547134876, -0.0627741143, 0.00490206713, -0.106598929, -0.994290054)
o28.Part0 = o26
o28.Part1 = o2
o29.Parent = o4
o29.Material = Enum.Material.Neon
o29.BrickColor = BrickColor.new("Cyan")
o29.Reflectance = 0.5
o29.Position = Vector3.new(110.650101, 5.39785624, -61.5293427)
o29.Rotation = Vector3.new(-117.300003, -90, 0)
o29.Anchored = false
o29.FormFactor = Enum.FormFactor.Plate
o29.Size = Vector3.new(0.200492054, 0.40098393, 0.200492024)
o29.CFrame = CFrame.new(110.650101, 5.39785624, -61.5293427, 0, 0, -1, 0.888631999, -0.458620995, 0, -0.458620995, -0.888631999, 0)
o29.BottomSurface = Enum.SurfaceType.Smooth
o29.TopSurface = Enum.SurfaceType.Smooth
o29.Color = Color3.new(0.0156863, 0.686275, 0.92549)
o29.Position = Vector3.new(110.650101, 5.39785624, -61.5293427)
o30.Parent = o29
o30.MeshType = Enum.MeshType.Wedge
o31.Name = "Joint"
o31.Parent = o29
o31.C0 = CFrame.new(-1.05168533, -0.472663879, 0.00569152832, 0.000152131295, 0.888631999, 0.458620965, 0.000294772239, -0.458620995, 0.88863194, 0.99999994, -1.23944917e-22, -0.000331714633)
o31.Part0 = o29
o31.Part1 = o2
o32.Parent = o4
o32.Material = Enum.Material.Neon
o32.BrickColor = BrickColor.new("Cyan")
o32.Reflectance = 0.5
o32.Position = Vector3.new(109.693092, 5.30551815, -60.6680679)
o32.Rotation = Vector3.new(6.11999989, -0.300000012, 123.419998)
o32.Anchored = false
o32.FormFactor = Enum.FormFactor.Plate
o32.Size = Vector3.new(0.200492054, 0.40098393, 0.200492024)
o32.CFrame = CFrame.new(109.693092, 5.30551815, -60.6680679, -0.550731003, -0.834666491, -0.00523188757, 0.830228984, -0.547134876, -0.106598929, 0.086112, -0.0630509928, 0.994288385)
o32.BottomSurface = Enum.SurfaceType.Smooth
o32.TopSurface = Enum.SurfaceType.Smooth
o32.Color = Color3.new(0.0156863, 0.686275, 0.92549)
o32.Position = Vector3.new(109.693092, 5.30551815, -60.6680679)
o33.Parent = o32
o33.MeshType = Enum.MeshType.Wedge
o34.Name = "Joint"
o34.Parent = o32
o34.C0 = CFrame.new(-1.03964233, -0.454414368, 0.102539063, 0.550702393, 0.830228984, -0.0862946808, 0.834687352, -0.547134876, 0.0627741143, 0.00490206713, -0.106598929, -0.994290054)
o34.Part0 = o32
o34.Part1 = o2
o35.Parent = o4
o35.Material = Enum.Material.Neon
o35.BrickColor = BrickColor.new("Cyan")
o35.Reflectance = 0.5
o35.Position = Vector3.new(110.650101, 5.48411512, -60.0064392)
o35.Rotation = Vector3.new(-47.9300003, -90, 0)
o35.Anchored = false
o35.FormFactor = Enum.FormFactor.Plate
o35.Size = Vector3.new(0.200492054, 0.40098393, 0.200492024)
o35.CFrame = CFrame.new(110.650101, 5.48411512, -60.0064392, 0, 0, -1, 0.742329776, 0.670034766, 0, 0.670034766, -0.742329776, 0)
o35.BottomSurface = Enum.SurfaceType.Smooth
o35.TopSurface = Enum.SurfaceType.Smooth
o35.Color = Color3.new(0.0156863, 0.686275, 0.92549)
o35.Position = Vector3.new(110.650101, 5.48411512, -60.0064392)
o36.Parent = o35
o36.MeshType = Enum.MeshType.Wedge
o37.Name = "Joint"
o37.Parent = o35
o37.C0 = CFrame.new(-1.01265717, -0.0780830383, 0.00569152832, -0.000222260336, 0.742329776, -0.670034707, 0.00024624166, 0.670034766, 0.742329717, 0.99999994, -1.23944917e-22, -0.000331714633)
o37.Part0 = o35
o37.Part1 = o2
o38.Parent = o4
o38.Material = Enum.Material.Neon
o38.BrickColor = BrickColor.new("Cyan")
o38.Reflectance = 0.5
o38.Position = Vector3.new(110.4496, 5.58175611, -61.1730347)
o38.Rotation = Vector3.new(62.7000008, 90, 0)
o38.Anchored = false
o38.FormFactor = Enum.FormFactor.Plate
o38.Size = Vector3.new(0.200492054, 0.40098393, 0.200492024)
o38.CFrame = CFrame.new(110.4496, 5.58175611, -61.1730347, 0, 0, 1, 0.888631999, 0.458620995, 0, -0.458620995, 0.888631999, 0)
o38.BottomSurface = Enum.SurfaceType.Smooth
o38.TopSurface = Enum.SurfaceType.Smooth
o38.Color = Color3.new(0.0156863, 0.686275, 0.92549)
o38.Position = Vector3.new(110.4496, 5.58175611, -61.1730347)
o39.Parent = o38
o39.MeshType = Enum.MeshType.Wedge
o40.Name = "Joint"
o40.Parent = o38
o40.C0 = CFrame.new(-1.05169296, 0.0717010498, 0.19480896, 0.000152131295, 0.888631999, 0.458620965, -0.000294772239, 0.458620995, -0.88863194, -0.99999994, 1.23944917e-22, 0.000331714633)
o40.Part0 = o38
o40.Part1 = o2
o41.Name = "Handle"
o41.Parent = o4
o41.BrickColor = BrickColor.new("Bright red")
o41.Position = Vector3.new(110.590012, 5.42982483, -60.6134338)
o41.Rotation = Vector3.new(6.11999989, 0, 0)
o41.Anchored = false
o41.FormFactor = Enum.FormFactor.Plate
o41.Size = Vector3.new(2, 0.800000012, 1)
o41.CFrame = CFrame.new(110.590012, 5.42982483, -60.6134338, 1, 0, 0, 0, 0.994301856, -0.106600985, 0, 0.106600985, 0.994301856)
o41.BottomSurface = Enum.SurfaceType.Weld
o41.TopSurface = Enum.SurfaceType.Smooth
o41.Color = Color3.new(0.768628, 0.156863, 0.109804)
o41.Position = Vector3.new(110.590012, 5.42982483, -60.6134338)
o42.Parent = o41
o42.MeshId = "http://www.roblox.com/asset/?id=1033714"
o42.Scale = Vector3.new(1.60000002, 1.29999995, 1.60000002)
o42.TextureId = "rbxassetid://269748808"
o42.VertexColor = Vector3.new(0, 0, 0)
o42.MeshType = Enum.MeshType.FileMesh
o43.Name = "Joint"
o43.Parent = o41
o43.C0 = CFrame.new(0.054397583, -0.746926785, 0.066444397, -0.99999994, 1.23944917e-22, 0.000331714633, -3.53611067e-05, 0.994301856, -0.106600977, -0.000329824485, -0.106600985, -0.994301796)
o43.Part0 = o41
o43.Part1 = o2
o44.Parent = o4
o44.Material = Enum.Material.Neon
o44.BrickColor = BrickColor.new("Cyan")
o44.Reflectance = 0.5
o44.Position = Vector3.new(110.026749, 5.50353479, -60.4434509)
o44.Rotation = Vector3.new(-173.880005, 0.300000012, -123.419998)
o44.Anchored = false
o44.FormFactor = Enum.FormFactor.Plate
o44.Size = Vector3.new(0.200492054, 0.40098393, 0.200492024)
o44.CFrame = CFrame.new(110.026749, 5.50353479, -60.4434509, -0.550731003, 0.834666491, 0.00523188757, 0.830228984, 0.547134876, 0.106598929, 0.086112, 0.0630509928, -0.994288385)
o44.BottomSurface = Enum.SurfaceType.Smooth
o44.TopSurface = Enum.SurfaceType.Smooth
o44.Color = Color3.new(0.0156863, 0.686275, 0.92549)
o44.Position = Vector3.new(110.026749, 5.50353479, -60.4434509)
o45.Parent = o44
o45.MeshType = Enum.MeshType.Wedge
o46.Name = "Joint"
o46.Parent = o44
o46.C0 = CFrame.new(-1.03963089, 0.0534210205, 0.0979423523, 0.550702393, 0.830228984, -0.0862946808, -0.834687352, 0.547134876, -0.0627741143, -0.00490206713, 0.106598929, 0.994290054)
o46.Part0 = o44
o46.Part1 = o2
o47.Parent = o4
o47.Material = Enum.Material.Neon
o47.BrickColor = BrickColor.new("Cyan")
o47.Reflectance = 0.5
o47.Position = Vector3.new(110.4496, 5.39786482, -61.5293503)
o47.Rotation = Vector3.new(-117.300003, 90, 0)
o47.Anchored = false
o47.FormFactor = Enum.FormFactor.Plate
o47.Size = Vector3.new(0.200492054, 0.40098393, 0.200492024)
o47.CFrame = CFrame.new(110.4496, 5.39786482, -61.5293503, 0, 0, 1, -0.888631999, -0.458620995, 0, 0.458620995, -0.888631999, 0)
o47.BottomSurface = Enum.SurfaceType.Smooth
o47.TopSurface = Enum.SurfaceType.Smooth
o47.Color = Color3.new(0.0156863, 0.686275, 0.92549)
o47.Position = Vector3.new(110.4496, 5.39786482, -61.5293503)
o48.Parent = o47
o48.MeshType = Enum.MeshType.Wedge
o49.Name = "Joint"
o49.Parent = o47
o49.C0 = CFrame.new(1.05169678, -0.472667694, 0.19480896, -0.000152131295, -0.888631999, -0.458620965, 0.000294772239, -0.458620995, 0.88863194, -0.99999994, 1.23944917e-22, 0.000331714633)
o49.Part0 = o47
o49.Part1 = o2
o50.Parent = o4
o50.Material = Enum.Material.Neon
o50.BrickColor = BrickColor.new("Cyan")
o50.Reflectance = 0.5
o50.Position = Vector3.new(110.4496, 5.21545792, -59.7087936)
o50.Rotation = Vector3.new(132.070007, 90, 0)
o50.Anchored = false
o50.FormFactor = Enum.FormFactor.Plate
o50.Size = Vector3.new(0.200492054, 0.40098393, 0.200492024)
o50.CFrame = CFrame.new(110.4496, 5.21545792, -59.7087936, 0, 0, 1, 0.742329776, -0.670034766, 0, 0.670034766, 0.742329776, 0)
o50.BottomSurface = Enum.SurfaceType.Smooth
o50.TopSurface = Enum.SurfaceType.Smooth
o50.Color = Color3.new(0.0156863, 0.686275, 0.92549)
o50.Position = Vector3.new(110.4496, 5.21545792, -59.7087936)
o51.Parent = o50
o51.MeshType = Enum.MeshType.Wedge
o52.Name = "Joint"
o52.Parent = o50
o52.C0 = CFrame.new(-1.01265717, -0.322879791, 0.19480896, -0.000222260336, 0.742329776, -0.670034707, -0.00024624166, -0.670034766, -0.742329717, -0.99999994, 1.23944917e-22, 0.000331714633)
o52.Part0 = o50
o52.Part1 = o2
o53.Parent = o4
o53.Material = Enum.Material.Neon
o53.BrickColor = BrickColor.new("Cyan")
o53.Reflectance = 0.5
o53.Position = Vector3.new(110.650101, 5.21546698, -59.7087936)
o53.Rotation = Vector3.new(132.070007, -90, 0)
o53.Anchored = false
o53.FormFactor = Enum.FormFactor.Plate
o53.Size = Vector3.new(0.200492054, 0.40098393, 0.200492024)
o53.CFrame = CFrame.new(110.650101, 5.21546698, -59.7087936, 0, 0, -1, -0.742329776, -0.670034766, 0, -0.670034766, 0.742329776, 0)
o53.BottomSurface = Enum.SurfaceType.Smooth
o53.TopSurface = Enum.SurfaceType.Smooth
o53.Color = Color3.new(0.0156863, 0.686275, 0.92549)
o53.Position = Vector3.new(110.650101, 5.21546698, -59.7087936)
o54.Parent = o53
o54.MeshType = Enum.MeshType.Wedge
o55.Name = "Joint"
o55.Parent = o53
o55.C0 = CFrame.new(1.01266479, -0.322872162, 0.00569152832, 0.000222260336, -0.742329776, 0.670034707, -0.00024624166, -0.670034766, -0.742329717, 0.99999994, -1.23944917e-22, -0.000331714633)
o55.Part0 = o53
o55.Part1 = o2
o56.Name = "NinjaHalfmask"
o56.Parent = o1
o56.Position = Vector3.new(110.62999, 4.40999889, -60.6299591)
o56.Rotation = Vector3.new(-180, 0, -180)
o56.Anchored = false
o56.FormFactor = Enum.FormFactor.Custom
o56.Size = Vector3.new(1.39999914, 0.80000025, 1.39999986)
o56.CFrame = CFrame.new(110.62999, 4.40999889, -60.6299591, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o56.BottomSurface = Enum.SurfaceType.Smooth
o56.TopSurface = Enum.SurfaceType.Smooth
o56.Position = Vector3.new(110.62999, 4.40999889, -60.6299591)
o57.Parent = o56
o57.MeshId = "http://www.roblox.com/asset/?id=72541091"
o57.Scale = Vector3.new(1, 1, 0.949999988)
o57.TextureId = "rbxassetid://0"
o57.VertexColor = Vector3.new(0, 0, 0)
o57.MeshType = Enum.MeshType.FileMesh
o58.Name = "Joint"
o58.Parent = o56
o58.C0 = CFrame.new(-0.0144195557, 0.270071983, -0.00296783447, 0.99999994, -1.23944917e-22, -0.000331714633, 1.23908515e-22, 1, -1.09738441e-22, 0.000331714633, 1.09697344e-22, 0.99999994)
o58.Part0 = o56
o58.Part1 = o2
o59.Name = "PoisonHorn"
o59.Parent = o1
o59.Position = Vector3.new(110.580063, 5.81450415, -60.3999863)
o59.Rotation = Vector3.new(-168.669998, 0, -180)
o59.Anchored = false
o59.FormFactor = Enum.FormFactor.Custom
o59.Size = Vector3.new(2.13111186, 2.04684615, 1.01710451)
o59.CFrame = CFrame.new(110.580063, 5.81450415, -60.3999863, -1, 0, 0, 0, 0.980506241, 0.196488023, 0, 0.196488038, -0.980506241)
o59.BottomSurface = Enum.SurfaceType.Smooth
o59.TopSurface = Enum.SurfaceType.Smooth
o59.Position = Vector3.new(110.580063, 5.81450415, -60.3999863)
o60.Parent = o59
o60.MeshId = "http://www.roblox.com/asset/?id=62152278"
o60.Scale = Vector3.new(0.932361424, 0.826610804, 0.667474687)
o60.TextureId = "rbxassetid://269748808"
o60.VertexColor = Vector3.new(0, 0, 0)
o60.MeshType = Enum.MeshType.FileMesh
o61.Name = "Joint"
o61.Parent = o59
o61.C0 = CFrame.new(-0.0643463135, -1.15692234, -0.00032043457, 0.99999994, -1.23944917e-22, -0.000331714633, -6.51779555e-05, 0.980506241, -0.196488023, 0.000325248257, 0.196488023, 0.980506182)
o61.Part0 = o59
o61.Part1 = o2
o62.Name = "Handle"
o62.Parent = o1
o62.Position = Vector3.new(110.604553, 3.96506596, -61.402153)
o62.Rotation = Vector3.new(172.130005, 0.389999986, -179.949997)
o62.Anchored = false
o62.CanCollide = false
o62.FormFactor = Enum.FormFactor.Symmetric
o62.Size = Vector3.new(1.4200002, 0.870000005, 1.40999985)
o62.CFrame = CFrame.new(110.604553, 3.96506596, -61.402153, -0.999976993, 0.000930230482, 0.0067320345, 0, 0.990587771, -0.136879131, -0.00679600006, -0.136875972, -0.990564883)
o62.BottomSurface = Enum.SurfaceType.Smooth
o62.TopSurface = Enum.SurfaceType.Smooth
o62.Position = Vector3.new(110.604553, 3.96506596, -61.402153)
o63.Parent = o62
o63.MeshId = "http://www.roblox.com/asset/?id=398618628 "
o63.Scale = Vector3.new(1, 1, 1.10000002)
o63.TextureId = "rbxassetid://0"
o63.VertexColor = Vector3.new(0, 0, 0)
o63.MeshType = Enum.MeshType.FileMesh
o64.Name = "Joint"
o64.Parent = o62
o64.C0 = CFrame.new(-0.0451278687, 0.602211952, -0.865444183, 0.999979198, -1.23196559e-22, 0.00646429276, -0.000884826644, 0.990587771, 0.13687627, -0.00640344899, -0.136879131, 0.990567029)
o64.Part0 = o62
o64.Part1 = o2
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = workspace 
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end

wait()

Workspace["Head_"].Parent = game.Players.LocalPlayer.Character

game.Players.LocalPlayer.Character["Head_"].Name = "Familiar Head"

w = Instance.new("Weld", game.Players.LocalPlayer.Character["Head"])
w.Part0 = game.Players.LocalPlayer.Character["Head"]
w.Part1 = o2
w.C0 = CFrame.new(0, 0, 0)*CFrame.Angles(0, 0, 0)
game.Players.LocalPlayer.Character["Head"].Transparency = 0

for i,v in pairs (game.Players.LocalPlayer.Character["Familiar Head"]:GetChildren()) do
	if v.ClassName == "Part" then
	v.CanCollide = false
	v.Anchored = false
	end
end

for i,v in pairs (game.Players.LocalPlayer.Character["Familiar Head"].Hat:GetChildren()) do
	v.Anchored = false
	v.CanCollide = false
end


local runDummyScript = function(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "CompiledModel"
o1 = Instance.new("Model")
o2 = Instance.new("Part")
o3 = Instance.new("SpecialMesh")
o4 = Instance.new("Part")
o5 = Instance.new("BlockMesh")
o6 = Instance.new("Weld")
o7 = Instance.new("Part")
o8 = Instance.new("BlockMesh")
o9 = Instance.new("Weld")
o10 = Instance.new("Part")
o11 = Instance.new("SpecialMesh")
o12 = Instance.new("Weld")
o13 = Instance.new("Part")
o14 = Instance.new("SpecialMesh")
o15 = Instance.new("Weld")
o16 = Instance.new("Part")
o17 = Instance.new("SpecialMesh")
o18 = Instance.new("Weld")
o19 = Instance.new("Part")
o20 = Instance.new("SpecialMesh")
o21 = Instance.new("Weld")
o22 = Instance.new("Part")
o23 = Instance.new("SpecialMesh")
o24 = Instance.new("Weld")
o25 = Instance.new("Part")
o26 = Instance.new("SpecialMesh")
o27 = Instance.new("Weld")
o28 = Instance.new("Part")
o29 = Instance.new("SpecialMesh")
o30 = Instance.new("Weld")
o31 = Instance.new("Part")
o32 = Instance.new("SpecialMesh")
o33 = Instance.new("Weld")
o34 = Instance.new("Part")
o35 = Instance.new("SpecialMesh")
o36 = Instance.new("Weld")
o37 = Instance.new("Part")
o38 = Instance.new("SpecialMesh")
o39 = Instance.new("Weld")
o40 = Instance.new("Part")
o41 = Instance.new("Weld")
o42 = Instance.new("Part")
o43 = Instance.new("Weld")
o44 = Instance.new("Part")
o45 = Instance.new("Weld")
o46 = Instance.new("Part")
o47 = Instance.new("Weld")
o48 = Instance.new("Part")
o49 = Instance.new("Weld")
o50 = Instance.new("Part")
o51 = Instance.new("Weld")
o52 = Instance.new("Part")
o53 = Instance.new("Weld")
o54 = Instance.new("Part")
o55 = Instance.new("Weld")
o56 = Instance.new("Part")
o57 = Instance.new("Weld")
o58 = Instance.new("Part")
o59 = Instance.new("Weld")
o60 = Instance.new("Part")
o61 = Instance.new("Weld")
o62 = Instance.new("Part")
o63 = Instance.new("Weld")
o64 = Instance.new("Part")
o65 = Instance.new("Weld")
o66 = Instance.new("Part")
o67 = Instance.new("BlockMesh")
o68 = Instance.new("Weld")
o69 = Instance.new("Part")
o70 = Instance.new("BlockMesh")
o71 = Instance.new("Weld")
o72 = Instance.new("Part")
o73 = Instance.new("BlockMesh")
o74 = Instance.new("Weld")
o75 = Instance.new("Part")
o76 = Instance.new("BlockMesh")
o77 = Instance.new("Weld")
o78 = Instance.new("Part")
o79 = Instance.new("BlockMesh")
o80 = Instance.new("Weld")
o81 = Instance.new("Part")
o82 = Instance.new("BlockMesh")
o83 = Instance.new("Weld")
o84 = Instance.new("Part")
o85 = Instance.new("BlockMesh")
o86 = Instance.new("Weld")
o87 = Instance.new("Part")
o88 = Instance.new("BlockMesh")
o89 = Instance.new("Weld")
o90 = Instance.new("Part")
o91 = Instance.new("BlockMesh")
o92 = Instance.new("Weld")
o93 = Instance.new("Part")
o94 = Instance.new("BlockMesh")
o95 = Instance.new("Weld")
o96 = Instance.new("Part")
o97 = Instance.new("BlockMesh")
o98 = Instance.new("Weld")
o99 = Instance.new("Part")
o100 = Instance.new("BlockMesh")
o101 = Instance.new("Weld")
o102 = Instance.new("Part")
o103 = Instance.new("BlockMesh")
o104 = Instance.new("Weld")
o105 = Instance.new("Part")
o106 = Instance.new("BlockMesh")
o107 = Instance.new("Weld")
o108 = Instance.new("Part")
o109 = Instance.new("BlockMesh")
o110 = Instance.new("Weld")
o111 = Instance.new("Part")
o112 = Instance.new("BlockMesh")
o113 = Instance.new("Weld")
o114 = Instance.new("Part")
o115 = Instance.new("BlockMesh")
o116 = Instance.new("Weld")
o117 = Instance.new("Part")
o118 = Instance.new("BlockMesh")
o119 = Instance.new("Weld")
o120 = Instance.new("Part")
o121 = Instance.new("BlockMesh")
o122 = Instance.new("Weld")
o123 = Instance.new("Part")
o124 = Instance.new("BlockMesh")
o125 = Instance.new("Weld")
o126 = Instance.new("Part")
o127 = Instance.new("BlockMesh")
o128 = Instance.new("Weld")
o129 = Instance.new("Part")
o130 = Instance.new("BlockMesh")
o131 = Instance.new("Weld")
o132 = Instance.new("Part")
o133 = Instance.new("BlockMesh")
o134 = Instance.new("Weld")
o135 = Instance.new("Part")
o136 = Instance.new("BlockMesh")
o137 = Instance.new("Weld")
o138 = Instance.new("Part")
o139 = Instance.new("BlockMesh")
o140 = Instance.new("Weld")
o141 = Instance.new("Part")
o142 = Instance.new("BlockMesh")
o143 = Instance.new("Weld")
o144 = Instance.new("Part")
o145 = Instance.new("BlockMesh")
o146 = Instance.new("Weld")
o147 = Instance.new("Part")
o148 = Instance.new("BlockMesh")
o149 = Instance.new("Weld")
o150 = Instance.new("Part")
o151 = Instance.new("BlockMesh")
o152 = Instance.new("Weld")
o153 = Instance.new("Part")
o154 = Instance.new("BlockMesh")
o155 = Instance.new("Weld")
o156 = Instance.new("Part")
o157 = Instance.new("BlockMesh")
o158 = Instance.new("Weld")
o159 = Instance.new("Part")
o160 = Instance.new("BlockMesh")
o161 = Instance.new("Weld")
o162 = Instance.new("Part")
o163 = Instance.new("BlockMesh")
o164 = Instance.new("Weld")
o165 = Instance.new("Part")
o166 = Instance.new("BlockMesh")
o167 = Instance.new("Weld")
o168 = Instance.new("Part")
o169 = Instance.new("BlockMesh")
o170 = Instance.new("Weld")
o171 = Instance.new("Part")
o172 = Instance.new("BlockMesh")
o173 = Instance.new("Weld")
o174 = Instance.new("Part")
o175 = Instance.new("BlockMesh")
o176 = Instance.new("Weld")
o177 = Instance.new("Part")
o178 = Instance.new("BlockMesh")
o179 = Instance.new("Weld")
o180 = Instance.new("Part")
o181 = Instance.new("BlockMesh")
o182 = Instance.new("Weld")
o183 = Instance.new("Part")
o184 = Instance.new("BlockMesh")
o185 = Instance.new("Weld")
o186 = Instance.new("Part")
o187 = Instance.new("BlockMesh")
o188 = Instance.new("Weld")
o189 = Instance.new("Part")
o190 = Instance.new("BlockMesh")
o191 = Instance.new("Weld")
o192 = Instance.new("Part")
o193 = Instance.new("BlockMesh")
o194 = Instance.new("Weld")
o195 = Instance.new("Part")
o196 = Instance.new("BlockMesh")
o197 = Instance.new("Weld")
o198 = Instance.new("Part")
o199 = Instance.new("BlockMesh")
o200 = Instance.new("Weld")
o201 = Instance.new("Part")
o202 = Instance.new("BlockMesh")
o203 = Instance.new("Weld")
o204 = Instance.new("Part")
o205 = Instance.new("BlockMesh")
o206 = Instance.new("Weld")
o207 = Instance.new("Part")
o208 = Instance.new("BlockMesh")
o209 = Instance.new("Weld")
o210 = Instance.new("Part")
o211 = Instance.new("BlockMesh")
o212 = Instance.new("Weld")
o213 = Instance.new("Part")
o214 = Instance.new("BlockMesh")
o215 = Instance.new("Weld")
o216 = Instance.new("Part")
o217 = Instance.new("BlockMesh")
o218 = Instance.new("Weld")
o219 = Instance.new("Part")
o220 = Instance.new("BlockMesh")
o221 = Instance.new("Weld")
o222 = Instance.new("Part")
o223 = Instance.new("BlockMesh")
o224 = Instance.new("Weld")
o225 = Instance.new("Part")
o226 = Instance.new("BlockMesh")
o227 = Instance.new("Weld")
o228 = Instance.new("Part")
o229 = Instance.new("BlockMesh")
o230 = Instance.new("Weld")
o231 = Instance.new("Part")
o232 = Instance.new("BlockMesh")
o233 = Instance.new("Weld")
o234 = Instance.new("Part")
o235 = Instance.new("BlockMesh")
o236 = Instance.new("Weld")
o237 = Instance.new("Part")
o238 = Instance.new("BlockMesh")
o239 = Instance.new("Weld")
o240 = Instance.new("Part")
o241 = Instance.new("BlockMesh")
o242 = Instance.new("Weld")
o243 = Instance.new("Part")
o244 = Instance.new("BlockMesh")
o245 = Instance.new("Weld")
o246 = Instance.new("Part")
o247 = Instance.new("BlockMesh")
o248 = Instance.new("Weld")
o249 = Instance.new("Part")
o250 = Instance.new("BlockMesh")
o251 = Instance.new("Weld")
o252 = Instance.new("Part")
o253 = Instance.new("BlockMesh")
o254 = Instance.new("Weld")
o255 = Instance.new("Part")
o256 = Instance.new("BlockMesh")
o257 = Instance.new("Weld")
o258 = Instance.new("Part")
o259 = Instance.new("BlockMesh")
o260 = Instance.new("Weld")
o261 = Instance.new("Part")
o262 = Instance.new("BlockMesh")
o263 = Instance.new("Weld")
o264 = Instance.new("Part")
o265 = Instance.new("BlockMesh")
o266 = Instance.new("Weld")
o267 = Instance.new("Part")
o268 = Instance.new("BlockMesh")
o269 = Instance.new("Weld")
o270 = Instance.new("Part")
o271 = Instance.new("BlockMesh")
o272 = Instance.new("Weld")
o273 = Instance.new("Part")
o274 = Instance.new("BlockMesh")
o275 = Instance.new("Weld")
o276 = Instance.new("Part")
o277 = Instance.new("BlockMesh")
o278 = Instance.new("Weld")
o279 = Instance.new("Part")
o280 = Instance.new("BlockMesh")
o281 = Instance.new("Weld")
o282 = Instance.new("Part")
o283 = Instance.new("BlockMesh")
o284 = Instance.new("Weld")
o285 = Instance.new("Part")
o286 = Instance.new("BlockMesh")
o287 = Instance.new("Weld")
o288 = Instance.new("Part")
o289 = Instance.new("Weld")
o290 = Instance.new("Part")
o291 = Instance.new("Weld")
o292 = Instance.new("Part")
o293 = Instance.new("Weld")
o294 = Instance.new("Part")
o295 = Instance.new("BlockMesh")
o296 = Instance.new("Weld")
o297 = Instance.new("Part")
o298 = Instance.new("Weld")
o299 = Instance.new("Part")
o300 = Instance.new("Weld")
o301 = Instance.new("Part")
o302 = Instance.new("Weld")
o303 = Instance.new("Part")
o304 = Instance.new("Weld")
o305 = Instance.new("Part")
o306 = Instance.new("Weld")
o307 = Instance.new("Part")
o308 = Instance.new("Weld")
o309 = Instance.new("Part")
o310 = Instance.new("Weld")
o311 = Instance.new("Part")
o312 = Instance.new("BlockMesh")
o313 = Instance.new("Weld")
o314 = Instance.new("Part")
o315 = Instance.new("BlockMesh")
o316 = Instance.new("Weld")
o317 = Instance.new("Part")
o318 = Instance.new("BlockMesh")
o319 = Instance.new("Weld")
o320 = Instance.new("Part")
o321 = Instance.new("BlockMesh")
o322 = Instance.new("Weld")
o323 = Instance.new("Part")
o324 = Instance.new("BlockMesh")
o325 = Instance.new("Weld")
o326 = Instance.new("Part")
o327 = Instance.new("BlockMesh")
o328 = Instance.new("Weld")
o329 = Instance.new("Part")
o330 = Instance.new("BlockMesh")
o331 = Instance.new("Weld")
o1.Name = "Torso_"
o1.Parent = mas
o2.Name = "REF"
o2.Parent = o1
o2.Transparency = 1
o2.Position = Vector3.new(110.644409, 3.18007588, -60.6269913)
o2.Rotation = Vector3.new(180, 0.0199999996, -180)
o2.Anchored = false
o2.CanCollide = false
o2.FormFactor = Enum.FormFactor.Symmetric
o2.Size = Vector3.new(2, 2, 1)
o2.CFrame = CFrame.new(110.644409, 3.18007588, -60.6269913, -0.99999994, 1.23944917e-22, 0.000331714633, 1.23908515e-22, 1, -1.09738441e-22, -0.000331714633, -1.09697344e-22, -0.99999994)
o2.BottomSurface = Enum.SurfaceType.Smooth
o2.TopSurface = Enum.SurfaceType.Smooth
o2.Position = Vector3.new(110.644409, 3.18007588, -60.6269913)
o3.Parent = o2
o3.MeshId = "rbxasset://fonts/torso.mesh"
o3.MeshType = Enum.MeshType.FileMesh
o4.Name = "Chain"
o4.Parent = o1
o4.Material = Enum.Material.SmoothPlastic
o4.BrickColor = BrickColor.new("Fossil")
o4.Position = Vector3.new(112.188507, 1.02904105, -59.959465)
o4.Rotation = Vector3.new(0, 0, 51.9099998)
o4.Anchored = false
o4.CanCollide = false
o4.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o4.CFrame = CFrame.new(112.188507, 1.02904105, -59.959465, 0.61693728, -0.787012339, 0, 0.787012339, 0.61693728, 0, 0, 0, 1)
o4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o4.Color = Color3.new(0.623529, 0.631373, 0.67451)
o4.Position = Vector3.new(112.188507, 1.02904105, -59.959465)
o5.Parent = o4
o5.Scale = Vector3.new(0.140866324, 0.565506876, 0.163323283)
o6.Name = "Joint"
o6.Parent = o4
o6.C0 = CFrame.new(0.740280151, 2.54227448, -0.667526245, -0.61693722, 0.787012339, 0.00020464712, 0.787012279, 0.61693728, -0.000261063513, -0.000331714633, -1.09697344e-22, -0.99999994)
o6.Part0 = o4
o6.Part1 = o2
o7.Parent = o1
o7.Material = Enum.Material.Metal
o7.BrickColor = BrickColor.new("Dark stone grey")
o7.Position = Vector3.new(110.710022, 3.85552692, -59.974144)
o7.Rotation = Vector3.new(89.9199982, 0, 0)
o7.Anchored = false
o7.CanCollide = false
o7.Size = Vector3.new(0.475277603, 0.200000003, 0.484976858)
o7.CFrame = CFrame.new(110.710022, 3.85552692, -59.974144, 1, 0, 0, 0, 0.00141300017, -0.999999106, 0, 0.999999106, 0.00141300017)
o7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o7.Color = Color3.new(0.388235, 0.372549, 0.384314)
o7.Position = Vector3.new(110.710022, 3.85552692, -59.974144)
o8.Parent = o7
o8.Scale = Vector3.new(1, 0.484977037, 1)
o9.Name = "Joint"
o9.Parent = o7
o9.C0 = CFrame.new(-0.065612793, -0.653800964, 0.674528122, -0.99999994, 1.23944917e-22, 0.000331714633, -0.000331714342, 0.00141300017, -0.999999046, -4.68712841e-07, -0.999999106, -0.00141300005)
o9.Part0 = o7
o9.Part1 = o2
o10.Name = "ChainPart"
o10.Parent = o1
o10.Material = Enum.Material.Slate
o10.BrickColor = BrickColor.new("Dark stone grey")
o10.Position = Vector3.new(110.700089, 2.85231447, -59.8544502)
o10.Rotation = Vector3.new(89.7399979, 0.0900000036, 160.279999)
o10.Size = Vector3.new(0.200000003, 0.200000003, 0.286000013)
o10.CFrame = CFrame.new(110.700089, 2.85231447, -59.8544502, -0.941325903, -0.337495148, 0.00160953274, 0, -0.00476900069, -0.999988616, 0.337498963, -0.941315234, 0.00448918389)
o10.Color = Color3.new(0.388235, 0.372549, 0.384314)
o10.Position = Vector3.new(110.700089, 2.85231447, -59.8544502)
o11.Parent = o10
o11.MeshId = "rbxassetid://525469584"
o11.Scale = Vector3.new(0.00100000005, 0.00200000009, 0.00100000005)
o11.TextureId = "rbxassetid://157956766"
o11.MeshType = Enum.MeshType.FileMesh
o12.Name = "Joint"
o12.Parent = o10
o12.C0 = CFrame.new(-0.208320618, 0.744434357, -0.331315279, 0.941213906, -1.5369531e-22, -0.337811172, 0.337807357, -0.00476900069, 0.941203237, -0.00161102181, -0.999988616, -0.00448864931)
o12.Part0 = o10
o12.Part1 = o2
o13.Name = "ChainPart"
o13.Parent = o1
o13.Material = Enum.Material.Slate
o13.BrickColor = BrickColor.new("Dark stone grey")
o13.Position = Vector3.new(110.700089, 3.11272144, -59.8544502)
o13.Rotation = Vector3.new(89.7300034, 0.0199999996, 175)
o13.Size = Vector3.new(0.200000003, 0.200000003, 0.286000013)
o13.CFrame = CFrame.new(110.700089, 3.11272144, -59.8544502, -0.996187627, -0.0872359872, 0.000416033145, 0, -0.00476900162, -0.999988616, 0.0872369707, -0.996176362, 0.00475081895)
o13.Color = Color3.new(0.388235, 0.372549, 0.384314)
o13.Position = Vector3.new(110.700089, 3.11272144, -59.8544502)
o14.Parent = o13
o14.MeshId = "rbxassetid://525469584"
o14.Scale = Vector3.new(0.00100000005, 0.00200000009, 0.00100000005)
o14.TextureId = "rbxassetid://157956766"
o14.MeshType = Enum.MeshType.FileMesh
o15.Name = "Joint"
o15.Parent = o13
o15.C0 = CFrame.new(-0.011932373, 0.774124146, -0.0710468292, 0.996158659, -1.33042061e-22, -0.0875674114, 0.0875664279, -0.00476900162, 0.996147394, -0.00041760903, -0.999988616, -0.00475068064)
o15.Part0 = o13
o15.Part1 = o2
o16.Name = "ChainPart"
o16.Parent = o1
o16.Material = Enum.Material.Slate
o16.BrickColor = BrickColor.new("Dark stone grey")
o16.Position = Vector3.new(110.698997, 2.97608733, -59.8550568)
o16.Rotation = Vector3.new(90.0199966, -0.270000011, -85.9599991)
o16.Size = Vector3.new(0.200000003, 0.200000003, 0.286000013)
o16.CFrame = CFrame.new(110.698997, 2.97608733, -59.8550568, 0.0704749599, 0.997502208, -0.00475714216, 0, -0.00476900069, -0.999988616, -0.997513533, 0.0704741552, -0.000336095109)
o16.Color = Color3.new(0.388235, 0.372549, 0.384314)
o16.Position = Vector3.new(110.698997, 2.97608733, -59.8550568)
o17.Parent = o16
o17.MeshId = "rbxassetid://525469584"
o17.Scale = Vector3.new(0.00100000005, 0.00200000009, 0.00100000005)
o17.TextureId = "rbxassetid://157956766"
o17.MeshType = Enum.MeshType.FileMesh
o18.Name = "Joint"
o18.Parent = o16
o18.C0 = CFrame.new(0.766166687, -0.109832764, -0.203467131, -0.0701440647, 1.181596e-22, 0.997536838, -0.997525513, -0.00476900069, -0.0701432601, 0.00475725299, -0.999988616, 0.00033451707)
o18.Part0 = o16
o18.Part1 = o2
o19.Name = "ChainPart"
o19.Parent = o1
o19.Material = Enum.Material.Slate
o19.BrickColor = BrickColor.new("Dark stone grey")
o19.Position = Vector3.new(110.698997, 3.226861, -59.8550568)
o19.Rotation = Vector3.new(89.8499985, -0.230000004, -123.540001)
o19.Size = Vector3.new(0.200000003, 0.200000003, 0.286000013)
o19.CFrame = CFrame.new(110.698997, 3.226861, -59.8550568, -0.55250299, 0.833501399, -0.00397501327, 0, -0.00476899929, -0.999988616, -0.833510995, -0.552496672, 0.00263488619)
o19.Color = Color3.new(0.388235, 0.372549, 0.384314)
o19.Position = Vector3.new(110.698997, 3.226861, -59.8550568)
o20.Parent = o19
o20.MeshId = "rbxassetid://525469584"
o20.Scale = Vector3.new(0.00100000005, 0.00200000009, 0.00100000005)
o20.TextureId = "rbxassetid://157956766"
o20.MeshType = Enum.MeshType.FileMesh
o21.Name = "Joint"
o21.Parent = o19
o21.C0 = CFrame.new(0.673576355, 0.381210327, 0.0449678898, 0.552779436, 2.29540033e-23, 0.833327651, -0.833318055, -0.00476899929, 0.552773118, 0.00397413876, -0.999988616, -0.00263620447)
o21.Part0 = o19
o21.Part1 = o2
o22.Name = "ChainPart"
o22.Parent = o1
o22.Material = Enum.Material.Slate
o22.BrickColor = BrickColor.new("Dark stone grey")
o22.Position = Vector3.new(110.700089, 3.35474706, -59.8544502)
o22.Rotation = Vector3.new(89.7399979, 0.0900000036, 160.279999)
o22.Size = Vector3.new(0.200000003, 0.200000003, 0.286000013)
o22.CFrame = CFrame.new(110.700089, 3.35474706, -59.8544502, -0.941325903, -0.337495148, 0.00160953274, 0, -0.00476900069, -0.999988616, 0.337498963, -0.941315234, 0.00448918389)
o22.Color = Color3.new(0.388235, 0.372549, 0.384314)
o22.Position = Vector3.new(110.700089, 3.35474706, -59.8544502)
o23.Parent = o22
o23.MeshId = "rbxassetid://525469584"
o23.Scale = Vector3.new(0.00100000005, 0.00200000009, 0.00100000005)
o23.TextureId = "rbxassetid://157956766"
o23.MeshType = Enum.MeshType.FileMesh
o24.Name = "Joint"
o24.Parent = o22
o24.C0 = CFrame.new(-0.208320618, 0.746829987, 0.171111345, 0.941213906, -1.5369531e-22, -0.337811172, 0.337807357, -0.00476900069, 0.941203237, -0.00161102181, -0.999988616, -0.00448864931)
o24.Part0 = o22
o24.Part1 = o2
o25.Name = "ChainPart"
o25.Parent = o1
o25.Material = Enum.Material.Slate
o25.BrickColor = BrickColor.new("Dark stone grey")
o25.Position = Vector3.new(110.698997, 3.47851992, -59.8550568)
o25.Rotation = Vector3.new(90.0199966, -0.270000011, -85.9599991)
o25.Size = Vector3.new(0.200000003, 0.200000003, 0.286000013)
o25.CFrame = CFrame.new(110.698997, 3.47851992, -59.8550568, 0.0704749599, 0.997502208, -0.00475714216, 0, -0.00476900069, -0.999988616, -0.997513533, 0.0704741552, -0.000336095109)
o25.Color = Color3.new(0.388235, 0.372549, 0.384314)
o25.Position = Vector3.new(110.698997, 3.47851992, -59.8550568)
o26.Parent = o25
o26.MeshId = "rbxassetid://525469584"
o26.Scale = Vector3.new(0.00100000005, 0.00200000009, 0.00100000005)
o26.TextureId = "rbxassetid://157956766"
o26.MeshType = Enum.MeshType.FileMesh
o27.Name = "Joint"
o27.Parent = o25
o27.C0 = CFrame.new(0.766166687, -0.107437134, 0.298959732, -0.0701440647, 1.181596e-22, 0.997536838, -0.997525513, -0.00476900069, -0.0701432601, 0.00475725299, -0.999988616, 0.00033451707)
o27.Part0 = o25
o27.Part1 = o2
o28.Name = "ChainPart"
o28.Parent = o1
o28.Material = Enum.Material.Slate
o28.BrickColor = BrickColor.new("Dark stone grey")
o28.Position = Vector3.new(110.700089, 3.61515403, -59.8544502)
o28.Rotation = Vector3.new(89.7300034, 0.0199999996, 175)
o28.Size = Vector3.new(0.200000003, 0.200000003, 0.286000013)
o28.CFrame = CFrame.new(110.700089, 3.61515403, -59.8544502, -0.996187627, -0.0872359872, 0.000416033145, 0, -0.00476900162, -0.999988616, 0.0872369707, -0.996176362, 0.00475081895)
o28.Color = Color3.new(0.388235, 0.372549, 0.384314)
o28.Position = Vector3.new(110.700089, 3.61515403, -59.8544502)
o29.Parent = o28
o29.MeshId = "rbxassetid://525469584"
o29.Scale = Vector3.new(0.00100000005, 0.00200000009, 0.00100000005)
o29.TextureId = "rbxassetid://157956766"
o29.MeshType = Enum.MeshType.FileMesh
o30.Name = "Joint"
o30.Parent = o28
o30.C0 = CFrame.new(-0.011932373, 0.776519775, 0.431379795, 0.996158659, -1.33042061e-22, -0.0875674114, 0.0875664279, -0.00476900162, 0.996147394, -0.00041760903, -0.999988616, -0.00475068064)
o30.Part0 = o28
o30.Part1 = o2
o31.Name = "ChainPart"
o31.Parent = o1
o31.Material = Enum.Material.Slate
o31.BrickColor = BrickColor.new("Dark stone grey")
o31.Position = Vector3.new(110.700317, 3.76630592, -59.8551254)
o31.Rotation = Vector3.new(90, -0.270000011, -90.5100021)
o31.Size = Vector3.new(0.200000003, 0.200000003, 0.286000013)
o31.CFrame = CFrame.new(110.700317, 3.76630592, -59.8551254, -0.00887999684, 0.999949217, -0.0047688121, 0, -0.00476900069, -0.999988616, -0.999960661, -0.00887989532, 4.23487072e-05)
o31.Color = Color3.new(0.388235, 0.372549, 0.384314)
o31.Position = Vector3.new(110.700317, 3.76630592, -59.8551254)
o32.Parent = o31
o32.MeshId = "rbxassetid://525469584"
o32.Scale = Vector3.new(0.00100000005, 0.00200000009, 0.00100000005)
o32.TextureId = "rbxassetid://157956766"
o32.MeshType = Enum.MeshType.FileMesh
o33.Name = "Joint"
o33.Parent = o31
o33.C0 = CFrame.new(0.772331238, -0.046257019, 0.586457491, 0.00921169762, 1.08592396e-22, 0.999957681, -0.999946237, -0.00476900069, 0.00921159238, 0.00476879766, -0.999988616, -4.39305877e-05)
o33.Part0 = o31
o33.Part1 = o2
o34.Name = "ChainPart"
o34.Parent = o1
o34.Material = Enum.Material.Slate
o34.BrickColor = BrickColor.new("Dark stone grey")
o34.Position = Vector3.new(110.698997, 2.72442842, -59.8550568)
o34.Rotation = Vector3.new(89.8499985, -0.230000004, -123.540001)
o34.Size = Vector3.new(0.200000003, 0.200000003, 0.286000013)
o34.CFrame = CFrame.new(110.698997, 2.72442842, -59.8550568, -0.55250299, 0.833501399, -0.00397501327, 0, -0.00476899929, -0.999988616, -0.833510995, -0.552496672, 0.00263488619)
o34.Color = Color3.new(0.388235, 0.372549, 0.384314)
o34.Position = Vector3.new(110.698997, 2.72442842, -59.8550568)
o35.Parent = o34
o35.MeshId = "rbxassetid://525469584"
o35.Scale = Vector3.new(0.00100000005, 0.00200000009, 0.00100000005)
o35.TextureId = "rbxassetid://157956766"
o35.MeshType = Enum.MeshType.FileMesh
o36.Name = "Joint"
o36.Parent = o34
o36.C0 = CFrame.new(0.673576355, 0.378814697, -0.457459211, 0.552779436, 2.29540033e-23, 0.833327651, -0.833318055, -0.00476899929, 0.552773118, 0.00397413876, -0.999988616, -0.00263620447)
o36.Part0 = o34
o36.Part1 = o2
o37.Parent = o1
o37.Material = Enum.Material.SmoothPlastic
o37.BrickColor = BrickColor.new("Really black")
o37.Position = Vector3.new(108.697571, 2.32146406, -60.0999985)
o37.Rotation = Vector3.new(-90, 0, 90)
o37.Anchored = false
o37.CanCollide = false
o37.Shape = Enum.PartType.Cylinder
o37.Size = Vector3.new(0.200000003, 0.200000003, 0.278077513)
o37.CFrame = CFrame.new(108.697571, 2.32146406, -60.0999985, 0, -1, 0, 0, 0, 1, -1, 0, 0)
o37.BottomSurface = Enum.SurfaceType.Smooth
o37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o37.TopSurface = Enum.SurfaceType.Smooth
o37.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o37.Position = Vector3.new(108.697571, 2.32146406, -60.0999985)
o38.Parent = o37
o38.Scale = Vector3.new(0.278077543, 0.945463777, 1)
o38.MeshType = Enum.MeshType.Cylinder
o39.Name = "Joint"
o39.Parent = o37
o39.C0 = CFrame.new(0.526992798, -1.94683838, 0.858611822, 0.000331714633, 1.09697344e-22, 0.99999994, 0.99999994, -1.23944917e-22, -0.000331714633, 1.23908515e-22, 1, -1.09738441e-22)
o39.Part0 = o37
o39.Part1 = o2
o40.Parent = o1
o40.Material = Enum.Material.SmoothPlastic
o40.BrickColor = BrickColor.new("Really black")
o40.Position = Vector3.new(110.445099, 3.25596094, -60.0699387)
o40.Rotation = Vector3.new(180, 90, 0)
o40.Anchored = false
o40.FormFactor = Enum.FormFactor.Custom
o40.Size = Vector3.new(0.200000003, 1.99000001, 1.66999996)
o40.CFrame = CFrame.new(110.445099, 3.25596094, -60.0699387, 0, 0, 1, 0, -1, 0, 1, 0, -0)
o40.BottomSurface = Enum.SurfaceType.Smooth
o40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o40.TopSurface = Enum.SurfaceType.Smooth
o40.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o40.Position = Vector3.new(110.445099, 3.25596094, -60.0699387)
o41.Name = "Joint"
o41.Parent = o40
o41.C0 = CFrame.new(-0.557052612, 0.0758850574, 0.199310303, -0.000331714633, -1.09697344e-22, -0.99999994, -1.23908515e-22, -1, 1.09738441e-22, -0.99999994, 1.23944917e-22, 0.000331714633)
o41.Part0 = o40
o41.Part1 = o2
o42.Parent = o1
o42.Material = Enum.Material.Neon
o42.BrickColor = BrickColor.new("Bright blue")
o42.Position = Vector3.new(111.957489, 1.39043605, -60.0449448)
o42.Rotation = Vector3.new(-90, 67.0100021, 90)
o42.Anchored = false
o42.FormFactor = Enum.FormFactor.Custom
o42.Size = Vector3.new(0.210000008, 2.18000031, 0.200000003)
o42.CFrame = CFrame.new(111.957489, 1.39043605, -60.0449448, 0, -0.39049381, 0.9206056, 0, 0.9206056, 0.39049381, -1, 0, 0)
o42.BottomSurface = Enum.SurfaceType.Smooth
o42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o42.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o42.TopSurface = Enum.SurfaceType.Smooth
o42.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o42.Position = Vector3.new(111.957489, 1.39043605, -60.0449448)
o43.Name = "Joint"
o43.Parent = o42
o43.C0 = CFrame.new(0.582046509, 2.16030502, -0.509986877, 0.000331714633, 1.09697344e-22, 0.99999994, 0.39049378, 0.9206056, -0.000129532506, -0.92060554, 0.39049381, 0.000305378344)
o43.Part0 = o42
o43.Part1 = o2
o44.Parent = o1
o44.Material = Enum.Material.SmoothPlastic
o44.BrickColor = BrickColor.new("Really black")
o44.Position = Vector3.new(111.315094, 3.25596094, -60.0699387)
o44.Rotation = Vector3.new(0, -90, 0)
o44.Anchored = false
o44.FormFactor = Enum.FormFactor.Custom
o44.Size = Vector3.new(0.200000003, 1.99000001, 0.669999957)
o44.CFrame = CFrame.new(111.315094, 3.25596094, -60.0699387, 0, 0, -1, 0, 1, 0, 1, 0, 0)
o44.BottomSurface = Enum.SurfaceType.Smooth
o44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o44.TopSurface = Enum.SurfaceType.Smooth
o44.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o44.Position = Vector3.new(111.315094, 3.25596094, -60.0699387)
o45.Name = "Joint"
o45.Parent = o44
o45.C0 = CFrame.new(-0.557052612, -0.0758850574, 0.670684814, -0.000331714633, -1.09697344e-22, -0.99999994, 1.23908515e-22, 1, -1.09738441e-22, 0.99999994, -1.23944917e-22, -0.000331714633)
o45.Part0 = o44
o45.Part1 = o2
o46.Parent = o1
o46.Material = Enum.Material.SmoothPlastic
o46.BrickColor = BrickColor.new("Really black")
o46.Position = Vector3.new(110.640091, 3.25596094, -61.2099419)
o46.Rotation = Vector3.new(180, 90, 0)
o46.Anchored = false
o46.FormFactor = Enum.FormFactor.Custom
o46.Size = Vector3.new(0.200000003, 1.99000001, 2.05999994)
o46.CFrame = CFrame.new(110.640091, 3.25596094, -61.2099419, 0, 0, 1, 0, -1, 0, 1, 0, -0)
o46.BottomSurface = Enum.SurfaceType.Smooth
o46.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o46.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o46.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o46.TopSurface = Enum.SurfaceType.Smooth
o46.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o46.Position = Vector3.new(110.640091, 3.25596094, -61.2099419)
o47.Name = "Joint"
o47.Parent = o46
o47.C0 = CFrame.new(0.582950592, 0.0758850574, 0.0043182373, -0.000331714633, -1.09697344e-22, -0.99999994, -1.23908515e-22, -1, 1.09738441e-22, -0.99999994, 1.23944917e-22, 0.000331714633)
o47.Part0 = o46
o47.Part1 = o2
o48.Parent = o1
o48.Material = Enum.Material.SmoothPlastic
o48.BrickColor = BrickColor.new("Really black")
o48.Position = Vector3.new(109.589294, 1.338287, -60.5699387)
o48.Rotation = Vector3.new(-90, -67.0100021, -90)
o48.Anchored = false
o48.FormFactor = Enum.FormFactor.Custom
o48.Size = Vector3.new(1.24000001, 2.30000019, 0.50999999)
o48.CFrame = CFrame.new(109.589294, 1.338287, -60.5699387, 0, 0.39049381, -0.9206056, 0, 0.9206056, 0.39049381, 1, 0, 0)
o48.BottomSurface = Enum.SurfaceType.Smooth
o48.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o48.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o48.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o48.TopSurface = Enum.SurfaceType.Smooth
o48.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o48.Position = Vector3.new(109.589294, 1.338287, -60.5699387)
o49.Name = "Joint"
o49.Parent = o48
o49.C0 = CFrame.new(-0.0570526123, 2.10757828, -0.25213623, -0.000331714633, -1.09697344e-22, -0.99999994, -0.39049378, 0.9206056, 0.000129532506, 0.92060554, 0.39049381, -0.000305378344)
o49.Part0 = o48
o49.Part1 = o2
o50.Parent = o1
o50.Material = Enum.Material.Neon
o50.BrickColor = BrickColor.new("Bright blue")
o50.Position = Vector3.new(109.30571, 1.32278597, -61.1999435)
o50.Rotation = Vector3.new(-90, -67.0100021, -90)
o50.Anchored = false
o50.FormFactor = Enum.FormFactor.Custom
o50.Size = Vector3.new(0.200000003, 2.05000019, 0.200000003)
o50.CFrame = CFrame.new(109.30571, 1.32278597, -61.1999435, 0, 0.39049381, -0.9206056, 0, 0.9206056, 0.39049381, 1, 0, 0)
o50.BottomSurface = Enum.SurfaceType.Smooth
o50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o50.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o50.TopSurface = Enum.SurfaceType.Smooth
o50.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o50.Position = Vector3.new(109.30571, 1.32278597, -61.1999435)
o51.Name = "Joint"
o51.Parent = o50
o51.C0 = CFrame.new(0.572952271, 2.23258209, -0.507156372, -0.000331714633, -1.09697344e-22, -0.99999994, -0.39049378, 0.9206056, 0.000129532506, 0.92060554, 0.39049381, -0.000305378344)
o51.Part0 = o50
o51.Part1 = o2
o52.Parent = o1
o52.Material = Enum.Material.Neon
o52.BrickColor = BrickColor.new("Bright blue")
o52.Position = Vector3.new(111.964462, 1.32278597, -61.2099457)
o52.Rotation = Vector3.new(-90, 67.0100021, 90)
o52.Anchored = false
o52.FormFactor = Enum.FormFactor.Custom
o52.Size = Vector3.new(0.219999999, 2.05000019, 0.200000003)
o52.CFrame = CFrame.new(111.964462, 1.32278597, -61.2099457, 0, -0.39049381, 0.9206056, 0, 0.9206056, 0.39049381, -1, 0, 0)
o52.BottomSurface = Enum.SurfaceType.Smooth
o52.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o52.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o52.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o52.TopSurface = Enum.SurfaceType.Smooth
o52.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o52.Position = Vector3.new(111.964462, 1.32278597, -61.2099457)
o53.Name = "Joint"
o53.Parent = o52
o53.C0 = CFrame.new(-0.582954407, 2.22530365, -0.489990234, 0.000331714633, 1.09697344e-22, 0.99999994, 0.39049378, 0.9206056, -0.000129532506, -0.92060554, 0.39049381, 0.000305378344)
o53.Part0 = o52
o53.Part1 = o2
o54.Parent = o1
o54.Material = Enum.Material.Neon
o54.BrickColor = BrickColor.new("Bright blue")
o54.Position = Vector3.new(109.304871, 1.37202406, -60.0449448)
o54.Rotation = Vector3.new(-90, -67.0100021, -90)
o54.Anchored = false
o54.FormFactor = Enum.FormFactor.Custom
o54.Size = Vector3.new(0.210000008, 2.1400001, 0.200000003)
o54.CFrame = CFrame.new(109.304871, 1.37202406, -60.0449448, 0, 0.39049381, -0.9206056, 0, 0.9206056, 0.39049381, 1, 0, 0)
o54.BottomSurface = Enum.SurfaceType.Smooth
o54.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o54.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o54.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o54.TopSurface = Enum.SurfaceType.Smooth
o54.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o54.Position = Vector3.new(109.304871, 1.37202406, -60.0449448)
o55.Name = "Joint"
o55.Parent = o54
o55.C0 = CFrame.new(-0.582046509, 2.18758392, -0.527153015, -0.000331714633, -1.09697344e-22, -0.99999994, -0.39049378, 0.9206056, 0.000129532506, 0.92060554, 0.39049381, -0.000305378344)
o55.Part0 = o54
o55.Part1 = o2
o56.Parent = o1
o56.Material = Enum.Material.SmoothPlastic
o56.BrickColor = BrickColor.new("Really black")
o56.Position = Vector3.new(111.690109, 1.34219098, -60.6149445)
o56.Rotation = Vector3.new(-90, 67.0100021, 90)
o56.Anchored = false
o56.FormFactor = Enum.FormFactor.Custom
o56.Size = Vector3.new(1.33000004, 2.30000019, 0.529999971)
o56.CFrame = CFrame.new(111.690109, 1.34219098, -60.6149445, 0, -0.39049381, 0.9206056, 0, 0.9206056, 0.39049381, -1, 0, 0)
o56.BottomSurface = Enum.SurfaceType.Smooth
o56.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o56.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o56.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o56.TopSurface = Enum.SurfaceType.Smooth
o56.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o56.Position = Vector3.new(111.690109, 1.34219098, -60.6149445)
o57.Name = "Joint"
o57.Parent = o56
o57.C0 = CFrame.new(0.012046814, 2.10030746, -0.244995117, 0.000331714633, 1.09697344e-22, 0.99999994, 0.39049378, 0.9206056, -0.000129532506, -0.92060554, 0.39049381, 0.000305378344)
o57.Part0 = o56
o57.Part1 = o2
o58.Parent = o1
o58.Material = Enum.Material.SmoothPlastic
o58.BrickColor = BrickColor.new("Really black")
o58.Position = Vector3.new(111.570099, 3.25596094, -60.7049484)
o58.Rotation = Vector3.new(180, 90, 0)
o58.Anchored = false
o58.FormFactor = Enum.FormFactor.Custom
o58.Size = Vector3.new(1.21000004, 1.99000001, 0.200000003)
o58.CFrame = CFrame.new(111.570099, 3.25596094, -60.7049484, 0, 0, 1, 0, -1, 0, 1, 0, -0)
o58.BottomSurface = Enum.SurfaceType.Smooth
o58.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o58.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o58.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o58.TopSurface = Enum.SurfaceType.Smooth
o58.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o58.Position = Vector3.new(111.570099, 3.25596094, -60.7049484)
o59.Name = "Joint"
o59.Parent = o58
o59.C0 = CFrame.new(0.0779571533, 0.0758850574, -0.925689697, -0.000331714633, -1.09697344e-22, -0.99999994, -1.23908515e-22, -1, 1.09738441e-22, -0.99999994, 1.23944917e-22, 0.000331714633)
o59.Part0 = o58
o59.Part1 = o2
o60.Parent = o1
o60.Material = Enum.Material.SmoothPlastic
o60.BrickColor = BrickColor.new("Really black")
o60.Position = Vector3.new(109.710098, 3.25596094, -60.6999435)
o60.Rotation = Vector3.new(180, 90, 0)
o60.Anchored = false
o60.FormFactor = Enum.FormFactor.Custom
o60.Size = Vector3.new(1.22000003, 1.99000001, 0.200000003)
o60.CFrame = CFrame.new(109.710098, 3.25596094, -60.6999435, 0, 0, 1, 0, -1, 0, 1, 0, -0)
o60.BottomSurface = Enum.SurfaceType.Smooth
o60.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o60.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o60.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o60.TopSurface = Enum.SurfaceType.Smooth
o60.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o60.Position = Vector3.new(109.710098, 3.25596094, -60.6999435)
o61.Name = "Joint"
o61.Parent = o60
o61.C0 = CFrame.new(0.0729522705, 0.0758850574, 0.934310913, -0.000331714633, -1.09697344e-22, -0.99999994, -1.23908515e-22, -1, 1.09738441e-22, -0.99999994, 1.23944917e-22, 0.000331714633)
o61.Part0 = o60
o61.Part1 = o2
o62.Parent = o1
o62.Material = Enum.Material.SmoothPlastic
o62.BrickColor = BrickColor.new("Really black")
o62.Position = Vector3.new(111.943008, 1.37342, -60.6299515)
o62.Rotation = Vector3.new(-90, 67.0100021, 90)
o62.Anchored = false
o62.FormFactor = Enum.FormFactor.Custom
o62.Size = Vector3.new(1.01999998, 2.16000009, 0.200000003)
o62.CFrame = CFrame.new(111.943008, 1.37342, -60.6299515, 0, -0.39049381, 0.9206056, 0, 0.9206056, 0.39049381, -1, 0, 0)
o62.BottomSurface = Enum.SurfaceType.Smooth
o62.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o62.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o62.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o62.TopSurface = Enum.SurfaceType.Smooth
o62.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o62.Position = Vector3.new(111.943008, 1.37342, -60.6299515)
o63.Name = "Joint"
o63.Parent = o62
o63.C0 = CFrame.new(-0.00296020508, 2.17031479, -0.490005493, 0.000331714633, 1.09697344e-22, 0.99999994, 0.39049378, 0.9206056, -0.000129532506, -0.92060554, 0.39049381, 0.000305378344)
o63.Part0 = o62
o63.Part1 = o2
o64.Parent = o1
o64.Material = Enum.Material.SmoothPlastic
o64.BrickColor = BrickColor.new("Really black")
o64.Position = Vector3.new(109.327194, 1.37342, -60.6299515)
o64.Rotation = Vector3.new(-90, -67.0100021, -90)
o64.Anchored = false
o64.FormFactor = Enum.FormFactor.Custom
o64.Size = Vector3.new(1.01999998, 2.16000009, 0.200000003)
o64.CFrame = CFrame.new(109.327194, 1.37342, -60.6299515, 0, 0.39049381, -0.9206056, 0, 0.9206056, 0.39049381, 1, 0, 0)
o64.BottomSurface = Enum.SurfaceType.Smooth
o64.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o64.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o64.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o64.TopSurface = Enum.SurfaceType.Smooth
o64.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o64.Position = Vector3.new(109.327194, 1.37342, -60.6299515)
o65.Name = "Joint"
o65.Parent = o64
o65.C0 = CFrame.new(0.00296020508, 2.17758179, -0.507148743, -0.000331714633, -1.09697344e-22, -0.99999994, -0.39049378, 0.9206056, 0.000129532506, 0.92060554, 0.39049381, -0.000305378344)
o65.Part0 = o64
o65.Part1 = o2
o66.Parent = o1
o66.Material = Enum.Material.SmoothPlastic
o66.BrickColor = BrickColor.new("Fossil")
o66.Position = Vector3.new(112.370712, 0.82624799, -60.7414627)
o66.Rotation = Vector3.new(90, -38.0900002, 147.770004)
o66.Anchored = false
o66.CanCollide = false
o66.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o66.CFrame = CFrame.new(112.370712, 0.82624799, -60.7414627, -0.665761709, -0.419700056, -0.61693871, 0.521891773, 0.329002023, -0.787011266, 0.533282757, -0.845937133, 1.08515837e-06)
o66.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o66.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o66.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o66.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o66.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o66.Color = Color3.new(0.623529, 0.631373, 0.67451)
o66.Position = Vector3.new(112.370712, 0.82624799, -60.7414627)
o67.Parent = o66
o67.Scale = Vector3.new(0.140866324, 0.565506876, 0.163323283)
o68.Name = "Joint"
o68.Parent = o66
o68.C0 = CFrame.new(2.438797, 1.40211105, -0.787460327, 0.665584743, 0.521891773, -0.533503532, 0.419980645, 0.329002023, 0.845797837, 0.616938651, -0.787011266, -0.000205732766)
o68.Part0 = o66
o68.Part1 = o2
o69.Parent = o1
o69.Material = Enum.Material.SmoothPlastic
o69.BrickColor = BrickColor.new("Fossil")
o69.Position = Vector3.new(112.317879, 0.86769098, -60.7595291)
o69.Rotation = Vector3.new(90, -38.0900002, 147.770004)
o69.Anchored = false
o69.CanCollide = false
o69.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o69.CFrame = CFrame.new(112.317879, 0.86769098, -60.7595291, -0.665761709, -0.419700056, -0.61693871, 0.521891773, 0.329002023, -0.787011266, 0.533282757, -0.845937133, 1.08515837e-06)
o69.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o69.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o69.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o69.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o69.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o69.Color = Color3.new(0.623529, 0.631373, 0.67451)
o69.Position = Vector3.new(112.317879, 0.86769098, -60.7595291)
o70.Parent = o69
o70.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o71.Name = "Joint"
o71.Parent = o69
o71.C0 = CFrame.new(2.39161682, 1.351017, -0.787437439, 0.665584743, 0.521891773, -0.533503532, 0.419980645, 0.329002023, 0.845797837, 0.616938651, -0.787011266, -0.000205732766)
o71.Part0 = o69
o71.Part1 = o2
o72.Parent = o1
o72.Material = Enum.Material.SmoothPlastic
o72.BrickColor = BrickColor.new("Fossil")
o72.Position = Vector3.new(112.404327, 0.859848976, -60.6439018)
o72.Rotation = Vector3.new(135.619995, 41.7400017, 145.770004)
o72.Anchored = false
o72.CanCollide = false
o72.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o72.CFrame = CFrame.new(112.404327, 0.859848976, -60.6439018, -0.61693728, -0.419700086, 0.665762961, -0.787012339, 0.329001963, -0.521890163, 0, -0.845937133, -0.533282697)
o72.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o72.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o72.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o72.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o72.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o72.Color = Color3.new(0.623529, 0.631373, 0.67451)
o72.Position = Vector3.new(112.404327, 0.859848976, -60.6439018)
o73.Parent = o72
o73.Scale = Vector3.new(0.140866324, 0.565506876, 0.163323283)
o74.Name = "Joint"
o74.Parent = o72
o74.C0 = CFrame.new(-0.740287781, 1.48768997, -2.39161682, 0.61693722, -0.787012339, -0.00020464712, 0.419980675, 0.329001963, 0.845797837, -0.665585995, -0.521890163, 0.533503473)
o74.Part0 = o72
o74.Part1 = o2
o75.Parent = o1
o75.Material = Enum.Material.SmoothPlastic
o75.BrickColor = BrickColor.new("Fossil")
o75.Position = Vector3.new(111.981911, 1.13104796, -60.8204117)
o75.Rotation = Vector3.new(-180, 0, 128.089996)
o75.Anchored = false
o75.CanCollide = false
o75.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o75.CFrame = CFrame.new(111.981911, 1.13104796, -60.8204117, -0.61693728, -0.787012339, 0, -0.787012339, 0.61693728, 0, 0, 0, -1)
o75.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o75.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o75.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o75.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o75.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o75.Color = Color3.new(0.623529, 0.631373, 0.67451)
o75.Position = Vector3.new(111.981911, 1.13104796, -60.8204117)
o76.Parent = o75
o76.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o77.Name = "Joint"
o77.Parent = o75
o77.C0 = CFrame.new(-0.787452698, 2.31674957, -0.19342041, 0.61693722, -0.787012339, -0.00020464712, 0.787012279, 0.61693728, -0.000261063513, 0.000331714633, 1.09697344e-22, 0.99999994)
o77.Part0 = o75
o77.Part1 = o2
o78.Name = "Chain"
o78.Parent = o1
o78.Material = Enum.Material.SmoothPlastic
o78.BrickColor = BrickColor.new("Fossil")
o78.Position = Vector3.new(112.001556, 1.11563599, -60.8204117)
o78.Rotation = Vector3.new(90, -38.0900002, 90)
o78.Anchored = false
o78.CanCollide = false
o78.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o78.CFrame = CFrame.new(112.001556, 1.11563599, -60.8204117, 0, -0.787012339, -0.61693728, 0, 0.61693728, -0.787012339, 1, 0, 0)
o78.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o78.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o78.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o78.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o78.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o78.Color = Color3.new(0.623529, 0.631373, 0.67451)
o78.Position = Vector3.new(112.001556, 1.11563599, -60.8204117)
o79.Parent = o78
o79.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o80.Name = "Joint"
o80.Parent = o78
o80.C0 = CFrame.new(0.19342041, 2.34172058, -0.787460327, -0.000331714633, -1.09697344e-22, -0.99999994, 0.787012279, 0.61693728, -0.000261063513, 0.61693722, -0.787012339, -0.00020464712)
o80.Part0 = o78
o80.Part1 = o2
o81.Name = "Chain"
o81.Parent = o1
o81.Material = Enum.Material.SmoothPlastic
o81.BrickColor = BrickColor.new("Fossil")
o81.Position = Vector3.new(112.317879, 0.86769098, -60.0203476)
o81.Rotation = Vector3.new(90, -38.0900002, 32.2299995)
o81.Anchored = false
o81.CanCollide = false
o81.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o81.CFrame = CFrame.new(112.317879, 0.86769098, -60.0203476, 0.665761709, -0.419700056, -0.61693871, -0.521891773, 0.329002023, -0.787011266, 0.533282757, 0.845937133, -1.08515837e-06)
o81.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o81.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o81.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o81.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o81.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o81.Color = Color3.new(0.623529, 0.631373, 0.67451)
o81.Position = Vector3.new(112.317879, 0.86769098, -60.0203476)
o82.Parent = o81
o82.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o83.Name = "Joint"
o83.Parent = o81
o83.C0 = CFrame.new(-2.64445114, 0.949951172, -0.787437439, -0.665938556, -0.521891773, -0.533061862, 0.419419408, 0.329002023, -0.84607631, 0.616938651, -0.787011266, -0.000203562435)
o83.Part0 = o81
o83.Part1 = o2
o84.Name = "Chain"
o84.Parent = o1
o84.Material = Enum.Material.SmoothPlastic
o84.BrickColor = BrickColor.new("Fossil")
o84.Position = Vector3.new(112.370712, 0.82624799, -60.0384293)
o84.Rotation = Vector3.new(90, -38.0900002, 32.2299995)
o84.Anchored = false
o84.CanCollide = false
o84.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o84.CFrame = CFrame.new(112.370712, 0.82624799, -60.0384293, 0.665761709, -0.419700056, -0.61693871, -0.521891773, 0.329002023, -0.787011266, 0.533282757, 0.845937133, -1.08515837e-06)
o84.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o84.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o84.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o84.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o84.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o84.Color = Color3.new(0.623529, 0.631373, 0.67451)
o84.Position = Vector3.new(112.370712, 0.82624799, -60.0384293)
o85.Parent = o84
o85.Scale = Vector3.new(0.140866324, 0.565506876, 0.163323283)
o86.Name = "Joint"
o86.Parent = o84
o86.C0 = CFrame.new(-2.69161606, 1.00105286, -0.787460327, -0.665938556, -0.521891773, -0.533061862, 0.419419408, 0.329002023, -0.84607631, 0.616938651, -0.787011266, -0.000203562435)
o86.Part0 = o84
o86.Part1 = o2
o87.Name = "Chain"
o87.Parent = o1
o87.Material = Enum.Material.SmoothPlastic
o87.BrickColor = BrickColor.new("Fossil")
o87.Position = Vector3.new(112.314896, 0.92997098, -60.7635117)
o87.Rotation = Vector3.new(159.570007, 24.0100002, 132.479996)
o87.Anchored = false
o87.CanCollide = false
o87.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o87.CFrame = CFrame.new(112.314896, 0.92997098, -60.7635117, -0.61693728, -0.673685193, 0.406861961, -0.787012339, 0.528100371, -0.318938226, 0, -0.516970217, -0.856003463)
o87.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o87.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o87.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o87.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o87.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o87.Color = Color3.new(0.623529, 0.631373, 0.67451)
o87.Position = Vector3.new(112.314896, 0.92997098, -60.7635117)
o88.Parent = o87
o88.Scale = Vector3.new(0.140866324, 0.565506876, 0.163323283)
o89.Name = "Joint"
o89.Parent = o87
o89.C0 = CFrame.new(-0.740280151, 2.24308014, -1.51416016, 0.61693722, -0.787012339, -0.00020464712, 0.673856616, 0.528100371, 0.5167467, -0.406577975, -0.318938226, 0.856138349)
o89.Part0 = o87
o89.Part1 = o2
o90.Name = "Chain"
o90.Parent = o1
o90.Material = Enum.Material.SmoothPlastic
o90.BrickColor = BrickColor.new("Fossil")
o90.Position = Vector3.new(112.257187, 0.854418993, -60.7628021)
o90.Rotation = Vector3.new(159.570007, 24.0100002, 132.479996)
o90.Anchored = false
o90.CanCollide = false
o90.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o90.CFrame = CFrame.new(112.257187, 0.854418993, -60.7628021, -0.61693728, -0.673685193, 0.406861961, -0.787012339, 0.528100371, -0.318938226, 0, -0.516970217, -0.856003463)
o90.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o90.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o90.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o90.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o90.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o90.Color = Color3.new(0.623529, 0.631373, 0.67451)
o90.Position = Vector3.new(112.257187, 0.854418993, -60.7628021)
o91.Parent = o90
o91.Scale = Vector3.new(0.134741768, 0.577756166, 0.163323283)
o92.Name = "Joint"
o92.Parent = o90
o92.C0 = CFrame.new(-0.835334778, 2.24447632, -1.51416779, 0.61693722, -0.787012339, -0.00020464712, 0.673856616, 0.528100371, 0.5167467, -0.406577975, -0.318938226, 0.856138349)
o92.Part0 = o90
o92.Part1 = o2
o93.Name = "Chain"
o93.Parent = o1
o93.Material = Enum.Material.SmoothPlastic
o93.BrickColor = BrickColor.new("Fossil")
o93.Position = Vector3.new(112.35376, 0.839529991, -60.0927505)
o93.Rotation = Vector3.new(44.3800011, 41.7400017, 34.2299995)
o93.Anchored = false
o93.CanCollide = false
o93.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o93.CFrame = CFrame.new(112.35376, 0.839529991, -60.0927505, 0.61693728, -0.419700086, 0.665762961, 0.787012339, 0.329001963, -0.521890163, 0, 0.845937133, 0.533282697)
o93.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o93.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o93.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o93.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o93.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o93.Color = Color3.new(0.623529, 0.631373, 0.67451)
o93.Position = Vector3.new(112.35376, 0.839529991, -60.0927505)
o94.Parent = o93
o94.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o95.Name = "Joint"
o95.Parent = o93
o95.C0 = CFrame.new(0.787475586, 1.03552246, -2.64443588, -0.61693722, 0.787012339, 0.00020464712, 0.419419438, 0.329001963, -0.84607631, -0.665939808, -0.521890163, -0.533061802)
o95.Part0 = o93
o95.Part1 = o2
o96.Name = "Chain"
o96.Parent = o1
o96.Material = Enum.Material.SmoothPlastic
o96.BrickColor = BrickColor.new("Fossil")
o96.Position = Vector3.new(112.435074, 0.77579999, -60.5723343)
o96.Rotation = Vector3.new(90, -38.0900002, 171.5)
o96.Anchored = false
o96.CanCollide = false
o96.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o96.CFrame = CFrame.new(112.435074, 0.77579999, -60.5723343, -0.77837038, -0.11628738, -0.616941571, 0.610170305, 0.0911542997, -0.78700906, 0.14775607, -0.989023924, 3.29376485e-06)
o96.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o96.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o96.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o96.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o96.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o96.Color = Color3.new(0.623529, 0.631373, 0.67451)
o96.Position = Vector3.new(112.435074, 0.77579999, -60.5723343)
o97.Parent = o96
o97.Scale = Vector3.new(0.140866324, 0.565506876, 0.163323283)
o98.Name = "Joint"
o98.Parent = o96
o98.C0 = CFrame.new(2.85273743, 0.481449127, -0.787452698, 0.778321326, 0.610170305, -0.148014247, 0.116615444, 0.0911542997, 0.9889853, 0.616941512, -0.78700906, -0.000207942314)
o98.Part0 = o96
o98.Part1 = o2
o99.Name = "Chain"
o99.Parent = o1
o99.Material = Enum.Material.SmoothPlastic
o99.BrickColor = BrickColor.new("Fossil")
o99.Position = Vector3.new(112.405258, 0.799176991, -60.5065689)
o99.Rotation = Vector3.new(90, -38.0900002, 171.5)
o99.Anchored = false
o99.CanCollide = false
o99.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o99.CFrame = CFrame.new(112.405258, 0.799176991, -60.5065689, -0.77837038, -0.11628738, -0.616941571, 0.610170305, 0.0911542997, -0.78700906, 0.14775607, -0.989023924, 3.29376485e-06)
o99.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o99.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o99.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o99.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o99.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o99.Color = Color3.new(0.623529, 0.631373, 0.67451)
o99.Position = Vector3.new(112.405258, 0.799176991, -60.5065689)
o100.Parent = o99
o100.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o101.Name = "Joint"
o101.Parent = o99
o101.C0 = CFrame.new(2.80555725, 0.540893555, -0.787452698, 0.778321326, 0.610170305, -0.148014247, 0.116615444, 0.0911542997, 0.9889853, 0.616941512, -0.78700906, -0.000207942314)
o101.Part0 = o99
o101.Part1 = o2
o102.Name = "Chain"
o102.Parent = o1
o102.Material = Enum.Material.SmoothPlastic
o102.BrickColor = BrickColor.new("Fossil")
o102.Position = Vector3.new(112.268173, 0.906641006, -60.7770309)
o102.Rotation = Vector3.new(90, -38.0900002, 121.129997)
o102.Anchored = false
o102.CanCollide = false
o102.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o102.CFrame = CFrame.new(112.268173, 0.906641006, -60.7770309, -0.406859994, -0.673685372, -0.616938412, 0.318939, 0.528101265, -0.787011445, 0.856004, -0.516969204, 1.277553e-06)
o102.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o102.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o102.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o102.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o102.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o102.Color = Color3.new(0.623529, 0.631373, 0.67451)
o102.Position = Vector3.new(112.268173, 0.906641006, -60.7770309)
o103.Parent = o102
o103.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o104.Name = "Joint"
o104.Parent = o102
o104.C0 = CFrame.new(1.51417542, 2.21694183, -0.787452698, 0.406576008, 0.318939, -0.856138885, 0.673856795, 0.528101265, 0.516745687, 0.616938353, -0.787011445, -0.000205925055)
o104.Part0 = o102
o104.Part1 = o2
o105.Name = "Chain"
o105.Parent = o1
o105.Material = Enum.Material.SmoothPlastic
o105.BrickColor = BrickColor.new("Fossil")
o105.Position = Vector3.new(112.251343, 0.919830024, -60.7899399)
o105.Rotation = Vector3.new(159.570007, 24.0100002, 132.479996)
o105.Anchored = false
o105.CanCollide = false
o105.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o105.CFrame = CFrame.new(112.251343, 0.919830024, -60.7899399, -0.61693728, -0.673685193, 0.406861961, -0.787012339, 0.528100371, -0.318938226, 0, -0.516970217, -0.856003463)
o105.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o105.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o105.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o105.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o105.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o105.Color = Color3.new(0.623529, 0.631373, 0.67451)
o105.Position = Vector3.new(112.251343, 0.919830024, -60.7899399)
o106.Parent = o105
o106.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o107.Name = "Joint"
o107.Parent = o105
o107.C0 = CFrame.new(-0.787467957, 2.1919632, -1.51416016, 0.61693722, -0.787012339, -0.00020464712, 0.673856616, 0.528100371, 0.5167467, -0.406577975, -0.318938226, 0.856138349)
o107.Part0 = o105
o107.Part1 = o2
o108.Name = "Chain"
o108.Parent = o1
o108.Material = Enum.Material.SmoothPlastic
o108.BrickColor = BrickColor.new("Fossil")
o108.Position = Vector3.new(112.24733, 0.922985017, -60.8481522)
o108.Rotation = Vector3.new(90, -38.0900002, 121.129997)
o108.Anchored = false
o108.CanCollide = false
o108.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o108.CFrame = CFrame.new(112.24733, 0.922985017, -60.8481522, -0.406859994, -0.673685372, -0.616938412, 0.318939, 0.528101265, -0.787011445, 0.856004, -0.516969204, 1.277553e-06)
o108.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o108.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o108.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o108.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o108.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o108.Color = Color3.new(0.623529, 0.631373, 0.67451)
o108.Position = Vector3.new(112.24733, 0.922985017, -60.8481522)
o109.Parent = o108
o109.Scale = Vector3.new(0.140866324, 0.565506876, 0.163323283)
o110.Name = "Joint"
o110.Parent = o108
o110.C0 = CFrame.new(1.56135559, 2.15750885, -0.787452698, 0.406576008, 0.318939, -0.856138885, 0.673856795, 0.528101265, 0.516745687, 0.616938353, -0.787011445, -0.000205925055)
o110.Part0 = o108
o110.Part1 = o2
o111.Name = "Chain"
o111.Parent = o1
o111.Material = Enum.Material.SmoothPlastic
o111.BrickColor = BrickColor.new("Fossil")
o111.Position = Vector3.new(112.35376, 0.839529991, -60.6871262)
o111.Rotation = Vector3.new(135.619995, 41.7400017, 145.770004)
o111.Anchored = false
o111.CanCollide = false
o111.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o111.CFrame = CFrame.new(112.35376, 0.839529991, -60.6871262, -0.61693728, -0.419700086, 0.665762961, -0.787012339, 0.329001963, -0.521890163, 0, -0.845937133, -0.533282697)
o111.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o111.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o111.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o111.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o111.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o111.Color = Color3.new(0.623529, 0.631373, 0.67451)
o111.Position = Vector3.new(112.35376, 0.839529991, -60.6871262)
o112.Parent = o111
o112.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o113.Name = "Joint"
o113.Parent = o111
o113.C0 = CFrame.new(-0.787475586, 1.43658829, -2.39160156, 0.61693722, -0.787012339, -0.00020464712, 0.419980675, 0.329001963, 0.845797837, -0.665585995, -0.521890163, 0.533503473)
o113.Part0 = o111
o113.Part1 = o2
o114.Name = "Chain"
o114.Parent = o1
o114.Material = Enum.Material.SmoothPlastic
o114.BrickColor = BrickColor.new("Fossil")
o114.Position = Vector3.new(112.346268, 0.784572005, -60.6427231)
o114.Rotation = Vector3.new(135.619995, 41.7400017, 145.770004)
o114.Anchored = false
o114.CanCollide = false
o114.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o114.CFrame = CFrame.new(112.346268, 0.784572005, -60.6427231, -0.61693728, -0.419700086, 0.665762961, -0.787012339, 0.329001963, -0.521890163, 0, -0.845937133, -0.533282697)
o114.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o114.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o114.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o114.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o114.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o114.Color = Color3.new(0.623529, 0.631373, 0.67451)
o114.Position = Vector3.new(112.346268, 0.784572005, -60.6427231)
o115.Parent = o114
o115.Scale = Vector3.new(0.134741768, 0.577756166, 0.163323283)
o116.Name = "Joint"
o116.Parent = o114
o116.C0 = CFrame.new(-0.835350037, 1.48908615, -2.39160919, 0.61693722, -0.787012339, -0.00020464712, 0.419980675, 0.329001963, 0.845797837, -0.665585995, -0.521890163, 0.533503473)
o116.Part0 = o114
o116.Part1 = o2
o117.Name = "Chain"
o117.Parent = o1
o117.Material = Enum.Material.SmoothPlastic
o117.BrickColor = BrickColor.new("Fossil")
o117.Position = Vector3.new(112.346268, 0.784572005, -60.1371689)
o117.Rotation = Vector3.new(44.3800011, 41.7400017, 34.2299995)
o117.Anchored = false
o117.CanCollide = false
o117.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o117.CFrame = CFrame.new(112.346268, 0.784572005, -60.1371689, 0.61693728, -0.419700086, 0.665762961, 0.787012339, 0.329001963, -0.521890163, 0, 0.845937133, 0.533282697)
o117.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o117.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o117.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o117.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o117.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o117.Color = Color3.new(0.623529, 0.631373, 0.67451)
o117.Position = Vector3.new(112.346268, 0.784572005, -60.1371689)
o118.Parent = o117
o118.Scale = Vector3.new(0.134741768, 0.577756166, 0.163323283)
o119.Name = "Joint"
o119.Parent = o117
o119.C0 = CFrame.new(0.835350037, 1.08803558, -2.6444397, -0.61693722, 0.787012339, 0.00020464712, 0.419419438, 0.329001963, -0.84607631, -0.665939808, -0.521890163, -0.533061802)
o119.Part0 = o117
o119.Part1 = o2
o120.Name = "Chain"
o120.Parent = o1
o120.Material = Enum.Material.SmoothPlastic
o120.BrickColor = BrickColor.new("Fossil")
o120.Position = Vector3.new(112.400162, 0.803156972, -60.593605)
o120.Rotation = Vector3.new(135.619995, 41.7400017, 145.770004)
o120.Anchored = false
o120.CanCollide = false
o120.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o120.CFrame = CFrame.new(112.400162, 0.803156972, -60.593605, -0.61693728, -0.419700086, 0.665762961, -0.787012339, 0.329001963, -0.521890163, 0, -0.845937133, -0.533282697)
o120.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o120.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o120.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o120.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o120.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o120.Color = Color3.new(0.623529, 0.631373, 0.67451)
o120.Position = Vector3.new(112.400162, 0.803156972, -60.593605)
o121.Parent = o120
o121.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o122.Name = "Joint"
o122.Parent = o120
o122.C0 = CFrame.new(-0.787475586, 1.54714203, -2.39160156, 0.61693722, -0.787012339, -0.00020464712, 0.419980675, 0.329001963, 0.845797837, -0.665585995, -0.521890163, 0.533503473)
o122.Part0 = o120
o122.Part1 = o2
o123.Name = "Chain"
o123.Parent = o1
o123.Material = Enum.Material.SmoothPlastic
o123.BrickColor = BrickColor.new("Fossil")
o123.Position = Vector3.new(112.308029, 0.875400007, -60.6895828)
o123.Rotation = Vector3.new(90, -38.0900002, 147.770004)
o123.Anchored = false
o123.CanCollide = false
o123.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o123.CFrame = CFrame.new(112.308029, 0.875400007, -60.6895828, -0.665761709, -0.419700056, -0.61693871, 0.521891773, 0.329002023, -0.787011266, 0.533282757, -0.845937133, 1.08515837e-06)
o123.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o123.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o123.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o123.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o123.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o123.Color = Color3.new(0.623529, 0.631373, 0.67451)
o123.Position = Vector3.new(112.308029, 0.875400007, -60.6895828)
o124.Parent = o123
o124.Scale = Vector3.new(0.134741768, 0.577756166, 0.163323283)
o125.Name = "Joint"
o125.Parent = o123
o125.C0 = CFrame.new(2.34374237, 1.40351486, -0.787452698, 0.665584743, 0.521891773, -0.533503532, 0.419980645, 0.329002023, 0.845797837, 0.616938651, -0.787011266, -0.000205732766)
o125.Part0 = o123
o125.Part1 = o2
o126.Name = "Chain"
o126.Parent = o1
o126.Material = Enum.Material.SmoothPlastic
o126.BrickColor = BrickColor.new("Fossil")
o126.Position = Vector3.new(111.914551, 1.18384898, -60.8204117)
o126.Rotation = Vector3.new(90, -38.0900002, 90)
o126.Anchored = false
o126.CanCollide = false
o126.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o126.CFrame = CFrame.new(111.914551, 1.18384898, -60.8204117, 0, -0.787012339, -0.61693728, 0, 0.61693728, -0.787012339, 1, 0, 0)
o126.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o126.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o126.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o126.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o126.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o126.Color = Color3.new(0.623529, 0.631373, 0.67451)
o126.Position = Vector3.new(111.914551, 1.18384898, -60.8204117)
o127.Parent = o126
o127.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o128.Name = "Joint"
o128.Parent = o126
o128.C0 = CFrame.new(0.19342041, 2.23116302, -0.787460327, -0.000331714633, -1.09697344e-22, -0.99999994, 0.787012279, 0.61693728, -0.000261063513, 0.61693722, -0.787012339, -0.00020464712)
o128.Part0 = o126
o128.Part1 = o2
o129.Name = "Chain"
o129.Parent = o1
o129.Material = Enum.Material.SmoothPlastic
o129.BrickColor = BrickColor.new("Fossil")
o129.Position = Vector3.new(112.404327, 0.859848976, -60.1359901)
o129.Rotation = Vector3.new(44.3800011, 41.7400017, 34.2299995)
o129.Anchored = false
o129.CanCollide = false
o129.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o129.CFrame = CFrame.new(112.404327, 0.859848976, -60.1359901, 0.61693728, -0.419700086, 0.665762961, 0.787012339, 0.329001963, -0.521890163, 0, 0.845937133, 0.533282697)
o129.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o129.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o129.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o129.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o129.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o129.Color = Color3.new(0.623529, 0.631373, 0.67451)
o129.Position = Vector3.new(112.404327, 0.859848976, -60.1359901)
o130.Parent = o129
o130.Scale = Vector3.new(0.140866324, 0.565506876, 0.163323283)
o131.Name = "Joint"
o131.Parent = o129
o131.C0 = CFrame.new(0.740287781, 1.0866394, -2.6444397, -0.61693722, 0.787012339, 0.00020464712, 0.419419438, 0.329001963, -0.84607631, -0.665939808, -0.521890163, -0.533061802)
o131.Part0 = o129
o131.Part1 = o2
o132.Name = "Chain"
o132.Parent = o1
o132.Material = Enum.Material.SmoothPlastic
o132.BrickColor = BrickColor.new("Fossil")
o132.Position = Vector3.new(111.954773, 1.15231502, -60.8676071)
o132.Rotation = Vector3.new(90, -38.0900002, 90)
o132.Anchored = false
o132.CanCollide = false
o132.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o132.CFrame = CFrame.new(111.954773, 1.15231502, -60.8676071, 0, -0.787012339, -0.61693728, 0, 0.61693728, -0.787012339, 1, 0, 0)
o132.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o132.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o132.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o132.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o132.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o132.Color = Color3.new(0.623529, 0.631373, 0.67451)
o132.Position = Vector3.new(111.954773, 1.15231502, -60.8676071)
o133.Parent = o132
o133.Scale = Vector3.new(0.140866324, 0.565506876, 0.163323283)
o134.Name = "Joint"
o134.Parent = o132
o134.C0 = CFrame.new(0.240615845, 2.28227234, -0.787460327, -0.000331714633, -1.09697344e-22, -0.99999994, 0.787012279, 0.61693728, -0.000261063513, 0.61693722, -0.787012339, -0.00020464712)
o134.Part0 = o132
o134.Part1 = o2
o135.Name = "Chain"
o135.Parent = o1
o135.Material = Enum.Material.SmoothPlastic
o135.BrickColor = BrickColor.new("Fossil")
o135.Position = Vector3.new(112.308029, 0.875400007, -60.0902939)
o135.Rotation = Vector3.new(90, -38.0900002, 32.2299995)
o135.Anchored = false
o135.CanCollide = false
o135.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o135.CFrame = CFrame.new(112.308029, 0.875400007, -60.0902939, 0.665761709, -0.419700056, -0.61693871, -0.521891773, 0.329002023, -0.787011266, 0.533282757, 0.845937133, -1.08515837e-06)
o135.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o135.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o135.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o135.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o135.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o135.Color = Color3.new(0.623529, 0.631373, 0.67451)
o135.Position = Vector3.new(112.308029, 0.875400007, -60.0902939)
o136.Parent = o135
o136.Scale = Vector3.new(0.134741768, 0.577756166, 0.163323283)
o137.Name = "Joint"
o137.Parent = o135
o137.C0 = CFrame.new(-2.59657669, 1.00244141, -0.787452698, -0.665938556, -0.521891773, -0.533061862, 0.419419408, 0.329002023, -0.84607631, 0.616938651, -0.787011266, -0.000203562435)
o137.Part0 = o135
o137.Part1 = o2
o138.Name = "Chain"
o138.Parent = o1
o138.Material = Enum.Material.SmoothPlastic
o138.BrickColor = BrickColor.new("Fossil")
o138.Position = Vector3.new(112.361237, 0.833685994, -60.5569229)
o138.Rotation = Vector3.new(90, -38.0900002, 171.5)
o138.Anchored = false
o138.CanCollide = false
o138.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o138.CFrame = CFrame.new(112.361237, 0.833685994, -60.5569229, -0.77837038, -0.11628738, -0.616941571, 0.610170305, 0.0911542997, -0.78700906, 0.14775607, -0.989023924, 3.29376485e-06)
o138.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o138.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o138.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o138.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o138.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o138.Color = Color3.new(0.623529, 0.631373, 0.67451)
o138.Position = Vector3.new(112.361237, 0.833685994, -60.5569229)
o139.Parent = o138
o139.Scale = Vector3.new(0.134741768, 0.577756166, 0.163323283)
o140.Name = "Joint"
o140.Parent = o138
o140.C0 = CFrame.new(2.75767517, 0.482826233, -0.787445068, 0.778321326, 0.610170305, -0.148014247, 0.116615444, 0.0911542997, 0.9889853, 0.616941512, -0.78700906, -0.000207942314)
o140.Part0 = o138
o140.Part1 = o2
o141.Name = "Chain"
o141.Parent = o1
o141.Material = Enum.Material.SmoothPlastic
o141.BrickColor = BrickColor.new("Fossil")
o141.Position = Vector3.new(112.193703, 0.965031981, -60.8341904)
o141.Rotation = Vector3.new(90, -38.0900002, 121.129997)
o141.Anchored = false
o141.CanCollide = false
o141.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o141.CFrame = CFrame.new(112.193703, 0.965031981, -60.8341904, -0.406859994, -0.673685372, -0.616938412, 0.318939, 0.528101265, -0.787011445, 0.856004, -0.516969204, 1.277553e-06)
o141.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o141.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o141.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o141.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o141.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o141.Color = Color3.new(0.623529, 0.631373, 0.67451)
o141.Position = Vector3.new(112.193703, 0.965031981, -60.8341904)
o142.Parent = o141
o142.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o143.Name = "Joint"
o143.Parent = o141
o143.C0 = CFrame.new(1.51417542, 2.10639191, -0.787445068, 0.406576008, 0.318939, -0.856138885, 0.673856795, 0.528101265, 0.516745687, 0.616938353, -0.787011445, -0.000205925055)
o143.Part0 = o141
o143.Part1 = o2
o144.Name = "Chain"
o144.Parent = o1
o144.Material = Enum.Material.SmoothPlastic
o144.BrickColor = BrickColor.new("Fossil")
o144.Position = Vector3.new(112.400162, 0.803156972, -60.1862717)
o144.Rotation = Vector3.new(44.3800011, 41.7400017, 34.2299995)
o144.Anchored = false
o144.CanCollide = false
o144.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o144.CFrame = CFrame.new(112.400162, 0.803156972, -60.1862717, 0.61693728, -0.419700086, 0.665762961, 0.787012339, 0.329001963, -0.521890163, 0, 0.845937133, 0.533282697)
o144.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o144.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o144.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o144.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o144.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o144.Color = Color3.new(0.623529, 0.631373, 0.67451)
o144.Position = Vector3.new(112.400162, 0.803156972, -60.1862717)
o145.Parent = o144
o145.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o146.Name = "Joint"
o146.Parent = o144
o146.C0 = CFrame.new(0.787475586, 1.14608002, -2.64443588, -0.61693722, 0.787012339, 0.00020464712, 0.419419438, 0.329001963, -0.84607631, -0.665939808, -0.521890163, -0.533061802)
o146.Part0 = o144
o146.Part1 = o2
o147.Name = "Chain"
o147.Parent = o1
o147.Material = Enum.Material.SmoothPlastic
o147.BrickColor = BrickColor.new("Fossil")
o147.Position = Vector3.new(112.209579, 0.952573001, -60.7660599)
o147.Rotation = Vector3.new(90, -38.0900002, 121.129997)
o147.Anchored = false
o147.CanCollide = false
o147.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o147.CFrame = CFrame.new(112.209579, 0.952573001, -60.7660599, -0.406859994, -0.673685372, -0.616938412, 0.318939, 0.528101265, -0.787011445, 0.856004, -0.516969204, 1.277553e-06)
o147.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o147.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o147.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o147.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o147.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o147.Color = Color3.new(0.623529, 0.631373, 0.67451)
o147.Position = Vector3.new(112.209579, 0.952573001, -60.7660599)
o148.Parent = o147
o148.Scale = Vector3.new(0.134741768, 0.577756166, 0.163323283)
o149.Name = "Joint"
o149.Parent = o147
o149.C0 = CFrame.new(1.46629333, 2.15889359, -0.787452698, 0.406576008, 0.318939, -0.856138885, 0.673856795, 0.528101265, 0.516745687, 0.616938353, -0.787011445, -0.000205925055)
o149.Part0 = o147
o149.Part1 = o2
o150.Name = "Chain"
o150.Parent = o1
o150.Material = Enum.Material.SmoothPlastic
o150.BrickColor = BrickColor.new("Fossil")
o150.Position = Vector3.new(111.993683, 1.060974, -59.959465)
o150.Rotation = Vector3.new(0, 0, 51.9099998)
o150.Anchored = false
o150.CanCollide = false
o150.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o150.CFrame = CFrame.new(111.993683, 1.060974, -59.959465, 0.61693728, -0.787012339, 0, 0.787012339, 0.61693728, 0, 0, 0, 1)
o150.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o150.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o150.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o150.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o150.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o150.Color = Color3.new(0.623529, 0.631373, 0.67451)
o150.Position = Vector3.new(111.993683, 1.060974, -59.959465)
o151.Parent = o150
o151.Scale = Vector3.new(0.134741768, 0.577756166, 0.163323283)
o152.Name = "Joint"
o152.Parent = o150
o152.C0 = CFrame.new(0.835342407, 2.36924744, -0.667526245, -0.61693722, 0.787012339, 0.00020464712, 0.787012279, 0.61693728, -0.000261063513, -0.000331714633, -1.09697344e-22, -0.99999994)
o152.Part0 = o150
o152.Part1 = o2
o153.Name = "Chain"
o153.Parent = o1
o153.Material = Enum.Material.SmoothPlastic
o153.BrickColor = BrickColor.new("Fossil")
o153.Position = Vector3.new(112.364258, 0.831314027, -60.113884)
o153.Rotation = Vector3.new(90, -38.0900002, 32.2299995)
o153.Anchored = false
o153.CanCollide = false
o153.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o153.CFrame = CFrame.new(112.364258, 0.831314027, -60.113884, 0.665761709, -0.419700056, -0.61693871, -0.521891773, 0.329002023, -0.787011266, 0.533282757, 0.845937133, -1.08515837e-06)
o153.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o153.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o153.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o153.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o153.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o153.Color = Color3.new(0.623529, 0.631373, 0.67451)
o153.Position = Vector3.new(112.364258, 0.831314027, -60.113884)
o154.Parent = o153
o154.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o155.Name = "Joint"
o155.Parent = o153
o155.C0 = CFrame.new(-2.64444351, 1.06050873, -0.787460327, -0.665938556, -0.521891773, -0.533061862, 0.419419408, 0.329002023, -0.84607631, 0.616938651, -0.787011266, -0.000203562435)
o155.Part0 = o153
o155.Part1 = o2
o156.Name = "Chain"
o156.Parent = o1
o156.Material = Enum.Material.SmoothPlastic
o156.BrickColor = BrickColor.new("Fossil")
o156.Position = Vector3.new(112.051231, 1.13664401, -59.959465)
o156.Rotation = Vector3.new(0, 0, 51.9099998)
o156.Anchored = false
o156.CanCollide = false
o156.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o156.CFrame = CFrame.new(112.051231, 1.13664401, -59.959465, 0.61693728, -0.787012339, 0, 0.787012339, 0.61693728, 0, 0, 0, 1)
o156.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o156.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o156.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o156.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o156.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o156.Color = Color3.new(0.623529, 0.631373, 0.67451)
o156.Position = Vector3.new(112.051231, 1.13664401, -59.959465)
o157.Parent = o156
o157.Scale = Vector3.new(0.140866324, 0.565506876, 0.163323283)
o158.Name = "Joint"
o158.Parent = o156
o158.C0 = CFrame.new(0.740287781, 2.36785126, -0.667526245, -0.61693722, 0.787012339, 0.00020464712, 0.787012279, 0.61693728, -0.000261063513, -0.000331714633, -1.09697344e-22, -0.99999994)
o158.Part0 = o156
o158.Part1 = o2
o159.Name = "Chain"
o159.Parent = o1
o159.Material = Enum.Material.SmoothPlastic
o159.BrickColor = BrickColor.new("Fossil")
o159.Position = Vector3.new(111.955872, 1.15145397, -60.0073471)
o159.Rotation = Vector3.new(90, -38.0900002, 90)
o159.Anchored = false
o159.CanCollide = false
o159.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o159.CFrame = CFrame.new(111.955872, 1.15145397, -60.0073471, 0, -0.787012339, -0.61693728, 0, 0.61693728, -0.787012339, 1, 0, 0)
o159.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o159.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o159.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o159.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o159.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o159.Color = Color3.new(0.623529, 0.631373, 0.67451)
o159.Position = Vector3.new(111.955872, 1.15145397, -60.0073471)
o160.Parent = o159
o160.Scale = Vector3.new(0.134741768, 0.577756166, 0.163323283)
o161.Name = "Joint"
o161.Parent = o159
o161.C0 = CFrame.new(-0.619644165, 2.28366852, -0.787460327, -0.000331714633, -1.09697344e-22, -0.99999994, 0.787012279, 0.61693728, -0.000261063513, 0.61693722, -0.787012339, -0.00020464712)
o161.Part0 = o159
o161.Part1 = o2
o162.Name = "Chain"
o162.Parent = o1
o162.Material = Enum.Material.SmoothPlastic
o162.BrickColor = BrickColor.new("Fossil")
o162.Position = Vector3.new(111.981911, 1.13104796, -59.959465)
o162.Rotation = Vector3.new(0, 0, 51.9099998)
o162.Anchored = false
o162.CanCollide = false
o162.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o162.CFrame = CFrame.new(111.981911, 1.13104796, -59.959465, 0.61693728, -0.787012339, 0, 0.787012339, 0.61693728, 0, 0, 0, 1)
o162.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o162.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o162.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o162.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o162.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o162.Color = Color3.new(0.623529, 0.631373, 0.67451)
o162.Position = Vector3.new(111.981911, 1.13104796, -59.959465)
o163.Parent = o162
o163.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o164.Name = "Joint"
o164.Parent = o162
o164.C0 = CFrame.new(0.787452698, 2.31674957, -0.667526245, -0.61693722, 0.787012339, 0.00020464712, 0.787012279, 0.61693728, -0.000261063513, -0.000331714633, -1.09697344e-22, -0.99999994)
o164.Part0 = o162
o164.Part1 = o2
o165.Name = "Chain"
o165.Parent = o1
o165.Material = Enum.Material.SmoothPlastic
o165.BrickColor = BrickColor.new("Fossil")
o165.Position = Vector3.new(112.068916, 1.06284106, -59.959465)
o165.Rotation = Vector3.new(0, 0, 51.9099998)
o165.Anchored = false
o165.CanCollide = false
o165.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o165.CFrame = CFrame.new(112.068916, 1.06284106, -59.959465, 0.61693728, -0.787012339, 0, 0.787012339, 0.61693728, 0, 0, 0, 1)
o165.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o165.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o165.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o165.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o165.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o165.Color = Color3.new(0.623529, 0.631373, 0.67451)
o165.Position = Vector3.new(112.068916, 1.06284106, -59.959465)
o166.Parent = o165
o166.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o167.Name = "Joint"
o167.Parent = o165
o167.C0 = CFrame.new(0.787452698, 2.42730713, -0.667526245, -0.61693722, 0.787012339, 0.00020464712, 0.787012279, 0.61693728, -0.000261063513, -0.000331714633, -1.09697344e-22, -0.99999994)
o167.Part0 = o165
o167.Part1 = o2
o168.Name = "Chain"
o168.Parent = o1
o168.Material = Enum.Material.SmoothPlastic
o168.BrickColor = BrickColor.new("Fossil")
o168.Position = Vector3.new(112.188507, 1.02904105, -60.8204117)
o168.Rotation = Vector3.new(-180, 0, 128.089996)
o168.Anchored = false
o168.CanCollide = false
o168.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o168.CFrame = CFrame.new(112.188507, 1.02904105, -60.8204117, -0.61693728, -0.787012339, 0, -0.787012339, 0.61693728, 0, 0, 0, -1)
o168.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o168.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o168.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o168.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o168.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o168.Color = Color3.new(0.623529, 0.631373, 0.67451)
o168.Position = Vector3.new(112.188507, 1.02904105, -60.8204117)
o169.Parent = o168
o169.Scale = Vector3.new(0.140866324, 0.565506876, 0.163323283)
o170.Name = "Joint"
o170.Parent = o168
o170.C0 = CFrame.new(-0.740280151, 2.54227448, -0.19342041, 0.61693722, -0.787012339, -0.00020464712, 0.787012279, 0.61693728, -0.000261063513, 0.000331714633, 1.09697344e-22, 0.99999994)
o170.Part0 = o168
o170.Part1 = o2
o171.Name = "Chain"
o171.Parent = o1
o171.Material = Enum.Material.SmoothPlastic
o171.BrickColor = BrickColor.new("Fossil")
o171.Position = Vector3.new(111.955872, 1.15145397, -60.7725449)
o171.Rotation = Vector3.new(90, -38.0900002, 90)
o171.Anchored = false
o171.CanCollide = false
o171.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o171.CFrame = CFrame.new(111.955872, 1.15145397, -60.7725449, 0, -0.787012339, -0.61693728, 0, 0.61693728, -0.787012339, 1, 0, 0)
o171.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o171.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o171.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o171.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o171.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o171.Color = Color3.new(0.623529, 0.631373, 0.67451)
o171.Position = Vector3.new(111.955872, 1.15145397, -60.7725449)
o172.Parent = o171
o172.Scale = Vector3.new(0.134741768, 0.577756166, 0.163323283)
o173.Name = "Joint"
o173.Parent = o171
o173.C0 = CFrame.new(0.145553589, 2.28366852, -0.787460327, -0.000331714633, -1.09697344e-22, -0.99999994, 0.787012279, 0.61693728, -0.000261063513, 0.61693722, -0.787012339, -0.00020464712)
o173.Part0 = o171
o173.Part1 = o2
o174.Name = "Chain"
o174.Parent = o1
o174.Material = Enum.Material.SmoothPlastic
o174.BrickColor = BrickColor.new("Fossil")
o174.Position = Vector3.new(112.414261, 0.792107999, -60.426033)
o174.Rotation = Vector3.new(91.75, 51.8899994, -1.37)
o174.Anchored = false
o174.CanCollide = false
o174.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o174.CFrame = CFrame.new(112.414261, 0.792107999, -60.426033, 0.61693728, 0.0147895953, 0.786873341, 0.787012339, -0.0115935318, -0.616828322, 0, 0.999823451, -0.0187920742)
o174.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o174.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o174.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o174.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o174.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o174.Color = Color3.new(0.623529, 0.631373, 0.67451)
o174.Position = Vector3.new(112.414261, 0.792107999, -60.426033)
o175.Parent = o174
o175.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o176.Name = "Joint"
o176.Parent = o174
o176.C0 = CFrame.new(0.787475586, -0.25478363, -2.86184692, -0.61693722, 0.787012339, 0.00020464712, -0.0151212504, -0.0115935318, -0.999818504, -0.786867023, -0.616828322, 0.0190530904)
o176.Part0 = o174
o176.Part1 = o2
o177.Name = "Chain"
o177.Parent = o1
o177.Material = Enum.Material.SmoothPlastic
o177.BrickColor = BrickColor.new("Fossil")
o177.Position = Vector3.new(112.412636, 0.793392003, -60.5365677)
o177.Rotation = Vector3.new(91.75, 51.8899994, -1.37)
o177.Anchored = false
o177.CanCollide = false
o177.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o177.CFrame = CFrame.new(112.412636, 0.793392003, -60.5365677, 0.61693728, 0.0147895953, 0.786873341, 0.787012339, -0.0115935318, -0.616828322, 0, 0.999823451, -0.0187920742)
o177.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o177.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o177.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o177.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o177.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o177.Color = Color3.new(0.623529, 0.631373, 0.67451)
o177.Position = Vector3.new(112.412636, 0.793392003, -60.5365677)
o178.Parent = o177
o178.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o179.Name = "Joint"
o179.Parent = o177
o179.C0 = CFrame.new(0.787460327, -0.144229889, -2.86185455, -0.61693722, 0.787012339, 0.00020464712, -0.0151212504, -0.0115935318, -0.999818504, -0.786867023, -0.616828322, 0.0190530904)
o179.Part0 = o177
o179.Part1 = o2
o180.Name = "Chain"
o180.Parent = o1
o180.Material = Enum.Material.SmoothPlastic
o180.BrickColor = BrickColor.new("Fossil")
o180.Position = Vector3.new(112.383942, 0.75503099, -60.4785461)
o180.Rotation = Vector3.new(91.75, 51.8899994, -1.37)
o180.Anchored = false
o180.CanCollide = false
o180.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o180.CFrame = CFrame.new(112.383942, 0.75503099, -60.4785461, 0.61693728, 0.0147895953, 0.786873341, 0.787012339, -0.0115935318, -0.616828322, 0, 0.999823451, -0.0187920742)
o180.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o180.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o180.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o180.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o180.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o180.Color = Color3.new(0.623529, 0.631373, 0.67451)
o180.Position = Vector3.new(112.383942, 0.75503099, -60.4785461)
o181.Parent = o180
o181.Scale = Vector3.new(0.134741768, 0.577756166, 0.163323283)
o182.Name = "Joint"
o182.Parent = o180
o182.C0 = CFrame.new(0.835357666, -0.202259064, -2.86185455, -0.61693722, 0.787012339, 0.00020464712, -0.0151212504, -0.0115935318, -0.999818504, -0.786867023, -0.616828322, 0.0190530904)
o182.Part0 = o180
o182.Part1 = o2
o183.Name = "Chain"
o183.Parent = o1
o183.Material = Enum.Material.SmoothPlastic
o183.BrickColor = BrickColor.new("Fossil")
o183.Position = Vector3.new(111.914551, 1.18384898, -59.959465)
o183.Rotation = Vector3.new(90, -38.0900002, 90)
o183.Anchored = false
o183.CanCollide = false
o183.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o183.CFrame = CFrame.new(111.914551, 1.18384898, -59.959465, 0, -0.787012339, -0.61693728, 0, 0.61693728, -0.787012339, 1, 0, 0)
o183.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o183.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o183.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o183.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o183.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o183.Color = Color3.new(0.623529, 0.631373, 0.67451)
o183.Position = Vector3.new(111.914551, 1.18384898, -59.959465)
o184.Parent = o183
o184.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o185.Name = "Joint"
o185.Parent = o183
o185.C0 = CFrame.new(-0.667526245, 2.23116302, -0.787460327, -0.000331714633, -1.09697344e-22, -0.99999994, 0.787012279, 0.61693728, -0.000261063513, 0.61693722, -0.787012339, -0.00020464712)
o185.Part0 = o183
o185.Part1 = o2
o186.Name = "Chain"
o186.Parent = o1
o186.Material = Enum.Material.SmoothPlastic
o186.BrickColor = BrickColor.new("Fossil")
o186.Position = Vector3.new(111.954773, 1.15231502, -59.9122849)
o186.Rotation = Vector3.new(90, -38.0900002, 90)
o186.Anchored = false
o186.CanCollide = false
o186.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o186.CFrame = CFrame.new(111.954773, 1.15231502, -59.9122849, 0, -0.787012339, -0.61693728, 0, 0.61693728, -0.787012339, 1, 0, 0)
o186.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o186.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o186.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o186.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o186.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o186.Color = Color3.new(0.623529, 0.631373, 0.67451)
o186.Position = Vector3.new(111.954773, 1.15231502, -59.9122849)
o187.Parent = o186
o187.Scale = Vector3.new(0.140866324, 0.565506876, 0.163323283)
o188.Name = "Joint"
o188.Parent = o186
o188.C0 = CFrame.new(-0.714706421, 2.28227234, -0.787460327, -0.000331714633, -1.09697344e-22, -0.99999994, 0.787012279, 0.61693728, -0.000261063513, 0.61693722, -0.787012339, -0.00020464712)
o188.Part0 = o186
o188.Part1 = o2
o189.Name = "Chain"
o189.Parent = o1
o189.Material = Enum.Material.SmoothPlastic
o189.BrickColor = BrickColor.new("Fossil")
o189.Position = Vector3.new(112.451904, 0.762605011, -60.3924637)
o189.Rotation = Vector3.new(90, -38.0900002, -1.08000004)
o189.Anchored = false
o189.CanCollide = false
o189.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o189.CFrame = CFrame.new(112.451904, 0.762605011, -60.3924637, 0.786872864, 0.0147904325, -0.616937935, -0.616828918, -0.0115923388, -0.787011862, -0.0187919978, 0.999823451, 1.47029846e-06)
o189.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o189.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o189.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o189.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o189.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o189.Color = Color3.new(0.623529, 0.631373, 0.67451)
o189.Position = Vector3.new(112.451904, 0.762605011, -60.3924637)
o190.Parent = o189
o190.Scale = Vector3.new(0.140866324, 0.565506876, 0.163323283)
o191.Name = "Joint"
o191.Parent = o189
o191.C0 = CFrame.new(-2.9090271, -0.289245605, -0.787460327, -0.786866546, -0.616828918, 0.019053014, -0.0151220877, -0.0115923388, -0.999818504, 0.616937876, -0.787011862, -0.000206117635)
o191.Part0 = o189
o191.Part1 = o2
o192.Name = "Chain"
o192.Parent = o1
o192.Material = Enum.Material.SmoothPlastic
o192.BrickColor = BrickColor.new("Fossil")
o192.Position = Vector3.new(112.442612, 0.829834998, -60.4771347)
o192.Rotation = Vector3.new(91.75, 51.8899994, -1.37)
o192.Anchored = false
o192.CanCollide = false
o192.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o192.CFrame = CFrame.new(112.442612, 0.829834998, -60.4771347, 0.61693728, 0.0147895953, 0.786873341, 0.787012339, -0.0115935318, -0.616828322, 0, 0.999823451, -0.0187920742)
o192.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o192.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o192.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o192.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o192.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o192.Color = Color3.new(0.623529, 0.631373, 0.67451)
o192.Position = Vector3.new(112.442612, 0.829834998, -60.4771347)
o193.Parent = o192
o193.Scale = Vector3.new(0.140866324, 0.565506876, 0.163323283)
o194.Name = "Joint"
o194.Parent = o192
o194.C0 = CFrame.new(0.740287781, -0.203670502, -2.86184692, -0.61693722, 0.787012339, 0.00020464712, -0.0151212504, -0.0115935318, -0.999818504, -0.786867023, -0.616828322, 0.0190530904)
o194.Part0 = o192
o194.Part1 = o2
o195.Name = "Chain"
o195.Parent = o1
o195.Material = Enum.Material.SmoothPlastic
o195.BrickColor = BrickColor.new("Fossil")
o195.Position = Vector3.new(112.361237, 0.833685994, -60.2229691)
o195.Rotation = Vector3.new(90, -38.0900002, 8.5)
o195.Anchored = false
o195.CanCollide = false
o195.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o195.CFrame = CFrame.new(112.361237, 0.833685994, -60.2229691, 0.77837038, -0.116286881, -0.61694169, -0.610170305, 0.0911549106, -0.787008941, 0.14775607, 0.989023864, -2.52004043e-06)
o195.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o195.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o195.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o195.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o195.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o195.Color = Color3.new(0.623529, 0.631373, 0.67451)
o195.Position = Vector3.new(112.361237, 0.833685994, -60.2229691)
o196.Parent = o195
o196.Scale = Vector3.new(0.134741768, 0.577756166, 0.163323283)
o197.Name = "Joint"
o197.Parent = o195
o197.C0 = CFrame.new(-2.82772827, 0.0139389038, -0.787445068, -0.778419316, -0.610170305, -0.147497863, 0.115958802, 0.0911549106, -0.989062369, 0.616941631, -0.787008941, -0.000202128547)
o197.Part0 = o195
o197.Part1 = o2
o198.Name = "Chain"
o198.Parent = o1
o198.Material = Enum.Material.SmoothPlastic
o198.BrickColor = BrickColor.new("Fossil")
o198.Position = Vector3.new(112.413895, 0.792400002, -60.4509964)
o198.Rotation = Vector3.new(90, -38.0900002, -1.08000004)
o198.Anchored = false
o198.CanCollide = false
o198.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o198.CFrame = CFrame.new(112.413895, 0.792400002, -60.4509964, 0.786872864, 0.0147904325, -0.616937935, -0.616828918, -0.0115923388, -0.787011862, -0.0187919978, 0.999823451, 1.47029846e-06)
o198.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o198.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o198.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o198.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o198.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o198.Color = Color3.new(0.623529, 0.631373, 0.67451)
o198.Position = Vector3.new(112.413895, 0.792400002, -60.4509964)
o199.Parent = o198
o199.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o200.Name = "Joint"
o200.Parent = o198
o200.C0 = CFrame.new(-2.86183929, -0.229816437, -0.787467957, -0.786866546, -0.616828918, 0.019053014, -0.0151220877, -0.0115923388, -0.999818504, 0.616937876, -0.787011862, -0.000206117635)
o200.Part0 = o198
o200.Part1 = o2
o201.Name = "Chain"
o201.Parent = o1
o201.Material = Enum.Material.SmoothPlastic
o201.BrickColor = BrickColor.new("Fossil")
o201.Position = Vector3.new(112.437393, 0.833926976, -60.2991714)
o201.Rotation = Vector3.new(76.3899994, 51.1100006, 10.6700001)
o201.Anchored = false
o201.CanCollide = false
o201.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o201.CFrame = CFrame.new(112.437393, 0.833926976, -60.2991714, 0.61693728, -0.116285205, 0.778374016, 0.787012339, 0.0911557302, -0.610165715, 0, 0.989023983, 0.147755265)
o201.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o201.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o201.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o201.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o201.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o201.Color = Color3.new(0.623529, 0.631373, 0.67451)
o201.Position = Vector3.new(112.437393, 0.833926976, -60.2991714)
o202.Parent = o201
o202.Scale = Vector3.new(0.140866324, 0.565506876, 0.163323283)
o203.Name = "Joint"
o203.Parent = o201
o203.C0 = CFrame.new(0.740287781, 0.0981445313, -2.87558746, -0.61693722, 0.787012339, 0.00020464712, 0.115957126, 0.0911557302, -0.989062488, -0.778422952, -0.610165715, -0.147497058)
o203.Part0 = o201
o203.Part1 = o2
o204.Name = "Chain"
o204.Parent = o1
o204.Material = Enum.Material.SmoothPlastic
o204.BrickColor = BrickColor.new("Fossil")
o204.Position = Vector3.new(112.377075, 0.821255982, -60.3920517)
o204.Rotation = Vector3.new(90, -38.0900002, -1.08000004)
o204.Anchored = false
o204.CanCollide = false
o204.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o204.CFrame = CFrame.new(112.377075, 0.821255982, -60.3920517, 0.786872864, 0.0147904325, -0.616937935, -0.616828918, -0.0115923388, -0.787011862, -0.0187919978, 0.999823451, 1.47029846e-06)
o204.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o204.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o204.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o204.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o204.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o204.Color = Color3.new(0.623529, 0.631373, 0.67451)
o204.Position = Vector3.new(112.377075, 0.821255982, -60.3920517)
o205.Parent = o204
o205.Scale = Vector3.new(0.134741768, 0.577756166, 0.163323283)
o206.Name = "Joint"
o206.Parent = o204
o206.C0 = CFrame.new(-2.81395721, -0.2878685, -0.787467957, -0.786866546, -0.616828918, 0.019053014, -0.0151220877, -0.0115923388, -0.999818504, 0.616937876, -0.787011862, -0.000206117635)
o206.Part0 = o204
o206.Part1 = o2
o207.Name = "Chain"
o207.Parent = o1
o207.Material = Enum.Material.SmoothPlastic
o207.BrickColor = BrickColor.new("Fossil")
o207.Position = Vector3.new(112.001556, 1.11563599, -59.959465)
o207.Rotation = Vector3.new(90, -38.0900002, 90)
o207.Anchored = false
o207.CanCollide = false
o207.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o207.CFrame = CFrame.new(112.001556, 1.11563599, -59.959465, 0, -0.787012339, -0.61693728, 0, 0.61693728, -0.787012339, 1, 0, 0)
o207.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o207.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o207.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o207.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o207.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o207.Color = Color3.new(0.623529, 0.631373, 0.67451)
o207.Position = Vector3.new(112.001556, 1.11563599, -59.959465)
o208.Parent = o207
o208.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o209.Name = "Joint"
o209.Parent = o207
o209.C0 = CFrame.new(-0.667526245, 2.34172058, -0.787460327, -0.000331714633, -1.09697344e-22, -0.99999994, 0.787012279, 0.61693728, -0.000261063513, 0.61693722, -0.787012339, -0.00020464712)
o209.Part0 = o207
o209.Part1 = o2
o210.Name = "Chain"
o210.Parent = o1
o210.Material = Enum.Material.SmoothPlastic
o210.BrickColor = BrickColor.new("Fossil")
o210.Position = Vector3.new(112.415527, 0.791115999, -60.3404465)
o210.Rotation = Vector3.new(90, -38.0900002, -1.08000004)
o210.Anchored = false
o210.CanCollide = false
o210.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o210.CFrame = CFrame.new(112.415527, 0.791115999, -60.3404465, 0.786872864, 0.0147904325, -0.616937935, -0.616828918, -0.0115923388, -0.787011862, -0.0187919978, 0.999823451, 1.47029846e-06)
o210.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o210.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o210.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o210.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o210.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o210.Color = Color3.new(0.623529, 0.631373, 0.67451)
o210.Position = Vector3.new(112.415527, 0.791115999, -60.3404465)
o211.Parent = o210
o211.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o212.Name = "Joint"
o212.Parent = o210
o212.C0 = CFrame.new(-2.86183929, -0.340385437, -0.787467957, -0.786866546, -0.616828918, 0.019053014, -0.0151220877, -0.0115923388, -0.999818504, 0.616937876, -0.787011862, -0.000206117635)
o212.Part0 = o210
o212.Part1 = o2
o213.Name = "Chain"
o213.Parent = o1
o213.Material = Enum.Material.SmoothPlastic
o213.BrickColor = BrickColor.new("Fossil")
o213.Position = Vector3.new(112.415199, 0.791372001, -60.3579636)
o213.Rotation = Vector3.new(76.3899994, 51.1100006, 10.6700001)
o213.Anchored = false
o213.CanCollide = false
o213.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o213.CFrame = CFrame.new(112.415199, 0.791372001, -60.3579636, 0.61693728, -0.116285205, 0.778374016, 0.787012339, 0.0911557302, -0.610165715, 0, 0.989023983, 0.147755265)
o213.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o213.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o213.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o213.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o213.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o213.Color = Color3.new(0.623529, 0.631373, 0.67451)
o213.Position = Vector3.new(112.415199, 0.791372001, -60.3579636)
o214.Parent = o213
o214.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o215.Name = "Joint"
o215.Parent = o213
o215.C0 = CFrame.new(0.787475586, 0.157585144, -2.87559509, -0.61693722, 0.787012339, 0.00020464712, 0.115957126, 0.0911557302, -0.989062488, -0.778422952, -0.610165715, -0.147497058)
o215.Part0 = o213
o215.Part1 = o2
o216.Name = "Chain"
o216.Parent = o1
o216.Material = Enum.Material.SmoothPlastic
o216.BrickColor = BrickColor.new("Fossil")
o216.Position = Vector3.new(112.378922, 0.758983016, -60.3005447)
o216.Rotation = Vector3.new(76.3899994, 51.1100006, 10.6700001)
o216.Anchored = false
o216.CanCollide = false
o216.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o216.CFrame = CFrame.new(112.378922, 0.758983016, -60.3005447, 0.61693728, -0.116285205, 0.778374016, 0.787012339, 0.0911557302, -0.610165715, 0, 0.989023983, 0.147755265)
o216.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o216.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o216.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o216.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o216.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o216.Color = Color3.new(0.623529, 0.631373, 0.67451)
o216.Position = Vector3.new(112.378922, 0.758983016, -60.3005447)
o217.Parent = o216
o217.Scale = Vector3.new(0.134741768, 0.577756166, 0.163323283)
o218.Name = "Joint"
o218.Parent = o216
o218.C0 = CFrame.new(0.835342407, 0.0995330811, -2.87560272, -0.61693722, 0.787012339, 0.00020464712, 0.115957126, 0.0911557302, -0.989062488, -0.778422952, -0.610165715, -0.147497058)
o218.Part0 = o216
o218.Part1 = o2
o219.Name = "Chain"
o219.Parent = o1
o219.Material = Enum.Material.SmoothPlastic
o219.BrickColor = BrickColor.new("Fossil")
o219.Position = Vector3.new(112.193703, 0.965031981, -59.9456863)
o219.Rotation = Vector3.new(90, -38.0900002, 58.8699989)
o219.Anchored = false
o219.CanCollide = false
o219.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o219.CFrame = CFrame.new(112.193703, 0.965031981, -59.9456863, 0.406860143, -0.673685551, -0.616938114, -0.318938106, 0.528101444, -0.787011683, 0.856004298, 0.516968727, -5.57944077e-07)
o219.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o219.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o219.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o219.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o219.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o219.Color = Color3.new(0.623529, 0.631373, 0.67451)
o219.Position = Vector3.new(112.193703, 0.965031981, -59.9456863)
o220.Parent = o219
o220.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o221.Name = "Joint"
o221.Parent = o219
o221.C0 = CFrame.new(-1.9200058, 1.86128998, -0.787445068, -0.40714407, -0.318938106, -0.855869293, 0.673514009, 0.528101444, -0.517192125, 0.616938055, -0.787011683, -0.000204089447)
o221.Part0 = o219
o221.Part1 = o2
o222.Name = "Chain"
o222.Parent = o1
o222.Material = Enum.Material.SmoothPlastic
o222.BrickColor = BrickColor.new("Fossil")
o222.Position = Vector3.new(112.268173, 0.906641006, -60.002861)
o222.Rotation = Vector3.new(90, -38.0900002, 58.8699989)
o222.Anchored = false
o222.CanCollide = false
o222.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o222.CFrame = CFrame.new(112.268173, 0.906641006, -60.002861, 0.406860143, -0.673685551, -0.616938114, -0.318938106, 0.528101444, -0.787011683, 0.856004298, 0.516968727, -5.57944077e-07)
o222.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o222.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o222.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o222.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o222.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o222.Color = Color3.new(0.623529, 0.631373, 0.67451)
o222.Position = Vector3.new(112.268173, 0.906641006, -60.002861)
o223.Parent = o222
o223.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o224.Name = "Joint"
o224.Parent = o222
o224.C0 = CFrame.new(-1.91999054, 1.97185516, -0.787452698, -0.40714407, -0.318938106, -0.855869293, 0.673514009, 0.528101444, -0.517192125, 0.616938055, -0.787011683, -0.000204089447)
o224.Part0 = o222
o224.Part1 = o2
o225.Name = "Chain"
o225.Parent = o1
o225.Material = Enum.Material.SmoothPlastic
o225.BrickColor = BrickColor.new("Fossil")
o225.Position = Vector3.new(112.209579, 0.952573001, -60.0138321)
o225.Rotation = Vector3.new(90, -38.0900002, 58.8699989)
o225.Anchored = false
o225.CanCollide = false
o225.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o225.CFrame = CFrame.new(112.209579, 0.952573001, -60.0138321, 0.406860143, -0.673685551, -0.616938114, -0.318938106, 0.528101444, -0.787011683, 0.856004298, 0.516968727, -5.57944077e-07)
o225.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o225.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o225.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o225.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o225.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o225.Color = Color3.new(0.623529, 0.631373, 0.67451)
o225.Position = Vector3.new(112.209579, 0.952573001, -60.0138321)
o226.Parent = o225
o226.Scale = Vector3.new(0.134741768, 0.577756166, 0.163323283)
o227.Name = "Joint"
o227.Parent = o225
o227.C0 = CFrame.new(-1.87211227, 1.9138031, -0.787452698, -0.40714407, -0.318938106, -0.855869293, 0.673514009, 0.528101444, -0.517192125, 0.616938055, -0.787011683, -0.000204089447)
o227.Part0 = o225
o227.Part1 = o2
o228.Name = "Chain"
o228.Parent = o1
o228.Material = Enum.Material.SmoothPlastic
o228.BrickColor = BrickColor.new("Fossil")
o228.Position = Vector3.new(112.251343, 0.919830024, -59.9899368)
o228.Rotation = Vector3.new(20.4300003, 24.0100002, 47.5200005)
o228.Anchored = false
o228.CanCollide = false
o228.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o228.CFrame = CFrame.new(112.251343, 0.919830024, -59.9899368, 0.61693728, -0.673685372, 0.406861722, 0.787012339, 0.52810055, -0.318938047, 0, 0.516969979, 0.856003523)
o228.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o228.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o228.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o228.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o228.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o228.Color = Color3.new(0.623529, 0.631373, 0.67451)
o228.Position = Vector3.new(112.251343, 0.919830024, -59.9899368)
o229.Parent = o228
o229.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o230.Name = "Joint"
o230.Parent = o228
o230.C0 = CFrame.new(0.787467957, 1.9468689, -1.92000198, -0.61693722, 0.787012339, 0.00020464712, 0.67351383, 0.52810055, -0.517193377, -0.407145649, -0.318938047, -0.855868518)
o230.Part0 = o228
o230.Part1 = o2
o231.Name = "Chain"
o231.Parent = o1
o231.Material = Enum.Material.SmoothPlastic
o231.BrickColor = BrickColor.new("Fossil")
o231.Position = Vector3.new(112.24733, 0.922985017, -59.9317245)
o231.Rotation = Vector3.new(90, -38.0900002, 58.8699989)
o231.Anchored = false
o231.CanCollide = false
o231.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o231.CFrame = CFrame.new(112.24733, 0.922985017, -59.9317245, 0.406860143, -0.673685551, -0.616938114, -0.318938106, 0.528101444, -0.787011683, 0.856004298, 0.516968727, -5.57944077e-07)
o231.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o231.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o231.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o231.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o231.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o231.Color = Color3.new(0.623529, 0.631373, 0.67451)
o231.Position = Vector3.new(112.24733, 0.922985017, -59.9317245)
o232.Parent = o231
o232.Scale = Vector3.new(0.140866324, 0.565506876, 0.163323283)
o233.Name = "Joint"
o233.Parent = o231
o233.C0 = CFrame.new(-1.96718597, 1.91241455, -0.787445068, -0.40714407, -0.318938106, -0.855869293, 0.673514009, 0.528101444, -0.517192125, 0.616938055, -0.787011683, -0.000204089447)
o233.Part0 = o231
o233.Part1 = o2
o234.Name = "Chain"
o234.Parent = o1
o234.Material = Enum.Material.SmoothPlastic
o234.BrickColor = BrickColor.new("Fossil")
o234.Position = Vector3.new(112.325844, 0.861442029, -60.0471115)
o234.Rotation = Vector3.new(20.4300003, 24.0100002, 47.5200005)
o234.Anchored = false
o234.CanCollide = false
o234.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o234.CFrame = CFrame.new(112.325844, 0.861442029, -60.0471115, 0.61693728, -0.673685372, 0.406861722, 0.787012339, 0.52810055, -0.318938047, 0, 0.516969979, 0.856003523)
o234.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o234.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o234.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o234.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o234.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o234.Color = Color3.new(0.623529, 0.631373, 0.67451)
o234.Position = Vector3.new(112.325844, 0.861442029, -60.0471115)
o235.Parent = o234
o235.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o236.Name = "Joint"
o236.Parent = o234
o236.C0 = CFrame.new(0.787452698, 2.05745697, -1.91999435, -0.61693722, 0.787012339, 0.00020464712, 0.67351383, 0.52810055, -0.517193377, -0.407145649, -0.318938047, -0.855868518)
o236.Part0 = o234
o236.Part1 = o2
o237.Name = "Chain"
o237.Parent = o1
o237.Material = Enum.Material.SmoothPlastic
o237.BrickColor = BrickColor.new("Fossil")
o237.Position = Vector3.new(112.314896, 0.92997098, -60.0163651)
o237.Rotation = Vector3.new(20.4300003, 24.0100002, 47.5200005)
o237.Anchored = false
o237.CanCollide = false
o237.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o237.CFrame = CFrame.new(112.314896, 0.92997098, -60.0163651, 0.61693728, -0.673685372, 0.406861722, 0.787012339, 0.52810055, -0.318938047, 0, 0.516969979, 0.856003523)
o237.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o237.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o237.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o237.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o237.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o237.Color = Color3.new(0.623529, 0.631373, 0.67451)
o237.Position = Vector3.new(112.314896, 0.92997098, -60.0163651)
o238.Parent = o237
o238.Scale = Vector3.new(0.140866324, 0.565506876, 0.163323283)
o239.Name = "Joint"
o239.Parent = o237
o239.C0 = CFrame.new(0.740280151, 1.99798584, -1.91999817, -0.61693722, 0.787012339, 0.00020464712, 0.67351383, 0.52810055, -0.517193377, -0.407145649, -0.318938047, -0.855868518)
o239.Part0 = o237
o239.Part1 = o2
o240.Name = "Chain"
o240.Parent = o1
o240.Material = Enum.Material.SmoothPlastic
o240.BrickColor = BrickColor.new("Fossil")
o240.Position = Vector3.new(112.257187, 0.854418993, -60.0170822)
o240.Rotation = Vector3.new(20.4300003, 24.0100002, 47.5200005)
o240.Anchored = false
o240.CanCollide = false
o240.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o240.CFrame = CFrame.new(112.257187, 0.854418993, -60.0170822, 0.61693728, -0.673685372, 0.406861722, 0.787012339, 0.52810055, -0.318938047, 0, 0.516969979, 0.856003523)
o240.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o240.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o240.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o240.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o240.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o240.Color = Color3.new(0.623529, 0.631373, 0.67451)
o240.Position = Vector3.new(112.257187, 0.854418993, -60.0170822)
o241.Parent = o240
o241.Scale = Vector3.new(0.134741768, 0.577756166, 0.163323283)
o242.Name = "Joint"
o242.Parent = o240
o242.C0 = CFrame.new(0.835334778, 1.99938202, -1.9200058, -0.61693722, 0.787012339, 0.00020464712, 0.67351383, 0.52810055, -0.517193377, -0.407145649, -0.318938047, -0.855868518)
o242.Part0 = o240
o242.Part1 = o2
o243.Name = "Chain"
o243.Parent = o1
o243.Material = Enum.Material.SmoothPlastic
o243.BrickColor = BrickColor.new("Fossil")
o243.Position = Vector3.new(112.051231, 1.13664401, -60.8204117)
o243.Rotation = Vector3.new(-180, 0, 128.089996)
o243.Anchored = false
o243.CanCollide = false
o243.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o243.CFrame = CFrame.new(112.051231, 1.13664401, -60.8204117, -0.61693728, -0.787012339, 0, -0.787012339, 0.61693728, 0, 0, 0, -1)
o243.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o243.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o243.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o243.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o243.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o243.Color = Color3.new(0.623529, 0.631373, 0.67451)
o243.Position = Vector3.new(112.051231, 1.13664401, -60.8204117)
o244.Parent = o243
o244.Scale = Vector3.new(0.140866324, 0.565506876, 0.163323283)
o245.Name = "Joint"
o245.Parent = o243
o245.C0 = CFrame.new(-0.740287781, 2.36785126, -0.19342041, 0.61693722, -0.787012339, -0.00020464712, 0.787012279, 0.61693728, -0.000261063513, 0.000331714633, 1.09697344e-22, 0.99999994)
o245.Part0 = o243
o245.Part1 = o2
o246.Name = "Chain"
o246.Parent = o1
o246.Material = Enum.Material.SmoothPlastic
o246.BrickColor = BrickColor.new("Fossil")
o246.Position = Vector3.new(112.206192, 0.955232024, -60.8204117)
o246.Rotation = Vector3.new(-180, 0, 128.089996)
o246.Anchored = false
o246.CanCollide = false
o246.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o246.CFrame = CFrame.new(112.206192, 0.955232024, -60.8204117, -0.61693728, -0.787012339, 0, -0.787012339, 0.61693728, 0, 0, 0, -1)
o246.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o246.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o246.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o246.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o246.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o246.Color = Color3.new(0.623529, 0.631373, 0.67451)
o246.Position = Vector3.new(112.206192, 0.955232024, -60.8204117)
o247.Parent = o246
o247.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o248.Name = "Joint"
o248.Parent = o246
o248.C0 = CFrame.new(-0.787460327, 2.60173035, -0.19342041, 0.61693722, -0.787012339, -0.00020464712, 0.787012279, 0.61693728, -0.000261063513, 0.000331714633, 1.09697344e-22, 0.99999994)
o248.Part0 = o246
o248.Part1 = o2
o249.Name = "Chain"
o249.Parent = o1
o249.Material = Enum.Material.SmoothPlastic
o249.BrickColor = BrickColor.new("Fossil")
o249.Position = Vector3.new(112.13884, 1.00803494, -60.8204117)
o249.Rotation = Vector3.new(90, -38.0900002, 90)
o249.Anchored = false
o249.CanCollide = false
o249.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o249.CFrame = CFrame.new(112.13884, 1.00803494, -60.8204117, 0, -0.787012339, -0.61693728, 0, 0.61693728, -0.787012339, 1, 0, 0)
o249.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o249.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o249.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o249.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o249.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o249.Color = Color3.new(0.623529, 0.631373, 0.67451)
o249.Position = Vector3.new(112.13884, 1.00803494, -60.8204117)
o250.Parent = o249
o250.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o251.Name = "Joint"
o251.Parent = o249
o251.C0 = CFrame.new(0.19342041, 2.51615143, -0.787452698, -0.000331714633, -1.09697344e-22, -0.99999994, 0.787012279, 0.61693728, -0.000261063513, 0.61693722, -0.787012339, -0.00020464712)
o251.Part0 = o249
o251.Part1 = o2
o252.Name = "Chain"
o252.Parent = o1
o252.Material = Enum.Material.SmoothPlastic
o252.BrickColor = BrickColor.new("Fossil")
o252.Position = Vector3.new(112.392395, 0.80925101, -60.6159286)
o252.Rotation = Vector3.new(90, -38.0900002, 171.5)
o252.Anchored = false
o252.CanCollide = false
o252.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o252.CFrame = CFrame.new(112.392395, 0.80925101, -60.6159286, -0.77837038, -0.11628738, -0.616941571, 0.610170305, 0.0911542997, -0.78700906, 0.14775607, -0.989023924, 3.29376485e-06)
o252.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o252.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o252.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o252.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o252.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o252.Color = Color3.new(0.623529, 0.631373, 0.67451)
o252.Position = Vector3.new(112.392395, 0.80925101, -60.6159286)
o253.Parent = o252
o253.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o254.Name = "Joint"
o254.Parent = o252
o254.C0 = CFrame.new(2.80554962, 0.43032074, -0.787460327, 0.778321326, 0.610170305, -0.148014247, 0.116615444, 0.0911542997, 0.9889853, 0.616941512, -0.78700906, -0.000207942314)
o254.Part0 = o252
o254.Part1 = o2
o255.Name = "Chain"
o255.Parent = o1
o255.Material = Enum.Material.SmoothPlastic
o255.BrickColor = BrickColor.new("Fossil")
o255.Position = Vector3.new(111.993683, 1.060974, -60.8204117)
o255.Rotation = Vector3.new(-180, 0, 128.089996)
o255.Anchored = false
o255.CanCollide = false
o255.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o255.CFrame = CFrame.new(111.993683, 1.060974, -60.8204117, -0.61693728, -0.787012339, 0, -0.787012339, 0.61693728, 0, 0, 0, -1)
o255.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o255.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o255.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o255.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o255.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o255.Color = Color3.new(0.623529, 0.631373, 0.67451)
o255.Position = Vector3.new(111.993683, 1.060974, -60.8204117)
o256.Parent = o255
o256.Scale = Vector3.new(0.134741768, 0.577756166, 0.163323283)
o257.Name = "Joint"
o257.Parent = o255
o257.C0 = CFrame.new(-0.835342407, 2.36924744, -0.19342041, 0.61693722, -0.787012339, -0.00020464712, 0.787012279, 0.61693728, -0.000261063513, 0.000331714633, 1.09697344e-22, 0.99999994)
o257.Part0 = o255
o257.Part1 = o2
o258.Name = "Chain"
o258.Parent = o1
o258.Material = Enum.Material.SmoothPlastic
o258.BrickColor = BrickColor.new("Fossil")
o258.Position = Vector3.new(112.09314, 1.04384899, -60.7725449)
o258.Rotation = Vector3.new(90, -38.0900002, 90)
o258.Anchored = false
o258.CanCollide = false
o258.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o258.CFrame = CFrame.new(112.09314, 1.04384899, -60.7725449, 0, -0.787012339, -0.61693728, 0, 0.61693728, -0.787012339, 1, 0, 0)
o258.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o258.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o258.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o258.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o258.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o258.Color = Color3.new(0.623529, 0.631373, 0.67451)
o258.Position = Vector3.new(112.09314, 1.04384899, -60.7725449)
o259.Parent = o258
o259.Scale = Vector3.new(0.134741768, 0.577756166, 0.163323283)
o260.Name = "Joint"
o260.Parent = o258
o260.C0 = CFrame.new(0.145553589, 2.45808411, -0.787460327, -0.000331714633, -1.09697344e-22, -0.99999994, 0.787012279, 0.61693728, -0.000261063513, 0.61693722, -0.787012339, -0.00020464712)
o260.Part0 = o258
o260.Part1 = o2
o261.Name = "Chain"
o261.Parent = o1
o261.Material = Enum.Material.SmoothPlastic
o261.BrickColor = BrickColor.new("Fossil")
o261.Position = Vector3.new(112.068916, 1.06284106, -60.8204117)
o261.Rotation = Vector3.new(-180, 0, 128.089996)
o261.Anchored = false
o261.CanCollide = false
o261.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o261.CFrame = CFrame.new(112.068916, 1.06284106, -60.8204117, -0.61693728, -0.787012339, 0, -0.787012339, 0.61693728, 0, 0, 0, -1)
o261.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o261.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o261.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o261.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o261.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o261.Color = Color3.new(0.623529, 0.631373, 0.67451)
o261.Position = Vector3.new(112.068916, 1.06284106, -60.8204117)
o262.Parent = o261
o262.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o263.Name = "Joint"
o263.Parent = o261
o263.C0 = CFrame.new(-0.787452698, 2.42730713, -0.19342041, 0.61693722, -0.787012339, -0.00020464712, 0.787012279, 0.61693728, -0.000261063513, 0.000331714633, 1.09697344e-22, 0.99999994)
o263.Part0 = o261
o263.Part1 = o2
o264.Name = "Chain"
o264.Parent = o1
o264.Material = Enum.Material.SmoothPlastic
o264.BrickColor = BrickColor.new("Fossil")
o264.Position = Vector3.new(112.051819, 1.07623994, -60.8204117)
o264.Rotation = Vector3.new(90, -38.0900002, 90)
o264.Anchored = false
o264.CanCollide = false
o264.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o264.CFrame = CFrame.new(112.051819, 1.07623994, -60.8204117, 0, -0.787012339, -0.61693728, 0, 0.61693728, -0.787012339, 1, 0, 0)
o264.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o264.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o264.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o264.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o264.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o264.Color = Color3.new(0.623529, 0.631373, 0.67451)
o264.Position = Vector3.new(112.051819, 1.07623994, -60.8204117)
o265.Parent = o264
o265.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o266.Name = "Joint"
o266.Parent = o264
o266.C0 = CFrame.new(0.19342041, 2.40558624, -0.787460327, -0.000331714633, -1.09697344e-22, -0.99999994, 0.787012279, 0.61693728, -0.000261063513, 0.61693722, -0.787012339, -0.00020464712)
o266.Part0 = o264
o266.Part1 = o2
o267.Name = "Chain"
o267.Parent = o1
o267.Material = Enum.Material.SmoothPlastic
o267.BrickColor = BrickColor.new("Fossil")
o267.Position = Vector3.new(112.130943, 0.953365028, -60.8204117)
o267.Rotation = Vector3.new(-180, 0, 128.089996)
o267.Anchored = false
o267.CanCollide = false
o267.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o267.CFrame = CFrame.new(112.130943, 0.953365028, -60.8204117, -0.61693728, -0.787012339, 0, -0.787012339, 0.61693728, 0, 0, 0, -1)
o267.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o267.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o267.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o267.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o267.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o267.Color = Color3.new(0.623529, 0.631373, 0.67451)
o267.Position = Vector3.new(112.130943, 0.953365028, -60.8204117)
o268.Parent = o267
o268.Scale = Vector3.new(0.134741768, 0.577756166, 0.163323283)
o269.Name = "Joint"
o269.Parent = o267
o269.C0 = CFrame.new(-0.835350037, 2.54366302, -0.19342041, 0.61693722, -0.787012339, -0.00020464712, 0.787012279, 0.61693728, -0.000261063513, 0.000331714633, 1.09697344e-22, 0.99999994)
o269.Part0 = o267
o269.Part1 = o2
o270.Name = "Chain"
o270.Parent = o1
o270.Material = Enum.Material.SmoothPlastic
o270.BrickColor = BrickColor.new("Fossil")
o270.Position = Vector3.new(112.119171, 1.02344501, -60.8204117)
o270.Rotation = Vector3.new(-180, 0, 128.089996)
o270.Anchored = false
o270.CanCollide = false
o270.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o270.CFrame = CFrame.new(112.119171, 1.02344501, -60.8204117, -0.61693728, -0.787012339, 0, -0.787012339, 0.61693728, 0, 0, 0, -1)
o270.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o270.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o270.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o270.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o270.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o270.Color = Color3.new(0.623529, 0.631373, 0.67451)
o270.Position = Vector3.new(112.119171, 1.02344501, -60.8204117)
o271.Parent = o270
o271.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o272.Name = "Joint"
o272.Parent = o270
o272.C0 = CFrame.new(-0.787460327, 2.49116516, -0.19342041, 0.61693722, -0.787012339, -0.00020464712, 0.787012279, 0.61693728, -0.000261063513, 0.000331714633, 1.09697344e-22, 0.99999994)
o272.Part0 = o270
o272.Part1 = o2
o273.Name = "Chain"
o273.Parent = o1
o273.Material = Enum.Material.SmoothPlastic
o273.BrickColor = BrickColor.new("Fossil")
o273.Position = Vector3.new(112.092041, 1.04470801, -60.8676071)
o273.Rotation = Vector3.new(90, -38.0900002, 90)
o273.Anchored = false
o273.CanCollide = false
o273.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o273.CFrame = CFrame.new(112.092041, 1.04470801, -60.8676071, 0, -0.787012339, -0.61693728, 0, 0.61693728, -0.787012339, 1, 0, 0)
o273.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o273.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o273.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o273.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o273.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o273.Color = Color3.new(0.623529, 0.631373, 0.67451)
o273.Position = Vector3.new(112.092041, 1.04470801, -60.8676071)
o274.Parent = o273
o274.Scale = Vector3.new(0.140866324, 0.565506876, 0.163323283)
o275.Name = "Joint"
o275.Parent = o273
o275.C0 = CFrame.new(0.240615845, 2.45669556, -0.787467957, -0.000331714633, -1.09697344e-22, -0.99999994, 0.787012279, 0.61693728, -0.000261063513, 0.61693722, -0.787012339, -0.00020464712)
o275.Part0 = o273
o275.Part1 = o2
o276.Name = "Chain"
o276.Parent = o1
o276.Material = Enum.Material.SmoothPlastic
o276.BrickColor = BrickColor.new("Fossil")
o276.Position = Vector3.new(112.092041, 1.04470801, -59.9122849)
o276.Rotation = Vector3.new(90, -38.0900002, 90)
o276.Anchored = false
o276.CanCollide = false
o276.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o276.CFrame = CFrame.new(112.092041, 1.04470801, -59.9122849, 0, -0.787012339, -0.61693728, 0, 0.61693728, -0.787012339, 1, 0, 0)
o276.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o276.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o276.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o276.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o276.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o276.Color = Color3.new(0.623529, 0.631373, 0.67451)
o276.Position = Vector3.new(112.092041, 1.04470801, -59.9122849)
o277.Parent = o276
o277.Scale = Vector3.new(0.140866324, 0.565506876, 0.163323283)
o278.Name = "Joint"
o278.Parent = o276
o278.C0 = CFrame.new(-0.714706421, 2.45669556, -0.787467957, -0.000331714633, -1.09697344e-22, -0.99999994, 0.787012279, 0.61693728, -0.000261063513, 0.61693722, -0.787012339, -0.00020464712)
o278.Part0 = o276
o278.Part1 = o2
o279.Name = "Chain"
o279.Parent = o1
o279.Material = Enum.Material.SmoothPlastic
o279.BrickColor = BrickColor.new("Fossil")
o279.Position = Vector3.new(112.13884, 1.00803494, -59.959465)
o279.Rotation = Vector3.new(90, -38.0900002, 90)
o279.Anchored = false
o279.CanCollide = false
o279.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o279.CFrame = CFrame.new(112.13884, 1.00803494, -59.959465, 0, -0.787012339, -0.61693728, 0, 0.61693728, -0.787012339, 1, 0, 0)
o279.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o279.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o279.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o279.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o279.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o279.Color = Color3.new(0.623529, 0.631373, 0.67451)
o279.Position = Vector3.new(112.13884, 1.00803494, -59.959465)
o280.Parent = o279
o280.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o281.Name = "Joint"
o281.Parent = o279
o281.C0 = CFrame.new(-0.667526245, 2.51615143, -0.787452698, -0.000331714633, -1.09697344e-22, -0.99999994, 0.787012279, 0.61693728, -0.000261063513, 0.61693722, -0.787012339, -0.00020464712)
o281.Part0 = o279
o281.Part1 = o2
o282.Name = "Chain"
o282.Parent = o1
o282.Material = Enum.Material.SmoothPlastic
o282.BrickColor = BrickColor.new("Fossil")
o282.Position = Vector3.new(112.206192, 0.955232024, -59.959465)
o282.Rotation = Vector3.new(0, 0, 51.9099998)
o282.Anchored = false
o282.CanCollide = false
o282.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o282.CFrame = CFrame.new(112.206192, 0.955232024, -59.959465, 0.61693728, -0.787012339, 0, 0.787012339, 0.61693728, 0, 0, 0, 1)
o282.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o282.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o282.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o282.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o282.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o282.Color = Color3.new(0.623529, 0.631373, 0.67451)
o282.Position = Vector3.new(112.206192, 0.955232024, -59.959465)
o283.Parent = o282
o283.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o284.Name = "Joint"
o284.Parent = o282
o284.C0 = CFrame.new(0.787460327, 2.60173035, -0.667526245, -0.61693722, 0.787012339, 0.00020464712, 0.787012279, 0.61693728, -0.000261063513, -0.000331714633, -1.09697344e-22, -0.99999994)
o284.Part0 = o282
o284.Part1 = o2
o285.Name = "Chain"
o285.Parent = o1
o285.Material = Enum.Material.SmoothPlastic
o285.BrickColor = BrickColor.new("Fossil")
o285.Position = Vector3.new(112.051819, 1.07623994, -59.959465)
o285.Rotation = Vector3.new(90, -38.0900002, 90)
o285.Anchored = false
o285.CanCollide = false
o285.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o285.CFrame = CFrame.new(112.051819, 1.07623994, -59.959465, 0, -0.787012339, -0.61693728, 0, 0.61693728, -0.787012339, 1, 0, 0)
o285.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o285.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o285.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o285.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o285.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o285.Color = Color3.new(0.623529, 0.631373, 0.67451)
o285.Position = Vector3.new(112.051819, 1.07623994, -59.959465)
o286.Parent = o285
o286.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o287.Name = "Joint"
o287.Parent = o285
o287.C0 = CFrame.new(-0.667526245, 2.40558624, -0.787460327, -0.000331714633, -1.09697344e-22, -0.99999994, 0.787012279, 0.61693728, -0.000261063513, 0.61693722, -0.787012339, -0.00020464712)
o287.Part0 = o285
o287.Part1 = o2
o288.Parent = o1
o288.Material = Enum.Material.SmoothPlastic
o288.BrickColor = BrickColor.new("Really black")
o288.Position = Vector3.new(110.767624, 1.33557701, -61.5026474)
o288.Rotation = Vector3.new(-6.51999998, 67.3399963, 27.2399998)
o288.Anchored = false
o288.FormFactor = Enum.FormFactor.Custom
o288.Size = Vector3.new(0.439999998, 2.30000019, 0.50999999)
o288.CFrame = CFrame.new(110.767624, 1.33557701, -61.5026474, 0.342526913, -0.176364899, 0.922805905, 0.36163792, 0.931291401, 0.0437539183, -0.867117822, 0.318734735, 0.382772595)
o288.BottomSurface = Enum.SurfaceType.Smooth
o288.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o288.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o288.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o288.TopSurface = Enum.SurfaceType.Smooth
o288.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o288.Position = Vector3.new(110.767624, 1.33557701, -61.5026474)
o289.Name = "Joint"
o289.Parent = o288
o289.C0 = CFrame.new(-0.13445282, 2.01859665, 0.302177429, -0.342239261, 0.36163792, 0.867231369, 0.17625916, 0.931291401, -0.318793207, -0.922932804, 0.0437539183, -0.382466465)
o289.Part0 = o288
o289.Part1 = o2
o290.Parent = o1
o290.Material = Enum.Material.SmoothPlastic
o290.BrickColor = BrickColor.new("Really black")
o290.Position = Vector3.new(111.109833, 1.33193398, -61.3866272)
o290.Rotation = Vector3.new(-25.4300003, 60.0800018, 49.1500015)
o290.Anchored = false
o290.FormFactor = Enum.FormFactor.Custom
o290.Size = Vector3.new(0.439999998, 2.30000019, 0.50999999)
o290.CFrame = CFrame.new(111.109833, 1.33193398, -61.3866272, 0.326244086, -0.37726596, 0.86673826, 0.43970111, 0.872238874, 0.21415481, -0.836796165, 0.311239034, 0.450447053)
o290.BottomSurface = Enum.SurfaceType.Smooth
o290.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o290.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o290.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o290.TopSurface = Enum.SurfaceType.Smooth
o290.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o290.Position = Vector3.new(111.109833, 1.33193398, -61.3866272)
o291.Name = "Joint"
o291.Parent = o290
o291.C0 = CFrame.new(0.0251312256, 2.02403259, 0.33455658, -0.325966477, 0.43970111, 0.836904347, 0.377162695, 0.872238874, -0.311364144, -0.866887629, 0.21415481, -0.45015952)
o291.Part0 = o290
o291.Part1 = o2
o292.Parent = o1
o292.Material = Enum.Material.SmoothPlastic
o292.BrickColor = BrickColor.new("Really black")
o292.Position = Vector3.new(111.424225, 1.30797601, -61.2596359)
o292.Rotation = Vector3.new(-33.0400009, 53.5200005, 60.7000008)
o292.Anchored = false
o292.FormFactor = Enum.FormFactor.Custom
o292.Size = Vector3.new(0.439999998, 2.30000019, 0.50999999)
o292.CFrame = CFrame.new(111.424225, 1.30797601, -61.2596359, 0.290921897, -0.518504918, 0.804062903, 0.516514838, 0.792536378, 0.324189126, -0.805342674, 0.320996702, 0.498381644)
o292.BottomSurface = Enum.SurfaceType.Smooth
o292.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o292.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o292.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o292.TopSurface = Enum.SurfaceType.Smooth
o292.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o292.Position = Vector3.new(111.424225, 1.30797601, -61.2596359)
o293.Name = "Joint"
o293.Parent = o292
o293.C0 = CFrame.new(0.23059845, 2.09112549, 0.295188904, -0.290654719, 0.516514838, 0.805439115, 0.518398404, 0.792536378, -0.321168661, -0.804228187, 0.324189126, -0.498114884)
o293.Part0 = o292
o293.Part1 = o2
o294.Parent = o1
o294.Material = Enum.Material.Metal
o294.BrickColor = BrickColor.new("Dark stone grey")
o294.Position = Vector3.new(110.700317, 3.83861208, -59.9401741)
o294.Rotation = Vector3.new(89.9199982, 0, 0)
o294.Anchored = false
o294.CanCollide = false
o294.Size = Vector3.new(0.358883083, 0.200000003, 0.324934512)
o294.CFrame = CFrame.new(110.700317, 3.83861208, -59.9401741, 1, 0, 0, 0, 0.00141300017, -0.999999106, 0, 0.999999106, 0.00141300017)
o294.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o294.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o294.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o294.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o294.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o294.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o294.Color = Color3.new(0.388235, 0.372549, 0.384314)
o294.Position = Vector3.new(110.700317, 3.83861208, -59.9401741)
o295.Parent = o294
o295.Scale = Vector3.new(1, 0.484977037, 1)
o296.Name = "Joint"
o296.Parent = o294
o296.C0 = CFrame.new(-0.0559082031, -0.687747955, 0.657565355, -0.99999994, 1.23944917e-22, 0.000331714633, -0.000331714342, 0.00141300017, -0.999999046, -4.68712841e-07, -0.999999106, -0.00141300005)
o296.Part0 = o294
o296.Part1 = o2
o297.Parent = o1
o297.Material = Enum.Material.SmoothPlastic
o297.BrickColor = BrickColor.new("Really black")
o297.Position = Vector3.new(110.359283, 1.338287, -61.4699478)
o297.Rotation = Vector3.new(-48.2099991, -83.4400024, -73.3799973)
o297.Anchored = false
o297.FormFactor = Enum.FormFactor.Custom
o297.Size = Vector3.new(0.439999998, 2.30000019, 0.50999999)
o297.CFrame = CFrame.new(110.359283, 1.338287, -61.4699478, 0.0327019915, 0.109552041, -0.993442953, -0.426729918, 0.900353193, 0.0852395296, 0.903787732, 0.421144277, 0.0761924684)
o297.BottomSurface = Enum.SurfaceType.Smooth
o297.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o297.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o297.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o297.TopSurface = Enum.SurfaceType.Smooth
o297.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o297.Position = Vector3.new(110.359283, 1.338287, -61.4699478)
o298.Name = "Joint"
o298.Parent = o297
o298.C0 = CFrame.new(-0.0147628784, 2.0445013, -0.0620422363, -0.033001788, -0.426729918, -0.903776824, -0.109691732, 0.900353193, -0.421107918, 0.993417621, 0.0852395296, -0.0765220001)
o298.Part0 = o297
o298.Part1 = o2
o299.Parent = o1
o299.Material = Enum.Material.SmoothPlastic
o299.BrickColor = BrickColor.new("Really black")
o299.Position = Vector3.new(109.589294, 1.338287, -61.2099457)
o299.Rotation = Vector3.new(-90, -67.0100021, -90)
o299.Anchored = false
o299.FormFactor = Enum.FormFactor.Custom
o299.Size = Vector3.new(0.439999998, 2.30000019, 0.50999999)
o299.CFrame = CFrame.new(109.589294, 1.338287, -61.2099457, 0, 0.39049381, -0.9206056, 0, 0.9206056, 0.39049381, 1, 0, 0)
o299.BottomSurface = Enum.SurfaceType.Smooth
o299.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o299.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o299.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o299.TopSurface = Enum.SurfaceType.Smooth
o299.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o299.Position = Vector3.new(109.589294, 1.338287, -61.2099457)
o300.Name = "Joint"
o300.Parent = o299
o300.C0 = CFrame.new(0.582954407, 2.10757828, -0.25213623, -0.000331714633, -1.09697344e-22, -0.99999994, -0.39049378, 0.9206056, 0.000129532506, 0.92060554, 0.39049381, -0.000305378344)
o300.Part0 = o299
o300.Part1 = o2
o301.Parent = o1
o301.Material = Enum.Material.SmoothPlastic
o301.BrickColor = BrickColor.new("Really black")
o301.Position = Vector3.new(109.999298, 1.338287, -61.4399414)
o301.Rotation = Vector3.new(-61.8400002, -72.7200012, -81.8799973)
o301.Anchored = false
o301.FormFactor = Enum.FormFactor.Custom
o301.Size = Vector3.new(0.439999998, 2.30000019, 0.50999999)
o301.CFrame = CFrame.new(109.999298, 1.338287, -61.4399414, 0.0419270247, 0.29401207, -0.954881728, -0.348433197, 0.900024235, 0.261822164, 0.936395526, 0.321735084, 0.140178889)
o301.BottomSurface = Enum.SurfaceType.Smooth
o301.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o301.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o301.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o301.TopSurface = Enum.SurfaceType.Smooth
o301.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o301.Position = Vector3.new(109.999298, 1.338287, -61.4399414)
o302.Name = "Joint"
o302.Parent = o301
o302.C0 = CFrame.new(0.14654541, 2.10887909, -0.0198287964, -0.0422376357, -0.348433197, -0.936381578, -0.294118762, 0.900024235, -0.321637511, 0.954835176, 0.261822164, -0.140495628)
o302.Part0 = o301
o302.Part1 = o2
o303.Parent = o1
o303.Material = Enum.Material.SmoothPlastic
o303.BrickColor = BrickColor.new("Really black")
o303.Position = Vector3.new(111.325104, 4.15095997, -60.7049484)
o303.Rotation = Vector3.new(180, 90, 0)
o303.Anchored = false
o303.FormFactor = Enum.FormFactor.Custom
o303.Size = Vector3.new(1.21000004, 0.200000003, 0.689999998)
o303.CFrame = CFrame.new(111.325104, 4.15095997, -60.7049484, 0, 0, 1, 0, -1, 0, 1, 0, -0)
o303.BottomSurface = Enum.SurfaceType.Smooth
o303.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o303.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o303.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o303.TopSurface = Enum.SurfaceType.Smooth
o303.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o303.Position = Vector3.new(111.325104, 4.15095997, -60.7049484)
o304.Name = "Joint"
o304.Parent = o303
o304.C0 = CFrame.new(0.0779571533, 0.970884085, -0.68069458, -0.000331714633, -1.09697344e-22, -0.99999994, -1.23908515e-22, -1, 1.09738441e-22, -0.99999994, 1.23944917e-22, 0.000331714633)
o304.Part0 = o303
o304.Part1 = o2
o305.Parent = o1
o305.Material = Enum.Material.SmoothPlastic
o305.BrickColor = BrickColor.new("Really black")
o305.Position = Vector3.new(109.659302, 1.338287, -61.4399414)
o305.Rotation = Vector3.new(-66.0599976, -65.1100006, -80.6699982)
o305.Anchored = false
o305.FormFactor = Enum.FormFactor.Custom
o305.Size = Vector3.new(0.439999998, 2.30000019, 0.50999999)
o305.CFrame = CFrame.new(109.659302, 1.338287, -61.4399414, 0.0682549775, 0.41538015, -0.907083571, -0.26591292, 0.883888245, 0.384749234, 0.961577654, 0.214944214, 0.170784712)
o305.BottomSurface = Enum.SurfaceType.Smooth
o305.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o305.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o305.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o305.TopSurface = Enum.SurfaceType.Smooth
o305.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o305.Position = Vector3.new(109.659302, 1.338287, -61.4399414)
o306.Name = "Joint"
o306.Parent = o305
o306.C0 = CFrame.new(0.359195709, 2.2118721, -0.0461044312, -0.0685739368, -0.26591292, -0.961554945, -0.415451407, 0.883888245, -0.214806408, 0.907026887, 0.384749234, -0.171085596)
o306.Part0 = o305
o306.Part1 = o2
o307.Parent = o1
o307.Material = Enum.Material.SmoothPlastic
o307.BrickColor = BrickColor.new("Really black")
o307.Position = Vector3.new(110.610107, 4.15095997, -61.0299454)
o307.Rotation = Vector3.new(180, 90, 0)
o307.Anchored = false
o307.FormFactor = Enum.FormFactor.Custom
o307.Size = Vector3.new(0.560000062, 0.200000003, 2)
o307.CFrame = CFrame.new(110.610107, 4.15095997, -61.0299454, 0, 0, 1, 0, -1, 0, 1, 0, -0)
o307.BottomSurface = Enum.SurfaceType.Smooth
o307.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o307.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o307.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o307.TopSurface = Enum.SurfaceType.Smooth
o307.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o307.Position = Vector3.new(110.610107, 4.15095997, -61.0299454)
o308.Name = "Joint"
o308.Parent = o307
o308.C0 = CFrame.new(0.402954102, 0.970884085, 0.0343017578, -0.000331714633, -1.09697344e-22, -0.99999994, -1.23908515e-22, -1, 1.09738441e-22, -0.99999994, 1.23944917e-22, 0.000331714633)
o308.Part0 = o307
o308.Part1 = o2
o309.Parent = o1
o309.Material = Enum.Material.SmoothPlastic
o309.BrickColor = BrickColor.new("Really black")
o309.Position = Vector3.new(109.930099, 4.15095997, -60.6999435)
o309.Rotation = Vector3.new(180, 90, 0)
o309.Anchored = false
o309.FormFactor = Enum.FormFactor.Custom
o309.Size = Vector3.new(1.22000003, 0.200000003, 0.639999986)
o309.CFrame = CFrame.new(109.930099, 4.15095997, -60.6999435, 0, 0, 1, 0, -1, 0, 1, 0, -0)
o309.BottomSurface = Enum.SurfaceType.Smooth
o309.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o309.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o309.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o309.TopSurface = Enum.SurfaceType.Smooth
o309.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o309.Position = Vector3.new(109.930099, 4.15095997, -60.6999435)
o310.Name = "Joint"
o310.Parent = o309
o310.C0 = CFrame.new(0.0729522705, 0.970884085, 0.714309692, -0.000331714633, -1.09697344e-22, -0.99999994, -1.23908515e-22, -1, 1.09738441e-22, -0.99999994, 1.23944917e-22, 0.000331714633)
o310.Part0 = o309
o310.Part1 = o2
o311.Name = "Chain"
o311.Parent = o1
o311.Material = Enum.Material.SmoothPlastic
o311.BrickColor = BrickColor.new("Fossil")
o311.Position = Vector3.new(112.130943, 0.953365028, -59.959465)
o311.Rotation = Vector3.new(0, 0, 51.9099998)
o311.Anchored = false
o311.CanCollide = false
o311.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o311.CFrame = CFrame.new(112.130943, 0.953365028, -59.959465, 0.61693728, -0.787012339, 0, 0.787012339, 0.61693728, 0, 0, 0, 1)
o311.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o311.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o311.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o311.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o311.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o311.Color = Color3.new(0.623529, 0.631373, 0.67451)
o311.Position = Vector3.new(112.130943, 0.953365028, -59.959465)
o312.Parent = o311
o312.Scale = Vector3.new(0.134741768, 0.577756166, 0.163323283)
o313.Name = "Joint"
o313.Parent = o311
o313.C0 = CFrame.new(0.835350037, 2.54366302, -0.667526245, -0.61693722, 0.787012339, 0.00020464712, 0.787012279, 0.61693728, -0.000261063513, -0.000331714633, -1.09697344e-22, -0.99999994)
o313.Part0 = o311
o313.Part1 = o2
o314.Name = "Chain"
o314.Parent = o1
o314.Material = Enum.Material.SmoothPlastic
o314.BrickColor = BrickColor.new("Fossil")
o314.Position = Vector3.new(112.392395, 0.80925101, -60.1639633)
o314.Rotation = Vector3.new(90, -38.0900002, 8.5)
o314.Anchored = false
o314.CanCollide = false
o314.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o314.CFrame = CFrame.new(112.392395, 0.80925101, -60.1639633, 0.77837038, -0.116286881, -0.61694169, -0.610170305, 0.0911549106, -0.787008941, 0.14775607, 0.989023864, -2.52004043e-06)
o314.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o314.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o314.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o314.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o314.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o314.Color = Color3.new(0.623529, 0.631373, 0.67451)
o314.Position = Vector3.new(112.392395, 0.80925101, -60.1639633)
o315.Parent = o314
o315.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o316.Name = "Joint"
o316.Parent = o314
o316.C0 = CFrame.new(-2.87560272, -0.0385665894, -0.787452698, -0.778419316, -0.610170305, -0.147497863, 0.115958802, 0.0911549106, -0.989062369, 0.616941631, -0.787008941, -0.000202128547)
o316.Part0 = o314
o316.Part1 = o2
o317.Name = "Chain"
o317.Parent = o1
o317.Material = Enum.Material.SmoothPlastic
o317.BrickColor = BrickColor.new("Fossil")
o317.Position = Vector3.new(112.405258, 0.799176991, -60.2733078)
o317.Rotation = Vector3.new(90, -38.0900002, 8.5)
o317.Anchored = false
o317.CanCollide = false
o317.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o317.CFrame = CFrame.new(112.405258, 0.799176991, -60.2733078, 0.77837038, -0.116286881, -0.61694169, -0.610170305, 0.0911549106, -0.787008941, 0.14775607, 0.989023864, -2.52004043e-06)
o317.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o317.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o317.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o317.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o317.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o317.Color = Color3.new(0.623529, 0.631373, 0.67451)
o317.Position = Vector3.new(112.405258, 0.799176991, -60.2733078)
o318.Parent = o317
o318.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o319.Name = "Joint"
o319.Parent = o317
o319.C0 = CFrame.new(-2.87561035, 0.0719909668, -0.787445068, -0.778419316, -0.610170305, -0.147497863, 0.115958802, 0.0911549106, -0.989062369, 0.616941631, -0.787008941, -0.000202128547)
o319.Part0 = o317
o319.Part1 = o2
o320.Name = "Chain"
o320.Parent = o1
o320.Material = Enum.Material.SmoothPlastic
o320.BrickColor = BrickColor.new("Fossil")
o320.Position = Vector3.new(112.435074, 0.77579999, -60.2075424)
o320.Rotation = Vector3.new(90, -38.0900002, 8.5)
o320.Anchored = false
o320.CanCollide = false
o320.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o320.CFrame = CFrame.new(112.435074, 0.77579999, -60.2075424, 0.77837038, -0.116286881, -0.61694169, -0.610170305, 0.0911549106, -0.787008941, 0.14775607, 0.989023864, -2.52004043e-06)
o320.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o320.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o320.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o320.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o320.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o320.Color = Color3.new(0.623529, 0.631373, 0.67451)
o320.Position = Vector3.new(112.435074, 0.77579999, -60.2075424)
o321.Parent = o320
o321.Scale = Vector3.new(0.140866324, 0.565506876, 0.163323283)
o322.Name = "Joint"
o322.Parent = o320
o322.C0 = CFrame.new(-2.92279816, 0.012550354, -0.787445068, -0.778419316, -0.610170305, -0.147497863, 0.115958802, 0.0911549106, -0.989062369, 0.616941631, -0.787008941, -0.000202128547)
o322.Part0 = o320
o322.Part1 = o2
o323.Name = "Chain"
o323.Parent = o1
o323.Material = Enum.Material.SmoothPlastic
o323.BrickColor = BrickColor.new("Fossil")
o323.Position = Vector3.new(112.402344, 0.801451981, -60.2486038)
o323.Rotation = Vector3.new(76.3899994, 51.1100006, 10.6700001)
o323.Anchored = false
o323.CanCollide = false
o323.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o323.CFrame = CFrame.new(112.402344, 0.801451981, -60.2486038, 0.61693728, -0.116285205, 0.778374016, 0.787012339, 0.0911557302, -0.610165715, 0, 0.989023983, 0.147755265)
o323.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o323.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o323.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o323.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o323.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o323.Color = Color3.new(0.623529, 0.631373, 0.67451)
o323.Position = Vector3.new(112.402344, 0.801451981, -60.2486038)
o324.Parent = o323
o324.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o325.Name = "Joint"
o325.Parent = o323
o325.C0 = CFrame.new(0.787467957, 0.0470123291, -2.87559509, -0.61693722, 0.787012339, 0.00020464712, 0.115957126, 0.0911557302, -0.989062488, -0.778422952, -0.610165715, -0.147497058)
o325.Part0 = o323
o325.Part1 = o2
o326.Name = "Chain"
o326.Parent = o1
o326.Material = Enum.Material.SmoothPlastic
o326.BrickColor = BrickColor.new("Fossil")
o326.Position = Vector3.new(112.09314, 1.04384899, -60.0073471)
o326.Rotation = Vector3.new(90, -38.0900002, 90)
o326.Anchored = false
o326.CanCollide = false
o326.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o326.CFrame = CFrame.new(112.09314, 1.04384899, -60.0073471, 0, -0.787012339, -0.61693728, 0, 0.61693728, -0.787012339, 1, 0, 0)
o326.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o326.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o326.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o326.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o326.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o326.Color = Color3.new(0.623529, 0.631373, 0.67451)
o326.Position = Vector3.new(112.09314, 1.04384899, -60.0073471)
o327.Parent = o326
o327.Scale = Vector3.new(0.134741768, 0.577756166, 0.163323283)
o328.Name = "Joint"
o328.Parent = o326
o328.C0 = CFrame.new(-0.619644165, 2.45808411, -0.787460327, -0.000331714633, -1.09697344e-22, -0.99999994, 0.787012279, 0.61693728, -0.000261063513, 0.61693722, -0.787012339, -0.00020464712)
o328.Part0 = o326
o328.Part1 = o2
o329.Name = "Chain"
o329.Parent = o1
o329.Material = Enum.Material.SmoothPlastic
o329.BrickColor = BrickColor.new("Fossil")
o329.Position = Vector3.new(112.364258, 0.831314027, -60.666008)
o329.Rotation = Vector3.new(90, -38.0900002, 147.770004)
o329.Anchored = false
o329.CanCollide = false
o329.Size = Vector3.new(0.226600036, 0.226600021, 0.226600036)
o329.CFrame = CFrame.new(112.364258, 0.831314027, -60.666008, -0.665761709, -0.419700056, -0.61693871, 0.521891773, 0.329002023, -0.787011266, 0.533282757, -0.845937133, 1.08515837e-06)
o329.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o329.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o329.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o329.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o329.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o329.Color = Color3.new(0.623529, 0.631373, 0.67451)
o329.Position = Vector3.new(112.364258, 0.831314027, -60.666008)
o330.Parent = o329
o330.Scale = Vector3.new(0.557340801, 0.114326328, 0.163323283)
o331.Name = "Joint"
o331.Parent = o329
o331.C0 = CFrame.new(2.39161682, 1.46156693, -0.787460327, 0.665584743, 0.521891773, -0.533503532, 0.419980645, 0.329002023, 0.845797837, 0.616938651, -0.787011266, -0.000205732766)
o331.Part0 = o329
o331.Part1 = o2
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = workspace 
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end

wait()

Workspace["Torso_"].Parent = game.Players.LocalPlayer.Character

game.Players.LocalPlayer.Character["Torso_"].Name = "Familiar Torso"

w = Instance.new("Weld", game.Players.LocalPlayer.Character["Torso"])
w.Part0 = game.Players.LocalPlayer.Character["Torso"]
w.Part1 = o2
w.C0 = CFrame.new(0, 0, 0)*CFrame.Angles(0, 0, 0)
game.Players.LocalPlayer.Character["Torso"].Transparency = 0

for i,v in pairs (game.Players.LocalPlayer.Character["Familiar Torso"]:GetChildren()) do
	if v.ClassName == "Part" then
	v.CanCollide = false
	v.Anchored = false
	end
end


local runDummyScript = function(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "CompiledModel"
o1 = Instance.new("Model")
o2 = Instance.new("Part")
o3 = Instance.new("SpecialMesh")
o4 = Instance.new("Part")
o5 = Instance.new("Weld")
o6 = Instance.new("Part")
o7 = Instance.new("Weld")
o8 = Instance.new("Part")
o9 = Instance.new("Weld")
o10 = Instance.new("Part")
o11 = Instance.new("Weld")
o12 = Instance.new("Part")
o13 = Instance.new("Weld")
o14 = Instance.new("Part")
o15 = Instance.new("Weld")
o16 = Instance.new("Part")
o17 = Instance.new("Weld")
o18 = Instance.new("Part")
o19 = Instance.new("Weld")
o20 = Instance.new("Part")
o21 = Instance.new("SpecialMesh")
o22 = Instance.new("Weld")
o23 = Instance.new("Part")
o24 = Instance.new("SpecialMesh")
o25 = Instance.new("Weld")
o26 = Instance.new("Part")
o27 = Instance.new("SpecialMesh")
o28 = Instance.new("Weld")
o29 = Instance.new("Part")
o30 = Instance.new("SpecialMesh")
o31 = Instance.new("Weld")
o32 = Instance.new("Part")
o33 = Instance.new("SpecialMesh")
o34 = Instance.new("Weld")
o35 = Instance.new("Part")
o36 = Instance.new("SpecialMesh")
o37 = Instance.new("Weld")
o38 = Instance.new("Part")
o39 = Instance.new("SpecialMesh")
o40 = Instance.new("Weld")
o41 = Instance.new("Part")
o42 = Instance.new("SpecialMesh")
o43 = Instance.new("Weld")
o44 = Instance.new("Part")
o45 = Instance.new("SpecialMesh")
o46 = Instance.new("Weld")
o47 = Instance.new("Part")
o48 = Instance.new("SpecialMesh")
o49 = Instance.new("Weld")
o50 = Instance.new("Part")
o51 = Instance.new("SpecialMesh")
o52 = Instance.new("Weld")
o53 = Instance.new("Part")
o54 = Instance.new("Weld")
o55 = Instance.new("Part")
o56 = Instance.new("Weld")
o57 = Instance.new("Part")
o58 = Instance.new("Weld")
o59 = Instance.new("Part")
o60 = Instance.new("Weld")
o61 = Instance.new("Part")
o62 = Instance.new("Weld")
o63 = Instance.new("WedgePart")
o64 = Instance.new("SpecialMesh")
o65 = Instance.new("Weld")
o66 = Instance.new("WedgePart")
o67 = Instance.new("SpecialMesh")
o68 = Instance.new("Weld")
o69 = Instance.new("WedgePart")
o70 = Instance.new("SpecialMesh")
o71 = Instance.new("Weld")
o72 = Instance.new("WedgePart")
o73 = Instance.new("SpecialMesh")
o74 = Instance.new("Weld")
o75 = Instance.new("WedgePart")
o76 = Instance.new("SpecialMesh")
o77 = Instance.new("Weld")
o78 = Instance.new("WedgePart")
o79 = Instance.new("SpecialMesh")
o80 = Instance.new("Weld")
o81 = Instance.new("WedgePart")
o82 = Instance.new("SpecialMesh")
o83 = Instance.new("Weld")
o84 = Instance.new("WedgePart")
o85 = Instance.new("SpecialMesh")
o86 = Instance.new("Weld")
o87 = Instance.new("WedgePart")
o88 = Instance.new("SpecialMesh")
o89 = Instance.new("Weld")
o90 = Instance.new("Part")
o91 = Instance.new("Weld")
o92 = Instance.new("WedgePart")
o93 = Instance.new("SpecialMesh")
o94 = Instance.new("Weld")
o95 = Instance.new("WedgePart")
o96 = Instance.new("SpecialMesh")
o97 = Instance.new("Weld")
o98 = Instance.new("WedgePart")
o99 = Instance.new("SpecialMesh")
o100 = Instance.new("Weld")
o1.Name = "LeftArm"
o1.Parent = mas
o2.Name = "REF"
o2.Parent = o1
o2.Transparency = 1
o2.Position = Vector3.new(112.144409, 3.18000388, -60.6271744)
o2.Rotation = Vector3.new(180, 0.0199999996, -180)
o2.Anchored = false
o2.CanCollide = false
o2.FormFactor = Enum.FormFactor.Symmetric
o2.Size = Vector3.new(1, 2, 1)
o2.CFrame = CFrame.new(112.144409, 3.18000388, -60.6271744, -0.99999994, 1.23944917e-22, 0.000331714633, 1.23908515e-22, 1, -1.09738441e-22, -0.000331714633, -1.09697344e-22, -0.99999994)
o2.BottomSurface = Enum.SurfaceType.Smooth
o2.TopSurface = Enum.SurfaceType.Smooth
o2.Position = Vector3.new(112.144409, 3.18000388, -60.6271744)
o3.Parent = o2
o3.MeshId = "rbxasset://fonts/leftarm.mesh"
o3.MeshType = Enum.MeshType.FileMesh
o4.Name = "Pinkie"
o4.Parent = o1
o4.Material = Enum.Material.Metal
o4.BrickColor = BrickColor.new("Really black")
o4.Position = Vector3.new(112.587646, 1.6745528, -61.0940781)
o4.Rotation = Vector3.new(-83.9899979, -75.9199982, 6.19999981)
o4.Anchored = false
o4.FormFactor = Enum.FormFactor.Custom
o4.Size = Vector3.new(0.385473251, 0.244744942, 0.244744942)
o4.CFrame = CFrame.new(112.587646, 1.6745528, -61.0940781, 0.241840079, -0.026258843, -0.969960749, 0.97029537, 6.48375021e-07, 0.241923481, -0.0063520018, -0.999655247, 0.0254789889)
o4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o4.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o4.Position = Vector3.new(112.587646, 1.6745528, -61.0940781)
o5.Name = "Joint"
o5.Parent = o4
o5.C0 = CFrame.new(1.35057449, -0.455104828, 0.806030273, -0.241837963, 0.97029537, 0.00643222313, 0.0265904423, 6.48375021e-07, 0.999646485, 0.969952226, 0.241923481, -0.0258007366)
o5.Part0 = o4
o5.Part1 = o2
o6.Name = "main"
o6.Parent = o1
o6.Material = Enum.Material.Metal
o6.BrickColor = BrickColor.new("Really black")
o6.Reflectance = 0.20000000298023
o6.Position = Vector3.new(112.151566, 3.20138907, -60.6235428)
o6.Rotation = Vector3.new(0, -88.5, 0)
o6.Anchored = false
o6.FormFactor = Enum.FormFactor.Custom
o6.Size = Vector3.new(1.16253865, 2.04795957, 1.22372472)
o6.CFrame = CFrame.new(112.151566, 3.20138907, -60.6235428, 0.0262640044, 0, -0.999655128, 0, 1, 0, 0.999655128, 0, 0.0262640044)
o6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o6.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o6.Position = Vector3.new(112.151566, 3.20138907, -60.6235428)
o7.Name = "Joint"
o7.Parent = o6
o7.C0 = CFrame.new(-0.00381851196, -0.0213851929, 0.00704956055, -0.0265956037, -1.06404222e-22, -0.999646366, 1.23908515e-22, 1, -1.09738441e-22, 0.999646366, -1.26783263e-22, -0.0265956037)
o7.Part0 = o6
o7.Part1 = o2
o8.Name = "Middle"
o8.Parent = o1
o8.Material = Enum.Material.Metal
o8.BrickColor = BrickColor.new("Really black")
o8.Position = Vector3.new(112.583878, 1.59440327, -60.4757423)
o8.Rotation = Vector3.new(-83.9800034, -75.9199982, 6.19999981)
o8.Anchored = false
o8.FormFactor = Enum.FormFactor.Custom
o8.Size = Vector3.new(0.550676167, 0.244744971, 0.244744971)
o8.CFrame = CFrame.new(112.583878, 1.59440327, -60.4757423, 0.241842672, -0.026281815, -0.969959617, 0.970294714, 4.18917307e-06, 0.241926104, -0.00635419413, -0.999654591, 0.0255021211)
o8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o8.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o8.Position = Vector3.new(112.583878, 1.59440327, -60.4757423)
o9.Name = "Joint"
o9.Parent = o8
o9.C0 = CFrame.new(1.43317795, 0.16293335, 0.805999756, -0.241840556, 0.970294714, 0.0064344164, 0.0266134124, 4.18917307e-06, 0.999645829, 0.969951093, 0.241926104, -0.0258238688)
o9.Part0 = o8
o9.Part1 = o2
o10.Name = "Middle"
o10.Parent = o1
o10.Material = Enum.Material.Metal
o10.BrickColor = BrickColor.new("Really black")
o10.Position = Vector3.new(112.645073, 2.05328345, -60.4773598)
o10.Rotation = Vector3.new(0, -88.4899979, 90)
o10.Anchored = false
o10.FormFactor = Enum.FormFactor.Custom
o10.Size = Vector3.new(0.428303689, 0.244744971, 0.244744971)
o10.CFrame = CFrame.new(112.645073, 2.05328345, -60.4773598, -5.76933703e-18, -0.026274994, -0.99965477, 1, -5.42101086e-20, 6.15587026e-18, -2.82188995e-19, -0.99965477, 0.026274994)
o10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o10.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o10.Position = Vector3.new(112.645073, 2.05328345, -60.4773598)
o11.Name = "Joint"
o11.Parent = o10
o11.C0 = CFrame.new(1.12672043, 0.162914276, 0.496559143, 5.76955417e-18, 1, 2.80165453e-19, 0.0266065914, -5.41037061e-20, 0.999646008, 0.999646008, 6.15574329e-18, -0.0266065914)
o11.Part0 = o10
o11.Part1 = o2
o12.Name = "Index"
o12.Parent = o1
o12.Material = Enum.Material.Metal
o12.BrickColor = BrickColor.new("Really black")
o12.Position = Vector3.new(112.653015, 2.05328369, -60.1777191)
o12.Rotation = Vector3.new(0.00999999978, -88.5, 90.0100021)
o12.Anchored = false
o12.FormFactor = Enum.FormFactor.Custom
o12.Size = Vector3.new(0.42830357, 0.244744897, 0.244744897)
o12.CFrame = CFrame.new(112.653015, 2.05328369, -60.1777191, -2.77161598e-06, -0.026252022, -0.999655366, 1, -3.54077952e-06, -2.71201134e-06, -3.46917659e-06, -0.999655426, 0.026252022)
o12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o12.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o12.Position = Vector3.new(112.653015, 2.05328369, -60.1777191)
o13.Name = "Joint"
o13.Parent = o12
o13.C0 = CFrame.new(1.12672305, 0.462650299, 0.496635437, 2.77276649e-06, 1, 3.46825686e-06, 0.0265836213, -3.54077952e-06, 0.999646664, 0.999646604, -2.71201134e-06, -0.0265836213)
o13.Part0 = o12
o13.Part1 = o2
o14.Name = "Index"
o14.Parent = o1
o14.Material = Enum.Material.Metal
o14.BrickColor = BrickColor.new("Really black")
o14.Position = Vector3.new(112.602913, 1.63892996, -60.1764107)
o14.Rotation = Vector3.new(-83.9899979, -75.9199982, 6.19999981)
o14.Anchored = false
o14.FormFactor = Enum.FormFactor.Custom
o14.Size = Vector3.new(0.458896697, 0.244744897, 0.244744897)
o14.CFrame = CFrame.new(112.602913, 1.63892996, -60.1764107, 0.241840079, -0.026258843, -0.969960749, 0.97029537, 6.48375021e-07, 0.241923481, -0.0063520018, -0.999655247, 0.0254789889)
o14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o14.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o14.Position = Vector3.new(112.602913, 1.63892996, -60.1764107)
o15.Name = "Joint"
o15.Parent = o14
o15.C0 = CFrame.new(1.3872757, 0.462646484, 0.80607605, -0.241837963, 0.97029537, 0.00643222313, 0.0265904423, 6.48375021e-07, 0.999646485, 0.969952226, 0.241923481, -0.0258007366)
o15.Part0 = o14
o15.Part1 = o2
o16.Parent = o1
o16.Material = Enum.Material.Metal
o16.BrickColor = BrickColor.new("Really black")
o16.Position = Vector3.new(112.100418, 1.99244225, -60.016201)
o16.Rotation = Vector3.new(175.25, -1.62, -90.3199997)
o16.Anchored = false
o16.FormFactor = Enum.FormFactor.Custom
o16.Size = Vector3.new(0.275338024, 0.244744927, 0.244744927)
o16.CFrame = CFrame.new(112.100418, 1.99244225, -60.016201, -0.00558705535, 0.999582946, -0.0283310357, 0.996565759, 0.00322507066, -0.0827412084, -0.0826153085, -0.0286960267, -0.996168256)
o16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o16.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o16.Position = Vector3.new(112.100418, 1.99244225, -60.016201)
o17.Name = "Joint"
o17.Parent = o16
o17.C0 = CFrame.new(1.23371267, 0.0653381348, 0.509124756, 0.00561445951, 0.996565759, 0.0826134458, -0.99957335, 0.00322507066, 0.0290276017, 0.0286614783, -0.0827412084, 0.996158779)
o17.Part0 = o16
o17.Part1 = o2
o18.Parent = o1
o18.Material = Enum.Material.Metal
o18.BrickColor = BrickColor.new("Really black")
o18.Position = Vector3.new(112.100418, 1.76605344, -60.016201)
o18.Rotation = Vector3.new(-174.410004, -1.64999998, -90.0199966)
o18.Anchored = false
o18.FormFactor = Enum.FormFactor.Custom
o18.Size = Vector3.new(0.275338024, 0.244744927, 0.244744927)
o18.CFrame = CFrame.new(112.100418, 1.76605344, -60.016201, -0.000417999923, 0.999582946, -0.0288741793, 0.995239794, 0.00322977034, 0.0974023417, 0.09745498, -0.0286960211, -0.994826138)
o18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o18.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o18.Position = Vector3.new(112.100418, 1.76605344, -60.016201)
o19.Name = "Joint"
o19.Parent = o18
o19.C0 = CFrame.new(1.34765911, 0.0660705566, 0.74426651, 0.00038567264, 0.995239794, -0.0974551141, -0.99957335, 0.00322977034, 0.0290275961, 0.0292041767, 0.0974023417, 0.994816482)
o19.Part0 = o18
o19.Part1 = o2
o20.Parent = o1
o20.Material = Enum.Material.Neon
o20.BrickColor = BrickColor.new("Cyan")
o20.Position = Vector3.new(112.858627, 3.2858181, -60.5739594)
o20.Rotation = Vector3.new(-180, -1.5, -180)
o20.Anchored = false
o20.CanCollide = false
o20.Shape = Enum.PartType.Ball
o20.Size = Vector3.new(0.414847255, 0.414847255, 0.414847255)
o20.CFrame = CFrame.new(112.858627, 3.2858181, -60.5739594, -0.999655128, 0, -0.0262640044, 0, 1, 0, 0.0262640044, 0, -0.999655128)
o20.BottomSurface = Enum.SurfaceType.Smooth
o20.TopSurface = Enum.SurfaceType.Smooth
o20.Color = Color3.new(0.0156863, 0.686275, 0.92549)
o20.Position = Vector3.new(112.858627, 3.2858181, -60.5739594)
o21.Parent = o20
o21.Scale = Vector3.new(0.296064734, 0.296066254, 0.296066403)
o21.MeshType = Enum.MeshType.Sphere
o22.Name = "Joint"
o22.Parent = o20
o22.C0 = CFrame.new(0.712562561, -0.105814219, 0.0719528198, 0.999646366, -1.26783263e-22, -0.0265956037, 1.23908515e-22, 1, -1.09738441e-22, 0.0265956037, 1.06404222e-22, 0.999646366)
o22.Part0 = o20
o22.Part1 = o2
o23.Name = "SkullMask"
o23.Parent = o1
o23.Position = Vector3.new(112.709534, 3.31745791, -60.6490936)
o23.Rotation = Vector3.new(0, -88.5, 0)
o23.Anchored = false
o23.FormFactor = Enum.FormFactor.Custom
o23.Size = Vector3.new(0.42987746, 0.49128899, 0.49128893)
o23.CFrame = CFrame.new(112.709534, 3.31745791, -60.6490936, 0.0262640044, 0, -0.999655128, 0, 1, 0, 0.999655128, 0, 0.0262640044)
o23.BottomSurface = Enum.SurfaceType.Smooth
o23.TopSurface = Enum.SurfaceType.Smooth
o23.Position = Vector3.new(112.709534, 3.31745791, -60.6490936)
o24.Parent = o23
o24.MeshId = "http://www.roblox.com/asset/?id=72542883"
o24.Scale = Vector3.new(0.307055533, 0.921166539, 0.307055563)
o24.TextureId = "rbxassetid://0"
o24.VertexColor = Vector3.new(1, 2, 1)
o24.MeshType = Enum.MeshType.FileMesh
o25.Name = "Joint"
o25.Parent = o23
o25.C0 = CFrame.new(0.00706863403, -0.137454033, 0.565498352, -0.0265956037, -1.06404222e-22, -0.999646366, 1.23908515e-22, 1, -1.09738441e-22, 0.999646366, -1.26783263e-22, -0.0265956037)
o25.Part0 = o23
o25.Part1 = o2
o26.Parent = o1
o26.Material = Enum.Material.Neon
o26.BrickColor = BrickColor.new("Cyan")
o26.Position = Vector3.new(112.85437, 3.2858181, -60.7367096)
o26.Rotation = Vector3.new(-180, -1.5, -180)
o26.Anchored = false
o26.CanCollide = false
o26.Shape = Enum.PartType.Ball
o26.Size = Vector3.new(0.414847255, 0.414847255, 0.414847255)
o26.CFrame = CFrame.new(112.85437, 3.2858181, -60.7367096, -0.999655128, 0, -0.0262640044, 0, 1, 0, 0.0262640044, 0, -0.999655128)
o26.BottomSurface = Enum.SurfaceType.Smooth
o26.TopSurface = Enum.SurfaceType.Smooth
o26.Color = Color3.new(0.0156863, 0.686275, 0.92549)
o26.Position = Vector3.new(112.85437, 3.2858181, -60.7367096)
o27.Parent = o26
o27.Scale = Vector3.new(0.296064734, 0.296066254, 0.296066403)
o27.MeshType = Enum.MeshType.Sphere
o28.Name = "Joint"
o28.Parent = o26
o28.C0 = CFrame.new(0.712593079, -0.105814219, -0.0908508301, 0.999646366, -1.26783263e-22, -0.0265956037, 1.23908515e-22, 1, -1.09738441e-22, 0.0265956037, 1.06404222e-22, 0.999646366)
o28.Part0 = o26
o28.Part1 = o2
o29.Parent = o1
o29.Material = Enum.Material.Neon
o29.BrickColor = BrickColor.new("Cyan")
o29.Reflectance = 0.5
o29.Position = Vector3.new(112.185989, 2.85818291, -61.1590652)
o29.Rotation = Vector3.new(-0.0299999993, -88.3000031, 179.699997)
o29.Anchored = false
o29.CanCollide = false
o29.FormFactor = Enum.FormFactor.Plate
o29.Size = Vector3.new(0.232626617, 0.245347008, 0.232626528)
o29.CFrame = CFrame.new(112.185989, 2.85818291, -61.1590652, -0.0296190046, -0.000153985544, -0.99956125, 0.0047260006, -0.999988854, 1.40105449e-05, -0.999550104, -0.0047235121, 0.0296194013)
o29.BottomSurface = Enum.SurfaceType.Smooth
o29.TopSurface = Enum.SurfaceType.Smooth
o29.Color = Color3.new(0.0156863, 0.686275, 0.92549)
o29.Position = Vector3.new(112.185989, 2.85818291, -61.1590652)
o30.Parent = o29
o30.Scale = Vector3.new(0.527341008, 1, 0.527341008)
o30.MeshType = Enum.MeshType.Wedge
o31.Name = "Joint"
o31.Parent = o29
o31.C0 = CFrame.new(-0.528896332, -0.324323416, 0.0573196411, 0.0299505685, 0.0047260006, 0.99954021, 0.000155552392, -0.999988854, 0.00472346041, 0.999551356, 1.40105449e-05, -0.0299509689)
o31.Part0 = o29
o31.Part1 = o2
o32.Parent = o1
o32.Material = Enum.Material.Neon
o32.BrickColor = BrickColor.new("Cyan")
o32.Reflectance = 0.5
o32.Position = Vector3.new(112.063293, 3.10351396, -61.1541824)
o32.Rotation = Vector3.new(179.970001, 88.3000031, -179.699997)
o32.Anchored = false
o32.CanCollide = false
o32.FormFactor = Enum.FormFactor.Plate
o32.Size = Vector3.new(0.232626617, 0.245347008, 0.232626528)
o32.CFrame = CFrame.new(112.063293, 3.10351396, -61.1541824, -0.0296190046, 0.000153985544, 0.99956125, 0.0047260006, 0.999988854, -1.40105449e-05, -0.999550104, 0.0047235121, -0.0296194013)
o32.BottomSurface = Enum.SurfaceType.Smooth
o32.TopSurface = Enum.SurfaceType.Smooth
o32.Color = Color3.new(0.0156863, 0.686275, 0.92549)
o32.Position = Vector3.new(112.063293, 3.10351396, -61.1541824)
o33.Parent = o32
o33.Scale = Vector3.new(0.527341008, 1, 0.527341008)
o33.MeshType = Enum.MeshType.Wedge
o34.Name = "Joint"
o34.Parent = o32
o34.C0 = CFrame.new(-0.528812408, 0.0789909363, 0.0654754639, 0.0299505685, 0.0047260006, 0.99954021, -0.000155552392, 0.999988854, -0.00472346041, -0.999551356, -1.40105449e-05, 0.0299509689)
o34.Part0 = o32
o34.Part1 = o2
o35.Parent = o1
o35.Material = Enum.Material.Neon
o35.BrickColor = BrickColor.new("Cyan")
o35.Reflectance = 0.5
o35.Position = Vector3.new(112.063255, 2.85818195, -61.1554489)
o35.Rotation = Vector3.new(179.970001, 88.3000031, 0.300000012)
o35.Anchored = false
o35.CanCollide = false
o35.FormFactor = Enum.FormFactor.Plate
o35.Size = Vector3.new(0.232626617, 0.245347008, 0.232626528)
o35.CFrame = CFrame.new(112.063255, 2.85818195, -61.1554489, 0.0296190046, -0.000153985544, 0.99956125, -0.0047260006, -0.999988854, -1.40105449e-05, 0.999550104, -0.0047235121, -0.0296194013)
o35.BottomSurface = Enum.SurfaceType.Smooth
o35.TopSurface = Enum.SurfaceType.Smooth
o35.Color = Color3.new(0.0156863, 0.686275, 0.92549)
o35.Position = Vector3.new(112.063255, 2.85818195, -61.1554489)
o36.Parent = o35
o36.Scale = Vector3.new(0.527341008, 1, 0.527341008)
o36.MeshType = Enum.MeshType.Wedge
o37.Name = "Joint"
o37.Parent = o35
o37.C0 = CFrame.new(0.528915405, -0.324326277, 0.0654678345, -0.0299505685, -0.0047260006, -0.99954021, 0.000155552392, -0.999988854, 0.00472346041, -0.999551356, -1.40105449e-05, 0.0299509689)
o37.Part0 = o35
o37.Part1 = o2
o38.Parent = o1
o38.Material = Enum.Material.Neon
o38.BrickColor = BrickColor.new("Cyan")
o38.Reflectance = 0.5
o38.Position = Vector3.new(112.186005, 3.10351396, -61.1578369)
o38.Rotation = Vector3.new(-0.0299999993, -88.3000031, -0.300000012)
o38.Anchored = false
o38.CanCollide = false
o38.FormFactor = Enum.FormFactor.Plate
o38.Size = Vector3.new(0.232626617, 0.245347008, 0.232626528)
o38.CFrame = CFrame.new(112.186005, 3.10351396, -61.1578369, 0.0296190046, 0.000153985544, -0.99956125, -0.0047260006, 0.999988854, 1.40105449e-05, 0.999550104, 0.0047235121, 0.0296194013)
o38.BottomSurface = Enum.SurfaceType.Smooth
o38.TopSurface = Enum.SurfaceType.Smooth
o38.Color = Color3.new(0.0156863, 0.686275, 0.92549)
o38.Position = Vector3.new(112.186005, 3.10351396, -61.1578369)
o39.Parent = o38
o39.Scale = Vector3.new(0.527341008, 1, 0.527341008)
o39.MeshType = Enum.MeshType.Wedge
o40.Name = "Joint"
o40.Parent = o38
o40.C0 = CFrame.new(0.528827667, 0.0789892673, 0.0572891235, -0.0299505685, -0.0047260006, -0.99954021, -0.000155552392, 0.999988854, -0.00472346041, 0.999551356, 1.40105449e-05, -0.0299509689)
o40.Part0 = o38
o40.Part1 = o2
o41.Parent = o1
o41.Material = Enum.Material.Neon
o41.BrickColor = BrickColor.new("Cyan")
o41.Reflectance = 0.5
o41.Position = Vector3.new(112.213989, 3.10351396, -60.0935593)
o41.Rotation = Vector3.new(-0.0299999993, -88.3000031, -0.300000012)
o41.Anchored = false
o41.CanCollide = false
o41.FormFactor = Enum.FormFactor.Plate
o41.Size = Vector3.new(0.232626617, 0.245347008, 0.232626528)
o41.CFrame = CFrame.new(112.213989, 3.10351396, -60.0935593, 0.0296190046, 0.000153985544, -0.99956125, -0.0047260006, 0.999988854, 1.40105449e-05, 0.999550104, 0.0047235121, 0.0296194013)
o41.BottomSurface = Enum.SurfaceType.Smooth
o41.TopSurface = Enum.SurfaceType.Smooth
o41.Color = Color3.new(0.0156863, 0.686275, 0.92549)
o41.Position = Vector3.new(112.213989, 3.10351396, -60.0935593)
o42.Parent = o41
o42.Scale = Vector3.new(0.527341008, 1, 0.527341008)
o42.MeshType = Enum.MeshType.Wedge
o43.Name = "Joint"
o43.Parent = o41
o43.C0 = CFrame.new(-0.535797119, 0.0739576817, 0.0537490845, -0.0299505685, -0.0047260006, -0.99954021, -0.000155552392, 0.999988854, -0.00472346041, 0.999551356, 1.40105449e-05, -0.0299509689)
o43.Part0 = o41
o43.Part1 = o2
o44.Parent = o1
o44.Material = Enum.Material.Neon
o44.BrickColor = BrickColor.new("Cyan")
o44.Reflectance = 0.5
o44.Position = Vector3.new(112.091309, 3.10351396, -60.0898819)
o44.Rotation = Vector3.new(179.970001, 88.3000031, -179.699997)
o44.Anchored = false
o44.CanCollide = false
o44.FormFactor = Enum.FormFactor.Plate
o44.Size = Vector3.new(0.232626617, 0.245347008, 0.232626528)
o44.CFrame = CFrame.new(112.091309, 3.10351396, -60.0898819, -0.0296190046, 0.000153985544, 0.99956125, 0.0047260006, 0.999988854, -1.40105449e-05, -0.999550104, 0.0047235121, -0.0296194013)
o44.BottomSurface = Enum.SurfaceType.Smooth
o44.TopSurface = Enum.SurfaceType.Smooth
o44.Color = Color3.new(0.0156863, 0.686275, 0.92549)
o44.Position = Vector3.new(112.091309, 3.10351396, -60.0898819)
o45.Parent = o44
o45.Scale = Vector3.new(0.527341008, 1, 0.527341008)
o45.MeshType = Enum.MeshType.Wedge
o46.Name = "Joint"
o46.Parent = o44
o46.C0 = CFrame.new(0.535842896, 0.0739593506, 0.0689926147, 0.0299505685, 0.0047260006, 0.99954021, -0.000155552392, 0.999988854, -0.00472346041, -0.999551356, -1.40105449e-05, 0.0299509689)
o46.Part0 = o44
o46.Part1 = o2
o47.Parent = o1
o47.Material = Enum.Material.Neon
o47.BrickColor = BrickColor.new("Cyan")
o47.Reflectance = 0.5
o47.Position = Vector3.new(112.091309, 2.85818195, -60.0911636)
o47.Rotation = Vector3.new(179.970001, 88.3000031, 0.300000012)
o47.Anchored = false
o47.CanCollide = false
o47.FormFactor = Enum.FormFactor.Plate
o47.Size = Vector3.new(0.232626617, 0.245347008, 0.232626528)
o47.CFrame = CFrame.new(112.091309, 2.85818195, -60.0911636, 0.0296190046, -0.000153985544, 0.99956125, -0.0047260006, -0.999988854, -1.40105449e-05, 0.999550104, -0.0047235121, -0.0296194013)
o47.BottomSurface = Enum.SurfaceType.Smooth
o47.TopSurface = Enum.SurfaceType.Smooth
o47.Color = Color3.new(0.0156863, 0.686275, 0.92549)
o47.Position = Vector3.new(112.091309, 2.85818195, -60.0911636)
o48.Parent = o47
o48.Scale = Vector3.new(0.527341008, 1, 0.527341008)
o48.MeshType = Enum.MeshType.Wedge
o49.Name = "Joint"
o49.Parent = o47
o49.C0 = CFrame.new(-0.535720825, -0.319294691, 0.0689468384, -0.0299505685, -0.0047260006, -0.99954021, 0.000155552392, -0.999988854, 0.00472346041, -0.999551356, -1.40105449e-05, 0.0299509689)
o49.Part0 = o47
o49.Part1 = o2
o50.Parent = o1
o50.Material = Enum.Material.Neon
o50.BrickColor = BrickColor.new("Cyan")
o50.Reflectance = 0.5
o50.Position = Vector3.new(112.21402, 2.85818291, -60.0948257)
o50.Rotation = Vector3.new(-0.0299999993, -88.3000031, 179.699997)
o50.Anchored = false
o50.CanCollide = false
o50.FormFactor = Enum.FormFactor.Plate
o50.Size = Vector3.new(0.232626617, 0.245347008, 0.232626528)
o50.CFrame = CFrame.new(112.21402, 2.85818291, -60.0948257, -0.0296190046, -0.000153985544, -0.99956125, 0.0047260006, -0.999988854, 1.40105449e-05, -0.999550104, -0.0047235121, 0.0296194013)
o50.BottomSurface = Enum.SurfaceType.Smooth
o50.TopSurface = Enum.SurfaceType.Smooth
o50.Color = Color3.new(0.0156863, 0.686275, 0.92549)
o50.Position = Vector3.new(112.21402, 2.85818291, -60.0948257)
o51.Parent = o50
o51.Scale = Vector3.new(0.527341008, 1, 0.527341008)
o51.MeshType = Enum.MeshType.Wedge
o52.Name = "Joint"
o52.Parent = o50
o52.C0 = CFrame.new(0.535694122, -0.319292068, 0.0538253784, 0.0299505685, 0.0047260006, 0.99954021, 0.000155552392, -0.999988854, 0.00472346041, 0.999551356, 1.40105449e-05, -0.0299509689)
o52.Part0 = o50
o52.Part1 = o2
o53.Parent = o1
o53.Material = Enum.Material.Metal
o53.BrickColor = BrickColor.new("Really black")
o53.Position = Vector3.new(112.097137, 2.30945516, -60.0942497)
o53.Rotation = Vector3.new(161.25, -1.5, -90.6999969)
o53.Anchored = false
o53.FormFactor = Enum.FormFactor.Custom
o53.Size = Vector3.new(0.428303599, 0.244744927, 0.244744927)
o53.CFrame = CFrame.new(112.097137, 2.30945516, -60.0942497, -0.0122789042, 0.999582648, -0.026146993, 0.94694531, 0.00322572584, -0.321378142, -0.321159691, -0.0287059508, -0.946589768)
o53.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o53.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o53.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o53.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o53.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o53.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o53.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o53.Position = Vector3.new(112.097137, 2.30945516, -60.0942497)
o54.Name = "Joint"
o54.Parent = o53
o54.C0 = CFrame.new(0.994935989, 0.0653686523, 0.223449707, 0.0123854363, 0.94694531, 0.321155578, -0.999573052, 0.00322572584, 0.0290375259, 0.0264609884, -0.321378142, 0.946581006)
o54.Part0 = o53
o54.Part1 = o2
o55.Name = "Ring"
o55.Parent = o1
o55.Material = Enum.Material.Metal
o55.BrickColor = BrickColor.new("Really black")
o55.Position = Vector3.new(112.586052, 1.63596094, -60.7880325)
o55.Rotation = Vector3.new(-83.9899979, -75.9199982, 6.19999981)
o55.Anchored = false
o55.FormFactor = Enum.FormFactor.Custom
o55.Size = Vector3.new(0.465015382, 0.244744942, 0.244744942)
o55.CFrame = CFrame.new(112.586052, 1.63596094, -60.7880325, 0.241840079, -0.026258843, -0.969960749, 0.97029537, 6.48375021e-07, 0.241923481, -0.0063520018, -0.999655247, 0.0254789889)
o55.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o55.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o55.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o55.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o55.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o55.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o55.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o55.Position = Vector3.new(112.586052, 1.63596094, -60.7880325)
o56.Name = "Joint"
o56.Parent = o55
o56.C0 = CFrame.new(1.39034843, -0.149204254, 0.806022644, -0.241837963, 0.97029537, 0.00643222313, 0.0265904423, 6.48375021e-07, 0.999646485, 0.969952226, 0.241923481, -0.0258007366)
o56.Part0 = o55
o56.Part1 = o2
o57.Parent = o1
o57.Material = Enum.Material.Metal
o57.Position = Vector3.new(112.774567, 2.20625496, -60.4806671)
o57.Rotation = Vector3.new(-88.4899979, -44.9799995, 2.13000011)
o57.Anchored = false
o57.FormFactor = Enum.FormFactor.Custom
o57.Size = Vector3.new(0.367117465, 0.244744956, 0.244744942)
o57.CFrame = CFrame.new(112.774567, 2.20625496, -60.4806671, 0.706867039, -0.0263168477, -0.706856787, 0.70710206, 2.11435545e-05, 0.707111537, -0.0185940024, -0.999653637, 0.0186236426)
o57.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o57.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o57.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o57.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o57.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o57.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o57.Position = Vector3.new(112.774567, 2.20625496, -60.4806671)
o58.Name = "Joint"
o58.Parent = o57
o58.C0 = CFrame.new(0.245826721, 0.16305542, 1.13126373, -0.70686084, 0.70710206, 0.0188284777, 0.0266484451, 2.11435545e-05, 0.999644876, 0.706850529, 0.707111537, -0.0188581161)
o58.Part0 = o57
o58.Part1 = o2
o59.Name = "Pinkie"
o59.Parent = o1
o59.Material = Enum.Material.Metal
o59.BrickColor = BrickColor.new("Really black")
o59.Position = Vector3.new(112.628792, 2.05326772, -61.0951462)
o59.Rotation = Vector3.new(0.00999999978, -88.5, 90.0100021)
o59.Anchored = false
o59.FormFactor = Enum.FormFactor.Custom
o59.Size = Vector3.new(0.428303659, 0.244744942, 0.244744942)
o59.CFrame = CFrame.new(112.628792, 2.05326772, -61.0951462, -2.77161598e-06, -0.026252022, -0.999655366, 1, -3.54077952e-06, -2.71201134e-06, -3.46917659e-06, -0.999655426, 0.026252022)
o59.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o59.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o59.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o59.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o59.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o59.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o59.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o59.Position = Vector3.new(112.628792, 2.05326772, -61.0951462)
o60.Name = "Joint"
o60.Parent = o59
o60.C0 = CFrame.new(1.12673569, -0.455093384, 0.496505737, 2.77276649e-06, 1, 3.46825686e-06, 0.0265836213, -3.54077952e-06, 0.999646664, 0.999646604, -2.71201134e-06, -0.0265836213)
o60.Part0 = o59
o60.Part1 = o2
o61.Parent = o1
o61.Material = Enum.Material.Metal
o61.Position = Vector3.new(112.766403, 2.20625496, -60.7926178)
o61.Rotation = Vector3.new(-88.4899979, -44.9799995, 2.13000011)
o61.Anchored = false
o61.FormFactor = Enum.FormFactor.Custom
o61.Size = Vector3.new(0.367117465, 0.244744956, 0.244744942)
o61.CFrame = CFrame.new(112.766403, 2.20625496, -60.7926178, 0.706867039, -0.0263168477, -0.706856787, 0.70710206, 2.11435545e-05, 0.707111537, -0.0185940024, -0.999653637, 0.0186236426)
o61.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o61.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o61.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o61.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o61.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o61.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o61.Position = Vector3.new(112.766403, 2.20625496, -60.7926178)
o62.Name = "Joint"
o62.Parent = o61
o62.C0 = CFrame.new(0.245796204, -0.14899826, 1.13129425, -0.70686084, 0.70710206, 0.0188284777, 0.0266484451, 2.11435545e-05, 0.999644876, 0.706850529, 0.707111537, -0.0188581161)
o62.Part0 = o61
o62.Part1 = o2
o63.Parent = o1
o63.Material = Enum.Material.Metal
o63.Position = Vector3.new(112.751724, 2.63452792, -61.0750046)
o63.Rotation = Vector3.new(90.75, 26.5599995, 88.3199997)
o63.Anchored = false
o63.CanCollide = false
o63.FormFactor = Enum.FormFactor.Custom
o63.Size = Vector3.new(0.232626617, 0.232626617, 0.367117465)
o63.CFrame = CFrame.new(112.751724, 2.63452792, -61.0750046, 0.0262839869, -0.894116223, 0.447063267, -1.29999935e-05, -0.44721812, -0.894424975, 0.999654531, 0.0235032439, -0.0117662987)
o63.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o63.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o63.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o63.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o63.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o63.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o63.Position = Vector3.new(112.751724, 2.63452792, -61.0750046)
o64.Parent = o63
o64.Scale = Vector3.new(0.789070249, 0.526046753, 1)
o64.MeshType = Enum.MeshType.Wedge
o65.Name = "Joint"
o65.Parent = o63
o65.C0 = CFrame.new(0.431705475, 0.309593201, -0.764667511, -0.0266155843, -1.29999935e-05, -0.99964577, 0.894108355, -0.44721812, -0.0237998329, -0.447059333, -0.894424975, 0.011914595)
o65.Part0 = o63
o65.Part1 = o2
o66.Parent = o1
o66.Material = Enum.Material.Metal
o66.Position = Vector3.new(112.634293, 3.27699494, -59.9934311)
o66.Rotation = Vector3.new(-90, 0, -178.5)
o66.Anchored = false
o66.CanCollide = false
o66.FormFactor = Enum.FormFactor.Custom
o66.Size = Vector3.new(0.232626617, 0.232626617, 0.367117465)
o66.CFrame = CFrame.new(112.634293, 3.27699494, -59.9934311, -0.999655128, 0.0262640044, 0, 0, 0, 1, 0.0262640044, 0.999655128, 0)
o66.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o66.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o66.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o66.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o66.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o66.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o66.Position = Vector3.new(112.634293, 3.27699494, -59.9934311)
o67.Parent = o66
o67.Scale = Vector3.new(0.789070249, 0.526046753, 1)
o67.MeshType = Enum.MeshType.Wedge
o68.Name = "Joint"
o68.Parent = o66
o68.C0 = CFrame.new(0.473068237, -0.646392822, -0.0969910622, 0.999646366, -1.26783263e-22, -0.0265956037, -0.0265956037, -1.06404222e-22, -0.999646366, 1.23908515e-22, 1, -1.09738441e-22)
o68.Part0 = o66
o68.Part1 = o2
o69.Parent = o1
o69.Material = Enum.Material.Metal
o69.Position = Vector3.new(112.774216, 3.24638796, -60.2187424)
o69.Rotation = Vector3.new(-90.5, 18.4300003, 91.5899963)
o69.Anchored = false
o69.CanCollide = false
o69.FormFactor = Enum.FormFactor.Custom
o69.Size = Vector3.new(0.232626617, 0.232626617, 0.367117465)
o69.CFrame = CFrame.new(112.774216, 3.24638796, -60.2187424, -0.0262640044, -0.948356986, 0.316115946, 0, 0.316224992, 0.948684275, -0.999655128, 0.0249162447, -0.00830533449)
o69.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o69.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o69.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o69.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o69.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o69.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o69.Position = Vector3.new(112.774216, 3.24638796, -60.2187424)
o70.Parent = o69
o70.Scale = Vector3.new(0.789070249, 0.526046753, 1)
o70.MeshType = Enum.MeshType.Wedge
o71.Name = "Joint"
o71.Parent = o69
o71.C0 = CFrame.new(0.42483139, 0.566116333, -0.258674622, 0.0265956037, 1.06404222e-22, 0.999646366, 0.948348641, 0.316224992, -0.0252308268, -0.316113174, 0.948684275, 0.00841019396)
o71.Part0 = o69
o71.Part1 = o2
o72.Parent = o1
o72.Material = Enum.Material.Metal
o72.Position = Vector3.new(112.562759, 2.603935, -61.2769241)
o72.Rotation = Vector3.new(90, 0, 178.5)
o72.Anchored = false
o72.CanCollide = false
o72.FormFactor = Enum.FormFactor.Custom
o72.Size = Vector3.new(0.232626617, 0.232626617, 0.367117465)
o72.CFrame = CFrame.new(112.562759, 2.603935, -61.2769241, -0.999655128, -0.0262640044, 0, 0, 0, -1, 0.0262640044, -0.999655128, 0)
o72.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o72.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o72.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o72.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o72.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o72.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o72.Position = Vector3.new(112.562759, 2.603935, -61.2769241)
o73.Parent = o72
o73.Scale = Vector3.new(0.789070249, 0.526046753, 1)
o73.MeshType = Enum.MeshType.Wedge
o74.Name = "Joint"
o74.Parent = o72
o74.C0 = CFrame.new(0.435264587, -0.638538361, -0.576068878, 0.999646366, -1.26783263e-22, -0.0265956037, 0.0265956037, 1.06404222e-22, 0.999646366, -1.23908515e-22, -1, 1.09738441e-22)
o74.Part0 = o72
o74.Part1 = o2
o75.Parent = o1
o75.Material = Enum.Material.Metal
o75.Position = Vector3.new(112.751724, 3.24638796, -61.0750046)
o75.Rotation = Vector3.new(-90.5, 18.4300003, 91.5899963)
o75.Anchored = false
o75.CanCollide = false
o75.FormFactor = Enum.FormFactor.Custom
o75.Size = Vector3.new(0.232626617, 0.232626617, 0.367117465)
o75.CFrame = CFrame.new(112.751724, 3.24638796, -61.0750046, -0.0262640044, -0.948356986, 0.316115946, 0, 0.316224992, 0.948684275, -0.999655128, 0.0249162447, -0.00830533449)
o75.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o75.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o75.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o75.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o75.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o75.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o75.Position = Vector3.new(112.751724, 3.24638796, -61.0750046)
o76.Parent = o75
o76.Scale = Vector3.new(0.789070249, 0.526046753, 1)
o76.MeshType = Enum.MeshType.Wedge
o77.Name = "Joint"
o77.Parent = o75
o77.C0 = CFrame.new(-0.431724548, 0.566116333, -0.258674622, 0.0265956037, 1.06404222e-22, 0.999646366, 0.948348641, 0.316224992, -0.0252308268, -0.316113174, 0.948684275, 0.00841019396)
o77.Part0 = o75
o77.Part1 = o2
o78.Parent = o1
o78.Material = Enum.Material.Metal
o78.Position = Vector3.new(112.774216, 2.63452792, -60.2187271)
o78.Rotation = Vector3.new(90.75, 26.5599995, 88.3199997)
o78.Anchored = false
o78.CanCollide = false
o78.FormFactor = Enum.FormFactor.Custom
o78.Size = Vector3.new(0.232626617, 0.232626617, 0.367117465)
o78.CFrame = CFrame.new(112.774216, 2.63452792, -60.2187271, 0.0262839869, -0.894116223, 0.447063267, -1.29999935e-05, -0.44721812, -0.894424975, 0.999654531, 0.0235032439, -0.0117662987)
o78.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o78.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o78.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o78.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o78.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o78.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o78.Position = Vector3.new(112.774216, 2.63452792, -60.2187271)
o79.Parent = o78
o79.Scale = Vector3.new(0.789070249, 0.526046753, 1)
o79.MeshType = Enum.MeshType.Wedge
o80.Name = "Joint"
o80.Parent = o78
o80.C0 = CFrame.new(-0.424869537, 0.309577942, -0.764648438, -0.0266155843, -1.29999935e-05, -0.99964577, 0.894108355, -0.44721812, -0.0237998329, -0.447059333, -0.894424975, 0.011914595)
o80.Part0 = o78
o80.Part1 = o2
o81.Parent = o1
o81.Material = Enum.Material.Metal
o81.Position = Vector3.new(111.716995, 2.66513395, -59.9693985)
o81.Rotation = Vector3.new(90, 0, -1.5)
o81.Anchored = false
o81.CanCollide = false
o81.FormFactor = Enum.FormFactor.Custom
o81.Size = Vector3.new(0.232626617, 0.232626617, 0.367117465)
o81.CFrame = CFrame.new(111.716995, 2.66513395, -59.9693985, 0.999655128, 0.0262640044, 0, 0, 0, -1, -0.0262640044, 0.999655128, 0)
o81.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o81.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o81.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o81.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o81.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o81.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o81.Position = Vector3.new(111.716995, 2.66513395, -59.9693985)
o82.Parent = o81
o82.Scale = Vector3.new(0.789070249, 0.526046753, 1)
o82.MeshType = Enum.MeshType.Wedge
o83.Name = "Joint"
o83.Parent = o81
o83.C0 = CFrame.new(0.444549561, -0.646324158, -0.514869928, -0.999646366, 1.26783263e-22, 0.0265956037, -0.0265956037, -1.06404222e-22, -0.999646366, -1.23908515e-22, -1, 1.09738441e-22)
o83.Part0 = o81
o83.Part1 = o2
o84.Parent = o1
o84.Material = Enum.Material.Metal
o84.Position = Vector3.new(112.634354, 2.66511011, -59.9934464)
o84.Rotation = Vector3.new(90, 0, -1.5)
o84.Anchored = false
o84.CanCollide = false
o84.FormFactor = Enum.FormFactor.Custom
o84.Size = Vector3.new(0.232626617, 0.232626617, 0.367117465)
o84.CFrame = CFrame.new(112.634354, 2.66511011, -59.9934464, 0.999655128, 0.0262640044, 0, 0, 0, -1, -0.0262640044, 0.999655128, 0)
o84.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o84.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o84.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o84.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o84.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o84.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o84.Position = Vector3.new(112.634354, 2.66511011, -59.9934464)
o85.Parent = o84
o85.Scale = Vector3.new(0.789070249, 0.526046753, 1)
o85.MeshType = Enum.MeshType.Wedge
o86.Name = "Joint"
o86.Parent = o84
o86.C0 = CFrame.new(-0.473129272, -0.646377563, -0.51489377, -0.999646366, 1.26783263e-22, 0.0265956037, -0.0265956037, -1.06404222e-22, -0.999646366, -1.23908515e-22, -1, 1.09738441e-22)
o86.Part0 = o84
o86.Part1 = o2
o87.Parent = o1
o87.Material = Enum.Material.Metal
o87.Position = Vector3.new(111.652649, 2.63455701, -61.2530289)
o87.Rotation = Vector3.new(90, 0, 178.5)
o87.Anchored = false
o87.CanCollide = false
o87.FormFactor = Enum.FormFactor.Custom
o87.Size = Vector3.new(0.232626617, 0.232626617, 0.367117465)
o87.CFrame = CFrame.new(111.652649, 2.63455701, -61.2530289, -0.999655128, -0.0262640044, 0, 0, 0, -1, 0.0262640044, -0.999655128, 0)
o87.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o87.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o87.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o87.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o87.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o87.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o87.Position = Vector3.new(111.652649, 2.63455701, -61.2530289)
o88.Parent = o87
o88.Scale = Vector3.new(0.789070249, 0.526046753, 1)
o88.MeshType = Enum.MeshType.Wedge
o89.Name = "Joint"
o89.Parent = o87
o89.C0 = CFrame.new(-0.475158691, -0.638553619, -0.545446873, 0.999646366, -1.26783263e-22, -0.0265956037, 0.0265956037, 1.06404222e-22, 0.999646366, -1.23908515e-22, -1, 1.09738441e-22)
o89.Part0 = o87
o89.Part1 = o2
o90.Name = "Ring"
o90.Parent = o1
o90.Material = Enum.Material.Metal
o90.BrickColor = BrickColor.new("Really black")
o90.Position = Vector3.new(112.636887, 2.05328321, -60.7893791)
o90.Rotation = Vector3.new(0.00999999978, -88.5, 90.0100021)
o90.Anchored = false
o90.FormFactor = Enum.FormFactor.Custom
o90.Size = Vector3.new(0.428303659, 0.244744942, 0.244744942)
o90.CFrame = CFrame.new(112.636887, 2.05328321, -60.7893791, -2.77161598e-06, -0.026252022, -0.999655366, 1, -3.54077952e-06, -2.71201134e-06, -3.46917659e-06, -0.999655426, 0.026252022)
o90.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o90.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o90.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o90.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o90.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o90.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o90.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o90.Position = Vector3.new(112.636887, 2.05328321, -60.7893791)
o91.Name = "Joint"
o91.Parent = o90
o91.C0 = CFrame.new(1.12672114, -0.149219513, 0.496566772, 2.77276649e-06, 1, 3.46825686e-06, 0.0265836213, -3.54077952e-06, 0.999646664, 0.999646604, -2.71201134e-06, -0.0265836213)
o91.Part0 = o90
o91.Part1 = o2
o92.Parent = o1
o92.Material = Enum.Material.Metal
o92.Position = Vector3.new(112.600632, 3.24638796, -61.277916)
o92.Rotation = Vector3.new(-90, 0, 1.5)
o92.Anchored = false
o92.CanCollide = false
o92.FormFactor = Enum.FormFactor.Custom
o92.Size = Vector3.new(0.232626617, 0.232626617, 0.367117465)
o92.CFrame = CFrame.new(112.600632, 3.24638796, -61.277916, 0.999655128, -0.0262640044, 0, 0, 0, 1, -0.0262640044, -0.999655128, 0)
o92.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o92.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o92.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o92.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o92.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o92.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o92.Position = Vector3.new(112.600632, 3.24638796, -61.277916)
o93.Parent = o92
o93.Scale = Vector3.new(0.789070249, 0.526046753, 1)
o93.MeshType = Enum.MeshType.Wedge
o94.Name = "Joint"
o94.Parent = o92
o94.C0 = CFrame.new(-0.473152161, -0.638534546, -0.0663840771, -0.999646366, 1.26783263e-22, 0.0265956037, 0.0265956037, 1.06404222e-22, 0.999646366, 1.23908515e-22, 1, -1.09738441e-22)
o94.Part0 = o92
o94.Part1 = o2
o95.Parent = o1
o95.Material = Enum.Material.Metal
o95.Position = Vector3.new(111.652649, 3.24638796, -61.2530441)
o95.Rotation = Vector3.new(-90, 0, 1.5)
o95.Anchored = false
o95.CanCollide = false
o95.FormFactor = Enum.FormFactor.Custom
o95.Size = Vector3.new(0.232626617, 0.232626617, 0.367117465)
o95.CFrame = CFrame.new(111.652649, 3.24638796, -61.2530441, 0.999655128, -0.0262640044, 0, 0, 0, 1, -0.0262640044, -0.999655128, 0)
o95.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o95.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o95.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o95.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o95.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o95.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o95.Position = Vector3.new(111.652649, 3.24638796, -61.2530441)
o96.Parent = o95
o96.Scale = Vector3.new(0.789070249, 0.526046753, 1)
o96.MeshType = Enum.MeshType.Wedge
o97.Name = "Joint"
o97.Parent = o95
o97.C0 = CFrame.new(0.475158691, -0.638568878, -0.0663840771, -0.999646366, 1.26783263e-22, 0.0265956037, 0.0265956037, 1.06404222e-22, 0.999646366, 1.23908515e-22, 1, -1.09738441e-22)
o97.Part0 = o95
o97.Part1 = o2
o98.Parent = o1
o98.Material = Enum.Material.Metal
o98.Position = Vector3.new(111.716995, 3.27698898, -59.9693985)
o98.Rotation = Vector3.new(-90, 0, -178.5)
o98.Anchored = false
o98.CanCollide = false
o98.FormFactor = Enum.FormFactor.Custom
o98.Size = Vector3.new(0.232626617, 0.232626617, 0.367117465)
o98.CFrame = CFrame.new(111.716995, 3.27698898, -59.9693985, -0.999655128, 0.0262640044, 0, 0, 0, 1, 0.0262640044, 0.999655128, 0)
o98.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o98.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o98.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o98.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o98.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o98.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o98.Position = Vector3.new(111.716995, 3.27698898, -59.9693985)
o99.Parent = o98
o99.Scale = Vector3.new(0.789070249, 0.526046753, 1)
o99.MeshType = Enum.MeshType.Wedge
o100.Name = "Joint"
o100.Parent = o98
o100.C0 = CFrame.new(-0.444549561, -0.646324158, -0.0969851017, 0.999646366, -1.26783263e-22, -0.0265956037, -0.0265956037, -1.06404222e-22, -0.999646366, 1.23908515e-22, 1, -1.09738441e-22)
o100.Part0 = o98
o100.Part1 = o2
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = workspace 
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end

wait()

Workspace["LeftArm"].Parent = game.Players.LocalPlayer.Character

game.Players.LocalPlayer.Character["LeftArm"].Name = "Familiar Left Arm"

w = Instance.new("Weld", game.Players.LocalPlayer.Character["Left Arm"])
w.Part0 = game.Players.LocalPlayer.Character["Left Arm"]
w.Part1 = o2
w.C0 = CFrame.new(0, 0, 0)*CFrame.Angles(0, 0, 0)
game.Players.LocalPlayer.Character["Left Arm"].Transparency = 0

for i,v in pairs (game.Players.LocalPlayer.Character["Familiar Left Arm"]:GetChildren()) do
	if v.ClassName == "Part" then
	v.CanCollide = false
	v.Anchored = false
	end
end


local runDummyScript = function(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "CompiledModel"
o1 = Instance.new("Model")
o2 = Instance.new("Part")
o3 = Instance.new("SpecialMesh")
o4 = Instance.new("Part")
o5 = Instance.new("Weld")
o6 = Instance.new("Part")
o7 = Instance.new("Weld")
o8 = Instance.new("Part")
o9 = Instance.new("Weld")
o10 = Instance.new("Part")
o11 = Instance.new("Weld")
o1.Name = "LeftLeg"
o1.Parent = mas
o2.Name = "REF"
o2.Parent = o1
o2.Transparency = 1
o2.Position = Vector3.new(111.144409, 1.18000603, -60.6271744)
o2.Rotation = Vector3.new(180, 0.0199999996, -180)
o2.CanCollide = false
o2.FormFactor = Enum.FormFactor.Symmetric
o2.Size = Vector3.new(1, 2, 1)
o2.CFrame = CFrame.new(111.144409, 1.18000603, -60.6271744, -0.99999994, 1.23944917e-22, 0.000331714633, 1.23908515e-22, 1, -1.09738441e-22, -0.000331714633, -1.09697344e-22, -0.99999994)
o2.BottomSurface = Enum.SurfaceType.Smooth
o2.TopSurface = Enum.SurfaceType.Smooth
o2.Position = Vector3.new(111.144409, 1.18000603, -60.6271744)
o3.Parent = o2
o3.MeshId = "rbxasset://fonts/leftLeg.mesh"
o3.MeshType = Enum.MeshType.FileMesh
o4.Parent = o1
o4.Material = Enum.Material.Metal
o4.BrickColor = BrickColor.new("Really black")
o4.Position = Vector3.new(111.180069, 1.54791903, -60.6299782)
o4.Size = Vector3.new(1.11999989, 1.5, 1.01999998)
o4.CFrame = CFrame.new(111.180069, 1.54791903, -60.6299782, 1, 1.19715805e-29, 0, 1.19715805e-29, 1, -1.26217745e-29, 0, -1.26217745e-29, 1)
o4.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o4.Position = Vector3.new(111.180069, 1.54791903, -60.6299782)
o5.Name = "Joint"
o5.Parent = o4
o5.C0 = CFrame.new(-0.03565979, -0.367913008, 0.00280380249, -0.99999994, 1.23944917e-22, 0.000331714633, 1.23908515e-22, 1, -1.09738441e-22, -0.000331714633, -1.09697344e-22, -0.99999994)
o5.Part0 = o4
o5.Part1 = o2
o6.Name = "Boot Base"
o6.Parent = o1
o6.Material = Enum.Material.Metal
o6.BrickColor = BrickColor.new("Really black")
o6.Position = Vector3.new(111.150185, 0.698450983, -60.6562157)
o6.Rotation = Vector3.new(-180, -0.870000005, -180)
o6.FormFactor = Enum.FormFactor.Custom
o6.Size = Vector3.new(1.06147552, 0.620573759, 1.07442629)
o6.CFrame = CFrame.new(111.150185, 0.698450983, -60.6562157, -0.999885976, 1.19715805e-29, -0.0151030002, -1.77493704e-30, 1, 1.26217745e-29, 0.0151030002, -1.26217745e-29, -0.999885976)
o6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o6.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o6.Position = Vector3.new(111.150185, 0.698450983, -60.6562157)
o7.Name = "Joint"
o7.Parent = o6
o7.C0 = CFrame.new(0.00621032715, 0.481555045, -0.0289497375, 0.99988091, -1.2558754e-22, -0.0154346758, 1.23908515e-22, 1, -1.09738441e-22, 0.0154346758, 1.078129e-22, 0.99988091)
o7.Part0 = o6
o7.Part1 = o2
o8.Name = "Boot Sole"
o8.Parent = o1
o8.Material = Enum.Material.Metal
o8.BrickColor = BrickColor.new("Really black")
o8.Position = Vector3.new(111.145325, 0.282176018, -60.6376762)
o8.Rotation = Vector3.new(-180, -0.870000005, -180)
o8.FormFactor = Enum.FormFactor.Custom
o8.Size = Vector3.new(1.07147539, 0.25999999, 1.11147547)
o8.CFrame = CFrame.new(111.145325, 0.282176018, -60.6376762, -0.999885976, 1.19715805e-29, -0.0151030002, -1.77493704e-30, 1, 1.26217745e-29, 0.0151030002, -1.26217745e-29, -0.999885976)
o8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o8.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o8.Position = Vector3.new(111.145325, 0.282176018, -60.6376762)
o9.Name = "Joint"
o9.Parent = o8
o9.C0 = CFrame.new(0.00107574463, 0.897830009, -0.0104866028, 0.99988091, -1.2558754e-22, -0.0154346758, 1.23908515e-22, 1, -1.09738441e-22, 0.0154346758, 1.078129e-22, 0.99988091)
o9.Part0 = o8
o9.Part1 = o2
o10.Name = "Boot Top"
o10.Parent = o1
o10.Material = Enum.Material.Metal
o10.BrickColor = BrickColor.new("Really black")
o10.Position = Vector3.new(111.155304, 0.943893015, -60.6423798)
o10.Rotation = Vector3.new(-180, -0.870000005, -180)
o10.FormFactor = Enum.FormFactor.Custom
o10.Size = Vector3.new(1.11000001, 0.314918011, 1.13926232)
o10.CFrame = CFrame.new(111.155304, 0.943893015, -60.6423798, -0.999885976, 1.19715805e-29, -0.0151030002, -1.77493704e-30, 1, 1.26217745e-29, 0.0151030002, -1.26217745e-29, -0.999885976)
o10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o10.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o10.Position = Vector3.new(111.155304, 0.943893015, -60.6423798)
o11.Name = "Joint"
o11.Parent = o10
o11.C0 = CFrame.new(0.0111236572, 0.236113012, -0.0150375366, 0.99988091, -1.2558754e-22, -0.0154346758, 1.23908515e-22, 1, -1.09738441e-22, 0.0154346758, 1.078129e-22, 0.99988091)
o11.Part0 = o10
o11.Part1 = o2
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = workspace 
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end

wait()

Workspace["LeftLeg"].Parent = game.Players.LocalPlayer.Character

game.Players.LocalPlayer.Character["LeftLeg"].Name = "Familiar Left Leg"

w = Instance.new("Weld", game.Players.LocalPlayer.Character["Left Leg"])
w.Part0 = game.Players.LocalPlayer.Character["Left Leg"]
w.Part1 = o2
w.C0 = CFrame.new(0, 0, 0)*CFrame.Angles(0, 0, 0)
game.Players.LocalPlayer.Character["Left Leg"].Transparency = 0

for i,v in pairs (game.Players.LocalPlayer.Character["Familiar Left Leg"]:GetChildren()) do
	if v.ClassName == "Part" then
	v.CanCollide = false
	v.Anchored = false
	end
end


local runDummyScript = function(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "CompiledModel"
o1 = Instance.new("Model")
o2 = Instance.new("Part")
o3 = Instance.new("SpecialMesh")
o4 = Instance.new("Part")
o5 = Instance.new("Weld")
o6 = Instance.new("Part")
o7 = Instance.new("Weld")
o8 = Instance.new("Part")
o9 = Instance.new("Weld")
o10 = Instance.new("Part")
o11 = Instance.new("Weld")
o1.Name = "RightLeg"
o1.Parent = mas
o2.Name = "REF"
o2.Parent = o1
o2.Transparency = 1
o2.Position = Vector3.new(110.144409, 1.18000603, -60.6271667)
o2.Rotation = Vector3.new(180, 0.0199999996, -180)
o2.CanCollide = false
o2.FormFactor = Enum.FormFactor.Symmetric
o2.Size = Vector3.new(1, 2, 1)
o2.CFrame = CFrame.new(110.144409, 1.18000603, -60.6271667, -0.99999994, 1.23944917e-22, 0.000331714633, 1.23908515e-22, 1, -1.09738441e-22, -0.000331714633, -1.09697344e-22, -0.99999994)
o2.BottomSurface = Enum.SurfaceType.Smooth
o2.TopSurface = Enum.SurfaceType.Smooth
o2.Position = Vector3.new(110.144409, 1.18000603, -60.6271667)
o3.Parent = o2
o3.MeshId = "rbxasset://fonts/leftarm.mesh"
o3.MeshType = Enum.MeshType.FileMesh
o4.Parent = o1
o4.Material = Enum.Material.Metal
o4.BrickColor = BrickColor.new("Really black")
o4.Position = Vector3.new(110.140076, 1.53790605, -60.6299782)
o4.Size = Vector3.new(1.03999984, 1.5, 1.01999998)
o4.CFrame = CFrame.new(110.140076, 1.53790605, -60.6299782, 1, 1.19715805e-29, 0, 1.19715805e-29, 1, -1.26217745e-29, 0, -1.26217745e-29, 1)
o4.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o4.Position = Vector3.new(110.140076, 1.53790605, -60.6299782)
o5.Name = "Joint"
o5.Parent = o4
o5.C0 = CFrame.new(0.00433349609, -0.357900023, 0.00281143188, -0.99999994, 1.23944917e-22, 0.000331714633, 1.23908515e-22, 1, -1.09738441e-22, -0.000331714633, -1.09697344e-22, -0.99999994)
o5.Part0 = o4
o5.Part1 = o2
o6.Name = "Boot Base"
o6.Parent = o1
o6.Material = Enum.Material.Metal
o6.BrickColor = BrickColor.new("Really black")
o6.Position = Vector3.new(110.150185, 0.698450983, -60.6562119)
o6.Rotation = Vector3.new(-180, -0.870000005, -180)
o6.FormFactor = Enum.FormFactor.Custom
o6.Size = Vector3.new(1.06147552, 0.620573759, 1.07442629)
o6.CFrame = CFrame.new(110.150185, 0.698450983, -60.6562119, -0.999885976, 1.19715805e-29, -0.0151030002, -1.77493704e-30, 1, 1.26217745e-29, 0.0151030002, -1.26217745e-29, -0.999885976)
o6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o6.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o6.Position = Vector3.new(110.150185, 0.698450983, -60.6562119)
o7.Name = "Joint"
o7.Parent = o6
o7.C0 = CFrame.new(0.00621032715, 0.481555045, -0.0289535522, 0.99988091, -1.2558754e-22, -0.0154346758, 1.23908515e-22, 1, -1.09738441e-22, 0.0154346758, 1.078129e-22, 0.99988091)
o7.Part0 = o6
o7.Part1 = o2
o8.Name = "Boot Sole"
o8.Parent = o1
o8.Material = Enum.Material.Metal
o8.BrickColor = BrickColor.new("Really black")
o8.Position = Vector3.new(110.145325, 0.282176018, -60.6376724)
o8.Rotation = Vector3.new(-180, -0.870000005, -180)
o8.FormFactor = Enum.FormFactor.Custom
o8.Size = Vector3.new(1.07147539, 0.25999999, 1.11147547)
o8.CFrame = CFrame.new(110.145325, 0.282176018, -60.6376724, -0.999885976, 1.19715805e-29, -0.0151030002, -1.77493704e-30, 1, 1.26217745e-29, 0.0151030002, -1.26217745e-29, -0.999885976)
o8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o8.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o8.Position = Vector3.new(110.145325, 0.282176018, -60.6376724)
o9.Name = "Joint"
o9.Parent = o8
o9.C0 = CFrame.new(0.00107574463, 0.897830009, -0.0104904175, 0.99988091, -1.2558754e-22, -0.0154346758, 1.23908515e-22, 1, -1.09738441e-22, 0.0154346758, 1.078129e-22, 0.99988091)
o9.Part0 = o8
o9.Part1 = o2
o10.Name = "Boot Top"
o10.Parent = o1
o10.Material = Enum.Material.Metal
o10.BrickColor = BrickColor.new("Really black")
o10.Position = Vector3.new(110.155304, 0.943893015, -60.6423759)
o10.Rotation = Vector3.new(-180, -0.870000005, -180)
o10.FormFactor = Enum.FormFactor.Custom
o10.Size = Vector3.new(1.11000001, 0.314918011, 1.13926232)
o10.CFrame = CFrame.new(110.155304, 0.943893015, -60.6423759, -0.999885976, 1.19715805e-29, -0.0151030002, -1.77493704e-30, 1, 1.26217745e-29, 0.0151030002, -1.26217745e-29, -0.999885976)
o10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o10.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o10.Position = Vector3.new(110.155304, 0.943893015, -60.6423759)
o11.Name = "Joint"
o11.Parent = o10
o11.C0 = CFrame.new(0.0111236572, 0.236113012, -0.0150413513, 0.99988091, -1.2558754e-22, -0.0154346758, 1.23908515e-22, 1, -1.09738441e-22, 0.0154346758, 1.078129e-22, 0.99988091)
o11.Part0 = o10
o11.Part1 = o2
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = workspace 
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end

wait()

Workspace["RightLeg"].Parent = game.Players.LocalPlayer.Character

game.Players.LocalPlayer.Character["RightLeg"].Name = "Familiar Right Leg"

w = Instance.new("Weld", game.Players.LocalPlayer.Character["Right Leg"])
w.Part0 = game.Players.LocalPlayer.Character["Right Leg"]
w.Part1 = o2
w.C0 = CFrame.new(0, 0, 0)*CFrame.Angles(0, 0, 0)
game.Players.LocalPlayer.Character["Right Leg"].Transparency = 0

for i,v in pairs (game.Players.LocalPlayer.Character["Familiar Right Leg"]:GetChildren()) do
	if v.ClassName == "Part" then
	v.CanCollide = false
	v.Anchored = false
	end
end

local runDummyScript = function(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "CompiledModel"
o1 = Instance.new("Model")
o2 = Instance.new("Part")
o3 = Instance.new("SpecialMesh")
o4 = Instance.new("WedgePart")
o5 = Instance.new("Weld")
o6 = Instance.new("Part")
o7 = Instance.new("Weld")
o8 = Instance.new("WedgePart")
o9 = Instance.new("Weld")
o10 = Instance.new("Part")
o11 = Instance.new("SpecialMesh")
o12 = Instance.new("Weld")
o13 = Instance.new("Part")
o14 = Instance.new("Weld")
o15 = Instance.new("Part")
o16 = Instance.new("SpecialMesh")
o17 = Instance.new("Weld")
o18 = Instance.new("Part")
o19 = Instance.new("Weld")
o20 = Instance.new("Part")
o21 = Instance.new("SpecialMesh")
o22 = Instance.new("Weld")
o23 = Instance.new("Part")
o24 = Instance.new("BlockMesh")
o25 = Instance.new("Weld")
o26 = Instance.new("Part")
o27 = Instance.new("SpecialMesh")
o28 = Instance.new("Weld")
o29 = Instance.new("Part")
o30 = Instance.new("Weld")
o31 = Instance.new("Part")
o32 = Instance.new("Weld")
o33 = Instance.new("Part")
o34 = Instance.new("BlockMesh")
o35 = Instance.new("Weld")
o36 = Instance.new("Part")
o37 = Instance.new("Weld")
o38 = Instance.new("Part")
o39 = Instance.new("Weld")
o40 = Instance.new("Part")
o41 = Instance.new("SpecialMesh")
o42 = Instance.new("Weld")
o43 = Instance.new("Part")
o44 = Instance.new("BlockMesh")
o45 = Instance.new("Weld")
o46 = Instance.new("Part")
o47 = Instance.new("BlockMesh")
o48 = Instance.new("Weld")
o49 = Instance.new("Part")
o50 = Instance.new("BlockMesh")
o51 = Instance.new("Weld")
o52 = Instance.new("WedgePart")
o53 = Instance.new("Weld")
o54 = Instance.new("WedgePart")
o55 = Instance.new("Weld")
o1.Name = "RightArm"
o1.Parent = mas
o2.Name = "REF"
o2.Parent = o1
o2.Transparency = 1
o2.Position = Vector3.new(109.144409, 3.18000388, -60.6271591)
o2.Rotation = Vector3.new(180, 0.0199999996, -180)
o2.CanCollide = false
o2.FormFactor = Enum.FormFactor.Symmetric
o2.Size = Vector3.new(1, 2, 1)
o2.CFrame = CFrame.new(109.144409, 3.18000388, -60.6271591, -0.99999994, 1.23944917e-22, 0.000331714633, 1.23908515e-22, 1, -1.09738441e-22, -0.000331714633, -1.09697344e-22, -0.99999994)
o2.BottomSurface = Enum.SurfaceType.Smooth
o2.TopSurface = Enum.SurfaceType.Smooth
o2.Position = Vector3.new(109.144409, 3.18000388, -60.6271591)
o3.Parent = o2
o3.MeshId = "rbxasset://fonts/leftarm.mesh"
o3.MeshType = Enum.MeshType.FileMesh
o4.Parent = o1
o4.Material = Enum.Material.SmoothPlastic
o4.BrickColor = BrickColor.new("Dark stone grey")
o4.Position = Vector3.new(108.650101, 2.64661002, -60.3924141)
o4.Rotation = Vector3.new(-90, 0, -180)
o4.Size = Vector3.new(0.200000003, 0.478077561, 0.42348215)
o4.CFrame = CFrame.new(108.650101, 2.64661002, -60.3924141, -1, 0, 1.19715805e-29, -1.19715805e-29, -1.26217745e-29, 1, 0, 1, -1.26217745e-29)
o4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o4.Color = Color3.new(0.388235, 0.372549, 0.384314)
o4.Position = Vector3.new(108.650101, 2.64661002, -60.3924141)
o5.Name = "Joint"
o5.Parent = o4
o5.C0 = CFrame.new(-0.494308472, -0.234745026, 0.53339386, 0.99999994, -1.23944917e-22, -0.000331714633, -0.000331714633, -1.09697344e-22, -0.99999994, 1.23908515e-22, 1, -1.09738441e-22)
o5.Part0 = o4
o5.Part1 = o2
o6.Parent = o1
o6.Material = Enum.Material.SmoothPlastic
o6.BrickColor = BrickColor.new("Really black")
o6.Position = Vector3.new(108.940475, 3.05354095, -60.609993)
o6.Size = Vector3.new(0.7813586, 0.493000001, 1.07901871)
o6.CFrame = CFrame.new(108.940475, 3.05354095, -60.609993, 1, 1.19715805e-29, 0, 1.19715805e-29, 1, -1.26217745e-29, 0, -1.26217745e-29, 1)
o6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o6.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o6.Position = Vector3.new(108.940475, 3.05354095, -60.609993)
o7.Name = "Joint"
o7.Parent = o6
o7.C0 = CFrame.new(0.203933716, 0.126462936, -0.0171661377, -0.99999994, 1.23944917e-22, 0.000331714633, 1.23908515e-22, 1, -1.09738441e-22, -0.000331714633, -1.09697344e-22, -0.99999994)
o7.Part0 = o6
o7.Part1 = o2
o8.Parent = o1
o8.Material = Enum.Material.SmoothPlastic
o8.BrickColor = BrickColor.new("Dark stone grey")
o8.Position = Vector3.new(109.427994, 2.28999829, -60.902565)
o8.Rotation = Vector3.new(-90, -90, 0)
o8.Size = Vector3.new(0.200000003, 0.528077543, 0.200000003)
o8.CFrame = CFrame.new(109.427994, 2.28999829, -60.902565, 4.90628231e-08, 2.98023224e-08, -1, 1, -4.01892883e-08, 2.69629474e-08, -4.01892812e-08, -1, 2.98023224e-08)
o8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o8.Color = Color3.new(0.388235, 0.372549, 0.384314)
o8.Position = Vector3.new(109.427994, 2.28999829, -60.902565)
o9.Name = "Joint"
o9.Parent = o8
o9.C0 = CFrame.new(0.890005589, -0.275405884, 0.283584595, -4.90494898e-08, 1, 4.02055562e-08, 0.000331684831, -4.01892883e-08, 0.99999994, 0.99999994, 2.69629474e-08, -0.000331744435)
o9.Part0 = o8
o9.Part1 = o2
o10.Parent = o1
o10.Material = Enum.Material.SmoothPlastic
o10.BrickColor = BrickColor.new("Really black")
o10.Position = Vector3.new(108.657578, 2.32146406, -61.1399918)
o10.Rotation = Vector3.new(-90, 0, 90)
o10.CanCollide = false
o10.Shape = Enum.PartType.Cylinder
o10.Size = Vector3.new(0.200000003, 0.200000003, 0.278077513)
o10.CFrame = CFrame.new(108.657578, 2.32146406, -61.1399918, 0, -1, 1.19715805e-29, 1.26217745e-29, -1.19715805e-29, 1, -1, 0, -1.26217745e-29)
o10.BottomSurface = Enum.SurfaceType.Smooth
o10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o10.TopSurface = Enum.SurfaceType.Smooth
o10.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o10.Position = Vector3.new(108.657578, 2.32146406, -61.1399918)
o11.Parent = o10
o11.Scale = Vector3.new(0.278077543, 0.945463777, 1)
o11.MeshType = Enum.MeshType.Cylinder
o12.Name = "Joint"
o12.Parent = o10
o12.C0 = CFrame.new(-0.512832642, -0.486831665, 0.85853982, 0.000331714633, 1.09697344e-22, 0.99999994, 0.99999994, -1.23944917e-22, -0.000331714633, 1.23908515e-22, 1, -1.09738441e-22)
o12.Part0 = o10
o12.Part1 = o2
o13.Parent = o1
o13.Material = Enum.Material.Neon
o13.BrickColor = BrickColor.new("Bright blue")
o13.Position = Vector3.new(108.610107, 3.47503805, -60.8999863)
o13.Size = Vector3.new(0.200000003, 0.529999971, 0.200000003)
o13.CFrame = CFrame.new(108.610107, 3.47503805, -60.8999863, 1, 1.19715805e-29, 0, 1.19715805e-29, 1, -1.26217745e-29, 0, -1.26217745e-29, 1)
o13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o13.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o13.Position = Vector3.new(108.610107, 3.47503805, -60.8999863)
o14.Name = "Joint"
o14.Parent = o13
o14.C0 = CFrame.new(0.534301758, -0.29503417, 0.272827148, -0.99999994, 1.23944917e-22, 0.000331714633, 1.23908515e-22, 1, -1.09738441e-22, -0.000331714633, -1.09697344e-22, -0.99999994)
o14.Part0 = o13
o14.Part1 = o2
o15.Parent = o1
o15.Material = Enum.Material.SmoothPlastic
o15.BrickColor = BrickColor.new("Really black")
o15.Position = Vector3.new(108.657578, 3.05146408, -61.1299973)
o15.Rotation = Vector3.new(-90, 0, 90)
o15.CanCollide = false
o15.Shape = Enum.PartType.Cylinder
o15.Size = Vector3.new(0.200000003, 0.200000003, 0.278077513)
o15.CFrame = CFrame.new(108.657578, 3.05146408, -61.1299973, 0, -1, 1.19715805e-29, 1.26217745e-29, -1.19715805e-29, 1, -1, 0, -1.26217745e-29)
o15.BottomSurface = Enum.SurfaceType.Smooth
o15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o15.TopSurface = Enum.SurfaceType.Smooth
o15.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o15.Position = Vector3.new(108.657578, 3.05146408, -61.1299973)
o16.Parent = o15
o16.Scale = Vector3.new(0.278077543, 0.945463777, 1)
o16.MeshType = Enum.MeshType.Cylinder
o17.Name = "Joint"
o17.Parent = o15
o17.C0 = CFrame.new(-0.502838135, -0.486831665, 0.128539801, 0.000331714633, 1.09697344e-22, 0.99999994, 0.99999994, -1.23944917e-22, -0.000331714633, 1.23908515e-22, 1, -1.09738441e-22)
o17.Part0 = o15
o17.Part1 = o2
o18.Parent = o1
o18.Material = Enum.Material.SmoothPlastic
o18.BrickColor = BrickColor.new("Really black")
o18.Position = Vector3.new(108.620102, 3.47503805, -60.609993)
o18.Size = Vector3.new(0.200000003, 0.529999971, 1.16000009)
o18.CFrame = CFrame.new(108.620102, 3.47503805, -60.609993, 1, 1.19715805e-29, 0, 1.19715805e-29, 1, -1.26217745e-29, 0, -1.26217745e-29, 1)
o18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o18.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o18.Position = Vector3.new(108.620102, 3.47503805, -60.609993)
o19.Name = "Joint"
o19.Parent = o18
o19.C0 = CFrame.new(0.524307251, -0.29503417, -0.0171661377, -0.99999994, 1.23944917e-22, 0.000331714633, 1.23908515e-22, 1, -1.09738441e-22, -0.000331714633, -1.09697344e-22, -0.99999994)
o19.Part0 = o18
o19.Part1 = o2
o20.Parent = o1
o20.Material = Enum.Material.SmoothPlastic
o20.BrickColor = BrickColor.new("Really black")
o20.Position = Vector3.new(108.657578, 3.61146402, -60.0499954)
o20.Rotation = Vector3.new(-90, 0, 90)
o20.CanCollide = false
o20.Shape = Enum.PartType.Cylinder
o20.Size = Vector3.new(0.200000003, 0.200000003, 0.278077513)
o20.CFrame = CFrame.new(108.657578, 3.61146402, -60.0499954, 0, -1, 1.19715805e-29, 1.26217745e-29, -1.19715805e-29, 1, -1, 0, -1.26217745e-29)
o20.BottomSurface = Enum.SurfaceType.Smooth
o20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o20.TopSurface = Enum.SurfaceType.Smooth
o20.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o20.Position = Vector3.new(108.657578, 3.61146402, -60.0499954)
o21.Parent = o20
o21.Scale = Vector3.new(0.278077543, 0.945463777, 1)
o21.MeshType = Enum.MeshType.Cylinder
o22.Name = "Joint"
o22.Parent = o20
o22.C0 = CFrame.new(0.577163696, -0.486831665, -0.431460142, 0.000331714633, 1.09697344e-22, 0.99999994, 0.99999994, -1.23944917e-22, -0.000331714633, 1.23908515e-22, 1, -1.09738441e-22)
o22.Part0 = o20
o22.Part1 = o2
o23.Parent = o1
o23.Material = Enum.Material.SmoothPlastic
o23.BrickColor = BrickColor.new("Really black")
o23.Position = Vector3.new(108.642822, 3.05354095, -60.609993)
o23.CanCollide = false
o23.Size = Vector3.new(0.212500021, 0.493000001, 1.07901895)
o23.CFrame = CFrame.new(108.642822, 3.05354095, -60.609993, 1, 1.19715805e-29, 0, 1.19715805e-29, 1, -1.26217745e-29, 0, -1.26217745e-29, 1)
o23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o23.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o23.Position = Vector3.new(108.642822, 3.05354095, -60.609993)
o24.Parent = o23
o24.Scale = Vector3.new(0.875471771, 1, 1)
o25.Name = "Joint"
o25.Parent = o23
o25.C0 = CFrame.new(0.501586914, 0.126462936, -0.0171661377, -0.99999994, 1.23944917e-22, 0.000331714633, 1.23908515e-22, 1, -1.09738441e-22, -0.000331714633, -1.09697344e-22, -0.99999994)
o25.Part0 = o23
o25.Part1 = o2
o26.Parent = o1
o26.Material = Enum.Material.SmoothPlastic
o26.BrickColor = BrickColor.new("Really black")
o26.Position = Vector3.new(108.657578, 3.05146408, -60.0899887)
o26.Rotation = Vector3.new(-90, 0, 90)
o26.CanCollide = false
o26.Shape = Enum.PartType.Cylinder
o26.Size = Vector3.new(0.200000003, 0.200000003, 0.278077513)
o26.CFrame = CFrame.new(108.657578, 3.05146408, -60.0899887, 0, -1, 1.19715805e-29, 1.26217745e-29, -1.19715805e-29, 1, -1, 0, -1.26217745e-29)
o26.BottomSurface = Enum.SurfaceType.Smooth
o26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o26.TopSurface = Enum.SurfaceType.Smooth
o26.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o26.Position = Vector3.new(108.657578, 3.05146408, -60.0899887)
o27.Parent = o26
o27.Scale = Vector3.new(0.278077543, 0.945463777, 1)
o27.MeshType = Enum.MeshType.Cylinder
o28.Name = "Joint"
o28.Parent = o26
o28.C0 = CFrame.new(0.53717041, -0.486831665, 0.128539801, 0.000331714633, 1.09697344e-22, 0.99999994, 0.99999994, -1.23944917e-22, -0.000331714633, 1.23908515e-22, 1, -1.09738441e-22)
o28.Part0 = o26
o28.Part1 = o2
o29.Parent = o1
o29.Material = Enum.Material.SmoothPlastic
o29.BrickColor = BrickColor.new("Really black")
o29.Position = Vector3.new(109.085098, 3.32595992, -60.6099548)
o29.Rotation = Vector3.new(0, 90, 0)
o29.FormFactor = Enum.FormFactor.Custom
o29.Size = Vector3.new(1.03999996, 1.88999999, 1.04999995)
o29.CFrame = CFrame.new(109.085098, 3.32595992, -60.6099548, 0, 1.19715805e-29, 1, 1.26217745e-29, 1, 1.19715805e-29, -1, -1.26217745e-29, 0)
o29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o29.BottomSurface = Enum.SurfaceType.Smooth
o29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o29.TopSurface = Enum.SurfaceType.Smooth
o29.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o29.Position = Vector3.new(109.085098, 3.32595992, -60.6099548)
o30.Name = "Joint"
o30.Parent = o29
o30.C0 = CFrame.new(0.0172042847, -0.145956039, 0.0593109131, 0.000331714633, 1.09697344e-22, 0.99999994, 1.23908515e-22, 1, -1.09738441e-22, -0.99999994, 1.23944917e-22, 0.000331714633)
o30.Part0 = o29
o30.Part1 = o2
o31.Parent = o1
o31.Material = Enum.Material.Neon
o31.BrickColor = BrickColor.new("Bright blue")
o31.Position = Vector3.new(108.610107, 3.47503805, -60.2999802)
o31.Size = Vector3.new(0.200000003, 0.529999971, 0.200000003)
o31.CFrame = CFrame.new(108.610107, 3.47503805, -60.2999802, 1, 1.19715805e-29, 0, 1.19715805e-29, 1, -1.26217745e-29, 0, -1.26217745e-29, 1)
o31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o31.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o31.Color = Color3.new(0.0509804, 0.411765, 0.67451)
o31.Position = Vector3.new(108.610107, 3.47503805, -60.2999802)
o32.Name = "Joint"
o32.Parent = o31
o32.C0 = CFrame.new(0.534301758, -0.29503417, -0.327178955, -0.99999994, 1.23944917e-22, 0.000331714633, 1.23908515e-22, 1, -1.09738441e-22, -0.000331714633, -1.09697344e-22, -0.99999994)
o32.Part0 = o31
o32.Part1 = o2
o33.Parent = o1
o33.Material = Enum.Material.SmoothPlastic
o33.BrickColor = BrickColor.new("Really black")
o33.Position = Vector3.new(108.642822, 2.79854107, -61.0494919)
o33.CanCollide = false
o33.Size = Vector3.new(0.212500021, 1.00300002, 0.200000003)
o33.CFrame = CFrame.new(108.642822, 2.79854107, -61.0494919, 1, 1.19715805e-29, 0, 1.19715805e-29, 1, -1.26217745e-29, 0, -1.26217745e-29, 1)
o33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o33.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o33.Position = Vector3.new(108.642822, 2.79854107, -61.0494919)
o34.Parent = o33
o34.Scale = Vector3.new(0.875471771, 1, 1)
o35.Name = "Joint"
o35.Parent = o33
o35.C0 = CFrame.new(0.501586914, 0.381462812, 0.422332764, -0.99999994, 1.23944917e-22, 0.000331714633, 1.23908515e-22, 1, -1.09738441e-22, -0.000331714633, -1.09697344e-22, -0.99999994)
o35.Part0 = o33
o35.Part1 = o2
o36.Parent = o1
o36.Material = Enum.Material.SmoothPlastic
o36.BrickColor = BrickColor.new("Really black")
o36.Position = Vector3.new(108.945892, 2.28999805, -60.6218491)
o36.Size = Vector3.new(0.771358609, 0.200000003, 1.07901871)
o36.CFrame = CFrame.new(108.945892, 2.28999805, -60.6218491, 1, 1.19715805e-29, 0, 1.19715805e-29, 1, -1.26217745e-29, 0, -1.26217745e-29, 1)
o36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o36.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o36.Position = Vector3.new(108.945892, 2.28999805, -60.6218491)
o37.Name = "Joint"
o37.Parent = o36
o37.C0 = CFrame.new(0.198516846, 0.890005827, -0.00531005859, -0.99999994, 1.23944917e-22, 0.000331714633, 1.23908515e-22, 1, -1.09738441e-22, -0.000331714633, -1.09697344e-22, -0.99999994)
o37.Part0 = o36
o37.Part1 = o2
o38.Parent = o1
o38.Material = Enum.Material.SmoothPlastic
o38.BrickColor = BrickColor.new("Really black")
o38.Position = Vector3.new(108.940109, 3.47503805, -60.609993)
o38.Size = Vector3.new(0.839999974, 0.529999971, 1.15999997)
o38.CFrame = CFrame.new(108.940109, 3.47503805, -60.609993, 1, 1.19715805e-29, 0, 1.19715805e-29, 1, -1.26217745e-29, 0, -1.26217745e-29, 1)
o38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o38.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o38.Position = Vector3.new(108.940109, 3.47503805, -60.609993)
o39.Name = "Joint"
o39.Parent = o38
o39.C0 = CFrame.new(0.204299927, -0.29503417, -0.0171661377, -0.99999994, 1.23944917e-22, 0.000331714633, 1.23908515e-22, 1, -1.09738441e-22, -0.000331714633, -1.09697344e-22, -0.99999994)
o39.Part0 = o38
o39.Part1 = o2
o40.Parent = o1
o40.Material = Enum.Material.SmoothPlastic
o40.BrickColor = BrickColor.new("Really black")
o40.Position = Vector3.new(108.657578, 3.61146402, -61.1699905)
o40.Rotation = Vector3.new(-90, 0, 90)
o40.CanCollide = false
o40.Shape = Enum.PartType.Cylinder
o40.Size = Vector3.new(0.200000003, 0.200000003, 0.278077513)
o40.CFrame = CFrame.new(108.657578, 3.61146402, -61.1699905, 0, -1, 1.19715805e-29, 1.26217745e-29, -1.19715805e-29, 1, -1, 0, -1.26217745e-29)
o40.BottomSurface = Enum.SurfaceType.Smooth
o40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o40.TopSurface = Enum.SurfaceType.Smooth
o40.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o40.Position = Vector3.new(108.657578, 3.61146402, -61.1699905)
o41.Parent = o40
o41.Scale = Vector3.new(0.278077543, 0.945463777, 1)
o41.MeshType = Enum.MeshType.Cylinder
o42.Name = "Joint"
o42.Parent = o40
o42.C0 = CFrame.new(-0.542831421, -0.486831665, -0.431460142, 0.000331714633, 1.09697344e-22, 0.99999994, 0.99999994, -1.23944917e-22, -0.000331714633, 1.23908515e-22, 1, -1.09738441e-22)
o42.Part0 = o40
o42.Part1 = o2
o43.Parent = o1
o43.Material = Enum.Material.SmoothPlastic
o43.BrickColor = BrickColor.new("Really black")
o43.Position = Vector3.new(109.222839, 2.79854107, -61.0494919)
o43.CanCollide = false
o43.Size = Vector3.new(0.212500021, 1.00300002, 0.200000003)
o43.CFrame = CFrame.new(109.222839, 2.79854107, -61.0494919, 1, 1.19715805e-29, 0, 1.19715805e-29, 1, -1.26217745e-29, 0, -1.26217745e-29, 1)
o43.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o43.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o43.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o43.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o43.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o43.Position = Vector3.new(109.222839, 2.79854107, -61.0494919)
o44.Parent = o43
o44.Scale = Vector3.new(0.875471771, 1, 1)
o45.Name = "Joint"
o45.Parent = o43
o45.C0 = CFrame.new(-0.0784301758, 0.381462812, 0.422332764, -0.99999994, 1.23944917e-22, 0.000331714633, 1.23908515e-22, 1, -1.09738441e-22, -0.000331714633, -1.09697344e-22, -0.99999994)
o45.Part0 = o43
o45.Part1 = o2
o46.Parent = o1
o46.Material = Enum.Material.SmoothPlastic
o46.BrickColor = BrickColor.new("Really black")
o46.Position = Vector3.new(108.642822, 2.79354095, -60.1895142)
o46.CanCollide = false
o46.Size = Vector3.new(0.212500021, 1.01300001, 0.200000003)
o46.CFrame = CFrame.new(108.642822, 2.79354095, -60.1895142, 1, 1.19715805e-29, 0, 1.19715805e-29, 1, -1.26217745e-29, 0, -1.26217745e-29, 1)
o46.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o46.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o46.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o46.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o46.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o46.Position = Vector3.new(108.642822, 2.79354095, -60.1895142)
o47.Parent = o46
o47.Scale = Vector3.new(0.875471771, 1, 1)
o48.Name = "Joint"
o48.Parent = o46
o48.C0 = CFrame.new(0.501586914, 0.386462927, -0.437644958, -0.99999994, 1.23944917e-22, 0.000331714633, 1.23908515e-22, 1, -1.09738441e-22, -0.000331714633, -1.09697344e-22, -0.99999994)
o48.Part0 = o46
o48.Part1 = o2
o49.Parent = o1
o49.Material = Enum.Material.SmoothPlastic
o49.BrickColor = BrickColor.new("Really black")
o49.Position = Vector3.new(109.222839, 2.79354095, -60.1895142)
o49.CanCollide = false
o49.Size = Vector3.new(0.212500021, 1.01300001, 0.200000003)
o49.CFrame = CFrame.new(109.222839, 2.79354095, -60.1895142, 1, 1.19715805e-29, 0, 1.19715805e-29, 1, -1.26217745e-29, 0, -1.26217745e-29, 1)
o49.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o49.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o49.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o49.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o49.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o49.Position = Vector3.new(109.222839, 2.79354095, -60.1895142)
o50.Parent = o49
o50.Scale = Vector3.new(0.875471771, 1, 1)
o51.Name = "Joint"
o51.Parent = o49
o51.C0 = CFrame.new(-0.0784301758, 0.386462927, -0.437644958, -0.99999994, 1.23944917e-22, 0.000331714633, 1.23908515e-22, 1, -1.09738441e-22, -0.000331714633, -1.09697344e-22, -0.99999994)
o51.Part0 = o49
o51.Part1 = o2
o52.Parent = o1
o52.Material = Enum.Material.SmoothPlastic
o52.BrickColor = BrickColor.new("Dark stone grey")
o52.Position = Vector3.new(108.650101, 2.64661002, -60.8574295)
o52.Rotation = Vector3.new(-90, 0, 0)
o52.Size = Vector3.new(0.200000003, 0.46807757, 0.42348215)
o52.CFrame = CFrame.new(108.650101, 2.64661002, -60.8574295, 1, 0, 1.19715805e-29, 1.19715805e-29, 1.26217745e-29, 1, 0, -1, -1.26217745e-29)
o52.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o52.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o52.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o52.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o52.Color = Color3.new(0.388235, 0.372549, 0.384314)
o52.Position = Vector3.new(108.650101, 2.64661002, -60.8574295)
o53.Name = "Joint"
o53.Parent = o52
o53.C0 = CFrame.new(0.494308472, -0.230270386, 0.53339386, -0.99999994, 1.23944917e-22, 0.000331714633, 0.000331714633, 1.09697344e-22, 0.99999994, 1.23908515e-22, 1, -1.09738441e-22)
o53.Part0 = o52
o53.Part1 = o2
o54.Parent = o1
o54.Material = Enum.Material.SmoothPlastic
o54.BrickColor = BrickColor.new("Dark stone grey")
o54.Position = Vector3.new(109.427994, 2.28999829, -60.3651505)
o54.Rotation = Vector3.new(90, -90, 0)
o54.Size = Vector3.new(0.200000003, 0.578077555, 0.200000003)
o54.CFrame = CFrame.new(109.427994, 2.28999829, -60.3651505, -4.90628196e-08, 2.98023224e-08, -1, -1, -4.01892883e-08, 2.69629474e-08, -4.01892812e-08, 1, -2.98023224e-08)
o54.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o54.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o54.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o54.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o54.Color = Color3.new(0.388235, 0.372549, 0.384314)
o54.Position = Vector3.new(109.427994, 2.28999829, -60.3651505)
o55.Name = "Joint"
o55.Parent = o54
o55.C0 = CFrame.new(-0.890005589, -0.262008667, 0.283584595, 4.90761494e-08, -1, 4.01730063e-08, -0.000331744435, -4.01892883e-08, -0.99999994, 0.99999994, 2.69629474e-08, -0.000331684831)
o55.Part0 = o54
o55.Part1 = o2
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = workspace 
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end

wait()

Workspace["RightArm"].Parent = game.Players.LocalPlayer.Character

game.Players.LocalPlayer.Character["RightArm"].Name = "Familiar Right Arm"

w = Instance.new("Weld", game.Players.LocalPlayer.Character["Right Arm"])
w.Part0 = game.Players.LocalPlayer.Character["Right Arm"]
w.Part1 = o2
w.C0 = CFrame.new(0, 0, 0)*CFrame.Angles(0, 0, 0)
game.Players.LocalPlayer.Character["Right Arm"].Transparency = 0

for i,v in pairs (game.Players.LocalPlayer.Character["Familiar Right Arm"]:GetChildren()) do
	if v.ClassName == "Part" then
	v.CanCollide = false
	v.Anchored = false
	end
end


local runDummyScript = function(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "CompiledModel"
o1 = Instance.new("Part")
o2 = Instance.new("Weld")
o3 = Instance.new("Part")
o4 = Instance.new("Weld")
o5 = Instance.new("Part")
o6 = Instance.new("Weld")
o7 = Instance.new("Part")
o8 = Instance.new("Weld")
o9 = Instance.new("Part")
o10 = Instance.new("Weld")
o11 = Instance.new("Part")
o12 = Instance.new("Weld")
o13 = Instance.new("Part")
o14 = Instance.new("Weld")
o15 = Instance.new("Part")
o16 = Instance.new("Weld")
o17 = Instance.new("Part")
o18 = Instance.new("SpecialMesh")
o19 = Instance.new("Weld")
o20 = Instance.new("WedgePart")
o21 = Instance.new("Weld")
o22 = Instance.new("WedgePart")
o23 = Instance.new("Weld")
o24 = Instance.new("WedgePart")
o25 = Instance.new("Weld")
o26 = Instance.new("WedgePart")
o27 = Instance.new("Weld")
o28 = Instance.new("WedgePart")
o29 = Instance.new("Weld")
o30 = Instance.new("WedgePart")
o31 = Instance.new("Weld")
o32 = Instance.new("Part")
o33 = Instance.new("SpecialMesh")
o1.Name = "Blade"
o1.Parent = mas
o1.Material = Enum.Material.Metal
o1.BrickColor = BrickColor.new("Fossil")
o1.Position = Vector3.new(98.2693253, 1.1018647, -50.969738)
o1.Rotation = Vector3.new(-86.5400009, -14.1700001, 92.2099991)
o1.CanCollide = false
o1.FormFactor = Enum.FormFactor.Custom
o1.Size = Vector3.new(0.199999988, 6.44999933, 0.449999988)
o1.CFrame = CFrame.new(98.2693253, 1.1018647, -50.969738, -0.0374063104, -0.9688375, -0.244856715, 0.0509620011, -0.24655886, 0.967787027, -0.997999787, 0.0237229597, 0.0585967302)
o1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o1.Color = Color3.new(0.623529, 0.631373, 0.67451)
o1.Position = Vector3.new(98.2693253, 1.1018647, -50.969738)
o2.Name = "Joint"
o2.Parent = o1
o2.C0 = CFrame.new(-1.00187302, -3.81311035, 1.25072861, -0.997999787, 0.0509621762, 0.0374063551, 0.0237229597, -0.24655886, 0.9688375, 0.058596909, 0.967787027, 0.244856715)
o2.Part0 = o1
o2.Part1 = o32
o3.Name = "Handle"
o3.Parent = mas
o3.Material = Enum.Material.Metal
o3.BrickColor = BrickColor.new("Really black")
o3.Position = Vector3.new(101.193436, 1.93511701, -51.0367813)
o3.Rotation = Vector3.new(-86.5400009, -14.1700001, 92.2099991)
o3. Anchored = false
o3.FormFactor = Enum.FormFactor.Custom
o3.Size = Vector3.new(0.25999999, 0.630000114, 0.310000002)
o3.CFrame = CFrame.new(101.193436, 1.93511701, -51.0367813, -0.0374030024, -0.968839228, -0.244850188, 0.0509600081, -0.246552095, 0.967788815, -0.998000145, 0.0237206332, 0.0585938357)
o3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o3.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o3.Position = Vector3.new(101.193436, 1.93511701, -51.0367813)
o4.Name = "Joint"
o4.Parent = o3
o4.C0 = CFrame.new(-1.0018692, -0.773086548, 1.16423416, -0.998000145, 0.0509601831, 0.0374030471, 0.0237206332, -0.246552095, 0.968839228, 0.0585940145, 0.967788815, 0.244850188)
o4.Part0 = o3
o4.Part1 = o32
o5.Name = "Handle"
o5.Parent = mas
o5.Material = Enum.Material.Metal
o5.BrickColor = BrickColor.new("Really black")
o5.Position = Vector3.new(102.496597, 2.26651406, -51.0636063)
o5.Rotation = Vector3.new(-86.5400009, -14.1700001, -177.789993)
o5. Anchored = false
o5.FormFactor = Enum.FormFactor.Custom
o5.Shape = Enum.PartType.Cylinder
o5.Size = Vector3.new(2.13999987, 0.230000168, 0.310000002)
o5.CFrame = CFrame.new(102.496597, 2.26651406, -51.0636063, -0.968839228, 0.0374033563, -0.244850144, -0.246552065, -0.0509599186, 0.967788815, 0.0237210058, 0.998000145, 0.0585938357)
o5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o5.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o5.Position = Vector3.new(102.496597, 2.26651406, -51.0636063)
o6.Name = "Joint"
o6.Parent = o5
o6.C0 = CFrame.new(0.571815491, 0.996788025, 1.1641655, 0.0237210058, -0.246552065, 0.968839228, 0.998000145, -0.0509600937, -0.037403401, 0.0585940145, 0.967788815, 0.244850144)
o6.Part0 = o5
o6.Part1 = o32
o7.Name = "Handle"
o7.Parent = mas
o7.Material = Enum.Material.Metal
o7.BrickColor = BrickColor.new("Really black")
o7.Position = Vector3.new(103.242661, 2.456352, -51.0818558)
o7.Rotation = Vector3.new(-86.5400009, -14.1700001, -177.789993)
o7. Anchored = false
o7.FormFactor = Enum.FormFactor.Custom
o7.Shape = Enum.PartType.Cylinder
o7.Size = Vector3.new(0.25, 0.239999995, 0.319999993)
o7.CFrame = CFrame.new(103.242661, 2.456352, -51.0818558, -0.968839228, 0.0374033563, -0.244850144, -0.246552065, -0.0509599186, 0.967788815, 0.0237210058, 0.998000145, 0.0585938357)
o7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o7.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o7.Position = Vector3.new(103.242661, 2.456352, -51.0818558)
o8.Name = "Joint"
o8.Parent = o7
o8.C0 = CFrame.new(1.34187317, 0.996768951, 1.16418648, 0.0237210058, -0.246552065, 0.968839228, 0.998000145, -0.0509600937, -0.037403401, 0.0585940145, 0.967788815, 0.244850144)
o8.Part0 = o7
o8.Part1 = o32
o9.Name = "Handle10"
o9.Parent = mas
o9.Material = Enum.Material.Metal
o9.BrickColor = BrickColor.new("Really black")
o9.Position = Vector3.new(100.658432, 1.96633995, -51.0150528)
o9.Rotation = Vector3.new(-83.4899979, -59.1199989, 94.1800003)
o9. Anchored = false
o9.FormFactor = Enum.FormFactor.Custom
o9.Size = Vector3.new(0.200000003, 0.5, 0.200000003)
o9.CFrame = CFrame.new(100.658432, 1.96633995, -51.0150528, -0.0374030024, -0.511938155, -0.858207703, 0.0509600081, -0.858668268, 0.509992003, -0.998000145, -0.0246590301, 0.0582051426)
o9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o9.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o9.Position = Vector3.new(100.658432, 1.96633995, -51.0150528)
o10.Name = "Joint"
o10.Parent = o9
o10.C0 = CFrame.new(-1.00178528, -1.616436, -0.199737549, -0.998000145, 0.0509601831, 0.0374030471, -0.0246591587, -0.858668268, 0.511938155, 0.0582052693, 0.509992003, 0.858207703)
o10.Part0 = o9
o10.Part1 = o32
o11.Name = "Handle2"
o11.Parent = mas
o11.Material = Enum.Material.Metal
o11.BrickColor = BrickColor.new("Really black")
o11.Position = Vector3.new(101.382919, 1.73613298, -51.0539436)
o11.Rotation = Vector3.new(-86.5400009, -14.1700001, 92.2099991)
o11. Anchored = false
o11.FormFactor = Enum.FormFactor.Custom
o11.Size = Vector3.new(0.25999999, 0.899999976, 0.200000018)
o11.CFrame = CFrame.new(101.382919, 1.73613298, -51.0539436, -0.0374030024, -0.968839228, -0.244850188, 0.0509600081, -0.246552095, 0.967788815, -0.998000145, 0.0237206332, 0.0585938357)
o11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o11.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o11.Position = Vector3.new(101.382919, 1.73613298, -51.0539436)
o12.Name = "Joint"
o12.Parent = o11
o12.C0 = CFrame.new(-1.00177002, -0.638160706, 1.40421295, -0.998000145, 0.0509601831, 0.0374030471, 0.0237206332, -0.246552095, 0.968839228, 0.0585940145, 0.967788815, 0.244850188)
o12.Part0 = o11
o12.Part1 = o32
o13.Name = "Handle3"
o13.Parent = mas
o13.Material = Enum.Material.Metal
o13.BrickColor = BrickColor.new("Really black")
o13.Position = Vector3.new(100.450119, 1.75461495, -51.0180397)
o13.Rotation = Vector3.new(-86.5400009, -14.1700001, 92.2099991)
o13. Anchored = false
o13.CanCollide = false
o13.FormFactor = Enum.FormFactor.Custom
o13.Size = Vector3.new(0.25, 1.10000002, 0.300000012)
o13.CFrame = CFrame.new(100.450119, 1.75461495, -51.0180397, -0.0374030024, -0.968839228, -0.244850188, 0.0509600081, -0.246552095, 0.967788815, -0.998000145, 0.0237206332, 0.0585938357)
o13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o13.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o13.Position = Vector3.new(100.450119, 1.75461495, -51.0180397)
o14.Name = "Joint"
o14.Parent = o13
o14.C0 = CFrame.new(-1.00177002, -1.53818512, 1.15582275, -0.998000145, 0.0509601831, 0.0374030471, 0.0237206332, -0.246552095, 0.968839228, 0.0585940145, 0.967788815, 0.244850188)
o14.Part0 = o13
o14.Part1 = o32
o15.Name = "Handle4"
o15.Parent = mas
o15.Material = Enum.Material.Metal
o15.BrickColor = BrickColor.new("Really black")
o15.Position = Vector3.new(99.3745956, 1.522138, -50.9895859)
o15.Rotation = Vector3.new(-86.5400009, -14.1700001, 92.2099991)
o15. Anchored = false
o15.CanCollide = false
o15.FormFactor = Enum.FormFactor.Custom
o15.Size = Vector3.new(0.25, 1.10000002, 0.200000003)
o15.CFrame = CFrame.new(99.3745956, 1.522138, -50.9895859, -0.0374030024, -0.968839228, -0.244850188, 0.0509600081, -0.246552095, 0.967788815, -0.998000145, 0.0237206332, 0.0585938357)
o15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o15.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o15.Position = Vector3.new(99.3745956, 1.522138, -50.9895859)
o16.Name = "Joint"
o16.Parent = o15
o16.C0 = CFrame.new(-1.00175476, -2.63818359, 1.11580276, -0.998000145, 0.0509601831, 0.0374030471, 0.0237206332, -0.246552095, 0.968839228, 0.0585940145, 0.967788815, 0.244850188)
o16.Part0 = o15
o16.Part1 = o32
o17.Parent = mas
o17.BrickColor = BrickColor.new("Really black")
o17.Position = Vector3.new(103.529999, 2.52386594, -51.0825729)
o17.Rotation = Vector3.new(93.4599991, 14.1700001, 87.7900009)
o17. Anchored = false
o17.FormFactor = Enum.FormFactor.Symmetric
o17.Size = Vector3.new(0.600000024, 0.389999986, 0.310000002)
o17.CFrame = CFrame.new(103.529999, 2.52386594, -51.0825729, 0.0374030024, -0.968839228, 0.244850188, -0.0509600081, -0.246552095, -0.967788815, 0.998000145, 0.0237206332, -0.0585938357)
o17.BottomSurface = Enum.SurfaceType.Smooth
o17.TopSurface = Enum.SurfaceType.Smooth
o17.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o17.Position = Vector3.new(103.529999, 2.52386594, -51.0825729)
o18.Parent = o17
o18.MeshId = "http://www.roblox.com/Asset/?id=9756362"
o18.Scale = Vector3.new(0.300000012, 0.5, 0.300000012)
o18.MeshType = Enum.MeshType.FileMesh
o19.Name = "Joint"
o19.Parent = o17
o19.C0 = CFrame.new(0.990177155, 1.63690948, -1.16924286, 0.998000145, -0.0509601831, -0.0374030471, 0.0237206332, -0.246552095, 0.968839228, -0.0585940145, -0.967788815, -0.244850188)
o19.Part0 = o17
o19.Part1 = o32
o20.Name = "Handle5"
o20.Parent = mas
o20.Material = Enum.Material.Metal
o20.BrickColor = BrickColor.new("Really black")
o20.Position = Vector3.new(101.249954, 2.22195911, -51.0153122)
o20.Rotation = Vector3.new(93.4599991, 14.1700001, -92.2099991)
o20. Anchored = false
o20.FormFactor = Enum.FormFactor.Custom
o20.Size = Vector3.new(0.25, 0.350000024, 0.25)
o20.CFrame = CFrame.new(101.249954, 2.22195911, -51.0153122, -0.0374030024, 0.968839228, 0.244850188, 0.0509600081, 0.246552095, -0.967788815, -0.998000145, -0.0237206332, -0.0585938357)
o20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o20.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o20.Position = Vector3.new(101.249954, 2.22195911, -51.0153122)
o21.Name = "Joint"
o21.Parent = o20
o21.C0 = CFrame.new(-0.992946625, 0.648117065, -0.899215698, -0.998000145, 0.0509601831, 0.0374030471, -0.0237206332, 0.246552095, -0.968839228, -0.0585940145, -0.967788815, -0.244850188)
o21.Part0 = o20
o21.Part1 = o32
o22.Name = "Handle6"
o22.Parent = mas
o22.Material = Enum.Material.Metal
o22.BrickColor = BrickColor.new("Really black")
o22.Position = Vector3.new(100.964066, 2.14921093, -51.0082169)
o22.Rotation = Vector3.new(93.4599991, 14.1700001, 87.7900009)
o22. Anchored = false
o22.FormFactor = Enum.FormFactor.Custom
o22.Size = Vector3.new(0.25, 0.25, 0.25)
o22.CFrame = CFrame.new(100.964066, 2.14921093, -51.0082169, 0.0374030024, -0.968839228, 0.244850188, -0.0509600081, -0.246552095, -0.967788815, 0.998000145, 0.0237206332, -0.0585938357)
o22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o22.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o22.Position = Vector3.new(100.964066, 2.14921093, -51.0082169)
o23.Name = "Joint"
o23.Parent = o22
o23.C0 = CFrame.new(0.992851257, -0.943199158, -0.899204254, 0.998000145, -0.0509601831, -0.0374030471, 0.0237206332, -0.246552095, 0.968839228, -0.0585940145, -0.967788815, -0.244850188)
o23.Part0 = o22
o23.Part1 = o32
o24.Name = "Handle7"
o24.Parent = mas
o24.Material = Enum.Material.Metal
o24.BrickColor = BrickColor.new("Really black")
o24.Position = Vector3.new(100.801941, 1.58773196, -51.0308456)
o24.Rotation = Vector3.new(-86.5400009, -14.1700001, 92.2099991)
o24. Anchored = false
o24.CanCollide = false
o24.FormFactor = Enum.FormFactor.Custom
o24.Size = Vector3.new(0.25, 0.300000072, 0.200000003)
o24.CFrame = CFrame.new(100.801941, 1.58773196, -51.0308456, -0.0374030024, -0.968839228, -0.244850188, 0.0509600081, -0.246552095, 0.967788815, -0.998000145, 0.0237206332, 0.0585938357)
o24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o24.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o24.Position = Vector3.new(100.801941, 1.58773196, -51.0308456)
o25.Name = "Joint"
o25.Parent = o24
o25.C0 = CFrame.new(-0.99288559, -1.23816681, 1.4042263, -0.998000145, 0.0509601831, 0.0374030471, 0.0237206332, -0.246552095, 0.968839228, 0.0585940145, 0.967788815, 0.244850188)
o25.Part0 = o24
o25.Part1 = o32
o26.Name = "Handle8"
o26.Parent = mas
o26.Material = Enum.Material.Metal
o26.BrickColor = BrickColor.new("Really black")
o26.Position = Vector3.new(98.5145874, 1.30442798, -50.9596901)
o26.Rotation = Vector3.new(-86.5400009, -14.1700001, 92.2099991)
o26. Anchored = false
o26.CanCollide = false
o26.FormFactor = Enum.FormFactor.Custom
o26.Size = Vector3.new(0.25, 0.800000072, 0.200000003)
o26.CFrame = CFrame.new(98.5145874, 1.30442798, -50.9596901, -0.0374030024, -0.968839228, -0.244850188, 0.0509600081, -0.246552095, 0.967788815, -0.998000145, 0.0237206332, 0.0585938357)
o26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o26.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o26.Position = Vector3.new(98.5145874, 1.30442798, -50.9596901)
o27.Name = "Joint"
o27.Parent = o26
o27.C0 = CFrame.new(-0.992988586, -3.52578735, 1.1141758, -0.998000145, 0.0509601831, 0.0374030471, 0.0237206332, -0.246552095, 0.968839228, 0.0585940145, 0.967788815, 0.244850188)
o27.Part0 = o26
o27.Part1 = o32
o28.Name = "BladeEnd"
o28.Parent = mas
o28.Material = Enum.Material.Metal
o28.BrickColor = BrickColor.new("Fossil")
o28.Position = Vector3.new(94.6353149, 0.178499788, -50.8718147)
o28.Rotation = Vector3.new(-86.5400009, -13.5500002, 92.1699982)
o28. Anchored = false
o28.CanCollide = false
o28.FormFactor = Enum.FormFactor.Custom
o28.Size = Vector3.new(0.25, 1.09000015, 0.450000018)
o28.CFrame = CFrame.new(94.6353149, 0.178499788, -50.8718147, -0.0368410014, -0.9714849, -0.234221727, 0.0513690002, -0.23591198, 0.970415771, -0.998000026, 0.0237193517, 0.0585954413)
o28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o28.Color = Color3.new(0.623529, 0.631373, 0.67451)
o28.Position = Vector3.new(94.6353149, 0.178499788, -50.8718147)
o29.Name = "Joint"
o29.Parent = o28
o29.C0 = CFrame.new(-0.987804413, -7.55036926, 1.33182144, -0.998000026, 0.0513691753, 0.0368410461, 0.0237193536, -0.23591198, 0.9714849, 0.0585956201, 0.970415771, 0.234221727)
o29.Part0 = o28
o29.Part1 = o32
o30.Name = "Handle9"
o30.Parent = mas
o30.Material = Enum.Material.Metal
o30.BrickColor = BrickColor.new("Really black")
o30.Position = Vector3.new(99.7111816, 1.50592995, -50.994133)
o30.Rotation = Vector3.new(-86.5400009, -14.1700001, 92.2099991)
o30. Anchored = false
o30.CanCollide = false
o30.FormFactor = Enum.FormFactor.Custom
o30.Size = Vector3.new(0.25, 0.5200001, 0.200000003)
o30.CFrame = CFrame.new(99.7111816, 1.50592995, -50.994133, -0.0374030024, -0.968839228, -0.244850188, 0.0509600081, -0.246552095, 0.967788815, -0.998000145, 0.0237206332, 0.0585938357)
o30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o30.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o30.Position = Vector3.new(99.7111816, 1.50592995, -50.994133)
o31.Name = "Joint"
o31.Parent = o30
o31.C0 = CFrame.new(-0.992874146, -2.315979, 1.21416855, -0.998000145, 0.0509601831, 0.0374030471, 0.0237206332, -0.246552095, 0.968839228, 0.0585940145, 0.967788815, 0.244850188)
o31.Part0 = o30
o31.Part1 = o32
o32.Name = "REF"
o32.Parent = mas
o32.Transparency = 1
o32.Position = Vector3.new(101.694839, 3.2014029, -49.9870377)
o32.Rotation = Vector3.new(0, -90, 0)
o32. Anchored = false
o32.CanCollide = false
o32.FormFactor = Enum.FormFactor.Symmetric
o32.Size = Vector3.new(2, 2, 1)
o32.CFrame = CFrame.new(101.694839, 3.2014029, -49.9870377, -4.37113883e-08, 0, -1, 1.74845553e-07, 1, -7.64274186e-15, 1, -1.74845553e-07, -4.37113883e-08)
o32.BottomSurface = Enum.SurfaceType.Smooth
o32.TopSurface = Enum.SurfaceType.Smooth
o32.Position = Vector3.new(101.694839, 3.2014029, -49.9870377)
o33.Parent = o32
o33.MeshId = "rbxasset://fonts/torso.mesh"
o33.MeshType = Enum.MeshType.FileMesh
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = workspace 
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end

wait()

Workspace["Blade"].Parent = game.Players.LocalPlayer.Character

game.Players.LocalPlayer.Character["Blade"].Name = "Blade"

w = Instance.new("Weld", game.Players.LocalPlayer.Character["Torso"])
w.Part0 = game.Players.LocalPlayer.Character["Torso"]
w.Part1 = o32
w.C0 = CFrame.new(0, 0, 0)*CFrame.Angles(0, 0, 0)
game.Players.LocalPlayer.Character["Torso"].Transparency = 0

for i,v in pairs (game.Players.LocalPlayer.Character["Blade"]:GetChildren()) do
	if v.ClassName == "Part" then
	v.CanCollide = false
	v.Anchored = false
	end
end
--
wait(1 / 60)
Ilaoi = { }
local Mouse = Player:GetMouse()
local RootPart = Character.HumanoidRootPart
local RootJoint = RootPart.RootJoint
local attack = false
local delays = false
local play = true
local targetted = nil
local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
local velocity = RootPart.Velocity.y
local sine = 0
local Create = LoadLibrary("RbxUtility").Create
	
CFuncs = {	
	
	["Sound"] = {
		Create = function(id, par, vol, pit) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound"){
					Volume = vol,
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace,
				}
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 6)
			end))
		end;
	};
	

	CreateTemplate = {
	
	};
}


abss = Instance.new("BillboardGui",Character)
abss.Size = UDim2.new(50,0,50,0)
abss.Enabled = false
imgl = Instance.new("ImageLabel",abss)
imgl.Position = UDim2.new(0,0,0,0)
imgl.Size = UDim2.new(1,0,1,0)
imgl.Image = "rbxassetid://103028201"
imgl.BackgroundTransparency = 1
imgl.ImageColor3 = Color3.new(0,0,255)
img2 = Instance.new("ImageLabel",abss)
img2.Position = UDim2.new(0,0,0,0)
img2.Size = UDim2.new(1,0,1,0)
img2.Image = "rbxassetid://103028201"
img2.BackgroundTransparency = 1
img2.ImageColor3 = Color3.new(0,0,255)

function TargetSelect(person)
local dd=coroutine.wrap(function()
if targetted ~= person then
targetted = person
img2.Size = UDim2.new(1,0,1,0)
img2.ImageTransparency = 0
img2.Position = UDim2.new(0,0,0,0)
for i = 0, 2, 0.1 do
swait()
img2.Size = img2.Size + UDim2.new(5,0,5,0)
img2.Position = img2.Position + UDim2.new(-.025,0,-.025,0)
img2.ImageTransparency = img2.ImageTransparency + 0.05
end
end
end)
dd()
end

function LockOn()
if Mouse.Target.Parent ~= Character and Mouse.Target.Parent.Parent ~= Character and Mouse.Target.Parent:FindFirstChild("Humanoid") ~= nil then
TargetSelect(Mouse.Target.Parent)
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=147722098", Character, 1, .8)
end
end


function ofmoosic() -- 2 lazi hoh
delays = true
while wait() and kkk and kkk.Volume >= 0.02 do
	kkk.Volume = kkk.Volume - 0.05
end
wait(0.1)
kkk.Pitch = 0
kkk.PlaybackSpeed = 0
play = false
delays = false
end
function onmoosic()
delays = true
kkk.Pitch = .6
kkk.PlaybackSpeed = .6
while wait() and kkk and kkk.Volume <= 1.5 do
	kkk.Volume = kkk.Volume + 0.05
end
wait(0.1)
play = true
delays = false
end


Mouse.KeyDown:connect(function(k)
	k = k:lower()
	if attack == false and k == 'q' then
	LockOn()
	end
end)

kkk = Instance.new("Sound",Character)
kkk.Volume = 1.5
kkk.PlaybackSpeed = 1
kkk.Pitch = .6
kkk.SoundId = "rbxassetid://"
kkk:Play()
kkk.Name = "a"
kkk.Looped = true



while true do
	swait()
	for i, v in pairs(Character:GetChildren()) do
		if v:IsA("Part") then
			v.Material = "SmoothPlastic"
		elseif v:IsA("Accessory") then
			v:WaitForChild("Handle").Material = "SmoothPlastic"
		end
	end
while true do
swait()
imgl.Rotation = imgl.Rotation + 3
img2.Rotation = img2.Rotation + 3
if targetted ~= nil then
abss.Adornee = targetted:FindFirstChild("Torso") or targetted:FindFirstChild("UpperTorso")
abss.Enabled = true
elseif targetted == nil then
abss.Adornee = nil
abss.Enabled = false
end
while true and imgl.Rotation >= 360 do
imgl.Rotation = 0	
img2.Rotation = 0
end

	if 0 < #Ilaoi then
		for e = 1, #Ilaoi do
			if Ilaoi[e] ~= nil then
				local Thing = Ilaoi[e]
				if Thing ~= nil then
					local Part = Thing[1]
					local Mode = Thing[2]
					local Delay = Thing[3]
					local IncX = Thing[4]
					local IncY = Thing[5]
					local IncZ = Thing[6]
					if Thing[2] == "Shoot" then
						local Look = Thing[1]
						local move = 30
						if Thing[8] == 3 then
							move = 10
						end
						local hit, pos = rayCast(Thing[4], Thing[1], move, m)
						if Thing[10] ~= nil then
							da = pos
							cf2 = CFrame.new(Thing[4], Thing[10].Position)
							cfa = CFrame.new(Thing[4], pos)
							tehCF = cfa:lerp(cf2, 0.2)
							Thing[1] = tehCF.lookVector
						end
						local mag = (Thing[4] - pos).magnitude
						Effects["Head"].Create(Torso.BrickColor, CFrame.new((Thing[4] + pos) / 2, pos) * CFrame.Angles(1.57, 0, 0), 1, mag * 5, 1, 0.5, 0, 0.5, 0.2)
						if Thing[8] == 2 then
							Effects["Ring"].Create(Torso.BrickColor, CFrame.new((Thing[4] + pos) / 2, pos) * CFrame.Angles(1.57, 0, 0) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0), 1, 1, 0.1, 0.5, 0.5, 0.1, 0.1, 1)
						end
						Thing[4] = Thing[4] + Look * move
						Thing[3] = Thing[3] - 1
						if 2 < Thing[5] then
							Thing[5] = Thing[5] - 0.3
							Thing[6] = Thing[6] - 0.3
						end
						if hit ~= nil then
							Thing[3] = 0
							if Thing[8] == 1 or Thing[8] == 3 then
								Damage(hit, hit, Thing[5], Thing[6], Thing[7], "Normal", RootPart, 0, "", 1)
							else
								if Thing[8] == 2 then
									Damage(hit, hit, Thing[5], Thing[6], Thing[7], "Normal", RootPart, 0, "", 1)
									if (hit.Parent:findFirstChild("Humanoid")) ~= nil or (hit.Parent.Parent:findFirstChild("Humanoid")) ~= nil then
										ref = CFuncs.Part.Create(workspace, "Neon", 0, 1, BrickColor.new("Really red"), "Reference", Vector3.new())
										ref.Anchored = true
										ref.CFrame = CFrame.new(pos)
										CFuncs["Sound"].Create("161006093", ref, 1, 1.2)
										game:GetService("Debris"):AddItem(ref, 0.2)
										Effects["Block"].Create(Torso.BrickColor, CFrame.new(ref.Position) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 10, 10, 10, 0.1, 2)
										Effects["Ring"].Create(BrickColor.new("Bright yellow"), CFrame.new(ref.Position) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 0.1, 4, 4, 0.1, 0.1)
										MagnitudeDamage(ref, 15, Thing[5] / 1.5, Thing[6] / 1.5, 0, "Normal", "", 1)
									end
								end
							end
							ref = CFuncs.Part.Create(workspace, "Neon", 0, 1, BrickColor.new("Really red"), "Reference", Vector3.new())
							ref.Anchored = true
							ref.CFrame = CFrame.new(pos)
							Effects["Sphere"].Create(Torso.BrickColor, CFrame.new(pos), 5, 5, 5, 1, 1, 1, 0.07)
							game:GetService("Debris"):AddItem(ref, 1)
						end
						if Thing[3] <= 0 then
							table.remove(Effects, e)
						end
					end
					do
						do
							if Thing[2] == "FireWave" then
								if Thing[3] <= Thing[4] then
									Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(0, 1, 0)
									Thing[3] = Thing[3] + 1
									Thing[6].Scale = Thing[6].Scale + Vector3.new(Thing[5], 0, Thing[5])
								else
									Part.Parent = nil
									table.remove(Effects, e)
								end
							end
							if Thing[2] ~= "Shoot" and Thing[2] ~= "Wave" and Thing[2] ~= "FireWave" then
								if Thing[1].Transparency <= 1 then
									if Thing[2] == "Block1" then
										Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
										Mesh = Thing[7]
										Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
										Thing[1].Transparency = Thing[1].Transparency + Thing[3]
									else
										if Thing[2] == "Block2" then
											Thing[1].CFrame = Thing[1].CFrame
											Mesh = Thing[7]
											Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
											Thing[1].Transparency = Thing[1].Transparency + Thing[3]
										else
											if Thing[2] == "Fire" then
												Thing[1].CFrame = CFrame.new(Thing[1].Position) + Vector3.new(0, 0.2, 0)
												Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
												Thing[1].Transparency = Thing[1].Transparency + Thing[3]
											else
												if Thing[2] == "Cylinder" then
													Mesh = Thing[7]
													Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
													Thing[1].Transparency = Thing[1].Transparency + Thing[3]
												else
													if Thing[2] == "Blood" then
														Mesh = Thing[7]
														Thing[1].CFrame = Thing[1].CFrame * CFrame.new(0, 0.5, 0)
														Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
														Thing[1].Transparency = Thing[1].Transparency + Thing[3]
													else
														if Thing[2] == "Elec" then
															Mesh = Thing[10]
															Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
															Thing[1].Transparency = Thing[1].Transparency + Thing[3]
														else
															if Thing[2] == "Disappear" then
																Thing[1].Transparency = Thing[1].Transparency + Thing[3]
															else
																if Thing[2] == "Shatter" then
														Thing[1].Transparency = Thing[1].Transparency + Thing[3]
														Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
														Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
														Thing[6] = Thing[6] + Thing[5]
																end
															end
														end
													end
												end
											end
										end
									end
								else
							
									table.remove(Ilaoi, e)
								end
							end
						end
					end
				end
			end
		end
	end
end
end