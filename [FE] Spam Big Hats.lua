for i=1,500 do
print (i)
game.Workspace.Hats:FireServer("Dominus Empyreus'", 0)
wait(0.5)
for index, child in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if child.ClassName == "Hat" or child.ClassName == "Accessory" then
if child.Handle:FindFirstChild("Mesh") then
child.Handle.Mesh.Parent = nil
child.Parent = game.Workspace
end
end
end