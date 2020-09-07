game.Players.LocalPlayer.Character.Head.Mesh:Remove()
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if (v:IsA("Accessory")) then
v.Parent = workspace
end
end