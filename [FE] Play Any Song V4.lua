for i,v in pairs(game.Players:GetPlayers()) do
for i = 1,500 do
game.Workspace.Events.Sounds.DeathSound:FireServer(v.Character.Head.Died, "rbxassetid://musicid")
end
end

for i,v in pairs(game:GetService'Players':GetPlayers()) do
if game.Players.LocalPlayer.Character ~= nil and game.Players.LocalPlayer.Character:FindFirstChild'Head' then
for i,z in pairs(v.Character.Head:GetChildren()) do
if z:IsA'Sound' then z.Playing = true end
end
end
end