_G.yes = true -- toggle

local plr = game.Players.LocalPlayer.Character.HumanoidRootPart
while _G.yes == true do 
    wait(0.5)
    for i, v in pairs(workspace.Scene.ResourceNodes:GetChildren()) do 
        if v:IsA("Part") then 
            if v.NodeType.Value == 1 and v.NodeType ~= 0 then 
                v.CFrame = plr.CFrame
            end
        end
    end
end

Autofarm:

_G.yeet = true -- toggle

while _G.yeet do 
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.WeaponAttackStart:FireServer()
wait(0.05)
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.WeaponAnimComplete:FireServer()
end