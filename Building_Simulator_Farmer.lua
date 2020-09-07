local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Events = ReplicatedStorage:WaitForChild("Events")
local PlaceBlueprint = Events.PlaceBlueprint
local HitBuild = Events.HitBuild
local Player = game.Players.LocalPlayer

--anti afk
local VirtualUser=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
VirtualUser:CaptureController()
VirtualUser:ClickButton2(Vector2.new())
end)

while wait() do
game.ReplicatedStorage.Values.ClickCooldown.Value = 0
game:GetService("ReplicatedStorage").Events.Rebirth:FireServer()
local unlocks = {"Table", "Whale", "Tank", "Roblox Sign", "Tower", "Gate", "Tower 2", "Complex", "Classic House", "Stronghold", "High Tower", "Doomspire Tower", "Roblox HQ", "Haynted Mansion", "Temple", "Ship", "Castle", "Church"}
for i=1, #unlocks do
	local a = unlocks[i]
game:GetService("ReplicatedStorage").Events.UnlockBlueprint:FireServer(a)
end
local highest
for i, v in ipairs(Player.PlayerDataFolder.Blueprints:GetChildren()) do
    if not highest or v.Value > highest.Value then
        highest = v
    end
end

local Arguments = {
        [1] = ReplicatedStorage.Blueprints[highest.Name],
        [2] = CFrame.new(-91.7295914,0.0500000007,79.6377182,1,0,0,0,1,0,0,0,1)
}
pcall(function()
PlaceBlueprint:FireServer(unpack(Arguments))

for _, Model in next, workspace.Builds:GetChildren() do 
if (Model.Owner and Model.Owner.Value == Player) then
while Model.HitPoints.Value < Model.HitPointsMax.Value do
HitBuild:FireServer(Model)
wait()
end
end
end
end)
end