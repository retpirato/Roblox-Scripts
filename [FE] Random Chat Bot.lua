--Make your own bot!

local botchats = {
   "This is a message you can edit!",
   "Hey, you can also edit this message!",
   "This bot will chat these messages randomly every set amount of time.",
   "Copy this line and paste it to have more messages available!",
   "Customise and enjoy!"
}

for i=1,10 do -- Change 10 to how many times you want to loop
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(botchats[math.random(1, #botchats)], "All")
wait(4) -- Change 4 to how long you want to wait between messages
end