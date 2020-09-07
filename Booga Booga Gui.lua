keybind settings 

e - level farmer
q - Instant killer 
v - Kill aura 


Heres The script :

--[[ Some Settings --]]
local Aura_Range = 200 -- Edit here
local AmountOfDamage = 20 -- Edit here for insta destroy

--[[ Keybind Settings --]]
--[[
Q - Insta Destroy
E - Level Farm
V - Kill Aura
--]]

warn("Don't forget to leave a vouch on our official v3rmillion thread!")
warn("Insta Destroy Script loaded! Press q where your mouse is to use it!")
warn("Level Farm Script loaded! Press e (you can't stop it after started by the way!)")
warn("Kill Aura Script loaded! Press v, you're in a range of " .. Aura_Range .. " blocks.")
warn("Bypassed again by Hamii")
warn("Made by Hamii/Tritium and Floof Heart")

local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
local Folder = workspace.Critters

local Damage = function(Part)
pcall(function()
local A = Part
local B = Part.Position
local C = {
owned = true,
origin = Player.Character.Head.Position,
position = Part.Position,
velocity = Player.Character.Head.CFrame.lookVector * Vector3.new(500, 100, 500),
acceleration = Vector3.new(0, -156.2, 0),
age = os.time(),
toolFrom = "Magnetite Crossbow",
object = game:GetService("ReplicatedStorage").Projectiles:findFirstChild("Bolt")
}
local D = (Player.Character.Head.Position - Part.Position).magnitude
game:GetService("ReplicatedStorage").Events.DequipCosmetic:FireServer(A, B, C, D)
end)
end

Mouse.KeyUp:connect(function(key)
if key == "q" then
--warn("Pressed q, Insta Destroy made by Hamii/Tritium and Floof")
for i = 1, AmountOfDamage do
if Mouse.Target and Mouse.Target.ClassName ~= "Terrain" then
Damage(Mouse.Target)
end
end
end
end)

Mouse.KeyUp:connect(function(key)
if key == "e" then
--warn("Pressed e, Level Farm made by Hamii/Tritium and Floof") 
while wait() do
for i,v in pairs(workspace:GetChildren()) do
if string.find(v.Name:lower(), "bush") or string.find(v.Name:lower(), "tree") or string.find(v.Name:lower(), "ice") or string.find(v.Name:lower(), "rock") then
for i,v in pairs(v:GetChildren()) do
if v.ClassName == "Part" or v.ClassName == "Union" then
spawn(function()
for i = 1, 50 do
Damage(v)
wait()
end
end)
end
end
elseif v:findFirstChild("PrimaryPart") then
spawn(function()
for i = 1, 50 do
Damage(v.PrimaryPart)
wait()
end
end)
elseif game:GetService("Players"):GetPlayerFromCharacter(v) then
spawn(function()
for i = 1, 50 do
Damage(v.Head)
wait()
end
end)
end
end
end
end
end)

local orange = function(part, strength)
if part:IsDescendantOf(Player.Character) then return nil end
if part and part.Parent and part.Parent.Parent then
if part.Parent:findFirstChild("Head") then
for i = 1, 5 * strength do
Damage(part.Parent.Head)
end
elseif part.Parent.Parent:findFirstChild("Head") then
for i = 1, 5 * strength do
Damage(part.Parent.Parent.Head)
end
else
if part.Parent ~= workspace then
for i,v in pairs(part.Parent:GetChildren()) do
if string.find(v.ClassName:lower(), "part") or v.ClassName == "Union" then
for i = 1, 2.5 * strength do
Damage(v)
end
end
end
end
end
for i = 1, 2.5 * strength do
Damage(part)
end
end
end

local myPos = function()
return Player.Character.HumanoidRootPart.Position
end

Mouse.KeyDown:connect(function(key)
if key == "v" then
--warn("Pressed v, Kill Aura made by Floof and bypassed by Hamii!")
for i, v in pairs(workspace.Critters:GetChildren()) do
if v:findFirstChild("HumanoidRootPart") then
local Pos = v.HumanoidRootPart.Position
local Distance = (Pos - myPos()).magnitude
if Distance <= Aura_Range then
orange(v.HumanoidRootPart, 8)
end
elseif v:findFirstChild("Torso") then
local Pos = v.Torso.Position
local Distance = (Pos - myPos()).magnitude
if Distance <= Aura_Range then
orange(v.Torso, 8)
end
else
local Part = nil
for i,v in pairs(v:GetChildren()) do
if string.find(v.ClassName:lower(), "part") or v.ClassName == "Union" then
Part = v
end
end
if string.find(v.ClassName:lower(), "part") or v.ClassName == "Union" then
Part = v
end
if Part then
orange(Part, 14)
end
end
end
wait()
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if v ~= Player and v.Character then
local HRP = v.Character:findFirstChild("HumanoidRootPart")
if HRP then
local Distance = (HRP.Position - myPos()).magnitude
if Distance <= Aura_Range then
orange(HRP, 15)
end
end
end
end
wait()
for i,v in pairs(workspace:GetChildren()) do
if string.find(v.Name:lower(), "bush") or string.find(v.Name:lower(), "ice") or string.find(v.Name:lower(), "tree") or string.find(v.Name:lower(), "node") or string.find(v.Name:lower(), "wall") or string.find(v.Name:lower(), "stone") or string.find(v.Name:lower(), "mound") or string.find(v.Name:lower(), "rope") or v:findFirstChild("PrimaryPart") or v:findFirstChild("Health") or v:findFirstChild("Torso") or v:findFirstChild("HitShell") then
local Part = nil
for i,v in pairs(v:GetChildren()) do
if string.find(v.ClassName:lower(), "part") or v.ClassName == "Union" then
Part = v
end
end
if string.find(v.ClassName:lower(), "part") or v.ClassName == "Union" then
Part = v
end
if Part then
local Distance = (Part.Position - myPos()).magnitude
if Distance <= Aura_Range then
orange(Part, 7)
end
end
end
end
for i,v in pairs(workspace.Deployables:GetChildren()) do
if string.find(v.Name:lower(), "wall") or string.find(v.Name:lower(), "gate") or string.find(v.Name:lower(), "raft") or string.find(v.Name:lower(), "boat") or string.find(v.Name:lower(), "hut") or string.find(v.Name:lower(), "Health") or v:findFirstChild("PrimaryPart") or v:findFirstChild("Torso") then
local Part = nil
for i,v in pairs(v:GetChildren()) do
if string.find(v.ClassName:lower(), "part") or v.ClassName == "Union" then
Part = v
end
end
if string.find(v.ClassName:lower(), "part") or v.ClassName == "Union" then
Part = v
end
if Part then
local Distance = (Part.Position - myPos()).magnitude
if Distance <= Aura_Range then
orange(Part, 7)
end
end
end
end
end
end)