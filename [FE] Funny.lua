local A=Instance.new'Animation'
A.AnimationId='rbxassetid://148840371'
local P=game:GetService'Players'.LocalPlayer
local C=P.Character or P.CharacterAdded:Wait()
local H=C:WaitForChild'Humanoid':LoadAnimation(A)
H:Play()
H:AdjustSpeed(2.5)
