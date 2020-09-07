game.Players.LocalPlayer.Character.CharacterMesh:Remove()
wait()
game.Players.LocalPlayer.Character.CharacterMesh:Remove()
wait()
game.Players.LocalPlayer.Character.CharacterMesh:Remove()
wait()
game.Players.LocalPlayer.Character.CharacterMesh:Remove()
wait()
game.Players.LocalPlayer.Character.CharacterMesh:Remove()
wait()
game.Players.LocalPlayer.Character.Head.face:Remove()
wait()
game.Players.LocalPlayer.Character['Left Leg']:Remove()
wait()
game.Players.LocalPlayer.Character['Right Leg']:Remove()
wait()
game.Players.LocalPlayer.Character['Left Arm']:Remove()
wait()
game.Players.LocalPlayer.Character['Right Arm']:Remove()
wait()
game.Players.LocalPlayer.Character.Shirt:Remove()
game.Players.LocalPlayer.Character.Pants:Remove()
wait()
game.Players.LocalPlayer.Character.Head.Mesh:Remove()
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if (v:IsA("Accessory")) then
v.Parent = workspace
end
end