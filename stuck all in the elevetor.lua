--Made by Lagx#2413--
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-19, 32, 253)
for i = 1, 50 do
while wait() do
local Loc = CFrame.new(-24.374, 33.1, 253.669)
for i, ChosenPlayer in pairs(game.Players:GetPlayers()) do
  if ChosenPlayer.Name ~= game:GetService("Players").LocalPlayer.Name then
    ChosenPlayer.Character:SetPrimaryPartCFrame(Loc)
end
end
end
end