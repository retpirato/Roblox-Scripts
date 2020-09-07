while true do
    spawn(function()
        while true do
        game:GetService("ReplicatedStorage").FillBalloon:FireServer(1991)
        wait()
        end
    end)
    for _,v in pairs(workspace.Coins:GetChildren()) do 
        game.Players.LocalPlayer.Character:MoveTo(v.Position)
        wait()
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(162.685913, 20.3765278, 1803.24951))
        wait()
    end
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(162.685913, 20.3765278, 1803.24951))
end