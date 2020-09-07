for x = 1, 500 do
local A_1 = "collectOrb"
   local A_2 = "Gem"
   local A_3 = "City"
   local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent
   Event:FireServer(A_1, A_2, A_3)
end