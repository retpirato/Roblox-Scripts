Credits to DarcyHotDog
----------------------
RoXploits Instructions:
1) Swap the name of "PETNAMEHERE" to a pet of your choice
2) Execute the script and you're done.
3) Enjoy!

local A_1 = "PETNAMEHERE"
local A_2 = -2000000000000000000
local Event = game:GetService("ReplicatedStorage").PetEvents.requestDelete
Event:FireServer(A_1, A_2)