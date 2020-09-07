if (game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15) then
if (game.Players.LocalPlayer.Character:FindFirstChild("UpperTorso")) then
if (game.Players.LocalPlayer.Character.UpperTorso:FindFirstChild("Waist")) then
game.Players.LocalPlayer.Character.UpperTorso.Waist:remove()
end
end
else
print('Not R15!')
end