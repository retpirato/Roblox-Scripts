local Action = game.Players:GetPlayers()
   for i = 1,#Action do
Action[i].Chatted:connect(function(Message)
   game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Fuckkkkkkkkkkkkkkkkkkkkkkkk: ".."["..Action[i].Name.."]".." "..Message, "All")
   end)
end
local Action = game.Players:GetPlayers()
   for i = 1,#Action do
Action[i].Chatted:connect(function(Message)
   game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Fuckkkkkkkkkkkkkkkkkkkkkkkk: ".."["..Action[i].Name.."]".." "..Message, "All")
   end)
end