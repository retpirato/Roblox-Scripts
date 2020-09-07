while wait(.1) do 
for i, v in pairs(game.Workspace.CoinSpawners:GetChildren()) do
wait (0.01)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
end
end