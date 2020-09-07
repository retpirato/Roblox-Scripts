--bloxwatch script lol


musicOn = true

Me = game.Players.LocalPlayer
player = Me
char = Me.Character
chara = char
larm = char["Left Arm"]
rarm = char["Right Arm"]
lleg = char["Left Leg"]
rleg = char["Right Leg"]
torso = char.Torso
hed = char.Head
mouse = player:GetMouse()
lght = game.Lighting
lichtact = false
moosicact = false
gotsagofest = true
chara.Humanoid.MaxHealth = math.huge + 9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
chara.Humanoid.Health = math.huge + 9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999



wait(2.5)

chara.Humanoid.WalkSpeed = 10
chara.Humanoid.JumpPower = 40
local naeeym = Instance.new("BillboardGui",chara)
naeeym.Size = UDim2.new(0,100,0,40)
naeeym.StudsOffset = Vector3.new(0,2,0)
naeeym.Adornee = chara.Head
local tecks = Instance.new("TextLabel",naeeym)
tecks.BackgroundTransparency = 1
tecks.BorderSizePixel = 0
tecks.Text = ""
tecks.Font = "Bodoni"
tecks.FontSize = "Size36"
tecks.TextStrokeTransparency = 0.5
tecks.TextColor3 = Color3.new(0,0,0)
rrer = BrickColor.new("Really red")
tecks.TextStrokeColor3 = rrer.Color
tecks.Size = UDim2.new(1,0,0.5,0)
local licht = Instance.new("PointLight",chara.Torso)
licht.Color = tecks.TextStrokeColor3
licht.Range = 60
licht.Brightness = 1
licht.Enabled = false


------------------------------- Player -------------------------------------------------------------------
local z = Instance.new("Sound",char)
z.Looped = true
z.SoundId = "rbxassetid://167161785"
z.Volume = 2.25
if musicOn then
	z:Play()
end

Mouse = player:GetMouse()

local l = Instance.new("ColorCorrectionEffect",game.Lighting)

for i,v in pairs(chara:children()) do
	if v:IsA("Accessory") or v:IsA("Shirt") or v:IsA("Pants") then
		v:Destroy()
	end
end
char.Head.face:Destroy()

char["Body Colors"].HeadColor, char["Body Colors"].LeftArmColor, char["Body Colors"].LeftLegColor, char["Body Colors"].RightArmColor, char["Body Colors"].RightLegColor, char["Body Colors"].TorsoColor = BrickColor.new("Black"), BrickColor.new("Black"), BrickColor.new("Black"), BrickColor.new("Black"), BrickColor.new("Black"), BrickColor.new("Really black")
local Orbd = Instance.new("Part", char)
Orbd.Name = "Orbd"
Orbd.Shape = Enum.PartType.Ball
Orbd.CanCollide = false
Orbd.BrickColor = BrickColor.new("Really red")
Orbd.Transparency = 0
Orbd.Material = "Neon"
Orbd.Size = Vector3.new(0.1, 0.1, 0.1)
Orbd.TopSurface = Enum.SurfaceType.Smooth
Orbd.BottomSurface = Enum.SurfaceType.Smooth
local Weld = Instance.new("Weld", Orbd)
Weld.Part0 = char.Head
Weld.Part1 = Orbd
Weld.C1 = CFrame.new(-0.2, -0.2, 0.5)
local glov = Instance.new("PointLight", Orbd)
glov.Brightness = 0.25
glov.Range = 20
glov.Color = Color3.new(255, 0, 0)
local Orbvc = Instance.new("Part", char)
Orbvc.Name = "Orbvc"
Orbvc.Shape = Enum.PartType.Ball
Orbvc.CanCollide = false
Orbvc.BrickColor = BrickColor.new("Really red")
Orbvc.Transparency = 0
Orbvc.Material = "Neon"
Orbvc.Size = Vector3.new(0.1, 0.1, 0.1)
Orbvc.TopSurface = Enum.SurfaceType.Smooth
Orbvc.BottomSurface = Enum.SurfaceType.Smooth
local Weld = Instance.new("Weld", Orbvc)
Weld.Part0 = char.Head
Weld.Part1 = Orbvc
Weld.C1 = CFrame.new(0.2, -0.2, 0.5)
local glo = Instance.new("PointLight", Orbvc)
glo.Brightness = 0.25
glo.Range = 20
glo.Color = Color3.new(255, 0, 0)

local IsFreeFalling = false
local SpinPart = Instance.new('Part')
SpinPart.Transparency = 1
SpinPart.Size = Vector3.new(25,1,25)
SpinPart.CanCollide = false
SpinPart.FormFactor = 'Custom'
local FX = Instance.new('ParticleEmitter',SpinPart)
FX.Color,FX.Size,FX.Lifetime,FX.Rate,FX.Speed,FX.EmissionDirection,FX.Transparency,FX.LockedToPart,FX.Texture,FX.VelocityInheritance = ColorSequence.new({ColorSequenceKeypoint.new(0, BrickColor.new("Really black").Color, 0), ColorSequenceKeypoint.new(1, BrickColor.new("Black").Color, 0)}), NumberSequence.new(0.25), NumberRange.new(3.75,3.75), 125, NumberRange.new(5,5), "Top", NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.25,0,0),NumberSequenceKeypoint.new(0.9,0,0),NumberSequenceKeypoint.new(0.975,1,0),NumberSequenceKeypoint.new(1,1,0)}), false, "rbxassetid://132883219",-0.1
local FX = Instance.new('ParticleEmitter',SpinPart)
FX.Color,FX.Size,FX.Lifetime,FX.Rate,FX.Speed,FX.EmissionDirection,FX.Transparency,FX.LockedToPart,FX.Texture,FX.VelocityInheritance = ColorSequence.new({ColorSequenceKeypoint.new(0, BrickColor.new("Really black").Color, 0), ColorSequenceKeypoint.new(1, BrickColor.new("Black").Color, 0)}), NumberSequence.new(0.25), NumberRange.new(3.75,3.75), 125, NumberRange.new(5,5), "Top", NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.25,0,0),NumberSequenceKeypoint.new(0.9,0,0),NumberSequenceKeypoint.new(0.975,1,0),NumberSequenceKeypoint.new(1,1,0)}), false, "rbxassetid://132883219",0.1
do
	local tspin = Instance.new('BodyAngularVelocity')
	tspin.angularvelocity = Vector3.new(0,1,0)
	tspin.maxTorque =Vector3.new(math.huge,math.huge,math.huge)
	tspin.Parent = SpinPart
end
local SpinPos = Instance.new('BodyPosition')
SpinPos.maxForce = Vector3.new(math.huge,math.huge,math.huge)
SpinPos.Parent = SpinPart

function Equipped()
	IsEquipped = true
	local MyTorso = char.Torso
	if MyTorso then
		spawn(function()
			local startTime = tick()
			SpinPart.CFrame = CFrame.new(MyTorso.CFrame.p+Vector3.new(0,-2.8,0))
			SpinPart.Parent = MyTorso
			local fadeIn = true
			while IsEquipped do
				if not IsFreeFalling then
					SpinPos.position = MyTorso.CFrame.p+Vector3.new(0,-2.8,0)
				end
				wait()
			end
			SpinPart.Parent = nil
			
		end)
	end
end


	wait(0.01)
	Equipped()


function start()
	print("Darkness falls across the battlefield...")
	wait()
	print("----------------------------------------")
	wait()
	print("          - Ender booted up. -")
	wait()
	print("- Ender written by yeox769. -")
	i = 0
	while i<1 do
		wait()
		i = i + 0.01
		l.Contrast,l.Saturation,l.Brightness = l.Contrast + 0.02, l.Saturation - 0.0075, l.Brightness + 0.00375
		l.TintColor = Color3.new(1,1-i,1-i)
	end
end

delay(0,start)

TC = chara.HumanoidRootPart.RootJoint
HC = chara.Torso.Neck
RAC = chara.Torso["Right Shoulder"]
LAC = chara.Torso["Left Shoulder"]
RLC = chara.Torso["Right Hip"]
LLC = chara.Torso["Left Hip"]
TCF = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
HCF = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
RACF = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
LACF = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RLCF = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
LLCF = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RWF = CFrame.new(-1.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
LWF = CFrame.new(1.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RLWF = CFrame.new(-.5, 2, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
LLWF = CFrame.new(.5, 2, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW = Instance.new("Weld",HC.Parent)
RW.Part1 = HC.Parent
RW.Part0 = chara["Right Arm"]
RW.C0 = RWF
LW = Instance.new("Weld",HC.Parent)
LW.Part1 = HC.Parent
LW.Part0 = chara["Left Arm"]
LW.C0 = LWF
RLW = nil
LLW = nil


function clerp(a,b,c)
return a:lerp(b,c)
end

TC.C0 = TCF
HC.C0 = HCF
RW.C0 = RWF
LW.C0 = LWF

--Idle Clerp--
ITCF = TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(10))
IHCF = HCF * CFrame.fromEulerAnglesXYZ(math.rad(10),0,math.rad(-10))
IRWF = RWF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-2))
ILWF = LWF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(2))

TC.C0 = ITCF
HC.C0 = IHCF
RW.C0 = IRWF
LW.C0 = ILWF





New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end

function ScatterEff(part)
local eff1 = Instance.new("ParticleEmitter",part)
eff1.Size = NumberSequence.new(.1)
eff1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(.9,0),NumberSequenceKeypoint.new(1,1)})
eff1.LightEmission = 1
eff1.Lifetime = NumberRange.new(1)
eff1.Speed = NumberRange.new(1)
eff1.Rate = 100
eff1.VelocitySpread = 10000
eff1.Texture = "rbxassetid://347504241"
eff1.Color = ColorSequence.new(Color3.new(1,0,0))
local eff2 = Instance.new("ParticleEmitter",part)
eff2.Size = NumberSequence.new(.1)
eff2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(.9,0),NumberSequenceKeypoint.new(1,1)})
eff2.LightEmission = 1
eff2.Lifetime = NumberRange.new(1)
eff2.Speed = NumberRange.new(1)
eff2.Rate = 100
eff2.VelocitySpread = 10000
eff2.Texture = "rbxassetid://347504259"
eff2.Color = ColorSequence.new(Color3.new(1,0,0))
end

function BurningEff(part)
local eff1 = Instance.new("ParticleEmitter",part)
eff1.Size = NumberSequence.new(.1)
eff1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(.2,0),NumberSequenceKeypoint.new(1,1)})
eff1.LightEmission = 1
eff1.Lifetime = NumberRange.new(1)
eff1.Speed = NumberRange.new(0)
eff1.Rate = 100
eff1.Texture = "rbxassetid://347504241"
eff1.Acceleration = Vector3.new(0,10,0)
eff1.Color = ColorSequence.new(Color3.new(1,0,0))
local eff2 = Instance.new("ParticleEmitter",part)
eff2.Size = NumberSequence.new(.1)
eff2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(.2,0),NumberSequenceKeypoint.new(1,1)})
eff2.LightEmission = 1
eff2.Lifetime = NumberRange.new(1)
eff2.Speed = NumberRange.new(0)
eff2.Rate = 100
eff2.Texture = "rbxassetid://347504259"
eff2.Acceleration = Vector3.new(0,10,0)
eff2.Color = ColorSequence.new(Color3.new(1,0,0))
local eff3 = Instance.new("ParticleEmitter",part)
eff3.Size = NumberSequence.new(1)
eff3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,1)})
eff3.LightEmission = 1
eff3.Lifetime = NumberRange.new(1)
eff3.Speed = NumberRange.new(0)
eff3.Rate = 100
eff3.Texture = "rbxasset://textures/particles/fire_main.dds"
eff3.Acceleration = Vector3.new(0,10,0)
eff3.Color = ColorSequence.new(Color3.new(1,0,0))
end



slashsnd = New("Sound",chara.Torso,"Slash",{SoundId = "rbxassetid://28144425",PlaybackSpeed = .7,Volume = 5})
hitsnd = New("Sound",chara.Torso,"Hit",{SoundId = "rbxassetid://429400881",PlaybackSpeed = .7,Volume = 5})
telesnd = New("Sound",chara.Torso,"Tele",{SoundId = "rbxassetid://2767090",PlaybackSpeed = .7,Volume = 5})
burnsnd = New("Sound",chara.Torso,"Burn",{SoundId = "rbxassetid://32791565",PlaybackSpeed = .7,Volume = 5})
music1 = New("Sound",chara.Torso,"Music1",{SoundId = "rbxassetid://151038517",PlaybackSpeed = .5,Volume = 10,Looped = true})
music2 = New("Sound",chara.Torso,"Music2",{SoundId = "rbxassetid://11984351",PlaybackSpeed = .2,Volume = 5,Looped = true})
deathmus = New("Sound",chara.Torso,"DeathMus",{SoundId = "rbxassetid://19094700",PlaybackSpeed = .5,Volume = 5,Looped = true})
deathex = New("Sound",chara.Torso,"DeathEx",{SoundId = "rbxassetid://11984351",PlaybackSpeed = 1,Volume = 5})





--Soul Steal--
function SoulSteal(pos)
local soulst = coroutine.wrap(function()
local soul = Instance.new("Part",chara)
soul.Size = Vector3.new(0,0,0)
soul.CanCollide = false
soul.Anchored = false
soul.Position = pos
soul.CFrame = CFrame.new(pos.X,pos.Y,pos.Z)
soul.Transparency = 1
local ptc = Instance.new("ParticleEmitter",soul)
ptc.Texture = "http://www.roblox.com/asset/?id=413366101"
ptc.Size = NumberSequence.new(.5)
ptc.LockedToPart = true
ptc.Speed = NumberRange.new(0)
ptc.Lifetime = NumberRange.new(9999)
local bodpos = Instance.new("BodyPosition",soul)
bodpos.Position = pos
wait(2)
soul.Touched:connect(function(hit)
if hit.Parent == chara then
soul:Destroy()
end
end)
while soul do
wait(.1)
bodpos.Position = chara.Torso.Position
end
end)
soulst()
end

--Death of a Mortal--
function KillMortal(hitdude)
local torsy = nil
if hitdude:FindFirstChild("Torso")~=nil then
torsy = hitdude.Torso	
elseif hitdude:FindFirstChild("UpperTorso")~=nil then
torsy = hitdude.UpperTorso
end
local val = Instance.new("ObjectValue",hitdude)
val.Name = "HasBeenHit"
hitdude:BreakJoints()
hitdude.Humanoid:Destroy()
SoulSteal(torsy.Position)
local chi = hitdude:GetChildren()
for i = 1, #chi do
if chi[i].ClassName == "Part" or chi[i].ClassName == "MeshPart" then
local bodpos = Instance.new("BodyPosition",chi[i])
bodpos.Position = chi[i].Position + Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
ScatterEff(chi[i])
chi[i].BrickColor = BrickColor.new("Really black")
end
end
for i = 1, 4 do
for i = 1, #chi do
if chi[i].ClassName == "Part" or chi[i].ClassName == "MeshPart" then
chi[i].Transparency = chi[i].Transparency + .25
wait(.01)
end
end
end
for i = 1, #chi do
if chi[i].ClassName == "Part" or chi[i].ClassName == "MeshPart" then
chi[i]:Destroy()
end
end
end


function Teleport(pos)
telesnd:Play()
local ch = chara:GetChildren()
for i = 1, #ch do
if ch[i].ClassName == "Part" and ch[i].Name ~= "HumanoidRootPart" then
local trace = Instance.new("Part",game.Workspace)
trace.Size = ch[i].Size
trace.Material = "Neon"
trace.BrickColor = BrickColor.new("Really black")
trace.Transparency = .3
trace.CanCollide = false
trace.Anchored = true
trace.CFrame = ch[i].CFrame
if ch[i].Name == "Head" then
mehs = Instance.new("CylinderMesh",trace)
mehs.Scale = Vector3.new(1.25,1.25,1.25)
end
tracedisappear = coroutine.wrap(function()
wait(1)
for i = 1, 7 do
wait(.1)
trace.Transparency = trace.Transparency + .1
end
trace:Destroy()
end)
tracedisappear()
end
end
chara.Torso.CFrame = CFrame.new(pos.X,pos.Y,pos.Z)
end


function Grab(mouse)
local hit = mouse.Target
if hit ~= nil then
if hit.Parent:FindFirstChild("Humanoid")~=nil then
local torsy = nil
if hit.Parent:FindFirstChild("Torso")~=nil then
torsy = hit.Parent.Torso
elseif hit.Parent:FindFirstChild("UpperTorso")~=nil then
torsy = hit.Parent.UpperTorso
end
local bodpos = Instance.new("BodyPosition",torsy)
bodpos.Position = torsy.Position
wait(1)
burnsnd:Play()
hit.Parent.Humanoid.MaxHealth = 100
bodpos.Position = bodpos.Position + Vector3.new(0,4,0)
for i = 1, 10 do
wait(.1)
BurningEff(torsy)
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 10
end
KillMortal(hit.Parent)
end
else end
end


function onKeyDown(key)
if key == "z" then
Teleport(Mouse.Hit.p + Vector3.new(0,2,0))
elseif key == "x" then
Grab(Mouse)
end
end

--Mouse Functions--
Mouse = player:GetMouse()
if Mouse then
Mouse.KeyDown:connect(onKeyDown)
end

while true do
wait(.01)
chance = math.random(0,100)
if chance < 10 then
sel = math.random(1,3)
if sel == 1 then
tecks.Text = "BLOXWATCH"
elseif sel == 2 then
tecks.Text = "0010 10001010 101011"
elseif sel == 3 then
tecks.Text = "B5OX W7TC8"
end
else tecks.Text = "BLOX WATCH"
if chara.Humanoid.Health > 0 then
chara.Humanoid.MaxHealth = math.huge
chara.Humanoid.Health = math.huge
end
if game.Lighting:FindFirstChild("ColorCorrection") == nil then
	local l = Instance.new("ColorCorrectionEffect",game.Lighting)
	l.Contrast,l.Saturation,l.Brightness = 2, -0.75, 0.375
	l.TintColor = Color3.new(1,0,0)
end
tecks.Position = UDim2.new(0,math.random(-1,1),0,math.random(-1,1))
end
end