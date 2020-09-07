Player = "LocalPlayer"
AnimationId = "27431613"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
k:Play() --Play the animation
k:AdjustSpeed(1) --Set '1' to any value you want to adjust the animation speed.