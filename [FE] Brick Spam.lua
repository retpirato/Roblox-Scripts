-- ghostbin down lol --

for i=1,500 do -- change 500 with any value
game.ReplicatedStorage.Events.OutfitChang:FireServer("Hat", "1513257578")
wait(0.1)

for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
if v:IsA("Hat") or v:IsA("Accessory") then
v.Handle.Mesh:Destroy()
v.Parent = game:GetService("Workspace")
end
end
end