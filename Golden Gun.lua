--[[Nocturna_A._Alteriano_Night.Owl.Inc]]--
wait(1 / 60)
Effects = { }
local Player = game.Players.localPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local m = Instance.new('Model', Character)
m.Name = "WeaponModel"
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local Torso = Character.Torso
local cam = game.Workspace.CurrentCamera
local RootPart = Character.HumanoidRootPart
local RootJoint = RootPart.RootJoint
local equipped = false
local attack = false
local Anim = 'Idle'
local idle = 0
local attacktype = 1
local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local grabbed = false
local cn = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new

Humanoid.Animator.Parent = nil
Character.Animate.Parent = nil

local newMotor = function(part0, part1, c0, c1)
	local w = Instance.new('Motor', part0)
	w.Part0 = part0
	w.Part1 = part1
	w.C0 = c0
	w.C1 = c1
	return w
end

function clerp(a, b, t)
	return a:lerp(b, t)
end

RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
NeckCF = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)

local RW = newMotor(Torso, RightArm, CFrame.new(1.5, 0, 0), CFrame.new(0, 0, 0)) 
local LW = newMotor(Torso, LeftArm, CFrame.new(-1.5, 0, 0), CFrame.new(0, 0, 0))
local RH = newMotor(Torso, RightLeg, CFrame.new(.5, -2, 0), CFrame.new(0, 0, 0))
local LH = newMotor(Torso, LeftLeg, CFrame.new(-.5, -2, 0), CFrame.new(0, 0, 0))
RootJoint.C1 = CFrame.new(0, 0, 0)
RootJoint.C0 = CFrame.new(0, 0, 0)
Torso.Neck.C1 = CFrame.new(0, 0, 0)
Torso.Neck.C0 = CFrame.new(0, 1.5, 0)

local rarmc1 = RW.C1
local larmc1 = LW.C1
local rlegc1 = RH.C1
local llegc1 = LH.C1

local resetc1 = false

function PlayAnimationFromTable(table, speed, bool)
	RootJoint.C0 = clerp(RootJoint.C0, table[1], speed) 
	Torso.Neck.C0 = clerp(Torso.Neck.C0, table[2], speed) 
	RW.C0 = clerp(RW.C0, table[3], speed) 
	LW.C0 = clerp(LW.C0, table[4], speed) 
	RH.C0 = clerp(RH.C0, table[5], speed) 
	LH.C0 = clerp(LH.C0, table[6], speed) 
	if bool == true then
		if resetc1 == false then
			resetc1 = true
			RootJoint.C1 = RootJoint.C1
			Torso.Neck.C1 = Torso.Neck.C1
			RW.C1 = rarmc1
			LW.C1 = larmc1
			RH.C1 = rlegc1
			LH.C1 = llegc1
		end
	end
end

--[[Credits to SazErenos for his Artificial Heartbeat]]--

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1 / 30
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

function swait(num)
	if num == 0 or num == nil then
		ArtificialHB.Event:wait()
	else
		for i = 0, num do
			ArtificialHB.Event:wait()
		end
	end
end

local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
CFuncs = {	
	["Part"] = {
		Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
			local Part = Create("Part"){
				Parent = Parent,
				Reflectance = Reflectance,
				Transparency = Transparency,
				CanCollide = false,
				Locked = true,
				BrickColor = BrickColor.new(tostring(BColor)),
				Name = Name,
				Size = Size,
				Material = Material,
			}
			RemoveOutlines(Part)
			return Part
		end;
	};
	
	["Mesh"] = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh){
				Parent = Part,
				Offset = OffSet,
				Scale = Scale,
			}
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end;
	};
	
	["Mesh"] = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh){
				Parent = Part,
				Offset = OffSet,
				Scale = Scale,
			}
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end;
	};
	
	["Weld"] = {
		Create = function(Parent, Part0, Part1, C0, C1)
			local Weld = Create("Weld"){
				Parent = Parent,
				Part0 = Part0,
				Part1 = Part1,
				C0 = C0,
				C1 = C1,
			}
			return Weld
		end;
	};

	["Sound"] = {
		Create = function(id, par, vol, pit) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound"){
					Volume = vol,
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace,
				}
				Instance.new("DistortionSoundEffect", S).Level = 1
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 10)
			end))
		end;
	};
	
	["ParticleEmitter"] = {
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			local fp = Create("ParticleEmitter"){
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
				VelocitySpread = VelocitySpread,
			}
			return fp
		end;
	};
}

function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore) 
end 

local function GetNearest(obj, distance)
	local last, lastx = distance + 1
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA'Model' and v ~= Character and v:findFirstChild('Humanoid') and v:findFirstChild('Torso') and v:findFirstChild('Humanoid').Health > 0 then
			local t = v.Torso
			local dist = (t.Position - obj.Position).magnitude
			if dist <= distance then
				if dist < last then
					last = dist
					lastx = v
				end
			end
		end
	end
	return lastx
end

--[[ Credits to Kert109 (Ninja_Deer) for the Damage function. Fenrier for the Magnitude Damage ]]--

function Damage(hit, damage, cooldown, Color1, Color2, HSound, HPitch)
	for i, v in pairs(hit:GetChildren()) do 
		if v:IsA("Humanoid") and hit.Name ~= Character.Name then
			local find = v:FindFirstChild("DebounceHit")
			if not find then
				if v.Parent:findFirstChild("Head") then
					local BillG = Create("BillboardGui"){
						Parent = v.Parent.Head,
						Size = UDim2.new(1, 0, 1, 0),
						Adornee = v.Parent.Head,
						StudsOffset = Vector3.new(math.random(-3, 3), math.random(3, 5), math.random(-3, 3)),
					}
					local TL = Create("TextLabel"){
						Parent = BillG,
						Size = UDim2.new(3, 3, 3, 3),
						BackgroundTransparency = 1,
						Text = tostring(damage).."-",
						TextColor3 = Color1.Color,
						TextStrokeColor3 = Color2.Color,
						TextStrokeTransparency = 0,
						TextXAlignment = Enum.TextXAlignment.Center,
						TextYAlignment = Enum.TextYAlignment.Center,
						FontSize = Enum.FontSize.Size18,
						Font = "ArialBold",
					}
					coroutine.resume(coroutine.create(function()
						swait(1)
						for i = 0, 1, .1 do
							swait(.1)
							BillG.StudsOffset = BillG.StudsOffset + Vector3.new(0, .1, 0)
						end
						BillG:Destroy()
					end))
				end
				v.Health = v.Health - damage
				local bool = Create("BoolValue"){
					Parent = v,
					Name = "DebounceHit",
				}
				if HSound ~= nil and HPitch ~= nil then
					CFuncs["Sound"].Create(HSound, hit, 1, HPitch) 
				end
				game:GetService("Debris"):AddItem(bool, cooldown)
			end
		end
	end
end

function MagnitudeDamage(Part, magni, mindam, maxdam, Color1, Color2, HSound, HPitch)
	for _, c in pairs(workspace:children()) do
		local hum = c:findFirstChild("Humanoid")
		if hum ~= nil then
			local head = c:findFirstChild("Torso")
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if mag <= magni and c.Name ~= Player.Name then 
					Damage(head.Parent, math.random(mindam, maxdam), 0.5, Color1, Color2, HSound, HPitch)
				end
			end
		end
	end
end

Handle = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 1, "Medium stone grey", "Handle", Vector3.new(0.399999946, 0.899999976, 0.400000095))
HandleWeld = CFuncs["Weld"].Create(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.199958801, -0.0500774384, -1.09998882, -1, 0, 0, 0, 0, -1, -0, -1, -0))
FakeHandle = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 1, "Medium stone grey", "FakeHandle", Vector3.new(0.399999946, 0.899999976, 0.400000095))
FakeHandleWeld = CFuncs["Weld"].Create(m, Handle, FakeHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.199996948, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Barrel = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 1, "Medium stone grey", "Barrel", Vector3.new(0.399999946, 0.399999976, 0.400000095))
BarrelWeld = CFuncs["Weld"].Create(m, FakeHandle, Barrel, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.749999046, -1.50000024, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part = CFuncs["Part"].Create(m, Enum.Material.SmoothPlastic, 0, 0, "Medium stone grey", "Part", Vector3.new(0.399999946, 0.299999952, 0.400000095))
PartWeld = CFuncs["Weld"].Create(m, FakeHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.300000191, -0.400000095, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CFuncs["Mesh"].Create("SpecialMesh", Part, Enum.MeshType.FileMesh, "rbxassetid://435840330", Vector3.new(0, 0, 0), Vector3.new(0.00200000009, 0.00200000009, 0.00200000009))
Part.Mesh.TextureId = "rbxassetid://435840335"

EffectModel = Instance.new("Model", Character)
EffectModel.Name = "Effects"

Effects = {
	["Block"] = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
			local prt = CFuncs["Part"].Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs["Mesh"].Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
			end
		end;
	};
	
	["Cylinder"] = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs["Part"].Create(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.2, 0.2, 0.2))
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs["Mesh"].Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 2)
			Effects[#Effects + 1] = {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3
			}
		end;
	};
	
	["Sphere"] = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs["Part"].Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs["Mesh"].Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
		end;
	};
	
	["Elec"] = {
		Create = function(cff, x, y, z)
			local prt = CFuncs["Part"].Create(workspace, "Neon", 0, 0, BrickColor.new("Lime green"), "Part", Vector3.new(1, 1, 1))
			prt.Anchored = true
			prt.CFrame = cff * CFrame.new(math.random(-x, x), math.random(-y, y), math.random(-z, z))
			prt.CFrame = CFrame.new(prt.Position)
			game:GetService("Debris"):AddItem(prt, 2)
			local xval = math.random() / 2
			local yval = math.random() / 2
			local zval = math.random() / 2
			local msh = CFuncs["Mesh"].Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(xval, yval, zval))
			table.insert(Effects, {
				prt,
				"Elec",
				0.1,
				x,
				y,
				z,
				xval,
				yval,
				zval
			})
		end;

	};
	
	["Ring"] = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs["Part"].Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs["Mesh"].Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
		end;
	};


	["Wave"] = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs["Part"].Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs["Mesh"].Create("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
		end;
	};

	["Break"] = {
		Create = function(brickcolor, cframe, x1, y1, z1)
			local prt = CFuncs["Part"].Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
			prt.Anchored = true
			prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
			local msh = CFuncs["Mesh"].Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
		end;
	};
}

Shoot2 = function(orgpos)
	local MouseLook = CFrame.new((orgpos + mouse.Hit.p) / 2, mouse.Hit.p)
	Effects["Sphere"].Create(BrickColor.new("New Yeller"), CFrame.new(orgpos), 5, 5, 5, 3, 3, 3, 0.1)
	table.insert(Effects, {
		MouseLook.lookVector,
		"Shoot2",
		50,
		orgpos,
		5,
		7,
		0,
		1,
		2
	})
end

function attackone()
	attack = true
	CFuncs["Sound"].Create("rbxassetid://243053454", Torso, .1, 2.8) 
	for i = 0, 1, 0.025 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(-0, -0, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0, 1.4999907, 3.42726707e-007, 1, 0, 0, 0, 0.996194661, 0.087155968, 0, -0.087155968, 0.996194661) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0.431798398, 0.400000006, -0.888215482, 0.939692736, 0.342019886, 0, 0, 0, -1, -0.342019916, 0.939692736, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-0.559965074, 0.300000012, -0.828456283, 0.939692736, -0.342019886, 0, 0, 0, -1, 0.342019916, 0.939692736, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0.599619746, -1.99127948, 0, 0.996194661, -0.087155968, 0, 0.087155968, 0.996194661, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-0.599619746, -1.99127901, 0, 0.996194661, 0.087155968, 0, -0.087155968, 0.996194661, 0, -0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(0)), 0.3)
	end
	CFuncs["Sound"].Create("rbxassetid://203691837", Barrel, .01, .3)
	CFuncs["Sound"].Create("rbxassetid://131384028", Barrel, .01, .9)
	CFuncs["Sound"].Create("rbxassetid://184718741", Barrel, .05, .9)
	Shoot2(Barrel.Position)
	for i = 0, 1, 0.15 do
		swait()
		RootPart.Velocity = RootPart.CFrame.lookVector * -50
		PlayAnimationFromTable({
			CFrame.new(-0, -0.281125277, 0.157014638, 1, 0, -0, 0, 0.906307876, -0.422617942, 0, 0.422617942, 0.906307876) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0, 1.4999938, 1.05202198e-005, 1, 0, -0, 0, 0.965925813, 0.258818924, -0, -0.258818924, 0.965925813) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0.406597674, 0.817824185, -0.957423151, 0.939692974, 0.280165672, -0.196174338, -5.36441803e-007, -0.573575616, -0.819152534, -0.34201926, 0.769751906, -0.538984895) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-0.506752789, 0.775180221, -0.974653006, 0.939692974, -0.280165732, 0.196174279, 5.36441803e-007, -0.573575556, -0.819152713, 0.34201926, 0.769752145, -0.538984716) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0.566868722, -1.61683154, -0.13679418, 0.954536259, -0.174988821, -0.241328761, 0.172366679, 0.984509468, -0.0321052969, 0.243208498, -0.0109513998, 0.969912171) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-0.545306504, -1.37044179, -0.679420352, 0.996202111, 0.0754783303, 0.0434113704, -0.0434117466, 0.862729907, -0.503797948, -0.0754781216, 0.49999994, 0.862729967) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .6, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-30), math.rad(-20), math.rad(0)), 0.3)
	end
	for i = 0, 1, 0.15 do
		swait()
		RootPart.Velocity = RootPart.CFrame.lookVector * -100
		PlayAnimationFromTable({
			CFrame.new(-0, -0.795007467, 0.0831707418, 1, 0, -0, 0, 0.76604414, -0.642788053, 0, 0.642788053, 0.76604414) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0, 1.49999774, 1.20103359e-005, 1, 0, -0, 0, 0.965925634, 0.258819878, -0, -0.258819878, 0.965925634) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(1.70605683, 1.21151328, -0.185158521, 0.893217862, -0.29338178, -0.340718448, -0.340719074, -0.936116338, -0.0871595442, -0.293381065, 0.193941653, -0.936116695) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-1.69524968, 1.05172348, -0.252849877, 0.812758088, 0.493294626, 0.309975445, 0.582562625, -0.694268882, -0.422624737, 0.00672781467, 0.524071693, -0.851647615) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0.689150453, -1.88461804, -0.0157705098, 0.954536736, -0.174989104, -0.241326213, 0.172367141, 0.984509468, -0.0321044922, 0.243205875, -0.0109517872, 0.969912887) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-0.536899447, -1.34506011, -0.583059072, 0.99620223, 0.0226762109, 0.0840658173, -0.043412663, 0.966281295, 0.253803402, -0.0754759163, -0.256489068, 0.963595748) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .2, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-50), math.rad(0)), 0.3)
	end
	for i = 0, 1, 0.05 do
		swait()
		RootPart.Velocity = RootPart.CFrame.lookVector * -50
		PlayAnimationFromTable({
			CFrame.new(-0, -2.09708667, 0.108620644, 1, 0, -0, 0, 0.573575675, -0.819152594, 0, 0.819152594, 0.573575675) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0, 1.53697455, -0.422635257, 1, 0, -0, 0, 0.766043842, 0.64278841, -0, -0.64278841, 0.766043842) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(1.57810855, 0.650130272, 0.33058399, 0.930655897, -0.284022599, -0.230674848, 0.352510452, 0.527023435, 0.773293555, -0.0980618149, -0.800985396, 0.590598404) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-1.38994181, 0.87733829, 0.667137444, 0.963715255, 0.08906921, 0.251633942, -0.25866431, 0.0788001418, 0.962747812, 0.0659223944, -0.992903471, 0.0989798903) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0.774198592, -1.52057803, -0.607582211, 0.954536974, -0.272207022, -0.121501081, 0.172365844, 0.83655864, -0.520057499, 0.243206039, 0.475471497, 0.845445395) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-0.530096769, -1.05517173, -0.660005629, 0.99620223, 0.0226761587, 0.0840661526, -0.0434127897, 0.966280818, 0.253804684, -0.0754762068, -0.256490231, 0.96359539) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-60), math.rad(0)), 0.3)
	end
	for i = 0, 1, 0.13 do
		swait()
		PlayAnimationFromTable({
			CFrame.new(-0, -1.01349139, -0.251608461, 1, 0, 0, 0, 0.707105339, 0.707108378, 0, -0.707108378, 0.707105339) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0.0127754211, 1.44207788, 0.0749337673, 1, 0, 0, 0, 0.939691544, -0.342023343, 0, 0.342023343, 0.939691544) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(1.62296665, 0.191783041, -0.192457974, 0.930656254, -0.329096794, 0.159920022, 0.352511466, 0.923570275, -0.150843769, -0.098055169, 0.196757287, 0.975536823) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-0.870643735, 0.71258086, -0.942903101, 0.18127799, -0.372358024, -0.910213113, -0.781424284, 0.507405519, -0.363202393, 0.597088516, 0.777103186, -0.19898814) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(0.214147568, -1.73508716, -0.0895051956, 0.924306214, 0.282332808, -0.256800473, -0.113861978, 0.846218646, 0.520528436, 0.364271581, -0.451887846, 0.814311981) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
			CFrame.new(-0.535767198, -0.599929333, -0.996632636, 0.996202111, 0.0754788443, 0.0434101112, -0.0434126705, 0.862728953, -0.503799856, -0.0754773915, 0.500001788, 0.862729192) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
	end
	attack = false
end

--[[Attacks]]--

mouse.Button1Down:connect(function()
	if attack == false and attacktype == 1 then
		attackone()
	end
end)

mouse.KeyDown:connect(function(k)
	k = k:lower()
	if attack == false and k == '' then
	
	end
end)

while true do
	swait()
	for i, v in pairs(Character:GetChildren()) do
		if v:IsA("Part") then
			v.Material = "SmoothPlastic"
		elseif v:IsA("Accessory") then
			v:WaitForChild("Handle").Material = "SmoothPlastic"
		end
	end
	Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
	velocity = RootPart.Velocity.y
	sine = sine + change
	local hit, pos = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
	if equipped == true or equipped == false then
		if RootPart.Velocity.y > 1 and hit == nil then 
			Anim = "Jump"
			if attack == false then
				PlayAnimationFromTable({
					CFrame.new(-0, -0, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					CFrame.new(0, 1.49221826, -0.044082582, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					CFrame.new(1.66304386, 0.182627335, 0.00782334805, 0.883022726, -0.392632574, 0.257119894, 0.321392894, 0.905103981, 0.2783764, -0.342019886, -0.163176134, 0.925416708) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					CFrame.new(-1.66570556, 0.224230319, 0.110721856, 0.903736115, 0.408218145, -0.128915116, -0.34750703, 0.875426054, 0.33595863, 0.25000003, -0.258819014, 0.933012724) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					CFrame.new(0.499999166, -1.99999452, 4.76837158e-007, 0.984807849, -5.94328526e-007, -0.173648044, 0.0449439958, 0.965925872, 0.254886925, 0.167730987, -0.258819073, 0.951251388) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					CFrame.new(-0.499999404, -1.51703107, -0.129407585, 0.965925753, 6.6929374e-007, 0.258819193, -0.0669879839, 0.965925813, 0.24999994, -0.24999994, -0.258819163, 0.933012724) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				}, .3, false)
			end
		elseif RootPart.Velocity.y < -1 and hit == nil then 
			Anim = "Fall"
			if attack == false then
				PlayAnimationFromTable({
					CFrame.new(-0, -0, -0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					CFrame.new(0, 1.49221873, -0.0440826714, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					CFrame.new(1.76076102, 0.406842887, 0.0212866664, 0.695482016, -0.670965135, 0.257119834, 0.611573994, 0.74059701, 0.278376371, -0.377202988, -0.0363579579, 0.925416648) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					CFrame.new(-1.68029141, 0.390803367, 0.155905366, 0.70961535, 0.692695498, -0.128914997, -0.625963271, 0.703777075, 0.335958213, 0.323444158, -0.157705069, 0.933012843) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					CFrame.new(0.693307817, -1.96826017, -0.0605875254, 0.986561239, -0.127662987, -0.101976946, 0.137943029, 0.985269904, 0.101069227, 0.0875720233, -0.113777988, 0.989639223) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					CFrame.new(-0.526552737, -1.81498528, -0.152177691, 0.965925574, 0.0449441113, 0.254888207, -0.066988036, 0.994663239, 0.0784704387, -0.250001162, -0.0928710476, 0.963781357) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				}, .3, false)
			end
		elseif Torsovelocity < 1 and hit ~= nil then
			Anim = "Idle"
			if attack == false then
				change = 1
				PlayAnimationFromTable({
					CFrame.new(1.22602091e-006, -0.219458103, 1.46111324e-006, 0.76604414, 0, 0.642788053, 0, 1, 0, -0.642788053, 0, 0.76604414) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					CFrame.new(0, 1.49999201, 0, 0.707106233, 0, -0.707107306, 0, 1, 0, 0.707107306, 0, 0.707106233) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					CFrame.new(0.571566343, -0.0739164352, -0.639066696, 0.939692855, 0.340718329, -0.0298085809, -0.241844058, 0.600305915, -0.762328327, -0.241844922, 0.723563433, 0.646503866) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					CFrame.new(-0.628383756, -0.12163578, -0.696761668, 0.939692736, -0.342020065, -5.06639481e-007, 0.196173996, 0.538984895, -0.819152653, 0.280166954, 0.769751549, 0.573575616) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					CFrame.new(0.624118924, -1.79798961, 0.0678238794, 0.995454907, -0.0383867361, -0.0871553123, 0.0385330059, 0.999257326, -4.09960694e-006, 0.0870907605, -0.00335427374, 0.996194839) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					CFrame.new(-0.53866595, -1.82180798, 0.00821807235, 0.977763176, 0.0281341001, 0.207816422, -0.0287620034, 0.999586344, -1.4934686e-007, -0.207730502, -0.00597707182, 0.978167892) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
				}, .3, false)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(0)), 0.3)
			end
		elseif Torsovelocity > 2 and hit ~= nil then
			Anim = "Walk"
			if attack == false then
				change = 3
				PlayAnimationFromTable({
					CFrame.new(0, -0.0240751095, -0.146390602, 1, 0, 0, 0, 0.965925872, 0.258818984, 0, -0.258818984, 0.965925872) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					CFrame.new(0, 1.49999237, -1.81794167e-006, 1, 0, 0, 0, 0.984807789, -0.173647881, 0, 0.173647881, 0.984807789) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					CFrame.new(0.172261134, 0.427689523, -1.09730911, 0.644483984, 0.748984814, -0.153825179, 0.413525045, -0.510645986, -0.753815472, -0.643146515, 0.422211438, -0.638827145) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					CFrame.new(-1.1922102, 0.363029838, -0.448653877, 0.935289383, -0.110854559, -0.33607316, -0.341521561, -0.531564534, -0.775114357, -0.0927196145, 0.839732468, -0.535025835) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
					CFrame.new(.5, -1.85 - 0.5 * math.cos(sine / 8) / 2, 0 + 1.8 *  math.sin(sine / 8) / 2) * angles(math.rad(-50 *  math.sin(sine / 8)), math.rad(0), math.rad(0)),
					CFrame.new(-.5, -1.85 + 0.5 * math.cos(sine / 8) / 2, 0 - 1.8 * math.sin(sine / 8) / 2) * angles(math.rad(50 *  math.sin(sine / 8)), math.rad(0), math.rad(0)),
				}, .3, false)
				FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
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
					if Thing[2] == "Shoot" then
						local Look = Thing[1]
						local hit, pos = rayCast(Thing[4], Look, 15, Character)
						local mag = (Thing[4] - pos).magnitude
						Thing[9] = Thing[9] + 0.5
						Thing[5] = Thing[5] + 0.2
						Thing[6] = Thing[6] + 0.2
						Effects["Cylinder"].Create(BrickColor.new("New Yeller"), CFrame.new((Thing[4] + pos) / 2, pos) * angles(1.57, 0, 0), Thing[9], mag * 5, Thing[9], -0.2, 0, -0.2, 0.1)
						Thing[4] = Thing[4] + Look * 15
						Thing[3] = Thing[3] - 1
						if hit ~= nil then
							Thing[3] = 0
							ref = CFuncs["Part"].Create(workspace, "Neon", 0, 1, BrickColor.new("Really red"), "Reference", Vector3.new())
							ref.Anchored = true
							ref.CFrame = CFrame.new(pos)
							Effects["Sphere"].Create(BrickColor.new("New Yeller"), CFrame.new(pos), 5, 5, 5, 1, 1, 1, 0.07)
							CFuncs["Sound"].Create("rbxassetid://315748949", ref, 1, 1.1)
							game:GetService("Debris"):AddItem(ref, 1)
						end
						if Thing[3] <= 0 then
							table.remove(Effects, e)
						end
					end
					do
						if Thing[2] == "Shoot2" then
							local Look = Thing[1]
							local hit, pos = rayCast(Thing[4], Look, 3, Character)
							local mag = (Thing[4] - pos).magnitude
							Thing[9] = Thing[9] + 0.5
							Thing[5] = Thing[5] + 0.2
							Thing[6] = Thing[6] + 0.2
							Effects["Sphere"].Create(BrickColor.new("New Yeller"), CFrame.new((Thing[4] + pos) / 2, pos), 25, 25, 25, -5, -5, -5, 0.2)
							Thing[4] = Thing[4] + Look * 3
							Thing[3] = Thing[3] + 5
							if hit ~= nil then
								Thing[3] = 0
								ref = CFuncs["Part"].Create(workspace, "Neon", 0, 1, BrickColor.new("Really red"), "Reference", Vector3.new())
								ref.Anchored = true
								ref.CFrame = CFrame.new(pos)
								Effects["Sphere"].Create(BrickColor.new("New Yeller"), CFrame.new(pos), 25, 25, 25, 5, 5, 5, 0.01)
								Effects["Sphere"].Create(BrickColor.new("New Yeller"), CFrame.new(pos), 10, 10, 10, 15, 15, 15, 0.01)
								Effects["Block"].Create(BrickColor.new("New Yeller"), CFrame.new(pos), 10, 10, 10, 15, 15, 15, 0.01, 1)
								Effects["Wave"].Create(BrickColor.new("New Yeller"), CFrame.new(pos), 2, 2, 2, 3, 3, 3, 0.01)
								CFuncs["Sound"].Create("rbxassetid://203691837", ref, 1, .3)
								CFuncs["Sound"].Create("rbxassetid://203691885", ref, 1, .9)
								CFuncs["Sound"].Create("rbxassetid://184718741", ref, 1, .9)
								local e = Instance.new("Explosion", ref)
								e.Position = ref.Position
								e.BlastRadius = 400
								e.DestroyJointRadiusPercent = 20
								e.Visible = false
								e.ExplosionType = "CratersAndDebris"
								game:GetService("Debris"):AddItem(ref, 10)
							end
							if Thing[3] <= 0 then
								table.remove(Effects, e)
							end
						end
						do
							do
								if Thing[2] ~= "Shoot" and Thing[2] ~= "DecreaseStat" and Thing[2] ~= "showDamage" and Thing[2] ~= "Shoot2" then
									if Thing[1].Transparency <= 1 then
										if Thing[2] == "Block1" then
											Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
											Mesh = Thing[7]
											Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
											Thing[1].Transparency = Thing[1].Transparency + Thing[3]
										else
											if Thing[2] == "Block2" then
												Thing[1].CFrame = Thing[1].CFrame
												Mesh = Thing[7]
												Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
												Thing[1].Transparency = Thing[1].Transparency + Thing[3]
											else
												if Thing[2] == "Block3" then
													Thing[8].C0 = CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) * Thing[9]
													Mesh = Thing[7]
													Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
													Thing[1].Transparency = Thing[1].Transparency + Thing[3]
												else
													if Thing[2] == "Cylinder" then
														Mesh = Thing[7]
														Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
														Thing[1].Transparency = Thing[1].Transparency + Thing[3]
													else
														if Thing[2] == "Cylinder2" then
															Thing[1].CFrame = Thing[1].CFrame * CFrame.new(0, Thing[8], 0)
															Mesh = Thing[7]
															Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
															Thing[1].Transparency = Thing[1].Transparency + Thing[3]
														else
															if Thing[2] == "Blood" then
																Mesh = Thing[7]
																Thing[1].CFrame = Thing[1].CFrame * CFrame.new(0, 0.5, 0)
																Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
																Thing[1].Transparency = Thing[1].Transparency + Thing[3]
															else
																if Thing[2] == "Elec" then
																	Mesh = Thing[10]
																	Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
																	Thing[1].Transparency = Thing[1].Transparency + Thing[3]
																else
																	if Thing[2] == "Disappear" then
																		Thing[1].Transparency = Thing[1].Transparency + Thing[3]
																	end
																end
															end
														end
													end
												end
											end
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
			end
		end
	end
end