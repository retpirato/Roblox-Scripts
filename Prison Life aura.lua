plr = game:service'Players'.LocalPlayer
char = plr.Character
mouse = plr:GetMouse()
on = false

mouse.KeyDown:connect(function(key)
   if key == "e" then
       on = true
   end
end)

mouse.KeyUp:connect(function(key)
   if key == "e" then
       on = false
   end
end)

while wait(0.1) do
   for i, b in pairs(game.Players:GetChildren()) do
       if b.Name ~= plr.Name and not b:IsFriendsWith(plr.UserId) and on then
           for i = 1, 10 do
               game.ReplicatedStorage.meleeEvent:FireServer(b)
           end
       end
   end
end