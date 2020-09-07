while wait(.1) do
for _,v in ipairs(workspace.Levels.Forest:GetChildren()) do
  if v.Name == "SpawnPoint" then
      v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
   end
  end
 end