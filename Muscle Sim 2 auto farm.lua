while wait() do
local Remote = game.ReplicatedStorage['addStrength']

local Arguments = {
        [1] = Workspace.NAMEHERE.Weight.Handle,
        [2] = 1
}

Remote:FireServer(unpack(Arguments))
end