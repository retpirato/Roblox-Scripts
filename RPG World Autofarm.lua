while wait() do
   spawn(function()
       game:GetService("ReplicatedStorage").Events.Npc:FireServer("Click", {})
   end)
   for i, v in pairs(game:GetService("Workspace").Areas.Starter.NPCs:GetChildren()) do
       game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
   end
end