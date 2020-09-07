while wait(2) do
local Plr = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game.workspace.coins:GetChildren()) do 
   v.CFrame = Plr.CFrame
   end
end