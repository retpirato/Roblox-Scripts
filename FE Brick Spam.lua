for i=1,20 do
wait(1)
       for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v:IsA'Accoutrement' then
v.Parent=game.Players.LocalPlayer.Character
v.Parent = workspace.Terrain
end
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA'Accoutrement' then
for ape,hax in pairs(v.Handle:GetChildren()) do
hax:Destroy()
end
wait'.1'
v.Parent=game.Players.LocalPlayer.StarterGear
end
end
for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
v:Destroy()
end
local prt=Instance.new("Model", workspace);
       Instance.new("Part", prt).Name="Torso";
       Instance.new("Part", prt).Name="Head";
       Instance.new("Humanoid", prt).Name="Humanoid";
       game.Players.LocalPlayer.Character=prt

repeat wait(1) until game.Players.LocalPlayer.Character:FindFirstChild'Head'
for lol,dad in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if dad:IsA'Accoutrement' then
dad.Parent = game.Players.LocalPlayer.StarterGear
end
end
for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
v:Destroy()
end
local prt2=Instance.new("Model", workspace);
       Instance.new("Part", prt).Name="Torso";
       Instance.new("Part", prt).Name="Head";
       Instance.new("Humanoid", prt).Name="Humanoid";
       game.Players.LocalPlayer.Character=prt
end