--Made by N3xul.
while true do
wait()
local r = (math.sin(workspace.DistributedGameTime/2)/2)+0.5
local g = (math.sin(workspace.DistributedGameTime)/2)+0.5
local b = (math.sin(workspace.DistributedGameTime*1.5)/2)+0.5
local color = Color3.new(r, g, b)
local Event = game:GetService("ReplicatedStorage").ClientRequests.UpdateChatColorEvent
Event:FireServer(color)
end