amount_of_msgs = 3
for i          = 1, amount_of_msgs do
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(" ", "All")
end