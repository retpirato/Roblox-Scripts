game.Players.LocalPlayer.Character.UpperTorso.Waist:Destroy()
end)
if (game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15) then
if (game.Players.LocalPlayer.Character:FindFirstChild("LowerTorso")) then
if (game.Players.LocalPlayer.Character.LowerTorso:FindFirstChild("Root")) then
game.Players.LocalPlayer.Character.LowerTorso.Root:remove()
end
end
else
print('Not R15!')
end
if (game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15) then
if (game.Players.LocalPlayer.Character:FindFirstChild("UpperTorso")) then
if (game.Players.LocalPlayer.Character.UpperTorso:FindFirstChild("Waist")) then
game.Players.LocalPlayer.Character.UpperTorso.Waist:remove()
end
end
else
print('Not R15!')
end