spam PM
use this on hilton hotels
local msg = "hi daddy"
while wait() do
for i,v in pairs(game.Players:GetPlayers()) do
if v.Name ~= game.Players.LocalPlayer.Name then
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w "..v.Name.." "..msg, "All")
end
end
end