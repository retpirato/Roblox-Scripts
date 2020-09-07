_G.On = true

game:GetService"RunService".RenderStepped:Connect(function()
    if _G.On then
        game:GetService"ReplicatedStorage".IncreaseAbilities:FireServer("Swiftness")
        game:GetService"ReplicatedStorage".IncreaseAbilities:FireServer("PunchPower")
        game:GetService"ReplicatedStorage".IncreaseAbilities:FireServer("Endurance")
        game:GetService"ReplicatedStorage".IncreaseAbilities:FireServer("Agility")
        game:GetService"ReplicatedStorage".IncreaseAbilities:FireServer("PsychicForce")
    end
end)