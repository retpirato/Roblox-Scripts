--[[

Created by Sharkringan kthx

--]]

wait(1/60)

plr = game:service'Players'.LocalPlayer
char = plr.Character
root = char:FindFirstChild'HumanoidRootPart'
hum = char:FindFirstChildOfClass'Humanoid'
mouse = plr:GetMouse()
clones = {}

if char.Head:FindFirstChild'face' then
char.Head.face:Destroy()
end

for _, a in pairs(char:children()) do
if a:IsA'Part' then
a.Transparency = 1
elseif a:IsA'Accessory' then
a:Destroy()
end
end

eyes = Instance.new('Part', char)
eyes.Anchored = false
eyes.Name = "Eyes"
eyes.Size = Vector3.new(0.22, 0.052, 0.105)
eyesm = Instance.new('SpecialMesh', eyes)
eyesm.Scale = Vector3.new(0.039, 0.039, 0.039)
eyesm.MeshId = "rbxassetid://1300138314"
eyesm.TextureId = "rbxassetid://1300129774"

body = Instance.new('Part', char)
body.Anchored = false
body.Name = "Body"
body.Size = Vector3.new(0.07, 0.062, 0.078)
bodym = Instance.new('SpecialMesh', body)
bodym.Scale = Vector3.new(0.039, 0.039, 0.039)
bodym.MeshId = "rbxassetid://1300136843"
bodym.TextureId = "rbxassetid://1300137893"

weld1 = Instance.new('Weld', eyes)
weld1.Part0 = eyes
weld1.Part1 = root
weld1.C0 = CFrame.new(0,1.55,.2)
weld2 = Instance.new('Weld', body)
weld2.Part0 = body
weld2.Part1 = root
weld2.C0 = CFrame.new(0,2.1,0)

TheWay1 = Instance.new('Sound', body)
TheWay1.SoundId = "rbxassetid://1320393438"
TheWay1.Volume = 3
TheWay1.Name = "TheWay1"
TheWay2 = Instance.new('Sound', body)
TheWay2.SoundId = "rbxassetid://1295525558"
TheWay2.Volume = 3
TheWay2.Name = "TheWay2"
Spit = Instance.new('Sound', body)
Spit.SoundId = "rbxassetid://1322795266"
Spit.Volume = 3
Spit.Name = "Spit"
Click = Instance.new('Sound', body)
Click.SoundId = "rbxassetid://1335379417"
Click.Volume = 3

num = 1
cooldown = false
rand = math.random(1,2)

for i = 1,12 do
wait()
char.Archivable = true
clone = char:Clone()
table.insert(clones,clone)
end

for _, a in pairs(clones) do
a.Parent = char
a:MoveTo(root.Position + Vector3.new(math.random(1,10),math.random(1,10),math.random(1,10)))
end

function sfx1()
for _, a in pairs(clones) do
rand = math.random(1,2)
if rand == 1 then
a.Body['TheWay1'].Pitch = math.random(0.8,1.05)
a.Body['TheWay1']:Play()
elseif rand == 2 then
a.Body['TheWay2'].Pitch = math.random(0.8,1.05)
a.Body['TheWay2']:Play()
end
wait(.3)
end
end

function sfx2()
for _, a in pairs(clones) do
a.Body.Spit.Pitch = math.random(0.8,1.05)
a.Body.Spit:Play()
wait(.4)
end
end

mouse.KeyDown:connect(function(k)
key = k:lower()
if key == "e" and not cooldown then
cooldown = true
sfx1()
wait(.7)
cooldown = false
elseif key == "r" and not cooldown then
cooldown = true
sfx2()
wait(.7)
cooldown = false
end
end)

while wait(1) do
for _, a in pairs(clones) do
if a:FindFirstChildOfClass'Humanoid' then
a:FindFirstChildOfClass'Humanoid':MoveTo(root.Position + Vector3.new(math.random(-10,10),0,math.random(-10,10)))
end
end
end