Auto Rob All:

while true do
wait()
for i,v in pairs(game.Workspace.World.Robbables:GetChildren()) do

if v.Name == "Owner" then

game.ReplicatedStorage.WeaponControll:FireServer(v.Jewelry, 1)

end
end
end

========================


Best Weapon And Bacakpack:

game.ReplicatedStorage.Purchase:FireServer("SR3",-1e+9,"Weapon")
game.ReplicatedStorage.Purchase:FireServer("XBoostPack",-1e+9,"Backpack")

=================================

Auto Quest (Gives the credits for your quest automatically):

while true do
wait(0.1)
game.ReplicatedStorage.QuestEvent:FireServer("Quest1")
game.ReplicatedStorage.QuestEvent:FireServer("Quest2")
end

=============================


Auto Rebirth:

while true do
wait(0.1)
game.ReplicatedStorage.Rebirth:FireServer()
end