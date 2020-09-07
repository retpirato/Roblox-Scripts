
while wait(3) do
for _,v in pairs(workspace:GetChildren()) do
    if v:IsA("Tool") then
        v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        print("Teleported Item!")
    end
end
end