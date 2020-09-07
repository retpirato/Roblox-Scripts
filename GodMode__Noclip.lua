local plr = game:GetService("Players").LocalPlayer

if plr.Character ~= nil then
    if plr.Character:FindFirstChild("Humanoid") then
        plr.Character.Humanoid:Destroy()
        Instance.new("Humanoid",plr.Character)
    end
end