--=================================--


-- EDIT BY MELISSA666666GIRL --
-- ORIGINAL SCRIPT --
-- Kirky's Realistic Pistol script --

-- https://pastebin.com/raw/2W78wPwu --

-- THANKS FOR USING :> --


--==================================--

AnimeHair = false --Change to true to get ANIME HAIR--
TrapShirt = false --Change to true to get a TRAP SHIRT!--


local Pants = "rbxassetid://889200276"
local Shirt = "rbxassetid://889202926"
local Pants2 = "rbxassetid://756532964"
local Shirt2 = ""
local Pants3 = "rbxassetid://587907973"
local Shirt3 = "rbxassetid://1177765208"
local Scale = game.Players.LocalPlayer.Character.Torso.Size.X/2*(game.Players.LocalPlayer.Character.Torso:FindFirstChild("ScaleInserted") ~= nil and game.Players.LocalPlayer.Character.Torso:FindFirstChild("ScaleInserted").Scale.Z or 1)*0.8
local Speed = 20*Scale
local Gravity = 0.1

local Player = game.Players.LocalPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
local Torso = Character.HumanoidRootPart
local Mouse = game.Players.LocalPlayer:GetMouse()
local RenderStepped = game:GetService("RunService").RenderStepped
local Camera = Workspace.CurrentCamera
Camera:ClearAllChildren()
local Model = Instance.new("Model",Character)
local IgnoreList = {Character,Workspace.Terrain}

Player.Character.Head.face.Texture = "rbxassetid://30233519"

if TrapShirt == true then 
Player.Character.Shirt.ShirtTexture = "rbxassetid://877679540"
end

if AnimeHair == true then 
for i,v in pairs(Character:GetChildren()) do
		if v.ClassName == "Accessory" or v.ClassName == "Hat" then
			v:destroy()
		end
	end

local Hair = Instance.new("Part")
Hair.Parent = Character
Hair.Name = "Hair"
Hair.Size = Vector3.new(0.1, 0.1, 0.1)
Hair.CFrame = Character.Head.CFrame
Hair:BreakJoints()
Hair.CanCollide = false
Hair.BrickColor = BrickColor.new("New Yeller")
Hair.TopSurface = "Smooth"
Hair.BottomSurface = "Smooth"
Weld = Instance.new("Weld") 
Weld.Name = "Weld"
Weld.Part0 = Character.Head 
Weld.Part1 = Hair
Weld.Parent = Character.Head 
Weld.C0 = CFrame.new(0, -1.4, 0.2)*CFrame.fromEulerAnglesXYZ(0.1, 0, 0) 
Mesh = Instance.new("SpecialMesh")
Mesh.Parent = Hair
Mesh.MeshId = "rbxassetid://1389678629"
Mesh.TextureId = "http://www.roblox.com/asset/?id=1389678737"
Mesh.Scale = Vector3.new(0.050, 0.050, 0.050)
end


z = Instance.new("Sound", game.Players.LocalPlayer.Character.Torso)
z.SoundId = "rbxassetid://974451759"
z.Looped = true
z.Pitch = 1.2
z.Volume = 4
wait(.1)
z:Play()

local Part0Joint = CFrame.new(Vector3.new(1,0.75,0)*Scale*1.25)
local Part1Joint = CFrame.new(Vector3.new(-0.5,0.75,0)*Scale*1.25)
local RotationOffset = CFrame.Angles(math.rad(90),math.rad(0),0)
local Gangster = false

local Part0JointHead = CFrame.new(Vector3.new(0,1,0)*Scale*1.25)
local Part1JointHead = CFrame.new(Vector3.new(0,-0.5,0)*Scale*1.25)
local RotationOffsetHead = CFrame.Angles(0,0,0)

local Handle = Instance.new("Part",Model)
Handle.CanCollide = false
Handle.Name = "Handle"
Handle.Position = Vector3.new(0,100,0)
Handle:BreakJoints()
Handle.FormFactor = "Custom"
Handle.Size = Vector3.new(0.2,0.2,0.2)
Handle.TopSurface = "SmoothNoOutlines"
Handle.BottomSurface = "SmoothNoOutlines"
Handle.FrontSurface = "SmoothNoOutlines"
Handle.BackSurface = "SmoothNoOutlines"
Handle.RightSurface = "SmoothNoOutlines"
Handle.LeftSurface = "SmoothNoOutlines"
Handle.BrickColor = BrickColor.new("Pink")
Handle.Material = "Neon"
local Mesh = Instance.new("BlockMesh",Handle)
Mesh.Scale = Vector3.new(0.25,1,0.4) / 0.2 * Scale
local HandleWeld = Instance.new("Motor6D")
HandleWeld.Part0 = Character["Right Arm"]
HandleWeld.Part1 = Handle
HandleWeld.C0 = CFrame.new(Vector3.new(0,-1,0)*Scale) * CFrame.Angles(math.rad(-105),0,0)
HandleWeld.Parent = Handle

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Pink")
Part.Material = "Neon"
local Mesh = Instance.new("CylinderMesh",Part)
Mesh.Scale = Vector3.new(0.07,0.2,0.07) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Handle
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(-0.115,-0.475,-0.190)*Scale) * CFrame.Angles(0,0,0)
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Pink")
Part.Material = "Neon"
local Mesh = Instance.new("CylinderMesh",Part)
Mesh.Scale = Vector3.new(0.07,0.2,0.07) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Handle
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(0.115,-0.475,0.190)*Scale) * CFrame.Angles(0,0,0) 
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Pink")
Part.Material = "Neon"
local Mesh = Instance.new("CylinderMesh",Part)
Mesh.Scale = Vector3.new(0.07,0.2,0.07) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Handle
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(-0.115,-0.475,0.190)*Scale) * CFrame.Angles(0,0,0)
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Pink")
Part.Material = "Neon"
local Mesh = Instance.new("CylinderMesh",Part)
Mesh.Scale = Vector3.new(0.07,0.2,0.07) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Handle
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(0.115,-0.475,-0.190)*Scale) * CFrame.Angles(0,0,0)
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Pink")
Part.Material = "Neon"
local Mesh = Instance.new("BlockMesh",Part)
Mesh.Scale = Vector3.new(0.23,0.2,0.1) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Handle
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(0,-0.475,-0.175)*Scale) * CFrame.Angles(0,0,0)
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Pink")
Part.Material = "Neon"
local Mesh = Instance.new("BlockMesh",Part)
Mesh.Scale = Vector3.new(0.23,0.2,0.1) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Handle
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(0,-0.475,0.175)*Scale) * CFrame.Angles(0,0,0)
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Pink")
Part.Material = "Neon"
local Mesh = Instance.new("BlockMesh",Part)
Mesh.Scale = Vector3.new(0.1,0.2,0.38) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Handle
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(-0.1,-0.475,0)*Scale) * CFrame.Angles(0,0,0)
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Pink")
Part.Material = "Neon"
local Mesh = Instance.new("BlockMesh",Part)
Mesh.Scale = Vector3.new(0.1,0.2,0.38) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Handle
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(0.1,-0.475,0)*Scale) * CFrame.Angles(0,0,0)
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Pink")
Part.Material = "Neon"
local Mesh = Instance.new("BlockMesh",Part)
Mesh.Scale = Vector3.new(0.1,0.3,0.05) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Handle
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.Angles(math.rad(15),0,0) * CFrame.new(Vector3.new(0,0.25,-0.75)*Scale) * CFrame.Angles(math.rad(-10),0,0)
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Pink")
Part.Material = "Neon"
local Mesh = Instance.new("BlockMesh",Part)
Mesh.Scale = Vector3.new(0.1,0.05,0.625) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Handle
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.Angles(math.rad(15),0,0) * CFrame.new(Vector3.new(0,0.1,-0.435)*Scale)
PartWeld.Parent = Part

for i = 0,80,10 do
	local Part = Instance.new("Part",Model)
	Part.CanCollide = false
	Part.Position = Vector3.new(0,100,0)
	Part:BreakJoints()
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2,0.2,0.2)
	Part.TopSurface = "SmoothNoOutlines"
	Part.BottomSurface = "SmoothNoOutlines"
	Part.FrontSurface = "SmoothNoOutlines"
	Part.BackSurface = "SmoothNoOutlines"
	Part.RightSurface = "SmoothNoOutlines"
	Part.LeftSurface = "SmoothNoOutlines"
	Part.BrickColor = BrickColor.new("Pink")
Part.Material = "Neon"
	local Mesh = Instance.new("BlockMesh",Part)
	Mesh.Scale = Vector3.new(0.25,0.15,0.03555*2) / 0.2 * Scale
	local PartWeld = Instance.new("Motor6D")
	PartWeld.Part0 = Handle
	PartWeld.Part1 = Part
	PartWeld.C0 = CFrame.new(Vector3.new(0,0.15,0.315)*Scale) * CFrame.Angles(math.rad(i-65),0,0) * CFrame.new(Vector3.new(0,0.2,0)*Scale)
	PartWeld.Parent = Part
end

local Barrel = Instance.new("Part",Model)
Barrel.CanCollide = false
Barrel.Position = Vector3.new(0,100,0)
Barrel:BreakJoints()
Barrel.FormFactor = "Custom"
Barrel.Size = Vector3.new(0.2,0.2,0.2)
Barrel.TopSurface = "SmoothNoOutlines"
Barrel.BottomSurface = "SmoothNoOutlines"
Barrel.FrontSurface = "SmoothNoOutlines"
Barrel.BackSurface = "SmoothNoOutlines"
Barrel.RightSurface = "SmoothNoOutlines"
Barrel.LeftSurface = "SmoothNoOutlines"
Barrel.BrickColor = BrickColor.new("Pink")
Barrel.Material = "Neon"
local Mesh = Instance.new("BlockMesh",Barrel)
Mesh.Scale = Vector3.new(0.25,0.2,2) / 0.2 * Scale
local BarrelWeld = Instance.new("Motor6D")
BarrelWeld.Part0 = Handle
BarrelWeld.Part1 = Barrel
BarrelWeld.C0 = CFrame.Angles(math.rad(15),0,0) * CFrame.new(Vector3.new(0,0.5,-0.7)*Scale)
BarrelWeld.Parent = Barrel

local Barrel1 = Barrel

local Barrel2 = Instance.new("Part",Model)
Barrel2.CanCollide = false
Barrel2.Position = Vector3.new(0,100,0)
Barrel2:BreakJoints()
Barrel2.FormFactor = "Custom"
Barrel2.Size = Vector3.new(0.2,0.2,0.2)
Barrel2.TopSurface = "SmoothNoOutlines"
Barrel2.BottomSurface = "SmoothNoOutlines"
Barrel2.FrontSurface = "SmoothNoOutlines"
Barrel2.BackSurface = "SmoothNoOutlines"
Barrel2.RightSurface = "SmoothNoOutlines"
Barrel2.LeftSurface = "SmoothNoOutlines"
Barrel2.BrickColor = BrickColor.new("Magenta")
Barrel2.Material = "Neon"
local Mesh = Instance.new("BlockMesh",Barrel2)
Mesh.Scale = Vector3.new(0.25,0.25,2) / 0.2 * Scale
local Barrel2Weld = Instance.new("Motor6D")
Barrel2Weld.Part0 = Barrel
Barrel2Weld.Part1 = Barrel2
Barrel2Weld.C0 = CFrame.new(Vector3.new(0,0.225,0)*Scale)
Barrel2Weld.Parent = Barrel2

local RealBarrel = Instance.new("Part",Model)
RealBarrel.CanCollide = false
RealBarrel.Position = Vector3.new(0,100,0)
RealBarrel:BreakJoints()
RealBarrel.FormFactor = "Custom"
RealBarrel.Size = Vector3.new(0.2,0.2,0.2)
RealBarrel.TopSurface = "SmoothNoOutlines"
RealBarrel.BottomSurface = "SmoothNoOutlines"
RealBarrel.FrontSurface = "SmoothNoOutlines"
RealBarrel.BackSurface = "SmoothNoOutlines"
RealBarrel.RightSurface = "SmoothNoOutlines"
RealBarrel.LeftSurface = "SmoothNoOutlines"
RealBarrel.BrickColor = BrickColor.new("Black")
RealBarrel.Material = "Neon"
local Mesh = Instance.new("CylinderMesh",RealBarrel)
Mesh.Scale = Vector3.new(0.2,2,0.2) / 0.2 * Scale
local RealBarrelWeld = Instance.new("Motor6D")
RealBarrelWeld.Part0 = Barrel
RealBarrelWeld.Part1 = RealBarrel
RealBarrelWeld.C0 = CFrame.new(Vector3.new(0,0.1,-0.01)*Scale) * CFrame.Angles(math.rad(-90),0,0)
RealBarrelWeld.Parent = RealBarrel

for i = 1,75,15 do
	local Part = Instance.new("Part",Model)
	Part.CanCollide = false
	Part.Position = Vector3.new(0,100,0)
	Part:BreakJoints()
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2,0.2,0.2)
	Part.TopSurface = "SmoothNoOutlines"
	Part.BottomSurface = "SmoothNoOutlines"
	Part.FrontSurface = "SmoothNoOutlines"
	Part.BackSurface = "SmoothNoOutlines"
	Part.RightSurface = "SmoothNoOutlines"
	Part.LeftSurface = "SmoothNoOutlines"
	Part.BrickColor = BrickColor.new("Pink")
        Part.Material = "Neon"
	local Mesh = Instance.new("BlockMesh",Part)
	Mesh.Scale = Vector3.new(0.05,0.065,0.05) / 0.2 * Scale
	local PartWeld = Instance.new("Motor6D")
	PartWeld.Part0 = Handle
	PartWeld.Part1 = Part
	PartWeld.C0 = CFrame.new(Vector3.new(0,0.525,-0.515)*Scale) * CFrame.Angles(math.rad(i),0,0) * CFrame.new(Vector3.new(0,0,0.2)*Scale)
	PartWeld.Parent = Part
end

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Magenta")
Part.Material = "Neon"
local Mesh = Instance.new("BlockMesh",Part)
Mesh.Scale = Vector3.new(0.05,0.11,0.1) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Barrel2
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(0.06,0.135,0.925)*Scale)
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Magenta")
Part.Material = "Neon"
local Mesh = Instance.new("BlockMesh",Part)
Mesh.Scale = Vector3.new(0.05,0.11,0.1) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Barrel2
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(-0.06,0.135,0.925)*Scale)
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Magenta")
Part.Material = "Neon"
local Mesh = Instance.new("BlockMesh",Part)
Mesh.Scale = Vector3.new(0.025,0.1,0.1) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Barrel2
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(0,0.135,-0.925)*Scale)
PartWeld.Parent = Part

local Part = Instance.new("Part",Model)
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.Transparency = 1
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Magenta")
Part.Material = "Neon"
local Mesh = Instance.new("BlockMesh",Part)
Mesh.Scale = Vector3.new(0.1,0.1,0.1) / 0.2 * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = Barrel
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(0,0,-5)*Scale)
PartWeld.Parent = Part

local Light = Instance.new("PointLight",Part)
Light.Color = BrickColor.new("Gold").Color
Light.Enabled = true
Light.Shadows = true
Light.Brightness = 0
Light.Range = 6

local Part = Instance.new("Part",Model)
Part.Material = "Neon"
Part.CanCollide = false
Part.Position = Vector3.new(0,100,0)
Part:BreakJoints()
Part.FormFactor = "Custom"
Part.Size = Vector3.new(0.2,0.2,0.2)
Part.TopSurface = "SmoothNoOutlines"
Part.BottomSurface = "SmoothNoOutlines"
Part.FrontSurface = "SmoothNoOutlines"
Part.BackSurface = "SmoothNoOutlines"
Part.RightSurface = "SmoothNoOutlines"
Part.LeftSurface = "SmoothNoOutlines"
Part.BrickColor = BrickColor.new("Purple")
Part.Material = "Neon"
Part.Transparency = 0.25
local RecoilMesh = Instance.new("SpecialMesh",Part)
RecoilMesh.MeshType = "FileMesh"
RecoilMesh.MeshId = "http://www.roblox.com/Asset/?id=1323306"
RecoilMesh.TextureId = "http://www.roblox.com/Asset/?id=98896228"
RecoilMesh.Scale = Vector3.new(0.175,0,0.175) * Scale
local PartWeld = Instance.new("Motor6D")
PartWeld.Part0 = RealBarrel
PartWeld.Part1 = Part
PartWeld.C0 = CFrame.new(Vector3.new(0,0.95,0)*Scale)
PartWeld.Parent = Part

function ShootBullet(Target,barrel)
	local barrel = barrel or Barrel
	local Bullet = Instance.new("Part",Workspace)
	Barrel.CanCollide = false
	Bullet.FormFactor = "Custom"
	Bullet.Size = Vector3.new(0.2,0.2,5)*Scale
	Bullet.TopSurface = "Smooth"
	Bullet.BottomSurface = "Smooth"
	Bullet.Anchored = true
	Bullet.CanCollide = false
	Bullet.CFrame = CFrame.new((barrel.CFrame*CFrame.new(0,0,-barrel.Size.Z*barrel.Mesh.Scale.Z/2)).p,Target)*CFrame.new(0,0,-Bullet.Size.Z/2)
	Bullet.Transparency = 0.1
	Bullet.BrickColor = BrickColor.new("Purple")
        Bullet.Material = "Neon"
	--[[local Mesh = Instance.new("SpecialMesh",Bullet)
	Mesh.MeshType = "FileMesh"
	Mesh.Scale = Vector3.new(0.5,0.5,0.2)
	Mesh.MeshId = "http://www.roblox.com/asset/?id=2697549"
	--Mesh.TextureId = "http://www.roblox.com/asset/?id=2697544"]]
	local Mesh = Instance.new("BlockMesh",Bullet)
	Mesh.Scale = Vector3.new(0.2,0.2,5)*Scale/Bullet.Size
	IgnoreList[#IgnoreList+1] = Bullet
	RenderStepped:wait()
	for i = Speed,1000,Speed do -- Loop to do the bullet movement and stuff.
		local ray,Hit,Pos,SurfaceNormal;
		ray = Ray.new(Bullet.Position,((Bullet.CFrame*CFrame.Angles(math.rad(-Gravity),0,0)*CFrame.new(0,0,-Speed)).p-Bullet.Position).unit*Speed)
		Hit,Pos,SurfaceNormal = Workspace:FindPartOnRayWithIgnoreList(ray,IgnoreList)
		Bullet.CFrame = Bullet.CFrame*CFrame.Angles(math.rad(-Gravity),0,0)*CFrame.new(0,0,-Speed)
		if Hit ~= nil then
			local Hum = Hit.Parent:FindFirstChild("Humanoid") or Hit.Parent.Parent:FindFirstChild("Humanoid") or (Hit.Parent.Parent.Parent ~= nil and Hit.Parent.Parent.Parent:FindFirstChild("Humanoid"))
			if Hum ~= nil then
player2 = Hit.Parent
				Hum:TakeDamage(5)
if Hum.Parent.Torso == nil then
q = Instance.new("Sound", Hum.Parent.UpperTorso)
q.SoundId = "rbxassetid://924357545"
q:Play()

elseif Hum.Parent.Torso ~= nil then
q = Instance.new("Sound", Hum.Parent.Torso)
q.SoundId = "rbxassetid://924357545"
q:Play()

end 

for i,v in pairs(player2:GetChildren()) do
		if v.ClassName == "Accessory" or v.ClassName == "Hat" then
			v:destroy()
		end
	end

local Hair = Instance.new("Part")
Hair.Parent = player2
Hair.Name = "Hair"
Hair.Size = Vector3.new(0.1, 0.1, 0.1)
Hair.CFrame = player2.Head.CFrame
Hair:BreakJoints()
Hair.CanCollide = false
Hair.BrickColor = BrickColor.new("New Yeller")
Hair.TopSurface = "Smooth"
Hair.BottomSurface = "Smooth"
Weld = Instance.new("Weld") 
Weld.Name = "Weld"
Weld.Part0 = player2.Head 
Weld.Part1 = Hair
Weld.Parent = player2.Head 
Weld.C0 = CFrame.new(0, -1.4, 0.2)*CFrame.fromEulerAnglesXYZ(0.1, 0, 0) 
Mesh = Instance.new("SpecialMesh")
Mesh.Parent = Hair
Mesh.MeshId = "rbxassetid://1389678629"
Mesh.TextureId = "http://www.roblox.com/asset/?id=1389678737"
Mesh.Scale = Vector3.new(0.050, 0.050, 0.050)
Hum.Parent.Head.face.Texture = "rbxassetid://318927908"

  local num = math.random(1, 3)
  print(num)
        local charPants = player2:FindFirstChildOfClass("Pants")
        local charShirt = player2: FindFirstChildOfClass("Shirt")
        if charPants and charShirt then
            if num == 1 then
                charShirt.ShirtTemplate = Shirt
                charPants.PantsTemplate = Pants
            elseif num == 2 then
                charShirt.ShirtTemplate = Shirt2
                charPants.PantsTemplate = Pants2
            elseif num == 3 then
                charShirt.ShirtTemplate = Shirt3
                charPants.PantsTemplate = Pants3
    end
  end
end
			break
		end
		RenderStepped:wait()
	end
	Bullet:Destroy()
end

Mouse.Button1Down:connect(function()
	if not Down and not DB then
		Down = true
		while Down do
			if Humanoid.Health == 0 then break end
			if not DB then
				DB = true
				local Sound = Instance.new("Sound",Barrel)
				Sound.SoundId = "rbxassetid://426232201" -- 132373574
				Sound.Volume = 5*Scale
				Sound.Pitch = (math.random(70,110)/100)/((Scale < 0.25 and 0.25) or (Scale > 4 and 4) or Scale)
				Sound:Play()
				Spawn(function()
					ShootBullet(Mouse.Hit.p,Barrel1)
				end)
				RecoilMesh.VertexColor = Vector3.new(1,math.random(160,245)/255,20/255)
				PartWeld.C0 = PartWeld.C0 * CFrame.Angles(0,math.rad(math.random(-40,40)),0)
				local Shell = Instance.new("Part",Workspace)
				Shell.FormFactor = "Custom"
				Shell.BrickColor = BrickColor.new("Purple")
                                Shell.Material = "Neon"
				Shell.Size = Vector3.new(0.2,0.5,0.2)*Scale
				Shell.CFrame = Barrel.CFrame*CFrame.new(0.5,0.5,0)*CFrame.Angles(math.rad(-90),0,0)
				Shell.Velocity = ((Barrel.CFrame*CFrame.new(5,0,math.random(-2,2))).p-Barrel.CFrame.p)*5*Scale
				local Mesh = Instance.new("CylinderMesh",Shell)
				Mesh.Scale = Vector3.new(0.2,0.5,0.2)*Scale/Shell.Size
				Spawn(function()
					wait(5)
					Shell:Destroy()
				end)
				for i = 1,20,7.5 do
					RotationOffset = RotationOffset*CFrame.Angles(math.rad(7.5),0,0)
					Part1Joint = Part1Joint*CFrame.new(Vector3.new(0,-0.15,0)*Scale)
					Barrel2Weld.C0 = Barrel2Weld.C0*CFrame.new(Vector3.new(0,0,0.15)*Scale)
					Light.Brightness = Light.Brightness+38
					RecoilMesh.Scale = RecoilMesh.Scale+(Vector3.new(0,0.375,0)*Scale)
					RenderStepped:wait()
				end
				wait(0.02)
				for i = 1,20,3.75 do
					RotationOffset = RotationOffset*CFrame.Angles(math.rad(-3.75),0,0)
					Part1Joint = Part1Joint*CFrame.new(Vector3.new(0,0.075,0)*Scale)
					Barrel2Weld.C0 = Barrel2Weld.C0*CFrame.new(Vector3.new(0,0,-0.075)*Scale)
					Light.Brightness = Light.Brightness-19
					RecoilMesh.Scale = RecoilMesh.Scale+(Vector3.new(0,-0.1875,0)*Scale)
					RenderStepped:wait()
				end
				wait(0.02)
				DB = false
			end
		end
	end
end)

Mouse.Button1Up:connect(function()
	Down = false
end)

Mouse.KeyDown:connect(function(Key)
	if Key:lower() == "g" and not DB then
		DB = true
		if Gangster == true then
			for i = 1,70,5 do
				RotationOffset = RotationOffset*CFrame.Angles(0,math.rad(-5),0)
				RenderStepped:wait()
			end
			Gangster = false
		else
			for i = 1,70,5 do
				RotationOffset = RotationOffset*CFrame.Angles(0,math.rad(5),0)
				RenderStepped:wait()
			end
			Gangster = true
		end
		DB = false
	end
end)

local Weld = Instance.new("Weld")
Weld.Part0 = Torso
Weld.Part1 = Character["Right Arm"]
Weld.Parent = Torso

local Weld2 = Instance.new("Weld")
Weld2.Part0 = Torso
Weld2.Part1 = Character.Head
Weld2.Parent = Torso

local RA = Character["Right Arm"]


game:GetService("RunService"):BindToRenderStep("Pistol",Enum.RenderPriority.Character.Value,function()
	local Point = Torso.CFrame:vectorToObjectSpace(Mouse.Hit.p-Torso.CFrame.p)
	if Point.Z > 0 then
		if Point.X > 0 then
			Torso.CFrame = CFrame.new(Torso.Position,Vector3.new(Mouse.Hit.X,Torso.Position.Y,Mouse.Hit.Z))*CFrame.Angles(0,math.rad(90),0)
		elseif Point.X < 0 then
			Torso.CFrame = CFrame.new(Torso.Position,Vector3.new(Mouse.Hit.X,Torso.Position.Y,Mouse.Hit.Z))*CFrame.Angles(0,math.rad(-90),0)
		end
	end

	local CFr = (Torso.CFrame*Part0Joint):toObjectSpace(CFrame.new((Torso.CFrame*Part0Joint).p,Mouse.Hit.p))--RayEnd))
	Weld.C0 = Part0Joint * (CFr-CFr.p) * RotationOffset
	Weld.C1 = Part1Joint
	Weld.Part0 = Torso
	Weld.Part1 = RA
	local CFr = (Torso.CFrame*Part0JointHead):toObjectSpace(CFrame.new((Torso.CFrame*Part0JointHead).p,Mouse.Hit.p))--RayEnd))
	Weld2.C0 = Part0JointHead * (CFr-CFr.p) * RotationOffsetHead
	Weld2.C1 = Part1JointHead
	Weld2.Part0 = Torso
	Weld2.Part1 = Character.Head
	local Last = Scale
	Scale = game.Players.LocalPlayer.Character.Torso.Size.X/2*(game.Players.LocalPlayer.Character.Torso:FindFirstChild("ScaleInserted") ~= nil and game.Players.LocalPlayer.Character.Torso:FindFirstChild("ScaleInserted").Scale.Z or 1)*0.8
	Speed = 20*Scale
	if Scale ~= Last then
		Part0Joint = CFrame.new(Vector3.new(1,0.75,0)*Scale*1.25)
		Part1Joint = CFrame.new(Vector3.new(-0.5,0.75,0)*Scale*1.25)
		Part0JointHead = CFrame.new(Vector3.new(0,1,0)*Scale*1.25)
		Part1JointHead = CFrame.new(Vector3.new(0,-0.5,0)*Scale*1.25)
	end
end)

while true do 
wait(60)
print("You're Using Trap Gun, Made By Melissa666666girl! :D")
end