-- Created by Nebula_Zorua --
-- InSaNiTy --
-- The weight of the air is torture --
-- Discord: Nebula the Zorua#6969
-- Youtube: https://www.youtube.com/channel/UCo9oU9dCw8jnuVLuy4_SATA


--// Initializing \\--
local S = setmetatable({},{__index = function(s,i) return game:service(i) end})
local Plrs = S.Players
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
local BloodPuddles = {}
local Effects = {}
local Debounces = {Debounces={}}
local Mouse = Plr:GetMouse()
local Hit = {}
local Sine = 0
local Change = 1
local Twitch = false
local LastTwitch = 0;
local Victim = nil;
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

--// Shortcut Variables \\--
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
--// Instance Creation Functions \\--

function Sound(parent,id,pitch,volume,looped,effect,autoPlay)
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
	part[typeof(color) == 'BrickColor' and 'BrickColor' or 'Color'] = color or C3.N(0,0,0)
	part.Material = material or Enum.Material.SmoothPlastic
	part.TopSurface,part.BottomSurface=10,10
	part.Size = size or V3.N(1,1,1)
	part.CFrame = cframe or CF.N(0,0,0)
	part.Anchored = anchored or true
	part.CanCollide = cancollide or false
	part.Parent = parent or Char
	return part
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
	local inst = Instance.new(instance,parent)
	if(properties)then
		for i,v in next, properties do
			pcall(function() inst[i] = v end)
		end
	end
	return inst;
end



--// Extended ROBLOX tables \\--
local Instance = setmetatable({ClearChildrenOfClass = function(where,class,recursive) local children = (recursive and where:GetDescendants() or where:GetChildren()) for _,v in next, children do if(v:IsA(class))then v:destroy();end;end;end},{__index = Instance})
--// Customization \\--

local Frame_Speed = 60 -- The frame speed for swait. 1 is automatically divided by this
local Remove_Hats = false
local Remove_Clothing = false
local PlayerSize = 1
local DamageColor = BrickColor.new'Really red'
local MusicID = 623662713
local TwitchMinTime = 2
local BloodColor = BrickColor.new'Maroon'
local BloodMaterial = Enum.Material.Glass
local Target1Id = "rbxassetid://1490455495"
local Target2Id = "rbxassetid://133820006"
local Whitelist = {
	[{33104243,"Salvo_Starly"}] = {"Sorry, my Blazey..","OwO?","Ah, I'm sorry.. I thought you were an enemy.","Why did I even think of doing that.."},
	[{19081129,"CKbackup"}] = {"S-sugarie! My bad!", "Ah, I'm sorry, my furry friend.","Why did I even think of doing that.."},
	[{5719877,"Nebula_Zorua"}] = {"My creator!","N-nebula!?","I'm sorry, my creator!","F-father..?","Daddy..?","Sorry, Nebby..!"},
	[{19909695,"makhail07"}] = {"Cretty!~","Yeef me dadi~","Marshdaddy~","Makhail, the edge master","Hello there, friend..~"},
	[{44083134,"Fifkee"}] = {(function() return Plr.UserId == 5719877 and "Uh.. Who're you again?" or "You're Nebula's friend.. Right?" end)(),"Uuhh.. hi?","I nearly killed ya.","Oh. It's you."},
}

--// Whitelist System \\--

function IsWhitelisted(id,who)
	for i,v in next, Whitelist do
		if(i[1] == id or i[2] == who)then
			return v
		end
	end
	return nil
end

--// Weapon and GUI creation, and Character Customization \\--

if(Remove_Hats)then Instance.ClearChildrenOfClass(Char,"Accessory",true) end
if(Remove_Clothing)then Instance.ClearChildrenOfClass(Char,"Clothing",true) Instance.ClearChildrenOfClass(Char,"ShirtGraphic",true) end
local Effects = IN("Folder",Char)
Effects.Name = "Effects"

local FT,RA,LA,RL,LL = Instance.new("SpecialMesh"),Instance.new("SpecialMesh"),Instance.new("SpecialMesh"),Instance.new("SpecialMesh"),Instance.new("SpecialMesh")
FT.MeshId,FT.Scale = "rbxasset://fonts/torso.mesh",V3.N(PlayerSize,PlayerSize,PlayerSize)
RA.MeshId,RA.Scale = "rbxasset://fonts/rightarm.mesh",V3.N(PlayerSize,PlayerSize,PlayerSize)
LA.MeshId,LA.Scale = "rbxasset://fonts/leftarm.mesh",V3.N(PlayerSize,PlayerSize,PlayerSize)
RL.MeshId,RL.Scale = "rbxasset://fonts/rightleg.mesh",V3.N(PlayerSize,PlayerSize,PlayerSize)
LL.MeshId,LL.Scale = "rbxasset://fonts/leftleg.mesh",V3.N(PlayerSize,PlayerSize,PlayerSize)

local Target = NewInstance("BillboardGui",Char,{Name='Target',Adornee=nil,LightInfluence=0,AlwaysOnTop=true,Size = UDim2.new(10,0,10,0)})
local TargetImg1 = NewInstance("ImageLabel",Target,{BackgroundTransparency=1,Position = UDim2.new(.5,0,.5,0),Size = UDim2.new(1,0,1,0),AnchorPoint = Vector2.new(.5,.5),Image=Target1Id,ImageColor = C3.N(0,0,0),ImageTransparency=1})
local TargetImg2 = TargetImg1:Clone();
TargetImg2.Size = UDim2.new(1.4,0,1.4,0);
TargetImg2.Image = Target2Id
TargetImg2.Parent = Target
TargetImg2.ImageColor3 = C3.RGB(165,0,0)
if(PlayerSize ~= 1)then
	for _,v in next, Char:GetDescendats() do
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

local blood = NewInstance("ParticleEmitter",nil,{
	Color = ColorSequence.new(C3.N(.8,0,0)),
	LightEmission=.1,
	LightInfluence=1,
	ZOffset=.9,
	Size=NumberSequence.new{NumberSequenceKeypoint.new(0,.2,0),NumberSequenceKeypoint.new(1,3,0)},
	Texture="rbxassetid://284205403",
	Transparency=NumberSequence.new{NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)},
	Acceleration = V3.N(0,-15,0),
	Lifetime = NumberRange.new(1,2),
	Rate=50,
	Speed = NumberRange.new(5,15),
	SpreadAngle = Vector2.new(15,15),
	Enabled = false,
	EmissionDirection = 'Back',
})

function Blood(prt,amount)
	local part = Instance.new("Part",Effects)
	part.Transparency = 1
	part.Size = prt.Size
	part.Anchored = true
	part.CanCollide = false
	part.CFrame = CF.N(prt.Position,Torso.Position)
	S.Debris:AddItem(part,5)
	local prtcl = blood:Clone()
	prtcl.Parent = part
	prtcl:Emit(amount)
end

function BloodDrop(pos,dir,maxsize)
	local owo = NewInstance("Part",Char,{Material=BloodMaterial,BrickColor=BloodColor,Shape=Enum.PartType.Ball,Size=V3.N(.25,.25,.25), CanCollide = false})
	owo.CFrame=CF.N(pos,dir)
	local bv = Instance.new("BodyVelocity",owo) 
	bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
	bv.velocity = CF.N(pos,dir+V3.N(M.RNG(-3,3)/30,M.RNG(-3,3)/30,M.RNG(-3,3)/30)).lookVector*15
	bv.Name = "MOVE"
	game:service'Debris':AddItem(bv,0.05)
	local touch 
	touch = owo.Touched:connect(function(hit)
		if(hit.Anchored==true and hit.CanCollide and not hit.Parent:FindFirstChildOfClass'Humanoid' and not hit.Parent.Parent:FindFirstChildOfClass'Humanoid')then
			touch:disconnect()
			BloodPuddle(owo.Position+V3.N(0,1,0),3,maxsize,owo)
			owo:destroy()
		end
	end)
end
function BloodPuddle(position,range,maxSize,where)
	local hit, pos, norm = workspace:FindPartOnRayWithIgnoreList(Ray.new(
		position,CF.N(position,position+V3.N(0,-1,0)).lookVector * range			
	),{where,Char},false,true)
	if(hit)then
		if(BloodPuddles[hit])then
			BloodPuddles[hit].Frame = 0
			if(hit:FindFirstChild'CylinderMesh' and hit.CylinderMesh.Scale.Z < BloodPuddles[hit].MaxSize)then
				hit.CylinderMesh.Scale = hit.CylinderMesh.Scale + V3.N(.1,0,.1)
			end
		else
			local Puddle = NewInstance('Part',hit,{Material=BloodMaterial,BrickColor=BloodColor,Size=V3.N(1,.1,1),CFrame=CF.N(pos,pos+norm)*CF.A(90*M.P/180,0,0),Anchored=true,CanCollide=false,Archivable=false,Locked=true,Name='BloodPuddle'})
			local Cyl = NewInstance('CylinderMesh',Puddle,{Name='CylinderMesh'})
			BloodPuddles[Puddle] = {MaxSize=maxSize or 7,Frame=0}
		end
	end
end

function Tween(obj,props,time,easing,direction,repeats,backwards)
	local info = TweenInfo.new(time or .5, easing or Enum.EasingStyle.Quad, direction or Enum.EasingDirection.Out, repeats or 0, backwards or false)
	local tween = S.TweenService:Create(obj, info, props)
	
	tween:Play()
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

function Effect(data)
	local FX = data.Effect or 'Resize-AndFade'
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
	local Snd,Prt,Msh;
	if(Manual and typeof(Manual) == 'Instance' and Manual:IsA'BasePart')then
		Prt = Manual
	else
		Prt = Part(Parent,Color,Material,Size,CFra,true,false)
	end
	if(typeof(MeshData) == 'table')then
		Msh = Mesh(Prt,MeshData.MeshType,MeshData.MeshId,MeshData.TextureId,MeshData.Scale,MeshData.Offset)
	elseif(typeof(MeshData) == 'Instance')then
		Msh = MeshData:Clone()
		Msh.Parent = Prt
	end
	if(typeof(SndData) == 'table' or typeof(SndData) == 'Instance')then
		Snd = Sound(Prt,SndData.SoundId,SndData.Pitch,SndData.Volume,false,false,true)
	end
	if(Snd)then
		repeat wait() until Snd.Playing and Snd.IsLoaded and Snd.TimeLength > 0
		Frames = Snd.TimeLength * Frame_Speed/Snd.Pitch
	end
	local MoveSpeed = nil;
	if(MoveDir)then
		MoveSpeed = (CFra.p - MoveDir).magnitude/Frames
	end
	local Inc = M.RNG()-M.RNG()
	local Thingie = 0
	local Thingie2 = M.RNG(50,100)/100

	coroutine.wrap(function()
		if(FX ~= 'Arc')then
			for i = 1, Frames do
				if(FX == 'Resize-AndFade')then
					if(not Settings.EndSize)then
						Settings.EndSize = V3.N(0,0,0)
					end
					local grow = (typeof(Settings.EndSize) == 'Vector3' and Settings.EndSize-Size or typeof(Settings.EndSize) == 'number' and V3.N(Settings.EndSize))
					if(Settings.EndIsIncrement)then
						Prt.Size = Prt.Size - Settings.EndSize					
					else
						Prt.Size = Prt.Size - grow/Frames
					end 
					Prt.Transparency = (i/Frames)
				elseif(FX == 'Resize+AndFade')then
					if(not Settings.EndSize)then
						Settings.EndSize = Size*2
					end
					local grow = (typeof(Settings.EndSize) == 'Vector3' and Settings.EndSize-Size or typeof(Settings.EndSize) == 'number' and V3.N(Settings.EndSize))
					if(Settings.EndIsIncrement)then
						Prt.Size = Prt.Size + Settings.EndSize					
					else
						Prt.Size = Prt.Size + grow/Frames
					end 
					Prt.Transparency = (i/Frames)
				elseif(FX == 'Fade')then
					Prt.Transparency = (i/Frames)
				end
				if(Settings.RandomizeCFrame)then
					Prt.CFrame = Prt.CFrame * CF.A(M.RRNG(-360,360),M.RRNG(-360,360),M.RRNG(-360,360))
				end
				if(MoveDir and MoveSpeed)then
					local Orientation = Prt.Orientation
					Prt.CFrame = CF.N(Prt.Position,MoveDir)*CF.N(0,0,-MoveSpeed)
					Prt.Orientation = Orientation
				end
				if(swait and typeof(swait) == 'function')then
					swait()
				else
					wait()
				end
			end
			Prt:destroy() 
		else
			local start,third,fourth,endP = Settings.Start,Settings.Third,Settings.Fourth,Settings.End
			if(not Settings.End and Settings.Home)then endP = Settings.Home.CFrame end
			local quarter = third or start:lerp(endP, 0.25) * CF.N(M.RNG(-25,25),M.RNG(0,25),M.RNG(-25,25))
			local threequarter = fourth or start:lerp(endP, 0.75) * CF.N(M.RNG(-25,25),M.RNG(0,25),M.RNG(-25,25))
			assert(start ~= nil,"You need to specify a start point!")
			assert(endP ~= nil,"You need to specify an end point!")
			for i = 0, 1, Settings.Speed or 0.01 do
				if(Settings.Home)then
					endP = Settings.Home.CFrame
				end
				Prt.CFrame = Bezier(start, quarter, threequarter, endP, i)
				if(swait and typeof(swait) == 'function')then
					swait()
				else
					wait()
				end
			end
			if(Settings.RemoveOnGoal)then
				Prt:destroy()
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

function Ragdoll(who,half,glitching)
	who:breakJoints()
	pcall(function()
		who.HumanoidRootPart:destroy()
	end)
	local who = who
	local hhh = who:FindFirstChildOfClass'Humanoid'
	local t = GetTorso(who)
	if(hhh.RigType == Enum.HumanoidRigType.R6)then
		local RA,LA,RL,LL,HD = who:FindFirstChild'Right Arm',who:FindFirstChild'Left Arm',who:FindFirstChild'Right Leg',who:FindFirstChild'Left Leg',who:FindFirstChild'Head'
		local RAJ = NewInstance("Attachment",t,{Position=V3.N(1.5,.5,0),Orientation=V3.N()})
		local RAJ2 = NewInstance("Attachment",RA,{Position=V3.N(0,.5,0),Orientation=V3.N()})
		local LAJ = NewInstance("Attachment",t,{Position=V3.N(-1.5,.5,0),Orientation=V3.N()})
		local LAJ2 = NewInstance("Attachment",LA,{Position=V3.N(0,.5,0),Orientation=V3.N()})
		local NJ = NewInstance('Attachment',t,{Position=V3.N(0,1,0),Orientation=V3.N()})
		local NJ2 = NewInstance('Attachment',HD,{Position=V3.N(0,-.5,0),Orientation=V3.N()})
		local NJ3 = NewInstance('Attachment',HD,{Position=V3.N(0,.5,0),Orientation=V3.N()})
		
		local RAC = NewInstance('BallSocketConstraint',t,{Radius=.15,LimitsEnabled=true,Enabled=true,Restitution=0,UpperAngle=90,Attachment0=RAJ,Attachment1=RAJ2})
		local LAC = NewInstance('BallSocketConstraint',t,{Radius=.15,LimitsEnabled=true,Enabled=true,Restitution=0,UpperAngle=90,Attachment0=LAJ,Attachment1=LAJ2})
		local HC = NewInstance('BallSocketConstraint',t,{Radius=.15,LimitsEnabled=true,Enabled=true,Restitution=0,UpperAngle=45,Attachment0=NJ,Attachment1=NJ2})

		local CollideRA = NewInstance('Part',who,{Size=RArm.Size/1.5,Anchored=false,Transparency=1,Name='Collision'})
		local CollideLA = NewInstance('Part',who,{Size=LArm.Size/1.5,Anchored=false,Transparency=1,Name='Collision'})
		local CollideHD = NewInstance('Part',who,{Size=HD.Size/1.5,Anchored=false,Transparency=1,Name='Collision'})
		NewInstance('Weld',CollideRA,{Part0=RA,Part1=CollideRA})
		NewInstance('Weld',CollideLA,{Part0=LA,Part1=CollideLA})
		NewInstance('Weld',CollideHD,{Part0=HD,Part1=CollideHD})
		
		if(not half)then
			local RLJ = NewInstance("Attachment",t,{Position=V3.N(.5,-1,0),Orientation=V3.N()})
			local RLJ2 = NewInstance("Attachment",RL,{Position=V3.N(0,1,0),Orientation=V3.N()})
			local LLJ = NewInstance("Attachment",t,{Position=V3.N(-.5,-1,0),Orientation=V3.N()})
			local LLJ2 = NewInstance("Attachment",LL,{Position=V3.N(0,1,0),Orientation=V3.N()})
			local RLC = NewInstance('BallSocketConstraint',t,{Radius=.15,LimitsEnabled=true,Enabled=true,Restitution=0,UpperAngle=90,Attachment0=RLJ,Attachment1=RLJ2})
			local LLC = NewInstance('BallSocketConstraint',t,{Radius=.15,LimitsEnabled=true,Enabled=true,Restitution=0,UpperAngle=90,Attachment0=LLJ,Attachment1=LLJ2})
		end
		if(glitching)then
			swait(120)
			local pow = 75
			local FT,RA,LA,RL,LL = Instance.new("SpecialMesh",t),Instance.new("SpecialMesh",RA),Instance.new("SpecialMesh",LA),Instance.new("SpecialMesh",RL),Instance.new("SpecialMesh",LL)
			FT.MeshId,FT.Scale = "rbxasset://fonts/torso.mesh",V3.N(PlayerSize,PlayerSize,PlayerSize)
			RA.MeshId,RA.Scale = "rbxasset://fonts/rightarm.mesh",V3.N(PlayerSize,PlayerSize,PlayerSize)
			LA.MeshId,LA.Scale = "rbxasset://fonts/leftarm.mesh",V3.N(PlayerSize,PlayerSize,PlayerSize)
			RL.MeshId,RL.Scale = "rbxasset://fonts/rightleg.mesh",V3.N(PlayerSize,PlayerSize,PlayerSize)
			LL.MeshId,LL.Scale = "rbxasset://fonts/leftleg.mesh",V3.N(PlayerSize,PlayerSize,PlayerSize)
			for i = 0, 1, .1 do
				for _,v in next, who:GetDescendants() do
					if(v:IsA'DataModelMesh')then
						v.Offset = V3.N(M.RNG(-pow,pow)/100,M.RNG(-pow,pow)/100,M.RNG(-pow,pow)/100)
					elseif(v:IsA'BasePart')then
						v.Transparency = i
					end
				end
				swait()
			end
			who:destroy()
		end
	else
		if(glitching)then
			swait(120)
			for i = 0, 1, .1 do
				for _,v in next, hhh:children() do
					if(v:IsA'NumberValue')then
						v.Value = M.RNG(0,10)
					end
				end
				local pow = 75
				for _,v in next, who:GetDescendants() do
					if(v:IsA'DataModelMesh')then
						v.Offset = V3.N(M.RNG(-pow,pow)/100,M.RNG(-pow,pow)/100,M.RNG(-pow,pow)/100)
					elseif(v:IsA'BasePart')then
						v.Transparency = i
					end
				end
				swait()
			end
			who:destroy()
		end
		-- TODO: R15 Ragdoll
	end
end


function getRegion(point,range,ignore)
    return workspace:FindPartsInRegion3WithIgnoreList(R3.N(point-V3.N(1,1,1)*range/2,point+V3.N(1,1,1)*range/2),ignore,100)
end

function RandomChoice(table)
	return table[M.RNG(1,#table)]
end

function Chat(text)
	coroutine.wrap(function()
		if Char:FindFirstChild("TalkingBillBoard")~= nil then
			Char:FindFirstChild("TalkingBillBoard"):destroy()
		end
		local oText = text;
		text = ""
		for i = 1, #oText do
			if(i%2 == 1)then
				text = text..oText:sub(i,i):upper()
			else
				text = text..oText:sub(i,i):lower()
			end
		end
		local Bill = Instance.new("BillboardGui",Char)
		Bill.Size = UDim2.new(0,100,0,40)
		Bill.StudsOffset = Vector3.new(0,3,0)
		Bill.Adornee = Char.Head
		Bill.Name = "TalkingBillBoard"
		local Hehe = Instance.new("TextLabel",Bill)
		Hehe.BackgroundTransparency = 1
		Hehe.BorderSizePixel = 0
		Hehe.Text = ""
		Hehe.Font = "Bodoni"
		Hehe.TextSize = 40
		Hehe.TextStrokeTransparency = 0
		Hehe.Size = UDim2.new(1,0,0.5,0)
		coroutine.resume(coroutine.create(function()
			while Hehe ~= nil do
				swait()
				Hehe.Position = UDim2.new(math.random(-.4,.4),math.random(-5,5),.05,math.random(-5,5)) 
				Hehe.Rotation = M.RNG(-M.RNG(5,15),M.RNG(5,15))
				local aa = math.random(0, 255)/255
				local bb = math.random(0, 255)/255
				Hehe.TextColor3 = C3.N(aa,aa,aa)
				Hehe.TextStrokeColor3 = C3.N(bb,bb,bb)
			end
		end))
		for i = 1,string.len(text),1 do
			swait(5)
			Hehe.Text = string.sub(text,1,i)
		end
		swait(90)
		for i = 0, 1, .025 do
			swait()
			Hehe.TextStrokeTransparency = i
			Hehe.TextTransparency = i
			Bill.ExtentsOffset = Vector3.new(math.random(-i, i), math.random(-i, i), math.random(-i, i))
		end
		Bill:Destroy()
	end)()
end


function clerp(startCF,endCF,alpha)
	return startCF:lerp(endCF, alpha)
end

function GetTorso(char)
	return char:FindFirstChild'Torso' or char:FindFirstChild'UpperTorso' or char:FindFirstChild'LowerTorso' or char:FindFirstChild'HumanoidRootPart'
end


function ShowDamage(Pos, Text, Time, Color)
	coroutine.wrap(function()
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
		Anchored = true
	})
	local BillboardGui = NewInstance("BillboardGui",EffectPart,{
		Size = UDim2.new(2, 0, 2, 0),
		Adornee = EffectPart,
	})
	local TextLabel = NewInstance("TextLabel",BillboardGui,{
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Text = Text,
		Font = "Arial",
		TextColor3 = Color,
		TextStrokeColor3 = Color3.new(0,0,0),
		TextStrokeTransparency=0,
		TextScaled = true,
	})
	EffectPart.Parent = game:GetService("Workspace")
	delay(0, function()
		local Frames = (Time / (1/Frame_Speed))
		for Frame = 1, Frames do
			swait()
			local Percent = (Frame / Frames)
			EffectPart.CFrame = CF.N(Pos+ V3.N(0, Percent, 0)) * CF.A(0,0,M.RRNG(-90,90))
			TextLabel.Rotation = M.RNG(-6,6)
			TextLabel.Position = UDim2.new(M.RNG(-1,1)/10,M.RNG(-1,1)/10,.05,M.RNG(-1,1)/10) 
		end
		for i = 0, 1, .025 do
			swait()
			TextLabel.TextStrokeTransparency = i
			TextLabel.TextTransparency = i
			TextLabel.Position = UDim2.new(M.RNG(-15,15)/10,M.RNG(-15,15)/10,M.RNG(-15,15)/10,M.RNG(-15,15)/10) 
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end) end)()
end

--[[if(not Plr:IsFriendsWith(5719877))then
	Char:BreakJoints()
	error("Not whitelisted. You have to be friends with Nebula.")
else
	warn("You're friends with Nebula, the creator of this script")
	warn("Enjoy!")
end]]

function DealDamage(who,minDam,maxDam,Knock,Type,critChance,critMult)
	if(who)then
		local hum = who:FindFirstChildOfClass'Humanoid'
		local Damage = M.RNG(minDam,maxDam)
		local canHit = true
		if(hum)then
			for _, p in pairs(Hit) do
				if p[1] == hum then
					if(time() - p[2] < 0.1) then
						canHit = false
					else
						Hit[_] = nil
					end
				end
			end
			if(canHit)then
				if(hum.Health >= math.huge)then
					who:BreakJoints()
					if(who:FindFirstChild'Head' and hum.Health > 0)then
						ShowDamage((who.Head.CFrame * CF.N(0, 0, (who.Head.Size.Z / 2)).p+V3.N(0,1.5,0)), "INSTANT", 1.5, C3.N(1,0,0))
					end
				else
					local player = S.Players:GetPlayerFromCharacter(who)
					if(Type == "Fire")then
						--idk..
					else
						local  c = Instance.new("ObjectValue",hum)
						c.Name = "creator"
						c.Value = Plr
						game:service'Debris':AddItem(c,0.35)
						if(M.RNG(1,100) <= (critChance or 0))then
							if(who:FindFirstChild'Head' and hum.Health > 0)then
								ShowDamage((who.Head.CFrame * CF.N(0, 0, (who.Head.Size.Z / 2)).p+V3.N(0,1.5,0)), "[CRIT] "..Damage*(critMult or 2), 1.5, BrickColor.new'New Yeller'.Color)
							end
							hum.Health = hum.Health - Damage*(critMult or 2)
						else
							if(who:FindFirstChild'Head' and hum.Health > 0)then
								ShowDamage((who.Head.CFrame * CF.N(0, 0, (who.Head.Size.Z / 2)).p+V3.N(0,1.5,0)), Damage, 1.5, DamageColor.Color)
							end
							hum.Health = hum.Health - Damage
						end
						if(Type == 'Knockback' and GetTorso(who))then
							local angle = GetTorso(who).Position - Root.Position + Vector3.new(0, 0, 0).unit
							local body = NewInstance('BodyVelocity',GetTorso(who),{
								P = 500,
								maxForce = V3.N(math.huge,0,math.huge),
								velocity = Root.CFrame.lookVector * Knock + Root.Velocity / 1.05
							})
							game:service'Debris':AddItem(body,.5)	
						elseif(Type == 'Knockdown' and GetTorso(who))then
							local rek = GetTorso(who)
							print(rek)
							hum.PlatformStand = true
							delay(1,function()
								hum.PlatformStand = false
							end)
							local angle = (GetTorso(who).Position - (Root.Position + Vector3.new(0, 0, 0))).unit
							local bodvol = NewInstance("BodyVelocity",rek,{
								velocity = angle * Knock,
								P = 5000,
								maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
							})
							local rl = NewInstance("BodyAngularVelocity",rek,{
								P = 3000,
								maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
								angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
							})
							game:GetService("Debris"):AddItem(bodvol, .5)
							game:GetService("Debris"):AddItem(rl, .5)
						end
					end
				end
			end
			table.insert(Hit,{hum,time()})
		end
	end
end

function AOEDamage(where,range,minDam,maxDam,Knock,Type)
	for _,v in next, getRegion(where,range,{Char}) do
		if(v.Parent and v.Parent:FindFirstChildOfClass'Humanoid')then
			DealDamage(v.Parent,minDam,maxDam,Knock,Type)
		end
	end
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

--// Attack Functions \\--

function You_Cant_Hide()
	local target = Mouse.Target
	if(target and target.Parent and not Char:IsAncestorOf(target) and target.Parent:FindFirstChildOfClass'Humanoid')then
		if(Victim ~= target.Parent)then
			Victim = target.Parent;
			Target.Enabled = true
			Target.Adornee = GetTorso(Victim)
			TargetImg1.ImageTransparency = 1
			TargetImg2.ImageTransparency = 1
			TargetImg1.Size = UDim2.new(6,0,6,0)
			TargetImg2.Size = UDim2.new(6.4,0,6.4,0)
			Tween(TargetImg1,{ImageTransparency=0,Size=UDim2.new(1,0,1,0)},.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out)
			Tween(TargetImg2,{ImageTransparency=0,Size=UDim2.new(1.4,0,1.4,0)},.5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out)
		end
	end
end

function Brutal_Overlord()
	if(Victim)then
		Attack = true
		NeutralAnims = false
		local hum = Victim:FindFirstChildOfClass'Humanoid'
		if(hum)then
			Hum.JumpPower = 0
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.AutoRotate = false
			local tor,root = GetTorso(Victim),Victim:FindFirstChild'HumanoidRootPart'
			if(tor)then
				Root.CFrame = tor.CFrame * CF.N(0,0,2)
				local V = Victim
				V.Parent = Char
				for i = 0, 2, 0.1 do
					swait()
					local Alpha = .3
					RJ.C0 = clerp(RJ.C0,CFrame.new(0.00184797007, 0.00629393011, 0.00175395911, 0.916352093, -0.00251661055, -0.400364727, 0, 0.99998033, -0.00628567068, 0.400372595, 0.0057598874, 0.916333973),Alpha)
					LH.C0 = clerp(LH.C0,CFrame.new(-0.565588713, -0.991164684, -0.032800708, 0.909990132, 0, 0.414630055, -0.00260622799, 0.99998033, 0.00571989827, -0.41462189, -0.00628567068, 0.909972131),Alpha)
					RH.C0 = clerp(RH.C0,CFrame.new(0.562351584, -0.990811467, 0.0429569148, 0.909990132, 0, 0.414630055, -0.00260622799, 0.99998033, 0.00571989827, -0.41462189, -0.00628567068, 0.909972131),Alpha)
					LS.C0 = clerp(LS.C0,CFrame.new(-1.479936, 0.442725629, -0.241928637, 0.997844577, 0.0469278991, -0.0458690971, -0.0638397709, 0.532425106, -0.844066501, -0.015188396, 0.845175505, 0.534273386),Alpha)
					RS.C0 = clerp(RS.C0,CFrame.new(1.32794857, 0.365926802, 0.17400004, 0.584510565, -0.811339498, 0.00870320201, 0.447906405, 0.331590444, 0.830317855, -0.676555634, -0.481431335, 0.557222128),Alpha)
					NK.C0 = clerp(NK.C0,CFrame.new(-0.00438193232, 1.49895084, -0.014841184, 0.916352212, -0.0230187047, 0.399710178, -0.00251696701, 0.997995079, 0.0632432774, -0.400364548, -0.0589591675, 0.914456904),Alpha)
				end
				for i = 0, 1, 0.1 do
					swait()
					local Alpha = .2
					RJ.C0 = clerp(RJ.C0,CFrame.new(0.0928741172, 0.00629402744, 0.0566893518, 0.948310614, 0.00199300773, 0.317336231, 0, 0.99998033, -0.00628030393, -0.31734252, 0.00595567934, 0.948291838),Alpha)
					LH.C0 = clerp(LH.C0,CFrame.new(-0.645890057, -0.990359426, 0.0953748077, 0.953149736, 0, -0.302498937, 0.00189978536, 0.99998033, 0.00598607073, 0.302492946, -0.00628030393, 0.953130901),Alpha)
					RH.C0 = clerp(RH.C0,CFrame.new(0.44459179, -0.991404057, -0.0513649136, 0.953149736, 0, -0.302498937, 0.00189978536, 0.99998033, 0.00598607073, 0.302492946, -0.00628030393, 0.953130901),Alpha)
					LS.C0 = clerp(LS.C0,CFrame.new(-1.47928679, 0.367728233, 0.116084039, 0.997845054, 0.0248440802, 0.0607300103, -0.0638346076, 0.581721425, 0.810879469, -0.0151824057, -0.813008547, 0.582053781),Alpha)
					RS.C0 = clerp(RS.C0,CFrame.new(1.48636484, 0.465858519, -0.373306572, -0.95769608, 0.284951091, -0.0402629375, -0.130770594, -0.306276649, 0.942917705, 0.256353855, 0.908293724, 0.330583185),Alpha)
					NK.C0 = clerp(NK.C0,CFrame.new(-0.068510659, 1.4984324, -0.0973624364, 0.948310554, 0.0182456542, -0.316817731, 0.00199265103, 0.997983873, 0.0634387434, 0.31733641, -0.0607909337, 0.946362138),Alpha)
				end
				if(root)then root.Parent = nil end
				local gWeld = NewInstance("Weld",Char,{Part0=RArm,Part1=tor,C0=CF.N(0,-1.15,0)*CF.A(M.R(90),0,M.R(180))})
				swait(60)
				local plr = S.Players:GetPlayerFromCharacter(V)
				local Dialogues = IsWhitelisted((plr and plr.UserId or 0),V.Name)
				for i = 0, 1, 0.1 do
					swait()
					local Alpha = .3
					RJ.C0 = clerp(RJ.C0,CFrame.new(3.20394752e-13, 0.00629078969, 1.39809708e-06, 0.999999225, 5.09317033e-11, 0, -4.38656264e-11, 0.999980271, -0.00628618058, 0, 0.00628617639, 0.999979496),Alpha)
					LH.C0 = clerp(LH.C0,CFrame.new(-0.496493757, -0.990819752, 0.021611426, 0.999877751, -4.38656264e-11, 0.0156119959, -9.81397825e-05, 0.999980271, 0.0062854127, -0.0156116877, -0.00628618058, 0.999858022),Alpha)
					RH.C0 = clerp(RH.C0,CFrame.new(0.498526245, -0.990984261, 0.0154614868, 0.999877751, -4.38656264e-11, 0.0156119959, -9.81397825e-05, 0.999980271, 0.0062854127, -0.0156116877, -0.00628618058, 0.999858022),Alpha)
					LS.C0 = clerp(LS.C0,CFrame.new(-1.29056597, 0.680865526, -0.0074476786, -0.953151584, -0.302089065, 0.0156119959, 0.302213609, -0.953219652, 0.0062854127, 0.0129829049, 0.0107091125, 0.999858022),Alpha)
					RS.C0 = clerp(RS.C0,CFrame.new(1.26373434, 0.722399652, 0.00951428805, -0.951173186, 0.308261454, 0.0156119959, -0.308199704, -0.951300979, 0.0062854127, 0.0167892575, 0.0011669076, 0.999858022),Alpha)
					NK.C0 = clerp(NK.C0,CFrame.new(-1.17865966e-07, 1.4989531, -0.0143954754, 0.999999642, 2.11689621e-05, 1.13360584e-05, -1.50896085e-07, 0.477647185, -0.878551781, -2.40113586e-05, 0.878551543, 0.477646947),Alpha)
				end
				gWeld:destroy()
				local gWeld = NewInstance("Weld",Char,{Part0=Root,Part1=tor,C0=CF.N(0,2.35,0)*CF.A(M.R(90),0,M.R(90))})
				for i = 0, 6, 0.1 do
					swait()
					local Alpha = .3
					RJ.C0 = clerp(RJ.C0,CFrame.new(3.20394752e-13, 0.00629078969, 1.39809708e-06, 0.999999225, 5.09317033e-11, 0, -4.38656264e-11, 0.999980271, -0.00628618058, 0, 0.00628617639, 0.999979496),Alpha)
					LH.C0 = clerp(LH.C0,CFrame.new(-0.496493757, -0.990819752, 0.021611426, 0.999877751, -4.38656264e-11, 0.0156119959, -9.81397825e-05, 0.999980271, 0.0062854127, -0.0156116877, -0.00628618058, 0.999858022),Alpha)
					RH.C0 = clerp(RH.C0,CFrame.new(0.498526245, -0.990984261, 0.0154614868, 0.999877751, -4.38656264e-11, 0.0156119959, -9.81397825e-05, 0.999980271, 0.0062854127, -0.0156116877, -0.00628618058, 0.999858022),Alpha)
					LS.C0 = clerp(LS.C0,CFrame.new(-1.29056597, 0.680865526, -0.0074476786, -0.953151584, -0.302089065, 0.0156119959, 0.302213609, -0.953219652, 0.0062854127, 0.0129829049, 0.0107091125, 0.999858022),Alpha)
					RS.C0 = clerp(RS.C0,CFrame.new(1.26373434, 0.722399652, 0.00951428805, -0.951173186, 0.308261454, 0.0156119959, -0.308199704, -0.951300979, 0.0062854127, 0.0167892575, 0.0011669076, 0.999858022),Alpha)
					NK.C0 = clerp(NK.C0,CFrame.new(-1.17865966e-07, 1.4989531, -0.0143954754, 0.999999642, 2.11689621e-05, 1.13360584e-05, -1.50896085e-07, 0.477647185, -0.878551781, -2.40113586e-05, 0.878551543, 0.477646947),Alpha)
				end
				if(not Dialogues)then
					Blood(tor,250)
					for i = 1, 25 do
						BloodDrop(tor.Position,(tor.CFrame * CF.N(0,0,25)).p + V3.N(M.RNG(-5,5),M.RNG(-5,5),M.RNG(-5,5)),15)
					end
					Ragdoll(V,true)
					if(V:FindFirstChild'Head')then
						ShowDamage((V.Head.CFrame * CF.N(0, 0, (V.Head.Size.Z / 2)).p+V3.N(0,1.5,0)), "INSTANT", 1.5, C3.N(1,0,0))
					end
					coroutine.wrap(function()
						repeat swait() hum.Health = hum.Health - .5 until not hum or not hum.Parent or not hum.Parent.Parent or hum.Health == 0
					end)()
					gWeld:destroy()
					local s = Sound(tor,429400881,1,1,false,false,false)
					s:Play()
					s.Ended:connect(function() s:Destroy() end)
					for i = 0, 1, 0.1 do
						swait()
						local Alpha = .3
						RJ.C0 = clerp(RJ.C0,CFrame.new(3.20394752e-13, 0.00629078969, 1.39809708e-06, 0.999999225, 5.09317033e-11, 0, -4.38656264e-11, 0.999980271, -0.00628618058, 0, 0.00628617639, 0.999979496),Alpha)
						LH.C0 = clerp(LH.C0,CFrame.new(-0.496493757, -0.990819752, 0.021611426, 0.999877751, -4.38656264e-11, 0.0156119959, -9.81397825e-05, 0.999980271, 0.0062854127, -0.0156116877, -0.00628618058, 0.999858022),Alpha)
						RH.C0 = clerp(RH.C0,CFrame.new(0.498526245, -0.990984261, 0.0154614868, 0.999877751, -4.38656264e-11, 0.0156119959, -9.81397825e-05, 0.999980271, 0.0062854127, -0.0156116877, -0.00628618058, 0.999858022),Alpha)
						LS.C0 = clerp(LS.C0,CFrame.new(-1.19203663, 0.569933176, 0.0160028264, -0.81626749, 0.577462554, 0.0156119959, -0.577441692, -0.816407859, 0.0062854127, 0.016375348, -0.0038844361, 0.999858022),Alpha)
						RS.C0 = clerp(RS.C0,CFrame.new(1.22609437, 0.679628015, 0.010370885, -0.77247268, -0.634855568, 0.0156119959, 0.634996474, -0.772489607, 0.0062854127, 0.00806977227, 0.0147688743, 0.999858022),Alpha)
						NK.C0 = clerp(NK.C0,CFrame.new(-1.17865966e-07, 1.4989531, -0.0143954754, 0.999999642, 2.11689621e-05, 1.13360584e-05, -1.50896085e-07, 0.477647185, -0.878551781, -2.40113586e-05, 0.878551543, 0.477646947),Alpha)
					end
					for i = 0, 4, 0.1 do
						swait()
						local Alpha = .3
						RJ.C0 = clerp(RJ.C0,CFrame.new(3.20394752e-13, 0.00629078969, 1.39809708e-06, 0.999999225, 5.09317033e-11, 0, -4.38656264e-11, 0.999980271, -0.00628618058, 0, 0.00628617639, 0.999979496)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
						LH.C0 = clerp(LH.C0,CFrame.new(-0.496493757, -0.990819752, 0.021611426, 0.999877751, -4.38656264e-11, 0.0156119959, -9.81397825e-05, 0.999980271, 0.0062854127, -0.0156116877, -0.00628618058, 0.999858022)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
						RH.C0 = clerp(RH.C0,CFrame.new(0.498526245, -0.990984261, 0.0154614868, 0.999877751, -4.38656264e-11, 0.0156119959, -9.81397825e-05, 0.999980271, 0.0062854127, -0.0156116877, -0.00628618058, 0.999858022)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
						LS.C0 = clerp(LS.C0,CFrame.new(-1.19203663, 0.569933176, 0.0160028264, -0.81626749, 0.577462554, 0.0156119959, -0.577441692, -0.816407859, 0.0062854127, 0.016375348, -0.0038844361, 0.999858022)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
						RS.C0 = clerp(RS.C0,CFrame.new(1.22609437, 0.679628015, 0.010370885, -0.77247268, -0.634855568, 0.0156119959, 0.634996474, -0.772489607, 0.0062854127, 0.00806977227, 0.0147688743, 0.999858022)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
						NK.C0 = clerp(NK.C0,CFrame.new(-1.17865966e-07, 1.4989531, -0.0143954754, 0.999999642, 2.11689621e-05, 1.13360584e-05, -1.50896085e-07, 0.477647185, -0.878551781, -2.40113586e-05, 0.878551543, 0.477646947)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
					end
					V.Parent = workspace
				else
					V.Parent = workspace
					hum.WalkSpeed = 16
					hum.JumpPower = 50
					hum.AutoRotate = true
					if(root)then root.Parent = V end
					Chat(RandomChoice(Dialogues))
					gWeld:destroy()
				end
			end
		end
		Attack = false
		NeutralAnims = true
		Hum.JumpPower = 50
	end
end

function F_Is_For_Friends()
	if(Victim)then
		Attack = true
		NeutralAnims = false
		Root.Anchored = true
		Hum.WalkSpeed = 0
		Hum.JumpPower = 0
		Hum.AutoRotate = false
		local hum = Victim:FindFirstChildOfClass'Humanoid'
		if(hum)then
			hum.WalkSpeed = 0
			hum.JumpPower = 0
			hum.AutoRotate = false
			local tor,root = GetTorso(Victim),Victim:FindFirstChild'HumanoidRootPart'
			if(tor)then
				local plr = S.Players:GetPlayerFromCharacter(Victim)
				Victim.Parent = Char
				local V = Victim
				Root.CFrame = tor.CFrame * CF.N(0,0,2)
				for i = 0, 2, 0.1 do
					swait()
					local Alpha = .3
					RJ.C0 = clerp(RJ.C0,CFrame.new(0.00184797007, 0.00629393011, 0.00175395911, 0.916352093, -0.00251661055, -0.400364727, 0, 0.99998033, -0.00628567068, 0.400372595, 0.0057598874, 0.916333973),Alpha)
					LH.C0 = clerp(LH.C0,CFrame.new(-0.565588713, -0.991164684, -0.032800708, 0.909990132, 0, 0.414630055, -0.00260622799, 0.99998033, 0.00571989827, -0.41462189, -0.00628567068, 0.909972131),Alpha)
					RH.C0 = clerp(RH.C0,CFrame.new(0.562351584, -0.990811467, 0.0429569148, 0.909990132, 0, 0.414630055, -0.00260622799, 0.99998033, 0.00571989827, -0.41462189, -0.00628567068, 0.909972131),Alpha)
					LS.C0 = clerp(LS.C0,CFrame.new(-1.479936, 0.442725629, -0.241928637, 0.997844577, 0.0469278991, -0.0458690971, -0.0638397709, 0.532425106, -0.844066501, -0.015188396, 0.845175505, 0.534273386),Alpha)
					RS.C0 = clerp(RS.C0,CFrame.new(1.32794857, 0.365926802, 0.17400004, 0.584510565, -0.811339498, 0.00870320201, 0.447906405, 0.331590444, 0.830317855, -0.676555634, -0.481431335, 0.557222128),Alpha)
					NK.C0 = clerp(NK.C0,CFrame.new(-0.00438193232, 1.49895084, -0.014841184, 0.916352212, -0.0230187047, 0.399710178, -0.00251696701, 0.997995079, 0.0632432774, -0.400364548, -0.0589591675, 0.914456904),Alpha)
				end
				if(not IsWhitelisted((plr and plr.UserId or 0),Victim.Name))then
					for i = 0, 1, 0.1 do
						swait()
						local Alpha = .2
						RJ.C0 = clerp(RJ.C0,CFrame.new(0.0928741172, 0.00629402744, 0.0566893518, 0.948310614, 0.00199300773, 0.317336231, 0, 0.99998033, -0.00628030393, -0.31734252, 0.00595567934, 0.948291838),Alpha)
						LH.C0 = clerp(LH.C0,CFrame.new(-0.645890057, -0.990359426, 0.0953748077, 0.953149736, 0, -0.302498937, 0.00189978536, 0.99998033, 0.00598607073, 0.302492946, -0.00628030393, 0.953130901),Alpha)
						RH.C0 = clerp(RH.C0,CFrame.new(0.44459179, -0.991404057, -0.0513649136, 0.953149736, 0, -0.302498937, 0.00189978536, 0.99998033, 0.00598607073, 0.302492946, -0.00628030393, 0.953130901),Alpha)
						LS.C0 = clerp(LS.C0,CFrame.new(-1.47928679, 0.367728233, 0.116084039, 0.997845054, 0.0248440802, 0.0607300103, -0.0638346076, 0.581721425, 0.810879469, -0.0151824057, -0.813008547, 0.582053781),Alpha)
						RS.C0 = clerp(RS.C0,CFrame.new(1.48636484, 0.465858519, -0.373306572, -0.95769608, 0.284951091, -0.0402629375, -0.130770594, -0.306276649, 0.942917705, 0.256353855, 0.908293724, 0.330583185),Alpha)
						NK.C0 = clerp(NK.C0,CFrame.new(-0.068510659, 1.4984324, -0.0973624364, 0.948310554, 0.0182456542, -0.316817731, 0.00199265103, 0.997983873, 0.0634387434, 0.31733641, -0.0607909337, 0.946362138),Alpha)
					end
					if(root)then root:destroy() end
					local gWeld = NewInstance("Weld",Char,{Part0=RArm,Part1=tor,C0=CF.N(0,-1.15,0)*CF.A(M.R(90),0,M.R(180))})
					for i = 0, 1.5, 0.1 do
						swait()
						local Alpha = .2
						RJ.C0 = clerp(RJ.C0,CFrame.new(0.0928741172, 0.00629402744, 0.0566893518, 0.948310614, 0.00199300773, 0.317336231, 0, 0.99998033, -0.00628030393, -0.31734252, 0.00595567934, 0.948291838),Alpha)
						LH.C0 = clerp(LH.C0,CFrame.new(-0.645890057, -0.990359426, 0.0953748077, 0.953149736, 0, -0.302498937, 0.00189978536, 0.99998033, 0.00598607073, 0.302492946, -0.00628030393, 0.953130901),Alpha)
						RH.C0 = clerp(RH.C0,CFrame.new(0.44459179, -0.991404057, -0.0513649136, 0.953149736, 0, -0.302498937, 0.00189978536, 0.99998033, 0.00598607073, 0.302492946, -0.00628030393, 0.953130901),Alpha)
						LS.C0 = clerp(LS.C0,CFrame.new(-1.47928679, 0.367728233, 0.116084039, 0.997845054, 0.0248440802, 0.0607300103, -0.0638346076, 0.581721425, 0.810879469, -0.0151824057, -0.813008547, 0.582053781),Alpha)
						RS.C0 = clerp(RS.C0,CFrame.new(1.48636484, 0.465858519, -0.373306572, -0.95769608, 0.284951091, -0.0402629375, -0.130770594, -0.306276649, 0.942917705, 0.256353855, 0.908293724, 0.330583185),Alpha)
						NK.C0 = clerp(NK.C0,CFrame.new(-0.068510659, 1.4984324, -0.0973624364, 0.948310554, 0.0182456542, -0.316817731, 0.00199265103, 0.997983873, 0.0634387434, 0.31733641, -0.0607909337, 0.946362138),Alpha)
					end
					for i = 0, 1.5, 0.1 do
						swait()
						local Alpha = .2
						RJ.C0 = clerp(RJ.C0,CFrame.new(0.00625591865, 0.0813473165, 0.400900364, 0.999966562, 0.00783777051, -0.00216883142, -0.00785200112, 0.86111331, -0.508352578, -0.00211674068, 0.508352578, 0.861145973),Alpha)
						LH.C0 = clerp(LH.C0,CFrame.new(-0.493550777, -1.11785793, 0.210999548, 0.999878109, -0.00785200112, 0.0134950019, -9.95867158e-05, 0.86111331, 0.508413196, -0.0156127857, -0.508352578, 0.861007512),Alpha)
						RH.C0 = clerp(RH.C0,CFrame.new(0.501458287, -1.11329269, 0.203607619, 0.999878109, -0.00785200112, 0.0134950019, -9.95867158e-05, 0.86111331, 0.508413196, -0.0156127857, -0.508352578, 0.861007512),Alpha)
						LS.C0 = clerp(LS.C0,CFrame.new(-1.42722964, 0.501024425, -0.00418075919, 0.987981081, 0.153783977, 0.0156133743, -0.15389666, 0.988066971, 0.00628429651, -0.0144606289, -0.008611653, 0.999858499),Alpha)
						RS.C0 = clerp(RS.C0,CFrame.new(1.49951315, 0.533271909, 0.122298151, 0.999878109, -0.0090814922, -0.0127002187, -9.95867158e-05, -0.817126393, 0.576458812, -0.0156127857, -0.576387286, -0.817027688),Alpha)
						NK.C0 = clerp(NK.C0,CFrame.new(7.63008302e-06, 1.49894154, -0.0144001842, 1, 6.98491931e-10, 9.31322575e-10, -3.63797881e-10, 0.973997772, -0.226557806, 0, 0.226557702, 0.973997891),Alpha)
					end
					for i = 0, 1, 0.1 do
						swait()
						local Alpha = .3
						RJ.C0 = clerp(RJ.C0,CFrame.new(-0.0187514834, -0.79457438, -1.20069253, 0.999795973, -0.0154833021, -0.0129478984, 0.0153970039, 0.17028904, 0.985273898, -0.0130504072, -0.985272229, 0.170492694),Alpha)
						LH.C0 = clerp(LH.C0,CFrame.new(-0.501449645, -0.610708058, -0.298194289, 0.999878228, 0.0124785267, 0.0093758991, -9.93862486e-05, 0.605774939, -0.795636177, -0.0156080509, 0.795538306, 0.6057024),Alpha)
						RH.C0 = clerp(RH.C0,CFrame.new(0.493200511, -0.598516285, -0.328632295, 0.999878228, 0.012479268, 0.00937492307, -9.9343175e-05, 0.605710208, -0.79568541, -0.0156080583, 0.79558748, 0.60563767),Alpha)
						LS.C0 = clerp(LS.C0,CFrame.new(-1.45762277, 0.217138797, 0.937710166, 0.987961769, -0.0680040792, -0.13894996, -0.154015318, -0.516705632, -0.842196465, -0.0145234168, 0.853458226, -0.52095896),Alpha)
						RS.C0 = clerp(RS.C0,CFrame.new(1.17450583, 0.446741909, -0.635936022, 0.971768141, 0.23593688, 0.000732728047, -0.0119010834, 0.0521189161, -0.998570144, -0.235637665, 0.970369816, 0.0534554198),Alpha)
						NK.C0 = clerp(NK.C0,CFrame.new(7.62972468e-06, 1.49894738, -0.0143931806, 1.00000012, 0, -9.31322575e-10, 6.54836185e-11, 0.973998249, -0.226556346, -9.31322575e-10, 0.226556271, 0.973998129),Alpha)
					end
					gWeld:destroy()
					tor.CFrame = Root.CFrame*CF.A(M.R(90),0,M.R(180))*CF.N(0,1.5,2.5)
					tor.Anchored = true
					for i = 0, 1.5, 0.1 do
						swait()
						local Alpha = .3
						RJ.C0 = clerp(RJ.C0,CFrame.new(-0.0187514834, -0.79457438, -1.20069253, 0.999795973, -0.0154833021, -0.0129478984, 0.0153970039, 0.17028904, 0.985273898, -0.0130504072, -0.985272229, 0.170492694),Alpha)
						LH.C0 = clerp(LH.C0,CFrame.new(-0.501449645, -0.610708058, -0.298194289, 0.999878228, 0.0124785267, 0.0093758991, -9.93862486e-05, 0.605774939, -0.795636177, -0.0156080509, 0.795538306, 0.6057024),Alpha)
						RH.C0 = clerp(RH.C0,CFrame.new(0.493200511, -0.598516285, -0.328632295, 0.999878228, 0.012479268, 0.00937492307, -9.9343175e-05, 0.605710208, -0.79568541, -0.0156080583, 0.79558748, 0.60563767),Alpha)
						LS.C0 = clerp(LS.C0,CFrame.new(-1.45762277, 0.217138797, 0.937710166, 0.987961769, -0.0680040792, -0.13894996, -0.154015318, -0.516705632, -0.842196465, -0.0145234168, 0.853458226, -0.52095896),Alpha)
						RS.C0 = clerp(RS.C0,CFrame.new(1.17450583, 0.446741909, -0.635936022, 0.971768141, 0.23593688, 0.000732728047, -0.0119010834, 0.0521189161, -0.998570144, -0.235637665, 0.970369816, 0.0534554198),Alpha)
						NK.C0 = clerp(NK.C0,CFrame.new(7.62972468e-06, 1.49894738, -0.0143931806, 1.00000012, 0, -9.31322575e-10, 6.54836185e-11, 0.973998249, -0.226556346, -9.31322575e-10, 0.226556271, 0.973998129),Alpha)
					end
					Ragdoll(V)
					if(V:FindFirstChild'Head')then
						local s = Sound(tor,429400881,1,1,false,false,false)
						s:Play()
						s.Ended:connect(function() s:Destroy() end)
						for i = 1, 15 do
							BloodPuddle(V.Head.Position + V3.N(0,1,0) + V3.N(M.RNG(-75,75)/100,M.RNG(-75,75)/100,M.RNG(-75,75)/100),5,15,V)
						end
						ShowDamage((V.Head.CFrame * CF.N(0, 0, (V.Head.Size.Z / 2)).p+V3.N(0,1.5,0)), "INSTANT", 1.5, C3.N(1,0,0))
						V.Head:destroy()
					end
					V.Parent = workspace
					for i = 0, 1, 0.1 do
						swait()
						local Alpha = .5
						RJ.C0 = clerp(RJ.C0,CFrame.new(-0.0187514834, -0.79457438, -1.20069253, 0.999795973, -0.0154833021, -0.0129478984, 0.0153970039, 0.17028904, 0.985273898, -0.0130504072, -0.985272229, 0.170492694),Alpha)
						LH.C0 = clerp(LH.C0,CFrame.new(-0.501449645, -0.610708058, -0.298194289, 0.999878228, 0.0124785267, 0.0093758991, -9.93862486e-05, 0.605774939, -0.795636177, -0.0156080509, 0.795538306, 0.6057024),Alpha)
						RH.C0 = clerp(RH.C0,CFrame.new(0.493200511, -0.598516285, -0.328632295, 0.999878228, 0.012479268, 0.00937492307, -9.9343175e-05, 0.605710208, -0.79568541, -0.0156080583, 0.79558748, 0.60563767),Alpha)
						LS.C0 = clerp(LS.C0,CFrame.new(-0.891352475, 1.30320811, -0.969099402, 0.885748208, -0.442882746, -0.138943374, -0.340959162, -0.417689204, -0.842189372, 0.31495595, 0.793341637, -0.520972252),Alpha)
						RS.C0 = clerp(RS.C0,CFrame.new(1.17450583, 0.446741909, -0.635936022, 0.971768141, 0.23593688, 0.000732728047, -0.0119010834, 0.0521189161, -0.998570144, -0.235637665, 0.970369816, 0.0534554198),Alpha)
						NK.C0 = clerp(NK.C0,CFrame.new(7.62972468e-06, 1.49894738, -0.0143931806, 1.00000012, 0, -9.31322575e-10, 6.54836185e-11, 0.973998249, -0.226556346, -9.31322575e-10, 0.226556271, 0.973998129),Alpha)
					end
					tor.Anchored = false
				else
					swait(30)
					V.Parent = workspace
					hum.WalkSpeed = 16
					hum.JumpPower = 50
					hum.AutoRotate = true
					local dialogue = IsWhitelisted((plr and plr.UserId or 0),V.Name)
					Chat(dialogue[M.RNG(1,#dialogue)])
				end
			end
		end
		Hum.WalkSpeed = 8
		Hum.JumpPower = 50
		Hum.AutoRotate = true
		Root.Anchored = false
		Attack = false
		NeutralAnims = true
	end
end

function Tear_My_Life_Into_Taunts()
	Attack = true
	NeutralAnims = false
	for i = 0, 8, 0.1 do
		swait()
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(3.20698329e-13, 0.00629675016, 1.43556463e-06, 0.999999225, 5.09317033e-11, 0, -4.38656264e-11, 0.999980271, -0.00628618058, 0, 0.00628617639, 0.999979496)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.496493757, -0.990822613, 0.0216114447, 0.999877751, -4.38656264e-11, 0.0156119959, -9.81397825e-05, 0.999980271, 0.0062854127, -0.0156116877, -0.00628618058, 0.999858022)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.498533875, -0.990987241, 0.0154613862, 0.999877751, -4.38656264e-11, 0.0156119959, -9.81397825e-05, 0.999980271, 0.0062854127, -0.0156116877, -0.00628618058, 0.999858022)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.4130398, 0.471796542, 0.436438888, 0.849095166, -0.528082132, -0.0128858006, -0.440307319, -0.694065511, -0.569563627, 0.291832745, 0.489287376, -0.821846128)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.40943193, 0.493523985, 0.387199104, 0.835501969, 0.547668338, -0.0446685776, 0.420134097, -0.689098537, -0.590449631, -0.354151636, 0.474555045, -0.805837154)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(5.36867731e-07, 1.49895, -0.0144043043, 0.999999225, 3.67464963e-07, -1.62050128e-07, -3.56478267e-07, 0.997964799, 0.0637686923, 1.8440187e-07, -0.0637686551, 0.997963905)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
	end
	for i = 0, 6, 0.1 do
		swait()
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(3.20698329e-13, 0.00629675016, 1.43556463e-06, 0.999999225, 5.09317033e-11, 0, -4.38656264e-11, 0.999980271, -0.00628618058, 0, 0.00628617639, 0.999979496)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.496493757, -0.990822613, 0.0216114447, 0.999877751, -4.38656264e-11, 0.0156119959, -9.81397825e-05, 0.999980271, 0.0062854127, -0.0156116877, -0.00628618058, 0.999858022)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.498533875, -0.990987241, 0.0154613862, 0.999877751, -4.38656264e-11, 0.0156119959, -9.81397825e-05, 0.999980271, 0.0062854127, -0.0156116877, -0.00628618058, 0.999858022)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.23893571, 1.10698521, -0.259219378, 0.91258198, -0.374027461, 0.165217906, -0.313840568, -0.899720669, -0.303326517, 0.262102395, 0.224958256, -0.938453794)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.34101844, 0.980774999, 0.079483822, 0.969134748, 0.232594684, 0.0817119107, 0.245576948, -0.939937592, -0.237085104, 0.0216593593, 0.249834001, -0.968046069)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(8.18966896e-07, 2.2650795, -0.0633551627, 0.999999225, 3.67464963e-07, -1.62050128e-07, -3.56478267e-07, 0.997964799, 0.0637686923, 1.8440187e-07, -0.0637686551, 0.997963905)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
	end
	for i = 0, 8, 0.1 do
		swait()
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(3.20698329e-13, 0.00629675016, 1.43556463e-06, 0.999999225, 5.09317033e-11, 0, -4.38656264e-11, 0.999980271, -0.00628618058, 0, 0.00628617639, 0.999979496)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.496493757, -0.990822613, 0.0216114447, 0.999877751, -4.38656264e-11, 0.0156119959, -9.81397825e-05, 0.999980271, 0.0062854127, -0.0156116877, -0.00628618058, 0.999858022)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.498533875, -0.990987241, 0.0154613862, 0.999877751, -4.38656264e-11, 0.0156119959, -9.81397825e-05, 0.999980271, 0.0062854127, -0.0156116877, -0.00628618058, 0.999858022)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.4130398, 0.471796542, 0.436438888, 0.849095166, -0.528082132, -0.0128858006, -0.440307319, -0.694065511, -0.569563627, 0.291832745, 0.489287376, -0.821846128)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.40943193, 0.493523985, 0.387199104, 0.835501969, 0.547668338, -0.0446685776, 0.420134097, -0.689098537, -0.590449631, -0.354151636, 0.474555045, -0.805837154)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(5.36867731e-07, 1.49895, -0.0144043043, 0.999999225, 3.67464963e-07, -1.62050128e-07, -3.56478267e-07, 0.997964799, 0.0637686923, 1.8440187e-07, -0.0637686551, 0.997963905)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
	end
	Attack = false
	NeutralAnims = true
end


function Tear_My_Life_Into_Pieces()
	Attack = true
	NeutralAnims = false
	for i = 0, 8, 0.1 do
		swait()
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(3.20698329e-13, 0.00629675016, 1.43556463e-06, 0.999999225, 5.09317033e-11, 0, -4.38656264e-11, 0.999980271, -0.00628618058, 0, 0.00628617639, 0.999979496)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.496493757, -0.990822613, 0.0216114447, 0.999877751, -4.38656264e-11, 0.0156119959, -9.81397825e-05, 0.999980271, 0.0062854127, -0.0156116877, -0.00628618058, 0.999858022)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.498533875, -0.990987241, 0.0154613862, 0.999877751, -4.38656264e-11, 0.0156119959, -9.81397825e-05, 0.999980271, 0.0062854127, -0.0156116877, -0.00628618058, 0.999858022)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.4130398, 0.471796542, 0.436438888, 0.849095166, -0.528082132, -0.0128858006, -0.440307319, -0.694065511, -0.569563627, 0.291832745, 0.489287376, -0.821846128)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.40943193, 0.493523985, 0.387199104, 0.835501969, 0.547668338, -0.0446685776, 0.420134097, -0.689098537, -0.590449631, -0.354151636, 0.474555045, -0.805837154)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(5.36867731e-07, 1.49895, -0.0144043043, 0.999999225, 3.67464963e-07, -1.62050128e-07, -3.56478267e-07, 0.997964799, 0.0637686923, 1.8440187e-07, -0.0637686551, 0.997963905)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
	end
	for i = 0, 8, 0.1 do
		swait()
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(3.20698329e-13, 0.00629675016, 1.43556463e-06, 0.999999225, 5.09317033e-11, 0, -4.38656264e-11, 0.999980271, -0.00628618058, 0, 0.00628617639, 0.999979496)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.496493757, -0.990822613, 0.0216114447, 0.999877751, -4.38656264e-11, 0.0156119959, -9.81397825e-05, 0.999980271, 0.0062854127, -0.0156116877, -0.00628618058, 0.999858022)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.498533875, -0.990987241, 0.0154613862, 0.999877751, -4.38656264e-11, 0.0156119959, -9.81397825e-05, 0.999980271, 0.0062854127, -0.0156116877, -0.00628618058, 0.999858022)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.23893571, 1.10698521, -0.259219378, 0.91258198, -0.374027461, 0.165217906, -0.313840568, -0.899720669, -0.303326517, 0.262102395, 0.224958256, -0.938453794)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.34101844, 0.980774999, 0.079483822, 0.969134748, 0.232594684, 0.0817119107, 0.245576948, -0.939937592, -0.237085104, 0.0216593593, 0.249834001, -0.968046069)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(8.18966896e-07, 2.2650795, -0.0633551627, 0.999999225, 3.67464963e-07, -1.62050128e-07, -3.56478267e-07, 0.997964799, 0.0637686923, 1.8440187e-07, -0.0637686551, 0.997963905)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
	end
	for i = 0, 3, 0.1 do
		swait()
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(3.20698329e-13, 0.00629675016, 1.43556463e-06, 0.999999225, 5.09317033e-11, 0, -4.38656264e-11, 0.999980271, -0.00628618058, 0, 0.00628617639, 0.999979496)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.496493757, -0.990822613, 0.0216114447, 0.999877751, -4.38656264e-11, 0.0156119959, -9.81397825e-05, 0.999980271, 0.0062854127, -0.0156116877, -0.00628618058, 0.999858022)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.498533875, -0.990987241, 0.0154613862, 0.999877751, -4.38656264e-11, 0.0156119959, -9.81397825e-05, 0.999980271, 0.0062854127, -0.0156116877, -0.00628618058, 0.999858022)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.50119066, 0.635437846, 0.183586091, 0.999877751, -0.00959497504, -0.0123154735, -9.81397825e-05, -0.792694271, 0.609619617, -0.0156116877, -0.60954386, -0.792598248)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.42464852, 0.494964302, 0.0084314663, 0.989141941, -0.146129116, 0.0156119959, 0.146047026, 0.989257753, 0.0062854127, -0.0163627695, -0.00393708423, 0.999858022)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(-1.52624333, 1.82071006, 1.26504755, 0.999999642, -4.94066626e-06, -7.65314326e-07, 3.14830686e-08, 0.159286067, -0.987232625, 4.99933958e-06, 0.987232208, 0.159286022)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
	end
	for i = 0, .8, 0.1 do
		swait()
		local Alpha = .3
		RJ.C0 = clerp(RJ.C0,CFrame.new(3.20698329e-13, 0.00629675016, 1.43556463e-06, 0.999999225, 5.09317033e-11, 0, -4.38656264e-11, 0.999980271, -0.00628618058, 0, 0.00628617639, 0.999979496)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		LH.C0 = clerp(LH.C0,CFrame.new(-0.496493757, -0.990822613, 0.0216114447, 0.999877751, -4.38656264e-11, 0.0156119959, -9.81397825e-05, 0.999980271, 0.0062854127, -0.0156116877, -0.00628618058, 0.999858022)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		RH.C0 = clerp(RH.C0,CFrame.new(0.498533875, -0.990987241, 0.0154613862, 0.999877751, -4.38656264e-11, 0.0156119959, -9.81397825e-05, 0.999980271, 0.0062854127, -0.0156116877, -0.00628618058, 0.999858022)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		LS.C0 = clerp(LS.C0,CFrame.new(-1.5084902, 0.727420211, -0.284505814, 0.999877751, 0.0138456346, -0.00721337926, -9.81397825e-05, -0.456457406, -0.889745295, -0.0156116877, 0.889637291, -0.456400275)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		RS.C0 = clerp(RS.C0,CFrame.new(1.42464852, 0.494964302, 0.0084314663, 0.989141941, -0.146129116, 0.0156119959, 0.146047026, 0.989257753, 0.0062854127, -0.0163627695, -0.00393708423, 0.999858022)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
		NK.C0 = clerp(NK.C0,CFrame.new(-1.5716989, 1.57655525, -1.64465189, 0.999711812, -0.0205687769, 0.0123552298, 0.0152448276, 0.94212538, 0.33491385, -0.0185289457, -0.334628969, 0.942167461)*CF.A(M.RRNG(-5,5),M.RRNG(-5,5),M.RRNG(-5,5)),Alpha)
	end
	Head.Transparency = 1
	for _,v in next, Char:children() do
		if(v:IsA'Accessory')then v.Handle.Transparency = 1 end
	end
	local projectile = Head:Clone()
	projectile.Transparency = 0
	projectile.Parent = workspace
	local bv = NewInstance("BodyVelocity",projectile,{Velocity=(Mouse.Hit.p - projectile.CFrame.p).unit * 125})
	delay(.2, function()
		bv:destroy()
	end)
	projectile.Touched:connect(function(t)
		if(not Char:IsAncestorOf(t))then
			local hum = (t and t.Parent and t.Parent:FindFirstChildOfClass'Humanoid')
			local hed = (t and t.Parent and t.Parent:FindFirstChild'Head')
			if(hum and hed and hum.Health > 0)then
				local plr = S.Players:GetPlayerFromCharacter(t.Parent)
				if(not IsWhitelisted((plr and plr.UserId or 0),t.Parent.Name))then
					t.Parent:breakJoints()
					Ragdoll(t.Parent)
				end
			end
		end
	end)
	coroutine.wrap(function()
		for i = 1, 0, -.05 do
			Head.Transparency = i
			for _,v in next, Char:children() do
				if(v:IsA'Accessory')then v.Handle.Transparency = i end
			end
			swait()
		end
		Head.Transparency = 0
		for _,v in next, Char:children() do
			if(v:IsA'Accessory')then v.Handle.Transparency = 0 end
		end
	end)()
	delay(2, function()
		for i = 0, 1, .05 do
			projectile.Transparency = i
			swait()
		end
		projectile:destroy()
	end)
	swait(30)
	NeutralAnims = true
	Attack = false
end

function An_Error_Has_Occureedddddddddd()
	Attack = true
	coroutine.wrap(function()
		while true do
			swait()
			local pow = 75
			FT.Parent = Torso
			RA.Parent = RArm
			LA.Parent = LArm
			RL.Parent = RLeg
			LL.Parent = LLeg
			for _,v in next, Char:GetDescendants() do
				if(v:IsA'DataModelMesh')then
					v.Offset = V3.N(M.RNG(-pow,pow)/100,M.RNG(-pow,pow)/100,M.RNG(-pow,pow)/100)
				end
			end
		end
	end)()
	Chat("An error has "..string.rep("ocu",25))
	swait(30)
	coroutine.wrap(function()
		local tp = Music.TimePosition
		while true do
			swait(30)
			Music.TimePosition = tp
		end
	end)()
	swait(60)
	for _,v in next, workspace:GetDescendants() do
		if(v:FindFirstChildOfClass'Humanoid')then
			coroutine.wrap(function() Ragdoll(v,false,true) end)()
		end
	end
end

Mouse.KeyDown:connect(function(k)
	if(Attack)then return end
	if(k == 'q')then You_Cant_Hide() end
	if(k == 'z')then F_Is_For_Friends() end
	if(k == 'x')then Brutal_Overlord() end
	if(k == 'c')then Tear_My_Life_Into_Pieces() end
	if(k == 't')then Tear_My_Life_Into_Taunts() end
	if(k == 'v')then An_Error_Has_Occureedddddddddd() end
end)

--// Wrap it all up \\--


coroutine.wrap(function()
	while true do
		swait()
		for puddle,data in next, BloodPuddles do
			if(puddle.Transparency > 0.9)then
				BloodPuddles[puddle] = nil
				puddle:destroy()
			end
			data.Frame = data.Frame + 1
			if(data.Frame > Frame_Speed*4)then
				local trans = (data.Frame-Frame_Speed*4)/Frame_Speed*2
				puddle.Transparency = trans
				if(puddle:FindFirstChild'CylinderMesh' and puddle.CylinderMesh.Scale.Z > 0)then
					puddle.CylinderMesh.Scale = puddle.CylinderMesh.Scale-V3.N(.1,0,.1)
				end
			else
				puddle.Transparency = 0
			end
		end
	end
end)()

Hum.WalkSpeed = 8
while true do
	swait()
	if(not Music or not Music.Parent)then
		local a = Music.TimePosition
		Music = Sound(Char,MusicID,1,3,true,false,true)
		Music.Name = 'Music'
		Music.TimePosition = a
	end
	Music.Volume = 5
	Sine = Sine + Change
	local hitfloor,posfloor = workspace:FindPartOnRay(Ray.new(Root.CFrame.p,((CFrame.new(Root.Position,Root.Position - Vector3.new(0,1,0))).lookVector).unit * 4), Char)
	local Walking = (math.abs(Root.Velocity.x) > 1 or math.abs(Root.Velocity.z) > 1)
	local State = (not hitfloor and Root.Velocity.y < -1 and "Fall" or not hitfloor and Root.Velocity.y > 1 and "Jump" or hitfloor and Walking and "Walk" or hitfloor and "Idle")
	if(State == 'Walk')then
		local Alpha = math.min(.2*(Hum.WalkSpeed/16),1)
		if(Hum.WalkSpeed < 14)then
			local wsVal = 14 / (Hum.WalkSpeed/5)
			Change = 1
			RH.C1 = RH.C1:lerp(CF.N(0,.985-.15*M.S(Sine/wsVal),0+.2*-M.C(Sine/wsVal))*CF.A(M.R(0+20*M.C(Sine/wsVal)),0,0),Alpha)
			LH.C1 = LH.C1:lerp(CF.N(0,.985-.15*-M.S(Sine/wsVal),0+.2*M.C(Sine/wsVal))*CF.A(M.R(0-20*M.C(Sine/wsVal)),0,0),Alpha)
		elseif(Hum.WalkSpeed >= 14)then
			local wsVal = 7 / (Hum.WalkSpeed/16)	
			Change = 2/3
			RH.C1 = RH.C1:lerp(CF.N(0,1-.25*M.S(Sine/wsVal),0+.2*-M.C(Sine/wsVal))*CF.A(M.R(15+25*M.C(Sine/wsVal)),0,0),Alpha)
			LH.C1 = LH.C1:lerp(CF.N(0,1-.25*-M.S(Sine/wsVal),0+.2*M.C(Sine/wsVal))*CF.A(M.R(15-25*M.C(Sine/wsVal)),0,0),Alpha)
		end
	else
		RH.C1 = RH.C1:lerp(CF.N(0,1,0),.3)
		LH.C1 = LH.C1:lerp(CF.N(0,1,0),.3)
	end
	local twitch = M.RNG(1,250)
	if(twitch == 1 and not Twitch and time()-LastTwitch > TwitchMinTime)then
		Twitch = true
		LastTwitch = time()
	end
	if(time()-LastTwitch > M.RNG(75,150)/100)then
		Twitch = false
	end
	if(Twitch)then
		local pow = 75
		NK.C1 = NK.C1:lerp(CF.A(-M.R(15)-M.RRNG(15,45),-(M.R(25)+M.RRNG(-100,100)/100),0),.3)
		Music.Pitch = .8
		--[[FT.Parent = Torso
		RA.Parent = RArm
		LA.Parent = LArm
		RL.Parent = RLeg
		LL.Parent = LLeg
		for _,v in next, Char:GetDescendants() do
			if(v:IsA'DataModelMesh')then
				v.Offset = V3.N(M.RNG(-pow,pow)/100,M.RNG(-pow,pow)/100,M.RNG(-pow,pow)/100)
			end
		end]]
	else
		NK.C1 = NK.C1:lerp(CF.N(),.3)
		Music.Pitch = 1
		--[[FT.Parent = nil
		RA.Parent = nil
		LA.Parent = nil
		RL.Parent = nil
		LL.Parent = nil
		for _,v in next, Char:GetDescendants() do
			if(v:IsA'DataModelMesh')then
				v.Offset = V3.N()
			end
		end]]
	end
	if(Victim and (not Victim:FindFirstChildOfClass'Humanoid' or not Victim.Parent or not GetTorso(Victim)))then
		Victim = nil
	end
	if(not Victim)then
		Target.Adornee = nil
		Target.Enabled = false
	elseif(GetTorso(Victim))then
		Target.Adornee = GetTorso(Victim)
		Target.Enabled = true
	end
	TargetImg1.Rotation = TargetImg1.Rotation + 2
	TargetImg2.Rotation = TargetImg2.Rotation - 2

	if(NeutralAnims)then	
		if(State == 'Idle')then
			local Alpha = .2
			RJ.C0 = clerp(RJ.C0,CFrame.new(-0.00314458925, 0.0451914072+.15*M.C(time()), -0.20140326, 0.999990046, -0.00435535889, -0.000589565374, 0.00435100077, 0.96206224, 0.272795409, -0.000620923936, -0.27279523, 0.962071478),Alpha)
			LH.C0 = clerp(LH.C0,CFrame.new(-0.497960001, -1.04775584-.15*M.C(time()), -0.0720805228, 0.999878228, 0.00435100077, 0.014991004, -9.5948657e-05, 0.96206224, -0.272830069, -0.0156093612, 0.272795409, 0.961945415),Alpha)
			RH.C0 = clerp(RH.C0,CFrame.new(0.49705413, -1.05053294-.15*M.C(time()), -0.0786191523, 0.999878228, 0.00435100077, 0.014991004, -9.5948657e-05, 0.96206224, -0.272830069, -0.0156093612, 0.272795409, 0.961945415),Alpha)
			LS.C0 = clerp(LS.C0,CFrame.new(-1.47194386, 0.51491183+.15*M.C(time()), -0.0806432366, 0.997356772, 0.0710981488, 0.014991004, -0.0643278062, 0.95990926, -0.272830069, -0.0337877162, 0.271144569, 0.961945415),Alpha)
			RS.C0 = clerp(RS.C0,CFrame.new(1.46653831, 0.491472602+.15*M.C(time()), -0.0686791688, 0.998338819, -0.0556335486, 0.014991004, 0.057612583, 0.960335672, -0.272830069, 0.00078211166, 0.273240507, 0.961945415),Alpha)
			NK.C0 = clerp(NK.C0,CFrame.new(1.2824883e-05, 1.52978039, -0.358495057, 1.00000012, 2.7930364e-06, 1.10529363e-05, -9.7640368e-06, 0.710427284, 0.703770578, -5.88688999e-06, -0.703770638, 0.710427284),Alpha)
		elseif(State == 'Walk')then
			local Alpha = .3
			if(Hum.WalkSpeed < 14)then
				local wsVal = 14 / (Hum.WalkSpeed/5)
				NK.C0 = clerp(NK.C0,CFrame.new(1.2824883e-05, 1.52978039, -0.358495057, 1.00000012, 2.7930364e-06, 1.10529363e-05, -9.7640368e-06, 0.710427284, 0.703770578, -5.88688999e-06, -0.703770638, 0.710427284),Alpha)
				LH.C0 = clerp(LH.C0,LHC0*CF.N(0,0+.1*-M.C(Sine/(wsVal/2)),0),Alpha)
				RH.C0 = clerp(RH.C0,RHC0*CF.N(0,0+.1*-M.C(Sine/(wsVal/2)),0),Alpha)
				RJ.C0 = clerp(RJ.C0,RJC0*CF.N(0,0+.1*M.C(Sine/(wsVal/2)),0),Alpha)
				RS.C0 = clerp(RS.C0,RSC0*CF.A(M.R(0+20*M.C(Sine/wsVal)),0,M.R(5)),Alpha)
				LS.C0 = clerp(LS.C0,LSC0*CF.A(M.R(0+20*-M.C(Sine/wsVal)),0,M.R(-5)),Alpha)
			elseif(Hum.WalkSpeed >= 14)then
				local wsVal = 7 / (Hum.WalkSpeed/16)
				NK.C0 = clerp(NK.C0,CFrame.new(1.2824883e-05, 1.52978039, -0.358495057, 1.00000012, 2.7930364e-06, 1.10529363e-05, -9.7640368e-06, 0.710427284, 0.703770578, -5.88688999e-06, -0.703770638, 0.710427284),Alpha)			
				LH.C0 = clerp(LH.C0,LHC0*CF.N(0,0+.1*-M.C(Sine/(wsVal/2)),0),Alpha)
				RH.C0 = clerp(RH.C0,RHC0*CF.N(0,0+.1*-M.C(Sine/(wsVal/2)),0),Alpha)
				RJ.C0 = clerp(RJ.C0,RJC0*CF.N(0,0+.1*M.C(Sine/(wsVal/2)),0),Alpha)
				RS.C0 = clerp(RS.C0,RSC0*CF.A(M.R(0+25*M.C(Sine/wsVal)),0,M.R(5)),Alpha)
				LS.C0 = clerp(LS.C0,LSC0*CF.A(M.R(0+25*-M.C(Sine/wsVal)),0,M.R(-5)),Alpha)
			end
		elseif(State == 'Jump' or State == 'Fall')then
			IdleCounter = 0
			if(Walking)then
				local Alpha = .2
				RJ.C0 = clerp(RJ.C0,RJC0*CF.A(math.min(math.max(Root.Velocity.Y/100,-M.R(65)),M.R(65)),0,0),Alpha)
				LH.C0 = clerp(LH.C0,CFrame.new(-0.497912645, -1.0987643, -0.0683324337, 0.999878228, 0.00860835519, 0.0130246133, -0.00010142161, 0.837816596, -0.545952022, -0.015611981, 0.545884132, 0.837715328),Alpha)
				RH.C0 = clerp(RH.C0,CFrame.new(0.499978393, -1.16382337, 0.109293163, 0.999878228, -0.0120433727, 0.00993486121, -0.00010142161, 0.631323814, 0.775519371, -0.015611981, -0.775425911, 0.631245613),Alpha)
				LS.C0 = clerp(LS.C0,CFrame.new(-1.55211556, 0.576563478, -0.00269976072, 0.976067662, 0.216906726, 0.0156116467, -0.217024669, 0.976145923, 0.00628317893, -0.0138763804, -0.00952091813, 0.999858499),Alpha)
				RS.C0 = clerp(RS.C0,CFrame.new(1.50182188, 0.636661649, 0.00632623257, 0.977592707, -0.209926367, 0.0156121543, 0.209851891, 0.977713108, 0.00628198683, -0.016582964, -0.00286500831, 0.999858439),Alpha)
				NK.C0 = clerp(NK.C0,CFrame.new(1.14440072e-05, 1.49924362, -0.0143961608, 1.00000024, -5.82076609e-11, 0, 1.23691279e-10, 0.997964919, 0.0637660474, 0, -0.0637660623, 0.997965038),Alpha)
			else
				local Alpha = .2
				RJ.C0 = clerp(RJ.C0,RJC0*CF.A(math.min(math.max(Root.Velocity.Y/100,-M.R(65)),M.R(65)),0,0),Alpha)
				LH.C0 = clerp(LH.C0,CFrame.new(-0.504374504, -0.291219354, -0.487436086, 0.999878228, -0.00438931212, 0.0149825988, -0.00010142161, 0.957819223, 0.287371844, -0.015611981, -0.287338346, 0.957701981),Alpha)
				RH.C0 = clerp(RH.C0,CFrame.new(0.453094482, -0.871358454, 0.0898642987, 0.985589385, -0.168456957, 0.0153662469, 0.162863791, 0.969548643, 0.182895929, -0.0457084104, -0.177757636, 0.983012319),Alpha)
				LS.C0 = clerp(LS.C0,CFrame.new(-1.55211556, 0.576563478, -0.00269976072, 0.976067662, 0.216906726, 0.0156116467, -0.217024669, 0.976145923, 0.00628317893, -0.0138763804, -0.00952091813, 0.999858499),Alpha)
				RS.C0 = clerp(RS.C0,CFrame.new(1.50182188, 0.636661649, 0.00632623257, 0.977592707, -0.209926367, 0.0156121543, 0.209851891, 0.977713108, 0.00628198683, -0.016582964, -0.00286500831, 0.999858439),Alpha)
				NK.C0 = clerp(NK.C0,CFrame.new(1.14440072e-05, 1.49924362, -0.0143961608, 1.00000024, -5.82076609e-11, 0, 1.23691279e-10, 0.997964919, 0.0637660474, 0, -0.0637660623, 0.997965038),Alpha)
			end
		end
	end
end