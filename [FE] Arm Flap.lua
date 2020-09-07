AnimationId = "27432691"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local Anim = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
Anim:Play()
Anim:AdjustSpeed(100000)