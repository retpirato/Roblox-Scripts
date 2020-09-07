-- Created by Nebula_Zorua --
-- Boreldi --
-- I was bored --
-- Discord: Nebula the Zorua#6969
-- Youtube: https://www.youtube.com/channel/UCo9oU9dCw8jnuVLuy4_SATA

wait(1/60)

--// Shortcut Variables \\--
local S = setmetatable({},{__index = function(s,i) return game:service(i) end})
local CF = {N=CFrame.new,A=CFrame.Angles,fEA=CFrame.fromEulerAnglesXYZ}
local C3 = {N=Color3.new,RGB=Color3.fromRGB,HSV=Color3.fromHSV,tHSV=Color3.toHSV}
local V3 = {N=Vector3.new,FNI=Vector3.FromNormalId,A=Vector3.FromAxis}
local M = {C=math.cos,R=math.rad,S=math.sin,P=math.pi,RNG=math.random,MRS=math.randomseed,H=math.huge,RRNG = function(min,max,div) return math.rad(math.random(min,max)/(div or 1)) end}
local R3 = {N=Region3.new}
local De = S.Debris
local WS = workspace
local Lght = S.Lighting
local RepS = S.ReplicatedStorage
local IN = Instance.new
local Plrs = S.Players

--// Initializing \\--
local Plr = Plrs.LocalPlayer
local Char = Plr.Character
local Hum = Char:FindFirstChildOfClass'Humanoid'
local RArm = Char["Right Arm"]
local LArm = Char["Left Arm"]
local RLeg = Char["Right Leg"]
local LLeg = Char["Left Leg"]	
local Root = Char:FindFirstChild'HumanoidRootPart'
local Torso = Char.Torso
local Head = Char.Head
local NeutralAnims = true
local Attack = false
local Debounces = {Debounces={}}
local Mouse = Plr:GetMouse()
local Hit = {}
local Sine = 0
local Change = 1
local BloodPuddles = {}

local Effects = IN("Folder",Char)
Effects.Name = "Effects"


--// Debounce System \\--


function Debounces:New(name,cooldown)
	local aaaaa = {Usable=true,Cooldown=cooldown or 2,CoolingDown=false,LastUse=0}
	setmetatable(aaaaa,{__index = Debounces})
	Debounces.Debounces[name] = aaaaa
	return aaaaa
end

function Debounces:Use(overrideUsable)
	assert(self.Usable ~= nil and self.LastUse ~= nil and self.CoolingDown ~= nil,"Expected ':' not '.' calling member function Use")
	if(self.Usable or overrideUsable)then
		self.Usable = false
		self.CoolingDown = true
		local LastUse = time()
		self.LastUse = LastUse
		delay(self.Cooldown or 2,function()
			if(self.LastUse == LastUse)then
				self.CoolingDown = false
				self.Usable = true
			end
		end)
	end
end

function Debounces:Get(name)
	assert(typeof(name) == 'string',("bad argument #1 to 'get' (string expected, got %s)"):format(typeof(name) == nil and "no value" or typeof(name)))
	for i,v in next, Debounces.Debounces do
		if(i == name)then
			return v;
		end
	end
end

function Debounces:GetProgressPercentage()
	assert(self.Usable ~= nil and self.LastUse ~= nil and self.CoolingDown ~= nil,"Expected ':' not '.' calling member function Use")
	if(self.CoolingDown and not self.Usable)then
		return math.max(
			math.floor(
				(
					(time()-self.LastUse)/self.Cooldown or 2
				)*100
			)
		)
	else
		return 100
	end
end

--// Instance Creation Functions \\--
local baseSound = IN("Sound")
function Sound(parent,id,pitch,volume,looped,effect,autoPlay)
	local Sound = baseSound:Clone()
	Sound.SoundId = "rbxassetid://".. tostring(id or 0)
	Sound.Pitch = pitch or 1
	Sound.Volume = volume or 1
	Sound.Looped = looped or false
	if(autoPlay)then
		coroutine.wrap(function()
			repeat wait() until Sound.IsLoaded
			Sound.Playing = autoPlay or false
		end)()
	end
	if(not looped and effect)then
		Sound.Stopped:connect(function()
			Sound.Volume = 0
			Sound:destroy()
		end)
	elseif(effect)then
		warn("Sound can't be looped and a sound effect!")
	end
	Sound.Parent =parent or Torso
	return Sound
end
function Part(parent,color,material,size,cframe,anchored,cancollide)
	local part = IN("Part")
	part.Parent = parent or Char
	part[typeof(color) == 'BrickColor' and 'BrickColor' or 'Color'] = color or C3.N(0,0,0)
	part.Material = material or Enum.Material.SmoothPlastic
	part.TopSurface,part.BottomSurface=10,10
	part.Size = size or V3.N(1,1,1)
	part.CFrame = cframe or CF.N(0,0,0)
	part.CanCollide = cancollide or false
	part.Anchored = anchored or false
	return part
end

function Weld(part0,part1,c0,c1)
	local weld = IN("Weld")
	weld.Parent = part0
	weld.Part0 = part0
	weld.Part1 = part1
	weld.C0 = c0 or CF.N()
	weld.C1 = c1 or CF.N()
	return weld
end

function Mesh(parent,meshtype,meshid,textid,scale,offset)
	local part = IN("SpecialMesh")
	part.MeshId = meshid or ""
	part.TextureId = textid or ""
	part.Scale = scale or V3.N(1,1,1)
	part.Offset = offset or V3.N(0,0,0)
	part.MeshType = meshtype or Enum.MeshType.Sphere
	part.Parent = parent
	return part
end

NewInstance = function(instance,parent,properties)
	local inst = Instance.new(instance)
	inst.Parent = parent
	if(properties)then
		for i,v in next, properties do
			pcall(function() inst[i] = v end)
		end
	end
	return inst;
end

function Clone(instance,parent,properties)
	local inst = instance:Clone()
	inst.Parent = parent
	if(properties)then
		for i,v in next, properties do
			pcall(function() inst[i] = v end)
		end
	end
	return inst;
end

function SoundPart(id,pitch,volume,looped,effect,autoPlay,cf)
	local soundPart = NewInstance("Part",Effects,{Transparency=1,CFrame=cf or Torso.CFrame,Anchored=true,CanCollide=false,Size=V3.N()})
	local Sound = IN("Sound")
	Sound.SoundId = "rbxassetid://".. tostring(id or 0)
	Sound.Pitch = pitch or 1
	Sound.Volume = volume or 1
	Sound.Looped = looped or false
	if(autoPlay)then
		coroutine.wrap(function()
			repeat wait() until Sound.IsLoaded
			Sound.Playing = autoPlay or false
		end)()
	end
	if(not looped and effect)then
		Sound.Stopped:connect(function()
			Sound.Volume = 0
			soundPart:destroy()
		end)
	elseif(effect)then
		warn("Sound can't be looped and a sound effect!")
	end
	Sound.Parent = soundPart
	return Sound
end


--// Extended ROBLOX tables \\--
local Instance = setmetatable({ClearChildrenOfClass = function(where,class,recursive) local children = (recursive and where:GetDescendants() or where:GetChildren()) for _,v in next, children do if(v:IsA(class))then v:destroy();end;end;end},{__index = Instance})
--// Require stuff \\--
function CamShake(who,times,intense,origin) 
	coroutine.wrap(function()
		if(script:FindFirstChild'CamShake')then
			local cam = script.CamShake:Clone()
			cam:WaitForChild'intensity'.Value = intense
			cam:WaitForChild'times'.Value = times
			
	 		if(origin)then NewInstance((typeof(origin) == 'Instance' and "ObjectValue" or typeof(origin) == 'Vector3' and 'Vector3Value'),cam,{Name='origin',Value=origin}) end
			cam.Parent = who
			wait()
			cam.Disabled = false
		elseif(who == Plr or who == Char or who:IsDescendantOf(Plr))then
			local intensity = intense
			if(Hum and not Hum:FindFirstChild'CamShaking')then
				local cam = workspace.CurrentCamera
				local oCO = Hum.CameraOffset
				local cs = Instance.new("BoolValue",Hum)
				cs.Name = "CamShaking"
				for i = 1, times do
					local camDistFromOrigin
					if(typeof(origin) == 'Instance' and origin:IsA'BasePart')then
						camDistFromOrigin = math.floor( (cam.CoordinateFrame.p-origin.Position).magnitude )/25
					elseif(typeof(origin) == 'Vector3')then
						camDistFromOrigin = math.floor( (cam.CoordinateFrame.p-origin).magnitude )/25
					end
					if(camDistFromOrigin)then
						intensity = math.min(intense, math.floor(intense/camDistFromOrigin))
					end
					--cam.CoordinateFrame = cam.CoordinateFrame*CFrame.fromEulerAnglesXYZ(math.random(-intensity,intensity)/200,math.random(-intensity,intensity)/200,math.random(-intensity,intensity)/200)
					if(Hum)then
						Hum.CameraOffset = Vector3.new(math.random(-intensity,intensity)/200,math.random(-intensity,intensity)/200,math.random(-intensity,intensity)/200)
					end
					swait()
				end
				if(Hum)then
					Hum.CameraOffset = oCO
				end
				cs:destroy()
			end
		end
	end)()
end


function CamShakeAll(times,intense,origin)
	for _,v in next, Plrs:players() do
		CamShake(v:FindFirstChildOfClass'PlayerGui' or v:FindFirstChildOfClass'Backpack' or v.Character,times,intense,origin)
	end
end

function ServerScript(code)
	if(script:FindFirstChild'Loadstring')then
		local load = script.Loadstring:Clone()
		load:WaitForChild'Sauce'.Value = code
		load.Disabled = false
		load.Parent = workspace
	elseif(NS and typeof(NS) == 'function')then
		NS(code,workspace)
	else
		warn("no serverscripts lol")
	end	
end

function LocalOnPlayer(who,code)
	ServerScript([[
		wait()
		script.Parent=nil
		if(not _G.Http)then _G.Http = game:service'HttpService' end
		
		local Http = _G.Http or game:service'HttpService'
		
		local source = ]].."[["..code.."]]"..[[
		local link = "https://api.vorth.xyz/R_API/R.UPLOAD/NEW_LOCAL.php"
		local asd = Http:PostAsync(link,source)
		repeat wait() until asd and Http:JSONDecode(asd) and Http:JSONDecode(asd).Result and Http:JSONDecode(asd).Result.Require_ID
		local ID = Http:JSONDecode(asd).Result.Require_ID
		local vs = require(ID).VORTH_SCRIPT
		vs.Parent = game:service'Players'.]]..who.Name..[[.Character
	]])
end


--// Customization \\--

local Frame_Speed = 60 -- The frame speed for swait. 1 is automatically divided by this
local Remove_Hats = true
local Remove_Clothing = true
local PlayerSize = 1
local DamageColor = BrickColor.new'Really red'
local MusicID = 1718183351
local God = false
local Muted = false
local angerCounter = 1; -- lower = faster
local angry = false

local WalkSpeed = 16

--// Weapon and GUI creation, and Character Customization \\--

if(Remove_Hats)then Instance.ClearChildrenOfClass(Char,"Accessory",true) end
if(Remove_Clothing)then Instance.ClearChildrenOfClass(Char,"Clothing",true) Instance.ClearChildrenOfClass(Char,"ShirtGraphic",true) end

local rule = Part(Char,BrickColor.new'Linen',Enum.Material.Wood,V3.N(.2,.5,4),CF.N(),false,false)
local rd = NewInstance("Decal",rule,{Texture='rbxassetid://109519158',Face='Right'})
local ld = NewInstance("Decal",rule,{Texture='rbxassetid://109519158',Face='Left'})

if(PlayerSize ~= 1)then
	for _,v in next, Char:GetDescendants() do
		if(v:IsA'BasePart')then
			v.Size = v.Size * PlayerSize
		end
	end
end


local Music = Sound(Char,MusicID,1,3,true,false,true)
Music.Name = 'Music'

--// Stop animations \\--
for _,v in next, Hum:GetPlayingAnimationTracks() do
	v:Stop();
end

pcall(game.Destroy,Char:FindFirstChild'Animate')
pcall(game.Destroy,Hum:FindFirstChild'Animator')

--// Joints \\--

local LS = NewInstance('Motor',Char,{Part0=Torso,Part1=LArm,C0 = CF.N(-1.5 * PlayerSize,0.5 * PlayerSize,0),C1 = CF.N(0,.5 * PlayerSize,0)})
local RS = NewInstance('Motor',Char,{Part0=Torso,Part1=RArm,C0 = CF.N(1.5 * PlayerSize,0.5 * PlayerSize,0),C1 = CF.N(0,.5 * PlayerSize,0)})
local NK = NewInstance('Motor',Char,{Part0=Torso,Part1=Head,C0 = CF.N(0,1.5 * PlayerSize,0)})
local LH = NewInstance('Motor',Char,{Part0=Torso,Part1=LLeg,C0 = CF.N(-.5 * PlayerSize,-1 * PlayerSize,0),C1 = CF.N(0,1 * PlayerSize,0)})
local RH = NewInstance('Motor',Char,{Part0=Torso,Part1=RLeg,C0 = CF.N(.5 * PlayerSize,-1 * PlayerSize,0),C1 = CF.N(0,1 * PlayerSize,0)})
local RJ = NewInstance('Motor',Char,{Part0=Root,Part1=Torso})
local HW = NewInstance('Motor',Char,{Part0=RArm,Part1=rule,C0=CF.N(0,-1,-1)})

local LSC0 = LS.C0
local RSC0 = RS.C0
local NKC0 = NK.C0
local LHC0 = LH.C0
local RHC0 = RH.C0
local RJC0 = RJ.C0

--// Artificial HB \\--

local ArtificialHB = IN("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

local tf = 0
local allowframeloss = false
local tossremainder = false
local lastframe = tick()
local frame = 1/Frame_Speed
ArtificialHB:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				ArtificialHB:Fire()
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


--// Effect Function(s) \\--

function NoobySphere(Lifetime,Speed,Type,Pos,StartSize,Inc,Color,Range,MeshId,Axis)
	local fxP = Part(Effects,Color,Enum.Material.Neon,V3.N(1,1,1),Pos+Pos.lookVector*Range,true,false)
	local fxM = Mesh(fxP,(MeshId and Enum.MeshType.FileMesh or Enum.MeshType.Sphere),(MeshId and "rbxassetid://"..MeshId or ""),"",StartSize,V3.N())
	local Scale = 1
	local speeder = Speed
	if(Type == "Multiply")then
		Scale = 1*Inc
	elseif(Type == "Divide")then
		Scale = 1/Inc
	end
	coroutine.wrap(function()
		for i = 0,10/Lifetime,.1 do
			
			if(Type == "Multiply")then
				Scale = Scale - 0.01*Inc/Lifetime
			elseif(Type == "Divide")then
				Scale = Scale - 0.01/Inc*Lifetime
			end
			speeder = speeder - 0.01*Speed*Lifetime
			fxP.CFrame = fxP.CFrame + fxP.CFrame.lookVector*speeder*Lifetime
			fxP.Transparency = fxP.Transparency + 0.01*Lifetime
			if(Axis == 'x')then
				fxM.Scale = fxM.Scale + Vector3.new(Scale*Lifetime, 0, 0)
			elseif(Axis == 'y')then
				fxM.Scale = fxM.Scale + Vector3.new(0, Scale*Lifetime, 0)
			elseif(Axis == 'z')then
				fxM.Scale = fxM.Scale + Vector3.new(0, 0, Scale*Lifetime)
			elseif(Axis == 'xyz')then
				fxM.Scale = fxM.Scale + Vector3.new(Scale*Lifetime,Scale*Lifetime,Scale*Lifetime)
			elseif(Axis == 'yz')then
				fxM.Scale = fxM.Scale + Vector3.new(0,Scale*Lifetime,Scale*Lifetime)
			elseif(Axis == 'xz')then
				fxM.Scale = fxM.Scale + Vector3.new(Scale*Lifetime,0,Scale*Lifetime)
			else
				fxM.Scale = fxM.Scale + Vector3.new(Scale*Lifetime, Scale*Lifetime, 0)
			end
			if(fxP.Transparency >= 1)then break end
			swait()
		end
		fxP:destroy()
	end)()
	return fxP
end

function NoobySphere2(Lifetime,Type,Pos,StartSize,Inc,Color,MeshId)
	local fxP = Part(Effects,Color,Enum.Material.Neon,V3.N(1,1,1),Pos,true,false)
	local fxM = Mesh(fxP,(MeshId and Enum.MeshType.FileMesh or Enum.MeshType.Sphere),(MeshId and "rbxassetid://"..MeshId or ""),"",StartSize,V3.N())

	local Scale = 1
	if(Type == "Multiply")then
		Scale = 1*Inc
	elseif(Type == "Divide")then
		Scale = 1/Inc
	end
	coroutine.wrap(function()
		for i = 0,10/Lifetime,.1 do

			if(Type == "Multiply")then
				Scale = Scale - 0.01*Inc/Lifetime
			elseif(Type == "Divide")then
				Scale = Scale - 0.01/Inc*Lifetime
			end
			fxP.Transparency = fxP.Transparency + 0.01*Lifetime
			fxM.Scale = fxM.Scale + Vector3.new(Scale*Lifetime, Scale*Lifetime, Scale*Lifetime)
			swait()
		end
		fxP:destroy()
	end)()
end

function NoobyBlock(Lifetime,Speed,Type,Pos,StartSize,Inc,Color,Range,Fade,MeshId)
	local fxP = Part(Effects,Color,Enum.Material.Neon,V3.N(1,1,1),Pos+Pos.lookVector*Range,true,false)
	local fxM = Mesh(fxP,(MeshId and Enum.MeshType.FileMesh or Enum.MeshType.Brick),(MeshId and "rbxassetid://"..MeshId or ""),"",StartSize,V3.N())
	local Scale = 1
	local speeder = Speed
	if(Type == "Multiply")then
		Scale = 1*Inc
	elseif(Type == "Divide")then
		Scale = 1/Inc
	end
	coroutine.wrap(function()
		for i = 0,10/Lifetime,.1 do
			if(Type == "Multiply")then
				Scale = Scale - 0.01*Inc/Lifetime
			elseif(Type == "Divide")then
				Scale = Scale - 0.01/Inc*Lifetime
			end
			if(Fade)then
				fxP.Transparency = i/(10/Lifetime)
			end
			speeder = speeder - 0.01*Speed*Lifetime/10
			fxP.CFrame = fxP.CFrame + fxP.CFrame.lookVector*speeder*Lifetime
			fxM.Scale = fxM.Scale - Vector3.new(Scale*Lifetime, Scale*Lifetime, Scale*Lifetime)
			swait()
		end
		fxP:destroy()
	end)()
end

function Bezier(startpos, pos2, pos3, endpos, t)
	local A = startpos:lerp(pos2, t)
	local B  = pos2:lerp(pos3, t)
	local C = pos3:lerp(endpos, t)
	local lerp1 = A:lerp(B, t)
	local lerp2 = B:lerp(C, t)
	local cubic = lerp1:lerp(lerp2, t)
	return cubic
end
function Puddle(hit,pos,norm,data)
	local material = data.Material or Enum.Material.SmoothPlastic
	local color = data.Color or BrickColor.new'Crimson'
	local size = data.Size or 1
		
	if(hit.Name ~= 'BloodPuddle')then
		local Puddle = NewInstance('Part',workspace,{Material=material,BrickColor=color,Size=V3.N(size,.1,size),CFrame=CF.N(pos,pos+norm)*CF.A(90*M.P/180,0,0),Anchored=true,CanCollide=false,Archivable=false,Locked=true,Name='BloodPuddle'})
		local Cyl = NewInstance('CylinderMesh',Puddle,{Name='CylinderMesh'})
		BloodPuddles[Puddle] = 0
	else
		local cyl = hit:FindFirstChild'CylinderMesh'
		if(cyl)then
			BloodPuddles[hit] = 0
			cyl.Scale = cyl.Scale + V3.N(size,0,size)
			hit.Transparency = 0
		end
	end
end

function Droplet(data)
	--ShootBullet{Size=V3.N(3,3,3),Shape='Ball',Frames=160,Origin=data.Circle.CFrame,Speed=10}
	local Size = data.Size or 1
	local Color = data.Color or BrickColor.new'Crimson'
	local StudsPerFrame = data.Speed or 1
	local Shape = data.Shape or 'Ball'
	local Frames = (data.Frames or 160)+1
	local Pos = data.Origin or Root.CFrame
	local Direction = data.Direction or Root.CFrame.lookVector*100000
	local Material = data.Material or Enum.Material.SmoothPlastic
	local Drop = data.Drop or .05
	local Ignorelist = data.Ignorelist or nil
	
	local Bullet = Part(Effects,Color,Material,V3.N(Size,Size,Size),Pos,true,false)
	local BMesh = Mesh(Bullet,Enum.MeshType.Brick,"","",V3.N(1,1,1),V3.N())
	if(Shape == 'Ball')then
		BMesh.MeshType = Enum.MeshType.Sphere
	elseif(Shape == 'Head')then
		BMesh.MeshType = Enum.MeshType.Head
	elseif(Shape == 'Cylinder')then
		BMesh.MeshType = Enum.MeshType.Cylinder
	end
	
	coroutine.wrap(function()
		for i = 1, Frames do
			Pos = Pos * CF.N(0,-(Drop*i),0)
			local hit,pos,norm,dist = CastRay(Bullet.CFrame.p,CF.N(Pos.p,Direction)*CF.N(0,0,-(StudsPerFrame*i)).p,StudsPerFrame)
			if(hit and (not hit.Parent or not hit.Parent:FindFirstChildOfClass'Humanoid' and not hit.Parent:IsA'Accessory'))then
				Puddle(hit,pos,norm,data)
				break;
			else
				Bullet.CFrame = CF.N(Pos.p,Direction)*CF.N(0,0,-(StudsPerFrame*i))
			end
			swait()
		end
		Bullet:destroy()
	end)()
end

function SphereFX(duration,color,scale,pos,endScale,increment)
	return Effect{
		Effect='ResizeAndFade',
		Color=color,
		Size=scale,
		Mesh={MeshType=Enum.MeshType.Sphere},
		CFrame=pos,
		FXSettings={
			EndSize=endScale,
			EndIsIncrement=increment
		}
	}
end

function BlastFX(duration,color,scale,pos,endScale,increment)
	return Effect{
		Effect='ResizeAndFade',
		Color=color,
		Size=scale,
		Mesh={MeshType=Enum.MeshType.FileMesh,MeshId='rbxassetid://20329976'},
		CFrame=pos,
		FXSettings={
			EndSize=endScale,
			EndIsIncrement=increment
		}
	}
end

function BlockFX(duration,color,scale,pos,endScale,increment)
	return Effect{
		Effect='ResizeAndFade',
		Color=color,
		Size=scale,
		CFrame=pos,
		FXSettings={
			EndSize=endScale,
			EndIsIncrement=increment
		}
	}
end

function ShootBullet(data)
	--ShootBullet{Size=V3.N(3,3,3),Shape='Ball',Frames=160,Origin=data.Circle.CFrame,Speed=10}
	local Size = data.Size or V3.N(2,2,2)
	local Color = data.Color or BrickColor.new'Crimson'
	local StudsPerFrame = data.Speed or 10
	local Shape = data.Shape or 'Ball'
	local Frames = data.Frames or 160
	local Pos = data.Origin or Torso.CFrame
	local Direction = data.Direction or Mouse.Hit
	local Material = data.Material or Enum.Material.Neon
	local OnHit = data.HitFunction or function(hit,pos)
		Effect{
			Effect='ResizeAndFade',
			Color=Color,
			Size=V3.N(10,10,10),
			Mesh={MeshType=Enum.MeshType.Sphere},
			CFrame=CF.N(pos),
			FXSettings={
				EndSize=V3.N(.05,.05,.05),
				EndIsIncrement=true
			}
		}
		for i = 1, 5 do
			local angles = CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180))
			Effect{
				Effect='Fade',
				Frames=65,
				Size=V3.N(5,5,10),
				CFrame=CF.N(CF.N(pos)*angles*CF.N(0,0,-10).p,pos),
				Mesh = {MeshType=Enum.MeshType.Sphere},
				Material=Enum.Material.Neon,
				Color=Color,
				MoveDirection=CF.N(CF.N(pos)*angles*CF.N(0,0,-50).p,pos).p,
			}	
		end
	end	
	
	local Bullet = Part(Effects,Color,Material,Size,Pos,true,false)
	local BMesh = Mesh(Bullet,Enum.MeshType.Brick,"","",V3.N(1,1,1),V3.N())
	if(Shape == 'Ball')then
		BMesh.MeshType = Enum.MeshType.Sphere
	elseif(Shape == 'Head')then
		BMesh.MeshType = Enum.MeshType.Head
	elseif(Shape == 'Cylinder')then
		BMesh.MeshType = Enum.MeshType.Cylinder
	end
	
	coroutine.wrap(function()
		for i = 1, Frames+1 do
			local hit,pos,norm,dist = CastRay(Bullet.CFrame.p,CF.N(Bullet.CFrame.p,Direction.p)*CF.N(0,0,-StudsPerFrame).p,StudsPerFrame)
			if(hit)then
				OnHit(hit,pos,norm,dist)
				break;
			else
				Bullet.CFrame = CF.N(Bullet.CFrame.p,Direction.p)*CF.N(0,0,-StudsPerFrame)
			end
			swait()
		end
		Bullet:destroy()
	end)()
	
end


function Zap(data)
	local sCF,eCF = data.StartCFrame,data.EndCFrame
	assert(sCF,"You need a start CFrame!")
	assert(eCF,"You need an end CFrame!")
	local parts = data.PartCount or 15
	local zapRot = data.ZapRotation or {-5,5}
	local startThick = data.StartSize or 3;
	local endThick = data.EndSize or startThick/2;
	local color = data.Color or BrickColor.new'Electric blue'
	local delay = data.Delay or 35
	local delayInc = data.DelayInc or 0
	local lastLightning;
	local MagZ = (sCF.p - eCF.p).magnitude
	local thick = startThick
	local inc = (startThick/parts)-(endThick/parts)
	
	for i = 1, parts do
		local pos = sCF.p
		if(lastLightning)then
			pos = lastLightning.CFrame*CF.N(0,0,MagZ/parts/2).p
		end
		delay = delay + delayInc
		local zapPart = Part(Effects,color,Enum.Material.Neon,V3.N(thick,thick,MagZ/parts),CF.N(pos),true,false)
		local posie = CF.N(pos,eCF.p)*CF.N(0,0,MagZ/parts).p+V3.N(M.RNG(unpack(zapRot)),M.RNG(unpack(zapRot)),M.RNG(unpack(zapRot)))
		if(parts == i)then
			local MagZ = (pos-eCF.p).magnitude
			zapPart.Size = V3.N(endThick,endThick,MagZ)
			zapPart.CFrame = CF.N(pos, eCF.p)*CF.N(0,0,-MagZ/2)
			Effect{Effect='ResizeAndFade',Size=V3.N(thick,thick,thick),CFrame=eCF*CF.A(M.RRNG(-180,180),M.RRNG(-180,180),M.RRNG(-180,180)),Color=color,Frames=delay*2,FXSettings={EndSize=V3.N(thick*8,thick*8,thick*8)}}
		else
			zapPart.CFrame = CF.N(pos,posie)*CF.N(0,0,MagZ/parts/2)
		end
		
		lastLightning = zapPart
		Effect{Effect='Fade',Manual=zapPart,Frames=delay}
		
		thick=thick-inc
		
	end
end

function Zap2(data)
	local Color = data.Color or BrickColor.new'Electric blue'
	local StartPos = data.Start or Torso.Position
	local EndPos = data.End or Mouse.Hit.p
	local SegLength = data.SegL or 2
	local Thicc = data.Thickness or 0.5
	local Fades = data.Fade or 45
	local Parent = data.Parent or Effects
	local MaxD = data.MaxDist or 200
	local Branch = data.Branches or false
	local Material = data.Material or Enum.Material.Neon
	local Raycasts = data.Raycasts or false
	local Offset = data.Offset or {0,360}
	local AddMesh = (data.Mesh == nil and true or data.Mesh)
	if((StartPos-EndPos).magnitude > MaxD)then
		EndPos = CF.N(StartPos,EndPos)*CF.N(0,0,-MaxD).p
	end
	local hit,pos,norm,dist=nil,EndPos,nil,(StartPos-EndPos).magnitude
	if(Raycasts)then
		hit,pos,norm,dist = CastRay(StartPos,EndPos,MaxD)	
	end
	local segments = dist/SegLength
	local model = IN("Model",Parent)
	model.Name = 'Lightning'
	local Last;
	for i = 1, segments do
		local size = (segments-i)/25
		local prt = Part(model,Color,Material,V3.N(Thicc+size,SegLength,Thicc+size),CF.N(),true,false)
		if(AddMesh)then IN("CylinderMesh",prt) end
		if(Last and math.floor(segments) == i)then
			local MagZ = (Last.CFrame*CF.N(0,-SegLength/2,0).p-EndPos).magnitude
			prt.Size = V3.N(Thicc+size,MagZ,Thicc+size)
			prt.CFrame = CF.N(Last.CFrame*CF.N(0,-SegLength/2,0).p,EndPos)*CF.A(M.R(90),0,0)*CF.N(0,-MagZ/2,0)	
		elseif(not Last)then
			prt.CFrame = CF.N(StartPos,pos)*CF.A(M.R(90),0,0)*CF.N(0,-SegLength/2,0)	
		else
			prt.CFrame = CF.N(Last.CFrame*CF.N(0,-SegLength/2,0).p,CF.N(pos)*CF.A(M.R(M.RNG(0,360)),M.R(M.RNG(0,360)),M.R(M.RNG(0,360)))*CF.N(0,0,SegLength/3+(segments-i)).p)*CF.A(M.R(90),0,0)*CF.N(0,-SegLength/2,0)
		end
		Last = prt
		if(Branch)then
			local choice = M.RNG(1,7+((segments-i)*2))
			if(choice == 1)then
				local LastB;
				for i2 = 1,M.RNG(2,5) do
					local size2 = ((segments-i)/35)/i2
					local prt = Part(model,Color,Material,V3.N(Thicc+size2,SegLength,Thicc+size2),CF.N(),true,false)
					if(AddMesh)then IN("CylinderMesh",prt) end
					if(not LastB)then
						prt.CFrame = CF.N(Last.CFrame*CF.N(0,-SegLength/2,0).p,Last.CFrame*CF.N(0,-SegLength/2,0)*CF.A(0,0,M.RRNG(0,360))*CF.N(0,Thicc*7,0)*CF.N(0,0,-1).p)*CF.A(M.R(90),0,0)*CF.N(0,-SegLength/2,0)
					else
						prt.CFrame = CF.N(LastB.CFrame*CF.N(0,-SegLength/2,0).p,LastB.CFrame*CF.N(0,-SegLength/2,0)*CF.A(0,0,M.RRNG(0,360))*CF.N(0,Thicc*7,0)*CF.N(0,0,-1).p)*CF.A(M.R(90),0,0)*CF.N(0,-SegLength/2,0)
					end
					LastB = prt
				end
			end
		end
	end
	if(Fades > 0)then
		coroutine.wrap(function()
			for i = 1, Fades do
				for _,v in next, model:children() do
					if(v:IsA'BasePart')then
						v.Transparency = (i/Fades)
					end
				end
				swait()
			end
			model:destroy()
		end)()
	else
		S.Debris:AddItem(model,.01)
	end
	return {End=(Last and Last.CFrame*CF.N(0,-Last.Size.Y/2,0).p),Last=Last,Model=model}
end

function Tween(obj,props,time,easing,direction,repeats,backwards)
	local info = TweenInfo.new(time or .5, easing or Enum.EasingStyle.Quad, direction or Enum.EasingDirection.Out, repeats or 0, backwards or false)
	local tween = S.TweenService:Create(obj, info, props)
	
	tween:Play()
end

function Effect(data)
	local FX = data.Effect or 'ResizeAndFade'
	local Parent = data.Parent or Effects
	local Color = data.Color or C3.N(0,0,0)
	local Size = data.Size or V3.N(1,1,1)
	local MoveDir = data.MoveDirection or nil
	local MeshData = data.Mesh or nil
	local SndData = data.Sound or nil
	local Frames = data.Frames or 45
	local Manual = data.Manual or nil
	local Material = data.Material or nil
	local CFra = data.CFrame or Torso.CFrame
	local Settings = data.FXSettings or {}
	local Shape = data.Shape or Enum.PartType.Block
	local Snd,Prt,Msh;
	local RotInc = data.RotInc or {0,0,0}
	if(typeof(RotInc) == 'number')then
		RotInc = {RotInc,RotInc,RotInc}
	end
	coroutine.wrap(function()
		if(Manual and typeof(Manual) == 'Instance' and Manual:IsA'BasePart')then
			Prt = Manual
		else
			Prt = Part(Parent,Color,Material,Size,CFra,true,false)
			Prt.Shape = Shape
		end
		if(typeof(MeshData) == 'table')then
			Msh = Mesh(Prt,MeshData.MeshType,MeshData.MeshId,MeshData.TextureId,MeshData.Scale,MeshData.Offset)
		elseif(typeof(MeshData) == 'Instance')then
			Msh = MeshData:Clone()
			Msh.Parent = Prt
		elseif(Shape == Enum.PartType.Block)then
			Msh = Mesh(Prt,Enum.MeshType.Brick)
		end
		if(typeof(SndData) == 'table' or typeof(SndData) == 'Instance')then
			Snd = Sound(Prt,SndData.SoundId,SndData.Pitch,SndData.Volume,false,false,true)
		end
		if(Snd)then
			repeat swait() until Snd.Playing and Snd.IsLoaded and Snd.TimeLength > 0
			Frames = Snd.TimeLength * Frame_Speed/Snd.Pitch
		end
		Size = (Msh and Msh.Scale or Size)
		local grow = Size-(Settings.EndSize or (Msh and Msh.Scale or Size)/2)
		
		local MoveSpeed = nil;
		if(MoveDir)then
			MoveSpeed = (CFra.p - MoveDir).magnitude/Frames
		end
		if(FX ~= 'Arc')then
			for Frame = 1, Frames do
				if(FX == "Fade")then
					Prt.Transparency  = (Frame/Frames)
				elseif(FX == "Resize")then
					if(not Settings.EndSize)then
						Settings.EndSize = V3.N(0,0,0)
					end
					if(Settings.EndIsIncrement)then
						if(Msh)then
							Msh.Scale = Msh.Scale + Settings.EndSize
						else
							Prt.Size = Prt.Size + Settings.EndSize
						end					
					else
						if(Msh)then
							Msh.Scale = Msh.Scale - grow/Frames
						else
							Prt.Size = Prt.Size - grow/Frames
						end
					end 
				elseif(FX == "ResizeAndFade")then
					if(not Settings.EndSize)then
						Settings.EndSize = V3.N(0,0,0)
					end
					if(Settings.EndIsIncrement)then
						if(Msh)then
							Msh.Scale = Msh.Scale + Settings.EndSize
						else
							Prt.Size = Prt.Size + Settings.EndSize
						end					
					else
						if(Msh)then
							Msh.Scale = Msh.Scale - grow/Frames
						else
							Prt.Size = Prt.Size - grow/Frames
						end
					end 
					Prt.Transparency = (Frame/Frames)
				end
				if(Settings.RandomizeCFrame)then
					Prt.CFrame = Prt.CFrame * CF.A(M.RRNG(-360,360),M.RRNG(-360,360),M.RRNG(-360,360))
				else
					Prt.CFrame = Prt.CFrame * CF.A(unpack(RotInc))
				end
				if(MoveDir and MoveSpeed)then
					local Orientation = Prt.Orientation
					Prt.CFrame = CF.N(Prt.Position,MoveDir)*CF.N(0,0,-MoveSpeed)
					Prt.Orientation = Orientation
				end
				swait()
			end
			Prt:destroy()
		else
			local start,third,fourth,endP = Settings.Start,Settings.Third,Settings.Fourth,Settings.End
			if(not Settings.End and Settings.Home)then endP = Settings.Home.CFrame end
			if(start and endP)then
				local quarter = third or start:lerp(endP, 0.25) * CF.N(M.RNG(-25,25),M.RNG(0,25),M.RNG(-25,25))
				local threequarter = fourth or start:lerp(endP, 0.75) * CF.N(M.RNG(-25,25),M.RNG(0,25),M.RNG(-25,25))
				for Frame = 0, 1, (Settings.Speed or 0.01) do
					if(Settings.Home)then
						endP = Settings.Home.CFrame
					end
					Prt.CFrame = Bezier(start, quarter, threequarter, endP, Frame)
				end
				if(Settings.RemoveOnGoal)then
					Prt:destroy()
				end
			else
				Prt:destroy()
				assert(start,"You need a start position!")
				assert(endP,"You need a start position!")
			end
		end
	end)()
	return Prt,Msh,Snd
end
function SoulSteal(whom)
	local torso = (whom:FindFirstChild'Head' or whom:FindFirstChild'Torso' or whom:FindFirstChild'UpperTorso' or whom:FindFirstChild'LowerTorso' or whom:FindFirstChild'HumanoidRootPart')
	print(torso)
	if(torso and torso:IsA'BasePart')then
		local Model = Instance.new("Model",Effects)
		Model.Name = whom.Name.."'s Soul"
		whom:BreakJoints()
		local Soul = Part(Model,BrickColor.new'Really red','Glass',V3.N(.5,.5,.5),torso.CFrame,true,false)
		Soul.Name = 'Head'
		NewInstance("Humanoid",Model,{Health=0,MaxHealth=0})
		Effect{
			Effect="Arc",
			Manual = Soul,
			FXSettings={
				Start=torso.CFrame,
				Home = Torso,
				RemoveOnGoal = true,
			}
		}
		local lastPoint = Soul.CFrame.p
	
		for i = 0, 1, 0.01 do 
				local point = CFrame.new(lastPoint, Soul.Position) * CFrame.Angles(-math.pi/2, 0, 0)
				local mag = (lastPoint - Soul.Position).magnitude
				Effect{
					Effect = "Fade",
					CFrame = point * CF.N(0, mag/2, 0),
					Size = V3.N(.5,mag+.5,.5),
					Color = Soul.BrickColor
				}
				lastPoint = Soul.CFrame.p
			swait()
		end
		for i = 1, 5 do
			Effect{
				Effect="Fade",
				Color = BrickColor.new'Really red',
				MoveDirection = (Torso.CFrame*CFrame.new(M.RNG(-40,40),M.RNG(-40,40),M.RNG(-40,40))).p
			}	
		end
	end
end

--// Other Functions \\ --

function CastRay(startPos,endPos,range,ignoreList)
	local ray = Ray.new(startPos,(endPos-startPos).unit*range)
	local part,pos,norm = workspace:FindPartOnRayWithIgnoreList(ray,ignoreList or {Char},false,true)
	return part,pos,norm,(pos and (startPos-pos).magnitude)
end

function getRegion(point,range,ignore)
    return workspace:FindPartsInRegion3WithIgnoreList(R3.N(point-V3.N(1,1,1)*range/2,point+V3.N(1,1,1)*range/2),ignore,100)
end

function clerp(startCF,endCF,alpha)
	return startCF:lerp(endCF, alpha)
end

function GetTorso(char)
	return char:FindFirstChild'Torso' or char:FindFirstChild'UpperTorso' or char:FindFirstChild'LowerTorso' or char:FindFirstChild'HumanoidRootPart'
end


function ShowDamage(Pos, Text, Time, Color)
	coroutine.wrap(function()
	local Rate = (1 / Frame_Speed)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 1))
	local EffectPart = NewInstance("Part",Effects,{
		Material=Enum.Material.SmoothPlastic,
		Reflectance = 0,
		Transparency = 1,
		BrickColor = BrickColor.new(Color),
		Name = "Effect",
		Size = Vector3.new(0,0,0),
		Anchored = true,
		CFrame = CF.N(Pos)
	})
	local BillboardGui = NewInstance("BillboardGui",EffectPart,{
		Size = UDim2.new(1.25, 0, 1.25, 0),
		Adornee = EffectPart,
	})
	local TextLabel = NewInstance("TextLabel",BillboardGui,{
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Text = Text,
		Font = "Bodoni",
		TextColor3 = Color,
		TextStrokeColor3 = Color3.new(0,0,0),
		TextStrokeTransparency=0,
		TextScaled = true,
	})
	S.Debris:AddItem(EffectPart, (Time))
	EffectPart.Parent = workspace
	delay(0, function()
		Tween(EffectPart,{CFrame=CF.N(Pos)*CF.N(0,3,0)},Time,Enum.EasingStyle.Elastic,Enum.EasingDirection.Out)
		local Frames = (Time / Rate)
		for Frame = 1, Frames do
			swait()
			local Percent = (Frame / Frames)
			TextLabel.TextTransparency = Percent
			TextLabel.TextStrokeTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end) end)()
end

function DealDamage(data)
	local Who = data.Who;
	local MinDam = data.MinimumDamage or 15;
	local MaxDam = data.MaximumDamage or 30;
	local MaxHP = data.MaxHP or 1e5; 
	
	local DB = data.Debounce or .2;
	
	local CritData = data.Crit or {}
	local CritChance = CritData.Chance or 0;
	local CritMultiplier = CritData.Multiplier or 1;
	
	local DamageEffects = data.DamageFX or {}
	local DamageType = DamageEffects.Type or "Normal"
	local DeathFunction = DamageEffects.DeathFunction
	
	assert(Who,"Specify someone to damage!")	
	
	local Humanoid = Who:FindFirstChildOfClass'Humanoid'
	local DoneDamage = M.RNG(MinDam,MaxDam) * (M.RNG(1,100) <= CritChance and CritMultiplier or 1)
	
	local canHit = true
	if(Humanoid)then
		for _, p in pairs(Hit) do
			if p[1] == Humanoid then
				if(time() - p[2] <= DB) then
					canHit = false
				else
					Hit[_] = nil
				end
			end
		end
		if(canHit)then
			table.insert(Hit,{Humanoid,time()})
			local HitTorso = GetTorso(Who)
			local player = S.Players:GetPlayerFromCharacter(Who)
			if(not player or player.UserId ~= 5719877 and player.UserId ~= 61573184 and player.UserId ~= 19081129)then
				if(Humanoid.MaxHealth >= MaxHP and Humanoid.Health > 0)then
					print'Got kill'
					Humanoid.Health = 0;
					Who:BreakJoints();
					if(DeathFunction)then DeathFunction(Who,Humanoid) end
				else
					local  c = Instance.new("ObjectValue",Hum)
					c.Name = "creator"
					c.Value = Plr
					S.Debris:AddItem(c,0.35)	
					if(Who:FindFirstChild'Head' and Humanoid.Health > 0)then
						ShowDamage((Who.Head.CFrame * CF.N(0, 0, (Who.Head.Size.Z / 2)).p+V3.N(0,1.5,0)+V3.N(M.RNG(-2,2),0,M.RNG(-2,2))), DoneDamage, 1.5, DamageColor.Color)
					end
					if(Humanoid.Health > 0 and Humanoid.Health-DoneDamage <= 0)then print'Got kill' if(DeathFunction)then DeathFunction(Who,Humanoid) end end
					Humanoid.Health = Humanoid.Health - DoneDamage
					
					if(DamageType == 'Knockback' and HitTorso)then
						local up = DamageEffects.KnockUp or 25
						local back = DamageEffects.KnockBack or 25
						local origin = DamageEffects.Origin or Root
						local decay = DamageEffects.Decay or .5;
						
						local bfos = Instance.new("BodyVelocity",HitTorso)
						bfos.P = 20000	
						bfos.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
						bfos.Velocity = Vector3.new(0,up,0) + (origin.CFrame.lookVector * back)
						S.Debris:AddItem(bfos,decay)
					end
				end
			end
		end
	end		
end

function Kill(whom,hum)
	whom:breakJoints()
	swait()
	angerCounter = 1
	local t = GetTorso(whom)
	if(t)then
		SoundPart(1846449729,1,1,false,true,true,t.CFrame)
	end
	whom:destroy()
end

function AOEDamage(where,range,options)
	local hit = {}
	for _,v in next, getRegion(where,range,{Char}) do
		if(v.Parent and v.Parent:FindFirstChildOfClass'Humanoid' and not hit[v.Parent])then
			local callTable = {Who=v.Parent}
			hit[v.Parent] = true
			for _,v in next, options do callTable[_] = v end
			DealDamage(callTable)
		end
	end
	return hit
end

function AOEKill(where,range)
	local hit = {}
	local closest,closestHum,closestDist=nil,nil,0;
	for _,v in next, getRegion(where,range,{Char}) do
		if(v.Parent and v.Parent:FindFirstChildOfClass'Humanoid' and not hit[v.Parent] and GetTorso(v.Parent))then
			local dist = (closest == nil and math.huge) or (closest.CFrame.p-Root.CFrame.p).magnitude
			if(dist > closestDist)then
				closest = GetTorso(v.Parent)
				closestHum = v.Parent:FindFirstChildOfClass'Humanoid'
				closestDist = dist
			end
		end
	end
	if(closest)then
		Kill(closest.Parent,closestHum)
	end
	return closest
end

function CheckAOE(where,range)
	local hit = {}
	for _,v in next, getRegion(where,range,{Char}) do
		if(v.Parent and v.Parent:FindFirstChildOfClass'Humanoid' and not hit[v.Parent] and GetTorso(v.Parent))then
			return true
		end
	end
	return false
end

function AOEHeal(where,range,amount)
	local healed = {}
	for _,v in next, getRegion(where,range,{Char}) do
		local hum = (v.Parent and v.Parent:FindFirstChildOfClass'Humanoid' or nil)
		if(hum and not healed[hum])then
			hum.Health = hum.Health + amount
			if(v.Parent:FindFirstChild'Head' and hum.Health > 0)then
				ShowDamage((v.Parent.Head.CFrame * CF.N(0, 0, (v.Parent.Head.Size.Z / 2)).p+V3.N(0,1.5,0)), "+"..amount, 1.5, BrickColor.new'Lime green'.Color)
			end
		end
	end
end


--// Wrap it all up \\--

Mouse.KeyDown:connect(function(k)
	if(k == 'f')then
		angry = not angry
	end	
end)

local idle = 0;
local gat = 0;
local smacked = false;
while true do
	swait()
	Sine = Sine + Change
	if(not Music or not Music.Parent)then
		local tp = (Music and Music.TimePosition)
		Music = Sound(Char,MusicID,1,10,true,false,true)
		Music.Name = 'Music'
		Music.TimePosition = tp
	end
	Music.SoundId = "rbxassetid://"..MusicID
	Music.Parent = Torso
	Music.Pitch = 1
	Music.Volume = 3
	if(not angry)then
		Music:Resume()
	else
		Music:Pause()
	end
	
	Torso.BrickColor = BrickColor.new'Bright green'
	Head.BrickColor = BrickColor.new'Pastel brown'
	RArm.BrickColor = BrickColor.new'Bright green'
	LArm.BrickColor = BrickColor.new'Bright green'
	RLeg.BrickColor = BrickColor.new'Deep blue'
	LLeg.BrickColor = BrickColor.new'Deep blue'
	if(God)then
		Hum.MaxHealth = 1e100
		Hum.Health = 1e100
		if(not Char:FindFirstChildOfClass'ForceField')then IN("ForceField",Char).Visible = false end
		Hum.Name = M.RNG()*100
	end
	
	local hitfloor,posfloor = workspace:FindPartOnRay(Ray.new(Root.CFrame.p,((CFrame.new(Root.Position,Root.Position - Vector3.new(0,1,0))).lookVector).unit * (4*PlayerSize)), Char)
	
	local Walking = (math.abs(Root.Velocity.x) > 1 or math.abs(Root.Velocity.z) > 1)
	local State = (Hum.PlatformStand and 'Paralyzed' or Hum.Sit and 'Sit' or not hitfloor and Root.Velocity.y < -1 and "Fall" or not hitfloor and Root.Velocity.y > 1 and "Jump" or hitfloor and Walking and (Hum.WalkSpeed < 24 and "Walk" or "Run") or hitfloor and "Idle")
	if(not Effects or not Effects.Parent)then
		Effects = IN("Model",Char)
		Effects.Name = "Effects"
	end																																																																																																				

	Hum.WalkSpeed = WalkSpeed
	if(Remove_Hats)then Instance.ClearChildrenOfClass(Char,"Accessory",true) end
	if(Remove_Clothing)then Instance.ClearChildrenOfClass(Char,"Clothing",true) Instance.ClearChildrenOfClass(Char,"ShirtGraphic",true) end
	
	if(angry)then
		local AOE = CheckAOE(Torso.CFrame.p,100)
		if(not AOE)then
			angerCounter = math.min(angerCounter+.005,4)
		end	
		rule.Transparency = 0
		ld.Transparency = 0
		rd.Transparency = 0
		idle = idle + 1
		
		if(idle < (angerCounter*15))then
			WalkSpeed = 0
			gat = 0
			NK.C0 = NKC0
			RJ.C0 = RJC0
			LS.C0 = LSC0*CF.N(0,0,-.25)*CF.A(M.R(65),M.R(180),0)
			RS.C0 = RSC0*CF.A(M.R(90),0,0)
			LH.C0 = LHC0
			RH.C0 = RHC0
			smacked = false
		else
			AOEKill(Torso.CFrame.p,3)
			WalkSpeed = 24
			local fat = (idle - (angerCounter*15))
			if(fat > 9)then
				gat = gat - 10
				if(not smacked)then
					CamShakeAll(15,15,rule)
					smacked = true
					Sound(rule,1804495872,1,3,false,true,true)
				end
			else
				gat = gat + 10
			end
			if(gat <= 0)then
				idle = 0
			end
			NK.C0 = NKC0
			RJ.C0 = RJC0
			LS.C0 = LSC0*CF.N(0,0,-.25)*CF.A(M.R(65),M.R(180),0)
			RS.C0 = RSC0*CF.A(M.R(90),M.R(gat),0)
			LH.C0 = LHC0
			RH.C0 = RHC0
		end
	else
		idle = 0
		gat = 0
		rule.Transparency = 1
		ld.Transparency = 1
		rd.Transparency = 1
		WalkSpeed = 0
		NK.C0 = NKC0
		RJ.C0 = RJC0
		LS.C0 = LSC0
		RS.C0 = RSC0
		LH.C0 = LHC0
		RH.C0 = RHC0
		smacked = false
	end
	for i,v in next, BloodPuddles do
		local mesh = i:FindFirstChild'CylinderMesh'
		BloodPuddles[i] = v + 1
		if(not mesh or i.Transparency >= 1)then
			i:destroy() 
			BloodPuddles[i] = nil
		elseif(v >= Frame_Speed*4)then
			local trans = (v-Frame_Speed*4)/(Frame_Speed*2)
			i.Transparency = trans
	            if(mesh.Scale.Z > 0)then
	                mesh.Scale = mesh.Scale-V3.N(.05,0,.05)
	            end
		else
			i.Transparency = 0
		end
	end
end