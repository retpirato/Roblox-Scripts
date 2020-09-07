--[[Floaty thing by SezHu.

If you want a creation like this of your own, shoot me a friend request me on Discord! (Sezzie
#1875) Prices start at 250 robux.]]--


local songs = {
	653700917,    --Sunset Lover
	1525113279,  --Slow
	1389286403,   --Chill 2
	692796920,   --Soul Food
        1137575800,   --Burn Marks
        852365754,  
        1388205829,   --D r o w z y 
        566546592,   --S a y o n a r a
        1446511374,   --Oracle
	} --Add your songs by replacing the IDs with your song ID.


local quotes = {
	"Something to relax to..",
	"Yawn..",
	"Just floatin'~",
	"Going up~",
	"I like this song..",
        "Time to kick back..",
        "^w^",
	} --Feel free to replace the quotes with stuff of your own.


local function soundbork(obj)
   if obj:IsA("Sound") and obj.Name ~= "playlist" then
--obj:Destroy() Remove the two dashes to silence all music but your own.
      return
   end


   local children = obj:GetChildren()
   for i = 1, #children do
    soundbork(children[i])
   end
   
   return
end

--//Constants\\--

Effects = { }
local Player = game.Players.localPlayer
local Mouse = Player:GetMouse()
local Character = Player.Character
local Humanoid = Character.Humanoid
local Head = Character.Head
local RootPart = Character.HumanoidRootPart
local Torso = Character.Torso
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Camera = game.Workspace.CurrentCamera
local RootJoint = RootPart.RootJoint
local Equipped = false
local Attack = false
local Anim = 'Idle'
local Idle = 0
local Combo = 1
local TorsoVelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
local Velocity = RootPart.Velocity.y
local Sine = 0
local Change = 1
local aoeconstant = 10
local maincol = "Pink"
local maincol2 = "White"
local randString = songs[math.random(#songs)]
local circleinthesky = false
Character.Humanoid.Name = "help"
humanoid = Character.help
Instance.new("ForceField",Character).Visible = false





local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

humanoid.WalkSpeed = 3
humanoid.JumpPower = 0
humanoid.Animator.Parent = nil
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


skillcolorscheme = BrickColor.new(maincol).Color

local hue = 0

spawn(function()
while true do
    hue = hue + .0005
    if hue >= 1 then hue = 0 end
        maincol2 = Color3.fromHSV(hue,1,1)
    game["Run Service"].RenderStepped:wait()
end
end)






local scrn = Instance.new('ScreenGui', Player.PlayerGui)
function makeframe(par, trans, pos, size, color)
	local frame = Instance.new('Frame', par)
	frame.BackgroundTransparency = trans
	frame.BorderSizePixel = 0
	frame.Position = pos
	frame.Size = size
	frame.BackgroundColor3 = color
	return frame
end

--framesk1 = makeframe(scrn, .95, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)

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

ArtificialHB = Create("BindableEvent"){
	Parent = script,
	Name = "Heartbeat",
}

script:WaitForChild("Heartbeat")

frame = 1 / 35
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



local m = Create("Model"){
	Parent = Character,
	Name = "WeaponModel"
}

function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
CFuncs = {	
	Part = {
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
			if Size == Vector3.new() then
				Part.Size = Vector3.new(0.2, 0.2, 0.2)
			else
				Part.Size = Size
			end
			return Part
		end;
	};
	
	Mesh = {
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

	Weld = {
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

	Sound = {
		Create = function(id, par, vol, pit, looped) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound"){
					Volume = vol,
					Pitch = pit or 1,
					SoundId = "rbxassetid://" .. id,
					Parent = par or workspace,
					Looped = looped
				}
				wait() 
				S:play() 
			end))
		end;
	};
	
	ParticleEmitter = {
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			local Particle = Create("ParticleEmitter"){
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
			return Particle
		end;
	};
	
	CreateTemplate = {
		
	};
}

--/v/Don't touch this part. \v\--

playlist=Instance.new("Sound", Torso)
playlist.SoundId = "rbxassetid://" ..randString
playlist.Volume = 5
playlist.Looped = false
playlist.Name = "playlist"
playlist:Play()

--/^/Don't touch this part. \^\--

function RayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore) 
end 

FindNearestTorso = function(pos)
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
end

RootPart.CFrame =  RootPart.CFrame * CFrame.new(0,5,0)

Harness=CFuncs.Part.Create(m,Enum.Material.Plastic,0,1,"Medium stone grey","Harness",Vector3.new(0.420000285, 0.490000188, 0.399999768))
HarnessWeld=CFuncs.Weld.Create(m,Character["Torso"],Harness,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0500001907, -0.0350001119, -0.0871353149, -1, 0, 0, 0, 1, 0, 0, 0, -1))
FloatField2=CFuncs.Part.Create(m,Enum.Material.Neon,0,.5,"Lily white","FloatField2",Vector3.new(5, 8, 5))
FloatField2Weld=CFuncs.Weld.Create(m,Harness,FloatField2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.58035278e-05, 3.50000337e-05, 6.10351563e-05, -1, 0, 0, 0, 1, 0, 0, 0, -1))
flotemesh=CFuncs.Mesh.Create("SpecialMesh",FloatField2,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
spinny=CFuncs.Part.Create(Torso, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "spinny", Vector3.new())	
spinny.Anchored=true
spinny.CanCollide=false


transp = .5
spawn(function()
while true do
    transp = transp + .001
        FloatField2.Transparency = transp
        swait()
if transp >= 1 then
transp = .5
end
end
end)



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
			--ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Really black").Color)
		else
			h.Health = h.Health - (Damage / 2)
			--ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Really black").Color)
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
				P = 10,
				maxForce = Vector3.new(math.huge, 0, math.huge),
				velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05,
			}
			print(hit.Parent)
			if knockback > 0 then
				vp.Parent = hit.Parent.Torso
			end	
			local hum = hit.Parent.Humanoid
			hum.PlatformStand = true
local TotalMass = 0
for _, part in pairs(hit.Parent:GetChildren()) do
     if part:IsA("Part") then
          TotalMass = TotalMass + part:GetMass()
     end
end



local ForceOfGravity = -197 * TotalMass
local floatybits = Instance.new("BodyForce", hit.Parent.Torso)
floatybits.force = Vector3.new(0, -ForceOfGravity, 0)






spawn(function()
local spinny2=CFuncs.Part.Create(Torso, "SmoothPlastic", 0, 1, BrickColor.new("Black"), "spinny2", Vector3.new())	
spinny2.Anchored=true
spinny2.CanCollide=false
for i = 0, 2, .001 do
local alg = math.floor(playlist.PlaybackLoudness)/500
local alg2 = math.floor(playlist.PlaybackLoudness)/80
local efekt2=CFuncs.Part.Create(hit.Parent.Torso, "Neon", 0, .3, BrickColor.new(maincol2), "ref", Vector3.new(.05,alg2,.3))	
efekt2.Anchored=true
efekt2.CanCollide=false
spinny2.CFrame = spinny2.CFrame * CFrame.fromEulerAnglesXYZ(0, math.pi/100, 0)
spinny2.Position = hit.Parent.Torso.Position
efekt2.CFrame=spinny2.CFrame*CFrame.new(aoeconstant-5,0,0)
game:GetService("Debris"):AddItem(efekt2, .7)
swait()
end
end)

			local rl = Create("BodyAngularVelocity"){
				P = 500,
				maxTorque = Vector3.new(10, 10, 10),
				angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
				Parent = hit,
			}					
game:GetService("Debris"):AddItem(rl, 10)
game:GetService("Debris"):AddItem(floatybits, 10)
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
				cf = hit.Parent.Torso.CFrame,
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
	local Rate = (1 / 60)
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
		Font = "SourceSansLight",
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

function MagnitudeDamage(Part, Magnitude, MinimumDamage, MaximumDamage, KnockBack, Type, HitSound, HitPitch)
	for _, c in pairs(workspace:children()) do
		local hum = c:findFirstChild("Humanoid")
		if hum ~= nil then
			local head = c:findFirstChild("Torso")
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if mag <= Magnitude and c.Name ~= Player.Name then 
					Damage(head, head, MinimumDamage, MaximumDamage, KnockBack, Type, RootPart, 10, "rbxassetid://" .. HitSound, HitPitch)
				end
			end
		end
	end
end

EffectModel = Create("Model"){
	Parent = Character,
	Name = "EffectModel",
}

Effects = {
	Block = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type, Part)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
			elseif Type == 3 then
				table.insert(Effects, {
					prt,
					"Block3",
					delay,
					x3,
					y3,
					z3,
					msh,
					Part
				})
			elseif Type == 4 then
				table.insert(Effects, {
					prt,
					"Block2Fire",
					delay,
					x3,
					y3,
					z3,
					msh
				})
			end
		end
	};

	Sphere = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, parent)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			if parent == nil then
				prt.Parent = workspace
			else
				prt.Parent = parent
			end
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
	};

	Blood = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Blood",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end
	};

	Blast = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Part)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "1323306", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Block4",
				delay,
				x3,
				y3,
				z3,
				msh,
				Part
			})
		end
	};

	Ring = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
	};

	Cylinder = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
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
	};

	Head = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Head", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
	};

	Wave = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
	};

	Break = {
		Create = function(brickcolor, cframe, x1, y1, z1)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
			prt.Anchored = true
			prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
			game:GetService("Debris"):AddItem(prt, 10)
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			local num = math.random(10, 50) / 1000
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
	};

	Elec = {
		Create = function(brickcolor, cff, x, y, z)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Part", Vector3.new(1, 1, 1))
			prt.Anchored = true
			prt.CFrame = cff * CFrame.new(math.random(-x * 100, x * 100) / 100, math.random(-y * 100, y * 100) / 100, math.random(-z * 100, z * 100) / 100)
			prt.CFrame = CFrame.new(prt.Position)
			game:GetService("Debris"):AddItem(prt, 10)
			xval = math.random() / 9
			yval = math.random() / 9
			zval = math.random() / 9
			msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(xval, yval, zval))
			eul1 = math.random(-50, 50)
			eul2 = math.random(-50, 50)
			eul3 = math.random(-50, 50)
			euld = CFrame.fromEulerAnglesXYZ(eul1, eul2, eul3)
			euld2 = CFrame.fromEulerAnglesXYZ(-eul1, -eul2, -eul3)
			table.insert(Effects, {
				prt,
				"Elec",
				.05,
				x,
				y,
				z,
				xval,
				yval,
				zval,
				msh,
				euld,
				euld2
			})
		end
	};

	Elec2 = {
		Create = function(brickcolor, cff, x, y, z)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Part", Vector3.new(1, 1, 1))
			prt.Anchored = true
			prt.CFrame = cff * CFrame.new(math.random(-x * 100, x * 100) / 100, math.random(-y * 100, y * 100) / 100, math.random(-z * 100, z * 100) / 100)
			prt.CFrame = CFrame.new(prt.Position)
			game:GetService("Debris"):AddItem(prt, 10)
			xval = math.random() / 7
			yval = math.random() / 7
			zval = math.random() / 7
			msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(xval, yval, zval))
			eul1 = math.random(-50, 50)
			eul2 = math.random(-50, 50)
			eul3 = math.random(-50, 50)
			euld = CFrame.fromEulerAnglesXYZ(eul1, eul2, eul3)
			euld2 = CFrame.fromEulerAnglesXYZ(-eul1, -eul2, -eul3)
			table.insert(Effects, {
				prt,
				"Elec",
				.1,
				x,
				y,
				z,
				xval,
				yval,
				zval,
				msh,
				euld,
				euld2
			})
		end
	};

	Clone = {
		Create = function() 
			for _, v in pairs(Torso.Parent:children()) do
				if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
					local c = CFuncs.Part.Create(EffectModel, "Neon", 0, .5, BrickColor.new("Bright blue"), "Effect", v.Size)
					c.Anchored = true
					c.CFrame = v.CFrame
					game:GetService("Debris"):AddItem(c, 5)
					local cmsh = nil
					if v.Name == "Head" then
						cmsh = CFuncs.Mesh.Create("SpecialMesh", c, "Head", "", Vector3.new(0, 0, 0), v.Mesh.Scale)
					else
						cmsh = CFuncs.Mesh.Create("BlockMesh", c, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
					end
					table.insert(Effects, {
						c,
						"Cylinder",
						0.05,
						0.1,
						0.1,
						0.1,
						cmsh
					})
				end
			end
		end
	};

	EffectTemplate = {

	};
}







Mouse.Button1Down:connect(function()
		if Mouse ~= nil then
			if Mouse.Target ~= nil then
				part = Mouse.Target
				bp = Instance.new("BodyPosition",part)
				bp.MaxForce = Vector3.new(5000,5000,5000)
				bp.Position = part.Position
				dwn = true
			end
		while dwn == true do 
			wait()	
			bp.Position = Mouse.hit.p
			if part then
				if part.Parent:FindFirstChildOfClass("Humanoid") then
					part.Parent:FindFirstChildOfClass("Humanoid").PlatformStand = true
				end
			end
		end
	end
end)
Mouse.Button1Up:connect(function()
	dwn = false
	if part then if part.Parent:FindFirstChildOfClass("Humanoid") then part.Parent:FindFirstChildOfClass("Humanoid").PlatformStand = false end part = nil end
	if bp then bp:Destroy() end
end)
	

Mouse.KeyDown:connect(function(k)
	k = k:lower()
	if k == 'm'  then
ShowDamage((Head.CFrame * CFrame.new(0, 0, (Head.Size.Z / 2)).p + Vector3.new(0, 5, 0)), quotes[math.random(#quotes)], 5, BrickColor.new(maincol2).Color)
playlist:Destroy()
playlist=Instance.new("Sound", Torso)
playlist.SoundId = "rbxassetid://" ..songs[math.random(#songs)]
playlist.Volume = 5
playlist.Looped = false
playlist.Name = "playlist"
playlist:Play()
	elseif k == 'n' and circleinthesky == false then
circleinthesky = true
	elseif k == 'n' and circleinthesky == true then
circleinthesky = false
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
	for i, v in pairs(Character:GetChildren()) do
		if v:IsA'Model' then
			for _, c in pairs(v:GetChildren()) do
				if c:IsA'Part' then
					c.CustomPhysicalProperties = PhysicalProperties.new(0.001, 0.001, 0.001, 0.001, 0.001)
				end
			end
		end
	end
	if playlist.IsPlaying == false then
ShowDamage((Head.CFrame * CFrame.new(0, 0, (Head.Size.Z / 2)).p + Vector3.new(0, 5, 0)), quotes[math.random(#quotes)], 5,  BrickColor.new(maincol2).Color)
playlist:Destroy()
playlist=Instance.new("Sound", Torso)
playlist.SoundId = "rbxassetid://" ..songs[math.random(#songs)]
playlist.Volume = 5
playlist.Looped = false
playlist.Name = "playlist"
playlist:Play()
end
	TorsoVelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
	Velocity = RootPart.Velocity.y
	Sine = Sine + Change
	local hit, pos = RayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
	if RootPart.Velocity.y > 1 and hit == nil then 
		Anim = "Jump"
		if Attack == false then
			Change = 1
		PlayAnimationFromTable({
         CFrame.new(0, 0, -0, 1, 0, -0, 0, 0.342019022, -0.939693093, 0, 0.939693093, 0.342018992) * CFrame.new(0, 0, 0 + .5 * math.cos(Sine/35)) * CFrame.Angles(.3 + .005 * math.cos(Sine/35), 0, 0), 
         CFrame.new(0, 1.4785918, -0.211434767, 1, 0, -0, 0, 0.98480767, 0.173649639, -0, -0.173649669, 0.984807611) * CFrame.new(0, 0, 0) * CFrame.Angles(0 + .05 * math.cos(Sine/35), 0, 0), 
         CFrame.new(0.939720154, 1.23436928, 0.449271917, 0.866025388, 0.500000238, 0, 0.469846785, -0.81379807, 0.342019022, 0.17100957, -0.296197116, -0.939693093) * CFrame.new(0, 0, 0 - .01 * math.cos(Sine/35)) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.804059327, 1.1624434, 0.431921601, 0.866025269, -0.500000238, -1.92716968e-07, -0.492404282, -0.852868617, 0.173646882, -0.0868236423, -0.150382489, -0.984808087) * CFrame.new(0, 0, 0 - .01 * math.cos(Sine/35)) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.662806809, -1.42266583, -0.425317377, 0.999114633, -0.0274195503, -0.0319078304, 0.0249254964, 0.996788979, -0.0760965645, 0.0338919051, 0.0752338469, 0.996589839) * CFrame.new(0, 0, 0 - .1 * math.cos(Sine/40)) * CFrame.Angles(0 + .1 * math.cos(Sine/40), 0, 0), 
         CFrame.new(-0.358216971, -1.62964225, 0.259462059, 0.999541879, -0.0301539842, 0.0025981334, 0.0127545623, 0.497520745, 0.867358446, -0.027446935, -0.866927922, 0.497677386) * CFrame.new(0, 0, 0 - .2 * math.cos(Sine/35)) * CFrame.Angles(0 + .2 * math.cos(Sine/35), 0, 0), 
		}, .3, false)
		MagnitudeDamage(Torso, aoeconstant, 0, 0, 0, "Normal", " ", .8)
		end
	elseif RootPart.Velocity.y < -1 and hit == nil then 
		Anim = "Fall"
		if Attack == false then
			Change = 1
		PlayAnimationFromTable({
         CFrame.new(0, 0, -0, 1, 0, -0, 0, 0.342019022, -0.939693093, 0, 0.939693093, 0.342018992) * CFrame.new(0, 0, 0 + .5 * math.cos(Sine/35)) * CFrame.Angles(.3 + .005 * math.cos(Sine/35), 0, 0), 
         CFrame.new(0, 1.4785918, -0.211434767, 1, 0, -0, 0, 0.98480767, 0.173649639, -0, -0.173649669, 0.984807611) * CFrame.new(0, 0, 0) * CFrame.Angles(0 + .05 * math.cos(Sine/35), 0, 0), 
         CFrame.new(0.939720154, 1.23436928, 0.449271917, 0.866025388, 0.500000238, 0, 0.469846785, -0.81379807, 0.342019022, 0.17100957, -0.296197116, -0.939693093) * CFrame.new(0, 0, 0 - .01 * math.cos(Sine/35)) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.804059327, 1.1624434, 0.431921601, 0.866025269, -0.500000238, -1.92716968e-07, -0.492404282, -0.852868617, 0.173646882, -0.0868236423, -0.150382489, -0.984808087) * CFrame.new(0, 0, 0 - .01 * math.cos(Sine/35)) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.662806809, -1.42266583, -0.425317377, 0.999114633, -0.0274195503, -0.0319078304, 0.0249254964, 0.996788979, -0.0760965645, 0.0338919051, 0.0752338469, 0.996589839) * CFrame.new(0, 0, 0 - .1 * math.cos(Sine/40)) * CFrame.Angles(0 + .1 * math.cos(Sine/40), 0, 0), 
         CFrame.new(-0.358216971, -1.62964225, 0.259462059, 0.999541879, -0.0301539842, 0.0025981334, 0.0127545623, 0.497520745, 0.867358446, -0.027446935, -0.866927922, 0.497677386) * CFrame.new(0, 0, 0 - .2 * math.cos(Sine/35)) * CFrame.Angles(0 + .2 * math.cos(Sine/35), 0, 0), 
		}, .3, false)
		MagnitudeDamage(Torso, aoeconstant, 0, 0, 0, "Normal", " ", .8)
		end	
	elseif TorsoVelocity < 1 and hit ~= nil then
		Anim = "Idle"
		if Attack == false then
			Change = 1
		PlayAnimationFromTable({
         CFrame.new(0, 0, -0, 1, 0, -0, 0, 0.342019022, -0.939693093, 0, 0.939693093, 0.342018992) * CFrame.new(0, 0, 0 + .5 * math.cos(Sine/35)) * CFrame.Angles(.3 + .005 * math.cos(Sine/35), 0, 0), 
         CFrame.new(0, 1.4785918, -0.211434767, 1, 0, -0, 0, 0.98480767, 0.173649639, -0, -0.173649669, 0.984807611) * CFrame.new(0, 0, 0) * CFrame.Angles(0 + .1 * math.cos(Sine/35), 0, 0), 
         CFrame.new(0.939720154, 1.23436928, 0.449271917, 0.866025388, 0.500000238, 0, 0.469846785, -0.81379807, 0.342019022, 0.17100957, -0.296197116, -0.939693093) * CFrame.new(0, 0, 0 - .01 * math.cos(Sine/35)) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.804059327, 1.1624434, 0.431921601, 0.866025269, -0.500000238, -1.92716968e-07, -0.492404282, -0.852868617, 0.173646882, -0.0868236423, -0.150382489, -0.984808087) * CFrame.new(0, 0, 0 - .01 * math.cos(Sine/35)) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.662806809, -1.42266583, -0.425317377, 0.999114633, -0.0274195503, -0.0319078304, 0.0249254964, 0.996788979, -0.0760965645, 0.0338919051, 0.0752338469, 0.996589839) * CFrame.new(0, 0, 0 - .1 * math.cos(Sine/40)) * CFrame.Angles(0 + .1 * math.cos(Sine/40), 0, 0), 
         CFrame.new(-0.358216971, -1.62964225, 0.259462059, 0.999541879, -0.0301539842, 0.0025981334, 0.0127545623, 0.497520745, 0.867358446, -0.027446935, -0.866927922, 0.497677386) * CFrame.new(0, 0, 0 - .2 * math.cos(Sine/35)) * CFrame.Angles(0 + .2 * math.cos(Sine/35), 0, 0), 
		}, .3, false)
		MagnitudeDamage(Torso, aoeconstant, 0, 0, 0, "Normal", " ", .8)
		end
	elseif TorsoVelocity > 2 and hit ~= nil then
		Anim = "Walk"
            if Attack == false then
		PlayAnimationFromTable({
         CFrame.new(0, 0, -0, 1, 0, -0, 0, 0.342019022, -0.939693093, 0, 0.939693093, 0.342018992) * CFrame.new(0, 0, 0 + .5 * math.cos(Sine/35)) * CFrame.Angles(.3 + .005 * math.cos(Sine/35), 0, 0), 
         CFrame.new(0, 1.4785918, -0.211434767, 1, 0, -0, 0, 0.98480767, 0.173649639, -0, -0.173649669, 0.984807611) * CFrame.new(0, 0, 0) * CFrame.Angles(0 + .05 * math.cos(Sine/35), 0, 0), 
         CFrame.new(0.939720154, 1.23436928, 0.449271917, 0.866025388, 0.500000238, 0, 0.469846785, -0.81379807, 0.342019022, 0.17100957, -0.296197116, -0.939693093) * CFrame.new(0, 0, 0 - .01 * math.cos(Sine/35)) * CFrame.Angles(0, 0, 0), 
         CFrame.new(-0.804059327, 1.1624434, 0.431921601, 0.866025269, -0.500000238, -1.92716968e-07, -0.492404282, -0.852868617, 0.173646882, -0.0868236423, -0.150382489, -0.984808087) * CFrame.new(0, 0, 0 - .01 * math.cos(Sine/35)) * CFrame.Angles(0, 0, 0), 
         CFrame.new(0.662806809, -1.42266583, -0.425317377, 0.999114633, -0.0274195503, -0.0319078304, 0.0249254964, 0.996788979, -0.0760965645, 0.0338919051, 0.0752338469, 0.996589839) * CFrame.new(0, 0, 0 - .1 * math.cos(Sine/40)) * CFrame.Angles(0 + .1 * math.cos(Sine/40), 0, 0), 
         CFrame.new(-0.358216971, -1.62964225, 0.259462059, 0.999541879, -0.0301539842, 0.0025981334, 0.0127545623, 0.497520745, 0.867358446, -0.027446935, -0.866927922, 0.497677386) * CFrame.new(0, 0, 0 - .2 * math.cos(Sine/35)) * CFrame.Angles(0 + .2 * math.cos(Sine/35), 0, 0), 
		}, .3, false)
		MagnitudeDamage(Torso, aoeconstant, 0, 0, 0, "Normal", " ", .8)
		end
	end
	if #Effects > 0 then
		for e = 1, #Effects do
			if Effects[e] ~= nil then
				local Thing = Effects[e]
				if Thing ~= nil then
					local Part = Thing[1]
					local Mode = Thing[2]
					local Delay = Thing[3]
					local IncX = Thing[4]
					local IncY = Thing[5]
					if Thing[1].Transparency <= 1 then
						if Thing[2] == "Block1" then
							Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Ice" then
							if Thing[6] <= Thing[5] then
								Thing[6] = Thing[6] + .05
								Thing[1].CFrame = Thing[1].CFrame * CFrame.new(0, .4, 0)
							else
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							end
						elseif Thing[2] == "Shatter" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
							Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
							Thing[6] = Thing[6] + Thing[5]
						elseif Thing[2] == "Block2" then
							Thing[1].CFrame = Thing[1].CFrame
							Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block3" then
							Thing[1].CFrame = Thing[8].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block4" then
							Thing[1].CFrame = Thing[8].CFrame * CFrame.new(0, -Thing[7].Scale.Y, 0) * CFrame.fromEulerAnglesXYZ(3.14, 0, 0)
							Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block2Fire" then
							Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							if Thing[1].Transparency >= .3 then
								Thing[1].BrickColor = BrickColor.new("Bright red")
							else
								Thing[1].BrickColor = BrickColor.new("Bright yellow")
							end
						elseif Thing[2] == "Cylinder" then
							Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Blood" then
							Mesh = Thing[7]
							Thing[1].CFrame = Thing[1].CFrame * CFrame.new(0, -.5, 0)
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Elec" then
							Mesh = Thing[10]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							Thing[1].CFrame = Thing[1].CFrame * Thing[11] * CFrame.new(0, 0, .2)
							Thing[1].Rotation = Vector3.new(0, 0, 0)
						elseif Thing[2] == "Disappear" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						end
					else
						Part.Parent = nil
						table.remove(Effects, e)
					end
				end
			end
		end
	end
local alg = math.floor(playlist.PlaybackLoudness)/500
local alg2 = math.floor(playlist.PlaybackLoudness)/80

if circleinthesky == false then
FloatField2.BrickColor = BrickColor.new(maincol2)
spinny.Position = Torso.Position
spinny.CFrame = spinny.CFrame * CFrame.fromEulerAnglesXYZ(0, math.pi/100, 0)
efekt=CFuncs.Part.Create(Torso, "Neon", 0, .3, BrickColor.new(maincol2), "ref", Vector3.new(.05,alg2,.3))	
efekt.Anchored=true
efekt.CanCollide=false
game:GetService("Debris"):AddItem(efekt, .5)
--ShowDamage((efekt.CFrame * CFrame.new(0, 0, (Torso.Size.Z / 102)).p + Vector3.new(0, 0, 0)), ".", 1, BrickColor.new(maincol2).Color)
efekt.CFrame=spinny.CFrame*CFrame.new(aoeconstant,0,0)

      elseif circleinthesky == true then

FloatField2.BrickColor = BrickColor.new(maincol2)
spinny.Position = Torso.Position
spinny.CFrame = spinny.CFrame * CFrame.fromEulerAnglesXYZ(0, math.pi/100, 0)
efekt=CFuncs.Part.Create(Torso, "Neon", 0, .3, BrickColor.new(maincol2), "ref", Vector3.new(1+alg2,.05,.3))	
efekt.Anchored=true
efekt.CanCollide=false
efekt2=CFuncs.Part.Create(Torso, "Neon", 0, .3, BrickColor.new(maincol2), "ref", Vector3.new(alg2,.05,.3))	
efekt2.Anchored=true
efekt2.CanCollide=false
game:GetService("Debris"):AddItem(efekt, 2)
game:GetService("Debris"):AddItem(efekt2, 2)
--ShowDamage((efekt.CFrame * CFrame.new(0, 0, (Torso.Size.Z / 102)).p + Vector3.new(0, 0, 0)), ".", 1, BrickColor.new(maincol2).Color)
efekt.CFrame=spinny.CFrame*CFrame.new(aoeconstant,20,0)	
efekt2.CFrame=spinny.CFrame*CFrame.new(aoeconstant-4,10,0)	
end	
humanoid.Health = math.huge
soundbork(workspace) 
end