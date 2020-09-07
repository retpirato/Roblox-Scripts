local Player = game.Players.LocalPlayer
Player.Character.Humanoid.WalkSpeed = 200
Player.Character.Humanoid.HipHeight = 7;
while wait(0.2) do
for index, value in next, workspace:GetDescendants() do
if (value:FindFirstChildOfClass("Humanoid") and value ~= Player.Character) then
value.Humanoid.Health = 0
end
end
end