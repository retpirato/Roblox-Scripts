local UIS = game:GetService("UserInputService")
local lp = game.Players.LocalPlayer
local c = lp.Character

UIS.InputBegan:connect(function(input, processed)
c.Humanoid.JumpPower = 50 -- sets the JumpPower from 0 to 50 (default JumpPower)
if processed then return end
if input.KeyCode == Enum.KeyCode.Space then -- if the space key is pressed
game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)  -- Humanoid.Jump = true does not work, so I used changestate
end
end)