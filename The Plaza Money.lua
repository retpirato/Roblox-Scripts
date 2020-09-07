local amount = 21e8
game.ReplicatedStorage.ServerStats.ChangeMoney:FireServer(amount, math.floor(math.sqrt(game.ReplicatedStorage.ServerStats.CurrentID.Value)) + 1337)