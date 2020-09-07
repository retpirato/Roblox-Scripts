while wait() do
for _,v in pairs(game.Players:GetChildren()) do
wait(1)
if game.Workspace.Sharks["Shark"..game.Players.LocalPlayer.Name] then
game.Workspace.Sharks["Shark"..game.Players.LocalPlayer.Name]:MoveTo(v.Character.HumanoidRootPart.Position)
end
end
end