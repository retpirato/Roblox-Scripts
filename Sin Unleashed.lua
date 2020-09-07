--//====================================================\\--
--||			   CREATED BY SHACKLUSTER
--\\====================================================//--



wait(0.2)



Player = game:GetService("Players").LocalPlayer
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = Player.Character
Humanoid = Character.Humanoid
Mouse = Player:GetMouse()
RootPart = Character["HumanoidRootPart"]
Torso = Character["Torso"]
Head = Character["Head"]
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart["RootJoint"]
Neck = Torso["Neck"]
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]
local sick = Instance.new("Sound",Character)
sick.SoundId = "rbxassetid://733414830"
sick.Looped = true
sick.Pitch = 1
sick.Volume = 1
sick:Play()
Humanoid.HipHeight = 15
Humanoid.DisplayDistanceType = "None"
local LightningBolts = {}
Humanoid.Name = "Sin"

IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor

function CreateMesh(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
	local NEWMESH = IT(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id="..MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id="..TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or VT(0, 0, 0)
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end

function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHR)
	local NEWPART = IT("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHR == false then
		NEWPART.Anchored = false
	end
	NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end


--//=================================\\
--||		  CUSTOMIZATION
--\\=================================//

Class_Name = "Sin Unleashed"
Weapon_Name = "Add-ons"

Custom_Colors = {
	Custom_Color_1 = BRICKC("Institutional white"); --1st color for the weapon.
	Custom_Color_2 = BRICKC("Institutional white"); --2nd color for the weapon.

	Custom_Color_3 = BRICKC("Institutional white"); --Color for the abilities.
	Custom_Color_4 = BRICKC("Institutional white"); --Color for the secondary bar.
	Custom_Color_5 = BRICKC("Institutional white"); --Color for the mana bar.
	Custom_Color_6 = BRICKC("Institutional white"); --Color for the health bar.
	Custom_Color_7 = BRICKC("Institutional white"); --Color for the stun bar.

	Custom_Color_8 = BRICKC("Institutional white"); --Background for the mana bar.
	Custom_Color_9 = BRICKC("Institutional white"); --Background for the secondary mana bar.
	Custom_Color_10 = BRICKC("Institutional white"); --Background for the stun bar.
	Custom_Color_11 = BRICKC("Institutional white"); --Background for the health bar.
	Custom_Color_12 = BRICKC("Institutional white"); --Background for the abilities.
}


Player_Size = 1 --Size of the player.
Animation_Speed = 2
Animation_Speed2 = 1
Frame_Speed = 1 / 60 -- (1 / 30) OR (1 / 60)

local Speed = 28
Humanoid.JumpPower = 80
local Effects2 = {}

--//=================================\\
--|| 	  END OF CUSTOMIZATION
--\\=================================//

	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end

function createaccessory(attachmentpart,mesh,texture,scale,offset,color)
local acs = Instance.new("Part")
acs.CanCollide = false
acs.Anchored = false
acs.Size = Vector3.new(0,0,0)
acs.CFrame = attachmentpart.CFrame
acs.Parent = Character
acs.BrickColor = color
    local meshs = Instance.new("SpecialMesh")
    meshs.MeshId = mesh
    meshs.TextureId = texture
    meshs.Parent = acs
    meshs.Scale = scale
    meshs.Offset = offset
weldBetween(attachmentpart,acs)
end

function createbodypart(TYPE,COLOR,PART,OFFSET,SIZE)
if TYPE == "Gem" then
	local acs = CreatePart(3, PART, "Plastic", 0, 0, COLOR, "Part", VT(0,0,0))
	acs.Anchored = false
    acs.CanCollide = false
	acs.CFrame = PART.CFrame
	local acs2 = CreateMesh("SpecialMesh", acs, "FileMesh", "9756362", "", SIZE, OFFSET)
weldBetween(PART,acs)
elseif TYPE == "Skull" then
	local acs = CreatePart(3, PART, "Plastic", 0, 0, COLOR, "Part", VT(0,0,0))
	acs.Anchored = false
    acs.CanCollide = false
	acs.CFrame = PART.CFrame
	local acs2 = CreateMesh("SpecialMesh", acs, "FileMesh", "4770583", "", SIZE, OFFSET)
weldBetween(PART,acs)
elseif TYPE == "Eye" then
	local acs = CreatePart(3, PART, "Neon", 0, 0, COLOR, "Part", VT(0,0,0))
	acs.Anchored = false
    acs.CanCollide = false
	acs.CFrame = PART.CFrame
	local acs2 = CreateMesh("SpecialMesh", acs, "Sphere", "", "", SIZE, OFFSET)
weldBetween(PART,acs)
end
end

--//=================================\\
--|| 	      USEFUL VALUES
--\\=================================//

local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local CO1 = 0
local CO2 = 0
local CO3 = 0
local CO4 = 0
local CHANGEDEFENSE = 0
local CHANGEDAMAGE = 0
local CHANGEMOVEMENT = 0
local ANIM = "Idle"
local ATTACK = false
local EQUIPPED = false
local HOLD = false
local COMBO = 1
local LASTPOINT = nil
local BLCF = nil
local SCFR = nil
local STAGGERHITANIM = false
local STAGGERANIM = false
local STUNANIM = false
local CRITCHANCENUMBER = 0
local IDLENUMBER = 0
local DONUMBER = 0
local HANDIDLE = false
local Rooted = false
local KEYHOLD = false
local SINE = 0
local CHANGE = 2 / Animation_Speed
local WALKINGANIM = false
local WALK = 0
local DEAD = false
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
--ROBLOXIDLEANIMATION.Parent = Humanoid
local WEAPONGUI = IT("ScreenGui", PlayerGui)
WEAPONGUI.Name = "Weapon GUI"
local Weapon = IT("Model")
Weapon.Name = Weapon_Name
local Effects = IT("Folder", Weapon)
Effects.Name = "Effects"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character.Animate
local HITPLAYERSOUNDS = {--[["199149137", "199149186", "199149221", "199149235", "199149269", "199149297"--]]"263032172", "263032182", "263032200", "263032221", "263032252", "263033191"}
local HITARMORSOUNDS = {"199149321", "199149338", "199149367", "199149409", "199149452"}
local HITWEAPONSOUNDS = {"199148971", "199149025", "199149072", "199149109", "199149119"}
local HITBLOCKSOUNDS = {"199148933", "199148947"}
local UNANCHOR = true
local MAGICPARTICLE = "655109389"

local SKILLTEXTCOLOR = C3(0.7,0,0)

--//=================================\\
--\\=================================//


--//=================================\\
--|| SAZERENOS' ARTIFICIAL HEARTBEAT
--\\=================================//

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "ArtificialHB"

script:WaitForChild("ArtificialHB")

frame = Frame_Speed
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.ArtificialHB:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.ArtificialHB:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.ArtificialHB:Fire()
			end
		lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)

--//=================================\\
--\\=================================//





--//=================================\\
--|| 	      SOME FUNCTIONS
--\\=================================//

function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end

function PositiveAngle(NUMBER)
	if NUMBER >= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function NegativeAngle(NUMBER)
	if NUMBER <= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function Swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		ArtificialHB.Event:wait()
	else
		for i = 1, NUMBER do
			ArtificialHB.Event:wait()
		end
	end
end

function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then 
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
	else
		local i = 0
		if m11 > m00 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
			i = 2
		end
		if i == 0 then
			local s = math.sqrt(m00 - m11 - m22 + 1)
			local recip = 0.5 / s
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
		end
	end
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z
	local wx, wy, wz = w * xs, w * ys, w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end
 
function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp;
	if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
			local theta = ACOS(cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((1 - t) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	else
		if (1 + cosTheta) > 0.0001 then
			local theta = ACOS(-cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((t - 1) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = t - 1
			finishInterp = t
		end
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end

function Clerp(a, b, t)
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end

function CreateFrame(PARENT, TRANSPARENCY, BORDERSIZEPIXEL, POSITION, SIZE, COLOR, BORDERCOLOR, NAME)
	local frame = IT("Frame")
	frame.BackgroundTransparency = TRANSPARENCY
	frame.BorderSizePixel = BORDERSIZEPIXEL
	frame.Position = POSITION
	frame.Size = SIZE
	frame.BackgroundColor3 = COLOR
	frame.BorderColor3 = BORDERCOLOR
	frame.Name = NAME
	frame.Parent = PARENT
	return frame
end

function CreateLabel(PARENT, TEXT, TEXTCOLOR, TEXTFONTSIZE, TEXTFONT, TRANSPARENCY, BORDERSIZEPIXEL, STROKETRANSPARENCY, NAME)
	local label = IT("TextLabel")
	label.BackgroundTransparency = 1
	label.Size = UD2(1, 0, 1, 0)
	label.Position = UD2(0, 0, 0, 0)
	label.TextColor3 = TEXTCOLOR
	label.TextStrokeTransparency = STROKETRANSPARENCY
	label.TextTransparency = TRANSPARENCY
	label.FontSize = TEXTFONTSIZE
	label.Font = TEXTFONT
	label.BorderSizePixel = BORDERSIZEPIXEL
	label.TextScaled = false
	label.Text = TEXT
	label.Name = NAME
	label.Parent = PARENT
	return label
end

function NoOutlines(PART)
	PART.TopSurface, PART.BottomSurface, PART.LeftSurface, PART.RightSurface, PART.FrontSurface, PART.BackSurface = 10, 10, 10, 10, 10, 10
end


function CreateWeldOrSnapOrMotor(TYPE, PARENT, PART0, PART1, C0, C1)
	local NEWWELD = IT(TYPE)
	NEWWELD.Part0 = PART0
	NEWWELD.Part1 = PART1
	NEWWELD.C0 = C0
	NEWWELD.C1 = C1
	NEWWELD.Parent = PARENT
	return NEWWELD
end

local sound = IT("Sound")

function CreateSound(ID, PARENT, VOLUME, PITCH)
	local NEWSOUND = nil
	coroutine.resume(coroutine.create(function()
		NEWSOUND = sound:Clone()
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id="..ID
		Swait()
		NEWSOUND:play()
		game:GetService("Debris"):AddItem(NEWSOUND, 10)
	end))
	return NEWSOUND
end

function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CF(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

function CreateWave(inair,size,doesrotate,rotatedirection,waitt,cframe,offset,color)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(color), "Effect", VT(0,0,0))
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "FileMesh"
	mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
	mesh.Scale = VT(size,size,size)
	mesh.Offset = VT(0,0,-size/8)
	wave.CFrame = cframe
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, waitt do
			Swait()
			mesh.Scale = mesh.Scale + VT(size/5,0,size/5)
			mesh.Offset = VT(0,0,-(mesh.Scale.X/8))
			if doesrotate == true then
				wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0, rotatedirection, 0)
			end
			wave.Transparency = wave.Transparency + (0.5/waitt)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function CreateSwirl(inair,size,doesrotate,rotatedirection,waitt,cframe,offset,color)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(color), "Effect", VT(0,0,0))
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "FileMesh"
	mesh.MeshId = "http://www.roblox.com/asset/?id=1051557"
	mesh.Scale = VT(size,size,size)
	wave.CFrame = cframe
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, waitt do
			Swait()
			mesh.Scale = mesh.Scale + VT(size/5,size/5,size/5)
			if doesrotate == true then
				wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0, rotatedirection, 0)
			end
			wave.Transparency = wave.Transparency + (0.5/waitt)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function CreateTornado(inair,size,doesrotate,rotatedirection,waitt,part,offset,color)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(color), "Effect", VT(0,0,0))
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "FileMesh"
	mesh.MeshId = "http://www.roblox.com/asset/?id=102638417"
	mesh.Scale = VT(size,size,size)
	wave.CFrame = CF(part.Position) * CF(0,offset,0) * ANGLES(RAD(inair),RAD(0),RAD(0))
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, waitt do
			Swait()
			mesh.Scale = mesh.Scale + VT(size/5,0,size/5)
			if doesrotate == true then
				wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0, rotatedirection, 0)
			end
			wave.Transparency = wave.Transparency + (0.5/waitt)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function CreateRing(inair,size,doesrotate,rotatedirection,waitt,cframe,offset,spin1,spin2,color)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(color), "Effect", VT(0,0,0))
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "FileMesh"
	mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
	mesh.Scale = VT(size,size,size)
	mesh.Offset = VT(0,0,0)
	wave.CFrame = cframe
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, waitt do
			Swait()
			mesh.Scale = mesh.Scale + VT(size/5,size/5,size/5)
			if doesrotate == true then
				wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(spin2, rotatedirection, spin1)
			end
			wave.Transparency = wave.Transparency + (0.5/waitt)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function MagicSphere(size,waitt,part,offset,color)
	local wave = CreatePart(3, Effects, "Neon", 0, 0, BRICKC(color), "Effect", VT(1,1,1))
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "Sphere"
	mesh.Scale = VT(size,size,size)
	mesh.Offset = VT(0,0,0)
	wave.CFrame = CF(part) * CF(0,offset,0) * ANGLES(RAD(0),RAD(0),RAD(0))
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, waitt do
			Swait()
			mesh.Scale = mesh.Scale + VT(size/5,size/5,size/5)
			wave.Transparency = wave.Transparency + (1/waitt)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

local EyeSizes={
	NumberSequenceKeypoint.new(0,1,0),
	NumberSequenceKeypoint.new(1,0.2,0)
}
local EyeTrans={
	NumberSequenceKeypoint.new(0,0.8,0),
	NumberSequenceKeypoint.new(1,1,0)
}
local PE=Instance.new("ParticleEmitter")
PE.LightEmission=0
PE.Size=NumberSequence.new(EyeSizes)
PE.Transparency=NumberSequence.new(EyeTrans)
PE.Lifetime=NumberRange.new(0.35,0.35,0.35)
PE.Rotation=NumberRange.new(0,360)
PE.Rate=15
PE.Acceleration = Vector3.new(0,75,0)
PE.Drag = 5
PE.Enabled = false
PE.Speed = NumberRange.new(0,0,0)
PE.Texture="http://www.roblox.com/asset/?id=1179557490"
PE.ZOffset = 0
PE.Name = "Particles"

function CreateParticles(art,text,accel,drag,rate,type,isenabledbydefault)
	local particle = PE:Clone()
	particle.Parent = art
	particle.Acceleration = accel
	PE.Rate = rate
	if type == "Fire" then
		local EyeSizes={
			NumberSequenceKeypoint.new(0,1,0.3),
			NumberSequenceKeypoint.new(1,0.2,0.2)
		}
		PE.Size = NumberSequence.new(EyeSizes)
	elseif type == "Smoke" then
		local EyeSizes={
			NumberSequenceKeypoint.new(0,1,0),
			NumberSequenceKeypoint.new(1,5,0.5)
		}
		PE.Size = NumberSequence.new(EyeSizes)
	elseif type == "Solid" then
		local EyeSizes={
			NumberSequenceKeypoint.new(0,1,0),
			NumberSequenceKeypoint.new(1,1,0)
		}
		PE.Size = NumberSequence.new(EyeSizes)
	end
	PE.Drag = drag
	particle.Texture = "http://www.roblox.com/asset/?id="..text
	particle.Enabled = isenabledbydefault
return particle
end

--//=================================\\
--||         BIG ZAPS
--\\=================================//

BaseLightning = IT("Part")
BaseLightning.Anchored = true
BaseLightning.CanCollide = false
BaseLightning.Material = "Neon"

function CheckTableForString(Table, String)
	for i, v in pairs(Table) do
		if string.find(string.lower(String), string.lower(v)) then
			return true
		end
	end
	return false
end

function CheckIntangible(Hit)
	local ProjectileNames = {"Water", "Arrow", "Projectile", "Effect", "Rail", "Lightning", "Bullet"}
	if Hit and Hit.Parent then
		if ((not Hit.CanCollide or CheckTableForString(ProjectileNames, Hit.Name)) and not Hit.Parent:FindFirstChild("Humanoid")) then
			return true
		end
	end
	return false
end

Debris = game:GetService("Debris")

function CastZapRay(StartPos, Vec, Length, Ignore, DelayIfHit)
	local Ignore = ((type(Ignore) == "table" and Ignore) or {Ignore})
	local RayHit, RayPos, RayNormal = game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(StartPos, Vec * Length), Ignore)
	if RayHit and CheckIntangible(RayHit) then
		if DelayIfHit then
			wait()
		end
		RayHit, RayPos, RayNormal = CastZapRay((RayPos + (Vec * 0.01)), Vec, (Length - ((StartPos - RayPos).magnitude)), Ignore, DelayIfHit)
	end
	return RayHit, RayPos, RayNormal
end

--Zap({StartPosition = Position, TargetPosition = Position, Character = Character, Color = "Color", Individual = true})
function Zap(Table)
	local StartPos, TargetPos, Character, Color = Table.StartPosition, Table.TargetPosition, Table.Character, Table.Color
	local Duration = (Table.Duration or 2)
	local FadeRate = (Table.FadeRate or 0.05)
	local Offset = (Table.Offset or 2)
	local Individualize = (Table.Individualize or false)
	local MaxRange = (Table.MaxRange or 200)
	local SegmentLength = (Table.SegmentLength or 5)
	local TimeToFade = (Table.TimeToFade or 0.5)
	local Ignore = (Table.Ignore or {})
	local SIZE = (Table.Size or 0.3)
	if not StartPos or not TargetPos or not Character then
		return
	end
	local LightningModel = IT("Folder",Effects)
	LightningModel.Name = "ZAPP"
	for i, v in pairs({Character, LightningModel}) do
		table.insert(Ignore, v)
	end
	local LastPos = StartPos
	local Direction = CFrame.new(StartPos, TargetPos).lookVector
	local RayHit, RayPos, RayNormal = CastZapRay(StartPos, Direction, MaxRange, Ignore, false)
	local RayLength = (StartPos - RayPos).Magnitude
	local Struck = false
	local TotalSegments = math.ceil(RayLength / SegmentLength)
	Direction = CFrame.new(StartPos, RayPos).lookVector
	local LightningBolt = IT("Model",Effects)
	LightningBolt.Name = "Lightning"
	if not Individualize then
		table.insert(LightningBolts, LightningBolt)
	end
	LastBolt = LightningBolt
	Debris:AddItem(LightningBolt, Duration)
	LightningBolt.Parent = LightningModel
	for i = 1, TotalSegments do
		if not Struck then
			local Entropy = Vector3.new(((math.random() * Offset*2.5) - Offset), ((math.random() * Offset*2.5) - Offset), ((math.random() * Offset*2.5) - Offset))
			local NewPos = (StartPos + (Direction * (RayLength * (i / TotalSegments))) + Entropy)
			local SegmentVec = (NewPos - LastPos)
			local RayHit, RayPos, RayNormal = CastZapRay(LastPos, SegmentVec.Unit, SegmentVec.Magnitude, {Character, LightningModel}, false) 
			local RayVec = (LastPos - RayPos)
			local LightningPart = BaseLightning:Clone()
			LightningPart.BrickColor = BrickColor.new(Color)
			LightningPart.Size = Vector3.new(SIZE, SIZE, RayVec.Magnitude)
			LightningPart.CFrame = (CFrame.new(LastPos, RayPos) * CFrame.new(0, 0, -(RayVec.Magnitude / 2)))
			table.insert(Effects2,{LightningPart,"Disappear",0.025,1,1,1,2})
			--Make circular
			local CylinderMesh = IT("CylinderMesh",LightningPart)
			local OrigCF = LightningPart.CFrame
			LightningPart.Size = Vector3.new(LightningPart.Size.X, LightningPart.Size.Z, LightningPart.Size.Y)
			LightningPart.CFrame = (OrigCF * CFrame.Angles((math.pi / 2), 0, 0))
			LightningPart.Parent = LightningBolt
			LastPos = NewPos
			Spawn(function()
				local FadeRate = 0.05
				local OrigTransparency = LightningPart.Transparency
				for i = 1, (TimeToFade / FadeRate) do
					wait(FadeRate)
					LightningPart.Transparency = (OrigTransparency + (i / (TimeToFade / FadeRate)))
				end
			end)
		end
	end
	return {RayHit = RayHit, RayPos = RayPos, RayNormal = RayNormal, LightningModel = LightningModel}
end

--//=================================\\
--||	     WEAPON CREATION
--\\=================================//

Weapon.Parent = Character

Humanoid.Died:connect(function()
	ATTACK = true
end)

print(Class_Name.." loaded.")

local SKILL1FRAME = CreateFrame(WEAPONGUI, 0.5, 2, UD2(0.23, 0, 0.80, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 1 Frame")
local SKILL2FRAME = CreateFrame(WEAPONGUI, 0.5, 2, UD2(0.50, 0, 0.80, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 2 Frame")
local SKILL3FRAME = CreateFrame(WEAPONGUI, 0.5, 2, UD2(0.23, 0, 0.93, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 3 Frame")
local SKILL4FRAME = CreateFrame(WEAPONGUI, 0.5, 2, UD2(0.50, 0, 0.93, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 4 Frame")
local SKILL5FRAME = CreateFrame(WEAPONGUI, 0.5, 2, UD2(0.365, 0, 0.7, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 5 Frame")

local SKILL1TEXT = CreateLabel(SKILL1FRAME, "[Z] Claw force", SKILLTEXTCOLOR, 10, "Antique", 0, 2, 1, "Text 1")
local SKILL2TEXT = CreateLabel(SKILL2FRAME, "[B] Hell leash", SKILLTEXTCOLOR, 10, "Antique", 0, 2, 1, "Text 2")
local SKILL3TEXT = CreateLabel(SKILL3FRAME, "[C] Sinner wave", SKILLTEXTCOLOR, 10, "Antique", 0, 2, 1, "Text 3")
local SKILL4TEXT = CreateLabel(SKILL4FRAME, "[V] From the depths", SKILLTEXTCOLOR, 10, "Antique", 0, 2, 1, "Text 4")
local SKILL5TEXT = CreateLabel(SKILL5FRAME, "[X] The end", SKILLTEXTCOLOR, 10, "Antique", 0, 2, 1, "Text 5")

local naeeym2 = Instance.new("BillboardGui",Character)
naeeym2.AlwaysOnTop = true
naeeym2.Size = UDim2.new(5,35,2,35)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = Character.Head
naeeym2.Name = "Name"
naeeym2.PlayerToHideFrom = Player
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.TextScaled = true
tecks2.BorderSizePixel = 0
tecks2.Text = "Sin unleashed"
tecks2.Font = "Antique"
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0.9
tecks2.TextColor3 = Color3.new(0,0,0)
tecks2.TextStrokeColor3 = Color3.new(1,0,0)
tecks2.Size = UDim2.new(1,0,0.5,0)
tecks2.Parent = naeeym2

local Shield = IT("Part",Weapon)
Shield.Name = "Barrier"
Shield.Shape = "Ball"
Shield.Material = "Glass"
Shield.Color = C3(1,0,0)
Shield.Transparency = 0.5
Shield.Size = VT(0.5,0.5,0.5)
local mesh = IT("SpecialMesh",Shield)
mesh.MeshType = "Sphere"
mesh.Scale = VT(13,13,13)
Shield.CFrame = RootPart.CFrame
weldBetween(RootPart,Shield)

createbodypart("Eye","Really red",Head,VT(0.20, 0, -0.55),VT(2,6,2))
createbodypart("Eye","Really red",Head,VT(-0.20, 0, -0.55),VT(2,6,2))
createbodypart("Eye","Really red",Head,VT(0, 0, -0.6),VT(2,8,2))

local gear = CreatePart(3, Weapon, "Neon", 0, 0, "Really black", "Gear", VT(0.35*Player_Size,0.35*Player_Size,0.35*Player_Size),false)
local mesh = Instance.new("SpecialMesh",gear)
mesh.MeshType = "FileMesh"
mesh.MeshId = "rbxassetid://156292343"
mesh.Scale = VT(8,8,8)
local weld = CreateWeldOrSnapOrMotor("Weld", RootPart, gear, RootPart, CF(0 * Player_Size, 0 * Player_Size, 4 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)), CF(0, 0, 0))

local gear = CreatePart(3, Weapon, "Neon", 0, 0, "Really black", "Gear", VT(0.35*Player_Size,0.35*Player_Size,0.35*Player_Size),false)
local mesh = Instance.new("SpecialMesh",gear)
mesh.MeshType = "FileMesh"
mesh.MeshId = "rbxassetid://156292343"
mesh.Scale = VT(8,8,8)
local weld = CreateWeldOrSnapOrMotor("Weld", RootPart, gear, RootPart, CF(0 * Player_Size, 0 * Player_Size, 4 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)), CF(0, 0, 0))

local gear = CreatePart(3, Weapon, "Neon", 0, 0, "Really black", "Gear", VT(0.35*Player_Size,0.35*Player_Size,0.35*Player_Size),false)
local mesh = Instance.new("SpecialMesh",gear)
mesh.MeshType = "FileMesh"
mesh.MeshId = "rbxassetid://156292343"
mesh.Scale = VT(6,6,6)
local weld = CreateWeldOrSnapOrMotor("Weld", RootPart, gear, RootPart, CF(0 * Player_Size, 0 * Player_Size, 4 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local gear = CreatePart(3, Weapon, "Neon", 0, 0, "Really black", "Gear", VT(0.35*Player_Size,0.35*Player_Size,0.35*Player_Size),false)
local mesh = Instance.new("SpecialMesh",gear)
mesh.MeshType = "FileMesh"
mesh.MeshId = "rbxassetid://156292343"
mesh.Scale = VT(4,4,4)
local weld = CreateWeldOrSnapOrMotor("Weld", RootPart, gear, RootPart, CF(0 * Player_Size, 0 * Player_Size, 6 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local gear = CreatePart(3, Weapon, "Neon", 0, 0, "Really black", "Gear", VT(0.35*Player_Size,0.35*Player_Size,0.35*Player_Size),false)
local mesh = Instance.new("SpecialMesh",gear)
mesh.MeshType = "FileMesh"
mesh.MeshId = "rbxassetid://156292343"
mesh.Scale = VT(2,2,2)
local weld = CreateWeldOrSnapOrMotor("Weld", RootPart, gear, RootPart, CF(0 * Player_Size, 0 * Player_Size, 8 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local BottomPart = CreatePart(3, Weapon, "Neon", 0, 0, "Really red", "Handle", VT(1*Player_Size,6*Player_Size,1*Player_Size),false)
local mesh = Instance.new("SpecialMesh",BottomPart)
mesh.MeshType = "Sphere"
local weld = CreateWeldOrSnapOrMotor("Weld", RootPart, BottomPart, RootPart, CF(0 * Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))

--//=================================\\
--|| 		CREATING ARMS
--\\=================================//

--RIGHT ARM--

local limb1a = CreatePart(3, Weapon, "Neon", 0, 0, "Really red", "Handle", VT(2*Player_Size,2*Player_Size,2*Player_Size),false)
local mesh = Instance.new("SpecialMesh",limb1a)
mesh.MeshType = "Sphere"
limb1a.Name = "Right Arm 01"

local LIMB = CreatePart(3, Weapon, "SmoothPlastic", 0, 0, "Really black", "Handle", VT(0.8*Player_Size,3.5*Player_Size,0.8*Player_Size),false)
LIMB.Name = "Right Arm part"
local LIMBWELD = CreateWeldOrSnapOrMotor("Weld", LIMB, limb1a, LIMB, CF(0 * Player_Size, 2 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local LIMB = CreatePart(3, Weapon, "SmoothPlastic", 0, 0, "Really black", "Handle", VT(0.8*Player_Size,3.5*Player_Size,0.8*Player_Size),false)
LIMB.Name = "Right Arm part"
local LIMBWELD = CreateWeldOrSnapOrMotor("Weld", LIMB, limb1a, LIMB, CF(0 * Player_Size, 6 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local LIMB = CreatePart(3, Weapon, "Neon", 0, 0, "Really red", "Handle", VT(0.7*Player_Size,3.5*Player_Size,0.7*Player_Size),false)
LIMB.Name = "Right Arm part"
local LIMBWELD = CreateWeldOrSnapOrMotor("Weld", LIMB, limb1a, LIMB, CF(0 * Player_Size, 3 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))

local limbweld1a = CreateWeldOrSnapOrMotor("Weld", limb1a, RootPart, limb1a, CF(4 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local limb1b = CreatePart(3, Weapon, "Neon", 0, 0, "Really red", "Handle", VT(2*Player_Size,2*Player_Size,2*Player_Size),false)
local mesh = Instance.new("SpecialMesh",limb1b)
mesh.MeshType = "Sphere"
limb1b.Name = "Right Arm 02"

local LIMB = CreatePart(3, Weapon, "SmoothPlastic", 0, 0, "Really black", "Handle", VT(0.8*Player_Size,3.5*Player_Size,0.8*Player_Size),false)
LIMB.Name = "Right Arm part"
local LIMBWELD = CreateWeldOrSnapOrMotor("Weld", LIMB, limb1b, LIMB, CF(0 * Player_Size, 2 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local LIMB = CreatePart(3, Weapon, "SmoothPlastic", 0, 0, "Really black", "Handle", VT(1.5*Player_Size,3.5*Player_Size,1.5*Player_Size),false)
LIMB.Name = "Right Arm part"
local LIMBWELD = CreateWeldOrSnapOrMotor("Weld", LIMB, limb1b, LIMB, CF(0 * Player_Size, 6 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local LIMB = CreatePart(3, Weapon, "Neon", 0, 0, "Really red", "Handle", VT(0.7*Player_Size,3.5*Player_Size,0.7*Player_Size),false)
LIMB.Name = "Right Arm part"
local LIMBWELD = CreateWeldOrSnapOrMotor("Weld", LIMB, limb1b, LIMB, CF(0 * Player_Size, 3 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))

local part = CreatePart(3, Weapon, "Neon", 0, 0, "Really black", "Gear", VT(0.35*Player_Size,0.35*Player_Size,0.35*Player_Size),false)
local mesh = Instance.new("SpecialMesh",part)
mesh.MeshType = "FileMesh"
mesh.MeshId = "rbxassetid://156292343"
mesh.Scale = VT(10,10,10)
local weld = CreateWeldOrSnapOrMotor("Weld", part, limb1b, part, CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))

local limbweld1b = CreateWeldOrSnapOrMotor("Weld", limb1b, limb1a, limb1b, CF(0* Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local limb1c = CreatePart(3, Weapon, "Neon", 0, 0, "Really red", "Handle", VT(4*Player_Size,4*Player_Size,4*Player_Size),false)
local mesh = Instance.new("SpecialMesh",limb1c)
mesh.MeshType = "Sphere"
limb1c.Name = "Right Arm 03"

local part = CreatePart(3, Weapon, "Neon", 0, 0, "Really black", "Gear", VT(0.35*Player_Size,0.35*Player_Size,0.35*Player_Size),false)
local mesh = Instance.new("SpecialMesh",part)
mesh.MeshType = "FileMesh"
mesh.MeshId = "rbxassetid://156292343"
mesh.Scale = VT(15,15,15)
local weld = CreateWeldOrSnapOrMotor("Weld", part, limb1c, part, CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local part = CreatePart(3, Weapon, "Neon", 0, 0, "Really black", "Gear", VT(0.35*Player_Size,0.35*Player_Size,0.35*Player_Size),false)
local mesh = Instance.new("SpecialMesh",part)
mesh.MeshType = "FileMesh"
mesh.MeshId = "rbxassetid://156292343"
mesh.Scale = VT(10,10,10)
local weld = CreateWeldOrSnapOrMotor("Weld", part, limb1c, part, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local part = CreatePart(3, Weapon, "Neon", 0, 0, "Really black", "Gear", VT(0.35*Player_Size,0.35*Player_Size,0.35*Player_Size),false)
local mesh = Instance.new("SpecialMesh",part)
mesh.MeshType = "FileMesh"
mesh.MeshId = "rbxassetid://156292343"
mesh.Scale = VT(10,10,10)
local weld = CreateWeldOrSnapOrMotor("Weld", part, limb1c, part, CF(0 * Player_Size, -2 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))

local limbweld1c = CreateWeldOrSnapOrMotor("Weld", limb1c, limb1b, limb1c, CF(0 * Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))

local hand1 = CreatePart(3, Weapon, "Neon", 0, 0, "Really black", "Hand", VT(0*Player_Size,0*Player_Size,0*Player_Size),false)
local mesh = Instance.new("SpecialMesh",hand1)
mesh.MeshType = "FileMesh"
mesh.MeshId = "rbxassetid://1089939072"
mesh.Scale = VT(7,8,7)
local handweld1 = CreateWeldOrSnapOrMotor("Weld", limb1c, hand1, limb1c, CF(0 * Player_Size, 3 * Player_Size, 0 * Player_Size) * ANGLES(RAD(180), RAD(90), RAD(0)), CF(0, 0, 0))

--LEFT ARM

local limb2a = CreatePart(3, Weapon, "Neon", 0, 0, "Really red", "Handle", VT(2*Player_Size,2*Player_Size,2*Player_Size),false)
local mesh = Instance.new("SpecialMesh",limb2a)
mesh.MeshType = "Sphere"
limb2a.Name = "Left Arm 01"

local LIMB = CreatePart(3, Weapon, "SmoothPlastic", 0, 0, "Really black", "Handle", VT(0.8*Player_Size,3.5*Player_Size,0.8*Player_Size),false)
LIMB.Name = "Left Arm part"
local LIMBWELD = CreateWeldOrSnapOrMotor("Weld", LIMB, limb2a, LIMB, CF(0 * Player_Size, 2 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local LIMB = CreatePart(3, Weapon, "SmoothPlastic", 0, 0, "Really black", "Handle", VT(01*Player_Size,3.5*Player_Size,1*Player_Size),false)
LIMB.Name = "Left Arm part"
local LIMBWELD = CreateWeldOrSnapOrMotor("Weld", LIMB, limb2a, LIMB, CF(0 * Player_Size, 6 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local LIMB = CreatePart(3, Weapon, "Neon", 0, 0, "Really red", "Handle", VT(0.7*Player_Size,3.5*Player_Size,0.7*Player_Size),false)
LIMB.Name = "Left Arm part"
local LIMBWELD = CreateWeldOrSnapOrMotor("Weld", LIMB, limb2a, LIMB, CF(0 * Player_Size, 3 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))

local limbweld2a = CreateWeldOrSnapOrMotor("Weld", limb2a, RootPart, limb2a, CF(-4 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local limb2b = CreatePart(3, Weapon, "Neon", 0, 0, "Really red", "Handle", VT(2.5*Player_Size,2.5*Player_Size,2.5*Player_Size),false)
local mesh = Instance.new("SpecialMesh",limb2b)
mesh.MeshType = "Sphere"
limb2b.Name = "Left Arm 02"

local LIMB = CreatePart(3, Weapon, "SmoothPlastic", 0, 0, "Really black", "Handle", VT(1*Player_Size,3.5*Player_Size,1*Player_Size),false)
LIMB.Name = "Left Arm part"
local LIMBWELD = CreateWeldOrSnapOrMotor("Weld", LIMB, limb2b, LIMB, CF(0 * Player_Size, 2 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local LIMB = CreatePart(3, Weapon, "SmoothPlastic", 0, 0, "Really black", "Handle", VT(1.5*Player_Size,3.5*Player_Size,1.5*Player_Size),false)
LIMB.Name = "Left Arm part"
local LIMBWELD = CreateWeldOrSnapOrMotor("Weld", LIMB, limb2b, LIMB, CF(0 * Player_Size, 6 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local LIMB = CreatePart(3, Weapon, "Neon", 0, 0, "Really red", "Handle", VT(0.7*Player_Size,3.5*Player_Size,0.7*Player_Size),false)
LIMB.Name = "Left Arm part"
local LIMBWELD = CreateWeldOrSnapOrMotor("Weld", LIMB, limb2b, LIMB, CF(0 * Player_Size, 3 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))

local part = CreatePart(3, Weapon, "Neon", 0, 0, "Really black", "Gear", VT(0.35*Player_Size,0.35*Player_Size,0.35*Player_Size),false)
local mesh = Instance.new("SpecialMesh",part)
mesh.MeshType = "FileMesh"
mesh.MeshId = "rbxassetid://156292343"
mesh.Scale = VT(10,10,10)
local weld = CreateWeldOrSnapOrMotor("Weld", part, limb2b, part, CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))

local limbweld2b = CreateWeldOrSnapOrMotor("Weld", limb2b, limb2a, limb2b, CF(0* Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local limb2c = CreatePart(3, Weapon, "Neon", 0, 0, "Really red", "Handle", VT(4*Player_Size,4*Player_Size,4*Player_Size),false)
local mesh = Instance.new("SpecialMesh",limb2c)
mesh.MeshType = "Sphere"
limb1c.Name = "Right Arm 03"

local part = CreatePart(3, Weapon, "Neon", 0, 0, "Really black", "Gear", VT(0.35*Player_Size,0.35*Player_Size,0.35*Player_Size),false)
local mesh = Instance.new("SpecialMesh",part)
mesh.MeshType = "FileMesh"
mesh.MeshId = "rbxassetid://156292343"
mesh.Scale = VT(15,15,15)
local weld = CreateWeldOrSnapOrMotor("Weld", part, limb2c, part, CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local part = CreatePart(3, Weapon, "Neon", 0, 0, "Really black", "Gear", VT(0.35*Player_Size,0.35*Player_Size,0.35*Player_Size),false)
local mesh = Instance.new("SpecialMesh",part)
mesh.MeshType = "FileMesh"
mesh.MeshId = "rbxassetid://156292343"
mesh.Scale = VT(10,10,10)
local weld = CreateWeldOrSnapOrMotor("Weld", part, limb2c, part, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local part = CreatePart(3, Weapon, "Neon", 0, 0, "Really black", "Gear", VT(0.35*Player_Size,0.35*Player_Size,0.35*Player_Size),false)
local mesh = Instance.new("SpecialMesh",part)
mesh.MeshType = "FileMesh"
mesh.MeshId = "rbxassetid://156292343"
mesh.Scale = VT(10,10,10)
local weld = CreateWeldOrSnapOrMotor("Weld", part, limb2c, part, CF(0 * Player_Size, -2 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))

local limbweld2c = CreateWeldOrSnapOrMotor("Weld", limb2c, limb2b, limb2c, CF(0 * Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))

local hand2 = CreatePart(3, Weapon, "Neon", 0, 0, "Really black", "Hand", VT(0*Player_Size,0*Player_Size,0*Player_Size),false)
local mesh = Instance.new("SpecialMesh",hand2)
mesh.MeshType = "FileMesh"
mesh.MeshId = "rbxassetid://1089939056"
mesh.Scale = VT(7,8,7)
local handweld2 = CreateWeldOrSnapOrMotor("Weld", limb2c, hand2, limb2c, CF(0 * Player_Size, 3 * Player_Size, 0 * Player_Size) * ANGLES(RAD(180), RAD(-90), RAD(0)), CF(0, 0, 0))

for _, c in pairs(Weapon:GetChildren()) do
	if c.ClassName == "Part" then
		c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
	end
end

--//=================================\\
--|| 			SPEECH
--\\=================================//

function chatfunc(text,waitt)
local chat = coroutine.wrap(function()
if Character:FindFirstChild("TalkingBillBoard")~= nil then
Character:FindFirstChild("TalkingBillBoard"):destroy()
end
local naeeym2 = Instance.new("BillboardGui",Character)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,2,0)
naeeym2.Adornee = Character.Head
naeeym2.Name = "TalkingBillBoard"
naeeym2.AlwaysOnTop = true
local tecks2  = 30
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = ""
tecks2.Font = "Fantasy"
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 1
tecks2.TextColor3 = SKILLTEXTCOLOR
tecks2.TextStrokeColor3 = Color3.new(0,0,0)
tecks2.Size = UDim2.new(1,0,0.5,0)
local tecks3 = Instance.new("TextLabel",naeeym2)
tecks3.BackgroundTransparency = 1
tecks3.BorderSizePixel = 0
tecks3.Text = ""
tecks3.Font = "Fantasy"
tecks3.TextSizekeTransparency = 1
tecks3.TextColor3 = SKILLTEXTCOLOR
tecks3.TextStrokeColor3 = Color3.new(0,0,0)
tecks3.Size = UDim2.new(1,0,0.5,0)
for i = 1,string.len(text),1 do
tecks2.Text = string.sub(text,1,i)
tecks3.Text = string.sub(text,1,i)
wait(0.01)
end
wait(waitt)
naeeym2:Destroy()
end)
chat()
end

--//=================================\\
--||	     DAMAGE FUNCTIONS
--\\=================================//

function StatLabel(LABELTYPE, CFRAME, TEXT, COLOR)
	local STATPART = CreatePart(3, Effects, "SmoothPlastic", 0, 1, "Really black", "Effect", VT())
	STATPART.CFrame = CF(CFRAME.p + VT(0, 1.5, 0))
	local BODYGYRO = IT("BodyGyro", STATPART)
	local BODYPOSITION = IT("BodyPosition", STATPART)
	BODYPOSITION.P = 2000
	BODYPOSITION.D = 100
	BODYPOSITION.maxForce = VT(math.huge, math.huge, math.huge)
	if LABELTYPE == "Normal" then
		BODYPOSITION.position = STATPART.Position + VT(MRANDOM(-2, 2), 6, MRANDOM(-2, 2))
	elseif LABELTYPE == "Debuff" then
		BODYPOSITION.position = STATPART.Position + VT(MRANDOM(-2, 2), 8, MRANDOM(-2, 2))
	elseif LABELTYPE == "Interruption" then
		BODYPOSITION.position = STATPART.Position + VT(MRANDOM(-2,2), 8, MRANDOM(-2, 2))
	end
	game:GetService("Debris"):AddItem(STATPART ,5)
	local BILLBOARDGUI = Instance.new("BillboardGui", STATPART)
	BILLBOARDGUI.Adornee = STATPART
	BILLBOARDGUI.Size = UD2(2.5, 0, 2.5 ,0)
	BILLBOARDGUI.StudsOffset = VT(-2, 2, 0)
	BILLBOARDGUI.AlwaysOnTop = false
	local TEXTLABEL = Instance.new("TextLabel", BILLBOARDGUI)
	TEXTLABEL.BackgroundTransparency = 1
	TEXTLABEL.Size = UD2(2.5, 0, 2.5, 0)
	TEXTLABEL.Text = TEXT
	TEXTLABEL.Font = "SciFi"
	TEXTLABEL.FontSize="Size42"
	TEXTLABEL.TextColor3 = COLOR
	TEXTLABEL.TextStrokeTransparency = 1
	TEXTLABEL.TextScaled = true
	TEXTLABEL.TextWrapped = true
	coroutine.resume(coroutine.create(function(THEPART, THEBODYPOSITION, THETEXTLABEL)
		wait(0.2)
		for i=1, 5 do
			wait()
			THEBODYPOSITION.Position = THEPART.Position - VT(0, 0.5 ,0)
		end
		wait(1.2)
		for i=1, 5 do
			wait()
			THETEXTLABEL.TextTransparency = THETEXTLABEL.TextTransparency + 0.2
			THETEXTLABEL.TextStrokeTransparency = THETEXTLABEL.TextStrokeTransparency + 0.2
			THEBODYPOSITION.position = THEPART.Position + VT(0, 0.5, 0)
		end
		THEPART.Parent = nil
	end),STATPART, BODYPOSITION, TEXTLABEL)
end

function CreatePentagram(size,doesrotate,rotatedirection,waitt,cframe,offset)
	local sinkhole = IT("Part",Effects)
	sinkhole.Size = VT(size,0,size)
	sinkhole.CFrame = cframe * CF(0,offset,0)
	sinkhole.Material = "Neon"
	sinkhole.Color = C3(1,0,0)
	sinkhole.Anchored = true
	sinkhole.CanCollide = false
	sinkhole.Transparency = 1
	local decal = IT("Decal",sinkhole)
	decal.Face = "Top"
	decal.Texture = "http://www.roblox.com/asset/?id=818983932"
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, waitt do
			Swait()
			if doesrotate == true then
				sinkhole.CFrame = sinkhole.CFrame * CFrame.fromEulerAnglesXYZ(0, rotatedirection, 0)
			end
			if i > waitt-11 then
				decal.Transparency = decal.Transparency + 0.1
			end
		end
		sinkhole:remove()
	end))
	return sinkhole
end

--//=================================\\
--||			DAMAGING
--\\=================================//

function dealdamage(hit,min,max,maxstrength,beserk,critrate,critmultiplier)
	if hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent:FindFirstChild("HitBy"..Player.Name) == nil then
		local humanoid = hit.Parent:FindFirstChildOfClass("Humanoid")
		local dmg = math.random(min,max)
		if humanoid.Health > 0 then
			if beserk == true then
				humanoid.Health = 0
			else
				CreateSound("260430060", hit, 1.2, MRANDOM(7, 12) / 10)
				hit.Velocity = CFrame.new(Torso.Position,hit.Position).lookVector*5*maxstrength
				if math.random(1,100) < critrate+1 then
					humanoid.Health = humanoid.Health - dmg*critmultiplier
					StatLabel("Normal", hit.CFrame * CF(0, 0 + (hit.Size.z - 1), 0), "CRIT/"..dmg*critmultiplier, C3(255/255, 0, 0))
				else
					humanoid.Health = humanoid.Health - dmg
					StatLabel("Normal", hit.CFrame * CF(0, 0 + (hit.Size.z - 1), 0), dmg, C3(0, 0, 0))
				end
				local defence = Instance.new("BoolValue",hit.Parent)
				defence.Name = ("HitBy"..Player.Name)
				game:GetService("Debris"):AddItem(defence, 0.5)
			end
		end
	end
end

function AoEDamage(position,radius,min,max,maxstrength,beserk,critrate,critmultiplier,CanBeDodgedByJumping)
	local dmg = math.random(min,max)
	for i,v in ipairs(workspace:GetChildren()) do
	if v:FindFirstChild("HitBy"..Player.Name) == nil then
		local body = v:GetChildren()
			for part = 1, #body do
				if(v:FindFirstChild("HitBy"..Player.Name) == nil and (body[part].ClassName == "Part" or body[part].ClassName == "MeshPart") and v ~= Character) then
					if(body[part].Position - position).Magnitude < radius then
						if v.ClassName == "Model" then
							if v:FindFirstChild("Humanoid") then
								if v.Humanoid.Health ~= 0 then
									if CanBeDodgedByJumping == true then
										if body[part].Position.Y < position.Y+5 then
											if math.random(1,100) < critrate+1 then
												v.Humanoid.Health = v.Humanoid.Health - dmg*critmultiplier
												StatLabel("Normal", body[part].CFrame * CF(0, 0 + (body[part].Size.z - 1), 0), "CRIT/"..dmg*critmultiplier, C3(255/255, 0, 0))
											else
												v.Humanoid.Health = v.Humanoid.Health - dmg
												StatLabel("Normal", body[part].CFrame * CF(0, 0 + (body[part].Size.z - 1), 0), dmg, C3(0, 0, 0))
											end
											local defence = Instance.new("BoolValue",v)
											defence.Name = ("HitBy"..Player.Name)
											game:GetService("Debris"):AddItem(defence, 0.5)
										end
									else
										if beserk == true then
											v.Humanoid.Health = 0
										end
										if math.random(1,100) < critrate+1 then
											v.Humanoid.Health = v.Humanoid.Health - dmg*critmultiplier
											StatLabel("Normal", body[part].CFrame * CF(0, 0 + (body[part].Size.z - 1), 0), "CRIT/"..dmg*critmultiplier, C3(255/255, 0, 0))
										else
											v.Humanoid.Health = v.Humanoid.Health - dmg
											StatLabel("Normal", body[part].CFrame * CF(0, 0 + (body[part].Size.z - 1), 0), dmg, C3(0, 0, 0))
										end
										local defence = Instance.new("BoolValue",v)
										defence.Name = ("HitBy"..Player.Name)
										game:GetService("Debris"):AddItem(defence, 0.5)
									end
								end
							end
						end
						--body[part].Velocity = CFrame.new(position,body[part].Position).lookVector*5*maxstrength
					end
				end
			end
			if v.ClassName == "Part" then
				if v.Anchored == false and (v.Position - position).Magnitude < radius then
					--v.Velocity = CFrame.new(position,v.Position).lookVector*5*maxstrength
				end
			end
		end
	end
end

function killnearest(position,range,maxstrength)
	for i,v in ipairs(workspace:GetChildren()) do
	local body = v:GetChildren()
		for part = 1, #body do
			if((body[part].ClassName == "Part" or body[part].ClassName == "MeshPart") and v ~= Character) then
				if(body[part].Position - position).Magnitude < range then
					if v.ClassName == "Model" then
						v:BreakJoints()
					end
					--table.insert(Effects2,{body[part],"Disappear",0.02,2,2,2,2})
					body[part].Velocity = CFrame.new(position,body[part].Position).lookVector*5*maxstrength
				end
			end
		end
		if v.ClassName == "Part" then
			if v.Anchored == false and (v.Position - position).Magnitude < range then
				--table.insert(Effects2,{v,"Disappear",0.02,2,2,2,2})
				v.Velocity = CFrame.new(position,v.Position).lookVector*5*maxstrength
			end
		end
	end
end

--//=================================\\
--||	ATTACK FUNCTIONS AND STUFF
--\\=================================//


function turnto(pos,part)
	part.CFrame = CF(part.Position,VT(pos.X,RootPart.Position.Y,pos.Z))
end

Humanoid.Died:connect(function()
	q = workspace:GetChildren()
	DEAD = true
	CreatePentagram(1500,true,-0.1,150,CF(RootPart.Position),-15-3)
	Head.Parent = nil
	Head = nil
	for i = 1, #q do
		local child = q[i]
		if child.ClassName == "Model" and child:FindFirstChild("Humanoid") then
			child:BreakJoints()
		end
	end
	local taunt = CreateSound("135009414", workspace, 10, 1)
	local effect = IT("PitchShiftSoundEffect",taunt)
	effect.Octave = 0.700
	ATTACK = true
end)

function ClawForce()
	ATTACK = true
	for i=0, 2, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size + 0.05 * COS(SINE / 12) * Player_Size) * ANGLES(RAD(-25), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(145), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(145), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.3 * Player_Size - 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size - 0.2 * COS(SINE / 12) * Player_Size, -0.01 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)

		limbweld1a.C0 = Clerp(limbweld1a.C0, CF(5 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(45), RAD(8), RAD(-65)), 0.4 / Animation_Speed)
		limbweld1b.C0 = Clerp(limbweld1b.C0, CF(0* Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-86), RAD(-5), RAD(0)), 0.4 / Animation_Speed)
		limbweld1c.C0 = Clerp(limbweld1c.C0, CF(0 * Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-25), RAD(0), RAD(0)), 0.4 / Animation_Speed)

		limbweld2a.C0 = Clerp(limbweld2a.C0, CF(-5 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(45), RAD(-8), RAD(65)), 0.4 / Animation_Speed)
		limbweld2b.C0 = Clerp(limbweld2b.C0, CF(0* Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-86), RAD(5), RAD(0)), 0.4 / Animation_Speed)
		limbweld2c.C0 = Clerp(limbweld2c.C0, CF(0 * Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-25), RAD(0), RAD(0)), 0.4 / Animation_Speed)
	end
	CreateSound("134012322", Effects, 2, 1)
	for i=0, 1, 0.1 / Animation_Speed2 do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size + 0.05 * COS(SINE / 12) * Player_Size) * ANGLES(RAD(25), RAD(0), RAD(0)), 0.15 / Animation_Speed2)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed2)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(15), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed2)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(15), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed2)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.3 * Player_Size - 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed2)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size - 0.2 * COS(SINE / 12) * Player_Size, -0.01 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed2)

		limbweld1a.C0 = Clerp(limbweld1a.C0, CF(5 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(15), RAD(8), RAD(-175)), 0.4 / Animation_Speed2)
		limbweld1b.C0 = Clerp(limbweld1b.C0, CF(0* Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-26), RAD(-5), RAD(0)), 0.4 / Animation_Speed2)
		limbweld1c.C0 = Clerp(limbweld1c.C0, CF(0 * Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-25), RAD(-90), RAD(0)), 0.4 / Animation_Speed2)

		limbweld2a.C0 = Clerp(limbweld2a.C0, CF(-5 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(15), RAD(-8), RAD(175)), 0.4 / Animation_Speed2)
		limbweld2b.C0 = Clerp(limbweld2b.C0, CF(0* Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-26), RAD(5), RAD(0)), 0.4 / Animation_Speed2)
		limbweld2c.C0 = Clerp(limbweld2c.C0, CF(0 * Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-25), RAD(90), RAD(0)), 0.4 / Animation_Speed2)
	end
	killnearest(hand1.Position,15,60)
	killnearest(hand2.Position,15,60)
	CreateWave(0,15,false,0,15,CF(hand1.Position) * CF(0,-1,0),0,"Really black")
	CreateWave(0,15,false,0,15,CF(hand2.Position) * CF(0,-1,0),0,"Really black")
	CreateWave(0,10,false,0,15,CF(hand1.Position) * CF(0,-1,0),0,"Really black")
	CreateWave(0,10,false,0,15,CF(hand2.Position) * CF(0,-1,0),0,"Really black")
	CreateWave(0,5,false,0,15,CF(hand1.Position) * CF(0,-1,0),0,"Really black")
	CreateWave(0,5,false,0,15,CF(hand2.Position) * CF(0,-1,0),0,"Really black")
	CreateSound("1225807237", Effects, 4, 1)
	for i=0, 0.5, 0.1 / Animation_Speed2 do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size + 0.05 * COS(SINE / 12) * Player_Size) * ANGLES(RAD(25), RAD(0), RAD(0)), 0.15 / Animation_Speed2)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed2)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(15), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed2)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(15), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed2)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.3 * Player_Size - 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed2)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size - 0.2 * COS(SINE / 12) * Player_Size, -0.01 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed2)

		limbweld1a.C0 = Clerp(limbweld1a.C0, CF(5 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(15), RAD(8), RAD(-175)), 0.4 / Animation_Speed2)
		limbweld1b.C0 = Clerp(limbweld1b.C0, CF(0* Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-26), RAD(-5), RAD(0)), 0.4 / Animation_Speed2)
		limbweld1c.C0 = Clerp(limbweld1c.C0, CF(0 * Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-25), RAD(-90), RAD(0)), 0.4 / Animation_Speed2)

		limbweld2a.C0 = Clerp(limbweld2a.C0, CF(-5 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(15), RAD(-8), RAD(175)), 0.4 / Animation_Speed2)
		limbweld2b.C0 = Clerp(limbweld2b.C0, CF(0* Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-26), RAD(5), RAD(0)), 0.4 / Animation_Speed2)
		limbweld2c.C0 = Clerp(limbweld2c.C0, CF(0 * Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-25), RAD(90), RAD(0)), 0.4 / Animation_Speed2)
	end
	ATTACK = false
end

function HellLeash()
	ATTACK = true
	Rooted = true
	CreateSound("159882578", Effects, 10, 0.6)
	for i=0, 2, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p,RootPart)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size + 0.05 * COS(SINE / 12) * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(45)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(-45)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(35)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.3 * Player_Size - 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size - 0.2 * COS(SINE / 12) * Player_Size, -0.01 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)

		limbweld1a.C0 = Clerp(limbweld1a.C0, CF(5 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-85), RAD(0), RAD(-95)) * ANGLES(RAD(0),RAD(0),RAD(90)), 0.4 / Animation_Speed)
		limbweld1b.C0 = Clerp(limbweld1b.C0, CF(0* Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-6), RAD(-5 * COS(SINE / 30)), RAD(0)), 0.4 / Animation_Speed)
		limbweld1c.C0 = Clerp(limbweld1c.C0, CF(0 * Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.4 / Animation_Speed)

		limbweld2a.C0 = Clerp(limbweld2a.C0, CF(-5 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-25), RAD(-8+(-5 * COS(SINE / 30))), RAD(135)), 0.4 / Animation_Speed)
		limbweld2b.C0 = Clerp(limbweld2b.C0, CF(0* Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-36), RAD(5 * COS(SINE / 30)), RAD(-35)), 0.4 / Animation_Speed)
		limbweld2c.C0 = Clerp(limbweld2c.C0, CF(0 * Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.4 / Animation_Speed)
	end
	CreateSound("910988901", Effects, 4, 1)
	local sphere = IT("Part",Effects)
	sphere.Shape = "Ball"
	sphere.Size = VT(0,0,0)
	sphere.Material = "Neon"
	sphere.Color = C3(1,0,0)
	sphere.CFrame = hand1.CFrame*CF(0,0,0)
	sphere.Anchored = true
	for i = 1, 25 do
		Swait()
		turnto(Mouse.Hit.p,RootPart)
		sphere.CFrame = hand1.CFrame*CF(-3.5,-2-sphere.Size.Y/2,0)
		sphere.Size = sphere.Size + VT(1,1,1)
		sphere.Anchored = true
	end
	for i = 1, 100 do
		turnto(Mouse.Hit.p,RootPart)
		local RayData = Zap({Offset = 2, Size = sphere.Size.Y/5 ,MaxRange = 150 ,StartPosition = sphere.Position, TargetPosition = Mouse.Hit.p, Character = Character, Color = "Really red", Individual = true})
		MagicSphere(5,15,RayData.RayPos,0,"Really red")
		killnearest(RayData.RayPos,15,100)
		Swait()
		sphere.CFrame = hand1.CFrame*CF(-3.5,-2-sphere.Size.Y/2,0)
		sphere.Size = sphere.Size - VT(0.25,0.25,0.25)
		sphere.Anchored = true
		RayData.LightningModel:remove()
	end
	ATTACK = false
	Rooted = false
end

function RayCast(Position, Direction, MaxDistance, IgnoreList)
	return game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(Position, Direction.unit * (MaxDistance or 999.999)), IgnoreList) 
end

function SinnerWave()
	ATTACK = true
	Rooted = true
	for i=0, 2, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p,RootPart)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size + 0.05 * COS(SINE / 12) * Player_Size) * ANGLES(RAD(-25), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(145), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(145), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.3 * Player_Size - 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size - 0.2 * COS(SINE / 12) * Player_Size, -0.01 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)

		limbweld1a.C0 = Clerp(limbweld1a.C0, CF(5 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(45), RAD(8), RAD(-65)), 0.4 / Animation_Speed)
		limbweld1b.C0 = Clerp(limbweld1b.C0, CF(0* Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-86), RAD(-5), RAD(0)), 0.4 / Animation_Speed)
		limbweld1c.C0 = Clerp(limbweld1c.C0, CF(0 * Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-25), RAD(0), RAD(0)), 0.4 / Animation_Speed)

		limbweld2a.C0 = Clerp(limbweld2a.C0, CF(-5 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(45), RAD(-8), RAD(65)), 0.4 / Animation_Speed)
		limbweld2b.C0 = Clerp(limbweld2b.C0, CF(0* Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-86), RAD(5), RAD(0)), 0.4 / Animation_Speed)
		limbweld2c.C0 = Clerp(limbweld2c.C0, CF(0 * Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-25), RAD(0), RAD(0)), 0.4 / Animation_Speed)
	end
	CreateSound("971126018", Effects, 6, 1)
	local angle = -60
	for i = 1, 9 do
		coroutine.resume(coroutine.create(function()
			local RayHit, RayPos = RayCast(Torso.Position, Vector3.new(0, -15, 0), 10000, {Character})
			local SpawnPosition = RayPos
			local floor = RayHit
			local needcframe = RootPart.CFrame*ANGLES(RAD(0),RAD(angle),RAD(0))
			local LastPosition = RayPos
			local Delay = 1
			for i = 1, 15 do
				local RayHit, RayPos = RayCast(LastPosition, needcframe.lookVector, 10, {workspace})
				local End = RayPos
				LastPosition = End
				local locatepart = Instance.new("Part",Effects)
				locatepart.Size = VT(0.5,0.5,0.5)
				locatepart.Position = End
				locatepart.CanCollide = false
				locatepart.Anchored = true
				locatepart.Name = "Oof"
				locatepart.Transparency = 1
					if SpawnPosition then
						CreateSound("971125740", locatepart.CFrame, 7, 1)
						killnearest(End,15,50)
						CreateWave(0,5,true,0.1,15,CF(locatepart.Position),0,"Really black")
						CreateWave(0,2.5,true,-0.1,15,CF(locatepart.Position),0,"Really black")
						CreateWave(0,2,true,0.1,15,CF(locatepart.Position),0,"Really black")
						CreateWave(0,1.5,true,-0.1,15,CF(locatepart.Position),0,"Really black")
					end
				Swait(5)
				game:GetService("Debris"):AddItem(locatepart, 5)
			end
		end))
		angle = angle + 15
	end
	for i=0, 2, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size + 0.05 * COS(SINE / 12) * Player_Size) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(145), RAD(0), RAD(72)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(145), RAD(0), RAD(-72)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.3 * Player_Size - 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size - 0.2 * COS(SINE / 12) * Player_Size, -0.01 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)

		limbweld1a.C0 = Clerp(limbweld1a.C0, CF(5 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(45), RAD(8), RAD(-125)), 0.4 / Animation_Speed)
		limbweld1b.C0 = Clerp(limbweld1b.C0, CF(0* Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-26), RAD(-5), RAD(0)), 0.4 / Animation_Speed)
		limbweld1c.C0 = Clerp(limbweld1c.C0, CF(0 * Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-25), RAD(0), RAD(0)), 0.4 / Animation_Speed)

		limbweld2a.C0 = Clerp(limbweld2a.C0, CF(-5 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(45), RAD(-8), RAD(125)), 0.4 / Animation_Speed)
		limbweld2b.C0 = Clerp(limbweld2b.C0, CF(0* Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-26), RAD(5), RAD(0)), 0.4 / Animation_Speed)
		limbweld2c.C0 = Clerp(limbweld2c.C0, CF(0 * Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-25), RAD(0), RAD(0)), 0.4 / Animation_Speed)
	end
	ATTACK = false
	Rooted = false
end

function FromTheDepths()
	ATTACK = true
	Rooted = true
	for i=0, 2, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p,RootPart)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size + 0.05 * COS(SINE / 12) * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(145), RAD(0), RAD(72)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(145), RAD(0), RAD(-72)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.3 * Player_Size - 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size - 0.2 * COS(SINE / 12) * Player_Size, -0.01 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)

		limbweld1a.C0 = Clerp(limbweld1a.C0, CF(5 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(45), RAD(8), RAD(-125)), 0.4 / Animation_Speed)
		limbweld1b.C0 = Clerp(limbweld1b.C0, CF(0* Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-26), RAD(-5), RAD(0)), 0.4 / Animation_Speed)
		limbweld1c.C0 = Clerp(limbweld1c.C0, CF(0 * Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-25), RAD(0), RAD(0)), 0.4 / Animation_Speed)

		limbweld2a.C0 = Clerp(limbweld2a.C0, CF(-5 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(45), RAD(-8), RAD(125)), 0.4 / Animation_Speed)
		limbweld2b.C0 = Clerp(limbweld2b.C0, CF(0* Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-26), RAD(5), RAD(0)), 0.4 / Animation_Speed)
		limbweld2c.C0 = Clerp(limbweld2c.C0, CF(0 * Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-25), RAD(0), RAD(0)), 0.4 / Animation_Speed)
	end
	local pos = nil
	repeat
		Swait()
		local RayData = Zap({Offset = 2, Size = 0.2 ,MaxRange = 150 ,StartPosition = CF(BottomPart.Position)*CF(0,-3,0).p, TargetPosition = Mouse.Hit.p, Character = Character, Color = "Really red", Individual = true})
		MagicSphere(2,15,RayData.RayPos,0,"Really red")
		pos = RayData.RayPos
		Swait()
		RayData.LightningModel:remove()
		turnto(Mouse.Hit.p,RootPart)
	until KEYHOLD == false
	coroutine.resume(coroutine.create(function()
		local gate = IT("Part",Effects)
		gate.Material = "Neon"
		gate.Color = C3(1,0,0)
		gate.CanCollide = false
		gate.Anchored = true
		gate.Transparency = 1
		gate.Size = VT(65,0.3,65)
		local mesh = IT("CylinderMesh",gate)
		gate.CFrame = CF(pos)
		local soundeffect = IT("Sound",gate)
		soundeffect.SoundId = "rbxassetid://487186990"
		soundeffect.Looped = true
		soundeffect.Volume = 0
		soundeffect.Playing = true
		for i = 1, 10 do
			soundeffect.Volume = i
			gate.Transparency = gate.Transparency - 0.1
			Swait()
		end
		for i = 1, 150 do
			Swait(5)
			killnearest(gate.Position,35,-10)
		end
		for i = 1, 10 do
			soundeffect.Volume = soundeffect.Volume - 1
			gate.Transparency = gate.Transparency + 0.1
			Swait()
		end
		gate:remove()
	end))
	for i=0, 2, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p,RootPart)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size + 0.05 * COS(SINE / 12) * Player_Size) * ANGLES(RAD(-35), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(165), RAD(0), RAD(52)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(165), RAD(0), RAD(-52)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.3 * Player_Size - 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size - 0.2 * COS(SINE / 12) * Player_Size, -0.01 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)

		limbweld1a.C0 = Clerp(limbweld1a.C0, CF(5 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(45), RAD(8), RAD(-55)), 0.4 / Animation_Speed)
		limbweld1b.C0 = Clerp(limbweld1b.C0, CF(0* Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-66), RAD(-5), RAD(0)), 0.4 / Animation_Speed)
		limbweld1c.C0 = Clerp(limbweld1c.C0, CF(0 * Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)), 0.4 / Animation_Speed)

		limbweld2a.C0 = Clerp(limbweld2a.C0, CF(-5 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(45), RAD(-8), RAD(55)), 0.4 / Animation_Speed)
		limbweld2b.C0 = Clerp(limbweld2b.C0, CF(0* Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-66), RAD(5), RAD(0)), 0.4 / Animation_Speed)
		limbweld2c.C0 = Clerp(limbweld2c.C0, CF(0 * Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)), 0.4 / Animation_Speed)
	end
	ATTACK = false
	Rooted = false
end

function TheEnd()
	local pos = RootPart.CFrame * CF(0,65,0).p
	ATTACK = true
	Rooted = true
	for i=0, 2, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size + 0.05 * COS(SINE / 12) * Player_Size) * ANGLES(RAD(-35), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(165), RAD(0), RAD(52)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(165), RAD(0), RAD(-52)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.3 * Player_Size - 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size - 0.2 * COS(SINE / 12) * Player_Size, -0.01 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)

		limbweld1a.C0 = Clerp(limbweld1a.C0, CF(5 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(45), RAD(8), RAD(-55)), 0.4 / Animation_Speed)
		limbweld1b.C0 = Clerp(limbweld1b.C0, CF(0* Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-66), RAD(-5), RAD(0)), 0.4 / Animation_Speed)
		limbweld1c.C0 = Clerp(limbweld1c.C0, CF(0 * Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)), 0.4 / Animation_Speed)

		limbweld2a.C0 = Clerp(limbweld2a.C0, CF(-5 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(45), RAD(-8), RAD(55)), 0.4 / Animation_Speed)
		limbweld2b.C0 = Clerp(limbweld2b.C0, CF(0* Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-66), RAD(5), RAD(0)), 0.4 / Animation_Speed)
		limbweld2c.C0 = Clerp(limbweld2c.C0, CF(0 * Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)), 0.4 / Animation_Speed)
	end
	if DEAD == false then
		local sphere = IT("Part",Effects)
		sphere.Shape = "Ball"
		sphere.Size = VT(0,0,0)
		sphere.Material = "Neon"
		sphere.Color = C3(1,0,0)
		sphere.CFrame = CF(pos)
		sphere.Anchored = true
		sphere.CanCollide = false
		local maxdist1 = (hand1.Position-pos).magnitude
		local maxdist2 = (hand2.Position-pos).magnitude
		local soundeffect = IT("Sound",RootPart)
		soundeffect.SoundId = "rbxassetid://379557765"
		soundeffect.Looped = true
		soundeffect.Volume = 10
		soundeffect.Playing = true
		local hit = sphere.Touched:connect(function(hit) 
			if hit.Parent ~= Character and hit.Parent ~= Weapon and hit.Anchored == false and hit.CanCollide == true then
				hit:Destroy()
			end
		end)
		CreateSwirl(0,1,true,0.5,300,sphere.CFrame,0,"Really red")
		for i = 1, 250 do
			--local RayData = Zap({Offset = 2, Size = 0.2 ,MaxRange = 1500 ,StartPosition = CF(BottomPart.Position)*CF(0,-3,0).p, TargetPosition = Mouse.Hit.p, Character = Character, Color = "Really red", Individual = true})
			local RayData2 = Zap({Offset = 2, Size = 0.2 ,MaxRange = maxdist1 ,StartPosition = hand1.Position, TargetPosition = pos, Character = Character, Color = "Really red", Individual = true})
			local RayData3 = Zap({Offset = 2, Size = 0.2 ,MaxRange = maxdist2 ,StartPosition = hand2.Position, TargetPosition = pos, Character = Character, Color = "Really red", Individual = true})
			Swait()
			--RayData.LightningModel:remove()
			RayData2.LightningModel:remove()
			RayData3.LightningModel:remove()
			sphere.Size = sphere.Size + VT(0.2,0.2,0.2)
		end
		soundeffect:remove()
		Swait(50)
		for i = 1, 5 do	
			CreateSound("821439273", sphere, 10, 0.7)
			--local RayData = Zap({Offset = 2, Size = 0.2 ,MaxRange = 1500 ,StartPosition = CF(BottomPart.Position)*CF(0,-3,0).p, TargetPosition = Mouse.Hit.p, Character = Character, Color = "Really red", Individual = true})
			local RayData2 = Zap({Offset = 2, Size = 2 ,MaxRange = maxdist1 ,StartPosition = hand1.Position, TargetPosition = pos, Character = Character, Color = "Really red", Individual = true})
			local RayData3 = Zap({Offset = 2, Size = 2 ,MaxRange = maxdist2 ,StartPosition = hand2.Position, TargetPosition = pos, Character = Character, Color = "Really red", Individual = true})
			Swait()
			sphere.Size = sphere.Size + VT(5,5,5)
			Swait(15)
		end
		local laugh = CreateSound("160212892", Effects, 10, 0.7)
		Swait(2)
		repeat Swait() until laugh.Playing == false
		local filter = IT("ColorCorrectionEffect",game.Lighting)
		CreateSound("160745944", Effects, 10, 0.7)
		for i = 1, 100 do
			Swait()
			MagicSphere(sphere.Size.Y/2,15,sphere.Position,0,"Really red")
			MagicSphere(sphere.Size.Y/5,15,sphere.Position,0,"Really red")
			MagicSphere(sphere.Size.Y/8,15,sphere.Position,0,"Really red")
			sphere.Size = sphere.Size + VT(5,5,5)
			filter.TintColor = C3(1,1-(i/100),1-(i/100))
		end
		for i = 1, 100 do
			Swait()
			MagicSphere(sphere.Size.Y/2,15,sphere.Position,0,"Really red")
			MagicSphere(sphere.Size.Y/5,15,sphere.Position,0,"Really red")
			MagicSphere(sphere.Size.Y/8,15,sphere.Position,0,"Really red")
			sphere.Size = sphere.Size + VT(5,5,5)
			filter.Brightness = filter.Brightness - (1/100)
		end
		--killnearest(sphere.Position,1000,100)
		sphere:remove()
		Swait(50)
		ATTACK = false
		Rooted = false
		for i = 1, 50 do
			Swait()
			filter.TintColor = C3(1,0+(i/50),0+(i/50))
			filter.Brightness = filter.Brightness + (1/50)
		end
		filter:remove()
	end
end

Humanoid.HealthChanged:connect(function()
	if Humanoid.Health == 0 then
		Humanoid.MaxHealth = "inf"
		Humanoid.Health = "inf"
		if ATTACK == false then
			if Humanoid.Health == 0 then
				workspace:ClearAllChildren()
			else
				TheEnd()
			end
		end
	end
end)

--//=================================\\
--||	  ASSIGN THINGS TO KEYS
--\\=================================//

function MouseDown(Mouse)
	if ATTACK == false then
	end
end

function MouseUp(Mouse)
HOLD = false
end

function KeyDown(Key)
	KEYHOLD = true
	if Key == "z" and ATTACK == false then
		ClawForce()
	end

	if Key == "b" and ATTACK == false then
		HellLeash()
	end

	if Key == "c" and ATTACK == false then
		SinnerWave()
	end

	if Key == "v" and ATTACK == false then
		FromTheDepths()
	end

	if Key == "x" and ATTACK == false then
		TheEnd()
	end

	if Key == "t" and ATTACK == false then
		CreateSound("907329893", Head, 10, 0.85)
	end
end

function KeyUp(Key)
	KEYHOLD = false
end

	Mouse.Button1Down:connect(function(NEWKEY)
		MouseDown(NEWKEY)
	end)
	Mouse.Button1Up:connect(function(NEWKEY)
		MouseUp(NEWKEY)
	end)
	Mouse.KeyDown:connect(function(NEWKEY)
		KeyDown(NEWKEY)
	end)
	Mouse.KeyUp:connect(function(NEWKEY)
		KeyUp(NEWKEY)
	end)

--//=================================\\
--\\=================================//


function unanchor()
	if UNANCHOR == true then
		g = Character:GetChildren()
		for i = 1, #g do
			if g[i].ClassName == "Part" then
				g[i].Anchored = false
			end
		end
	end
end


--//=================================\\
--||	WRAP THE WHOLE SCRIPT UP
--\\=================================//

Humanoid.Changed:connect(function(Jump)
	if Jump == "Jump" and (Disable_Jump == true) then
		Humanoid.Jump = false
	end
end)

		ANIMATE.Parent = nil
		local IDLEANIMATION = Humanoid:LoadAnimation(ROBLOXIDLEANIMATION)
		IDLEANIMATION:Play()

while true do
	Swait()
	SINE = SINE + CHANGE
	local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	local LV = Torso.CFrame:pointToObjectSpace(Torso.Velocity - Torso.Position)
	local HITFLOOR = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4 * Player_Size, Character)
	local WALKSPEEDVALUE = 6 / (Humanoid.WalkSpeed / 16)
	if ATTACK == false then
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size + 0.05 * COS(SINE / 12) * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.3 * Player_Size - 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size - 0.2 * COS(SINE / 12) * Player_Size, -0.01 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)

		limbweld1a.C0 = Clerp(limbweld1a.C0, CF(5 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-25), RAD(8+(5 * COS(SINE / 30))), RAD(-125)), 0.4 / Animation_Speed)
		limbweld1b.C0 = Clerp(limbweld1b.C0, CF(0* Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-56), RAD(-5 * COS(SINE / 30)), RAD(0)), 0.4 / Animation_Speed)
		limbweld1c.C0 = Clerp(limbweld1c.C0, CF(0 * Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.4 / Animation_Speed)

		limbweld2a.C0 = Clerp(limbweld2a.C0, CF(-5 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-25), RAD(-8+(-5 * COS(SINE / 30))), RAD(125)), 0.4 / Animation_Speed)
		limbweld2b.C0 = Clerp(limbweld2b.C0, CF(0* Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-56), RAD(5 * COS(SINE / 30)), RAD(0)), 0.4 / Animation_Speed)
		limbweld2c.C0 = Clerp(limbweld2c.C0, CF(0 * Player_Size, 8 * Player_Size, 0 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.4 / Animation_Speed)
	end
if #Effects2>0 then
for e=1,#Effects2 do
if Effects2[e]~=nil then
local Thing=Effects2[e]
if Thing~=nil then
local Part=Thing[1]
local Mode=Thing[2]
local Delay=Thing[3]
local IncX=Thing[4]
local IncY=Thing[5]
local IncZ=Thing[6]
local Part2=Thing[8]
if Thing[1].Transparency<=1 then
if Thing[2]=="Block1" then
Thing[1].CFrame=Thing[1].CFrame
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+VT(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Cylinder" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+VT(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Blood" then
Mesh=Thing[7]
Thing[1].CFrame=Thing[1].CFrame*CF(0,.5,0)
Mesh.Scale=Mesh.Scale+VT(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Elec" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+VT(Thing[7],Thing[8],Thing[9])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Disappear" then
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
end
else
Part.Parent=nil
table.remove(Effects2,e)
end
end
end
end
end
unanchor()
Humanoid.MaxHealth = "inf"
Humanoid.Health = "inf"
if Rooted == false then
	Disable_Jump = false
	Humanoid.WalkSpeed = Speed
elseif Rooted == true then
	Disable_Jump = true
	Humanoid.WalkSpeed = 0
end
q = Character:GetChildren()
for u = 1, #q do
	if q[u].ClassName == "Accessory" or q[u].ClassName == "Hat" then
		q[u]:remove()
	elseif q[u].ClassName == "Shirt" then
		q[u]:Destroy()
	elseif q[u].ClassName == "Pants" then
		q[u]:Destroy()
	elseif q[u].ClassName == "CharacterMesh" then
		q[u]:remove()
	elseif q[u].ClassName == "ShirtGraphic" then
		q[u]:remove()
	elseif q[u].ClassName == "Part" and q[u].Name ~= "HumanoidRootPart" then
		q[u].Color = Color3.new(0/255, 0/255, 0/255)
	end
end
if Head:FindFirstChild("face") then
	Head.face:remove()
end
end

--//=================================\\
--\\=================================//





--//====================================================\\--
--||			  		 END OF SCRIPT
--\\====================================================//--