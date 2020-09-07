local shroud = game.Workspace.Orbs:FindFirstChildOfClass('Folder')
local plr = game.Players.LocalPlayer.Character.HumanoidRootPart
while true do
wait(2)
for _, h in pairs(shroud['SpeedOrb']:GetChildren()) do
   if h.ClassName == "MeshPart" then
    h.CFrame = plr.CFrame
   end 
end 
end