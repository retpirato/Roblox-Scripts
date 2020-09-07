local value = 2000
for i = 1,value do
game.ReplicatedStorage.ClothingService:FireServer("Hat", 140469731)
wait(0.1)
for i,v in pairs(game:GetService('Players').LocalPlayer.Character:GetChildren()) do
if v.ClassName == "Accessory" then
v.Handle.Mesh:Destroy()
v.Parent = workspace
end
end
end