--Variable
local amount = "666"
local remote = game.ReplicatedStorage.introfired

--Stats
remote:FireServer("Ninjutsu", amount)
remote:FireServer("Genjutsu", amount)
remote:FireServer("Taijutsu", amount)
remote:FireServer("Speed", amount)
remote:FireServer("Weapon", amount)
remote:FireServer("Strength", amount)