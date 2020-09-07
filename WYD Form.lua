--coolallball
if game.Players.LocalPlayer.Character.Animate.Disabled==false then
	game.Players.LocalPlayer.Character.Animate.Disabled=true
end
wait()
local Player=game.Players.LocalPlayer
repeat wait()
until Player
local Char=Player.Character
repeat wait()
until Char
local CurrentEffects={}
local CurrentDamages={}
local Human=Char.Humanoid
local LArm=Char["Left Arm"]
local RArm=Char["Right Arm"]
local LLeg=Char["Left Leg"]
local RLeg=Char["Right Leg"]
local Torso=Char.Torso
local RS=Torso["Right Shoulder"]
local LS=Torso["Left Shoulder"]
local RH=Torso["Right Hip"]
local LH=Torso["Left Hip"]
local Head=Char.Head
local Neck=Torso.Neck
local RootPart=Char.HumanoidRootPart
local RootJoint=RootPart.RootJoint
local equipped=false
local Debounce=false
local Anim="Idle"
local chat = game:GetService("Chat")
local Mouse=Player:GetMouse()
local Lighting=game.Lighting
local cf=CFrame.new
local v3=Vector3.new
local c3=Color3.new
local it=Instance.new
local angles=CFrame.Angles
local rad=math.rad
local ran=math.random
local huge=math.huge
local attacking=false
local attacktype=1
local Portalling=false
local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local deb = false
local shot = 0
local debris=game:service"Debris"
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LSC0=cf(-1, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RSC0=cf(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
ROOTC0 = cf(0, 0, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
r=game:service'RunService'.RenderStepped
clerp=function(a,b,t)
	return a:lerp(b,t)
end


local Rainbow = { --This is the main color set. Try to use more than just a few, make it fade in order as well
"Lime green", 
} 

Debounces = {
CanAttack = true;
NoIdl = false;
Slashing = false;
Slashed = false;
RPunch = false;
Invisible = false;
RPunched = false;
LPunch = false;
LPunched = false;
}
local Touche = {char.Name, }


function genWeld(a,b)
    local w = Instance.new("Weld",a)
    w.Part0 = a
    w.Part1 = b
    return w
end
function weld(a, b)
    local weld = Instance.new("Weld")
    weld.Name = "W"
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = a.CFrame:inverse() * b.CFrame
    weld.Parent = a
    return weld;
end
----------------------------------------------------
function Lerp(c1,c2,al)
local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
for i,v in pairs(com1) do
com1[i] = v+(com2[i]-v)*al
end
return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
----------------------------------------------------
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
local wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
----------------------------------------------------
function weld5(part0, part1, c0, c1)
    weeld=Instance.new("Weld", part0)
    weeld.Part0=part0
    weeld.Part1=part1
    weeld.C0=c0
    weeld.C1=c1
    return weeld
end
----------------------------------------------------
function HasntTouched(plrname)
local ret = true
for _, v in pairs(Touche) do
if v == plrname then
ret = false
end
end
return ret
end
----------------------------------------------------
newWeld(torso, larm, -1.5, 0.5, 0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, rarm, 1.5, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, hed, 0, 1.5, 0)
newWeld(torso, lleg, -0.5, -1, 0)
lleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(torso, rleg, 0.5, -1, 0)
rleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(root, torso, 0, -1, 0)
torso.Weld.C1 = CFrame.new(0, -1, 0)



p = Instance.new("Part")
p.BrickColor = BrickColor.new("Lime green")
p.Transparency = 1
TorsoColor = p.BrickColor

local Transforming = true
Human.WalkSpeed = 0
local fx = Instance.new("Part",Torso)
wit = p.BrickColor.Color
wit2 = Color3.new(0,255,0)
local glowz = Instance.new("ParticleEmitter",fx)
glowz.LightEmission = 1
glowz.Texture = "rbxassetid://284205403"
glowz.Color = ColorSequence.new(wit)
glowz.Size = NumberSequence.new(5)
glowz.Speed = NumberRange.new(25,50)
glowz.LockedToPart = false
glowz.Transparency = NumberSequence.new(0.75)
glowz.RotSpeed = NumberRange.new(-2000,2000)
glowz.Lifetime = NumberRange.new(1)
glowz.Rate = 50000
glowz.VelocitySpread = 9001
local glowz2 = Instance.new("ParticleEmitter",fx)
glowz2.LightEmission = 0.5
glowz.Texture = "rbxassetid://284205403"
glowz2.Color = ColorSequence.new(wit2)
glowz2.Size = NumberSequence.new(5)
glowz2.Speed = NumberRange.new(25,50)
glowz2.LockedToPart = false
glowz2.Transparency = NumberSequence.new(0.75)
glowz2.RotSpeed = NumberRange.new(-2000,2000)
glowz2.Lifetime = NumberRange.new(1)
glowz2.Rate = 50000
glowz2.VelocitySpread = 9001
fx.Anchored = true
fx.Material = "Neon"
fx.CanCollide = false
fx.Locked = true
fx.Transparency = 1
fx.Material = "Neon"
fx.Size = Vector3.new(1,1,1)
fx.TopSurface = "SmoothNoOutlines"
fx.BottomSurface = "SmoothNoOutlines"
fx.BrickColor = BrickColor.new("Really black")
fxm = Instance.new("SpecialMesh",fx)
fxm.MeshType = "Sphere"
local sa2 = Instance.new("Sound",Torso)
sa2.SoundId = "rbxassetid://93724183"
sa2.Pitch = 0.5
sa2.Volume = 5
sa2.Looped = false
sa2:Play()
local value = 1
fxm.Scale = Vector3.new(1,1,1)
for i = 1, 20 do rs:wait()
        value = value - 0.05
        fx.Transparency = fx.Transparency - (1/20)
        fx.CFrame = Torso.CFrame
        fxm.Scale = fxm.Scale + Vector3.new(value,value,value)
        rs:wait()
end
----------------------------------------------------
GroundWave1 = function()
	local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	local Colors = {"Pastel blue-green", "Really black"}
		local wave = Instance.new("Part", Torso)
		wave.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave.Anchored = true
		wave.CanCollide = false
		wave.Locked = true
		wave.Size = Vector3.new(1, 1, 1)
		wave.TopSurface = "Smooth"
		wave.BottomSurface = "Smooth"
		wave.Transparency = 0.35
		wave.CFrame = HandCF
		wm = Instance.new("SpecialMesh", wave)
		wm.MeshId = "rbxassetid://3270017"
		coroutine.wrap(function()
		for i = 1, 30, 1 do
		wm.Scale = Vector3.new(50, 50, 1 + i*50)
		wave.Size = wm.Scale
		wave.CFrame = HandCF
		wave.Transparency = i/30
		wait()
		end
		wait()
		wave:Destroy()
	end)()
end
----------------------------------------------------


GroundWave3 = function()
	local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	local Colors = {"Lime green", "Lime green"}
		local wave = Instance.new("Part", torso)
		wave.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave.Anchored = true
		wave.CanCollide = false
		wave.Locked = true
		wave.Size = Vector3.new(1, 1, 1)
		wave.TopSurface = "Smooth"
		wave.BottomSurface = "Smooth"
		wave.Transparency = 0.35
		wave.CFrame = HandCF
		wm = Instance.new("SpecialMesh", wave)
		wm.MeshId = "rbxassetid://3270017"
		coroutine.wrap(function()
		for i = 1, 14, 1 do
		wm.Scale = Vector3.new(1 + i*1.1, 1 + i*1.1, 1)
		wave.Size = wm.Scale
		wave.CFrame = HandCF
		wave.Transparency = i/14
		wait()
		end
		wait()
		wave:Destroy()
	end)()
end





local acos = math.acos
local sqrt = math.sqrt
local Vec3 = Vector3.new
local fromAxisAngle = CFrame.fromAxisAngle

local function toAxisAngle(CFr)
        local X,Y,Z,R00,R01,R02,R10,R11,R12,R20,R21,R22 = CFr:components()
        local Angle = math.acos((R00+R11+R22-1)/2)
        local A = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        A = A == 0 and 0.00001 or A
        local B = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        B = B == 0 and 0.00001 or B
        local C = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        C = C == 0 and 0.00001 or C
        local x = (R21-R12)/sqrt(A)
        local y = (R02-R20)/sqrt(B)
        local z = (R10-R01)/sqrt(C)
        return Vec3(x,y,z),Angle
end

local acos = math.acos
local sqrt = math.sqrt
local Vec3 = Vector3.new
local fromAxisAngle = CFrame.fromAxisAngle

local function toAxisAngle(CFr)
        local X,Y,Z,R00,R01,R02,R10,R11,R12,R20,R21,R22 = CFr:components()
        local Angle = math.acos((R00+R11+R22-1)/2)
        local A = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        A = A == 0 and 0.00001 or A
        local B = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        B = B == 0 and 0.00001 or B
        local C = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        C = C == 0 and 0.00001 or C
        local x = (R21-R12)/sqrt(A)
        local y = (R02-R20)/sqrt(B)
        local z = (R10-R01)/sqrt(C)
        return Vec3(x,y,z),Angle
end

function ApplyTrig(Num,Func)
        local Min,Max = Func(0),Func(1)
        local i = Func(Num)
        return (i-Min)/(Max-Min)
        --[[if Func == "sin" then
                return (math.sin((1-Num)*math.pi)+1)/2
        elseif Func == "cos" then
                return (math.cos((1-Num)*math.pi)+1)/2
        end]]
end

function LerpCFrame(CFrame1,CFrame2,Num)
        local Vec,Ang = toAxisAngle(CFrame1:inverse()*CFrame2)
        return CFrame1*fromAxisAngle(Vec,Ang*Num) + (CFrame2.p-CFrame1.p)*Num
end



function Crater(Torso,Radius)
        Spawn(function()
        local Ray = Ray.new(Torso.Position,Vector3.new(0,-1,0)*10)
        local Ignore = {}
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                if v.Character ~= nil then
                        Ignore[#Ignore+1] = v.Character
                end
        end
        local Hit,Pos,SurfaceNorm = workspace:FindPartOnRayWithIgnoreList(Ray,Ignore)
        if Hit == nil then return end
        local Parts = {}
        for i = 1,360,10 do
                local P = Instance.new("Part",Torso.Parent)
                P.Anchored = true
                P.FormFactor = "Custom"
                P.BrickColor = BrickColor.new("Lime green")
                P.Material = "Granite"
                P.TopSurface = "Smooth"
                P.BottomSurface = "Smooth"
                P.Size = Vector3.new(5,10,10)*(math.random(80,100)/100)
                P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,7,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
                Parts[#Parts+1] = {P,P.CFrame,((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,1,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius)*CFrame.Angles(math.rad(math.random(-50,-20)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15))),P.Size}
                if math.random(0,5) == 0 then -- rubble
                        local P = Instance.new("Part",Torso.Parent)
                        P.Anchored = true
                        P.FormFactor = "Custom"
                        P.BrickColor = BrickColor.new("Lime green")
                        P.Material = Hit.Material
                        P.TopSurface = "Smooth"
                        P.BottomSurface = "Smooth"
                        P.Size = Vector3.new(5,5,5)*(math.random(80,100)/100)
                        P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,2.5,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
                        Parts[#Parts+1] = {P,P.CFrame,(CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius-8)*CFrame.Angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90))),P.Size}
                end
        end
        for i = 0,1,0.05 do
                for i2,v in pairs(Parts) do
                        v[1].CFrame = LerpCFrame(v[2],v[3],ApplyTrig(i,math.cos))
                end
                wait(0.02)
        end
        for i,v in pairs(Parts) do
                if v[1].Size.X > 2.1 then
                        v[1].CFrame = v[1].CFrame+Vector3.new(0,2,0)
                end
                v[1].Anchored = false
        end
        for i = 0,1,0.05 do
                for i2,v in pairs(Parts) do
                        v[1].Transparency = i
                        if i == 1 then
                                v[1]:Destroy()
                        elseif i >= 0.25 then
                                v[1].CanCollide = false
                        end
                end
                wait(0.02)
        end
        Parts = nil
        end)
end



GroundWave = function()
        if Transforming == true then
                local value = 5
                local value2 = 10
                local value3 = 20
local sa2 = Instance.new("Sound",Torso)
sa2.SoundId = "rbxassetid://393621716"
sa2.Pitch = 1
sa2.Volume = 10
sa2.Looped = false
sa2:Play()
                local wave = Instance.new("Part", Torso)
local glowz = Instance.new("ParticleEmitter",wave)
glowz.LightEmission = 1
glowz.Texture = "rbxassetid://284205403"
glowz.Color = ColorSequence.new(wit)
glowz.Size = NumberSequence.new(30)
glowz.Speed = NumberRange.new(25,100)
glowz.LockedToPart = false
glowz.Transparency = NumberSequence.new(0.75)
glowz.RotSpeed = NumberRange.new(-2000,2000)
glowz.Lifetime = NumberRange.new(1)
glowz.Rate = 50000
glowz.VelocitySpread = 9001
local glowz2 = Instance.new("ParticleEmitter",wave)
glowz2.LightEmission = 1
glowz.Texture = "rbxassetid://284205403"
glowz2.Color = ColorSequence.new(wit)
glowz2.Size = NumberSequence.new(30)
glowz2.Speed = NumberRange.new(25,100)
glowz2.LockedToPart = false
glowz2.Transparency = NumberSequence.new(0.75)
glowz2.RotSpeed = NumberRange.new(-2000,2000)
glowz2.Lifetime = NumberRange.new(1)
glowz2.Rate = 50000
glowz2.VelocitySpread = 9001
                wave.BrickColor = BrickColor.new("Really black")
                wave.Anchored = true
                wave.CanCollide = false
                wave.Locked = true
                wave.Size = Vector3.new(1, 1, 1)
                wave.TopSurface = "Smooth"
                wave.BottomSurface = "Smooth"
                wave.Transparency = 0.35
                wave.CFrame = fx.CFrame
                wave.Material = "Neon"
                wm = Instance.new("SpecialMesh", wave)
                wm.MeshType = "Sphere"
                wm.Scale = Vector3.new(1,1,1)
                local wave2 = Instance.new("Part", Torso)
                wave2.BrickColor = TorsoColor
                wave2.Anchored = true
                wave2.CanCollide = false
                wave2.Locked = true
                wave2.Size = Vector3.new(1, 1, 1)
                wave2.TopSurface = "Smooth"
                wave2.BottomSurface = "Smooth"
                wave2.Transparency = 0.35
                wave2.CFrame = fx.CFrame
                wave2.Material = "Neon"
                wm2 = Instance.new("SpecialMesh", wave2)
                wm2.MeshType = "FileMesh"
                wm2.MeshId = "http://www.roblox.com/asset/?id=3270017"
                wm2.Scale = Vector3.new(1,1,1)
                local wave3 = Instance.new("Part", Torso)
                wave3.BrickColor = BrickColor.new("Really black")
                wave3.Anchored = true
                wave3.CanCollide = false
                wave3.Locked = true
                wave3.Size = Vector3.new(1, 1, 1)
                wave3.TopSurface = "Smooth"
                wave3.BottomSurface = "Smooth"
                wave3.Transparency = 0.35
                wave3.CFrame = fx.CFrame
                wave3.Material = "Neon"
                wm3 = Instance.new("SpecialMesh", wave3)
                wm3.MeshType = "FileMesh"
                wm3.MeshId = "http://www.roblox.com/asset/?id=3270017"
                wm3.Scale = Vector3.new(1,1,1)
                coroutine.wrap(function()
                for i = 1, 18, 1 do
                value = value - 0.5
                value2 = value2 - 0.75*1.5
                value3 = value3 - 0.475*1.5
                wm.Scale = wm.Scale + Vector3.new(value*3.5,value*3.5,value*3.5)
                wm2.Scale = wm.Scale + Vector3.new(value2*3.5,value2*3.5,0.5)
                wm3.Scale = wm.Scale + Vector3.new(value3*3.5,value3*3.5,0.25)
                --wave.Size = wm.Scale
                wave.CFrame = fx.CFrame
                wave.Transparency = i/14
                --wave2.Size = wm2.Scale
                wave2.CFrame = fx.CFrame
                wave2.Rotation = Vector3.new(90, 0, 0)
                wave2.Transparency = i/14
                --wave3.Size = wm3.Scale
                wave3.CFrame = fx.CFrame
                wave3.Rotation = Vector3.new(90, 0, 0)
                wave3.Transparency = i/14
                wait()
                glowz.Rate = 0
                glowz2.Rate = 0
                end
                wait()
                wave:Destroy()
                wave2:Destroy()
                wave3:Destroy()
        end)()
        elseif Transforming == false then
        wait()
        end
end

for i = 1, 100 do rs:wait()
        fx.CFrame = Torso.CFrame
end

spawn(function()
	while wait(1) do
		GroundWave()
	end
end)

wait(4)

Transforming = false



local value2 = 1
for i = 1, 20 do rs:wait()
        value2 = value2 - 0.05
        glowz.Rate = 0
        glowz2.Rate = 0
        fx.Transparency = fx.Transparency + (1/20)
        fx.CFrame = torso.CFrame
        fxm.Scale = fxm.Scale + Vector3.new(value2,value2,value2)
        rs:wait()
end
glowz:Destroy()
glowz2:Destroy()

local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
        local valuer = 5
        local valuer2 = 10
        local valuer3 = 15
local sa2 = Instance.new("Sound",torso)
sa2.SoundId = "rbxassetid://130972023"
sa2.Pitch = 1
sa2.Volume = 5
sa2.Looped = false
sa2:Play()
local sar2 = Instance.new("Sound",torso)
sar2.SoundId = "rbxassetid://153274423"
sar2.Pitch = 1
sar2.Volume = 5
sar2.Looped = false
sar2:Play()
local Mus = Instance.new("Sound",torso)
Mus.SoundId = "rbxassetid://397952612"
Mus.Pitch = 1
Mus.Volume = 6
Mus.Looped = true
Mus:Play()
Crater(torso,67)
        local wave = Instance.new("Part", torso)
        wave.BrickColor = TorsoColor
        wave.Anchored = true
        wave.CanCollide = false
        wave.Locked = true
        wave.Size = Vector3.new(1, 1, 1)
        wave.TopSurface = "Smooth"
        wave.BottomSurface = "Smooth"
        wave.Transparency = 0.35
        wave.CFrame = HandCF
        wm = Instance.new("SpecialMesh", wave)
        wm.MeshId = "rbxassetid://3270017"
        local wave2 = Instance.new("Part", torso)
        wave2.BrickColor = BrickColor.new("Really black")
        wave2.Anchored = true
        wave2.CanCollide = false
        wave2.Locked = true
        wave2.Size = Vector3.new(1, 1, 1)
        wave2.TopSurface = "Smooth"
        wave2.BottomSurface = "Smooth"
        wave2.Transparency = 0.35
        wave2.CFrame = HandCF
        wm2 = Instance.new("SpecialMesh", wave2)
        wm2.MeshId = "rbxassetid://3270017"
        local wave3 = Instance.new("Part", torso)
        wave3.BrickColor = TorsoColor
        wave3.Anchored = true
        wave3.CanCollide = false
        wave3.Locked = true
        wave3.Size = Vector3.new(1, 1, 1)
        wave3.TopSurface = "Smooth"
        wave3.BottomSurface = "Smooth"
        wave3.Transparency = 0.35
        wave3.CFrame = HandCF
        wm3 = Instance.new("SpecialMesh", wave3)
        wm3.MeshId = "rbxassetid://3270017"
        coroutine.wrap(function()
        for i = 1, 14, 1 do
        valuer = valuer - 0.35
        valuer2 = valuer - 0.45
        valuer3 = valuer3 - 0.475
        wm.Scale = wm.Scale + Vector3.new(valuer*2.5,valuer*2.5, 1 + i*200)
        wave.Size = wm.Scale
        wave.CFrame = HandCF
        wave.Transparency = i/14
        wm2.Scale = wm2.Scale + Vector3.new(valuer2*2.5,valuer2*2.5, 0 + i*10)
        wave2.Size = wm2.Scale
        wave2.CFrame = HandCF
        wave2.Transparency = i/14
        wm3.Scale = wm3.Scale + Vector3.new(valuer3*2.5,valuer3*2.5, 1)
        wave3.Size = wm2.Scale
        wave3.CFrame = HandCF
        wave3.Transparency = i/14
        wait()
        end
        wait()
        wave:Destroy()
        wave2:Destroy()
end)()
hum.WalkSpeed = 16









CV="Pastel blue"
	
local txt = Instance.new("BillboardGui", Char)
txt.Adornee = Char .Head
txt.Name = "_status"
txt.Size = UDim2.new(2, 0, 1.2, 0)
txt.StudsOffset = Vector3.new(-9, 8, 0)
local text = Instance.new("TextLabel", txt)
text.Size = UDim2.new(10, 0, 7, 0)
text.FontSize = "Size24"
text.TextScaled = true
text.TextTransparency = 0
text.BackgroundTransparency = 1 
text.TextTransparency = 0
text.TextStrokeTransparency = 0
text.Font = "Antique"
text.TextStrokeColor3 = Color3.new(0,255,0)

v=Instance.new("Part")
v.Name = "ColorBrick"
v.Parent=Player.Character
v.FormFactor="Symmetric"
v.Anchored=true
v.CanCollide=false
v.BottomSurface="Smooth"
v.TopSurface="Smooth"
v.Size=Vector3.new(10,5,3)
v.Transparency=1
v.CFrame=Char.Torso.CFrame
v.BrickColor=BrickColor.new(CV)
v.Transparency=1
text.TextColor3 = Color3.new(0,0,0)
v.Shape="Block"
text.Text = Char.Name

Player:ClearCharacterAppearance()
wait(0.1)
Player.Character.Head.BrickColor = BrickColor.new("Really black")
Player.Character.Torso.BrickColor = BrickColor.new("Really black")
Player.Character["Right Arm"].BrickColor = BrickColor.new("Really black")
Player.Character["Right Leg"].BrickColor = BrickColor.new("Really black")
Player.Character["Left Leg"].BrickColor = BrickColor.new("Really black")
Player.Character["Left Arm"].BrickColor = BrickColor.new("Really black")
Player.Character.Head.face:Destroy()







local selectionBoxOfTorso = Instance.new("SelectionBox",Torso)
selectionBoxOfTorso.Adornee = Torso
selectionBoxOfTorso.Color = BrickColor.new("Lime green")
selectionBoxOfTorso.LineThickness = 0.01
selectionBoxOfTorso.Transparency = 0
	
local selectionBoxOfRightArm = Instance.new("SelectionBox",Char["Right Arm"])
selectionBoxOfRightArm.Adornee = Char["Right Arm"]
selectionBoxOfRightArm.Color = BrickColor.new("Lime green")
selectionBoxOfRightArm.LineThickness = 0.01
selectionBoxOfRightArm.Transparency = 0
	
local selectionBoxOfRightLeg = Instance.new("SelectionBox",Char["Right Leg"])
selectionBoxOfRightLeg.Adornee = Char["Right Leg"]
selectionBoxOfRightLeg.Color = BrickColor.new("Lime green")
selectionBoxOfRightLeg.LineThickness = 0.01
selectionBoxOfRightLeg.Transparency = 0

local selectionBoxOfLeftArm = Instance.new("SelectionBox",Char["Left Arm"])
selectionBoxOfLeftArm.Adornee = Char["Left Arm"]
selectionBoxOfLeftArm.Color = BrickColor.new("Lime green")
selectionBoxOfLeftArm.LineThickness = 0.01
selectionBoxOfLeftArm.Transparency = 0

local selectionBoxOfLeftLeg = Instance.new("SelectionBox",Char["Left Leg"])
selectionBoxOfLeftLeg.Adornee = Char["Left Leg"]
selectionBoxOfLeftLeg.Color = BrickColor.new("Lime green")
selectionBoxOfLeftLeg.LineThickness = 0.01
selectionBoxOfLeftLeg.Transparency = 0


LightOnBody = Instance.new("PointLight", Head)
LightOnBody.Brightness = 3000
LightOnBody.Range = 20
LightOnBody.Color = Color3.new(0, 225, 0)



----------------------------------------------------------------------
local m2 = Instance.new("Model")
m2.Name = "Wings"
p1 = Instance.new("Part", m2)
p1.BrickColor = BrickColor.new("Lime green")
p1.Material = Enum.Material.Neon
p1.CFrame = CFrame.new(28.7928066, 27.8741341, 25.9347725, -0.579227924, -0.579227805, -0.573576331, 0.707106769, -0.707106769, 0, -0.405579776, -0.405579716, 0.819152117)
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(0.61060679, 3.09150696, 0.221234918)
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("SpecialMesh", p1)
b1.MeshType = Enum.MeshType.Sphere
b1.Name = "Mesh"
p2 = Instance.new("Part", m2)
p2.BrickColor = BrickColor.new("Lime green")
p2.Material = Enum.Material.SmoothPlastic
p2.Reflectance = 0.30000001192093
p2.CFrame = CFrame.new(23.8806973, 23.7568359, 26.9065781, -0.573576033, 0.346188396, -0.742403686, 0, -0.906307817, -0.422617972, -0.819152117, -0.24240382, 0.519836783)
p2.CanCollide = false
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("SpecialMesh", p2)
b2.MeshId = "http://www.roblox.com/asset/?id=3270017"
b2.TextureId = ""
b2.MeshType = Enum.MeshType.FileMesh
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p3 = Instance.new("Part", m2)
p3.BrickColor = BrickColor.new("Lime green")
p3.Material = Enum.Material.SmoothPlastic
p3.Reflectance = 0.30000001192093
p3.CFrame = CFrame.new(23.7651176, 23.6910381, 26.9875221, -0.573576033, 0.346188247, -0.742403686, -2.40360578e-007, -0.906307697, -0.422617912, -0.819152117, -0.242403969, 0.519836664)
p3.CanCollide = false
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("SpecialMesh", p3)
b3.MeshId = "http://www.roblox.com/asset/?id=3270017"
b3.TextureId = ""
b3.MeshType = Enum.MeshType.FileMesh
b3.Name = "Mesh"
b3.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p4 = Instance.new("Part", m2)
p4.BrickColor = BrickColor.new("Lime green")
p4.Material = Enum.Material.SmoothPlastic
p4.Reflectance = 0.30000001192093
p4.CFrame = CFrame.new(29.5663891, 25.8075085, 26.4371891, -0.573576391, 0.280166149, 0.769750714, 2.08616257e-007, -0.939692259, 0.342020333, 0.819151878, 0.196174487, 0.538985968)
p4.CanCollide = false
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("SpecialMesh", p4)
b4.MeshId = "http://www.roblox.com/asset/?id=3270017"
b4.TextureId = ""
b4.MeshType = Enum.MeshType.FileMesh
b4.Name = "Mesh"
b4.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p5 = Instance.new("Part", m2)
p5.BrickColor = BrickColor.new("Lime green")
p5.Material = Enum.Material.SmoothPlastic
p5.Reflectance = 0.30000001192093
p5.CFrame = CFrame.new(23.880703, 23.7568455, 26.9065876, -0.573576212, 0.346188098, -0.742403805, -4.76837158e-007, -0.906307578, -0.422617912, -0.819152236, -0.242404133, 0.519836485)
p5.CanCollide = false
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p5.BottomSurface = Enum.SurfaceType.Smooth
p5.TopSurface = Enum.SurfaceType.Smooth
b5 = Instance.new("SpecialMesh", p5)
b5.MeshId = "http://www.roblox.com/asset/?id=3270017"
b5.TextureId = ""
b5.MeshType = Enum.MeshType.FileMesh
b5.Name = "Mesh"
b5.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p6 = Instance.new("Part", m2)
p6.BrickColor = BrickColor.new("Lime green")
p6.Material = Enum.Material.SmoothPlastic
p6.Reflectance = 0.30000001192093
p6.CFrame = CFrame.new(23.6530266, 23.6272411, 27.0660267, -0.573576212, 0.346187949, -0.742403805, -7.17197622e-007, -0.906307459, -0.422617853, -0.819152236, -0.242404282, 0.519836366)
p6.CanCollide = false
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
b6 = Instance.new("SpecialMesh", p6)
b6.MeshId = "http://www.roblox.com/asset/?id=3270017"
b6.TextureId = ""
b6.MeshType = Enum.MeshType.FileMesh
b6.Name = "Mesh"
b6.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p7 = Instance.new("Part", m2)
p7.BrickColor = BrickColor.new("Lime green")
p7.Material = Enum.Material.SmoothPlastic
p7.Reflectance = 0.30000001192093
p7.CFrame = CFrame.new(23.7651253, 23.6910515, 26.9875393, -0.573576212, 0.3461878, -0.742403805, -9.57558086e-007, -0.90630734, -0.422617793, -0.819152236, -0.242404431, 0.519836247)
p7.CanCollide = false
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
b7 = Instance.new("SpecialMesh", p7)
b7.MeshId = "http://www.roblox.com/asset/?id=3270017"
b7.TextureId = ""
b7.MeshType = Enum.MeshType.FileMesh
b7.Name = "Mesh"
b7.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p8 = Instance.new("Part", m2)
p8.BrickColor = BrickColor.new("Lime green")
p8.Material = Enum.Material.SmoothPlastic
p8.Reflectance = 0.30000001192093
p8.CFrame = CFrame.new(23.6530304, 23.6272488, 27.0660381, -0.573576212, 0.346187651, -0.742403805, -1.19791855e-006, -0.90630722, -0.422617733, -0.819152236, -0.24240458, 0.519836128)
p8.CanCollide = false
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
b8 = Instance.new("SpecialMesh", p8)
b8.MeshId = "http://www.roblox.com/asset/?id=3270017"
b8.TextureId = ""
b8.MeshType = Enum.MeshType.FileMesh
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p9 = Instance.new("Part", m2)
p9.BrickColor = BrickColor.new("Lime green")
p9.Material = Enum.Material.SmoothPlastic
p9.Reflectance = 0.30000001192093
p9.CFrame = CFrame.new(30.2536392, 23.691061, 26.9184284, -0.573576212, -0.346188962, 0.74240309, 4.47034836e-007, -0.906307578, -0.422616601, 0.81915164, -0.242404819, 0.519836843)
p9.CanCollide = false
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
b9 = Instance.new("SpecialMesh", p9)
b9.MeshId = "http://www.roblox.com/asset/?id=3270017"
b9.TextureId = ""
b9.MeshType = Enum.MeshType.FileMesh
b9.Name = "Mesh"
b9.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p10 = Instance.new("Part", m2)
p10.BrickColor = BrickColor.new("Lime green")
p10.Material = Enum.Material.SmoothPlastic
p10.Reflectance = 0.30000001192093
p10.CFrame = CFrame.new(27.9471893, 26.8180733, 25.3034286, -0.573576212, 0.469845235, 0.671010077, 2.86794574e-007, -0.819150567, 0.573576927, 0.81915164, 0.328989446, 0.469847172)
p10.CanCollide = false
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p10.BottomSurface = Enum.SurfaceType.Smooth
p10.TopSurface = Enum.SurfaceType.Smooth
b10 = Instance.new("SpecialMesh", p10)
b10.MeshId = "http://www.roblox.com/asset/?id=3270017"
b10.TextureId = ""
b10.MeshType = Enum.MeshType.FileMesh
b10.Name = "Mesh"
b10.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p11 = Instance.new("Part", m2)
p11.BrickColor = BrickColor.new("Lime green")
p11.Material = Enum.Material.SmoothPlastic
p11.Reflectance = 0.30000001192093
p11.CFrame = CFrame.new(27.8153667, 25.7751122, 25.211132, -0.573576212, 0.469845206, 0.671010017, 3.03888498e-007, -0.819150567, 0.573576987, 0.81915164, 0.328989416, 0.469847172)
p11.CanCollide = false
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p11.BottomSurface = Enum.SurfaceType.Smooth
p11.TopSurface = Enum.SurfaceType.Smooth
b11 = Instance.new("SpecialMesh", p11)
b11.MeshId = "http://www.roblox.com/asset/?id=3270017"
b11.TextureId = ""
b11.MeshType = Enum.MeshType.FileMesh
b11.Name = "Mesh"
b11.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p12 = Instance.new("Part", m2)
p12.BrickColor = BrickColor.new("Lime green")
p12.Material = Enum.Material.SmoothPlastic
p12.Reflectance = 0.30000001192093
p12.CFrame = CFrame.new(29.655653, 24.6090927, 26.4997177, -0.573576212, 0.212011248, 0.791239619, 2.79475898e-007, -0.965924561, 0.258820325, 0.81915164, 0.14845185, 0.554032922)
p12.CanCollide = false
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p12.BottomSurface = Enum.SurfaceType.Smooth
p12.TopSurface = Enum.SurfaceType.Smooth
b12 = Instance.new("SpecialMesh", p12)
b12.MeshId = "http://www.roblox.com/asset/?id=3270017"
b12.TextureId = ""
b12.MeshType = Enum.MeshType.FileMesh
b12.Name = "Mesh"
b12.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p13 = Instance.new("Part", m2)
p13.BrickColor = BrickColor.new("Lime green")
p13.Material = Enum.Material.SmoothPlastic
p13.Reflectance = 0.30000001192093
p13.CFrame = CFrame.new(27.9198303, 25.8644161, 25.2842865, -0.573576212, 0.469845116, 0.671010017, 2.51205847e-007, -0.819150507, 0.573577106, 0.81915164, 0.328989446, 0.469847202)
p13.CanCollide = false
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p13.BottomSurface = Enum.SurfaceType.Smooth
p13.TopSurface = Enum.SurfaceType.Smooth
b13 = Instance.new("SpecialMesh", p13)
b13.MeshId = "http://www.roblox.com/asset/?id=3270017"
b13.TextureId = ""
b13.MeshType = Enum.MeshType.FileMesh
b13.Name = "Mesh"
b13.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p14 = Instance.new("Part", m2)
p14.BrickColor = BrickColor.new("Lime green")
p14.Material = Enum.Material.SmoothPlastic
p14.Reflectance = 0.30000001192093
p14.CFrame = CFrame.new(29.778841, 24.6493893, 26.5859776, -0.573576212, 0.212011158, 0.791239619, 2.26793262e-007, -0.965924621, 0.258820474, 0.81915164, 0.148451865, 0.554032922)
p14.CanCollide = false
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p14.BottomSurface = Enum.SurfaceType.Smooth
p14.TopSurface = Enum.SurfaceType.Smooth
b14 = Instance.new("SpecialMesh", p14)
b14.MeshId = "http://www.roblox.com/asset/?id=3270017"
b14.TextureId = ""
b14.MeshType = Enum.MeshType.FileMesh
b14.Name = "Mesh"
b14.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p15 = Instance.new("Part", m2)
p15.BrickColor = BrickColor.new("Lime green")
p15.Material = Enum.Material.SmoothPlastic
p15.Reflectance = 0.30000001192093
p15.CFrame = CFrame.new(29.3303242, 25.7026424, 26.271925, -0.573576212, 0.280165315, 0.769750893, 1.98523225e-007, -0.939691305, 0.342021316, 0.81915164, 0.196174055, 0.538986266)
p15.CanCollide = false
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p15.BottomSurface = Enum.SurfaceType.Smooth
p15.TopSurface = Enum.SurfaceType.Smooth
b15 = Instance.new("SpecialMesh", p15)
b15.MeshId = "http://www.roblox.com/asset/?id=3270017"
b15.TextureId = ""
b15.MeshType = Enum.MeshType.FileMesh
b15.Name = "Mesh"
b15.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p16 = Instance.new("Part", m2)
p16.BrickColor = BrickColor.new("Lime green")
p16.Material = Enum.Material.SmoothPlastic
p16.Reflectance = 0.30000001192093
p16.CFrame = CFrame.new(29.8983212, 24.6884689, 26.6696377, -0.573576272, 0.212011099, 0.791239798, 1.39939146e-007, -0.965924501, 0.258820534, 0.81915158, 0.148451924, 0.554033041)
p16.CanCollide = false
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p16.BottomSurface = Enum.SurfaceType.Smooth
p16.TopSurface = Enum.SurfaceType.Smooth
b16 = Instance.new("SpecialMesh", p16)
b16.MeshId = "http://www.roblox.com/asset/?id=3270017"
b16.TextureId = ""
b16.MeshType = Enum.MeshType.FileMesh
b16.Name = "Mesh"
b16.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p17 = Instance.new("Part", m2)
p17.BrickColor = BrickColor.new("Lime green")
p17.Material = Enum.Material.SmoothPlastic
p17.Reflectance = 0.30000001192093
p17.CFrame = CFrame.new(29.5664043, 25.8075294, 26.4372196, -0.573576272, 0.280165255, 0.769751072, 1.1166911e-007, -0.939691126, 0.342021376, 0.81915158, 0.196174115, 0.538986385)
p17.CanCollide = false
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p17.BottomSurface = Enum.SurfaceType.Smooth
p17.TopSurface = Enum.SurfaceType.Smooth
b17 = Instance.new("SpecialMesh", p17)
b17.MeshId = "http://www.roblox.com/asset/?id=3270017"
b17.TextureId = ""
b17.MeshType = Enum.MeshType.FileMesh
b17.Name = "Mesh"
b17.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p18 = Instance.new("Part", m2)
p18.BrickColor = BrickColor.new("Lime green")
p18.Material = Enum.Material.SmoothPlastic
p18.Reflectance = 0.30000001192093
p18.CFrame = CFrame.new(28.021162, 25.9510212, 25.3552322, -0.573576331, 0.469845086, 0.671010435, 8.10900147e-008, -0.819150269, 0.573577285, 0.819151521, 0.328989595, 0.469847381)
p18.CanCollide = false
p18.FormFactor = Enum.FormFactor.Custom
p18.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p18.BottomSurface = Enum.SurfaceType.Smooth
p18.TopSurface = Enum.SurfaceType.Smooth
b18 = Instance.new("SpecialMesh", p18)
b18.MeshId = "http://www.roblox.com/asset/?id=3270017"
b18.TextureId = ""
b18.MeshType = Enum.MeshType.FileMesh
b18.Name = "Mesh"
b18.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p19 = Instance.new("Part", m2)
p19.BrickColor = BrickColor.new("Lime green")
p19.Material = Enum.Material.SmoothPlastic
p19.Reflectance = 0.30000001192093
p19.CFrame = CFrame.new(30.3657436, 23.6272507, 26.9969234, -0.573576272, -0.346189439, 0.74240303, -9.24166343e-009, -0.906307697, -0.422616035, 0.819151521, -0.242404714, 0.519837141)
p19.CanCollide = false
p19.FormFactor = Enum.FormFactor.Custom
p19.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p19.BottomSurface = Enum.SurfaceType.Smooth
p19.TopSurface = Enum.SurfaceType.Smooth
b19 = Instance.new("SpecialMesh", p19)
b19.MeshId = "http://www.roblox.com/asset/?id=3270017"
b19.TextureId = ""
b19.MeshType = Enum.MeshType.FileMesh
b19.Name = "Mesh"
b19.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p20 = Instance.new("Part", m2)
p20.BrickColor = BrickColor.new("Lime green")
p20.Material = Enum.Material.SmoothPlastic
p20.Reflectance = 0.30000001192093
p20.CFrame = CFrame.new(30.2536469, 23.6910553, 26.9184265, -0.573576272, -0.346189529, 0.742402911, -2.63107069e-007, -0.906307518, -0.422615975, 0.819151521, -0.242404476, 0.519837141)
p20.CanCollide = false
p20.FormFactor = Enum.FormFactor.Custom
p20.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p20.BottomSurface = Enum.SurfaceType.Smooth
p20.TopSurface = Enum.SurfaceType.Smooth
b20 = Instance.new("SpecialMesh", p20)
b20.MeshId = "http://www.roblox.com/asset/?id=3270017"
b20.TextureId = ""
b20.MeshType = Enum.MeshType.FileMesh
b20.Name = "Mesh"
b20.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p21 = Instance.new("Part", m2)
p21.BrickColor = BrickColor.new("Lime green")
p21.Material = Enum.Material.SmoothPlastic
p21.Reflectance = 0.30000001192093
p21.CFrame = CFrame.new(27.8458843, 26.7314644, 25.2324886, -0.573576272, 0.469844759, 0.671010494, -4.23347274e-007, -0.819149971, 0.573577166, 0.819151521, 0.328989863, 0.469847023)
p21.CanCollide = false
p21.FormFactor = Enum.FormFactor.Custom
p21.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p21.BottomSurface = Enum.SurfaceType.Smooth
p21.TopSurface = Enum.SurfaceType.Smooth
b21 = Instance.new("SpecialMesh", p21)
b21.MeshId = "http://www.roblox.com/asset/?id=3270017"
b21.TextureId = ""
b21.MeshType = Enum.MeshType.FileMesh
b21.Name = "Mesh"
b21.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p22 = Instance.new("Part", m2)
p22.BrickColor = BrickColor.new("Lime green")
p22.Material = Enum.Material.SmoothPlastic
p22.Reflectance = 0.30000001192093
p22.CFrame = CFrame.new(30.1380615, 23.756855, 26.8374882, -0.573576212, -0.346189648, 0.742402732, -5.1367897e-007, -0.906307459, -0.422615856, 0.819151521, -0.242404282, 0.519837141)
p22.CanCollide = false
p22.FormFactor = Enum.FormFactor.Custom
p22.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p22.BottomSurface = Enum.SurfaceType.Smooth
p22.TopSurface = Enum.SurfaceType.Smooth
b22 = Instance.new("SpecialMesh", p22)
b22.MeshId = "http://www.roblox.com/asset/?id=3270017"
b22.TextureId = ""
b22.MeshType = Enum.MeshType.FileMesh
b22.Name = "Mesh"
b22.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p23 = Instance.new("Part", m2)
p23.BrickColor = BrickColor.new("Lime green")
p23.Material = Enum.Material.SmoothPlastic
p23.Reflectance = 0.30000001192093
p23.CFrame = CFrame.new(29.4501858, 25.7558784, 26.3558216, -0.573576212, 0.280164778, 0.769751191, -6.73919146e-007, -0.939690709, 0.342021406, 0.819151521, 0.196174636, 0.538986027)
p23.CanCollide = false
p23.FormFactor = Enum.FormFactor.Custom
p23.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p23.BottomSurface = Enum.SurfaceType.Smooth
p23.TopSurface = Enum.SurfaceType.Smooth
b23 = Instance.new("SpecialMesh", p23)
b23.MeshId = "http://www.roblox.com/asset/?id=3270017"
b23.TextureId = ""
b23.MeshType = Enum.MeshType.FileMesh
b23.Name = "Mesh"
b23.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p24 = Instance.new("Part", m2)
p24.BrickColor = BrickColor.new("Lime green")
p24.Material = Enum.Material.SmoothPlastic
p24.Reflectance = 0.30000001192093
p24.CFrame = CFrame.new(29.3303471, 25.702631, 26.2719078, -0.573576272, 0.280164808, 0.76975143, -7.04498234e-007, -0.939690709, 0.342021465, 0.819151461, 0.196174651, 0.538986087)
p24.CanCollide = false
p24.FormFactor = Enum.FormFactor.Custom
p24.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p24.BottomSurface = Enum.SurfaceType.Smooth
p24.TopSurface = Enum.SurfaceType.Smooth
b24 = Instance.new("SpecialMesh", p24)
b24.MeshId = "http://www.roblox.com/asset/?id=3270017"
b24.TextureId = ""
b24.MeshType = Enum.MeshType.FileMesh
b24.Name = "Mesh"
b24.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p25 = Instance.new("Part", m2)
p25.BrickColor = BrickColor.new("Lime green")
p25.Material = Enum.Material.SmoothPlastic
p25.Reflectance = 0.30000001192093
p25.CFrame = CFrame.new(29.7788715, 24.6493816, 26.5859661, -0.573576331, 0.212010548, 0.791240335, -7.63082312e-007, -0.965923905, 0.258820742, 0.819151402, 0.14845252, 0.554032862)
p25.CanCollide = false
p25.FormFactor = Enum.FormFactor.Custom
p25.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p25.BottomSurface = Enum.SurfaceType.Smooth
p25.TopSurface = Enum.SurfaceType.Smooth
b25 = Instance.new("SpecialMesh", p25)
b25.MeshId = "http://www.roblox.com/asset/?id=3270017"
b25.TextureId = ""
b25.MeshType = Enum.MeshType.FileMesh
b25.Name = "Mesh"
b25.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p26 = Instance.new("Part", m2)
p26.BrickColor = BrickColor.new("Lime green")
p26.Material = Enum.Material.SmoothPlastic
p26.Reflectance = 0.30000001192093
p26.CFrame = CFrame.new(29.450201, 25.7558823, 26.3558235, -0.573576331, 0.280164748, 0.769751668, -7.91352306e-007, -0.93969059, 0.342021525, 0.819151402, 0.196174681, 0.538986146)
p26.CanCollide = false
p26.FormFactor = Enum.FormFactor.Custom
p26.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p26.BottomSurface = Enum.SurfaceType.Smooth
p26.TopSurface = Enum.SurfaceType.Smooth
b26 = Instance.new("SpecialMesh", p26)
b26.MeshId = "http://www.roblox.com/asset/?id=3270017"
b26.TextureId = ""
b26.MeshType = Enum.MeshType.FileMesh
b26.Name = "Mesh"
b26.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p27 = Instance.new("Part", m2)
p27.BrickColor = BrickColor.new("Lime green")
p27.Material = Enum.Material.SmoothPlastic
p27.Reflectance = 0.30000001192093
p27.CFrame = CFrame.new(30.3657703, 23.6272449, 26.9969063, -0.57357645, -0.346190155, 0.74240309, -9.161393e-007, -0.90630734, -0.422615707, 0.819151342, -0.242404088, 0.51983732)
p27.CanCollide = false
p27.FormFactor = Enum.FormFactor.Custom
p27.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p27.BottomSurface = Enum.SurfaceType.Smooth
p27.TopSurface = Enum.SurfaceType.Smooth
b27 = Instance.new("SpecialMesh", p27)
b27.MeshId = "http://www.roblox.com/asset/?id=3270017"
b27.TextureId = ""
b27.MeshType = Enum.MeshType.FileMesh
b27.Name = "Mesh"
b27.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p28 = Instance.new("Part", m2)
p28.BrickColor = BrickColor.new("Lime green")
p28.Material = Enum.Material.SmoothPlastic
p28.Reflectance = 0.30000001192093
p28.CFrame = CFrame.new(28.0211868, 25.9510098, 25.3552094, -0.57357645, 0.469844639, 0.67101109, -1.07637948e-006, -0.819149673, 0.573577106, 0.819151342, 0.328990191, 0.469846785)
p28.CanCollide = false
p28.FormFactor = Enum.FormFactor.Custom
p28.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p28.BottomSurface = Enum.SurfaceType.Smooth
p28.TopSurface = Enum.SurfaceType.Smooth
b28 = Instance.new("SpecialMesh", p28)
b28.MeshId = "http://www.roblox.com/asset/?id=3270017"
b28.TextureId = ""
b28.MeshType = Enum.MeshType.FileMesh
b28.Name = "Mesh"
b28.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p29 = Instance.new("Part", m2)
p29.BrickColor = BrickColor.new("Lime green")
p29.Material = Enum.Material.Neon
p29.CFrame = CFrame.new(31.2683067, 23.2277946, 27.6474876, 0.280168235, -0.769749522, -0.573576212, 0.939691305, 0.342017233, -1.0690095e-006, 0.19617486, -0.538985491, 0.819151521)
p29.FormFactor = Enum.FormFactor.Custom
p29.Size = Vector3.new(0.61060679, 3.09150696, 0.221234918)
p29.BottomSurface = Enum.SurfaceType.Smooth
p29.TopSurface = Enum.SurfaceType.Smooth
b29 = Instance.new("SpecialMesh", p29)
b29.MeshType = Enum.MeshType.Sphere
b29.Name = "Mesh"
p30 = Instance.new("Part", m2)
p30.BrickColor = BrickColor.new("Lime green")
p30.Material = Enum.Material.SmoothPlastic
p30.Reflectance = 0.30000001192093
p30.CFrame = CFrame.new(29.655632, 24.6090698, 26.4996777, -0.573576212, 0.2120094, 0.791238904, -1.13902195e-006, -0.965922236, 0.258820891, 0.819151521, 0.148452237, 0.554032147)
p30.CanCollide = false
p30.FormFactor = Enum.FormFactor.Custom
p30.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p30.BottomSurface = Enum.SurfaceType.Smooth
p30.TopSurface = Enum.SurfaceType.Smooth
b30 = Instance.new("SpecialMesh", p30)
b30.MeshId = "http://www.roblox.com/asset/?id=3270017"
b30.TextureId = ""
b30.MeshType = Enum.MeshType.FileMesh
b30.Name = "Mesh"
b30.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p31 = Instance.new("Part", m2)
p31.BrickColor = BrickColor.new("Lime green")
p31.Material = Enum.Material.SmoothPlastic
p31.Reflectance = 0.30000001192093
p31.CFrame = CFrame.new(30.138031, 23.7568359, 26.8374538, -0.573576212, -0.346189976, 0.742401063, -1.26856219e-006, -0.906306148, -0.422614396, 0.819151521, -0.242403775, 0.519836485)
p31.CanCollide = false
p31.FormFactor = Enum.FormFactor.Custom
p31.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p31.BottomSurface = Enum.SurfaceType.Smooth
p31.TopSurface = Enum.SurfaceType.Smooth
b31 = Instance.new("SpecialMesh", p31)
b31.MeshId = "http://www.roblox.com/asset/?id=3270017"
b31.TextureId = ""
b31.MeshType = Enum.MeshType.FileMesh
b31.Name = "Mesh"
b31.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p32 = Instance.new("Part", m2)
p32.BrickColor = BrickColor.new("Lime green")
p32.Material = Enum.Material.SmoothPlastic
p32.Reflectance = 0.30000001192093
p32.CFrame = CFrame.new(27.741394, 26.6421375, 25.1592979, -0.573576212, 0.469842911, 0.671009958, -1.42880219e-006, -0.819147944, 0.573576748, 0.819151521, 0.328989625, 0.4698461)
p32.CanCollide = false
p32.FormFactor = Enum.FormFactor.Custom
p32.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p32.BottomSurface = Enum.SurfaceType.Smooth
p32.TopSurface = Enum.SurfaceType.Smooth
b32 = Instance.new("SpecialMesh", p32)
b32.MeshId = "http://www.roblox.com/asset/?id=3270017"
b32.TextureId = ""
b32.MeshType = Enum.MeshType.FileMesh
b32.Name = "Mesh"
b32.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p33 = Instance.new("Part", m2)
p33.BrickColor = BrickColor.new("Lime green")
p33.Material = Enum.Material.Neon
p33.CFrame = CFrame.new(32.7100258, 25.2490444, 28.6569691, -0.14224124, -0.806705832, -0.573576093, 0.984804153, -0.173650295, -1.38238238e-006, -0.0996002704, -0.564861953, 0.819151759)
p33.FormFactor = Enum.FormFactor.Custom
p33.Size = Vector3.new(0.61060679, 7.32508755, 0.221234918)
p33.BottomSurface = Enum.SurfaceType.Smooth
p33.TopSurface = Enum.SurfaceType.Smooth
b33 = Instance.new("SpecialMesh", p33)
b33.MeshType = Enum.MeshType.Sphere
b33.Name = "Mesh"
p34 = Instance.new("Part", m2)
p34.BrickColor = BrickColor.new("Lime green")
p34.Material = Enum.Material.SmoothPlastic
p34.Reflectance = 0.30000001192093
p34.CFrame = CFrame.new(27.919817, 25.8643856, 25.2842369, -0.573576391, 0.469842792, 0.671009898, -1.37759764e-006, -0.819147885, 0.573576868, 0.8191517, 0.328989476, 0.46984604)
p34.CanCollide = false
p34.FormFactor = Enum.FormFactor.Custom
p34.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p34.BottomSurface = Enum.SurfaceType.Smooth
p34.TopSurface = Enum.SurfaceType.Smooth
b34 = Instance.new("SpecialMesh", p34)
b34.MeshId = "http://www.roblox.com/asset/?id=3270017"
b34.TextureId = ""
b34.MeshType = Enum.MeshType.FileMesh
b34.Name = "Mesh"
b34.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p35 = Instance.new("Part", m2)
p35.BrickColor = BrickColor.new("Lime green")
p35.Material = Enum.Material.SmoothPlastic
p35.Reflectance = 0.30000001192093
p35.CFrame = CFrame.new(29.8982925, 24.6884441, 26.6695824, -0.573576391, 0.212008998, 0.791238666, -1.40201018e-006, -0.965921998, 0.25882113, 0.8191517, 0.148452297, 0.554031909)
p35.CanCollide = false
p35.FormFactor = Enum.FormFactor.Custom
p35.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p35.BottomSurface = Enum.SurfaceType.Smooth
p35.TopSurface = Enum.SurfaceType.Smooth
b35 = Instance.new("SpecialMesh", p35)
b35.MeshId = "http://www.roblox.com/asset/?id=3270017"
b35.TextureId = ""
b35.MeshType = Enum.MeshType.FileMesh
b35.Name = "Mesh"
b35.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p36 = Instance.new("Part", m2)
p36.BrickColor = BrickColor.new("Lime green")
p36.Material = Enum.Material.SmoothPlastic
p36.Reflectance = 0.30000001192093
p36.CFrame = CFrame.new(27.8153496, 25.7750854, 25.2110863, -0.573576391, 0.469842672, 0.671009898, -1.43028012e-006, -0.819147885, 0.573576927, 0.8191517, 0.328989506, 0.4698461)
p36.CanCollide = false
p36.FormFactor = Enum.FormFactor.Custom
p36.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p36.BottomSurface = Enum.SurfaceType.Smooth
p36.TopSurface = Enum.SurfaceType.Smooth
b36 = Instance.new("SpecialMesh", p36)
b36.MeshId = "http://www.roblox.com/asset/?id=3270017"
b36.TextureId = ""
b36.MeshType = Enum.MeshType.FileMesh
b36.Name = "Mesh"
b36.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p37 = Instance.new("Part", m2)
p37.BrickColor = BrickColor.new("Lime green")
p37.Material = Enum.Material.Neon
p37.CFrame = CFrame.new(30.7430439, 27.8460693, 27.2796841, -0.409572512, -0.709406137, -0.573576272, 0.866021335, -0.500000834, -1.38386031e-006, -0.286787719, -0.49673146, 0.819151938)
p37.FormFactor = Enum.FormFactor.Custom
p37.Size = Vector3.new(0.61060679, 7.32508755, 0.221234918)
p37.BottomSurface = Enum.SurfaceType.Smooth
p37.TopSurface = Enum.SurfaceType.Smooth
b37 = Instance.new("SpecialMesh", p37)
b37.MeshType = Enum.MeshType.Sphere
b37.Name = "Mesh"
p38 = Instance.new("Part", m2)
p38.BrickColor = BrickColor.new("Lime green")
p38.Material = Enum.Material.Neon
p38.CFrame = CFrame.new(32.7113533, 27.1965656, 28.6579113, -0.28016308, -0.769750178, -0.573576272, 0.939688683, -0.342021704, -1.3540581e-006, -0.196174175, -0.538985133, 0.819152057)
p38.FormFactor = Enum.FormFactor.Custom
p38.Size = Vector3.new(0.61060679, 8.03632927, 0.221234918)
p38.BottomSurface = Enum.SurfaceType.Smooth
p38.TopSurface = Enum.SurfaceType.Smooth
b38 = Instance.new("SpecialMesh", p38)
b38.MeshType = Enum.MeshType.Sphere
b38.Name = "Mesh"
p39 = Instance.new("Part", m2)
p39.BrickColor = BrickColor.new("Lime green")
p39.Material = Enum.Material.SmoothPlastic
p39.Reflectance = 0.30000001192093
p39.CFrame = CFrame.new(26.2033787, 25.7750854, 25.2801971, -0.573574483, -0.469848186, -0.671007693, -2.18929154e-006, -0.819150686, 0.573572934, -0.819151402, 0.328989863, 0.469846785)
p39.CanCollide = false
p39.FormFactor = Enum.FormFactor.Custom
p39.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p39.BottomSurface = Enum.SurfaceType.Smooth
p39.TopSurface = Enum.SurfaceType.Smooth
b39 = Instance.new("SpecialMesh", p39)
b39.MeshId = "http://www.roblox.com/asset/?id=3270017"
b39.TextureId = ""
b39.MeshType = Enum.MeshType.FileMesh
b39.Name = "Mesh"
b39.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p40 = Instance.new("Part", m2)
p40.BrickColor = BrickColor.new("Lime green")
p40.Material = Enum.Material.SmoothPlastic
p40.Reflectance = 0.30000001192093
p40.CFrame = CFrame.new(25.9975967, 25.9509888, 25.4242878, -0.573574483, -0.469848186, -0.671007693, -2.18929154e-006, -0.819150686, 0.573572934, -0.819151402, 0.328989863, 0.469846785)
p40.CanCollide = false
p40.FormFactor = Enum.FormFactor.Custom
p40.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p40.BottomSurface = Enum.SurfaceType.Smooth
p40.TopSurface = Enum.SurfaceType.Smooth
b40 = Instance.new("SpecialMesh", p40)
b40.MeshId = "http://www.roblox.com/asset/?id=3270017"
b40.TextureId = ""
b40.MeshType = Enum.MeshType.FileMesh
b40.Name = "Mesh"
b40.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p41 = Instance.new("Part", m2)
p41.BrickColor = BrickColor.new("Lime green")
p41.Material = Enum.Material.SmoothPlastic
p41.Reflectance = 0.30000001192093
p41.CFrame = CFrame.new(26.098917, 25.8643856, 25.3533516, -0.573574483, -0.469848186, -0.671007693, -2.18929154e-006, -0.819150686, 0.573572934, -0.819151402, 0.328989863, 0.469846785)
p41.CanCollide = false
p41.FormFactor = Enum.FormFactor.Custom
p41.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p41.BottomSurface = Enum.SurfaceType.Smooth
p41.TopSurface = Enum.SurfaceType.Smooth
b41 = Instance.new("SpecialMesh", p41)
b41.MeshId = "http://www.roblox.com/asset/?id=3270017"
b41.TextureId = ""
b41.MeshType = Enum.MeshType.FileMesh
b41.Name = "Mesh"
b41.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p42 = Instance.new("Part", m2)
p42.BrickColor = BrickColor.new("Lime green")
p42.Material = Enum.Material.SmoothPlastic
p42.Reflectance = 0.30000001192093
p42.CFrame = CFrame.new(24.12043, 24.6884346, 26.7387066, -0.573574483, -0.212014884, -0.791238487, -2.23079792e-006, -0.965923309, 0.258816421, -0.819151402, 0.148452327, 0.554032683)
p42.CanCollide = false
p42.FormFactor = Enum.FormFactor.Custom
p42.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p42.BottomSurface = Enum.SurfaceType.Smooth
p42.TopSurface = Enum.SurfaceType.Smooth
b42 = Instance.new("SpecialMesh", p42)
b42.MeshId = "http://www.roblox.com/asset/?id=3270017"
b42.TextureId = ""
b42.MeshType = Enum.MeshType.FileMesh
b42.Name = "Mesh"
b42.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p43 = Instance.new("Part", m2)
p43.BrickColor = BrickColor.new("Lime green")
p43.Material = Enum.Material.SmoothPlastic
p43.Reflectance = 0.30000001192093
p43.CFrame = CFrame.new(24.12043, 24.6884365, 26.7387066, -0.573574483, -0.212014899, -0.791238487, -2.30996147e-006, -0.96592325, 0.258816421, -0.819151402, 0.148452222, 0.554032683)
p43.CanCollide = false
p43.FormFactor = Enum.FormFactor.Custom
p43.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p43.BottomSurface = Enum.SurfaceType.Smooth
p43.TopSurface = Enum.SurfaceType.Smooth
b43 = Instance.new("SpecialMesh", p43)
b43.MeshId = "http://www.roblox.com/asset/?id=3270017"
b43.TextureId = ""
b43.MeshType = Enum.MeshType.FileMesh
b43.Name = "Mesh"
b43.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p44 = Instance.new("Part", m2)
p44.BrickColor = BrickColor.new("Lime green")
p44.Material = Enum.Material.SmoothPlastic
p44.Reflectance = 0.30000001192093
p44.CFrame = CFrame.new(24.3630924, 24.6090679, 26.5687962, -0.573574483, -0.212014914, -0.791238487, -2.38912503e-006, -0.96592319, 0.258816421, -0.819151402, 0.148452118, 0.554032683)
p44.CanCollide = false
p44.FormFactor = Enum.FormFactor.Custom
p44.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p44.BottomSurface = Enum.SurfaceType.Smooth
p44.TopSurface = Enum.SurfaceType.Smooth
b44 = Instance.new("SpecialMesh", p44)
b44.MeshId = "http://www.roblox.com/asset/?id=3270017"
b44.TextureId = ""
b44.MeshType = Enum.MeshType.FileMesh
b44.Name = "Mesh"
b44.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p45 = Instance.new("Part", m2)
p45.BrickColor = BrickColor.new("Lime green")
p45.Material = Enum.Material.SmoothPlastic
p45.Reflectance = 0.30000001192093
p45.CFrame = CFrame.new(24.2399025, 24.6493645, 26.6550598, -0.573574483, -0.212014928, -0.791238487, -2.46828859e-006, -0.965923131, 0.258816421, -0.819151402, 0.148452014, 0.554032683)
p45.CanCollide = false
p45.FormFactor = Enum.FormFactor.Custom
p45.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p45.BottomSurface = Enum.SurfaceType.Smooth
p45.TopSurface = Enum.SurfaceType.Smooth
b45 = Instance.new("SpecialMesh", p45)
b45.MeshId = "http://www.roblox.com/asset/?id=3270017"
b45.TextureId = ""
b45.MeshType = Enum.MeshType.FileMesh
b45.Name = "Mesh"
b45.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p46 = Instance.new("Part", m2)
p46.BrickColor = BrickColor.new("Lime green")
p46.Material = Enum.Material.SmoothPlastic
p46.Reflectance = 0.30000001192093
p46.CFrame = CFrame.new(24.3630962, 24.6090736, 26.5688019, -0.573574483, -0.212014943, -0.791238487, -2.54745214e-006, -0.965923071, 0.258816421, -0.819151402, 0.148451909, 0.554032683)
p46.CanCollide = false
p46.FormFactor = Enum.FormFactor.Custom
p46.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p46.BottomSurface = Enum.SurfaceType.Smooth
p46.TopSurface = Enum.SurfaceType.Smooth
b46 = Instance.new("SpecialMesh", p46)
b46.MeshId = "http://www.roblox.com/asset/?id=3270017"
b46.TextureId = ""
b46.MeshType = Enum.MeshType.FileMesh
b46.Name = "Mesh"
b46.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p47 = Instance.new("Part", m2)
p47.BrickColor = BrickColor.new("Lime green")
p47.Material = Enum.Material.SmoothPlastic
p47.Reflectance = 0.30000001192093
p47.CFrame = CFrame.new(24.2399063, 24.6493702, 26.6550655, -0.573574483, -0.212014958, -0.791238487, -2.6266157e-006, -0.965923011, 0.258816421, -0.819151402, 0.148451805, 0.554032683)
p47.CanCollide = false
p47.FormFactor = Enum.FormFactor.Custom
p47.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p47.BottomSurface = Enum.SurfaceType.Smooth
p47.TopSurface = Enum.SurfaceType.Smooth
b47 = Instance.new("SpecialMesh", p47)
b47.MeshId = "http://www.roblox.com/asset/?id=3270017"
b47.TextureId = ""
b47.MeshType = Enum.MeshType.FileMesh
b47.Name = "Mesh"
b47.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p48 = Instance.new("Part", m2)
p48.BrickColor = BrickColor.new("Lime green")
p48.Material = Enum.Material.Neon
p48.CFrame = CFrame.new(25.2453995, 27.8142643, 25.9324112, 0.579229355, 0.579225123, -0.573574543, 0.707105756, -0.707103014, -2.67389237e-006, -0.405579329, -0.40558058, -0.819151223)
p48.FormFactor = Enum.FormFactor.Custom
p48.Size = Vector3.new(0.61060679, 3.09150696, 0.221234918)
p48.BottomSurface = Enum.SurfaceType.Smooth
p48.TopSurface = Enum.SurfaceType.Smooth
b48 = Instance.new("SpecialMesh", p48)
b48.MeshType = Enum.MeshType.Sphere
b48.Name = "Mesh"
p49 = Instance.new("Part", m2)
p49.BrickColor = BrickColor.new("Lime green")
p49.Material = Enum.Material.SmoothPlastic
p49.Reflectance = 0.30000001192093
p49.CFrame = CFrame.new(26.2033863, 25.7751026, 25.2802086, -0.573574364, -0.469848186, -0.671007454, -2.67389191e-006, -0.819150448, 0.573572874, -0.819151223, 0.328989238, 0.469846845)
p49.CanCollide = false
p49.FormFactor = Enum.FormFactor.Custom
p49.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p49.BottomSurface = Enum.SurfaceType.Smooth
p49.TopSurface = Enum.SurfaceType.Smooth
b49 = Instance.new("SpecialMesh", p49)
b49.MeshId = "http://www.roblox.com/asset/?id=3270017"
b49.TextureId = ""
b49.MeshType = Enum.MeshType.FileMesh
b49.Name = "Mesh"
b49.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p50 = Instance.new("Part", m2)
p50.BrickColor = BrickColor.new("Lime green")
p50.Material = Enum.Material.SmoothPlastic
p50.Reflectance = 0.30000001192093
p50.CFrame = CFrame.new(25.9976063, 25.9510059, 25.4242992, -0.573574364, -0.469848186, -0.671007454, -2.67389191e-006, -0.819150448, 0.573572874, -0.819151223, 0.328989238, 0.469846845)
p50.CanCollide = false
p50.FormFactor = Enum.FormFactor.Custom
p50.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p50.BottomSurface = Enum.SurfaceType.Smooth
p50.TopSurface = Enum.SurfaceType.Smooth
b50 = Instance.new("SpecialMesh", p50)
b50.MeshId = "http://www.roblox.com/asset/?id=3270017"
b50.TextureId = ""
b50.MeshType = Enum.MeshType.FileMesh
b50.Name = "Mesh"
b50.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p51 = Instance.new("Part", m2)
p51.BrickColor = BrickColor.new("Lime green")
p51.Material = Enum.Material.SmoothPlastic
p51.Reflectance = 0.30000001192093
p51.CFrame = CFrame.new(26.0989265, 25.8644028, 25.353363, -0.573574364, -0.469848186, -0.671007454, -2.67389191e-006, -0.819150448, 0.573572874, -0.819151223, 0.328989238, 0.469846845)
p51.CanCollide = false
p51.FormFactor = Enum.FormFactor.Custom
p51.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p51.BottomSurface = Enum.SurfaceType.Smooth
p51.TopSurface = Enum.SurfaceType.Smooth
b51 = Instance.new("SpecialMesh", p51)
b51.MeshId = "http://www.roblox.com/asset/?id=3270017"
b51.TextureId = ""
b51.MeshType = Enum.MeshType.FileMesh
b51.Name = "Mesh"
b51.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p52 = Instance.new("Part", m2)
p52.BrickColor = BrickColor.new("Lime green")
p52.Material = Enum.Material.Neon
p52.CFrame = CFrame.new(21.2912331, 25.2490387, 28.7011547, 0.142246991, 0.806705594, -0.573574483, 0.984804809, -0.173645705, -2.66166035e-006, -0.0995996594, -0.564862788, -0.819151103)
p52.FormFactor = Enum.FormFactor.Custom
p52.Size = Vector3.new(0.61060679, 7.32508755, 0.221234918)
p52.BottomSurface = Enum.SurfaceType.Smooth
p52.TopSurface = Enum.SurfaceType.Smooth
b52 = Instance.new("SpecialMesh", p52)
b52.MeshType = Enum.MeshType.Sphere
b52.Name = "Mesh"
p53 = Instance.new("Part", m2)
p53.BrickColor = BrickColor.new("Lime green")
p53.Material = Enum.Material.Neon
p53.CFrame = CFrame.new(23.2582321, 27.8460655, 27.3238525, 0.409577936, 0.709403872, -0.573574483, 0.866023481, -0.499996662, -2.64914797e-006, -0.28678745, -0.496732205, -0.819151103)
p53.FormFactor = Enum.FormFactor.Custom
p53.Size = Vector3.new(0.61060679, 7.32508755, 0.221234918)
p53.BottomSurface = Enum.SurfaceType.Smooth
p53.TopSurface = Enum.SurfaceType.Smooth
b53 = Instance.new("SpecialMesh", p53)
b53.MeshType = Enum.MeshType.Sphere
b53.Name = "Mesh"
p54 = Instance.new("Part", m2)
p54.BrickColor = BrickColor.new("Lime green")
p54.Material = Enum.Material.Neon
p54.CFrame = CFrame.new(21.2899132, 27.1965466, 28.7020855, 0.280168742, 0.769748747, -0.573574483, 0.939690113, -0.342017204, -2.64914797e-006, -0.196173787, -0.538985729, -0.819151103)
p54.FormFactor = Enum.FormFactor.Custom
p54.Size = Vector3.new(0.61060679, 8.03632927, 0.221234918)
p54.BottomSurface = Enum.SurfaceType.Smooth
p54.TopSurface = Enum.SurfaceType.Smooth
b54 = Instance.new("SpecialMesh", p54)
b54.MeshType = Enum.MeshType.Sphere
b54.Name = "Mesh"
p55 = Instance.new("Part", m2)
p55.BrickColor = BrickColor.new("Lime green")
p55.Material = Enum.Material.Neon
p55.CFrame = CFrame.new(22.732933, 23.2277641, 27.6916542, -0.280163169, 0.769749939, -0.573574483, 0.939688265, 0.342020243, -2.67457881e-006, 0.196175426, -0.538984358, -0.819150984)
p55.FormFactor = Enum.FormFactor.Custom
p55.Size = Vector3.new(0.61060679, 3.09150696, 0.221234918)
p55.BottomSurface = Enum.SurfaceType.Smooth
p55.TopSurface = Enum.SurfaceType.Smooth
b55 = Instance.new("SpecialMesh", p55)
b55.MeshType = Enum.MeshType.Sphere
b55.Name = "Mesh"
p56 = Instance.new("Part", m2)
p56.BrickColor = BrickColor.new("Lime green")
p56.Material = Enum.Material.SmoothPlastic
p56.Reflectance = 0.30000001192093
p56.CFrame = CFrame.new(26.1728668, 26.7314224, 25.3015804, -0.573574424, -0.469846636, -0.671006322, -2.71658587e-006, -0.819149017, 0.573572636, -0.819150925, 0.328987926, 0.469845742)
p56.CanCollide = false
p56.FormFactor = Enum.FormFactor.Custom
p56.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p56.BottomSurface = Enum.SurfaceType.Smooth
p56.TopSurface = Enum.SurfaceType.Smooth
b56 = Instance.new("SpecialMesh", p56)
b56.MeshId = "http://www.roblox.com/asset/?id=3270017"
b56.TextureId = ""
b56.MeshType = Enum.MeshType.FileMesh
b56.Name = "Mesh"
b56.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p57 = Instance.new("Part", m2)
p57.BrickColor = BrickColor.new("Lime green")
p57.Material = Enum.Material.SmoothPlastic
p57.Reflectance = 0.30000001192093
p57.CFrame = CFrame.new(26.0715504, 26.8180256, 25.3725224, -0.573574424, -0.469846636, -0.671006322, -2.71658587e-006, -0.819149017, 0.573572636, -0.819150925, 0.328987926, 0.469845742)
p57.CanCollide = false
p57.FormFactor = Enum.FormFactor.Custom
p57.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p57.BottomSurface = Enum.SurfaceType.Smooth
p57.TopSurface = Enum.SurfaceType.Smooth
b57 = Instance.new("SpecialMesh", p57)
b57.MeshId = "http://www.roblox.com/asset/?id=3270017"
b57.TextureId = ""
b57.MeshType = Enum.MeshType.FileMesh
b57.Name = "Mesh"
b57.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p58 = Instance.new("Part", m2)
p58.BrickColor = BrickColor.new("Lime green")
p58.Material = Enum.Material.SmoothPlastic
p58.Reflectance = 0.30000001192093
p58.CFrame = CFrame.new(26.2773418, 26.6421242, 25.2284393, -0.573574424, -0.469846636, -0.671006322, -2.71658587e-006, -0.819149017, 0.573572636, -0.819150925, 0.328987926, 0.469845742)
p58.CanCollide = false
p58.FormFactor = Enum.FormFactor.Custom
p58.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p58.BottomSurface = Enum.SurfaceType.Smooth
p58.TopSurface = Enum.SurfaceType.Smooth
b58 = Instance.new("SpecialMesh", p58)
b58.MeshId = "http://www.roblox.com/asset/?id=3270017"
b58.TextureId = ""
b58.MeshType = Enum.MeshType.FileMesh
b58.Name = "Mesh"
b58.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p59 = Instance.new("Part", m2)
p59.BrickColor = BrickColor.new("Lime green")
p59.Material = Enum.Material.SmoothPlastic
p59.Reflectance = 0.30000001192093
p59.CFrame = CFrame.new(24.6884308, 25.7025909, 26.3410091, -0.573574424, -0.280167818, -0.769747615, -2.71658587e-006, -0.939688742, 0.342017263, -0.819150925, 0.196172908, 0.538984478)
p59.CanCollide = false
p59.FormFactor = Enum.FormFactor.Custom
p59.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p59.BottomSurface = Enum.SurfaceType.Smooth
p59.TopSurface = Enum.SurfaceType.Smooth
b59 = Instance.new("SpecialMesh", p59)
b59.MeshId = "http://www.roblox.com/asset/?id=3270017"
b59.TextureId = ""
b59.MeshType = Enum.MeshType.FileMesh
b59.Name = "Mesh"
b59.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p60 = Instance.new("Part", m2)
p60.BrickColor = BrickColor.new("Lime green")
p60.Material = Enum.Material.SmoothPlastic
p60.Reflectance = 0.30000001192093
p60.CFrame = CFrame.new(24.4523582, 25.807478, 26.5063095, -0.573574424, -0.280167848, -0.769747615, -2.7445908e-006, -0.939688742, 0.342017263, -0.819150925, 0.196172863, 0.538984478)
p60.CanCollide = false
p60.FormFactor = Enum.FormFactor.Custom
p60.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p60.BottomSurface = Enum.SurfaceType.Smooth
p60.TopSurface = Enum.SurfaceType.Smooth
b60 = Instance.new("SpecialMesh", p60)
b60.MeshId = "http://www.roblox.com/asset/?id=3270017"
b60.TextureId = ""
b60.MeshType = Enum.MeshType.FileMesh
b60.Name = "Mesh"
b60.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p61 = Instance.new("Part", m2)
p61.BrickColor = BrickColor.new("Lime green")
p61.Material = Enum.Material.SmoothPlastic
p61.Reflectance = 0.30000001192093
p61.CFrame = CFrame.new(24.5685883, 25.7558403, 26.4249287, -0.573574424, -0.280167878, -0.769747615, -2.77259574e-006, -0.939688742, 0.342017263, -0.819150925, 0.196172819, 0.538984478)
p61.CanCollide = false
p61.FormFactor = Enum.FormFactor.Custom
p61.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p61.BottomSurface = Enum.SurfaceType.Smooth
p61.TopSurface = Enum.SurfaceType.Smooth
b61 = Instance.new("SpecialMesh", p61)
b61.MeshId = "http://www.roblox.com/asset/?id=3270017"
b61.TextureId = ""
b61.MeshType = Enum.MeshType.FileMesh
b61.Name = "Mesh"
b61.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p62 = Instance.new("Part", m2)
p62.BrickColor = BrickColor.new("Lime green")
p62.Material = Enum.Material.SmoothPlastic
p62.Reflectance = 0.30000001192093
p62.CFrame = CFrame.new(24.6884365, 25.7025948, 26.3410149, -0.573574424, -0.280167907, -0.769747615, -2.80060067e-006, -0.939688742, 0.342017263, -0.819150925, 0.196172774, 0.538984478)
p62.CanCollide = false
p62.FormFactor = Enum.FormFactor.Custom
p62.Size = Vector3.new(0.584050655, 0.584051132, 0.584051371)
p62.BottomSurface = Enum.SurfaceType.Smooth
p62.TopSurface = Enum.SurfaceType.Smooth
b62 = Instance.new("SpecialMesh", p62)
b62.MeshId = "http://www.roblox.com/asset/?id=3270017"
b62.TextureId = ""
b62.MeshType = Enum.MeshType.FileMesh
b62.Name = "Mesh"
b62.Scale = Vector3.new(0.283109009, 0.283109039, 0.283109665)
p63 = Instance.new("Part", m2)
p63.BrickColor = BrickColor.new("Lime green")
p63.Material = Enum.Material.SmoothPlastic
p63.Reflectance = 0.30000001192093
p63.CFrame = CFrame.new(24.452364, 25.8074818, 26.5063152, -0.573574424, -0.280167937, -0.769747615, -2.8286056e-006, -0.939688742, 0.342017263, -0.819150925, 0.196172729, 0.538984478)
p63.CanCollide = false
p63.FormFactor = Enum.FormFactor.Custom
p63.Size = Vector3.new(0.849326968, 0.849327147, 0.584051371)
p63.BottomSurface = Enum.SurfaceType.Smooth
p63.TopSurface = Enum.SurfaceType.Smooth
b63 = Instance.new("SpecialMesh", p63)
b63.MeshId = "http://www.roblox.com/asset/?id=3270017"
b63.TextureId = ""
b63.MeshType = Enum.MeshType.FileMesh
b63.Name = "Mesh"
b63.Scale = Vector3.new(0.849326968, 0.849327147, 0.56621933)
p64 = Instance.new("Part", m2)
p64.BrickColor = BrickColor.new("Lime green")
p64.Material = Enum.Material.SmoothPlastic
p64.Reflectance = 0.30000001192093
p64.CFrame = CFrame.new(24.568594, 25.7558441, 26.4249344, -0.573574424, -0.280167967, -0.769747615, -2.85661054e-006, -0.939688742, 0.342017263, -0.819150925, 0.196172684, 0.538984478)
p64.CanCollide = false
p64.FormFactor = Enum.FormFactor.Custom
p64.Size = Vector3.new(0.585091829, 0.622839987, 0.584051371)
p64.BottomSurface = Enum.SurfaceType.Smooth
p64.TopSurface = Enum.SurfaceType.Smooth
b64 = Instance.new("SpecialMesh", p64)
b64.MeshId = "http://www.roblox.com/asset/?id=3270017"
b64.TextureId = ""
b64.MeshType = Enum.MeshType.FileMesh
b64.Name = "Mesh"
b64.Scale = Vector3.new(0.585091829, 0.622839928, 0.301983595)
p65 = Instance.new("Part", m2)
p65.BrickColor = BrickColor.new("Really black")
p65.Transparency = 1
p65.Name = "TorsoPart"
p65.CFrame = CFrame.new(27.0399818, 25.1251049, 25.3600311, 0.999996543, 2.59280205e-006, 8.94069672e-008, 2.77161598e-006, 0.999995351, 1.56462193e-006, 6.2584877e-007, 1.51991844e-006, 0.999998093)
p65.FormFactor = Enum.FormFactor.Symmetric
p65.Size = Vector3.new(4, 4, 2)
w1 = Instance.new("Weld", p1)
w1.Name = "Part_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(7.48623466, 46.9062119, -4.72964478, -0.579227924, 0.707106769, -0.405579776, -0.579227805, -0.707106769, -0.405579716, -0.573576331, 0, 0.819152117)
w1.Part1 = p2
w1.C1 = CFrame.new(35.7379875, 19.7860374, 13.782176, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w2 = Instance.new("Weld", p2)
w2.Name = "Part_Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(35.7379875, 19.7860374, 13.782176, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w2.Part1 = p3
w2.C1 = CFrame.new(35.7379951, 19.7860336, 13.626483, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w3 = Instance.new("Weld", p3)
w3.Name = "Part_Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(35.7379951, 19.7860336, 13.626483, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w3.Part1 = p4
w3.C1 = CFrame.new(-4.6974678, 10.7812996, -45.834713, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w4 = Instance.new("Weld", p4)
w4.Name = "Part_Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(-4.6974678, 10.7812996, -45.834713, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w4.Part1 = p5
w4.C1 = CFrame.new(35.7379875, 19.7860374, 13.782176, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w5 = Instance.new("Weld", p5)
w5.Name = "Part_Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(35.7379875, 19.7860374, 13.782176, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w5.Part1 = p6
w5.C1 = CFrame.new(35.7379951, 19.7860374, 13.4754944, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w6 = Instance.new("Weld", p6)
w6.Name = "Part_Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(35.7379951, 19.7860374, 13.4754944, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w6.Part1 = p7
w6.C1 = CFrame.new(35.7379951, 19.7860336, 13.626483, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w7 = Instance.new("Weld", p7)
w7.Name = "Part_Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(35.7379951, 19.7860336, 13.626483, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w7.Part1 = p8
w7.C1 = CFrame.new(35.7379951, 19.7860374, 13.4754944, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w8 = Instance.new("Weld", p8)
w8.Name = "Part_Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(35.7379951, 19.7860374, 13.4754944, -0.573576331, -1.03064551e-007, -0.819152117, 0.346188396, -0.906307817, -0.24240382, -0.742403984, -0.422618032, 0.519836664)
w8.Part1 = p9
w8.C1 = CFrame.new(-4.69746971, 38.4699516, -26.4413414, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w9 = Instance.new("Weld", p9)
w9.Name = "Part_Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(-4.69746971, 38.4699516, -26.4413414, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w9.Part1 = p10
w9.C1 = CFrame.new(-4.6974659, 0.512617111, -46.0237579, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w10 = Instance.new("Weld", p10)
w10.Name = "Part_Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(-4.6974659, 0.512617111, -46.0237579, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w10.Part1 = p11
w10.C1 = CFrame.new(-4.69746971, -0.249427795, -45.2937202, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w11 = Instance.new("Weld", p11)
w11.Name = "Part_Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(-4.69746971, -0.249427795, -45.2937202, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w11.Part1 = p12
w11.C1 = CFrame.new(-4.69746971, 13.5492201, -44.5157242, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w12 = Instance.new("Weld", p12)
w12.Name = "Part_Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(-4.69746971, 13.5492201, -44.5157242, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w12.Part1 = p13
w12.C1 = CFrame.new(-4.69747162, -0.249425888, -45.4494095, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w13 = Instance.new("Weld", p13)
w13.Name = "Part_Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(-4.69747162, -0.249425888, -45.4494095, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w13.Part1 = p14
w13.C1 = CFrame.new(-4.6974678, 13.5492172, -44.6714172, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w14 = Instance.new("Weld", p14)
w14.Name = "Part_Weld"
w14.Part0 = p14
w14.C0 = CFrame.new(-4.6974678, 13.5492172, -44.6714172, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w14.Part1 = p15
w14.C1 = CFrame.new(-4.69747162, 10.7813034, -45.5280304, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w15 = Instance.new("Weld", p15)
w15.Name = "Part_Weld"
w15.Part0 = p15
w15.C0 = CFrame.new(-4.69747162, 10.7813034, -45.5280304, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w15.Part1 = p16
w15.C1 = CFrame.new(-4.69746971, 13.5492172, -44.8224106, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w16 = Instance.new("Weld", p16)
w16.Name = "Part_Weld"
w16.Part0 = p16
w16.C0 = CFrame.new(-4.69746971, 13.5492172, -44.8224106, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w16.Part1 = p17
w16.C1 = CFrame.new(-4.6974678, 10.7812996, -45.834713, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w17 = Instance.new("Weld", p17)
w17.Name = "Part_Weld"
w17.Part0 = p17
w17.C0 = CFrame.new(-4.6974678, 10.7812996, -45.834713, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w17.Part1 = p18
w17.C1 = CFrame.new(-4.6974678, -0.249424934, -45.600399, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w18 = Instance.new("Weld", p18)
w18.Name = "Part_Weld"
w18.Part0 = p18
w18.C0 = CFrame.new(-4.6974678, -0.249424934, -45.600399, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w18.Part1 = p19
w18.C1 = CFrame.new(-4.6974678, 38.4699554, -26.5923309, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w19 = Instance.new("Weld", p19)
w19.Name = "Part_Weld"
w19.Part0 = p19
w19.C0 = CFrame.new(-4.6974678, 38.4699554, -26.5923309, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w19.Part1 = p20
w19.C1 = CFrame.new(-4.69746971, 38.4699516, -26.4413414, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w20 = Instance.new("Weld", p20)
w20.Name = "Part_Weld"
w20.Part0 = p20
w20.C0 = CFrame.new(-4.69746971, 38.4699516, -26.4413414, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w20.Part1 = p21
w20.C1 = CFrame.new(-4.69746971, 0.512615204, -45.8727722, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w21 = Instance.new("Weld", p21)
w21.Name = "Part_Weld"
w21.Part0 = p21
w21.C0 = CFrame.new(-4.69746971, 0.512615204, -45.8727722, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w21.Part1 = p22
w21.C1 = CFrame.new(-4.69746971, 38.4699554, -26.2856503, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w22 = Instance.new("Weld", p22)
w22.Name = "Part_Weld"
w22.Part0 = p22
w22.C0 = CFrame.new(-4.69746971, 38.4699554, -26.2856503, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w22.Part1 = p23
w22.C1 = CFrame.new(-4.69747162, 10.7813015, -45.6837234, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w23 = Instance.new("Weld", p23)
w23.Name = "Part_Weld"
w23.Part0 = p23
w23.C0 = CFrame.new(-4.69747162, 10.7813015, -45.6837234, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w23.Part1 = p24
w23.C1 = CFrame.new(-4.69747162, 10.7813034, -45.5280304, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w24 = Instance.new("Weld", p24)
w24.Name = "Part_Weld"
w24.Part0 = p24
w24.C0 = CFrame.new(-4.69747162, 10.7813034, -45.5280304, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w24.Part1 = p25
w24.C1 = CFrame.new(-4.6974678, 13.5492172, -44.6714172, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w25 = Instance.new("Weld", p25)
w25.Name = "Part_Weld"
w25.Part0 = p25
w25.C0 = CFrame.new(-4.6974678, 13.5492172, -44.6714172, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w25.Part1 = p26
w25.C1 = CFrame.new(-4.69747162, 10.7813015, -45.6837234, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w26 = Instance.new("Weld", p26)
w26.Name = "Part_Weld"
w26.Part0 = p26
w26.C0 = CFrame.new(-4.69747162, 10.7813015, -45.6837234, -0.573576748, 0, 0.819151878, 0.280166447, -0.939692616, 0.1961748, 0.769751072, 0.342020154, 0.538985789)
w26.Part1 = p27
w26.C1 = CFrame.new(-4.6974678, 38.4699554, -26.5923309, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w27 = Instance.new("Weld", p27)
w27.Name = "Part_Weld"
w27.Part0 = p27
w27.C0 = CFrame.new(-4.6974678, 38.4699554, -26.5923309, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w27.Part1 = p28
w27.C1 = CFrame.new(-4.6974678, -0.249424934, -45.600399, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w28 = Instance.new("Weld", p28)
w28.Name = "Part_Weld"
w28.Part0 = p28
w28.C0 = CFrame.new(-4.6974678, -0.249424934, -45.600399, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w28.Part1 = p29
w28.C1 = CFrame.new(-36.0110359, 31.0260429, -4.71271896, 0.280166358, 0.93969208, 0.196174681, -0.769750178, 0.342019618, -0.538985252, -0.57357645, -2.95716429e-008, 0.819151998)
w29 = Instance.new("Weld", p29)
w29.Name = "Part_Weld"
w29.Part0 = p29
w29.C0 = CFrame.new(-36.0110359, 31.0260429, -4.71271896, 0.280166358, 0.93969208, 0.196174681, -0.769750178, 0.342019618, -0.538985252, -0.57357645, -2.95716429e-008, 0.819151998)
w29.Part1 = p30
w29.C1 = CFrame.new(-4.69746971, 13.5492201, -44.5157242, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w30 = Instance.new("Weld", p30)
w30.Name = "Part_Weld"
w30.Part0 = p30
w30.C0 = CFrame.new(-4.69746971, 13.5492201, -44.5157242, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w30.Part1 = p31
w30.C1 = CFrame.new(-4.69746971, 38.4699554, -26.2856503, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w31 = Instance.new("Weld", p31)
w31.Name = "Part_Weld"
w31.Part0 = p31
w31.C0 = CFrame.new(-4.69746971, 38.4699554, -26.2856503, -0.573576748, -1.03064551e-007, 0.819151878, -0.346188426, -0.906307817, -0.242403746, 0.742403686, -0.422618032, 0.519837141)
w31.Part1 = p32
w31.C1 = CFrame.new(-4.6974678, 0.512617111, -45.717083, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w32 = Instance.new("Weld", p32)
w32.Name = "Part_Weld"
w32.Part0 = p32
w32.C0 = CFrame.new(-4.6974678, 0.512617111, -45.717083, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w32.Part1 = p33
w32.C1 = CFrame.new(-17.3583775, 46.9591446, -4.71270752, -0.142244235, 0.98480773, -0.0996004939, -0.806707144, -0.173648238, -0.564862549, -0.57357657, 0, 0.819151998)
w33 = Instance.new("Weld", p33)
w33.Name = "Part_Weld"
w33.Part0 = p33
w33.C0 = CFrame.new(-17.3583775, 46.9591446, -4.71270752, -0.142244235, 0.98480773, -0.0996004939, -0.806707144, -0.173648238, -0.564862549, -0.57357657, 0, 0.819151998)
w33.Part1 = p34
w33.C1 = CFrame.new(-4.69747162, -0.249425888, -45.4494095, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w34 = Instance.new("Weld", p34)
w34.Name = "Part_Weld"
w34.Part0 = p34
w34.C0 = CFrame.new(-4.69747162, -0.249425888, -45.4494095, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w34.Part1 = p35
w34.C1 = CFrame.new(-4.69746971, 13.5492172, -44.8224106, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w35 = Instance.new("Weld", p35)
w35.Name = "Part_Weld"
w35.Part0 = p35
w35.C0 = CFrame.new(-4.69746971, 13.5492172, -44.8224106, -0.573576748, -2.87868307e-008, 0.819151878, 0.212012202, -0.965925753, 0.148452699, 0.791239858, 0.258819222, 0.554032564)
w35.Part1 = p36
w35.C1 = CFrame.new(-4.69746971, -0.249427795, -45.2937202, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w36 = Instance.new("Weld", p36)
w36.Name = "Part_Weld"
w36.Part0 = p36
w36.C0 = CFrame.new(-4.69746971, -0.249427795, -45.2937202, -0.573576748, 0, 0.819151878, 0.469846189, -0.819152057, 0.328990072, 0.671009898, 0.57357645, 0.469846576)
w36.Part1 = p37
w36.C1 = CFrame.new(-3.70028734, 49.2830544, -4.71271324, -0.409575999, 0.866025388, -0.286788285, -0.709406435, -0.5, -0.496731967, -0.57357657, 0, 0.819151998)
w37 = Instance.new("Weld", p37)
w37.Name = "Part_Weld"
w37.Part0 = p37
w37.C0 = CFrame.new(-3.70028734, 49.2830544, -4.71271324, -0.409575999, 0.866025388, -0.286788285, -0.709406435, -0.5, -0.496731967, -0.57357657, 0, 0.819151998)
w37.Part1 = p38
w37.C1 = CFrame.new(-10.7698097, 49.927597, -4.71271324, -0.280166447, 0.939692616, -0.196174681, -0.769750953, -0.342020154, -0.53898561, -0.57357657, 0, 0.819151998)
w38 = Instance.new("Weld", p38)
w38.Name = "Part_Weld"
w38.Part0 = p38
w38.C0 = CFrame.new(-10.7698097, 49.927597, -4.71271324, -0.280166447, 0.939692616, -0.196174681, -0.769750953, -0.342020154, -0.53898561, -0.57357657, 0, 0.819151998)
w38.Part1 = p39
w38.C1 = CFrame.new(35.7379837, 25.1083565, -9.07904911, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w39 = Instance.new("Weld", p39)
w39.Name = "Part_Weld"
w39.Part0 = p39
w39.C0 = CFrame.new(35.7379837, 25.1083565, -9.07904911, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w39.Part1 = p40
w39.C1 = CFrame.new(35.7379837, 25.1083584, -9.38572502, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w40 = Instance.new("Weld", p40)
w40.Name = "Part_Weld"
w40.Part0 = p40
w40.C0 = CFrame.new(35.7379837, 25.1083584, -9.38572502, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w40.Part1 = p41
w40.C1 = CFrame.new(35.7379875, 25.1083603, -9.23473454, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w41 = Instance.new("Weld", p41)
w41.Name = "Part_Weld"
w41.Part0 = p41
w41.C0 = CFrame.new(35.7379875, 25.1083603, -9.23473454, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w41.Part1 = p42
w41.C1 = CFrame.new(35.7379913, 24.9916019, -2.11887932, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w42 = Instance.new("Weld", p42)
w42.Name = "Part_Weld"
w42.Part0 = p42
w42.C0 = CFrame.new(35.7379913, 24.9916019, -2.11887932, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w42.Part1 = p43
w42.C1 = CFrame.new(35.7379913, 24.9916019, -2.11887932, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w43 = Instance.new("Weld", p43)
w43.Name = "Part_Weld"
w43.Part0 = p43
w43.C0 = CFrame.new(35.7379913, 24.9916019, -2.11887932, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w43.Part1 = p44
w43.C1 = CFrame.new(35.7379913, 24.9916058, -1.81219578, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w44 = Instance.new("Weld", p44)
w44.Name = "Part_Weld"
w44.Part0 = p44
w44.C0 = CFrame.new(35.7379913, 24.9916058, -1.81219578, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w44.Part1 = p45
w44.C1 = CFrame.new(35.7379913, 24.9916019, -1.96789074, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w45 = Instance.new("Weld", p45)
w45.Name = "Part_Weld"
w45.Part0 = p45
w45.C0 = CFrame.new(35.7379913, 24.9916019, -1.96789074, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w45.Part1 = p46
w45.C1 = CFrame.new(35.7379913, 24.9916058, -1.81219578, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w46 = Instance.new("Weld", p46)
w46.Name = "Part_Weld"
w46.Part0 = p46
w46.C0 = CFrame.new(35.7379913, 24.9916058, -1.81219578, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w46.Part1 = p47
w46.C1 = CFrame.new(35.7379913, 24.9916019, -1.96789074, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w47 = Instance.new("Weld", p47)
w47.Name = "Part_Weld"
w47.Part0 = p47
w47.C0 = CFrame.new(35.7379913, 24.9916019, -1.96789074, -0.573576331, -2.87868307e-008, -0.819152117, -0.212012321, -0.965925753, 0.14845252, -0.791240156, 0.258819222, 0.554032147)
w47.Part1 = p48
w47.C1 = CFrame.new(-23.7728367, 15.5624714, 35.7227516, 0.579227924, 0.707106769, -0.405579776, 0.579227865, -0.707106769, -0.405579716, -0.57357645, 0, -0.819151998)
w48 = Instance.new("Weld", p48)
w48.Name = "Part_Weld"
w48.Part0 = p48
w48.C0 = CFrame.new(-23.7728367, 15.5624714, 35.7227516, 0.579227924, 0.707106769, -0.405579776, 0.579227865, -0.707106769, -0.405579716, -0.57357645, 0, -0.819151998)
w48.Part1 = p49
w48.C1 = CFrame.new(35.7379837, 25.1083565, -9.07904911, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w49 = Instance.new("Weld", p49)
w49.Name = "Part_Weld"
w49.Part0 = p49
w49.C0 = CFrame.new(35.7379837, 25.1083565, -9.07904911, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w49.Part1 = p50
w49.C1 = CFrame.new(35.7379837, 25.1083584, -9.38572502, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w50 = Instance.new("Weld", p50)
w50.Name = "Part_Weld"
w50.Part0 = p50
w50.C0 = CFrame.new(35.7379837, 25.1083584, -9.38572502, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w50.Part1 = p51
w50.C1 = CFrame.new(35.7379875, 25.1083603, -9.23473454, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w51 = Instance.new("Weld", p51)
w51.Name = "Part_Weld"
w51.Part0 = p51
w51.C0 = CFrame.new(35.7379875, 25.1083603, -9.23473454, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w51.Part1 = p52
w51.C1 = CFrame.new(-25.0353527, 3.42085648, 35.7227554, 0.142244235, 0.98480773, -0.0996005014, 0.806707203, -0.173648238, -0.56486249, -0.57357645, 0, -0.819151998)
w52 = Instance.new("Weld", p52)
w52.Name = "Part_Weld"
w52.Part0 = p52
w52.C0 = CFrame.new(-25.0353527, 3.42085648, 35.7227554, 0.142244235, 0.98480773, -0.0996005014, 0.806707203, -0.173648238, -0.56486249, -0.57357645, 0, -0.819151998)
w52.Part1 = p53
w52.C1 = CFrame.new(-25.8052597, 10.9961138, 35.7227554, 0.409575999, 0.866025388, -0.286788225, 0.709406435, -0.5, -0.496731758, -0.57357645, 0, -0.819151998)
w53 = Instance.new("Weld", p53)
w53.Name = "Part_Weld"
w53.Part0 = p53
w53.C0 = CFrame.new(-25.8052597, 10.9961138, 35.7227554, 0.409575999, 0.866025388, -0.286788225, 0.709406435, -0.5, -0.496731758, -0.57357645, 0, -0.819151998)
w53.Part1 = p54
w53.C1 = CFrame.new(-25.8904991, 8.38383961, 35.7227592, 0.280166447, 0.939692616, -0.196174681, 0.769751012, -0.342020154, -0.538985491, -0.57357645, 0, -0.819151998)
w54 = Instance.new("Weld", p54)
w54.Name = "Part_Weld"
w54.Part0 = p54
w54.C0 = CFrame.new(-25.8904991, 8.38383961, 35.7227592, 0.280166447, 0.939692616, -0.196174681, 0.769751012, -0.342020154, -0.538985491, -0.57357645, 0, -0.819151998)
w54.Part1 = p55
w54.C1 = CFrame.new(-20.8903503, -10.5176811, 35.7227554, -0.280166388, 0.93969208, 0.196174622, 0.769750416, 0.342019618, -0.538984895, -0.57357651, -2.95716429e-008, -0.819151938)
w55 = Instance.new("Weld", p55)
w55.Name = "Part_Weld"
w55.Part0 = p55
w55.C0 = CFrame.new(-20.8903503, -10.5176811, 35.7227554, -0.280166388, 0.93969208, 0.196174622, 0.769750416, 0.342019618, -0.538984895, -0.57357651, -2.95716429e-008, -0.819151938)
w55.Part1 = p56
w55.C1 = CFrame.new(35.7379799, 25.8704014, -9.65809727, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w56 = Instance.new("Weld", p56)
w56.Name = "Part_Weld"
w56.Part0 = p56
w56.C0 = CFrame.new(35.7379799, 25.8704014, -9.65809727, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w56.Part1 = p57
w56.C1 = CFrame.new(35.7379799, 25.8703995, -9.8090868, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w57 = Instance.new("Weld", p57)
w57.Name = "Part_Weld"
w57.Part0 = p57
w57.C0 = CFrame.new(35.7379799, 25.8703995, -9.8090868, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w57.Part1 = p58
w57.C1 = CFrame.new(35.7379875, 25.8704014, -9.50240993, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w58 = Instance.new("Weld", p58)
w58.Name = "Part_Weld"
w58.Part0 = p58
w58.C0 = CFrame.new(35.7379875, 25.8704014, -9.50240993, -0.573576331, 0, -0.819152117, -0.469846368, -0.819152057, 0.328989863, -0.671010137, 0.57357645, 0.469846219)
w58.Part1 = p59
w58.C1 = CFrame.new(35.7379913, 25.9019985, -3.98426342, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w59 = Instance.new("Weld", p59)
w59.Name = "Part_Weld"
w59.Part0 = p59
w59.C0 = CFrame.new(35.7379913, 25.9019985, -3.98426342, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w59.Part1 = p60
w59.C1 = CFrame.new(35.7379875, 25.9019947, -4.29094791, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w60 = Instance.new("Weld", p60)
w60.Name = "Part_Weld"
w60.Part0 = p60
w60.C0 = CFrame.new(35.7379875, 25.9019947, -4.29094791, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w60.Part1 = p61
w60.C1 = CFrame.new(35.7379875, 25.9019966, -4.13995552, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w61 = Instance.new("Weld", p61)
w61.Name = "Part_Weld"
w61.Part0 = p61
w61.C0 = CFrame.new(35.7379875, 25.9019966, -4.13995552, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w61.Part1 = p62
w61.C1 = CFrame.new(35.7379913, 25.9019985, -3.98426342, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w62 = Instance.new("Weld", p62)
w62.Name = "Part_Weld"
w62.Part0 = p62
w62.C0 = CFrame.new(35.7379913, 25.9019985, -3.98426342, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w62.Part1 = p63
w62.C1 = CFrame.new(35.7379875, 25.9019947, -4.29094791, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w63 = Instance.new("Weld", p63)
w63.Name = "Part_Weld"
w63.Part0 = p63
w63.C0 = CFrame.new(35.7379875, 25.9019947, -4.29094791, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w63.Part1 = p64
w63.C1 = CFrame.new(35.7379875, 25.9019966, -4.13995552, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w64 = Instance.new("Weld", p64)
w64.Name = "TorsoPart_Weld"
w64.Part0 = p64
w64.C0 = CFrame.new(35.7379875, 25.9019966, -4.13995552, -0.573576331, 0, -0.819152117, -0.280166537, -0.939692616, 0.196174636, -0.769751191, 0.342020154, 0.538985431)
w64.Part1 = p65
w64.C1 = CFrame.new(-27.0399971, -25.1251144, -25.3600025, 1, 0, 0, 0, 1, 0, 0, 0, 1)
m2.Parent = char
m2:MakeJoints()
--------------------------------------------------------------------------------
local cor2 = Instance.new("Part", char.Wings)
cor2.Name = "Thingy"
cor2.Locked = true
cor2.BottomSurface = 0
cor2.CanCollide = false
cor2.Size = Vector3.new(0.2, 0.2, 0.2)
cor2.Transparency = 1
cor2.TopSurface = 0
corw2 = Instance.new("Weld", cor2)
corw2.Part0 = torso
corw2.Part1 = cor2
corw2.C0 = CFrame.new(0, 0.7, 0.8) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0))
corw2.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld2 = Instance.new("Weld", char.Wings)
weld2.Part0 = cor2
weld2.Part1 = char.Wings.TorsoPart
weld2.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))







rainbowNumber = 1

local model = Instance.new("Model", char)
model.Name = "x10Wand"
local player = game.Players.LocalPlayer
local pchar = player.Character
local mouse = player:GetMouse()
local cam = workspace.CurrentCamera

local rad = math.rad
bodyparts = {}
local keysDown = {}
local flySpeed = 0
local MAX_FLY_SPEED = 150

local canFly = false
local flyToggled = false

local forward, side = 0, 0
local lastForward, lastSide = 0, 0

local floatBP = Instance.new("BodyPosition")
floatBP.maxForce = Vector3.new(0, math.huge, 0)
local flyBV = Instance.new("BodyVelocity")
flyBV.maxForce = Vector3.new(9e9, 9e9, 9e9)
local turnBG = Instance.new("BodyGyro")
turnBG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)

mouse.KeyDown:connect(function(key)
        keysDown[key] = true

        if key == "f" then
                flyToggled = not flyToggled

        if not flyToggled then
                stanceToggle = "Normal"
                floatBP.Parent = nil
                flyBV.Parent = nil
                turnBG.Parent = nil
                root.Velocity = Vector3.new()
                pchar.Humanoid.PlatformStand = false
        end
end

end)
mouse.KeyUp:connect(function(key)
        keysDown[key] = nil
end)

local function updateFly()
	
	
	

        if not flyToggled then return end

        lastForward = forward
        lastSide = side

        forward = 0
        side = 0

        if keysDown.w then
                forward = forward + 1
        end
        if keysDown.s then
                forward = forward - 1
        end
        if keysDown.a then
                side = side - 1
        end
        if keysDown.d then
                side = side + 1
        end

        canFly = (forward ~= 0 or side ~= 0)

        if canFly then
                stanceToggle = "Floating"
                turnBG.Parent = root
                floatBP.Parent = nil
                flyBV.Parent = root

                flySpeed = flySpeed + 1 + (flySpeed / MAX_FLY_SPEED)
                if flySpeed > MAX_FLY_SPEED then flySpeed = MAX_FLY_SPEED end
        else
                floatBP.position = root.Position
                floatBP.Parent = root

                flySpeed = flySpeed - 1
                if flySpeed < 0 then flySpeed = 0 end
        end

        local camCF = cam.CoordinateFrame
        local in_forward = canFly and forward or lastForward
        local in_side = canFly and side or lastSide

        flyBV.velocity = ((camCF.lookVector * in_forward) + (camCF * CFrame.new(in_side,in_forward * 0.2, 0).p) - camCF.p) * flySpeed

        turnBG.cframe = camCF * CFrame.Angles(-rad(forward * (flySpeed / MAX_FLY_SPEED)), 0,0)
end

game:service'RunService'.RenderStepped:connect(function()
        if flyToggled then
                pchar.Humanoid.PlatformStand = true
        end
        updateFly()
end)





local TBlast, TBMesh = Instance.new("Part"), Instance.new("SpecialMesh")
	TBlast.BrickColor = BrickColor.new("Lime green")
	TBlast.Transparency = 1
	TBlast.Anchored = true
	TBlast.CanCollide = false
	TBlast.CFrame = root.CFrame
	TBlast.Size = Vector3.new(2,2,2)
	TBMesh.Parent = TBlast
	TBMesh.MeshType = "Sphere"
	game.Lighting.Brightness = 0
		game.Lighting.OutdoorAmbient = TBlast.BrickColor.Color
		game.Lighting.TimeOfDay = 0.1
		game.Lighting.FogEnd = 1000
		game.Lighting.FogColor = TBlast.BrickColor.Color
		game.Lighting.TimeOfDay = "00:00:00"
		game.Lighting.Ambient = Color3.new(0,0,0)
		game.Lighting.FogColor = Color3.new(0,0,0)
		game.Lighting.FogEnd = 500
		game.Lighting.FogStart = 0
		game.Lighting.GlobalShadows = true
		


function ClearEffects()
	for i, v in ipairs(CurrentEffects) do
		v:Remove()
		v:Destroy()
		game:GetService("Debris"):AddItem(v,0)
		table.remove(CurrentEffects,i)
	end
end
Human.WalkSpeed=26
function defpos()
	Neck.C0 = necko
		LH.C0 = LHC0
		LS.C0 = LSC0
		RH.C0 = RHC0
		RS.C0 = RSC0
	RootJoint.C0 = ROOTC0
end

function newpos()
	defpos()
			RS.C0=clerp(RS.C0,RS.C0*angles(rad(-50),0,0),.3)
			LS.C0=clerp(LS.C0,LS.C0*angles(rad(-50),0,0),.3)
			RH.C0=clerp(RH.C0,RH.C0*angles(rad(-25),0,0),.3)
			LH.C0=clerp(LH.C0,LH.C0*angles(rad(-25),0,0),.3)
			RootJoint.C0=clerp(RootJoint.C0,RootJoint.C0*cf(0,0,1),1)
end
function PEE(part,size,col3,Lemission,trans,accel,ltp,edirection,enabled,lifetime,rate,rotation,rotspeed,speed,velspread,name,text)
	local p=it("ParticleEmitter",part)
	p.Size=size
	p.Texture=text
	p.Color=col3
	p.LightEmission=Lemission
	p.Transparency=trans
	p.Acceleration=accel
	p.LockedToPart=ltp
	p.EmissionDirection=edirection
	p.Enabled=enabled
	p.Lifetime=lifetime
	p.Rate=rate
	p.Rotation=rotation
	p.RotSpeed=rotspeed
	p.Speed=speed
	p.VelocitySpread=velspread
	p.Name=name
	return p
end

gui = function(GuiType, parent, text, backtrans, backcol, pos, size)
	local gui = Instance.new(GuiType)
	gui.Parent = parent
	gui.Text = text
	gui.BackgroundTransparency = backtrans
	gui.BackgroundColor3 = backcol
	gui.SizeConstraint = "RelativeXY"
	gui.TextXAlignment = "Center"
	gui.TextYAlignment = "Center"
	gui.Position = pos
	gui.Size = size
	gui.Font = "SourceSans"
	gui.FontSize = "Size60"
	gui.TextWrapped = false
	gui.TextStrokeTransparency = 0
	gui.TextColor = BrickColor.new("Lime green")
	return gui
end

part=function(parent,anchored,cancollide,size,cframe,col3,material,trans)
	local p=it("Part",parent)
	p.Anchored=anchored
	p.CanCollide=cancollide
	p.Size=size
	p.CFrame=cframe
	p.Color=col3
	p.Material=material
	p.Transparency=trans
	return p
end

BillboardGui = function(image, position, size)
  local billpar = Instance.new("Part")
  billpar.Transparency = 1
  billpar.formFactor = "Custom"
  billpar.Size = Vector3.new(1, 1, 1)
  billpar.Anchored = true
  billpar.CanCollide = false
  billpar.CFrame = CFrame.new(position)
  billpar.Name = "BillboardGuiPart"
  local bill = Instance.new("BillboardGui", billpar)
  bill.Adornee = billpar
  bill.Size = UDim2.new(1, 0, 1, 0)
  bill.SizeOffset = Vector2.new(size, size)
  local d = Instance.new("ImageLabel", bill)
  d.BackgroundTransparency = 1
  d.Size = UDim2.new(1, 0, 1, 0)
  d.Image = image
  return billpar
end

RealDamage = function(part,min,max,radius)
coroutine.resume(coroutine.create(function()
    for i,v in pairs(workspace:children()) do
        if v:FindFirstChild'Humanoid' and v:FindFirstChild'Torso' then
            if v.Name == game.Players.LocalPlayer.Name then else
            print((v.Torso.Position - part.Position).magnitude)
            if ((v.Torso.Position - part.Position).magnitude <= radius) then
				local hpdmg=math.random(min,max)
                v.Humanoid.Health = v.Humanoid.Health - hpdmg
				print"0"
				print"1"
				local Dbil=it("BillboardGui", v.Torso)
				Dbil.Adornee=v.Torso
				Dbil.Size=UDim2.new(0, 500, 0, 500)
				Dbil.SizeOffset=Vector2.new(0,0)
				Dbil.AlwaysOnTop=true
				Dbil.ExtentsOffset=Vector3.new(ran(-3,3),ran(-3,3),ran(-3,3))
				table.insert(CurrentDamages,Dbil)
				print"2"
				local goo=gui("TextLabel",Dbil,""..hpdmg.."",1,Color3.new(0,0,0),UDim2.new(0, 0, 0, 0),UDim2.new(1, 0, 1, 0))
				table.insert(CurrentDamages,goo)
				print"3"
          		for i=1,10 do
	wait()
	goo.TextTransparency=i/10
end
for a,b in pairs(CurrentDamages) do
	b:Remove()
		b:Destroy()
		game:GetService("Debris"):AddItem(b,0)
		table.remove(CurrentEffects,a)
end

            end
            end
        end
    end
end))
end

smoothNO=function(ppart)
	ppart.TopSurface=10
	ppart.BottomSurface=10
	ppart.BackSurface=10
	ppart.FrontSurface=10
	ppart.LeftSurface=10
	ppart.RightSurface=10
	return ppart
end

smoothO=function(ppart)
	ppart.TopSurface=0
	ppart.BottomSurface=0
	ppart.BackSurface=0
	ppart.FrontSurface=0
	ppart.LeftSurface=0
	ppart.RightSurface=0
end

sound=function(parent,id,vol,looped)
	local s=it("Sound",parent)
	s.SoundId=id
	s.Volume=vol
	s.Looped=looped
	return s
end

mesh=function(parent,ttype,scale)
	local m=it("SpecialMesh",parent)
	m.MeshType=ttype
	m.Scale=scale
	return m
end

spmesh=function(parent,id,scale)
	local m=it("SpecialMesh",parent)
	m.MeshId=id
	m.Scale=scale
	return m
end


			
			
local EyePart=part(Char,false,false,v3(.3,.3,.3),Torso.CFrame,c3(0,1,0),"Neon",0)
EyePart.Name="EyePart"
EyePart.Shape="Ball"
local EyeWeld=it("Weld",Char)
EyeWeld.Part0=EyePart
EyeWeld.Part1=Head
EyeWeld.C0=EyeWeld.C0*cf(.2,-.25,.578)
local EyeSizes={
	NumberSequenceKeypoint.new(0,.4,0),
	NumberSequenceKeypoint.new(1,0,0)
}
local EyeTrans={
	NumberSequenceKeypoint.new(0,0,0),
	NumberSequenceKeypoint.new(1,1,0)
}
local PE=it("ParticleEmitter",EyePart)
PE.LightEmission=.4
PE.LockedToPart=true
PE.Size=NumberSequence.new(EyeSizes)
PE.Transparency=NumberSequence.new(EyeTrans)
PE.Acceleration=v3(2,0,0)
PE.Lifetime=NumberRange.new(2,2,2)
PE.Rate=70
PE.Speed=NumberRange.new(4,4,4)
PE.Texture="rbxassetid://300899374"

local function RisingAndRotatingParts(Parent,Cframe,Col1,Col2,Time,Material,Size)
local Colours = {BrickColor.new(Col1),BrickColor.new(Col2)}

local flame1 = Instance.new("Part",Parent)
flame1.Anchored = true
flame1.CanCollide =false
flame1.CFrame = Cframe
flame1.Material = Material
flame1.TopSurface = 0
flame1.BottomSurface = 0
flame1.Size = Size
flame1.BrickColor = Colours[math.random(1,#Colours)]

for i = 1,30 do
flame1.CFrame = flame1.CFrame*CFrame.Angles(.5,.5,.5)+Vector3.new(0,.2,0)
flame1.Transparency = i/30
r:wait()
end
flame1:Destroy()
end

coroutine.resume(coroutine.create(function()
	while r:wait() do
		RisingAndRotatingParts(Char,Torso.CFrame*cf(ran(-2,2),-3,ran(-2,2)),"Lime green","Really black",1,"Neon",v3(.5,.5,.5))
	end
end))
coroutine.resume(coroutine.create(function()
for i=1,huge do
local MCir=part(Char,false,false,v3(0,0,0),Torso.CFrame,c3(0,0,0),"Neon",1)
table.insert(CurrentEffects,MCir)
local CirM=mesh(MCir,"Cylinder",v3(1.3,3.3,3.3))
table.insert(CurrentEffects,CirM)
local CirDec=it("Decal",MCir)
CirDec.Texture="rbxassetid://687708091"
CirDec.Face="Right"
CirDec.Transparency=.5
table.insert(CurrentEffects,CirDec)
local MagicWeld=it("Weld",Char)
MagicWeld.Part0=EyePart
MagicWeld.Part1=MCir
MagicWeld.C0=MagicWeld.C0*angles(0,rad(90),0)*cf(.05,0,0)
table.insert(CurrentEffects,MagicWeld)
for i=1,40 do
	MagicWeld.C0=MagicWeld.C0*angles(rad(6),0,0)
	CirM.Scale=CirM.Scale+v3(0,.4,.4)
	CirDec.Transparency=i/40
	r:wait()
end
--ClearEffects()
end
end))
print"kek"

attackone=function()
	if attacking ==false then attacking=true
	print"1"
	chat:Chat(Char.Head,"Hmph.","Green")
	local Hbox=part(Char,false,false,v3(1.5,2,1.5),Torso.CFrame,c3(0,0,0),"Plastic",1)
	RealDamage(Hbox,7,16,5,false)
	local w=it("Weld",Char)
	w.Part0=Hbox
	w.Part1=LArm
	w.C0=w.C0*cf(0,1,0)
	for i=1,10 do
			RS.C0=clerp(RS.C0,RS.C0*angles(rad(0),0,0),.06)
			LS.C0=clerp(LS.C0,LS.C0*angles(rad(0),rad(-65),rad(-150)),.06)
			RH.C0=clerp(RH.C0,RH.C0*angles(0,rad(0),rad(0)),.06)
			LH.C0=clerp(LH.C0,LH.C0*angles(0,0,0),.06)
			RootJoint.C0=clerp(RootJoint.C0,RootJoint.C0*angles(0,rad(0),rad(90)),.06)
			Neck.C0=clerp(Neck.C0,Neck.C0*angles(rad(0),0,rad(-90)),.06)
			r:wait()
	end
	for i=1,10 do
		LS.C0=clerp(LS.C0,LS.C0*angles(rad(-9),rad(0),rad(0)),1)
			RootJoint.C0=clerp(RootJoint.C0,RootJoint.C0*angles(0,rad(0),rad(-12)),1)
			Neck.C0=clerp(Neck.C0,Neck.C0*angles(rad(0),0,rad(12)),1)
			r:wait()
	end
	wait(.8)
	newpos()
	Hbox:Destroy()
	end
	attacking=false
end

attacktwo=function()
	if attacking==false then attacking=true
		print"2"
		chat:Chat(Char.Head,"Die!","Green")
		local ETorso=Torso:Clone()
		ETorso.Transparency=1
		ETorso.Anchored=true
		ETorso.CanCollide=false
		ETorso.CFrame=Torso.CFrame
		for i=1,10 do
			RS.C0=clerp(RS.C0,RS.C0*angles(rad(-7),rad(0),rad(0))*cf(0,-.05,0),1)
			RootJoint.C0=clerp(RootJoint.C0,RootJoint.C0*angles(0,rad(0),rad(9)),1)
			Neck.C0=clerp(Neck.C0,Neck.C0*angles(rad(0),0,rad(-9)),1)
			r:wait()
		end
		
		for i=1,30 do
			local p=part(Char,true,false,v3(1,1,1),ETorso.CFrame*cf(0,0,-i)*angles(ran(-10,10),ran(-10,10),ran(-10,10)),c3(0,1,0),"Plastic",0)
			local m=it("SpecialMesh",p)
			m.MeshId="rbxassetid://3270017"
			m.Scale=v3(4,4,4)
			spawn(function()
				for ii=1,20 do
					r:wait()
					m.Scale=m.Scale+v3(.5,.5,.5)
					p.Transparency=ii/20
				end
			end)
			
			r:wait()
		end
		local urmum=part(Char,true,false,v3(1,1,1),ETorso.CFrame*cf(0,0,-30),c3(0,1,0),"Plastic",0)
		table.insert(CurrentEffects,urmum)
		smoothNO(urmum)
		local HBox=urmum:Clone()
		HBox.Parent=Char
		HBox.Transparency=1
		HBox.Shape="Ball"
		HBox.Size=v3(2,2,2)
		HBox.CFrame=urmum.CFrame
		RealDamage(HBox,10,25,20,false)
		local urmesh=it("SpecialMesh",urmum)
		urmesh.MeshType="Sphere"
		urmesh.Scale=v3(2,2,2)
		coroutine.resume(coroutine.create(function()
			for i=1,40 do
				urmum.Transparency=i/40
				urmesh.Scale=urmesh.Scale+v3(1.5,1.5,1.5)
				HBox.CFrame=urmum.CFrame
				HBox.Size=HBox.Size+v3(1,1,1)
				r:wait()
			end
		end))
		for a=1,2 do
		for i=1,20 do
			spawn(function()
			local rann=part(Char,true,false,v3(0,0,0),ETorso.CFrame*cf(0,0,-30)*cf(ran(-30,30),ran(30),ran(-30,30)),c3(0,1,0),"Neon",1)
			table.insert(CurrentEffects,rann)
			local p=part(Char,false,false,v3(0,0,0),ETorso.CFrame*CFrame.new(0,0,-30),c3(0,1,0),"Neon",0)
			table.insert(CurrentEffects,p)
			local m=it("BlockMesh",p)
			m.Scale=v3(6,6,6)
			local bp=it("BodyPosition")
			bp.maxForce=v3(math.huge,math.huge,math.huge)
			bp.Position=rann.Position
			bp.Parent=p
			table.insert(CurrentEffects,bp)
			spawn(function()
				for i=1,16 do
					r:wait()
					p.Transparency=i/16
				end
			end)
			wait()
			bp.Parent=bil
			end)
		end
		end
		ETorso:Remove()
		HBox:Destroy()
	end
	--ClearEffects()
	attacking=false
	newpos()
end

attackthree=function()
	if attacking==false then attacking=true
		print"3"
		chat:Chat(Char.Head,"Get Ready..","Green")
		for i=1,10 do
			RS.C0=clerp(RS.C0,RS.C0*angles(rad(-33),0,rad(-10))*cf(0,-.25,0),.4)
			LS.C0=clerp(LS.C0,LS.C0*angles(rad(0),rad(20),rad(0)),.06)
			RH.C0=clerp(RH.C0,RH.C0*angles(0,rad(0),rad(0)),.06)
			LH.C0=clerp(LH.C0,LH.C0*angles(0,0,0),.06)
			RootJoint.C0=clerp(RootJoint.C0,RootJoint.C0*angles(0,rad(0),rad(-6)),1)
			Neck.C0=clerp(Neck.C0,Neck.C0*angles(rad(0),0,rad(6)),1)
			r:wait()
		end
		
		local ball=part(Char,false,false,v3(1,1,1),Head.CFrame,c3(0,0,0),"Plastic",.8)
		local ball2=part(Char,false,false,v3(1,1,1),Head.CFrame,c3(0,1,0),"Neon",.2)
		local w=it("Weld",Char)
		w.Part0=ball
		w.Part1=RArm
		w.C0=w.C0*cf(0,20,0)
		local w2=it("Weld",Char)
		w2.Part0=ball2
		w2.Part1=ball
		local m=it("SpecialMesh",ball)
		m.MeshType="Sphere"
		m.Scale=Vector3.new(.1,.1,.1)
		local m2=it("SpecialMesh",ball2)
		m2.MeshType="Sphere"
		m2.Scale=Vector3.new(.01,.01,.01)
				local EyeSizes={
	NumberSequenceKeypoint.new(0,5,0),
	NumberSequenceKeypoint.new(1,0,0)
}
		local PE=it("ParticleEmitter",ball)
PE.LightEmission=.4
PE.LockedToPart=false
PE.Size=NumberSequence.new(EyeSizes)
PE.Transparency=NumberSequence.new(EyeTrans)
PE.Acceleration=v3(0,0,0)
PE.Lifetime=NumberRange.new(4,4,4)
PE.Rate=2e9
PE.Speed=NumberRange.new(0,0,0)
PE.Texture="rbxassetid://300899374"
--table.insert(CurrentEffects,PE)
		coroutine.resume(coroutine.create(function()
			for i=1,30 do
				spawn(function()
				local rng=part(Char,true,false,v3(1,1,1),ball.CFrame*angles(ran(-10,10),ran(-10,10),ran(-10,10)),c3(0,1,0),"Plastic",.5)
				table.insert(CurrentEffects,rng)
				local rm=it("SpecialMesh",rng)
				rm.MeshId="rbxassetid://3270017"
				rm.Scale=v3(60,60,60)
				for ii=1,10 do
					rm.Scale=rm.Scale-v3(6,6,6)
					r:wait()
				end
				end)
				wait()
			end
		end))
		local p1=part(Char,true,false,v3(1,1,1),ball.CFrame,c3(0,1,0),"Neon",.5)
		local pm=mesh(p1,"Brick",v3(5,5,5))
		for i=1,20 do
			m.Scale=m.Scale+v3(.5,.5,.5)
			m2.Scale=m2.Scale+v3(.3,.3,.3)
			p1.Transparency=(-i/20*-i/20)
			r:wait()
		end
		wait(.5)
		w.Parent=nil
		table.insert(CurrentEffects,w)
		--table.insert(CurrentEffects,w2)
		local placeholder=part(Char,true,false,v3(1,1,1),Head.CFrame*CFrame.new(0,-5,-30),c3(0,1,0),"Neon",1)
	local BV=it("BodyVelocity")
		BV.maxForce=v3(huge,huge,huge)
		BV.Velocity=(placeholder.Position-ball.Position).unit*100
		BV.Parent=ball
		ball.Touched:connect(function(hit)
			if hit.Name~=ball2.Name then
			ball.Anchored=true
			ball.ParticleEmitter.Enabled=false
			ball.Transparency=1
			ball2.Transparency=1
			local xpl=part(Char,true,false,v3(1,1,1),ball.CFrame*angles(ran(-10,10),ran(-10,10),ran(-10,10)),c3(0,1,0),"Neon",.75)
			local m=spmesh(xpl,"rbxassetid://9982590",v3(4,4,4))
			local xpl2=part(Char,true,false,v3(4,4,4),ball.CFrame*angles(ran(-10,10),ran(-10,10),ran(-10,10)),c3(0,1,0),"Neon",1)
			spawn(function()
			for i=1,80 do
				xpl.Transparency=.75+i/80
				
				m.Scale=m.Scale+v3(.6,.6,.6)
				
				wait()
					
				
			end
			end)
			RealDamage(xpl2,15,30,7)
			for i=1,50 do
				xpl2.Size=xpl2.Size+v3(.3,.3,.3)
				xpl2.CFrame=ball.CFrame
				r:wait()
			end
			xpl:Destroy()
			xpl2:Destroy()
			end
		end)
		spawn(function()
			wait(1.5)
			if BV then
			BV:Destroy()
			end
			
			placeholder:Destroy()
			PE.Enabled=false
			ball2:Destroy()
			wait(7)
			ball:Destroy()
		end)
		for i=1,10 do
			RS.C0=clerp(RS.C0,RS.C0*angles(rad(0),rad(20),rad(30))*cf(0,0,0),.4)
			LS.C0=clerp(LS.C0,LS.C0*angles(rad(0),rad(0),rad(0)),.06)
			RH.C0=clerp(RH.C0,RH.C0*angles(0,rad(0),rad(0)),.06)
			LH.C0=clerp(LH.C0,LH.C0*angles(0,0,0),.06)
			RootJoint.C0=clerp(RootJoint.C0,RootJoint.C0*angles(0,rad(0),rad(12)),1)
			Neck.C0=clerp(Neck.C0,Neck.C0*angles(rad(0),0,rad(-12)),1)
			wait()
		end
		chat:Chat(Char.Head,"Falling Star!","Green")
	end
	wait(2)
	attacking=false
	attacktype=1
	newpos()
end

Mouse.Button1Down:connect(function()
	if attacking== false and attacktype == 1 then
		attackone()
		attacktype = 2
	else
		if attacking == false and attacktype == 2 then
			attacktwo()
			attacktype = 3
		else
			if attacking == false and attacktype == 3 then
				attackthree()
				attacktype = 1
			end
		end
	end
end)


local Ging=false
Mouse.KeyDown:connect(function(Key)
	if Key=="g"  and Ging==false and attacking==false then attacking,Torso.Anchored=true,true
		local Clear={}
		local REKING=true
		chat:Chat(Char.Head,"By The Power Bestowed Upon Me Within The Demon's Eye..","Green")
		for i=1,20 do
			RS.C0=clerp(RS.C0,RS.C0*angles(rad(4.5),rad(-2),rad(8.5))*cf(0.02,0,0),1)
			LS.C0=clerp(LS.C0,LS.C0*angles(rad(0),rad(0),rad(0)),.06)
			RH.C0=clerp(RH.C0,RH.C0*angles(0,rad(0),rad(0)),.06)
			LH.C0=clerp(LH.C0,LH.C0*angles(0,0,0),.06)
			RootJoint.C0=clerp(RootJoint.C0,RootJoint.C0*angles(0,rad(0),rad(1)),1)
			Neck.C0=clerp(Neck.C0,Neck.C0*angles(rad(-1),0,rad(-2)),1)
			r:wait()
		end
		local ball=part(Char,false,false,v3(0,0,0),Torso.CFrame,c3(0,1,0),"Neon",0)
		local ball2=part(Char,false,false,v3(.3,.3,.3),Torso.CFrame,c3(0,0,0),"Plastic",.8)
		local bm=mesh(ball,"Sphere",v3(0,0,0))
		local bm2=mesh(ball2,"Sphere",v3(.3,.3,.3))
		smoothNO(ball2)
		local w=it("Weld",Char)
		w.Part0=ball
		w.Part1=RArm
		w.C0=w.C0*CFrame.new(0,1.6,0)
		local w2=it("Weld",Char)
		w2.Part0=ball2
		w2.Part1=RArm
		w2.C0=w2.C0*CFrame.new(0,1.6,0)
		for i=1,60 do r:wait()
		bm.Scale=bm.Scale:Lerp(bm.Scale+Vector3.new(.23,.23,.23),.3)
		bm2.Scale=bm2.Scale:Lerp(bm2.Scale+Vector3.new(.3,.3,.3),.3)
		end
		local Ring=part(Char,true,false,v3(0,0,0),ball.CFrame,c3(0,0,0),"Neon",.5)
		local Ring2=Ring:Clone()
		Ring2.Parent=Char
		local RM=spmesh(Ring,"rbxassetid://3270017",Vector3.new(1.7,1.7,.5))
		local RM2=spmesh(Ring2,"rbxassetid://3270017",Vector3.new(1.7,1.7,.5))
		Ring.CFrame=ball.CFrame*CFrame.Angles(ran(-10,10),ran(-10,10),ran(-10,10))
		Ring2.CFrame=ball.CFrame*CFrame.Angles(ran(-10,10),ran(-10,10),ran(-10,10))
		Ging=true
		coroutine.resume(coroutine.create(function()
		while Ging==true do r:wait()
			Ring.CFrame=Ring.CFrame:lerp(Ring.CFrame*CFrame.Angles(math.rad(ran(1,30)),math.rad(ran(1,30)),math.rad(ran(1,30))),.3)
			Ring2.CFrame=Ring2.CFrame:lerp(Ring2.CFrame*CFrame.Angles(math.rad(ran(1,30)),math.rad(ran(1,30)),math.rad(ran(1,30))),.3)
		end
		end))
		print"OYEFGYEFYGIEF"
		local cols={"Lime green", "Really black"}
		function fromground()
		local poss = Torso.CFrame*CFrame.new(0,-3,0)
		local main=it("Part",Char)
		main.Anchored=true
		main.CanCollide=false
		main.Size=v3(1,.2,1)
		main.CFrame=poss
		main.BrickColor=BrickColor.new(cols[math.random(#cols)])
		main.Material="Neon"
		main.CFrame = main.CFrame*cf((ran(-30,30)),0,(ran(-30,30)))
		local one = it("SpecialMesh", main)
		one.MeshType = "Sphere"
		one.Scale = v3(.3,.3,.3)
		main.CFrame = main.CFrame*angles((rad(90)),0,0)
		for i = 0,10,.1 do
			one.Scale = one.Scale+v3(.1,.1,4)
			main.Transparency = i
			wait()
		end
		one:Destroy()
		main:Destroy()
		end
		coroutine.resume(coroutine.create(function()
		while Ging==true do 
			spawn(function()
				fromground()
			end)
			wait(.1)
		end
		end))
		spawn(function()
		coroutine.resume(coroutine.create(function()
		for i=1,17 do r:wait()
			print"hi"
			local Cir=part(Char,true,false,v3(0,0,0),Torso.CFrame*cf(0,-2.8,0)*angles(0,0,math.rad(90)),c3(0,0,0),"Neon",1)
			local Cirm=mesh(Cir,"Cylinder",v3(0,1,1))
			local CirDec=it("Decal",Cir)
			CirDec.Texture="rbxassetid://687708091"
			CirDec.Face="Right"
			CirDec.Transparency=0
			table.insert(Clear,Cir)
			for ii=1,100 do r:wait()
				Cir.CFrame=Cir.CFrame*CFrame.Angles(math.rad(i*1.5),0,0)
			Cirm.Scale=Cirm.Scale:Lerp(Cirm.Scale+Vector3.new(0,6,6),.4)
			CirDec.Transparency=ii/100
			end
		end
		end))
		end)
		Bright={}
		local BR=1
		for i=1,10 do
			table.insert(Bright,BR)
			BR=BR-.1
		end
		table.insert(Bright,0)
		for i, v in pairs(Bright) do
			print(v)
		end
		Lighting.Brightness=1
		spawn(function()
		for i=1,#Bright do
			Lighting.Brightness=Bright[i]
			wait(.1)
		end
		end)
		local C1=part(Char,true,false,v3(1,1,1),Torso.CFrame*CFrame.new(0,155,0),c3(90/255,97/255,99/255),"Plastic",1)
		local C1m=spmesh(C1,"rbxassetid://1095708",v3(1000,50,1000))
		for i=1,#Bright do
			C1.Transparency=Bright[i]
			wait(.1)
		end
		chat:Chat(Char.Head,"Open! Hades Gate!","Green")
		--PORTAL
		Portalling=true
		for i=1,2 do
		local Spoke1=part(Char,true,false,v3(1,1,1),Torso.CFrame,c3(0,1,1),"Plastic",1)
		local pp1=part(Char,false,false,v3(2,2,2),Torso.CFrame,c3(0,1,1),"Plastic",1)
		local pp2=part(Char,false,false,v3(2,2,2),Torso.CFrame,c3(0,1,1),"Plastic",1)
		local pp3=part(Char,false,false,v3(2,2,2),Torso.CFrame,c3(0,1,1),"Plastic",1)
		local pp4=part(Char,false,false,v3(2,2,2),Torso.CFrame,c3(0,1,1),"Plastic",1)
		local POS=part(Char,false,false,v3(2,2,2),Torso.CFrame*angles(math.rad(90),0,0)*cf(0,0,-140),c3(0,1,1),"Plastic",1)
		
		local wel0=it("Weld",Char)
		wel0.Part0=Spoke1
		wel0.Part1=POS
		wait()
		local wel1=it("Weld",Char)
		wel1.Part0=POS
		wel1.Part1=pp1
		wait()
		wel1.C0=wel1.C0*cf(0,60,0)
		wait()
		local wel2=it("Weld",Char)
		wel2.Part0=POS
		wel2.Part1=pp2
		wel2.C0=wel2.C0*cf(0,-60,0)
		wait()
		
		local wel3=it("Weld",Char)
		wel3.Part0=POS
		wel3.Part1=pp3
		wel3.C0=wel3.C0*cf(-60,0,0)
		wait()
		local wel4=it("Weld",Char)
		wel4.Part0=POS
		wel4.Part1=pp4
		wel4.C0=wel4.C0*cf(60,0,0)
		local TransPoints={
			NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(.51,0,0),NumberSequenceKeypoint.new(.517,.0123,0),
			NumberSequenceKeypoint.new(.767,0.0926,0),NumberSequenceKeypoint.new(.88,.395,0),NumberSequenceKeypoint.new(1,1,0)
		}
		local SizePoints={
			NumberSequenceKeypoint.new(0,4.56,0),NumberSequenceKeypoint.new(.046,4.44,0),NumberSequenceKeypoint.new(.144,4.25,0),
			NumberSequenceKeypoint.new(.521,4,0),NumberSequenceKeypoint.new(1,3.75,0)
		}
		local PE1=PEE(pp1,NumberSequence.new(SizePoints),ColorSequence.new(Color3.new(1,1,1),Color3.new(0,1,1)),.6,NumberSequence.new(TransPoints),v3(0,0,0),false,"Bottom",true,NumberRange.new(6,6,6),499999997952.000,NumberRange.new(0,0,0),NumberRange.new(0,0,0),NumberRange.new(6,6,6),0,"SpinningPortalEffect1","rbxassetid://300899374")
		local PE2=PEE(pp2,NumberSequence.new(SizePoints),ColorSequence.new(Color3.new(1,1,1),Color3.new(0,1,1)),.6,NumberSequence.new(TransPoints),v3(0,0,0),false,"Top",true,NumberRange.new(6,6,6),499999997952.000,NumberRange.new(0,0,0),NumberRange.new(0,0,0),NumberRange.new(6,6,6),0,"SpinningPortalEffect2","rbxassetid://300899374")
		local PE3=PEE(pp3,NumberSequence.new(SizePoints),ColorSequence.new(Color3.new(1,1,1),Color3.new(0,1,1)),.6,NumberSequence.new(TransPoints),v3(0,0,0),false,"Right",true,NumberRange.new(6,6,6),499999997952.000,NumberRange.new(0,0,0),NumberRange.new(0,0,0),NumberRange.new(6,6,6),0,"SpinningPortalEffect3","rbxassetid://300899374")
		local PE4=PEE(pp4,NumberSequence.new(SizePoints),ColorSequence.new(Color3.new(1,1,1),Color3.new(0,1,1)),.6,NumberSequence.new(TransPoints),v3(0,0,0),false,"Left",true,NumberRange.new(6,6,6),499999997952.000,NumberRange.new(0,0,0),NumberRange.new(0,0,0),NumberRange.new(6,6,6),0,"SpinningPortalEffect4","rbxassetid://300899374")
		spawn(function()
			
		
		while Portalling==true do
			wait()
			POS.CFrame=POS.CFrame*angles(0,0,math.rad(3))
		end
		POS:Destroy()
		pp1:Destroy()
		pp2:Destroy()
		pp3:Destroy()
		pp4:Destroy()
		end)
		wait(.5)
		end
		wait(5)
		newpos()
		chat:Chat(Char.Head,"Now, You Will Know What It's Like To Burn.","Green")
		Ging=false
		Ring:Destroy()
		Ring2:Destroy()
		ball:Destroy()
		ball2:Destroy()
		for i,v in pairs(Clear) do
			v:Destroy()
		end
		wait(3)
		--anims
		chat:Chat(Char.Head,"DIE!!!!!","Green")
		defpos()
		
			RS.C0 = clerp(RS.C0,RS.C0* angles(rad(-30), rad(0), rad(0)), 1)
			LS.C0 = clerp(LS.C0,LS.C0* angles(rad(-30), rad(0), rad(0)), 1)
			RH.C0 = clerp(RH.C0,RH.C0* angles(rad(-10), rad(0), rad(0)), 1)
			LH.C0 = clerp(LH.C0,LH.C0* angles(rad(-10), rad(0), rad(0)), 1)
			Neck.C0 = clerp(Neck.C0,Neck.C0*angles(rad(-35), rad(0), rad(0)), 1)
		local cylp=part(Char,true,false,v3(1,1,1),Torso.CFrame*angles(0,0,math.rad(90)),c3(0,1,0),"Neon",.5)
		local clym=mesh(cylp,"Cylinder",v3(5000,60,40))
		smoothNO(cylp)
		spawn(function()
		while REKING==true do r:wait()
			cylp.CFrame=Torso.CFrame*angles(0,0,math.rad(90))*CFrame.new(ran(-2,2),0,ran(-2,2))
		end
		end)
		local Explosion=function()
			local b1=part(Char,true,false,v3(1,1,1),Torso.CFrame,c3(0,1,0),"Neon",.5)--spike mesh in middle
			local b2=part(Char,true,false,v3(1,1,1),Torso.CFrame,c3(0,0,0),"Neon",.6)--black ball mesh thats big and expands
			local b3=part(Char,true,false,v3(1,1,1),Torso.CFrame,c3(0,1,0),"Neon",.7)--green ball mesh that coats black ball mesh
			local r1=part(Char,true,false,v3(1,1,1),Torso.CFrame*angles(ran(-10,10),ran(-10,10),ran(-10,10)),c3(0,0,0),"Neon",.6)--ring that rotates around section
			local r2=part(Char,true,false,v3(1,1,1),Torso.CFrame*angles(ran(-10,10),ran(-10,10),ran(-10,10)),c3(0,0,0),"Neon",.6)--ring that rotates around section
			local bb=part(Char,true,false,v3(1,1,1),Torso.CFrame,c3(0,0,0),"Neon",.7)--black ball that envelopes all >:D rhymes
			local gr=part(Char,true,false,v3(1,1,1),Torso.CFrame*angles(ran(-10,10),ran(-10,10),ran(-10,10)),c3(0,1,0),"Neon",.7)--green ring that goes around bb
			local gr2=part(Char,true,false,v3(1,1,1),Torso.CFrame*angles(ran(-10,10),ran(-10,10),ran(-10,10)),c3(0,1,0),"Neon",.7)--green ring that goes around bb
			local sw=part(Char,true,false,v3(1,1,1),Torso.CFrame,c3(0,1,0),"Neon",.7)--shockwave around whole fing
			local sw2=part(Char,true,false,v3(1,1,1),Torso.CFrame,c3(0,1,0),"Neon",.7)--another shockwave around whole fing
			local bm1=spmesh(b1,"rbxassetid://9982590",v3(8,8,8))
			local bm2=mesh(b2,"Sphere",v3(40,40,40))
			local bm3=mesh(b3,"Sphere",v3(42,42,42))
			local rm1=spmesh(r1,"rbxassetid://3270017",v3(50,50,30))
			local rm2=spmesh(r2,"rbxassetid://3270017",v3(50,50,30))
			local bbm=mesh(bb,"Sphere",v3(60,60,60))
			local grm1=spmesh(gr,"rbxassetid://3270017",v3(80,80,50))
			local grm2=spmesh(gr2,"rbxassetid://3270017",v3(80,80,50))
			local ss1=spmesh(sw,"rbxassetid://20329976",v3(40,15,40))
			local ss2=spmesh(sw2,"rbxassetid://20329976",v3(48,5,48))
			wait()
			smoothNO(b1)
			smoothNO(b2)
			smoothNO(bb)
			RealDamage(Torso,70,200,70,false)
			for i=1,400 do r:wait()
				--CFrames
				b1.CFrame=b1.CFrame:lerp(b1.CFrame*CFrame.Angles(rad(3),0,rad(3)),.4)
				r1.CFrame=r1.CFrame:lerp(r1.CFrame*CFrame.Angles(math.rad(ran(1,30)),math.rad(ran(1,30)),math.rad(ran(1,30))),.3)
				r2.CFrame=r2.CFrame:lerp(r2.CFrame*CFrame.Angles(math.rad(ran(1,30)),math.rad(ran(1,30)),math.rad(ran(1,30))),.3)
				gr.CFrame=gr.CFrame:lerp(gr.CFrame*CFrame.Angles(math.rad(ran(1,30)),math.rad(ran(1,30)),math.rad(ran(1,30))),.1)
				gr2.CFrame=gr2.CFrame:lerp(gr2.CFrame*CFrame.Angles(math.rad(ran(1,30)),math.rad(ran(1,30)),math.rad(ran(1,30))),.1)
				sw.CFrame=sw.CFrame:lerp(sw.CFrame*CFrame.Angles(0,math.rad(5),0),.4)
				sw2.CFrame=sw2.CFrame:lerp(sw2.CFrame*CFrame.Angles(0,math.rad(-5),0),.4)
				--Sizing
				bm1.Scale=bm1.Scale:Lerp(bm1.Scale+Vector3.new(1.8,1.8,1.8),.069)--hehe
				bm2.Scale=bm2.Scale:Lerp(bm2.Scale+Vector3.new(6,6,6),.1)
				bm3.Scale=bm3.Scale:Lerp(bm3.Scale+Vector3.new(6,6,6),.1)
				rm1.Scale=rm1.Scale:Lerp(rm1.Scale+Vector3.new(7,7,7),.1)
				rm2.Scale=rm2.Scale:Lerp(rm2.Scale+Vector3.new(7,7,7),.1)
				bbm.Scale=bbm.Scale:Lerp(bbm.Scale+Vector3.new(8,8,8),.1)
				grm1.Scale=grm1.Scale:Lerp(grm1.Scale+Vector3.new(7,7,7),.1)
				grm2.Scale=grm2.Scale:Lerp(grm2.Scale+Vector3.new(7,7,7),.1)
				ss1.Scale=ss1.Scale:Lerp(ss1.Scale+Vector3.new(7,3,7),.1)
				ss2.Scale=ss2.Scale:Lerp(ss2.Scale+Vector3.new(7,2,7),.1)
				--Transparency
				b1.Transparency=.7+i/400
				b2.Transparency=.7+i/400
				b3.Transparency=.7+i/400
				r1.Transparency=.7+i/400
				r2.Transparency=.7+i/400
				bb.Transparency=.7+i/400
				gr.Transparency=.7+i/400
				gr2.Transparency=.7+i/400
				sw.Transparency=.7+i/400
				sw2.Transparency=.7+i/400
				
			end
			--Destroying
			b1:Destroy()
			b2:Destroy()
			b3:Destroy()
			r1:Destroy()
			r2:Destroy()
			bb:Destroy()
			gr:Destroy()
			gr2:Destroy()
			sw:Destroy()
			sw2:Destroy()
			end
			for i=1,30 do r:wait()
				spawn(function()
					Explosion()
				end)
				wait(.89)
			end
			REKING=false
		NBright={}
		local NBR=0
		for i=1,10 do
			table.insert(NBright,NBR)
			NBR=NBR+.1
		end
		print"boop"
		for i, v in pairs(NBright) do
			print(v)
		end
		for i=1,#NBright do
			Lighting.Brightness=NBright[i]
			wait(.1)
		end
		Lighting.Brightness=1
		Portalling=false
		for i=1,10 do wait()
			C1.Transparency=i/10
			cylp.Transparency=.5+i/10
		end
		Torso.Anchored=false
		newpos()
		attacking=false
		canattack=true
		
	end
end)





Mouse.KeyDown:connect(function(Key)
	if Key=="p" and attacking==false then attacking=true
		chat:Chat(Char.Head,"URAGH!","Green")
		local Explosion=function()
			local b1=part(Char,true,false,v3(1,1,1),Torso.CFrame,c3(0,1,0),"Neon",.5)--spike mesh in middle
			local b2=part(Char,true,false,v3(1,1,1),Torso.CFrame,c3(0,0,0),"Neon",.6)--black ball mesh thats big and expands
			local b3=part(Char,true,false,v3(1,1,1),Torso.CFrame,c3(0,1,0),"Neon",.7)--green ball mesh that coats black ball mesh
			local r1=part(Char,true,false,v3(1,1,1),Torso.CFrame*angles(ran(-10,10),ran(-10,10),ran(-10,10)),c3(0,0,0),"Neon",.6)--ring that rotates around section
			local r2=part(Char,true,false,v3(1,1,1),Torso.CFrame*angles(ran(-10,10),ran(-10,10),ran(-10,10)),c3(0,0,0),"Neon",.6)--ring that rotates around section
			local bb=part(Char,true,false,v3(1,1,1),Torso.CFrame,c3(0,0,0),"Neon",.7)--black ball that envelopes all >:D rhymes
			local gr=part(Char,true,false,v3(1,1,1),Torso.CFrame*angles(ran(-10,10),ran(-10,10),ran(-10,10)),c3(0,1,0),"Neon",.7)--green ring that goes around bb
			local gr2=part(Char,true,false,v3(1,1,1),Torso.CFrame*angles(ran(-10,10),ran(-10,10),ran(-10,10)),c3(0,1,0),"Neon",.7)--green ring that goes around bb
			local sw=part(Char,true,false,v3(1,1,1),Torso.CFrame,c3(0,1,0),"Neon",.7)--shockwave around whole fing
			local sw2=part(Char,true,false,v3(1,1,1),Torso.CFrame,c3(0,1,0),"Neon",.7)--another shockwave around whole fing
			local bm1=spmesh(b1,"rbxassetid://9982590",v3(8,8,8))
			local bm2=mesh(b2,"Sphere",v3(40,40,40))
			local bm3=mesh(b3,"Sphere",v3(42,42,42))
			local rm1=spmesh(r1,"rbxassetid://3270017",v3(50,50,30))
			local rm2=spmesh(r2,"rbxassetid://3270017",v3(50,50,30))
			local bbm=mesh(bb,"Sphere",v3(60,60,60))
			local grm1=spmesh(gr,"rbxassetid://3270017",v3(80,80,50))
			local grm2=spmesh(gr2,"rbxassetid://3270017",v3(80,80,50))
			local ss1=spmesh(sw,"rbxassetid://20329976",v3(40,15,40))
			local ss2=spmesh(sw2,"rbxassetid://20329976",v3(48,5,48))
			wait()
			smoothNO(b1)
			smoothNO(b2)
			smoothNO(bb)
			for i=1,400 do r:wait()
				--CFrames
				b1.CFrame=b1.CFrame:lerp(b1.CFrame*CFrame.Angles(rad(3),0,rad(3)),.4)
				r1.CFrame=r1.CFrame:lerp(r1.CFrame*CFrame.Angles(math.rad(ran(1,30)),math.rad(ran(1,30)),math.rad(ran(1,30))),.3)
				r2.CFrame=r2.CFrame:lerp(r2.CFrame*CFrame.Angles(math.rad(ran(1,30)),math.rad(ran(1,30)),math.rad(ran(1,30))),.3)
				gr.CFrame=gr.CFrame:lerp(gr.CFrame*CFrame.Angles(math.rad(ran(1,30)),math.rad(ran(1,30)),math.rad(ran(1,30))),.1)
				gr2.CFrame=gr2.CFrame:lerp(gr2.CFrame*CFrame.Angles(math.rad(ran(1,30)),math.rad(ran(1,30)),math.rad(ran(1,30))),.1)
				sw.CFrame=sw.CFrame:lerp(sw.CFrame*CFrame.Angles(0,math.rad(5),0),.4)
				sw2.CFrame=sw2.CFrame:lerp(sw2.CFrame*CFrame.Angles(0,math.rad(-5),0),.4)
				--Sizing
				bm1.Scale=bm1.Scale:Lerp(bm1.Scale+Vector3.new(1.8,1.8,1.8),.069)--hehe
				bm2.Scale=bm2.Scale:Lerp(bm2.Scale+Vector3.new(6,6,6),.1)
				bm3.Scale=bm3.Scale:Lerp(bm3.Scale+Vector3.new(6,6,6),.1)
				rm1.Scale=rm1.Scale:Lerp(rm1.Scale+Vector3.new(7,7,7),.1)
				rm2.Scale=rm2.Scale:Lerp(rm2.Scale+Vector3.new(7,7,7),.1)
				bbm.Scale=bbm.Scale:Lerp(bbm.Scale+Vector3.new(8,8,8),.1)
				grm1.Scale=grm1.Scale:Lerp(grm1.Scale+Vector3.new(7,7,7),.1)
				grm2.Scale=grm2.Scale:Lerp(grm2.Scale+Vector3.new(7,7,7),.1)
				ss1.Scale=ss1.Scale:Lerp(ss1.Scale+Vector3.new(7,3,7),.1)
				ss2.Scale=ss2.Scale:Lerp(ss2.Scale+Vector3.new(7,2,7),.1)
				--Transparency
				b1.Transparency=.7+i/400
				b2.Transparency=.7+i/400
				b3.Transparency=.7+i/400
				r1.Transparency=.7+i/400
				r2.Transparency=.7+i/400
				bb.Transparency=.7+i/400
				gr.Transparency=.7+i/400
				gr2.Transparency=.7+i/400
				sw.Transparency=.7+i/400
				sw2.Transparency=.7+i/400
				
			end
				b1:Destroy()
			b2:Destroy()
			b3:Destroy()
			r1:Destroy()
			r2:Destroy()
			bb:Destroy()
			gr:Destroy()
			gr2:Destroy()
			sw:Destroy()
			sw2:Destroy()
		end
		Torso.Anchored=true
		RS.C0 = clerp(RS.C0,RS.C0* angles(rad(-30), rad(0), rad(0)), 1)
			LS.C0 = clerp(LS.C0,LS.C0* angles(rad(-30), rad(0), rad(0)), 1)
			RH.C0 = clerp(RH.C0,RH.C0* angles(rad(-10), rad(0), rad(0)), 1)
			LH.C0 = clerp(LH.C0,LH.C0* angles(rad(-10), rad(0), rad(0)), 1)
			Neck.C0 = clerp(Neck.C0,Neck.C0*angles(rad(-35), rad(0), rad(0)), 1)
			spawn(function()
		Explosion()
			end)
			wait(2)
		Torso.Anchored=false
		newpos()
		
		attacking=false
	end
end)

Mouse.KeyDown:connect(function(Key)
	if Key=="l" then
		local poop=part(Char,true,false,v3(1,1,1),Torso.CFrame,c3(0,1,0),"Neon",.7)
		local cyl=mesh(poop,"Cylinder",v3(1,1,1))
		for i=1,60,.2 do r:wait()
			cyl.Scale=Vector3.new(i*2,i*2,4)
			poop.CFrame=Torso.CFrame*CFrame.new(0,0,-i)*CFrame.Angles(0,rad(90),0)
		end
		
	end
end)

Mouse.KeyDown:connect(function(Key)
	if Key=="m" then
		local poop=part(Char,true,false,v3(1,1,1),Torso.CFrame*cf(ran(3,10),ran(0,10),ran(3,10)),c3(0,1,0),"Neon",.7)
		poop.CFrame=poop.CFrame*CFrame.new(poop.Position-Torso.Position,poop.Position)
	end
end)









local animpose = "Idle"
local lastanimpose = "Idle"
local sine = 0
local change = 1
local val = 0
local ffing = false
-------------------------------
game:GetService("RunService").RenderStepped:connect(function()
--[[if char.Humanoid.Jump == true then
jump = true
else
jump = false
end]]
char.Humanoid.FreeFalling:connect(function(f)
if f then
ffing = true
else
ffing = false
end
end)
sine = sine + change
if jumpn == true then
animpose = "Jumping"
elseif ffing == true then
animpose = "Freefalling"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 2 then
animpose = "Idle"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 20 then
animpose = "Walking"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > 20 then
animpose = "Running"
end
if animpose ~= lastanimpose then
sine = 0
if Debounces.NoIdl == false then
if animpose == "Idle" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(-6),math.rad(8)), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8)), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(0),0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
end
elseif animpose == "Walking" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(8)), 0.4)
end
elseif animpose == "Running" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-20),math.rad(-14),math.rad(8+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-20),math.rad(14),math.rad(-8-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-10),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20),0, math.rad(0)), 0.4)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-12), 0, math.rad(-7)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-12), 0, math.rad(7)), 0.4)
wait()
end
end
else
end
end
lastanimpose = animpose
if Debounces.NoIdl == false then
if animpose == "Idle" then
change = 0.5
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62+0.1*math.cos(sine/10),0)*CFrame.Angles(math.rad(-10),math.rad(-10),math.rad(14+2*math.cos(sine/10))), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62+0.1*math.cos(sine/10),0)*CFrame.Angles(math.rad(-20),math.rad(6),math.rad(-10-2*math.cos(sine/10))), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(sine/10)),math.rad(20),0), 0.2)
hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 1-0.16*math.cos(sine/10), 0) * CFrame.Angles(0, math.rad(-20), math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0-0.1*math.cos(sine/10), -0.55) * CFrame.Angles(math.rad(-10+1*math.cos(sine/10)), math.rad(10), math.rad(-0-2*math.cos(sine/10))), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1-0.1*math.cos(sine/10), 0) * CFrame.Angles(0, math.rad(-10), math.rad(0+2*math.cos(sine/10))), 0.4)
elseif animpose == "Walking" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/14), 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(8)), 0.4)
elseif animpose == "Running" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.35,.4)*CFrame.Angles(math.rad(-30),math.rad(14),math.rad(-30+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.55,-.4)*CFrame.Angles(math.rad(110),math.rad(0),math.rad(40-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, .2) * CFrame.Angles(math.rad(20),math.rad(10),0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/14), 0) * CFrame.Angles(math.rad(-40),math.rad(-10), math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0, -1.2) * CFrame.Angles(math.rad(-20), math.rad(10), math.rad(0)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-12), math.rad(10), math.rad(0)), 0.4)
end
end
end)

hum.MaxHealth = math.huge
wait(3)
hum.Health = math.huge
spawn(function()
	while wait(2)
		 do
		GroundWave3()	
	end
end)