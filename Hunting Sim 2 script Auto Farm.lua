local player = game.Players.LocalPlayer
while true do 
wait()
for i,v in pairs(workspace.Maps:GetDescendants()) do 
if v.ClassName == "Model" and v:FindFirstChild("HumanoidRootPart") and (player.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).magnitude < 50 and v:FindFirstChild("InstanceId") then
------------change this line with your current item InstanceId
game:GetService("ReplicatedStorage").Remotes.ClientToServerRemoteEvent:FireServer({ ["packetId"]= 5, ["mobInstanceId"]= v.InstanceId.Value, ["damage"]= 10, ["itemInstanceId"]= "CB494AC7-CBBC-478B-87D3-0F5823E88A62", ["itemId"]= 1000 }) -- Stick
---------------------
game:GetService("ReplicatedStorage").Remotes.ClientToServerRemoteEvent:FireServer({ ["packetId"]= 5, ["mobInstanceId"]= v.InstanceId.Value, ["damage"]= 22, ["itemInstanceId"]= "0EF0B4BF-F6BA-40F8-91CC-376AED0C45BB", ["itemId"]= 24000 }) -- FireBall
end
end
end