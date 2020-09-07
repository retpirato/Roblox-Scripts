while wait() do  
for i,v in pairs(game.workspace.Coins:GetChildren()) do 
if v.Name == "Coin" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)  
wait()
end
end
end