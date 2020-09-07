-- Z for Murderer and X for Sheriff, Enjoy!
local er = false
local Mouse = game:GetService"Players".LocalPlayer:GetMouse()
local player = game.Players:GetChildren()
workspace.ChildAdded:connect(function(child)
if child.Name == "GunDrop" then
local cb = Instance.new("BindableFunction")
cb.OnInvoke = function(arg)
if arg == "Get gun!" then
workspace.GunDrop.CFrame = CFrame.new(game.Players.LocalPlayer.Character.Head.Position)
end
end
game:GetService("StarterGui"):SetCore("SendNotification",{
Title = "The sheriff has died!",
Text = "Grab their gun?",
Duration = 5,
Button1 = "Dismiss",
Button2 = "Get gun!",
Callback = cb
})
end
end)

Mouse.KeyDown:Connect(function(Key)
if Key == "x" then
for i=1,#player do
local USERID = game.Players:GetUserIdFromNameAsync(player[i].Name)
local gun = player[i].Backpack:FindFirstChild("Gun")
local revolver = player[i].Backpack:FindFirstChild("Revolver")
if gun ~= nil or revolver ~= nil then
game:GetService("StarterGui"):SetCore("SendNotification",{
Title = "Sheriff",
Text = "Their name is " .. player[i].Name .. "!",
Icon = "https://web.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&Format=Png&userid="..USERID,
Duration = 5,
Button1 = "Dismiss",
})
er = true
elseif gun == nil and revolver == nil and i == #player then
game:GetService("StarterGui"):SetCore("SendNotification",{
Title = "Sheriff",
Text = "No sheriff could be found!",
Duration = 5,
Button1 = "Dismiss",
})
end
if er then
er = false
break
end
end

elseif Key == "z" then
for i=1,#player do
local USERID = game.Players:GetUserIdFromNameAsync(player[i].Name)
local knife = player[i].Backpack:FindFirstChild("Knife")
if knife ~= nil then
game:GetService("StarterGui"):SetCore("SendNotification",{
Title = "Murderer",
Text = "Their name is " .. player[i].Name .. "!",
Icon = "https://web.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&Format=Png&userid="..USERID,
Duration = 5,
Button1 = "Dismiss",
})
er = true
elseif knife == nil and i == #player then
game:GetService("StarterGui"):SetCore("SendNotification",{
Title = "Murderer",
Text = "No murderer could be found!",
Duration = 5,
Button1 = "Dismiss",
})
end
if er then
er = false
break
end
end
end
end)