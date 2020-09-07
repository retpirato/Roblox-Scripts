while true do
local weld = Instance.new('Weld')
weld.Parent = game.Players.LocalPlayer.Character.Torso
weld.Part0 = weld.Parent
weld.Part1 = weld.Parent.Parent.Head
weld.C0 = CFrame.new(0, 300, 0)
weld.Parent.Parent.Head.CanCollide = true
wait (0.1)
end
end)