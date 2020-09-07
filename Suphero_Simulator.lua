--[[
Script made by Pain Exist // https://roxploits.com
--]]

getgenv().running = true; -- Boo Boo turn it to false for off. [Remove for Axon]

local plr = game:GetService("Players").LocalPlayer
local char = plr.Character
local bp = plr.Backpack
function GetTool()
    if bp:FindFirstChildOfClass("Tool") then
        return bp:FindFirstChildOfClass("Tool")
    elseif char:FindFirstChildOfClass("Tool") then
        return char:FindFirstChildOfClass("Tool")
    end
    return nil
end

game:service'RunService'.RenderStepped:Connect(function()
    if getgenv().running then  -- Remove for Axon
        for i,v in pairs(game.Workspace.Mobs:GetChildren()) do 
            game:service'ReplicatedStorage'.Remotes.SwordSwing:FireServer(GetTool(),v)
        end
        for i,v in pairs(game.Workspace.Coins:GetDescendants()) do 
            if v.Name == "Shine" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            end
        end
    end -- Remove for Axon
end)
