-- MAKE SURE TO CHECKOUT ROBLOXSCRIPTS.COM FOR ALL THE BEST & LATEST ROBLOX SCRIPTS
-- ================================================================================


--Script:
--local A_1 = false
--local Event = game:GetService("ReplicatedStorage").Remotes.Training.Charge
--Event:InvokeServer(A_1)
--local Event = game:GetService("ReplicatedStorage").Remotes.Training.Combat
--Event:InvokeServer()
--local Event = game:GetService("ReplicatedStorage").Remotes.Training.Defense
--Event:InvokeServer(A_1, A_2, A_3, A_4)

--Script (loop)
while wait () do
--Charge
wait(1)
local A_1 = false
local Event = game:GetService("ReplicatedStorage").Remotes.Training.Charge
Event:InvokeServer(A_1)
--Combat
local Event = game:GetService("ReplicatedStorage").Remotes.Training.Combat
Event:InvokeServer()
--Defense 
wait(1)
local Event = game:GetService("ReplicatedStorage").Remotes.Training.Defense
Event:InvokeServer(A_1, A_2, A_3, A_4)
end