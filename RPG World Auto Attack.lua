_G.on = true --make it false if you want turn off
if _G.on == false then
game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Status: OFF", Text = "Status OFF guys"})
else
game:GetService("StarterGui"):SetCore("SendNotification", {Title = "STATUS: ON", Text = "Have a nice day"})

while _G.on do
wait()
local plr = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
local remotes = "Click"
local fnc = 
{
}
local Event = game:GetService("ReplicatedStorage").Events.Npc
Event:FireServer(remotes, fnc)
for i, g in pairs(workspace["Areas"].Starter.NPCs:GetChildren()) do 
 if g.Name == "Villager" then
g.HumanoidRootPart.Anchored = true
plr.CFrame = g.HumanoidRootPart.CFrame
end
end
end
end