for i = 1,200 do
game.ReplicatedStorage.API["ClothingAPI/WearAccessory"]:FireServer(215724072, "tried on")
wait(0.1)
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA('Accessory') then
v.Handle.Mesh:Destroy()
wait(0.1)
v.Parent = workspace
end
end
end