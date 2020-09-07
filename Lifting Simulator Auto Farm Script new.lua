if game.PlaceId == 3652625463 then

wait(5)

runserv = game:GetService("RunService")
remote = game:GetService("ReplicatedStorage").RemoteEvent
player = game:GetService("Players").LocalPlayer

for i,v in ipairs(player.Backpack:GetChildren()) do -- Equip tools
if v:IsA("Tool") then 
if v:FindFirstChild'Weight_LocalScript' then 
v.Parent = player.Character
end
end
end

platform = Instance.new'Part'
platform.Size = Vector3.new(200,4,200)
platform.Position = Vector3.new(0,1000,0)
platform.Parent = workspace
platform.Anchored = true
player.Character:MoveTo(Vector3.new(0,1010,0))

runserv.RenderStepped:Connect(function()
for i = 1,10 do
remote:FireServer("LiftWeight")
end
end)

wait(3)

remote:FireServer("SellMuscle")

wait(15)

game:GetService('TeleportService'):Teleport(game.PlaceId)

end