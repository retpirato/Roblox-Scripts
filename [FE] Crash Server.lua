for i=1,270 do
local A_1 = "Water"
local A_2 = "N9TT-9G0A-B7FQ-RANC"
local Event = game:GetService("ReplicatedStorage").GiveTool
Event:FireServer(A_1, A_2)
wait()

local A_1 = "Fanta"
local A_2 = "N9TT-9G0A-B7FQ-RANC"
local Event = game:GetService("ReplicatedStorage").GiveTool
Event:FireServer(A_1, A_2)
wait()

local A_1 = "Charge"
local A_2 = "N9TT-9G0A-B7FQ-RANC"
local Event = game:GetService("ReplicatedStorage").GiveTool
Event:FireServer(A_1, A_2)
wait()

local A_1 = "Cola"
local A_2 = "N9TT-9G0A-B7FQ-RANC"
local Event = game:GetService("ReplicatedStorage").GiveTool
Event:FireServer(A_1, A_2)
wait()

local A_1 = "Surgic"
local A_2 = "N9TT-9G0A-B7FQ-RANC"
local Event = game:GetService("ReplicatedStorage").GiveTool
Event:FireServer(A_1, A_2)
wait()

local A_1 = "Sparkly"
local A_2 = "N9TT-9G0A-B7FQ-RANC"
local Event = game:GetService("ReplicatedStorage").GiveTool
Event:FireServer(A_1, A_2)
wait()

local A_1 = "Mtn Dew"
local A_2 = "N9TT-9G0A-B7FQ-RANC"
local Event = game:GetService("ReplicatedStorage").GiveTool
Event:FireServer(A_1, A_2)
wait()
end

for _,v in pairs(game.Players.LocalPlayer:GetChildren()) do
if (v:IsA("Tool")) then
v.Parent = game.Players.LocalPlayer.Backpack
end
end

for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
v.Parent = workspace.DanceArea.Floor.D5.Fade
end