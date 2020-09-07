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
mana=0

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
	
	function swait(num)
    if num==0 or num==nil then
    game:service'RunService'.Stepped:wait(0)
    else
    for i=0,num do
    game:service'RunService'.Stepped:wait(0)
    end
    end
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
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
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

local Color = BrickColor.new("Dark grey")
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new(Color)
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "SmoothPlastic"
w1.CanCollide = false
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
w2.BrickColor = BrickColor.new(Color)
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "SmoothPlastic"
w2.CanCollide = false
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


--Example: Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)


function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
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
                showDamage(hit.Parent,Damage,.5,BrickColor.new("Really black"))
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

Handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Handle",Vector3.new(0.428985834, 0.428985775, 7.72174454))
HandleWeld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1),CFrame.new(1.05294037, 0.0500030518, -2.36890411, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1))
mesh("BlockMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Part",Vector3.new(0.428985834, 0.428985715, 0.428985775))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(0, -4.57763672e-005, -4.50431061, 5.96038561e-008, 1, -2.13731255e-011, 1, -5.96057461e-008, 9.47864096e-012, -9.45021839e-012, 2.13873363e-011, -1))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/Asset/?id=9756362",Vector3.new(0, 0, 0),Vector3.new(0.750725091, 0.750725031, 0.750725091))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Part",Vector3.new(0.428985834, 0.428985775, 1.71594346))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-2.28881836e-005, 7.62939453e-006, 6.00574493, -5.96038561e-008, -1, 2.13731255e-011, 1, -5.96057461e-008, 9.47864096e-012, 9.45021839e-012, -2.13873363e-011, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Part",Vector3.new(0.428985834, 1.50145018, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(1.52587891e-005, -4.61154938, 1.14440918e-005, -1, 2.08618019e-007, -5.44054046e-009, -5.42159739e-009, 7.24237452e-008, 1, 2.08616072e-007, 1, -7.24664062e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.428985834, 0.428985775, 0.214492902))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(1.52587891e-005, -7.62939453e-006, -6.97096252, 5.96038561e-008, 1, -2.13731255e-011, 1, -5.96057461e-008, 9.47864096e-012, -9.45021839e-012, 2.13873363e-011, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.29999995, 1.29999995, 1.10000002))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.428985834, 0.428985775, 0.214492902))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(7.62939453e-006, 5.36227417, 0.0858230591, -1, -3.57628238e-007, -1.13048515e-007, -1.13029543e-007, -3.1601715e-008, 1, -3.57630256e-007, 1, 3.15589688e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.428985834, 0.428985775, 0.214492902))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(4.19616699e-005, 5.36227417, 0.0858001709, 2.68219225e-007, 1, -2.11883826e-011, -7.4505158e-007, -2.13447038e-011, 1, 1, -2.68221129e-007, 7.45070452e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.428985834, 0.428985775, 0.214492902))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-2.28881836e-005, 5.36227417, 0.0858078003, 3.42725826e-007, -1, -1.1301718e-007, 9.11922911e-008, -1.13059912e-007, 1, -1, -3.42724064e-007, 9.11733409e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.428985834, 0.428985775, 0.214492902))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(7.62939453e-006, 5.36225128, 0.0857772827, 0.999994159, -2.24177199e-007, 9.63491006e-012, 9.45016895e-012, 8.04641274e-007, 0.999994755, -2.24175068e-007, -0.999996185, 7.74881698e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1, 0.800000012))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.428985834, 0.428985775, 1.28695726))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(7.62939453e-006, 2.28881836e-005, -6.22023773, 5.96038561e-008, 1, -2.13731255e-011, 1, -5.96057461e-008, 9.47864096e-012, -9.45021839e-012, 2.13873363e-011, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 1.00999999, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.428985834, 0.428985775, 1.28695726))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-2.28881836e-005, 7.62939453e-006, -6.22023773, -1, 5.96057745e-008, -9.47864096e-012, 5.96038845e-008, 1, -2.13731255e-011, -9.45021839e-012, 2.13873363e-011, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 1.00999999, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.428985834, 1.71594298, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(0, -4.93328094, -0.0321884155, 1, -5.96058101e-008, 5.96141945e-008, -5.95952514e-008, 5.95814811e-008, 1, -5.96039342e-008, -1, 5.96241989e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.428985834, 0.428985775, 6.86377287))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(0.0321884155, 0, 0.643486023, 5.96038561e-008, 1, -2.13731255e-011, 1, -5.96057461e-008, 9.47864096e-012, -9.45021839e-012, 2.13873363e-011, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.899999976, 1.00999999, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.428985834, 0.857971549, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-1.52587891e-005, -3.21736145, -0.0321884155, -1, 5.96058101e-008, -5.96141945e-008, 5.95952514e-008, -5.95814811e-008, -1, -5.96039342e-008, -1, 5.96241989e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Part",Vector3.new(0.643478692, 1.28695726, 0.643478692))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(7.62939453e-006, 0.550605774, -5.38861465, 1, -5.56613777e-008, -9.51312984e-009, -3.26170664e-008, -0.707107723, 0.707105756, -4.60972913e-008, -0.707105815, -0.707107782))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.99000001, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Part",Vector3.new(0.643478692, 0.643478632, 4.50435114))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(5.38858986, 1.52587891e-005, -3.44625092, -1.14559349e-007, 0.707107782, 0.707105756, 1, 5.79402624e-008, 1.04088159e-007, 3.26168959e-008, 0.707105756, -0.707107782))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.99000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Part",Vector3.new(0.643478692, 0.643478632, 3.86087251))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-5.37666321, 7.62939453e-006, -3.13644791, -3.62904103e-007, 0.707107782, -0.707105875, 1, 3.37616456e-007, -1.75586266e-007, 1.14560216e-007, -0.707105815, -0.707107723))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.987999976, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Part",Vector3.new(0.643478692, 0.643478632, 2.57391477))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-2.01622009, -7.62939453e-006, -6.22024536, 5.96038561e-008, 1, -2.13731255e-011, 1, -5.96057461e-008, 9.47864096e-012, -9.45021839e-012, 2.13873363e-011, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Part",Vector3.new(0.643478692, 1.28695726, 0.643478692))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(1.52587891e-005, 4.28981018, -2.05911636, 1, -5.96057745e-008, 9.47864096e-012, 9.43600753e-012, 5.95814384e-008, 1, -5.96038774e-008, -1, 5.96241989e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Part",Vector3.new(0.643478692, 0.643478632, 2.57391477))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(2.05911636, 7.62939453e-006, -6.22024536, 5.96038561e-008, 1, -2.13731255e-011, 1, -5.96057461e-008, 9.47864096e-012, -9.45021839e-012, 2.13873363e-011, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Part",Vector3.new(0.643478692, 1.28695726, 0.643478692))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-1.52587891e-005, 4.28981018, -2.01620483, -1, 5.96057745e-008, -9.47864096e-012, 9.43600753e-012, 5.95814384e-008, 1, 5.96038774e-008, 1, -5.96241989e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Part",Vector3.new(0.643478692, 0.643478632, 3.43188643))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(7.18544006, 7.62939453e-006, 0.0214691162, 9.43600753e-012, 5.95814384e-008, 1, 1, -5.96057745e-008, 9.47864096e-012, 5.96038774e-008, 1, -5.96241989e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Part",Vector3.new(0.643478692, 1.28695726, 0.643478692))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-1.52587891e-005, 0.562551498, -5.37667084, -1, -1.46932607e-007, -7.44038289e-008, -1.56496526e-007, 0.707107902, 0.707105815, -5.13001197e-008, 0.707105756, -0.707107842))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.99000001, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.643478692, 1.50145006, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(1.52587891e-005, 4.18256378, -1.91968918, -1, 9.58793917e-013, -9.45021839e-012, 9.43600753e-012, 5.95814384e-008, 1, -9.6975184e-013, 1, -5.96242131e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.428985834, 0.643478632, 2.35942197))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(1.96260071, -7.62939453e-006, -6.11299896, 5.96038561e-008, 1, -2.13731255e-011, 1, -5.96057461e-008, 9.47864096e-012, -9.45021839e-012, 2.13873363e-011, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.428985834, 0.643478632, 3.43188643))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-7.07820892, 1.52587891e-005, 0.0214385986, -6.68868552e-007, -8.9383775e-008, -1, -1, -5.37781773e-007, 6.68849736e-007, -5.37783819e-007, 1, -8.94262087e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.99000001, 1.00999999, 1.00999999))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.428985834, 0.643478632, 2.35942197))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(1.91970444, 7.62939453e-006, -6.11299896, 5.60889985e-013, -1, 2.13873363e-011, -1, 1.35669785e-012, -9.45021839e-012, -9.45021839e-012, 2.13873363e-011, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1.00999999, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.643478692, 1.50145006, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(1.52587891e-005, 4.18256378, -1.96260071, 1, -5.96057745e-008, 9.47864096e-012, 9.43600753e-012, 5.95814384e-008, 1, -5.96038774e-008, -1, 5.96241989e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.00999999, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.428985834, 0.643478632, 3.86087203))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(5.29653358, -1.52587891e-005, 3.12452698, 3.38432585e-007, 0.707107842, 0.707105756, -1, 2.62373817e-007, 2.16225089e-007, -3.2616839e-008, -0.707105815, 0.707107902))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.995000005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.428985834, 0.643478632, 4.28985786))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(5.27927399, 0, -3.35625648, -6.48180034e-008, -0.707107902, 0.707105756, -1, -6.48242775e-008, -1.56511916e-007, 1.56496469e-007, -0.707105696, -0.707107842))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.995000005, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.643478692, 1.50145006, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(0, 0.460601807, -5.27927399, -1, -2.2677547e-008, -1.98658512e-007, -1.56495929e-007, 0.707107723, 0.707105875, 1.24422883e-007, 0.707105935, -0.707107782))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.995000005, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Part",Vector3.new(0.643478692, 1.50145006, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(7.62939453e-006, 0.443351746, -5.29651833, 0.999994159, -1.66450619e-007, -1.20302275e-007, -3.26175211e-008, -0.707105637, 0.707101583, -2.02776704e-007, -0.707102597, -0.707104623))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.995000005, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.214492902, 0.643478632, 4.71884394))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(5.38652039, 2.28881836e-005, 3.14176178, -1.24422399e-007, -0.707108021, 0.707105637, 1, 2.2677547e-008, 1.98658455e-007, -1.56496341e-007, 0.707105577, 0.707107961))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 1.01499999, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.643478692, 0.214492872, 0.214492902))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(5.34057617e-005, -7.18544006, 2.24143982, -1, 2.68222891e-007, 5.22948085e-009, -5.2483955e-009, -4.26689297e-008, -1, -2.68221015e-007, -1, 4.27116191e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.643478692, 0.214492872, 0.214492902))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(7.62939453e-006, 2.04838943, 7.39993286, 1, -9.58793917e-013, 9.45021839e-012, -9.58793917e-013, 1, -2.13873363e-011, 9.45021839e-012, -2.13873363e-011, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.214492902, 0.643478632, 4.71884394))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-5.39391899, 3.81469727e-005, 3.13435364, -3.8208448e-008, -0.707106709, -0.707106829, 1, -5.0083024e-008, -3.93480093e-009, -3.26170095e-008, -0.707106888, 0.707106769))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 1.01499999, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.643478692, 0.214492872, 0.214492902))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-7.62939453e-006, -2.02694702, 7.39994049, 1, -9.58793917e-013, 9.45021839e-012, -9.58793917e-013, 1, -2.13873363e-011, 9.45021839e-012, -2.13873363e-011, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.643478692, 0.214492872, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(0, 5.23484802, -0.845180511, 1, -3.6000722e-007, 9.97503946e-008, -3.25083334e-007, -0.707107961, 0.707105756, -1.840409e-007, -0.707105696, -0.707107902))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01499999, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.643478692, 0.214492872, 0.643478692))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(3.05175781e-005, 2.04839706, -4.18255615, -1, 1.19210654e-007, -9.46443184e-012, 1.19208757e-007, 1, -2.13873346e-011, -9.45021839e-012, 2.13873363e-011, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.643478692, 0.214492872, 0.214492902))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-2.28881836e-005, -7.18544006, 2.26288986, 1, -5.96057959e-008, -5.95952372e-008, -5.96141518e-008, -5.95815237e-008, -1, 5.96039058e-008, 1, -5.96241989e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.214492902, 0.643478632, 2.7884078))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(2.04839706, -3.81469727e-005, -5.89849854, 5.96038561e-008, 1, -2.13731255e-011, 1, -5.96057461e-008, 9.47864096e-012, -9.45021839e-012, 2.13873363e-011, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 1.01999998, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.214492902, 0.643478632, 4.28985786))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(7.18544006, -2.28881836e-005, 0.0107269287, 9.43600753e-012, 5.95814384e-008, 1, 1, -5.96057745e-008, 9.47864096e-012, 5.96038774e-008, 1, -5.96241989e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 1.01999998, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.214492902, 0.643478632, 2.7884078))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-2.02693939, -2.28881836e-005, -5.89850616, 5.96038561e-008, 1, -2.13731255e-011, 1, -5.96057461e-008, 9.47864096e-012, -9.45021839e-012, 2.13873363e-011, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 1.01999998, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.643478692, 0.214492872, 0.643478692))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-1.52587891e-005, 2.02693939, -4.18255615, 1, -1.19210654e-007, 9.46443184e-012, -1.19208757e-007, -1, 2.13873346e-011, -9.45021839e-012, 2.13873363e-011, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.643478692, 0.214492872, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(6.10351563e-005, 1.83390808, -4.82604218, -1, 1.19210654e-007, -9.46443184e-012, 1.19208757e-007, 1, -2.13873346e-011, -9.45021839e-012, 2.13873363e-011, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.214492902, 0.643478632, 3.86087203))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(6.9709549, -5.34057617e-005, 0.0107269287, 9.43600753e-012, 5.95814384e-008, 1, 1, -5.96057745e-008, 9.47864096e-012, 5.96038774e-008, 1, -5.96241989e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 1.01999998, 1.04999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.643478692, 0.214492872, 0.214492902))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-7.62939453e-006, 5.24223328, 5.44934082, 1, -1.10816437e-007, -4.82903317e-009, 8.17857213e-008, 0.707106709, 0.707106888, -7.49296944e-008, -0.707106829, 0.70710665))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01499999, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.214492902, 0.643478632, 2.14492893))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(1.83390808, -6.86645508e-005, -6.11299133, 5.96038561e-008, 1, -2.13731255e-011, 1, -5.96057461e-008, 9.47864096e-012, -9.45021839e-012, 2.13873363e-011, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 1.01999998, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.214492902, 0.643478632, 2.14492893))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-1.81245041, -5.34057617e-005, -6.11299133, 5.96038561e-008, 1, -2.13731255e-011, 1, -5.96057461e-008, 9.47864096e-012, -9.45021839e-012, 2.13873363e-011, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 1.01999998, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.643478692, 0.214492872, 0.214492902))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-7.62939453e-006, -5.23484802, 5.45674324, 1, 5.58317943e-008, -5.76871741e-008, -8.02848135e-008, 0.707107663, -0.707105815, 1.32404587e-009, 0.707105875, 0.707107723))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01499999, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.643478692, 0.214492872, 0.428985775))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-2.28881836e-005, 5.24225807, -0.837776184, -1, -4.91311812e-006, -4.9592677e-006, -6.98081976e-006, 0.70710665, 0.707106888, 3.26169953e-008, 0.707106948, -0.707106709))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01499999, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.214492902, 0.643478632, 4.28985786))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-5.24225616, 0, 3.1971817, -3.8208448e-008, -0.707106709, -0.707106829, 1, -5.0083024e-008, -3.93480093e-009, -3.26170095e-008, -0.707106888, 0.707106769))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 1.01499999, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.643478692, 0.214492872, 0.643478692))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-1.52587891e-005, 5.38650513, -0.460624695, 1, -3.6000722e-007, 9.97503946e-008, -3.25083334e-007, -0.707107961, 0.707105756, -1.840409e-007, -0.707105696, -0.707107902))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01499999, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.643478692, 0.214492872, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-4.57763672e-005, 1.81244278, -4.82604218, 1, -1.19210654e-007, 9.46443184e-012, -1.19208757e-007, -1, 2.13873346e-011, -9.45021839e-012, 2.13873363e-011, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.643478692, 0.214492872, 0.214492902))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(2.28881836e-005, 5.3938942, 5.60101318, 1, -1.10816437e-007, -4.82903317e-009, 8.17857213e-008, 0.707106709, 0.707106888, -7.49296944e-008, -0.707106829, 0.70710665))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01499999, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.214492902, 0.643478632, 4.28985786))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(5.23484802, -7.62939453e-006, 3.20458984, -1.24422399e-007, -0.707108021, 0.707105637, 1, 2.2677547e-008, 1.98658455e-007, -1.56496341e-007, 0.707105577, 0.707107961))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 1.01499999, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.643478692, 0.214492872, 0.214492902))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(2.28881836e-005, -5.38650513, 5.60840797, 1, 5.58317943e-008, -5.76871741e-008, -8.02848135e-008, 0.707107663, -0.707105815, 1.32404587e-009, 0.707105875, 0.707107723))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01499999, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.643478692, 0.214492872, 0.643478692))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-5.34057617e-005, 5.39393044, -0.453216553, -1, -4.91311812e-006, -4.9592677e-006, -6.98081976e-006, 0.70710665, 0.707106888, 3.26169953e-008, 0.707106948, -0.707106709))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01499999, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.428985834, 0.214492872, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(0, -3.64634705, -0.0321960449, 1, -5.96058101e-008, 5.96141945e-008, -5.95952514e-008, 5.95814811e-008, 1, -5.96039342e-008, -1, 5.96241989e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1.5, 0.910000026))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.428985834, 0.214492872, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(0, 3.32460022, 0.0321960449, 1, -5.96057959e-008, -5.95952372e-008, -5.96141518e-008, -5.95815237e-008, -1, 5.96039058e-008, 1, -5.96241989e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1.5, 0.910000026))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.214492902, 0.428985775, 6.86377287))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(0.128700256, 0, 0.857955933, 5.96038561e-008, 1, -2.13731255e-011, 1, -5.96057461e-008, 9.47864096e-012, -9.45021839e-012, 2.13873363e-011, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 1.01999998, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.428985834, 0.214492872, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-3.05175781e-005, -2.57389069, -0.0321960449, 1, -5.96058101e-008, 5.96141945e-008, -5.95952514e-008, 5.95814811e-008, 1, -5.96039342e-008, -1, 5.96241989e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1.5, 0.910000026))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.428985834, 0.214492872, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-4.57763672e-005, -2.03766632, -0.0321960449, 1, -5.96058101e-008, 5.96141945e-008, -5.95952514e-008, 5.95814811e-008, 1, -5.96039342e-008, -1, 5.96241989e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1.5, 0.910000026))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.428985834, 0.214492872, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-1.52587891e-005, 2.78836823, 0.0321960449, 1, -5.96057959e-008, -5.95952372e-008, -5.96141518e-008, -5.95815237e-008, -1, 5.96039058e-008, 1, -5.96241989e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1.5, 0.910000026))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.428985834, 0.214492872, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-1.52587891e-005, -3.11011505, -0.0321960449, 1, -5.96058101e-008, 5.96141945e-008, -5.95952514e-008, 5.95814811e-008, 1, -5.96039342e-008, -1, 5.96241989e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1.5, 0.910000026))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.428985834, 0.214492872, 0.643478692))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-8.39233398e-005, -0.128700256, 4.61153412, 1, 1.68626912e-007, 2.08495408e-008, 1.68628787e-007, -1, 2.14441815e-011, 2.08306261e-008, 2.12736495e-011, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.428985834, 0.214492872, 0.643478692))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-8.39233398e-005, 0.0858001709, 5.04051971, 1, 1.68626912e-007, 2.08495408e-008, 1.68628787e-007, -1, 2.14441815e-011, 2.08306261e-008, 2.12736495e-011, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.428985834, 0.214492872, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-3.05175781e-005, 1.1796875, 0.0321884155, 1, -5.96057959e-008, -5.95952372e-008, -5.96141518e-008, -5.95815237e-008, -1, 5.96039058e-008, 1, -5.96241989e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1.5, 0.910000026))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.214492902, 0.428985775, 6.64927959))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(0.0214538574, -4.57763672e-005, 1.1796875, 5.96038561e-008, 1, -2.13731255e-011, 1, -5.96057461e-008, 9.47864096e-012, -9.45021839e-012, 2.13873363e-011, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 1.01999998, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.428985834, 0.214492872, 0.643478692))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-3.81469727e-005, 0.021446228, 2.46664429, 1, -9.58793917e-013, 9.45021839e-012, -9.58793917e-013, 1, -2.13873363e-011, 9.45021839e-012, -2.13873363e-011, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.428985834, 0.214492872, 0.643478692))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-5.34057617e-005, -0.0857810974, 2.03766632, 1, -9.58793917e-013, 9.45021839e-012, -9.58793917e-013, 1, -2.13873363e-011, 9.45021839e-012, -2.13873363e-011, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.428985834, 0.214492872, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-4.57763672e-005, 1.71591949, 0.0321960449, 1, -5.96057959e-008, -5.95952372e-008, -5.96141518e-008, -5.95815237e-008, -1, 5.96039058e-008, 1, -5.96241989e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1.5, 0.910000026))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.428985834, 0.214492872, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-3.05175781e-005, -1.50143433, -0.0321960449, 1, -5.96058101e-008, 5.96141945e-008, -5.95952514e-008, 5.95814811e-008, 1, -5.96039342e-008, -1, 5.96241989e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1.5, 0.910000026))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.428985834, 0.214492872, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-4.57763672e-005, -0.965202332, -0.0321884155, 1, -5.96058101e-008, 5.96141945e-008, -5.95952514e-008, 5.95814811e-008, 1, -5.96039342e-008, -1, 5.96241989e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1.5, 0.910000026))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.214492902, 0.428985775, 6.4347868))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-0.085773468, -4.57763672e-005, 1.5014267, 5.96038561e-008, 1, -2.13731255e-011, 1, -5.96057461e-008, 9.47864096e-012, -9.45021839e-012, 2.13873363e-011, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 1.01999998, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.428985834, 0.214492872, 0.643478692))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-5.34057617e-005, 0.128700256, 2.89563751, 1, -9.58793917e-013, 9.45021839e-012, -9.58793917e-013, 1, -2.13873363e-011, 9.45021839e-012, -2.13873363e-011, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.428985834, 0.214492872, 1.71594322))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(0.000114440918, -0.0965270996, 5.36226654, -1, -1.49011328e-007, 3.30398109e-009, -1.4901326e-007, 1, 2.27011299e-009, -3.32289574e-009, 2.31285924e-009, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.99000001, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.428985834, 0.214492872, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-3.05175781e-005, 2.25215149, 0.0321960449, 1, -5.96057959e-008, -5.95952372e-008, -5.96141518e-008, -5.95815237e-008, -1, 5.96039058e-008, 1, -5.96241989e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1.5, 0.910000026))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.428985834, 0.214492872, 1.71594322))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-9.91821289e-005, -0.117973328, 5.36226654, 1, 1.68626912e-007, 2.08495408e-008, 1.68628787e-007, -1, 2.14441815e-011, 2.08306261e-008, 2.12736495e-011, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.99000001, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.428985834, 0.214492872, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-4.57763672e-005, 0.643486023, 0.0321884155, 1, -5.96057959e-008, -5.95952372e-008, -5.96141518e-008, -5.95815237e-008, -1, 5.96039058e-008, 1, -5.96241989e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1.5, 0.910000026))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.428985834, 0.214492872, 0.643478692))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-6.10351563e-005, -0.021446228, 4.82602692, 1, 1.68626912e-007, 2.08495408e-008, 1.68628787e-007, -1, 2.14441815e-011, 2.08306261e-008, 2.12736495e-011, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 0.100000001, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.214492902, 0.428985775, 0.428985685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(1.52587891e-005, -3.18500519, -3.18502808, 5.96038561e-008, 1, -2.13731255e-011, 0.707106411, -4.21325765e-008, -0.707107306, -0.707107306, 4.21627746e-008, -0.707106411))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0, 1.79999995, 1.79999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.214492902, 0.428985775, 0.428985685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(4.50429535, 2.28881836e-005, 3.81469727e-006, 9.43600753e-012, 5.95814384e-008, 1, 0.707105458, 0.707108259, -4.21541984e-008, -0.707108259, 0.707105458, -4.2167251e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0, 1.79999995, 1.79999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Fog","Part",Vector3.new(0.214492902, 0.428985775, 0.428985685))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-1.52587891e-005, 3.18502426, -3.18501282, -1, 3.13472697e-008, -4.65363854e-008, -1.07281375e-008, 0.707107782, 0.707105756, 5.50573702e-008, 0.707105756, -0.707107782))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0, 1.79999995, 1.79999995))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0.5,0,"Institutional white","Part",Vector3.new(0.214492917, 0.428985715, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-7.62939453e-006, -1.09392166, 7.72167206, -1, 5.96057745e-008, -9.47864096e-012, -5.96038845e-008, -1, 2.13731255e-011, 9.45021839e-012, -2.13873363e-011, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0.5,0,"Institutional white","Part",Vector3.new(0.214492917, 0.428985715, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(7.62939453e-006, -0.97958374, 5.92484474, 1, 1.08169914e-007, -4.05035763e-007, -3.62905666e-007, 0.707107842, -0.707105815, 2.09928459e-007, 0.707105815, 0.707107842))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0.5,0,"Institutional white","Part",Vector3.new(0.214492917, 0.428985715, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(7.62939453e-006, -1.8375473, 5.92483902, 1, 1.08169914e-007, -4.05035763e-007, -3.62905666e-007, 0.707107842, -0.707105815, 2.09928459e-007, 0.707105815, 0.707107842))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0.5,0,"Institutional white","Part",Vector3.new(0.214492917, 0.428985715, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(7.62939453e-006, -7.72167969, 1.90897751, -1, 5.96057745e-008, -9.47864096e-012, -9.43600753e-012, -5.95814384e-008, -1, -5.96038774e-008, -1, 5.96241989e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0.5,0,"Institutional white","Part",Vector3.new(0.214492917, 0.428985715, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-7.62939453e-006, -1.95187378, 7.72167969, -1, 5.96057745e-008, -9.47864096e-012, -5.96038845e-008, -1, 2.13731255e-011, 9.45021839e-012, -2.13873363e-011, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0.5,0,"Institutional white","Part",Vector3.new(0.214492917, 0.428985715, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(7.62939453e-006, -6.22024536, 2.55245209, -1, 5.96057745e-008, -9.47864096e-012, -9.43600753e-012, -5.95814384e-008, -1, -5.96038774e-008, -1, 5.96241989e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0.5,0,"Institutional white","Part",Vector3.new(0.214492917, 0.428985715, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(0, -5.9128952, 1.84951019, 1, 1.08169914e-007, -4.05035763e-007, -3.62905666e-007, 0.707107842, -0.707105815, 2.09928459e-007, 0.707105815, 0.707107842))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0.5,0,"Institutional white","Part",Vector3.new(0.214492917, 0.428985715, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(7.62939453e-006, -5.9128952, 0.991544724, 1, 1.08169914e-007, -4.05035763e-007, -3.62905666e-007, 0.707107842, -0.707105815, 2.09928459e-007, 0.707105815, 0.707107842))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0.5,0,"Institutional white","Part",Vector3.new(0.428985834, 1.07246435, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(7.62939453e-006, -8.04340363, 0.235958099, 1, -5.96057745e-008, 9.47864096e-012, -9.43600753e-012, -5.95814384e-008, -1, 5.96038774e-008, 1, -5.96241989e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0.5,0,"Institutional white","Part",Vector3.new(0.214492917, 0.428985715, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(7.62939453e-006, -7.07820892, 2.55245209, -1, 5.96057745e-008, -9.47864096e-012, -9.43600753e-012, -5.95814384e-008, -1, -5.96038774e-008, -1, 5.96241989e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0.5,0,"Institutional white","Part",Vector3.new(0.214492917, 0.428985715, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-7.62939453e-006, -7.72167206, 1.05098724, -1, 5.96057745e-008, -9.47864096e-012, -9.43600753e-012, -5.95814384e-008, -1, -5.96038774e-008, -1, 5.96241989e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0.5,0,"Institutional white","Part",Vector3.new(0.214492917, 0.428985715, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(0, -6.22024536, 2.59534836, 1, -5.96057887e-008, -4.74530509e-007, -4.7454941e-007, 8.94306424e-008, -1, 5.9603984e-008, 1, 8.93878678e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0.5,0,"Institutional white","Part",Vector3.new(0.214492917, 0.428985715, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(0, -7.07820129, 2.59534836, 1, -5.96057887e-008, -4.74530509e-007, -4.7454941e-007, 8.94306424e-008, -1, 5.9603984e-008, 1, 8.93878678e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Marble,0.5,0,"Institutional white","Part",Vector3.new(0.428985834, 1.07246435, 0.428985834))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(-7.62939453e-006, -8.04340363, 0.193050385, -1, 5.96057745e-008, -9.47864096e-012, -9.43600753e-012, -5.95814384e-008, -1, -5.96038774e-008, -1, 5.96241989e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Sand blue","Hitbox",Vector3.new(5.12638044, 0.428985775, 3.64637923))
Hitboxweld=weld(m,Handle,Hitbox,CFrame.new(0, 0, 0, 4.97627866e-007, 1, 1.48989812e-007, 1, -4.97629685e-007, -1.83829357e-007, -1.83848201e-007, 1.4903263e-007, -1),CFrame.new(0.0321655273, -0.0429763794, 6.15589142, -5.96038561e-008, -1, 2.13731255e-011, 1, -5.96057461e-008, 9.47864096e-012, 9.45021839e-012, -2.13873363e-011, 1))

TrailDeb = false

function attackone()
	attack=true
	for i=0,1,0.07 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(-50)),.2)
        Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(-5),math.rad(50)),.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(160), math.rad(0), math.rad(10)), 0.2)
        LW.C0 = clerp(LW.C0, CFrame.new(.3, 0.5, -1) * angles(math.rad(160), math.rad(0), math.rad(50)), 0.2)
        HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(60),math.rad(-10),math.rad(0)),.2)
	end
	so("http://www.roblox.com/asset/?id=203691447",Hitbox,1,1)
	con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,10,30,math.random(10,20),"Knockdown",RootPart,.2,1) end) 
	 if TrailDeb == false then
							TrailDeb = true
						end
						

coroutine.wrap(function()
local Old = Hitbox.CFrame.p
while wait()do
if not TrailDeb then break end
local New = Hitbox.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Material = "SmoothPlastic"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = BrickColor.new("Navy blue")
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(1,1,1)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
wait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:remove()
end)()
coroutine.wrap(function()
for i = 1,10 do
wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)() 
	for i=0,1,0.06 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(50)),.2)
        Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(5),math.rad(-50)),.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(10)), 0.2)
        LW.C0 = clerp(LW.C0, CFrame.new(.2, 0.2, -.5) * angles(math.rad(10), math.rad(0), math.rad(50)), 0.2)
        HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(-10),math.rad(0)),.2)
	end
	attack=false
	con1:disconnect()
	if TrailDeb == true then
						TrailDeb = false
						end
end

function attacktwo()
        attack=true
        for i=0,1,0.06 do
                swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(90)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(-5),math.rad(-80)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(90),math.rad(90)),.1)
LW.C0 = clerp(LW.C0, CFrame.new(.3, 0.5, -1) * angles(math.rad(0), math.rad(60), math.rad(90)), 0.1)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-.5,-2)*angles(math.rad(-80),math.rad(-10),math.rad(0)),.1)

        end
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,10,30,math.random(10,20),"Knockdown",RootPart,.2,1) end) 
so("http://www.roblox.com/asset/?id=203691492",Hitbox,1,1)
if TrailDeb == false then
TrailDeb = true
end
coroutine.wrap(function()
local Old = Hitbox.CFrame.p
while wait()do
if not TrailDeb then break end
local New = Hitbox.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Material = "SmoothPlastic"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = BrickColor.new("Navy blue")
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(1,1,1)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
wait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:remove()
end)()
coroutine.wrap(function()
for i = 1,10 do
wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)() 
for i=0,1,0.06 do
                swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(-50)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(-5),math.rad(50)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(-10),math.rad(90)),.1)
LW.C0 = clerp(LW.C0, CFrame.new(.3, 0.5, -1) * angles(math.rad(0), math.rad(-10), math.rad(90)), 0.1)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-.5,-2)*angles(math.rad(-80),math.rad(-10),math.rad(0)),.1)
end

for i=0,1,1 do
swait()
so("http://www.roblox.com/asset/?id=203691467",Hitbox,1,1)
for i=0,1,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*euler(0,0,6*i),.3)
end
end

attack=false
con1:disconnect()
if TrailDeb == true then
						TrailDeb = false
						end
end

function attackthree()
        attack=true
        for i=0,1.5,0.06 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-10),math.rad(0),math.rad(00)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(-5),math.rad(00)),.1)
RW.C0=clerp(RW.C0,cf(1,0.8,-1)*angles(math.rad(130),math.rad(0),math.rad(-50)),.1)
LW.C0=clerp(LW.C0,cf(-1,0.8,-1)*angles(math.rad(130),math.rad(0),math.rad(50)),.1)
HandleWeld.C0=clerp(HandleWeld.C0,cf(-1,0,-.2)*angles(math.rad(-20),math.rad(-20),math.rad(50)),.3)
        end
so("http://roblox.com/asset/?id=203691467",Hitbox,1,1) 
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,10,30,math.random(10,20),"Knockdown",RootPart,.2,1) end) 
if TrailDeb == false then
TrailDeb = true
end 
coroutine.wrap(function()
local Old = Hitbox.CFrame.p
while wait()do
if not TrailDeb then break end
local New = Hitbox.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Material = "SmoothPlastic"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = BrickColor.new("Navy blue")
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(1,1,1)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
wait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:remove()
end)()
coroutine.wrap(function()
for i = 1,10 do
wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)() 
      for i=0,1.5,.06 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(0)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(-5),math.rad(00)),.2)
RW.C0=clerp(RW.C0,cf(1,0.2,-.5)*angles(math.rad(20),math.rad(0),math.rad(-50)),.2)
LW.C0=clerp(LW.C0,cf(-1,0.2,-.5)*angles(math.rad(20),math.rad(0),math.rad(50)),.2)
RH.C0=clerp(RH.C0,cf(1,-1,.2)*angles(math.rad(10),math.rad(70),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.2)*angles(math.rad(-20),math.rad(-70),math.rad(-20)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(-1,0,-.2)*angles(math.rad(-20),math.rad(-20),math.rad(50)),.3)
        end
attack=false
con1:disconnect()
if TrailDeb == true then
						TrailDeb = false
						end
end

function JumpSpin()
attack=true
for i=0,1,0.06 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(-50)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(-5),math.rad(50)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(-10),math.rad(90)),.1)
LW.C0 = clerp(LW.C0, CFrame.new(.3, 0.5, -1) * angles(math.rad(0), math.rad(-10), math.rad(90)), 0.1)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,-.5,-2)*angles(math.rad(-80),math.rad(-10),math.rad(0)),.1)
end
if TrailDeb == false then
TrailDeb = true
end 
coroutine.wrap(function()
local Old = Hitbox.CFrame.p
while wait()do
if not TrailDeb then break end
local New = Hitbox.CFrame.p
local Mag =(Old -New).magnitude
local Dis =(Old +New)/2
local Trail = Instance.new("Part",Character)
Trail.Material = "SmoothPlastic"
Trail.Anchored = true
Trail.CanCollide = false
Trail.BrickColor = BrickColor.new("Navy blue")
Trail.Size = Vector3.new(0.2,Mag,0.2)
Trail.TopSurface = 0
Trail.BottomSurface = 0
Trail.formFactor = "Custom"
Trail.CFrame = CFrame.new(Dis,New)* CFrame.Angles(math.pi/2,0,0)
local ms = Instance.new("BlockMesh",Trail)
ms.Scale = Vector3.new(1,1,1)
local TM = Instance.new("CylinderMesh",Trail)
TM.Scale = Vector3.new(1,1,1)
Old = New
coroutine.wrap(function()
for i = 1,0,-0.1 do
wait()
TM.Scale = TM.Scale * Vector3.new(i,1,i)
end
Trail:remove()
end)()
coroutine.wrap(function()
for i = 1,10 do
wait()
Trail.Transparency = Trail.Transparency +0.1
end end)()end end)() 
con1=Hitbox.Touched:connect(function(hit) Damagefunc(hit,10,30,math.random(10,20),"Knockdown",RootPart,.2,1) end) 
for i=0,0.6,.5 do
	so("http://www.roblox.com/asset/?id=203691447",Hitbox,1,1)
swait()
for i=0,1,0.1 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,4)*euler(0,1.2,6*i),.2)
end
end
attack=false
con1:disconnect()
if TrailDeb == true then
						TrailDeb = false
						end
end

mouse.Button1Down:connect(function()
	if attack==false then
		if attacktype==1 then
			attacktype = 2
			attackone()
		elseif attacktype==2 then
			attacktype = 3
			attacktwo()
			elseif attacktype==3 then
			attacktype = 1
			attackthree()
		end
	end
end)

function MMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Material = "SmoothPlastic"
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace
        nooutline(S)
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.1,0.1,0.1) Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function MMMAGIC2(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Material = "SmoothPlastic"
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace
        nooutline(S)
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.1,0.1,0.1) Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function MMMAGIC3(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Material = "SmoothPlastic"
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace
        nooutline(S)
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0,0.1,0) Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

DOHHit=function(hit,Damage,Pos) --credits to turdulator for making this function :D
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        t=hit.Parent:FindFirstChild("Torso")
        if h~=nil and t~=nil then
        if attackdebounce2 == false then 
        attackdebounce2 = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.2) 
        attackdebounce2 = false 
        end)) 
        elseif attackdebounce2==true then return end
                if h.Parent==Character then
                        return
                end
                        c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                if math.random(0,99)+math.random()<=7.8 then
--[[                        Knockback=Knockback*2
                        r=it("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=vt(500000000,50000000000,500000000)*50000
                        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
        
                end
                h:TakeDamage(Damage) 
                game:GetService("Debris"):AddItem(vl,.2)
                rl=it("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=vt(500000,500000,500000)*50000000000000
                rl.angularvelocity=vt(math.random(-3,3),math.random(-3,3),math.random(-3,3))
                rl.Parent=t
                game:GetService("Debris"):AddItem(rl,.05)
                f=it("BodyPosition")
                f.P=800
                f.D=100
                f.maxForce=vt(math.huge,math.huge,math.huge)
                f.position=Pos.Position
                f.Parent=t
                game:GetService("Debris"):AddItem(f,.1)
        else
                if hit.CanCollide==false then
                        return
                end
--                DBExplode(DB)
        end
end

colors={"Really black","Navy blue"}
random=colors[math.random(1,#colors)]
function Absorber()
attack=true
so("http://www.roblox.com/asset/?id=231917977",LeftArm,1,1) 
for i=0,1,0.1 do
wait()
MMMAGIC(LeftArm,2,2,2,0,-1,0,BrickColor.new(random)) 
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(-10),math.rad(-60)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(-5),math.rad(50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(40)), 0.3)
end
for i=0,1,0.1 do
wait(0)
MMMAGIC(LeftArm,2,2,2,0,-1,0,BrickColor.new(random)) 
end
for i=0,1,0.2 do
wait()
MMMAGIC(LeftArm,2,2,2,0,-1,0,BrickColor.new(random)) 
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(-10),math.rad(-90)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(5),math.rad(80)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-90)), 0.3)
end
for i=0,1,0.15 do
wait(0)
MMMAGIC(LeftArm,2,2,2,0,-1,0,BrickColor.new(random)) 
end
so("http://www.roblox.com/asset/?id=231917822",LeftArm,1,1) 
MMMAGIC(LeftArm,4,4,4,0,-1,0,BrickColor.new("Navy blue")) 
MMMAGIC(LeftArm,4,4,4,0,-1,0,BrickColor.new("Black")) 
lacf=LeftArm.CFrame
coroutine.resume(coroutine.create(function() 
local derppart=part(3,workspace,"SmoothPlastic",0,0,BrickColor.new("Really black"),"Effect",vt(1,1,1))
derppart.Anchored=true
derppart.CFrame=lacf*CFrame.new(0,-1,0)
for i=1,50 do
wait()
local c = game.Workspace:GetChildren();
for i = 1, #c do
local hum = c[i]:findFirstChild("Humanoid")
if hum ~= nil and hum.Health ~= 0 then
local head = c[i]:findFirstChild("Head");
if head ~= nil then
local targ = head.Position - derppart.Position;
local mag = targ.magnitude;
if mag <= 7 and c[i].Name ~= Player.Name then 
DOHHit(head,math.random(1,3),derppart)
end 
end 
end 
end 
MMMAGIC2(lacf,3,3,3,0,-1,0,BrickColor.new(random)) 
MMMAGIC3(lacf,1,4,1,0,-1,0,BrickColor.new(random)) 
end
derppart.Parent=nil
end))
for i=0,1,0.2 do
wait()
end
attack=false
end

mouse.KeyDown:connect(function(k)
	k=k:lower()
	if k=='q' then
		if attack==false then
			JumpSpin()
		end
		elseif k=='e' then
		if attack==false then
			Absorber()
		end
	end
end)


local sine = 0
local change = 1
local val = 0

while true do
swait()
sine = sine + change
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
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(-5),math.rad(30)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,.2)*angles(math.rad(10),math.rad(70),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.2)*angles(math.rad(-20),math.rad(-70),math.rad(-20)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,.6)*angles(math.rad(100),math.rad(-10),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(20),math.rad(5),math.rad(30)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,.2)*angles(math.rad(10),math.rad(70),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.2)*angles(math.rad(-20),math.rad(-70),math.rad(-20)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,.6)*angles(math.rad(100),math.rad(-10),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(-30)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(-5),math.rad(30)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(40), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,.2)*angles(math.rad(5),math.rad(70),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.2)*angles(math.rad(0),math.rad(-70),math.rad(-20)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,.6)*angles(math.rad(100),math.rad(-10),math.rad(0)),.3)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(30),math.rad(0),math.rad(-20)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(-5),math.rad(20)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(150), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.2)*angles(math.rad(0),math.rad(-90),math.rad(-10)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,.6)*angles(math.rad(90),math.rad(-10),math.rad(0)),.3)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(30),math.rad(0),math.rad(-20)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(-5),math.rad(20)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(150), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.2)*angles(math.rad(0),math.rad(-90),math.rad(-10)),.3)
HandleWeld.C0=clerp(HandleWeld.C0,cf(0,0,.6)*angles(math.rad(90),math.rad(-10),math.rad(0)),.3)
end
end
end
end