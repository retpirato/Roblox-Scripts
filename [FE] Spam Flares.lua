_G.Enabled = true 
while wait(1) and _G.Enabled do 
for i = 1, 10 do 
for i, v in pairs(game.Players:GetChildren()) do 
workspace.Events.Surv.Flare:FireServer(v.Character:findFirstChild('Torso').CFrame) end end end