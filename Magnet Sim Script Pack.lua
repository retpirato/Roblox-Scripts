Auto rebirth(just change number to one on the board if you don't want it to be 1000):

while wait(1) do
local A_1 = 1000
local Event = game:GetService("ReplicatedStorage").RebirthEvents.requestRebirth
Event:FireServer(A_1)
end

Auto open best egg(Opens many at a time Smile  and change _G.on to false if you want it to stop):

_G.on = true
while _G.on do
wait(0.1)
local A_1 = "Overseer Egg"
local Event = game:GetService("ReplicatedStorage").PetEvents.requesthatch
Event:FireServer(A_1)
Event:FireServer(A_1)
Event:FireServer(A_1)
Event:FireServer(A_1)
Event:FireServer(A_1)
Event:FireServer(A_1)
Event:FireServer(A_1)
Event:FireServer(A_1)
Event:FireServer(A_1)
Event:FireServer(A_1)
end


