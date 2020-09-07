local children = workspace.Hoops:GetChildren()
for i, child in ipairs(children) do
    if child.Name == "Hoop" then 
child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    end    
end