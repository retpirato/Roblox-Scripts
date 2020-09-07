-- Script by 7th#4115
game.StarterGui:SetCore("SendNotification", {
Title = "99999x Clicker";
Text = "Created by 7th#4115";
Duration = 10;
})
wait(1)
local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
if key == "z" then
a = 1
while(a<99999)do
game:GetService("ReplicatedStorage")["Events"]["SendTexts"]:FireServer("Phone")
a = a+1
end
else if key == "x" then
a = 1
while(a<99999)do
game:GetService("ReplicatedStorage")["Events"]["SendTexts"]:FireServer("Tablet")
a = a+1
end
else if key == "c" then
a = 1
while(a<99999)do
game:GetService("ReplicatedStorage")["Events"]["SendTexts"]:FireServer("Computer")
a = a+1
end
end
end
end
end)