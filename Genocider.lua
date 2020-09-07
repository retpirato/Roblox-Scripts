--[[Psychopath's waifu
I think ck is going to send me in hell...
Genocider by grgrgry21.
Credit to CKbackup's and idk..
             B
          U     R
         N  I N  H
          E     L
             L
]]--
wait(1 / 60)
Effects = { }
local Player = game.Players.localPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local Mouse = Player:GetMouse()
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local Torso = Character.Torso
local Camera = game.Workspace.CurrentCamera
local RootPart = Character.HumanoidRootPart
local RootJoint = RootPart.RootJoint
local attack = false
local Anim = 'Idle'
local attacktype = 1
local delays = false
local play = true
local targetted = nil
local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local doe = 0
local Create = LoadLibrary("RbxUtility").Create
Humanoid.WalkSpeed = 8
local m = Create("Model"){
	Parent = Character,
	Name = "WeaponModel",
}

Humanoid.Animator.Parent = nil
Character.Animate.Parent = nil

local newMotor = function(part0, part1, c0, c1)
	local w = Create('Motor'){
		Parent = part0,
		Part0 = part0,
		Part1 = part1,
		C0 = c0,
		C1 = c1,
	}
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

ArtificialHB = Create("BindableEvent", script){
	Parent = script,
	Name = "Heartbeat",
}

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
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 6)
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

	CreateTemplate = {
	
	};
}



New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end
	

ShadowHead = New("Part",Character,"ShadowHead",{CanCollide = false,BrickColor = BrickColor.new("Really black"),Size = Vector3.new(1.20000005, 0.600000024, 1),CFrame = CFrame.new(68.5999985, 0.700013041, 9.89999962, 1, 0, 0, 0, 1, 0, 0, 0, 1),Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",ShadowHead,"Mesh",{Scale = Vector3.new(1.25999999, 1.5, 1.25999999),})
Weld = New("Weld",ShadowHead,"mot",{Part0 = ShadowHead,Part1 = Character.Head,C1 = CFrame.new(0, 0.200000048, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),})

Handle = New("Part",m,"Handle",{Material = Enum.Material.SmoothPlastic,Transparency = 1,Transparency = 1,Size = Vector3.new(1.78105354, 1.21267569, 0.446083069),CFrame = CFrame.new(3.48884702, 1.89424598, -23.6011944, 0.0172098875, -7.30156898e-07, 0.999851942, 0.999853492, 1.19907781e-08, -0.0172098596, -1.80598714e-09, 1.00000083, 1.4975667e-06),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
moter = New("Weld",Handle,"mot",{Part0 = RightArm,Part1 = Handle,})
Part = New("Part",m,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(3.46324158, 2.55061626, -23.0996056, 0.0172099378, 1.26508749e-05, 0.999852061, 0.999856234, 0.000737910799, -0.0172098614, -0.000738026109, 1.00000215, 2.29468287e-06),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.492160469, 0.24608025, 0.123040132),})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.0172098838, 0.999853015, -0.000738022442, 1.18836761e-05, 0.000737924012, 1.00000048, 0.999851942, -0.0172098614, 1.52736902e-06),C1 = CFrame.new(0.655831456, 0.501588821, -0.0368974209, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Part = New("Part",m,"Part",{Material = Enum.Material.SmoothPlastic,Shape = Enum.PartType.Cylinder,Size = Vector3.new(0.200000003, 0.270688266, 0.270688266),CFrame = CFrame.new(3.47537327, 1.11045444, -23.2953625, 0.0172099359, 1.26359728e-05, 0.999851942, 0.999856234, 0.000738034665, -0.0172098596, -0.000738148578, 1.00000226, 2.36918868e-06),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.123040125, 1, 1),MeshType = Enum.MeshType.Cylinder,})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.0172098819, 0.999853015, -0.00073814491, 1.18687749e-05, 0.000738047936, 1.0000006, 0.999851882, -0.0172098596, 1.60187483e-06),C1 = CFrame.new(-0.783906102, 0.305831909, 1.74045563e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Part = New("Part",m,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.47648132, 0.221472263, 0.344512314),CFrame = CFrame.new(3.48828244, 1.86040294, -23.3093491, 0.0172099452, 3.70001203e-08, 0.999852061, 0.99985671, -3.59708352e-09, -0.0172098596, -4.18887769e-09, 1.0000025, 2.26488032e-06),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 1.00999999, 1),})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),C1 = CFrame.new(-0.0338476896, 0.291845322, 1.8119812e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Part = New("Part",m,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.98432076, 0.200000003, 0.24608022),CFrame = CFrame.new(3.48404813, 1.61474013, -23.4433804, 0.0172099359, 1.26359728e-05, 0.999851942, 0.999856234, 0.000738034665, -0.0172098596, -0.000738148578, 1.00000226, 2.36918868e-06),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.246080264, 1),})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.0172098819, 0.999853015, -0.00073814491, 1.18687749e-05, 0.000738047936, 1.0000006, 0.999851882, -0.0172098596, 1.60187483e-06),C1 = CFrame.new(-0.279546618, 0.157814026, 1.21593475e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Part = New("Part",m,"Part",{Material = Enum.Material.SmoothPlastic,Shape = Enum.PartType.Cylinder,Size = Vector3.new(0.984321058, 0.200000003, 0.200000003),CFrame = CFrame.new(3.36101127, 1.61687815, -23.4187717, 0.0172099359, 1.26359728e-05, 0.999851942, 0.999856234, 0.000738034665, -0.0172098596, -0.000738148578, 1.00000226, 2.36918868e-06),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.492160618, 0.492160439),MeshType = Enum.MeshType.Cylinder,})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.0172098819, 0.999853015, -0.00073814491, 1.18687749e-05, 0.000738047936, 1.0000006, 0.999851882, -0.0172098596, 1.60187483e-06),C1 = CFrame.new(-0.279526353, 0.182422638, -0.123043299, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Part = New("Part",m,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(3.53706741, 2.54934502, -23.0996056, 0.0172099378, 1.26508749e-05, 0.999852061, 0.999856234, 0.000737910799, -0.0172098614, -0.000738026109, 1.00000215, 2.29468287e-06),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.492160469, 0.246080235, 0.123040132),})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.0172098838, 0.999853015, -0.000738022442, 1.18836761e-05, 0.000737924012, 1.00000048, 0.999851942, -0.0172098614, 1.52736902e-06),C1 = CFrame.new(0.655830979, 0.501588821, 0.0369393826, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Part = New("Part",m,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.47648132, 0.200000003, 0.200000003),CFrame = CFrame.new(3.48828554, 1.86097884, -23.1606178, 0.0172099359, 1.26359728e-05, 0.999851942, 0.999856234, 0.000738034665, -0.0172098596, -0.000738148578, 1.00000226, 2.36918868e-06),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.369120389, 0.7382406),})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.0172098819, 0.999853015, -0.00073814491, 1.18687749e-05, 0.000738047936, 1.0000006, 0.999851882, -0.0172098596, 1.60187483e-06),C1 = CFrame.new(-0.0332717896, 0.440576553, 1.14440918e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Partss = New("Part",m,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Shape = Enum.PartType.Cylinder,Size = Vector3.new(0.200000003, 0.221472204, 0.221472189),CFrame = CFrame.new(3.47526526, 1.10428262, -23.2953568, 0.0172099359, 1.26359728e-05, 0.999851942, 0.999856234, 0.000738034665, -0.0172098596, -0.000738148578, 1.00000226, 2.36918868e-06),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",Partss,"Mesh",{Scale = Vector3.new(0.123040125, 1, 1),MeshType = Enum.MeshType.Cylinder,})
mot = New("Weld",Partss,"mot",{Part0 = Partss,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.0172098819, 0.999853015, -0.00073814491, 1.18687749e-05, 0.000738047936, 1.0000006, 0.999851882, -0.0172098596, 1.60187483e-06),C1 = CFrame.new(-0.790078878, 0.305837631, 1.57356262e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Part = New("Part",m,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(3.49040294, 1.9837563, -23.5174713, 0.0172099359, 1.26359728e-05, 0.999851942, 0.999856234, 0.000738034665, -0.0172098596, -0.000738148578, 1.00000226, 2.36918868e-06),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.615200579, 0.36912033, 0.24608025),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.0172098819, 0.999853015, -0.00073814491, 1.18687749e-05, 0.000738047936, 1.0000006, 0.999851882, -0.0172098596, 1.60187483e-06),C1 = CFrame.new(0.0895236731, 0.0837230682, 1.52587891e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Part = New("Part",m,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.295296252, 0.738240778, 0.369120389),CFrame = CFrame.new(3.49802279, 2.42631888, -23.8138046, 0.0172099452, 3.70001203e-08, 0.999852061, 0.99985671, -3.59708352e-09, -0.0172098596, -4.18887769e-09, 1.0000025, 2.26488032e-06),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),C1 = CFrame.new(0.532151103, -0.212610245, 1.74045563e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Part = New("Part",m,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.344512314, 0.78745681, 0.344512314),CFrame = CFrame.new(3.49802279, 2.42631888, -23.8138046, 0.0172099452, 3.70001203e-08, 0.999852061, 0.99985671, -3.59708352e-09, -0.0172098596, -4.18887769e-09, 1.0000025, 2.26488032e-06),BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),C1 = CFrame.new(0.532151103, -0.212610245, 1.74045563e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Part = New("Part",m,"Part",{Material = Enum.Material.SmoothPlastic,Shape = Enum.PartType.Cylinder,Size = Vector3.new(0.984321058, 0.200000003, 0.200000003),CFrame = CFrame.new(3.60706425, 1.61264217, -23.4187698, 0.0172099359, 1.26359728e-05, 0.999851942, 0.999856234, 0.000738034665, -0.0172098596, -0.000738148578, 1.00000226, 2.36918868e-06),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.492160618, 0.492160439),MeshType = Enum.MeshType.Cylinder,})
mot = New("Weld",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.0172098819, 0.999853015, -0.00073814491, 1.18687749e-05, 0.000738047936, 1.0000006, 0.999851882, -0.0172098596, 1.60187483e-06),C1 = CFrame.new(-0.279527187, 0.182424545, 0.12304616, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Wedge = New("WedgePart",m,"Wedge",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(3.47672749, 1.18911982, -23.1232109, 0.999851942, 0.00638213893, 0.0159827713, -0.0172098316, 0.37065956, 0.928613782, 4.44045327e-06, -0.928749561, 0.370713741),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Wedge,"Mesh",{Scale = Vector3.new(0.24608025, 0.246080264, 0.615200639),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Wedge,"mot",{Part0 = Wedge,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999851882, -0.0172098316, 3.67313623e-06, 0.00638283044, 0.370658338, -0.928748012, 0.0159824342, 0.928610861, 0.370713145),C1 = CFrame.new(-0.705229163, 0.477983475, 1.76429749e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Wedge = New("WedgePart",m,"Wedge",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.344512254, 0.787456751, 0.200000003),CFrame = CFrame.new(3.50247502, 2.68478155, -23.8132839, 0.999851942, 1.0713723e-05, -0.0172099732, -0.0172098912, 0.000738376984, -0.999856234, 4.21693585e-06, 1.00000226, 0.000738456321),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Wedge,"Mesh",{Scale = Vector3.new(1, 1, 0.861280859),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Wedge,"mot",{Part0 = Wedge,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999851882, -0.0172098912, 3.44961882e-06, 9.9465251e-06, 0.000738390256, 1.0000006, -0.0172099192, -0.999853015, 0.000738452654),C1 = CFrame.new(0.790651679, -0.212089539, 2.07424164e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Wedge = New("WedgePart",m,"Wedge",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(3.4904809, 1.98827124, -23.5162678, -0.999852061, -0.0148990965, 0.00861407723, 0.0172099397, -0.865535975, 0.500560343, -4.36594746e-06, 0.500633478, 0.865662456),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Wedge,"Mesh",{Scale = Vector3.new(0.24608025, 0.369120389, 0.861280918),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Wedge,"mot",{Part0 = Wedge,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.999851942, 0.0172099397, -3.59863043e-06, -0.0148994327, -0.865533173, 0.500632644, 0.00861338526, 0.500558794, 0.865661025),C1 = CFrame.new(0.0940393209, 0.0849266052, 1.54972076e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Wedge = New("WedgePart",m,"Wedge",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.442944348, 0.200000003, 0.200000003),CFrame = CFrame.new(3.37415838, 2.37982368, -23.1609974, 0.0172098633, 1.48413446e-05, 0.999851882, 0.999856234, 0.0007376945, -0.0172097869, -0.000737846654, 1.00000215, 7.44058752e-08),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Wedge,"Mesh",{Scale = Vector3.new(1, 0.369120389, 0.492160529),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Wedge,"mot",{Part0 = Wedge,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.0172098093, 0.999853015, -0.000737842987, 1.40741467e-05, 0.000737707771, 1.00000048, 0.999851823, -0.0172097888, -6.92903996e-07),C1 = CFrame.new(0.483531356, 0.440196991, -0.12302804, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Wedge = New("WedgePart",m,"Wedge",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.61520052, 0.200000003, 0.200000003),CFrame = CFrame.new(3.35783243, 1.43252242, -23.1602993, 0.0172098633, 1.48413446e-05, 0.999851882, 0.999856234, 0.0007376945, -0.0172097869, -0.000737846654, 1.00000215, 7.44058752e-08),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Wedge,"Mesh",{Scale = Vector3.new(1, 0.369120389, 0.492160529),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Wedge,"mot",{Part0 = Wedge,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.0172098093, 0.999853015, -0.000737842987, 1.40741467e-05, 0.000737707771, 1.00000048, 0.999851823, -0.0172097888, -6.92903996e-07),C1 = CFrame.new(-0.463909149, 0.440895081, -0.123048544, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Wedge = New("WedgePart",m,"Wedge",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.47648132, 0.200000003, 0.200000003),CFrame = CFrame.new(3.61130548, 1.85886192, -23.160614, -0.0172098689, 1.04156998e-05, -0.99985218, -0.999856234, 0.000738191127, 0.0172097925, 0.000738266157, 1.00000238, -4.55221243e-06),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Wedge,"Mesh",{Scale = Vector3.new(1, 0.369120389, 0.492160529),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Wedge,"mot",{Part0 = Wedge,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -0.0172098149, -0.999853075, 0.00073826249, 9.64850187e-06, 0.00073820434, 1.00000072, -0.999852121, 0.0172097944, -3.78489494e-06),C1 = CFrame.new(-0.0332713127, 0.440580368, 0.123049498, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Wedge = New("WedgePart",m,"Wedge",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.36912033, 0.738240778, 0.200000003),CFrame = CFrame.new(3.50183868, 2.64789343, -23.8132629, 0.999851942, 1.0818032e-05, -0.017209895, -0.0172098186, 0.000737608876, -0.999856234, 4.13497901e-06, 1.00000238, 0.000737691764),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",Wedge,"Mesh",{Scale = Vector3.new(1, 1, 0.738240719),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Wedge,"mot",{Part0 = Wedge,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999851882, -0.0172098186, 3.36766243e-06, 1.00508332e-05, 0.000737622147, 1.00000072, -0.0172098409, -0.999853015, 0.000737688097),C1 = CFrame.new(0.753758311, -0.212068558, 1.93119049e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Wedge = New("WedgePart",m,"Wedge",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.344512254, 0.787456751, 0.200000003),CFrame = CFrame.new(3.49357963, 2.16808391, -23.8129005, 0.999852061, -1.05647114e-05, 0.0172100067, -0.0172099303, -0.000737611321, 0.999856114, 4.36594746e-06, -1.00000226, -0.000737689785),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Wedge,"Mesh",{Scale = Vector3.new(1, 1, 0.861280859),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Wedge,"mot",{Part0 = Wedge,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999851942, -0.0172099303, 3.59863043e-06, -9.79751348e-06, -0.000737624592, -1.0000006, 0.0172099527, 0.999852955, -0.000737686118),C1 = CFrame.new(0.273878455, -0.211706161, 1.90734863e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})
Wedge = New("WedgePart",m,"Wedge",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.36912033, 0.738240659, 0.200000003),CFrame = CFrame.new(3.49420977, 2.20497489, -23.8129292, 0.999852061, -1.05647114e-05, 0.0172100067, -0.0172099303, -0.000737611321, 0.999856114, 4.36594746e-06, -1.00000226, -0.000737689785),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",Wedge,"Mesh",{Scale = Vector3.new(1, 1, 0.738240719),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",Wedge,"mot",{Part0 = Wedge,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999851942, -0.0172099303, 3.59863043e-06, -9.79751348e-06, -0.000737624592, -1.0000006, 0.0172099527, 0.999852955, -0.000737686118),C1 = CFrame.new(0.310774684, -0.211734772, 1.43051147e-05, 0.0172098875, 0.999853492, -1.80598714e-09, -7.30156898e-07, 1.19907781e-08, 1.00000083, 0.999851942, -0.0172098596, 1.4975667e-06),})

for _,v in pairs(m:children()) do
if v:IsA("Part") then
v.CanCollide = false
end
end
if Character.Name == "grgrgry21" or Character.Name == "Player1" then
for _,v in pairs(Character:children()) do
if v:IsA("Accessory") then
v:Remove()
end
end	
Handle = New("Part",m,"Handle",{CanCollide = false,BrickColor = BrickColor.new("Really black"),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-27.3000507, 4.79990387, 28.10005, 4.49431016e-21, -6.79974523e-22, -1, 4.72251821e-22, 1, -6.79974523e-22, 1, -4.72251821e-22, 4.49431016e-21),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Handle,"Mesh",{Offset = Vector3.new(0, 0.100000001, 0),MeshId = "http://www.roblox.com/asset/?id=62246019",MeshType = Enum.MeshType.FileMesh,})
Decal = New("Decal",Handle,"Decal",{Face = Enum.NormalId.Top,Texture = "http://www.roblox.com/asset/?id=146022204",})
mot = New("Motor",Handle,"mot",{Part0 = Handle,Part1 = Head,C0 = CFrame.new(0, 0, 0, 4.49431016e-21, 4.72251821e-22, 1, -6.79974523e-22, 1, -4.72251821e-22, -1, -6.79974523e-22, 4.49431016e-21),C1 = CFrame.new(-0.100000381, 0.0999999046, 0.200000763, 4.49431016e-21, 4.72251821e-22, 1, -6.79974523e-22, 1, -4.72251821e-22, -1, -6.79974523e-22, 4.49431016e-21),})
Handle1 = New("Part",m,"Handle1",{CanCollide = false,BrickColor = BrickColor.new("Bright red"),FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-27.3000507, 4.79990387, 28.10005, 4.49431016e-21, -6.79974523e-22, -1, 4.72251821e-22, 1, -6.79974523e-22, 1, -4.72251821e-22, 4.49431016e-21),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.768628, 0.156863, 0.109804),})
Mesh = New("SpecialMesh",Handle1,"Mesh",{Offset = Vector3.new(0, 0.100000001, 0),Scale = Vector3.new(0.949999988, 0.949999988, 0.949999988),MeshId = "http://www.roblox.com/asset/?id=62246019",MeshType = Enum.MeshType.FileMesh,})
mot = New("Motor",Handle1,"mot",{Part0 = Handle1,Part1 = Head,C0 = CFrame.new(0, 0, 0, 4.49431016e-21, 4.72251821e-22, 1, -6.79974523e-22, 1, -4.72251821e-22, -1, -6.79974523e-22, 4.49431016e-21),C1 = CFrame.new(-0.100000381, 0.0999999046, 0.200000763, 4.49431016e-21, 4.72251821e-22, 1, -6.79974523e-22, 1, -4.72251821e-22, -1, -6.79974523e-22, 4.49431016e-21),})
end


function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore) 
end 

--[[FindNearestTorso = function(pos)
	local list = (game.Workspace:children())
	local torso = nil
	local dist = 1000
	local temp, human, temp2 = nil, nil, nil
	for x = 1, #list do
		temp2 = list[x]
		if temp2.className == "Model" and temp2.Name ~= Character.Name then
			temp = temp2:findFirstChild("Torso")
			human = temp2:findFirstChild("Humanoid")
			if temp ~= nil and human ~= nil and human.Health > 0 and (temp.Position - pos).magnitude < dist then
				local dohit = true
				if dohit == true then
					torso = temp
					dist = (temp.Position - pos).magnitude
				end
			end
		end
	end
	return torso, dist
end]]
function FindNearestTorso(Position, Distance, SinglePlayer)
	if SinglePlayer then
		return (SinglePlayer.Torso.CFrame.p - Position).magnitude < Distance
	end
	local List = {}
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA("Model") then
			if v:findFirstChild("Torso") then
				if v ~= Character then
					if (v.Torso.Position - Position).magnitude <= Distance then
						table.insert(List, v)
					end 
				end 
			end 
		end 
	end
	return List
end
function Damage(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
	if hit.Parent == nil then
		return
	end
	local h = hit.Parent:FindFirstChild("Humanoid")
	for _, v in pairs(hit.Parent:children()) do
		if v:IsA("Humanoid") then
			h = v
		end
	end
	if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
		if hit.Parent:findFirstChild("DebounceHit") ~= nil then
			if hit.Parent.DebounceHit.Value == true then
				return
			end
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
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Really black").Color)
		else
			h.Health = h.Health - (Damage / 2)
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Really black").Color)
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
		Font = "SciFi",
		TextColor3 = Color,
		TextScaled = true,
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

function dmg(dude)
if dude.Name ~= Character then
dude.Humanoid.PlatformStand = true
local bgf = Instance.new("BodyGyro",dude.Head)
bgf.CFrame = bgf.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
local val = Instance.new("BoolValue",dude)
val.Name = "IsHit"
for i = 1, 6 do
local blo = Instance.new("Part",game.Workspace)
blo.Size = Vector3.new(.6,.2,.6)
blo.Material = "SmoothPlastic"
blo.BrickColor = BrickColor.new("Crimson")
--blo.Position = dude.Head.Position
blo.CFrame = dude.Head.CFrame
game:GetService("Debris"):AddItem(blo,30)
end
local ds = coroutine.wrap(function()
wait(.2)
dude.Torso:BreakJoints()
end)
ds()
end
end

function mdmg(Part, Magnitude)--, MinimumDamage, MaximumDamage, KnockBack, Type, HitSound, HitPitch)
    --local buddy
	for _, c in pairs(workspace:children()) do
		local hum = c:findFirstChild("Humanoid")
		if hum ~= nil then
			local head = c:findFirstChild("Torso")
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if mag <= Magnitude and c.Name ~= Player.Name then 
				if c.Name ~= Character then
				if c.Name ~= "CKbackup" then
			local asd = Instance.new("ParticleEmitter",c.Torso)
			asd.Color = ColorSequence.new(Color3.new(1, 0, 0), Color3.new(.5, 0, 0))
			asd.LightEmission = .1
			asd.Size = NumberSequence.new(0.2)
			asd.Texture = "http://www.roblox.com/asset/?ID=771221224"
			aaa = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2),NumberSequenceKeypoint.new(1, 5)})
			bbb = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.0636, 0), NumberSequenceKeypoint.new(1, 1)})
			asd.Transparency = bbb
			asd.Size = aaa
			asd.ZOffset = .9
			asd.Acceleration = Vector3.new(0, -5, 0)
			asd.LockedToPart = false
			asd.EmissionDirection = "Back"
			asd.Lifetime = NumberRange.new(1, 2)
			asd.Rate = 1000
			asd.Rotation = NumberRange.new(-100, 100)
			asd.RotSpeed = NumberRange.new(-100, 100)
			asd.Speed = NumberRange.new(6)
			asd.VelocitySpread = 10000
			asd.Enabled=true
					--Damage(head, head, MinimumDamage, MaximumDamage, KnockBack, Type, RootPart, .1, "rbxassetid://" .. HitSound, HitPitch)
					dmg(c)
					CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=206082273", c.Torso, 1.2, .8)
					coroutine.wrap(function()
					wait(.2)
					asd.Enabled = false
					wait(2)
					asd:Remove()
					end)()
				       else
        CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=240429289", c.Torso, 1.5, math.random(1,1.3))		
        Effects.Sphere.Create(BrickColor.new("Bright red"), c.Torso.CFrame, 30, 30, 30, .5, .5, .5, 0.04)

					end
				end
			end
		end
	end
	end
end
EffectModel = Create("Model"){
	Parent = Character,
	Name = "Effects",
}

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
			end
		end;
	};

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
		end;
	};
	Head = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Head", "nil", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
	
	Sphere = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
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
		end;
	};
	
	Elect = {
		Create = function(cff, x, y, z)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, BrickColor.new("Lime green"), "Part", Vector3.new(1, 1, 1))
			prt.Anchored = true
			prt.CFrame = cff * CFrame.new(math.random(-x, x), math.random(-y, y), math.random(-z, z))
			prt.CFrame = CFrame.new(prt.Position)
			game:GetService("Debris"):AddItem(prt, 2)
			local xval = math.random() / 2
			local yval = math.random() / 2
			local zval = math.random() / 2
			local msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(xval, yval, zval))
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
		end;
	};


	Wave = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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

	Break = {
		Create = function(brickcolor, cframe, x1, y1, z1)
			local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
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
		end;
	};
	
	Fire = {
		Create = function(brickcolor, cframe, x1, y1, z1, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Fire",
				delay,
				1,
				1,
				1,
				msh
			})
		end;
	};
	
	FireWave = {
		Create = function(brickcolor, cframe, x1, y1, z1)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 1, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			local d = Create("Decal"){
				Parent = prt,
				Texture = "rbxassetid://26356434",
				Face = "Top",
			}
			local d = Create("Decal"){
				Parent = prt,
				Texture = "rbxassetid://26356434",
				Face = "Bottom",
			}
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"FireWave",
				1,
				30,
				math.random(400, 600) / 100,
				msh
			})
		end;
	};
	
	Lightning = {
		Create = function(p0, p1, tym, ofs, col, th, tra, last)
			local magz = (p0 - p1).magnitude
			local curpos = p0
			local trz = {
				-ofs,
				ofs
			}
			for i = 1, tym do
				local li = CFuncs.Part.Create(EffectModel, "Neon", 0, tra or 0.4, col, "Ref", Vector3.new(th, th, magz / tym))
				local ofz = Vector3.new(trz[math.random(1, 2)], trz[math.random(1, 2)], trz[math.random(1, 2)])
				local trolpos = CFrame.new(curpos, p1) * CFrame.new(0, 0, magz / tym).p + ofz
				li.Material = "Neon"
				if tym == i then
					local magz2 = (curpos - p1).magnitude
					li.Size = Vector3.new(th, th, magz2)
					li.CFrame = CFrame.new(curpos, p1) * CFrame.new(0, 0, -magz2 / 2)
					table.insert(Effects, {
						li,
						"Disappear",
						last
					})
				else
					do
						do
							li.CFrame = CFrame.new(curpos, trolpos) * CFrame.new(0, 0, magz / tym / 2)
							curpos = li.CFrame * CFrame.new(0, 0, magz / tym / 2).p
							game.Debris:AddItem(li, 10)
							table.insert(Effects, {
								li,
								"Disappear",
								last
							})
						end
					end
				end
			end
		end
	};

	EffectTemplate = {

	};
}

function chatfunc(text)
local chat = coroutine.wrap(function()
if Character:FindFirstChild("TalkingBillBoard")~= nil then
Character:FindFirstChild("TalkingBillBoard"):destroy()
end
local naeeym2 = Instance.new("BillboardGui",Character)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = Character.Head
naeeym2.Name = "TalkingBillBoard"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = ""
tecks2.Font = "Fantasy"
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(.6,0,0)
tecks2.TextStrokeColor3 = Color3.new(0,0,0)
tecks2.Size = UDim2.new(1,0,0.5,0)
local tecks3 = Instance.new("TextLabel",naeeym2)
tecks3.BackgroundTransparency = 1
tecks3.BorderSizePixel = 0
tecks3.Text = ""
tecks3.Font = "Fantasy"
tecks3.TextSize = 30
tecks3.TextStrokeTransparency = 0
tecks3.TextColor3 = Color3.new(.6,0,0)
tecks3.TextStrokeColor3 = Color3.new(0,0,0)
tecks3.Size = UDim2.new(1,0,0.5,0)
for i = 1,string.len(text),1 do
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=565939471", Character, .6, .8)
tecks2.Text = string.sub(text,1,i)
tecks3.Text = string.sub(text,1,i)
wait(0.01)
end
wait(2)
for i = 1, 50 do
swait()
tecks2.Position = tecks2.Position - UDim2.new(math.random(-.4,.4),math.random(-5,5),.05,math.random(-5,5))
tecks2.Rotation = tecks2.Rotation - .8
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks2.TextTransparency = tecks2.TextTransparency + .04
tecks3.Position = tecks2.Position - UDim2.new(math.random(-.4,.4),math.random(-5,5),.05,math.random(-5,5))
tecks3.Rotation = tecks2.Rotation + .8
tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks3.TextTransparency = tecks2.TextTransparency + .04
end
naeeym2:Destroy()
end)
chat()
end
function onChatted(msg)
chatfunc(msg)
end
Player.Chatted:connect(onChatted)

abss = Instance.new("BillboardGui",Character)
abss.Size = UDim2.new(10,0,10,0)
abss.Enabled = false
imgl = Instance.new("ImageLabel",abss)
imgl.Position = UDim2.new(0,0,0,0)
imgl.Size = UDim2.new(1,0,1,0)
imgl.Image = "rbxassetid://711463989"
imgl.BackgroundTransparency = 1
imgl.ImageColor3 = Color3.new(.9,0,0)
img2 = Instance.new("ImageLabel",abss)
img2.Position = UDim2.new(0,0,0,0)
img2.Size = UDim2.new(1,0,1,0)
img2.Image = "rbxassetid://711463989"
img2.BackgroundTransparency = 1
img2.ImageColor3 = Color3.new(.9,0,0)


function attackone()
	attack = true
	Humanoid.WalkSpeed = 0
	if targetted.Name ~= "CKbackup" then
			local partasdeff = Instance.new("ParticleEmitter",targetted.Torso)
			partasdeff.Color = ColorSequence.new(Color3.new(1, 0, 0), Color3.new(.5, 0, 0))
			partasdeff.LightEmission = .1
			partasdeff.Size = NumberSequence.new(0.2)
			partasdeff.Texture = "http://www.roblox.com/asset/?ID=771221224"
			aaa = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2),NumberSequenceKeypoint.new(1, 5)})
			bbb = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.0636, 0), NumberSequenceKeypoint.new(1, 1)})
			partasdeff.Transparency = bbb
			partasdeff.Size = aaa
			partasdeff.ZOffset = .9
			partasdeff.Acceleration = Vector3.new(0, -5, 0)
			partasdeff.LockedToPart = false
			partasdeff.EmissionDirection = "Back"
			partasdeff.Lifetime = NumberRange.new(1, 2)
			partasdeff.Rate = 1000
			partasdeff.Rotation = NumberRange.new(-100, 100)
			partasdeff.RotSpeed = NumberRange.new(-100, 100)
			partasdeff.Speed = NumberRange.new(6)
			partasdeff.VelocitySpread = 10000
			partasdeff.Enabled=false
	for i = 0, 3, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.0150662307, -4.88092428e-06, 0.0148906102, -0.01982099, -1.08002496e-12, 0.999803543, -4.46946984e-07, 1, -8.86181084e-09, -0.999803782, 3.27825546e-07, -0.0198209975) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.00189219415, 1.50098944, -0.129972562, 0.0201512501, 0.0765038878, -0.996864021, 0.0566192083, 0.995383799, 0.0775336027, 0.998202145, -0.0580037907, 0.0157258138) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(2.01696348, 0.389823437, -0.060955409, -0.000397110358, -0.999624014, -0.0274192169, 0.00981300231, 0.0274140034, -0.999576092, 0.999951839, -0.0006660074, 0.00979842618) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.64040112, 0.216884568, 1.93210121e-06, 0.962137103, 0.272578239, -7.02217221e-07, -0.272574633, 0.962141275, -9.83368591e-06, -2.00979412e-06, 9.69739631e-06, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.64369607, -1.98395038, 0.206737444, 0.19058302, -0.152998164, -0.969677031, 0.0664296299, 0.987527609, -0.142758414, 0.979424179, -0.0372077115, 0.198368743) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.641120076, -1.92643452, -0.0258421432, 0.848103583, 0.133398816, -0.51276207, -0.0662644878, 0.986892581, 0.147146463, 0.52567035, -0.0908175632, 0.845826566) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .1, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.011209704, -1.63770795, -0.318749219, -0.0172089972, -4.19956632e-06, -0.999852002, 0.999852061, 8.99471343e-06, -0.0172089972, 9.06549394e-06, -1.00000012, 4.04558159e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
	end
	Effects.Block.Create(BrickColor.new("Bright red"), Partss.CFrame, 2, 2, 2, 0.9, 0.9, 0.9, 0.05)
    Effects.Block.Create(BrickColor.new("Deep orange"), Partss.CFrame, 2, 2, 2, 0.5, 0.5, 0.5, 0.05)
    CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=136523485", Character, 1, .5)
    dmg(targetted)
    partasdeff.Enabled=true
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.0150662307, -4.88092428e-06, 0.0148906102, -0.01982099, -1.08002496e-12, 0.999803543, -4.46946984e-07, 1, -8.86181084e-09, -0.999803782, 3.27825546e-07, -0.0198209975) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0879677385, 1.49240708, -0.127746791, 0.0201510563, -0.100440688, -0.994740784, 0.0566197298, 0.99346137, -0.0991647467, 0.998197258, -0.0543235913, 0.0257058665) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(2.03539443, 0.729742587, 0.0108130341, -0.00389442407, -0.967803538, 0.251676887, 0.0148300035, -0.251707017, -0.967689872, 0.999882519, -3.62247229e-05, 0.0153327845) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.64040112, 0.216884568, 1.93210121e-06, 0.962137103, 0.272578239, -7.02217221e-07, -0.272574633, 0.962141275, -9.83368591e-06, -2.00979412e-06, 9.69739631e-06, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.64369607, -1.98395038, 0.206737444, 0.19058302, -0.152998164, -0.969677031, 0.0664296299, 0.987527609, -0.142758414, 0.979424179, -0.0372077115, 0.198368743) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.641120076, -1.92643452, -0.0258421432, 0.848103583, 0.133398816, -0.51276207, -0.0662644878, 0.986892581, 0.147146463, 0.52567035, -0.0908175632, 0.845826566) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.0112083517, -1.63770616, -0.318746239, -0.0172079317, -2.87033617e-06, -0.999851942, 0.999852002, 8.28504562e-06, -0.0172079336, 8.27014446e-06, -1.00000012, 2.72750913e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
	end
	partasdeff.Enabled=false
	for i = 0, 2, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.0150662307, -4.88092428e-06, 0.0148906102, -0.01982099, -1.08002496e-12, 0.999803543, -4.46946984e-07, 1, -8.86181084e-09, -0.999803782, 3.27825546e-07, -0.0198209975) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.00189219415, 1.50098944, -0.129972562, 0.0201512501, 0.0765038878, -0.996864021, 0.0566192083, 0.995383799, 0.0775336027, 0.998202145, -0.0580037907, 0.0157258138) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(2.01696348, 0.389823437, -0.060955409, -0.000397110358, -0.999624014, -0.0274192169, 0.00981300231, 0.0274140034, -0.999576092, 0.999951839, -0.0006660074, 0.00979842618) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.64040112, 0.216884568, 1.93210121e-06, 0.962137103, 0.272578239, -7.02217221e-07, -0.272574633, 0.962141275, -9.83368591e-06, -2.00979412e-06, 9.69739631e-06, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.64369607, -1.98395038, 0.206737444, 0.19058302, -0.152998164, -0.969677031, 0.0664296299, 0.987527609, -0.142758414, 0.979424179, -0.0372077115, 0.198368743) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.641120076, -1.92643452, -0.0258421432, 0.848103583, 0.133398816, -0.51276207, -0.0662644878, 0.986892581, 0.147146463, 0.52567035, -0.0908175632, 0.845826566) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.011209704, -1.63770795, -0.318749219, -0.0172089972, -4.19956632e-06, -0.999852002, 0.999852061, 8.99471343e-06, -0.0172089972, 9.06549394e-06, -1.00000012, 4.04558159e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
	end
	coroutine.wrap(function()
	wait(2)
	partasdeff:Remove()
	end)()
	else
	sel = math.random(1,3)
	if sel == 1 then	
	chatfunc("...")
	elseif sel == 2 then	
	chatfunc("No...")
	elseif sel == 3 then
	chatfunc("I can't do that...")
	end
	for i = 0, 5, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0, 0, 0, 0.999999881, 5.04870979e-29, -4.21790838e-43, 5.04870979e-29, 1, -5.04870979e-29, -4.21790838e-43, -5.04870979e-29, 0.999999881) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.055980958, 1.49253583, -0.318915963, 0.999889553, 0.0107171191, -0.0102898544, -0.00218299939, 0.791040659, 0.611759722, 0.0146959936, -0.61166966, 0.790976703) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0- .4 * math.cos((sine) / 5), 0), 
         CFrame.new(1.54004693, 0.0494250022, 1.90734852e-06, 0.997847795, -0.0655719861, 0, 0.0655719936, 0.997847855, 7.53468894e-22, -4.94064563e-23, -7.51847299e-22, 0.99999994) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.51232088, 0.0410207808, -3.73942044e-06, 0.998558879, 0.053665854, -2.33806347e-07, -0.0536658242, 0.998558939, -1.04548817e-05, -3.27600219e-07, 1.04523697e-05, 0.99999994) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.540300906, -1.99793804, -2.11055158e-06, 0.998698354, -0.0510031469, 6.26438805e-07, 0.0510031544, 0.998698473, -1.04335422e-05, -9.34800966e-08, 1.04519122e-05, 0.999999881) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.539562821, -1.99794102, -5.75710146e-09, 0.998630941, 0.0523070693, -1.67712614e-07, -0.0523070768, 0.99863106, -1.0458818e-05, -3.79587107e-07, 1.04532719e-05, 0.999999881) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.0111967381, -1.6377008, -0.318754196, -0.0172117949, 0, -0.999851942, 0.999851942, 0, -0.0172117949, 0, -1, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
	end
	end
	Humanoid.WalkSpeed = 8
	attack = false
end
local Grabbed = false

function hedshoot()
	attack = true

	--local GGyro = Instance.new("BodyPosition")
	local grab = nil
	for i, v in pairs(FindNearestTorso(Torso.CFrame.p, 10)) do
		if v:FindFirstChild('Torso') then
			Grabbed = true
			    CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=260430060", v.Torso, 1, .8)
			grab = v
		end
	end
    Effects.Wave.Create(BrickColor.new("White"), RootPart.CFrame * CFrame.Angles(0,math.rad(90),math.rad(90)), .5, .5, .5, 1, .2, 1, 0.07)
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=200632211", RootPart, 1.5, .5)
		for i = 0, 1, 0.1 do
		swait()
		if Grabbed == true then
			grab.Humanoid.PlatformStand = true
			--GGyro.position = Partss.Position
			--GGyro.Parent = grab.Head
			grab.Torso.CFrame = Partss.CFrame * CFrame.Angles(0,math.rad(-90),0)
		end
		PlayAnimationFromTable({
         CFrame.new(0.104281992, -1.37529127e-22, -0.179345995, 0.249840975, 5.92156003e-22, 0.968286872, -5.57068883e-22, 1, -4.67813147e-22, -0.968286872, -4.22523594e-22, 0.249840975) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.0029296279, 1.47845411, -0.120581962, 0.0750327855, 0.428286105, -0.900522709, 0.166523039, 0.885005891, 0.434781253, 0.983178616, -0.18258062, -0.00491504371) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.96751118, 0.433084905, -0.278422326, 0.305184275, -0.951701581, -0.033564698, 0.012345003, 0.0391969904, -0.999155343, 0.952213347, 0.304512084, 0.0237110667) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.66092706, 0.266950369, 2.51774691e-06, 0.876968205, 0.480548859, -2.5331974e-06, -0.480548888, 0.876968026, -7.03267551e-06, -1.13248825e-06, 7.38352537e-06, 1.00000048) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.146832585, -1.7542398, 0.105335698, 0.266426086, 0.491796821, -0.828946948, 0.0135936746, 0.8580302, 0.513420045, 0.96375972, -0.148056909, 0.221916124) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.09110987, -1.74702656, 0.342675447, 0.765578806, 0.632523358, 0.117487431, -0.642276406, 0.740949869, 0.196148768, 0.0370163769, -0.225626737, 0.973510265) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		RootPart.Velocity = RootPart.CFrame.lookVector * 90
		
		moter.C0 = clerp(moter.C0, CFrame.new(0.0111932121, -1.63769805, -0.318755955, -0.0172044784, -1.3951445e-05, -0.999852121, 0.999852002, 3.55020165e-06, -0.0172044784, 3.78862023e-06, -1.00000012, 1.38879986e-05) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
		end
		if Grabbed == true then
		Humanoid.WalkSpeed = 0
		for i = 0, 2, 0.1 do
		swait()
		if Grabbed == true then
			grab.Humanoid.PlatformStand = true
			--GGyro.position = Partss.Position
			--GGyro.Parent = grab.Head
			grab.Torso.CFrame = Partss.CFrame * CFrame.Angles(0,math.rad(-90),0)
		end
		PlayAnimationFromTable({
         CFrame.new(0.104281992, -1.37529127e-22, -0.179345995, 0.249840975, 5.92156003e-22, 0.968286872, -5.57068883e-22, 1, -4.67813147e-22, -0.968286872, -4.22523594e-22, 0.249840975) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.0029296279, 1.47845411, -0.120581962, 0.0750327855, 0.428286105, -0.900522709, 0.166523039, 0.885005891, 0.434781253, 0.983178616, -0.18258062, -0.00491504371) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.96751118, 0.433084905, -0.278422326, 0.305184275, -0.951701581, -0.033564698, 0.012345003, 0.0391969904, -0.999155343, 0.952213347, 0.304512084, 0.0237110667) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.58139038, 0.176945746, 5.27966768e-06, 0.939729631, 0.341920435, -3.69548798e-06, -0.341920793, 0.93972975, -6.50105221e-06, -5.81145287e-07, 6.40749931e-06, 1.00000048) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.569345832, -1.89868093, -0.00942828506, 0.266425997, -0.0769406706, -0.960779786, 0.0135936281, 0.997010291, -0.0760724545, 0.963760078, 0.00720720552, 0.266675085) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.849354744, -2.01616573, 0.241646215, 0.948664129, 0.308412433, 0.0701368451, -0.312046438, 0.948832989, 0.0484089628, -0.0516182035, -0.0678096861, 0.996362925) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.0111932121, -1.63769805, -0.318755955, -0.0172044784, -1.3951445e-05, -0.999852121, 0.999852002, 3.55020165e-06, -0.0172044784, 3.78862023e-06, -1.00000012, 1.38879986e-05) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
		end
		if grab.Name ~= "CKbackup" then
			local partasdeff = Instance.new("ParticleEmitter",grab.Torso)
			partasdeff.Color = ColorSequence.new(Color3.new(1, 0, 0), Color3.new(.5, 0, 0))
			partasdeff.LightEmission = .1
			partasdeff.Size = NumberSequence.new(0.2)
			partasdeff.Texture = "http://www.roblox.com/asset/?ID=771221224"
			aaa = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2),NumberSequenceKeypoint.new(1, 5)})
			bbb = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.0636, 0), NumberSequenceKeypoint.new(1, 1)})
			partasdeff.Transparency = bbb
			partasdeff.Size = aaa
			partasdeff.ZOffset = .9
			partasdeff.Acceleration = Vector3.new(0, -5, 0)
			partasdeff.LockedToPart = false
			partasdeff.EmissionDirection = "Back"
			partasdeff.Lifetime = NumberRange.new(1, 2)
			partasdeff.Rate = 1000
			partasdeff.Rotation = NumberRange.new(-100, 100)
			partasdeff.RotSpeed = NumberRange.new(-100, 100)
			partasdeff.Speed = NumberRange.new(10)
			partasdeff.VelocitySpread = 20
			partasdeff.Enabled=false
	sel = math.random(1,3)
	if sel == 1 then	
	chatfunc("Too weak.")
	elseif sel == 2 then	
	chatfunc("Die.")
	elseif sel == 3 then
	chatfunc("Take this.")
	end
	for i = 0, 2, 0.1 do
		swait()
				if Grabbed == true then
			grab.Humanoid.PlatformStand = true
			--GGyro.position = Partss.Position
			--GGyro.Parent = grab.Head
			grab.Torso.CFrame = Partss.CFrame * CFrame.Angles(0,math.rad(-90),0)
		end
		PlayAnimationFromTable({
         CFrame.new(0.104281992, -1.37529127e-22, -0.179345995, 0.249840975, 5.92156003e-22, 0.968286872, -5.57068883e-22, 1, -4.67813147e-22, -0.968286872, -4.22523594e-22, 0.249840975) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0791492164, 1.44711375, -0.0994036943, 0.0100336075, -0.292051941, -0.95634979, -0.000366999942, 0.956396878, -0.29207015, 0.999949574, 0.00328149647, 0.00948894024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.94523025, 1.02494264, -0.272673488, 0.287940055, -0.795002162, 0.533912063, 0.0434400104, -0.546107173, -0.836588264, 0.956662774, 0.264080375, -0.122711219) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.58139038, 0.176945746, 5.27966768e-06, 0.939729631, 0.341920435, -3.69548798e-06, -0.341920793, 0.93972975, -6.50105221e-06, -5.81145287e-07, 6.40749931e-06, 1.00000048) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.569345832, -1.89868093, -0.00942828506, 0.266425997, -0.0769406706, -0.960779786, 0.0135936281, 0.997010291, -0.0760724545, 0.963760078, 0.00720720552, 0.266675085) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.849354744, -2.01616573, 0.241646215, 0.948664129, 0.308412433, 0.0701368451, -0.312046438, 0.948832989, 0.0484089628, -0.0516182035, -0.0678096861, 0.996362925) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .1, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.0111939851, -1.63769794, -0.31875661, -0.0172049776, -1.39437616e-05, -0.999852121, 0.999852002, 5.96046448e-06, -0.0172049757, 6.16908073e-06, -1, 1.38394535e-05) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
	end
    Effects.Block.Create(BrickColor.new("Bright red"), Partss.CFrame, 2, 2, 2, 0.9, 0.9, 0.9, 0.05)
    Effects.Block.Create(BrickColor.new("Deep orange"), Partss.CFrame, 2, 2, 2, 0.5, 0.5, 0.5, 0.05)
    CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=136523485", Character, 1, .5)
    dmg(grab)
		grab.Head.Velocity = grab.Head.CFrame.lookVector * -60
	partasdeff.Enabled=true
	for i = 0, 1, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.104281992, -1.37529127e-22, -0.179345995, 0.249840975, 5.92156003e-22, 0.968286872, -5.57068883e-22, 1, -4.67813147e-22, -0.968286872, -4.22523594e-22, 0.249840975) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0791492164, 1.44711375, -0.0994036943, 0.0100336075, -0.292051941, -0.95634979, -0.000366999942, 0.956396878, -0.29207015, 0.999949574, 0.00328149647, 0.00948894024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.95760894, 1.20200562, -0.275867403, 0.278526366, -0.669772983, 0.688351095, 0.0506580099, -0.705469668, -0.706927419, 0.959091723, 0.23176837, -0.162562534) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.58139038, 0.176945746, 5.27966768e-06, 0.939729631, 0.341920435, -3.69548798e-06, -0.341920793, 0.93972975, -6.50105221e-06, -5.81145287e-07, 6.40749931e-06, 1.00000048) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.569345832, -1.89868093, -0.00942828506, 0.266425997, -0.0769406706, -0.960779786, 0.0135936281, 0.997010291, -0.0760724545, 0.963760078, 0.00720720552, 0.266675085) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.849354744, -2.01616573, 0.241646215, 0.948664129, 0.308412433, 0.0701368451, -0.312046438, 0.948832989, 0.0484089628, -0.0516182035, -0.0678096861, 0.996362925) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.0111932531, -1.63769579, -0.318755656, -0.0172050633, -1.61863863e-05, -0.999852121, 0.999851882, 5.15580177e-06, -0.017205067, 5.453825e-06, -1, 1.60960481e-05) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
	end
	partasdeff.Enabled=false
	for i = 0, 2.5, 0.1 do
		swait()	
		PlayAnimationFromTable({
         CFrame.new(0.104281992, -1.37529127e-22, -0.179345995, 0.249840975, 5.92156003e-22, 0.968286872, -5.57068883e-22, 1, -4.67813147e-22, -0.968286872, -4.22523594e-22, 0.249840975) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0791492164, 1.44711375, -0.0994036943, 0.0100336075, -0.292051941, -0.95634979, -0.000366999942, 0.956396878, -0.29207015, 0.999949574, 0.00328149647, 0.00948894024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.94523025, 1.02494264, -0.272673488, 0.287940055, -0.795002162, 0.533912063, 0.0434400104, -0.546107173, -0.836588264, 0.956662774, 0.264080375, -0.122711219) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.58139038, 0.176945746, 5.27966768e-06, 0.939729631, 0.341920435, -3.69548798e-06, -0.341920793, 0.93972975, -6.50105221e-06, -5.81145287e-07, 6.40749931e-06, 1.00000048) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.569345832, -1.89868093, -0.00942828506, 0.266425997, -0.0769406706, -0.960779786, 0.0135936281, 0.997010291, -0.0760724545, 0.963760078, 0.00720720552, 0.266675085) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.849354744, -2.01616573, 0.241646215, 0.948664129, 0.308412433, 0.0701368451, -0.312046438, 0.948832989, 0.0484089628, -0.0516182035, -0.0678096861, 0.996362925) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .2, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.0111939851, -1.63769794, -0.31875661, -0.0172049776, -1.39437616e-05, -0.999852121, 0.999852002, 5.96046448e-06, -0.0172049757, 6.16908073e-06, -1, 1.38394535e-05) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
	end
	coroutine.wrap(function()	
		wait(2)
	partasdeff:Remove()	
	end)()
		else
	grab.Humanoid.PlatformStand = false
	for i = 0, 3, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.104280457, -1.46030498e-22, -0.179343686, 0.249860913, 5.18448626e-22, 0.968281686, -5.82335151e-22, 1, -5.29395592e-22, -0.968281686, -3.70576914e-22, 0.249860913) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.00671941042, 1.48144531, -0.121562012, 0.0679168552, 0.388981611, -0.918738663, 0.158512011, 0.904961228, 0.394866198, 0.985018492, -0.172449201, -0.000196114182) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.5714488, -0.100437641, -0.219321564, 0.297819793, -0.653239965, -0.696118593, -0.0311920028, 0.722160041, -0.691022456, 0.954112411, 0.227513462, 0.194697708) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.5814501, 0.177012652, 5.41775626e-06, 0.939689815, 0.342028022, -2.68220901e-06, -0.342027992, 0.939689755, -6.1805149e-06, 4.17232513e-07, 6.72787428e-06, 1) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.569012046, -1.89856982, -0.00933695585, 0.266445845, -0.0764764398, -0.960811257, 0.0135949478, 0.997046292, -0.075590536, 0.963754177, 0.00707861409, 0.266698539) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.849534154, -2.01595497, 0.241721377, 0.948572636, 0.308689058, 0.070150286, -0.312330276, 0.948733151, 0.0485308319, -0.0515729487, -0.067945078, 0.996355295) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .1, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.0111981034, -1.63767779, -0.318741798, -0.0172085222, -1.4077872e-05, -0.999851882, 0.999851942, 7.4505806e-06, -0.0172085222, 7.68899918e-06, -1.00000012, 1.39512122e-05) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
	end
sel = math.random(1,3)
if sel == 1 then	
chatfunc("I'm so silly...")
elseif sel == 2 then	
chatfunc("What am i doing...")
elseif sel == 3 then
chatfunc("I can't...")
end
		for i = 0, 5, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0, 0, 0, 0.999999881, 5.04870979e-29, -4.21790838e-43, 5.04870979e-29, 1, -5.04870979e-29, -4.21790838e-43, -5.04870979e-29, 0.999999881) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0399715528, 1.42130852, -0.217550665, 0.985933542, -0.136098281, -0.097015582, 0.166522697, 0.849608123, 0.500436008, 0.0143167432, -0.509551942, 0.860320628) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0- .4 * math.cos((sine) / 5), 0), 
         CFrame.new(1.57258642, 0.0433240086, 3.83948304e-08, 0.990993857, -0.133906633, -2.60571618e-08, 0.133906662, 0.990993977, 5.96046341e-08, 1.78410318e-08, -6.25570422e-08, 0.999999881) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.693957031, 0.999676406, -0.811627388, 0.817211449, -0.569911301, -0.0858340934, -0.499626935, -0.626295447, -0.598442137, 0.287295371, 0.531934083, -0.796558976) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.540301144, -1.99792778, 1.70425119e-06, 0.998698354, -0.0510031469, 6.26438805e-07, 0.0510031544, 0.998698473, -1.04335422e-05, -9.34800966e-08, 1.04519122e-05, 0.999999881) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.539563119, -1.99793291, 1.9016752e-06, 0.998630941, 0.0523070693, -1.67712614e-07, -0.0523070768, 0.99863106, -1.0458818e-05, -3.79587107e-07, 1.04532719e-05, 0.999999881) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.0111991819, -1.63769639, -0.318748534, -0.0172109455, -5.96046448e-08, -0.999852002, 0.999852061, -1.19209318e-07, -0.0172108412, 5.96046519e-08, -0.99999994, -1.19209275e-07) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
	end
	end
	end
	--GGyro.Parent = nil
	attack = false
	Grabbed = false
	Humanoid.WalkSpeed = 8

end
function moarblood()
	attack = true
	CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=743521656", Character, 1, .8)
    RootPart.CFrame = targetted.Torso.CFrame * CFrame.new(0,0,4)
local k = New("Part",LeftArm,"k",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Transparency = 1,Transparency = 1,Shape = Enum.PartType.Cylinder,Size = Vector3.new(0.200000003, 0.221472204, 0.221472189),CFrame = CFrame.new(4.93319941, -1.31948221, -45.7696877, 0.141969427, -5.55023435e-05, -0.989871144, 0.989874005, 1.80069164e-05, 0.141970903, 1.06166653e-05, -1.00000143, 5.59078326e-05),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.105882, 0.164706, 0.207843),})
mot = New("Weld",k,"mot",{Part0 = k,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, 0.141969457, 0.989873946, 1.06166663e-05, -5.55023507e-05, 1.80069164e-05, -1.00000167, -0.989871264, 0.141970903, 5.59078399e-05),C1 = CFrame.new(6.67572021e-06, -1.40000057, -3.81469727e-06, 0.989870846, -0.14197053, -1.2531201e-06, 0.141970515, 0.989870906, 1.03843358e-05, -2.33842215e-07, -1.04570581e-05, 0.99999994),})
wait(.5)
	for i = 0, 1.2, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.0246932413, -0.0966757834, -0.0092370566, 0.713696778, 5.59592329e-22, 0.700454772, -9.27150216e-22, 1, 1.45779223e-22, -0.700454772, -7.53468894e-22, 0.713696778) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.098094359, 1.53651738, -0.281765848, 0.593379974, 0.280785412, -0.754360616, -0.0276839901, 0.943748772, 0.329502523, 0.804446399, -0.174636483, 0.567774832) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.58677018, 0.143787161, 0.0495693758, 0.968102753, -0.250522822, -0.00394502282, 0.250228018, 0.965921044, 0.0662006512, -0.0127741396, -0.0650762022, 0.997798622) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.74332106, 0.446618229, -0.859300971, 0.795205951, 0.606264353, -0.0095520094, -0.0538869984, 0.0549720451, -0.997032762, -0.603940368, 0.793361068, 0.0763838589) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.648194611, -1.97843742, -0.088139981, 0.954304218, -0.129303336, -0.269414723, 0.107585981, 0.989748061, -0.0939367935, 0.278798997, 0.0606590137, 0.958431959) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.671899676, -2.02211809, 0.00866907835, 0.94230175, 0.108399026, -0.316728801, -0.108764999, 0.993929207, 0.0165804606, 0.316603303, 0.0188252106, 0.948371291) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .2, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.0111978557, -1.63769853, -0.318748116, -0.0172083378, 3.06963921e-06, -0.999852002, 0.999851942, -2.01165676e-07, -0.0172083378, -2.4586916e-07, -1, -3.09944153e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
	end
	if targetted.Name ~= "CKbackup" then
	local grab = nil
	for i, v in pairs(FindNearestTorso(Torso.CFrame.p, 7)) do
		if v:FindFirstChild('Head') then
			Grabbed = true
			    CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=260430060", v.Head, 1, .8)
			grab = v
		end
	end
         Humanoid.WalkSpeed = 0
		for i = 0, 2, 0.1 do
		swait()
		if Grabbed == true then
			grab.Humanoid.PlatformStand = true
			--GGyro.position = Partss.Position
			--GGyro.Parent = grab.Head
			grab.Head.CFrame = k.CFrame * CFrame.Angles(0,math.rad(-90),0)
		end
		PlayAnimationFromTable({
         CFrame.new(-0.203895777, -0.0966757089, 0.221102715, 0.860356927, 5.59592329e-22, -0.509691954, -9.74120787e-23, 1, 9.33471908e-22, 0.509691954, -7.53468894e-22, 0.860356927) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0263810754, 1.49789393, -0.36129567, 0.83927381, -0.177804202, 0.513814509, -0.0293880031, 0.928800881, 0.369412124, -0.542914331, -0.325137854, 0.774292946) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.70567894, 0.192227185, 0.324310064, 0.910149336, -0.402004361, -0.100104719, 0.41140601, 0.848634601, 0.332512379, -0.0487190783, -0.343819588, 0.937771142) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.925376594, 0.275374949, -0.912649989, 0.847262561, -0.507846355, 0.155686736, 0.278232396, 0.17463918, -0.944503605, 0.452473402, 0.84355998, 0.289265245) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.648186982, -1.97843516, -0.0881449506, 0.954305232, -0.129303262, -0.269411147, 0.107586049, 0.989748061, -0.0939371213, 0.278795511, 0.0606598109, 0.958432913) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.671897829, -2.02211738, 0.00865991414, 0.942302644, 0.108399101, -0.316726208, -0.108764961, 0.993929207, 0.0165806562, 0.31660068, 0.0188247077, 0.948372126) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .25, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.0111928731, -1.63769662, -0.318741947, -0.0172089636, 8.2552433e-06, -0.999852061, 0.999852061, 7.4505806e-07, -0.0172089189, 5.66244125e-07, -1.00000012, -8.2552433e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
		end
		if Grabbed == true then
				sel = math.random(1,3)
	if sel == 1 then	
	chatfunc("No regret?")
	elseif sel == 2 then	
	chatfunc("Too easy.")
	elseif sel == 3 then
	chatfunc("Can't struggle?")
	end
			local partasdeff = Instance.new("ParticleEmitter",targetted.Head)
			partasdeff.Color = ColorSequence.new(Color3.new(1, 0, 0), Color3.new(.5, 0, 0))
			partasdeff.LightEmission = .1
			partasdeff.Size = NumberSequence.new(0.2)
			partasdeff.Texture = "http://www.roblox.com/asset/?ID=771221224"
			aaa = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2),NumberSequenceKeypoint.new(1, 5)})
			bbb = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.0636, 0), NumberSequenceKeypoint.new(1, 1)})
			partasdeff.Transparency = bbb
			partasdeff.Size = aaa
			partasdeff.ZOffset = .9
			partasdeff.Acceleration = Vector3.new(0, -5, 0)
			partasdeff.LockedToPart = false
			partasdeff.EmissionDirection = "Back"
			partasdeff.Lifetime = NumberRange.new(1, 2)
			partasdeff.Rate = 1000
			partasdeff.Rotation = NumberRange.new(-100, 100)
			partasdeff.RotSpeed = NumberRange.new(-100, 100)
			partasdeff.Speed = NumberRange.new(6)
			partasdeff.VelocitySpread = 10000
			partasdeff.Enabled=false	
	for i = 0, 3, 0.1 do
		swait()
		if Grabbed == true then
			grab.Humanoid.PlatformStand = true
			--GGyro.position = Partss.Position
			--GGyro.Parent = grab.Head
			grab.Head.CFrame = k.CFrame * CFrame.Angles(0,math.rad(-90),0)
		end
		PlayAnimationFromTable({
         CFrame.new(-0.203895777, -0.0966757089, 0.221102715, 0.860356927, 5.59592329e-22, -0.509691954, -9.74120787e-23, 1, 9.33471908e-22, 0.509691954, -7.53468894e-22, 0.860356927) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.0996288583, 1.46053851, -0.148588806, 0.834862471, 0.0359686315, 0.549282432, -0.0103890011, 0.998714745, -0.0496083908, -0.550360739, 0.0357096791, 0.83416307) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.70567894, 0.192227185, 0.324310064, 0.910149336, -0.402004361, -0.100104719, 0.41140601, 0.848634601, 0.332512379, -0.0487190783, -0.343819588, 0.937771142) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.5511272, 1.22937977, -0.634234905, 0.785770595, 0.333147645, 0.521131098, 0.522403002, -0.808557391, -0.270795107, 0.331149668, 0.485022962, -0.809378147) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.648186982, -1.97843516, -0.0881449506, 0.954305232, -0.129303262, -0.269411147, 0.107586049, 0.989748061, -0.0939371213, 0.278795511, 0.0606598109, 0.958432913) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.684103072, -2.02189779, 0.0673112273, 0.973016024, 0.108399175, -0.203689545, -0.109960191, 0.993929327, 0.00367253274, 0.202851087, 0.0188243091, 0.979028702) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .1, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.0111928731, -1.63769662, -0.318741947, -0.0172089636, 8.2552433e-06, -0.999852061, 0.999852061, 7.4505806e-07, -0.0172089189, 5.66244125e-07, -1.00000012, -8.2552433e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
	end
	partasdeff.Enabled=true
	grab.Torso.Transparency = 1
	dmg(grab)
	CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=206082273", grab.Head, .8, .8)
	CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=206082327", grab.Head, 1, .7)
	
	coroutine.wrap(function()
	wait(.4)
	partasdeff.Enabled=false
	end)()
	for i = 0, 3.5, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(-0.203895777, -0.0966757089, 0.221102715, 0.860356927, 5.59592329e-22, -0.509691954, -9.74120787e-23, 1, 9.33471908e-22, 0.509691954, -7.53468894e-22, 0.860356927) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.0996288583, 1.46053851, -0.148588806, 0.834862471, 0.0359686315, 0.549282432, -0.0103890011, 0.998714745, -0.0496083908, -0.550360739, 0.0357096791, 0.83416307) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.70567894, 0.192227185, 0.324310064, 0.910149336, -0.402004361, -0.100104719, 0.41140601, 0.848634601, 0.332512379, -0.0487190783, -0.343819588, 0.937771142) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.40260935, 1.29555511, -0.560751677, 0.832364976, 0.188659444, 0.521130562, 0.370884001, -0.88832134, -0.2707977, 0.411842346, 0.418681324, -0.809378505) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.648186982, -1.97843516, -0.0881449506, 0.954305232, -0.129303262, -0.269411147, 0.107586049, 0.989748061, -0.0939371213, 0.278795511, 0.0606598109, 0.958432913) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.684103072, -2.02189779, 0.0673112273, 0.973016024, 0.108399175, -0.203689545, -0.109960191, 0.993929327, 0.00367253274, 0.202851087, 0.0188243091, 0.979028702) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.0111928731, -1.63769662, -0.318741947, -0.0172089636, 8.2552433e-06, -0.999852061, 0.999852061, 7.4505806e-07, -0.0172089189, 5.66244125e-07, -1.00000012, -8.2552433e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
	end
	end
	else
         Humanoid.WalkSpeed = 0
	for i = 0, 3, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.0246932413, -0.0966757834, -0.0092370566, 0.713696778, 5.59592329e-22, 0.700454772, -9.27150216e-22, 1, 1.45779223e-22, -0.700454772, -7.53468894e-22, 0.713696778) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.098094359, 1.53651738, -0.281765848, 0.593379974, 0.280785412, -0.754360616, -0.0276839901, 0.943748772, 0.329502523, 0.804446399, -0.174636483, 0.567774832) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.58677018, 0.143787161, 0.0495693758, 0.968102753, -0.250522822, -0.00394502282, 0.250228018, 0.965921044, 0.0662006512, -0.0127741396, -0.0650762022, 0.997798622) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.74332106, 0.446618229, -0.859300971, 0.795205951, 0.606264353, -0.0095520094, -0.0538869984, 0.0549720451, -0.997032762, -0.603940368, 0.793361068, 0.0763838589) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.648194611, -1.97843742, -0.088139981, 0.954304218, -0.129303336, -0.269414723, 0.107585981, 0.989748061, -0.0939367935, 0.278798997, 0.0606590137, 0.958431959) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.671899676, -2.02211809, 0.00866907835, 0.94230175, 0.108399026, -0.316728801, -0.108764999, 0.993929207, 0.0165804606, 0.316603303, 0.0188252106, 0.948371291) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .2, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.0111978557, -1.63769853, -0.318748116, -0.0172083378, 3.06963921e-06, -0.999852002, 0.999851942, -2.01165676e-07, -0.0172083378, -2.4586916e-07, -1, -3.09944153e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
	end	
sel = math.random(1,3)
if sel == 1 then	
chatfunc("Aahhh...")
elseif sel == 2 then	
chatfunc("Oh Sugarie, I thought you're enemy...")
elseif sel == 3 then
chatfunc("Sigh...")
end
	for i = 0, 5, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0, 0, 0, 0.999999881, 5.04870979e-29, -4.21790838e-43, 5.04870979e-29, 1, -5.04870979e-29, -4.21790838e-43, -5.04870979e-29, 0.999999881) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0399715528, 1.42130852, -0.217550665, 0.985933542, -0.136098281, -0.097015582, 0.166522697, 0.849608123, 0.500436008, 0.0143167432, -0.509551942, 0.860320628) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0- .4 * math.cos((sine) / 5), 0), 
         CFrame.new(1.57258642, 0.0433240086, 3.83948304e-08, 0.990993857, -0.133906633, -2.60571618e-08, 0.133906662, 0.990993977, 5.96046341e-08, 1.78410318e-08, -6.25570422e-08, 0.999999881) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.693957031, 0.999676406, -0.811627388, 0.817211449, -0.569911301, -0.0858340934, -0.499626935, -0.626295447, -0.598442137, 0.287295371, 0.531934083, -0.796558976) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.540301144, -1.99792778, 1.70425119e-06, 0.998698354, -0.0510031469, 6.26438805e-07, 0.0510031544, 0.998698473, -1.04335422e-05, -9.34800966e-08, 1.04519122e-05, 0.999999881) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.539563119, -1.99793291, 1.9016752e-06, 0.998630941, 0.0523070693, -1.67712614e-07, -0.0523070768, 0.99863106, -1.0458818e-05, -3.79587107e-07, 1.04532719e-05, 0.999999881) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.0111991819, -1.63769639, -0.318748534, -0.0172109455, -5.96046448e-08, -0.999852002, 0.999852061, -1.19209318e-07, -0.0172108412, 5.96046519e-08, -0.99999994, -1.19209275e-07) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
	end
	end
	attack = false
	Grabbed = false	
	k:Remove()
         Humanoid.WalkSpeed = 8
end

function painlessrain()
attack = true
    Humanoid.WalkSpeed = 0
   local ref1 = New("Part",m,"ref",{Transparency = 1,Size = Vector3.new(.2,.2,.2),CFrame = Torso.CFrame,Anchored = true,CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})

	coroutine.wrap(function()
	for i = 0, 4 do
	wait(.2)
	CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=199145095", RootPart, 1, 1.3)
	end
	end)()
	for i = 0, 4, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.160091802, -3.66497677e-23, -0.0753167868, 0.153125972, 2.95760942e-22, 0.988206744, 9.50910858e-23, 1, -3.14025256e-22, -0.988206744, 1.42055005e-22, 0.153125986) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.115934461, 1.42953098, -0.0387745127, 0.0422455594, -0.156738758, -0.986736298, 0.091215007, 0.984098434, -0.152414545, 0.994934857, -0.083566308, 0.0558707118) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.88563442, 0.849646449, -0.150348112, 0.134151325, -0.917590559, 0.374207288, 0.151069015, -0.354270071, -0.922860146, 0.979378283, 0.180334046, 0.0910937041) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.53188074, 0.0735950321, 2.69606994e-06, 0.978446901, 0.206499115, 2.48849392e-06, -0.2064991, 0.978446841, -1.05276868e-05, -4.61935997e-06, 9.78447497e-06, 1.00000012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.6596874, -2.0274992, -0.0100709619, 0.00881013274, -0.161221251, -0.986878991, 0.00903601572, 0.986890376, -0.161142424, 0.999920428, -0.0074977763, 0.0101515204) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.56669867, -2.04759455, -0.0995163321, 0.988194227, 0.0786855519, 0.131456956, -0.0635150596, 0.991232872, -0.115859069, -0.139420897, 0.106141761, 0.984528303) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .07, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.00354172289, -1.19249964, -0.318736732, -0.017209189, -1.8668361e-06, -0.999851942, 0.999851882, 1.90734863e-06, -0.0172091946, 1.93715096e-06, -1.00000012, 1.82725489e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, math.rad(doe * 22)), 0.3)
	end
	for i = 0, 1.5, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.160091802, -3.66497677e-23, -0.0753167868, 0.153125972, 2.95760942e-22, 0.988206744, 9.50910858e-23, 1, -3.14025256e-22, -0.988206744, 1.42055005e-22, 0.153125986) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.181723118, 1.42154801, -0.0812263489, 0.0422911495, -0.473342478, -0.879862845, 0.0912349299, 0.878800809, -0.468385875, 0.994931221, -0.0604656339, 0.0803508535) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.46608233, 1.280774, -0.0335922651, 0.00761340559, -0.0420075022, 0.999088407, 0.0443810038, -0.998118579, -0.0423049256, 0.998985708, 0.044662632, -0.00573477149) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.53188074, 0.0735950321, 2.69606994e-06, 0.978446901, 0.206499115, 2.48849392e-06, -0.2064991, 0.978446841, -1.05276868e-05, -4.61935997e-06, 9.78447497e-06, 1.00000012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.6596874, -2.0274992, -0.0100709619, 0.00881013274, -0.161221251, -0.986878991, 0.00903601572, 0.986890376, -0.161142424, 0.999920428, -0.0074977763, 0.0101515204) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.56669867, -2.04759455, -0.0995163321, 0.988194227, 0.0786855519, 0.131456956, -0.0635150596, 0.991232872, -0.115859069, -0.139420897, 0.106141761, 0.984528303) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .2, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.0112083405, -1.63769615, -0.31873402, -0.0172121376, -2.89082527e-06, -0.999851882, 0.999851942, 4.58210707e-07, -0.0172121413, 5.06639481e-07, -1.00000012, 2.89082527e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
	end
	for i = 0, 3 do
    Effects.Block.Create(BrickColor.new("Bright red"), Partss.CFrame, 2, 2, 2, 0.9, 0.9, 0.9, 0.05)
    Effects.Block.Create(BrickColor.new("Deep orange"), Partss.CFrame, 2, 2, 2, 0.5, 0.5, 0.5, 0.05)
    CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=136523485", Character, 1, .5)
	for i = 0, .5, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.160087422, -3.66470256e-23, -0.0753137618, 0.15316838, 2.95750466e-22, 0.988200247, 9.50818972e-23, 1, -3.14019425e-22, -0.988200247, 1.42057819e-22, 0.15316838) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.181723118, 1.42154801, -0.0812263489, 0.0422911495, -0.473342478, -0.879862845, 0.0912349299, 0.878800809, -0.468385875, 0.994931221, -0.0604656339, 0.0803508535) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.46630716, 1.08524323, -0.0336530581, 0.00764143467, -0.0426861309, 0.999059498, 0.0445286781, -0.998082876, -0.0429849848, 0.998979032, 0.0448152684, -0.0057259798) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.53188026, 0.0735908896, 2.69562906e-06, 0.978447855, 0.206495479, 2.48849392e-06, -0.206495419, 0.978447556, -1.05270137e-05, -4.61935997e-06, 9.78633761e-06, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.659685254, -2.0274992, -0.0100700259, 0.00885757804, -0.161218897, -0.986879349, 0.00904085487, 0.986890197, -0.161139548, 0.999920309, -0.00749491528, 0.0101990253) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.566697419, -2.04759264, -0.0995131433, 0.988195002, 0.078684561, 0.131453067, -0.0635149851, 0.991233289, -0.115855575, -0.139416695, 0.106138662, 0.984529436) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.0112046078, -1.63744116, -0.318734497, -0.0172122065, 2.46167183e-05, -0.999852002, 0.999850631, -0.00159030408, -0.0172121339, -0.00159040466, -0.999998927, 2.57790089e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
	end
	for i = 0, .5, 0.1 do
		swait()
		PlayAnimationFromTable({
         CFrame.new(0.160091802, -3.66497677e-23, -0.0753167868, 0.153125972, 2.95760942e-22, 0.988206744, 9.50910858e-23, 1, -3.14025256e-22, -0.988206744, 1.42055005e-22, 0.153125986) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.181723118, 1.42154801, -0.0812263489, 0.0422911495, -0.473342478, -0.879862845, 0.0912349299, 0.878800809, -0.468385875, 0.994931221, -0.0604656339, 0.0803508535) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.46608233, 1.280774, -0.0335922651, 0.00761340559, -0.0420075022, 0.999088407, 0.0443810038, -0.998118579, -0.0423049256, 0.998985708, 0.044662632, -0.00573477149) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.53188074, 0.0735950321, 2.69606994e-06, 0.978446901, 0.206499115, 2.48849392e-06, -0.2064991, 0.978446841, -1.05276868e-05, -4.61935997e-06, 9.78447497e-06, 1.00000012) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.6596874, -2.0274992, -0.0100709619, 0.00881013274, -0.161221251, -0.986878991, 0.00903601572, 0.986890376, -0.161142424, 0.999920428, -0.0074977763, 0.0101515204) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.56669867, -2.04759455, -0.0995163321, 0.988194227, 0.0786855519, 0.131456956, -0.0635150596, 0.991232872, -0.115859069, -0.139420897, 0.106141761, 0.984528303) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.0112083405, -1.63769615, -0.31873402, -0.0172121376, -2.89082527e-06, -0.999851882, 0.999851942, 4.58210707e-07, -0.0172121413, 5.06639481e-07, -1.00000012, 2.89082527e-06) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
	end
	end
attack = false
Humanoid.WalkSpeed = 8
		wait(.4)
	for i = 0, 8 do
		wait(.2)
		mdmg(ref1, 3)
        CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=192410089", Character, 1.5, .7)		
		ref1.Position = Mouse.hit.p
		ref1.CFrame = ref1.CFrame * CFrame.new(math.random(-.5,.5),0,math.random(-.5,.5))
        Effects.Cylinder.Create(BrickColor.new("Deep orange"), ref1.CFrame, .5, 9999, .5, 0.5, 0, 0.5, 0.07)
	end
	ref1:Remove()
end

function TargetSelect(person)
local dd=coroutine.wrap(function()
if targetted ~= person then
targetted = person
img2.Size = UDim2.new(1,0,1,0)
img2.ImageTransparency = 0
img2.Position = UDim2.new(0,0,0,0)
for i = 0, 2, 0.1 do
swait()
img2.Size = img2.Size + UDim2.new(.05,0,.05,0)
img2.Position = img2.Position + UDim2.new(-.025,0,-.025,0)
img2.ImageTransparency = img2.ImageTransparency + 0.05
end
end
end)
dd()
end

function LockOn()
if Mouse.Target.Parent ~= Character and Mouse.Target.Parent.Parent ~= Character and Mouse.Target.Parent:FindFirstChild("Humanoid") ~= nil then
TargetSelect(Mouse.Target.Parent)
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=743521450", Character, 1, .8)
end
end


function ofmoosic() -- 2 lazi hoh
delays = true
while wait() and kkk and kkk.Volume >= 0.02 do
	kkk.Volume = kkk.Volume - 0.05
end
wait(0.1)
kkk.Pitch = 0
kkk.PlaybackSpeed = 0
play = false
delays = false
end
function onmoosic()
delays = true
kkk.Pitch = .6
kkk.PlaybackSpeed = .6
while wait() and kkk and kkk.Volume <= 1.5 do
	kkk.Volume = kkk.Volume + 0.05
end
wait(0.1)
play = true
delays = false
end
Mouse.Button1Down:connect(function()
	if attack == false and targetted ~= nil then
		attackone()
	end
end)

Mouse.KeyDown:connect(function(k)
	k = k:lower()
	if attack == false and k == 'q' then
	LockOn()
	end
	if k == 'z' and attack == false then	
	hedshoot()
	elseif k == 'x' and attack == false and targetted ~= nil then
	moarblood()
	elseif k == 'c' and attack == false then
	painlessrain()
	elseif k == 'g' and delays == false and Character.Name == "grgrgry21" then
	delays = true
	chatfunc("Hey Sugarie...")
	wait(2)
	chatfunc("I want to tell you...")
	wait(3)
	chatfunc("Be my...")
	wait(1)
	chatfunc("Sacri-")
	wait(.5)
	chatfunc("I mean...")
	wait(1)
	chatfunc("Friend, Okay...?")
	delays = false
    elseif k == 'm' and play == true and delays == false then
	ofmoosic()
	elseif k == 'm' and play == false and delays == false then
	onmoosic()
	end
end)

kkk = Instance.new("Sound",Character)
kkk.Volume = 1.5
kkk.PlaybackSpeed = 1
kkk.Pitch = .6
kkk.SoundId = "rbxassetid://583415095"
kkk:Play()
kkk.Name = "a"
kkk.Looped = true


coroutine.wrap(function()
while true do
swait()
	for i, v in pairs(Character.WeaponModel:GetChildren()) do
		if v:IsA("Part") then
		v.Anchored = false
		end
		end
	for i, v in pairs(Character:GetChildren()) do
		if v:IsA("Part") then
		v.Anchored = false
		elseif v:IsA("Accessory") then
		v.Handle.Anchored = false
		end
		end
end
end)()
coroutine.wrap(function()
while 1 do
swait()
if doe <= 360 then
	doe = doe + 2
else
	doe = 0
end
end
end)()
while true do
	swait()
	for i, v in pairs(Character:GetChildren()) do
		if v:IsA("Part") then
			v.Material = "SmoothPlastic"
		elseif v:IsA("Accessory") then
			v:WaitForChild("Handle").Material = "SmoothPlastic"
		end
	end
while true do
swait()
Character.Humanoid.MaxHealth = math.huge
Character.Humanoid.Health = math.huge
imgl.Rotation = imgl.Rotation + 3
img2.Rotation = img2.Rotation + 3
if targetted ~= nil then
abss.Adornee = targetted:FindFirstChild("Torso") or targetted:FindFirstChild("UpperTorso")
abss.Enabled = true
elseif targetted == nil then
abss.Adornee = nil
abss.Enabled = false
end

while true and imgl.Rotation >= 360 do
imgl.Rotation = 0	
img2.Rotation = 0
end
	Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
	velocity = RootPart.Velocity.y
	sine = sine + change
	local hit, pos = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
		if RootPart.Velocity.y > 1 and hit == nil then 
			Anim = "Jump"
			if attack == false then
		PlayAnimationFromTable({
         CFrame.new(0, 0, 0, 1, -2.21689355e-12, -5.11591203e-13, -2.21689355e-12, 1, 7.74860496e-07, -5.11591203e-13, 7.74860496e-07, 1.00000048) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0579944476, 1.48445117, -0.000906195492, 0.999631822, -0.0259140469, -0.00804444961, 0.0262291897, 0.998776913, 0.0419151038, 0.0069484422, -0.0421099029, 0.999089062) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.68067598, 0.167780995, 5.50026158e-08, 0.965881884, -0.258982956, -3.41060513e-13, 0.258982956, 0.965881884, 4.47034836e-07, 8.49010675e-08, 3.16640808e-07, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.67620921, 0.188169807, -3.04922651e-07, 0.95698452, 0.290146649, -2.61441073e-07, -0.290146649, 0.95698452, -1.0069979e-05, -2.89639524e-06, 1.04542296e-05, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.537238836, -1.93797374, 0.176598221, 0.998698533, -0.0506777391, -0.00574572897, 0.0510024093, 0.992341697, 0.112511501, -6.35704041e-08, -0.112657718, 0.993634105) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.536944568, -1.94808352, 0.126473114, 0.998626292, 0.0520468242, 0.00521374354, -0.0523067154, 0.993665218, 0.0995327011, -3.84102691e-07, -0.099668026, 0.995023906) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.0111988392, -1.63769972, -0.318750381, -0.0172117054, 0, -0.999851942, 0.999851942, 0, -0.0172116756, 0, -1, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
					end
		elseif RootPart.Velocity.y < -1 and hit == nil then 
			Anim = "Fall"
			if attack == false then
		PlayAnimationFromTable({
         CFrame.new(0, 0, 0, 1, -2.21689355e-12, -5.11591203e-13, -2.21689355e-12, 1, 7.74860496e-07, -5.11591203e-13, 7.74860496e-07, 1.00000048) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0576509275, 1.50532985, -0.129091382, 0.999631822, -0.0231846143, -0.0140984114, 0.0262298863, 0.958684564, 0.283279002, 0.00694822101, -0.283544153, 0.958935201) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.68622994, 0.21415168, 7.02040666e-08, 0.881990671, -0.471266806, -3.41060513e-13, 0.471266806, 0.881990671, 4.47034836e-07, 1.54493137e-07, 2.89139166e-07, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-1.72513735, 0.240890861, 2.54038241e-07, 0.814108491, 0.58071363, -2.61430017e-07, -0.580713034, 0.814108849, -1.00698489e-05, -6.08482924e-06, 8.98058715e-06, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.536720514, -1.92783141, 0.223740995, 0.998698533, -0.0498600565, -0.0107376017, 0.0510031059, 0.976314366, 0.210260883, -3.04512355e-07, -0.210534185, 0.977587521) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.535922825, -1.92850935, 0.222419083, 0.99863112, 0.0512506701, 0.0104565797, -0.0523065142, 0.978474379, 0.199629858, -3.7062793e-07, -0.199902818, 0.97981596) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.0112015437, -1.63769758, -0.318750381, -0.0172110498, 0, -0.999851942, 0.999851942, 0, -0.0172110498, 0, -1, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
					end
		elseif Torsovelocity < 1 and hit ~= nil then
			Anim = "Idle"
			if attack == false then
				change = 1
		PlayAnimationFromTable({
         CFrame.new(0, 0, 0, 1, -2.21689355e-12, -5.11591203e-13, -2.21689355e-12, 1, 7.74860496e-07, -5.11591203e-13, 7.74860496e-07, 1.00000048) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0575585738, 1.52553558, -0.218724757, 0.985934377, -0.143356442, -0.0859283879, 0.166522771, 0.886584163, 0.431554198, 0.0143168001, -0.439792335, 0.897985697) * CFrame.new(0, -.05- .05 * math.cos((sine) / 55), 0- .05 * math.cos((sine) / 55)) * CFrame.Angles(math.rad(0 - 5 * math.cos((sine) / 55)), 0, 0), 
         CFrame.new(1.54809988, 0.041232653, 1.35168499e-08, 0.996376455, -0.0850530341, -3.41060513e-13, 0.0850530341, 0.996376455, 4.47034836e-07, 2.78823862e-08, 3.26637689e-07, 1.00000024) * CFrame.new(0- 0.025 * math.cos((sine) / 45), 0, 0) * CFrame.Angles(0, 0, 0- 0.05 * math.cos((sine) / 45)), 
         CFrame.new(-1.53598976, 0.0413191095, -1.86092848e-06, 0.995650649, 0.0931596532, -2.61508148e-07, -0.0931649953, 0.995651186, -1.00695124e-05, -7.49969331e-07, 1.08217946e-05, 1.00000024) * CFrame.new(0+ 0.025 * math.cos((sine) / 45), 0, 0) * CFrame.Angles(0, 0, 0+ 0.05 * math.cos((sine) / 45)), 
         CFrame.new(0.540300786, -1.99793816, -9.82598067e-07, 0.998698533, -0.0510031395, 6.36324955e-07, 0.0510031395, 0.998698533, -1.00461093e-05, -8.35937328e-08, 1.08393433e-05, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.539563596, -1.99794078, 1.12228372e-06, 0.998635888, 0.0523072146, -1.77852357e-07, -0.0523072146, 0.998635888, -1.00715051e-05, -3.89727461e-07, 1.08406466e-05, 1.00000024) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.0111980997, -1.6377027, -0.318750381, -0.0172109306, 0, -0.999851882, 0.999851882, 0, -0.0172109306, 0, -1, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
			end
		elseif Torsovelocity > 2 and hit ~= nil then
			Anim = "Walk"
			if attack == false then
		PlayAnimationFromTable({		
         CFrame.new(0, 0, 0, 1, -2.21689355e-12, -5.11591203e-13, -2.21689355e-12, 1, 7.74860496e-07, -5.11591203e-13, 7.74860496e-07, 1.00000048) * CFrame.new(0, 0- .08 * math.cos((sine) / 5), 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.0595112406, 1.55331731, -0.0425721854, 0.999631822, -0.0248252042, -0.010953242, 0.0262294486, 0.987443328, 0.155781403, 0.00694842171, -0.156010598, 0.987731278) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 
         CFrame.new(1.54809988, 0.041232653, 1.35168499e-08, 0.996376455, -0.0850530341, -3.41060513e-13, 0.0850530341, 0.996376455, 4.47034836e-07, 2.78823862e-08, 3.26637689e-07, 1.00000024) * CFrame.new(0, 0, 0- .5 * math.cos((sine) / 10)) * CFrame.Angles(math.rad(0 + 30 * math.cos((sine) / 10)), 0, 0), 
         CFrame.new(-1.53598976, 0.0413191095, -1.86092848e-06, 0.995650649, 0.0931596532, -2.61508148e-07, -0.0931649953, 0.995651186, -1.00695124e-05, -7.49969331e-07, 1.08217946e-05, 1.00000024) * CFrame.new(0, 0, 0+ .5 * math.cos((sine) / 10)) * CFrame.Angles(math.rad(0 - 30 * math.cos((sine) / 10)), 0, 0), 
         CFrame.new(0.540300786, -1.99793816, -9.82598067e-07, 0.998698533, -0.0510031395, 6.36324955e-07, 0.0510031395, 0.998698533, -1.00461093e-05, -8.35937328e-08, 1.08393433e-05, 1.00000024) * CFrame.new(0, 0, 0+ .5 * math.cos((sine) / 10)) * CFrame.Angles(math.rad(0 - 30 * math.cos((sine) / 10)), 0, 0), 
         CFrame.new(-0.539563596, -1.99794078, 1.12228372e-06, 0.998635888, 0.0523072146, -1.77852357e-07, -0.0523072146, 0.998635888, -1.00715051e-05, -3.89727461e-07, 1.08406466e-05, 1.00000024) * CFrame.new(0, 0, 0- .5 * math.cos((sine) / 10)) * CFrame.Angles(math.rad(0 + 30 * math.cos((sine) / 10)), 0, 0), 
		}, .3, false)
		moter.C0 = clerp(moter.C0, CFrame.new(0.0111980997, -1.6377027, -0.318750381, -0.0172109306, 0, -0.999851882, 0.999851882, 0, -0.0172109306, 0, -1, 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
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
						local move = 30
						if Thing[8] == 3 then
							move = 10
						end
						local hit, pos = rayCast(Thing[4], Thing[1], move, m)
						if Thing[10] ~= nil then
							da = pos
							cf2 = CFrame.new(Thing[4], Thing[10].Position)
							cfa = CFrame.new(Thing[4], pos)
							tehCF = cfa:lerp(cf2, 0.2)
							Thing[1] = tehCF.lookVector
						end
						local mag = (Thing[4] - pos).magnitude
						Effects["Head"].Create(Torso.BrickColor, CFrame.new((Thing[4] + pos) / 2, pos) * CFrame.Angles(1.57, 0, 0), 1, mag * 5, 1, 0.5, 0, 0.5, 0.2)
						if Thing[8] == 2 then
							Effects["Ring"].Create(Torso.BrickColor, CFrame.new((Thing[4] + pos) / 2, pos) * CFrame.Angles(1.57, 0, 0) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0), 1, 1, 0.1, 0.5, 0.5, 0.1, 0.1, 1)
						end
						Thing[4] = Thing[4] + Look * move
						Thing[3] = Thing[3] - 1
						if 2 < Thing[5] then
							Thing[5] = Thing[5] - 0.3
							Thing[6] = Thing[6] - 0.3
						end
						if hit ~= nil then
							Thing[3] = 0
							if Thing[8] == 1 or Thing[8] == 3 then
								Damage(hit, hit, Thing[5], Thing[6], Thing[7], "Normal", RootPart, 0, "", 1)
							else
								if Thing[8] == 2 then
									Damage(hit, hit, Thing[5], Thing[6], Thing[7], "Normal", RootPart, 0, "", 1)
									if (hit.Parent:findFirstChild("Humanoid")) ~= nil or (hit.Parent.Parent:findFirstChild("Humanoid")) ~= nil then
										ref = CFuncs.Part.Create(workspace, "Neon", 0, 1, BrickColor.new("Really red"), "Reference", Vector3.new())
										ref.Anchored = true
										ref.CFrame = CFrame.new(pos)
										CFuncs["Sound"].Create("161006093", ref, 1, 1.2)
										game:GetService("Debris"):AddItem(ref, 0.2)
										Effects["Block"].Create(Torso.BrickColor, CFrame.new(ref.Position) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 10, 10, 10, 0.1, 2)
										Effects["Ring"].Create(BrickColor.new("Bright yellow"), CFrame.new(ref.Position) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 0.1, 4, 4, 0.1, 0.1)
										MagnitudeDamage(ref, 15, Thing[5] / 1.5, Thing[6] / 1.5, 0, "Normal", "", 1)
									end
								end
							end
							ref = CFuncs.Part.Create(workspace, "Neon", 0, 1, BrickColor.new("Really red"), "Reference", Vector3.new())
							ref.Anchored = true
							ref.CFrame = CFrame.new(pos)
							Effects["Sphere"].Create(Torso.BrickColor, CFrame.new(pos), 5, 5, 5, 1, 1, 1, 0.07)
							game:GetService("Debris"):AddItem(ref, 1)
						end
						if Thing[3] <= 0 then
							table.remove(Effects, e)
						end
					end
					do
						do
							if Thing[2] == "FireWave" then
								if Thing[3] <= Thing[4] then
									Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(0, 1, 0)
									Thing[3] = Thing[3] + 1
									Thing[6].Scale = Thing[6].Scale + Vector3.new(Thing[5], 0, Thing[5])
								else
									Part.Parent = nil
									table.remove(Effects, e)
								end
							end
							if Thing[2] ~= "Shoot" and Thing[2] ~= "Wave" and Thing[2] ~= "FireWave" then
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
											if Thing[2] == "Fire" then
												Thing[1].CFrame = CFrame.new(Thing[1].Position) + Vector3.new(0, 0.2, 0)
												Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
												Thing[1].Transparency = Thing[1].Transparency + Thing[3]
											else
												if Thing[2] == "Cylinder" then
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
															else
																if Thing[2] == "Shatter" then
														Thing[1].Transparency = Thing[1].Transparency + Thing[3]
														Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
														Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
														Thing[6] = Thing[6] + Thing[5]
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

