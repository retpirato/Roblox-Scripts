-- https://www.roblox.com/games/12109643/Fencing

game:GetService('RunService').Stepped:connect(function()
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "Spray" then
if v.Handle.Mesh then
v.Handle.Mesh:Destroy()
end
v.Parent = workspace
end
end
end)
local function paint()
for i,v in pairs(game.Workspace:GetChildren())do
if v.Name == "Handle" then
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
v.Transparency = 1
v.CanCollide = false
wait()
v.CFrame = game.Players.LocalPlayer.Character["Left Leg"].CFrame
end
end
end
local function equip()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren())do
if v.Name == "Spray" then
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
end
end
end
while wait(0.05) do
paint()
equip()
end