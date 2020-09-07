local RobloxReplicatedStorage = game:GetService('RobloxReplicatedStorage')
RemoteEvent_NewFollower = RobloxReplicatedStorage:WaitForChild('NewFollower')
while wait(0) do
for i,v in pairs(game.Players:GetChildren()) do
RemoteEvent_NewFollower:FireServer(v, true)
end
end