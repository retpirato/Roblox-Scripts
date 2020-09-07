-- created by NAME4YOU#0001
-- get all the best scripts from https://robloxscripts.com/

_G.Working = true


while _G.Working do
for i=1,100 do 
local A_1 = game:GetService("Workspace").Assets["2"].ItemName
local Event = game:GetService("ReplicatedStorage").Events.PurchaseItm
Event:InvokeServer(A_1)
local A_1 = "Mouse"
local Event = game:GetService("ReplicatedStorage").Events.ProxHome
Event:InvokeServer(A_1)
local Event = game:GetService("ReplicatedStorage").Events.ReBurth
Event:InvokeServer()
end
end