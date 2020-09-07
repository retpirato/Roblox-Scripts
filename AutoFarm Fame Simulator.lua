local stage = "Stage 1" -- change Stage 1 to the stage your currently in
local function Farm(item)


        local A_1 = item
        local Event = game:GetService("ReplicatedStorage").Requests.Select
        Event:FireServer(A_1)
        Event:FireServer(A_1)
        Event:FireServer(A_1)
        Event:FireServer(A_1)
        Event:FireServer(A_1)
        Event:FireServer(A_1)
        wait(1)

end

for i ,v in pairs(game.Workspace.Map["World 1"][stage].Items:GetChildren()) do 
    for i , b in pairs(v:GetChildren()) do 
        Farm(v)
        for i , c in pairs(game.Workspace.Team[game.Players.LocalPlayer.Name]:GetChildren()) do 
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = b.CFrame
            c.HumanoidRootPart.CFrame = b.CFrame
        end
        wait(1)
    end
end