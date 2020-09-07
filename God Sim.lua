_G.Area = "Oddwood" -- Change this to the location you want to farm. 'Farm' 'Residential' 'Oddwood'
_G.ShootCount = 10

local Event = game:GetService("ReplicatedStorage")["\240\159\148\165"]
local EntityList = require(game.ReplicatedStorage.Info.EntityList)
local Sell = workspace.Activation.EssenceReturn.Root
local Targets = workspace.DestructableObjects

local Player = game.Players.LocalPlayer
local Character = Player.Character

local Ability = Player.PlayerGui.MainGui.MainFrame.AbilityButtons.Ability1.aname

spawn(function()
while wait() do 
Sell.Position = Character.HumanoidRootPart.Position
end
end)

while wait() do
local c = Targets:GetChildren()
for i = 1, #c do
if (c[i]:FindFirstChild("ID") and c[i]:FindFirstChild("Alive")) then
if (c[i].Alive.Value == true) then
local EntityOnList = EntityList.Entitys[c[i].ID.Value]
if (EntityOnList and EntityOnList.area == _G.Area) then 
local Box = c[i]:FindFirstChild("BoundingBox")
if (Box) then
Character:MoveTo(Box.Position)
for i = 1, _G.ShootCount do
Event:FireServer("UseAbility", Character.Name, Ability.Text, Box.CFrame, Box)
end
wait()
end
end
end
end
end
end