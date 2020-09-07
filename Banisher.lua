--The Banisher
--Script built by PhoenixAceVFX
--Only client side but great for pranks
--Can be server side IF you can backdoor the server with the executor
--Looks best with Synapse
 
wait(0.2)
Player = game:GetService("Players").LocalPlayer
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = Player.Character
Humanoid = Character.Humanoid
Mouse = Player:GetMouse()
RootPart = Character.HumanoidRootPart
Torso = Character.Torso
Head = Character.Head
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart.RootJoint
Neck = Torso.Neck
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]
local LastBolt
local LightningBolts = {}
local GunPoint
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
            NEWMESH.MeshId = "http://www.roblox.com/asset/?id=" .. MESHID
        end
        if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
            NEWMESH.TextureId = "http://www.roblox.com/asset/?id=" .. TEXTUREID
        end
    end
    NEWMESH.Offset = OFFSET or VT(0, 0, 0)
    NEWMESH.Scale = SCALE
    NEWMESH.Parent = PARENT
    return NEWMESH
end
function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
    local NEWPART = IT("Part")
    NEWPART.formFactor = FORMFACTOR
    NEWPART.Reflectance = REFLECTANCE
    NEWPART.Transparency = TRANSPARENCY
    NEWPART.CanCollide = false
    NEWPART.Locked = true
    NEWPART.Anchored = true
    if ANCHOR == false then
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
Player_Size = 1
Animation_Speed = 3
Frame_Speed = 0.016666666666666666
local Speed = 16
local Effects2 = {}
local weldBetween = function(a, b)
    local weldd = Instance.new("ManualWeld")
    weldd.Part0 = a
    weldd.Part1 = b
    weldd.C0 = CFrame.new()
    weldd.C1 = b.CFrame:inverse() * a.CFrame
    weldd.Parent = a
    return weldd
end
function createaccessory(attachmentpart, mesh, texture, scale, offset, color)
    local acs = Instance.new("Part")
    acs.CanCollide = false
    acs.Anchored = false
    acs.Size = Vector3.new(0, 0, 0)
    acs.CFrame = attachmentpart.CFrame
    acs.Parent = Character
    acs.BrickColor = color
    local meshs = Instance.new("SpecialMesh")
    meshs.MeshId = mesh
    meshs.TextureId = texture
    meshs.Parent = acs
    meshs.Scale = scale
    meshs.Offset = offset
    weldBetween(attachmentpart, acs)
end
function createbodypart(TYPE, COLOR, PART, OFFSET, SIZE)
    if TYPE == "Gem" then
        local acs = CreatePart(3, Character, "Plastic", 0, 0, COLOR, "Part", VT(0, 0, 0))
        acs.Anchored = false
        acs.CanCollide = false
        acs.CFrame = PART.CFrame
        local acs2 = CreateMesh("SpecialMesh", acs, "FileMesh", "9756362", "", SIZE, OFFSET)
        weldBetween(PART, acs)
    elseif TYPE == "Skull" then
        local acs = CreatePart(3, Character, "Plastic", 0, 0, COLOR, "Part", VT(0, 0, 0))
        acs.Anchored = false
        acs.CanCollide = false
        acs.CFrame = PART.CFrame
        local acs2 = CreateMesh("SpecialMesh", acs, "FileMesh", "4770583", "", SIZE, OFFSET)
        weldBetween(PART, acs)
    elseif TYPE == "Eye" then
        local acs = CreatePart(3, Character, "Neon", 0, 0, COLOR, "Part", VT(0, 0, 0))
        acs.Anchored = false
        acs.CanCollide = false
        acs.CFrame = PART.CFrame
        local acs2 = CreateMesh("SpecialMesh", acs, "Sphere", "", "", SIZE, OFFSET)
        weldBetween(PART, acs)
    end
end
local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local CHANGEDEFENSE = 0
local CHANGEDAMAGE = 0
local CHANGEMOVEMENT = 0
local ANIM = "Idle"
local ATTACK = false
local EQUIPPED = false
local HOLD = false
local COMBO = 1
local Rooted = false
local SINE = 0
local KEYHOLD = false
local CHANGE = 2 / Animation_Speed
local WALKINGANIM = false
local WALK = 0
local VALUE1 = false
local VALUE2 = false
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
local WEAPONGUI = IT("ScreenGui", PlayerGui)
WEAPONGUI.Name = "Weapon GUI"
local Weapon = IT("Model")
Weapon.Name = "Adds"
local Delete = IT("Model", Character)
Delete.Name = "Those who must be banished."
local Effects = IT("Folder", Weapon)
Effects.Name = "Effects"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character.Animate
local HITPLAYERSOUNDS = {
    "263032172",
    "263032182",
    "263032200",
    "263032221",
    "263032252",
    "263033191"
}
local HITARMORSOUNDS = {
    "199149321",
    "199149338",
    "199149367",
    "199149409",
    "199149452"
}
local HITWEAPONSOUNDS = {
    "199148971",
    "199149025",
    "199149072",
    "199149109",
    "199149119"
}
local HITBLOCKSOUNDS = {"199148933", "199148947"}
local UNANCHOR = true
local SKILLTEXTCOLOR = C3(1, 0, 0)
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
        if m00 < m11 then
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
            local recip = 0.5 / s
            return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
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
    local startInterp, finishInterp
    if cosTheta >= 1.0E-4 then
        if 1 - cosTheta > 1.0E-4 then
            local theta = ACOS(cosTheta)
            local invSinTheta = 1 / SIN(theta)
            startInterp = SIN((1 - t) * theta) * invSinTheta
            finishInterp = SIN(t * theta) * invSinTheta
        else
            startInterp = 1 - t
            finishInterp = t
        end
    elseif 1 + cosTheta > 1.0E-4 then
        local theta = ACOS(-cosTheta)
        local invSinTheta = 1 / SIN(theta)
        startInterp = SIN((t - 1) * theta) * invSinTheta
        finishInterp = SIN(t * theta) * invSinTheta
    else
        startInterp = t - 1
        finishInterp = t
    end
    return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end
function Clerp(a, b, t)
    local qa = {
        QuaternionFromCFrame(a)
    }
    local qb = {
        QuaternionFromCFrame(b)
    }
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
local SOUND = IT("Sound", nil)
function CreateSound(ID, PARENT, VOLUME, PITCH)
    local NEWSOUND
    coroutine.resume(coroutine.create(function()
        NEWSOUND = SOUND:Clone()
        NEWSOUND.Parent = PARENT
        NEWSOUND.Volume = VOLUME
        NEWSOUND.Pitch = PITCH
        NEWSOUND.SoundId = "http://www.roblox.com/asset/?id=" .. ID
        NEWSOUND:play()
        repeat
            Swait()
        until NEWSOUND.Playing == false
        NEWSOUND:remove()
    end))
    return NEWSOUND
end
function CFrameFromTopBack(at, top, back)
    local right = top:Cross(back)
    return CF(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end
function CreateWave(SIZE, WAIT, CFRAME, DOESROT, ROT, COLOR, GROW)
    local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(COLOR), "Effect", VT(0, 0, 0))
    local mesh = IT("SpecialMesh", wave)
    mesh.MeshType = "FileMesh"
    mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
    mesh.Scale = SIZE
    mesh.Offset = VT(0, 0, -SIZE.X / 8)
    wave.CFrame = CFRAME
    coroutine.resume(coroutine.create(function(PART)
        for i = 1, WAIT do
            Swait()
            mesh.Scale = mesh.Scale + GROW
            mesh.Offset = VT(0, 0, -(mesh.Scale.X / 8))
            if DOESROT == true then
                wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0, ROT, 0)
            end
            wave.Transparency = wave.Transparency + 0.5 / WAIT
            if wave.Transparency > 0.99 then
                wave:remove()
            end
        end
    end))
end
function CreateCrown(SIZE, WAIT, CFRAME, DOESROT, ROT, COLOR, GROW)
    local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(COLOR), "Effect", VT(0, 0, 0))
    local mesh = IT("SpecialMesh", wave)
    mesh.MeshType = "FileMesh"
    mesh.MeshId = "http://www.roblox.com/asset/?id=1078075"
    mesh.Scale = SIZE
    mesh.Offset = VT(0, 0, -SIZE.X / 8)
    wave.CFrame = CFRAME
    coroutine.resume(coroutine.create(function(PART)
        for i = 1, WAIT do
            Swait()
            mesh.Scale = mesh.Scale + GROW
            mesh.Offset = VT(0, 0, -(mesh.Scale.X / 8))
            if DOESROT == true then
                wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0, ROT, 0)
            end
            wave.Transparency = wave.Transparency + 0.5 / WAIT
            if wave.Transparency > 0.99 then
                wave:remove()
            end
        end
    end))
end
function CreateIceCrown(SIZE, WAIT, CFRAME, DOESROT, ROT, COLOR, GROW)
    local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(COLOR), "Effect", VT(0, 0, 0))
    local mesh = IT("SpecialMesh", wave)
    mesh.MeshType = "FileMesh"
    mesh.MeshId = "http://www.roblox.com/asset/?id=1323306"
    mesh.Scale = SIZE
    mesh.Offset = VT(0, 0, -SIZE.X / 8)
    wave.CFrame = CFRAME
    coroutine.resume(coroutine.create(function(PART)
        for i = 1, WAIT do
            Swait()
            mesh.Scale = mesh.Scale + GROW
            mesh.Offset = VT(0, 0, -(mesh.Scale.X / 8))
            if DOESROT == true then
                wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0, ROT, 0)
            end
            wave.Transparency = wave.Transparency + 0.5 / WAIT
            if wave.Transparency > 0.99 then
                wave:remove()
            end
        end
    end))
end
function CreateSpikeball(SIZE, WAIT, CFRAME, DOESROT, ROT, COLOR, GROW)
    local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(COLOR), "Effect", VT(0, 0, 0))
    local mesh = IT("SpecialMesh", wave)
    mesh.MeshType = "FileMesh"
    mesh.MeshId = "http://www.roblox.com/asset/?id=9982590"
    mesh.Scale = SIZE
    mesh.Offset = VT(0, 0, -SIZE.X / 8)
    wave.CFrame = CFRAME
    coroutine.resume(coroutine.create(function(PART)
        for i = 1, WAIT do
            Swait()
            mesh.Scale = mesh.Scale + GROW
            mesh.Offset = VT(0, 0, -(mesh.Scale.X / 8))
            if DOESROT == true then
                wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0, ROT, 0)
            end
            wave.Transparency = wave.Transparency + 0.5 / WAIT
            if wave.Transparency > 0.99 then
                wave:remove()
            end
        end
    end))
end
function CreateSwirl(SIZE, WAIT, CFRAME, DOESROT, ROT, COLOR, GROW)
    local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(COLOR), "Effect", VT(0, 0, 0))
    local mesh = IT("SpecialMesh", wave)
    mesh.MeshType = "FileMesh"
    mesh.MeshId = "http://www.roblox.com/asset/?id=1051557"
    mesh.Scale = SIZE
    wave.CFrame = CFRAME
    coroutine.resume(coroutine.create(function(PART)
        for i = 1, WAIT do
            Swait()
            mesh.Scale = mesh.Scale + GROW
            mesh.Offset = VT(0, 0, -(mesh.Scale.X / 8))
            if DOESROT == true then
                wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0, ROT, 0)
            end
            wave.Transparency = wave.Transparency + 0.5 / WAIT
            if wave.Transparency > 0.99 then
                wave:remove()
            end
        end
    end))
end
function CreateTornado(SIZE, DOESROT, ROT, WAIT, CFRAME, COLOR, GROW)
    local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(COLOR), "Effect", VT(0, 0, 0))
    local mesh = IT("SpecialMesh", wave)
    mesh.MeshType = "FileMesh"
    mesh.MeshId = "http://www.roblox.com/asset/?id=102638417"
    mesh.Scale = SIZE
    wave.CFrame = CFRAME
    coroutine.resume(coroutine.create(function(PART)
        for i = 1, WAIT do
            Swait()
            mesh.Scale = mesh.Scale + GROW
            if DOESROT == true then
                wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0, ROT, 0)
            end
            wave.Transparency = wave.Transparency + 0.5 / WAIT
            if wave.Transparency > 0.99 then
                wave:remove()
            end
        end
    end))
end
function CreateRing(SIZE, DOESROT, ROT, WAIT, CFRAME, COLOR, GROW)
    local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(COLOR), "Effect", VT(0, 0, 0))
    local mesh = IT("SpecialMesh", wave)
    mesh.MeshType = "FileMesh"
    mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
    mesh.Scale = SIZE
    mesh.Offset = VT(0, 0, 0)
    wave.CFrame = CFRAME
    coroutine.resume(coroutine.create(function(PART)
        for i = 1, WAIT do
            Swait()
            mesh.Scale = mesh.Scale + GROW
            if DOESROT == true then
                wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0, ROT, 0)
            end
            wave.Transparency = wave.Transparency + 0.5 / WAIT
            if wave.Transparency > 0.99 then
                wave:remove()
            end
        end
    end))
end
function MagicSphere(SIZE, WAIT, CFRAME, COLOR, GROW)
    local wave = CreatePart(3, Effects, "Neon", 0, 0, BRICKC(COLOR), "Effect", VT(1, 1, 1), true)
    local mesh = IT("SpecialMesh", wave)
    mesh.MeshType = "Sphere"
    mesh.Scale = SIZE
    mesh.Offset = VT(0, 0, 0)
    wave.CFrame = CFRAME
    coroutine.resume(coroutine.create(function(PART)
        for i = 1, WAIT do
            Swait()
            mesh.Scale = mesh.Scale + GROW
            wave.Transparency = wave.Transparency + 1 / WAIT
            if wave.Transparency > 0.99 then
                wave:remove()
            end
        end
    end))
end
function MagicBlock(SIZE, WAIT, CFRAME, COLOR, GROW)
    local wave = CreatePart(3, Effects, "Neon", 0, 0, BRICKC(COLOR), "Effect", VT(SIZE, SIZE, SIZE), true)
    local mesh = IT("BlockMesh", wave)
    wave.CFrame = CFRAME
    coroutine.resume(coroutine.create(function(PART)
        for i = 1, WAIT do
            Swait()
            mesh.Scale = mesh.Scale + GROW
            wave.CFrame = CFRAME * ANGLES(RAD(math.random(-360, 360)), RAD(math.random(-360, 360)), RAD(math.random(-360, 360)))
            wave.Transparency = wave.Transparency + 1 / WAIT
            if wave.Transparency > 0.99 then
                wave:remove()
            end
        end
    end))
end
function MakeForm(PART, TYPE)
    if TYPE == "Cyl" then
        local MSH = IT("CylinderMesh", PART)
    elseif TYPE == "Ball" then
        local MSH = IT("SpecialMesh", PART)
        MSH.MeshType = "Sphere"
    elseif TYPE == "Wedge" then
        local MSH = IT("SpecialMesh", PART)
        MSH.MeshType = "Wedge"
    end
end
function CheckTableForString(Table, String)
    for i, v in pairs(Table) do
        if string.find(string.lower(String), string.lower(v)) then
            return true
        end
    end
    return false
end
function CheckIntangible(Hit)
    local ProjectileNames = {
        "Water",
        "Arrow",
        "Projectile",
        "Effect",
        "Rail",
        "Lightning",
        "Bullet"
    }
    if Hit and Hit.Parent and (not Hit.CanCollide or CheckTableForString(ProjectileNames, Hit.Name)) and not Hit.Parent:FindFirstChild("Humanoid") then
        return true
    end
    return false
end
Debris = game:GetService("Debris")
BaseLightning = IT("Part")
BaseLightning.Anchored = true
BaseLightning.CanCollide = false
BaseLightning.Material = "Neon"
function CastZapRay(StartPos, Vec, Length, Ignore, DelayIfHit)
    local Ignore = type(Ignore) == "table" and Ignore or {Ignore}
    local RayHit, RayPos, RayNormal = game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(StartPos, Vec * Length), Ignore)
    if RayHit and CheckIntangible(RayHit) then
        if DelayIfHit then
            wait()
        end
        RayHit, RayPos, RayNormal = CastZapRay(RayPos + Vec * 0.01, Vec, Length - (StartPos - RayPos).magnitude, Ignore, DelayIfHit)
    end
    return RayHit, RayPos, RayNormal
end
function Zap(Table)
    local StartPos, TargetPos, Character, Color = Table.StartPosition, Table.TargetPosition, Table.Character, Table.Color
    local Duration = Table.Duration or 2
    local FadeRate = Table.FadeRate or 0.05
    local Offset = Table.Offset or 2
    local Individualize = Table.Individualize or false
    local MaxRange = Table.MaxRange or 200
    local SegmentLength = Table.SegmentLength or 5
    local TimeToFade = Table.TimeToFade or 0.5
    local Ignore = Table.Ignore or {}
    local SIZE = Table.Size or 0.3
    if not (StartPos and TargetPos) or not Character then
        return
    end
    local LightningModel = IT("Folder", Effects)
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
    local LightningBolt = IT("Model", Effects)
    LightningBolt.Name = "Lightning"
    if not Individualize then
        table.insert(LightningBolts, LightningBolt)
    end
    LastBolt = LightningBolt
    Debris:AddItem(LightningBolt, Duration)
    LightningBolt.Parent = LightningModel
    for i = 1, TotalSegments do
        if not Struck then
            local Entropy = Vector3.new(math.random() * Offset * 2.5 - Offset, math.random() * Offset * 2.5 - Offset, math.random() * Offset * 2.5 - Offset)
            local NewPos = StartPos + Direction * (RayLength * (i / TotalSegments)) + Entropy
            local SegmentVec = NewPos - LastPos
            local RayHit, RayPos, RayNormal = CastZapRay(LastPos, SegmentVec.Unit, SegmentVec.Magnitude, {Character, LightningModel}, false)
            local RayVec = LastPos - RayPos
            local LightningPart = BaseLightning:Clone()
            LightningPart.BrickColor = BrickColor.new(Color)
            LightningPart.Size = Vector3.new(SIZE, SIZE, RayVec.Magnitude)
            LightningPart.CFrame = CFrame.new(LastPos, RayPos) * CFrame.new(0, 0, -(RayVec.Magnitude / 2))
            table.insert(Effects2, {
                LightningPart,
                "Disappear",
                0.025,
                1,
                1,
                1,
                2
            })
            local CylinderMesh = IT("CylinderMesh", LightningPart)
            local OrigCF = LightningPart.CFrame
            LightningPart.Size = Vector3.new(LightningPart.Size.X, LightningPart.Size.Z, LightningPart.Size.Y)
            LightningPart.CFrame = OrigCF * CFrame.Angles(math.pi / 2, 0, 0)
            LightningPart.Parent = LightningBolt
            LastPos = NewPos
        end
    end
    return {
        RayHit = RayHit,
        RayPos = RayPos,
        RayNormal = RayNormal,
        LightningModel = LightningModel
    }
end
function turnto(position)
    RootPart.CFrame = CFrame.new(RootPart.CFrame.p, VT(position.X, RootPart.Position.Y, position.Z)) * CFrame.new(0, 0, 0)
end
function chatfunc(text, waitt)
    local chat = coroutine.wrap(function()
        if Character:FindFirstChild("TalkingBillBoard") ~= nil then
            Character:FindFirstChild("TalkingBillBoard").Parent = nil
        end
        local naeeym2 = Instance.new("BillboardGui", Character)
        naeeym2.Size = UDim2.new(0, 100, 0, 40)
        naeeym2.StudsOffset = Vector3.new(0, 2, 0)
        naeeym2.Adornee = Character.Head
        naeeym2.Name = "TalkingBillBoard"
        naeeym2.AlwaysOnTop = true
        local tecks2 = Instance.new("TextLabel", naeeym2)
        tecks2.BackgroundTransparency = 1
        tecks2.BorderSizePixel = 0
        tecks2.Text = ""
        tecks2.Font = "Antique"
        tecks2.TextSize = 30
        tecks2.TextStrokeTransparency = 1
        tecks2.TextColor3 = SKILLTEXTCOLOR
        tecks2.TextStrokeColor3 = Color3.new(0, 0, 0)
        tecks2.Size = UDim2.new(1, 0, 0.5, 0)
        for i = 1, string.len(text) do
            if naeeym2.Parent ~= nil then
                CreateSound("418252437", Effects, 1, MRANDOM(9, 11) / 10)
            end
            tecks2.Text = string.sub(text, 1, i)
            Swait(3)
        end
        wait(waitt / 10)
        coroutine.resume(coroutine.create(function()
            for i = 1, 10 do
                tecks2.TextTransparency = tecks2.TextTransparency + 0.1
                Swait()
            end
            naeeym2:Destroy()
        end))
    end)
    chat()
end
for _, c in pairs(Weapon:GetChildren()) do
    if c.ClassName == "Part" then
        c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
    end
end
Weapon.Parent = Character
Humanoid.Died:connect(function()
    ATTACK = true
end)
local SKILL1FRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.23, 0, 0.8, 0), UD2(0.26, 0, 0.07, 0), C3(0, 0, 0), C3(0, 0, 0), "Skill 1 Frame")
local SKILL2FRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.5, 0, 0.8, 0), UD2(0.26, 0, 0.07, 0), C3(0, 0, 0), C3(0, 0, 0), "Skill 2 Frame")
local SKILL3FRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.23, 0, 0.93, 0), UD2(0.26, 0, 0.07, 0), C3(0, 0, 0), C3(0, 0, 0), "Skill 3 Frame")
local SKILL4FRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.5, 0, 0.93, 0), UD2(0.26, 0, 0.07, 0), C3(0, 0, 0), C3(0, 0, 0), "Skill 4 Frame")
local SKILL5FRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.365, 0, 0.7, 0), UD2(0.26, 0, 0.07, 0), C3(0, 0, 0), C3(0, 0, 0), "Skill 5 Frame")
local SKILL1TEXT = CreateLabel(SKILL1FRAME, "[Z] Banisher bullet", SKILLTEXTCOLOR, 8, "Antique", 0, 2, 1, "Text 1")
local SKILL2TEXT = CreateLabel(SKILL2FRAME, "[B] Banishing rampage", SKILLTEXTCOLOR, 8, "Antique", 0, 2, 1, "Text 2")
local SKILL3TEXT = CreateLabel(SKILL3FRAME, "[C] Warp vector", SKILLTEXTCOLOR, 8, "Antique", 0, 2, 1, "Text 3")
local SKILL4TEXT = CreateLabel(SKILL4FRAME, "[V] Spectral banish", SKILLTEXTCOLOR, 8, "Antique", 0, 2, 1, "Text 4")
local SKILL5TEXT = CreateLabel(SKILL5FRAME, "[X] De-banish", SKILLTEXTCOLOR, 8, "Antique", 0, 2, 1, "Text 5")
function CastWarpOutlines(TARGET)
    coroutine.resume(coroutine.create(function()
        local T = TARGET:GetChildren()
        for i = 1, #T do
            local child = T[i]
            if child.ClassName == "Part" or child.ClassName == "MeshPart" then
                do
                    local clone = child:Clone()
                    clone.Parent = Effects
                    clone.Anchored = true
                    clone.CanCollide = false
                    clone:ClearAllChildren()
                    clone.CFrame = child.CFrame
                    if clone.Name == "Head" then
                        clone.Size = VT(clone.Size.Y, clone.Size.Y, clone.Size.Y)
                    end
                    if clone.ClassName == "MeshPart" then
                        clone.TextureID = ""
                    end
                    clone.Color = C3(1, 0, 0)
                    clone.Material = "Neon"
                    coroutine.resume(coroutine.create(function()
                        for i = 1, 100 do
                            Swait()
                            clone.Transparency = clone.Transparency + 0.01
                            clone.Size = clone.Size + VT(0.001, 0.001, 0.001)
                        end
                        clone:remove()
                    end))
                end
            end
        end
    end))
end
function killnearest(position, range, maxstrength)
    for i, v in ipairs(workspace:GetChildren()) do
        local body = v:GetChildren()
        for part = 1, #body do
            if (body[part].ClassName == "Part" or body[part].ClassName == "MeshPart") and v ~= Character and range > (body[part].Position - position).Magnitude and v.ClassName == "Model" then
                CastWarpOutlines(v)
                v:remove()
                if game.Players:FindFirstChild(v.Name) then
                    local Value = IT("BoolValue", Delete)
                    Value.Name = v.Name
                end
            end
        end
    end
end
function CastProperRay(StartPos, Vec, Length, Ignore)
    local Direction = CFrame.new(StartPos, Vec).lookVector
    local Ignore = type(Ignore) == "table" and Ignore or {Ignore}
    local RayHit, RayPos, RayNormal = game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(StartPos, Direction * Length), Ignore)
    return RayHit, RayPos, RayNormal
end
function Debree(POS, SWAIT)
    coroutine.resume(coroutine.create(function()
        local HOLDER = IT("Model", Effects)
        HOLDER.Name = "Debree"
        local HITFLOOR = Raycast(POS, CF(POS, POS + VT(0, -1, 0)).lookVector, 4 * Player_Size, Character)
        MagicSphere(VT(15, 1, 15), SWAIT, CF(POS), "Really red", VT(0, 0, 0))
        MagicSphere(VT(13, 1, 13), SWAIT, CF(POS), "Really red", VT(0, 0, 0))
        MagicSphere(VT(12, 1, 12), SWAIT, CF(POS), "Really red", VT(0, 0, 0))
        repeat
            Swait()
        until HITFLOOR ~= nil
        local O = 0
        for i = 1, 18 do
            do
                local Part = CreatePart(3, HOLDER, HITFLOOR.Material, 0, 0, HITFLOOR.BrickColor, "Debree", VT(3, 3, 3))
                Part.CFrame = CF(CF(POS) * CF(10 - i, 0, O).p) * ANGLES(RAD(MRANDOM(-180, 180)), RAD(MRANDOM(-180, 180)), RAD(MRANDOM(-180, 180)))
                O = O - 2.25 + i / 4
                coroutine.resume(coroutine.create(function()
                    Swait(SWAIT)
                    for i = 1, 60 do
                        Swait()
                        local RayHit, Way = CastProperRay(Part.Position, POS, 0.1, workspace)
                        Part.CFrame = CF(Way) * ANGLES(RAD(MRANDOM(-180, 180)), RAD(MRANDOM(-180, 180)), RAD(MRANDOM(-180, 180)))
                    end
                    for i = 1, 50 do
                        Swait()
                        Part.Size = Part.Size * 0.9
                    end
                end))
            end
        end
        local O = 0
        for i = 1, 18 do
            do
                local Part = CreatePart(3, HOLDER, HITFLOOR.Material, 0, 0, HITFLOOR.BrickColor, "Debree", VT(3, 3, 3))
                Part.CFrame = CF(CF(POS) * CF(10 - i, 0, O).p) * ANGLES(RAD(MRANDOM(-180, 180)), RAD(MRANDOM(-180, 180)), RAD(MRANDOM(-180, 180)))
                O = O + 2.25 - i / 4
                coroutine.resume(coroutine.create(function()
                    Swait(SWAIT)
                    for i = 1, 60 do
                        Swait()
                        local RayHit, Way = CastProperRay(Part.Position, POS, 0.1, workspace)
                        Part.CFrame = CF(Way) * ANGLES(RAD(MRANDOM(-180, 180)), RAD(MRANDOM(-180, 180)), RAD(MRANDOM(-180, 180)))
                    end
                    for i = 1, 50 do
                        Swait()
                        Part.Size = Part.Size * 0.9
                    end
                end))
            end
        end
        Swait(SWAIT + 110)
        HOLDER:remove()
    end))
end
function Intro()
    coroutine.resume(coroutine.create(function()
        ATTACK = true
        Rooted = true
        for i = 0, 3, 0.1 / Animation_Speed do
            Swait()
            RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
            LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
        end
        CreateSound("649634100", Head, 10, 0.5)
        for i = 0, 1, 0.1 / Animation_Speed do
            Swait()
            RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -1.5) * ANGLES(RAD(0), RAD(5), RAD(0)), 0.5 / Animation_Speed)
            Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(15), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 1, -0.3) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
            LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1, 0.5, -0.75) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.5 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.4) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(5), RAD(0), RAD(90)), 0.5 / Animation_Speed)
        end
        local HITFLOOR = Raycast(RootPart.Position, CF(RootPart.Position, RootPart.Position + VT(0, -1, 0)).lookVector, 4 * Player_Size, Character)
        repeat
            Swait()
            HITFLOOR = Raycast(RootPart.Position, CF(RootPart.Position, RootPart.Position + VT(0, -1, 0)).lookVector, 4 * Player_Size, Character)
        until HITFLOOR ~= nil
        for i = 0, 0.5, 0.1 / Animation_Speed do
            Swait()
            RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -1.5) * ANGLES(RAD(0), RAD(-5), RAD(0)), 0.5 / Animation_Speed)
            Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(15), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0, -0.3) * ANGLES(RAD(0), RAD(0), RAD(8)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
            LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1, 0.5, -0.75) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.5 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.4) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(90)), 0.5 / Animation_Speed)
        end
        CreateSound("289842971", RightArm, 10, 1)
        Debree(CF(RightArm.Position) * CF(0, -0.75, 0).p, 200)
        Swait(45)
        local Gun = CreatePart(3, Weapon, "SmoothPlastic", 0, 0, "Really black", "Gun", VT(0, 0, 0), false)
        local HandleMesh = CreateMesh("SpecialMesh", Gun, "FileMesh", "430198390", "430198451", VT(0.02, 0.02, 0.02), VT(0, 0, 0))
        local Weld = CreateWeldOrSnapOrMotor("Weld", Gun, RightArm, Gun, CF(0, -1.7, -0.2) * ANGLES(RAD(0), RAD(90), RAD(-90)), CF(0, 0, 0))
        GunPoint = CreatePart(3, Weapon, "SmoothPlastic", 0, 1, "Really black", "Point blank", VT(0, 0, 0), false)
        local HandleWeld = CreateWeldOrSnapOrMotor("Weld", GunPoint, RightArm, GunPoint, CF(0, -3.1, -0.8) * ANGLES(RAD(0), RAD(0), RAD(135)), CF(0, 0, 0))
        local sick = Instance.new("Sound", Character)
        sick.SoundId = "rbxassetid://1140442110"
        sick.Looped = true
        sick.Pitch = 1
        sick.Volume = 1
        sick:Play()
        Swait(5)
        for i = 0, 1, 0.1 / Animation_Speed do
            Swait()
            RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -1.5) * ANGLES(RAD(0), RAD(5), RAD(0)), 0.5 / Animation_Speed)
            Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(15), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 1.25, -0.3) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
            LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1, 0.5, -0.75) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.5 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.4) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(5), RAD(0), RAD(90)), 0.5 / Animation_Speed)
        end
        VALUE1 = true
        Swait(10)
        ATTACK = false
        Rooted = false
    end))
end
function BanishingBullet()
    ATTACK = true
    Rooted = false
    for i = 0, 0.4, 0.1 / Animation_Speed do
        Swait()
        turnto(Mouse.Hit.p)
        RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
        Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
        RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
        LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
        RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
        LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
    end
    repeat
        for i = 0, 0.2, 0.1 / Animation_Speed do
            Swait()
            turnto(Mouse.Hit.p)
            RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
            Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
            RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
            LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
        end
        CreateSound("238353911", GunPoint, 10, MRANDOM(9, 11) / 10)
        MagicSphere(VT(0.1, 0.1, 0.1), 45, GunPoint.CFrame, "Really red", VT(0.1, 0.1, 0.1))
        MagicSphere(VT(0.1, 0.1, 0.1), 45, GunPoint.CFrame, "Really red", VT(0.05, 0.05, 0.05))
        local RayHit, Way = CastProperRay(GunPoint.Position, Mouse.Hit.p, 1500, Character)
        local distance = (GunPoint.Position - Way).magnitude
        for i = 1, 5 do
            local laser = Instance.new("Part", Effects)
            laser.Transparency = 0
            laser.CanCollide = false
            laser.Anchored = true
            laser.Color = C3(1, 0, 0)
            laser.Material = "Neon"
            laser.formFactor = Enum.FormFactor.Custom
            laser.Size = Vector3.new(0.15, 0.15, distance)
            laser.CFrame = CFrame.new(GunPoint.Position, Way) * CFrame.new(0, 0, -distance / 2)
            MagicSphere(VT(0.1, 0.1, 0.1), 45, CF(Way), "Really red", VT(0.05, 0.05, 0.05))
            for i = 1, 5 do
                MagicSphere(VT(0.2, 0.2, 1), 65, CF(CF(Way) * CF(MRANDOM(-1, 1), MRANDOM(-1, 1), MRANDOM(-1, 1)).p, Way), "Really red", VT(0.001, 0.001, 0), 0.5)
            end
            table.insert(Effects2, {
                laser,
                "Disappear",
                0.1,
                1,
                1,
                1,
                2
            })
            if RayHit ~= nil then
                local v = RayHit.Parent
                if v ~= nil and v.ClassName == "Model" then
                    CastWarpOutlines(v)
                    v.Parent = nil
                    if game.Players:FindFirstChild(v.Name) then
                        local Value = IT("BoolValue", Delete)
                        Value.Name = v.Name
                    end
                end
            end
        end
        for i = 0, 0.3, 0.1 / Animation_Speed do
            Swait()
            RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
            Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.25 / Animation_Speed)
            RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(15), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
            LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
        end
    until KEYHOLD == false
    ATTACK = false
    Rooted = false
end
function WarpVector()
    ATTACK = true
    Rooted = true
    for i = 0, 1, 0.1 / Animation_Speed do
        Swait()
        RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
        Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
        RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(45), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
        LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
        RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
        LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
    end
    Debree(CF(RootPart.Position) * CF(0, -2.8, 0).p, 75)
    UNANCHOR = false
    RootPart.Anchored = true
    for i = 0, 2, 0.1 / Animation_Speed do
        Swait()
        RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -10 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
        Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
        RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(45), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
        LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
        RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
        LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
    end
    local POS = RootPart.Position
    RootPart.CFrame = CF(CF(Mouse.Hit.p) * CF(0, 2.8, 0).p, POS)
    Debree(CF(RootPart.Position) * CF(0, -2.5, 0).p, 150)
    for i = 0, 2, 0.1 / Animation_Speed do
        Swait()
        RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
        Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
        RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(45), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
        LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
        RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
        LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
    end
    ATTACK = false
    Rooted = false
end
function BanishingRampage()
    ATTACK = true
    Rooted = false
    chatfunc("Be gone...", 3)
    for i = 0, 2, 0.1 / Animation_Speed do
        Swait()
        turnto(Mouse.Hit.p)
        RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -1.5) * ANGLES(RAD(0), RAD(0), RAD(45)), 0.5 / Animation_Speed)
        Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(15), RAD(0), RAD(-45)), 0.15 / Animation_Speed)
        RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 1, -0.3) * ANGLES(RAD(25), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
        LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
        RightHip.C0 = Clerp(RightHip.C0, CF(1, 0.5, -0.75) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
        LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.4) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
    end
    local HITFLOOR = Raycast(RootPart.Position, CF(RootPart.Position, RootPart.Position + VT(0, -1, 0)).lookVector, 4 * Player_Size, Character)
    repeat
        Swait()
        HITFLOOR = Raycast(RootPart.Position, CF(RootPart.Position, RootPart.Position + VT(0, -1, 0)).lookVector, 4 * Player_Size, Character)
    until HITFLOOR ~= nil
    CreateSound("238353911", GunPoint, 10, MRANDOM(9, 11) / 10)
    local SOUND = CreateSound("415700134", Effects, 10, 1.6)
    CreateSound("138677306", Effects, 7, 1.2)
    coroutine.resume(coroutine.create(function()
        local CFRAME = RootPart.CFrame * CF(0, -1.2, -3)
        local SIZE = 1
        while true do
            Swait()
            for i = 1, 2 do
                MagicSphere(VT(SIZE / 5, SIZE / 5, SIZE * 2), 65, CF(CFRAME * CF(MRANDOM(-5, 5), MRANDOM(-5, 5), MRANDOM(-5, 5)).p, CFRAME.p), "Really red", VT(0.001, 0.001, 0), 0.5)
            end
            do
                local Part = CreatePart(3, Effects, HITFLOOR.Material, 0, 0, HITFLOOR.BrickColor, "Debree", VT(SIZE / 5, SIZE / 5, SIZE / 5))
                Part.CFrame = CFRAME * CF(SIZE / 1.5, -0.7, 0) * ANGLES(RAD(MRANDOM(-180, 180)), RAD(MRANDOM(-180, 180)), RAD(MRANDOM(-180, 180)))
                coroutine.resume(coroutine.create(function()
                    Swait(200)
                    Part.Anchored = false
                end))
                local Part = CreatePart(3, Effects, HITFLOOR.Material, 0, 0, HITFLOOR.BrickColor, "Debree", VT(SIZE / 5, SIZE / 5, SIZE / 5))
                Part.CFrame = CFRAME * CF(-SIZE / 1.5, -0.7, 0) * ANGLES(RAD(MRANDOM(-180, 180)), RAD(MRANDOM(-180, 180)), RAD(MRANDOM(-180, 180)))
                coroutine.resume(coroutine.create(function()
                    Swait(200)
                    Part.Anchored = false
                end))
                MagicSphere(VT(SIZE, SIZE, SIZE), 75, CFRAME, "Really red", VT(-SIZE / 75, -SIZE / 75, -SIZE / 75))
                killnearest(CFRAME.p, SIZE, 0)
                SIZE = SIZE + 2
                CFRAME = CFRAME * CF(0, 0, -2)
                if SOUND.Playing == false then
                    break
                end
            end
        end
    end))
    MagicSphere(VT(0.1, 0.1, 0.1), 45, GunPoint.CFrame, "Really red", VT(0.1, 0.1, 0.1))
    MagicSphere(VT(0.1, 0.1, 0.1), 45, GunPoint.CFrame, "Really red", VT(0.05, 0.05, 0.05))
    for i = 0, 3, 0.1 / Animation_Speed do
        Swait()
        RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -1.5) * ANGLES(RAD(0), RAD(0), RAD(45)), 0.5 / Animation_Speed)
        Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(10), RAD(0), RAD(-45)), 0.15 / Animation_Speed)
        RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 1, -0.3) * ANGLES(RAD(55), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
        LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
        RightHip.C0 = Clerp(RightHip.C0, CF(1, 0.5, -0.75) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
        LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.4) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
    end
    ATTACK = false
    Rooted = false
end
function SpectralBanishing()
    ATTACK = true
    Rooted = false
    chatfunc("If you desire to be a ghost...", 20)
    for i = 0, 5, 0.1 / Animation_Speed do
        Swait()
        RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(45)), 0.25 / Animation_Speed)
        Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-45 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(-45)), 0.25 / Animation_Speed)
        RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(180), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(45), RAD(0)) * RIGHTSHOULDERC0, 0.25 / Animation_Speed)
        LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.25 / Animation_Speed)
        RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.25 / Animation_Speed)
        LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.25 / Animation_Speed)
    end
    chatfunc("Then move on to the afterlife!", 6)
    CreateSound("238353911", GunPoint, 10, MRANDOM(9, 11) / 10)
    MagicSphere(VT(0.1, 0.1, 0.1), 45, GunPoint.CFrame, "Really red", VT(0.1, 0.1, 0.1))
    MagicSphere(VT(0.1, 0.1, 0.1), 45, GunPoint.CFrame, "Really red", VT(0.05, 0.05, 0.05))
    local RayHit, Way = CastProperRay(GunPoint.Position, CF(GunPoint.Position) * CF(0, 1500, 0).p, 1500, Character)
    local distance = (GunPoint.Position - Way).magnitude
    for i = 1, 5 do
        local laser = Instance.new("Part", Effects)
        laser.Transparency = 0
        laser.CanCollide = false
        laser.Anchored = true
        laser.Color = C3(1, 0, 0)
        laser.Material = "Neon"
        laser.formFactor = Enum.FormFactor.Custom
        laser.Size = Vector3.new(0.15, 0.15, distance)
        laser.CFrame = CFrame.new(GunPoint.Position, Way) * CFrame.new(0, 0, -distance / 2)
        table.insert(Effects2, {
            laser,
            "Disappear",
            0.1,
            1,
            1,
            1,
            2
        })
    end
    coroutine.resume(coroutine.create(function()
        Swait(15)
        local FILTER = IT("ColorCorrectionEffect", game.Lighting)
        for i = 1, 25 do
            Swait()
            FILTER.TintColor = C3(1, 1 - i / 50, 1 - i / 50)
        end
        local GAME = game.Players:GetChildren()
        for PLAYER = 1, #GAME do
            do
                local PLAY = GAME[PLAYER]
                if PLAY.Character ~= nil and PLAY.Character.Parent ~= workspace then
                    PLAY.Character.Parent = nil
                    coroutine.resume(coroutine.create(function()
                        if PLAY.Character:FindFirstChild("HumanoidRootPart") then
                            PLAY.Character.Parent = workspace
                            local Value = IT("BoolValue", Delete)
                            Value.Name = PLAY.Name
                        end
                    end))
                end
            end
        end
        for i = 1, 25 do
            Swait()
            FILTER.TintColor = C3(1, 0.4980392156862745 + i / 50, 0.4980392156862745 + i / 50)
        end
    end))
    for i = 0, 2, 0.1 / Animation_Speed do
        Swait()
        RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(45)), 0.25 / Animation_Speed)
        Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-45 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(-45)), 0.25 / Animation_Speed)
        RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(195), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(45), RAD(0)) * RIGHTSHOULDERC0, 0.25 / Animation_Speed)
        LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.25 / Animation_Speed)
        RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.25 / Animation_Speed)
        LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.25 / Animation_Speed)
    end
    ATTACK = false
    Rooted = false
end
function Taunt()
    ATTACK = true
    Rooted = true
    CreateSound("649634100", Head, 10, 0.5)
    for i = 1, 3 do
        for i = 0, 0.7, 0.1 / Animation_Speed do
            Swait()
            RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.25 / Animation_Speed)
            Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(15)), 0.5 / Animation_Speed)
            RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(145)) * ANGLES(RAD(0), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.5)
            LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-145)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * LEFTSHOULDERC0, 0.5)
            RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.25 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.25 / Animation_Speed)
        end
        for i = 0, 0.7, 0.1 / Animation_Speed do
            Swait()
            RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.25 / Animation_Speed)
            Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(-15)), 0.5 / Animation_Speed)
            RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(145)) * ANGLES(RAD(0), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.5)
            LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-145)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * LEFTSHOULDERC0, 0.5)
            RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.25 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.25 / Animation_Speed)
        end
    end
    ATTACK = false
    Rooted = false
end
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
        BanishingBullet()
    end
    if Key == "b" and ATTACK == false then
        BanishingRampage()
    end
    if Key == "c" and ATTACK == false then
        WarpVector()
    end
    if Key == "v" and ATTACK == false then
        SpectralBanishing()
    end
    if Key == "x" and ATTACK == false then
        chatfunc("I will show you mercy.", 2)
        Delete:ClearAllChildren()
    end
    if Key == "t" and ATTACK == false then
        Taunt()
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
Humanoid.Changed:connect(function(Jump)
    if Jump == "Jump" and Disable_Jump == true then
        Humanoid.Jump = false
    end
end)
local BOLT
local FF = IT("ForceField", Character)
FF.Visible = false
while true do
    Swait()
    if BOLT ~= nil then
        BOLT:remove()
    end
    ANIMATE.Parent = nil
    local IDLEANIMATION = Humanoid:LoadAnimation(ROBLOXIDLEANIMATION)
    IDLEANIMATION:Play()
    SINE = SINE + CHANGE
    local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
    local TORSOVERTICALVELOCITY = RootPart.Velocity.y
    local LV = Torso.CFrame:pointToObjectSpace(Torso.Velocity - Torso.Position)
    local HITFLOOR = Raycast(RootPart.Position, CF(RootPart.Position, RootPart.Position + VT(0, -1, 0)).lookVector, 4 * Player_Size, Character)
    local WALKSPEEDVALUE = 6 / (Humanoid.WalkSpeed / 16)
    if ANIM == "Walk" and TORSOVELOCITY > 1 then
        RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, -0.1 * COS(SINE / (WALKSPEEDVALUE / 2)) * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
        Neck.C1 = Clerp(Neck.C1, CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(2.5 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0)), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
        RightHip.C1 = Clerp(RightHip.C1, CF(0.5 * Player_Size, 0.875 * Player_Size - 0.125 * SIN(SINE / WALKSPEEDVALUE) * Player_Size, -0.125 * COS(SINE / WALKSPEEDVALUE) * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(60 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
        LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5 * Player_Size, 0.875 * Player_Size + 0.125 * SIN(SINE / WALKSPEEDVALUE) * Player_Size, 0.125 * COS(SINE / WALKSPEEDVALUE) * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(60 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
    elseif ANIM ~= "Walk" or TORSOVELOCITY < 1 then
        RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
        Neck.C1 = Clerp(Neck.C1, CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
        RightHip.C1 = Clerp(RightHip.C1, CF(0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
        LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
    end
    if TORSOVERTICALVELOCITY > 1 and HITFLOOR == nil then
        ANIM = "Jump"
        if ATTACK == false then
            RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
            Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 * Player_Size, 0) * ANGLES(RAD(-20), RAD(0), RAD(0)), 0.2 / Animation_Speed)
            RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(25), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
            LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.3) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.3) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(20)), 0.2 / Animation_Speed)
        end
    elseif TORSOVERTICALVELOCITY < -1 and HITFLOOR == nil then
        ANIM = "Fall"
        if ATTACK == false then
            RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
            Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(20), RAD(0), RAD(0)), 0.2 / Animation_Speed)
            RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(55), RAD(0), RAD(55)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
            LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(20)), 0.2 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 0.2 / Animation_Speed)
        end
    elseif TORSOVELOCITY < 1 and HITFLOOR ~= nil then
        ANIM = "Idle"
        if ATTACK == false then
            RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(45), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
            LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
        end
    elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil then
        ANIM = "Walk"
        WALK = WALK + 1 / Animation_Speed
        if WALK >= 15 - 5 * (Humanoid.WalkSpeed / 16 / Player_Size) then
            WALK = 0
            if WALKINGANIM == true then
                WALKINGANIM = false
            elseif WALKINGANIM == false then
                WALKINGANIM = true
            end
        end
        if ATTACK == false then
            RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(45), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
            LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
        end
    end
    if #Effects2 > 0 then
        for e = 1, #Effects2 do
            if Effects2[e] ~= nil then
                local Thing = Effects2[e]
                if Thing ~= nil then
                    local Part = Thing[1]
                    local Mode = Thing[2]
                    local Delay = Thing[3]
                    local IncX = Thing[4]
                    local IncY = Thing[5]
                    local IncZ = Thing[6]
                    local Part2 = Thing[8]
                    if Thing[1].Transparency <= 1 then
                        if Thing[2] == "Block1" then
                            Thing[1].CFrame = Thing[1].CFrame
                            Mesh = Thing[1].Mesh
                            Mesh.Scale = Mesh.Scale + VT(Thing[4], Thing[5], Thing[6])
                            Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                        elseif Thing[2] == "Cylinder" then
                            Mesh = Thing[1].Mesh
                            Mesh.Scale = Mesh.Scale + VT(Thing[4], Thing[5], Thing[6])
                            Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                        elseif Thing[2] == "Blood" then
                            Mesh = Thing[7]
                            Thing[1].CFrame = Thing[1].CFrame * CF(0, 0.5, 0)
                            Mesh.Scale = Mesh.Scale + VT(Thing[4], Thing[5], Thing[6])
                            Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                        elseif Thing[2] == "Elec" then
                            Mesh = Thing[1].Mesh
                            Mesh.Scale = Mesh.Scale + VT(Thing[7], Thing[8], Thing[9])
                            Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                        elseif Thing[2] == "Disappear" then
                            Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                        end
                    else
                        Part.Parent = nil
                        table.remove(Effects2, e)
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
    if VALUE1 == true then
        local RayData = Zap({
            SegmentLength = 0.6,
            Offset = 0.3,
            Size = 0.05,
            MaxRange = 1.5,
            StartPosition = GunPoint.Position,
            TargetPosition = RightArm.Position,
            Character = workspace,
            Color = "Really red",
            Individual = true
        })
        BOLT = RayData.LightningModel
        MagicSphere(VT(0.5, 0.5, 0.5), 15, GunPoint.CFrame, "Really red", VT(-0.03333333333333333, -0.03333333333333333, -0.03333333333333333))
        SKILL1TEXT.TextTransparency = 0
        SKILL2TEXT.TextTransparency = 0
        SKILL3TEXT.TextTransparency = 0
        SKILL4TEXT.TextTransparency = 0
        SKILL5TEXT.TextTransparency = 0
    elseif VALUE1 == false then
        if ATTACK == false then
            Intro()
        end
        SKILL1TEXT.TextTransparency = 1
        SKILL2TEXT.TextTransparency = 1
        SKILL3TEXT.TextTransparency = 1
        SKILL4TEXT.TextTransparency = 1
        SKILL5TEXT.TextTransparency = 1
    end
    local MATHS = {"0", "1"}
    Humanoid.Name = MATHS[MRANDOM(1, #MATHS)] .. MATHS[MRANDOM(1, #MATHS)] .. MATHS[MRANDOM(1, #MATHS)] .. MATHS[MRANDOM(1, #MATHS)] .. MATHS[MRANDOM(1, #MATHS)] .. MATHS[MRANDOM(1, #MATHS)] .. MATHS[MRANDOM(1, #MATHS)] .. MATHS[MRANDOM(1, #MATHS)] .. MATHS[MRANDOM(1, #MATHS)] .. MATHS[MRANDOM(1, #MATHS)] .. MATHS[MRANDOM(1, #MATHS)] .. MATHS[MRANDOM(1, #MATHS)] .. MATHS[MRANDOM(1, #MATHS)] .. MATHS[MRANDOM(1, #MATHS)] .. MATHS[MRANDOM(1, #MATHS)] .. MATHS[MRANDOM(1, #MATHS)] .. MATHS[MRANDOM(1, #MATHS)] .. MATHS[MRANDOM(1, #MATHS)]
    Humanoid.PlatformStand = false
    local GAME = game.Players:GetChildren()
    for PLAYER = 1, #GAME do
        local PLAY = GAME[PLAYER]
        if PLAY.Character ~= nil and Delete:FindFirstChild(PLAY.Name) then
            PLAY.Character:remove()
        end
    end
end
