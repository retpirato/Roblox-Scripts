wait(0.2)



local NewGuiPart1 = Instance.new("ScreenGui", game.CoreGui)

-------
local NewGuiPart2 = Instance.new("Frame")
NewGuiPart2.BorderColor3 = Color3.new(0.509804, 0.796079, 1)
NewGuiPart2.BorderSizePixel = 3
NewGuiPart2.Position = UDim2.new(0.0943536386, 0, 0.0755555332, 0)
NewGuiPart2.Size = UDim2.new(0, 143, 0, 299)
NewGuiPart2.Style = Enum.FrameStyle.ChatBlue
NewGuiPart2.Parent = NewGuiPart1
-------
local tp = Instance.new("TextButton")
tp.Active = true
tp.BorderColor3 = Color3.new(0.45098, 0.701961, 0.882353)
tp.Name = "Tp"
tp.Position = UDim2.new(-0.139860138, 0, -0.0635451525, 0)
tp.Selectable = true
tp.Size = UDim2.new(0, 143, 0, 58)
tp.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
tp.FontSize = Enum.FontSize.Size14
tp.Text = "Tp to any spawned item."
tp.TextScaled = true
tp.TextWrapped = true
tp.Parent = NewGuiPart2
-------
wait(0.2)
local Fast = Instance.new("TextButton")
Fast.Active = true
Fast.BackgroundColor3 = Color3.new(0.854902, 0.843137, 1)
Fast.BorderColor3 = Color3.new(0.882353, 0.882353, 0.882353)
Fast.Name = "Fast"
Fast.Position = UDim2.new(-0.146853149, 0, 0.846153796, 0)
Fast.Selectable = true
Fast.Size = UDim2.new(0, 138, 0, 58)
Fast.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
Fast.FontSize = Enum.FontSize.Size14
Fast.Text = "Fast Punch"
Fast.TextScaled = true
Fast.TextWrapped = true
Fast.Parent = NewGuiPart2
-------
local Door = Instance.new("TextButton")
Door.Active = true
Door.BackgroundColor3 = Color3.new(0.854902, 0.843137, 1)
Door.BorderColor3 = Color3.new(0.882353, 0.882353, 0.882353)
Door.Name = "Door"
Door.Position = UDim2.new(-0.132867113, 0, 0.585284233, 0)
Door.Selectable = true
Door.Size = UDim2.new(0, 138, 0, 58)
Door.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
Door.FontSize = Enum.FontSize.Size14
Door.Text = "Open Door press p to enable"
Door.TextScaled = true
Door.TextWrapped = true
Door.Parent = NewGuiPart2
-------
wait(0.2)
local Set = Instance.new("TextLabel")
Set.BorderSizePixel = 5
Set.Position = UDim2.new(-0.0944055915, 0, 0.428093642, 0)
Set.Size = UDim2.new(0, 133, 0, 40)
Set.FontSize = Enum.FontSize.Size14
Set.Text = "Please Enter Animation Id"
Set.TextScaled = true
Set.TextWrapped = true
Set.Parent = NewGuiPart2
-------
local Walk = Instance.new("TextButton")
Walk.Active = true
Walk.BackgroundColor3 = Color3.new(0.854902, 0.843137, 1)
Walk.BorderColor3 = Color3.new(0.882353, 0.882353, 0.882353)
Walk.Name = "Walk"
Walk.Position = UDim2.new(-0.132867113, 0, 0.163879544, 0)
Walk.Selectable = true
Walk.Size = UDim2.new(0, 138, 0, 58)
Walk.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
Walk.FontSize = Enum.FontSize.Size14
Walk.Text = "Set Animation Walk"
Walk.TextScaled = true
Walk.TextWrapped = true
Walk.Parent = NewGuiPart2
wait(0.2)
tp.MouseButton1Down:connect(function(item)
for i,v in pairs(game.Workspace.RandomSpawner:GetChildren()) do

if v ~= nil then
print("nothin")
end
if v then
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame * CFrame.new(0,0,0)
wait(0.7)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame * CFrame.new(0,1,0)
end
end
end)

wait(0.2)
Fast.MouseButton1Down:connect(function(punch)
local player = game.Players.LocalPlayer
player.Backpack:WaitForChild("Punch").Info.Cooldown.Value = 0.01
player.Backpack.Punch.Info.AnimSpeed.Value = 5
end)


Door.MouseButton1Down:connect(function(lock)
mouse = game.Players.LocalPlayer:getMouse()
toggled = false
mouse.KeyDown:connect(function(k)
if k:lower() == "p" then
toggled = not toggled
print("toggle: " .. tostring(toggled))
end
end)
mouse.Button1Down:connect(function()
if toggled == true then
if mouse.Target ~= nil then
if mouse.Target.Name == "Click" then
local a, b = pcall(function()
if mouse.Target.Parent:findFirstChild("Locker") then
if mouse.Target.Parent:findFirstChild("Locker").className == "BoolValue" then
if mouse.Target.Parent:findFirstChild("Locker").Value == true then
mouse.Target.Parent.Lock.ClickDetector.RemoteEvent:FireServer()
wait(.1)
mouse.Target.ClickDetector.RemoteEvent:FireServer()
else
warn("door is unlocked (lol)")
end
end
end
end)
if not a then
warn(b)
end
end
end
end
end)
end)
wait(0.2)
game.Players.LocalPlayer.Chatted:connect(function(msg)
if msg == "exitgui" then
game.CoreGui.ScreenGui:Remove()
end
end)