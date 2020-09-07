sounds = {}

function getSounds(loc)
if loc:IsA("Sound") then
table.insert(sounds,loc)
end
for _,obj in pairs(loc:GetChildren()) do
getSounds(obj)
end
end

getSounds(game)

game.DescendantAdded:connect(function(obj)
if obj:IsA("Sound") then
table.insert(sounds,obj)
end
end)

while wait(0.2) do
for _,sound in pairs(sounds) do
pcall(function()
sound:Play()
end)
end
end