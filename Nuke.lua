for i,v in pairs (game.Workspace:GetChildren()) do
if v.Name == "Nuke" then
v:Destroy()
end
end
wait(1)
local Tool = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
Tool.Name = "Detonater"
local Mouse = game.Players.LocalPlayer:GetMouse()

local Place = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
Place.Name = "Placer"
Nuke = Instance.new("Model")
Nuke.Parent = game.Workspace
Nuke.Name = "Nuke"

x5 = 1
Mouse.Button1Down:connect(function()
if x5 == 1 then
if Place.Active == true then
local name = game.Players.LocalPlayer.Name
local Part1 = Instance.new("Part")
Part1.Name = "Part"
Part1.Parent = Nuke
Part1.Size = Vector3.new(12,1,6)
Part1.Position = Mouse.Hit.p
Part1.BottomSurface = "Smooth"
Part1.TopSurface = "Smooth"
Part1.Material = "Metal"
Part1.BrickColor = BrickColor.new("Really black")
Part1.Anchored = true
local x1 = game.Workspace.Nuke.Part.Position.X
local y1 = game.Workspace.Nuke.Part.Position.Y
local z1 = game.Workspace.Nuke.Part.Position.Z
local Part2 = Instance.new("Part")
Part2.Name = "Detonate"
Part2.Parent = Nuke
Part2.Size = Vector3.new(10, 5, 5)
Part2.Position = Vector3.new(x1,y1+2,z1)
Part2.BottomSurface = "Smooth"
Part2.TopSurface = "Smooth"
Part2.Material = "Metal"
Part2.BrickColor = BrickColor.new("Really black")
Part2.Anchored = true
Part2.Shape = "Cylinder"
x5 = x5+1
local Decal = Instance.new("Decal")
Decal.Texture = "http://www.roblox.com/asset/?id=14301975"
Decal.Parent = Part2
Decal.Face = "Back"
end
end
end)


Mouse.Button1Down:connect(function()
if Tool.Active == true then
local nuke = Instance.new("Part")
nuke.Position = game.Workspace.Nuke.Detonate.Position
nuke.Anchored = true
nuke.Parent = game.Workspace
local x, y, z = 5, 5, 5
nuke.BrickColor = BrickColor.new ("New Yeller")
nuke.Size = Vector3.new(x, y, z)
nuke.CanCollide = false
nuke.Name = "nuke"
nuke.Shape = "Ball"
nuke.Transparency = 0.3
nuke.Material = "Neon"
nuke.Locked = true
game.Workspace.Nuke:Destroy()
while x <= 100 do
x, y, z = x+1, y+1, z+1
nuke.Size = Vector3.new(x, y, z)
local explosion = Instance.new("Explosion")
explosion.BlastPressure = 1000000
explosion.BlastRadius = x-15
explosion.DestroyJointRadiusPercent = 1
explosion.ExplosionType = "Craters"
explosion.Parent = game.Workspace
explosion.Position = game.Workspace.nuke.Position 
explosion.Hit:connect(function(Part, Distance)
if Part.Name ~= "nuke" then
Part.Anchored = false
Part:BreakJoints()
end
end) 
wait(0.01)
end
while x <= 200 do
x, y, z = x+3, y+3, z+3
nuke.Size = Vector3.new(x, y, z)
local explosion = Instance.new("Explosion")
explosion.BlastPressure = 1000000
explosion.BlastRadius = x+50
explosion.DestroyJointRadiusPercent = 1
explosion.ExplosionType = "Craters"
explosion.Parent = game.Workspace
explosion.Position = game.Workspace.nuke.Position
explosion.Hit:connect(function(Part, Distance)
if Part.Name ~= "nuke" then
Part.Anchored = false
Part:BreakJoints()
end
end)
wait(0.01)
end
game.Workspace.nuke:Destroy()
x5 = 1
Nuke = Instance.new("Model")
Nuke.Parent = game.Workspace
Nuke.Name = "Nuke"
Tool.Active = false
end
end)