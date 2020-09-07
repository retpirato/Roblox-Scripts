-- Edit by evannjie
-- Go ahead and leak little brats
----------------------------------------------------------------------------------------------------------------------
Hood = false --[[ 164414939 ]] 
-------------------------------------------------------------------------------------------------------------------------
--[[ 
	
	A Power That Should Never Be Messed With...
	
	
	
	
	At ThIs MoMeNt YoU kNeW yOu FuCkEd Up!!!
]]--


------------Don't Touch These Yet--------------
local colorone = "Royal purple" -- Crimson
local colortwo = "Really black" -- Bright red
local colorthree = "Really black" -- Really red

local mode = "BerserkMode"
------------------------------------------------


wait(1 / 60)
Effects = { }
local Player = game.Players.localPlayer
script.Parent = Player.PlayerGui
script.Name = math.random(100, 100000)..[[ ]]..math.random(100000, 1000000000)
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
local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local hobb = 0
local rest = 0
local looprevive = false
local revive = false
local Create = LoadLibrary("RbxUtility").Create







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
--remove these lines if u want it purple--------

------------------------------------------------
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



local p = game.Players.LocalPlayer
--if p.Name~='UniversalDespair' and p.Name~='hasang1' then p.Character:Destroy() script:Destroy() return end
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
local debris=game:service"Debris"
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped




Debounces = {
CanAttack = true;
NoIdl = false;
Slashing = false;
Slashed = false;
RPunch = false;
RPunched = false;
LPunch = false;
LPunched = false;
}
local Touche = {Character.Name, }


----------------------------------------------------
function genWeld(a,b)
    local w = Instance.new("Weld",a)
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
    return weld;
end
----------------------------------------------------
function Lerp(c1,c2,al)
local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
for i,v in pairs(com1) do
com1[i] = v+(com2[i]-v)*al
end
return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
----------------------------------------------------
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
local wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
----------------------------------------------------
function weld5(part0, part1, c0, c1)
    weeld=Instance.new("Weld", part0)
    weeld.Part0=part0
    weeld.Part1=part1
    weeld.C0=c0
    weeld.C1=c1
    return weeld
end
----------------------------------------------------
function HasntTouched(plrname)
local ret = true
for _, v in pairs(Touche) do
if v == plrname then
ret = false
end
end
return ret
end
----------------------------------------------------

function chatfunc(text)
local chat = coroutine.wrap(function()
if Character:FindFirstChild("TalkingBillBoard")~= nil then
Character:FindFirstChild("TalkingBillBoard"):destroy()
end
local naeeym2 = Instance.new("BillboardGui",Character)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = Head
naeeym2.Name = "TalkingBillBoard"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = ""
tecks2.Font = "Fantasy"
tecks2.FontSize = "Size24"
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = BrickColor.new(colortwo).Color
tecks2.TextStrokeColor3 = BrickColor.new(colorone).Color
tecks2.Size = UDim2.new(1,0,0.5,0)
local shk = coroutine.wrap(function()
while tecks2 ~= nil do
wait(.05)
tecks2.Position = UDim2.new(0,math.random(-3,3),0,math.random(-3,3))
end
end)
shk()
for i = 1,string.len(text),1 do
CFuncs.Sound.Create("rbxassetid://358280695", Torso, 2, 0.5)
tecks2.Text = string.sub(text,1,i)
wait(0.01)
end
wait(1)
for i = 1, 5 do
wait(.01)
tecks2.Position = tecks2.Position - UDim2.new(0,0,.05,0)
tecks2.Rotation = tecks2.Rotation + 2
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.2
tecks2.TextTransparency = tecks2.TextTransparency + .2
end
naeeym2:Destroy()
end)
chat()
end
function onChatted(msg)
chatfunc(msg)
end
---Player.Chatted:connect(onChatted)















function chatfunc2(text)
local chat = coroutine.wrap(function()
if Character:FindFirstChild("TalkingBillBoard")~= nil then
Character:FindFirstChild("TalkingBillBoard"):destroy()
end
local naeeym2 = Instance.new("BillboardGui",Character)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = Head
naeeym2.Name = "TalkingBillBoard"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = ""
tecks2.Font = "Fantasy"
tecks2.FontSize = "Size24"
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = BrickColor.new(colortwo).Color
tecks2.TextStrokeColor3 = BrickColor.new(colorthree).Color
tecks2.Size = UDim2.new(1,0,0.5,0)
local shk = coroutine.wrap(function()
while tecks2 ~= nil do
wait(.05)
tecks2.Position = UDim2.new(0,math.random(-3,3),0,math.random(-3,3))
end
end)
shk()
for i = 1,string.len(text),1 do
CFuncs.Sound.Create("rbxassetid://358280695", Torso, 2, 0.5)
tecks2.Text = string.sub(text,1,i)
wait(0.01)
end
wait(1)
for i = 1, 5 do
wait(.01)
tecks2.Position = tecks2.Position - UDim2.new(0,0,.05,0)
tecks2.Rotation = tecks2.Rotation + 2
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.2
tecks2.TextTransparency = tecks2.TextTransparency + .2
end
naeeym2:Destroy()
end)
chat()
end
function onChatted(msg)
chatfunc(msg)
end






local Transforming = false
Transforming = true

chatfunc("So you finally made it...")

wait(4)

chatfunc("Final warning pal.")

wait(6)

chatfunc("Trust me, I wouldn't want to fight me either...")

wait(4)

chatfunc("Here goes nothing...")

wait(4)


-----------

-----
local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
plr=game:service'Players'.LocalPlayer
chr=plr.Character
local ms = plr:GetMouse()
CV="Dark indigo"
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
local vt=Vector3.new
local deb = false
local CanAttack = true
local shot = 0
local animpose = "Idle"
local lastanimpose = "Idle"
local stanceToggle = "Normal"
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
math.randomseed(os.time())
hum.MaxHealth = 9001
wait(1)
hum.Health = 9001
 
--game:service'InsertService':LoadAsset(16469427):children()[1].Parent = char
--char.Reaper.Handle.Mesh.TextureId = "http://www.roblox.com/asset/?id=176349813"
 
 
Mesh2 = function(par,num,x,y,z)
    local msh = _
    if num == 1 then
        msh = Instance.new("CylinderMesh",par)
    elseif num == 2 then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshType = 3
    elseif num == 3 then
        msh = Instance.new("BlockMesh",par)
    elseif num == 4 then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshType = "Torso"
    elseif type(num) == 'string' then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshId = num
    end
    msh.Scale = Vector3.new(x,y,z)
    return msh
end
 
Weld2 = function(p0,p1,x,y,z,rx,ry,rz,par)
    local w = Instance.new('Motor',par or p0)
    w.Part0 = p0
    w.Part1 = p1
    w.C1 = CFrame.new(x,y,z)*CFrame.Angles(rx,ry,rz)
    return w
end
 
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
 
function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp=Instance.new("Part")
fp.formFactor=formfactor
fp.Parent=parent
fp.Reflectance=reflectance
fp.Transparency=transparency
fp.CanCollide=false
fp.Locked=true
fp.BrickColor=brickcolor
fp.Name=name
fp.Size=size
fp.Position=torso.Position
NoOutline(fp)
fp.Material="SmoothPlastic"
fp:BreakJoints()
return fp
end
 
if Hood == true then
for _,v in pairs(char:GetChildren()) do if v.ClassName=="Hat" then v:remove() end end
local hat = part(3,char,0,0,BrickColor.new("Really black"),"Hood",vt(0.5,1,1.02))
Mesh2(hat,'http://www.roblox.com/asset/?id=16952952',1.05,1.05,1.05) --hood
Weld2(char.Head,hat,0,-.25,0,0,0,0,hat)
end


local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
hed.face.Texture = "574157327"
local torso = char.Torso
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local deb = false
local shot = 0
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
local stanceToggle = "Normal"
math.randomseed(os.time())


----------------------------------------------------
local Player = game.Players.LocalPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local Head = Character.Head
local Torso = Character.Torso
local RootPart = Character.HumanoidRootPart
local RightArm = Character["Right Arm"]
local LeftArm = Character["Left Arm"]
local RightLeg = Character["Right Leg"]
local LeftLeg = Character["Left Leg"]
local Neck = Torso.Neck
local RootJoint = RootPart.RootJoint
local RightShoulder = Torso["Right Shoulder"]
local LeftShoulder = Torso["Left Shoulder"]
local RightHip = Torso["Right Hip"]
local LeftHip = Torso["Left Hip"]
local Insert = table.insert
local Mouse = Player:GetMouse()
VFXList = {}


----------------
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


wait(.1)
local Models = New("Model",Character,"Model",{})
local eyesz = New("Part",Models,"eye",{BrickColor = BrickColor.new("Royal purple"),Material = Enum.Material.Neon,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-56.0288696, 1.56154633, -44.8319473, -1.00000036, 3.95500101e-005, -5.96046945e-008, -3.95501265e-005, -1.00000024, -4.44026066e-011, 2.98024041e-008, -3.24078958e-012, 1),CanCollide = false,Color = BrickColor.new("Royal purple").Color,})
Meshs = New("SpecialMesh",eyesz,"Mesh",{MeshType = Enum.MeshType.Sphere,})
mots = New("Weld",eyesz,"mot",{Part0 = eyesz,Part1 = Head,C0 = CFrame.new(0, 0, 0, -1.00000036, -3.95501265e-005, 2.98024041e-008, 3.95500101e-005, -1.00000024, -3.24078958e-012, -5.96046945e-008, -4.44026066e-011, 1),C1 = CFrame.new(0.0999984741, 0.230003357, -0.54234314, -1, 0, 0, 0, 1, 0, 0, 0, -1),})


local eye = New("Part",Models,"eye",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-56.0288696, 1.56154633, -44.791954, 0, 3.89999987e-005, 1, 0, -1, 3.89999987e-005, 1, -0, 0),CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",eye,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),MeshType = Enum.MeshType.Cylinder,})
mot = New("Weld",eye,"mot",{Part0 = eye,Part1 = Head,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 3.89999987e-005, -1, 0, 1, 3.89999987e-005, 0),C1 = CFrame.new(0.0999984741, 0.230003357, -0.582336426, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
local eye = New("Part",Models,"eye",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-56.1781769, 1.47783697, -44.791954, 0, 0.383733064, 0.923444092, 0, -0.923444092, 0.383733094, 1, -0, 0),CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",eye,"Mesh",{Scale = Vector3.new(0.200000003, 0.200000003, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",eye,"mot",{Part0 = eye,Part1 = Head,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 0.383733064, -0.923444092, 0, 0.923444092, 0.383733094, 0),C1 = CFrame.new(0.249305725, 0.146293998, -0.582336426, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
local eye = New("Part",Models,"eye",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-56.1935196, 1.51477695, -44.791954, 0, -0.383726001, 0.923447013, 0, 0.923447013, 0.383726001, -1, 0, 0),CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",eye,"Mesh",{Scale = Vector3.new(0.200000003, 0.200000003, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",eye,"mot",{Part0 = eye,Part1 = Head,C0 = CFrame.new(0, 0, 0, 0, 0, -1, -0.383726001, 0.923447013, 0, 0.923447013, 0.383726001, 0),C1 = CFrame.new(0.264648438, 0.183233976, -0.582336426, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
local eye = New("Part",Models,"eye",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-55.8642044, 1.60829198, -44.791954, 0, 0.383726001, -0.923447013, 0, -0.923447013, -0.383726001, -1, -0, 0),CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",eye,"Mesh",{Scale = Vector3.new(0.200000003, 0.200000003, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",eye,"mot",{Part0 = eye,Part1 = Head,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0.383726001, -0.923447013, 0, -0.923447013, -0.383726001, 0),C1 = CFrame.new(-0.064666748, 0.276749015, -0.582336426, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
local eye = New("Part",Models,"eye",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-55.8795433, 1.64523494, -44.791954, 0, -0.383733064, -0.923444092, 0, 0.923444092, -0.383733094, 1, 0, 0),CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",eye,"Mesh",{Scale = Vector3.new(0.200000003, 0.200000003, 1),MeshType = Enum.MeshType.Wedge,})
mot = New("Weld",eye,"mot",{Part0 = eye,Part1 = Head,C0 = CFrame.new(0, 0, 0, 0, 0, 1, -0.383733064, 0.923444092, 0, -0.923444092, -0.383733094, 0),C1 = CFrame.new(-0.0493278503, 0.313691974, -0.582336426, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
local eye1 = New("Part",Models,"eye1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-56.0288696, 1.56154633, -44.8119507, -1.00000036, 3.95500101e-005, -5.96046945e-008, -3.95501265e-005, -1.00000024, -4.44026066e-011, 2.98024041e-008, -3.24078958e-012, 1),CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",eye1,"Mesh",{Scale = Vector3.new(0.3, 0.8, 0.9),MeshType = Enum.MeshType.Sphere,})
mot = New("Weld",eye1,"mot",{Part0 = eye1,Part1 = Head,C0 = CFrame.new(0, 0, 0, -1.00000036, -3.95501265e-005, 2.98024041e-008, 3.95500101e-005, -1.00000024, -3.24078958e-012, -5.96046945e-008, -4.44026066e-011, 1),C1 = CFrame.new(0.0999984741, 0.230003357, -0.562339783, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
	
DeathClaw = New("Model",Character,"DeathClaw",{})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1.00999999, 1.301, 1.00999999),CFrame = CFrame.new(-8.18999767, 2.64003253, -8.10000992, 1, 6.97362293e-06, -1.91137744e-07, -6.97362293e-06, 1, 9.7819111e-08, 1.91138426e-07, -9.78177397e-08, 1),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177468e-08, -1.91137744e-07, 9.78191039e-08, 1),C1 = CFrame.new(2.86102295e-06, -0.359999895, 0, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1.00999999, 0.550000012, 0.25999999),CFrame = CFrame.new(-7.58999872, 2.16453266, -8.08500957, -9.61124897e-07, 6.97365886e-06, -1, 9.77374555e-08, 1, 6.97365886e-06, 1, -9.77312951e-08, -9.61124897e-07),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, -9.61124897e-07, 9.77374413e-08, 1, 6.97365886e-06, 1, -9.77313022e-08, -1, 6.97365886e-06, -9.61124897e-07),C1 = CFrame.new(0.600004673, -0.835495472, 0.0150003433, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1.00999999, 0.25000003, 0.25999999),CFrame = CFrame.new(-7.58999777, 1.77453327, -8.08500767, 9.61683781e-07, -6.97418636e-06, -1, 1.04010105e-05, -1, 6.97419773e-06, -1.00000036, -1.0356307e-05, -9.61610908e-07),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, 9.61683781e-07, 1.04010105e-05, -1.00000036, -6.97418636e-06, -1, -1.0356307e-05, -1, 6.97419773e-06, -9.61610908e-07),C1 = CFrame.new(0.600008488, -1.22549498, 0.0150022507, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1.00999999, 0.550000012, 0.25999999),CFrame = CFrame.new(-8.18999958, 2.16453195, -7.51500511, -1, -1.86969225e-14, 0, 1.86969208e-14, 1, -1.42108547e-14, 0, 1.42108547e-14, -1),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, -1, 1.86969208e-14, 0, -1.86969208e-14, 1, 7.10542736e-15, 0, -7.10542736e-15, -1),C1 = CFrame.new(3.81469727e-06, -0.835500479, 0.585004807, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1.00999999, 0.25000003, 0.25999999),CFrame = CFrame.new(-8.18999767, 1.77453327, -7.51500511, 1, 1.86969225e-14, 0, -1.86969208e-14, -1, -1.42108547e-14, 0, -1.42108547e-14, -1),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, 1, -1.86969208e-14, 0, 1.86969208e-14, -1, -7.10542736e-15, 0, -7.10542736e-15, -1),C1 = CFrame.new(8.58306885e-06, -1.22549915, 0.585004807, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1.00999999, 0.550000012, 0.25999999),CFrame = CFrame.new(-8.77497768, 2.16453099, -8.06999302, 0, -1.86969225e-14, 1, -1.42108547e-14, 1, -1.86969208e-14, -1, 1.42108547e-14, 0),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, 0, -7.10542736e-15, -1, -1.86969208e-14, 1, 7.10542736e-15, 1, -1.86969208e-14, 0),C1 = CFrame.new(-0.584974289, -0.835505486, 0.0300168991, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1.00999999, 0.25000003, 0.25999999),CFrame = CFrame.new(-8.77498817, 1.77453351, -8.06999683, 0, 1.86969225e-14, 1, 1.42108547e-14, -1, -1.86969208e-14, 1, -1.42108547e-14, 0),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, 0, 7.10542736e-15, 1, 1.86969208e-14, -1, -7.10542736e-15, 1, -1.86969208e-14, 0),C1 = CFrame.new(-0.584981918, -1.22550297, 0.0300130844, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1.00999999, 0.25000003, 0.25999999),CFrame = CFrame.new(-8.17498684, 1.77453244, -8.6399889, -1, 1.86969225e-14, 0, 1.86969208e-14, -1, 1.42108547e-14, 0, -1.42108547e-14, 1),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, -1, 1.86969208e-14, 0, 1.86969208e-14, -1, -7.10542736e-15, 0, 7.10542736e-15, 1),C1 = CFrame.new(0.0150194168, -1.22549987, -0.539978981, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1.00999999, 0.550000012, 0.25999999),CFrame = CFrame.new(-8.17498493, 2.16453147, -8.63999176, 1, -1.86969225e-14, 0, -1.86969208e-14, 1, 1.42108547e-14, 0, 1.42108547e-14, 1),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, 1, -1.86969208e-14, 0, -1.86969208e-14, 1, 7.10542736e-15, 0, 7.10542736e-15, 1),C1 = CFrame.new(0.0150184631, -0.835500717, -0.539981842, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1.00999999, 0.550999999, 1.00999999),CFrame = CFrame.new(-8.19000053, 1.96503329, -8.10000992, 1, 6.97362293e-06, -1.91137744e-07, -6.97362293e-06, 1, 9.7819111e-08, 1.91138426e-07, -9.78177397e-08, 1),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177468e-08, -1.91137744e-07, 9.78191039e-08, 1),C1 = CFrame.new(4.76837158e-06, -1.03499913, 0, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("308"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.200000003, 0.5, 0.5),CFrame = CFrame.new(-8.19000053, 1.78503358, -8.10000992, -4.37112426e-08, -1, 0, 1, -4.37112071e-08, 1.42108547e-14, 1.42108547e-14, 0, 1),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Cylinder,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, -4.37112426e-08, 1, 7.10542736e-15, -1, -4.37112071e-08, 0, 0, 7.10542736e-15, 1),C1 = CFrame.new(5.7220459e-06, -1.21499884, 0, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1.00999999, 0.879999995, 0.25999999),CFrame = CFrame.new(-8.80498791, 3.55953217, -8.09999657, 0, 1.86969225e-14, 1, 1.42108547e-14, -1, -1.86969208e-14, 1, -1.42108547e-14, 0),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, 0, 7.10542736e-15, 1, 1.86969208e-14, -1, -7.10542736e-15, 1, -1.86969208e-14, 0),C1 = CFrame.new(-0.614994049, 0.559495449, 1.33514404e-05, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1.00999999, 0.610000014, 0.559999943),CFrame = CFrame.new(-8.65498829, 4.29453278, -8.09999752, -3.88175249e-06, 6.16863917e-06, 1.00000167, -7.53802908e-07, 1, -6.168651e-06, -1.00000167, -7.53825816e-07, -3.88175249e-06),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, -3.88175249e-06, -7.53802908e-07, -1.00000167, 6.16863917e-06, 1, -7.53825816e-07, 1.00000167, -6.168651e-06, -3.88175249e-06),C1 = CFrame.new(-0.464999199, 1.29449725, 1.23977661e-05, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1.00999999, 0.610000014, 0.559999943),CFrame = CFrame.new(-8.11498737, 4.29453278, -8.09999752, -1.78813934e-07, 6.16862235e-06, -1.00000012, 7.53896074e-07, 1, 6.16862371e-06, 1.00000012, -7.53894938e-07, -1.78813934e-07),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, -1.78813934e-07, 7.53896074e-07, 1.00000012, 6.16862235e-06, 1, -7.53894938e-07, -1.00000012, 6.16862371e-06, -1.78813934e-07),C1 = CFrame.new(0.0750017166, 1.29450107, 1.23977661e-05, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1.00999999, 0.370000005, 0.73999989),CFrame = CFrame.new(-8.02498817, 4.17453337, -8.09999752, -1.78813934e-07, 6.16862235e-06, -1.00000012, 7.53896074e-07, 1, 6.16862371e-06, 1.00000012, -7.53894938e-07, -1.78813934e-07),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, -1.78813934e-07, 7.53896074e-07, 1.00000012, 6.16862235e-06, 1, -7.53894938e-07, -1.00000012, 6.16862371e-06, -1.78813934e-07),C1 = CFrame.new(0.165000916, 1.17450213, 1.23977661e-05, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.200000003, 0.789999962, 0.200000003),CFrame = CFrame.new(-7.90498638, 4.38453436, -7.69499397, -1.78996103e-07, 0.342027485, -0.939698875, 7.53943937e-07, 0.939689457, 0.342029005, 1.00000966, -6.47293803e-07, -4.25697635e-07),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, -1.78996103e-07, 7.53943937e-07, 1.00000966, 0.342027485, 0.939689457, -6.47293803e-07, -0.939698875, 0.342029005, -4.25697635e-07),C1 = CFrame.new(0.285001755, 1.38450408, 0.405015945, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.200000003, 0.789999962, 0.200000003),CFrame = CFrame.new(-7.90498638, 4.38453436, -8.5049963, -1.78996103e-07, 0.342027485, -0.939698875, 7.53943937e-07, 0.939689457, 0.342029005, 1.00000966, -6.47293803e-07, -4.25697635e-07),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, -1.78996103e-07, 7.53943937e-07, 1.00000966, 0.342027485, 0.939689457, -6.47293803e-07, -0.939698875, 0.342029005, -4.25697635e-07),C1 = CFrame.new(0.285001755, 1.38450408, -0.404986382, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.200000003, 0.789999962, 0.439999998),CFrame = CFrame.new(-8.22774792, 4.42557859, -8.5049963, -3.11434269e-06, 0.34202829, 0.939689755, 8.30739737e-07, 0.939689636, -0.342028916, -1.00000107, -3.18491402e-07, -3.46451998e-06),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, -3.11434269e-06, 8.30739737e-07, -1.00000107, 0.34202829, 0.939689636, -3.18491402e-07, 0.939689755, -0.342028916, -3.46451998e-06),C1 = CFrame.new(-0.0377607346, 1.42554593, -0.404986382, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.200000003, 0.789999962, 0.439999998),CFrame = CFrame.new(-8.22774982, 4.42557859, -7.69499588, -3.11434269e-06, 0.34202829, 0.939689755, 8.30739737e-07, 0.939689636, -0.342028916, -1.00000107, -3.18491402e-07, -3.46451998e-06),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, -3.11434269e-06, 8.30739737e-07, -1.00000107, 0.34202829, 0.939689636, -3.18491402e-07, 0.939689755, -0.342028916, -3.46451998e-06),C1 = CFrame.new(-0.0377616882, 1.42554593, 0.405014038, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("308"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.201000005, 0.550999999, 0.200000003),CFrame = CFrame.new(-8.59500027, 2.89503574, -8.1300106, 1, 6.97362293e-06, -1.91137744e-07, -6.97362293e-06, 1, 9.7819111e-08, 1.91138426e-07, -9.78177397e-08, 1),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1, 1, 0.400999993),MeshType = Enum.MeshType.Brick,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177468e-08, -1.91137744e-07, 9.78191039e-08, 1),C1 = CFrame.new(-0.40500164, -0.104999542, -0.0300006866, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("308"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.201000005, 0.281000018, 0.200000003),CFrame = CFrame.new(-8.59499931, 3.06003571, -8.04001141, 1, 6.13489965e-06, 3.32129116e-06, -6.97362293e-06, 0.866024673, 0.500001252, 1.91137516e-07, -0.500001252, 0.866024673),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1, 1, 0.400999993),MeshType = Enum.MeshType.Brick,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, 1, -6.97362293e-06, 1.91137516e-07, 6.13489919e-06, 0.866024673, -0.500001252, 3.32129093e-06, 0.500001252, 0.866024673),C1 = CFrame.new(-0.40500164, 0.0600004196, 0.0599985123, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("308"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.201000005, 0.281000018, 0.200000003),CFrame = CFrame.new(-8.59499931, 2.73003602, -8.04001141, 1, 5.94368294e-06, -3.65236247e-06, -6.97355335e-06, 0.866026044, -0.500001729, 1.91185379e-07, 0.500001729, 0.866026044),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1, 1, 0.400999993),MeshType = Enum.MeshType.Brick,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, 1, -6.97355335e-06, 1.91185379e-07, 5.94368294e-06, 0.866026044, 0.500001729, -3.65236247e-06, -0.500001729, 0.866026044),C1 = CFrame.new(-0.404999733, -0.269999266, 0.0599985123, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("308"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.201000005, 0.200000003, 0.200000003),CFrame = CFrame.new(-8.59499931, 2.89053583, -7.98001146, 1, 6.97355881e-06, -1.91176355e-07, -6.97355881e-06, 1, 1.86264515e-07, 1.91177477e-07, -1.86264515e-07, 1),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1, 1, 0.400999993),MeshType = Enum.MeshType.Brick,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, 1, -6.97355881e-06, 1.91177477e-07, 6.97355881e-06, 1, -1.86264515e-07, -1.91176355e-07, 1.86264515e-07, 1),C1 = CFrame.new(-0.405000687, -0.109499454, 0.119998455, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.300000012, 1.73000002, 0.300000012),CFrame = CFrame.new(-7.64528942, 2.08194613, -7.50872564, 0.57357645, -0.409576029, 0.709406495, 2.84217094e-14, 0.866025388, 0.5, -0.819152057, -0.286788225, 0.496731758),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, 0.57357645, 2.84217094e-14, -0.819152057, -0.409576029, 0.866025388, -0.286788225, 0.709406495, 0.5, 0.496731758),C1 = CFrame.new(0.544714928, -0.918082476, 0.591284275, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.200000003, 1, 0.200000003),CFrame = CFrame.new(-7.46966791, 1.04344952, -7.39113998, 0.573576868, 0.469845414, 0.671012759, -2.96045641e-07, 0.81915319, -0.573575616, -0.819153547, 0.328988761, 0.469848096),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, 0.573576868, -2.96045414e-07, -0.819153547, 0.469845414, 0.81915319, 0.328988761, 0.671012759, -0.573575616, 0.469848096),C1 = CFrame.new(0.72034359, -1.95657802, 0.708869457, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("308"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.200000003, 1, 0.200000003),CFrame = CFrame.new(-7.72338438, 0.601107359, -7.56879187, 0.573576868, 0.469845414, 0.671012759, -2.96045641e-07, 0.81915319, -0.573575616, -0.819153547, 0.328988761, 0.469848096),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.25, 0.899999976, 0.25),MeshId = "rbxassetid://9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, 0.573576868, -2.96045414e-07, -0.819153547, 0.469845414, 0.81915319, 0.328988761, 0.671012759, -0.573575616, 0.469848096),C1 = CFrame.new(0.466629982, -2.39892173, 0.531217575, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.300000012, 1.73000002, 0.300000012),CFrame = CFrame.new(-7.68504524, 2.08194637, -8.59320354, -0.707107365, -0.353553772, 0.612371683, -5.68434189e-14, 0.866024971, 0.500000894, -0.707106352, 0.353554249, -0.612372518),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, -0.707107365, -5.68434189e-14, -0.707106352, -0.353553772, 0.866024971, 0.353554249, 0.612371683, 0.500000894, -0.612372518),C1 = CFrame.new(0.50495863, -0.918082476, -0.493193626, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.200000003, 1, 0.200000003),CFrame = CFrame.new(-7.53874874, 1.0434494, -8.74573803, -0.707107365, 0.405578643, 0.579228163, -5.68434189e-14, 0.819152892, -0.573575258, -0.707106352, -0.405579239, -0.579228997),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, -0.707107365, -5.68434189e-14, -0.707106352, 0.405578643, 0.819152892, -0.405579239, 0.579228163, -0.573575258, -0.579228997),C1 = CFrame.new(0.651262283, -1.95657837, -0.645728111, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("308"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.200000003, 1, 0.200000003),CFrame = CFrame.new(-7.75776386, 0.601107359, -8.52672577, -0.707107365, 0.405578643, 0.579228163, -5.68434189e-14, 0.819152892, -0.573575258, -0.707106352, -0.405579239, -0.579228997),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.25, 0.899999976, 0.25),MeshId = "rbxassetid://9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, -0.707107365, -5.68434189e-14, -0.707106352, 0.405578643, 0.819152892, -0.405579239, 0.579228163, -0.573575258, -0.579228997),C1 = CFrame.new(0.4322505, -2.39892197, -0.426715851, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("308"),Material = Enum.Material.Neon,Reflectance = 0.097999997437,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1.01100004, 0.200000003, 1.01100004),CFrame = CFrame.new(-8.1899929, 3.28953266, -8.10000992, 1, 6.97362293e-06, -1.91137744e-07, -6.97362293e-06, 1, 9.7819111e-08, 1.91138426e-07, -9.78177397e-08, 1),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177468e-08, -1.91137744e-07, 9.78191039e-08, 1),C1 = CFrame.new(2.86102295e-06, 0.289500237, 0, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("308"),Material = Enum.Material.Neon,Reflectance = 0.097999997437,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1.01100004, 0.200000003, 1.01100004),CFrame = CFrame.new(-8.18999863, 2.47953296, -8.10000992, 1, 6.97362293e-06, -1.91137744e-07, -6.97362293e-06, 1, 9.7819111e-08, 1.91138426e-07, -9.78177397e-08, 1),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177468e-08, -1.91137744e-07, 9.78191039e-08, 1),C1 = CFrame.new(2.86102295e-06, -0.520499468, 0, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Reflectance = 0.097999997437,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1.00999999, 0.731000006, 1.00999999),CFrame = CFrame.new(-8.189991, 3.64503241, -8.10000992, 1, 6.97362293e-06, -1.91137744e-07, -6.97362293e-06, 1, 9.7819111e-08, 1.91138426e-07, -9.78177397e-08, 1),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177468e-08, -1.91137744e-07, 9.78191039e-08, 1),C1 = CFrame.new(1.90734863e-06, 0.644999981, 0, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.200000003, 0.699999988, 0.699999988),CFrame = CFrame.new(-8.19000053, 1.78503358, -8.10000992, -4.37112426e-08, -1, 0, 1, -4.37112071e-08, 1.42108547e-14, 1.42108547e-14, 0, 1),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.980000019, 1, 1),MeshType = Enum.MeshType.Cylinder,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, -4.37112426e-08, 1, 7.10542736e-15, -1, -4.37112071e-08, 0, 0, 7.10542736e-15, 1),C1 = CFrame.new(5.7220459e-06, -1.21499884, 0, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.300000012, 1.73000002, 0.300000012),CFrame = CFrame.new(-8.76894283, 2.02194643, -8.5701561, -0.573575079, 0.409577131, -0.709406972, -3.83693077e-13, 0.86602509, 0.500000715, 0.81915313, 0.286787927, -0.496730298),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, -0.573575079, 0, 0.81915313, 0.409577131, 0.86602509, 0.286787927, -0.709406972, 0.500000715, -0.496730298),C1 = CFrame.new(-0.578938484, -0.978090048, -0.470146179, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.200000003, 1, 0.200000003),CFrame = CFrame.new(-8.94456291, 0.983449459, -8.68774033, -0.573575079, -0.4698461, -0.671011448, -3.83693077e-13, 0.819152832, -0.573575437, 0.81915313, -0.328988582, -0.469845563),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, -0.573575079, 0, 0.81915313, -0.4698461, 0.819152832, -0.328988582, -0.671011448, -0.573575437, -0.469845563),C1 = CFrame.new(-0.754550934, -2.01658821, -0.587730408, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("308"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.200000003, 1, 0.200000003),CFrame = CFrame.new(-8.69085026, 0.541107416, -8.51008987, -0.573575079, -0.4698461, -0.671011448, -3.83693077e-13, 0.819152832, -0.573575437, 0.81915313, -0.328988582, -0.469845563),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.25, 0.899999976, 0.25),MeshId = "rbxassetid://9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, -0.573575079, 0, 0.81915313, -0.4698461, 0.819152832, -0.328988582, -0.671011448, -0.573575437, -0.469845563),C1 = CFrame.new(-0.500835419, -2.45892859, -0.410079956, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.200000003, 1, 0.200000003),CFrame = CFrame.new(-8.8754797, 0.983449221, -7.33314657, 0.707107365, -0.405578345, -0.579228342, 5.68434189e-14, 0.819153309, -0.573574781, 0.707106352, 0.405578941, 0.579229236),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, 0.707107365, 0, 0.707106352, -0.405578345, 0.819153309, 0.405578941, -0.579228342, -0.573574781, 0.579229236),C1 = CFrame.new(-0.68546772, -2.01658797, 0.766863346, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("308"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.200000003, 1, 0.200000003),CFrame = CFrame.new(-8.65646744, 0.541107178, -7.55215645, 0.707107365, -0.405578345, -0.579228342, 5.68434189e-14, 0.819153309, -0.573574781, 0.707106352, 0.405578941, 0.579229236),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.25, 0.899999976, 0.25),MeshId = "rbxassetid://9756362",MeshType = Enum.MeshType.FileMesh,})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, 0.707107365, 0, 0.707106352, -0.405578345, 0.819153309, 0.405578941, -0.579228342, -0.573574781, 0.579229236),C1 = CFrame.new(-0.466452599, -2.45892859, 0.54785347, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})
Part = New("Part",DeathClaw,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(0.300000012, 1.73000002, 0.300000012),CFrame = CFrame.new(-8.72918701, 2.02194619, -7.48567963, 0.707107365, 0.353553772, -0.612371683, 5.68434189e-14, 0.866024971, 0.500000834, 0.707106352, -0.353554249, 0.612372518),CanCollide = false,Locked = true,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = LeftArm,C0 = CFrame.new(0, 0, 0, 0.707107365, 0, 0.707106352, 0.353553772, 0.866024971, -0.353554249, -0.612371683, 0.500000834, 0.612372518),C1 = CFrame.new(-0.539182663, -0.978090048, 0.614330292, 1, -6.97362293e-06, 1.91138426e-07, 6.97362293e-06, 1, -9.78177539e-08, -1.91137744e-07, 9.78190968e-08, 1),})


----------------
--------------------------------------------
Debounces = {
CanAttack = true;
NoIdl = false;
Slashing = false;
Slashed = false;
RPunch = false;
RPunched = false;
LPunch = false;
LPunched = false;
}
local Touche = {char.Name, }
----------------------------------------------------

wait()
local Player = game.Players.LocalPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local Head = Character.Head
local Torso = Character.Torso
local RootPart = Character.HumanoidRootPart
local RightArm = Character["Right Arm"]
local LeftArm = Character["Left Arm"]
local RightLeg = Character["Right Leg"]
local LeftLeg = Character["Left Leg"]
local Neck = Torso.Neck
local RootJoint = RootPart.RootJoint
local RightShoulder = Torso["Right Shoulder"]
local LeftShoulder = Torso["Left Shoulder"]
local RightHip = Torso["Right Hip"]
local LeftHip = Torso["Left Hip"]
local Insert = table.insert
local Mouse = Player:GetMouse()
VFXList = {}
local CharaterAnimate, CharacterAnimator = Character:FindFirstChild("Animate"), Humanoid:FindFirstChild("Animator")
if CharaterAnimate and CharacterAnimator then
  CharaterAnimate.Parent = nil
  CharacterAnimator.Parent = nil
end


----------------------------------------------------





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




local m = Create("Model"){
	Parent = Character,
	Name = "WeaponModel",
}

Effects = { }




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







function rayCast(Position, Direction, Range, Ignore)
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
			Value = p,
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

function MagnitudeDamage(Part, Magnitude, MinimumDamage, MaximumDamage, KnockBack, Type, HitSound, HitPitch)
	for _, c in pairs(workspace:children()) do
		local hum = c:findFirstChild("Humanoid")
		if hum ~= nil then
			local head = c:findFirstChild("Torso")
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if mag <= Magnitude and c.Name ~= p.Name then 
					Damage(head, head, MinimumDamage, MaximumDamage, KnockBack, Type, root, .1, "rbxassetid://" .. HitSound, HitPitch)
				end
			end
		end
	end
end











SkyBeam = function()

	attack = true
	
        local sbs = Instance.new("BodyPosition", root)
        sbs.P = 3000
        sbs.D = 1000
        sbs.maxForce = Vector3.new(500000, 500000000, 500000)
        sbs.position = root.CFrame.p + Vector3.new(0, 100, 0)
	
CFuncs["Sound"].Create("http://www.roblox.com/asset/?id=159882578", Character, 5, 0.75)
	wait(2)
	CFuncs.Sound.Create("rbxassetid://215395388", Character, 11, 0.85)
local seen = Instance.new("Sound",Character)
seen.SoundId = "rbxassetid://445796828"
seen.Pitch = 0.75
seen.Volume = 3.8
seen.Looped = true
seen:Play()
	CFuncs.Sound.Create("rbxassetid://289315275", Character, 3.8, 0.75)
bb = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, "Black", "hot", Vector3.new())
bb.Anchored=true
bb.CFrame=CFrame.new(Torso.Position) * CFrame.Angles(0, 0, 1.57)
msh = CFuncs.Mesh.Create("SpecialMesh", bb, "Cylinder", "", Vector3.new(0, 0, 0), Vector3.new(1000000, 10, 10))
sp = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, "Really black", "hot", Vector3.new())
sp.Anchored=true

sp2 = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, "Really black", "hot", Vector3.new())
sp2.Anchored=true

dang = CFuncs.Mesh.Create("SpecialMesh", sp, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(10, 10, 10))
ref = CFuncs.Part.Create(EffectModel, "Neon", 0, 1, "White", "Reference", Vector3.new())
ref.Anchored=true
cf=CFrame.new
vt=Vector3.new
local TheHit = root.Position + vt(0, -1, 0)
local MouseLook = cf((root.Position + TheHit) / 2, TheHit)
local hit, pos = rayCast(root.Position, MouseLook.lookVector, 999, Character)
local mag = (root.Position - pos).magnitude
ref.CFrame = CFrame.new(pos)
	for i = 0, 450 do
	swait()
ref.CFrame = CFrame.new(pos)
if ref.CFrame ~= CFrame.new(pos) then
ref.CFrame = CFrame.new(pos)
else
ref.CFrame = CFrame.new(pos)
end
MagnitudeDamage(ref, 150, 999, 999999, 7, "Normal", "0", 1)
bb.Position = Torso.Position + Vector3.new(math.random(-1, 1), 0, math.random(-1, 1))
bb.Transparency=bb.Transparency+0.0025
msh.Scale = msh.Scale:lerp(Vector3.new(1000000, 500, 500),.025)
sp.Position = ref.Position + vt(math.random(-1, 1), 0, math.random(-1, 1))
sp.Transparency = sp.Transparency+0.0025
sp2.Position = ref.Position + vt(math.random(-4, 4), 0, math.random(-4, 4))
sp2.Transparency = sp.Transparency+0.0025
dang.Scale = dang.Scale:lerp(Vector3.new(1500, 1500, 1500),.025)
	
	end
	sp:Destroy()
	bb:Destroy()
	ref:Destroy()
	seen:Destroy()
	sbs:Destroy()
	attack = false
end



------------------------
hed.face.Texture = "rbxassetid://58820113"

char["Body Colors"].TorsoColor = BrickColor.new("Royal purple")
char["Body Colors"].LeftArmColor = BrickColor.new("Really black")
char["Body Colors"].RightArmColor = BrickColor.new("Really black")
----------------------------------------------------

------------
ypcall(function()
char.Shirt:Destroy()
char.Pants:Destroy()
shirt = Instance.new("Shirt", char)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char)
pants.Name = "Pants"
char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=236410507"
char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=236412261"
end)
----------------------------------------------------
local Transforming = true
hum.WalkSpeed = 0
local fx = Instance.new("Part",torso)
wit = torso.BrickColor.Color
wit2 = Color3.new(0,0,0)
local glowz = Instance.new("ParticleEmitter",fx)
glowz.LightEmission = 1
glowz.Texture = "rbxassetid://284205403"
glowz.Color = ColorSequence.new(wit)
glowz.Size = NumberSequence.new(5)
glowz.Speed = NumberRange.new(25,50)
glowz.LockedToPart = false
glowz.Transparency = NumberSequence.new(0.75)
glowz.RotSpeed = NumberRange.new(-2000,2000)
glowz.Lifetime = NumberRange.new(1)
glowz.Rate = 50000
glowz.VelocitySpread = 9001
fx.Anchored = true
fx.Material = "Neon"
fx.CanCollide = false
fx.Locked = true
fx.Transparency = 1
fx.Material = "Neon"
fx.Size = Vector3.new(1,1,1)
fx.TopSurface = "SmoothNoOutlines"
fx.BottomSurface = "SmoothNoOutlines"
fx.BrickColor = BrickColor.new("Really black")
fxm = Instance.new("SpecialMesh",fx)
fxm.MeshType = "Sphere"
local sa2 = Instance.new("Sound",torso)
sa2.SoundId = "rbxassetid://93724183"
sa2.Pitch = 0.5
sa2.Volume = 5
sa2.Looped = false
sa2:Play()
local value = 1
fxm.Scale = Vector3.new(1,1,1)
for i = 1, 20 do rs:wait()
        value = value - 0.05
        fx.Transparency = fx.Transparency - (1/20)
        fx.CFrame = torso.CFrame
        fxm.Scale = fxm.Scale + Vector3.new(value,value,value)
        rs:wait()
end
----------------------------------------------------
GroundWave1 = function()
    local Transforming = true
hum.WalkSpeed = 0
local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
    local Colors = {"White", "Really black"}
        local wave = Instance.new("Part", torso)
        wave.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
        wave.Anchored = true
        wave.CanCollide = false
        wave.Locked = true
        wave.Size = Vector3.new(1, 1, 1)
        wave.TopSurface = "Smooth"
        wave.BottomSurface = "Smooth"
        wave.Transparency = 0.35
        wave.CFrame = HandCF
        wm = Instance.new("SpecialMesh", wave)
        wm.MeshId = "rbxassetid://3270017"
        coroutine.wrap(function()
        for i = 1, 30, 1 do
        wm.Scale = Vector3.new(50, 50, 1 + i*50)
        wave.Size = wm.Scale
        wave.CFrame = HandCF
        wave.Transparency = i/30
        wait()
        end
        wait()
        wave:Destroy()
    end)()
end
----------------------------------------------------
GroundWave = function()
        if Transforming == true then
                local value = 5
                local value2 = 10
                local value3 = 20
local sa2 = Instance.new("Sound",torso)
sa2.SoundId = "rbxassetid://413682983"
sa2.Pitch = 1
sa2.Volume = 10
sa2.Looped = false
sa2:Play()
                local wave = Instance.new("Part", torso)
local glowz = Instance.new("ParticleEmitter",wave)
glowz.LightEmission = 1
glowz.Texture = "0"
glowz.Color = ColorSequence.new(wit)
glowz.Size = NumberSequence.new(30)
glowz.Speed = NumberRange.new(25,100)
glowz.LockedToPart = false
glowz.Transparency = NumberSequence.new(0.75)
glowz.RotSpeed = NumberRange.new(-2000,2000)
glowz.Lifetime = NumberRange.new(1)
glowz.Rate = 50000
glowz.VelocitySpread = 9001
 
                wave.BrickColor = BrickColor.new("Royal purple")
                wave.Anchored = true
                wave.CanCollide = false
                wave.Locked = true
                wave.Size = Vector3.new(1, 1, 1)
                wave.TopSurface = "Smooth"
                wave.BottomSurface = "Smooth"
                wave.Transparency = 0.35
                wave.CFrame = fx.CFrame
                wave.Material = "Neon"
                wm = Instance.new("SpecialMesh", wave)
                wm.MeshType = "Sphere"
                wm.Scale = Vector3.new(1,1,1)
                local wave2 = Instance.new("Part", torso)
                wave2.BrickColor = BrickColor.new("Royal purple")
                wave2.Anchored = true
                wave2.CanCollide = false
                wave2.Locked = true
                wave2.Size = Vector3.new(1, 1, 1)
                wave2.TopSurface = "Smooth"
                wave2.BottomSurface = "Smooth"
                wave2.Transparency = 0.35
                wave2.CFrame = fx.CFrame
                wave2.Material = "Neon"
                wm2 = Instance.new("SpecialMesh", wave2)
                wm2.MeshType = "FileMesh"
                wm2.MeshId = "http://www.roblox.com/asset/?id=3270017"
                wm2.Scale = Vector3.new(1,1,1)
                local wave3 = Instance.new("Part", torso)
                wave3.BrickColor = BrickColor.new("Really black")
                wave3.Anchored = true
                wave3.CanCollide = false
                wave3.Locked = true
                wave3.Size = Vector3.new(1, 1, 1)
                wave3.TopSurface = "Smooth"
                wave3.BottomSurface = "Smooth"
                wave3.Transparency = 0.35
                wave3.CFrame = fx.CFrame
                wave3.Material = "Neon"
                wm3 = Instance.new("SpecialMesh", wave3)
                wm3.MeshType = "FileMesh"
                wm3.MeshId = "http://www.roblox.com/asset/?id=3270017"
                wm3.Scale = Vector3.new(1,1,1)
                coroutine.wrap(function()
                for i = 1, 18, 1 do
                value = value - 0.5
                value2 = value2 - 0.75*1.5
                value3 = value3 - 0.475*1.5
                wm.Scale = wm.Scale + Vector3.new(value*3.5,value*3.5,value*3.5)
                wm2.Scale = wm.Scale + Vector3.new(value2*3.5,value2*3.5,0.5)
                wm3.Scale = wm.Scale + Vector3.new(value3*3.5,value3*3.5,0.25)
                --wave.Size = wm.Scale
                wave.CFrame = fx.CFrame
                wave.Transparency = i/14
                --wave2.Size = wm2.Scale
                wave2.CFrame = fx.CFrame
                wave2.Rotation = Vector3.new(90, 0, 0)
                wave2.Transparency = i/14
                --wave3.Size = wm3.Scale
                wave3.CFrame = fx.CFrame
                wave3.Rotation = Vector3.new(90, 0, 0)
                wave3.Transparency = i/14
                wait()
                glowz.Rate = 0
               
                end
                wait()
                wave:Destroy()
                wave2:Destroy()
                wave3:Destroy()
        end)()
        elseif Transforming == false then
        wait()
        end
end
 
for i = 1, 100 do rs:wait()
        fx.CFrame = torso.CFrame
end
 
Spawn(function()
    while wait(1) do
        GroundWave()
    end
end)
 
wait(4)
 
Transforming = false
 
local value2 = 1
for i = 1, 20 do rs:wait()
        value2 = value2 - 0.05
        glowz.Rate = 0
     
        fx.Transparency = fx.Transparency + (1/20)
        fx.CFrame = torso.CFrame
        fxm.Scale = fxm.Scale + Vector3.new(value2,value2,value2)
        rs:wait()
end
glowz:Destroy()
 
 
local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
        local valuer = 5
        local valuer2 = 10
        local valuer3 = 15
local sa2 = Instance.new("Sound",torso)
sa2.SoundId = "rbxassetid://130972023"
sa2.Pitch = 1
sa2.Volume = 5
sa2.Looped = false
sa2:Play()
local sar2 = Instance.new("Sound",torso)
sar2.SoundId = "rbxassetid://153274423"
sar2.Pitch = 1
sar2.Volume = 5
sar2.Looped = false
sar2:Play()
        local wave = Instance.new("Part", torso)
        wave.BrickColor = BrickColor.new("Royal purple")
        wave.Anchored = true
        wave.CanCollide = false
        wave.Locked = true
        wave.Size = Vector3.new(1, 1, 1)
        wave.TopSurface = "Smooth"
        wave.BottomSurface = "Smooth"
        wave.Transparency = 0.35
        wave.CFrame = HandCF
        wm = Instance.new("SpecialMesh", wave)
        wm.MeshId = "rbxassetid://3270017"
        local wave2 = Instance.new("Part", torso)
        wave2.BrickColor = BrickColor.new("Really black")
        wave2.Anchored = true
        wave2.CanCollide = false
        wave2.Locked = true
        wave2.Size = Vector3.new(1, 1, 1)
        wave2.TopSurface = "Smooth"
        wave2.BottomSurface = "Smooth"
        wave2.Transparency = 0.35
        wave2.CFrame = HandCF
        wm2 = Instance.new("SpecialMesh", wave2)
        wm2.MeshId = "rbxassetid://3270017"
        local wave3 = Instance.new("Part", torso)
        wave3.BrickColor = BrickColor.new("Royal purple")
        wave3.Anchored = true
        wave3.CanCollide = false
        wave3.Locked = true
        wave3.Size = Vector3.new(1, 1, 1)
        wave3.TopSurface = "Smooth"
        wave3.BottomSurface = "Smooth"
        wave3.Transparency = 0.35
        wave3.CFrame = HandCF
        wm3 = Instance.new("SpecialMesh", wave3)
        wm3.MeshId = "rbxassetid://3270017"
        coroutine.wrap(function()
        for i = 1, 14, 1 do
        valuer = valuer - 0.35
        valuer2 = valuer - 0.45
        valuer3 = valuer3 - 0.475
        wm.Scale = wm.Scale + Vector3.new(valuer*2.5,valuer*2.5, 1 + i*200)
        wave.Size = wm.Scale
        wave.CFrame = HandCF
        wave.Transparency = i/14
        wm2.Scale = wm2.Scale + Vector3.new(valuer2*2.5,valuer2*2.5, 0 + i*10)
        wave2.Size = wm2.Scale
        wave2.CFrame = HandCF
        wave2.Transparency = i/14
        wm3.Scale = wm3.Scale + Vector3.new(valuer3*2.5,valuer3*2.5, 1)
        wave3.Size = wm2.Scale
        wave3.CFrame = HandCF
        wave3.Transparency = i/14
        wait()
        end
        wait()
        wave:Destroy()
        wave2:Destroy()
end)()
hum.WalkSpeed = 16
-----------------
function lerp(a, b, t) -- Linear interpolation
        return a + (b - a)*t
end

function slerp(a, b, t) --Spherical interpolation
        dot = a:Dot(b)
        if dot > 0.99999 or dot < -0.99999 then
                return t <= 0.5 and a or b
        else
                r = math.acos(dot)
                return (a*math.sin((1 - t)*r) + b*math.sin(t*r)) / math.sin(r)
        end
end

function matrixInterpolate(a, b, t)
        local ax, ay, az, a00, a01, a02, a10, a11, a12, a20, a21, a22 = a:components()
        local bx, by, bz, b00, b01, b02, b10, b11, b12, b20, b21, b22 = b:components()
        local v0 = lerp(Vector3.new(ax, ay, az), Vector3.new(bx , by , bz), t) -- Position
        local v1 = slerp(Vector3.new(a00, a01, a02), Vector3.new(b00, b01, b02), t) -- Vector  right
        local v2 = slerp(Vector3.new(a10, a11, a12), Vector3.new(b10, b11, b12), t) -- Vector  up
        local v3 = slerp(Vector3.new(a20, a21, a22), Vector3.new(b20, b21, b22), t) -- Vector  back
        local t = v1:Dot(v2)
        if not (t < 0 or t == 0 or t > 0) then         -- Failsafe
                return CFrame.new()
        end
        return CFrame.new(
        v0.x, v0.y, v0.z,
        v1.x, v1.y, v1.z,
        v2.x, v2.y, v2.z,
        v3.x, v3.y, v3.z)
end
----------------------------------------------------
function genWeld(a,b)
    local w = Instance.new("Weld",a)
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
    return weld;
end
----------------------------------------------------
function Lerp(c1,c2,al)
local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
for i,v in pairs(com1) do
com1[i] = v+(com2[i]-v)*al
end
return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
----------------------------------------------------
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
local wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
----------------------------------------------------
function weld5(part0, part1, c0, c1)
    weeld=Instance.new("Weld", part0)
    weeld.Part0=part0
    weeld.Part1=part1
    weeld.C0=c0
    weeld.C1=c1
    return weeld
end
----------------------------------------------------
function HasntTouched(plrname)
local ret = true
for _, v in pairs(Touche) do
if v == plrname then
ret = false
end
end
return ret
end
----------------------------------------------------
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
----------------------------------------------------
z = Instance.new("Sound", char)
z.SoundId = "rbxassetid://681462568"
z.Looped = true
z.Pitch = 1
z.Volume = 2
wait(.1)
z:Play()
----------------------------------------------------
-------------------------------------------------------------------------------------------------
----------------------------------------------------
----------------------------------------------------


----------------------------------------------------




----------------------------------------------------

local txt = Instance.new("BillboardGui", chr)
txt.Adornee = chr.Head
txt.Name = "_status"
txt.Size = UDim2.new(4, 0, 2.5, 0)
txt.StudsOffset = Vector3.new(-4, 2, 0)
local text = Instance.new("TextLabel", txt)
text.Size = UDim2.new(3, 0, 0.5, 0)
text.FontSize = "Size24"
text.TextScaled = true
text.TextTransparency = 0
text.BackgroundTransparency = 1
text.TextTransparency = 0
text.TextStrokeTransparency = 0
text.Font = "SciFi"
text.TextStrokeColor3 = Color3.new(1,1,1)
text.Text = "Hunter"
----------------------------------------------------
 paly = game.Players.LocalPlayer
p = game.Players.LocalPlayer
char = paly.Character
vt = Vector3.new
rarm = char["Right Arm"]
larm = char["Left Arm"]
local maincolor = char.Torso.BrickColor

local orb = Instance.new("Part")
orb.Parent = char
orb.Size = Vector3.new(0.2, 0.2, 0.2)
orb.Archivable = true
orb.Transparency = 1
orb.BrickColor = maincolor
orb.Material = "Neon"
orb.CanCollide = false
local weld1 = Instance.new("Weld")
weld1.Parent = rarm
weld1.Part0 = rarm
weld1.Part1 = orb
weld1.C1 = CFrame.new(0, 1.125, 0)
local pt1 = NumberSequenceKeypoint.new(0,0.85,0)
local pt2 = NumberSequenceKeypoint.new(1,0,0)
local effecto = Instance.new("ParticleEmitter",orb)
effecto.LightEmission = 1
effecto.Texture = "rbxasset://textures/particles/smoke_main.dds"
effecto.Color = ColorSequence.new(maincolor.Color)
effecto.Rate = 10000
effecto.Lifetime = NumberRange.new(1)
effecto.Size = NumberSequence.new({pt1,pt2})
effecto.Speed = NumberRange.new(0,0)
effecto.RotSpeed = NumberRange.new(100,100)

local orbz = Instance.new("Part")
orbz.Parent = char
orbz.Size = Vector3.new(0.2, 0.2, 0.2)
orbz.Archivable = true
orbz.Transparency = 1
orbz.BrickColor = maincolor
orbz.Material = "Neon"
orbz.CanCollide = false
local weldz1 = Instance.new("Weld")
weldz1.Parent = larm
weldz1.Part0 = larm
weldz1.Part1 = orbz
weldz1.C1 = CFrame.new(0, 1.125, 0)
local effecton = Instance.new("ParticleEmitter",orbz)
effecton.LightEmission = 1
effecton.Texture = "rbxasset://textures/particles/smoke_main.dds"
effecton.Color = ColorSequence.new(maincolor.Color)
effecton.Rate = 10000
effecton.Lifetime = NumberRange.new(1)
effecton.Size = NumberSequence.new({pt1,pt2})
effecton.Speed = NumberRange.new(0,0)
effecton.RotSpeed = NumberRange.new(100,100)
----------------------------------------------------
Blast = function()
	local Colors = {"Royal purple", "Really black"}
		local wave = Instance.new("Part", torso)
		wave.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave.Anchored = true
		wave.CanCollide = false
		wave.Locked = true
		wave.Size = Vector3.new(1, 1, 1)
		wave.TopSurface = "Smooth"
		wave.BottomSurface = "Smooth"
		wave.Transparency = 0.35
		wave.CFrame = rarm.CFrame
		wm = Instance.new("SpecialMesh", wave)
		wm.MeshType = "Sphere"
		wm.Scale = Vector3.new(1,1,1)
		z = Instance.new("Sound",wave)
		z.SoundId = "rbxassetid://237035051"
		z.Volume = 1
		z.Pitch = .9
		z:Play()
		coroutine.wrap(function()
		for i = 1, 30, 1 do
		wave.Size = Vector3.new(1 + i*4, 1 + i*4, 1 + i*4)
		--wave.Size = wm.Scale
		wave.CFrame = rarm.CFrame
		wave.Transparency = (1/14)
		rs:wait()
		end
		rs:wait()
		wave:Destroy()
		z:Destroy()
	end)()
end
----------------------------------------------------
rarm.Touched:connect(function(ht)
    hit = ht.Parent
    if ht and hit:IsA("Model") then
            if hit:FindFirstChild("Humanoid") then
                if hit.Name ~= p.Name then
                    if Debounces.RPunch == true and Debounces.RPunched == false then
                            Debounces.RPunched = true
                                hit:FindFirstChild("Humanoid"):TakeDamage(math.random(5,8))
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                                                        z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                            Debounces.RPunched = false
                    end
                end
            end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
                   if Debounces.RPunch == true and Debounces.RPunched == false then
                            Debounces.RPunched = true
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(5,8))
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                                                        z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                Debounces.RPunched = false
                                end
            end
        end
    end
end)
larm.Touched:connect(function(ht)
    hit = ht.Parent
    if ht and hit:IsA("Model") then
            if hit:FindFirstChild("Humanoid") then
                if hit.Name ~= p.Name then
                    if Debounces.LPunch == true and Debounces.LPunched == false then
                            Debounces.LPunched = true
                                hit:FindFirstChild("Humanoid"):TakeDamage(math.random(4,8))
                                    if Debounces.ks2==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                                                        z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                        Debounces.LPunched = false
                    end
                end
            end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
                   if Debounces.LPunch == true and Debounces.LPunched == false then
                            Debounces.LPunched = true
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(4,8))
                                    if Debounces.ks2==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                                                        z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                Debounces.LPunched = false
                                end
            end
        end
    end
end)
----------------------------------------------------
mod4 = Instance.new("Model",char)

ptez = {0.7, 0.8, 0.9, 1}

function FindNearestTorso(Position,Distance,SinglePlayer)
    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
        local List = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= char then
                        if(v.Torso.Position -Position).magnitude <= Distance then
                            table.insert(List,v)
                        end
                    end
                end
            end
        end
    return List
end

function Punch()
    part=Instance.new('Part',mod4)
    part.Anchored=true
    part.CanCollide=false
    part.FormFactor='Custom'
    part.Size=Vector3.new(.2,.2,.2)
    part.CFrame=root.CFrame*CFrame.new(0,1.5,-2.4)*CFrame.Angles(math.rad(0),0,0)
    part.Transparency=.7
    part.BrickColor=BrickColor.new('Royal purple')
    mesh=Instance.new('SpecialMesh',part)
    mesh.MeshId='http://www.roblox.com/asset/?id=3270017'
    mesh.Scale=Vector3.new(3,3,3)
    part2=Instance.new('Part',mod4)
    part2.Anchored=true
    part2.CanCollide=false
    part2.FormFactor='Custom'
    part2.Size=Vector3.new(.2,.2,.2)
    part2.CFrame=root.CFrame*CFrame.new(0,1.5,-2.4)*CFrame.Angles(math.rad(90),0,0)
    part2.Transparency=.7
    part2.BrickColor=BrickColor.new('Royal purple')
    mesh2=Instance.new('SpecialMesh',part2)
    mesh2.MeshId='http://www.roblox.com/asset/?id=20329976'
    mesh2.Scale=Vector3.new(3,1.5,3)
    for i,v in pairs(FindNearestTorso(torso.CFrame.p,4))do
        if v:FindFirstChild('Humanoid') then
            v.Humanoid:TakeDamage(math.random(2,6))
        end
    end
    coroutine.resume(coroutine.create(function()
        for i=0,0.62,0.4 do
            wait()
            part.CFrame=part.CFrame
            part.Transparency=i
            mesh.Scale=mesh.Scale+Vector3.new(0.4,0.4,0.4)
            part2.CFrame=part2.CFrame
            part2.Transparency=i
            mesh2.Scale=mesh2.Scale+Vector3.new(0.4,0.2,0.4)
            end
        part.Parent=nil
        part2.Parent=nil
    end))
end
----------------------------------------------------
rarm.Touched:connect(function(ht)
    hit = ht.Parent
    if ht and hit:IsA("Model") then
            if hit:FindFirstChild("Humanoid") then
                if hit.Name ~= p.Name then
                    if Debounces.RPunch == true and Debounces.RPunched == false then
                            Debounces.RPunched = true
                                hit:FindFirstChild("Humanoid"):TakeDamage(math.random(5,8))
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
									z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                            Debounces.RPunched = false
                    end
                end
            end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
                   if Debounces.RPunch == true and Debounces.RPunched == false then
                            Debounces.RPunched = true
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(5,8))
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
									z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                Debounces.RPunched = false
				end
            end
        end
    end
end)
larm.Touched:connect(function(ht)
    hit = ht.Parent
    if ht and hit:IsA("Model") then
            if hit:FindFirstChild("Humanoid") then
                if hit.Name ~= p.Name then
                    if Debounces.LPunch == true and Debounces.LPunched == false then
                            Debounces.LPunched = true
                                hit:FindFirstChild("Humanoid"):TakeDamage(math.random(4,8))
                                    if Debounces.ks2==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
									z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                            Debounces.LPunched = false
                    end
                end
            end
    elseif ht and hit:IsA("Hat") then
        if hit.Parent.Name ~= p.Name then
            if hit.Parent:FindFirstChild("Humanoid") then
                   if Debounces.LPunch == true and Debounces.LPunched == false then
                            Debounces.LPunched = true
                            hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(4,8))
                                    if Debounces.ks2==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
									z.Pitch = ptz[math.random(1,#ptz)]
                                    z.Volume = 1
                                    z:Play()
                                    end
                            wait(.2)
                Debounces.LPunched = false
				end
            end
        end
    end
end)
----------------------------------------------------
local player = game.Players.LocalPlayer
local pchar = player.Character
local mouse = player:GetMouse()
local cam = workspace.CurrentCamera

local rad = math.rad

local keysDown = {}
local flySpeed = 0
local MAX_FLY_SPEED = 150

local canFly = false
local flyToggled = false

local forward, side = 0, 0
local lastForward, lastSide = 0, 0

local floatBP = Instance.new("BodyPosition")
floatBP.maxForce = Vector3.new(0, math.huge, 0)
local flyBV = Instance.new("BodyVelocity")
flyBV.maxForce = Vector3.new(9e9, 9e9, 9e9)
local turnBG = Instance.new("BodyGyro")
turnBG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)

mouse.KeyDown:connect(function(key)
        keysDown[key] = true

        if key == "f" then
                flyToggled = not flyToggled

        if not flyToggled then
                stanceToggle = "Normal"
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

        if not flyToggled then return end

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

        canFly = (forward ~= 0 or side ~= 0)

        if canFly then
                stanceToggle = "Floating"
                turnBG.Parent = root
                floatBP.Parent = nil
                flyBV.Parent = root

                flySpeed = flySpeed + 1 + (flySpeed / MAX_FLY_SPEED)
                if flySpeed > MAX_FLY_SPEED then flySpeed = MAX_FLY_SPEED end
        else
                floatBP.position = root.Position
                floatBP.Parent = root

                flySpeed = flySpeed - 1
                if flySpeed < 0 then flySpeed = 0 end
        end

        local camCF = cam.CoordinateFrame
        local in_forward = canFly and forward or lastForward
        local in_side = canFly and side or lastSide

        flyBV.velocity = ((camCF.lookVector * in_forward) + (camCF * CFrame.new(in_side,
in_forward * 0.2, 0).p) - camCF.p) * flySpeed

        turnBG.cframe = camCF * CFrame.Angles(-rad(forward * (flySpeed / MAX_FLY_SPEED)), 0,
0)
end

game:service'RunService'.RenderStepped:connect(function()
        if flyToggled then
                pchar.Humanoid.PlatformStand = true
        end
        updateFly()
end)
-------------------------------

mouse.KeyDown:connect(function(key)
    if key == "x" then
chatfunc("GRRRRAAAAAAAAAHHHHHHH")
        hum.WalkSpeed = 0.01
        if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.NoIdl = true
            Debounces.on = true
                for i = 1, 30 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.65,-.4)*CFrame.Angles(math.rad(130),math.rad(0),math.rad(-40)), 0.2)
	            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.65,-.4)*CFrame.Angles(math.rad(130),math.rad(0),math.rad(40)), 0.2)
		    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(0),0), 0.2)
		    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10), math.rad(0), 0), 0.2)
		    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, .4, -0.8) * CFrame.Angles(math.rad(-6), math.rad(0), math.rad(0)), 0.2)
		    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, .4, -0.8) * CFrame.Angles(math.rad(-6), math.rad(0), math.rad(0)), 0.2)
                    if Debounces.on == false then break end
                    rs:wait(20)
                end
        v = Instance.new("Sound")
        v.SoundId = "rbxassetid://181384451"
        v.Parent = char
        v.Looped = false
        v.Pitch = 1.1
        v.Volume = 5
        wait(.01)
        v:Play()
        
        if Daytime == true then
            Daytime = false
            l.TimeOfDay = 00
        else
            Daytime = true
            l.TimeOfDay = 12
            l.OutdoorAmbient = Color3.new(0.498039, 0.498039, 0.498039)
        end
        
            local Shockwave = function()
                local rng1 = Instance.new("Part", char)
                rng1.Anchored = true
                rng1.BrickColor = BrickColor.new("Really black")
                rng1.CanCollide = false
                rng1.FormFactor = 3
                rng1.Name = "Ring"
                rng1.Material = "Neon"
                rng1.Size = Vector3.new(1, 1, 1)
                rng1.Transparency = 0.35
                rng1.TopSurface = 0
                rng1.BottomSurface = 0
                local rngm1 = Instance.new("SpecialMesh", rng)
                rngm1.MeshId = "http://www.roblox.com/asset/?id=3270017"
                rngm1.Scale = Vector3.new(10, 10, 1)
                rng1.CFrame = CFrame.new(0, -2, 0) * CFrame.Angles(0, 0, 0)
                local Wave = Instance.new("Part", game.Workspace--[[?]])
                Wave.Name = "Shockwave"
                Wave.BrickColor = BrickColor.new("Really black")
                Wave.Material = "Neon"
                Wave.Size = Vector3.new(1, 1, 1)
                Wave.Shape = "Ball"
                Wave.CanCollide = false
                Wave.Anchored = true
                Wave.TopSurface = 0
                Wave.BottomSurface = 0
                local Wave2 = Instance.new("Part", game.Workspace--[[?]])
                Wave2.Name = "Shockwave2"
                Wave2.BrickColor = BrickColor.new("Royal purple")
                Wave2.Material = "Neon"
                Wave2.Size = Vector3.new(1, 1, 1)
                Wave2.Shape = "Ball"
                Wave2.CanCollide = false
                Wave2.Anchored = true
                Wave2.TopSurface = 0
                Wave2.BottomSurface = 0
                Wave2.Touched:connect(function(hit)
                    if hit.Parent:findFirstChild("Humanoid") and hit.Parent:findFirstChild("Torso") then
                        local Occlude = true
                        local NotOccludes = {
                            char.Name;
                            "Wings";
                            "Scythe";
                            "Thingy";
                            "Thingy2"; -- put all of the names in a table pls
                        }
                        for i,v in pairs(NotOccludes) do
                            if hit.Parent.Name == v then
                                Occlude = false
                            end
                        end
                        --if hit.Parent.Name ~= char.Name and hit.Name ~= "Wings" and hit.Name ~= "Scythe" and hit.Name     ~= "Thingy" and hit.Name ~= "Thingy2" and hit.Parent.Name ~= "Wings" and hit.Parent.Name ~= "Scythe" and     hit.Parent.Name ~= "Thingy" and hit.Parent.Name ~= "Thingy2" then
                        if Occlude then
                            hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 1
                            hit.Parent:findFirstChild("Torso").Velocity = hit.Parent:findFirstChild("Torso").CFrame.lookVector * -120
                        end
                    end
                end)
                
                Instance.new("SpecialMesh", Wave).MeshType = "Sphere"
                
                coroutine.wrap(function()
                    for i = 1, 20, 0.2 do
                        rngm1.Scale = Vector3.new(10 + i*20, 10 + i*20, 20)
                        rng1.Transparency = i/20
                    wait()
                    end
                    wait()
                    rng1:Destroy()
                end)()
                
                Delay(0, function()

                    if Daytime == false then
                       for i = 3, 50, 1 do
                            Wave.Size = Vector3.new(0 + i*3, 0 + i*3, 0 + i*3)
                            Wave.CFrame = char.Torso.CFrame
                            local t = i / 50
                            Wave.Transparency = t
                            Wave2.Size = Vector3.new(1 + i*2.5, 1 + i*2.5, 1 + i*2.5)
                            Wave2.CFrame = char.Torso.CFrame
                            local tq = i / 50
                            Wave2.Transparency = tq
                            wait()
                        end
                    else
                        for i = 3, 50, 1 do
                            Wave.Size = Vector3.new(0 + i*3, 0 + i*3, 0 + i*3)
                            Wave.CFrame = char.Torso.CFrame
                            local t = i / 50
                            Wave.Transparency = t
                            Wave2.Size = Vector3.new(1 + i*2.5, 1 + i*2.5, 1 + i*2.5)
                            Wave2.CFrame = char.Torso.CFrame
                            local tq = i / 50
                            Wave2.Transparency = tq
                            wait()
                        end
                    end
                    Wave:Destroy()
                    Wave2:Destroy()
                end)
                Delay(0, function()
                    while wait() do
                        if Wave ~= nil then
                            Wave.CFrame = char.Torso.CFrame
                        else
                            break
                        end
                    end
                end)
            end
        Shockwave() 
                for i = 1, 30 do
                        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(-20),math.rad(50)), 0.4)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(20),math.rad(-50)), 0.4)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,.1)*CFrame.Angles(math.rad(34),math.rad(0),0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)), 0.4)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(-10)), 0.4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(10)), 0.4)
                        if Debounces.on == false then break end
                        rs:wait()
                end
        wait(2.4)
        Debounces.NoIdl = false
        hum.WalkSpeed = 16
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
	if key == "q" then

chatfunc("Dodge this...")

		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
			function FindNearestTorso(Position,Distance,SinglePlayer)
				if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
					local List = {}
					for i,v in pairs(workspace:GetChildren())do
						if v:IsA("Model")then
							if v:findFirstChild("Torso")then
								if v ~= char then
									if(v.Torso.Position -Position).magnitude <= Distance then
										table.insert(List,v)
									end
								end
							end
						end
					end
				return List
			end
	z = Instance.new("Sound",hed)
	z.SoundId = "rbxassetid://232213955"
	z.Pitch = 1
	z.Volume = 1
	wait(0.2)
	z:Play()
	sp = Instance.new("Part",rarm)
	sp.Anchored = true
	sp.CanCollide = false
	sp.Locked = true
	sp.Transparency = 0
	sp.Material = "Neon"
	sp.Size = Vector3.new(1,1,1)
	sp.TopSurface = "SmoothNoOutlines"
	sp.BottomSurface = "SmoothNoOutlines"
	sp.BrickColor = BrickColor.new("Royal purple")
	spm = Instance.new("SpecialMesh",sp)
	spm.MeshType = "Sphere"
	spm.Scale = Vector3.new(21,21,21)
	sp2 = Instance.new("Part", rarm)
	sp2.Name = "Energy"
	sp2.BrickColor = BrickColor.new("Royal purple")
	sp2.Size = Vector3.new(1, 1, 1)
	sp2.Shape = "Ball"
	sp2.CanCollide = false
	sp2.Anchored = true
	sp2.Locked = true
	sp2.TopSurface = 0
	sp2.BottomSurface = 0
	sp2.Transparency = 1
	spm2 = Instance.new("SpecialMesh",sp2)
	spm2.MeshId = "rbxassetid://9982590"
	spm2.Scale = Vector3.new(2,2,2)
	for i = 1, 20 do
		spm.Scale = spm.Scale - Vector3.new(1,1,1)
		sp.CFrame = root.CFrame*CFrame.new(0,1,-2)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(-6),math.rad(8)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8)), 0.4)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(0),0), 0.4)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
		if Debounces.on == false then break end
		rs:wait()
	end
	for i = 1, 100, 20 do rs:wait()
		sp.CFrame = root.CFrame*CFrame.new(0,1,-2)
	end
	for i = 1, 20 do
		sp.CFrame = root.CFrame*CFrame.new(0,1,-2)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(8)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.4)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(10),math.rad(-30),0), 0.4)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(40), math.rad(0)), 0.4)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
		if Debounces.on == false then break end
		rs:wait()
	end
	sp.Transparency = 1
	for i = 1, 20 do
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(8)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.62,-.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.4)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.4)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(-50), math.rad(0)), 0.4)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
		if Debounces.on == false then break end
		rs:wait()
	end
	wait(1)
	sp.Transparency = 0
	sp2.Transparency = 0.84
	for i = 1, 20 do
		--spm.Scale = spm.Scale - Vector3.new(1,1,1)
		sp.CFrame = rarm.CFrame*CFrame.new(0,-1,0)
		sp2.CFrame = sp.CFrame * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-i), math.rad(-i), math.rad(i))
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(110),math.rad(-6),math.rad(140)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(80),math.rad(6),math.rad(-40)), 0.2)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(30),0), 0.2)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)), 0.3)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(20), 0, math.rad(-14)), 0.2)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-16), 0, math.rad(8)), 0.2)
		if Debounces.on == false then break end
		rs:wait()
	end
	for i = 1, 2880, 50 do
		rs:wait()
		sp.CFrame = rarm.CFrame*CFrame.new(0,-1,0)
		sp2.CFrame = rarm.CFrame * CFrame.new(0,-1,0) * CFrame.Angles(math.rad(-i/10), math.rad(-i/10), math.rad(i/10))
		rs:wait()
	end
	sp:Destroy()
	sp2:Destroy()
	local X = Instance.new("Part",char)
	local O = Instance.new("ObjectValue",X)
	O.Name = "creator"
	X.Locked = true
	X.Name = "Shell"
	X.Anchored = false
	X.CanCollide = false
	X.Transparency = 0
	X.Reflectance = 0
	X.BottomSurface = 0
	X.TopSurface = 0
	X.Shape = 0
	local V = Instance.new("ObjectValue",X)
	V.Value = char
	V.Name = "creator"
	X.BrickColor = BrickColor.new("Royal purple")
	X.Size = Vector3.new(2,2,2)
	X.Material = "Neon"
	local Z = Instance.new("SpecialMesh",X)
	Z.MeshType = "Sphere"
	Z.Scale = Vector3.new(0.5,0.5,1)
	X.CFrame = rarm.CFrame*CFrame.new(-3,0,0)
	local bv = Instance.new("BodyVelocity",X)
	bv.maxForce = Vector3.new(99999,99999,99999)
	X.CFrame = CFrame.new(X.Position,mouse.Hit.p)
	bv.velocity = X.CFrame.lookVector*65

	Explode = X.Touched:connect(function(hit)
		if hit ~= char and hit.Name ~= "Shell" then
			local cf = X.CFrame
			bv:Destroy()
			X.Anchored = true
			Z:Remove()
			Explode:disconnect()
			X.Size = Vector3.new(3,3,3)
			X.Touched:connect(function(hit) end)
			X.CanCollide = false
			local part3 = Instance.new("Part", rarm)
			part3.Anchored=true
			part3.CanCollide=false
			part3.Locked = true
			part3.TopSurface = "SmoothNoOutlines"
			part3.BottomSurface = "SmoothNoOutlines"
			part3.FormFactor='Custom'
			part3.Size=Vector3.new(1,1, 1)
			part3.CFrame=X.CFrame
			part3.Transparency=0
			part3.BrickColor=BrickColor.new("Royal purple")
			local mesh3 = Instance.new("SpecialMesh",part3)
			mesh3.MeshType = "Sphere"
			mesh3.Scale = Vector3.new(1,1,1)
			--debris:AddItem(X,8)
			local part4 = Instance.new("Part", rarm)
			part4.Material = "Neon"
			part4.Anchored=true
			part4.CanCollide=false
			part4.Locked = true
			part4.TopSurface = "SmoothNoOutlines"
			part4.BottomSurface = "SmoothNoOutlines"
			part4.FormFactor='Custom'
			part4.Size=Vector3.new(1,1, 1)
			part4.CFrame=X.CFrame
			part4.Transparency=0
			part4.BrickColor=BrickColor.new("Hot pink")
			local mesh4 = Instance.new("SpecialMesh",part4)
			mesh4.MeshType = "Sphere"
			mesh4.Scale = Vector3.new(.5,.5,.5)
			local part7 = Instance.new("Part", rarm)
			part7.Material = "Neon"
			part7.Anchored=true
			part7.CanCollide=false
			part7.Locked = true
			part7.TopSurface = "SmoothNoOutlines"
			part7.BottomSurface = "SmoothNoOutlines"
			part7.FormFactor='Custom'
			part7.Size=Vector3.new(1,1, 1)
			part7.CFrame=X.CFrame
			part7.Transparency=0
			part7.BrickColor=BrickColor.new("Really black")
			local mesh7 = Instance.new("SpecialMesh",part7)
			mesh7.MeshType = "Sphere"
			mesh7.Scale = Vector3.new(0.1, 0.1, 0.1)
		--[[X.Touched:connect(function(ht)
				hit = ht.Parent
			if ht and hit:IsA("Model") then
					if hit:FindFirstChild("Humanoid") then
						if hit.Name ~= p.Name then
							hit:FindFirstChild("Humanoid"):TakeDamage(math.random(4,6))
							wait(.3)
						end
					end
			elseif ht and hit:IsA("Hat") then
				if hit.Parent.Name ~= p.Name then
					if hit.Parent:FindFirstChild("Humanoid") then
						hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(4,6))
						wait(.3)
					end
				end
			end
		end)
		part3.Touched:connect(function(ht)
				hit = ht.Parent
			if ht and hit:IsA("Model") then
					if hit:FindFirstChild("Humanoid") then
						if hit.Name ~= p.Name then
							hit:FindFirstChild("Humanoid"):TakeDamage(math.random(4,6))
							wait(.3)
						end
					end
			elseif ht and hit:IsA("Hat") then
				if hit.Parent.Name ~= p.Name then
					if hit.Parent:FindFirstChild("Humanoid") then
						hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(4,6))
						wait(.3)
					end
				end
			end
		end)]]--
		for i,v in pairs(FindNearestTorso(X.CFrame.p,140))do
			if v:FindFirstChild('Humanoid') then
				v.Humanoid:TakeDamage(math.random(60,90))
				v.Humanoid.PlatformStand = true
				v:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 100
			end
		end

		local acos = math.acos
		local sqrt = math.sqrt
		local Vec3 = Vector3.new
		local fromAxisAngle = CFrame.fromAxisAngle

		local function toAxisAngle(CFr)
			local X,Y,Z,R00,R01,R02,R10,R11,R12,R20,R21,R22 = CFr:components()
			local Angle = math.acos((R00+R11+R22-1)/2)
			local A = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
			A = A == 0 and 0.00001 or A
			local B = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
			B = B == 0 and 0.00001 or B
			local C = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
			C = C == 0 and 0.00001 or C
			local x = (R21-R12)/sqrt(A)
			local y = (R02-R20)/sqrt(B)
			local z = (R10-R01)/sqrt(C)
			return Vec3(x,y,z),Angle
		end

		function ApplyTrig(Num,Func)
			local Min,Max = Func(0),Func(1)
			local i = Func(Num)
			return (i-Min)/(Max-Min)
		end

		function LerpCFrame(CFrame1,CFrame2,Num)
			local Vec,Ang = toAxisAngle(CFrame1:inverse()*CFrame2)
			return CFrame1*fromAxisAngle(Vec,Ang*Num) + (CFrame2.p-CFrame1.p)*Num
		end

		function Crater(Torso,Radius)
			Spawn(function()
				local Ray = Ray.new(Torso.Position,Vector3.new(0,-1,0)*10)
				local Ignore = {}
				for i,v in pairs(game:GetService("Players"):GetPlayers()) do
					if v.Character ~= nil then
						Ignore[#Ignore+1] = v.Character
					end
				end
				local Hit,Pos,SurfaceNorm = Workspace:FindPartOnRayWithIgnoreList(Ray,Ignore)
				if Hit == nil then return end
					local Parts = {}
					for i = 1,360,10 do
						local P = Instance.new("Part",Torso.Parent)
						P.Anchored = true
						P.FormFactor = "Custom"
						P.BrickColor = Hit.BrickColor
						P.Material = Hit.Material
						P.TopSurface = "Smooth"
						P.BottomSurface = "Smooth"
						P.Size = Vector3.new(5,10,10)*(math.random(80,100)/100)
						P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,7,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
						Parts[#Parts+1] = {P,P.CFrame,((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,1,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius)*CFrame.Angles(math.rad(math.random(-50,-20)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15))),P.Size}
						if math.random(0,5) == 0 then -- rubble
							local P = Instance.new("Part",Torso.Parent)
							P.Anchored = true
							P.FormFactor = "Custom"
							P.BrickColor = Hit.BrickColor
							P.Material = Hit.Material
							P.TopSurface = "Smooth"
							P.BottomSurface = "Smooth"
							P.Size = Vector3.new(2,2,2)*(math.random(80,100)/100)
							P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,2.5,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
							Parts[#Parts+1] = {P,P.CFrame,(CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius-8)*CFrame.Angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90))),P.Size}
							end
						end
						for i = 0,1,0.05 do
							for i2,v in pairs(Parts) do
								v[1].CFrame = LerpCFrame(v[2],v[3],ApplyTrig(i,math.cos))
							end
							wait(0.02)
						end
						for i,v in pairs(Parts) do
							if v[1].Size.X > 2.1 then
								v[1].CFrame = v[1].CFrame+Vector3.new(0,2,0)
							end
							v[1].Anchored = false
						end
						for i = 0,1,0.05 do
							for i2,v in pairs(Parts) do
								v[1].Transparency = i
								if i == 1 then
									v[1]:Destroy()
								elseif i >= 0.25 then
									v[1].CanCollide = false
								end
							end
						wait(0.02)
						end
					Parts = nil
					end)
				end

				ROW = function(out, trans, s, wt, t, ang, plus)
					for i = 1, 360, 360/t do
						local c = Instance.new("Part", game.Workspace)
						c.FormFactor = 3
						c.TopSurface = 0
						c.BottomSurface = 0
						c.Size = s
						c.Anchored = true
						c.CanCollide = wt
						c.Material=workspace.Base.Material
						c.Transparency = trans
						c.BrickColor = workspace.Base.BrickColor
						c.CFrame = CFrame.new(X.CFrame.x,0,X.CFrame.z) * CFrame.Angles(0, math.rad(i +  plus), 0) *     CFrame.new(0, 0, out) * ang
						c.Locked=true
						game.Debris:AddItem(c,15)
					end
				end

				Part = function(x,y,z,color,tr,cc,an,parent)
					local p = Instance.new('Part',parent or Weapon)
					p.formFactor = 'Custom'
					p.Size = Vector3.new(x,y,z)
					p.BrickColor = BrickColor.new(color)
					p.CanCollide = cc
					p.Transparency = tr
					p.Anchored = an
					p.TopSurface,p.BottomSurface = 0,0
					p.Locked=true
					p:BreakJoints()
				return p end

			Mesh = function(par,num,x,y,z)
			local msh = _
			if num == 1 then msh = Instance.new("CylinderMesh",par)
			elseif num == 2 then msh = Instance.new("SpecialMesh",par) msh.MeshType = 3
			elseif num == 3 then msh = Instance.new("BlockMesh",par)
			elseif num == 4 then msh = Instance.new("SpecialMesh",par) msh.MeshType = "Torso"
			elseif type(num) == 'string' then msh = Instance.new("SpecialMesh",par) msh.MeshId = num
			end msh.Scale = Vector3.new(x,y,z)
			return msh end

			function explosion(col1,col2,cfr,sz,rng,dmg)
				local a= Part(1,1,1,col1,.5,false,true,workspace)
				local a2= Part(1,1,1,col2,.5,false,true,workspace)
				local a3= Part(1,1,1,col2,.5,false,true,workspace)
				v1,v2,v3=sz.x,sz.y,sz.z
				local m= Mesh(a,'http://www.roblox.com/asset/?id=1185246',v1,v2,v3)
				local m2= Mesh(a2,3,v1/3,v2/3,v3/3)
				local m3= Mesh(a3,3,v1/3,v2/3,v3/3)
				a.CFrame=cfr
				a2.CFrame=cfr*CFrame.Angles(math.random(),math.random(),math.random())
				a3.CFrame=cfr*CFrame.Angles(math.random(),math.random(),math.random())

				Spawn(function()
					while wait() do
						if a.Transparency >= 1 then a:Destroy() a2:Destroy() a3:Destroy() break end
							m.Scale=m.Scale+Vector3.new(.1,0.1,0.1)
							m2.Scale=m2.Scale+Vector3.new(.1,0.1,0.1)
							m3.Scale=m3.Scale+Vector3.new(.1,0.1,0.1)
							a.Transparency=a.Transparency+0.05
							a2.Transparency=a2.Transparency+0.05
							a3.Transparency=a3.Transparency+0.05
						end
					end)
				end

				Crater(X,20)
				ROW(12, 0, Vector3.new(34.5, 30, 3), true, 8, CFrame.Angles(math.rad(math.random (30,60)), 0, math.rad    (math.random(-30,30))), 0)
				z = Instance.new("Sound",X)
				z.SoundId = "rbxassetid://231917744"
				z.Pitch = .5
				z.Volume = 10
				z1 = Instance.new("Sound",X)
				z1.SoundId = "rbxassetid://231917744"
				z1.Pitch = .5
				z1.Volume = 10
				z2 = Instance.new("Sound",X)
				z2.SoundId = "rbxassetid://231917744"
				z2.Pitch = .5
				z2.Volume = 10
				z3 = Instance.new("Sound",X)
				z3.SoundId = "rbxassetid://245537790"
				z3.Pitch = .7
				z3.Volume = 1
				z4 = Instance.new("Sound",X)
				z4.SoundId = "rbxassetid://245537790"
				z4.Pitch = .7
				z4.Volume = 1
				wait(0.1)
				z:Play()
				z1:Play()
				z2:Play()
				z3:Play()
				z4:Play()

				local part=Instance.new('Part',rarm)
				part.Anchored=true
				part.CanCollide=false
				part.Locked = true
				part.FormFactor='Custom'
				part.Size=Vector3.new(1,1,1)
				part.CFrame=X.CFrame*CFrame.new(0,0,0)
				part.Transparency=0
				part.BrickColor=BrickColor.new('Really black')
				local mesh=Instance.new('SpecialMesh',part)
				mesh.MeshId='http://www.roblox.com/asset/?id=20329976'
				mesh.Scale=Vector3.new(2,2,2)
				local part2=part:clone()
				part2.Parent = rarm
				part2.BrickColor=BrickColor.new("Royal purple")
				local part5=part:clone()
				part5.Parent = rarm
				part5.BrickColor=BrickColor.new("Magenta")
				local part6=part:clone()
				part6.Parent = rarm
				part6.BrickColor=BrickColor.new("Black")
				local mesh2=mesh:clone()
				mesh2.Parent=part2
				mesh2.Scale=Vector3.new(3, 3, 3)
				local mesh5=mesh:clone()
				mesh5.Parent=part5
				mesh5.Scale=Vector3.new(3, 3, 3)
				local mesh6=mesh:clone()
				mesh6.Parent=part6
				mesh6.Scale=Vector3.new(3, 3, 3)
				local blast = Instance.new("Part", rarm)
				blast.BrickColor = BrickColor.new("Really black")
				blast.Anchored = true
				blast.CanCollide = false
				blast.Locked = true
				blast.Size = Vector3.new(1, 1, 1)
				blast.TopSurface = "Smooth"
				blast.BottomSurface = "Smooth"
				blast.Transparency = 0
				blast.CFrame = HandCF
				local bm = Instance.new("SpecialMesh", blast)
				bm.Scale = Vector3.new(5,1,5)
				bm.MeshId = "rbxassetid://3270017"
				local blast2 = Instance.new("Part", rarm)
				blast2.BrickColor = BrickColor.new("Really black")
				blast2.Anchored = true
				blast2.CanCollide = false
				blast2.Locked = true
				blast2.Size = Vector3.new(1, 1, 1)
				blast2.TopSurface = "Smooth"
				blast2.BottomSurface = "Smooth"
				blast2.Transparency = 0
				blast2.CFrame = HandCF
				local bm2 = Instance.new("SpecialMesh", blast2)
				bm2.Scale = Vector3.new(3,1,3)
				bm2.MeshId = "rbxassetid://3270017"
				local blast3 = Instance.new("Part", rarm)
				blast3.BrickColor = BrickColor.new("Really black")
				blast3.Anchored = true
				blast3.CanCollide = false
				blast3.Locked = true
				blast3.Size = Vector3.new(1, 1, 1)
				blast3.TopSurface = "Smooth"
				blast3.BottomSurface = "Smooth"
				blast3.Transparency = 0
				blast3.CFrame = HandCF
				local bm3 = Instance.new("SpecialMesh", blast3)
				bm3.Scale = Vector3.new(3,1,3)
				bm3.MeshId = "rbxassetid://3270017"
				for i = 1,120 do rs:wait()
					X.Transparency = X.Transparency + (1/120)
					part.Transparency = part.Transparency + (1/120)
					part2.Transparency = part2.Transparency + (1/120)
					part3.Transparency = part3.Transparency + (1/120)
					part4.Transparency = part4.Transparency + (1/120)
					part5.Transparency = part5.Transparency + (1/120)
					part6.Transparency = part6.Transparency + (1/120)
					part7.Transparency = part7.Transparency + (1/120)
					blast.Transparency = blast.Transparency + (1/120)
					blast2.Transparency = blast2.Transparency + (1/120)
					blast3.Transparency = blast3.Transparency + (1/120)
					X.Size = X.Size + Vector3.new(.8,.8,.8)
					--part3.Size = part3.Size + Vector3.new(3,3,3)
					mesh.Scale = mesh.Scale + Vector3.new(1,.2,1)
					mesh2.Scale = mesh2.Scale + Vector3.new(1.1,.2,1.1)
					mesh3.Scale = mesh3.Scale + Vector3.new(3,3,3)
					mesh4.Scale = mesh4.Scale + Vector3.new(1.7,1.7,1.7)
					mesh5.Scale = mesh5.Scale + Vector3.new(1.6,.2,1.6)
					mesh6.Scale = mesh6.Scale + Vector3.new(2,.2,2)
					mesh7.Scale = mesh7.Scale + Vector3.new(4,4,4)
					bm.Scale = bm.Scale + Vector3.new(6,6,.2)
					bm2.Scale = bm2.Scale + Vector3.new(4,4,.2)
					bm3.Scale = bm3.Scale + Vector3.new(4,4,.2)
					X.CFrame = cf
					part.CFrame=X.CFrame * CFrame.Angles(0,math.rad(i*2),0)
					part2.CFrame=X.CFrame * CFrame.Angles(0,math.rad(-i*2),0)
					part3.CFrame=X.CFrame
					part4.CFrame=X.CFrame
					part7.CFrame=X.CFrame
					part5.CFrame=X.CFrame * CFrame.Angles(0,math.rad(i*2.6),0)
					part6.CFrame=X.CFrame * CFrame.Angles(0,math.rad(-i*2.4),0)
					blast.CFrame=X.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
					blast2.CFrame=X.CFrame * CFrame.Angles(math.rad(-i*4), math.rad(i*4), math.rad(0))
					blast3.CFrame=X.CFrame * CFrame.Angles(math.rad(180+i*4), math.rad(90-i*4), math.rad(0))
					rs:wait()
					end
					X:Destroy()
					part:Destroy()
					part2:Destroy()
					part3:Destroy()
					part4:Destroy()
					part5:Destroy()
					part6:Destroy()
					blast:Destroy()
					blast2:Destroy()
					blast3:Destroy()
					z:Destroy()
					z1:Destroy()
					z2:Destroy()
					z3:Destroy()
					z4:Destroy()
				end
			end)
			for i = 1, 20 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(70),math.rad(-6),math.rad(-20)), 0.2)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8)), 0.2)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), 0, math.rad(-8)), 0.2)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-6), 0, math.rad(8)), 0.2)
				if Debounces.on == false then break end
				rs:wait()
			end
			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				Debounces.on = false
			end
		end
	end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
	if key == "e" then
		if Debounces.CanAttack == true then
		Debounces.CanAttack = false
		Debounces.on = true
		Debounces.NoIdl = true
pt = {1, 1.1, 1.2, 1.3, 1.4, 1.5}
z = Instance.new("Sound", rarm)
z.SoundId = "http://www.roblox.com/asset/?id=206083107"--160867463, 161006212
z.Volume = .6
z.Pitch = pt[math.random(1,#pt)]
z.Looped = false
z:Play()
Debounces.RPunch = true
Debounces.LPunch = true
Debounces.ks = true
Debounces.ks2 = true
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z2 = Instance.new("Sound", larm)
z2.SoundId = "http://www.roblox.com/asset/?id=206083107"
z2.Volume = .6
z2.Pitch = pt[math.random(1,#pt)]
z2.Looped = false
z2:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z3 = Instance.new("Sound", rarm)
z3.SoundId = "http://www.roblox.com/asset/?id=206083107"
z3.Volume = 0.6
z3.Pitch = pt[math.random(1,#pt)]
z3.Looped = false
z3:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(-20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z4 = Instance.new("Sound", larm)
z4.SoundId = "http://www.roblox.com/asset/?id=206083107"
z4.Volume = .6
z4.Pitch = pt[math.random(1,#pt)]
z4.Looped = false
z4:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z5 = Instance.new("Sound", rarm)
z5.SoundId = "http://www.roblox.com/asset/?id=206083107"
z5.Volume = .6
z5.Pitch = pt[math.random(1,#pt)]
z5.Looped = false
z5:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(110),math.rad(30),math.rad(20)), 0.9)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.9)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.9)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.9)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.9)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.9)
if Debounces.on == false then break end
wait()
end
z6 = Instance.new("Sound", larm)
z6.SoundId = "http://www.roblox.com/asset/?id=206083107"
z6.Volume = .6
z6.Pitch = pt[math.random(1,#pt)]
z6.Looped = false
z6:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z7 = Instance.new("Sound", rarm)
z7.SoundId = "http://www.roblox.com/asset/?id=206083107"--160867463, 161006212
z7.Volume = .6
z7.Pitch = pt[math.random(1,#pt)]
z7.Looped = false
z7:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z8 = Instance.new("Sound", larm)
z8.SoundId = "http://www.roblox.com/asset/?id=206083107"
z8.Volume = .6
z8.Pitch = pt[math.random(1,#pt)]
z8.Looped = false
z8:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z9 = Instance.new("Sound", rarm)
z9.SoundId = "http://www.roblox.com/asset/?id=206083107"
z9.Volume = 0.6
z9.Pitch = pt[math.random(1,#pt)]
z9.Looped = false
z9:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(-20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z10 = Instance.new("Sound", larm)
z10.SoundId = "http://www.roblox.com/asset/?id=206083107"
z10.Volume = .6
z10.Pitch = pt[math.random(1,#pt)]
z10.Looped = false
z10:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z11 = Instance.new("Sound", rarm)
z11.SoundId = "http://www.roblox.com/asset/?id=206083107"
z11.Volume = .6
z11.Pitch = pt[math.random(1,#pt)]
z11.Looped = false
z11:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(110),math.rad(30),math.rad(20)), 0.9)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.9)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.9)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.9)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.9)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.9)
if Debounces.on == false then break end
wait()
end
z12 = Instance.new("Sound", larm)
z12.SoundId = "http://www.roblox.com/asset/?id=206083107"
z12.Volume = .6
z12.Pitch = pt[math.random(1,#pt)]
z12.Looped = false
z12:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z13 = Instance.new("Sound", rarm)
z13.SoundId = "http://www.roblox.com/asset/?id=206083107"
z13.Volume = 0.6
z13.Pitch = pt[math.random(1,#pt)]
z13.Looped = false
z13:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(-20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z14 = Instance.new("Sound", larm)
z14.SoundId = "http://www.roblox.com/asset/?id=206083107"
z14.Volume = .6
z14.Pitch = pt[math.random(1,#pt)]
z14.Looped = false
z14:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z15 = Instance.new("Sound", rarm)
z15.SoundId = "http://www.roblox.com/asset/?id=206083107"
z15.Volume = .6
z15.Pitch = pt[math.random(1,#pt)]
z15.Looped = false
z15:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(110),math.rad(30),math.rad(20)), 0.9)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.9)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.9)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.9)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.9)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.9)
if Debounces.on == false then break end
wait()
end
z16 = Instance.new("Sound", larm)
z16.SoundId = "http://www.roblox.com/asset/?id=206083107"
z16.Volume = .6
z16.Pitch = pt[math.random(1,#pt)]
z16.Looped = false
z16:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z17 = Instance.new("Sound", rarm)
z17.SoundId = "http://www.roblox.com/asset/?id=206083107"--160867463, 161006212
z17.Volume = .6
z17.Pitch = pt[math.random(1,#pt)]
z17.Looped = false
z17:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z18 = Instance.new("Sound", larm)
z18.SoundId = "http://www.roblox.com/asset/?id=206083107"
z18.Volume = .6
z18.Pitch = pt[math.random(1,#pt)]
z18.Looped = false
z18:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z19 = Instance.new("Sound", rarm)
z19.SoundId = "http://www.roblox.com/asset/?id=206083107"
z19.Volume = 0.6
z19.Pitch = pt[math.random(1,#pt)]
z19.Looped = false
z19:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(-20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z20 = Instance.new("Sound", larm)
z20.SoundId = "http://www.roblox.com/asset/?id=206083107"
z20.Volume = .6
z20.Pitch = pt[math.random(1,#pt)]
z20.Looped = false
z20:Play()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
z:Destroy()
z2:Destroy()
z3:Destroy()
z4:Destroy()
z5:Destroy()
z6:Destroy()
z7:Destroy()
z8:Destroy()
z9:Destroy()
z10:Destroy()
z11:Destroy()
z12:Destroy()
z13:Destroy()
z14:Destroy()
z15:Destroy()
z16:Destroy()
z17:Destroy()
z18:Destroy()
z19:Destroy()
z20:Destroy()
Debounces.LPunch = false
Debounces.RPunch = false
Debounces.ks = false
Debounces.ks2 = false
if Debounces.CanAttack == false then
Debounces.CanAttack = true
Debounces.on = false
Debounces.NoIdl = false
end
end
end
end)
-------------------------------
mouse.KeyDown:connect(function(key)
	if key == "t" then
		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
			Debounces.ks = true
    kik = rleg.Touched:connect(function(ht)
        hit = ht.Parent
            if ht and hit:IsA("Model") then
                    if hit:FindFirstChild("Humanoid") then
                        if hit.Name ~= p.Name then
                            --[[if Debounces.Slashing == true and Debounces.Slashed == false then
                                    Debounces.Slashed = true]]--
                                    if Debounces.ks==true then
                                    z = Instance.new("Sound",hed)
                                    z.SoundId = "rbxassetid://169380525"
                                    z.Volume = 1
                                    z:Play()
                                    Debounces.ks=false
                                    end
                                    hit:FindFirstChild("Humanoid"):TakeDamage(2)
                                    hit:FindFirstChild("Torso").Velocity = hit:FindFirstChild("Torso").CFrame.lookVector * -300
                            --Debounces.Slashed = false
                        --end
                    end
                end
            elseif ht and hit:IsA("Hat") then
                if hit.Parent.Name ~= p.Name then
                    if hit.Parent:FindFirstChild("Humanoid") then
                           --[[if Debounces.Slashing == true and Debounces.Slashed == false then
                                    Debounces.Slashed = true]]--
                                    hit.Parent:FindFirstChild("Humanoid"):TakeDamage(2)
                                    hit:FindFirstChild("Torso").Velocity = hit:FindFirstChild("Torso").CFrame.lookVector * -300
                            --Debounces.Slashed = false
                        --end
                    end
                end
            end
        end)
			for i = 1,20 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(8)), 0.4)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-110)), 0.4)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(90), math.rad(90)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-90)), 0.4)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.4)
				if Debounces.on == false then break end
				rs:wait()
			end
			kik:disconnect()
			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				Debounces.on = false
            end
        end
    end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
    if key == "y" then

chatfunc("Enjoy this...")

        if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.on = true
            Debounces.NoIdl = true
                for i = 1, 15 do
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(30)), 0.2)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-90)), 0.6)
                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-14),math.rad(90),0), 0.2)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-90), 0), 0.4)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
                    if Debounces.on == false then break end
                    rs:wait(2.7)
                end
   z = Instance.new("Sound",char)
                z.SoundId = "rbxassetid://864314263"
                z.Pitch = 0.72
                z.Volume = 10
                wait(.1)
                z:Play()

wait(5)
                z = Instance.new("Sound",char)
                z.SoundId = "rbxassetid://228343271"
                z.Pitch = 0.70
                z.Volume = 10
                wait(.1)
                z:Play()
                Debounces.on = false
                Debounces.Here = false
                shot = shot + 1
local rng = Instance.new("Part", larm)
rng.Anchored = true
rng.BrickColor = BrickColor.new("Royal purple")
rng.CanCollide = false
rng.FormFactor = 3
rng.Name = "Ring"
rng.Size = Vector3.new(10, 10, 10)
rng.Transparency = 0.35
rng.TopSurface = 0
rng.BottomSurface = 0
rng2 = rng:clone()
rng3 = rng2:clone()
rng4 = rng2:clone()
local rngm = Instance.new("SpecialMesh", rng)
rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm.Scale = Vector3.new(10, 10, 1)
rngm2 = rngm:clone()
rngm2.Scale = Vector3.new(5, 5, 3)
rngm3=rngm2:clone()
rngm3.Parent = rng3
rngm3.Scale = Vector3.new(8, 8, 1)
rngm4 = rngm2:clone()
rngm4.Parent = rng4
rngm4.Scale = Vector3.new(6, 6, 1)
local bem = Instance.new("Part", larm)
bem.Anchored = true
bem.BrickColor = BrickColor.new("Really black")
bem.CanCollide = false
bem.FormFactor = 3
bem.Name = "Beam" .. shot
bem.Size = Vector3.new(10, 10, 10)
bem.Transparency = 0.35
bem.TopSurface = 0
bem.BottomSurface = 0
local bemm = Instance.new("SpecialMesh", bem)
bemm.MeshType = 4
bemm.Scale = Vector3.new(1, 4, 4)
local out = Instance.new("Part", larm)
out.Anchored = true
out.BrickColor = BrickColor.new("Really black")
out.CanCollide = false
out.FormFactor = 3
out.Name = "Out"
out.Size = Vector3.new(10, 10, 10)
out.Transparency = 0.35
out.TopSurface = 0
out.BottomSurface = 0
local outm = Instance.new("SpecialMesh", out)
outm.MeshId = "http://www.roblox.com/asset/?id=1033714"
outm.Scale = Vector3.new(6, 4, 6)
local bnd = Instance.new("Part", larm)
bnd.Anchored = true
bnd.BrickColor = BrickColor.new("Royal purple")
bnd.CanCollide = false
bnd.FormFactor = 3
bnd.Name = "Bend"
bnd.Size = Vector3.new(10, 10, 10)
bnd.Transparency = 1
bnd.TopSurface = 0
bnd.BottomSurface = 0
local bndm = Instance.new("SpecialMesh", bnd)
bndm.MeshType = 3
bndm.Scale = Vector3.new(8, 8, 8)
out.CFrame = larm.CFrame * CFrame.new(0, -2.7, 0)
bem.CFrame = out.CFrame * CFrame.new(0, -2.5, 0) * CFrame.Angles(0, 0, math.rad(90))
bnd.CFrame = bem.CFrame * CFrame.new(0, 0, 0)
rng.CFrame = out.CFrame * CFrame.Angles(math.rad(90), 0, 0)
rng3.CFrame = rng.CFrame * CFrame.new(0, -.5, 0)
rng4.CFrame = rng.CFrame * CFrame.new(0, -1, 0)
Debounces.Shewt = true
coroutine.wrap(function()
for i = 1, 20, 0.2 do
rngm.Scale = Vector3.new(10 + i*2, 10 + i*2, 1)
rngm3.Scale = Vector3.new(8 + i*3, 8 + i*3, 1)
rngm4.Scale = Vector3.new(6 + i*4, 6 + i*4, 1)
rng.Transparency = i/20
rng3.Transparency = 1/24
rng4.Transparency = i/26
wait()
end
wait()
rng:Destroy()
end)()
if Debounces.Shewt == true then
larm:WaitForChild("Beam" .. shot).Touched:connect(function(ht)
hit = ht.Parent
if hit:IsA("Model") and hit:findFirstChild("Humanoid") then
if HasntTouched(hit.Name) == true and deb == false then
deb = true
coroutine.wrap(function()
hit:FindFirstChild("Humanoid").PlatformStand = true
hit:FindFirstChild("Torso").Velocity = char.Head.CFrame.lookVector * 180
hit:FindFirstChild("Humanoid"):TakeDamage(math.random(24,73))
end)()
table.insert(Touche, hit.Name)
deb = false
end
elseif hit:IsA("Hat") and hit.Parent:findFirstChild("Humanoid") then
if HasntTouched(hit.Parent.Name) == true and deb == false then
deb = true
coroutine.wrap(function()
hit.Parent:FindFirstChild("Humanoid").PlatformStand = true
hit.Parent:FindFirstChild("Torso").Velocity = char.Head.CFrame.lookVector * 180
wait(1)
hit.Parent:FindFirstChild("Humanoid").PlatformStand = false
end)()
table.insert(Touche, hit.Parent.Name)
deb = false
for i, v in pairs(Touche) do
print(v)
end
end
end
end)
end
for i = 0, 260, 8 do
bem.Size = Vector3.new(i, 3, 3)
out.CFrame = larm.CFrame * CFrame.new(0, -2.7, 0)
bem.CFrame = larm.CFrame * CFrame.new(0, -4.2 -(i/2), 0) * CFrame.Angles(0, 0, math.rad(90))
bnd.CFrame = bem.CFrame * CFrame.new(-i/2, 0, 1.2)
bnd.Size = Vector3.new(1,1,1)
bndm.Scale = Vector3.new(8,8,8)
if i % 10 == 0 then
local newRng = rng2:Clone()
newRng.Parent = larm
newRng.CFrame = larm.CFrame * CFrame.new(0, -4.2-i, 0) * CFrame.Angles(math.rad(90), 0, 0)
local newRngm = rngm2:clone()
newRngm.Parent=newRng
coroutine.wrap(function()
for i = 1, 10, 0.2 do
newRngm.Scale = Vector3.new(8 + i*2, 8 + i*2, 3)
newRng.Transparency = i/10
wait()
end
wait()
newRng:Destroy()
end)()
end
wait()
end
wait()
Debounces.Shewt = false
bem:Destroy()
out:Destroy()
bnd:Destroy()
Debounces.Ready = false
for i, v in pairs(Touche) do
table.remove(Touche, i)
end
wait()
table.insert(Touche, char.Name)
Debounces.NoIdl = false
if Debounces.CanAttack == false then
Debounces.CanAttack = true
end
end
end
end)
----------------------------------------------------
--[[mouse.KeyDown:connect(function(key)
    if key == "y" then

                z = Instance.new("Sound",char)
                z.SoundId = "rbxassetid://864314263"
                z.Pitch = 0.72
                z.Volume = 10
                wait(.1)
                z:Play()
wait(5)
        if Debounces.CanAttack == true then
            Debounces.CanAttack = false
            Debounces.NoIdl = true
            Debounces.on = true
                local shell = Instance.new("Part",torso)
                shell.BrickColor = BrickColor.new("Royal purple")
                shell.Anchored = false
                shell.CanCollide = false
                shell.Locked = true
                shell.TopSurface = "SmoothNoOutlines"
                shell.BottomSurface = "SmoothNoOutlines"
                shell.Size = Vector3.new(1.2,1.2,1.2)
                shell.FormFactor = 3
                local shellm = Instance.new("SpecialMesh",shell)
                shellm.MeshType = "Sphere"
                shellm.Scale = Vector3.new(1.2,1.2,1.2)
                Omega = function()
                    local X = Instance.new("Part",char)
                    local O = Instance.new("ObjectValue",X)
                    O.Name = "creator"
                    X.Locked = true
                    X.Name = "Shell"
                    X.Anchored = false
                    X.CanCollide = false
                    X.Transparency = 0.5
                    X.Reflectance = 0
                    X.BottomSurface = 0
                    X.TopSurface = 0
                    X.Shape = 0
                    local V = Instance.new("ObjectValue",X)
                    V.Value = char
                    V.Name = "creator"
                    X.BrickColor = BrickColor.new("Royal purple")
                    X.Size = Vector3.new(40,40,40)
                    --X.Material = "Neon"
                    local Z = Instance.new("SpecialMesh",X)
                    Z.MeshType = "Sphere"
                    Z.Scale = Vector3.new(0.2,0.2,0.2)
                    X.CFrame = rarm.CFrame*CFrame.new(0,-6,0)
                    local bv = Instance.new("BodyVelocity",X)
                    bv.maxForce = Vector3.new(99999,99999,99999)
                    X.CFrame = CFrame.new(X.Position,root.CFrame.lookVector*10)
                    bv.velocity = root.CFrame.lookVector*10
                    Explode = X.Touched:connect(function(hit)
                        if hit ~= char and hit.Name ~= "Shell" and hit ~= X and hit:IsA("Part") or hit:IsA("BasePart}") then
                            local cf = X.CFrame
                            bv:Destroy()
                            X.Anchored = true
                            Z:Remove()
                            Explode:disconnect()
                            X.Size = Vector3.new(3,3,3)
                            X.Touched:connect(function(hit) end)
                            X.CanCollide = false
                            for i,v in pairs(FindNearestTorso(X.CFrame.p,200))do
                                if v:FindFirstChild('Humanoid') then
                                    v.Humanoid:TakeDamage(math.random(120,120))
                                end
                            end
                                for i = 1, (40) do rs:wait()
                                    X.Transparency = X.Transparency + (1/40)
                                    X.Size = X.Size + Vector3.new(1,1,1)
                                    X.CFrame = root.CFrame * CFrame.new(0,0,-10)
                                end
                            X:Destroy()
                            end
                        end)
                    end
            for i = 1,200 do
                shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
                rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.3,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(170)), 0.03)
                larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.4)
                hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
                if Debounces.on == false then break end
                rs:wait()
            end
            for i = 1,30 do
                shell.CFrame = torso.CFrame * CFrame.new(0,8,0)
                rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.3,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(170)), 0.4)
                larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.3,0.62,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-170)), 0.4)
                hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
                if Debounces.on == false then break end
                rs:wait()
            end
            for i = 1,40 do
                shell.CFrame = torso.CFrame * CFrame.new(0,20,0)
                shell.Size = shell.Size + Vector3.new(1,1,1)
                rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.4,0.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(100)), 0.4)
                larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4,0.6,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-100)), 0.4)
                hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
                if Debounces.on == false then break end
                rs:wait()
            end
            for i = 1,40 do
                shell.CFrame = torso.CFrame * CFrame.new(0,0,-30)
                rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.4,0.6,0)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(20)), 0.4)
                larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4,0.6,0)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(-20)), 0.4)
                hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
                if Debounces.on == false then break end
                rs:wait()
            end
            for i = 1,60 do
                shell.CFrame = torso.CFrame * CFrame.new(0,0,-60)
                rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.4,0.64,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-30)), 0.4)
                larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4,0.64,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(30)), 0.4)
                hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
                if Debounces.on == false then break end
                rs:wait()
            end
            for i = 1,60 do
                shell.CFrame = torso.CFrame * CFrame.new(0,0,-60)
                shell.Size = shell.Size + Vector3.new(1,1,1)
                rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.4,0.64,0)*CFrame.Angles(math.rad(110),math.rad(0),math.rad(120)), 0.4)
                larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.4,0.64,0)*CFrame.Angles(math.rad(110),math.rad(0),math.rad(-120)), 0.4)
                hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.4)
                if Debounces.on == false then break end
                rs:wait()
            end
            if Debounces.CanAttack == false then
                Debounces.CanAttack = true
                Debounces.NoIdl = false
                Debounces.on = false
            end
        end
    end
end)]]--
----------------------------------------------------

Mouse.KeyDown:connect(function(key)
	if key == "n" then
chatfunc("ILL ERASE THIS WHOLE PLANET!!!")
		SkyBeam()
	end
end)

----------------
Charging = false
mouse.KeyDown:connect(function(key)
	if key == "r" then
		v = Instance.new("Sound")
        v.SoundId = "rbxassetid://447225089"
        v.Parent = char
        v.Looped = false
        v.Pitch = 1
        v.Volume = 8
        wait(.01)
        v:Play()
    if Charging == false then
			Charging = true
			if Debounces.CanAttack == true then
				Debounces.CanAttack = false
				Debounces.NoIdl = true
				Debounces.on = true
				for i = 1,20 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.65,-.4)*CFrame.Angles(math.rad(130),math.rad(0),math.rad(-40)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.65,-.4)*CFrame.Angles(math.rad(130),math.rad(0),math.rad(40)), 0.2)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(0),0), 0.2)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10), math.rad(0), 0), 0.2)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, .4, -0.8) * CFrame.Angles(math.rad(-6), math.rad(0), math.rad(0)), 0.2)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, .4, -0.8) * CFrame.Angles(math.rad(-6), math.rad(0), math.rad(0)), 0.2)
					if Debounces.on == false then break end
					rs:wait()
				end
				--[[for i = 1,20 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(-20),math.rad(50)), 0.4)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(-20),math.rad(20),math.rad(-50)), 0.4)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,.1)*CFrame.Angles(math.rad(34),math.rad(0),0), 0.4)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)), 0.4)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(-10)), 0.4)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(10)), 0.4)
					if Debounces.on == false then break end
					rs:wait()
				end]]--
pt=Instance.new('Part',torso)
pt.Anchored=true
pt.CanCollide=false
pt.Locked = true
pt.FormFactor='Custom'
pt.Size=Vector3.new(1,1,1)
pt.CFrame=root.CFrame*CFrame.new(0,-1,0)
pt.Transparency=.6
pt.BrickColor=BrickColor.new('Really black')
msh=Instance.new('SpecialMesh',pt)
msh.MeshId='http://www.roblox.com/asset/?id=20329976'
msh.Scale=Vector3.new(8,4,8)
pt2=pt:clone()
pt2.Parent = torso
pt2.CFrame=root.CFrame*CFrame.new(0,-1,0)
pt2.BrickColor=BrickColor.new("Royal purple")
msh2=msh:clone()
msh2.Parent=pt2
msh2.Scale=Vector3.new(10,5,10)

custommath={25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,-25,-26,-27,-28,-29,-30,-31,-32,-33,-34,-35,-36,-37,-38,-39,-40,-41,-42,-43,-44,-45,-46,-47,-48,-49,-50,-51,-52,-53,-54,-55,-56,-57,-58,-59,-60,-61,-62,-63,-64,-65,-66,-67,-68,-69,-70,-71,-72,-73,-74,-75,-76,-77,-78,-79,-80,-81,-82,-83,-84,-85,-86,-87,-88,-89,-90,-91,-92,-93,-94,-95,-96,-97,-98,-99,-100}

bl = Instance.new("Part", char)
bl.Locked = true
bl.Name = "Shell"
bl.BrickColor = BrickColor.new("Really black")
bl.Anchored = true
bl.CanCollide = false
bl.Transparency = 0
bl.Reflectance = 0
bl.BottomSurface = 0
bl.TopSurface = 0
bl.Shape = 0
blm = Instance.new("SpecialMesh",bl)
blm.MeshType = "Sphere"
blm.Scale = Vector3.new(1,1,1)
blm.MeshId = "rbxassetid://9982590"

	coroutine.resume(coroutine.create(function()
        for i=1, math.huge, 4 do
			if Charging == true then
				rs:wait()
				bl.CFrame = root.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-i/10), math.rad(-i/10), math.rad(i/10))
				blm.Scale = blm.Scale + Vector3.new(0.1, 0.1, 0.1)
				bl.Transparency = bl.Transparency + 0.005
				pt.CFrame = root.CFrame*CFrame.new(0,-1,0) * CFrame.Angles(0,math.rad(i*2),0)
				pt2.CFrame = root.CFrame*CFrame.new(0,-1,0) * CFrame.Angles(0,math.rad(-i*2),0)
				msh.Scale = msh.Scale + Vector3.new(0.05,0,0.05)
				msh2.Scale = msh2.Scale + Vector3.new(0.05,0,0.05)
				elseif Charging == false then break
			end
		end
    end))

repeat
    local p = Instance.new('Part',torso)
    p.formFactor = 'Custom'
    p.Size = Vector3.new(1,1,1)
    p.BrickColor = workspace.Base.BrickColor
    p.CanCollide = false
    p.Transparency = 0
    p.Anchored = true
    p.Locked=true
    p.Material = workspace.Base.Material
    s = math.random(1,40)/10
    local m = Instance.new("BlockMesh",p)
    m.Scale = Vector3.new(s,s,s)
    p.CFrame = torso.CFrame*CFrame.new(custommath[math.random(1,#custommath)]/10,-math.random(5,7),custommath[math.random(1,#custommath)]/10)*CFrame.Angles(math.random(),math.random(),math.random())
	--[[coroutine.wrap(function()
		wait(2)
		while Charging == true do
		wait(2)
		GroundWave1()
		wait(2)
		end
	end)()]]--
	Spawn(function()
		while rs:wait() do
			if Charging == true then
				rarm.Weld.C0 = CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(math.random(-36,-20)),math.rad(math.random(-30,-20)),math.rad(math.random(30,50)))
				larm.Weld.C0 = CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(math.random(-36,-20)),math.rad(math.random(20,30)),math.rad(math.random(-50,-30)))
				hed.Weld.C0 = CFrame.new(0,1.5,.1)*CFrame.Angles(math.rad(math.random(26,34)),math.rad(math.random(-5,5)),math.rad(0))
				torso.Weld.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(math.random(-4,4)), math.rad(0))
				lleg.Weld.C0 = CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(math.random(-10,-6)), math.rad(math.random(10,20)), math.rad(math.random(-20,-10)))
				rleg.Weld.C0 = CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(math.random(-10,-6)), math.rad(math.random(-20,-10)), math.rad(math.random(10,20)))
			elseif Charging == false then break
			end
		end
	end)
	Spawn(function()
        while rs:wait() do
            if p.Transparency >= 1 then p:Destroy() break end
            p.CFrame = p.CFrame*CFrame.Angles(math.rad(2),math.rad(2),math.rad(2))+Vector3.new(0,0.2,0)
            p.Transparency = p.Transparency+0.01
        end
    end)
    wait(.3)
until Charging == false
			end
		end
	end
end)
----------------------------------------------------
mouse.KeyUp:connect(function(key)
	if key == "r" then
		if Charging == true then
			Charging = false
				pt:Destroy()
				pt2:Destroy()
				bl:Destroy()
			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				Debounces.on = false
			end
		end
	end
end)
----------------------------------------------------
mouse.KeyDown:connect(function(key)
	if key == "g" then
		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
				local shell = Instance.new("Part",torso)
				shell.BrickColor = BrickColor.new("Royal purple")
				shell.Anchored = true
				shell.CanCollide = false
				shell.Locked = true
				shell.TopSurface = "SmoothNoOutlines"
				shell.BottomSurface = "SmoothNoOutlines"
				shell.Size = Vector3.new(1,1,1)
				shellm = Instance.new("SpecialMesh",shell)
				shellm.MeshType = "Sphere"
				shellm.Scale = Vector3.new(1,1,1)
				local shell2 = Instance.new("Part",torso)
				shell2.BrickColor = BrickColor.new("Royal purple")
				shell2.Anchored = true
				shell2.CanCollide = false
				shell2.Locked = true
				shell2.TopSurface = "SmoothNoOutlines"
				shell2.BottomSurface = "SmoothNoOutlines"
				shell2.Size = Vector3.new(1,1,1)
				shellm2 = Instance.new("SpecialMesh",shell2)
				shellm2.MeshType = "Sphere"
				shellm2.Scale = Vector3.new(1,1,1)

function FindNearestTorso(Position,Distance,SinglePlayer)
    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
        local List = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= char then
                        if(v.Torso.Position -Position).magnitude <= Distance then
                            table.insert(List,v)
                        end
                    end
                end
            end
        end
    return List
end

Shell = function()
local X = Instance.new("Part",char)
local O = Instance.new("ObjectValue",X)
        O.Name = "creator"
        X.Locked = true
		X.Name = "Shell"
        X.Anchored = false
        X.CanCollide = false
        X.Transparency = 0
        X.Reflectance = 0
        X.BottomSurface = 0
        X.TopSurface = 0
        X.Shape = 0
        local V = Instance.new("ObjectValue",X)
        V.Value = char
        V.Name = "creator"
        X.BrickColor = BrickColor.new("Royal purple")
        X.Size = Vector3.new(1,1,1)
        --X.Material = "Neon"
        local Z = Instance.new("SpecialMesh",X)
        Z.MeshType = "Sphere"
        Z.Scale = Vector3.new(1,1,1)
        X.CFrame = rarm.CFrame*CFrame.new(0,-6,0)
        local bv = Instance.new("BodyVelocity",X)
        bv.maxForce = Vector3.new(99999,99999,99999)
        X.CFrame = CFrame.new(X.Position,root.CFrame.lookVector*10)
        bv.velocity = root.CFrame.lookVector*65
Explode = X.Touched:connect(function(hit)
        if hit ~= char and hit.Name ~= "Shell" and hit:IsA("Part") or hit:IsA("BasePart}") then
        local cf = X.CFrame
        bv:Destroy()
        X.Anchored = true
        Z:Remove()
        Explode:disconnect()
        X.Size = Vector3.new(3,3,3)
        X.Touched:connect(function(hit) end)
        X.CanCollide = false
		for i,v in pairs(FindNearestTorso(X.CFrame.p,40))do
			if v:FindFirstChild('Humanoid') then
				v.Humanoid:TakeDamage(math.random(6,12))
			end
		end
			for i = 1, (40) do rs:wait()
				X.Transparency = X.Transparency + (1/40)
				X.Size = X.Size + Vector3.new(1,1,1)
				X.CFrame = cf
			end
		X:Destroy()
		end
	end)
end
				Shell()
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(0),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(0), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 0
				shell2.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell2.Transparency = 0
				shell.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 0
				shell2.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell2.Transparency = 0
				shell.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 0
				shell2.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.5)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell2.Transparency = 0
				shell.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 0
				shell2.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell2.Transparency = 0
				shell.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 0
				shell2.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell2.Transparency = 0
				shell.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-40)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-110)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(-50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				Shell()
				shell.Transparency = 0
				shell2.Transparency = 1
				for i = 1, 10 do
					shell.CFrame = rarm.CFrame * CFrame.new(0,-1,0)
					shell2.CFrame = larm.CFrame * CFrame.new(0,-1,0)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(110)), 0.7)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(40)), 0.7)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-10),math.rad(50),0), 0.7)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-50), 0), 0.7)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-20)), 0.7)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(20)), 0.7)
					if Debounces.on == false then break end
					rs:wait()
				end
				shell.Transparency = 1
			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				Debounces.on = false
			end
		end
	end
end)
----------------------------------------------------
Search = false
mouse.KeyDown:connect(function(key)
	if key == "n" then
		if Search == false then
			Search = true
			for i,v in pairs(game.Players:getPlayers()) do
				if v.Name~=char.Name then
					for j,k in pairs(v.Character:GetChildren()) do
						if k:IsA("BasePart") and k.Transparency >= 1 then
							bawx=Instance.new("SelectionBox",cam)
							bawx.Color = BrickColor.new("Bright red")
							bawx.Transparency = .5
							bawx.Adornee = k
						end
                    end
                end
            end
		elseif Search == true then
			Search = false
			for i, v in pairs(cam:GetChildren()) do
				if v:IsA("SelectionBox") then
					v:Destroy()
				end
			end
	    end
    end
end)
----------------------------------------------------

------------------------------------------
mouse.KeyDown:connect(function(key)
    if string.byte(key) == 52 then
        char.Humanoid.WalkSpeed = 60
    end
end)
mouse.KeyUp:connect(function(key)
    if string.byte(key) == 52 then
        char.Humanoid.WalkSpeed = 8
    end
end)
-------------------------------
local animpose = "Idle"
local lastanimpose = "Idle"
local sine = 0
local change = 1
local val = 0
local ffing = false
-------------------------------
game:GetService("RunService").RenderStepped:connect(function()
--[[if char.Humanoid.Jump == true then
jump = true
else
jump = false
end]]
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
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 2 then
animpose = "Idle"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 20 then
animpose = "Walking"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > 20 then
animpose = "Running"
end
if animpose ~= lastanimpose then
sine = 0
if Debounces.NoIdl == false then
if animpose == "Idle" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(-6),math.rad(8)), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8)), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(0),0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.625, -0.35) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
end
elseif animpose == "Walking" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(8)), 0.4)
end
elseif animpose == "Running" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-20),math.rad(-14),math.rad(8+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-20),math.rad(14),math.rad(-8-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-10),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20),0, math.rad(0)), 0.4)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-12), 0, math.rad(-7)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-12), 0, math.rad(7)), 0.4)
wait()
end
end
else
end
end
lastanimpose = animpose
if Debounces.NoIdl == false then
if animpose == "Idle" then
change = 0.5
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(17.5),math.rad(90+2*math.cos(sine/14))), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.51+0.05*math.cos(sine/14),0)*CFrame.Angles(math.rad(31),math.rad(-32),math.rad(-8-2*math.cos(sine/14))), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(sine/14)),math.rad(-70),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/14), 0) * CFrame.Angles(0, math.rad(70), math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.215, -0.35) * CFrame.Angles(-0.35-0.05*math.cos(sine/14), 0, 0), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(-0.25+0.05*math.cos(sine/14),0,0), 0.4)
elseif animpose == "Walking" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/14), 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(8)), 0.4)
elseif animpose == "Running" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-20),math.rad(-22),math.rad(20+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-10),math.rad(10),math.rad(-14-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(20),0,0), 0.4)
hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-40),0, math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-4), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-4), 0, math.rad(8)), 0.4)
end
end
end)

hum.MaxHealth = 33543764375674356343744673473537463536
wait(3)
hum.Health = 33543764375674356343744673473537463536