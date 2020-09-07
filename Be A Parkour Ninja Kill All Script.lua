-- Expensive#0005
-- u gotta be holding a sword
-- Be A Parkour Ninja Kill All

local lp = game.Players.LocalPlayer
local oldPos = lp.Character.Head.Position
for i,v in pairs(game.Players:GetPlayers()) do
    if v.Character and workspace:FindFirstChild(v.Name) and workspace[v.Name]:FindFirstChild("Humanoid") and not (v.Name == "MusicColors") and not (v.Name == "Eligamingninja") then
        local A_1 = workspace[v.Name].Humanoid
        for i = 5,2,-1 do wait() lp.Character:MoveTo(A_1.Parent.Head.Position+Vector3.new(math.random(1,10),math.random(1,10),math.random(1,10))) end
        local A_2 = lp.Character:FindFirstChildOfClass("Tool")
        local Event = game:GetService("ReplicatedStorage").RemoteTriggers.SellItem
        wait(0.3) for i = 5,1,-1 do Event:FireServer(A_1, A_2) end
        lp.Character.Humanoid.Health = lp.Character.Humanoid.Health - 1
        lp.Character:MoveTo(lp.Character.Head.Position + Vector3.new(math.random(1,20),math.random(40,100),math.random(1,20)))
        wait(2)
        lp.Character.Humanoid.Health=100
    end
end
for i=3,1,-1 do lp.Character:MoveTo(oldPos) end
lp.Character.Humanoid.Health=100