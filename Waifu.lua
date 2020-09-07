--When'sWaifu
wait(0.2)
print("Hey!!!")
print("You Pervert!!!")
local hoh = game:GetService"Players".LocalPlayer
local char = hoh.Character
local Head = char.Head
	local LeftArm = char["Left Arm"]
	local RightArm = char["Right Arm"]
	local LeftLeg = char["Left Leg"]
	local RightLeg = char["Right Leg"]
mouse = hoh:GetMouse()
local cam = game.Workspace.CurrentCamera
local RootPart = char.HumanoidRootPart
local RootJoint = RootPart.RootJoint
	local Anim = "Idle"
	local idle = 0
	local Effects = {}
	local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
vt = Vector3.new
local cf = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
	local velocity = RootPart.Velocity.y
	local sine = 0
	local change = 1
	local grabbed = false
	local cn = CFrame.new
	local mr = math.rad
	local angles = CFrame.Angles
	local ud = UDim2.new
	local c3 = Color3.new
	local d = Instance.new('Model', char)
    d.Name = "KKK"
    attack = false
    nak = false
    disable = false
    attacktype = 1
    equipped = false
	char.Humanoid.Animator.Parent = nil
	char.Animate.Parent = nil
	local newMotor = function(part0, part1, c0, c1)
	local w = Instance.new("Motor", part0)
	w.Part0 = part0
	w.Part1 = part1
	w.C0 = c0
	w.C1 = c1
	return w
	end
		clerp = function(a, b, t)
	
	return a:lerp(b, t)
		end
		
		for i,v in pairs(char:children()) do
    if v:IsA("Hat") then
        v:Destroy()
    end
for i,v in pairs(char:children()) do
    if v:IsA("Accessory") then
        v:Destroy()
    end
for i,v in pairs(char:children()) do
    if v:IsA("ShirtGraphic") then
        v:Destroy()
    end
end
end
end

ypcall(function()
char.Torso.roblox:Remove()
char.Shirt:Destroy()
char.Pants:Destroy()
char.Head.face:Destroy()
shirt = Instance.new("Shirt", char)
shirt.Name = "Shirt"
Pants = Instance.new("Pants", char)
Pants.Name = "Pants"
face = Instance.new("Decal", char.Head)
face.Name = "face"
char.Shirt.ShirtTemplate = "rbxassetid://251988595"
char.Pants.PantsTemplate = "rbxassetid://324421595"
char.Head.face.Texture = "rbxassetid://648887959"
end)
function CreateSound(id, par, vol, pit) 
	coroutine.resume(coroutine.create(function()
		local sou = Instance.new("Sound", par or workspace)
		sou.Volume = vol
		sou.Pitch = pit or 1
		sou.SoundId = id
		wait() 
		sou:play() 
		game:GetService("Debris"):AddItem(sou, 6)
	end))
end
New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end
		

	local co1 = 5
	local co2 = 8
	local co3 = 10
	local co4 = 25
	local cooldown1 = 0
	local cooldown2 = 0
	local cooldown3 = 0
	local cooldown4 = 0
	local skillcolorscheme = BrickColor.new("Navy blue").Color
	local scrn = Instance.new("ScreenGui", hoh.PlayerGui)
	makeframe = function(par, trans, pos, size, color)
	
	local frame = Instance.new("Frame", par)
	frame.BackgroundTransparency = trans
	frame.BorderSizePixel = 0
	frame.Position = pos
	frame.Size = size
	frame.BackgroundColor3 = color
	return frame
end

	makelabel = function(par, text)
	
	local label = Instance.new("TextLabel", par)
	label.BackgroundTransparency = 1
	label.Size = UDim2.new(1, 0, 1, 0)
	label.Position = UDim2.new(0, 0, 0, 0)
	label.TextColor3 = Color3.new(255, 255, 0)
	label.TextStrokeTransparency = 0
	label.FontSize = Enum.FontSize.Size32
	label.Font = Enum.Font.SourceSansLight
	label.BorderSizePixel = 0
	label.TextScaled = true
	label.Text = text
end

	framesk1 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.85, 0), UDim2.new(0.16, 0, 0.1, 0), skillcolorscheme)
	framesk2 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.74, 0), UDim2.new(0.16, 0, 0.1, 0), skillcolorscheme)
	framesk3 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.63, 0), UDim2.new(0.16, 0, 0.1, 0), skillcolorscheme)
	framesk4 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.52, 0), UDim2.new(0.16, 0, 0.1, 0), skillcolorscheme)
	bar1 = makeframe(framesk1, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
	bar2 = makeframe(framesk2, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
	bar3 = makeframe(framesk3, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
	bar4 = makeframe(framesk4, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
	text1 = Instance.new("TextLabel", framesk1)
	text1.BackgroundTransparency = 1
	text1.Size = UDim2.new(1, 0, 1, 0)
	text1.Position = UDim2.new(0, 0, 0, 0)
	text1.TextColor3 = Color3.new(255, 255, 0)
	text1.TextStrokeTransparency = 0
	text1.FontSize = Enum.FontSize.Size18
	text1.Font = Enum.Font.SourceSansLight
	text1.BorderSizePixel = 0
	text1.TextScaled = true
	text1.Text = "[Z]\n honk"
	text2 = Instance.new("TextLabel", framesk2)
	text2.BackgroundTransparency = 1
	text2.Size = UDim2.new(1, 0, 1, 0)
	text2.Position = UDim2.new(0, 0, 0, 0)
	text2.TextColor3 = Color3.new(255, 255, 0)
	text2.TextStrokeTransparency = 0
	text2.FontSize = Enum.FontSize.Size18
	text2.Font = Enum.Font.SourceSansLight
	text2.BorderSizePixel = 0
	text2.TextScaled = true
	text2.Text = "[X]\n idk"
	text3 = Instance.new("TextLabel", framesk3)
	text3.BackgroundTransparency = 1
	text3.Size = UDim2.new(1, 0, 1, 0)
	text3.Position = UDim2.new(0, 0, 0, 0)
	text3.TextColor3 = Color3.new(255, 255, 0)
	text3.TextStrokeTransparency = 0
	text3.FontSize = Enum.FontSize.Size18
	text3.Font = Enum.Font.SourceSansLight
	text3.BorderSizePixel = 0
	text3.TextScaled = false
	text3.Text = "[C]\n aaaaa"
	text4 = Instance.new("TextLabel", framesk4)
	text4.BackgroundTransparency = 1
	text4.Size = UDim2.new(1, 0, 1, 0)
	text4.Position = UDim2.new(0, 0, 0, 0)
	text4.TextColor3 = Color3.new(255, 255, 0)
	text4.TextStrokeTransparency = 0
	text4.FontSize = Enum.FontSize.Size18
	text4.Font = Enum.Font.SourceSansLight
	text4.BorderSizePixel = 0
	text4.TextScaled = true
	text4.Text = "[V]\n kil me"

	ArtificialHB = Instance.new("BindableEvent", hoh.PlayerGui)
	ArtificialHB.Name = "Heartbeat"
	hoh.PlayerGui:WaitForChild("Heartbeat")
	frame = 0.033333333333333
	tf = 0
	allowframeloss = false
	tossremainder = false
	lastframe = tick()
	hoh.PlayerGui.Heartbeat:Fire()
	local gg = false
	game:GetService("RunService").Heartbeat:connect(function(s, p)
	
	if hoh.PlayerGui:FindFirstChild("Heartbeat") == nil then
		gg = true
	end
	if gg == true then
		return 
	end
	tf = tf + s
	if frame <= tf then
		if allowframeloss then
			hoh.PlayerGui.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				hoh.PlayerGui.Heartbeat:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end
	)
		swait = function(num)
	
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
	RemoveOutlines = function(part)
	
	part.TopSurface = 10
end
		CreatePart = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	
	local Part = Create("Part")({Parent = Parent, Reflectance = Reflectance, Transparency = Transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(BColor)), Name = Name, Size = Size, Material = Material})
	RemoveOutlines(Part)
	return Part
end

	CreateMesh = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	
	local Msh = Create(Mesh)({Parent = Part, Offset = OffSet, Scale = Scale})
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end

	CreateWeld = function(Parent, Part0, Part1, C0, C1)
	
	local Weld = Create("Weld")({Parent = Parent, Part0 = Part0, Part1 = Part1, C0 = C0, C1 = C1})
	return Weld
end

	CFuncs = {
Part = {Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	
	local Part = Create("Part")({Parent = Parent, Reflectance = Reflectance, Transparency = Transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(BColor)), Name = Name, Size = Size, Material = Material})
	RemoveOutlines(Part)
	return Part
end
}
, 
Mesh = {Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	
	local Msh = Create(Mesh)({Parent = Part, Offset = OffSet, Scale = Scale})
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end
}
, 
Mesh = {Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	
	local Msh = Create(Mesh)({Parent = Part, Offset = OffSet, Scale = Scale})
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end
}
, 
Weld = {Create = function(Parent, Part0, Part1, C0, C1)
	
	local Weld = Create("Weld")({Parent = Parent, Part0 = Part0, Part1 = Part1, C0 = C0, C1 = C1})
	return Weld
end
}
, 
Sound = {Create = function(id, par, vol, pit)
	
	coroutine.resume(coroutine.create(function()
		
		local S = Create("Sound")({Volume = vol, Pitch = pit or 1, SoundId = id, Parent = par or workspace})
		wait()
		S:play()
		game:GetService("Debris"):AddItem(S, 6)
	end
))
end
}
, 
ParticleEmitter = {Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
	
	local fp = Create("ParticleEmitter")({Parent = Parent, Color = ColorSequence.new(Color1, Color2), LightEmission = LightEmission, Size = Size, Texture = Texture, Transparency = Transparency, ZOffset = ZOffset, Acceleration = Accel, Drag = Drag, LockedToPart = LockedToPart, VelocityInheritance = VelocityInheritance, EmissionDirection = EmissionDirection, Enabled = Enabled, Lifetime = LifeTime, Rate = Rate, Rotation = Rotation, RotSpeed = RotSpeed, Speed = Speed, VelocitySpread = VelocitySpread})
	return fp
end
}
}
	


	rayCast = function(Position, Direction, Range, Ignore)
	
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
end

	local GetNearest = function(obj, distance)
	
	local last, lastx = distance + 1, nil
	for i,v in pairs(workspace:GetChildren()) do
		if v:IsA("Model") and v ~= char and v:findFirstChild("Humanoid") and v:findFirstChild("Torso") and v:findFirstChild("Humanoid").Health > 0 then
			local t = v.Torso
			local dist = (t.Position - obj.Position).magnitude
			if dist <= distance and dist < last then
				last = dist
				lastx = v
			end
		end
	end
	return lastx
	end


--[[armweld = Instance.new("Weld", char.Torso)
armweld.C0 = CFrame.new(1.5, .5, 0)
armweld.C1 = CFrame.new(0, .5, 0)
armweld.Part0 = char.Torso
armweld.Part1 = char["Right Arm"]]

local Fhead = Instance.new("Part", char)
Fhead.Name = "a"
Fhead.Size = Vector3.new(2, 1, 1)
Fhead.Transparency = 1
Fhead.CanCollide = false
M = Instance.new("SpecialMesh", Fhead)
M.Scale = Vector3.new(1.26,1.26,1.26)
Das = Instance.new("Decal", Fhead)
Das.Texture = "rbxassetid://660774132"
Das.Transparency = 1


		local har1 = Instance.new("Part", char.Head)
		har1.BrickColor = BrickColor.new("Brown")
		har1.Name = "Hair" 
		har1.formFactor = 0
		har1.Size = Vector3.new(0,-0.25,0) 
		har1.BottomSurface = 0 
		har1.TopSurface = 0 
		har1.CanCollide = false
		Mesh = Instance.new("SpecialMesh",har1)
        Mesh.MeshId = "http://www.roblox.com/asset/?id=13070796"
        Mesh.TextureId = "http://www.roblox.com/asset/?id=13694600"
        Mesh.Scale=Vector3.new(1.01, .99, 1.01)
        local bWeld = Instance.new("Weld", char.Head)
        bWeld.Part0 = char.Head
        bWeld.Part1 = har1
        bWeld.C1 = CFrame.new(0,.4,0)


local main = Instance.new("Part", char.Torso)
main.Size = Vector3.new(.1, .1, .1)
main.BrickColor = BrickColor.new("White")
main.TopSurface = "SmoothNoOutlines"
main.Name = "asd"
main.Transparency = 1
main.CanCollide = false

	local Handle = Instance.new("Part",d)
    Handle.Size = Vector3.new(0.3, 1.8, 3)
    Handle.Name = "Pan"
    Handle:BreakJoints()
    Handle.Anchored = false
    Handle.Transparency = 1
    Handle.CanCollide = false
    Handle.Shape = "Block"
    Handle.TopSurface = "SmoothNoOutlines"
    Handle.BottomSurface = "SmoothNoOutlines"
    ddd = Instance.new("SpecialMesh",Handle)
    ddd.Scale=Vector3.new(2, 2, 2)
    ddd.MeshId = "http://www.roblox.com/asset/?id=11820238"
    ddd.TextureId = "http://www.roblox.com/asset/?id=11820143"
	local Hitbox = Instance.new("Part",d)
    Hitbox.Size = Vector3.new(0.3, 1.8, 3)
    Hitbox.Name = "Hitbox"
    Hitbox:BreakJoints()
    Hitbox.Anchored = false
    Hitbox.Transparency = 1
    Hitbox.CanCollide = false
    Hitbox.Shape = "Block"
    Hitbox.TopSurface = "SmoothNoOutlines"
    Hitbox.BottomSurface = "SmoothNoOutlines"
    ddd = Instance.new("SpecialMesh",Handle)
    ddd.Scale=Vector3.new(2, 2, 2)
    ddd.MeshId = "http://www.roblox.com/asset/?id=11820238"
    ddd.TextureId = "http://www.roblox.com/asset/?id=11820143"
	local FakeHandle = Instance.new("Part",d)
    FakeHandle.Size = Vector3.new(0.3, 1.9, 3)
    FakeHandle.Name = "FakeHandle"
    FakeHandle:BreakJoints()
    FakeHandle.Anchored = false
    FakeHandle.Transparency = 1
    FakeHandle.CanCollide = false
    FakeHandle.Shape = "Block"
    FakeHandle.TopSurface = "SmoothNoOutlines"
    FakeHandle.BottomSurface = "SmoothNoOutlines"
    ddd = Instance.new("SpecialMesh",FakeHandle)
    ddd.Scale=Vector3.new(2, 2, 2)
    ddd.MeshId = "http://www.roblox.com/asset/?id=11820238"
    ddd.TextureId = "http://www.roblox.com/asset/?id=11820143"



local aWeld = Instance.new("Weld", char.Head)
aWeld.Part0 = char.Head
aWeld.Part1 = Fhead
local aWeld = Instance.new("Weld", char.Torso)
aWeld.Part0 = char.Torso
aWeld.C1 = CFrame.new(0,1.2,.5)
local aWeld = Instance.new("Weld", char.Torso)
aWeld.Part0 = char.Torso
aWeld.Part1 = A1
aWeld.C1 = CFrame.new(.5,-.5,.5)
local aWeld = Instance.new("Weld", char.Torso)
aWeld.Part0 = char.Torso
aWeld.Part1 = A2
aWeld.C1 = CFrame.new(-.5,-.5,.5)
local aWeld = Instance.new("Weld", char.Torso)
aWeld.Part0 = char.Torso
aWeld.Part1 = A3
aWeld.C1 = CFrame.new(0,-1,.5)
local aWeld = Instance.new("Weld", char.Torso)
aWeld.Part0 = char.Torso
aWeld.Part1 = A4
aWeld.C1 = CFrame.new(.6,-1,0)
local aWeld = Instance.new("Weld", char.Torso)
aWeld.Part0 = char.Torso
aWeld.Part1 = A5
aWeld.C1 = CFrame.new(-.6,-1,0)
local aWeld = Instance.new("Weld", char.Torso)
aWeld.Part0 = char.Torso
aWeld.Part1 = A6
aWeld.C1 = CFrame.new(0,-1,-.42)
local aWeld = Instance.new("Weld", char.Torso)
aWeld.Part0 = char.Torso
aWeld.Part1 = A7
aWeld.C1 = CFrame.new(0,.6,0)
local aWeld = Instance.new("Weld", char.Torso)
aWeld.Part0 = char.Torso
aWeld.Part1 = A8
aWeld.C1 = CFrame.new(0,-1,-.55)
local aWeld = Instance.new("Weld", char.Torso)
aWeld.Part0 = char.Torso
aWeld.Part1 = A9
aWeld.C1 = CFrame.new(0,.6,-.55)
local aWeld = Instance.new("Weld", char.Torso)
aWeld.Part0 = char.Torso
aWeld.Part1 = da
aWeld.C1 = CFrame.new(0,.2,.5)
local aWeld = Instance.new("Weld", char.Torso)
aWeld.Part0 = char.Torso
aWeld.Part1 = da1
aWeld.C1 = CFrame.new(0,.2,.5)

    Weld = Instance.new("Weld",Handle) 
    Weld.Part0 = Weld.Parent 
    Weld.Part1 = FakeHandle
    Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,-math.rad(0))
    Weld = Instance.new("Weld",Hitbox) 
    Weld.Part0 = Weld.Parent 
    Weld.Part1 = FakeHandle
    Weld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,-math.rad(0))
    FakeHandleWeld = Instance.new("Weld",FakeHandle) 
    FakeHandleWeld.Part0 = FakeHandle
    FakeHandleWeld.Part1 = char["Right Arm"]
    FakeHandleWeld.C0 = CFrame.new(1.2,0,-1)*CFrame.Angles(math.rad(180),0,-math.rad(90))


       local manWeld = Instance.new("Weld", char.Torso)
       manWeld.Part0 = char.Torso
       manWeld.Part1 = main
       manWeld.C1 = CFrame.new(0,1.4,0)*CFrame.Angles(math.rad(90),math.rad(40),-math.rad(90))
       manWeld.C0 = CFrame.new(0,-0.4,0)--*CFrame.Angles(math.rad(90),0,0)

        local cWeld = Instance.new("Weld", char.Torso)
        cWeld.Part0 = main
        --cWeld.C1 = CFrame.new(0,0,0)*CFrame.angles(0,0,0)
-----
	RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
	NeckCF = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
	local RW = newMotor(char.Torso, RightArm, CFrame.new(1.5, 0, 0), CFrame.new(0, 0, 0))
	local LW = newMotor(char.Torso, LeftArm, CFrame.new(-1.5, 0, 0), CFrame.new(0, 0, 0))
	local RH = newMotor(char.Torso, RightLeg, CFrame.new(0.5, -2, 0), CFrame.new(0, 0, 0))
	local LH = newMotor(char.Torso, LeftLeg, CFrame.new(-0.5, -2, 0), CFrame.new(0, 0, 0))
	RootJoint.C1 = CFrame.new(0, 0, 0)
	RootJoint.C0 = CFrame.new(0, 0, 0)
	char.Torso.Neck.C1 = CFrame.new(0, 0, 0)
	char.Torso.Neck.C0 = CFrame.new(0, 1.5, 0)
	local rarmc1 = RW.C1
	local larmc1 = LW.C1
	local rlegc1 = RH.C1
	local llegc1 = LH.C1
	local resetc1 = false
	PlayAnimationFromTable = function(table, speed, bool)	
	RootJoint.C0 = clerp(RootJoint.C0, table[1], speed)
	char.Torso.Neck.C0 = clerp(char.Torso.Neck.C0, table[2], speed)
	RW.C0 = clerp(RW.C0, table[3], speed)
	LW.C0 = clerp(LW.C0, table[4], speed)
	RH.C0 = clerp(RH.C0, table[5], speed)
	LH.C0 = clerp(LH.C0, table[6], speed)
	if bool == true and resetc1 == false then
		resetc1 = true
		RootJoint.C1 = RootJoint.C1
		char.Torso.Neck.C1 = char.Torso.Neck.C1
		RW.C1 = rarmc1
		LW.C1 = larmc1
		RH.C1 = rlegc1
		LH.C1 = llegc1
	end
	end

--
		Damagefunc = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
	
	if hit.Parent == nil then
		return 
	end
	local h = hit.Parent:FindFirstChild("Humanoid")
	for _,v in pairs(hit.Parent:children()) do
		if v:IsA("Humanoid") then
			h = v
		end
	end
	if h ~= nil and hit.Parent.Name ~= char.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
		if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
			return 
		end
		local c = Create("ObjectValue")({Name = "creator", Value = game:service("Players").LocalPlayer, Parent = h})
		game:GetService("Debris"):AddItem(c, 0.5)
		if HitSound ~= nil and HitPitch ~= nil then
			CreateSound(HitSound, hit, 1, HitPitch)
		end
		local Damage = math.random(minim, maxim)
		local blocked = false
		local block = hit.Parent:findFirstChild("Block")
		if block ~= nil and block.className == "IntValue" and block.Value > 0 then
			blocked = true
			block.Value = block.Value - 1
			print(block.Value)
		end
		if blocked == false then
			h.Health = h.Health - Damage
			ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
		else
			h.Health = h.Health - Damage / 2
			ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
		end
		if Type == "Knockdown" then
			local hum = hit.Parent.Humanoid
			hum.PlatformStand = true
			coroutine.resume(coroutine.create(function(HHumanoid)
		
		swait(1)
		HHumanoid.PlatformStand = false
	end
), hum)
			local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
			local bodvol = Create("BodyVelocity")({velocity = angle * knockback, P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
			local rl = Create("BodyAngularVelocity")({P = 3000, maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000, angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), Parent = hit})
			game:GetService("Debris"):AddItem(bodvol, 0.5)
			game:GetService("Debris"):AddItem(rl, 0.5)
		elseif Type == "Normal" then
					local vp = Create("BodyVelocity")({P = 500, maxForce = Vector3.new(math.huge, 0, math.huge), velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05})
					if knockback > 0 then
						vp.Parent = hit.Parent.Torso
					end
					game:GetService("Debris"):AddItem(vp, 0.5)
				elseif Type == "Up" then
							local bodyVelocity = Create("BodyVelocity")({velocity = Vector3.new(0, 20, 0), P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
							game:GetService("Debris"):AddItem(bodyVelocity, 0.5)
							local bodyVelocity = Create("BodyVelocity")({velocity = Vector3.new(0, 20, 0), P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
							game:GetService("Debris"):AddItem(bodyVelocity, 1)
						elseif Type == "Snare" then
									local bp = Create("BodyPosition")({P = 2000, D = 100, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.Torso.Position, Parent = hit.Parent.Torso})
									game:GetService("Debris"):AddItem(bp, 1)
								elseif Type == "Freeze" then
											local BodPos = Create("BodyPosition")({P = 50000, D = 1000, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.Torso.Position, Parent = hit.Parent.Torso})
											local BodGy = Create("BodyGyro")({maxTorque = Vector3.new(400000, 400000, 400000) * math.huge, P = 20000, Parent = hit.Parent.Torso, cframe = hit.Parent.Torso.CFrame})
											hit.Parent.Torso.Anchored = true
											coroutine.resume(coroutine.create(function(Part)
		
		swait(1.5)
		Part.Anchored = false
	end
), hit.Parent.Torso)
											game:GetService("Debris"):AddItem(BodPos, 3)
											game:GetService("Debris"):AddItem(BodGy, 3)
										end
											local debounce = Create("BoolValue")({Name = "DebounceHit", Parent = hit.Parent, Value = true})
											game:GetService("Debris"):AddItem(debounce, Delay)
											c = Instance.new("ObjectValue")
											c.Name = "creator"
											c.Value = hoh
											c.Parent = h
											game:GetService("Debris"):AddItem(c, 0.5)
										end
									end

	ShowDamage = function(Pos, Text, Time, Color)
	
	local Rate = 0.033333333333333
	if not Pos then
		local Pos = Vector3.new(0, 0, 0)
	end
	local Text = Text or ""
	local Time = Time or 2
	if not Color then
		local Color = Color3.new(1, 1, 0)
	end
	local EffectPart = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
	EffectPart.Anchored = true
	local BillboardGui = Create("BillboardGui")({Size = UDim2.new(3, 0, 3, 0), Adornee = EffectPart, Parent = EffectPart})
	local TextLabel = Create("TextLabel")({BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), Text = Text, TextColor3 = Color, TextScaled = true, Font = Enum.Font.ArialBold, Parent = BillboardGui})
	game.Debris:AddItem(EffectPart, Time + 0.1)
	EffectPart.Parent = game:GetService("Workspace")
	delay(0, function()
		
		local Frames = Time / Rate
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = Frame / Frames
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end
)
end

	MagniDamage = function(Part, magni, mindam, maxdam, knock, Type)
	
	for _,c in pairs(workspace:children()) do
		local hum = c:findFirstChild("Humanoid")
		if hum ~= nil then
			local head = c:findFirstChild("Torso")
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if mag <= magni and c.Name ~= hoh.Name then
					Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0.1, "http://www.roblox.com/asset/?id=231917784", 1)
				end
			end
		end
	end
end

	EffectModel = Instance.new("Model", char)
	EffectModel.Name = "Effects"
	Effects = {
Block = {Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
	
	local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	if Type == 1 or Type == nil then
		table.insert(Effects, {prt, "Block1", delay, x3, y3, z3, msh})
	else
		if Type == 2 then
			table.insert(Effects, {prt, "Block2", delay, x3, y3, z3, msh})
		end
	end
end
}
, 
Sphere = {Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
}
, 
Cylinder = {Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CFuncs.Mesh.Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
}
, 
Wave = {Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
}
, 
Ring = {Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end
}
, 
Break = {Create = function(brickcolor, cframe, x1, y1, z1)
	
	local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
	local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	local num = math.random(10, 50) / 1000
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {prt, "Shatter", num, prt.CFrame, math.random() - math.random(), 0, math.random(50, 100) / 100})
end
}
}
	BlockEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
	
	local prt = CreatePart(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	if Type == 1 or Type == nil then
		table.insert(Effects, {prt, "Block1", delay, x3, y3, z3, msh})
	else
		if Type == 2 then
			table.insert(Effects, {prt, "Block2", delay, x3, y3, z3, msh})
		end
	end
end
	Laser = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	
	local prt = CreatePart(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe
	prt.Material = "Neon"
	local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		
		for i = 0, 1, delay do
			swait()
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + Vector3.new(x3, y3, z3)
		end
		Part.Parent = nil
	end
), prt, msh)
end

	shoottraildd = function(mouse, partt, SpreadAmount)
	
	local SpreadVectors = Vector3.new(math.random(-SpreadAmount, SpreadAmount), math.random(-SpreadAmount, SpreadAmount), math.random(-SpreadAmount, SpreadAmount))
	local MainPos = partt.Position
	local MainPos2 = mouse.Hit.p + SpreadVectors
	local MouseLook = CFrame.new((MainPos + MainPos2) / 2, MainPos2)
	local speed = 15
	local num = 20
	coroutine.resume(coroutine.create(function()
		
		repeat
			swait()
			local hit, pos = rayCast(MainPos, MouseLook.lookVector, speed, RootPart.Parent)
			local mag = (MainPos - pos).magnitude
			Laser(BrickColor.new("Bright red"), CFrame.new((MainPos + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * (speed / (speed / 2)), 1, -0.175, 0, -0.175, 0.15)
			MainPos = MainPos + MouseLook.lookVector * speed
			num = num - 1
			MouseLook = MouseLook * angles(math.rad(-1), 0, 0)
			if hit ~= nil then
				num = 0
				local refpart = CreatePart(EffectModel, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", Vector3.new())
				refpart.Anchored = true
				refpart.CFrame = CFrame.new(pos)
				game:GetService("Debris"):AddItem(refpart, 2)
			end
			do
				if num <= 0 then
					local refpart = CreatePart(EffectModel, "SmoothPlastic", 0, 1, BrickColor.new("Really black"), "Effect", Vector3.new())
					refpart.Anchored = true
					refpart.CFrame = CFrame.new(pos)
					if hit ~= nil then
						CreateSound("http://www.roblox.com/asset/?id=514867425", refpart, 1, 1)
						BlockEffect(BrickColor.new("Br. yellowish orange"), refpart.CFrame, 1, 1, 1, 10, 10, 10, 0.05)
						BlockEffect(BrickColor.new("Bright red"), refpart.CFrame, 1, 1, 1, 10, 10, 10, 0.07)
						MagniDamage(refpart, 15, 10, 15, 0, "Normal")
					end
					game:GetService("Debris"):AddItem(refpart, 0)
				end
			end
		until num <= 0
	end
))
end
-----
function SphereEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
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
-----
function AppearDisappear()
	local ez = Instance.new("Part",char)
    ez.Size = Vector3.new(1,1,1)
    ez.Name = "a"
    ez:BreakJoints()
    ez.Anchored = false
    ez.Transparency = 0
    ez.CanCollide = false
    ez.Shape = "Block"
    ez.Material='Neon'
    ez.TopSurface = "SmoothNoOutlines"
    ez.BottomSurface = "SmoothNoOutlines"
    ez.BrickColor = BrickColor.new("White")
    ddd = Instance.new("SpecialMesh",ez)
    ddd.MeshType="Sphere"
    ddd.Scale=Vector3.new(6,6,6)
    Weld = Instance.new("Weld",ez) 
    Weld.Part0 = Weld.Parent 
    Weld.Part1 = char.Torso
		for a = 0, 1, .05 do
        ddd.Scale = ddd.Scale + Vector3.new(.5, .5, .5)
        ez.Transparency = ez.Transparency + .1
        wait()
		end
		ez:Remove()
end
function AppearDisappear1()
	Das.Transparency = 0
char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=582878615"
char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=468148440"
	CreateSound("http://roblox.com/asset/?id=356427062", char.Torso, 1.2, 1)
end
function AppearDisappear2()
	Das.Transparency = 0
char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=582878615"
char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=330970993"
        CreateSound("http://roblox.com/asset/?id=356427062", char.Torso, 1.2, .8)
end
function equip()
	Handle.Transparency = 0
	local ez = Instance.new("Part",char)
    ez.Size = Vector3.new(1,1,1)
    ez.Name = "a"
    ez:BreakJoints()
    ez.Anchored = false
    ez.Transparency = 0
    ez.CanCollide = false
    ez.Shape = "Block"
    ez.Material='Neon'
    ez.TopSurface = "SmoothNoOutlines"
    ez.BottomSurface = "SmoothNoOutlines"
    ez.BrickColor = BrickColor.new("New Yeller")
    ddd = Instance.new("SpecialMesh",ez)
    ddd.MeshType="Sphere"
    ddd.Scale=Vector3.new(1,1,1)
    Weld = Instance.new("Weld",ez) 
    Weld.Part0 = Weld.Parent 
    Weld.Part1 = Handle
    CreateSound("http://roblox.com/asset/?id=356427062", char.Torso, 1.2, 1)
		for a = 0, 1, .05 do--while wait() and ez and ez.Transparency <= 1 do
        ddd.Scale = ddd.Scale + Vector3.new(1, 1, 1)
        ez.Transparency = ez.Transparency + .1
        wait()
		end
		ez:Remove()
end
function unequip()
    Handle.Transparency = 1
	local ez = Instance.new("Part",char)
    ez.Size = Vector3.new(1,1,1)
    ez.Name = "a"
    ez:BreakJoints()
    ez.Anchored = false
    ez.Transparency = 0
    ez.CanCollide = false
    ez.Shape = "Block"
    ez.Material='Neon'
    ez.TopSurface = "SmoothNoOutlines"
    ez.BottomSurface = "SmoothNoOutlines"
    ez.BrickColor = BrickColor.new("New Yeller")
    ddd = Instance.new("SpecialMesh",ez)
    ddd.MeshType="Sphere"
    ddd.Scale=Vector3.new(1,1,1)
    Weld = Instance.new("Weld",ez) 
    Weld.Part0 = Weld.Parent 
    Weld.Part1 = Handle
    CreateSound("http://roblox.com/asset/?id=356427062", char.Torso, 1.2, .8)
		for a = 0, 1, .05 do
        ddd.Scale = ddd.Scale + Vector3.new(1, 1, 1)
        ez.Transparency = ez.Transparency + .1
        wait()
		end
		ez:Remove()
end
attack1 = function()
		attack = true
	local con = Hitbox.Touched:connect(function(hit)
		
		Damagefunc(Hitbox, hit, 10, 30, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
	end
)
	for i = 0, 1, 0.1 do
		swait()
		--PlayAnimationFromTable({CFrame.new(0, 0, 0, 0.529917479, 0, -0.848049283, 0, 1, 0, 0.848049283, 0, 0.529917479), CFrame.new(0, 1.49999499, 0, 0.406736165, 0, 0.913545728, 0, 1, 0, -0.913545728, 0, 0.406736165), CFrame.new(1.35679102, 0.782658279, 0.0675592273, 0.707045317, -0.527684033, 0.470782787, 0.133834034, -0.553849995, -0.82178998, 0.694388449, 0.644049466, -0.320975006), CFrame.new(-1.69279337, 0.499999672, -0.79492861, 0.717408359, 0.691137791, 0.0874861553, -0.0527720191, 0.179133937, -0.982408345, -0.694651246, 0.700171173, 0.164984912), CFrame.new(0.641659617, -1.99999392, 0.125842437, 0.882947862, 0, -0.469471127, 0, 1, 0, 0.469471127, 0, 0.882947862), CFrame.new(-0.348587006, -1.99999392, -0.0133331716, 0.898793101, 0, 0.438373119, 0, 1, 0, -0.438373119, 0, 0.898793101)}, 0.3, false)
        			RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -math.rad(50), math.rad(0)), 0.3)
					char.Torso.Neck.C0 = clerp(char.Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					RW.C0 = clerp(RW.C0, CFrame.new(1.3, 1.6, -.6) * angles(math.rad(160), math.rad(0), math.rad(0)), 0.3)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
					RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
				
	end
	CFuncs.Sound.Create("http://roblox.com/asset/?id=231917950", char.Torso, 1, 1.5)
	for i = 0, 1, 0.1 do
		swait()
		        	RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
					char.Torso.Neck.C0 = clerp(char.Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					RW.C0 = clerp(RW.C0, CFrame.new(.9, -.1, -.8) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
					RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
				

		--PlayAnimationFromTable({CFrame.new(0.180807382, 0, 0.0999719128, 0.342022538, 0, 0.939691782, 0, 1, 0, -0.939691782, 0, 0.342022538), CFrame.new(0.0106580649, 1.49999499, -0.0643079877, 0.469472408, 0, -0.882947266, 0, 1, 0, 0.882947266, 0, 0.469472408), CFrame.new(1.83224225, 0.376015127, 0.0757035911, 0.135973215, -0.988979697, 0.0585707389, 0.0630049929, -0.0503679588, -0.996741474, 0.988707185, 0.139220387, 0.0554619655), CFrame.new(-0.541033506, 0.699999869, -0.891753554, 0.658596575, -0.726630569, 0.195598423, 0.0759940296, -0.194378868, -0.977978408, 0.74864924, 0.658957481, -0.072797671), CFrame.new(0.641663194, -1.99999392, 0.125834763, 0.406737477, 0, -0.913545191, 0, 1, 0, 0.913545191, 0, 0.406737477), CFrame.new(-0.590457141, -1.99999392, 0.164175183, 0.984808207, 0, -0.173646241, 0, 1, 0, 0.173646241, 0, 0.984808207)}, 0.3, false)
		--FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(60), math.rad(0), math.rad(-90)), 0.3)
	end
	con:disconnect()
	attack = false
end
attack2 = function()
		attack = true
	local con = Hitbox.Touched:connect(function(hit)
		
		Damagefunc(Hitbox, hit, 10, 30, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
	end
)
	for i = 0, 1, 0.1 do
		swait()
		--PlayAnimationFromTable({CFrame.new(0.338935494, 0, 0.0863927901, -0.0348953009, 0, 0.999391079, 0, 1, 0, -0.999391079, 0, -0.0348953009), CFrame.new(-0.0100401761, 1.49999499, -0.00284555811, 0.500002861, 0, -0.866023898, 0, 1, 0, 0.866023898, 0, 0.500002861), CFrame.new(1.21845579, 0.576015115, -0.684895277, 0.950073838, 0.308843106, 0.0444484204, 0.0630049855, -0.0503680073, -0.996741474, -0.305597931, 0.949778438, -0.0673119873), CFrame.new(-0.681373537, 0.699999809, -0.527025938, 0.839439929, -0.516847908, 0.167955339, 0.0759939924, -0.194378883, -0.977978468, 0.538113117, 0.833717644, -0.123892054), CFrame.new(0.641661644, -1.99999392, 0.125842005, 0.76604569, 0, -0.642786264, 0, 1, 0, 0.642786264, 0, 0.76604569), CFrame.new(-0.451956809, -1.99999392, -0.00807090476, 0.994521499, 0, 0.104533166, 0, 1, 0, -0.104533151, 0, 0.994521499)}, 0.3, false)
        			RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -math.rad(50), math.rad(0)), 0.3)
					char.Torso.Neck.C0 = clerp(char.Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					RW.C0 = clerp(RW.C0, CFrame.new(1.2, .75, -1) * angles(math.rad(110), -math.rad(80), math.rad(15)), 0.3)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
					RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                    --FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(60), math.rad(0), math.rad(-90)), 0.3)
	end
	CFuncs.Sound.Create("http://roblox.com/asset/?id=231917950", char.Torso, 1, 2)
	for i = 0, 1, 0.1 do
		swait()
		--PlayAnimationFromTable({CFrame.new(0.2283867, 0, 0.115197472, 0.438369602, 0, -0.89879483, 0, 1, 0, 0.89879483, 0, 0.438369602), CFrame.new(0.0305867679, 1.49999499, -0.105302036, 0.438370466, 0, 0.898794472, 0, 1, 0, -0.898794472, 0, 0.438370436), CFrame.new(1.67825615, 0.576015353, -0.394908488, 0.46593222, -0.881719947, 0.0740077272, 0.063004978, -0.0503680483, -0.996741474, 0.88257432, 0.469076842, 0.0320846587), CFrame.new(-1.00808418, 0.399999917, -0.988827169, 0.839437604, -0.542131007, 0.0379279964, 0.0759930089, 0.0479900427, -0.995952845, 0.538116753, 0.838922501, 0.0814828053), CFrame.new(0.641682267, -1.99999392, 0.125833988, 0.9993909, 0, -0.0348993391, 0, 1, 0, 0.0348993391, 0, 0.9993909), CFrame.new(-0.451955765, -1.99999392, -0.00807018578, 0.898794293, 0, 0.438370645, 0, 1, 0, -0.438370645, 0, 0.898794293)}, 0.3, false)
		--FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(60), math.rad(0), math.rad(-90)), 0.3)
        			RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(30), math.rad(0)), 0.3)
					char.Torso.Neck.C0 = clerp(char.Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					RW.C0 = clerp(RW.C0, CFrame.new(.3, .3, -.3) * angles(math.rad(40), math.rad(30), -math.rad(70)), 0.3)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
					RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)

	end
	con:disconnect()
	attack = false
end
attack3 = function()
		attack = true
	local con = Hitbox.Touched:connect(function(hit)
		
		Damagefunc(Hitbox, hit, 10, 30, math.random(1, 5), "Normal", RootPart, 0.2, "rbxassetid://199149221", 0.8)
	end)
	
		for i = 0, 1, 0.1 do
		swait()
		--PlayAnimationFromTable({CFrame.new(0.338935494, 0, 0.0863927901, -0.0348953009, 0, 0.999391079, 0, 1, 0, -0.999391079, 0, -0.0348953009), CFrame.new(-0.0100401761, 1.49999499, -0.00284555811, 0.500002861, 0, -0.866023898, 0, 1, 0, 0.866023898, 0, 0.500002861), CFrame.new(1.21845579, 0.576015115, -0.684895277, 0.950073838, 0.308843106, 0.0444484204, 0.0630049855, -0.0503680073, -0.996741474, -0.305597931, 0.949778438, -0.0673119873), CFrame.new(-0.681373537, 0.699999809, -0.527025938, 0.839439929, -0.516847908, 0.167955339, 0.0759939924, -0.194378883, -0.977978468, 0.538113117, 0.833717644, -0.123892054), CFrame.new(0.641661644, -1.99999392, 0.125842005, 0.76604569, 0, -0.642786264, 0, 1, 0, 0.642786264, 0, 0.76604569), CFrame.new(-0.451956809, -1.99999392, -0.00807090476, 0.994521499, 0, 0.104533166, 0, 1, 0, -0.104533151, 0, 0.994521499)}, 0.3, false)
        			RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(15), math.rad(0)), 0.3)
					char.Torso.Neck.C0 = clerp(char.Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					RW.C0 = clerp(RW.C0, CFrame.new(.35, .5, -.7) * angles(math.rad(205), math.rad(20), -math.rad(110)), 0.3)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
					RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
	end
	CFuncs.Sound.Create("http://roblox.com/asset/?id=231917950", char.Torso, 1, 2)
			for i = 0, .2, 0.1 do
		swait()
		--PlayAnimationFromTable({CFrame.new(0.338935494, 0, 0.0863927901, -0.0348953009, 0, 0.999391079, 0, 1, 0, -0.999391079, 0, -0.0348953009), CFrame.new(-0.0100401761, 1.49999499, -0.00284555811, 0.500002861, 0, -0.866023898, 0, 1, 0, 0.866023898, 0, 0.500002861), CFrame.new(1.21845579, 0.576015115, -0.684895277, 0.950073838, 0.308843106, 0.0444484204, 0.0630049855, -0.0503680073, -0.996741474, -0.305597931, 0.949778438, -0.0673119873), CFrame.new(-0.681373537, 0.699999809, -0.527025938, 0.839439929, -0.516847908, 0.167955339, 0.0759939924, -0.194378883, -0.977978468, 0.538113117, 0.833717644, -0.123892054), CFrame.new(0.641661644, -1.99999392, 0.125842005, 0.76604569, 0, -0.642786264, 0, 1, 0, 0.642786264, 0, 0.76604569), CFrame.new(-0.451956809, -1.99999392, -0.00807090476, 0.994521499, 0, 0.104533166, 0, 1, 0, -0.104533151, 0, 0.994521499)}, 0.3, false)
                    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0,0,-2.4)*CFrame.Angles(math.rad(0),math.rad(90),-math.rad(90)), 0.3)
        			RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -math.rad(90), math.rad(0)), 0.3)
					char.Torso.Neck.C0 = clerp(char.Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					RW.C0 = clerp(RW.C0, CFrame.new(1.2, .55, -1) * angles(math.rad(90), math.rad(100), math.rad(0)), 0.3)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
					RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
			end
					for i = 0, .2, 0.1 do
		swait()
		--PlayAnimationFromTable({CFrame.new(0.338935494, 0, 0.0863927901, -0.0348953009, 0, 0.999391079, 0, 1, 0, -0.999391079, 0, -0.0348953009), CFrame.new(-0.0100401761, 1.49999499, -0.00284555811, 0.500002861, 0, -0.866023898, 0, 1, 0, 0.866023898, 0, 0.500002861), CFrame.new(1.21845579, 0.576015115, -0.684895277, 0.950073838, 0.308843106, 0.0444484204, 0.0630049855, -0.0503680073, -0.996741474, -0.305597931, 0.949778438, -0.0673119873), CFrame.new(-0.681373537, 0.699999809, -0.527025938, 0.839439929, -0.516847908, 0.167955339, 0.0759939924, -0.194378883, -0.977978468, 0.538113117, 0.833717644, -0.123892054), CFrame.new(0.641661644, -1.99999392, 0.125842005, 0.76604569, 0, -0.642786264, 0, 1, 0, 0.642786264, 0, 0.76604569), CFrame.new(-0.451956809, -1.99999392, -0.00807090476, 0.994521499, 0, 0.104533166, 0, 1, 0, -0.104533151, 0, 0.994521499)}, 0.3, false)
        			RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -math.rad(180), math.rad(0)), 0.3)
					char.Torso.Neck.C0 = clerp(char.Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					RW.C0 = clerp(RW.C0, CFrame.new(1.2, .55, -1) * angles(math.rad(90), math.rad(100), math.rad(0)), 0.3)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
					RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					end
							for i = 0, .2, 0.1 do
		swait()
		--PlayAnimationFromTable({CFrame.new(0.338935494, 0, 0.0863927901, -0.0348953009, 0, 0.999391079, 0, 1, 0, -0.999391079, 0, -0.0348953009), CFrame.new(-0.0100401761, 1.49999499, -0.00284555811, 0.500002861, 0, -0.866023898, 0, 1, 0, 0.866023898, 0, 0.500002861), CFrame.new(1.21845579, 0.576015115, -0.684895277, 0.950073838, 0.308843106, 0.0444484204, 0.0630049855, -0.0503680073, -0.996741474, -0.305597931, 0.949778438, -0.0673119873), CFrame.new(-0.681373537, 0.699999809, -0.527025938, 0.839439929, -0.516847908, 0.167955339, 0.0759939924, -0.194378883, -0.977978468, 0.538113117, 0.833717644, -0.123892054), CFrame.new(0.641661644, -1.99999392, 0.125842005, 0.76604569, 0, -0.642786264, 0, 1, 0, 0.642786264, 0, 0.76604569), CFrame.new(-0.451956809, -1.99999392, -0.00807090476, 0.994521499, 0, 0.104533166, 0, 1, 0, -0.104533151, 0, 0.994521499)}, 0.3, false)
        			RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -math.rad(270), math.rad(0)), 0.3)
					char.Torso.Neck.C0 = clerp(char.Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					RW.C0 = clerp(RW.C0, CFrame.new(1.2, .55, -1) * angles(math.rad(90), math.rad(100), math.rad(0)), 0.3)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
					RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
	end
	
	
	
	
	for i = 0, 1, 0.1 do
		swait()
		--PlayAnimationFromTable({CFrame.new(0.2283867, 0, 0.115197472, 0.438369602, 0, -0.89879483, 0, 1, 0, 0.89879483, 0, 0.438369602), CFrame.new(0.0305867679, 1.49999499, -0.105302036, 0.438370466, 0, 0.898794472, 0, 1, 0, -0.898794472, 0, 0.438370436), CFrame.new(1.67825615, 0.576015353, -0.394908488, 0.46593222, -0.881719947, 0.0740077272, 0.063004978, -0.0503680483, -0.996741474, 0.88257432, 0.469076842, 0.0320846587), CFrame.new(-1.00808418, 0.399999917, -0.988827169, 0.839437604, -0.542131007, 0.0379279964, 0.0759930089, 0.0479900427, -0.995952845, 0.538116753, 0.838922501, 0.0814828053), CFrame.new(0.641682267, -1.99999392, 0.125833988, 0.9993909, 0, -0.0348993391, 0, 1, 0, 0.0348993391, 0, 0.9993909), CFrame.new(-0.451955765, -1.99999392, -0.00807018578, 0.898794293, 0, 0.438370645, 0, 1, 0, -0.438370645, 0, 0.898794293)}, 0.3, false)
		FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0,0,-2.4)*CFrame.Angles(math.rad(0),math.rad(90),-math.rad(90)), 0.3)
        			RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -math.rad(40), math.rad(0)), 0.3)
					char.Torso.Neck.C0 = clerp(char.Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					RW.C0 = clerp(RW.C0, CFrame.new(2, .5, 0) * angles(-math.rad(180), math.rad(0), math.rad(90)), 0.3)
					LW.C0 = clerp(LW.C0, CFrame.new(-2, .5, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
					RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
end
	
	con:disconnect()
	attack = false
end
function kek1()
			attack = true
			Effects.Sphere.Create(BrickColor.new("New Yeller"), FakeHandle.CFrame * angles(math.random(-3,3), math.random(-3,3), math.random(-3,3)), 6.5, 6.5, 6.5, 4, 4, 4, 0.07)
		
			CFuncs.Sound.Create("http://www.roblox.com/asset?id=200633707", char.Torso, 0.8, 1.1)
			
		local Aaaa = Instance.new("Part", RootPart)
         Aaaa.Size = Vector3.new(.1, .1, .1)
         Aaaa.BrickColor = BrickColor.new("White")
         Aaaa.Transparency = 1
         Aaaa.CanCollide = false
        local abbWeld = Instance.new("Weld", RootPart)
        abbWeld.Part0 = RootPart
        abbWeld.Part1 = Aaaa
        abbWeld.C1 = CFrame.new(0,0,9)

	for i = 0, 2.5, 0.1 do
		swait()
					Effects.Ring.Create(BrickColor.new("Navy blue"), FakeHandle.CFrame * angles(math.random(-3,3), math.random(-3,3), math.random(-3,3)), 1.5, 1.5, 0, 0.5, 0.5, 0, 0.07)
		--PlayAnimationFromTable({CFrame.new(0.338935494, 0, 0.0863927901, -0.0348953009, 0, 0.999391079, 0, 1, 0, -0.999391079, 0, -0.0348953009), CFrame.new(-0.0100401761, 1.49999499, -0.00284555811, 0.500002861, 0, -0.866023898, 0, 1, 0, 0.866023898, 0, 0.500002861), CFrame.new(1.21845579, 0.576015115, -0.684895277, 0.950073838, 0.308843106, 0.0444484204, 0.0630049855, -0.0503680073, -0.996741474, -0.305597931, 0.949778438, -0.0673119873), CFrame.new(-0.681373537, 0.699999809, -0.527025938, 0.839439929, -0.516847908, 0.167955339, 0.0759939924, -0.194378883, -0.977978468, 0.538113117, 0.833717644, -0.123892054), CFrame.new(0.641661644, -1.99999392, 0.125842005, 0.76604569, 0, -0.642786264, 0, 1, 0, 0.642786264, 0, 0.76604569), CFrame.new(-0.451956809, -1.99999392, -0.00807090476, 0.994521499, 0, 0.104533166, 0, 1, 0, -0.104533151, 0, 0.994521499)}, 0.3, false)
                    RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(45), math.rad(0)), 0.1)
					char.Torso.Neck.C0 = clerp(char.Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.1)
					RW.C0 = clerp(RW.C0, CFrame.new(.35, .5, -.7) * angles(math.rad(205), math.rad(20), -math.rad(110)), 0.1)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.1)
					RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.1)
					LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.1)
					
	end
			for i = 0, 0.2, 0.1 do
		swait()
		--PlayAnimationFromTable({CFrame.new(0.2283867, 0, 0.115197472, 0.438369602, 0, -0.89879483, 0, 1, 0, 0.89879483, 0, 0.438369602), CFrame.new(0.0305867679, 1.49999499, -0.105302036, 0.438370466, 0, 0.898794472, 0, 1, 0, -0.898794472, 0, 0.438370436), CFrame.new(1.67825615, 0.576015353, -0.394908488, 0.46593222, -0.881719947, 0.0740077272, 0.063004978, -0.0503680483, -0.996741474, 0.88257432, 0.469076842, 0.0320846587), CFrame.new(-1.00808418, 0.399999917, -0.988827169, 0.839437604, -0.542131007, 0.0379279964, 0.0759930089, 0.0479900427, -0.995952845, 0.538116753, 0.838922501, 0.0814828053), CFrame.new(0.641682267, -1.99999392, 0.125833988, 0.9993909, 0, -0.0348993391, 0, 1, 0, 0.0348993391, 0, 0.9993909), CFrame.new(-0.451955765, -1.99999392, -0.00807018578, 0.898794293, 0, 0.438370645, 0, 1, 0, -0.438370645, 0, 0.898794293)}, 0.3, false)
		--FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0,0,-2.4)*CFrame.Angles(math.rad(0),math.rad(90),-math.rad(90)), 0.3)
        			RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -math.rad(50), math.rad(0)), 0.3)
					char.Torso.Neck.C0 = clerp(char.Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
					RW.C0 = clerp(RW.C0, CFrame.new(2, .5, 0) * angles(math.rad(0), math.rad(0), -math.rad(5)), 0.3)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
					RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
	end
	Effects.Sphere.Create(BrickColor.new("Navy blue"), Aaaa.CFrame * angles(math.random(-3,3), math.random(-3,3), math.random(-3,3)), 2.5, 2.5, 2.5, 3.5, 3.5, 3.5, 0.07)
	Effects.Ring.Create(BrickColor.new("Navy blue"), Aaaa.CFrame * angles(0, 0, math.random(-3,3)), 2.5, 2.5, 2.5, 1, 1, 1, 0.07)

    CFuncs.Sound.Create("http://roblox.com/asset/?id=231917950", Aaaa, 1, 1)
	CFuncs.Sound.Create("http://roblox.com/asset/?id=279675650", FakeHandle, 1, 1.1)
	  local con = Aaaa.Touched:connect(function(hit)
		MagniDamage(Aaaa, 30, 30, 55, 4, "Knockdown")
		--Damagefunc(Hitbox, hit, 30, 60, math.random(1, 5), "Knockdown", RootPart, 0.2, "rbxassetid://199149221", 0.8)
	end
	)
		for i = 0, 1, 0.1 do
		swait()
		--PlayAnimationFromTable({CFrame.new(0.2283867, 0, 0.115197472, 0.438369602, 0, -0.89879483, 0, 1, 0, 0.89879483, 0, 0.438369602), CFrame.new(0.0305867679, 1.49999499, -0.105302036, 0.438370466, 0, 0.898794472, 0, 1, 0, -0.898794472, 0, 0.438370436), CFrame.new(1.67825615, 0.576015353, -0.394908488, 0.46593222, -0.881719947, 0.0740077272, 0.063004978, -0.0503680483, -0.996741474, 0.88257432, 0.469076842, 0.0320846587), CFrame.new(-1.00808418, 0.399999917, -0.988827169, 0.839437604, -0.542131007, 0.0379279964, 0.0759930089, 0.0479900427, -0.995952845, 0.538116753, 0.838922501, 0.0814828053), CFrame.new(0.641682267, -1.99999392, 0.125833988, 0.9993909, 0, -0.0348993391, 0, 1, 0, 0.0348993391, 0, 0.9993909), CFrame.new(-0.451955765, -1.99999392, -0.00807018578, 0.898794293, 0, 0.438370645, 0, 1, 0, -0.438370645, 0, 0.898794293)}, 0.3, false)
		--FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(0,0,-2.4)*CFrame.Angles(math.rad(0),math.rad(90),-math.rad(90)), 0.3)
        			RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), -math.rad(50), math.rad(0)), 0.3)
					char.Torso.Neck.C0 = clerp(char.Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(0), math.rad(20), math.rad(0)), 0.3)
					RW.C0 = clerp(RW.C0, CFrame.new(2, .5, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
					RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		end
		Aaaa:Remove()
	con:disconnect()
	attack = false
end
function kek2()
		attack = true
		

		for i = 0, 1, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		char.Torso.Neck.C0 = clerp(char.Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(25), math.rad(0), math.rad(0)), 0.3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.1, 0) * angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 1, 0) * angles(math.rad(179), math.rad(0), math.rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		end
		CFuncs.Sound.Create("rbxassetid://169380505", RootPart, 0.8, 1.5)
		Effects.Cylinder.Create(BrickColor.new("New Yeller"), LeftArm.CFrame * angles(math.rad(2), 0, 0), 1, 9999, 1, 1, 1, 1, 0.07)
		for i = 0, 2, 0.1 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		char.Torso.Neck.C0 = clerp(char.Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(25), math.rad(0), math.rad(0)), 0.3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.1, 0) * angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 1, 0) * angles(math.rad(179), math.rad(0), math.rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		end
	    CFuncs.Sound.Create("rbxassetid://169445602", RootPart, 1, 1.2)
	    local cf2 = mouse.Hit.p + Vector3.new(math.random(-100, 100) / 50, 50, math.random(-100, 100) / 50)
	    local hit2, pos2 = rayCast(cf2, CFrame.new(cf2, cf2 - Vector3.new(0, 1, 0)).lookVector, 999, char)
	    if hit2 ~= nil then
		local d1 = CFuncs.Part.Create(workspace, "Neon", 0, 0.5, BrickColor.new("Navy blue"), "Effect", Vector3.new())
		d1.Anchored = true
		d1.CFrame = CFrame.new(pos2)
		MagniDamage(d1, 20, 10, 25, 5, "Snare")
		Effects.Cylinder.Create(BrickColor.new("New Yeller"), d1.CFrame * angles(0, 0, 0), 1, 9999, 1, 4, 1, 4, 0.07)
	    local con = Hitbox.Touched:connect(function(hit)
         end)
		game:GetService("Debris"):AddItem(d1, 5)
		local msh = CFuncs.Mesh.Create("CylinderMesh", d1, "nil", "nil", Vector3.new(0, 0, 0), Vector3.new(100, 5, 100))
		local d2 = d1:Clone()
		d2.Parent = d1
		d2.CFrame = CFrame.new(d1.Position)
		d2.BrickColor = BrickColor.new("New Yeller")
		d2.Mesh.Scale = Vector3.new(0, 5, 0)
		table.insert(Effects, {d1, "QuadShot", d2, d2.Mesh, 0})
	end
	attack = false

end
function kek3()
  cooldown1 = cooldown1 - 5
  local dacf = Handle.CFrame * angles(-1.57 + math.random(40, 80) / 100, 0, math.random(-80, 80) / 100)
  local icepart1 = CreatePart(effect, "SmoothPlastic", 0, 1, BrickColor.new("Cyan"), "Ice", vt())
  icepart1.Anchored = true
  i1msh = CreateMesh("SpecialMesh", icepart1, "Sphere", "", vt(0, 0, 0), vt(5, 5, 5))
  icepart1.CFrame = dacf
  for i = 0, 1, 0.1 do
    swait()
    icepart1.CFrame = dacf
  end
  local cfinc = 99999
  icepart1.Transparency = 1
  CreateSound("rbxassetid://334325056", icepart1, 1, 1)
  game:GetService("Debris"):AddItem(icepart1, 1)
  local spread = vt((math.random(-1, 0) + math.random()) * 16, (math.random(-1, 0) + math.random()) * 16, (math.random(-1, 0) + math.random()) * 16) * (icepart1.Position - (icepart1.Position + vt(0, -1, 0))).magnitude / 100
  local TheHit = mouse.Hit.p
  local MouseLook = cf((icepart1.Position + TheHit) / 2, TheHit + spread)
  local hit, pos = rayCast(icepart1.Position, MouseLook.lookVector, 999, Character)
  local target1, distance1 = rayCast(icepart1.Position, MouseLook.lookVector, 999, Character)
  local test1, dist1 = mouse.Hit.p, nil
  if target1 ~= nil then
    cfda = target1.Position + vt(math.random(-3000, 3000) / 100, 20, math.random(-3000, 3000) / 100)
    local hit2, pos2 = rayCast(icepart1.Position, MouseLook.lookVector, 999, Character)
    local d1 = CreatePart(effect, "SmoothPlastic", 0, 0.5, BrickColor.new("White"), "Effect", vt())
    d1.Anchored = true
    d1.CFrame = cf(pos2)
    MagniDamage(d1, 10, 12, 15, -10, "Normal", "231917784")
    SphereEffect(BrickColor.new("White"), cf(pos2), 100, 100, 100, 10, 10, 10, 0.07)
    msh = CreateMesh("SpecialMesh", d1, "Sphere", "", vt(0, 0, 0), vt(80, 80, 80))
    d2 = d1:Clone()
    d2.Parent = d1
    d2.CFrame = cf(d1.Position)
    d2.BrickColor = BrickColor.new("Toothpaste")
    d2.Mesh.Scale = vt(0, 5, 0)
    table.insert(Effects, {
      d1,
      "SatelliteStrike",
      d2,
      d2.Mesh,
      0
    })
  end
end

function kek4()
	
end
	mouse.Button1Down:connect(function()
	
	if attack == false and attacktype == 1 and equipped == true then
		attacktype = 2
		attack1()
	else
		if attack == false and attacktype == 2 and equipped == true then
			attacktype = 3
			attack2()
		else
			if attack == false and attacktype == 3 and equipped == true then
				attacktype = 1
				attack3()
			end
		end
	end
end
	)
	
	updateskills = function()
	
	if cooldown1 <= co1 then
		cooldown1 = cooldown1 + 0.033333333333333
	end
	if cooldown2 <= co2 then
		cooldown2 = cooldown2 + 0.033333333333333
	end
	if cooldown3 <= co3 then
		cooldown3 = cooldown3 + 0.033333333333333
	end
	if cooldown4 <= co4 then
		cooldown4 = cooldown4 + 0.033333333333333
	end
end

--[[function onKeyDown(key)
if key == "u" then
if nak == false and disable == false then
	disable = true
    AppearDisappear1()
	AppearDisappear()
	nak = true
	wait(1)
	disable = false
elseif disable == false then
	AppearDisappear2()
    AppearDisappear()

    nak = false
    wait(1)
    disable = false
end
end

if key == "f" then
if equipped == false and disable == false then
		disable = true
		equipped = true
		equip()
	    wait(1)
	    disable = false
	    elseif equipped == true and disable == false then
		disable = true
		unequip()
		equipped = false
	wait(1)
	disable = false
end
end]]
mouse.KeyDown:connect(function(k)
	
	k = k:lower()
	if attack == false and equipped == true and k == "z" and co1 <= cooldown1 then
		cooldown1 = 0
		kek1()
	else
		if attack == false and equipped == true and k == "x" and co2 <= cooldown2 then
			cooldown2 = 0
			kek2()
		else
			if attack == false and equipped == true and k == "c" and co3 <= cooldown3 then
				cooldown3 = 0
				kek3()
			else
				if attack == false and k == "v" and co4 <= cooldown4 then
					cooldown4 = 0
					kek4()
						else
		if attack == false and k == "f" and equipped == false and disable == false  then
			
		disable = true
		equipped = true
		equip()
	    wait(.5)
	    disable = false
		    else
			if k == "f" and equipped == true and disable == false then
		disable = true
		equipped = false
		unequip()
	    wait(.5)
	    disable = false


				        else
		if k == "u" and nak == false and disable == false  then
		        disable = true
               AppearDisappear1()
	          AppearDisappear()
	          nak = true
	          wait(.5)
	           disable = false
		                  else 
			if k == "u" and nak == true and disable == false  then
				   disable = true
					AppearDisappear2()
                    AppearDisappear()
                    nak = false
                    wait(.5)
                 disable = false
			end
			end
		end
			end
		end
		end
	end
	 end       
end)

	while 1 do
		swait()
		updateskills()
		bar4:TweenSize(UDim2.new(1 * (cooldown4 / co4), 0, 1, 0), "Out", "Quad", 0.5)
		bar3:TweenSize(UDim2.new(1 * (cooldown3 / co3), 0, 1, 0), "Out", "Quad", 0.5)
		bar1:TweenSize(UDim2.new(1 * (cooldown1 / co1), 0, 1, 0), "Out", "Quad", 0.5)
		bar2:TweenSize(UDim2.new(1 * (cooldown2 / co2), 0, 1, 0), "Out", "Quad", 0.5)
		for i,v in pairs(char:GetChildren()) do
			if v:IsA("Part") then
				v.Material = "SmoothPlastic"
			else
				if v:IsA("Hat") then
					v:WaitForChild("Handle").Material = "SmoothPlastic"
				end
			end
		end
		Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
		velocity = RootPart.Velocity.y
		sine = sine + change
		local hit, pos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, char)
		if equipped == true or equipped == false then
			if 1 < RootPart.Velocity.y and hit == nil then
				Anim = "Jump"
				if attack == false then
					manWeld.C1 = clerp(manWeld.C1, CFrame.new(0,1.4,0)*CFrame.Angles(math.rad(90),math.rad(65),-math.rad(90)), 0.3)
					manWeld.C0 = clerp(manWeld.C0, CFrame.new(0,-0.3,0)*CFrame.Angles(math.rad(0),math.rad(0),-math.rad(0)),0.3)
                    FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(1.2,0,-1)*CFrame.Angles(math.rad(180),0,-math.rad(90)), 0.3)
					RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
					char.Torso.Neck.C0 = clerp(char.Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
					RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.1, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
					LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.1, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
					RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0.35) * angles(math.rad(-15), math.rad(0), math.rad(0)), 0.3)
					LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0.35) * angles(math.rad(-15), math.rad(0), math.rad(0)), 0.3)
				end
			else
				if RootPart.Velocity.y < -1 and hit == nil then
					Anim = "Fall"
					if attack == false then
						manWeld.C1 = clerp(manWeld.C1, CFrame.new(0,1.4,0)*CFrame.Angles(math.rad(90),math.rad(15),-math.rad(90)), 0.3)
						manWeld.C0 = clerp(manWeld.C0, CFrame.new(0,-0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),-math.rad(0)),0.3)
                        FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(1.2,0,-1)*CFrame.Angles(math.rad(180),0,-math.rad(90)), 0.3)
						RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
						char.Torso.Neck.C0 = clerp(char.Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
						RW.C0 = clerp(RW.C0, CFrame.new(1.7, 0.2, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
						LW.C0 = clerp(LW.C0, CFrame.new(-1.7, 0.2, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
						RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0.5) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
						LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0.5) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
					end
				else
					if Torsovelocity < 1 and hit ~= nil then
						Anim = "Idle"
						if attack == false then
							if equipped == true then
							change = 1
							manWeld.C1 = clerp(manWeld.C1, CFrame.new(0,1.4,0)*CFrame.Angles(math.rad(90 - 15 * math.cos((sine) / 45)),math.rad(40),-math.rad(90)), 0.3)
							manWeld.C0 = clerp(manWeld.C0, CFrame.new(0,-0.4,0)*CFrame.Angles(math.rad(0),math.rad(0),-math.rad(0)),0.3)
							FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(1.2,0,-1)*CFrame.Angles(math.rad(180),0,-math.rad(90)), 0.3)
							RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0 - 0.04 * math.cos((sine) / 30), 0) * angles(math.rad(0), -math.rad(20), math.rad(0)), 0.3)
							char.Torso.Neck.C0 = clerp(char.Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(5), math.rad(20), math.rad(0)), 0.3)
							RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.1, 0) * angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
							LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.1, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
							RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2 + 0.04 * math.cos((sine) / 30), 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
							LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2 + 0.04 * math.cos((sine) / 30), 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
							else
							change = 1
							manWeld.C1 = clerp(manWeld.C1, CFrame.new(0,1.4,0)*CFrame.Angles(math.rad(90 - 15 * math.cos((sine) / 45)),math.rad(40),-math.rad(90)), 0.3)
							manWeld.C0 = clerp(manWeld.C0, CFrame.new(0,-0.4,0)*CFrame.Angles(math.rad(0),math.rad(0),-math.rad(0)),0.3)
							FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(1.2,0,-1)*CFrame.Angles(math.rad(180),0,-math.rad(90)), 0.3)
							RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0 - 0.06 * math.cos((sine) / 30), 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
							char.Torso.Neck.C0 = clerp(char.Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
							RW.C0 = clerp(RW.C0, CFrame.new(0.7, 0.1, -0.45) * angles(math.rad(20), math.rad(0), -math.rad(40)), 0.3)
							LW.C0 = clerp(LW.C0, CFrame.new(-0.7, 0.1, -0.45) * angles(math.rad(20), math.rad(0), math.rad(40)), 0.3)
							RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2 + 0.04 * math.cos((sine) / 30), 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
							LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2 + 0.04 * math.cos((sine) / 30), 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)

							end
							end
					else
						if 2 < Torsovelocity and hit ~= nil then
							Anim = "Walk"
							if attack == false then
								manWeld.C1 = clerp(manWeld.C1, CFrame.new(0,1.4,0)*CFrame.Angles(math.rad(90),math.rad(40),-math.rad(90)), 0.3)
							    manWeld.C0 = clerp(manWeld.C0, CFrame.new(0,-0.4,0)*CFrame.Angles(math.rad(0),math.rad(0),-math.rad(0)),0.3)
                                FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, CFrame.new(1.2,0,-1)*CFrame.Angles(math.rad(180),0,-math.rad(90)), 0.3)
								RootJoint.C0 = clerp(RootJoint.C0, CFrame.new(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
								char.Torso.Neck.C0 = clerp(char.Torso.Neck.C0, CFrame.new(0, 1.5, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
								RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.1, 0) * angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
								LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.1, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
								RH.C0 = clerp(RH.C0, CFrame.new(0.5, -2, 0 + 1 * math.cos((sine) / 3)) * angles(math.rad(0 - 50 * math.cos((sine) / 3)), math.rad(0), math.rad(0)), 0.3)
								LH.C0 = clerp(LH.C0, CFrame.new(-0.5, -2, 0 - 1 * math.cos((sine) / 3)) * angles(math.rad(0 + 50 * math.cos((sine) / 3)), math.rad(0), math.rad(0)), 0.3)
							end
						end
					end
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
						if Thing[1].Transparency <= 1 then
							if Thing[2] == "Block1" then
								Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
								Mesh = Thing[1].Mesh
								Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							else
								if Thing[2] == "Block2" then
									Thing[1].CFrame = Thing[1].CFrame
									Mesh = Thing[7]
									Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
									Thing[1].Transparency = Thing[1].Transparency + Thing[3]
								else
									if Thing[2] == "Cylinder" then
										Mesh = Thing[1].Mesh
										Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
										Thing[1].Transparency = Thing[1].Transparency + Thing[3]
									else
										if Thing[2] == "Blood" then
											Mesh = Thing[7]
											Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, 0.5, 0)
											Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
											Thing[1].Transparency = Thing[1].Transparency + Thing[3]
										else
											if Thing[2] == "Elec" then
												Mesh = Thing[1].Mesh
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
													else
														if Thing[2] == "QuadShot" then
											if Thing[5] < 100 then
												Thing[5] = Thing[5] + 2.5
												Thing[4].Scale = Vector3.new(Thing[5], 5, Thing[5])
											else
												refda = CFuncs.Part.Create(workspace, "Neon", 0, 1, BrickColor.new("Black"), "Reference", Vector3.new())
												refda.Anchored = true
												refda.CFrame = CFrame.new(Thing[1].Position)
												game:GetService("Debris"):AddItem(refda, 5)
												CFuncs.Sound.Create("rbxassetid://203691378", refda, 1, 1.2)
												CFuncs.Sound.Create("rbxassetid://184718741", refda, 1, 0.8)
												--MagniDamage(refda, 40, 20, 50, BrickColor.new("Navy blue"), BrickColor.new("New Yeller"))
												MagniDamage(refda, 40, 20, 50, 50, "Freeze")
												Effects.Sphere.Create(BrickColor.new("New Yeller"), CFrame.new(refda.Position), 3, 3, 3, 10, 10, 10, 0.05)
												Effects.Sphere.Create(BrickColor.new("Navy blue"), CFrame.new(refda.Position), 15, 15, 15, 10, 10, 10, 0.05)
												--Effects.Sphere.Create(BrickColor.new("New Yeller"), refda.CFrame, 10, 10, 10, 10, 10, 10, 0.06)
												Effects.Block.Create(BrickColor.new("New Yeller"), refda.CFrame, 10, 10, 10, 10, 10, 10, 0.06, 1)
												Effects.Wave.Create(BrickColor.new("New Yeller"), refda.CFrame, 1, 1, 1, 3, 3, 3, 0.06)
												Thing[1].Parent = nil
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
						else
							Part.Parent = nil
							table.remove(Effects, e)
							end
						end
					end
				end
			end
end