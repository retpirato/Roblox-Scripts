-- Shadow Blade Edit by MappleGalexy(MapleGalaxy) --
-- I'll Fucking Find You --
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
cam=game.Workspace.CurrentCamera
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
script.Name = "MagicBlade"
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
bounce=false
cooldown=false
deeznuts=false
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
cam = workspace.CurrentCamera
ZTarget = nil
RocketTarget = nil
local m = Instance.new("Model",Character)
m.Name = "WeaponModelz"

local SHEZ = Instance.new("Sound",Character.HumanoidRootPart)SHEZ.SoundId = "rbxassetid://656541219" SHEZ.Looped = true SHEZ.Volume = 2 SHEZ:Play()
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

	function swait(num)
    if num==0 or num==nil then
    game:service'RunService'.Heartbeat:wait(0)
    else
    for i=0,num do
    game:service'RunService'.Heartbeat:wait(0)
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
	
	function ppart(formfactor,parent,reflectance,transparency,brickcolor,name,size)
		local fp = it("Part")
		fp.formFactor = formfactor 
		fp.Parent = parent
		fp.Reflectance = reflectance
		fp.Transparency = transparency
		fp.CanCollide = false 
		fp.Locked=true
		fp.BrickColor = brickcolor
		fp.Name = name
		fp.Size = size
		fp.Position = EffectPart.Position 
		NoOutline(fp)
		fp.Material="Neon"
		fp:BreakJoints()
		return fp 
	end 
	
	function wweld(parent,part0,part1,c0)
		local weld=it("Weld") 
		weld.Parent=parent	
		weld.Part0=part0 
		weld.Part1=part1 
		weld.C0=c0
		return weld
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
	
	function decal(part,face,texture,transparency,shiny,specular,name)
		local d=it("Decal",part)
		d.Shiny=shiny
		d.Face=face
		d.Specular=specular
		d.Transparency=transparency
		d.Texture=texture
		d.Name=name
		return d
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
	
Humanoid.Name = "Noctis"
local SH = Instance.new("Sound")
local list = {}
	
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = SH:clone() sou.Parent = par or workspace
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
sou:play() 
game:GetService("Debris"):AddItem(sou,15)
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

Damagefunc=function(Part,hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        local h=hit.Parent:FindFirstChild("Humanoid")
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
                        local c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                local Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                local  blocked=false
                local  block=hit.Parent:findFirstChild("Block")
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
                ShowDamage((Part.CFrame * CFrame.new(math.random(-5,5), math.random(-5,5), math.random(-5,5)+ (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
                else
                h.Health=h.Health-(Damage/2)
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Bright blue").Color)
                end
                if Type=="Knockdown" then
                local hum=hit.Parent.Humanoid
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
local rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                local vp=Instance.new("BodyVelocity")
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
                local rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                local bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
	            local Targetting = false
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                local TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                local  targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                local targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                local dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
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
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
        end
end


function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 0))
	local EffectPart = part("Custom",workspace,"SmoothPlastic",0,1,BrickColor.new(Color),"Effect",vt(0,0,0))
	EffectPart.Anchored = true
	local BillboardGui = Instance.new("BillboardGui")
	BillboardGui.Size = UDim2.new(3, 0, 3, 0)
	BillboardGui.Adornee = EffectPart
	local TextLabel = Instance.new("TextLabel")
	TextLabel.BackgroundTransparency = 1
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.Text = Text
	TextLabel.TextColor3 = Color
	TextLabel.TextScaled = true
	TextLabel.Font = Enum.Font.ArialBold
	TextLabel.Parent = BillboardGui
	BillboardGui.Parent = EffectPart
	game.Debris:AddItem(EffectPart, (Time + 0.1))
	EffectPart.Parent = game:GetService("Workspace")
	Delay(0, function()
		local Frames = (Time / Rate)
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = (Frame / Frames)
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end)
end

handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","Handle",Vector3.new(0.200000003, 1.61857152, 0.200000003))
handleweld=weld(m,Character["Right Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.995889783, -0.101109691, 0.0468789339, -5.23798153e-005, 0.99999994, -0.000210702419, -6.36925748e-008, -0.000210702419, -0.99999994, -1, -5.23798008e-005, 7.47295417e-008))
handleweld.Name = "MagicWeld"
mesh("CylinderMesh",handle,"","",Vector3.new(0, 0, 0),Vector3.new(0.857142806, 1, 0.857142746))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","SwordPart",Vector3.new(0.200000003, 0.257142872, 0.911428571))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00982296467, -0.128642559, 5.57254982, -1.21753502e-007, -2.87620594e-010, 1, -1, -1.04306673e-006, -1.2175461e-007, 1.04306673e-006, -1, -2.87123214e-010))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.571428537, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","SwordPart",Vector3.new(0.200000003, 3.74285722, 0.571428657))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0100114346, 3.24283266, 2.64644623e-005, -2.98713599e-006, -1.63886575e-008, -1, -1.18017197e-005, -0.99999994, 1.64265153e-008, -0.99999994, 1.18017197e-005, 2.98713007e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.285714298, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","SwordPart",Vector3.new(0.200000003, 3.74285722, 0.514285743))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00896048546, 3.24313331, -6.2584877e-006, -2.62832918e-006, -1.58840017e-008, -1, -1.16825104e-005, -0.99999994, 1.59122848e-008, -0.99999994, 1.16825104e-005, 2.62831986e-006))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.571428537, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","SwordPart",Vector3.new(0.200000003, 0.914285779, 0.254285723))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0080575943, -5.57459974, 0.127099097, -7.20826961e-007, -1.18548371e-009, 1, 6.25863322e-007, 1, 1.18891563e-009, -1, 6.25863322e-007, -7.20827984e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.571428537, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","SwordPart",Vector3.new(0.200000003, 0.942857206, 0.28285715))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00858414173, -5.58866072, 0.142816901, -5.41048905e-007, -8.99582631e-010, 1, -5.96046448e-007, 0.99999994, 9.00953978e-010, -0.99999994, -5.96046448e-007, -5.41057148e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.285714298, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","SwordPart",Vector3.new(0.200000003, 0.285714328, 0.940000057))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.011053443, -0.142930448, 5.58944941, 2.97432763e-007, 3.64387631e-010, 1, -1, 6.25863322e-007, 2.9743137e-007, -6.25863322e-007, -1, 3.63804986e-010))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.285714298, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Black","SwordPart",Vector3.new(1, 1.20000005, 1))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.57627869e-007, -0.809324801, 1.96695328e-006, 6.20105922e-008, 2.27451835e-010, -1, 1.81795622e-006, 1, 2.27856845e-010, 1, -1.81795622e-006, 6.2011928e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Head,"",Vector3.new(0, 0, 0),Vector3.new(0.285714298, 0.142857134, 0.285714298))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","SwordPart",Vector3.new(0.483492821, 0.539954185, 0.539909601))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00226664543, 0.69951874, 1.00827909, 5.41296288e-007, 9.50464596e-010, -1, 0.707107663, -0.707105815, 3.8208583e-007, -0.707105815, -0.707107663, -3.83435292e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.285714179, 0.285714179))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","SwordPart",Vector3.new(0.892679513, 0.539954185, 0.771299422))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.19487548, -0.00217807293, 3.74913216e-005, 2.29479338e-006, 1, 7.06279479e-012, -6.20287395e-008, -7.34701189e-012, 1, 1, -2.29479338e-006, 6.20337914e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.857145786, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","SwordPart",Vector3.new(0.892679513, 0.539954185, 0.771299422))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.19487882, -0.00217807293, 4.00543213e-005, 2.0563748e-006, 1, 1.14326326e-011, -6.20178255e-008, -1.28039801e-011, 1, 1, -2.0563748e-006, 6.20228633e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 0.571431458, 1.10000002))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","SwordPart",Vector3.new(0.483492851, 0.539954185, 0.539909601))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00595891476, -1.00750566, 1.00747085, -1.81721958e-007, -3.98678424e-010, 1, -0.707107067, 0.707106411, -1.28216811e-007, -0.707106411, -0.707106948, -1.28784094e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.285714179, 0.285714179))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","SwordPart",Vector3.new(0.483492821, 0.539954185, 0.539909601))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00534570217, -1.00757694, -0.698815584, 2.4158129e-007, 4.89748686e-010, -1, -0.707107604, 0.707105875, -1.70486445e-007, 0.707105815, 0.707107544, 1.71177419e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.285714179, 0.285714269))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","SwordPart",Vector3.new(0.493492872, 0.539954185, 0.539909601))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000260472298, 0.6988675, -0.698937058, 3.01447898e-007, 5.80818948e-010, -1, -0.707105994, -0.707107365, -2.13563524e-007, -0.707107365, 0.707106113, -2.12752497e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.285714179, 0.285714269))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","SwordPart",Vector3.new(1.46267962, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00927072763, -0.0121991634, 1.19311547, 0.999999881, -2.08614802e-006, 1.9306286e-007, -1.93059051e-007, -1.09411957e-007, 1, -2.08616257e-006, -0.999999881, -1.09408283e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","SwordPart",Vector3.new(1.06267953, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.604586363, -0.0121991634, 1.02863288, 0.866026282, 0.499998033, 2.28958157e-007, -1.93872992e-007, -1.22099237e-007, 1, 0.499998033, -0.866026282, -8.79730777e-009))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","SwordPart",Vector3.new(1.46267962, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.03790355, -0.0121991634, 0.588528812, 0.500001669, 0.866024196, 1.74744486e-007, -1.6279435e-007, -1.0777579e-007, 1, 0.866024196, -0.500001669, 8.71042545e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","SwordPart",Vector3.new(0.662679553, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.39311564, -0.0121991634, -0.00927072763, 2.08616257e-006, 0.999999881, 7.82298955e-008, -1.51383063e-007, -7.82268899e-008, 1, 0.999999881, -2.08614802e-006, 1.51386175e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","SwordPart",Vector3.new(1.46267951, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.02863288, -0.0121997595, -0.604586482, -0.499998093, 0.866026223, -6.44970513e-008, -1.45620604e-007, -9.60127267e-009, 1, 0.866026223, 0.499998093, 1.30918266e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","SwordPart",Vector3.new(1.06267953, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.588528991, -0.0121992826, -1.03790355, -0.866024137, 0.500001729, -9.11133142e-008, -1.16737233e-007, -1.99774206e-008, 1, 0.500001729, 0.866024137, 7.56750538e-008))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","SwordPart",Vector3.new(0.372464359, 0.762464345, 0.762464285))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00338602066, -0.736121356, -0.540583551, 5.41296288e-007, 9.50464596e-010, -1, 0.707107663, -0.707105815, 3.8208583e-007, -0.707105815, -0.707107663, -3.83435292e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.895366609, 0.128561974, 0.128542364))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","SwordPart",Vector3.new(0.382464379, 0.762464345, 0.762464285))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00803625584, -0.737174749, 0.736498654, 3.01447898e-007, 5.80818948e-010, -1, -0.707105994, -0.707107365, -2.13563524e-007, -0.707107365, 0.707106113, -2.12752497e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.913885474, 0.128561974, 0.128542408))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","SwordPart",Vector3.new(0.40246433, 0.762464345, 0.762464285))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00594449043, 0.540397167, 0.737201214, 2.4158129e-007, 4.89748686e-010, -1, -0.707107604, 0.707105875, -1.70486445e-007, 0.707105815, 0.707107544, 1.71177419e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.895366609, 0.128561974, 0.128542408))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","SwordPart",Vector3.new(0.40246433, 0.762464345, 0.762464285))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00681877136, 0.540436149, -0.541088939, -1.81721958e-007, -3.98678424e-010, 1, -0.707107067, 0.707106411, -1.28216811e-007, -0.707106411, -0.707106948, -1.28784094e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.895366669, 0.128561974, 0.128542364))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","SwordPart",Vector3.new(1.26045096, 0.762464345, 0.762464285))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.910848916, -0.00147974491, 0.000465214252, 2.29479338e-006, 1, 7.06279479e-012, -6.20287395e-008, -7.34701189e-012, 1, 1, -2.29479338e-006, 6.20337914e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.385687381, 0.642712057))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Cyan","SwordPart",Vector3.new(1.26045096, 0.762464345, 0.762464285))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.910846829, -0.00147974491, 0.000467300415, 2.0563748e-006, 1, 1.14326326e-011, -6.20178255e-008, -1.28039801e-011, 1, 1, -2.0563748e-006, 6.20228633e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 0.257125348, 0.706983268))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Black","SwordPart",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.98755074e-005, -0.86527884, -0.00526940823, 0.99999994, -3.33786011e-006, -1.61662047e-006, 3.33786011e-006, 0.99999994, -1.75251103e-009, 1.61662604e-006, 1.74897963e-009, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.857142806, 0.857145548, 0.857142746))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Black","Hitbox",Vector3.new(0.650000036, 4.19999981, 0.200000003))
Hitboxweld=weld(m,handle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0107657909, -3.95914412, 0.00325751305, 0.999999821, -0.000211339415, 2.39198562e-006, 0.000211339124, 0.999997795, -6.21902582e-005, -2.38056168e-006, 6.20116552e-005, 0.999992907))
EffectPart=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Cyan","EffectPart",Vector3.new(0.200000003, 0.200000003, 0.200000003))
EffectPartweld=weld(m,handle,EffectPart,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00693154335, 0.014090538, 6.03910685, -5.23798153e-005, -6.36925748e-008, -1, 0.99999994, -0.000210702419, -5.23798008e-005, -0.000210702419, -0.99999994, 7.47295417e-008))
mesh("BlockMesh",EffectPart,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
EffectPart2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Black","EffectPart2",Vector3.new(0.200000003, 0.200000003, 0.200000003))
EffectPart2weld=weld(m,Character["Left Arm"],EffectPart2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.15575993, 0.00814216491, -0.0231294632, -5.23798153e-005, 0.999999821, -0.000210702419, -6.36925748e-008, -0.00021070239, -0.99999994, -1, -5.23797935e-005, 7.47295417e-008))

local ColorsArray = {ColorSequenceKeypoint.new(0, Color3.new(0/255,170/255,255/255)),ColorSequenceKeypoint.new(1, Color3.new(0/255,170/255,255/255))}
local Atch1 = Instance.new("Attachment",Hitbox)Atch1.Position = Vector3.new(0,2,0)
local Atch2 = Instance.new("Attachment",Hitbox)Atch2.Position = Vector3.new(0,-2.5,0)
local Trail = Instance.new("Trail",Hitbox)Trail.Attachment0 = Atch1 Trail.Attachment1 = Atch2
Trail.Texture = "rbxassetid://22636887" Trail.Lifetime = 0.05 Trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
Trail.Color = ColorSequence.new(ColorsArray) Trail.LightEmission = 1

DarkRiftF=function(par)
while lol == true do 
wait() 
local PWN={}
for _,v in pairs(game.Workspace:children()) do
if v.className=="Model" and v:FindFirstChild("Humanoid")~=nil then
if v.Humanoid.Health>0 and v:FindFirstChild("Torso")~=nil then
table.insert(PWN,v.Torso)
end
end
end
for _,t in pairs(PWN) do
local targ=par.Position-t.Position
local Mag=targ.magnitude
if not t:IsDescendantOf(Character) and t~=nil and Mag<=50 then
if Mag<=30 then
t.Parent.Humanoid:TakeDamage(.5)
local rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*5000
rl.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))/10
rl.Parent=t
game:GetService("Debris"):AddItem(rl,.1)
end
if Mag<=20 then
t.Parent.Humanoid:TakeDamage(.1)
else
local vl=Instance.new("BodyVelocity")
vl.P=3000
vl.maxForce=Vector3.new(50000000000,50000000000,50000000000)
vl.velocity=(t.Position-par.Position).unit*-(70/(Mag))
vl.Parent=t
game:GetService("Debris"):AddItem(vl,.1)
end
end
end
wait(.08)
end
end

function DerpMagic(part,x1,y1,z1,x2,y2,z2,color) 
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
	local S=Instance.new("Part")
	S.Name="Effect"
	S.Material="Neon"
	S.formFactor=0
	S.Size=Vector3.new(x1,y1,z1)
	S.BrickColor=color
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=false
	S.CanCollide=false
	S.CFrame=part.CFrame
	S.Parent=game.Workspace
	msh1.Parent = S
	local W=Instance.new("Weld")
	W.Parent=S
	W.Part0=S
	W.Part1=part
	W.C0=CFrame.new(x2,y2,z2) * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	W.Parent=nil
	S.Anchored=true
	coroutine.resume(coroutine.create(function(Part,Weld) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) --[[Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))]] Part.Transparency=i*.1 wait() end Part.Parent=nil Weld.Parent=nil end),S,W)
end 

local function BlackHole(parent,cframe)
local effectsmsh = Instance.new("SpecialMesh")
effectsmsh.MeshId = "http://www.roblox.com/asset/?id=15887356"
--effectsmsh.Scale = Vector3.new(1,1,2.5)
effectsmsh.Scale = Vector3.new(3,3,3)
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Effect"
effectsg.Locked = true
effectsg.Transparency = 1 
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = parent
effectsg.BrickColor = BrickColor.new("Cyan")
effectsg.Material="Neon"
coroutine.resume(coroutine.create(function(Part,Mesh)
	local Mesh = Instance.new("SpecialMesh") 
	Mesh.Scale = Vector3.new(0.5,0.5,0.5) 
	Mesh.MeshType = "Sphere" 
--	Mesh.TextureId="http://www.roblox.com/asset/?id=1529460"
	Part=Instance.new("Part")
	Part.Name="Effect"
	Part.formFactor=0
	Part.Size=Vector3.new(1,1,1)
	Part.BrickColor=BrickColor.new("Cyan")
	Part.Material="Neon"
	Part.Reflectance = 0
	Part.TopSurface=0
	Part.BottomSurface=0
	Part.Transparency=0
	Part.Anchored=true
NoOutline(Part)	
	Part.CanCollide=false
	Part.CFrame=cframe
	Part.Parent=parent
	Mesh.Parent = Part
	lol=true
coroutine.resume(coroutine.create(function()
	DarkRiftF(Part)
end)) 
	for i=0,200 do
	wait()
	DerpMagic(Part,1,i/3,1,0,i/3,0,BrickColor.new("Cyan")) 
	Mesh.Scale=Mesh.Scale-Vector3.new(0.2,0.2,0.2)
	Part.CFrame=cframe*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	end
	local fff=200
	for i=0,100 do
	wait()
	DerpMagic(Part,1,fff/3,1,0,fff/3,0,BrickColor.new("Cyan")) 
	Part.CFrame=cframe*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	end
	for i=0,1,0.05 do
	wait()
	Part.Transparency=Part.Transparency+0.05
	Mesh.Scale=Mesh.Scale+Vector3.new(1.5,1.5,1.5)
	end
	lol=false
	Part.Parent=nil
end),nil,nil)
end

function makeShockwave(height,color,speed,range,pulse)
local range = range or 2000
local p = Instance.new("Part")
p.Anchored = true
p.CanCollide = false
p.FormFactor = "Custom"
p.BrickColor = color
p.Parent = workspace
local m = Instance.new("SpecialMesh",p)
m.MeshId = "rbxassetid://3270017"
local estimateSurvival = math.floor(range/speed) * 0.03
game:GetService("Debris"):AddItem(p,estimateSurvival)
Spawn(function ()
for i = 1,range,speed do
p.Transparency = 1-math.min(0.5,3-(i/500))
m.Scale = Vector3.new(i,i,i*height)
p.CFrame = CFrame.new(Torso.Position) * CFrame.Angles(math.rad(90),0,0)
wait()
end
p:Destroy()
end)
end

function MagicCircle(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=ppart(3,game.Workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(.1,.1,.1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,2,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=ppart(3,game.Workspace,0,1,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
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

local function MagicRing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay,Type,parent)
local prt=ppart(3,game.Workspace,0,1,brickcolor,"Effect",vt())
if Type~=2 then
prt.Anchored=true
end
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh,dur) 
local wld=nil
if dur==2 then
wld=weld(Part,Part,parent,euler(0,0,0)*cf(0,0,0))
end
for i=0,1,delay do
swait()
if dur==1 then
Part.CFrame=Part.CFrame
elseif dur==2 then
wld.C0=cframe
end
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,Type)
end

function MagicWaveThing(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=ppart(3,game.Workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=1051557",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
swait()
Part.CFrame=Part.CFrame*euler(0,0.7,0)
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

function MagicCylinder(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=ppart(3,workspace,0,0,brickcolor,"Effect",vt(0.2,0.2,0.2))
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"Head","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
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

function MagicWave(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=ppart(3,workspace,0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=20329976",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
table.insert(Effects,{prt,"Cylinder",delay,x3,y3,z3})
end

function Blast(parent)
MagicBlock(BrickColor.new("Black"),parent.CFrame,4,4,4,0.2,0.2,0.2,0.01)
MagicWaveThing(BrickColor.new("Black"),parent.CFrame,4,4,4,0.2,0.2,0.2,0.01)
end

function ChargeBall(parent,t)
local counter=0
local size=1
for i=0,t,1 do
swait()
counter=counter+1
if counter%10==0 then
if size==3 then
MagicRing(BrickColor.new("Black"),parent.CFrame,.5,.5,.5,1,1,1,0.1,3,parent)
elseif size==2 then
MagicRing(BrickColor.new("Black"),parent.CFrame,.5,.5,.5,1,1,1,0.1,3,parent)
end
end
if counter%5==0 then
if size==1 then
MagicBlock(BrickColor.new("Black"),parent.CFrame,.5,.5,.5,1,1,1,0.1,3,parent)
elseif size==2 then
MagicBlock(BrickColor.new("Black"),parent.CFrame,.5,.5,.5,1,1,1,0.1,3,parent)
elseif size==3 then
MagicBlock(BrickColor.new("Black"),parent.CFrame,.5,.5,.5,1,1,1,0.1,3,parent)
end
end
end
end

function ChargeBall2(parent,t)
local counter=0
local size=1
for i=0,t,1 do
swait()
counter=counter+1
if counter%10==0 then
if size==3 then
MagicRing(BrickColor.new("Black"),parent.CFrame,.5,.5,.5,1,1,1,0.1,3,parent)
elseif size==2 then
MagicRing(BrickColor.new("Black"),parent.CFrame,.5,.5,.5,1,1,1,0.1,3,parent)
end
end
if counter%5==0 then
if size==1 then
MagicBlock(BrickColor.new("Black"),parent.CFrame,.5,.5,.5,1,1,1,0.1,3,parent)
MagicWave(BrickColor.new("Cyan"),cf(Torso.Position)*cf(0,-1,0)*euler(0,math.random(-50,50),0),1,1,1,1,.5,1,0.05)
elseif size==2 then
MagicBlock(BrickColor.new("Black"),parent.CFrame,.5,.5,.5,1,1,1,0.1,3,parent)
MagicWave(BrickColor.new("Cyan"),cf(Torso.Position)*cf(0,-1,0)*euler(0,math.random(-50,50),0),1,1,1,1,.5,1,0.05)
elseif size==3 then
MagicBlock(BrickColor.new("Black"),parent.CFrame,.5,.5,.5,1,1,1,0.1,3,parent)
MagicWave(BrickColor.new("Cyan"),cf(Torso.Position)*cf(0,-1,0)*euler(0,math.random(-50,50),0),1,1,1,1,.5,1,0.05)
end
end
end
end

function MagniDamage(Part,dis,mind,maxd,force,knock)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=dis and c.Name~=Character.Name then 
Damagefunc(Part,hum.Parent.Torso,mind,maxd,force,knock,RootPart,.2,1)
end
end
end
end
end

function computeDirection(vec)
local lenSquared = vec.magnitude * vec.magnitude
local invSqrt = 1 / math.sqrt(lenSquared)
return Vector3.new(vec.x * invSqrt, vec.y * invSqrt, vec.z * invSqrt)
end

function attackone()
attack = true
local hitsounds={"199149137","199149186","199149221","199149235","199149269","199149297"}
local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,5,9,math.random(5,5),"Normal",RootPart,.2,1) end) 
local fx=Hitbox.Touched:connect(function(part)
	local human=part.Parent:findFirstChild("Humanoid")
	if human~=nil and bounce==false then
		bounce=true
		local rndm=math.random(1,#hitsounds)
		local r=rndm
		so("http://www.roblox.com/asset/?id="..hitsounds[r],part.Parent,1,1)
	end
end)
for i = 0,1,0.25 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-90)),1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(50)),1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(10), math.rad(100)),1)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)),1)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(120),math.rad(0)),1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),1)
end
so("http://www.roblox.com/asset/?id=712781677",handle,1,.9)
for i = 0,1,0.5 do
swait()
local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(80)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(-10),math.rad(-80)),0.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(120), math.rad(90)),0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)),0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(0)),0.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),0.5)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-25),math.rad(0),math.rad(0)),.5)
end
attack = false
bounce=false
scfr=nil
fx:disconnect()
con:disconnect()
end

function attacktwo()
attack=true
local hitsounds={"199149137","199149186","199149221","199149235","199149269","199149297"}
local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,4,9,math.random(5,5),"Normal",RootPart,.2,1) end)
local fx=Hitbox.Touched:connect(function(part)
	local human=part.Parent:findFirstChild("Humanoid")
	if human~=nil and bounce==false then
		bounce=true
		local rndm=math.random(1,#hitsounds)
		local r=rndm
		so("http://www.roblox.com/asset/?id="..hitsounds[r],part.Parent,1,1)
	end
end)
for i=0,1,.25 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(-10),math.rad(-90)),0.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(120), math.rad(90)),0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)),0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(40),math.rad(0)),0.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-140),math.rad(-10)),0.5)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-25),math.rad(0),math.rad(0)),.5)
end
so("http://www.roblox.com/asset/?id=712781677",handle,1,1)
for i = 0,1,0.5 do
swait()
local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-90)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(90)),0.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(10), math.rad(90)),0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)),0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(140),math.rad(0)),0.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-40),math.rad(-10)),0.5)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.5)
end
scfr=nil
attack=false
bounce=false
con:disconnect()
fx:disconnect()
end

function attackthree()
attack=true
local hitsounds={"199149137","199149186","199149221","199149235","199149269","199149297"}
local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,12,16,math.random(5,5),"Normal",RootPart,.2,1) end) 
local fx=Hitbox.Touched:connect(function(part)
	local human=part.Parent:findFirstChild("Humanoid")
	if human~=nil and bounce==false then
		bounce=true
		local rndm=math.random(1,#hitsounds)
		local r=rndm
		so("http://www.roblox.com/asset/?id="..hitsounds[r],part.Parent,1,1)
	end
end)
for i=0,1,.25 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-30)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(30)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(20)),0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(25), math.rad(0), math.rad(-30)),0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(105),math.rad(0)),0.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-75),math.rad(-10)),0.5)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.5)
end
so("http://www.roblox.com/asset/?id=712781677",handle,1,.9)
for i = 0,1,0.5 do
swait()
local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(50)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(-50)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)),0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)),0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(0)),0.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-100),math.rad(-10)),0.5)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-40),math.rad(0),math.rad(0)),.5)
end
attack=false
bounce=false
scfr=nil
con:disconnect()
fx:disconnect()
end

function attackfour()
attack = true
local hitsounds={"199149137","199149186","199149221","199149235","199149269","199149297"}
local con=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,4,9,math.random(20,30),"Normal",RootPart,.2,1) end)
local fx=Hitbox.Touched:connect(function(part)
	local human=part.Parent:findFirstChild("Humanoid")
	if human~=nil and bounce==false then
		bounce=true
		local rndm=math.random(1,#hitsounds)
		local r=rndm
		so("http://www.roblox.com/asset/?id="..hitsounds[r],part.Parent,1,1)
	end
end)
for i = 0,1,0.25 do
swait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(-5),math.rad(-60)),.5)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(60)),.5)
RW.C0=clerp(RW.C0,cf(1.5, 0.8, 0.2) * angles(math.rad(5), math.rad(-15), math.rad(112)), 0.5)
LW.C0=clerp(LW.C0,cf(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-20)), 0.5)
RH.C0=clerp(RH.C0,cf(1.1,-1,0)*angles(math.rad(-5),math.rad(120),math.rad(-8)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(5),math.rad(-60),math.rad(0)),.5)
handleweld.C0=clerp(handleweld.C0,cf(0,-.2,.5)*angles(math.rad(50),math.rad(-15),math.rad(0)),.5)
end
so("http://www.roblox.com/asset/?id=712781677",Hitbox,1,1.1)
local v=it("BodyVelocity",Torso)
v.maxForce=Vector3.new(4e+005,4e+005,4e+005)*1
v.velocity=RootPart.CFrame.lookVector*50
for i = 0,1,0.5 do
swait()
local blcf = Hitbox.CFrame*cf(0,0,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(5),math.rad(60)),.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-60)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(60), math.rad(100)), 0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-15)), 0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.5)
handleweld.C0=clerp(handleweld.C0,cf(0,-1,-1)*angles(math.rad(-100),math.rad(0),math.rad(0)),.5)
end
v.Parent=nil
scfr=nil
attack = false
bounce=false
con:disconnect()
fx:disconnect()
end

function Shockwave1(CFramez, Rangez)
local Shock = Instance.new("Part",game.Workspace)Shock.Transparency = 0.75 Shock.Size = Vector3.new(0.2,0.2,0.2) Shock.Anchored = true
Shock.CanCollide = false Shock.BrickColor = BrickColor.new("Medium stone grey") local SM = Instance.new("SpecialMesh",Shock)
SM.MeshId = "rbxassetid://20329976" Shock.CFrame = CFramez SM.Scale = Vector3.new(0,0,0)
Spawn(function ()
for i = 1,3 do
SM.Scale = SM.Scale + Vector3.new(2+Rangez/2,0.15+Rangez/12,2+Rangez/2)
Shock.CFrame = Shock.CFrame* CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(-80/Rangez),0)
wait()
end
for i = 1,math.huge do
if Shock.Transparency >= 1 then break end
Shock.Transparency = Shock.Transparency + 0.025 Shock.CFrame = Shock.CFrame* CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(-150/Rangez),0)
SM.Scale = SM.Scale + Vector3.new(0.5,0.05,0.5)
wait()
end
Shock:remove()
end)
end


function PortalStorm()
attack=true
local hitsounds={"199149137","199149186","199149221","199149235","199149269","199149297"}
so("http://www.roblox.com/asset/?id=562500427",handle,1,.9)
MagniDamage(Character.HumanoidRootPart,20,150,235,0,"Normal",Character.HumanoidRootPart)
local BV = Instance.new("BodyVelocity",Character.HumanoidRootPart)BV.Velocity = Vector3.new(0,1,0)game.Debris:AddItem(BV,0.1)
BV.maxForce = Vector3.new(0,math.huge,0)
for i2 = 1,10 do
Shockwave1(Character.HumanoidRootPart.CFrame*CFrame.new(0,-2.5,0)*CFrame.Angles(0,math.rad(-5),0), i2)
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-(i2*100))),1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(125)),1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(10), math.rad(100)),1)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)),1)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(120),math.rad(0)),1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),1)
swait()
end
attack = false
bounce=false
scfr=nil
attack = false
end

function Spin()
attack=true
local hitsounds={"199149137","199149186","199149221","199149235","199149269","199149297"}
so("http://www.roblox.com/asset/?id=562500427",handle,1,.9)
local BV = Instance.new("BodyVelocity",Character.HumanoidRootPart)BV.Velocity = Vector3.new(0,50,0)game.Debris:AddItem(BV,0.25)
BV.maxForce = Vector3.new(0,math.huge,0)
for i2 = 1,25 do
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(math.random(-100,100)/10),math.rad(math.random(-100,100)/10),math.rad(-(i2*50))),1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(125)),1)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(10), math.rad(100)),1)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)),1)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(120),math.rad(0)),1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),1)
MagniDamage(Character.HumanoidRootPart,10,8,16,0,"Normal",Character.HumanoidRootPart)
swait()
end
attack = false
bounce=false
scfr=nil
attack = false
end

function ProjectileStrike()
attack=true
for i=0,1,.25 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-30)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(30)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(20)),0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(25), math.rad(0), math.rad(-30)),0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(105),math.rad(0)),0.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-75),math.rad(-10)),0.5)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.5)
end
Wave=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Black","Wave",Vector3.new(0.650000036, 8, 0.200000003)) Wave.Parent = game.Workspace
local Atch3 = Instance.new("Attachment",Wave)Atch3.Position = Vector3.new(0,4,0)
local Atch4 = Instance.new("Attachment",Wave)Atch4.Position = Vector3.new(0,-4,0)
local Trail2 = Instance.new("Trail",Wave)Trail2.Attachment0 = Atch3 Trail2.Attachment1 = Atch4
Trail2.Texture = "rbxassetid://22636887" Trail2.Lifetime = 0.05 Trail2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
Trail2.Color = ColorSequence.new(ColorsArray) Trail2.LightEmission = 1
Wave.CFrame = Character.HumanoidRootPart.CFrame*CFrame.new(0,0,-1)*CFrame.Angles(0,0,math.rad(math.random(-20,20)))
local BV = Instance.new("BodyVelocity",Wave)BV.maxForce = Vector3.new(math.huge,math.huge,math.huge)BV.velocity = Character.HumanoidRootPart.CFrame.lookVector*250
so("http://www.roblox.com/asset/?id=506383970",handle,1,.9)
local con=Wave.Touched:connect(function(hit) Damagefunc(Wave,hit,24,46,0,"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(50)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(-50)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(math.random(-20,20)), math.rad(0), math.rad(-10)),0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)),0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(0)),0.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-100),math.rad(-10)),0.5)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-40),math.rad(0),math.rad(0)),.5)
end
attack=false
bounce=false
scfr=nil
con:disconnect()
end

function WorldBreaker()
attack=true
for i=0,1,.25 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-30)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(30)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(20)),0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(25), math.rad(0), math.rad(-30)),0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(105),math.rad(0)),0.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-75),math.rad(-10)),0.5)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.5)
end
Wave=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Black","Wave",Vector3.new(6, 100, 20)) Wave.Parent = game.Workspace
local Atch3 = Instance.new("Attachment",Wave)Atch3.Position = Vector3.new(0,50,-10)
local Atch4 = Instance.new("Attachment",Wave)Atch4.Position = Vector3.new(0,-50,-10)
local Trail2 = Instance.new("Trail",Wave)Trail2.Attachment0 = Atch3 Trail2.Attachment1 = Atch4 Trail2.MinLength = 4
Trail2.Texture = "rbxassetid://22636887" Trail2.Lifetime = 5 Trail2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
Trail2.Color = ColorSequence.new(ColorsArray) Trail2.LightEmission = 1
local Soond = SH:clone()Soond.SoundId = "rbxassetid://666736107" Soond.Volume = 3 Soond.Looped = true Soond.Parent = Wave Soond:Play()
Wave.CFrame = Character.HumanoidRootPart.CFrame*CFrame.Angles(0,0,math.rad(-90))*CFrame.new(0,0,-10)
game.Debris:AddItem(Wave,5)
local BV = Instance.new("BodyVelocity",Wave)BV.maxForce = Vector3.new(math.huge,math.huge,math.huge)BV.velocity = Character.HumanoidRootPart.CFrame.lookVector*25
Wave.Touched:connect(function(hit) 
if hit.Anchored == false and hit.Parent ~= Character and hit.Parent.Parent ~= Character then
hit:remove()
end
end) 
so("http://www.roblox.com/asset/?id=517249876",handle,1,.9)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(50)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(-50)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(math.random(-20,20)), math.rad(0), math.rad(-10)),0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)),0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(0)),0.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-100),math.rad(-10)),0.5)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-40),math.rad(0),math.rad(0)),.5)
end
attack=false
bounce=false
scfr=nil
end

function SuperProjectile()
attack=true
for i=0,1,.25 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-30)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(30)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(20)),0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(25), math.rad(0), math.rad(-30)),0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(105),math.rad(0)),0.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-75),math.rad(-10)),0.5)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.5)
end
for i2 = 1,3 do
for i = 1,12 do
Wave=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Black","Wave",Vector3.new(0.650000036, 10, 10*i2)) Wave.Parent = game.Workspace
game.Debris:AddItem(Wave,10)
local Atch3 = Instance.new("Attachment",Wave)Atch3.Position = Vector3.new(0,10,0)
local Atch4 = Instance.new("Attachment",Wave)Atch4.Position = Vector3.new(0,-10,0)
local Trail2 = Instance.new("Trail",Wave)Trail2.Attachment0 = Atch3 Trail2.Attachment1 = Atch4 Trail2.MinLength = 4
Trail2.Texture = "rbxassetid://22636887" Trail2.Lifetime = 0.5 Trail2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
Trail2.Color = ColorSequence.new(ColorsArray) Trail2.LightEmission = 1
local Soond = SH:clone()Soond.SoundId = "rbxassetid://666736107" Soond.Volume = 0.05 Soond.Looped = true Soond.Parent = Wave Soond:Play()
Wave.CFrame = Character.HumanoidRootPart.CFrame*CFrame.Angles(0,0,math.rad(30*i))
Wave.CFrame = Wave.CFrame*CFrame.new(-5*i2,0,4*i2)
local BV = Instance.new("BodyVelocity",Wave)BV.maxForce = Vector3.new(math.huge,math.huge,math.huge)BV.velocity = Character.HumanoidRootPart.CFrame.lookVector*300
Wave.Touched:connect(function(hit) 
if hit.Anchored == false and hit.Parent ~= Character and hit.Parent.Parent ~= Character then
hit:remove()
end
end) 
end
end
so("http://www.roblox.com/asset/?id=517249876",handle,1,.9)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(50)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(-50)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(math.random(-20,20)), math.rad(0), math.rad(-10)),0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)),0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(0)),0.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-100),math.rad(-10)),0.5)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-40),math.rad(0),math.rad(0)),.5)
end
attack=false
bounce=false
scfr=nil
end


function ShockSpin(Partz,SM)
Spawn(function()
for i = 1,math.huge do
if Partz.Transparency >= 1 then break end
Partz.Transparency = Partz.Transparency + 0.025 Partz.CFrame = Partz.CFrame* CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(-50),0)
SM.Scale = SM.Scale + Vector3.new(1,0.25,1)
wait()
end
Partz:remove()
end)
end

function Shockwave2(Partz)
local W = 0
Spawn(function()
for i = 1,math.huge do
W = W + 1
local Shock = Instance.new("Part",game.Workspace)Shock.Transparency = 0.75 Shock.Size = Vector3.new(0.2,0.2,0.2) Shock.Anchored = true
Shock.CanCollide = false Shock.BrickColor = BrickColor.new("Medium stone grey") local SM = Instance.new("SpecialMesh",Shock)
SM.MeshId = "rbxassetid://20329976" Shock.CFrame = Partz.CFrame*CFrame.Angles(math.rad(90),math.rad(W*10),0) SM.Scale = Vector3.new(0,0,0)
ShockSpin(Shock,SM)
wait()
end
end)
end

function SuperProjectile2()
attack=true
for i=0,1,.25 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-30)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(30)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(20)),0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(25), math.rad(0), math.rad(-30)),0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(105),math.rad(0)),0.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-75),math.rad(-10)),0.5)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.5)
end
local Wave2 = Instance.new("Part",game.Workspace)Wave2.Size = Vector3.new(20,20,20)Wave2.CanCollide = false Wave2.Anchored = false Wave2.Transparency = 1
local Soond = SH:clone()Soond.SoundId = "rbxassetid://666736107" Soond.Volume = 0.05 Soond.Looped = true Soond.Parent = Wave2 Soond:Play() Wave2.CFrame = Character.HumanoidRootPart.CFrame
local BV = Instance.new("BodyVelocity",Wave2)BV.maxForce = Vector3.new(math.huge,math.huge,math.huge)BV.velocity = Character.HumanoidRootPart.CFrame.lookVector*150
Wave2.Touched:connect(function(hit) Damagefunc(Wave2,hit,24,46,0,"Normal",RootPart,.2,1) end) 
Shockwave2(Wave2) game.Debris:addItem(Wave2,5)
so("http://www.roblox.com/asset/?id=517249876",handle,1,.9)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(50)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(-50)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(math.random(-20,20)), math.rad(0), math.rad(-10)),0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)),0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(0)),0.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-100),math.rad(-10)),0.5)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-40),math.rad(0),math.rad(0)),.5)
end
attack=false
bounce=false
scfr=nil
end

function Warp()
for i=0,1,.25 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-30)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(30)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(20)),0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(25), math.rad(0), math.rad(-30)),0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(105),math.rad(0)),0.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-75),math.rad(-10)),0.5)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.5)
end
local WarpS = m:clone() WarpS:FindFirstChild("MagicWeld"):remove() WarpS.Name = "WarpSword"
WarpS.Parent = Character local Partzs = Instance.new("Part",WarpS)Partzs.Size = Vector3.new(0.2,0.2,0.2)Partzs.CanCollide = false Partzs.Anchored = false Partzs.Transparency = 1
local WeldS = Instance.new("Weld",WarpS.Hitbox)WeldS.Part0 = WarpS.Hitbox WeldS.Part1 = Partzs 
Partzs.CFrame = CFrame.new(Character.HumanoidRootPart.CFrame:toWorldSpace(CFrame.new(0,0,0)).p,mouse.hit.p)
local BV = Instance.new("BodyVelocity",Partzs)BV.maxForce = Vector3.new(math.huge,math.huge,math.huge)BV.velocity = Partzs.CFrame.lookVector*750
Partzs.CFrame = Partzs.CFrame*CFrame.Angles(math.rad(90),math.rad(90),0)
local Soond = SH:clone()Soond.SoundId = "rbxassetid://181004943" Soond.Volume = 10 Soond.Parent = Partzs Soond.PlaybackSpeed = 3 Soond:Play()
local SE = Instance.new("PitchShiftSoundEffect",Soond)SE.Octave = 0.5
Trail.Enabled = false
for i, v in pairs(m:children()) do
if v.ClassName == "Part" then
if v.Transparency ~= 1 then
v.Transparency = 0.99
end
end
end
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(50)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(-50)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(math.random(-20,20)), math.rad(0), math.rad(-10)),0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)),0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(0)),0.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-100),math.rad(-10)),0.5)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-40),math.rad(0),math.rad(0)),.5)
end
wait(0.05)
local Soond2 = SH:clone()Soond2.SoundId = "rbxassetid://181004957" Soond2.Volume = 5 Soond2.Parent = Character.HumanoidRootPart Soond2:Play()
Character.HumanoidRootPart.CFrame = Partzs.CFrame
Humanoid.Jump = true
WarpS:remove()
Trail.Enabled = true
for i, v in pairs(m:children()) do
if v.ClassName == "Part" then
if v.Transparency ~= 1 then
v.Transparency = 0
end
end
end
end

function NukeShockwaves(Size, CFramez)
local Shock = Instance.new("Part",game.Workspace)Shock.Transparency = 0.5 Shock.Size = Vector3.new(0.2,0.2,0.2) Shock.Anchored = true
Shock.CanCollide = false Shock.BrickColor = BrickColor.new("Medium stone grey") local SM = Instance.new("SpecialMesh",Shock)
SM.MeshId = "rbxassetid://20329976" SM.Scale = Vector3.new(Size,5,Size) Shock.CFrame = CFramez*CFrame.new(0,1,0)*CFrame.Angles(0,math.rad(math.random(-360,360)),0)
Spawn(function()
for i = 1,math.huge do
if Shock.Transparency >= 1 then break end
Shock.Transparency = Shock.Transparency + 0.025
wait()
end
end)
end

function NukeBlade()
for i=0,1,.25 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-30)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(30)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(170), math.rad(0), math.rad(20)),0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(25), math.rad(0), math.rad(-30)),0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(105),math.rad(0)),0.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-75),math.rad(-10)),0.5)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.5)
end
local WarpS = m:clone() WarpS:FindFirstChild("MagicWeld"):remove() WarpS.Name = "WarpSword"
WarpS.Parent = Character local Partzs = Instance.new("Part",WarpS)Partzs.Size = Vector3.new(0.2,0.2,0.2)Partzs.CanCollide = false Partzs.Anchored = false Partzs.Transparency = 1
local WeldS = Instance.new("Weld",WarpS.Hitbox)WeldS.Part0 = WarpS.Hitbox WeldS.Part1 = Partzs 
Partzs.CFrame = CFrame.new(Character.HumanoidRootPart.CFrame:toWorldSpace(CFrame.new(0,0,0)).p,mouse.hit.p)
local BV = Instance.new("BodyVelocity",Partzs)BV.maxForce = Vector3.new(math.huge,math.huge,math.huge)BV.velocity = Partzs.CFrame.lookVector*750
Partzs.CFrame = Partzs.CFrame*CFrame.Angles(math.rad(90),math.rad(90),0)
local Soond = SH:clone()Soond.SoundId = "rbxassetid://181004943" Soond.Volume = 10 Soond.Parent = Partzs Soond.PlaybackSpeed = 2 Soond:Play()
local SE = Instance.new("PitchShiftSoundEffect",Soond)SE.Octave = 0.5
Trail.Enabled = false
for i, v in pairs(m:children()) do
if v.ClassName == "Part" then
if v.Transparency ~= 1 then
v.Transparency = 0.99
end
end
end
wait(0.02)
local Hit = false
Partzs.Touched:connect(function(Hit)
if Hit == true then return end
Hit = true
Partzs.Anchored = true
local Shock = Instance.new("Part",game.Workspace)Shock.Transparency = 0 Shock.Size = Vector3.new(1,1,1) Shock.Anchored = true
Shock.CanCollide = false Shock.BrickColor = BrickColor.new("Cyan") Shock.Material = "Neon" local SM = Instance.new("SpecialMesh",Shock)
Shock.CFrame = CFrame.new(Partzs.Position) SM.MeshType = "Sphere"
local Pos = Shock.Position
for i = 1,3 do
local Sound = SH:clone()Sound.SoundId = "rbxassetid://258057783" Sound.Volume = 10 Sound.Parent = Shock Sound.PlaybackSpeed = 0.4 Sound:Play()
end
for i = 1,200 do
SM.Scale = SM.Scale + Vector3.new(i*0.025,i*0.025,i*0.025)
NukeShockwaves(i*1.5,CFrame.new(Shock.Position))
MagniDamage(Shock,i*1,10,30,0,"Normal",Character.HumanoidRootPart)
wait()
end
for i = 1,30 do
Shock.Transparency = Shock.Transparency + 1/30
SM.Scale = SM.Scale + Vector3.new(i*0.0,i*0.025,i*0.025)
wait()
end
end)
game.Debris:AddItem(WarpS,10)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(50)),0.5)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(-50)),.5)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(math.random(-20,20)), math.rad(0), math.rad(-10)),0.5)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)),0.5)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(0)),0.5)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-100),math.rad(-10)),0.5)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-40),math.rad(0),math.rad(0)),.5)
end
wait(0.05)
Trail.Enabled = true
for i, v in pairs(m:children()) do
if v.ClassName == "Part" then
if v.Transparency ~= 1 then
v.Transparency = 0
end
end
end
end

attacktype=1
mouse.Button1Down:connect(function()
if attacktype==1 and attack==false then
attacktype=2
attackone()
elseif attacktype==2 and attack==false then
attacktype=3
attacktwo()
elseif attacktype==3 and attack==false then
attacktype=4
attackthree()
elseif attacktype==4 and attack==false then
attacktype=1
attackfour()
end
end)

mouse.KeyDown:connect(function(k)
k=k:lower()
if attack == false and k == 'e' then
Spin()
end
if attack == false and k == 'q' then
ProjectileStrike()
end
if attack == false and k == 'z' then
SuperProjectile()
end
if attack == false and k == 'x' then
SuperProjectile2()
end
if attack == false and k == 'c' then
NukeBlade()
end
if attack == false and k == 'v' then
Warp()
end
if attack == false and k == 'f'then
WorldBreaker()
end
if attack == false and k == 'r'then
PortalStorm()
end
end)


local sine = 0
local change = 1
local val = 0

while true do
swait()
for i, v in pairs(m:children()) do
if v.ClassName == "Part" then
v.Anchored = false
v.CanCollide = false
end
end
for i,v in pairs (Character:children()) do
if v.ClassName == "Part" then
v.Anchored = false
end
if v.ClassName == "Accessory" then
for i,v2 in pairs (v:children()) do
if v2.ClassName == "Part" then
v2.Anchored = false
end
end
end
end
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
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(15)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-15)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(-30),math.rad(90),math.rad(20))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-30),math.rad(-90),math.rad(-20))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(13),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(20))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-20))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-15),math.rad(0),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-2),math.rad(0),math.rad(15)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(2),math.rad(0),math.rad(-15)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(15), math.rad(0), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(-2),math.rad(85),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-4),math.rad(-95),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,0)*angles(math.rad(-10),math.rad(-2),math.rad(0)),.2)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(-20)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(-5),math.rad(25)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(-25), math.rad(5)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30)*math.cos(sine/10), math.rad(5), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1.1,-.9,0)*angles(math.rad(0),math.rad(110),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1.1,-.9,0)*angles(math.rad(0),math.rad(-70),math.rad(0)),.3)
handleweld.C0=clerp(handleweld.C0,cf(0,0,.3)*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
end
end
end
if #Effects>0 then
for e=1,#Effects do
if Effects[e]~=nil then
local Thing=Effects[e]
if Thing~=nil then
local Part=Thing[1]
local Mode=Thing[2]
local Delay=Thing[3]
local IncX=Thing[4]
local IncY=Thing[5]
local IncZ=Thing[6]
if Thing[1].Transparency<=1 then
if Thing[2]=="Block1" then
Thing[1].CFrame=Thing[1].CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Cylinder" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Blood" then
Mesh=Thing[7]
Thing[1].CFrame=Thing[1].CFrame*cf(0,.5,0)
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Elec" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[7],Thing[8],Thing[9])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Disappear" then
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
end
else
Part.Parent=nil
table.remove(Effects,e)
end
end
end
end
end
end

--[[game:GetService("RunService").RenderStepped:connect(function()
for i,v in pairs (ShockModel:children()) do
if v.Transparency == 1 then break end
v.Transparency = v.Transparency + 0.05 v.CFrame = CFrame.new(0,math.rad(2),0)
local SM = v:findFirstChild("Mesh")
SM.Scale = SM.Scale + Vector3.new(1,0,1)
end
end)]]