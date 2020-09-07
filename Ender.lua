-----------------------
--[[ Organization : Insanity ]]--
--[[ Name : Ender (Thou who collects the souls of innocents) ]]--
--[[ Creator / Captain : DATA RESTRICTED ]]--
-------------------------------------------------------
--A script By makhail07

--Discord Creterisk#2958

--This script is a fucking mistake have fun skids
-------------------------------------------------------

local FavIDs = {
	340106355, --Nefl Crystals
	927529620, --Dimension
	876981900, --Fantasy
	398987889, --Ordinary Days
	1117396305, --Oh wait, it's you.
	885996042, --Action Winter Journey
	919231299, --Sprawling Idiot Effigy
	743466274, --Good Day Sunshine
	727411183, --Knife Fight
	1402748531, --The Earth Is Counting On You!
	595230126 --Robot Language
	}



--The reality of my life isn't real but a Universe -makhail07
wait()
local plr = game:service'Players'.LocalPlayer
print('Local User is '..plr.Name)
local char = plr.Character
local hum = char.Humanoid
local ra = char["Right Arm"]
local la= char["Left Arm"]
local rl= char["Right Leg"]
local ll = char["Left Leg"]
local hed = char.Head
local root = char.HumanoidRootPart
local rootj = root.RootJoint
local tors = char.Torso
local mouse = plr:GetMouse()
local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)
-------------------------------------------------------
--Start Good Stuff--
-------------------------------------------------------
CF = CFrame.new
angles = CFrame.Angles
attack = false
Euler = CFrame.fromEulerAnglesXYZ
Rad = math.rad
IT = Instance.new
BrickC = BrickColor.new
Cos = math.cos
Acos = math.acos
Sin = math.sin
Asin = math.asin
Abs = math.abs
Mrandom = math.random
Floor = math.floor
-------------------------------------------------------
--End Good Stuff--
-------------------------------------------------------
necko = CF(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
RSH, LSH = nil, nil 
RW = Instance.new("Weld") 
LW = Instance.new("Weld")
RH = tors["Right Hip"]
LH = tors["Left Hip"]
RSH = tors["Right Shoulder"] 
LSH = tors["Left Shoulder"] 
RSH.Parent = nil 
LSH.Parent = nil 
RW.Name = "RW"
RW.Part0 = tors 
RW.C0 = CF(1.5, 0.5, 0)
RW.C1 = CF(0, 0.5, 0) 
RW.Part1 = ra
RW.Parent = tors 
LW.Name = "LW"
LW.Part0 = tors 
LW.C0 = CF(-1.5, 0.5, 0)
LW.C1 = CF(0, 0.5, 0) 
LW.Part1 = la
LW.Parent = tors
Effects = {}

-------------------------------------------------------
--Start HeartBeat--
-------------------------------------------------------
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")

frame = 1 / 60
tf = 0
allowframeloss = false
tossremainder = false


lastframe = tick()
script.Heartbeat:Fire()


game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.Heartbeat:Fire()
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
-------------------------------------------------------
--End HeartBeat--
-------------------------------------------------------

-------------------------------------------------------
--Start Important Functions--
-------------------------------------------------------
function swait(num)
	if num == 0 or num == nil then
		game:service("RunService").Stepped:wait(0)
	else
		for i = 0, num do
			game:service("RunService").Stepped:wait(0)
		end
	end
end
function thread(f)
	coroutine.resume(coroutine.create(f))
end
function clerp(a, b, t)
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
			local theta = math.acos(cosTheta)
			local invSinTheta = 1 / Sin(theta)
			startInterp = Sin((1 - t) * theta) * invSinTheta
			finishInterp = Sin(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	elseif 1 + cosTheta > 1.0E-4 then
		local theta = math.acos(-cosTheta)
		local invSinTheta = 1 / Sin(theta)
		startInterp = Sin((t - 1) * theta) * invSinTheta
		finishInterp = Sin(t * theta) * invSinTheta
	else
		startInterp = t - 1
		finishInterp = t
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end
function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
end
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

-------------------------------------------------------
--Start Damage Function--
-------------------------------------------------------
function Damage(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
	if hit.Parent == nil then
		return
	end
	local h = hit.Parent:FindFirstChildOfClass("Humanoid")
	for _, v in pairs(hit.Parent:children()) do
		if v:IsA("Humanoid") then
			h = v
		end
	end
         if h ~= nil and hit.Parent.Name ~= char.Name and hit.Parent:FindFirstChild("UpperTorso") ~= nil then
	
         hit.Parent:FindFirstChild("Head"):BreakJoints()
         end

	if h ~= nil and hit.Parent.Name ~= char.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
		if hit.Parent:findFirstChild("DebounceHit") ~= nil then
			if hit.Parent.DebounceHit.Value == true then
				return
			end
		end
         if insta == true then
         hit.Parent:FindFirstChild("Head"):BreakJoints()
         end
		local c = Create("ObjectValue"){
			Name = "creator",
			Value = game:service("Players").LocalPlayer,
			Parent = h,
		}
		game:GetService("Debris"):AddItem(c, .5)
		if HitSound ~= nil and HitPitch ~= nil then
			CFuncs.Sound.Create(HitSound, hit, 1, HitPitch) 
		end
		local Damage = math.random(minim, maxim)
		local blocked = false
		local block = hit.Parent:findFirstChild("Block")
		if block ~= nil then
			if block.className == "IntValue" then
				if block.Value > 0 then
					blocked = true
					block.Value = block.Value - 1
					print(block.Value)
				end
			end
		end
		if blocked == false then
			h.Health = h.Health - Damage
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, tors.BrickColor.Color)
		else
			h.Health = h.Health - (Damage / 2)
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, tors.BrickColor.Color)
		end
		if Type == "Knockdown" then
			local hum = hit.Parent.Humanoid
			hum.PlatformStand = true
			coroutine.resume(coroutine.create(function(HHumanoid)
				swait(1)
				HHumanoid.PlatformStand = false
			end), hum)
			local angle = (hit.Position - (Property.Position + Vector3.new(0, 0, 0))).unit
			local bodvol = Create("BodyVelocity"){
				velocity = angle * knockback,
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			local rl = Create("BodyAngularVelocity"){
				P = 3000,
				maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
				angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodvol, .5)
			game:GetService("Debris"):AddItem(rl, .5)
		elseif Type == "Normal" then
			local vp = Create("BodyVelocity"){
				P = 500,
				maxForce = Vector3.new(math.huge, 0, math.huge),
				velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05,
			}
			if knockback > 0 then
				vp.Parent = hit.Parent.Torso
			end
			game:GetService("Debris"):AddItem(vp, .5)
		elseif Type == "Up" then
			local bodyVelocity = Create("BodyVelocity"){
				velocity = Vector3.new(0, 20, 0),
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodyVelocity, .5)
		elseif Type == "DarkUp" then
			coroutine.resume(coroutine.create(function()
				for i = 0, 1, 0.1 do
					swait()
					Effects.Block.Create(BrickColor.new("Black"), hit.Parent.Torso.CFrame, 5, 5, 5, 1, 1, 1, .08, 1)
				end
			end))
			local bodyVelocity = Create("BodyVelocity"){
				velocity = Vector3.new(0, 20, 0),
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodyVelocity, 1)
		elseif Type == "Snare" then
			local bp = Create("BodyPosition"){
				P = 2000,
				D = 100,
				maxForce = Vector3.new(math.huge, math.huge, math.huge),
				position = hit.Parent.Torso.Position,
				Parent = hit.Parent.Torso,
			}
			game:GetService("Debris"):AddItem(bp, 1)
		elseif Type == "Freeze" then
			local BodPos = Create("BodyPosition"){
				P = 50000,
				D = 1000,
				maxForce = Vector3.new(math.huge, math.huge, math.huge),
				position = hit.Parent.Torso.Position,
				Parent = hit.Parent.Torso,
			}
			local BodGy = Create("BodyGyro") {
				maxTorque = Vector3.new(4e+005, 4e+005, 4e+005) * math.huge ,
				P = 20e+003,
				Parent = hit.Parent.Torso,
				cframe = hit.Parent.Torso.CFrame,
			}
			hit.Parent.Torso.Anchored = true
			coroutine.resume(coroutine.create(function(Part) 
				swait(1.5)
				Part.Anchored = false
			end), hit.Parent.Torso)
			game:GetService("Debris"):AddItem(BodPos, 3)
			game:GetService("Debris"):AddItem(BodGy, 3)
		end
		local debounce = Create("BoolValue"){
			Name = "DebounceHit",
			Parent = hit.Parent,
			Value = true,
		}
		game:GetService("Debris"):AddItem(debounce, Delay)
		c = Create("ObjectValue"){
			Name = "creator",
			Value = Player,
			Parent = h,
		}
		game:GetService("Debris"):AddItem(c, .5)
	end
end
-------------------------------------------------------
--End Damage Function--
-------------------------------------------------------

-------------------------------------------------------
--Start Damage Function Customization--
-------------------------------------------------------
function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 1))
	local EffectPart = CFuncs.Part.Create(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
	EffectPart.Anchored = true
	local BillboardGui = Create("BillboardGui"){
		Size = UDim2.new(3, 0, 3, 0),
		Adornee = EffectPart,
		Parent = EffectPart,
	}
	local TextLabel = Create("TextLabel"){
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Text = Text,
		Font = "Bodoni",
		TextColor3 = Color,
		TextScaled = true,
		TextStrokeColor3 = Color3.fromRGB(0,0,0),
		Parent = BillboardGui,
	}
	game.Debris:AddItem(EffectPart, (Time))
	EffectPart.Parent = game:GetService("Workspace")
	delay(0, function()
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
-------------------------------------------------------
--End Damage Function Customization--
-------------------------------------------------------

function MagniDamage(Part, magni, mindam, maxdam, knock, Type)
  for _, c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Head")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if magni >= mag and c.Name ~= plr.Name then
          Damage(head, head, mindam, maxdam, knock, Type, root, 0.1, "http://www.roblox.com/asset/?id=0", 1.2)
        end
      end
    end
  end
end


CFuncs = {
	Part = {
		Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
			local Part = Create("Part")({
				Parent = Parent,
				Reflectance = Reflectance,
				Transparency = Transparency,
				CanCollide = false,
				Locked = true,
				BrickColor = BrickColor.new(tostring(BColor)),
				Name = Name,
				Size = Size,
				Material = Material
			})
			RemoveOutlines(Part)
			return Part
		end
	},
	Mesh = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh)({
				Parent = Part,
				Offset = OffSet,
				Scale = Scale
			})
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end
	},
	Mesh = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh)({
				Parent = Part,
				Offset = OffSet,
				Scale = Scale
			})
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end
	},
	Weld = {
		Create = function(Parent, Part0, Part1, C0, C1)
			local Weld = Create("Weld")({
				Parent = Parent,
				Part0 = Part0,
				Part1 = Part1,
				C0 = C0,
				C1 = C1
			})
			return Weld
		end
	},
	Sound = {
		Create = function(id, par, vol, pit)
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound")({
					Volume = vol,
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace
				})
				wait()
				S:play()
				game:GetService("Debris"):AddItem(S, 6)
			end))
		end
	},
	ParticleEmitter = {
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			local fp = Create("ParticleEmitter")({
				Parent = Parent,
				Color = ColorSequence.new(Color1, Color2),
				LightEmission = LightEmission,
				Size = Size,
				Texture = Texture,
				Transparency = Transparency,
				ZOffset = ZOffset,
				Acceleration = Accel,
				Drag = Drag,
				LockedToPart = LockedToPart,
				VelocityInheritance = VelocityInheritance,
				EmissionDirection = EmissionDirection,
				Enabled = Enabled,
				Lifetime = LifeTime,
				Rate = Rate,
				Rotation = Rotation,
				RotSpeed = RotSpeed,
				Speed = Speed,
				VelocitySpread = VelocitySpread
			})
			return fp
		end
	}
}
function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
function CreatePart(FormFactor, Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	local Part = Create("Part")({
		formFactor = FormFactor,
		Parent = Parent,
		Reflectance = Reflectance,
		Transparency = Transparency,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(BColor)),
		Name = Name,
		Size = Size,
		Material = Material
	})
	RemoveOutlines(Part)
	return Part
end
function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	local Msh = Create(Mesh)({
		Parent = Part,
		Offset = OffSet,
		Scale = Scale
	})
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end
function CreateWeld(Parent, Part0, Part1, C0, C1)
	local Weld = Create("Weld")({
		Parent = Parent,
		Part0 = Part0,
		Part1 = Part1,
		C0 = C0,
		C1 = C1
	})
	return Weld
end


-------------------------------------------------------
--Start Effect Function--
-------------------------------------------------------
EffectModel = Instance.new("Model", char)
Effects = {
  Block = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
      local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      game:GetService("Debris"):AddItem(prt, 10)
      if Type == 1 or Type == nil then
        table.insert(Effects, {
          prt,
          "Block1",
          delay,
          x3,
          y3,
          z3,
          msh
        })
      elseif Type == 2 then
        table.insert(Effects, {
          prt,
          "Block2",
          delay,
          x3,
          y3,
          z3,
          msh
        })
      else
        table.insert(Effects, {
          prt,
          "Block3",
          delay,
          x3,
          y3,
          z3,
          msh
        })
      end
    end
  },
  Sphere = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Cylinder",
        delay,
        x3,
        y3,
        z3,
        msh
      })
    end
  },
  Cylinder = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Cylinder",
        delay,
        x3,
        y3,
        z3,
        msh
      })
    end
  },
  Wave = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1 / 60, y1 / 60, z1 / 60))
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Cylinder",
        delay,
        x3 / 60,
        y3 / 60,
        z3 / 60,
        msh
      })
    end
  },
  Ring = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Cylinder",
        delay,
        x3,
        y3,
        z3,
        msh
      })
    end
  },
  Break = {
    Create = function(brickcolor, cframe, x1, y1, z1)
      local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
      prt.Anchored = true
      prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      local num = math.random(10, 50) / 1000
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Shatter",
        num,
        prt.CFrame,
        math.random() - math.random(),
        0,
        math.random(50, 100) / 100
      })
    end
  },
Spiral = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://1051557", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Cylinder",
        delay,
        x3,
        y3,
        z3,
        msh
      })
    end
  },
Push = {
    Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
      local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
      prt.Anchored = true
      prt.CFrame = cframe
      local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://437347603", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
      game:GetService("Debris"):AddItem(prt, 10)
      table.insert(Effects, {
        prt,
        "Cylinder",
        delay,
        x3,
        y3,
        z3,
        msh
      })
    end
  }
}
-------------------------------------------------------
--End Effect Function--
-------------------------------------------------------

function CreateSound(ID, PARENT, VOLUME, PITCH)
	local NSound = nil
	coroutine.resume(coroutine.create(function()
		NSound = Instance.new("Sound", PARENT)
		NSound.Volume = VOLUME
		NSound.Pitch = PITCH
		NSound.SoundId = "http://www.roblox.com/asset/?id="..ID
		swait()
		NSound:play()
		game:GetService("Debris"):AddItem(NSound, 10)
	end))
	return NSound
end

function Eviscerate(dude)
	if dude.Name ~= char then
		local bgf = IT("BodyGyro", dude.Head)
		bgf.CFrame = bgf.CFrame * CFrame.fromEulerAnglesXYZ(Rad(-90), 0, 0)
		local val = IT("BoolValue", dude)
		val.Name = "IsHit"
		local ds = coroutine.wrap(function()
			dude:WaitForChild("Head"):BreakJoints()
			wait(0.5)
			target = nil
			coroutine.resume(coroutine.create(function()
				for i, v in pairs(dude:GetChildren()) do
					if v:IsA("Accessory") then
						v:Destroy()
					end
					if v:IsA("Humanoid") then
						v:Destroy()
					end
					if v:IsA("CharacterMesh") then
						v:Destroy()
					end
					if v:IsA("Model") then
						v:Destroy()
					end
					if v:IsA("Part") or v:IsA("MeshPart") then
						for x, o in pairs(v:GetChildren()) do
							if o:IsA("Decal") then
								o:Destroy()
							end
						end
						coroutine.resume(coroutine.create(function()
							v.Material = "Neon"
							v.CanCollide = false
							local PartEmmit1 = IT("ParticleEmitter", v)
							PartEmmit1.LightEmission = 1
							PartEmmit1.Texture = "rbxassetid://284205403"
							PartEmmit1.Color = ColorSequence.new(maincolor.Color)
							PartEmmit1.Rate = 150
							PartEmmit1.Lifetime = NumberRange.new(1)
							PartEmmit1.Size = NumberSequence.new({
								NumberSequenceKeypoint.new(0, 0.75, 0),
								NumberSequenceKeypoint.new(1, 0, 0)
							})
							PartEmmit1.Transparency = NumberSequence.new({
								NumberSequenceKeypoint.new(0, 0, 0),
								NumberSequenceKeypoint.new(1, 1, 0)
							})
							PartEmmit1.Speed = NumberRange.new(0, 0)
							PartEmmit1.VelocitySpread = 30000
							PartEmmit1.Rotation = NumberRange.new(-500, 500)
							PartEmmit1.RotSpeed = NumberRange.new(-500, 500)
							local BodPoss = IT("BodyPosition", v)
							BodPoss.P = 3000
							BodPoss.D = 1000
							BodPoss.maxForce = Vector3.new(50000000000, 50000000000, 50000000000)
							BodPoss.position = v.Position + Vector3.new(Mrandom(-15, 15), Mrandom(-15, 15), Mrandom(-15, 15))
							v.Color = maincolor.Color
							coroutine.resume(coroutine.create(function()
								for i = 0, 49 do
									swait(1)
									v.Transparency = v.Transparency + 0.08
								end
								wait(0.5)
								PartEmmit1.Enabled = false
								wait(3)
								v:Destroy()
								dude:Destroy()
							end))
						end))
					end
				end
			end))
		end)
		ds()
	end
end
function SphereAura(bonuspeed, FastSpeed, type, pos, x1, y1, z1, value, color, outerpos)
	local type = type
	local rng = Instance.new("Part", char)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	rng.CFrame = rng.CFrame + rng.CFrame.lookVector * outerpos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshType = "Sphere"
	rngm.Scale = Vector3.new(x1, y1, z1)
	local scaler2 = 1
	local speeder = FastSpeed
	if type == "Add" then
		scaler2 = 1 * value
	elseif type == "Divide" then
		scaler2 = 1 / value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0, 10 / bonuspeed, 0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01 * value / bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01 / value * bonuspeed
			end
                        rng.BrickColor = BrickColor.random()
			speeder = speeder - 0.01 * FastSpeed * bonuspeed
			rng.CFrame = rng.CFrame + rng.CFrame.lookVector * speeder * bonuspeed
			rng.Transparency = rng.Transparency + 0.01 * bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2 * bonuspeed, scaler2 * bonuspeed, 0)
		end
		rng:Destroy()
	end))
end

function FindNearestHead(Position, Distance, SinglePlayer)
	if SinglePlayer then
		return Distance > (SinglePlayer.Torso.CFrame.p - Position).magnitude
	end
	local List = {}
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA("Model") and v:findFirstChild("Head") and v ~= char and Distance >= (v.Head.Position - Position).magnitude then
			table.insert(List, v)
		end
	end
	return List
end
function SoulSteal(dude)
if dude.Name ~= char then
local bgf = IT("BodyGyro", dude.Head)
bgf.CFrame = bgf.CFrame * CFrame.fromEulerAnglesXYZ(Rad(-90), 0, 0)
local val = IT("BoolValue", dude)
val.Name = "IsHit"
local torso = (dude:FindFirstChild'Head' or dude:FindFirstChild'Torso' or dude:FindFirstChild'UpperTorso' or dude:FindFirstChild'LowerTorso' or dude:FindFirstChild'HumanoidRootPart')
local soulst = coroutine.wrap(function()
local soul = Instance.new("Part",dude)
soul.Size = Vector3.new(1,1,1)
soul.CanCollide = false
soul.Anchored = false
soul.Position = torso.Position
soul.Transparency = 1
local PartEmmit1 = IT("ParticleEmitter", soul)
PartEmmit1.LightEmission = 1
PartEmmit1.Texture = "rbxassetid://569507414"
PartEmmit1.Color = ColorSequence.new(maincolor.Color)
PartEmmit1.Rate = 250
PartEmmit1.Lifetime = NumberRange.new(1.6)
PartEmmit1.Size = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 1, 0),
	NumberSequenceKeypoint.new(1, 0, 0)
})
PartEmmit1.Transparency = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 0, 0),
	NumberSequenceKeypoint.new(1, 1, 0)
})
PartEmmit1.Speed = NumberRange.new(0, 0)
PartEmmit1.VelocitySpread = 30000
PartEmmit1.Rotation = NumberRange.new(-360, 360)
PartEmmit1.RotSpeed = NumberRange.new(-360, 360)
local BodPoss = IT("BodyPosition", soul)
BodPoss.P = 3000
BodPoss.D = 1000
BodPoss.maxForce = Vector3.new(50000000000, 50000000000, 50000000000)
BodPoss.position = torso.Position + Vector3.new(Mrandom(-15, 15), Mrandom(-15, 15), Mrandom(-15, 15))
wait(1.6)
soul.Touched:connect(function(hit)
	if hit.Parent == char then
	soul:Destroy()
	end
end)
wait(1.2)
while soul do
	swait()
	PartEmmit1.Color = ColorSequence.new(maincolor.Color)
	BodPoss.Position = tors.Position
end
end)
	soulst()
	end
end
function FaceMouse()
local	Cam = workspace.CurrentCamera
	return {
		CFrame.new(char.Torso.Position, Vector3.new(mouse.Hit.p.x, char.Torso.Position.y, mouse.Hit.p.z)),
		Vector3.new(mouse.Hit.p.x, mouse.Hit.p.y, mouse.Hit.p.z)
	}
end
-------------------------------------------------------
--End Important Functions--
-------------------------------------------------------
--[[
		Thanks for using Build-To-Lua by jarredbcv.
]]--

New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end
	
Gaunty = New("Model",char,"Gaunty",{})
Handle = New("Part",Gaunty,"Handle",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 1.26999998, 1),CFrame = CFrame.new(-5.67319345, 3.02064276, -77.6615906, 0.999894261, 0.010924357, 0.00963267777, -0.0110270018, 0.999882579, 0.0106679145, -0.00951499958, -0.0107729975, 0.999897003),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Handle,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.82765579, 3.62595344, -77.6579285, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(-0.161155701, 0.603512526, 0.00862884521, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-6.13765526, 3.62595367, -77.6579285, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(-0.471122265, 0.600126028, 0.00564575195, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.5176549, 3.62595415, -77.6579285, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.148812294, 0.606899738, 0.0116195679, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.21765471, 3.62595463, -77.6579285, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.448780537, 0.610177517, 0.014503479, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-6.13765526, 2.53595448, -77.6579285, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(-0.459102631, -0.489744425, -0.00598144531, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.82765627, 2.53595448, -77.6579285, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(-0.149136543, -0.486357927, -0.00299835205, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.51765537, 2.53595448, -77.6579361, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.160831451, -0.48297143, -1.52587891e-05, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.21765566, 2.53595424, -77.6579361, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.460799217, -0.479694128, 0.00286865234, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.07999992, 0.279999971, 1.06999993),CFrame = CFrame.new(-5.66865063, 3.64553881, -77.6613617, 0.999894857, 0.0109243635, 0.00963268708, -0.0110270083, 0.999883175, 0.0106679257, -0.00951500144, -0.0107729994, 0.999897599),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),C1 = CFrame.new(-0.00235080719, 0.624869347, 0.00694274902, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08999991, 0.0599999577, 1.07999992),CFrame = CFrame.new(-5.66490126, 3.73544312, -77.6652145, 0.999894857, 0.0109243635, 0.00963268708, -0.0110270083, 0.999883175, 0.0106679257, -0.00951500144, -0.0107729994, 0.999897599),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",NeonPart,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),C1 = CFrame.new(0.000443935394, 0.714845657, 0.00408172607, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08999991, 0.0599999577, 1.07999992),CFrame = CFrame.new(-5.66480446, 3.52554965, -77.65522, 0.999894857, 0.0109243635, 0.00963268708, -0.0110270083, 0.999883175, 0.0106679257, -0.00951500144, -0.0107729994, 0.999897599),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",NeonPart,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),C1 = CFrame.new(0.00275993347, 0.504870415, 0.0118331909, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.07999992, 0.279999971, 1.06999993),CFrame = CFrame.new(-5.6686511, 2.55553746, -77.6613541, 0.999894857, 0.0109243635, 0.00963268708, -0.0110270083, 0.999883175, 0.0106679257, -0.00951500144, -0.0107729994, 0.999897599),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),C1 = CFrame.new(0.00966835022, -0.465003252, -0.00468444824, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08999991, 0.0599999577, 1.07999992),CFrame = CFrame.new(-5.66490126, 2.64544272, -77.6652145, 0.999894857, 0.0109243635, 0.00963268708, -0.0110270083, 0.999883175, 0.0106679257, -0.00951500144, -0.0107729994, 0.999897599),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",NeonPart,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),C1 = CFrame.new(0.0124630928, -0.375026226, -0.00754547119, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08999991, 0.0599999577, 1.07999992),CFrame = CFrame.new(-5.66480494, 2.43554902, -77.65522, 0.999894857, 0.0109243635, 0.00963268708, -0.0110270083, 0.999883175, 0.0106679257, -0.00951500144, -0.0107729994, 0.999897599),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",NeonPart,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),C1 = CFrame.new(0.0147790909, -0.585001707, 0.000205993652, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.12999988, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.67265606, 3.62595463, -78.1079407, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(-0.0018901825, 0.61005497, -0.439842224, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.12999988, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.67265606, 3.62595558, -77.8179321, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(-0.00464963913, 0.606931448, -0.149864197, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.66765547, 3.62595606, -77.4879303, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(-0.00278997421, 0.603431463, 0.180152893, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.66765547, 3.62595654, -77.1979294, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(-0.00554895401, 0.600307703, 0.470123291, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.66765547, 2.53595638, -77.1979294, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(0.0064702034, -0.489563704, 0.458496094, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.66765547, 2.53595614, -77.4879303, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(0.00922966003, -0.486439705, 0.168525696, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.12999988, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.67265558, 2.53595638, -77.8179245, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(0.00736999512, -0.482939243, -0.161483765, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.12999988, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.67265606, 2.53595614, -78.1079254, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(0.0101289749, -0.479815245, -0.451454163, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765547, 3.62595677, -77.1979218, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(-0.00554943085, 0.600307941, 0.47013092, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765499, 3.62595701, -77.4879303, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(-0.00278949738, 0.603432655, 0.180152893, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765451, 3.62595749, -77.8179321, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(0.000350952148, 0.606987953, -0.149810791, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765451, 3.62595749, -78.107933, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(0.00311040878, 0.61011219, -0.439788818, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765499, 2.53595734, -78.107933, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(0.0151295662, -0.479759216, -0.451416016, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765499, 2.5359571, -77.8179245, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(0.0123701096, -0.482883692, -0.161437988, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765499, 2.5359571, -77.4879227, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(0.00923013687, -0.48643899, 0.168533325, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765499, 2.53595686, -77.1979218, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(0.00647068024, -0.489563227, 0.458503723, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-6.13765478, 3.62595701, -77.6579132, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(-0.471121788, 0.600129128, 0.00566101074, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.82765484, 3.62595725, -77.6579132, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(-0.161154747, 0.603516102, 0.008644104, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.51765442, 3.62595773, -77.6579132, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.148812771, 0.606903076, 0.0116348267, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.21765375, 3.6259582, -77.6579132, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.44878149, 0.610180855, 0.0145187378, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.21765327, 2.53595781, -77.6579132, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.460801125, -0.47969079, 0.00289154053, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.51765299, 2.53595757, -77.6579208, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.160833359, -0.48296833, 0, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.82765341, 2.53595734, -77.6579208, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(-0.149133682, -0.486355066, -0.00299072266, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-6.13765383, 2.53595734, -77.6579208, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(-0.4591012, -0.489741802, -0.00597381592, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("WedgePart",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(1.14999998, 0.640000045, 0.25000003),CFrame = CFrame.new(-5.66203499, 3.4509573, -77.7865677, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(0.00760126114, 0.431732178, -0.120269775, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("WedgePart",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(1.14999998, 0.640000045, 0.280000031),CFrame = CFrame.new(-5.66203451, 3.45095778, -77.5215683, -1.0000006, -6.18456397e-10, -9.12696123e-08, 6.18456397e-10, 1.0000006, -4.65661287e-09, 8.38190317e-08, 4.65661287e-09, -1.0000006),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 8.74227766e-08, 0, 1, 0, -8.74227766e-08, 0, -1),C1 = CFrame.new(0.00508022308, 0.428877592, 0.144706726, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("WedgePart",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(1.14999998, 0.640000045, 0.25000003),CFrame = CFrame.new(-5.66203403, 2.81095791, -77.7865601, -1.0000006, 8.81700544e-08, 3.7252903e-09, -8.69331416e-08, -1.0000006, 4.65661287e-09, -3.7252903e-09, -4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, -8.74227766e-08, 0, 8.74227766e-08, -1, 0, 0, 0, 1),C1 = CFrame.new(0.0146594048, -0.208191872, -0.127082825, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("WedgePart",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(1.14999998, 0.640000045, 0.280000031),CFrame = CFrame.new(-5.66203356, 2.8209579, -77.5215607, 1.0000006, -8.69331416e-08, 8.38190317e-08, -8.81700544e-08, -1.0000006, -4.65661287e-09, 9.12696123e-08, -4.65661287e-09, -1.0000006),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, -8.74227766e-08, 8.74227766e-08, -8.74227766e-08, -1, -7.64274186e-15, 8.74227766e-08, 0, -1),C1 = CFrame.new(0.0120282173, -0.201047897, 0.137992859, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Wedge = New("WedgePart",Gaunty,"Wedge",{BrickColor = BrickColor.new("Black"),Size = Vector3.new(1.1099999, 0.569999993, 1.13),CFrame = CFrame.new(-5.6508193, 4.06113148, -77.6620178, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Wedge,"mot",{Part0 = Wedge,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.0109024048, 1.04061508, 0.010887146, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})

Gaunty2 = New("Model",char,"Gaunty2",{})
Handle2 = New("Part",Gaunty2,"Handle2",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 1.26999998, 1),CFrame = CFrame.new(-5.67319345, 3.02064276, -77.6615906, 0.999894261, 0.010924357, 0.00963267777, -0.0110270018, 0.999882579, 0.0106679145, -0.00951499958, -0.0107729975, 0.999897003),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Handle2,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.82765579, 3.62595367, -77.6579285, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(-0.161155701, 0.603512764, 0.00862884521, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-6.13765526, 3.62595439, -77.6579285, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(-0.471122265, 0.600126743, 0.00564575195, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.51765394, 3.6259551, -77.6579285, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(0.148813248, 0.606900692, 0.0116195679, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.21765375, 3.62595558, -77.6579285, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(0.44878149, 0.610178471, 0.014503479, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-6.13765621, 2.535954, -77.6579285, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(-0.459103584, -0.489744902, -0.00598144531, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.82765722, 2.535954, -77.6579285, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(-0.149137497, -0.486358404, -0.00299835205, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.5176549, 2.53595448, -77.6579514, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(0.160831928, -0.482971191, -3.05175781e-05, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.21765566, 2.535954, -77.6579361, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(0.460799217, -0.479694366, 0.00286865234, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.07999992, 0.279999971, 1.06999993),CFrame = CFrame.new(-5.66865063, 3.64554, -77.661377, 0.999896049, 0.0109243765, 0.00963270571, -0.0110270213, 0.999884367, 0.010667949, -0.0095150033, -0.0107730031, 0.999898791),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 0.999895453, -0.0110270148, -0.00951500237, 0.01092437, 0.999883771, -0.0107730012, 0.0096326964, 0.0106679378, 0.999898195),C1 = CFrame.new(-0.00235033035, 0.624870777, 0.00692749023, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08999991, 0.0599999577, 1.07999992),CFrame = CFrame.new(-5.6649003, 3.73544407, -77.6652145, 0.999896049, 0.0109243765, 0.00963270571, -0.0110270213, 0.999884367, 0.010667949, -0.0095150033, -0.0107730031, 0.999898791),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",NeonPart,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 0.999895453, -0.0110270148, -0.00951500237, 0.01092437, 0.999883771, -0.0107730012, 0.0096326964, 0.0106679378, 0.999898195),C1 = CFrame.new(0.000444412231, 0.714846611, 0.00408172607, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08999991, 0.0599999577, 1.07999992),CFrame = CFrame.new(-5.66480446, 3.5255506, -77.65522, 0.999896049, 0.0109243765, 0.00963270571, -0.0110270213, 0.999884367, 0.010667949, -0.0095150033, -0.0107730031, 0.999898791),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",NeonPart,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 0.999895453, -0.0110270148, -0.00951500237, 0.01092437, 0.999883771, -0.0107730012, 0.0096326964, 0.0106679378, 0.999898195),C1 = CFrame.new(0.00275993347, 0.504871368, 0.0118331909, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.07999992, 0.279999971, 1.06999993),CFrame = CFrame.new(-5.6686511, 2.55553699, -77.6613541, 0.999896049, 0.0109243765, 0.00963270571, -0.0110270213, 0.999884367, 0.010667949, -0.0095150033, -0.0107730031, 0.999898791),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 0.999895453, -0.0110270148, -0.00951500237, 0.01092437, 0.999883771, -0.0107730012, 0.0096326964, 0.0106679378, 0.999898195),C1 = CFrame.new(0.00966835022, -0.465003729, -0.00468444824, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08999991, 0.0599999577, 1.07999992),CFrame = CFrame.new(-5.66490126, 2.64544272, -77.6652145, 0.999896049, 0.0109243765, 0.00963270571, -0.0110270213, 0.999884367, 0.010667949, -0.0095150033, -0.0107730031, 0.999898791),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",NeonPart,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 0.999895453, -0.0110270148, -0.00951500237, 0.01092437, 0.999883771, -0.0107730012, 0.0096326964, 0.0106679378, 0.999898195),C1 = CFrame.new(0.0124630928, -0.375026226, -0.00754547119, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08999991, 0.0599999577, 1.07999992),CFrame = CFrame.new(-5.66480589, 2.43554854, -77.65522, 0.999896049, 0.0109243765, 0.00963270571, -0.0110270213, 0.999884367, 0.010667949, -0.0095150033, -0.0107730031, 0.999898791),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",NeonPart,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 0.999895453, -0.0110270148, -0.00951500237, 0.01092437, 0.999883771, -0.0107730012, 0.0096326964, 0.0106679378, 0.999898195),C1 = CFrame.new(0.0147781372, -0.585002184, 0.000205993652, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.12999988, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.67265606, 3.62595463, -78.1079407, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(-0.0018901825, 0.61005497, -0.439842224, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.12999988, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.67265511, 3.6259563, -77.8179169, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(-0.00464916229, 0.606932163, -0.149848938, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.66765451, 3.62595701, -77.4879303, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(-0.00278902054, 0.603432655, 0.180152893, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.66765547, 3.62595749, -77.1979294, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(-0.00554895401, 0.600308895, 0.470123291, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.66765547, 2.53595638, -77.1979294, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.0064702034, -0.489563704, 0.458496094, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.66765547, 2.53595614, -77.4879303, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.00922966003, -0.486439705, 0.168525696, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.12999988, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.67265558, 2.53595638, -77.8179092, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.00736999512, -0.482939243, -0.161468506, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.12999988, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.67265606, 2.53595567, -78.1079254, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.0101289749, -0.479815722, -0.451454163, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765451, 3.62595749, -77.1979218, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(-0.00554847717, 0.600308895, 0.47013092, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765404, 3.62595797, -77.4879303, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(-0.0027885437, 0.603433609, 0.180152893, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765356, 3.6259594, -77.8179321, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.000351905823, 0.606989861, -0.149810791, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765356, 3.62595844, -78.107933, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.00311136246, 0.610113144, -0.439788818, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765499, 2.53595734, -78.107933, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.0151295662, -0.479759216, -0.451416016, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765499, 2.5359571, -77.8179092, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.0123701096, -0.48288393, -0.161422729, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765499, 2.5359571, -77.4879227, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.00923013687, -0.48643899, 0.168533325, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765499, 2.53595662, -77.1979218, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.00647068024, -0.489563465, 0.458503723, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-6.13765478, 3.62595797, -77.6579132, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(-0.471121788, 0.600130081, 0.00566101074, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.82765484, 3.6259582, -77.6579132, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(-0.161154747, 0.603517056, 0.008644104, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.51765347, 3.62595868, -77.6579132, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(0.148813725, 0.60690403, 0.0116348267, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.2176528, 3.62595916, -77.6579132, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(0.448782444, 0.610181808, 0.0145187378, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.21765327, 2.53595757, -77.6579132, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(0.460801601, -0.479691029, 0.00289154053, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.51765299, 2.53595757, -77.6579361, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(0.160833836, -0.48296833, -1.52587891e-05, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.82765436, 2.5359571, -77.6579208, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(-0.149134636, -0.486355305, -0.00299072266, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-6.13765478, 2.53595734, -77.6579208, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(-0.459102154, -0.489741802, -0.00597381592, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("WedgePart",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(1.14999998, 0.640000045, 0.25000003),CFrame = CFrame.new(-5.66203403, 3.45095801, -77.7865524, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.00760221481, 0.431732655, -0.120254517, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("WedgePart",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(1.14999998, 0.640000045, 0.280000031),CFrame = CFrame.new(-5.66203356, 3.45095849, -77.521553, -1.00000179, -2.26282282e-09, -9.87201929e-08, 2.28465069e-09, 1.00000179, -1.39698386e-08, 7.63684511e-08, 1.39698386e-08, -1.00000179),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -1.00000119, 1.45519152e-09, 8.00937414e-08, -1.44063961e-09, 1.00000119, 9.31322575e-09, -9.49949026e-08, -9.31322575e-09, -1.00000119),C1 = CFrame.new(0.00508117676, 0.428878307, 0.144721985, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("WedgePart",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(1.14999998, 0.640000045, 0.25000003),CFrame = CFrame.new(-5.66203308, 2.81095791, -77.7865601, -1.00000179, 8.98216967e-08, 1.11758709e-08, -8.52742232e-08, -1.00000179, 1.39698386e-08, -1.11758709e-08, -1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -1.00000119, -8.61036824e-08, -7.4505806e-09, 8.89922376e-08, -1.00000119, -9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.0146603584, -0.208191872, -0.127082825, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
NeonPart = New("WedgePart",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(1.14999998, 0.640000045, 0.280000031),CFrame = CFrame.new(-5.6620326, 2.82095814, -77.5215454, 1.00000179, -8.52887752e-08, 7.63684511e-08, -8.98362487e-08, -1.00000179, -1.39698386e-08, 9.87201929e-08, -1.39698386e-08, -1.00000179),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -8.89995135e-08, 9.49949026e-08, -8.61109584e-08, -1.00000119, -9.31322575e-09, 8.00937414e-08, -9.31322575e-09, -1.00000119),C1 = CFrame.new(0.012029171, -0.201047897, 0.138008118, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
Wedge = New("WedgePart",Gaunty2,"Wedge",{BrickColor = BrickColor.new("Black"),Size = Vector3.new(1.1099999, 0.569999993, 1.13),CFrame = CFrame.new(-5.6508193, 4.06113243, -77.6620178, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Motor",Wedge,"mot",{Part0 = Wedge,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(0.0109024048, 1.04061604, 0.010887146, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})


NewInstance = function(instance,parent,properties)
	local inst = Instance.new(instance,parent)
	if(properties)then
		for i,v in next, properties do
			pcall(function() inst[i] = v end)
		end
	end
	return inst;
end

local HW = NewInstance('Motor', char, {Part0 = ra, Part1 = Handle, C0 = CF(0,-.51,0)})
local HW2 = NewInstance('Motor', char, {Part0 = la, Part1 = Handle2, C0 = CF(0,-.51,0) * angles(Rad(0),Rad(180),Rad(0))})

for _,v in next, Gaunty:children() do
	v.CanCollide = false
end
for _,v in next, Gaunty2:children() do
	v.CanCollide = false
end
local all, last = {}, nil
ArmourParts = {}
NeonParts = {}
function scan(p)
  for _, v in pairs(p:GetChildren()) do
    if v:IsA("BasePart") then
      if v.BrickColor == BrickColor.new("Black") then
        table.insert(ArmourParts, v)
      end
      if v.BrickColor == BrickColor.new("Institutional white") then
        table.insert(NeonParts, v)
      end
      if last then
        local w = Instance.new("Weld")
        w.Part0, w.Part1 = last, v
        w.C0 = v.CFrame:toObjectSpace(last.CFrame):inverse()
        w.Parent = last
      end
      table.insert(all, v)
      last = v
    end
    scan(v)
  end
end
scan(Gaunty)
local all2, last2 = {}, nil
ArmourParts2 = {}
NeonParts2 = {}
function scan2(p)
  for _, v in pairs(p:GetChildren()) do
    if v:IsA("BasePart") then
      if v.BrickColor == BrickColor.new("Black") then
        table.insert(ArmourParts2, v)
      end
      if v.BrickColor == BrickColor.new("Institutional white") then
        table.insert(NeonParts2, v)
      end
      if last2 then
        local w = Instance.new("Weld")
        w.Part0, w.Part1 = last2, v
        w.C0 = v.CFrame:toObjectSpace(last2.CFrame):inverse()
        w.Parent = last2
      end
      table.insert(all2, v)
      last2 = v
    end
    scan2(v)
  end
end
scan2(Gaunty2)
for i, v in pairs(ArmourParts) do
     v.BrickColor = BrickC("Black")
		end
for i, v in pairs(NeonParts) do
     v.BrickColor = BrickC("Really red")
      	end
for i, v in pairs(ArmourParts2) do
     v.BrickColor = BrickC("Black")
		end
for i, v in pairs(NeonParts2) do
     v.BrickColor = BrickC("Really red")
      	end
maincolor = BrickC("Really red")
-------------------------------------------------------
--Start Music Option--
-------------------------------------------------------
local Music = Instance.new("Sound",char)
Music.Volume = 2.5
Music.SoundId = "rbxassetid://550578451"
Music.Looped = true
Music.Pitch = 1 --Pitcher
Music:Play()
-------------------------------------------------------
--End Music Option--
-------------------------------------------------------
local naeeym2 = Instance.new("BillboardGui",char)
naeeym2.AlwaysOnTop = true
naeeym2.Size = UDim2.new(5,35,2,35)
naeeym2.StudsOffset = Vector3.new(0,2,0)
naeeym2.Adornee = hed
naeeym2.Name = "Name"

local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.TextScaled = true
tecks2.BorderSizePixel = 0
tecks2.Text = "Ender"
tecks2.Font = "Garamond"
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(0,0,0)
tecks2.TextStrokeColor3 = Color3.new(0, 0, 0)
tecks2.Size = UDim2.new(1,0,0.5,0)
tecks2.Parent = naeeym2

function chatfunc(text, color)
	local chat = coroutine.wrap(function()
		if char:FindFirstChild("TalkingBillBoard") ~= nil then
			char:FindFirstChild("TalkingBillBoard"):destroy()
		end
		local naeeym2 = Instance.new("BillboardGui", char)
		naeeym2.Size = UDim2.new(0, 100, 0, 40)
		naeeym2.StudsOffset = Vector3.new(0, 5, 0)
		naeeym2.Adornee = hed
		naeeym2.Name = "TalkingBillBoard"
		local tecks2 = Instance.new("TextLabel", naeeym2)
		tecks2.BackgroundTransparency = 1
		tecks2.BorderSizePixel = 0
		tecks2.Text = ""
		tecks2.Font = "SciFi"
		tecks2.TextSize = 30
		tecks2.TextStrokeTransparency = 0
		tecks2.TextColor3 = color
		tecks2.TextStrokeColor3 = Color3.new(0, 0, 0)
		tecks2.Size = UDim2.new(1, 0, 0.5, 0)
		local tecks3 = Instance.new("TextLabel", naeeym2)
		tecks3.BackgroundTransparency = 1
		tecks3.BorderSizePixel = 0
		tecks3.Text = ""
		tecks3.Font = "SciFi"
		tecks3.TextSize = 30
		tecks3.TextStrokeTransparency = 0
		tecks3.TextColor3 = Color3.new(0, 0, 0)
		tecks3.TextStrokeColor3 = color
		tecks3.Size = UDim2.new(1, 0, 0.5, 0)
		coroutine.resume(coroutine.create(function()
			while true do
				swait(1)
					tecks2.TextColor3 = BrickColor.random().Color
					tecks3.TextStrokeColor3 = BrickColor.random().Color
				tecks2.Position = UDim2.new(0, math.random(-5, 5), 0, math.random(-5, 5))
				tecks3.Position = UDim2.new(0, math.random(-5, 5), 0, math.random(-5, 5))
				tecks2.Rotation = math.random(-5, 5)
				tecks3.Rotation = math.random(-5, 5)
			end
		end))
		for i = 1, string.len(text) do
			CFuncs.Sound.Create("rbxassetid://274118116", char, 0.25, 0.115)
			tecks2.Text = string.sub(text, 1, i)
			tecks3.Text = string.sub(text, 1, i)
			swait(1)
		end
		wait(1)
		local randomrot = math.random(1, 2)
		if randomrot == 1 then
			for i = 1, 50 do
				swait()
				tecks2.Rotation = tecks2.Rotation - 0.75
				tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency + 0.04
				tecks2.TextTransparency = tecks2.TextTransparency + 0.04
				tecks3.Rotation = tecks2.Rotation + 0.75
				tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency + 0.04
				tecks3.TextTransparency = tecks2.TextTransparency + 0.04
			end
		elseif randomrot == 2 then
			for i = 1, 50 do
				swait()
				tecks2.Rotation = tecks2.Rotation + 0.75
				tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency + 0.04
				tecks2.TextTransparency = tecks2.TextTransparency + 0.04
				tecks3.Rotation = tecks2.Rotation - 0.75
				tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency + 0.04
				tecks3.TextTransparency = tecks2.TextTransparency + 0.04
			end
		end
		naeeym2:Destroy()
	end)
	chat()
end
-------------------------------------------------------
--Start Attacks N Stuff--
-------------------------------------------------------
local sine=0
function HitboxFunction(Pose, lifetime, siz1, siz2, siz3, Radie, Min, Max, kb, atype)
  local Hitboxpart = Instance.new("Part", EffectModel)
  RemoveOutlines(Hitboxpart)
  Hitboxpart.Size = Vector3.new(siz1, siz2, siz3)
  Hitboxpart.CanCollide = false
  Hitboxpart.Transparency = 1
  Hitboxpart.Anchored = true
  Hitboxpart.CFrame = Pose
  game:GetService("Debris"):AddItem(Hitboxpart, lifetime)
  MagniDamage(Hitboxpart, Radie, Min, Max, kb, atype)
end
wait2 = false
combo = 1
mouse.Button1Down:connect(function(key)
  if attack == false then
    attack = true
    hum.WalkSpeed = 3.01
    if combo == 1 and wait2 == false then
      wait2 = true
		for i = 0, 1.2, 0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, -0.5, 0) * angles(math.rad(-5), math.rad(0), math.rad(-65)), 0.3)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(-65)), 0.1)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.8) * angles(math.rad(90), math.rad(0), math.rad(20)), 0.1)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-25), math.rad(0), math.rad(40)), 0.3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -0.2) * RHCF * angles(math.rad(-2.5), math.rad(0), math.rad(-0)), 0.3)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * angles(math.rad(-2.5), math.rad(15), math.rad(-20)), 0.3)
		  end
		CreateSound("138097048", ra, 3, .8)
		HitboxFunction(ra.CFrame, 0.01, 1, 1, 1, 7, 6, 9, 3, "Normal")
      for i = 0, 1.2, 0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, -0.5, 0) * angles(math.rad(5), math.rad(0), math.rad(55)), 0.3)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.1)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.8) * angles(math.rad(95), math.rad(0), math.rad(40)), 0.1)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-25), math.rad(0), math.rad(-10)), 0.3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * angles(math.rad(-2.5), math.rad(-25), math.rad(-17)), 0.3)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * angles(math.rad(-2.5), math.rad(-0), math.rad(0)), 0.3)
      end
      combo = 2
    end
 	if combo == 2 and wait2 == false then
      wait2 = true
   for i = 0, 1.2, 0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, -0.5, 0) * angles(math.rad(-5), math.rad(0), math.rad(65)), 0.3)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(65)), 0.1)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.8) * angles(math.rad(-25), math.rad(0), math.rad(40)), 0.1)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(20)), 0.3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -0.2) * RHCF * angles(math.rad(-2.5), math.rad(0), math.rad(-0)), 0.3)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * angles(math.rad(-2.5), math.rad(15), math.rad(-20)), 0.3)
		  end
		CreateSound("138097048", ra, 3, .8)
		HitboxFunction(ra.CFrame, 0.01, 1, 1, 1, 7, 6, 9, 3, "Normal")
      for i = 0, 1.2, 0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, -0.5, 0) * angles(math.rad(5), math.rad(0), math.rad(-55)), 0.3)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.1)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-25), math.rad(0), math.rad(10)), 0.1)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.8) * angles(math.rad(95), math.rad(0), math.rad(-40)), 0.3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * angles(math.rad(-2.5), math.rad(-25), math.rad(-17)), 0.3)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * angles(math.rad(-2.5), math.rad(-0), math.rad(0)), 0.3)
      end
      combo = 3
    end
   if combo == 3 and wait2 == false then
	wait2 = true
    for i = 0, 1.2, 0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, -0.5, 0) * angles(math.rad(-5), math.rad(0), math.rad(-35)), 0.3)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.1)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.8) * angles(math.rad(90), math.rad(0), math.rad(20)), 0.1)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-25), math.rad(0), math.rad(-10)), 0.3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -0.2) * RHCF * angles(math.rad(-2.5), math.rad(0), math.rad(-0)), 0.3)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * angles(math.rad(-2.5), math.rad(15), math.rad(-20)), 0.3)
      end
	CreateSound("138097048", ra, 3, .8)
      HitboxFunction(ra.CFrame, 0.01, 1, 1, 1, 7, 24, 36, 3, "Normal")
      for i = 0, 1.2, 0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, -0.5, 0) * angles(math.rad(5), math.rad(0), math.rad(35)), 0.3)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.1)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.8) * angles(math.rad(96), math.rad(0), math.rad(10)), 0.1)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-25), math.rad(0), math.rad(-10)), 0.3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * angles(math.rad(-2.5), math.rad(-25), math.rad(-0)), 0.3)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * angles(math.rad(-2.5), math.rad(-0), math.rad(0)), 0.3)
      end
		Effects.Sphere.Create(maincolor, ra.CFrame * CFrame.new(0,-2,0) , 85, 85, 85, 1.1, 1.1, 1.1, 0.02)
		Effects.Ring.Create(maincolor, ra.CFrame * CFrame.new(0,-2,0) , 2, 2, 2, 1.1, 1.1, 1.1, 0.03)
		for i = 0, 2 do
			SphereAura(2, 0.2, "Add", ra.CFrame * CFrame.Angles(math.rad(-90 + math.random(-20, 20)), math.rad(math.random(-20, 20)), math.rad(math.random(-20, 20))), 0.5, 0.5, 5, -0.005, maincolor, 0)
			end
		coroutine.resume(coroutine.create(function() 
		for i = 0,1.8,0.1 do
			swait()
			hum.CameraOffset = Vector3.new(Mrandom(-1,1),0,Mrandom(-1,1))
		end
		for i = 0,1.8,0.1 do
			swait()
		hum.CameraOffset = Vector3.new(0,0,0)
		end
	  end))
		HitboxFunction(ra.CFrame, 0.01, 1, 1, 1, 7, 24, 36, 3, "Normal")
	for i = 0, 1.2, 0.1 do
        swait()
        rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, -0.5, 0) * angles(math.rad(5), math.rad(0), math.rad(-35)), 0.3)
        tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.1)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.8) * angles(math.rad(25), math.rad(0), math.rad(10)), 0.1)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-25), math.rad(0), math.rad(-10)), 0.3)
        RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * angles(math.rad(-2.5), math.rad(-25), math.rad(-0)), 0.3)
        LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * angles(math.rad(-2.5), math.rad(-0), math.rad(0)), 0.3)
      end
      combo = 4
    end
	if combo == 4 and wait2 == false then
	for i = 0,1.2,0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-20), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-20)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(25)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(200), Rad(0), Rad(25 - 2.5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(200), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.1)
	end
SphereAura(6, 0.3, "Add", root.CFrame * CF(0,-2,0) * angles(Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360))), 0.5, 0.5, 5, -0.005, maincolor, 0)
		SphereAura(6, 0.3, "Add", root.CFrame * CF(0,-2,0) * angles(Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360))), 0.5, 0.5, 5, -0.005, maincolor, 0)
        Effects.Sphere.Create(maincolor, root.CFrame * CFrame.new(0,-2,0) , 85, 85, 85, 15.1, 15.1, 15.1, 0.01)
	CreateSound("331666100", char, 10, 1)
        for i, v in pairs(FindNearestHead(tors.CFrame.p, 14.5)) do
		if v:FindFirstChild("Head") then
			SoulSteal(v)
			Eviscerate(v)
		end
	end
	coroutine.resume(coroutine.create(function() 
		for i = 0,1.8,0.1 do
			swait()
			hum.CameraOffset = Vector3.new(Mrandom(-1,1),0,Mrandom(-1,1))
		end
		for i = 0,1.8,0.1 do
			swait()
		hum.CameraOffset = Vector3.new(0,0,0)
		end
	  end))
	for i = 1,4.7,0.1 do
	rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -1.4 + 0.1 * Cos(sine / 20)) * angles(Rad(45), Rad(0), Rad(0)), 0.15)
	tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(35), Rad(0), Rad(0)), 0.3)
	RH.C0 = clerp(RH.C0, CF(1, .4 - 0.1 * Cos(sine / 20), -.6 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-5), Rad(0), Rad(45)), 0.15)
	LH.C0 = clerp(LH.C0, CF(-1, -0.6 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-5), Rad(0), Rad(-0)), 0.15)
	RW.C0 = clerp(RW.C0, CF(1.2, 0.1 + 0.05 * Sin(sine / 30), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(65), Rad(0), Rad(-34)), 0.1)
	LW.C0 = clerp(LW.C0, CF(-1.2, 0.1 + 0.05 * Sin(sine / 30), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(65), Rad(0), Rad(34)), 0.1)
	end
      wait(.6)
	combo = 1
	end
    hum.WalkSpeed = 16
    wait2 = false
    attack = false
	end
end)
function Destruction()
	attack = true
	local Ring1 = Instance.new("Part", char)
	Ring1.Anchored = true
	Ring1.BrickColor = maincolor
	Ring1.CanCollide = false
	Ring1.FormFactor = 3
	Ring1.Name = "Ring"
	Ring1.Material = "Neon"
	Ring1.Size = Vector3.new(1, 0.05, 1)
	Ring1.Transparency = 1
	Ring1.TopSurface = 0
	Ring1.BottomSurface = 0
	local Ring1Mesh = Instance.new("SpecialMesh", Ring1)
	Ring1Mesh.MeshType = "Brick"
	Ring1Mesh.Name = "SizeMesh"
	Ring1Mesh.Scale = Vector3.new(0, 1, 0)
	local InnerRing1 = Ring1:Clone()
	InnerRing1.Parent = char
	InnerRing1.Transparency = 0
	InnerRing1.BrickColor = BrickColor.new("New Yeller")
	InnerRing1.Size = Vector3.new(1, 1, 1)
	local InnerRing1Mesh = InnerRing1.SizeMesh
	InnerRing1Mesh.Scale = Vector3.new(0, 0, 0)
	InnerRing1Mesh.MeshType = "Sphere"
	Ring1:Destroy()
	for i = 0, 5, 0.1 do
		swait()
		SphereAura(7, 0.12, "Add", ra.CFrame * CF(0,-2,0) * angles(Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360))), 0.5, 0.5, 5, -0.005, maincolor, 0)
		SphereAura(7, 0.12, "Add", ra.CFrame * CF(0,-2,0) * angles(Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360))), 0.5, 0.5, 5, -0.005, BrickC("Institutional white"), 0)
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(5), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-4.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-12.5 + 3 * Sin(sine / 20)), Rad(0), Rad(0 + 2.5 * Sin(sine / 20))), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5 + 3 * Sin(sine / 20)), Rad(0), Rad(0 + 2.5 * Sin(sine / 20))), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.1, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(-25)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.1, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(25)), 0.1)
		root.CFrame = FaceMouse()[1]
	end
	InnerRing1.Transparency = 1
	InnerRing1.CFrame = root.CFrame * CF(0, 0.5, 0) + root.CFrame.lookVector * 5
	CreateSound("294188875", char, 2.3, 1)
	local a = IT("Part", char)
	a.Name = "Direction"
	a.Anchored = true
	a.BrickColor = maincolor
	a.Material = "Neon"
	a.Transparency = 0
	a.Shape = "Cylinder"
	a.CanCollide = false
	local a2 = IT("Part", char)
	a2.Name = "Direction"
	a2.Anchored = true
	a2.BrickColor = maincolor
	a2.Color = maincolor.Color
	a2.Material = "Neon"
	a2.Transparency = 0.5
	a2.Shape = "Cylinder"
	a2.CanCollide = false
	local ba = IT("Part", char)
	ba.Name = "HitDirect"
	ba.Anchored = true
	ba.BrickColor = maincolor
	ba.Material = "Neon"
	ba.Transparency = 1
	ba.CanCollide = false
	local ray = Ray.new(InnerRing1.CFrame.p, (mouse.Hit.p - InnerRing1.CFrame.p).unit * 1000)
	local ignore = char
	local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
	a.BottomSurface = 10
	a.TopSurface = 10
	a2.BottomSurface = 10
	a2.TopSurface = 10
	local distance = (InnerRing1.CFrame.p - position).magnitude
	a.Size = Vector3.new(distance, 1, 1)
	a.CFrame = CF(InnerRing1.CFrame.p, position) * CF(0, 0, -distance / 2)
	a2.Size = Vector3.new(distance, 1, 1)
	a2.CFrame = CF(InnerRing1.CFrame.p, position) * CF(0, 0, -distance / 2)
	ba.CFrame = CF(InnerRing1.CFrame.p, position) * CF(0, 0, -distance)
	a.CFrame = a.CFrame * angles(0, Rad(90), 0)
	a2.CFrame = a2.CFrame * angles(0, Rad(90), 0)
	game:GetService("Debris"):AddItem(a, 20)
	game:GetService("Debris"):AddItem(a2, 20)
	game:GetService("Debris"):AddItem(ba, 20)
	local msh = Instance.new("SpecialMesh", a)
	msh.MeshType = "Sphere"
	msh.Scale = Vector3.new(1, 25, 25)
	local msh2 = Instance.new("SpecialMesh", a2)
	msh2.MeshType = "Sphere"
	msh2.Scale = Vector3.new(1, 30, 30)
	for i = 0, 10, 0.1 do
		swait()
		root.CFrame = FaceMouse()[1]
		hum.CameraOffset = Vector3.new(Mrandom(-1,1),0,Mrandom(-1,1))
		a2.Color = maincolor.Color
		InnerRing1.CFrame = root.CFrame * CF(0, 0.5, 0) + root.CFrame.lookVector * 4
		ray = Ray.new(InnerRing1.CFrame.p, (mouse.Hit.p - InnerRing1.CFrame.p).unit * 1000)
		hit, position, normal = workspace:FindPartOnRay(ray, ignore)
		distance = (InnerRing1.CFrame.p - position).magnitude
		a.Size = Vector3.new(distance, 1, 1)
		a.CFrame = CF(InnerRing1.CFrame.p, position) * CF(0, 0, -distance / 2)
		a2.Size = Vector3.new(distance, 1, 1)
		a2.CFrame = CF(InnerRing1.CFrame.p, position) * CF(0, 0, -distance / 2)
		ba.CFrame = CF(InnerRing1.CFrame.p, position) * CF(0, 0, -distance)
		a.CFrame = a.CFrame * angles(0, Rad(90), 0)
		a2.CFrame = a2.CFrame * angles(0, Rad(90), 0)
		msh.Scale = msh.Scale - Vector3.new(0, 0.25, 0.25)
		msh2.Scale = msh2.Scale - Vector3.new(0, 0.3, 0.3)
		SphereAura(5, 0.15, "Add", ba.CFrame * angles(Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360))), 15, 15, 25, -0.15, maincolor, 0)
		SphereAura(5, 0.15, "Add", ba.CFrame * angles(Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360))), 15, 15, 25, -0.15, maincolor, 0)
		for i, v in pairs(FindNearestHead(ba.CFrame.p, 14.5)) do
		if v:FindFirstChild("Head") then
			Eviscerate(v)
			SoulSteal(v)
		end
	end
	end
	a:Destroy()
	a2:Destroy()
	ba:Destroy()
	InnerRing1:Destroy()
	attack = false
	hum.CameraOffset = Vector3.new(0,0,0)
end
function BURN_IN_HELL()
	attack = true
	chatfunc("BURN....", BrickColor.random().Color)
	for i = 0,5.2,0.1 do
		swait()
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-20), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-20)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.3 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(25)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(135), Rad(0), Rad(-45 - 2.5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(135), Rad(0), Rad(45 + 2.5 * Sin(sine / 20))), 0.1)
	end	
	chatfunc("IN....", BrickColor.random().Color)
	wait(2)
	CreateSound("331666100", char, 10, 1)
	Effects.Sphere.Create(BrickColor.Random(), root.CFrame * CF(0, -1, 0), 2, 2, 2, 10.6, 10.6, 10.6, 0.05)
	Effects.Sphere.Create(BrickColor.Random(), root.CFrame * CF(0, -1, 0), 2, 2, 2, 10.6, 10.6, 10.6, 0.05)
	Effects.Sphere.Create(BrickColor.Random(), root.CFrame * CF(0, -1, 0), 2, 2, 2, 10.6, 10.6, 10.6, 0.05)
	Effects.Sphere.Create(BrickColor.Random(), root.CFrame * CF(0, -1, 0), 2, 2, 2, 10.6, 10.6, 10.6, 0.05)
	Effects.Sphere.Create(BrickColor.Random(), root.CFrame * CF(0, -1, 0), 2, 2, 2, 10.6, 35.6, 10.6, 0.05)
	Effects.Sphere.Create(BrickColor.Random(), root.CFrame * CF(0, -3, 0), 2, 2, 2, 150.6, .4, 150.6, 0.05)
	chatfunc("HELL!!!!!", BrickColor.random().Color)
	for i, v in pairs(FindNearestHead(tors.CFrame.p, 52.5)) do
		if v:FindFirstChild("Head") then
			Eviscerate(v)
			SoulSteal(v)
		end
	end
	coroutine.resume(coroutine.create(function() 
		for i = 0,2.8,0.1 do
			swait()
			hum.CameraOffset = Vector3.new(Mrandom(-3,3),Mrandom(-3,3),Mrandom(-3,3))
		end
		for i = 0,1.8,0.1 do
			swait()
		hum.CameraOffset = Vector3.new(0,0,0)
		end
	end))
	for i = 0,3.7,0.1 do
		SphereAura(2.5, 0.75, "Add", root.CFrame * CFrame.new(math.random(-52.5, 52.5), -5, math.random(-52.5, 52.5)) * CFrame.Angles(math.rad(90 + math.rad(math.random(-45, 45))), math.rad(math.random(-45, 45)), math.rad(math.random(-45, 45))), 2.5, 2.5, 25, -0.025, BrickColor.random(), 0)
		SphereAura(2.5, 0.75, "Add", root.CFrame * CFrame.new(math.random(-52.5, 52.5), -5, math.random(-52.5, 52.5)) * CFrame.Angles(math.rad(90 + math.rad(math.random(-45, 45))), math.rad(math.random(-45, 45)), math.rad(math.random(-45, 45))), 2.5, 2.5, 25, -0.025, BrickColor.random(), 0)
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(20), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(20)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(-25)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(-40), Rad(0), Rad(25 - 2.5 * Sin(sine / 20))), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(-40), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.1)
	end
	wait(.6)
	CreateSound("907332997", hed, 10, 1)
	attack = false
end
-------------------------------------------------------
--End Attacks N Stuff--
-------------------------------------------------------
mouse.KeyDown:connect(function(key)
	if attack == false then
		if key == 'f' then
		Destruction()
		elseif key == 'r' then
			BURN_IN_HELL()
		elseif key == 't' then
			chatfunc("HM, HM, HAHAHAHAHAHA", BrickColor.random().Color)
			CreateSound("300208779", hed, 10, 1)
		end
	end
end)






-------------------------------------------------------
--Start Animations--
-------------------------------------------------------
local equipped = false
local idle = 0
local change = 1
local val = 0
local toim = 0
local idleanim = 0.4
hum.Animator.Parent = nil
while true do
	swait()
for i, v in pairs(NeonParts) do
     v.BrickColor = BrickColor.Random()
      	end
for i, v in pairs(NeonParts2) do
     v.BrickColor = BrickColor.Random()
      	end
maincolor = BrickColor.Random()
Music.Parent = char
tecks2.TextStrokeColor3 = maincolor.Color
	sine = sine + change
	local torvel = (root.Velocity * Vector3.new(1, 0, 1)).magnitude
	local velderp = root.Velocity.y
	hitfloor, posfloor = rayCast(root.Position, CFrame.new(root.Position, root.Position - Vector3.new(0, 1, 0)).lookVector, 4, char)
	if equipped == true or equipped == false then
		if attack == false then
			idle = idle + 1
		else
			idle = 0
		end
		if 1 < root.Velocity.y and hitfloor == nil then
			Anim = "Jump"
			if attack == false then
				rootj.C0 = clerp(rootj.C0, RootCF * angles(math.min(math.max(root.Velocity.Y/100,-Rad(65)),Rad(65)),0,0),0.3)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-10), Rad(0), Rad(0)), 0.3)
				RW.C0 = clerp(RW.C0, CF(1.5, 0.5, 0) * angles(math.min(math.max(root.Velocity.Y/100,-Rad(65)),Rad(65)),0,Rad(15)),0.3)
				LW.C0 = clerp(LW.C0, CF(-1.5, 0.5, 0) * angles(math.min(math.max(root.Velocity.Y/100,-Rad(65)),Rad(65)),0,Rad(-15)),0.3)
				LH.C0=clerp(LH.C0, CF(-1,-.4-0.1 * Cos(sine / 20), -.6) * LHCF * angles(Rad(-5), Rad(-0), Rad(20)), 0.15)
				RH.C0=clerp(RH.C0, CF(1,-1-0.1 * Cos(sine / 20), -.3) * angles(Rad(0), Rad(90), Rad(0)), .3)
			end
		elseif -1 > root.Velocity.y and hitfloor == nil then
			Anim = "Fall"
			if attack == false then
				rootj.C0 = clerp(rootj.C0, RootCF * angles(math.min(math.max(root.Velocity.Y/100,-Rad(65)),Rad(65)),0,0),0.3)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(10), Rad(0), Rad(0)), 0.3)
				RW.C0 = clerp(RW.C0, CF(1.5, 0.5, 0) * angles(math.min(math.max(root.Velocity.Y/100,-Rad(65)),Rad(65)),0,Rad(30)),0.3)
				LW.C0 = clerp(LW.C0, CF(-1.5, 0.5, 0) * angles(math.min(math.max(root.Velocity.Y/100,-Rad(65)),Rad(65)),0,Rad(-30)),0.3)
				LH.C0 = clerp(LH.C0, CF(-1,-.4-0.1 * Cos(sine / 20), -.6) * LHCF * angles(Rad(-5), Rad(-0), Rad(20)), 0.15)
				RH.C0 = clerp(RH.C0, CF(1,-1-0.1 * Cos(sine / 20), -.3) * angles(Rad(0), Rad(90), Rad(0)), .3)
			end
		elseif torvel < 1 and hitfloor ~= nil then
			Anim = "Idle"
			change = 1.9
			if attack == false then
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(30), Rad(0), Rad(0)), 0.15)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(35 - 2.5 * Sin(sine / 20)), Rad(-5 * Cos(sine / 0.465)), Rad(-5 * Cos(sine / 0.465))), 0.3)
				RH.C0 = clerp(RH.C0, CF(1, -1 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-7.5), Rad(0), Rad(30)), 0.15)
				LH.C0 = clerp(LH.C0, CF(-1, -1 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-7.5), Rad(0), Rad(-30)), 0.15)
				RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(35 - 5 * Cos(sine / 0.465)), Rad(-5 * Cos(sine / 0.465)), Rad(15 + 7 * Sin(sine / 25))), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(35 - 5 * Cos(sine / 0.465)), Rad(-5 * Cos(sine / 0.465)), Rad(-15 - 7 * Sin(sine / 25))), 0.1)
			end
		elseif tors.Velocity.magnitude < 50 and hitfloor ~= nil then
			Anim = "Walk"
			change = 1
			if attack == false then
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.175 + 0.025 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7) * angles(Rad(15 - 2.5 * Cos(sine / 3.5)), Rad(0) - root.RotVelocity.Y / 75, Rad(4 * Cos(sine / 7))), 0.15)
				tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(13 - 2.5 * Sin(sine / 7)), Rad(-5 * Cos(sine / 0.465)), Rad(-5 * Cos(sine / 0.465))), 0.3)
				RH.C0 = clerp(RH.C0, CF(1, -0.925 - 0.5 * Cos(sine / 7) / 2, 0.5 * Cos(sine / 7) / 2) * angles(Rad(-15 - 5 * Cos(sine / 7)) - rl.RotVelocity.Y / 75 + -Sin(sine / 7) / 2.5, Rad(90 - 0.1 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 + 0.1 * Cos(sine / 7)), Rad(0), Rad(15)), 0.3)
         		LH.C0 = clerp(LH.C0, CF(-1, -0.925 + 0.5 * Cos(sine / 7) / 2, -0.5 * Cos(sine / 7) / 2) * angles(Rad(-15 + 5 * Cos(sine / 7)) + ll.RotVelocity.Y / 75 + Sin(sine / 7) / 2.5, Rad(-90 - 0.1 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 - 0.1 * Cos(sine / 7)), Rad(0), Rad(-15)), 0.3)
				RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 7), 0.025 * Cos(sine / 7)) * angles(Rad(65)  * Cos(sine / 7) , Rad(0), Rad(10 + 7 * Sin(sine / 7)) - ra.RotVelocity.Y / 75), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 7), 0.025 * Cos(sine / 7)) * angles(Rad(-65)  * Cos(sine / 7) , Rad(0), Rad(-10 - 7 * Sin(sine / 7)) + la.RotVelocity.Y / 75), 0.1)
			end
		end
	end
	if 0 < #Effects then
		for e = 1, #Effects do
			if Effects[e] ~= nil then
				local Thing = Effects[e]
				if Thing ~= nil then
					local Part = Thing[1]
					local Mode = Thing[2]
					local Delay = Thing[3]
					local IncX = Thing[4]
					local IncY = Thing[5]
					local IncZ = Thing[6]
					if 1 >= Thing[1].Transparency then
						if Thing[2] == "Block1" then
							Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							local Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block2" then
							Thing[1].CFrame = Thing[1].CFrame + Vector3.new(0, 0, 0)
							local Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block3" then
							Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) + Vector3.new(0, 0.15, 0)
							local Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Cylinder" then
							local Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Blood" then
							local Mesh = Thing[7]
							Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, 0.5, 0)
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Elec" then
							local Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Disappear" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Shatter" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
							Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
							Thing[6] = Thing[6] + Thing[5]
						end
					else
						Part.Parent = nil
						table.remove(Effects, e)
					end
				end
			end
		end
	end
end
-------------------------------------------------------
--End Animations And Script--
-------------------------------------------------------