function Farm()
while wait(0,5) do
local Remote = game.ReplicatedStorage.Events['VacuumObject']
local Coin = game.Workspace.GameComponents.ClientCoins:FindFirstChild('Rebirth Zone - 9').Coin.CFrame.Position
local Arguments = {
        [1] = Coin
}

Remote:FireServer(unpack(Arguments))
end
end
function sell()

while wait(0,5) do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(14,-6,216)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8,-6,201)

end
end
function Rebirth()
while wait(1) do
local Remote = game.ReplicatedStorage.Events['Rebirth']
Remote:FireServer()
end
end
function Fix()
if game.Players.LocalPlayer.PlayerGui:FindFirstChild('Notifications') then
 game.Players.LocalPlayer.PlayerGui.Notifications:Destroy()
end
end
spawn(sell)
spawn(Farm)
spawn(Rebirth)
spawn(Fix)