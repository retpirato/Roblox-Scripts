for i,v in pairs(game:GetDescendants()) do
if v.Name == "Detain" or v.Name == "Staff Card" then
game.ReplicatedStorage.getItem:FireServer(v)
end
end