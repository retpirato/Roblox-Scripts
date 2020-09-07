local Victim=''
local A=Instance.new'Animation'
A.AnimationId='rbxassetid://148840371'
local P=game:GetService'Players'.LocalPlayer
local C=P.Character or P.CharacterAdded:Wait()
local H=C:WaitForChild'Humanoid':LoadAnimation(A)
H:Play()
H:AdjustSpeed(2.5)
game:GetService'RunService'.Stepped:Connect(function()
    C:WaitForChild'HumanoidRootPart'.CFrame=CFrame.new(game:GetService'Players':FindFirstChild(Victim).Character:WaitForChild'HumanoidRootPart'.Position)
end)
