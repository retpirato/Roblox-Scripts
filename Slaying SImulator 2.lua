--NPC CODES
--Assassins
--Orcs
--Skeletons
--Noobs
--Chocolate Zombies
--Overlord
--Werewolf
--Cactus King
--Guest
--Snowmen
--Gingerbread Men
--Frost Guard




--THE SCRIPT
_G.Fuck = true -- false to Turn Off
local enemi = game.Workspace.Enemies.Assassins -- Change Assasins to Any NPC you want
while _G.Fuck do

wait()
game.Players.LocalPlayer.Character.Humanoid.Health = math.huge
for _,v in pairs(enemi:GetChildren()) do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame+Vector3.new(1, 0, 0)
end
end