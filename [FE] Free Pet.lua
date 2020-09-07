hum = game.Players.LocalPlayer.Character.HumanoidRootPart

for _,v in pairs (workspace.EggHunt:GetChildren()) do
if v:FindFirstChild("TouchInterest") then
wait(0.2)
v.CanCollide = false
hum.CFrame = v.CFrame
wait(0.4)
hum.CFrame = workspace.MAP_CENTER.CFrame
end
end