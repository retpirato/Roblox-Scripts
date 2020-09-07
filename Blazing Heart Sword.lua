Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui 
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
m=Instance.new('Model',Character)
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Face = Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
attackdebounce = false 
deb=false
equipped=true
hand=false
MMouse=nil
combo=0
mana=0
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
player=nil 

mouse=Player:GetMouse()
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
player=Player 
ch=Character
RSH=ch.Torso["Right Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
RSH.Parent=nil 
LSH.Parent=nil 
-- 
RW.Name="Right Shoulder"
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Right Arm"] 
RW.Parent=ch.Torso 
-- 
LW.Name="Left Shoulder"
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=ch.Torso 

local Stats=Instance.new("BoolValue")
Stats.Name="Stats"
Stats.Parent=Character
local Atk=Instance.new("NumberValue")
Atk.Name="Damage"
Atk.Parent=Stats
Atk.Value=1
local Def=Instance.new("NumberValue")
Def.Name="Defense"
Def.Parent=Stats
Def.Value=1
local Speed=Instance.new("NumberValue")
Speed.Name="Speed"
Speed.Parent=Stats
Speed.Value=1
local Mvmt=Instance.new("NumberValue")
Mvmt.Name="Movement"
Mvmt.Parent=Stats
Mvmt.Value=1

local donum=0
 

function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp=it("Part")
fp.formFactor=formfactor 
fp.Parent=parent
fp.Reflectance=reflectance
fp.Transparency=transparency
fp.CanCollide=false 
fp.Locked=true
fp.BrickColor=brickcolor
fp.Name=name
fp.Size=size
fp.Position=Torso.Position 
NoOutline(fp)
fp.Material="SmoothPlastic"
fp:BreakJoints()
return fp 
end 
 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh=it(Mesh) 
mesh.Parent=part
if Mesh=="SpecialMesh" then
mesh.MeshType=meshtype
if meshid~="nil" then
mesh.MeshId="http://www.roblox.com/asset/?id="..meshid
end
end
mesh.Offset=offset
mesh.Scale=scale
return mesh
end
 
function weld(parent,part0,part1,c0)
local weld=it("Weld") 
weld.Parent=parent
weld.Part0=part0 
weld.Part1=part1 
weld.C0=c0
return weld
end
 
local Color1=Torso.BrickColor

local bodvel=Instance.new("BodyVelocity")
local bg=Instance.new("BodyGyro")

function swait(num)
if num==0 or num==nil then
game:service'RunService'.Stepped:wait(0)
else
for i=0,num do
game:service'RunService'.Stepped:wait(0)
end
end
end
 
 
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
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

local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else
assert(false, "unreachable")
end
 
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
 
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
local list = {}
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new("Dark orange")
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "SmoothPlastic"
w1.CanCollide = false
local l1 = Instance.new("PointLight",w1)
l1.Color = Color3.new(170,0,0)
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Instance.new("SpecialMesh",w1)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
w1:BreakJoints()
w1.Anchored = true
w1.Parent = workspace
w1.Transparency = 0.7
table.insert(Effects,{w1,"Disappear",.01})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new("Dark orange")
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "SmoothPlastic"
w2.CanCollide = false
local l2 = Instance.new("PointLight",w2)
l2.Color = Color3.new(170,0,0)
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Instance.new("SpecialMesh",w2)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
w2:BreakJoints()
w2.Anchored = true
w2.Parent = workspace
w2.Transparency = 0.7
table.insert(Effects,{w2,"Disappear",.01})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end
 

Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
        h=v
        end
        end
        if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
        h=hit.Parent.Parent:FindFirstChild("Humanoid")
        end
        if hit.Parent.className=="Hat" then
        hit=hit.Parent.Parent:findFirstChild("Head")
        end
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                blocked=false
                block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print(block.className)
                if block.className=="NumberValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock==nil then
                block.Value=block.Value-1
                end
                end
                end
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock~=nil then
                block.Value=block.Value-1
                end
                end
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                showDamage(hit.Parent,Damage,.5,BrickColor.new("Dark orange"))
                else
                h.Health=h.Health-(Damage/2)
                showDamage(hit.Parent,Damage/2,.5,BrickColor.new("Bright blue"))
                end
                if Type=="Knockdown" then
                hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
swait(1)
HHumanoid.PlatformStand=false
end),hum)
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Up" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,60,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                Targetting=true
                RocketTarget=ZTarget
                for i=1,Property do
                --while Targetting==true and Humanoid.Health>0 and Character.Parent~=nil do
                if Humanoid.Health>0 and Character.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
                swait()
                end
                --workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,Head.CFrame.p+rmdir*100)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)*cf(0,5,10)*euler(-0.3,0,0)
                end
                Targetting=false
                RocketTarget=nil
                targetgui.Parent=nil
                cam.CameraType="Custom"
                end
                end
                        debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
end
 
showDamage=function(Char,Dealt,du,Color)
        m=Instance.new("Model")
        m.Name=tostring(Dealt)
        h=Instance.new("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=Instance.new("Part")
        c.Transparency=0
        c.BrickColor=Color
        c.Name="Head"
        c.TopSurface=0
        c.BottomSurface=0
        c.formFactor="Plate"
        c.Size=Vector3.new(1,.4,1)
        ms=Instance.new("CylinderMesh")
        ms.Scale=Vector3.new(.8,.8,.8)
        if CRIT==true then
                ms.Scale=Vector3.new(1,1.25,1)
        end
        ms.Parent=c
        c.Reflectance=0
        Instance.new("BodyGyro").Parent=c
        c.Parent=m
        if Char:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
        elseif Char.Parent:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char.Parent["Head"].CFrame.p+Vector3.new(0,1.5,0))
        end
        f=Instance.new("BodyPosition")
        f.P=2000
        f.D=100
        f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
        f.position=c.Position+Vector3.new(0,3,0)
        f.Parent=c
        game:GetService("Debris"):AddItem(m,.5+du)
        c.CanCollide=false
        m.Parent=workspace
        c.CanCollide=false
end

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

function SkullEffect(brickcolor,cframe,x1,y1,z1,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=4770583",vt(0,0,0),vt(x1,y1,z1))
--http://www.roblox.com/asset/?id=4770560
game:GetService("Debris"):AddItem(prt,2)
CF=prt.CFrame
coroutine.resume(coroutine.create(function(Part,Mesh,TehCF) 
for i=0,1,0.2 do
wait()
Part.CFrame=CF*cf(0,0,-0.4)
end
for i=0,1,delay do
wait()
--Part.CFrame=CF*cf((math.random(-1,0)+math.random())/5,(math.random(-1,0)+math.random())/5,(math.random(-1,0)+math.random())/5)
Mesh.Scale=Mesh.Scale
end
for i=0,1,0.1 do
wait()
Part.Transparency=i
end
Part.Parent=nil
end),prt,msh,CF)
end
 
function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicBlock2(brickcolor,cframe,Parent,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=false
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
local wld=weld(prt,prt,Parent,cframe)
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
for i=0,1,delay do
wait()
Weld.C0=euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cframe
--Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,wld)
end
 
function MagicBlock3(brickcolor,cframe,Parent,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=false
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
local wld=weld(prt,prt,Parent,euler(0,0,0)*cf(0,0,0))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,Weld) 
for i=0,1,delay do
wait()
Weld.C0=euler(i*20,0,0)
--Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,wld)
end
 
function MagicCircle2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("CylinderMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
local prt2=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt2.Anchored=true
prt2.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh2=mesh("SpecialMesh",prt2,"Sphere","",vt(0,0,0),vt(0.5,0.5,0.5))
game:GetService("Debris"):AddItem(prt2,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.1 do
wait()
Part.CFrame=Part.CFrame*cf(0,0.5,0)
end
Part.Parent=nil
end),prt2,msh2)
end
for i=0,1,delay*2 do
wait()
Part.CFrame=Part.CFrame
Mesh.Scale=vt((x1+x3)-(x1+x3)*i,(y1+y3)-(y1+y3)*i,(z1+z3)-(z1+z3)*i)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function MagicRing(brickcolor,cframe,x1,y1,z1,x2,y2,z2,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(x2,y2,z2)
--"http://www.roblox.com/asset/?id=168892465"
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,0.03 do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function BreakEffect(brickcolor,cframe,x1,y1,z1)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,CF,Numbb,randnumb) 
CF=Part.CFrame
Numbb=0
randnumb=math.random()/10
rand1=math.random()/10
for i=0,1,rand1 do
wait()
CF=CF*cf(0,math.random()/2,0)
--Part.CFrame=Part.CFrame*euler(0.5,0,0)*cf(0,1,0)
Part.CFrame=CF*euler(Numbb,0,0)
Part.Transparency=i
Numbb=Numbb+randnumb
end
Part.Parent=nil
end),prt,CF,Numbb,randnumb)
end
 
function MagicWaveThing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1051557",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*euler(0,0.7,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function WaveEffect(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=20329976",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*cf(0,y3/2,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end
 
function StravEffect(brickcolor,cframe,x,y,z,x1,y1,z1,delay)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*cf(x,y,z)
msh=mesh("SpecialMesh",prt,"FileMesh","rbxassetid://168892363",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,ex,why,zee) 
local num=math.random()
local num2=math.random(-3,2)+math.random()
local numm=0
for i=0,1,delay*2 do
swait()
Part.CFrame=cframe*euler(0,numm*num*10,0)*cf(ex,why,zee)*cf(-i*10,num2,0)
Part.Transparency=i
numm=numm+0.01
end
Part.Parent=nil
Mesh.Parent=nil
end),prt,msh,x,y,z)
end

function dmgstart(dmg,what)
	hitcon = what.Touched:connect(function(hit)
		local hum = hit.Parent:FindFirstChild("Humanoid")
		if hum and not hum:IsDescendantOf(Character) then
			hum:TakeDamage(dmg)
		end
	end)
end

function dmgstop()
	hitcon:disconnect()
end

function Cloak()
Face.Parent=nil
cloaked=true
        for _,v in pairs(Torso.Parent:children()) do
                if v.className=="Part" and v.Name~="HumanoidRootPart" then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.2 do
                wait()
                v.Transparency=i
                end
                v.Transparency=1
                end))
                end
                if v.className=="Hat" then
                hatp=v.Handle
                coroutine.resume(coroutine.create(function(derp) 
                for i=0,1,0.2 do
                wait()
                derp.Transparency=i
                end
                derp.Transparency=1
                end),hatp)
                end
        end
        for _,v in pairs(m:children()) do
                if v.className=="Part" then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.2 do
                wait()
                v.Transparency=i
                end
                v.Transparency=1
                end))
                end
        end
end
 
function UnCloak()
so("http://roblox.com/asset/?id=2767090",Torso,1,1.1) 
Face.Parent=Head 
cloaked=false
        for _,v in pairs(Torso.Parent:children()) do
                if v.className=="Part" and v.Name~="HumanoidRootPart" then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.1 do
                wait()
                v.Transparency=v.Transparency-0.1
                end
                v.Transparency=0
                end))
                end
                if v.className=="Hat" then
                hatp=v.Handle
                coroutine.resume(coroutine.create(function(derp) 
                for i=0,1,0.1 do
                wait()
                derp.Transparency=derp.Transparency-0.1
                end
                derp.Transparency=0
                end),hatp)
                end
        end
        for _,v in pairs(m:children()) do
                if v.className=="Part" and v.Name~="hitbox" and v.Name~='tip' then
                coroutine.resume(coroutine.create(function() 
                for i=0,1,0.1 do
                wait()
                v.Transparency=v.Transparency-0.1
                end
                v.Transparency=0
                end))
                v.Transparency=0
                end
        end
end

	Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
	m=Instance.new('Model',Character)


	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
	it=Instance.new
	
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
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
	end

Handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark orange","Handle",Vector3.new(1.9433943, 0.388678879, 0.388678849))
HandleWeld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1),CFrame.new(0.241004944, -0.0347366333, -1.15570068, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007))
mesh("BlockMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.20000005, 1.20000005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Fossil","Part",Vector3.new(0.388678849, 1.16603673, 5.05282545))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(0, -0.583026886, 7.57923889, -1.0000037, -7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007, 3.28270744e-012, -4.63617056e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Fossil","Part",Vector3.new(0.388678849, 1.16603673, 1.9433943))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(5.34057617e-005, -0.583026886, 4.08110809, -1.0000037, -7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007, 3.28270744e-012, -4.63617056e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Fossil","Part",Vector3.new(0.388678849, 1.16603673, 1.16603673))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(7.62939453e-006, 0.583034515, -2.52642059, -1.0000037, -7.09295273e-006, 0, -7.09295273e-006, 1.00000739, -4.42543552e-007, -3.28270744e-012, 4.63617056e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-2.28881836e-005, 0.291465759, 1.28265381, -7.09295273e-006, 1.00000739, -4.42543552e-007, 1.0000037, 7.09295273e-006, 0, -3.28270744e-012, 4.63617056e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(1.52587891e-005, 0.272033691, 1.28264618, -1.0000037, -7.09295273e-006, 0, -7.09295273e-006, 1.00000739, -4.42543552e-007, -3.28270744e-012, 4.63617056e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-1.52587891e-005, 0.291526794, 1.28264618, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007, -3.28270744e-012, 4.63617056e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark orange","Part",Vector3.new(0.388678849, 0.388678879, 0.777357697))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-2.67028809e-005, 0.485809326, 1.47697449, -7.09295273e-006, 1.00000739, -4.42543552e-007, 1.0000037, 7.09295273e-006, 0, -3.28270744e-012, 4.63617056e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(2.67028809e-005, -0.388679504, -0.893981934, 7.09295273e-006, -1.00000739, 4.42543552e-007, 1.0000037, 7.09295273e-006, 0, 3.28270744e-012, -4.63617056e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark orange","Part",Vector3.new(0.388678849, 0.388678879, 0.777357697))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(2.28881836e-005, 0.485855103, 1.47697449, 7.09295273e-006, -1.00000739, 4.42543552e-007, -1.0000037, -7.09295273e-006, 0, -3.28270744e-012, 4.63617056e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(2.67028809e-005, 0.291503906, 1.28265381, 7.09295273e-006, -1.00000739, 4.42543552e-007, -1.0000037, -7.09295273e-006, 0, -3.28270744e-012, 4.63617056e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark orange","Part",Vector3.new(0.388678849, 0.388678879, 0.777357697))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-3.05175781e-005, 0.485855103, 1.47695923, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007, -3.28270744e-012, 4.63617056e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark orange","Part",Vector3.new(0.388678849, 0.388678879, 0.777357697))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(3.05175781e-005, 0.466384888, 1.47697449, -1.0000037, -7.09295273e-006, 0, -7.09295273e-006, 1.00000739, -4.42543552e-007, -3.28270744e-012, 4.63617056e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-2.67028809e-005, -0.388626099, -0.893981934, -7.09295273e-006, 1.00000739, -4.42543552e-007, -1.0000037, -7.09295273e-006, 0, 3.28270744e-012, -4.63617056e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-3.05175781e-005, -0.388683319, -0.893974304, 1.0000037, 7.09295273e-006, 0, -7.09295273e-006, 1.00000739, -4.42543552e-007, 3.28270744e-012, -4.63617056e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(3.05175781e-005, -0.388637543, -0.893966675, -1.0000037, -7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007, 3.28270744e-012, -4.63617056e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark orange","Part",Vector3.new(1.9433943, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-7.62939453e-006, -4.57763672e-005, -1.71661377e-005, -3.28270744e-012, 4.63617056e-007, -1, 0.707104445, 0.707117081, -3.27826768e-007, 0.707114458, -0.707107067, 3.27826768e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.00399995, 1.20000005, 1.20000005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-0.971710205, -7.62939453e-006, -3.81469727e-006, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400200009, 1.79999995, 1.79999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(0.508415222, -5.34057617e-005, -2.35767365, -5.00679016e-006, 0.707111716, 0.707106471, 1.0000037, 7.09295273e-006, 0, -5.00679016e-006, 0.707112312, -0.707107246))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(0.528083801, 4.57763672e-005, -2.33799744, 5.00679016e-006, -0.707111359, 0.7071082, -1.0000037, -7.09295273e-006, 0, 5.00679016e-006, -0.70711267, -0.707105517))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(0.518295288, -0.0139083862, -2.34779739, -0.707108974, -5.33461571e-006, 0.707107425, -7.09295273e-006, 1.00000739, -4.42543552e-007, -0.707109928, -4.67896461e-006, -0.707106352))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark orange","Part",Vector3.new(1.55471539, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(1.48014259, -5.34057617e-005, -2.24774933, -5.00679016e-006, 0.707111716, 0.707106471, 1.0000037, 7.09295273e-006, 0, -5.00679016e-006, 0.707112312, -0.707107246))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark orange","Part",Vector3.new(1.55471539, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-1.38599396, -5.34057617e-005, -0.618383408, -5.00679016e-006, 0.707112312, -0.707107246, 1.0000037, 7.09295273e-006, 0, 5.00679016e-006, -0.707111716, -0.707106471))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark orange","Part",Vector3.new(1.55471539, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-1.37611771, -0.0139160156, -0.628257751, -0.707108974, -4.67896461e-006, -0.707107425, -7.09295273e-006, 1.00000739, -4.42543552e-007, 0.707109928, 5.33461571e-006, -0.707106352))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark orange","Part",Vector3.new(1.55471539, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-1.37617493, 0.0139045715, -0.628196716, 0.707108974, 5.33461571e-006, -0.707107425, 7.09295273e-006, -1.00000739, 4.42543552e-007, -0.707109928, -4.67896461e-006, -0.707106352))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark orange","Part",Vector3.new(1.55471539, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(1.48995972, 0.0139045715, -2.23793793, 0.707108974, 4.67896461e-006, 0.707107425, 7.09295273e-006, -1.00000739, 4.42543552e-007, 0.707109928, 5.33461571e-006, -0.707106352))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark orange","Part",Vector3.new(1.55471539, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-1.3663044, 5.34057617e-005, -0.638069153, 5.00679016e-006, -0.707111716, -0.707106471, -1.0000037, -7.09295273e-006, 0, -5.00679016e-006, 0.707112312, -0.707107246))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark orange","Part",Vector3.new(1.55471539, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(1.49982452, 5.34057617e-005, -2.22806358, 5.00679016e-006, -0.707111359, 0.7071082, -1.0000037, -7.09295273e-006, 0, 5.00679016e-006, -0.70711267, -0.707105517))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark orange","Part",Vector3.new(1.55471539, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(1.49002838, -0.0139045715, -2.23787689, -0.707108974, -5.33461571e-006, 0.707107425, -7.09295273e-006, 1.00000739, -4.42543552e-007, -0.707109928, -4.67896461e-006, -0.707106352))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 0.5))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-3.09001923, -3.81469727e-006, 0, -3.28270744e-012, 4.63617056e-007, -1, 0.707114458, -0.707107067, 3.27826768e-007, -0.707104445, -0.707117081, 3.27826768e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.20000005, 1.20000005))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(0.518226624, 0.0139045715, -2.34786224, 0.707108974, 4.67896461e-006, 0.707107425, 7.09295273e-006, -1.00000739, 4.42543552e-007, 0.707109928, 5.33461571e-006, -0.707106352))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Dark orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-0.971717834, -3.81469727e-005, -2.47955322e-005, -3.28270744e-012, 4.63617056e-007, -1, 0.707104445, 0.707117081, -3.27826768e-007, 0.707114458, -0.707107067, 3.27826768e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 1.79999995, 1.79999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(0.97171402, -5.34057617e-005, -3.10941315, -7.09295273e-006, 1.00000739, -4.42543552e-007, 1.0000037, 7.09295273e-006, 0, -3.28270744e-012, 4.63617056e-007, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.25, 0.409999996, 0.25))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(0.777362823, -9.91821289e-005, -3.30377197, -7.09295273e-006, 1.00000739, -4.42543552e-007, 1.0000037, 7.09295273e-006, 0, -3.28270744e-012, 4.63617056e-007, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.25, 0.409999996, 0.25))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(0.97170639, -9.91821289e-005, -3.49811554, -7.09295273e-006, 1.00000739, -4.42543552e-007, 1.0000037, 7.09295273e-006, 0, -3.28270744e-012, 4.63617056e-007, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.25, 0.409999996, 0.25))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(0.583026886, -9.91821289e-005, -3.10941315, -7.09295273e-006, 1.00000739, -4.42543552e-007, 1.0000037, 7.09295273e-006, 0, -3.28270744e-012, 4.63617056e-007, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.25, 0.409999996, 0.25))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(0.583019257, -9.91821289e-005, -3.49811554, -7.09295273e-006, 1.00000739, -4.42543552e-007, 1.0000037, 7.09295273e-006, 0, -3.28270744e-012, 4.63617056e-007, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.25, 0.409999996, 0.25))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(0.777362823, -0.000144958496, -3.69247437, -7.09295273e-006, 1.00000739, -4.42543552e-007, 1.0000037, 7.09295273e-006, 0, -3.28270744e-012, 4.63617056e-007, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.25, 0.409999996, 0.25))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(0.583030701, -0.000144958496, -3.88678741, -7.09295273e-006, 1.00000739, -4.42543552e-007, 1.0000037, 7.09295273e-006, 0, -3.28270744e-012, 4.63617056e-007, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.25, 0.409999996, 0.25))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(0.777362823, -9.91821289e-005, -2.91508484, -7.09295273e-006, 1.00000739, -4.42543552e-007, 1.0000037, 7.09295273e-006, 0, -3.28270744e-012, 4.63617056e-007, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.25, 0.409999996, 0.25))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(0.97171402, -0.000144958496, -2.72074127, -7.09295273e-006, 1.00000739, -4.42543552e-007, 1.0000037, 7.09295273e-006, 0, -3.28270744e-012, 4.63617056e-007, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.25, 0.409999996, 0.25))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 1.36037576))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-5.34057617e-005, 3.60865021, -5.82277679, 1.0000037, 7.09295273e-006, 0, 6.13927841e-006, -0.866032004, 0.500000596, 3.5315752e-006, -0.500003517, -0.866025209))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.389999986, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 3.49810982))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(0, -0.174892426, 8.3565979, -1.0000037, -7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007, 3.28270744e-012, -4.63617056e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.409999996, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 1.74905467))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-5.34057617e-005, 1.35025406, -4.50031281, 1.0000037, 7.09295273e-006, 0, 6.85453415e-006, -0.965933084, 0.258819401, 1.83284283e-006, -0.258820415, -0.965925753))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.389999986, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 3.88678861))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(0, -0.174900055, 4.85848236, -1.0000037, -7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007, 3.28270744e-012, -4.63617056e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.409999996, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 2.13773346))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-5.34057617e-005, 1.67153931, -5.48734283, 1.0000037, 7.09295273e-006, 0, 6.85453415e-006, -0.965933084, 0.258819401, 1.83284283e-006, -0.258820415, -0.965925753))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.389999986, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.971696913))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-9.15527344e-005, 1.0484581, -3.76266479, 1.0000037, 7.09295273e-006, 0, 6.85453415e-006, -0.965933084, 0.258819401, 1.83284283e-006, -0.258820415, -0.965925753))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.389999986, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.971696913))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-7.62939453e-006, 3.99732971, -6.69033051, 1.0000037, 7.09295273e-006, 0, 6.13927841e-006, -0.866032004, 0.500000596, 3.5315752e-006, -0.500003517, -0.866025209))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.389999986, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-2.40283203, 0.0139122009, -0.628177643, 0.707108974, 5.33461571e-006, -0.707107425, 7.09295273e-006, -1.00000739, 4.42543552e-007, -0.707109928, -4.67896461e-006, -0.707106352))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.50999999, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(1.55471539, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-1.3663044, 5.34057617e-005, -0.638069153, 5.00679016e-006, -0.707111716, -0.707106471, -1.0000037, -7.09295273e-006, 0, -5.00679016e-006, 0.707112312, -0.707107246))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.50999999, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(1.55471539, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-1.38599396, -5.34057617e-005, -0.618383408, -5.00679016e-006, 0.707112312, -0.707107246, 1.0000037, 7.09295273e-006, 0, 5.00679016e-006, -0.707111716, -0.707106471))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.50999999, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.777357697, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-2.33217621, 0.0139083862, -0.367092133, 0.707108974, 5.33461571e-006, -0.707107425, 7.09295273e-006, -1.00000739, 4.42543552e-007, -0.707109928, -4.67896461e-006, -0.707106352))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.449999988, 0.50999999, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.777357697, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-0.531990051, 0.0139083862, 2.49707794, -0.707109392, -4.67896461e-006, -0.707106888, 7.09295273e-006, -1.00000739, 4.42543552e-007, -0.707109392, -5.33461571e-006, 0.707106888))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.449999988, 0.50999999, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(1.55471539, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(1.48014259, -5.34057617e-005, -2.24774933, -5.00679016e-006, 0.707111716, 0.707106471, 1.0000037, 7.09295273e-006, 0, -5.00679016e-006, 0.707112312, -0.707107246))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.50999999, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(1.55471539, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-1.37617493, 0.0139045715, -0.628196716, 0.707108974, 5.33461571e-006, -0.707107425, 7.09295273e-006, -1.00000739, 4.42543552e-007, -0.707109928, -4.67896461e-006, -0.707106352))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.50999999, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(1.55471539, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(1.49982452, 5.34057617e-005, -2.22806358, 5.00679016e-006, -0.707111359, 0.7071082, -1.0000037, -7.09295273e-006, 0, 5.00679016e-006, -0.70711267, -0.707105517))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.50999999, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-2.2379303, 0.0139122009, -0.463272095, 0.707108974, 5.33461571e-006, -0.707107425, 7.09295273e-006, -1.00000739, 4.42543552e-007, -0.707109928, -4.67896461e-006, -0.707106352))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.50999999, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(1.55471539, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-1.37611771, -0.0139122009, -0.628257751, -0.707108974, -4.67896461e-006, -0.707107425, -7.09295273e-006, 1.00000739, -4.42543552e-007, 0.707109928, 5.33461571e-006, -0.707106352))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.50999999, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(1.55471539, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(1.49002838, -0.0139045715, -2.23787689, -0.707108974, -5.33461571e-006, 0.707107425, -7.09295273e-006, 1.00000739, -4.42543552e-007, -0.707109928, -4.67896461e-006, -0.707106352))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.50999999, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-2.23792267, 0.0139045715, -0.628170013, 0.707108974, 5.33461571e-006, -0.707107425, 7.09295273e-006, -1.00000739, 4.42543552e-007, -0.707109928, -4.67896461e-006, -0.707106352))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.50999999, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-2.40281677, 0.0139045715, -0.463272095, 0.707108974, 5.33461571e-006, -0.707107425, 7.09295273e-006, -1.00000739, 4.42543552e-007, -0.707109928, -4.67896461e-006, -0.707106352))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.50999999, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(1.55471539, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(1.48995972, 0.0139045715, -2.23793793, 0.707108974, 4.67896461e-006, 0.707107425, 7.09295273e-006, -1.00000739, 4.42543552e-007, 0.707109928, 5.33461571e-006, -0.707106352))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.50999999, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.777357697, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(0.531967163, 0.0139045715, 2.49709702, -0.707109392, -5.33461571e-006, 0.707106888, 7.09295273e-006, -1.00000739, 4.42543552e-007, 0.707109392, 4.67896461e-006, 0.707106888))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.449999988, 0.50999999, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-2.41270447, 7.62939453e-006, -0.453437805, -5.00679016e-006, 0.707111359, -0.7071082, 1.0000037, 7.09295273e-006, 0, 5.00679016e-006, -0.70711267, -0.707105517))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.50999999, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.777357697, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-0.522144318, 7.62939453e-006, 2.50693512, 5.00679016e-006, -0.707111716, -0.707106471, 1.0000037, 7.09295273e-006, 0, 5.00679016e-006, -0.707112312, 0.707107246))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.449999988, 0.50999999, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-2.41268921, 0, -0.618328094, -5.00679016e-006, 0.707111359, -0.7071082, 1.0000037, 7.09295273e-006, 0, 5.00679016e-006, -0.70711267, -0.707105517))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.50999999, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(0.461303711, 0.0139122009, 2.23599625, -0.707109392, -5.33461571e-006, 0.707106888, 7.09295273e-006, -1.00000739, 4.42543552e-007, 0.707109392, 4.67896461e-006, 0.707106888))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.50999999, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(0.626220703, 0.0139122009, 2.23600388, -0.707109392, -5.33461571e-006, 0.707106888, 7.09295273e-006, -1.00000739, 4.42543552e-007, 0.707109392, 4.67896461e-006, 0.707106888))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.50999999, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.777357697, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(2.33219528, 0.0139122009, -0.36706543, 0.707109392, 4.67896461e-006, 0.707106888, 7.09295273e-006, -1.00000739, 4.42543552e-007, 0.707109392, 5.33461571e-006, -0.707106888))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.449999988, 0.50999999, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-2.24778748, 0, -0.453422546, -5.00679016e-006, 0.707111359, -0.7071082, 1.0000037, 7.09295273e-006, 0, 5.00679016e-006, -0.70711267, -0.707105517))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.50999999, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(0.461296082, 0.0139122009, 2.40089417, -0.707109392, -5.33461571e-006, 0.707106888, 7.09295273e-006, -1.00000739, 4.42543552e-007, 0.707109392, 4.67896461e-006, 0.707106888))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.50999999, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(0.636062622, 7.62939453e-006, 2.22615814, 5.00679016e-006, -0.707111359, 0.7071082, 1.0000037, 7.09295273e-006, 0, -5.00679016e-006, 0.70711267, 0.707105517))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.50999999, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(0.471138, 7.62939453e-006, 2.39105225, 5.00679016e-006, -0.707111359, 0.7071082, 1.0000037, 7.09295273e-006, 0, -5.00679016e-006, 0.70711267, 0.707105517))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.50999999, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.777357697, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(2.32234764, 7.62939453e-006, -0.376907349, -5.00679016e-006, 0.707111716, 0.707106471, 1.0000037, 7.09295273e-006, 0, -5.00679016e-006, 0.707112312, -0.707107246))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.449999988, 0.50999999, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-2.24777985, 7.62939453e-006, -0.618318558, -5.00679016e-006, 0.707111359, -0.7071082, 1.0000037, 7.09295273e-006, 0, 5.00679016e-006, -0.70711267, -0.707105517))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.50999999, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.777357697, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-2.34202576, 7.62939453e-006, -0.357233047, -5.00679016e-006, 0.707111359, -0.7071082, 1.0000037, 7.09295273e-006, 0, 5.00679016e-006, -0.70711267, -0.707105517))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.449999988, 0.50999999, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(0.626220703, 0.0139083862, 2.40091324, -0.707109392, -5.33461571e-006, 0.707106888, 7.09295273e-006, -1.00000739, 4.42543552e-007, 0.707109392, 4.67896461e-006, 0.707106888))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.50999999, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.777357697, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(0.541809082, 1.52587891e-005, 2.4872551, 5.00679016e-006, -0.707111359, 0.7071082, 1.0000037, 7.09295273e-006, 0, -5.00679016e-006, 0.70711267, 0.707105517))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.449999988, 0.50999999, 0.100000001))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 1.16603673))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-1.52587891e-005, 0.485870361, 1.67131042, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007, -3.28270744e-012, 4.63617056e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.50999999, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-2.28881836e-005, 0.291488647, 1.28265381, -7.09295273e-006, 1.00000739, -4.42543552e-007, 1.0000037, 7.09295273e-006, 0, -3.28270744e-012, 4.63617056e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.50999999, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.777357697))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-2.67028809e-005, -0.388633728, -0.699615479, -7.09295273e-006, 1.00000739, -4.42543552e-007, -1.0000037, -7.09295273e-006, 0, 3.28270744e-012, -4.63617056e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(0, 0.272029877, 1.28264618, -1.0000037, -7.09295273e-006, 0, -7.09295273e-006, 1.00000739, -4.42543552e-007, -3.28270744e-012, 4.63617056e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.50999999, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 1.16603673))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(2.28881836e-005, 0.466381073, 1.67132568, -1.0000037, -7.09295273e-006, 0, -7.09295273e-006, 1.00000739, -4.42543552e-007, -3.28270744e-012, 4.63617056e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.50999999, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(0.47114563, 1.52587891e-005, 2.22614288, 5.00679016e-006, -0.707111359, 0.7071082, 1.0000037, 7.09295273e-006, 0, -5.00679016e-006, 0.70711267, 0.707105517))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.50999999, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(0.636054993, 7.62939453e-006, 2.39108276, 5.00679016e-006, -0.707111359, 0.7071082, 1.0000037, 7.09295273e-006, 0, -5.00679016e-006, 0.70711267, 0.707105517))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.50999999, 0.300000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.777357697))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(1.52587891e-005, -0.388629913, -0.69960022, -1.0000037, -7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007, 3.28270744e-012, -4.63617056e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-7.62939453e-006, 0.291526794, 1.28264618, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007, -3.28270744e-012, 4.63617056e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.50999999, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(2.28881836e-005, 0.291488647, 1.28265381, 7.09295273e-006, -1.00000739, 4.42543552e-007, -1.0000037, -7.09295273e-006, 0, -3.28270744e-012, 4.63617056e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.50999999, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.777357697))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-1.52587891e-005, -0.388687134, -0.699607849, 1.0000037, 7.09295273e-006, 0, -7.09295273e-006, 1.00000739, -4.42543552e-007, 3.28270744e-012, -4.63617056e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.777357697))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(2.67028809e-005, -0.388679504, -0.699615479, 7.09295273e-006, -1.00000739, 4.42543552e-007, 1.0000037, 7.09295273e-006, 0, 3.28270744e-012, -4.63617056e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1.005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 1.16603673))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(2.28881836e-005, 0.485839844, 1.67132568, 7.09295273e-006, -1.00000739, 4.42543552e-007, -1.0000037, -7.09295273e-006, 0, -3.28270744e-012, 4.63617056e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.50999999, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 1.16603673))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-2.67028809e-005, 0.485816956, 1.67132568, -7.09295273e-006, 1.00000739, -4.42543552e-007, 1.0000037, 7.09295273e-006, 0, -3.28270744e-012, 4.63617056e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 0.50999999, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"New Yeller","Part",Vector3.new(0.388678849, 0.388678879, 0.388678849))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(1.47697449, 0, 2.28881836e-005, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(2, 2, 2))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,1,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 6.60754156))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(7.62939453e-006, 0.019443512, 6.41320801, -1.0000037, -7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007, 3.28270744e-012, -4.63617056e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.409999996, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.777357936))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-0.000190734863, 1.05471802, 1.6859436, 1.0000037, 7.09295273e-006, 0, -7.09295273e-006, 1.00000739, -4.42543552e-007, 3.28270744e-012, -4.63617056e-007, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.777357936))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-5.34057617e-005, -0.0419998169, 1.84877777, 1.0000037, 7.09295273e-006, 0, -6.13927841e-006, 0.866032004, -0.500000596, -3.5315752e-006, 0.500003517, 0.866025209))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.777357936))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(9.15527344e-005, 2.92700958, -0.497303009, -1.0000037, -7.09295273e-006, 0, 3.28270744e-012, -4.63617056e-007, 1, -7.09295273e-006, 1.00000739, -4.42543552e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 1.16603684))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(9.91821289e-005, -2.92700958, 1.46901703, -1.0000037, -7.09295273e-006, 0, -3.28270744e-012, 4.63617056e-007, -1, 7.09295273e-006, -1.00000739, 4.42543552e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.777357936))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(0.000175476074, -2.88346863, 0.636032104, -1.0000037, -7.09295273e-006, 0, -1.83284283e-006, 0.258821309, -0.965926051, 6.82473183e-006, -0.965932906, -0.258818567))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 1.16603684))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(4.57763672e-005, 2.71659088, -1.52053452, -1.0000037, -7.09295273e-006, 0, -1.83284283e-006, 0.258820415, 0.965925753, -6.85453415e-006, 0.965933084, -0.258819401))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.777357936))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(0.00016784668, 2.883461, 0.141336441, -1.0000037, -7.09295273e-006, 0, 1.83284283e-006, -0.258821309, 0.965926051, -6.82473183e-006, 0.965932906, 0.258818567))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.777357936))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(0.000228881836, 2.65683746, 0.841089249, -1.0000037, -7.09295273e-006, 0, 3.54647636e-006, -0.500004351, 0.866025686, -6.13927841e-006, 0.866031587, 0.49999994))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388679057))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(0.000244140625, -2.65684509, -0.258056641, -1.0000037, -7.09295273e-006, 0, -3.54647636e-006, 0.500004351, -0.866025686, 6.13927841e-006, -0.866031587, -0.49999994))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 1.16603684))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(5.34057617e-005, -2.7165451, 2.68659592, -1.0000037, -7.09295273e-006, 0, 1.83284283e-006, -0.258820415, -0.965925753, 6.85453415e-006, -0.965933084, 0.258819401))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 1.16603684))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-0.00023651123, 1.49963951, 1.24688721, 1.0000037, 7.09295273e-006, 0, -6.82473183e-006, 0.965932906, 0.258818567, 1.83284283e-006, -0.258821309, 0.965926051))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 1.16603684))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-0.000228881836, -1.49964714, -0.0808563232, 1.0000037, 7.09295273e-006, 0, 6.82473183e-006, -0.965932906, -0.258818567, -1.83284283e-006, 0.258821309, -0.965926051))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.777357936))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-0.000122070313, -0.537380219, -1.0358429, 1.0000037, 7.09295273e-006, 0, 6.85453415e-006, -0.965933084, 0.258819401, 1.83284283e-006, -0.258820415, -0.965925753))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.777357936))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-0.000122070313, 0.537384033, 1.81324005, 1.0000037, 7.09295273e-006, 0, -6.85453415e-006, 0.965933084, -0.258819401, -1.83284283e-006, 0.258820415, 0.965925753))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 1.16603684))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-0.000183105469, -1.09358215, -0.714263916, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007, -3.28270744e-012, 4.63617056e-007, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Br. yellowish orange","Part",Vector3.new(0.388678849, 0.388678879, 0.388679057))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-4.57763672e-005, 0.0420303345, -1.26578522, 1.0000037, 7.09295273e-006, 0, 6.13927841e-006, -0.866032004, 0.500000596, 3.5315752e-006, -0.500003517, -0.866025209))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.5, 1))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Fossil","Hitbox",Vector3.new(0.200000003, 0.376036763, 7.00339413))
Hitboxweld=weld(m,Handle,Hitbox,CFrame.new(0, 0, 0, -3.28270744e-012, 4.63617056e-007, -1, 1.0000037, 7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007),CFrame.new(-0.0131454468, -0.908103943, 6.06111145, -1.0000037, -7.09295273e-006, 0, 7.09295273e-006, -1.00000739, 4.42543552e-007, 3.28270744e-012, -4.63617056e-007, 1))

mouse.Button1Down:connect(function()
        if attack==false and attacktype==1 then
                attacktype=2
                attackone()
        elseif attack==false and attacktype==2 then
                attacktype=1
                attacktwo()
        end
end)
function attackone()
        attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,30,50,math.random(10,20),"Normal",RootPart,.2,1) end) 
        for i=0,1,0.2 do
                swait()
local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
                RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(-90),math.rad(-90))*angles(math.rad(90),0,math.rad(0)),.4)
        end
so("http://roblox.com/asset/?id=199150686",Hitbox,1,1) 
so("http://roblox.com/asset/?id=206083107",Hitbox,1,2)
        for i=0,1,0.2 do
                swait()
local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
                Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-20)),.4)
                RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.5)*angles(math.rad(0),math.rad(0),math.rad(25)),.4)
                RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*angles(math.rad(0),math.rad(-90),math.rad(-100))*angles(math.rad(-75),0,math.rad(0)),.4)
                HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-1,-1)*angles(math.rad(-90),math.rad(0),math.rad(0)),.4)
        end
        attack=false
con1:disconnect()
end	

function attacktwo()
        attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,30,50,math.random(10,20),"Normal",RootPart,.2,1) end) 
        for i=0,1,0.2 do
                swait()
local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
                RW.C0=clerp(RW.C0,cf(1,0.5,-.5)*angles(math.rad(0),math.rad(-90),math.rad(-90))*angles(math.rad(-75),0,math.rad(0)),.4)
                HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-1,-1)*angles(math.rad(-90),math.rad(0),math.rad(0)),.4)
        end
so("http://roblox.com/asset/?id=199146359",Hitbox,1,1) 
so("http://roblox.com/asset/?id=206083107",Hitbox,1,1.5)
        for i=0,1,1 do
                swait()
local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
                Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(40)),.4)
                RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.5)*angles(math.rad(0),math.rad(0),math.rad(-45)),.4)
                RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(-90),math.rad(-90))*angles(math.rad(90),0,math.rad(0)),.4)
                HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-.5,-.5)*angles(math.rad(-35),math.rad(0),math.rad(0)),.4)
        end
        attack=false
con1:disconnect()
end     

function attackthree()

end

idleanim=.4

while true do
swait()
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if equipped==true or equipped==false then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
--Sheath()
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
Neck.C0=clerp(Neck.C0,necko*euler(-0.2,0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(-.5,0,0.5)*angles(math.rad(-25),math.rad(105),math.rad(0)),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(-.5,0,-0.5),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,-.3)*euler(-0.5,1.57,0)*euler(-.2,0,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,-.3)*euler(-0.5,-1.57,0)*euler(-.2,0,0),.2)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
Neck.C0=clerp(Neck.C0,necko*euler(0.4,0,0),.3)
Neck.C1=clerp(Neck.C1,necko2*euler(0,0,0),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(0,0,0),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(0.3,0,0.2)*angles(math.rad(-25),math.rad(115),math.rad(0)),.3)
RW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(0.3,0,-0.2),.3)
LW.C1=clerp(LW.C1,cf(0,0.5,0)*euler(0,0,0),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*euler(0.4,1.57,0),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*euler(-0.2,-1.57,0),.2)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.5)*angles(math.rad(0),math.rad(0),math.rad(-35)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(35)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-35),math.rad(90),math.rad(0))*angles(math.rad(-25),math.rad(15),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(15),math.rad(0),math.rad(-25)),.3)
RH.C0=clerp(RH.C0,cf(1,-.75,0)*angles(math.rad(-15),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(15),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.75,-.25)*angles(math.rad(-15),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(35),math.rad(0)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
--RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
--Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-.5)*angles(math.rad(0),math.rad(0),math.rad(-35)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(35)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-55),math.rad(90),math.rad(0))*angles(math.rad(-15),math.rad(0),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-15),math.rad(0),math.rad(-25)),.3)
--RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
--LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-.75,0)*angles(math.rad(-15),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(15),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.75,-.25)*angles(math.rad(-15),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(35),math.rad(0)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
end
end
end