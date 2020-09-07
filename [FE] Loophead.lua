AnimationId = "35154961"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
while wait(0.00703125) do
k:Play()
k:AdjustSpeed(640)