Hover animation (walk and idle)

game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId="rbxassetid://451687057"
for _,v in pairs(game.Players.LocalPlayer.Character.Animate.jump:GetChildren()) do
    v.AnimationId = 'rbxassetid://451686028'
for _,v in pairs(game.Players.LocalPlayer.Character.Animate.idle:GetChildren()) do
    v.AnimationId = 'rbxassetid://451686028'
end
end

Head spin animation:


game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId="rbxassetid://299034008"


Name hide:


while wait() do 

pcall(function()

game.Players.LocalPlayer.Backpack.ServerTraits.Crouch:FireServer(true)

end)
end