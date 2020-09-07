game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2903.75,13.2,745.56)
local Loc = CFrame.new(2903.75,13.2,745.56)
for i, ChosenPlayer in pairs(game.Players:GetPlayers()) do
   if ChosenPlayer.Name ~= game:GetService("Players").LocalPlayer.Name then
     ChosenPlayer.Character:SetPrimaryPartCFrame(Loc)
end
end