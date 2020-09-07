local tools = {
game.Players.LocalPlayer.Backpack.Punch,
game.Players.LocalPlayer.Backpack.Train,
game.Players.LocalPlayer.Backpack.Meditation
}

while true do
for _,v in pairs(tools) do
v.Parent = game.Players.LocalPlayer.Character
v:Activate()
v.Parent = game.Players.LocalPlayer.Backpack
end
wait()
end