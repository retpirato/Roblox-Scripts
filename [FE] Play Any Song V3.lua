for i,v in pairs(game.Players:GetPlayers()) do
game.Workspace.Events.Sounds.DeathSound:FireServer(v.Character.Head.Died, "rbxassetid://musicid")
end

for i,z in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
if z:IsA'Sound' then z.Playing = true end
end