banned = {"NAMEHERE","OtherPerson"} 
for i,j in pairs(game.Players:GetPlayers()) do 
for x,y in pairs(banned) do 
if string.find(string.lower(j.Name),string.lower(y)) then 
j:remove() 
end end end 
game.Players.PlayerAdded:connect(function(goodguy9618) 
for x,y in pairs(banned) do 
if string.find(string.lower(plr.goodguy9618),string.lower(y)) then 
prl:remove() 
end end end) 
local m = Instance.new("Hint") 
m.Text = "Banning Script Loaded" 
m.Parent = game.Workspace

--[[ Place the names of the people you want to be removed in the "banned" table.
Each name should be contained in quotes, and seperated by a comma.

People's names can be partial, and they don't need to be capitalized.
This will help if there is, say... xXSomeDudeRuiningSBXx3182980. 
You could include: "SomeDude", and the person would be removed.
]]