local p = game.Players.LocalPlayer
player = p
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
local rs = game:GetService("RunService").RenderStepped
local stanceToggle = "Landed"
local animpose = "Landed"
local lastanimpose = "Landed"
math.randomseed(os.time())

for i, v in pairs(char:children()) do
  if v:IsA("Hat") then
    v:Destroy()
  end
end

Debounces = {
  CanAttack = true,
  CanJoke = true,
  on = false,
  NoIdl = false,
  Slashing = false,
  Slashed = false,
  Reaping = false,
  Reaped = false,
  Invisible = false
}
local Touche = {
  char.Name
}
function Magik()
  Spawn(function()
    if Debounces.Invisible == false then
      local lerp = function(a, b, c)
        return a + (b - a) * c
      end
      local rndRange = function(rng)
        return math.random(-rng * 1000, rng * 1000) / 1000
      end
      local magik = Instance.new("Part", larm)
      local Colors = {
        "Really red",
        "Really black"
      }
      magik.Anchored = true
      magik.Locked = true
      magik.FormFactor = "Custom"
      magik.Size = Vector3.new(1.2, 1.2, 1.2)
      magik.TopSurface = "Smooth"
      magik.Transparency = 0
      magik.BottomSurface = "Smooth"
      magik.CanCollide = false
      magik.BrickColor = BrickColor.new(Colors[math.random(1, #Colors)])
      local mr = math.rad
      local rnx, rny, rnz = mr(rndRange(180)), mr(rndRange(180)), mr(rndRange(180))
      local cf = larm.CFrame * CFrame.new(0, -0.8, 0) * CFrame.Angles(rnx, rny, rnz)
      magik.CFrame = cf
      for i = 0, 1, 0.05 do
        local newTrans = lerp(0.5, 1, i)
        local ns = lerp(1, 1.2, i)
        magik.Transparency = newTrans
        magik.Size = Vector3.new(ns, ns, ns)
        magik.CFrame = cf
        rs:wait()
      end
      magik:Destroy()
    elseif Debounces.Invisible == true then
      wait()
    end
  end)
end
function Orb()
  local Head = char.Head
  local DistanceAway = 4
  local Speed = 2.4
  local YNum = 0
  local MaxY = 0.5
  local MinY = -0.5
  local Up = true
  local Colours = {
    {
      X = 0.1,
      Y = 0,
      Z = 0
    },
    {
      X = 0.6,
      Y = 0,
      Z = 0
    }
  }
  function Run(Func)
    local Ok, Err = coroutine.resume(coroutine.create(Func))
    if not Ok then
      print(Err)
    end
  end
  local Part = Instance.new("Part")
  Part.BrickColor = BrickColor.new("Really black")
  Part.FormFactor = "Custom"
  Part.Size = Vector3.new(1, 1, 1)
  Part.Archivable = true
  Part.CanCollide = false
  Part.Locked = true
  Part.Position = Head.Position
  Part.Anchored = true
  Part.Name = "Orb"
  Part.TopSurface = "Smooth"
  Part.BottomSurface = "Smooth"
  Part.Parent = char
  local Mesh = Instance.new("SpecialMesh", Part)
  Mesh.MeshId = "rbxassetid://1185246"
  Mesh.TextureId = "rbxassetid://230806497"
  Mesh.Scale = Part.Size * 1.5
  Mesh.VertexColor = Vector3.new(0, 0, 0)
  local Emitter = Instance.new("ParticleEmitter", Part)
  local color1 = Color3.new(1, 0, 0)
  local color2 = Color3.new(0, 0, 0)
  Emitter.Color = ColorSequence.new(color1, color2)
  Emitter.Size = NumberSequence.new(0.8)
  Emitter.Texture = "rbxassetid://243098098"
  Emitter.Lifetime = NumberRange.new(1)
  Emitter.Rate = 200
  Emitter.Rotation = NumberRange.new(720)
  Emitter.RotSpeed = NumberRange.new(140)
  Emitter.Speed = NumberRange.new(0)
  Run(function()
    local ColorNum = 2
    local Iter = 2
    local CurrentX = 0
    local CurrentY = 0
    local CurrentZ = 0
    for i = 1, math.huge / 0.05 do
      if Part.Parent ~= nil then
        local PrevColTab = Colours[ColorNum - 1] or Colours[#Colours]
        local ColTab = Colours[ColorNum]
        if tostring(CurrentX) ~= tostring(ColTab.X) then
          CurrentX = 0 < ColTab.X - PrevColTab.X and CurrentX + 0.01 or Iter <= 1.01 and 0.2 or CurrentX - 0.01
        end
        if tostring(CurrentY) ~= tostring(ColTab.Y) then
          CurrentY = 0 < ColTab.Y - PrevColTab.Y and CurrentY + 0.01 or Iter <= 1.01 and 0 or CurrentY - 0.01
        end
        if tostring(CurrentZ) ~= tostring(ColTab.Z) then
          CurrentZ = 0 < ColTab.Z - PrevColTab.Z and CurrentZ + 0.01 or Iter <= 1.01 and 0 or CurrentZ - 0.01
        end
        Mesh.VertexColor = Vector3.new(CurrentX, CurrentY, CurrentZ)
        if Iter < 1.01 or Iter > 2 then
          ColorNum = ColorNum == #Colours and 1 or ColorNum + 1
          Iter = 2
        else
          Iter = Iter - 0.01
        end
        game:GetService("RunService").RenderStepped:wait()
      else
        break
      end
    end
  end)
  Run(function()
    game:GetService("RunService").RenderStepped:connect(function()
      if char:findFirstChild("Torso") then
        local TorCF = char.Torso.CFrame
        local currentPos = Part.CFrame.p
        local X = math.sin(math.rad(360) + time() / Speed) * DistanceAway
        local Z = math.cos(math.rad(360) + time() / Speed) * DistanceAway / 2
        local Y = 0.002
        if YNum > MaxY then
          Up = false
        elseif YNum < MinY then
          Up = true
        end
        if Up == false then
          Y = -Y
        end
        YNum = YNum + Y
        local endPos = (TorCF * CFrame.new(X, 0, Z)).p
        local movePos = (endPos - currentPos) * 0.25
        currentPos = currentPos + movePos
        Part.CFrame = CFrame.new(currentPos + Vector3.new(0, YNum, 0), TorCF.p)
      end
    end)
  end)
end
Orb()
function Singularity()
  pt = Instance.new("Part")
  pt.Parent = char
  pt.Name = "Singularity"
  pt.BrickColor = BrickColor.new("Really black")
  pt.Size = Vector3.new(1.8, 1, 1.8)
  ptmesh = Instance.new("CylinderMesh", pt)
  ptmesh.Scale = Vector3.new(1.8, 0.1, 1.8)
  ptweld = Instance.new("Weld", pt)
  ptweld.Part0 = larm
  ptweld.Part1 = pt
  ptweld.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
  ptweld.C1 = CFrame.new(0, 0, 0)
  local childList = {}
  local childSize = {}
  local massConstant = 1
  mass = 24000 * massConstant
  function cross(v1, v2)
    return Vector3.new(v1.y * v2.z - v2.y * v1.z, v1.z * v2.x - v1.x * v2.z, v1.x * v2.y - v2.x * v1.y)
  end
  local min = 0
  local max = 4
  while true do
    repeat
      wait()
      local n = 0
      while true do
        if n % 800 == 0 then
          wait()
        end
        n = n + 1
        local child = childList[n]
        if child ~= pt and child.Parent ~= char and child.Parent ~= char.Wings and child.Parent ~= char.Scythe and child.className == "Part" and child.Anchored == false then
          local relPos = pt.Position - child.Position
          if relPos.magnitude * 240 * massConstant < mass then
            child.RotVelocity = cross(child.CFrame.lookVector, relPos) * 20 / relPos.magnitude
            local canContinue = true
            if relPos.magnitude * 320 * massConstant < mass then
              local length = mass / (320 * relPos.magnitude * massConstant)
              if childSize[n].z * length > relPos.magnitude * 2 then
                mass = mass + child:GetMass()
                child:Remove()
                table.remove(childList, n)
                table.remove(childSize, n)
                canContinue = true
                n = n - 1
              else
                child.CanCollide = true
              end
            end
            motivator = child:FindFirstChild("Singularity")
            motivator = Instance.new("BodyPosition")
            motivator.Parent = child
            motivator.Name = "Singularity"
            motivator.position = pt.Position
            motivator.maxForce = Vector3.new(1, 1, 1) * mass * child:GetMass() / (relPos.magnitude * massConstant)
          end
        end
      end
    until n < #childList
  end
end
function Part(x, y, z, color, tr, cc, an, parent)
  local p = Instance.new("Part", parent or Weapon)
  p.formFactor = "Custom"
  p.Size = Vector3.new(x, y, z)
  p.BrickColor = BrickColor.new(color)
  p.CanCollide = cc
  p.Transparency = tr
  p.Anchored = an
  p.TopSurface, p.BottomSurface = 0, 0
  p.Locked = true
  p:BreakJoints()
  return p
end
function Mesh(par, num, x, y, z)
  local msh = _
  if num == 1 then
    msh = Instance.new("CylinderMesh", par)
  elseif num == 2 then
    msh = Instance.new("SpecialMesh", par)
    msh.MeshType = 3
  elseif num == 3 then
    msh = Instance.new("BlockMesh", par)
  elseif num == 4 then
    msh = Instance.new("SpecialMesh", par)
    msh.MeshType = "Torso"
  elseif type(num) == "string" then
    msh = Instance.new("SpecialMesh", par)
    msh.MeshId = num
  end
  msh.Scale = Vector3.new(x, y, z)
  return msh
end
function explosion(col1, col2, cfr, sz, rng, dmg)
  local a = Part(1, 1, 1, col1, 0.5, false, true, char)
  local a2 = Part(1, 1, 1, col2, 0.5, false, true, char)
  local a3 = Part(1, 1, 1, col2, 0.5, false, true, char)
  v1, v2, v3 = sz.x, sz.y, sz.z
  local m = Mesh(a, "http://www.roblox.com/asset/?id=1185246", v1, v2, v3)
  local m2 = Mesh(a2, 3, v1 / 3, v2 / 3, v3 / 3)
  local m3 = Mesh(a3, 3, v1 / 3, v2 / 3, v3 / 3)
  a.CFrame = cfr
  a2.CFrame = cfr * CFrame.Angles(math.random(), math.random(), math.random())
  a3.CFrame = cfr * CFrame.Angles(math.random(), math.random(), math.random())
  for i, v in pairs(workspace:children()) do
    if v:IsA("Model") and v:findFirstChild("Humanoid") and v:FindFirstChild("Armed") ~= nil and v:findFirstChild("Head") and v:findFirstChild("Torso") and rng > (v:findFirstChild("Torso").Position - a.Position).magnitude and v.Name ~= char.Name then
      local hit = v
      hit.Humanoid.Health = v.Humanoid.Health - dmg
      hit.Torso.Velocity = Vector3.new(math.random(-30, 30), 30, math.random(-30, 30))
      wait(0.1)
    end
  end
  Spawn(function()
    while wait() do
      if a.Transparency >= 1 then
        a:Destroy()
        a2:Destroy()
        a3:Destroy()
        break
      end
      m.Scale = m.Scale + Vector3.new(0.1, 0.1, 0.1)
      m2.Scale = m2.Scale + Vector3.new(0.1, 0.1, 0.1)
      m3.Scale = m3.Scale + Vector3.new(0.1, 0.1, 0.1)
      a.Transparency = a.Transparency + 0.05
      a2.Transparency = a2.Transparency + 0.05
      a3.Transparency = a3.Transparency + 0.05
    end
  end)
end
local keyVectors = {
  w = Vector3.new(0, 0, 1),
  a = Vector3.new(1, 0, 0),
  s = Vector3.new(0, 0, -1),
  d = Vector3.new(-1, 0, 0)
}
local flySpeed = 30
local canFly = false
char.Humanoid.WalkSpeed = 5
function lerp(a, b, t)
  return a + (b - a) * t
end
function slerp(a, b, t)
  dot = a:Dot(b)
  if dot > 0.99999 or dot < -0.99999 then
    return t <= 0.5 and a or b
  else
    r = math.acos(dot)
    return (a * math.sin((1 - t) * r) + b * math.sin(t * r)) / math.sin(r)
  end
end
function matrixInterpolate(a, b, t)
  local ax, ay, az, a00, a01, a02, a10, a11, a12, a20, a21, a22 = a:components()
  local bx, by, bz, b00, b01, b02, b10, b11, b12, b20, b21, b22 = b:components()
  local v0 = lerp(Vector3.new(ax, ay, az), Vector3.new(bx, by, bz), t)
  local v1 = slerp(Vector3.new(a00, a01, a02), Vector3.new(b00, b01, b02), t)
  local v2 = slerp(Vector3.new(a10, a11, a12), Vector3.new(b10, b11, b12), t)
  local v3 = slerp(Vector3.new(a20, a21, a22), Vector3.new(b20, b21, b22), t)
  local t = v1:Dot(v2)
  if not (t < 0) and t ~= 0 and not (t > 0) then
    return CFrame.new()
  end
  return CFrame.new(v0.x, v0.y, v0.z, v1.x, v1.y, v1.z, v2.x, v2.y, v2.z, v3.x, v3.y, v3.z)
end
function genWeld(a, b)
  local w = Instance.new("Weld", a)
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
  return weld
end
function Lerp(c1, c2, al)
  local com1 = {
    c1.X,
    c1.Y,
    c1.Z,
    c1:toEulerAnglesXYZ()
  }
  local com2 = {
    c2.X,
    c2.Y,
    c2.Z,
    c2:toEulerAnglesXYZ()
  }
  for i, v in pairs(com1) do
    com1[i] = v + (com2[i] - v) * al
  end
  return CFrame.new(com1[1], com1[2], com1[3]) * CFrame.Angles(select(4, unpack(com1)))
end
function newWeld(wp0, wp1, wc0x, wc0y, wc0z)
  wld = Instance.new("Weld", wp1)
  wld.Part0 = wp0
  wld.Part1 = wp1
  wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
function HasntTouched(plrname)
  local ret = true
  for _, v in pairs(Touche) do
    if v == plrname then
      ret = false
    end
  end
  return ret
end
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
lite = Instance.new("PointLight")
lite.Parent = torso
lite.Brightness = 10
lite.Range = 8
lite.Color = Color3.new(1, 0, 0)
tex = {
  "227614710",
  "227614744",
  "176349813"
}

hed.face:Destroy()
for i, v in pairs(hed:children()) do
  if v:IsA("Sound") then
    v:Destroy()
  end
end
local m = Instance.new("Model")
m.Name = "Wings"
p1 = Instance.new("Part", m)
p1.Locked = true
p1.BrickColor = BrickColor.new("Really black")
p1.Material = Enum.Material.Granite
p1.CFrame = CFrame.new(4.00505066, 33.4928169, -4.82146454, 0.183114901, -0.683006704, -0.707055748, -0.0731125548, -0.726672411, 0.683047652, -0.98032999, -0.0733708739, -0.183036968)
p1.CanCollide = false
p1.Locked = true
p1.FormFactor = Enum.FormFactor.Symmetric
p1.Elasticity = 0
p1.Size = Vector3.new(1, 1, 1)
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("BlockMesh", p1)
b1.Name = "Mesh"
b1.Scale = Vector3.new(0.299999923, 1, 0.299999923)
p2 = Instance.new("Part", m)
p2.Locked = true
p2.BrickColor = BrickColor.new("Really black")
p2.Material = Enum.Material.Granite
p2.CFrame = CFrame.new(4.74708462, 33.9485626, -4.68552876, 0.250160784, -0.932976127, -0.258712411, -0.0848884508, -0.287296951, 0.954047561, -0.96443516, -0.216712922, -0.15110597)
p2.CanCollide = false
p2.Locked = true
p2.FormFactor = Enum.FormFactor.Symmetric
p2.Elasticity = 0
p2.Size = Vector3.new(1, 1, 1)
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("BlockMesh", p2)
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.299999923, 1, 0.299999923)
p3 = Instance.new("Part", m)
p3.Locked = true
p3.BrickColor = BrickColor.new("Really black")
p3.Material = Enum.Material.Granite
p3.CFrame = CFrame.new(5.5990572, 33.9660759, -4.46874762, 0.250122428, -0.932927489, 0.258925021, -0.100628398, 0.240945876, 0.965283036, -0.962929666, -0.267520964, -0.0336397961)
p3.CanCollide = false
p3.Locked = true
p3.FormFactor = Enum.FormFactor.Symmetric
p3.Elasticity = 0
p3.Size = Vector3.new(1, 1, 1)
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("BlockMesh", p3)
b3.Name = "Mesh"
b3.Scale = Vector3.new(0.299999923, 1, 0.299999923)
p4 = Instance.new("Part", m)
p4.Locked = true
p4.BrickColor = BrickColor.new("Really black")
p4.Material = Enum.Material.Granite
p4.CFrame = CFrame.new(4.69753027, 32.2661591, -5.10262108, 0.999978602, 3.89814377E-5, -1.2204051E-5, -5.93364239E-5, 0.965853453, -0.258997083, 1.88481063E-5, 0.258963734, 0.965852261)
p4.CanCollide = false
p4.Locked = true
p4.FormFactor = Enum.FormFactor.Symmetric
p4.Elasticity = 0
p4.Size = Vector3.new(1, 4, 1)
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("BlockMesh", p4)
b4.Name = "Mesh"
b4.Scale = Vector3.new(0.099999927, 0.899999976, 0.099999927)
p5 = Instance.new("Part", m)
p5.Locked = true
p5.BrickColor = BrickColor.new("Really black")
p5.Material = Enum.Material.Granite
p5.CFrame = CFrame.new(3.19703007, 32.616993, -4.90421152, 0.18311964, -0.707020223, 0.683042347, -0.0731106997, 0.683084905, 0.726637542, -0.980329216, -0.183035403, 0.0733848959)
p5.CanCollide = false
p5.Locked = true
p5.FormFactor = Enum.FormFactor.Symmetric
p5.Elasticity = 0
p5.Size = Vector3.new(1, 1, 2)
p5.BottomSurface = Enum.SurfaceType.Smooth
p5.TopSurface = Enum.SurfaceType.Smooth
b5 = Instance.new("SpecialMesh", p5)
b5.MeshType = Enum.MeshType.Wedge
b5.Name = "Mesh"
b5.Scale = Vector3.new(0.319999993, 0.299999923, 0.699999928)
p6 = Instance.new("Part", m)
p6.Locked = true
p6.BrickColor = BrickColor.new("Really black")
p6.Material = Enum.Material.Granite
p6.CFrame = CFrame.new(3.69605827, 31.8634911, -4.90406418, 0.994495451, 0.104575306, -1.62813812E-5, -0.103575408, 0.984787226, -0.13935037, -0.0145363435, 0.138556957, 0.990213752)
p6.CanCollide = false
p6.Locked = true
p6.FormFactor = Enum.FormFactor.Symmetric
p6.Elasticity = 0
p6.Size = Vector3.new(1, 3, 1)
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
b6 = Instance.new("BlockMesh", p6)
b6.Name = "Mesh"
b6.Scale = Vector3.new(0.099999927, 0.899999976, 0.099999927)
p7 = Instance.new("Part", m)
p7.Locked = true
p7.BrickColor = BrickColor.new("Really black")
p7.Material = Enum.Material.Granite
p7.CFrame = CFrame.new(5.69514275, 32.2612495, -4.70427704, 0.994507253, -0.104462557, -3.46558663E-5, 0.103659078, 0.987076342, -0.122013614, 0.0127939917, 0.121307924, 0.992498517)
p7.CanCollide = false
p7.Locked = true
p7.FormFactor = Enum.FormFactor.Symmetric
p7.Elasticity = 0
p7.Size = Vector3.new(1, 4, 1)
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
b7 = Instance.new("BlockMesh", p7)
b7.Name = "Mesh"
b7.Scale = Vector3.new(0.099999927, 0.899999976, 0.099999927)
p8 = Instance.new("Part", m)
p8.Locked = true
p8.BrickColor = BrickColor.new("Really black")
p8.Material = Enum.Material.Granite
p8.CFrame = CFrame.new(7.3525548, 32.5016174, -3.83479047, 0.183080241, -0.682897449, 0.707170248, -0.183076292, 0.683073223, 0.706997991, -0.965858579, -0.258940101, 2.44453549E-5)
p8.CanCollide = false
p8.Locked = true
p8.FormFactor = Enum.FormFactor.Symmetric
p8.Elasticity = 0
p8.Size = Vector3.new(1, 4, 1)
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
b8 = Instance.new("BlockMesh", p8)
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.299999923, 1, 0.299999923)
p9 = Instance.new("Part", m)
p9.Locked = true
p9.BrickColor = BrickColor.new("Really black")
p9.Material = Enum.Material.Granite
p9.CFrame = CFrame.new(6.69344425, 31.7584076, -4.00551939, 0.996166587, 0.0872306526, -3.4507364E-5, -0.0871950984, 0.995560527, 0.0347601473, 0.00308645656, -0.0346546173, 0.999360979)
p9.CanCollide = false
p9.Locked = true
p9.FormFactor = Enum.FormFactor.Symmetric
p9.Elasticity = 0
p9.Size = Vector3.new(1, 3, 1)
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
b9 = Instance.new("BlockMesh", p9)
b9.Name = "Mesh"
b9.Scale = Vector3.new(0.099999927, 0.899999976, 0.099999927)
p10 = Instance.new("Part", m)
p10.Locked = true
p10.BrickColor = BrickColor.new("Really black")
p10.Material = Enum.Material.Granite
p10.CFrame = CFrame.new(11.0333385, 32.4983444, -3.83598185, -0.182976365, -0.683012605, -0.707085848, -0.183169425, -0.682933569, 0.707108617, -0.965865672, 0.258913875, -1.81082636E-4)
p10.CanCollide = false
p10.Locked = true
p10.FormFactor = Enum.FormFactor.Symmetric
p10.Elasticity = 0
p10.Size = Vector3.new(1, 4, 1)
p10.BottomSurface = Enum.SurfaceType.Smooth
p10.TopSurface = Enum.SurfaceType.Smooth
b10 = Instance.new("BlockMesh", p10)
b10.Name = "Mesh"
b10.Scale = Vector3.new(0.299999923, 1, 0.299999923)
p11 = Instance.new("Part", m)
p11.Locked = true
p11.BrickColor = BrickColor.new("Really black")
p11.Material = Enum.Material.Granite
p11.CFrame = CFrame.new(7.69124699, 31.2556458, -3.70668387, 0.965880513, 0.258904785, -3.89236957E-5, -0.258764327, 0.965280056, -0.0350343585, -0.00900821667, 0.0338230878, 0.999353766)
p11.CanCollide = false
p11.Locked = true
p11.FormFactor = Enum.FormFactor.Symmetric
p11.Elasticity = 0
p11.Size = Vector3.new(1, 2, 1)
p11.BottomSurface = Enum.SurfaceType.Smooth
p11.TopSurface = Enum.SurfaceType.Smooth
b11 = Instance.new("BlockMesh", p11)
b11.Name = "Mesh"
b11.Scale = Vector3.new(0.099999927, 0.899999976, 0.099999927)
p12 = Instance.new("Part", m)
p12.Locked = true
p12.BrickColor = BrickColor.new("Really black")
p12.Material = Enum.Material.Granite
p12.CFrame = CFrame.new(10.6899939, 31.2537575, -3.807019, 0.965932727, -0.258710295, -5.67453499E-5, 0.258531392, 0.965343654, -0.0350018553, 0.0091185784, 0.0337598696, 0.999354899)
p12.CanCollide = false
p12.Locked = true
p12.FormFactor = Enum.FormFactor.Symmetric
p12.Elasticity = 0
p12.Size = Vector3.new(1, 2, 1)
p12.BottomSurface = Enum.SurfaceType.Smooth
p12.TopSurface = Enum.SurfaceType.Smooth
b12 = Instance.new("BlockMesh", p12)
b12.Name = "Mesh"
b12.Scale = Vector3.new(0.099999927, 0.899999976, 0.099999927)
p13 = Instance.new("Part", m)
p13.Locked = true
p13.BrickColor = BrickColor.new("Really black")
p13.Material = Enum.Material.Granite
p13.CFrame = CFrame.new(11.6887894, 31.7515755, -4.00750923, 0.996184528, -0.0870245844, -6.56315169E-5, 0.0869554803, 0.995579183, 0.0348259509, -0.00295105297, -0.034732528, 0.999358773)
p13.CanCollide = false
p13.Locked = true
p13.FormFactor = Enum.FormFactor.Symmetric
p13.Elasticity = 0
p13.Size = Vector3.new(1, 3, 1)
p13.BottomSurface = Enum.SurfaceType.Smooth
p13.TopSurface = Enum.SurfaceType.Smooth
b13 = Instance.new("BlockMesh", p13)
b13.Name = "Mesh"
b13.Scale = Vector3.new(0.099999927, 0.899999976, 0.099999927)
p14 = Instance.new("Part", m)
p14.Locked = true
p14.BrickColor = BrickColor.new("Really black")
p14.Material = Enum.Material.Granite
p14.CFrame = CFrame.new(12.7923355, 33.9332466, -4.46212053, -0.249924123, 0.933040857, 0.258707672, -0.201046765, 0.211336777, -0.956487834, -0.947125912, -0.291055977, 0.13480334)
p14.CanCollide = false
p14.Locked = true
p14.FormFactor = Enum.FormFactor.Symmetric
p14.Elasticity = 0
p14.Size = Vector3.new(1, 1, 1)
p14.BottomSurface = Enum.SurfaceType.Smooth
p14.TopSurface = Enum.SurfaceType.Smooth
b14 = Instance.new("BlockMesh", p14)
b14.Name = "Mesh"
b14.Scale = Vector3.new(0.299999923, 1, 0.299999923)
p15 = Instance.new("Part", m)
p15.Locked = true
p15.BrickColor = BrickColor.new("Really black")
p15.Material = Enum.Material.Granite
p15.CFrame = CFrame.new(12.6862593, 32.2479095, -4.7085743, 0.994484186, 0.104681045, -9.06065106E-5, -0.103929043, 0.987058163, -0.121930704, -0.0126541853, 0.12123926, 0.992508888)
p15.CanCollide = false
p15.Locked = true
p15.FormFactor = Enum.FormFactor.Symmetric
p15.Elasticity = 0
p15.Size = Vector3.new(1, 4, 1)
p15.BottomSurface = Enum.SurfaceType.Smooth
p15.TopSurface = Enum.SurfaceType.Smooth
b15 = Instance.new("BlockMesh", p15)
b15.Name = "Mesh"
b15.Scale = Vector3.new(0.099999927, 0.899999976, 0.099999927)
p16 = Instance.new("Part", m)
p16.Locked = true
p16.BrickColor = BrickColor.new("Really black")
p16.Material = Enum.Material.Granite
p16.CFrame = CFrame.new(13.6850252, 32.1465797, -5.10911608, 0.999978483, 1.53689994E-4, -1.32530608E-4, -2.01218107E-4, 0.965894699, -0.258842885, 1.05372645E-4, 0.258809566, 0.965893686)
p16.CanCollide = false
p16.Locked = true
p16.FormFactor = Enum.FormFactor.Symmetric
p16.Elasticity = 0
p16.Size = Vector3.new(1, 4, 1)
p16.BottomSurface = Enum.SurfaceType.Smooth
p16.TopSurface = Enum.SurfaceType.Smooth
b16 = Instance.new("BlockMesh", p16)
b16.Name = "Mesh"
b16.Scale = Vector3.new(0.099999927, 0.899999976, 0.099999927)
p17 = Instance.new("Part", m)
p17.Locked = true
p17.BrickColor = BrickColor.new("Really black")
p17.Material = Enum.Material.Granite
p17.CFrame = CFrame.new(13.6215448, 33.8896255, -4.67470169, -0.249971449, 0.932958663, -0.25895822, -0.185647413, -0.308687627, -0.932844639, -0.950252473, -0.185085967, 0.250392795)
p17.CanCollide = false
p17.Locked = true
p17.FormFactor = Enum.FormFactor.Symmetric
p17.Elasticity = 0
p17.Size = Vector3.new(1, 1, 1)
p17.BottomSurface = Enum.SurfaceType.Smooth
p17.TopSurface = Enum.SurfaceType.Smooth
b17 = Instance.new("BlockMesh", p17)
b17.Name = "Mesh"
b17.Scale = Vector3.new(0.299999923, 1, 0.299999923)
p18 = Instance.new("Part", m)
p18.Locked = true
p18.BrickColor = BrickColor.new("Really black")
p18.Material = Enum.Material.Granite
p18.CFrame = CFrame.new(14.3830872, 33.3993073, -4.76018381, -0.20159933, 0.702869058, -0.682121515, -0.186127961, -0.711234272, -0.677830637, -0.961583436, -0.00965368003, 0.274221182)
p18.CanCollide = false
p18.Locked = true
p18.FormFactor = Enum.FormFactor.Symmetric
p18.Elasticity = 0
p18.Size = Vector3.new(1, 1, 1)
p18.BottomSurface = Enum.SurfaceType.Smooth
p18.TopSurface = Enum.SurfaceType.Smooth
b18 = Instance.new("BlockMesh", p18)
b18.Name = "Mesh"
b18.Scale = Vector3.new(0.299999923, 1, 0.299999923)
p19 = Instance.new("Part", m)
p19.Locked = true
p19.BrickColor = BrickColor.new("Really black")
p19.Material = Enum.Material.Granite
p19.CFrame = CFrame.new(14.680851, 31.7412434, -4.91061258, 0.994524717, -0.104295641, -1.06811523E-4, 0.10324651, 0.984840035, -0.139221251, 0.0146392882, 0.138416395, 0.99023217)
p19.CanCollide = false
p19.Locked = true
p19.FormFactor = Enum.FormFactor.Symmetric
p19.Elasticity = 0
p19.Size = Vector3.new(1, 3, 1)
p19.BottomSurface = Enum.SurfaceType.Smooth
p19.TopSurface = Enum.SurfaceType.Smooth
b19 = Instance.new("BlockMesh", p19)
b19.Name = "Mesh"
b19.Scale = Vector3.new(0.099999927, 0.899999976, 0.099999927)
p20 = Instance.new("Part", m)
p20.Locked = true
p20.BrickColor = BrickColor.new("Really black")
p20.Material = Enum.Material.Granite
p20.CFrame = CFrame.new(15.2249002, 32.5392723, -4.76552296, 0.201453701, 0.682167888, -0.702865899, 0.186143726, 0.677821279, 0.7112391, 0.961610973, -0.274129003, 0.00953372568)
p20.CanCollide = false
p20.Locked = true
p20.FormFactor = Enum.FormFactor.Symmetric
p20.Elasticity = 0
p20.Size = Vector3.new(1, 1, 2)
p20.BottomSurface = Enum.SurfaceType.Smooth
p20.TopSurface = Enum.SurfaceType.Smooth
b20 = Instance.new("SpecialMesh", p20)
b20.MeshType = Enum.MeshType.Wedge
b20.Name = "Mesh"
b20.Scale = Vector3.new(0.319999993, 0.299999923, 0.699999928)
w1 = Instance.new("Weld", p1)
w1.Name = "Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(-3.01126528, 26.7200279, -20.9279003, 0.183114901, -0.0731125548, -0.98032999, -0.683006704, -0.726672411, -0.0733708739, -0.707055748, 0.683047652, -0.183036968)
w1.Part1 = p2
w1.C1 = CFrame.new(-2.82322073, 13.1690922, -31.8693428, 0.250166863, -0.0849119872, -0.964431524, -0.932969987, -0.287320077, -0.216708973, -0.258728862, 0.95403856, -0.151135027)
w2 = Instance.new("Weld", p2)
w2.Name = "Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(-2.8245821, 13.1668215, -31.8684235, 0.250160784, -0.0848884508, -0.96443516, -0.932976127, -0.287296951, -0.216712922, -0.258712411, 0.954047561, -0.15110597)
w2.Part1 = p3
w2.C1 = CFrame.new(-2.28424144, -4.15451765, -34.3888512, 0.250128031, -0.100651339, -0.962925732, -0.932930112, 0.24092333, -0.267531633, 0.258909881, 0.965286374, -0.0336657539)
w3 = Instance.new("Weld", p3)
w3.Name = "Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(-2.28558755, -4.15595484, -34.3869438, 0.250122428, -0.100628398, -0.962929666, -0.932927489, 0.240945876, -0.267520964, 0.258925021, 0.965283036, -0.0336397961)
w3.Part1 = p4
w3.C1 = CFrame.new(-4.69691086, -29.8441048, 13.2859917, 0.999978542, -4.08291817E-5, 1.67358667E-6, 2.62409449E-5, 0.965845168, 0.258995235, 9.07480717E-6, -0.259028792, 0.965843678)
w4 = Instance.new("Weld", p4)
w4.Name = "Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(-4.69541883, -29.8431702, 13.2852764, 0.999978602, -5.93364239E-5, 1.88481063E-5, 3.89814377E-5, 0.965853453, 0.258963734, -1.2204051E-5, -0.258997083, 0.965852261)
w4.Part1 = p5
w4.C1 = CFrame.new(-3.00703287, -20.9178867, -25.5261555, 0.183128908, -0.0731364638, -0.98032546, -0.707014203, 0.683083951, -0.183059886, 0.683045924, 0.726636648, 0.0733732358)
w5 = Instance.new("Weld", p5)
w5.Name = "Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(-3.00852942, -20.9174557, -25.5245419, 0.18311964, -0.0731106997, -0.980329216, -0.707020223, 0.683084905, -0.183035403, 0.683042347, 0.726637542, 0.0733848959)
w5.Part1 = p6
w5.C1 = CFrame.new(-0.44799307, -31.0869961, 9.29689217, 0.994496524, -0.103558064, -0.0145571418, 0.104563534, 0.984785318, 0.13858816, 3.20933759E-6, -0.139384151, 0.990208864)
w6 = Instance.new("Weld", p6)
w6.Name = "Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(-0.446726084, -31.085783, 9.29632187, 0.994495451, -0.103575408, -0.0145363435, 0.104575306, 0.984787226, 0.138556957, -1.62813812E-5, -0.13935037, 0.990213752)
w6.Part1 = p7
w6.C1 = CFrame.new(-8.9495039, -30.6797161, 8.60602665, 0.994505703, 0.103678115, 0.0127804801, -0.104474045, 0.98707211, 0.121342868, -1.54954214E-5, -0.122048028, 0.992493927)
w7 = Instance.new("Weld", p7)
w7.Name = "Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(-8.94784546, -30.6787224, 8.60549736, 0.994507253, 0.103659078, 0.0127939917, -0.104462557, 0.987076342, 0.121307924, -3.46558663E-5, -0.122013614, 0.992498517)
w7.Part1 = p8
w7.C1 = CFrame.new(0.90177393, -18.1730423, -28.1796837, 0.183085978, -0.183097184, -0.965851784, -0.68289125, 0.683066607, -0.258961439, 0.707173645, 0.707004905, 1.36196613E-5)
w8 = Instance.new("Weld", p8)
w8.Name = "Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(0.900302649, -18.172924, -28.1779938, 0.183080241, -0.183076292, -0.965858579, -0.682897449, 0.683073223, -0.258940101, 0.707170248, 0.706997991, 2.44453549E-5)
w8.Part1 = p9
w8.C1 = CFrame.new(-3.88768721, -32.3414574, 2.89949036, 0.996168256, -0.0871771574, 0.00306662358, 0.0872120261, 0.995563269, -0.0346250534, -1.79689378E-5, 0.034728989, 0.999362051)
w9 = Instance.new("Weld", p9)
w9.Name = "Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(-3.88624525, -32.3400993, 2.89926386, 0.996166587, -0.0871950984, 0.00308645656, 0.0872306526, 0.995560527, -0.0346546173, -3.4507364E-5, 0.0347601473, 0.999360979)
w9.Part1 = p10
w9.C1 = CFrame.new(4.2683754, 30.7251549, -15.1793909, -0.182957828, -0.183199286, -0.965863526, -0.683015704, -0.68292743, 0.258921832, -0.707087696, 0.707106888, -2.15830281E-4)
w10 = Instance.new("Weld", p10)
w10.Name = "Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(4.26650047, 30.7233086, -15.1790371, -0.182976365, -0.183169425, -0.965865672, -0.683012605, -0.682933569, 0.258913875, -0.707085848, 0.707108617, -1.81082636E-4)
w10.Part1 = p11
w10.C1 = CFrame.new(0.62466073, -32.0378494, 4.79988861, 0.965884089, -0.25875017, -0.00903337821, 0.258891433, 0.965282679, 0.0338500105, -2.11130828E-5, -0.0350668617, 0.999352574)
w11 = Instance.new("Weld", p11)
w11.Name = "Weld"
w11.Part0 = p11
w11.C0 = CFrame.new(0.625629783, -32.0363846, 4.79960918, 0.965880513, -0.258764327, -0.00900821667, 0.258904785, 0.965280056, 0.0338230878, -3.89236957E-5, -0.0350343585, 0.999353766)
w11.Part1 = p12
w11.C1 = CFrame.new(-18.3733082, -27.2772636, 4.89948606, 0.965928197, 0.258548319, 0.00911035948, -0.258726895, 0.965337932, 0.0337957405, -3.89107154E-5, -0.0350343771, 0.999353766)
w12 = Instance.new("Weld", p12)
w12.Name = "Weld"
w12.Part0 = p12
w12.C0 = CFrame.new(-18.3711777, -27.2764797, 4.89910936, 0.965932727, 0.258531392, 0.0091185784, -0.258710295, 0.965343654, 0.0337598696, -5.67453499E-5, -0.0350018553, 0.999354899)
w12.Part1 = p13
w12.C1 = CFrame.new(-14.4189634, -30.7343349, 2.90014172, 0.996183038, 0.0869738981, -0.00296546891, -0.0870435014, 0.995578647, -0.0346999466, -4.90876228E-5, 0.0347947553, 0.999359846)
w13 = Instance.new("Weld", p13)
w13.Name = "Weld"
w13.Part0 = p13
w13.C0 = CFrame.new(-14.4169912, -30.7331867, 2.89992785, 0.996184528, 0.0869554803, -0.00295105297, -0.0870245844, 0.995579183, -0.034732528, -6.56315169E-5, 0.0348259509, 0.999358773)
w13.Part1 = p14
w13.C1 = CFrame.new(5.79514027, -20.4076347, 29.7497234, -0.249904647, -0.201077104, -0.947124541, 0.933041394, 0.211347103, -0.291046262, 0.258724064, -0.956479192, 0.134833321)
w14 = Instance.new("Weld", p14)
w14.Name = "Weld"
w14.Part0 = p14
w14.C0 = CFrame.new(5.79309225, -20.4058418, 29.7487717, -0.249924123, -0.201046765, -0.947125912, 0.933040857, 0.211336777, -0.291055977, 0.258707672, -0.956487834, 0.13480334)
w14.Part1 = p15
w14.C1 = CFrame.new(-9.32605648, -32.5890007, 8.60702801, 0.994485676, -0.103911966, -0.0126748905, 0.10466665, 0.987055898, 0.121270344, -7.13467598E-5, -0.121963806, 0.992504835)
w15 = Instance.new("Weld", p15)
w15.Name = "Weld"
w15.Part0 = p15
w15.C0 = CFrame.new(-9.32437229, -32.5877075, 8.60646152, 0.994484186, -0.103929043, -0.0126541853, 0.104681045, 0.987058163, 0.12123926, -9.06065106E-5, -0.121930704, 0.992508888)
w15.Part1 = p16
w15.C1 = CFrame.new(-13.6797218, -29.7310848, 13.2582951, 0.999978483, -1.82760923E-4, 8.82308159E-5, 1.40290926E-4, 0.965886235, 0.258840919, -1.11197325E-4, -0.258874267, 0.965885282)
w16 = Instance.new("Weld", p16)
w16.Name = "Weld"
w16.Part0 = p16
w16.C0 = CFrame.new(-13.6777229, -29.7300262, 13.2575903, 0.999978483, -2.01218107E-4, 1.05372645E-4, 1.53689994E-4, 0.965894699, 0.258809566, -1.32530608E-4, -0.258842885, 0.965893686)
w16.Part1 = p17
w16.C1 = CFrame.new(5.25641394, -3.11353135, 36.3133812, -0.249951899, -0.185678303, -0.95025146, 0.932969809, -0.308667481, -0.185063779, -0.25893718, -0.932845175, 0.250412643)
w17 = Instance.new("Weld", p17)
w17.Name = "Weld"
w17.Part0 = p17
w17.C0 = CFrame.new(5.25437212, -3.11225104, 36.3116798, -0.249971449, -0.185647413, -0.950252473, 0.932958663, -0.308687627, -0.185085967, -0.25895822, -0.932844639, 0.250392795)
w17.Part1 = p18
w17.C1 = CFrame.new(4.54062843, 13.5992327, 33.757431, -0.201580539, -0.186157972, -0.961581469, 0.70288074, -0.711223066, -0.00962240249, -0.682114959, -0.677834094, 0.274228811)
w18 = Instance.new("Weld", p18)
w18.Name = "Weld"
w18.Part0 = p18
w18.C0 = CFrame.new(4.53885221, 13.5993519, 33.7554321, -0.20159933, -0.186127961, -0.961583436, 0.702869058, -0.711234272, -0.00965368003, -0.682121515, -0.677830637, 0.274221182)
w18.Part1 = p19
w18.C1 = CFrame.new(-17.8078384, -29.0500088, 9.28386497, 0.994522929, 0.103265405, 0.0146258771, -0.10431245, 0.984833241, 0.13845095, -8.73506069E-5, -0.139254272, 0.99022752)
w19 = Instance.new("Weld", p19)
w19.Name = "Weld"
w19.Part0 = p19
w19.C0 = CFrame.new(-17.8057537, -29.0491905, 9.28326988, 0.994524717, 0.10324651, 0.0146392882, -0.104295641, 0.984840035, 0.138416395, -1.06811523E-4, -0.139221251, 0.99023217)
w19.Part1 = p20
w19.C1 = CFrame.new(-4.54328012, -33.7499733, -12.3970623, 0.201434925, 0.186173707, 0.961609066, 0.682171226, 0.677814841, -0.274136811, -0.702868044, 0.71123749, 0.00949859619)
w20 = Instance.new("Weld", p20)
w20.Name = "Head_Weld"
w20.Part0 = p20
w20.C0 = CFrame.new(-4.56198359, -33.785675, -12.3958597, 0.201463863, 0.186141863, 0.961645186, 0.681998372, 0.678058743, -0.274119109, -0.703055739, 0.711058617, 0.00965214521)
m.Parent = char
m:MakeJoints()
local cor = Instance.new("Part", char.Wings)
cor.Name = "Thingy"
cor.Locked = true
cor.BottomSurface = 0
cor.CanCollide = false
cor.Size = Vector3.new(1, 6, 1)
cor.Transparency = 1
cor.TopSurface = 0
corw = Instance.new("Weld", cor)
corw.Part0 = torso
corw.Part1 = cor
corw.C0 = CFrame.new(3.8, 5.2, 2.3) * CFrame.Angles(math.rad(290), math.rad(45), math.rad(-100))
corw.C1 = CFrame.new(0, 0, 0)
weld1 = Instance.new("Weld", char.Wings)
weld1.Part0 = cor
weld1.Part1 = p1
weld1.C0 = CFrame.new(0, 3, -1)
local m1 = Instance.new("Model")
m1.Name = "Scythe"
p1 = Instance.new("Part", m1)
p1.Locked = true
p1.BrickColor = BrickColor.new("Really black")
p1.Material = "Granite"
p1.Name = "Part5"
p1.CFrame = CFrame.new(-15.4790545, 13.1252527, -1.25573051, -0.148844868, -0.181690469, -0.972028434, -0.139209464, 0.977047265, -0.161312819, 0.979018033, 0.111305036, -0.170718044)
p1.CanCollide = false
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(0.25, 2.25125027, 0.625)
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("CylinderMesh", p1)
b1.Name = "Mesh"
p2 = Instance.new("Part", m1)
p2.Locked = true
p2.BrickColor = BrickColor.new("Really black")
p2.Material = "Granite"
p2.Name = "Part6"
p2.CFrame = CFrame.new(-15.3824081, 10.952775, -1.24440408, -0.128349721, 0.0941501483, -0.987252772, 0.129729301, 0.988533914, 0.0774054229, 0.983212769, -0.118139267, -0.139088899)
p2.CanCollide = false
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.25, 2.25125027, 0.625)
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("CylinderMesh", p2)
b2.Name = "Mesh"
p3 = Instance.new("Part", m1)
p3.Locked = true
p3.BrickColor = BrickColor.new("Really black")
p3.Material = "Granite"
p3.Name = "Part7"
p3.CFrame = CFrame.new(-15.4747982, 13.69979, -1.75563574, -0.972027183, -0.129069194, 0.196240276, -0.161315769, 0.97412771, -0.158338636, -0.170723677, -0.185564086, -0.967692614)
p3.CanCollide = false
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(0.200000003, 0.625, 1.18875003)
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("BlockMesh", p3)
b3.Name = "Mesh"
b3.Scale = Vector3.new(0.618750155, 1, 1)
p4 = Instance.new("Part", m1)
p4.Locked = true
p4.BrickColor = BrickColor.new("Bright red")
p4.Material = "Granite"
p4.Name = "Part8"
p4.CFrame = CFrame.new(-15.4781666, 13.7140617, -1.73542035, -0.972027183, -0.129069448, 0.196239948, -0.161315426, 0.974126935, -0.158338472, -0.170723975, -0.185564145, -0.967692196)
p4.CanCollide = false
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(0.200000003, 0.396249801, 1.14375019)
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("BlockMesh", p4)
b4.Name = "Mesh"
b4.Scale = Vector3.new(0.656250358, 1, 1)
p5 = Instance.new("Part", m1)
p5.Locked = true
p5.BrickColor = BrickColor.new("Really black")
p5.Material = "Granite"
p5.Name = "Handle"
p5.CFrame = CFrame.new(-15.4833899, 8.75200272, -1.18519592, -0.130095989, -0.0039267987, -0.991496682, -0.0667580366, 0.997765779, 0.00480742007, 0.989255846, 0.0668155551, -0.130066052)
p5.CanCollide = false
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(0.25, 2.25125027, 0.625)
p5.BottomSurface = Enum.SurfaceType.Smooth
p5.TopSurface = Enum.SurfaceType.Smooth
b5 = Instance.new("CylinderMesh", p5)
b5.Name = "Mesh"
p6 = Instance.new("Part", m1)
p6.Locked = true
p6.BrickColor = BrickColor.new("Bright red")
p6.Material = "Granite"
p6.Name = "Part10"
p6.CFrame = CFrame.new(-15.1728735, 13.1544628, -2.97264719, 0.972016573, -0.0361868851, -0.23210828, 0.161354825, 0.820950687, 0.547726691, 0.170728937, -0.569851279, 0.803816617)
p6.CanCollide = false
p6.Size = Vector3.new(1, 1.20000005, 2)
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
b6 = Instance.new("SpecialMesh", p6)
b6.MeshType = Enum.MeshType.Wedge
b6.Name = "Mesh"
b6.Scale = Vector3.new(0.133749992, 0.308333486, 0.939375103)
p7 = Instance.new("Part", m1)
p7.Locked = true
p7.BrickColor = BrickColor.new("Really black")
p7.Material = "Granite"
p7.Name = "Part11"
p7.CFrame = CFrame.new(-15.0457783, 12.8671103, -3.41416025, 0.972016871, -0.0361844748, -0.232107431, 0.161352873, 0.820949197, 0.547729552, 0.170729101, -0.569853604, 8.03814948E-7)
p7.CanCollide = false
p7.Size = Vector3.new(1, 1.20000005, 3)
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
b7 = Instance.new("SpecialMesh", p7)
b7.MeshType = Enum.MeshType.Wedge
b7.Name = "Mesh"
b7.Scale = Vector3.new(0.125, 0.459375113, 0.987083375)
p8 = Instance.new("Part", m1)
p8.Locked = true
p8.BrickColor = BrickColor.new("Really black")
p8.Material = "Granite"
p8.Name = "Part12"
p8.CFrame = CFrame.new(-15.3929434, 7.00775528, -1.23400617, -0.00524972379, -0.125177592, -0.992123604, 0.0415780842, 0.991256952, -0.125288621, 0.999125719, -0.0419077873, 1.41561031E-6)
p8.CanCollide = false
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(0.25, 1.35000002, 0.625)
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
b8 = Instance.new("CylinderMesh", p8)
b8.Name = "Mesh"
p9 = Instance.new("Part", m1)
p9.Locked = true
p9.BrickColor = BrickColor.new("Really black")
p9.Material = "Granite"
p9.Name = "Part13"
p9.CFrame = CFrame.new(-15.312561, 6.035923, -1.20007133, 1.88336219E-6, -6.5267086E-6, -1.0000031, -8.07169636E-6, 1.00000823, -6.91413879E-6, 1.00000405, 8.23063147E-6, 2.50528046E-6)
p9.CanCollide = false
p9.FormFactor = Enum.FormFactor.Symmetric
p9.Size = Vector3.new(1, 1, 1)
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
b9 = Instance.new("CylinderMesh", p9)
b9.Name = "Mesh"
b9.Scale = Vector3.new(0.25, 0.625, 0.625)
w1 = Instance.new("Weld", p1)
w1.Part0 = p1
w1.C0 = CFrame.new(7.02652264, -59.535614, -5.87252188, -0.148847401, -0.139196053, 0.979014158, -0.181681663, 0.977039695, 0.111292727, -0.972026587, -0.161303386, -0.170719117)
w1.Part1 = p2
w1.C1 = CFrame.new(-8.01976395, -54.082592, -19.6964264, -0.128350034, 0.129739836, 0.983205914, 0.0941585898, 0.988522112, -0.118149437, -0.987248957, 0.0774128884, -0.139092848)
w2 = Instance.new("Weld", p2)
w2.Part0 = p2
w2.C0 = CFrame.new(-8.01976395, -54.082592, -19.6964264, -0.128350034, 0.129739836, 0.983205914, 0.0941585898, 0.988522112, -0.118149437, -0.987248957, 0.0774128884, -0.139092848)
w2.Part1 = p3
w2.C1 = CFrame.new(-5.86081457, -59.57584, 10.6446886, -0.972025335, -0.161306813, -0.170724437, -0.129059821, 0.974118233, -0.185574532, 0.196240455, -0.158349574, -0.967685699)
w3 = Instance.new("Weld", p3)
w3.Part0 = p3
w3.C0 = CFrame.new(-5.86081457, -59.57584, 10.6446886, -0.972025335, -0.161306813, -0.170724437, -0.129059821, 0.974118233, -0.185574532, 0.196240455, -0.158349574, -0.967685699)
w3.Part1 = p4
w3.C1 = CFrame.new(-5.85831547, -59.5864677, 10.6671867, -0.972025335, -0.161306813, -0.170724437, -0.129059821, 0.974118233, -0.185574532, 0.196240455, -0.158349574, -0.967685699)
w4 = Instance.new("Weld", p4)
w4.Part0 = p4
w4.C0 = CFrame.new(-5.85831547, -59.5864677, 10.6671867, -0.972025335, -0.161306813, -0.170724437, -0.129059821, 0.974118233, -0.185574532, 0.196240455, -0.158349574, -0.967685699)
w4.Part1 = p5
w4.C1 = CFrame.new(2.75071049, -53.6872444, -15.7648773, -0.130098701, -0.0667455271, 0.989251852, -0.00391793298, 0.997758389, 0.0668041781, -0.991493225, 0.00481529534, -0.13006863)
w5 = Instance.new("Weld", p5)
w5.Part0 = p5
w5.C0 = CFrame.new(2.75071049, -53.6872444, -15.7648773, -0.130098701, -0.0667455271, 0.989251852, -0.00391793298, 0.997758389, 0.0668041781, -0.991493225, 0.00481529534, -0.13006863)
w5.Part1 = p6
w5.C1 = CFrame.new(5.86050892, -50.0459213, -33.0266228, 0.972020626, 0.161349237, 0.170730397, -0.0361775011, 0.820951402, -0.569862783, -0.232106388, 0.547742188, 0.803813636)
w6 = Instance.new("Weld", p6)
w6.Part0 = p6
w6.C0 = CFrame.new(5.86050892, -50.0459213, -33.0266228, 0.972020626, 0.161349237, 0.170730397, -0.0361775011, 0.820951402, -0.569862783, -0.232106388, 0.547742188, 0.803813636)
w6.Part1 = p7
w6.C1 = CFrame.new(5.85863304, -50.0578003, -32.4853668, 0.972020626, 0.161349237, 0.170730397, -0.0361775011, 0.820951402, -0.569862783, -0.232106388, 0.547742188, 0.803813636)
w7 = Instance.new("Weld", p7)
w7.Part0 = p7
w7.C0 = CFrame.new(5.85863304, -50.0578003, -32.4853668, 0.972020626, 0.161349237, 0.170730397, -0.0361775011, 0.820951402, -0.569862783, -0.232106388, 0.547742188, 0.803813636)
w7.Part1 = p8
w7.C1 = CFrame.new(-1.01389384, -53.6058121, -8.7465868, -0.00525131589, 0.0415858366, 0.999120951, -0.125170633, 0.991249442, -0.0419160873, -0.992121339, -0.125280768, -3.77783991E-8)
w8 = Instance.new("Weld", p8)
w8.Part0 = p8
w8.C0 = CFrame.new(-1.01389384, -53.6058121, -8.7465868, -0.00525131589, 0.0415858366, 0.999120951, -0.125170633, 0.991249442, -0.0419160873, -0.992121339, -0.125280768, -3.77783991E-8)
w8.Part1 = p9
w8.C1 = CFrame.new(1.20000041, -51.1112823, -15.3124981, 0, 0, 1, 0, 1, 0, -1, 0, 0)
m1.Parent = char
m1:MakeJoints()
local cor2 = Instance.new("Part", char.Scythe)
cor2.Name = "Thingy2"
cor2.Locked = true
cor2.BottomSurface = 0
cor2.CanCollide = false
cor2.Size = Vector3.new(2, 8, 1)
cor2.Transparency = 1
cor2.TopSurface = 0
corw2 = Instance.new("Weld", cor2)
corw2.Part0 = rarm
corw2.Part1 = cor2
corw2.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-28), math.rad(0), math.rad(0))
corw2.C1 = CFrame.new(0.6, -0.4, -2)
weld2 = Instance.new("Weld", char.Scythe)
weld2.Part0 = cor2
weld2.Part1 = p5
weld2.C0 = CFrame.new(0.6, -1, 0)
function Reap()
  cor2.Touched:connect(function(ht1)
    hit1 = ht1.Parent
    if ht1 and hit1:IsA("Model") and hit1:FindFirstChild("Humanoid") and hit1:FindFirstChild("Armed") ~= nil and hit1.Name ~= p.Name and Debounces.Reaping == true and Debounces.Reaped == false then
      Debounces.Reaped = true
      h = hit1:FindFirstChild("Humanoid")
      if h ~= nil and h.Health < 20 then
        e = Instance.new("Part")
        e.TopSurface = 0
        e.BottomSurface = 0
        e.Reflectance = 0.05
        e.formFactor = "Symmetric"
        e.Size = Vector3.new(1, 1, 1)
        e.Anchored = true
        e.CanCollide = false
        e.BrickColor = BrickColor.new("Really blue")
        e.CFrame = CFrame.new(ht1.Position)
        e.Parent = hit1
        Instance.new("BlockMesh", e)
        coroutine.resume(coroutine.create(function(par)
          for i = 1, 13 do
            par.CFrame = par.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-20, 20) / 50, math.random(-20, 20) / 50, math.random(-20, 20) / 50)
            par.Transparency = i / 13
            par.Mesh.Scale = par.Mesh.Scale + Vector3.new(0.4, 0.4, 0.4)
            wait()
          end
          par.Parent = nil
        end), e)
        for _, v in pairs(hit1:children()) do
          if v.className == "Part" then
            v.BrickColor = BrickColor.new("Really black")
            v.RotVelocity = Vector3.new(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2)) * 3
            v:BreakJoints()
            f = Instance.new("BodyVelocity")
            f.P = 3000
            f.maxForce = Vector3.new(math.huge, math.huge, math.huge)
            f.velocity = Vector3.new(math.random(-30, 30) / 10, math.random(-30, 30) / 10, math.random(-30, 30) / 10)
            f.Parent = v
            v.CanCollide = false
            coroutine.resume(coroutine.create(function(par)
              for i = 1, 30 do
                par.Transparency = i / 30
                wait()
              end
              par.Parent = nil
            end), v)
          elseif v.className == "Hat" then
            v.Handle.BrickColor = BrickColor.new("Really black")
            v.Handle.RotVelocity = Vector3.new(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2)) * 3
            v.Handle:BreakJoints()
            f = Instance.new("BodyVelocity")
            f.P = 3000
            f.maxForce = Vector3.new(math.huge, math.huge, math.huge)
            f.velocity = Vector3.new(math.random(-30, 30) / 10, math.random(-30, 30) / 10, math.random(-30, 30) / 10)
            f.Parent = v.Handle
            v.Handle.CanCollide = false
            coroutine.resume(coroutine.create(function(par)
              for i = 1, 30 do
                par.Transparency = i / 30
                wait()
              end
              par.Parent = nil
            end), v.Handle)
            if h == nil then
              wait()
            end
          end
        end
      end
    end
  end)
  Debounces.Reaped = false
end
local animpose = "Idle"
local lastanimpose = "Idle"
local sine = 0
local change = 1
local val = 0
local ffing = false
local player = p
local pchar = player.Character
local mouse = player:GetMouse()
local cam = workspace.CurrentCamera
local rad = math.rad
local keysDown = {}
local flySpeed = 0
local MAX_FLY_SPEED = 50
local canFly = false
local flyToggled = false
local forward, side = 0, 0
local lastForward, lastSide = 0, 0
local floatBP = Instance.new("BodyPosition")
floatBP.maxForce = Vector3.new(0, math.huge, 0)
local flyBV = Instance.new("BodyVelocity")
flyBV.maxForce = Vector3.new(9000000000, 9000000000, 9000000000)
local turnBG = Instance.new("BodyGyro")
turnBG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
mouse.KeyDown:connect(function(key)
  keysDown[key] = true
  if key == "f" then
    flyToggled = not flyToggled
    if not flyToggled then
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
  if not flyToggled then
    return
  end
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
  canFly = forward ~= 0 or side ~= 0
  if canFly then
    turnBG.Parent = root
    floatBP.Parent = nil
    flyBV.Parent = root
    flySpeed = flySpeed + 1 + flySpeed / MAX_FLY_SPEED
    if flySpeed > MAX_FLY_SPEED then
      flySpeed = MAX_FLY_SPEED
    end
  else
    floatBP.position = root.Position
    floatBP.Parent = root
    flySpeed = flySpeed - 1
    if flySpeed < 0 then
      flySpeed = 0
    end
  end
  local camCF = cam.CoordinateFrame
  local in_forward = canFly and forward or lastForward
  local in_side = canFly and side or lastSide
  flyBV.velocity = (camCF.lookVector * in_forward + camCF * CFrame.new(in_side, in_forward * 0.2, 0).p - camCF.p) * flySpeed
  turnBG.cframe = camCF * CFrame.Angles(-rad(forward * (flySpeed / MAX_FLY_SPEED)), 0, 0)
end
game:service("RunService").RenderStepped:connect(function()
  if flyToggled then
    pchar.Humanoid.PlatformStand = true
  end
  updateFly()
end)
Flash = false
mouse.KeyDown:connect(function(key)
  if key == "uu" and Flash == false and (mouse.Hit.p - torso.Position).magnitude <= 500 then
    Flash = true
    local FlashDistance = mouse.Hit.p
    local L = Instance.new("Part", char)
    game.Debris:AddItem(L, 2)
    L.Anchored = true
    L.CanCollide = false
    L.FormFactor = "Custom"
    L.Size = Vector3.new(0.1, 0.1, 0.1)
    L.Transparency = 1
    L.CFrame = torso.CFrame
    torso.CFrame = torso.CFrame - torso.CFrame.p + FlashDistance + Vector3.new(0, rleg.Size.y + torso.Size.y / 2, 0)
    torso.Velocity = Vector3.new(0, 5, 0)
    local X = Instance.new("Part", L)
    X.Anchored = true
    X.CanCollide = false
    X.Transparency = 0
    X.Reflectance = 0
    X.TopSurface = 0
    X.BottomSurface = 0
    X.FormFactor = "Custom"
    X.CFrame = L.CFrame
    X.Size = Vector3.new(3, 4, 3)
    local O = Instance.new("ObjectValue", X)
    O.Name = "Flash"
    O.Value = p
    local T = Instance.new("SpecialMesh", X)
    T.MeshType = "Sphere"
    T.Scale = Vector3.new(1, 1, 1)
    X.CFrame = CFrame.new(X.Position, mouse.Hit.p)
    X.BrickColor = BrickColor.new("Institutional white")
    for i = 1, 10 do
      X.Transparency = X.Transparency + 0.06
      X.CFrame = X.CFrame + X.CFrame.lookVector * 0.5
      T.Scale = T.Scale + Vector3.new(0.2, 0.2, 0.2)
      wait(0.03)
    end
    L:Remove()
    wait(0.01)
    Flash = false
  end
end)
mouse.KeyDown:connect(function(key)
  if key == "m" then
    hum.WalkSpeed = 0
    if Debounces.CanAttack == true then
      Debounces.CanAttack = false
      Debounces.on = true
      Debounces.NoIdl = true
      x = Instance.new("Sound", char)
      x.SoundId = "http://www.roblox.com/asset/?id=169445572"
      x.Looped = false
      x.Pitch = 1.1
      x.Volume = 0.1
      x.MaxDistance = 45
      x:Play()
      x2 = Instance.new("Sound", char)
      x2.SoundId = "http://www.roblox.com/asset/?id=169380495"
      x2.Looped = false
      x2.Pitch = 0.7
      x2.Volume = 0.1
      x2.MaxDistance = 45
      wait(0.1)
      x:Play()
      x2:Play()
      for i = 1, 20 do
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.3, -0.1) * CFrame.Angles(math.rad(45), math.rad(0), math.rad(32)), 0.2)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)), 0.2)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-8), math.rad(-40), math.rad(-8)), 0.2)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(-50), math.rad(40), math.rad(0)), 0.2)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.4, 0.2, -0.8) * CFrame.Angles(math.rad(30), 0, math.rad(20)), 0.2)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.8, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-40), math.rad(0)), 0.2)
        cor2.Weld.C0 = Lerp(cor2.Weld.C0, CFrame.new(0, 1.2, 0) * CFrame.Angles(math.rad(-90), math.rad(180), math.rad(0)), 1)
        if Debounces.on == false then
          break
        end
        wait()
        x:Destroy()
        x2:Destroy()
      end
      wait(1)
      do
        local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = BrickColor.new("Really black")
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0.35
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.Position = torso.Position - Vector3.new(0, 2, 0)
        rng.CFrame = rng.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
        rngm.Scale = Vector3.new(1, 1, 2)
        x = Instance.new("Sound", char)
        x.SoundId = "http://www.roblox.com/asset/?id=169445602"
        x.Looped = false
        x.Pitch = 0.7
        x.Volume = 0.1
        x.MaxDistance = 45
        x:Play()
        coroutine.wrap(function()
          for i = 1, 60, 2 do
            rngm.Scale = Vector3.new(2 + i * 2, 2 + i * 2, 1)
            rng.Transparency = i / 60
            wait()
          end
          wait()
          rng:Destroy()
        end)()
        hum.WalkSpeed = 50
        BV = Instance.new("BodyVelocity", torso)
        BV.maxForce = Vector3.new(0, 100000, 0)
        BV.P = 10000
        BV.velocity = Vector3.new(0, 200, 0)
        for i = 1, 20 do
          hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.7)
          torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(-16), math.rad(0), math.rad(0)), 0.7)
          larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(40), 0, math.rad(-20)), 0.7)
          rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(20)), 0.7)
          lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, 0), 0.7)
          rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, 0, -1) * CFrame.Angles(math.rad(0), 0, 0), 0.7)
          if Debounces.on == false then
            break
          end
          wait()
        end
        x:Destroy()
        BV:Destroy()
        if 2 < (torso.Velocity * Vector3.new(1, 1, 1)).magnitude then
          for i = 1, 30 do
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-14), math.rad(0), math.rad(0)), 0.3)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(-16), math.rad(0), math.rad(0)), 0.3)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.7, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-120)), 0.3)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.7, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(120)), 0.3)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.4, -1) * CFrame.Angles(math.rad(-10), 0, 0), 0.3)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.8, -0.6) * CFrame.Angles(math.rad(-40), 0, 0), 0.3)
            if Debounces.on == false then
              break
            end
            wait()
          end
        end
        Debounces.on = false
        Debounces.NoIdl = false
        hum.WalkSpeed = 8
        wait(0.1)
        if Debounces.CanAttack == false then
          Debounces.CanAttack = true
        end
      end
    end
  end
end)
mouse.KeyDown:connect(function(key)
  if key == "e" and Debounces.CanAttack == true then
    Debounces.CanAttack = false
    Debounces.NoIdl = true
    Debounces.on = true
    for i = 1, 50 do
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(-10)), 0.05)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(20)), 0.05)
      torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(70), math.rad(0)), 0.05)
      hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(8), math.rad(-46), math.rad(0)), 0.05)
      torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-4), math.rad(60), math.rad(0)), 0.05)
      rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(70), math.rad(-60)), 0.05)
      larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2, 0.5, -0.5) * CFrame.Angles(math.rad(120), math.rad(-70), math.rad(60)), 0.05)
      cor2.Weld.C0 = Lerp(cor2.Weld.C0, CFrame.new(2.4, -1.2, -2.2) * CFrame.Angles(math.rad(-68), math.rad(-120), math.rad(45)), 1)
      if Debounces.on == false then
        break
      end
      wait()
    end
    wait(1)
    z = Instance.new("Sound")
    z.SoundId = "http://www.roblox.com/asset/?    id=160773067"
    z.Parent = char
    z.Looped = false
    z.Pitch = 0.4
    z.Volume = 0.1
    z.MaxDistance = 45
    wait()
    z:Play()
    Debounces.Reaping = true
    Reap()
    for i = 1, 20 do
      hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(8), math.rad(66), math.rad(0)), 0.5)
      torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-12), math.rad(-66), math.rad(0)), 0.5)
      rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(70), math.rad(-60)), 0.5)
      larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2, 0.5, -0.5) * CFrame.Angles(math.rad(120), math.rad(-70), math.rad(60)), 0.5)
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(6), 0, math.rad(10)), 0.5)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-10), math.rad(20)), 0.5)
      cor2.Weld.C0 = Lerp(cor2.Weld.C0, CFrame.new(2.4, -1.2, -2.2) * CFrame.Angles(math.rad(-68), math.rad(-120), math.rad(45)), 1)
      if Debounces.on == false then
        break
      end
      wait()
    end
    if Debounces.CanAttack == false then
      Debounces.Slashing = false
      Debounces.CanAttack = true
      Debounces.NoIdl = false
      z:Destroy()
    end
  end
end)
icu = {
  "169448813",
  "169448831",
  "169448851",
  "169448868"
}
pt = {
  0.8,
  0.85,
  0.9,
  0.95,
  1
}
mouse.KeyDown:connect(function(key)
  if key == "tt" and Debounces.CanAttack == true then
    Debounces.CanAttack = false
    Debounces.NoIdl = true
    Debounces.on = true
    z = Instance.new("Sound", char)
    z.SoundId = "rbxassetid://" .. icu[math.random(1, #icu)]
    z.Pitch = pt[math.random(1, #pt)]
    z.Looped = false
    z1 = Instance.new("Sound", char)
    z1.SoundId = z.SoundId
    z1.Pitch = z.Pitch
    z1.Looped = false
    z:Play()
    z1:Play()
    for i = 1, 30 do
      rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), 0.1)
      larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(-40), math.rad(-90)), 0.1)
      hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-12), math.rad(60), math.rad(0)), 0.1)
      torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-60), math.rad(0)), 0.1)
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(-5)), 0.1)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(5)), 0.1)
      cor2.Weld.C0 = Lerp(cor2.Weld.C0, CFrame.new(1.6, -1.4, -1.4) * CFrame.Angles(math.rad(-60), math.rad(-60), math.rad(0)), 0.1)
      if Debounces.on == false then
        break
      end
      wait()
    end
    wait(4)
    if Debounces.CanAttack == false then
      Debounces.CanAttack = true
      Debounces.NoIdl = false
      Debounces.on = false
      z:Destroy()
      z1:Destroy()
    end
  end
end)
mouse.KeyDown:connect(function(key)
  if key == "gg" and Debounces.CanAttack == true then
    Debounces.CanAttack = false
    Debounces.NoIdl = true
    Debounces.on = true
    for i = 1, 30 do
      rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), 0.1)
      larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(-40), math.rad(-90)), 0.1)
      hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-12), math.rad(60), math.rad(0)), 0.1)
      torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-60), math.rad(0)), 0.1)
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(-5)), 0.1)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(5)), 0.1)
      cor2.Weld.C0 = Lerp(cor2.Weld.C0, CFrame.new(1.6, -1.4, -1.4) * CFrame.Angles(math.rad(-60), math.rad(-60), math.rad(0)), 0.4)
      if Debounces.on == false then
        break
      end
      wait()
    end
    Singularity()
  end
end)
mouse.KeyUp:connect(function(key)
  if key == "gg" then
    mass = 0
    motivator.maxForce = Vector3.new(0, 0, 0)
    motivator:Remove()
    pt:Remove()
    Debounces.NoIdl = false
    Debounces.on = false
    wait()
    if Debounces.CanAttack == false then
      Debounces.CanAttack = true
    end
  end
end)
mouse.KeyDown:connect(function(key)
  if key == "q" and Debounces.CanAttack == true then
    Debounces.CanAttack = false
    Debounces.NoIdl = true
    Debounces.on = true
    for i = 1, 20 do
      larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(20), math.rad(32), math.rad(-30)), 0.5)
      rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(21), math.rad(50), math.rad(40)), 0.5)
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(-10)), 0.5)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, 0, -1) * CFrame.Angles(math.rad(0), 0, math.rad(10)), 0.5)
      hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-10), math.rad(18), math.rad(0)), 0.5)
      torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(60), math.rad(10)), 0.5)
      if Debounces.on == false then
        break
      end
      rs:wait(0.001)
    end
    z = Instance.new("Sound")
    z.SoundId = "http://www.roblox.com/asset/?id=160069154"
    z.Parent = char.Head
    z.Looped = false
    z.Pitch = 1
    z.Volume = 0.1
    z.MaxDistance = 45
    wait(0.01)
    z:Play()
    Debounces.Slashing = true
    for i = 1, 20 do
      larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-18)), 0.4)
      rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(21), math.rad(0), math.rad(80)), 0.4)
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(6), 0, math.rad(-10)), 0.4)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-14), 0, math.rad(10)), 0.4)
      hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-14), math.rad(-36), math.rad(0)), 0.4)
      torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-40), math.rad(0)), 0.4)
      cor2.Weld.C0 = Lerp(cor2.Weld.C0, CFrame.new(1.8, -2, -0.4) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(-180)), 0.4)
      if Debounces.on == false then
        break
      end
      rs:wait(0.001)
    end
    z1 = Instance.new("Sound")
    z1.SoundId = "http://www.roblox.com/asset/?id=160069154"
    z1.Parent = char.Head
    z1.Looped = false
    z1.Pitch = 1
    z1.Volume = 0.1
    z1.MaxDistance = 45
    wait(0.01)
    z1:Play()
    for i = 1, 20 do
      larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-18)), 0.6)
      rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-21), math.rad(50), math.rad(80)), 0.6)
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(6), 0, math.rad(-10)), 0.6)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-14), 0, math.rad(10)), 0.6)
      hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-14), math.rad(20), math.rad(0)), 0.6)
      torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(0)), 0.6)
      cor2.Weld.C0 = Lerp(cor2.Weld.C0, CFrame.new(-2, -0.6, -2.2) * CFrame.Angles(math.rad(-90), math.rad(90), math.rad(0)), 1)
      if Debounces.on == false then
        break
      end
      rs:wait()
    end
    Debounces.Slashing = false
    for i = 1, 20 do
      hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(8), math.rad(36), math.rad(0)), 0.4)
      torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(8), math.rad(-36), math.rad(0)), 0.4)
      rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2, 0.5, -0.5) * CFrame.Angles(math.rad(50), math.rad(-90), math.rad(-80)), 0.4)
      larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2, 0.5, -0.5) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(40)), 0.4)
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0, -1) * CFrame.Angles(math.rad(0), math.rad(20), math.rad(0)), 0.4)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-10), math.rad(20)), 0.4)
      cor2.Weld.C0 = Lerp(cor2.Weld.C0, CFrame.new(1.6, -1.4, -1.4) * CFrame.Angles(math.rad(-60), math.rad(-60), math.rad(0)), 1)
      if Debounces.on == false then
        break
      end
      rs:wait()
    end
    z2 = Instance.new("Sound")
    z2.SoundId = "http://www.roblox.com/asset/?id=160773067"
    z2.Parent = char.Head
    z2.Looped = false
    z2.Pitch = 0.9
    z2.Volume = 0.1
    z2.MaxDistance = 45
    wait(0.01)
    z2:Play()
    Debounces.Slashing = true
    for i = 1, 20 do
      hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(8), math.rad(-46), math.rad(0)), 0.5)
      torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-12), math.rad(60), math.rad(0)), 0.5)
      rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2, 0.5, -0.5) * CFrame.Angles(math.rad(60), math.rad(-40), math.rad(0)), 0.5)
      larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2, 0.5, -0.5) * CFrame.Angles(math.rad(80), math.rad(0), math.rad(40)), 0.5)
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(6), math.rad(10), math.rad(-15)), 0.5)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-10), math.rad(20)), 0.5)
      cor2.Weld.C0 = Lerp(cor2.Weld.C0, CFrame.new(2.4, -1.2, -2.2) * CFrame.Angles(math.rad(-68), math.rad(-120), math.rad(45)), 1)
      if Debounces.on == false then
        break
      end
      rs:wait()
    end
    Debounces.Slashing = false
    Debounces.NoIdl = false
    Debounces.on = false
    z:Destroy()
    z1:Destroy()
    z2:Destroy()
    wait()
    if Debounces.CanAttack == false then
      Debounces.CanAttack = true
    end
  end
end)
cor2.Touched:connect(function(ht)
  hit = ht.Parent
  if ht and hit:IsA("Model") then
    if hit:FindFirstChild("Humanoid") and hit:FindFirstChild("Armed") ~= nil and hit.Name ~= p.Name and Debounces.Slashing == true and Debounces.Slashed == false then
      Debounces.Slashed = true
      hit:FindFirstChild("Humanoid"):TakeDamage(math.random(15, 25))
      wait(1)
      Debounces.Slashed = false
    end
  elseif ht and hit:IsA("Hat") and hit.Parent.Name ~= p.Name and hit.Parent:FindFirstChild("Humanoid") and hit:FindFirstChild("Armed") ~= nil and Debounces.Slashing == true and Debounces.Slashed == false then
    Debounces.Slashed = true
    hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(15, 25))
    wait(1)
    Debounces.Slashed = false
  end
end)
mouse.KeyDown:connect(function(key)
  if key == "y" and Debounces.CanAttack == true then
    Debounces.CanAttack = false
    Debounces.NoIdl = true
    char.Humanoid.WalkSpeed = 0.01
    Debounces.on = true
    for i = 1, 20 do
      larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-12), 0, math.rad(-12)), 0.3)
      rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), 0, math.rad(90)), 0.3)
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(-6)), 0.3)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(6)), 0.3)
      hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-8), math.rad(-84), 0), 0.3)
      torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.3)
      if Debounces.on == false then
        break
      end
      wait()
    end
    for i = 1, 20 do
      wait()
      for i, v in pairs(char.Scythe:children()) do
        if v:IsA("Part") then
          v.Transparency = v.Transparency + 0.05
        end
      end
    end
    x = Instance.new("Sound")
    x.SoundId = "http://www.roblox.com/asset/?id=142070127"
    x.Parent = char
    x.Looped = false
    x.Pitch = 0.7
    x.Volume = 0.1
    x.MaxDistance = 45
    wait(0.1)
    x:Play()
    Debounces.on = false
    Debounces.Here = false
    shot = shot + 1
    for i = 1, 6 do
      larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-12), 0, math.rad(-12)), 0.4)
      rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), 0, math.rad(90)), 0.4)
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(-6)), 0.4)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(6)), 0.4)
      hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-8), math.rad(-84), 0), 0.4)
      torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 3) * CFrame.Angles(0, math.rad(90), 0), 0.4)
      wait()
    end
    do
      local rng = Instance.new("Part", char)
      rng.Anchored = true
      rng.BrickColor = BrickColor.new("Really black")
      rng.CanCollide = false
      rng.FormFactor = 3
      rng.Name = "Ring"
      rng.Size = Vector3.new(1, 1, 1)
      rng.Transparency = 0.35
      rng.TopSurface = 0
      rng.BottomSurface = 0
      local rngm = Instance.new("SpecialMesh", rng)
      rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
      rngm.Scale = Vector3.new(10, 10, 1)
      local bem = Instance.new("Part", char)
      bem.Anchored = true
      bem.BrickColor = BrickColor.new("Really black")
      bem.CanCollide = false
      bem.FormFactor = 3
      bem.Name = "Beam" .. shot
      bem.Size = Vector3.new(1, 1, 1)
      bem.Transparency = 0.35
      bem.TopSurface = 0
      bem.BottomSurface = 0
      local bemm = Instance.new("SpecialMesh", bem)
      bemm.MeshType = 4
      bemm.Scale = Vector3.new(1, 4, 4)
      local out = Instance.new("Part", char)
      out.Anchored = true
      out.BrickColor = BrickColor.new("Really black")
      out.CanCollide = false
      out.FormFactor = 3
      out.Name = "Out"
      out.Size = Vector3.new(4, 4, 4)
      out.Transparency = 0.35
      out.TopSurface = 0
      out.BottomSurface = 0
      local outm = Instance.new("SpecialMesh", out)
      outm.MeshId = "http://www.roblox.com/asset/?id=1033714"
      outm.Scale = Vector3.new(4, 4, 4)
      local bnd = Instance.new("Part", char)
      bnd.Anchored = true
      bnd.BrickColor = BrickColor.new("Really black")
      bnd.CanCollide = false
      bnd.FormFactor = 3
      bnd.Name = "Bend"
      bnd.Size = Vector3.new(1, 1, 1)
      bnd.Transparency = 1
      bnd.TopSurface = 0
      bnd.BottomSurface = 0
      local bndm = Instance.new("SpecialMesh", bnd)
      bndm.MeshType = 3
      bndm.Scale = Vector3.new(8, 8, 8)
      out.CFrame = rarm.CFrame * CFrame.new(0, -1.75, 0)
      bem.CFrame = out.CFrame * CFrame.new(0, -2.5, 0) * CFrame.Angles(0, 0, math.rad(90))
      bnd.CFrame = bem.CFrame * CFrame.new(0, 0, 0)
      rng.CFrame = out.CFrame * CFrame.Angles(math.rad(90), 0, 0)
      Debounces.Shewt = true
      coroutine.wrap(function()
        for i = 1, 20, 0.2 do
          rngm.Scale = Vector3.new(10 + i * 2, 10 + i * 2, 1)
          rng.Transparency = i / 20
          wait()
        end
        wait()
        rng:Destroy()
      end)()
      if Debounces.Shewt == true then
        char:WaitForChild("Beam" .. shot).Touched:connect(function(ht)
          hit = ht.Parent
          if hit:IsA("Model") and hit:findFirstChild("Humanoid") and hit:FindFirstChild("Armed") ~= nil then
            if HasntTouched(hit.Name) == true and deb == false then
              deb = true
              coroutine.wrap(function()
                hit:FindFirstChild("Torso").Velocity = char.Head.CFrame.lookVector * 180
                hit:FindFirstChild("Humanoid"):TakeDamage(math.random(24, 53))
              end)()
              table.insert(Touche, hit.Name)
              deb = false
            end
          elseif hit:IsA("Hat") and hit.Parent:findFirstChild("Humanoid") and hit:FindFirstChild("Armed") ~= nil and HasntTouched(hit.Parent.Name) == true and deb == false then
            deb = true
            coroutine.wrap(function()
              hit.Parent:FindFirstChild("Torso").Velocity = char.Head.CFrame.lookVector * 180
              wait(1)
            end)()
            table.insert(Touche, hit.Parent.Name)
            deb = false
            for i, v in pairs(Touche) do
              print(v)
            end
          end
        end)
      end
      for i = 0, 260, 8 do
        bem.Size = Vector3.new(i, 2, 2)
        bem.CFrame = rarm.CFrame * CFrame.new(0, -3.2 - i / 2, 0) * CFrame.Angles(0, 0, math.rad(90))
        bnd.CFrame = bem.CFrame * CFrame.new(-i / 2, 0, 1.2)
        bnd.Size = Vector3.new(1, 1, 1)
        bndm.Scale = Vector3.new(8, 8, 8)
        wait()
      end
      wait()
      Debounces.Shewt = false
      bem:Destroy()
      out:Destroy()
      bnd:Destroy()
      char.Humanoid.WalkSpeed = 10
      Debounces.Ready = false
      for i, v in pairs(Touche) do
        table.remove(Touche, i)
      end
      wait()
      table.insert(Touche, char.Name)
      Debounces.NoIdl = false
      if Debounces.CanAttack == false then
        Debounces.CanAttack = true
        for i = 1, 20 do
          wait()
          for i, v in pairs(char.Scythe:children()) do
            if v:IsA("Part") then
              v.Transparency = v.Transparency - 0.05
            end
          end
          hum.WalkSpeed = 5
        end
      end
    end
  end
end)
mouse.KeyDown:connect(function(key)
  if key == "b" then
    hum.WalkSpeed = 0.01
    if Debounces.CanAttack == true then
      Debounces.CanAttack = false
      Debounces.NoIdl = true
      Debounces.on = true
      for i = 1, 20 do
        for i, v in pairs(char.Scythe:children()) do
          if v:IsA("Part") then
            v.Transparency = v.Transparency + 0.5
          end
        end
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(75), 0, math.rad(30)), 0.1)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(75), 0, math.rad(-30)), 0.1)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-20), math.rad(0), 0), 0.1)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-30), math.rad(0), 0), 0.1)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(30), 0, math.rad(-5)), 0.1)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(30), 0, math.rad(5)), 0.1)
        if Debounces.on == false then
          break
        end
        wait()
      end
      wait(1)
      v = Instance.new("Sound")
      v.SoundId = "http://www.roblox.com/asset/?id=181384451"
      v.Parent = char
      v.Looped = false
      v.Pitch = 0.94
      v.Volume = 0.1
      v.MaxDistance = 45
      wait(0.01)
      v:Play()
      if Daytime == true then
        Daytime = false
      else
        Daytime = true
      end
      local function Shockwave()
        local rng1 = Instance.new("Part", char)
        rng1.Anchored = true
        rng1.BrickColor = BrickColor.new("Really black")
        rng1.CanCollide = false
        rng1.FormFactor = 3
        rng1.Name = "Ring"
        rng1.Size = Vector3.new(1, 1, 1)
        rng1.Transparency = 0.35
        rng1.TopSurface = 0
        rng1.BottomSurface = 0
        local rngm1 = Instance.new("SpecialMesh", rng)
        rngm1.MeshId = "http://www.roblox.com/asset/?id=3270017"
        rngm1.Scale = Vector3.new(10, 10, 1)
        rng1.CFrame = CFrame.new(0, -2, 0) * CFrame.Angles(0, 0, 0)
        local Wave = Instance.new("Part", char)
        Wave.Name = "Shockwave"
        Wave.BrickColor = BrickColor.new("Really black")
        Wave.Size = Vector3.new(1, 1, 1)
        Wave.Shape = "Ball"
        Wave.CanCollide = false
        Wave.Anchored = true
        Wave.TopSurface = 0
        Wave.BottomSurface = 0
        Wave.Touched:connect(function(hit)
          if hit.Parent:findFirstChild("Humanoid") and hit.Parent:findFirstChild("Torso") and hit:FindFirstChild("Armed") ~= nil then
            local Occlude = true
            local NotOccludes = {
              char.Name,
              "Wings",
              "Scythe",
              "Thingy",
              "Thingy2"
            }
            for i, v in pairs(NotOccludes) do
              if hit.Parent.Name == v then
                Occlude = false
              end
            end
            if Occlude then
              hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 1
              hit.Parent:findFirstChild("Torso").Velocity = hit.Parent:findFirstChild("Torso").CFrame.lookVector * -120
            end
          end
        end)
        Instance.new("SpecialMesh", Wave).MeshType = "Sphere"
        coroutine.wrap(function()
          for i = 1, 20, 0.2 do
            rngm1.Scale = Vector3.new(10 + i * 2, 10 + i * 2, 1)
            rng1.Transparency = i / 20
            wait()
          end
          wait()
          rng1:Destroy()
        end)()
        Delay(0, function()
          if Daytime == false then
            for i = 1, 50 do
              Wave.Size = Vector3.new(1 + i, 1 + i, 1 + i)
              Wave.CFrame = char.Torso.CFrame
              local t = i / 50
              Wave.Transparency = t
              wait()
            end
          else
            for i = 1, 50 do
              Wave.Size = Vector3.new(1 + i, 1 + i, 1 + i)
              Wave.CFrame = char.Torso.CFrame
              local t = i / 50
              Wave.Transparency = t
              wait()
            end
          end
          Wave:Destroy()
        end)
        Delay(0, function()
          while true do
            if wait() and Wave ~= nil then
              Wave.CFrame = char.Torso.CFrame
              break
            end
          end
        end)
      end
      Shockwave()
      for i = 1, 15 do
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(-130)), 0.2)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(70)), 0.2)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0.2) * CFrame.Angles(math.rad(45), math.rad(30), 0), 0.1)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(30), math.rad(20), math.rad(0)), 0.2)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(-40)), 0.1)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
        if Debounces.on == false then
          break
        end
        wait()
      end
      for i = 1, 15 do
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(-70)), 0.2)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(130)), 0.2)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0.2) * CFrame.Angles(math.rad(45), math.rad(-30), 0), 0.1)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(30), math.rad(-20), math.rad(0)), 0.2)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(40)), 0.1)
        if Debounces.on == false then
          break
        end
        wait()
      end
      for i = 1, 15 do
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(-130)), 0.2)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(70)), 0.2)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0.2) * CFrame.Angles(math.rad(45), math.rad(30), 0), 0.1)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(30), math.rad(20), math.rad(0)), 0.2)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(-40)), 0.1)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
        if Debounces.on == false then
          break
        end
        wait()
      end
      for i = 1, 15 do
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(-70)), 0.2)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(130)), 0.2)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0.2) * CFrame.Angles(math.rad(45), math.rad(-30), 0), 0.1)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(30), math.rad(-20), math.rad(0)), 0.2)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(40)), 0.1)
        if Debounces.on == false then
          break
        end
        wait()
      end
      for i = 1, 15 do
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(-130)), 0.2)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(70)), 0.2)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0.2) * CFrame.Angles(math.rad(45), math.rad(30), 0), 0.1)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(30), math.rad(20), math.rad(0)), 0.2)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(-40)), 0.1)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
        if Debounces.on == false then
          break
        end
        wait()
      end
      for i = 1, 10 do
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(-70)), 0.2)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(130)), 0.2)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0.2) * CFrame.Angles(math.rad(45), math.rad(-30), 0), 0.1)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(30), math.rad(-20), math.rad(0)), 0.2)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(40)), 0.1)
        if Debounces.on == false then
          break
        end
        wait()
      end
      wait(1.4)
      for i, v in pairs(char.Scythe:children()) do
        if v:IsA("Part") then
          v.Transparency = 0
          if v.Name == "Thingy2" then
            v.Transparency = 1
          end
        end
      end
      Debounces.NoIdl = false
      hum.WalkSpeed = 5
      Debounces.on = false
      wait()
      if Debounces.CanAttack == false then
        Debounces.CanAttack = true
        v:Destroy()
      end
    end
  end
end)
mouse.KeyDown:connect(function(key)
  if key == "r" and Debounces.CanAttack == true then
    Debounces.CanAttack = false
    x = Instance.new("Sound")
    x.SoundId = "http://www.roblox.com/asset?id=219338993"
    x.Parent = char
    x.Volume = 0.7
    x.MaxDistance = 45
    x.Pitch = 1
    x.Looped = true
    x:Play()
    explo = false
    Debounces.NoIdl = true
    Debounces.on = true
    for i = 1, 30 do
      hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.1)
      torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 10, 0) * CFrame.Angles(math.rad(30), math.rad(0), 0), 0.1)
      rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2, 0.5, -0.5) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(-40)), 0.1)
      larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2, 0.5, -0.5) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(40)), 0.1)
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
      cor2.Weld.C0 = Lerp(cor2.Weld.C0, CFrame.new(2.4, -1.2, -2.2) * CFrame.Angles(math.rad(-68), math.rad(-120), math.rad(45)), 0.8)
      if Debounces.on == false then
        break
      end
      wait()
    end
    wait(1.2)
    explosion("Royal purple", "Black", torso.CFrame, Vector3.new(50, 50, 50), 30, math.random(15, 30))
    x:Destroy()
    b = Instance.new("Sound")
    b.SoundId = "http://www.roblox.com/asset/?id=169445602"
    b.Parent = char
    b.Looped = false
    b:Play()
    n = Instance.new("Sound")
    n.SoundId = "http://www.roblox.com/asset/?id=168514932"
    n.Parent = char
    n.Pitch = 0.94
    n.Looped = false
    n:Play()
    for i = 1, 20 do
      hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)), 0.8)
      torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-40), math.rad(0), 0), 0.8)
      rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2, 0.5, -0.5) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(-40)), 0.8)
      larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2, 0.5, -0.5) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(40)), 0.8)
      lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(30), 0, math.rad(-20)), 0.8)
      rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(30), 0, math.rad(20)), 0.8)
      cor2.Weld.C0 = Lerp(cor2.Weld.C0, CFrame.new(2.4, -1.2, -2.2) * CFrame.Angles(math.rad(-68), math.rad(-120), math.rad(45)), 0.8)
      if Debounces.on == false then
        break
      end
      wait()
    end
    Debounces.NoIdl = false
    Debounces.on = false
    wait(1)
    if Debounces.CanAttack == false then
      Debounces.CanAttack = true
      x:Destroy()
      b:Destroy()
      n:Destroy()
    end
  end
end)
mouse.KeyDown:connect(function(key)
  if key == "hh" and Debounces.CanJoke == true then
    Debounces.CanJoke = false
    u = Instance.new("Sound")
    u.SoundId = "http://www.roblox.com/asset/?id=138199573"
    u.Parent = char
    u.Looped = false
    u.Pitch = 0.8
    u.Volume = 0.1
    u.MaxDistance = 45
    u2 = Instance.new("Sound")
    u2.SoundId = "http://www.roblox.com/asset/?id=138199573"
    u2.Parent = char
    u2.Looped = false
    u2.Pitch = 0.8
    u2.Volume = 0.1
    u2.MaxDistance = 45
    wait(0.01)
    u:Play()
    u2:Play()
    wait(6)
    u:Destroy()
    u2:Destroy()
    if Debounces.CanJoke == false then
      Debounces.CanJoke = true
    end
  end
end)
mouse.KeyDown:connect(function(key)
  if key == "jj" and Debounces.CanJoke == true then
    Debounces.CanJoke = false
    u = Instance.new("Sound")
    u.SoundId = "http://www.roblox.com/asset/?id=165564810"
    u.Parent = char
    u.Looped = false
    u.Pitch = 0.98
    u.Volume = 0.1
    u.MaxDistance = 45
    u:Play()
    wait(10)
    u:Destroy()
    if Debounces.CanJoke == false then
      Debounces.CanJoke = true
    end
  end
end)
imh = {
  "169446896",
  "169446924",
  "169446950",
  "169447220",
  "169448775"
}
pt2 = {
  0.8,
  0.85,
  0.9,
  0.95,
  1
}
mouse.KeyDown:connect(function(key)
  if key == "kk" and Debounces.CanJoke == true then
    Debounces.CanJoke = false
    u = Instance.new("Sound", char)
    u.SoundId = "rbxassetid://" .. imh[math.random(1, #imh)]
    u.Looped = false
    u.Pitch = pt2[math.random(1, #pt2)]
    u.Volume = 0.1
    u.MaxDistance = 45
    u2 = Instance.new("Sound", char)
    u2.SoundId = u.SoundId
    u2.Looped = false
    u2.Pitch = u.Pitch
    u2.Volume = 0.1
    u2.MaxDistance = 45
    wait(0.01)
    u:Play()
    u2:Play()
    wait(4)
    u:Destroy()
    if Debounces.CanJoke == false then
      Debounces.CanJoke = true
    end
  end
end)
bhu = {
  "130759160",
  "130759077",
  "169446709",
  "169449117",
  "169449143"
}
pt3 = {
  0.7,
  0.75,
  0.8,
  0.85
}
mouse.KeyDown:connect(function(key)
  if key == "ll" and Debounces.CanJoke == true then
    Debounces.CanJoke = false
    u = Instance.new("Sound", char)
    u.SoundId = "rbxassetid://" .. bhu[math.random(1, #bhu)]
    u.Looped = false
    u.Pitch = pt3[math.random(1, #pt3)]
    u.Volume = 0.1
    u.MaxDistance = 45
    u2 = Instance.new("Sound", char)
    u2.SoundId = u.SoundId
    u2.Looped = false
    u2.Pitch = u.Pitch
    u2.Volume = 0.1
    u2.MaxDistance = 45
    wait(0.01)
    u:Play()
    u2:Play()
    wait(1)
    u:Destroy()
    u2:Destroy()
    if Debounces.CanJoke == false then
      Debounces.CanJoke = true
    end
  end
end)
mouse.KeyDown:connect(function(key)
  if key == "xx" and Debounces.Invisible == false then
    Debounces.Invisible = true
    lite.Brightness = 0
    char.Orb.ParticleEmitter.Transparency = NumberSequence.new(1)
    game:GetService("SoundService").AmbientReverb = "Hangar"
    b = Instance.new("Sound")
    b.SoundId = "http://www.roblox.com/asset/?id=160867437"
    b.Parent = hed
    b.Looped = false
    b.Pitch = 1.15
    b.Volume = 0.1
    b.MaxDistance = 45
    wait(0.1)
    b:Play()
    b1 = Instance.new("Sound")
    b1.SoundId = "http://www.roblox.com/asset/?id=176651233"
    b1.Parent = hed
    b1.Looped = true
    b1.Pitch = 0.9
    b1.Volume = 0.1
    b1.MaxDistance = 45
    b2 = Instance.new("Sound")
    b2.SoundId = "http://www.roblox.com/asset/?id=176651233"
    b2.Parent = hed
    b2.Looped = true
    b2.Pitch = 0.9
    b2.Volume = 0.1
    b2.MaxDistance = 45
    wait(0.1)
    b1:Play()
    b2:Play()
    for i = 1, 20 do
      wait()
      for i, v in pairs(char:children()) do
        if v:IsA("Part") then
          v.Transparency = v.Transparency + 0.05
        end
      end
      for i, v in pairs(char.Scythe:children()) do
        if v:IsA("Part") then
          v.Transparency = v.Transparency + 0.05
        end
      end
      for i, v in pairs(char.Wings:children()) do
        if v:IsA("Part") then
          v.Transparency = v.Transparency + 0.05
        end
      end
    end
    char.Humanoid.WalkSpeed = 50
    b:Destroy()
  end
end)
mouse.KeyUp:connect(function(key)
  if key == "xx" then
    b1:Destroy()
    b2:Destroy()
    game:GetService("SoundService").AmbientReverb = "NoReverb"
    if math.random(1, 4) == 1 then
      b = Instance.new("Sound")
      b.SoundId = "http://www.roblox.com/asset/?id=155348816"
      b.Parent = hed
      b.Looped = false
      b.Pitch = 0.93
      b.Volume = 0.1
      b.MaxDistance = 45
      wait(0.1)
      b:Play()
    else
    end
    char.Humanoid.WalkSpeed = 5
    for i = 1, 10 do
      wait()
      for i, v in pairs(char:children()) do
        if v:IsA("Part") then
          v.Transparency = v.Transparency - 0.1
        end
      end
      for i, v in pairs(char.Scythe:children()) do
        if v:IsA("Part") then
          v.Transparency = v.Transparency - 0.1
        end
      end
      for i, v in pairs(char.Wings:children()) do
        if v:IsA("Part") then
          v.Transparency = v.Transparency - 0.1
        end
      end
    end
    lite.Brightness = 10
    char.Orb.ParticleEmitter.Transparency = NumberSequence.new(0)
    b:Destroy()
    if Debounces.Invisible == true then
      Debounces.Invisible = false
    end
  end
end)
local PressingMouse = false
mouse.Button1Up:connect(function()
  PressingMouse = false
end)
local Mouse = mouse
local Char = char
local CurrentBP = -1
local Dist = 10
local DoBP = false
Mouse.Button1Down:connect(function()
  if Mouse.Target then
    DoBP = true
    Dist = (Char.Torso.Position - Mouse.Target.Position).magnitude
    CurrentBP = Instance.new("BodyPosition", Mouse.Target)
    CurrentBP.Name = "get rekt m9"
    CurrentBP.maxForce = Vector3.new(math.huge, math.huge, math.huge)
    CurrentBP.P = 100000
  end
end)
Mouse.Button1Up:connect(function()
  if DoBP == true then
    DoBP = false
    if CurrentBP ~= -1 then
      CurrentBP:Destroy()
      CurrentBP = -1
    end
    CurrentBP = -1
  end
end)
game:GetService("RunService").RenderStepped:connect(function()
  if DoBP and CurrentBP ~= -1 then
    local Unit = -(Char.Torso.Position - Mouse.Hit.p).unit * Dist
    CurrentBP.position = Char.Torso.Position + Unit
  end
end)
mouse.KeyDown:connect(function(key)
  if key == "n" then
    for i, v in pairs(game.Players:getPlayers()) do
      if v.Name ~= char.Name then
        for j, k in pairs(v.Character:GetChildren()) do
          if k:IsA("BasePart") and k.Transparency <= 1 then
            bawx = Instance.new("SelectionBox", cam)
            bawx.Color = BrickColor.new("Bright red")
            bawx.Transparency = 0.5
            bawx.Adornee = k
          end
        end
      end
    end
  end
end)
mouse.KeyUp:connect(function(key)
  if key == "n" then
    for i, v in pairs(cam:children()) do
      if v:IsA("SelectionBox") then
        v:Destroy()
      end
    end
  end
end)
mouse.KeyDown:connect(function(key)
  if string.byte(key) == 52 then
    char.Humanoid.WalkSpeed = 21
  end
end)
mouse.KeyUp:connect(function(key)
  if string.byte(key) == 52 then
    char.Humanoid.WalkSpeed = 5
  end
end)
mouse.KeyDown:connect(function(key)
  if key == "z" then
    stanceToggle = "Landed"
  elseif key == "c" then
    stanceToggle = "Floating"
  elseif key == "v" then
    stanceToggle = "Sitting"
  end
end)
game:GetService("RunService").RenderStepped:connect(function()
  if char.Humanoid.Health > 0 then
    if char.Humanoid.Jump == true then
      jumpn = true
    else
      jumpn = false
    end
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
    elseif (torso.Velocity * Vector3.new(1, 0, 1)).magnitude < 2 then
      animpose = "Idle"
    elseif (torso.Velocity * Vector3.new(1, 0, 1)).magnitude < 20 then
      animpose = "Walking"
    elseif (torso.Velocity * Vector3.new(1, 0, 1)).magnitude > 20 then
      animpose = "Running"
    end
    if animpose ~= lastanimpose then
      sine = 0
      if Debounces.NoIdl == false then
        if stanceToggle == "Floating" then
          change = 1
          larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(20), 0, math.rad(-10)), 0.6)
          rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(30)), 0.2)
          lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(20), 0, math.rad(-8)), 0.6)
          rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(20), 0, math.rad(8)), 0.6)
          cor2.Weld.C0 = Lerp(cor2.Weld.C0, CFrame.new(0, -2.2, -1.8) * CFrame.Angles(math.rad(-28), math.rad(0), math.rad(0)), 1)
        end
      elseif stanceToggle == "Landed" then
        change = 1
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.6)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.6)
      elseif stanceToggle == "Sitting" then
        change = 1
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.6)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.6)
        wait()
      end
    else
    end
    lastanimpose = animpose
    if Debounces.NoIdl == false then
      if animpose == "Idle" then
        if stanceToggle == "Floating" then
          change = 0.5
          torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0 - 0.16 * math.cos(sine / 14), 0) * CFrame.Angles(math.rad(-20 - 1 * math.cos(sine / 14)), math.rad(0), 0), 0.05)
          rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.65, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(30 + 1 * math.cos(sine / 14))), 0.2)
          larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.65 + 0.05 * math.cos(sine / 14), 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(-10 - 1.5 * math.cos(sine / 14))), 0.2)
          hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.3) * CFrame.Angles(math.rad(-20 + 2 * math.cos(sine / 14)), math.rad(0), math.rad(0)), 0.2)
          lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(20), math.rad(0 + 2 * math.cos(sine / 14)), math.rad(-8 - 1.5 * math.cos(sine / 14))), 0.2)
          rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(20), math.rad(0 + 2 * math.cos(sine / 14)), math.rad(8 + 1.5 * math.cos(sine / 14))), 0.2)
          cor2.Weld.C0 = Lerp(cor2.Weld.C0, CFrame.new(0, -2.2, -1.8) * CFrame.Angles(math.rad(-28), math.rad(0), math.rad(0)), 0.4)
        elseif stanceToggle == "Landed" then
          rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.65 + 0.05 * math.cos(sine / 14), 0) * CFrame.Angles(math.rad(-30), math.rad(-20), math.rad(22 + 2 * math.cos(sine / 14))), 0.2)
          larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5 + 0.05 * math.cos(sine / 14), -0.5) * CFrame.Angles(math.rad(70), math.rad(-10), math.rad(26 - 2 * math.cos(sine / 14))), 0.2)
          hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-10 + 2 * math.cos(sine / 14)), math.rad(36), math.rad(0)), 0.2)
          torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(-10 + 1 * math.cos(sine / 14)), math.rad(-36), math.rad(0)), 0.2)
          lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.7, -1, 0) * CFrame.Angles(math.rad(30 - 1.5 * math.cos(sine / 14)), math.rad(30), math.rad(-30)), 0.2)
          rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10 - 1.5 * math.cos(sine / 14)), math.rad(30), math.rad(20)), 0.2)
          cor2.Weld.C0 = Lerp(cor2.Weld.C0, CFrame.new(1.8, -0.8, -1.4) * CFrame.Angles(math.rad(-40), math.rad(-70), math.rad(0)), 0.2)
        elseif stanceToggle == "Sitting" then
          rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.3, -0.1) * CFrame.Angles(math.rad(45 - 2 * math.cos(sine / 14)), math.rad(0), math.rad(32)), 0.2)
          larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20 + 1 * math.cos(sine / 14))), 0.2)
          hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(14 + 2 * math.cos(sine / 14)), math.rad(-40), math.rad(14)), 0.2)
          torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(-50 + 1 * math.cos(sine / 14)), math.rad(40), math.rad(0)), 0.2)
          lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.4, 0.2, -0.8) * CFrame.Angles(math.rad(30 - 1 * math.cos(sine / 14)), 0, math.rad(20)), 0.2)
          rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.8, -1, 0) * CFrame.Angles(math.rad(-10 - 1 * math.cos(sine / 14)), math.rad(-40), math.rad(0)), 0.2)
          cor2.Weld.C0 = Lerp(cor2.Weld.C0, CFrame.new(0, 1.2, 0) * CFrame.Angles(math.rad(-90), math.rad(180), math.rad(0)), 0.2)
        end
      elseif animpose == "Walking" then
        if stanceToggle == "Landed" then
          change = 0.5
          larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5 + 0.05 * math.cos(sine / 3), -math.sin(sine / 6) / 4) * CFrame.Angles(math.sin(sine / 6) / 2.8, -math.sin(sine / 6) / 3, math.rad(-10 - 2 * math.cos(sine / 3))), 0.2)
          rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5 - 0.05 * math.cos(sine / 3), math.sin(sine / 6) / 4) * CFrame.Angles(-math.sin(sine / 6) / 2.8, -math.sin(sine / 6) / 3, math.rad(10 + 2 * math.cos(sine / 3))), 0.2)
          hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-8 + 2 * math.cos(sine / 3)), math.rad(0), math.rad(0)), 0.2)
          lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1 - 0.15 * math.cos(sine / 6) / 5, -0.15 + math.sin(sine / 6) / 5) * CFrame.Angles(math.rad(-14) + -math.sin(sine / 6) / 2.7, 0, 0), 0.4)
          rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1 + 0.15 * math.cos(sine / 6) / 5, -0.15 + -math.sin(sine / 6) / 5) * CFrame.Angles(math.rad(-14) + math.sin(sine / 6) / 2.7, 0, 0), 0.4)
          torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1 + 0.07 * math.cos(sine / 3), 0) * CFrame.Angles(math.rad(-4 + 1 * math.cos(sine / 3)), 0, math.rad(0)), 0.2)
          cor2.Weld.C0 = Lerp(cor2.Weld.C0, CFrame.new(1.6, -1.4, -1.4) * CFrame.Angles(math.rad(-60), math.rad(-60), math.rad(0)), 0.4)
        elseif stanceToggle == "Sitting" then
          stanceToggle = "Landed"
        elseif stanceToggle == "Floating" then
          torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0 - 0.1 * math.cos(sine / 16), 0) * CFrame.Angles(math.rad(-20), 0, 0), 0.6)
          rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), 0, math.rad(30 + 2 * math.cos(sine / 16))), 0.3)
          larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(15 + 10 * math.cos(sine / 16)), 0, 0), 0.3)
          hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.3) * CFrame.Angles(math.rad(-18 + 2 * math.cos(sine / 16)), math.rad(0), math.rad(0)), 0.3)
          lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(13 + 4 * math.cos(sine / 16)), 0, 0), 0.3)
          rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(15 + 10 * math.cos(sine / 16)), 0, 0), 0.3)
          cor2.Weld.C0 = Lerp(cor2.Weld.C0, CFrame.new(0, -2.2, -1.8) * CFrame.Angles(math.rad(-28), math.rad(0), math.rad(0)), 0.3)
        end
      elseif animpose == "Running" then
        change = 1
        if stanceToggle == "Landed" then
          larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4 - 0.1 * math.cos(sine / 6), 0.5, 0 + 0.8 * math.cos(sine / 6)) * CFrame.Angles(math.rad(20 - 90 * math.cos(sine / 6) / 1.2), math.rad(0), math.rad(20 - 40 * math.cos(sine / 6))), 0.2)
          rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.4 - 0.1 * math.cos(sine / 6), 0.5, 0 - 0.8 * math.cos(sine / 6)) * CFrame.Angles(math.rad(20 + 90 * math.cos(sine / 6) / 1.2), math.rad(0), math.rad(-20 - 40 * math.cos(sine / 6))), 0.2)
          hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(-8 + 12 * math.cos(sine / 3) / 1.8), math.rad(0 - 8 * math.cos(sine / 6)), math.rad(0)), 0.2)
          torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1 - 0.1 * math.cos(sine / 3), 0) * CFrame.Angles(math.rad(-14 + 15 * math.cos(sine / 3) / 2), math.rad(0 + 12 * math.cos(sine / 6)), math.rad(0)), 0.2)
          lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1 + 0.1 * math.cos(sine / 6) / 3, -0.15 + -math.sin(sine / 6) / 3) * CFrame.Angles(math.rad(-12) + math.sin(sine / 6) / 1.7, math.rad(0 - 12 * math.cos(sine / 6)), 0), 0.8)
          rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1 - 0.1 * math.cos(sine / 6) / 3, -0.15 + math.sin(sine / 6) / 3) * CFrame.Angles(math.rad(-12) + -math.sin(sine / 6) / 1.7, math.rad(0 - 12 * math.cos(sine / 6)), 0), 0.8)
        end
      end
    end
  end
end)
Spawn(function()
  while wait() do
    updateFly()
  end
end)
Spawn(function()
  while wait(0.1) do
    Magik()
  end
end)