-- Bypass
loadstring(game:HttpGet('https://pastebin.com/raw/1e12BgYP'))()


local ReplicatedStorage = game.ReplicatedStorage
local Remotes = ReplicatedStorage:WaitForChild("remotes")
local Player = game.Players.LocalPlayer

local Dungeon = workspace:WaitForChild("dungeon")

for i = 1, 200 do
local Spell = Player.Backpack:FindFirstChild("Whirlwind")

if (Spell) then
Spell.Parent = Player
Remotes.unequipItem:InvokeServer("ability", 4)
Remotes.equipItem:InvokeServer("ability", 4, "q")
end

local Spell2 = Player.Backpack:FindFirstChild("Battle Shout")

if (Spell2) then
Spell2.Parent = Player
Remotes.unequipItem:InvokeServer("ability", 13)
Remotes.equipItem:InvokeServer("ability", 13, "e")
end
end

for index, value in next, Player:GetChildren() do
if (value:IsA("Tool")) then
value.Parent = Player.Backpack
end
end

Remotes.changeStartValue:FireServer()

local AlreadyUsed = {}

spawn(function()
while wait() do
for index, value in next, Dungeon:GetDescendants() do
if (value:FindFirstChildOfClass("Humanoid") and value ~= Player.Character) then
local Root = value:FindFirstChild("HumanoidRootPart")
if (Root) then
Player.Character:MoveTo(Root.Position)
end
wait()
end
end
end
end)


spawn(function()
for loop = 1, 4 do

spawn(function()
local c = Player.Backpack:GetChildren()

for i = 1, 50 * loop do
if (not AlreadyUsed[c[i]] and c[i].abilitySlot.Value == "e") then
AlreadyUsed[c[i]] = true
c[i]:FindFirstChildWhichIsA("RemoteEvent"):FireServer()
end
end
end)

wait(8)
end
end)

for loop = 1, 20 do
spawn(function()
local c = Player.Backpack:GetChildren()
for i = 1, 10 * loop do
if (not AlreadyUsed[c[i]] and c[i].abilitySlot.Value == "q") then
AlreadyUsed[c[i]] = true
c[i]:FindFirstChildWhichIsA("RemoteEvent"):FireServer()
end
end
end)

wait(2)
end