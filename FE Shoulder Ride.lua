local plr = game.Workspace.'VICTIM'
local lol = 'Left Leg'
local omg = 'Torso'
local lpChar = game.Players.LocalPlayer.Character[omg]

wait()
local w = Instance.new('Weld', lpChar)
w.Part0 = plr[lol]
w.Part1 = lpChar
w.C0 = lpChar.CFrame + CFrame.new(1,2,1)
w.C1 = lpChar.CFrame
plr.Humanoid.WalkSpeed = 0
wait(.1)
lpChar.CFrame = CFrame.new(0.1,0.1,0.1)
