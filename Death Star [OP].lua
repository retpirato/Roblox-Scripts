wait(1)
local DeathStar = Instance.new("Part")
local BBG = Instance.new("BillboardGui")
local ImLab = Instance.new("ImageLabel")
local Sound = Instance.new("Sound")
Sound.SoundId = "rbxassetid://522569768"
Sound.MaxDistance = math.huge
Sound.EmitterSize = math.huge
Sound.Volume = 1
Sound.Parent = game.Workspace
local DISTANCE = 1500
local SIZE = 750
local TIMEE = 1500
DeathStar.Size = Vector3.new(1,1,1)
DeathStar.BrickColor = BrickColor.new("Lime green")
DeathStar.Material = Enum.Material.Neon
local Mesh = Instance.new("SpecialMesh")
Mesh.Scale = Vector3.new(SIZE,0,SIZE)
Mesh.MeshType = Enum.MeshType.Sphere
Mesh.Parent = DeathStar
DeathStar.Transparency = 1
DeathStar.Anchored = true
BBG.Size = UDim2.new(SIZE,0,SIZE,0)
ImLab.Size = UDim2.new(1,0,1,0)
ImLab.Image = "rbxassetid://150858108"
ImLab.BackgroundTransparency = 1
ImLab.ImageTransparency = 1
ImLab.Parent = BBG
BBG.Parent = DeathStar
DeathStar.CFrame = (game.Workspace:GetModelCFrame() + Vector3.new(0, 0, DISTANCE))
DeathStar.Parent = game.Workspace
wait(1)
function boom(part) 
	if part:IsA("BasePart") and part ~= DeathStar then
		local a = Instance.new("Explosion")
		a.Position = part.Position
		a.Parent = part
		part.Anchored = false
	end 
	local b = part:GetChildren()
	for i=1,#b do
		if b[i]:IsA("BasePart") or b[i]:IsA("Folder") or b[i]:IsA("Model") then
		boom(b[i])
		end
	end
end

for i=1,TIMEE do
	wait()
	DeathStar.CFrame = CFrame.new(0,DeathStar.Position.y + (DISTANCE/TIMEE), DeathStar.Position.z - (DISTANCE/TIMEE))
	ImLab.ImageTransparency = ImLab.ImageTransparency  - (1/(TIMEE/2))
end
Sound:Play()
game:GetService("Debris"):AddItem(Sound,Sound.TimeLength+1)
wait(11)
for i=1,25 do
	wait()
	if DeathStar.Transparency ~= 0 then
	DeathStar.Transparency = DeathStar.Transparency - 0.2
	end
	if DeathStar.Transparency <= 0 then
	DeathStar.Transparency = 0
	end
	Mesh.Scale = Vector3.new(SIZE,Mesh.Scale.y + ((DISTANCE*4)/50),SIZE)
	Mesh.Offset = Mesh.Offset - Vector3.new(0,((DISTANCE*2)/50),0)
end
game.Lighting.TimeOfDay = 0
boom(game.Workspace)
for i=1,25 do
	wait()
	Mesh.Scale = Vector3.new(SIZE,Mesh.Scale.y - ((DISTANCE*4)/50),SIZE)
	Mesh.Offset = Mesh.Offset - Vector3.new(0,((DISTANCE*2)/50),0)
end
 
for i=1,100 do
	DeathStar.Transparency = DeathStar.Transparency + 1/50
	ImLab.ImageTransparency = ImLab.ImageTransparency + 1/50
	BBG.Size = BBG.Size - UDim2.new(SIZE/50,0,SIZE/50,0)
	wait()
end
game:GetService("Debris"):AddItem(DeathStar,1)