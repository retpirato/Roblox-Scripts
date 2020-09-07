_G.toggled = true
while _G.toggled do 
   for i,v in pairs(workspace.Scene.ResourceNodes:GetChildren()) do
       if v.Name == "ResourceNode" then            
       game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
       local Remote = game.ReplicatedStorage.Aero.AeroRemoteServices.GameService.WeaponAttackStart
       Remote:FireServer() 
        wait()
        end
   end
end