for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
local a = game.ReplicatedStorage.Guns:FindFirstChild(v.Name)
a.Shotgun.Value = true
a.Burst.Value = true
a.AddSpread.Value = 0
a.StartSpread.Value = 0
a.Rate.Value = 1e-9
a.Auto.Value = true
local b = game.Players.LocalPlayer.Character:FindFirstChild(v.Name)
local c = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name)
if b then
b.Weapon.Spread.Value = 0
b.Weapon.Hit.Value = math.huge
elseif c then
c.Weapon.Spread.Value = 0
c.Weapon.Hit.Value = math.huge
end
local d = getsenv(game.Players.LocalPlayer.Backpack(v.Name).Weapon)
d['count'] = math.huge
end