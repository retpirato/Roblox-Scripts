local speed = 20 --CHANGE THIS NUMBER TO SET THE WALKSPEED OF THE PLAYER



local model = game:GetObjects("rbxassetid://679683510")[1]
for i,v in pairs(model:GetChildren()) do 
v.Parent = game:GetService("ReplicatedStorage")
end
local Player = game:service("Players").LocalPlayer
repeat
  wait()
until Player.Character ~= nil
local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer
local char = plr.Character
local bp = plr.Backpack
local hum = char.Humanoid
local T = char.Torso
local Character = char
local Humanoid = hum
local torso = char.Torso
local Char = Player.Character
local char = Char
local mouse = Player:GetMouse()
local Backpack = Player.Backpack
local PlayerGui = Player.PlayerGui
local Camera = workspace.CurrentCamera
local Humanoid = Char:WaitForChild("Humanoid")
local Torso = Char:WaitForChild("Torso")
local Head = Char:WaitForChild("Head")
local ra = Char:WaitForChild("Right Arm")
local la = Char:WaitForChild("Left Arm")
local rl = Char:WaitForChild("Right Leg")
local ll = Char:WaitForChild("Left Leg")
local rs = Torso:WaitForChild("Right Shoulder")
local ls = Torso:WaitForChild("Left Shoulder")
local rh = Torso:WaitForChild("Right Hip")
local lh = Torso:WaitForChild("Left Hip")
local neck = Torso:WaitForChild("Neck")
local rootpart = Char:WaitForChild("HumanoidRootPart")
local rj = rootpart:WaitForChild("RootJoint")
local anim = Char:WaitForChild("Animate")
local RunService = game:GetService("RunService")
local UIA = game:GetService("UserInputService")
local CF = CFrame.new
local CA = CFrame.Angles
local FEA = CFrame.fromEulerAnglesXYZ
local FAA = CFrame.fromAxisAngle
local V3 = Vector3.new
local CN = Color3.new
local Ice = Instance.new
local BC = BrickColor.new
local UD2 = UDim2.new
local C3 = Color3.new
local MR = math.rad
local MP = math.pi
local MD = math.deg
local MH = math.huge
local MS = math.sin
local MC = math.cos
local MT = math.tan
local MAS = math.asin
local MAC = math.acos
local MAT = math.atan
local components = CF().components
local State = "Calm"
local Slash = false
local Sheathed = false
local combocounter = 0
humanoid = char:findFirstChild("Humanoid")
hum = humanoid
torso = char:findFirstChild("Torso")
head = char.Head
ra = char:findFirstChild("Right Arm")
ra.CanCollide = true
la = char:findFirstChild("Left Arm")
la.CanCollide = true
rl = char:findFirstChild("Right Leg")
rl.CanCollide = true
ll = char:findFirstChild("Left Leg")
ll.CanCollide = true
rs = torso:findFirstChild("Right Shoulder")
ls = torso:findFirstChild("Left Shoulder")
rh = torso:findFirstChild("Right Hip")
lh = torso:findFirstChild("Left Hip")
neck = torso:findFirstChild("Neck")
rootpart = char:findFirstChild("HumanoidRootPart")
rj = rootpart:findFirstChild("RootJoint")
anim = char:findFirstChild("Animate")
camera = workspace.CurrentCamera
plr.CameraMaxZoomDistance = math.huge
pcall(function()
  anim:Destroy()
end)
pcall(function()
  char.Health.Disabled = true
end)
pcall(function()
  humanoid.Animator:Destroy()
end)
local rjo = rootpart.RootJoint:Clone()
function newWeld(wp0, wp1, wc0x, wc0y, wc0z)
  local wld = Instance.new("Weld", wp1)
  wld.Part0 = wp0
  wld.Part1 = wp1
  wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
  return wld
end
for k, v in pairs(char:children("")) do
  if v:isA("BasePart") then
    v.BrickColor = BrickColor.new("Really black")
  end
end
pcall(function()
  char["Body Colors"].HeadColor = BrickColor.new("Really black")
  char["Body Colors"].TorsoColor = BrickColor.new("Really black")
  char["Body Colors"].LeftArmColor = BrickColor.new("Really black")
  char["Body Colors"].RightArmColor = BrickColor.new("Really black")
  char["Body Colors"].LeftLegColor = BrickColor.new("Really black")
  char["Body Colors"].RightLegColor = BrickColor.new("Really black")
end)
local mult = 1
la.Size = la.Size * mult
ra.Size = ra.Size * mult
ll.Size = ll.Size * mult
rl.Size = rl.Size * mult
torso.Size = torso.Size * mult
head.Size = head.Size * mult
rootpart.Size = rootpart.Size * mult
local lm = newWeld(torso, la, -1.7 * mult, 0.5 * mult, 0)
lm.C1 = CFrame.new(0, 0.5 * mult, 0)
local rm = newWeld(torso, ra, 1.7 * mult, 0.5 * mult, 0)
rm.C1 = CFrame.new(0, 0.5 * mult, 0)
local neck = newWeld(torso, head, 0, mult, 0)
local llegm = newWeld(torso, ll, -0.5 * mult, -1 * mult, 0)
llegm.C1 = CFrame.new(0, mult, 0)
local rlegm = newWeld(torso, rl, 0.5 * mult, -1 * mult, 0)
rlegm.C1 = CFrame.new(0, mult, 0)
local rj = rjo:Clone()
rj.Part0 = rootpart
rj.Part1 = torso
rj.Parent = rootpart
neck.C1 = CFrame.new(0, -(mult / 2), 0)
neckc0 = neck.C0
rsc0 = rm.C0
lsc0 = lm.C0
llc0 = llegm.C0
rlc0 = rlegm.C0
rootc0 = rj.C0
rootc1 = rj.C1
wait()
function Create(Instanc, prop)
  local p = Instance.new(Instanc)
  for i, v in pairs(prop) do
    p[i] = v
  end
  return p
end
function rwait(num)
  if num == 0 or num == nil then
    game:service("RunService").Stepped:wait(0)
  else
    for i = 0, num do
      game:service("RunService").Stepped:wait(0)
    end
  end
  return true
end
local pony = Instance.new("PointLight", Torso)
pony.Name = "LePontyPontz"
pony.Brightness = 1
pony.Color = Color3.new(0, 1, 0)
coroutine.wrap(function()
  game:service("RunService").Stepped:connect(function()
    pony.Range = 5 + math.abs(math.sin(tick() / 2)) * 6
  end)
end)()
local setupPart = function(part)
  part.Anchored = true
  part.FormFactor = "Custom"
  part.CanCollide = false
  part.BrickColor = BrickColor.new("Sea green")
  part.Material = "Neon"
  part.TopSurface = "SmoothNoOutlines"
  part.BottomSurface = "SmoothNoOutlines"
  part.FrontSurface = "SmoothNoOutlines"
  part.BackSurface = "SmoothNoOutlines"
  part.LeftSurface = "SmoothNoOutlines"
  part.RightSurface = "SmoothNoOutlines"
end
function CFrameFromTopBack(at, top, back)
  local right = top:Cross(back)
  return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end
function CreateTriangle(parent, a, b, c)
  local this = {}
  local mPart1 = Instance.new("WedgePart")
  setupPart(mPart1)
  local mPart2 = Instance.new("WedgePart")
  setupPart(mPart2)
  function this:Set(a, b, c)
    local ab, bc, ca = b - a, c - b, a - c
    local abm, bcm, cam = ab.magnitude, bc.magnitude, ca.magnitude
    local edg1 = math.abs(0.5 + ca:Dot(ab) / (abm * abm))
    local edg2 = math.abs(0.5 + ab:Dot(bc) / (bcm * bcm))
    local edg3 = math.abs(0.5 + bc:Dot(ca) / (cam * cam))
    if edg1 < edg2 then
      if edg1 < edg3 then
      else
        a, b, c = c, a, b
        ab, bc, ca = ca, ab, bc
        abm = cam
      end
    elseif edg2 < edg3 then
      a, b, c = b, c, a
      ab, bc, ca = bc, ca, ab
      abm = bcm
    else
      a, b, c = c, a, b
      ab, bc, ca = ca, ab, bc
      abm = cam
    end
    local len1 = -ca:Dot(ab) / abm
    local len2 = abm - len1
    local width = (ca + ab.unit * len1).magnitude
    local maincf = CFrameFromTopBack(a, ab:Cross(bc).unit, -ab.unit)
    mPart1.Parent = parent
    mPart1.Size = Vector3.new(1, 1, 1)
    mPart1.CFrame = maincf * CFrame.Angles(math.pi, 0, math.pi / 2) * CFrame.new(0, width / 2, len1 / 2)
    local Mesh = Instance.new("SpecialMesh", mPart1)
    Mesh.MeshType = "Wedge"
    Mesh.Scale = Vector3.new(0.005, width, len1)
    mPart2.Parent = parent
    mPart2.Size = Vector3.new(1, 1, 1)
    mPart2.CFrame = maincf * CFrame.Angles(math.pi, math.pi, -math.pi / 2) * CFrame.new(0, width / 2, -len1 - len2 / 2)
    local Mesh = Instance.new("SpecialMesh", mPart2)
    Mesh.MeshType = "Wedge"
    Mesh.Scale = Vector3.new(0.005, width, len2)
  end
  function this:SetProperty(prop, value)
    mPart1[prop] = value
    mPart2[prop] = value
  end
  function this:GetProperty(prop)
    return mPart1[prop]
  end
  this:Set(a, b, c)
  function this:Destroy()
    mPart1:Destroy()
    mPart2:Destroy()
  end
  return this
end
local ttt
local lastdps = tick()
local ohp = hum.Health
local berserk = false
hum.Changed:connect(function(val)
  if val == "Health_XML" then
    if hum.Health < ohp then
      lastdps = tick()
    end
    ohp = hum.Health
    if not berserk and hum.Health < hum.MaxHealth * 0.15 then
      ttt = true
      hum.WalkSpeed = 0
      hum.MaxHealth = 1 / 0
      otheranims = true
      do
        local rs = game:service("RunService").Stepped
        function GW()
          local wave = Instance.new("Part", Torso)
          wave.BrickColor = BrickColor.new("Really black")
          wave.Anchored = true
          wave.CanCollide = false
          wave.Locked = true
          wave.Size = Vector3.new(1, 1, 1)
          wave.TopSurface = "Smooth"
          wave.BottomSurface = "Smooth"
          wave.Material = "Neon"
          wave.Transparency = 0.35
          wave.CFrame = Torso.CFrame
          wm = Instance.new("SpecialMesh", wave)
          wm.MeshType = "Sphere"
          wm.Scale = Vector3.new(1, 1, 1)
          coroutine.wrap(function()
            for i = 0, 15 do
              wave.Size = wave.Size + Vector3.new(1, 1, 1)
              wave.CFrame = Torso.CFrame
              wave.Transparency = i / 14
              wait()
            end
            wait()
            wave:Destroy()
          end)()
        end
        Spawn(function()
          while ttt do
            GW()
            wait(math.random(1, 4))
          end
        end)
        local prtz = {
          la,
          Head,
          Torso
        }
        local pes = {}
        for i, v in pairs(prtz) do
          coroutine.wrap(function()
            local dsa = Instance.new("ParticleEmitter", v)
            local color1 = Color3.new(0.5, 1, 0.5)
            local color2 = Color3.new(0, 0.3333333333333333, 0)
            local sequence = ColorSequence.new(color1, color2)
            dsa.Color = sequence
            dsa.LightEmission = 0.8
            dsa.Texture = "http://www.roblox.com/asset/?id=242102147"
            dsa.LockedToPart = true
            dsa.EmissionDirection = "Top"
            dsa.Lifetime = NumberRange.new(1)
            dsa.VelocitySpread = 10
            dsa.Size = NumberSequence.new(1)
            table.insert(pes, dsa)
          end)()
        end
        Mode = "Kneeling"
        berserk = true
        wait(2)
        hum.MaxHealth = 10000
        for i = 500, 7500, 15 do
          hum.Health = i
          game:service("RunService").Stepped:wait()
        end
        ttt = false
        for q, e in pairs(pes) do
          game.Destroy(e)
        end
        hum.WalkSpeed = speed
        otheranims = false
      end
    end
  elseif val == "PlatformStand" then
    hum.PlatformStand = false
  elseif val == "Sit" then
    hum.Sit = false
  elseif val == "WalkSpeed" then
  end
end)
regening = false
lastdps = tick()
function regenHealth()
  if regening then
    return
  end
  if tick() - lastdps < 25 then
    return
  end
  regening = true
  local s = wait(1)
  local health = hum.Health
  if health > 0 and health < hum.MaxHealth then
    local newHealthDelta = hum.MaxHealth * 0.03
    health = health + newHealthDelta
    hum.Health = math.min(health, hum.MaxHealth)
  end
  regening = false
end
local LastTrail
local Trails = {}
function asd(parent, string)
  repeat
    wait()
  until parent:FindFirstChild(string)
  wait()
  return parent:FindFirstChild(string)
end
local beamy = asd(game.ReplicatedStorage, "Beamy"):Clone()
local Model = asd(game.ReplicatedStorage, "mdl"):Clone()
Model.Parent = Char
local shm, swm, shem = Model:WaitForChild("Sheath"), Model:WaitForChild("Sword"), Model:WaitForChild("Shield")
local LAH, RAH, TH = shem:WaitForChild("LeftArmHandle"), swm:WaitForChild("RightArmHandle"), shm:WaitForChild("TorsoHandle")
LAH.Transparency, RAH.Transparency, TH.Transparency = 1, 1, 1
local law = Create("Weld", {
  Parent = la,
  Part0 = la,
  Part1 = LAH,
  C0 = CFrame.new(0, 0, 0)
})
local raw = Create("Weld", {
  Parent = ra,
  Part0 = ra,
  Part1 = RAH,
  C0 = CFrame.new(0, 0, 0)
})
local rawc0 = raw.C0
local lawc0 = law.C0
LAH.Anchored, RAH.Anchored, TH.Anchored = false, false, false
local torw = Create("Weld", {
  Parent = Torso,
  Part0 = Torso,
  Part1 = TH,
  C0 = CFrame.new(0, 0, 0)
})
TrailPart = Create("Part", {
  Parent = Char,
  Anchored = false,
  CanCollide = false,
  Size = V3(0, 5, 0),
  Transparency = 1
})
TrailPartMesh = Create("Snap", {
  Parent = TrailPart,
  Part0 = RAH,
  Part1 = TrailPart,
  C0 = CFrame.new(0, -1, -4.2) * CFrame.Angles(MR(90), 0, 0)
})
local get = game.ReplicatedStorage:FindFirstChild("GoldSuit"):Clone()
get.Parent = Char
local torso = get:WaitForChild("Torso")
local head = get:WaitForChild("Head")
local rightarm = get:WaitForChild("RightArm")
local leftarm = get:WaitForChild("LeftArm")
local rightleg = get:WaitForChild("RightLeg")
local leftleg = get:WaitForChild("LeftLeg")
Create("Weld", {
  Parent = torso.Handle,
  Part0 = Torso,
  Part1 = torso.Handle,
  C0 = CFrame.new(0, 0, 0)
})
Create("Weld", {
  Parent = head.Handle,
  Part0 = Head,
  Part1 = head.Handle,
  C0 = CFrame.new(0, 0, 0)
})
Create("Weld", {
  Parent = rightarm.Handle,
  Part0 = ra,
  Part1 = rightarm.Handle,
  C0 = CFrame.new(0, 0, 0)
})
Create("Weld", {
  Parent = leftarm.Handle,
  Part0 = la,
  Part1 = leftarm.Handle,
  C0 = CFrame.new(0, 0, 0)
})
Create("Weld", {
  Parent = leftleg.Handle,
  Part0 = ll,
  Part1 = leftleg.Handle,
  C0 = CFrame.new(0, 0, 0)
})
Create("Weld", {
  Parent = rightleg.Handle,
  Part0 = rl,
  Part1 = rightleg.Handle,
  C0 = CFrame.new(0, 0, 0)
})
function recurse(c)
  for i, v in pairs(c:children()) do
    if v:IsA("BasePart") then
      v.CustomPhysicalProperties = PhysicalProperties.new(0.001, 0.001, 0.001, 0.001, 0.001)
    end
    recurse(v)
  end
end
recurse(get)
recurse(Model)
ra.Transparency = 1
la.Transparency = 1
ll.Transparency = 1
rl.Transparency = 1
HitDB = {}
function Damage(part)
  smthn = part.Touched:connect(function(hit)
    Human = hit.Parent:findFirstChild("Humanoid")
    if Human ~= nil and hit.Parent.Name ~= Player.Name and Slash == true and HitDB[hit.Parent.Humanoid] == nil then
      coroutine.wrap(function()
        HitDB[hit.Parent.Humanoid] = true
        Human.Health = Human.Health - 25
        local vu = Instance.new("BodyVelocity", hit.Parent.Torso)
        vu.P = 500
        vu.maxForce = Vector3.new(10000000000, 5.0E21, 100000000000)
        vu.velocity = Head.CFrame.lookVector * 10
        game:GetService("Debris"):AddItem(vu, 0.267)
        wait(0.25)
        HitDB[hit.Parent.Humanoid] = nil
      end)()
    end
  end)
  return smthn
end
hum.WalkSpeed = speed
hum.MaxHealth = 10000
hum.Health = 10000
function lerp(weld, beglerp, endlerp, speed)
  if weld.ClassName == "Weld" or weld.ClassName == "Motor6D" then
    weld.C0 = beglerp:lerp(endlerp, speed)
  else
    weld.CFrame = beglerp:lerp(endlerp, speed)
  end
  return weld.ClassName == "Weld" or weld.ClassName == "Motor6D" and weld.C0 or weld.CFrame
end
function Ragdoll(Format, Character, Force)
  if Force ~= true then
    if Character:FindFirstChild("Ragdoll") ~= nil and Format == true then
      return false
    end
    if Character:FindFirstChild("Ragdoll") == nil and Format == false then
      return false
    end
  end
  local Head, Torso, Humanoid
  local Dead = false
  for _, Children in pairs(Character:GetChildren()) do
    if Children.ClassName == "ForceField" then
      Children:Remove()
    end
    if Children.Name == "" then
      Children:Remove()
    end
    if Children.Name == "Head" then
      Head = Children
    end
    if Children.Name == "Torso" then
      Torso = Children
    end
    if Children.ClassName == "Humanoid" then
      Humanoid = Children
    end
    if Children:IsA("Accoutrement") then
      if Children:FindFirstChild("Handle") ~= nil then
        if math.random(1, 3) == 1 then
          coroutine.wrap(function()
            Children.Parent = Workspace
            wait()
            Children.Parent = Character
            Children.Handle.CanCollide = true
          end)()
        else
          Children.Parent = Workspace
          Children.Handle.CanCollide = true
        end
      else
        Children:Remove()
      end
    end
  end
  if Humanoid ~= nil and Humanoid.Health <= 0 then
    Dead = true
  end
  if Torso ~= nil then
    for _, Children2 in pairs(Torso:GetChildren()) do
      if Children2:IsA("JointInstance") then
        Children2:Remove()
      end
    end
  end
  if Head ~= nil then
    if (function()
      if Dead == true and math.random(1, 2) == 1 then
        return true
      else
        return false
      end
    end)() == false then
      local Neck = Instance.new("Motor6D")
      Neck.Name = "Neck"
      Neck.Part0 = Torso
      Neck.Part1 = Head
      Neck.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, math.rad(180))
      Neck.C1 = CFrame.new(0, -0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, math.rad(180))
      Neck.MaxVelocity = 0.1
      Neck.Parent = Torso
    end
  end
  if Format == true then
    local Ragdoll = Instance.new("IntValue")
    Ragdoll.Name = "Ragdoll"
    Ragdoll.Parent = Character
    if Torso ~= nil then
      Torso.Velocity = Torso.Velocity / 1.25
      Torso.RotVelocity = Torso.RotVelocity / 1.25 + Head.CFrame.lookVector * 80
      if Dead == true and Humanoid ~= nil then
        local Humanoid2 = Humanoid:Clone()
        wait()
        Humanoid:Remove()
        Humanoid2.Parent = Character
        Humanoid = Humanoid2
      end
      local Limb = Character:FindFirstChild("Right Arm")
      if Limb ~= nil then
        Limb.Velocity = Torso.Velocity
        Limb.CFrame = Torso.CFrame * CFrame.new(1.5, 0, 0)
        local Joint = Instance.new("Glue")
        Joint.Name = "RightShoulder"
        Joint.Part0 = Torso
        Joint.Part1 = Limb
        Joint.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
        Joint.C1 = CFrame.new(0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
        Joint.Parent = Torso
        local Weight = Instance.new("Part")
        Weight.Name = ""
        Weight.TopSurface = 0
        Weight.BottomSurface = 0
        Weight.Shape = "Block"
        Weight.FormFactor = "Custom"
        Weight.Size = Vector3.new(1, 1, 1)
        Weight.Transparency = 1
        Weight.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
        Weight.Parent = Character
        local Weld = Instance.new("Weld")
        Weld.Part0 = Limb
        Weld.Part1 = Weight
        Weld.C0 = CFrame.new(0, -0.5, 0)
        Weld.Parent = Limb
      end
      local Limb = Character:FindFirstChild("Left Arm")
      if Limb then
        Limb.Velocity = Torso.Velocity
        Limb.CFrame = Torso.CFrame * CFrame.new(-1.5, 0, 0)
        local Joint = Instance.new("Glue")
        Joint.Name = "LeftShoulder"
        Joint.Part0 = Torso
        Joint.Part1 = Limb
        Joint.C0 = CFrame.new(-1.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
        Joint.C1 = CFrame.new(0, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
        Joint.Parent = Torso
        local Weight = Instance.new("Part")
        Weight.Name = ""
        Weight.TopSurface = 0
        Weight.BottomSurface = 0
        Weight.Shape = "Block"
        Weight.FormFactor = "Custom"
        Weight.Size = Vector3.new(1, 1, 1)
        Weight.Transparency = 1
        Weight.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
        Weight.Parent = Character
        local Weld = Instance.new("Weld")
        Weld.Part0 = Limb
        Weld.Part1 = Weight
        Weld.C0 = CFrame.new(0, -0.5, 0)
        Weld.Parent = Limb
      end
      local Limb = Character:FindFirstChild("Right Leg")
      if Limb then
        Limb.Velocity = Torso.Velocity
        Limb.CFrame = Torso.CFrame * CFrame.new(0.5, -2, 0)
        local Joint = Instance.new("Glue")
        Joint.Name = "RightHip"
        Joint.Part0 = Torso
        Joint.Part1 = Limb
        Joint.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
        Joint.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
        Joint.Parent = Torso
        local Weight = Instance.new("Part")
        Weight.Name = ""
        Weight.TopSurface = 0
        Weight.BottomSurface = 0
        Weight.Shape = "Block"
        Weight.FormFactor = "Custom"
        Weight.Size = Vector3.new(1, 1, 1)
        Weight.Transparency = 1
        Weight.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
        Weight.Parent = Character
        local Weld = Instance.new("Weld")
        Weld.Part0 = Limb
        Weld.Part1 = Weight
        Weld.C0 = CFrame.new(0, -0.5, 0)
        Weld.Parent = Limb
      end
      local Limb = Character:FindFirstChild("Left Leg")
      if Limb then
        Limb.Velocity = Torso.Velocity
        Limb.CFrame = Torso.CFrame * CFrame.new(-0.5, -2, 0)
        local Joint = Instance.new("Glue")
        Joint.Name = "LeftHip"
        Joint.Part0 = Torso
        Joint.Part1 = Limb
        Joint.C0 = CFrame.new(-0.5, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
        Joint.C1 = CFrame.new(0, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
        Joint.Parent = Torso
        local Weight = Instance.new("Part")
        Weight.Name = ""
        Weight.TopSurface = 0
        Weight.BottomSurface = 0
        Weight.Shape = "Block"
        Weight.FormFactor = "Custom"
        Weight.Size = Vector3.new(1, 1, 1)
        Weight.Transparency = 1
        Weight.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
        Weight.Parent = Character
        local Weld = Instance.new("Weld")
        Weld.Part0 = Limb
        Weld.Part1 = Weight
        Weld.C0 = CFrame.new(0, -0.5, 0)
        Weld.Parent = Limb
      end
      local Weight = Instance.new("Part")
      Weight.Name = ""
      Weight.TopSurface = 0
      Weight.BottomSurface = 0
      Weight.Shape = "Block"
      Weight.FormFactor = "Custom"
      Weight.Size = Vector3.new(1.75, 1.5, 1.1)
      Weight.Transparency = 1
      Weight.CFrame = Torso.CFrame * CFrame.new(0, 0.5, 0)
      Weight.Parent = Character
      local Weld = Instance.new("Weld")
      Weld.Part0 = Torso
      Weld.Part1 = Weight
      Weld.C0 = CFrame.new(0, 0.5, 0)
      Weld.Parent = Torso
    end
  elseif Format == false then
    if Character:FindFirstChild("Ragdoll") ~= nil then
      Character.Ragdoll:Remove()
    end
    if Torso ~= nil then
      local Limb = Character:FindFirstChild("Right Arm")
      if Limb ~= nil then
        local Joint = Instance.new("Motor6D")
        Joint.Name = "Right Shoulder"
        Joint.Part0 = Torso
        Joint.Part1 = Limb
        Joint.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
        Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
        Joint.MaxVelocity = 0.15
        Joint.Parent = Torso
      end
      local Limb = Character:FindFirstChild("Left Arm")
      if Limb ~= nil then
        local Joint = Instance.new("Motor6D")
        Joint.Name = "Left Shoulder"
        Joint.Part0 = Torso
        Joint.Part1 = Limb
        Joint.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
        Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
        Joint.MaxVelocity = 0.15
        Joint.Parent = Torso
      end
      local Limb = Character:FindFirstChild("Right Leg")
      if Limb ~= nil then
        local Joint = Instance.new("Motor6D")
        Joint.Name = "Right Hip"
        Joint.Part0 = Torso
        Joint.Part1 = Limb
        Joint.C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
        Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
        Joint.MaxVelocity = 0.1
        Joint.Parent = Torso
      end
      local Limb = Character:FindFirstChild("Left Leg")
      if Limb ~= nil then
        local Joint = Instance.new("Motor6D")
        Joint.Name = "Left Hip"
        Joint.Part0 = Torso
        Joint.Part1 = Limb
        Joint.C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
        Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
        Joint.MaxVelocity = 0.1
        Joint.Parent = Torso
      end
      local Animate = Character:FindFirstChild("Animate")
      if Animate ~= nil then
        local Animate2 = Animate:Clone()
        Animate:Remove()
        Animate2.Parent = Character
      end
    end
  else
    return false
  end
  return true, Format
end
local Grabbed = false
Ctrl = false
local lastclick = tick()
mouse.Button1Down:connect(function()
  if tick() - lastclick > 0.4 then
    combocounter = 0
  end
  if otheranims then
    return
  end
  if Grabbed then
    return
  end
  if Sheathed then
    otheranims = true
    Mode = "Sheath"
    wait(0.7)
    raw.Part0 = ra
    law.Part0 = la
    raw.C0 = rawc0
    law.C0 = lawc0
    Sheathed = false
    otheranims = false
    return
  end
  Slash = true
  local p0 = rootpart.CFrame * CF(0, 0, -7)
  local p1 = rootpart.CFrame * CF(0, 0, -15)
  if combocounter == 0 and not otheranims then
    otheranims = true
    Mode = "Knee"
    local asdf = Damage(ll)
    rootpart.CFrame = rootpart.CFrame:lerp(p0, 0.1)
    wait(0.3)
    asdf:disconnect()
    otheranims = false
    combocounter = 1
  elseif combocounter == 1 and not otheranims then
    otheranims = true
    Mode = "Slash11"
    wait(0.3)
    Mode = "Slash12"
    rootpart.CFrame = rootpart.CFrame:lerp(p0, 0.1)
    wait(0.3)
    Mode = "Slash21"
    rootpart.CFrame = rootpart.CFrame:lerp(p0, 0.1)
    wait(0.5)
    otheranims = false
    combocounter = 2
  elseif combocounter == 2 and not otheranims then
    otheranims = true
    Mode = "Slash31"
    wait(0.3)
    Mode = "Slash32"
    rootpart.CFrame = rootpart.CFrame:lerp(p0, 0.1)
    wait(0.5)
    otheranims = false
    combocounter = 3
  elseif combocounter == 3 and not otheranims then
    otheranims = true
    sDps = Damage(LAH)
    Mode = "Bash11"
    wait(0.3)
    rootpart.CFrame = rootpart.CFrame:lerp(p1, 0.6)
    wait(1)
    sDps:disconnect()
    otheranims = false
    combocounter = 0
  end
  Slash = false
  lastclick = tick()
end)
function MediumParticleEmit(Object, Color)
  coroutine.wrap(function()
    while true do
      if not Wait(3.1) or not Object then
        break
      end
      do
        local p = Instance.new("Part", Object.Parent)
        p.Name = "Trail"
        p.TopSurface = 0
        p.BottomSurface = 0
        p.Anchored = true
        p.Material = "Neon"
        p.CanCollide = false
        p.FormFactor = "Custom"
        p.Size = Vector3.new(0.01, 0.01, 0.01)
        if type(Color) ~= "userdata" or not Color then
        end
        p.BrickColor = BrickColor.new(Color)
        p.CFrame = Object.CFrame * CFrame.new(math.random(-1, 1), math.random(-1, 1) - 3, math.random(-1, 1))
        local m = Instance.new("BlockMesh", p)
        m.Scale = Vector3.new(2, 2, 2)
        coroutine.wrap(function()
          for i = 1, 15 do
            p.Transparency = i / 15
            m.Scale = m.Scale + Vector3.new(0.1, 0.1, 0.1)
            p.CFrame = CFrame.new(p.Position + Vector3.new(math.random(-5, 5) / 20, 0.4, math.random(-5, 5) / 20)) * CFrame.fromEulerAnglesXYZ(math.random(-10, 10) / i, math.random(-10, 10) / i, 0.5)
            Wait()
          end
          p:Destroy()
        end)()
      end
    end
  end)()
end
function IsNear(Position, Distance, SinglePlayer, db)
  if SinglePlayer then
    return Distance > (SinglePlayer.Torso.CFrame.p - Position).magnitude
  end
  local List = {}
  for i, v in pairs(workspace:GetChildren()) do
    if v:IsA("Model") and v:findFirstChild("Torso") and Distance > (v.Torso.CFrame.p - Position).magnitude then
      table.insert(List, v)
    end
  end
  return List
end
local beaming = false
local Shielding = false
mouse.KeyDown:connect(function(k)
  if otheranims then
    return
  end
  if beaming then
    return
  end
  if Shielding then
    return
  end
  if k == "q" then
    if Grabbed then
      return
    end
    otheranims = true
    if not Sheathed then
      Mode = "Sheath"
      wait(0.7)
      raw.Part0 = Torso
      law.Part0 = Torso
      raw.C0 = rawc0 * CFrame.new(1.8, 3.3, 0.65) * CFrame.Angles(0, math.rad(90), 0) * CFrame.Angles(math.rad(-45), 0, 0)
      law.C0 = lawc0 * CFrame.new(-0.3, 0.5, 0.25) * CFrame.Angles(0, math.rad(90), 0) * CFrame.Angles(math.rad(-45), 0, 0)
      Sheathed = true
    else
      Mode = "Sheath"
      wait(0.7)
      raw.Part0 = char:findFirstChild("Right Arm")
      law.Part0 = char:findFirstChild("Left Arm")
      raw.C0 = rawc0
      law.C0 = lawc0
      Sheathed = false
    end
    otheranims = false
  elseif k == "g" then
    if Sheathed then
      otheranims = true
      Mode = "Sheath"
      wait(0.7)
      raw.Part0 = ra
      law.Part0 = la
      raw.C0 = rawc0
      law.C0 = lawc0
      Sheathed = false
      otheranims = false
      return
    end
    otheranims = true
    Mode = "Shielding"
    Shielding = true
    do
      local storedHp = hum.Health
      coroutine.wrap(function()
        local shieldTime = tick()
        while Shielding do
          if tick() - shieldTime > 60 then
            otheranims = false
            Shielding = false
            break
          end
          hum.Health = storedHp
          game:service("RunService").Stepped:wait()
        end
      end)()
    end
  elseif k:byte() == 50 then
    Ctrl = true
  elseif k:byte() == 48 then
    coroutine.wrap(function()
      for i = 70, 60, -1 do
        camera.FieldOfView = i
        wait()
      end
    end)()
    hum.WalkSpeed = speed
  elseif k == "r" then
    otheranims = true
    Mode = "Stomp1"
    wait(0.5)
    Mode = "Stomp2"
    do
      local Charging = true
      pt = Instance.new("Part", Torso)
      pt.Anchored = true
      pt.CanCollide = false
      pt.Locked = true
      pt.Material = "Neon"
      pt.FormFactor = "Custom"
      pt.Size = Vector3.new(1, 1, 1)
      pt.CFrame = rootpart.CFrame * CFrame.new(0, -1, 0)
      pt.Transparency = 0.6
      pt.BrickColor = BrickColor.new("Bright green")
      msh = Instance.new("SpecialMesh", pt)
      msh.MeshId = "http://www.roblox.com/asset/?id=20329976"
      msh.Scale = Vector3.new(10, 2, 10)
      pt2 = pt:clone()
      pt2.Parent = Torso
      pt2.CFrame = rootpart.CFrame * CFrame.new(0, -1, 0)
      pt2.BrickColor = BrickColor.new("Really black")
      msh2 = msh:clone()
      msh2.Parent = pt2
      msh2.Scale = Vector3.new(10, 2, 10)
      custommath = {
        25,
        26,
        27,
        28,
        29,
        30,
        31,
        32,
        33,
        34,
        35,
        36,
        37,
        38,
        39,
        40,
        41,
        42,
        43,
        44,
        45,
        46,
        47,
        48,
        49,
        50,
        51,
        52,
        53,
        54,
        55,
        56,
        57,
        58,
        59,
        60,
        61,
        62,
        63,
        64,
        65,
        66,
        67,
        68,
        69,
        70,
        71,
        72,
        73,
        74,
        75,
        76,
        77,
        78,
        79,
        80,
        81,
        82,
        83,
        84,
        85,
        86,
        87,
        88,
        89,
        90,
        91,
        92,
        93,
        94,
        95,
        96,
        97,
        98,
        99,
        100,
        -25,
        -26,
        -27,
        -28,
        -29,
        -30,
        -31,
        -32,
        -33,
        -34,
        -35,
        -36,
        -37,
        -38,
        -39,
        -40,
        -41,
        -42,
        -43,
        -44,
        -45,
        -46,
        -47,
        -48,
        -49,
        -50,
        -51,
        -52,
        -53,
        -54,
        -55,
        -56,
        -57,
        -58,
        -59,
        -60,
        -61,
        -62,
        -63,
        -64,
        -65,
        -66,
        -67,
        -68,
        -69,
        -70,
        -71,
        -72,
        -73,
        -74,
        -75,
        -76,
        -77,
        -78,
        -79,
        -80,
        -81,
        -82,
        -83,
        -84,
        -85,
        -86,
        -87,
        -88,
        -89,
        -90,
        -91,
        -92,
        -93,
        -94,
        -95,
        -96,
        -97,
        -98,
        -99,
        -100
      }
      bl = Instance.new("Part", char)
      bl.Locked = true
      bl.Name = "Shell"
      bl.BrickColor = BrickColor.new("Really black")
      bl.Anchored = true
      bl.Material = "Neon"
      bl.CanCollide = false
      bl.Transparency = 0
      bl.Reflectance = 0
      bl.BottomSurface = 0
      bl.TopSurface = 0
      bl.Shape = 0
      blm = Instance.new("SpecialMesh", bl)
      blm.MeshType = "Sphere"
      blm.Scale = Vector3.new(1, 1, 1)
      coroutine.resume(coroutine.create(function()
        for i = 1, math.huge, 4 do
          if Charging == true then
            game:service("RunService").Stepped:wait()
            bl.CFrame = rootpart.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-i / 10), math.rad(-i / 10), math.rad(i / 10))
            blm.Scale = blm.Scale + Vector3.new(0.5, 0.5, 0.5)
            bl.Transparency = bl.Transparency + 0.05
            pt.CFrame = rootpart.CFrame * CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(i * 2), 0)
            pt2.CFrame = rootpart.CFrame * CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-i * 2), 0)
            msh.Scale = msh.Scale + Vector3.new(0.7, 0, 0.7)
            msh2.Scale = msh2.Scale + Vector3.new(0.7, 0, 0.7)
            pt.Transparency = pt.Transparency + 0.015
            pt2.Transparency = pt2.Transparency + 0.015
          elseif Charging == false then
            break
          end
        end
      end))
      local Damaged = {}
      coroutine.wrap(function()
        for i, v in pairs(IsNear(Torso.Position, 25, nil, true)) do
          if v ~= Char then
            if Damaged[v:FindFirstChild("Humanoid")] and tick() - Damaged[v:FindFirstChild("Humanoid")] < 0.25 then
              return
            end
            v:FindFirstChild("Humanoid").Health = v:findFirstChild("Humanoid").Health - 25
            v:findFirstChild("Humanoid").PlatformStand = true
            local vu = Instance.new("BodyVelocity", v:findFirstChild("Torso"))
            vu.P = 500
            vu.maxForce = Vector3.new(10000000000, 5.0E21, 100000000000)
            vu.velocity = Head.CFrame.lookVector * 80
            game:GetService("Debris"):AddItem(vu, 0.267)
            Damaged[v:FindFirstChild("Humanoid")] = tick()
          end
        end
      end)()
      Spawn(function()
        while game:service("RunService").Stepped:wait() do
          if p and p.Transparency >= 1 then
            pcall(function()
              p:Destroy()
            end)
            break
          end
          if not p then
            break
          end
          p.CFrame = p.CFrame * CFrame.Angles(math.rad(2), math.rad(2), math.rad(2)) + Vector3.new(0, 0.2, 0)
          p.Transparency = p.Transparency + 0.01
        end
      end)
      wait(1)
      pt:Destroy()
      pt2:Destroy()
      bl:Destroy()
      Charging = false
      otheranims = false
    end
  elseif k == "e" then
    do
      local weld5 = function(part0, part1, c0, c1)
        weeld = Instance.new("Weld", part0)
        weeld.Part0 = part0
        weeld.Part1 = part1
        weeld.C0 = c0
        weeld.C1 = c1
        return weeld
      end
      if not Sheathed then
        otheranims = true
        Mode = "Sheath"
        wait(0.7)
        raw.Part0 = Torso
        law.Part0 = Torso
        raw.C0 = rawc0 * CFrame.new(1.8, 3.3, 0.65) * CFrame.Angles(0, math.rad(90), 0) * CFrame.Angles(math.rad(-45), 0, 0)
        law.C0 = lawc0 * CFrame.new(-0.3, 0.5, 0.25) * CFrame.Angles(0, math.rad(90), 0) * CFrame.Angles(math.rad(-45), 0, 0)
        Sheathed = true
        otheranims = false
        return
      end
      if not Grabbed then
        otheranims = true
        Mode = "Grabbing"
        con1 = ra.Touched:connect(function(hit)
          if hit:IsDescendantOf(Char) then
            return
          end
          ht = hit.Parent
          hum1 = ht:FindFirstChild("Humanoid")
          if hum1 ~= nil then
            hum1.Changed:connect(function(a)
              if not hum1 then
                return
              end
              if a == "PlatformStand" then
                hum1.PlatformStand = true
              elseif a == "Jump" then
                hum1.Jump = false
              elseif a == "WalkSpeed" then
                hum1.WalkSpeed = 0
              elseif a == "JumpPower" then
                hum1.JumpPower = 0
              end
            end)
            hum1.PlatformStand = true
            hum1.Jump = false
            hum1.WalkSpeed = 0
            hum1.JumpPower = 0
            gp = ht
            local asde = weld5(ra, ht:FindFirstChild("Torso"), CFrame.new(0, -1.3, 0), CFrame.new(0, 0, 0))
            asde.Parent = ra
            asde.Name = "asde"
            asde.C0 = asde.C0 * CFrame.Angles(math.rad(-90), math.rad(0), 0)
            Grabbed = true
          end
        end)
        wait(0.5)
        con1:disconnect()
        otheranims = false
      else
        otheranims = true
        pcall(function()
          repeat
            ht:findFirstChild("Humanoid").Health = ht:findFirstChild("Humanoid").Health - ht:findFirstChild("Humanoid").MaxHealth * 0.01
            game:service("RunService").Stepped:wait()
            hum:TakeDamage(-5)
          until ht:findFirstChild("Humanoid").Health <= ht:findFirstChild("Humanoid").MaxHealth * 0.015
        end)
        Mode = "Slash11"
        wait(0.4)
        Mode = "Throw1"
        pcall(function()
          ra:findFirstChild("asde"):Destroy()
        end)
        local vu = Instance.new("BodyVelocity", ht.Torso)
        vu.P = 500
        vu.maxForce = Vector3.new(10000000000, 5.0E21, 100000000000)
        vu.velocity = Head.CFrame.lookVector * 100
        game:GetService("Debris"):AddItem(vu, 0.267)
        wait(0.5)
        Ragdoll(true, ht)
        ht:findFirstChild("Humanoid").PlatformStand = true
        coroutine.wrap(function()
          wait(5)
          ht:breakJoints("")
        end)()
        Grabbed = false
        otheranims = false
      end
    end
  elseif k == "f" then
    otheranims = true
    if Grabbed then
      return
    end
    if not Sheathed then
      Mode = "Sheath"
      wait(0.7)
      raw.Part0 = Torso
      law.Part0 = Torso
      raw.C0 = rawc0 * CFrame.new(1.8, 3.3, 0.65) * CFrame.Angles(0, math.rad(90), 0) * CFrame.Angles(math.rad(-45), 0, 0)
      law.C0 = lawc0 * CFrame.new(-0.3, 0.5, 0.25) * CFrame.Angles(0, math.rad(90), 0) * CFrame.Angles(math.rad(-45), 0, 0)
      Sheathed = true
      otheranims = false
      return
    end
    Mode = "Beam"
    hum.WalkSpeed = 0
    do
      local m0del = Instance.new("Model", char)
      local wave = Instance.new("Part", m0del)
      wave.CFrame = char.Head.CFrame * CFrame.new(0, 0, -10)
      wave.TopSurface = "Smooth"
      wave.BottomSurface = "Smooth"
      wave.BrickColor = BrickColor.new("Bright green")
      wave.Anchored = true
      wave.FormFactor = "Custom"
      wave.Shape = "Ball"
      wave.CanCollide = false
      wave.Transparency = 1
      wave.Material = "Neon"
      wave.Size = Vector3.new(0.4, 0.4, 0.4)
      local needaloop = true
      beaming = true
      local coro = coroutine.resume(coroutine.create(function()
        while needaloop do
          game:service("RunService").Stepped:wait()
          local c = char
          local radius = 25
          local pos = wave.CFrame * CFrame.new(0, 0, 20)
          local clrz = {
            "Really black",
            "Bright green"
          }
          for i = 1, 1 do
            do
              local clr = clrz[math.random(1, #clrz)]
              pos = wave.CFrame * CFrame.new(0, 0, 2)
              local p = Instance.new("Part", c)
              local mafa = math.random(-360, 360)
              p.CanCollide = false
              p.Size = Vector3.new(1.3, 1.3, 1.3)
              local m = Instance.new("SpecialMesh", p)
              m.MeshType = "Sphere"
              spawn(function()
                for i = 0, 50 do
                  local int, int2 = 0.05, 0.05
                  m.Scale = m.Scale - Vector3.new(int, int, int)
                  p.Transparency = p.Transparency + int2
                  game:service("RunService").Stepped:wait()
                end
                pcall(function()
                  p:Destroy()
                end)
              end)
              p.BrickColor = BrickColor.new(clr)
              p.Material = "Neon"
              p.CFrame = pos * CFrame.new(math.random(-radius, radius), math.random(-radius, radius), math.random(-radius, radius)) * CFrame.Angles(mafa, mafa, mafa)
              local bp = Instance.new("BodyPosition", p)
              bp.MaxForce = Vector3.new(1 / 0, 1 / 0, 1 / 0)
              bp.D = 100
              bp.P = 300
              bp.Position = pos.p
              game.Debris:AddItem(p, 10)
            end
          end
        end
      end))
      local nbeamy = beamy:Clone()
      nbeamy.Parent = char
      coroutine.wrap(function()
        local Ringz = {}
        for i, v in pairs(nbeamy:children("")) do
          if v.Name:lower():find("ring") then
            table.insert(Ringz, v)
          end
        end
        local Rot = 0
        while nbeamy do
          Rot = Rot + 0.035
          if Rot >= 360 then
            Rot = 0
          end
          for q, e in pairs(Ringz) do
            pcall(function()
              if e.Name ~= "Ring7" then
                e.qCFrameWeldThingy.C0 = e.qCFrameWeldThingy.C0 * CFrame.Angles(0, 0, math.rad(e.Name ~= "Ring4" and Rot or -Rot))
              end
            end)
          end
          game:service("RunService").Stepped:wait()
        end
      end)()
      local bp = Instance.new("BodyPosition", nbeamy.FireFrom)
      bp.MaxForce = Vector3.new(1 / 0, 1 / 0, 1 / 0)
      bp.D = 100
      bp.P = 1000
      bp.Position = (char.Head.CFrame * CFrame.new(10, 20, -5)).p
      for awe = 1, 250 do
        wave.CFrame = char.Head.CFrame * CFrame.new(10, 20, -5)
        nbeamy.FireFrom.CFrame = nbeamy.FireFrom.CFrame:lerp(CFrame.new(wave.CFrame.p, mouse.Hit.p) * CFrame.Angles(math.rad(180), 0, 0), 1)
        bp.Position = (char.Head.CFrame * CFrame.new(10, 20, -5)).p
        wave.Size = Vector3.new(wave.Size.X + 0.1, wave.Size.Y + 0.1, wave.Size.Z + 0.1)
        game:service("RunService").Stepped:wait()
      end
      needaloop = false
      local beam = Instance.new("Part", m0del)
      beam.TopSurface = "Smooth"
      beam.BottomSurface = "Smooth"
      beam.Material = "Neon"
      beam.Transparency = 0.6
      beam.Anchored = true
      beam.BrickColor = BrickColor.new("Bright green")
      beam.CanCollide = false
      local mesh = Instance.new("CylinderMesh", beam)
      local realbeam = beam:Clone()
      realbeam.Parent = m0del
      realbeam.Color = Color3.new(0, 0.7843137254901961, 0)
      realbeam.Transparency = 0.1
      realbeam.CFrame = wave.CFrame * CFrame.Angles(math.rad(90), 0, 0)
      beam.CFrame = wave.CFrame * CFrame.Angles(math.rad(90), 0, 0)
      beam.Size = Vector3.new(23, 5, 23)
      realbeam.Size = Vector3.new(24, 5, 24)
      local p = wave:Clone()
      p.Parent = m0del
      p.Anchored = true
      p.Transparency = 1
      p.Size = Vector3.new(10, 10, 10)
      local Damaged = {}
      for HAAA = 1, 500 do
        do
          local starthere = char.Head.CFrame * CFrame.new(10, 20, -5)
          local idek = Ray.new(starthere.p, (mouse.Hit.p - starthere.p).unit * 1000)
          local thx = {char, m0del}
          table.insert(thx, p)
          local Bonk, ovhere = workspace:FindPartOnRayWithIgnoreList(idek, thx)
          local meg
          p.Transparency = 1
          if Bonk and Bonk.Parent:findFirstChild("Humanoid") then
            do
              local dionamuh = Bonk.Parent:findFirstChild("Humanoid")
              if Damaged[dionamuh] and tick() - Damaged[dionamuh] > 0.05 then
                Damaged[dionamuh] = tick()
                pcall(function()
                  dionamuh.Health = dionamuh.Health - 2
                end)
              elseif not Damaged[dionamuh] then
                Damaged[dionamuh] = tick()
              end
            end
          end
          meg = (starthere.p - ovhere).magnitude
          coroutine.wrap(function()
            local asd = Instance.new("Part", char)
            asd.CFrame = CFrame.new(ovhere) * CFrame.Angles(math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)), math.rad(math.random(-360, 360)))
            asd.Size = Vector3.new(5, 5, 5)
            asd.Reflectance = 0.4
            asd.Transparency = 0.05
            asd.TopSurface, asd.BottomSurface = 0, 0
            asd.CanCollide = false
            asd.Color = Color3.new(0, 0.5882352941176471, 0)
            asd.Anchored = true
            asd.Locked = true
            wait()
            for i = 0.05, 1, 0.05 do
              asd.Transparency = i
              asd.Size = asd.Size + Vector3.new(0.2, 0.2, 0.2)
              game:service("RunService").Stepped:wait()
            end
            asd:Destroy()
          end)()
          game:service("RunService").Stepped:wait()
          realbeam.Size = Vector3.new(3.5, meg, 3.5)
          beam.Size = Vector3.new(2.5, meg, 2.5)
          realbeam.CFrame = CFrame.new(starthere.p, ovhere) * CFrame.new(0, 0, -meg / 2) * CFrame.Angles(math.rad(90), 0, 0)
          beam.CFrame = CFrame.new(starthere.p, ovhere) * CFrame.new(0, 0, -meg / 2) * CFrame.Angles(math.rad(90), 0, 0)
          pcall(function()
            nbeamy.FireFrom.CFrame = nbeamy.FireFrom.CFrame:lerp(CFrame.new(starthere.p, ovhere) * CFrame.new(0, 0, 2) * CFrame.Angles(math.rad(180), 0, 0), 1)
          end)
          bp.Position = (char.Head.CFrame * CFrame.new(10, 20, -5)).p
          wave.CFrame = starthere
        end
      end
      nbeamy.FireFrom.Anchored = true
      p:Destroy()
      for i = 0, 1, 0.05 do
        realbeam.Transparency = i
        wave.Transparency = i
        beam.Transparency = i
        game:service("RunService").Stepped:wait()
      end
      nbeamy:Destroy()
      beaming = false
      m0del:Destroy()
      hum.WalkSpeed = speed
      otheranims = false
    end
  elseif k == "c" then
    if Sheathed then
      otheranims = true
      Mode = "Sheath"
      wait(0.7)
      raw.Part0 = ra
      law.Part0 = la
      raw.C0 = rawc0
      law.C0 = lawc0
      Sheathed = false
      otheranims = false
      return
    end
    otheranims = true
    hum.WalkSpeed = 0
    Mode = "Stabbing1"
    wait(0.7)
    Mode = "Stabbing2"
    do
      local Parts = {}
      local Damaged = {}
      for i = 1, 360, 20 do
        do
          local s = Instance.new("Part", char)
          table.insert(Parts, s)
          s.Name = "Spikey"
          s.CFrame = Torso.CFrame * CFrame.new(0, -10, 0)
          s.Size = Vector3.new(1, 1, 1)
          s.CanCollide = false
          s.Anchored = true
          s.BrickColor = BrickColor.new("Bright green")
          s.Locked = true
          s.Name = "s"
          s.Material = "Neon"
          s.Size = Vector3.new(1, 1, 1)
          s.BottomSurface = Enum.SurfaceType.Smooth
          s.TopSurface = Enum.SurfaceType.Smooth
          local PurpleMesh = Instance.new("SpecialMesh", s)
          PurpleMesh.MeshType = Enum.MeshType.FileMesh
          PurpleMesh.Name = "Mesh"
          PurpleMesh.Scale = Vector3.new(0.5, 0.5, 0.5)
          PurpleMesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
          PurpleMesh.VertexColor = Vector3.new(1, 0, 1)
          local qwe = -10
          coroutine.wrap(function()
            while s do
              if qwe >= -1 then
                qwe = 0
              else
                qwe = qwe + 0.4
              end
              s.CFrame = s.CFrame:lerp(CFrame.new(Torso.CFrame.p) * CFrame.new(0, qwe, 0) * CFrame.Angles(0, 0, 0) * CFrame.Angles(0, math.rad(i), 0) * CFrame.new(0, 0, -20), 0.3)
              game:service("RunService").Stepped:wait()
            end
          end)()
          coroutine.wrap(function()
            repeat
              wait()
            until qwe >= -1
            for i = 0.5, 2, 0.025 do
              PurpleMesh.Scale = Vector3.new(i, i * 2, i)
              game:service("RunService").Stepped:wait()
            end
            local it = Instance.new
            local vt = Vector3.new
            local cf = CFrame.new
            local euler = CFrame.fromEulerAnglesXYZ
            local angles = CFrame.Angles
            local NoOutline = function(Part)
              Part.TopSurface, Part.BottomSurface, Part.LeftSurface, Part.RightSurface, Part.FrontSurface, Part.BackSurface = 10, 10, 10, 10, 10, 10
            end
            local function part(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
              local fp = Instance.new("Part")
              fp.formFactor = formfactor
              fp.Parent = parent
              fp.Reflectance = reflectance
              fp.Transparency = transparency
              fp.CanCollide = false
              fp.Locked = true
              fp.BrickColor = BrickColor.new(tostring(brickcolor))
              fp.Name = name
              fp.Size = size
              fp.Position = Torso.Position
              fp.Material = material
              fp:BreakJoints()
              return fp
            end
            local function mesh(Mesh, part, meshtype, meshid, offset, scale)
              local mesh = it(Mesh)
              mesh.Parent = part
              if Mesh == "SpecialMesh" then
                mesh.MeshType = meshtype
                mesh.MeshId = meshid
              end
              mesh.Offset = offset
              mesh.Scale = scale
              return mesh
            end
            local function weld(parent, part0, part1, c0, c1)
              local weld = it("Weld")
              weld.Parent = parent
              weld.Part0 = part0
              weld.Part1 = part1
              weld.C0 = c0
              weld.C1 = c1
              return weld
            end
            local function BreakEffect(brickcolor, cframe, x1, y1, z1)
              local prt = part("Custom", char, "Neon", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
              prt.Anchored = true
              prt.CFrame = cframe * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
              local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
              coroutine.resume(coroutine.create(function(Part, CF, Numbb, randnumb)
                CF = Part.CFrame
                Numbb = 0
                randnumb = math.random() - math.random()
                for i = 0, 1, 0.05 do
                  wait()
                  CF = CF * cf(0, 1, 0)
                  Part.CFrame = CF * euler(Numbb, 0, 0)
                  Part.Transparency = i
                  Numbb = Numbb + randnumb
                end
                Part.Parent = nil
              end), prt)
            end
            for i = 1, 3 do
              BreakEffect(BrickColor.new("Bright green"), s.CFrame, 0.5, math.random(5, 10), 0.5)
            end
            coroutine.wrap(function()
              for i, v in pairs(IsNear(Torso.Position, 35, nil, true)) do
                if v ~= Char then
                  if Damaged[v:FindFirstChild("Humanoid")] and tick() - Damaged[v:FindFirstChild("Humanoid")] < 0.5 then
                    return
                  end
                  v:FindFirstChild("Humanoid").Health = v:findFirstChild("Humanoid").Health - 25
                  v:findFirstChild("Humanoid").PlatformStand = true
                  local vu = Instance.new("BodyVelocity", v:findFirstChild("Torso"))
                  vu.P = 500
                  vu.maxForce = Vector3.new(10000000000, 5.0E21, 100000000000)
                  vu.velocity = Head.CFrame.lookVector * 60
                  game:GetService("Debris"):AddItem(vu, 0.267)
                  Damaged[v:FindFirstChild("Humanoid")] = tick()
                end
              end
            end)()
            s:Destroy()
          end)()
          game:service("RunService").Stepped:wait()
        end
      end
      wait(3)
      hum.WalkSpeed = speed
      otheranims = false
    end
  end
end)
mouse.KeyUp:connect(function(k)
  if k:byte() == 48 then
    coroutine.wrap(function()
      for i = 60, 70 do
        camera.FieldOfView = i
        wait()
      end
    end)()
    hum.WalkSpeed = speed
  elseif k:byte() == 50 then
    Ctrl = false
  elseif k == "g" then
    Shielding = false
    otheranims = false
  end
end)
game.Lighting.TimeOfDay = "06:10:00"
pcall(game.Destroy, game:service("Lighting"):findFirstChild("SunRayz"))
local sr = Instance.new("SunRaysEffect", game.Lighting)
sr.Intensity = 0.1
sr.Name = "SunRayz"
hum.JumpPower = 10
Jumping = false
lastCtrl = tick()
Character.Humanoid.Jumping:connect(function()
  if Jumping then
    return
  end
  local eCtrl = Ctrl
  if eCtrl then
    if tick() - lastCtrl < 0.2 then
      eCtrl = false
    end
    lastCtrl = tick()
  end
  Mode = "Jumping"
  Jumping = true
  local vu = Instance.new("BodyVelocity", Torso)
  vu.P = 500
  vu.maxForce = Vector3.new(10000000000, 5.0E21, 100000000000)
  vu.velocity = Vector3.new(Head.CFrame.lookVector.X * (eCtrl and 60 or 10), eCtrl and 10 or 20, Head.CFrame.lookVector.Z * (eCtrl and 60 or 10))
  game:GetService("Debris"):AddItem(vu, 0.267)
  wait(0.7)
  Jumping = false
end)
spawn(function()
  while true do
    local Size = Vector3.new(TrailPart.Size.X, TrailPart.Size.Y, TrailPart.Size.Z)
    if Slash == true then
      local P1 = (TrailPart.CFrame * CFrame.new(Size / 2)).p
      local P2 = (TrailPart.CFrame * CFrame.new(Size / -2)).p
      if LastTrail then
        local p1 = CreateTriangle(Char, LastTrail[2], LastTrail[1], P2)
        local p2 = CreateTriangle(Char, LastTrail[1], P1, P2)
        Trails[#Trails + 1] = p1
        Trails[#Trails + 1] = p2
      end
      LastTrail = {P1, P2}
    else
      LastTrail = nil
    end
    for i, v in pairs(Trails) do
      v:SetProperty("Transparency", v:GetProperty("Transparency") + 0.1)
      if 1 <= v:GetProperty("Transparency") then
        v:Destroy()
        Trails[i] = nil
      end
    end
    rwait(0.5)
  end
end)
SlashDamage = Damage(TrailPart)
local count = 0
local t = tick()
local Smooth = 1
local sine = 0
local change = 1
coroutine.wrap(function()
  game:service("RunService").Heartbeat:connect(function()
    local torso = char:FindFirstChild("Torso")
    local mg = Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude
    if not otheranims then
      if mg < 3 and not Jumping then
        Mode = "Idling"
      elseif mg > 3 and mg < 10 and not Jumping then
        Mode = "Walking"
      elseif mg > 10 and not Jumping then
        Mode = "Running"
      elseif Jumping and Vector3.new(0, torso.Velocity.y, 0).magnitude > 2 and mg > 1 then
        Mode = "Jumping"
      end
    end
    count = count % 100 + 0.2 * hum.WalkSpeed / 6.5
    angle = math.pi * math.sin(math.pi * 2 / 100 * count)
    t = t + 0.2 * Smooth
    sine = sine + change
    if Mode == "Jumping" then
      lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, 0.6, -0.6) * CFrame.Angles(0, -math.rad(10), 0), 0.4)
      lerp(llegm, llegm.C0, llc0 * CFrame.new(0, 0.4, -0.3), 0.4)
      lerp(neck, neck.C0, neckc0 * CFrame.Angles(math.rad(20), 0, 0), 0.4)
      lerp(lm, lm.C0, lsc0 * CFrame.Angles(-math.rad(20), 0, -math.rad(30)), 0.4)
      lerp(rm, rm.C0, rsc0 * CFrame.Angles(-math.rad(20), 0, math.rad(30)), 0.4)
      lerp(rj, rj.C0, rootc0 * CFrame.Angles(math.rad(20), 0, 0), 0.4)
    elseif Mode == "Idling" then
      lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, math.sin(t / 20) / 7, 0) * CFrame.Angles(0, -math.rad(0), math.rad(8)), 0.3)
      lerp(llegm, llegm.C0, llc0 * CFrame.new(0, math.sin(t / 20) / 7, 0) * CFrame.Angles(0, 0, -math.rad(8)), 0.3)
      if not Sheathed then
        lerp(neck, neck.C0, neckc0 * CFrame.new(0, -math.cos(t / 20) / 7, 0) * CFrame.Angles(-1 * math.cos(t / 20) / 7, -math.rad(15), 0), 0.2)
        lerp(lm, lm.C0, lsc0 * CFrame.Angles(math.sin(t / 20) / 7, -math.rad(5), -math.rad(20)), 0.2)
        lerp(rm, rm.C0, rsc0 * CFrame.Angles(math.sin(t / 20) / 7, math.rad(5), math.rad(20)), 0.2)
        lerp(rj, rj.C0, rootc0 * CFrame.new(0, 0, -math.sin(t / 20) / 7) * CFrame.Angles(0, 0, math.rad(15)), 0.3)
        lerp(raw, raw.C0, rawc0 * CFrame.Angles(0, 0, 0), 1)
      else
        lerp(neck, neck.C0, neckc0 * CFrame.new(0, -math.sin(t / 20) / 15, 0) * CFrame.Angles(-2 * math.cos(t / 15) / 20, -math.rad(5), 0), 0.2)
        lerp(lm, lm.C0, lsc0 * CFrame.new(0, -0.2, 0) * CFrame.Angles(math.sin(t / 20) / 20, -math.rad(5), -math.rad(10)), 0.2)
        lerp(rm, rm.C0, rsc0 * CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(Grabbed and 120 or 0) + math.sin(t / 20) / 15, math.rad(5), math.rad(Grabbed and 20 or 0) + math.rad(10)), 0.2)
        lerp(rj, rj.C0, rootc0 * CFrame.new(0, 0, -math.sin(t / 20) / 15) * CFrame.Angles(0, 0, math.rad(5)), 0.3)
      end
    elseif Mode == "Walking" then
      lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, 0.3 * math.cos(sine / 14) / 2, -0.05 + -math.sin(sine / 14) / 2) * CFrame.Angles(math.rad(-18) + math.sin(sine / 14) / 2.3, 0, 0), 0.4)
      lerp(llegm, llegm.C0, llc0 * CFrame.new(0, 0.3 * -math.cos(sine / 14) / 2, -0.05 + math.sin(sine / 14) / 2) * CFrame.Angles(math.rad(-18) + -math.sin(sine / 14) / 2.3, 0, 0), 0.4)
      lerp(neck, neck.C0, neckc0 * CFrame.Angles(math.rad(-3 + 2 * math.cos(sine / 7)), math.rad(0 - 3 * math.cos(sine / 14)), math.rad(0)), 0.2)
      lerp(lm, lm.C0, lsc0 * CFrame.new(0, 0.03 * math.cos(sine / 9), -math.sin(sine / 20) / 6) * CFrame.Angles(-math.rad(20 * math.cos(sine / 17)), math.rad(0), -math.rad(12)), 0.2)
      lerp(rm, rm.C0, rsc0 * CFrame.new(0, 0.03 * math.cos(sine / 9), math.sin(sine / 20) / 6) * CFrame.Angles(math.rad(Grabbed and 120 or 0) + math.rad(20 * math.cos(sine / 17)), math.rad(0), math.rad(Grabbed and 20 or 0) + math.rad(12)), 0.2)
      lerp(rj, rj.C0, rootc0 * CFrame.new(0, 0.1 * math.cos(sine / 7), 0) * CFrame.Angles(math.rad(2 + 2 * math.cos(sine / 7)), 0, math.rad(0 + 3 * math.cos(sine / 14))), 0.2)
      if not Sheathed then
        lerp(raw, raw.C0, rawc0 * CFrame.Angles(0, 0, 0), 1)
      end
    elseif Mode == "Running" then
      lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, 0.3 * math.cos(sine / 10) / 2, -0.05 + -math.sin(sine / 10) / 2) * CFrame.Angles(math.rad(-18) + math.sin(sine / 10) / 2, 0, 0), 0.4)
      lerp(llegm, llegm.C0, llc0 * CFrame.new(0, 0.3 * -math.cos(sine / 10) / 2, -0.05 + math.sin(sine / 10) / 2) * CFrame.Angles(math.rad(-18) + -math.sin(sine / 10) / 2, 0, 0), 0.4)
      lerp(neck, neck.C0, neckc0 * CFrame.Angles(math.rad(6 + 6 * math.cos(sine / 10) / 2), math.rad(0), math.rad(0)), 0.2)
      lerp(lm, lm.C0, lsc0 * CFrame.Angles(math.rad(-10 - 20 * math.cos(sine / 10) / 5), -math.rad(-40 + 10 * math.cos(sine / 10) / 5), -math.rad(50 - 10 * math.cos(sine / 10) / 5)), 0.2)
      lerp(rm, rm.C0, rsc0 * CFrame.Angles(math.rad(-10 - 20 * math.cos(sine / 10) / 5), math.rad(-40 + 10 * math.cos(sine / 10) / 5), math.rad(50 - 10 * math.cos(sine / 10) / 5)), 0.2)
      lerp(rj, rj.C0, rootc0 * CFrame.new(0, -1 + 0.2 * math.cos(sine / 10) / 2, 0) * CFrame.Angles(math.rad(14 + 10 * math.cos(sine / 10) / 2), -math.cos(t / 6) / 30 + math.sin(rootpart.RotVelocity.y / 2) / 6, math.rad(0)), 0.2)
      if not Sheathed then
        lerp(raw, raw.C0, rawc0 * CFrame.Angles(0, 0, 0), 1)
      end
    elseif Mode == "Sheath" then
      if mg > 3 and mg < 18 then
        lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, 0.3 * math.cos(sine / 14) / 2, -0.05 + -math.sin(sine / 14) / 2) * CFrame.Angles(math.rad(-18) + math.sin(sine / 14) / 2.3, 0, 0), 0.4)
        lerp(llegm, llegm.C0, llc0 * CFrame.new(0, 0.3 * -math.cos(sine / 14) / 2, -0.05 + math.sin(sine / 14) / 2) * CFrame.Angles(math.rad(-18) + -math.sin(sine / 14) / 2.3, 0, 0), 0.4)
      else
        lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, math.sin(t / 15) / 15, 0) * CFrame.Angles(0, -math.rad(0), math.rad(8)), 0.3)
        lerp(llegm, llegm.C0, llc0 * CFrame.new(0, math.sin(t / 15) / 15, 0) * CFrame.Angles(0, 0, -math.rad(8)), 0.3)
      end
      lerp(neck, neck.C0, neckc0 * CFrame.new(0, math.sin(t / 15) / 15, 0) * CFrame.Angles(-1 * math.cos(t / 25) / 10, -math.rad(15), 0), 0.2)
      lerp(lm, lm.C0, lsc0 * CFrame.Angles(math.rad(10), math.rad(120), -math.rad(60)), 0.2)
      lerp(rm, rm.C0, rsc0 * CFrame.new(0, 0.6, -0.2) * CFrame.Angles(math.rad(175), math.rad(0), math.rad(20)), 0.2)
      lerp(rj, rj.C0, rootc0 * CFrame.new(0, 0, -math.sin(t / 15) / 15) * CFrame.Angles(0, 0, math.rad(15)), 0.3)
      if not Sheathed then
        lerp(raw, raw.C0, rawc0 * CFrame.new(-0.5, -1.6, -0.85) * CFrame.Angles(math.rad(92), math.rad(26), math.rad(90)), 1)
      end
    elseif Mode == "Slash11" then
      if mg > 3 then
        lerp(neck, neck.C0, neckc0 * CFrame.Angles(math.rad(-3 + 2 * math.cos(sine / 7)), math.rad(0 - 3 * math.cos(sine / 14)), math.rad(0)), 0.6)
        lerp(rj, rj.C0, rootc0 * CFrame.new(0, 0.1 * math.cos(sine / 7), 0) * CFrame.Angles(math.rad(2 + 2 * math.cos(sine / 7)), 0, math.rad(0 + 3 * math.cos(sine / 14))), 0.6)
        lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, 0.3 * math.cos(sine / 14) / 2, -0.05 + -math.sin(sine / 14) / 2) * CFrame.Angles(math.rad(-18) + math.sin(sine / 14) / 2.3, 0, 0), 0.6)
        lerp(llegm, llegm.C0, llc0 * CFrame.new(0, 0.3 * -math.cos(sine / 14) / 2, -0.05 + math.sin(sine / 14) / 2) * CFrame.Angles(math.rad(-18) + -math.sin(sine / 14) / 2.3, 0, 0), 0.6)
      else
        lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, 0.2, 0) * CFrame.Angles(-math.rad(40), math.rad(30), math.rad(20)), 0.6)
        lerp(llegm, llegm.C0, llc0 * CFrame.new(0, 0.2, -0.6) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)), 0.6)
        lerp(neck, neck.C0, neckc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(30), -math.rad(0)), 0.6)
        lerp(rj, rj.C0, rootc0 * CFrame.new(0, 0, -0.2) * CFrame.Angles(math.rad(0), math.rad(0), -math.rad(30)), 0.6)
      end
      lerp(lm, lm.C0, lsc0 * CFrame.new(0, -0.5, -0.5) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(60)), 0.6)
      lerp(rm, rm.C0, rsc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(60), -math.rad(60), math.rad(110)), 0.6)
      if not Sheathed then
        lerp(raw, raw.C0, rawc0 * CFrame.new(-1, -1.2, 0) * CFrame.Angles(-math.rad(20), 0, math.rad(90)), 1)
      end
    elseif Mode == "Slash12" then
      lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, 0.2, -0.3) * CFrame.Angles(math.rad(10), -math.rad(60), math.rad(10)), 0.6)
      lerp(llegm, llegm.C0, llc0 * CFrame.new(0, -0.2, 0) * CFrame.Angles(-math.rad(10), math.rad(0), -math.rad(10)), 0.6)
      lerp(neck, neck.C0, neckc0 * CFrame.Angles(math.rad(30), -math.rad(70), math.rad(30)), 0.6)
      lerp(lm, lm.C0, lsc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(30), -math.rad(30)), 0.6)
      lerp(rm, rm.C0, rsc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90), math.rad(50), math.rad(40)), 0.6)
      lerp(rj, rj.C0, rootc0 * CFrame.new(0, 0, -0.1) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(90)), 0.6)
      if not Sheathed then
        lerp(raw, raw.C0, rawc0 * CFrame.new(-1, -1, -0.5) * CFrame.Angles(-math.rad(90), math.rad(0), math.rad(60)), 1)
      end
    elseif Mode == "Slash31" then
      if mg > 3 then
        lerp(neck, neck.C0, neckc0 * CFrame.Angles(math.rad(-3 + 2 * math.cos(sine / 7)), math.rad(0 - 3 * math.cos(sine / 14)), math.rad(0)), 0.6)
        lerp(rj, rj.C0, rootc0 * CFrame.new(0, 0.1 * math.cos(sine / 7), 0) * CFrame.Angles(math.rad(2 + 2 * math.cos(sine / 7)), 0, math.rad(0 + 3 * math.cos(sine / 14))), 0.6)
        lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, 0.3 * math.cos(sine / 14) / 2, -0.05 + -math.sin(sine / 14) / 2) * CFrame.Angles(math.rad(-18) + math.sin(sine / 14) / 2.3, 0, 0), 0.6)
        lerp(llegm, llegm.C0, llc0 * CFrame.new(0, 0.3 * -math.cos(sine / 14) / 2, -0.05 + math.sin(sine / 14) / 2) * CFrame.Angles(math.rad(-18) + -math.sin(sine / 14) / 2.3, 0, 0), 0.6)
      else
        lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, 0.5, -0.3) * CFrame.Angles(math.rad(10), 0, 0), 0.4)
        lerp(llegm, llegm.C0, llc0 * CFrame.new(0, 0, 0) * CFrame.Angles(-math.rad(0), math.rad(5), -math.rad(5)), 0.4)
        lerp(neck, neck.C0, neckc0 * CFrame.Angles(math.rad(15), math.rad(15), math.rad(0)), 0.6)
        lerp(rj, rj.C0, rootc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), 0, -math.rad(15)), 0.6)
      end
      lerp(lm, lm.C0, lsc0 * CFrame.new(0, 0, 0) * CFrame.Angles(-math.rad(20), math.rad(10), -math.rad(20)), 0.6)
      lerp(rm, rm.C0, rsc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(60), -math.rad(60), math.rad(110)), 0.6)
      if not Sheathed then
        lerp(raw, raw.C0, rawc0 * CFrame.new(-1, -1.2, 0) * CFrame.Angles(-math.rad(20), 0, math.rad(90)), 1)
      end
    elseif Mode == "Slash32" then
      lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, 0.2, -0.3) * CFrame.Angles(math.rad(10), -math.rad(30), math.rad(10)), 0.6)
      lerp(llegm, llegm.C0, llc0 * CFrame.new(0, -0.2, 0) * CFrame.Angles(-math.rad(20), math.rad(0), -math.rad(20)), 0.6)
      lerp(neck, neck.C0, neckc0 * CFrame.Angles(math.rad(20), -math.rad(50), math.rad(20)), 0.6)
      lerp(lm, lm.C0, lsc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(30), -math.rad(30)), 0.6)
      lerp(rm, rm.C0, rsc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(50), math.rad(50), math.rad(50)), 0.6)
      lerp(rj, rj.C0, rootc0 * CFrame.new(0, 0, -0.1) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(60)), 0.6)
      if not Sheathed then
        lerp(raw, raw.C0, rawc0 * CFrame.new(-1, -1, 0) * CFrame.Angles(-math.rad(90), math.rad(0), math.rad(90)), 1)
      end
    elseif Mode == "Slash21" then
      lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, 0.2, -0.3) * CFrame.Angles(math.rad(10), -math.rad(30), math.rad(10)), 0.6)
      lerp(llegm, llegm.C0, llc0 * CFrame.new(0, 0, 0) * CFrame.Angles(-math.rad(10), math.rad(0), -math.rad(10)), 0.6)
      lerp(neck, neck.C0, neckc0 * CFrame.Angles(math.rad(10), -math.rad(20), math.rad(10)), 0.6)
      lerp(lm, lm.C0, lsc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(20), -math.rad(20)), 0.6)
      lerp(rm, rm.C0, rsc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90), math.rad(10), math.rad(60)), 0.6)
      lerp(rj, rj.C0, rootc0 * CFrame.new(0, 0, -0.1) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(40)), 0.6)
      if not Sheathed then
        lerp(raw, raw.C0, rawc0 * CFrame.new(-1, -1, -0.5) * CFrame.Angles(-math.rad(90), math.rad(0), math.rad(60)), 1)
      end
    elseif Mode == "Bash11" then
      lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, 0.2, 0) * CFrame.Angles(-math.rad(40), math.rad(30), math.rad(20)), 0.6)
      lerp(llegm, llegm.C0, llc0 * CFrame.new(0, 0.2, -0.6) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)), 0.6)
      lerp(neck, neck.C0, neckc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(30), -math.rad(0)), 0.6)
      lerp(lm, lm.C0, lsc0 * CFrame.new(0, -0.5, -0.5) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(60)), 0.6)
      lerp(rm, rm.C0, rsc0 * CFrame.Angles(math.sin(t / 15) / 15, math.rad(5), math.rad(20)), 0.2)
      lerp(rj, rj.C0, rootc0 * CFrame.new(0, 0, -0.2) * CFrame.Angles(math.rad(0), math.rad(0), -math.rad(30)), 0.6)
      if not Sheathed then
        lerp(raw, raw.C0, rawc0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 1)
      end
    elseif Mode == "Kneeling" then
      lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, -0.5, -0.3) * CFrame.Angles(-math.rad(90), math.rad(0), math.rad(0)), 0.6)
      lerp(llegm, llegm.C0, llc0 * CFrame.new(0, 1, -0.6) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.6)
      lerp(neck, neck.C0, neckc0 * CFrame.new(0, 0, 0) * CFrame.Angles(-math.rad(30), math.rad(0), -math.rad(0)), 0.6)
      lerp(lm, lm.C0, lsc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), -math.rad(20)), 0.6)
      lerp(rm, rm.C0, rsc0 * CFrame.Angles(math.rad(90), math.rad(5), math.rad(20)), 0.2)
      lerp(rj, rj.C0, rootc0 * CFrame.new(0, 0, -1) * CFrame.Angles(math.rad(0), math.rad(0), -math.rad(0)), 0.6)
      if not Sheathed then
        lerp(raw, raw.C0, rawc0 * CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(180), math.rad(0), math.rad(0)), 1)
      end
    elseif Mode == "Stomp1" then
      lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, 0.85, -0.4) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)), 0.6)
      lerp(llegm, llegm.C0, llc0 * CFrame.new(0, 0, 0) * CFrame.Angles(-math.rad(15), math.rad(0), math.rad(0)), 0.6)
      lerp(neck, neck.C0, neckc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.6)
      lerp(lm, lm.C0, lsc0 * CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(140), math.rad(0), math.rad(30)), 0.6)
      lerp(rm, rm.C0, rsc0 * CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(140), math.rad(0), -math.rad(30)), 0.6)
      lerp(rj, rj.C0, rootc0 * CFrame.new(0, 0, 0) * CFrame.Angles(-math.rad(15), math.rad(0), math.rad(0)), 0.6)
      if not Sheathed then
        lerp(raw, raw.C0, rawc0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 1)
      end
    elseif Mode == "Stomp2" then
      lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, 0.1, -0.4) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.6)
      lerp(llegm, llegm.C0, llc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.6)
      lerp(neck, neck.C0, neckc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)), 0.6)
      lerp(lm, lm.C0, lsc0 * CFrame.new(0, 0, 0) * CFrame.Angles(-math.rad(20), math.rad(30), -math.rad(30)), 0.6)
      lerp(rm, rm.C0, rsc0 * CFrame.new(0, 0, 0) * CFrame.Angles(-math.rad(20), -math.rad(30), math.rad(30)), 0.6)
      lerp(rj, rj.C0, rootc0 * CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)), 0.6)
      if not Sheathed then
        lerp(raw, raw.C0, rawc0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 1)
      end
    elseif Mode == "Knee" then
      lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, 0, 0) * CFrame.Angles(-math.rad(25), math.rad(0), math.rad(0)), 0.6)
      lerp(llegm, llegm.C0, llc0 * CFrame.new(0, 0.75, -1.2) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.6)
      lerp(neck, neck.C0, neckc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)), 0.6)
      lerp(lm, lm.C0, lsc0 * CFrame.new(0, 0, 0) * CFrame.Angles(-math.rad(20), math.rad(30), -math.rad(30)), 0.6)
      lerp(rm, rm.C0, rsc0 * CFrame.new(0, 0, 0) * CFrame.Angles(-math.rad(20), -math.rad(30), math.rad(30)), 0.6)
      lerp(rj, rj.C0, rootc0 * CFrame.new(0, -0.3, 0) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)), 0.6)
      if not Sheathed then
        lerp(raw, raw.C0, rawc0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 1)
      end
    elseif Mode == "Grabbing" then
      lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, -math.rad(0), math.rad(8)), 0.3)
      lerp(llegm, llegm.C0, llc0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, -math.rad(8)), 0.3)
      lerp(neck, neck.C0, neckc0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, -math.rad(0), 0), 0.2)
      lerp(lm, lm.C0, lsc0 * CFrame.Angles(0, -math.rad(5), -math.rad(20)), 0.2)
      lerp(rm, rm.C0, rsc0 * CFrame.Angles(math.rad(90), math.rad(5), math.rad(20)), 0.2)
    elseif Mode == "Throw1" then
      lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, 0.2, -0.3) * CFrame.Angles(math.rad(10), -math.rad(30), math.rad(10)), 0.6)
      lerp(llegm, llegm.C0, llc0 * CFrame.new(0, -0.2, 0) * CFrame.Angles(-math.rad(20), math.rad(0), -math.rad(20)), 0.6)
      lerp(neck, neck.C0, neckc0 * CFrame.Angles(math.rad(20), -math.rad(50), math.rad(20)), 0.6)
      lerp(lm, lm.C0, lsc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(30), -math.rad(30)), 0.6)
      lerp(rm, rm.C0, rsc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(80), math.rad(50), math.rad(50)), 0.6)
      lerp(rj, rj.C0, rootc0 * CFrame.new(0, 0, -0.1) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(60)), 0.6)
    elseif Mode == "Beam" then
      lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, -math.rad(0), math.rad(8)), 0.3)
      lerp(llegm, llegm.C0, llc0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, -math.rad(8)), 0.3)
      lerp(neck, neck.C0, neckc0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, -math.rad(0), 0), 0.2)
      lerp(lm, lm.C0, lsc0 * CFrame.Angles(0, -math.rad(5), -math.rad(20)), 0.2)
      lerp(rm, rm.C0, rsc0 * CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(170), math.rad(5), math.rad(20)), 0.2)
    elseif Mode == "Shielding" then
      if mg > 3 then
        lerp(lm, lm.C0, lsc0 * CFrame.new(0.7, -0.5, -0.5) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(85)), 0.6)
        lerp(rm, rm.C0, rsc0 * CFrame.Angles(math.sin(t / 15) / 15, math.rad(5), math.rad(20)), 0.2)
        lerp(neck, neck.C0, neckc0 * CFrame.Angles(math.rad(-3 + 2 * math.cos(sine / 7)), math.rad(0 - 3 * math.cos(sine / 14)), math.rad(0)), 0.6)
        lerp(rj, rj.C0, rootc0 * CFrame.new(0, 0.1 * math.cos(sine / 7), 0) * CFrame.Angles(math.rad(2 + 2 * math.cos(sine / 7)), 0, math.rad(0 + 3 * math.cos(sine / 14))), 0.6)
        lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, 0.3 * math.cos(sine / 14) / 2, -0.05 + -math.sin(sine / 14) / 2) * CFrame.Angles(math.rad(-18) + math.sin(sine / 14) / 2.3, 0, 0), 0.6)
        lerp(llegm, llegm.C0, llc0 * CFrame.new(0, 0.3 * -math.cos(sine / 14) / 2, -0.05 + math.sin(sine / 14) / 2) * CFrame.Angles(math.rad(-18) + -math.sin(sine / 14) / 2.3, 0, 0), 0.6)
      else
        lerp(lm, lm.C0, lsc0 * CFrame.new(0.1, -0.5, -0.5) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(60)), 0.6)
        lerp(rm, rm.C0, rsc0 * CFrame.Angles(math.sin(t / 15) / 15, math.rad(5), math.rad(20)), 0.2)
        lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, 0.2, 0) * CFrame.Angles(-math.rad(40), math.rad(30), math.rad(20)), 0.6)
        lerp(llegm, llegm.C0, llc0 * CFrame.new(0, 0.2, -0.6) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)), 0.6)
        lerp(neck, neck.C0, neckc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(30), -math.rad(0)), 0.6)
        lerp(rj, rj.C0, rootc0 * CFrame.new(0, 0, -0.2) * CFrame.Angles(math.rad(0), math.rad(0), -math.rad(30)), 0.6)
      end
      if not Sheathed then
        lerp(raw, raw.C0, rawc0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 1)
      end
    elseif Mode == "Stabbing1" then
      lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, 0.85, -0.4) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)), 0.6)
      lerp(llegm, llegm.C0, llc0 * CFrame.new(0, 0, 0) * CFrame.Angles(-math.rad(15), math.rad(0), math.rad(0)), 0.6)
      lerp(neck, neck.C0, neckc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.6)
      lerp(lm, lm.C0, lsc0 * CFrame.new(0.5, 0.5, 0) * CFrame.Angles(math.rad(130), math.rad(0), math.rad(40)), 0.6)
      lerp(rm, rm.C0, rsc0 * CFrame.new(-0.5, 0.5, 0) * CFrame.Angles(math.rad(130), math.rad(0), -math.rad(40)), 0.6)
      lerp(rj, rj.C0, rootc0 * CFrame.new(0, 0, 0) * CFrame.Angles(-math.rad(15), math.rad(0), math.rad(0)), 0.6)
      if not Sheathed then
        lerp(raw, raw.C0, rawc0 * CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(180), math.rad(0), math.rad(0)), 1)
      end
    elseif Mode == "Stabbing2" then
      lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, 0.4, -0.6) * CFrame.Angles(-math.rad(10), math.rad(0), math.rad(0)), 0.6)
      lerp(llegm, llegm.C0, llc0 * CFrame.new(0, -0.5, -0.3) * CFrame.Angles(-math.rad(60), math.rad(0), math.rad(0)), 0.6)
      lerp(neck, neck.C0, neckc0 * CFrame.new(0, 0, 0) * CFrame.Angles(-math.rad(0), math.rad(0), -math.rad(0)), 0.6)
      lerp(lm, lm.C0, lsc0 * CFrame.new(0.5, 0.5, -0.8) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(40)), 0.6)
      lerp(rm, rm.C0, rsc0 * CFrame.new(-0.5, 0.5, -0.8) * CFrame.Angles(math.rad(90), math.rad(0), -math.rad(40)), 0.6)
      lerp(rj, rj.C0, rootc0 * CFrame.new(0, -1, -0.7) * CFrame.Angles(math.rad(0), math.rad(0), -math.rad(0)), 0.6)
      if not Sheathed then
        lerp(raw, raw.C0, rawc0 * CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(180), math.rad(0), math.rad(0)), 1)
      end
    end
  end)
end)()
coroutine.wrap(function()
  for i = 1, 3 do
    MediumParticleEmit(Head, "Bright green")
    wait(0.05)
    MediumParticleEmit(Head, "Really black")
    wait(0.03)
  end
end)()