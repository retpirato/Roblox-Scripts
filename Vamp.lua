local vh2 = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local bar3 = Instance.new("Frame")
local bar = Instance.new("Frame")
local title = Instance.new("TextLabel")
local bar2 = Instance.new("Frame")
local godmode = Instance.new("TextButton")
local exploitgun = Instance.new("TextButton")
local morphines = Instance.new("TextButton")
local infinitecr = Instance.new("TextButton")
local exit = Instance.new("TextButton")

vh2.Name = "vh2"
vh2.Parent = game.CoreGui

Frame.Parent = vh2
Frame.Active = true
Frame.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
Frame.Position = UDim2.new(0, 0, 0.185458362, 0)
Frame.Size = UDim2.new(0, 294, 0, 309)
Frame.Active = true
Frame.Draggable = true

bar3.Name = "bar3"
bar3.Parent = Frame
bar3.BackgroundColor3 = Color3.new(0.666667, 0, 0)
bar3.Position = UDim2.new(0, 0, 0.954692543, 0)
bar3.Size = UDim2.new(0, 294, 0, 6)

bar.Name = "bar"
bar.Parent = Frame
bar.Active = true
bar.BackgroundColor3 = Color3.new(0.666667, 0, 0)
bar.Position = UDim2.new(0, 0, 0.0201093554, 0)
bar.Size = UDim2.new(0, 294, 0, 21)

title.Archivable = false
title.Name = "title"
title.Parent = bar
title.Active = true
title.BackgroundColor3 = Color3.new(1, 1, 1)
title.BackgroundTransparency = 1
title.Position = UDim2.new(0.159863949, 0, 0, 0)
title.Size = UDim2.new(0, 200, 0, 21)
title.Font = Enum.Font.SourceSansBold
title.Text = "Zuiiv"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextSize = 30

bar2.Name = "bar2"
bar2.Parent = Frame
bar2.BackgroundColor3 = Color3.new(0.666667, 0, 0)
bar2.Position = UDim2.new(0, 0, 0.974110007, 0)
bar2.Size = UDim2.new(0, 294, 0, 10)

godmode.Name = "godmode"
godmode.Parent = Frame
godmode.Active = false
godmode.BackgroundColor3 = Color3.new(0.666667, 0, 0)
godmode.Position = UDim2.new(0.159863949, 0, 0.142394826, 0)
godmode.Size = UDim2.new(0, 200, 0, 50)
godmode.Font = Enum.Font.SourceSansBold
godmode.Text = "Godmode"
godmode.TextColor3 = Color3.new(1, 1, 1)
godmode.TextSize = 35
godmode.TextTransparency = -1
godmode.MouseButton1Click:connect(function()
   game.Workspace.Events.ChangeHealth:FireServer("999999999999999999999999999999")
end)
exploitgun.Name = "exploitgun"
exploitgun.Parent = Frame
exploitgun.Active = false
exploitgun.BackgroundColor3 = Color3.new(0.666667, 0, 0)
exploitgun.Position = UDim2.new(0.159863949, 0, 0.326860845, 0)
exploitgun.Size = UDim2.new(0, 200, 0, 50)
exploitgun.Font = Enum.Font.SourceSansBold
exploitgun.Text = "Exploit Gun"
exploitgun.TextColor3 = Color3.new(1, 1, 1)
exploitgun.TextSize = 35
exploitgun.TextTransparency = -1
exploitgun.MouseButton1Click:connect(function()
   game.Workspace.Events.GiveGear:FireServer(game.ReplicatedStorage.SC.Dete["Lightning"])
end)
morphines.Name = "morphines"
morphines.Parent = Frame
morphines.Active = false
morphines.BackgroundColor3 = Color3.new(0.666667, 0, 0)
morphines.Position = UDim2.new(0.159863949, 0, 0.508090615, 0)
morphines.Size = UDim2.new(0, 200, 0, 50)
morphines.Font = Enum.Font.SourceSansBold
morphines.Text = "Morphines"
morphines.TextColor3 = Color3.new(1, 1, 1)
morphines.TextSize = 35
morphines.TextTransparency = -1
morphines.MouseButton1Click:connect(function()
   workspace.Events.GiveGear:FireServer(game.ReplicatedStorage.Store.Sabils.Morphine.Gear, 10)
end)
infinitecr.Name = "infinitecr"
infinitecr.Parent = Frame
infinitecr.Active = false
infinitecr.BackgroundColor3 = Color3.new(0.666667, 0, 0)
infinitecr.Position = UDim2.new(0.159863949, 0, 0.692556679, 0)
infinitecr.Size = UDim2.new(0, 200, 0, 50)
infinitecr.Font = Enum.Font.SourceSansBold
infinitecr.Text = "InfiniteCR"
infinitecr.TextColor3 = Color3.new(1, 1, 1)
infinitecr.TextSize = 35
infinitecr.TextTransparency = -1
infinitecr.MouseButton1Click:connect(function()
   game.Workspace.Events.GiveCR:FireServer(999999)
end)
exit.Name = "exit"
exit.Parent = Frame
exit.BackgroundColor3 = Color3.new(1, 1, 1)
exit.BackgroundTransparency = 1
exit.Position = UDim2.new(0.897959173, 0, 0.0201093554, 0)
exit.Size = UDim2.new(0, 30, 0, 21)
exit.Font = Enum.Font.SourceSansBold
exit.Text = "X"
exit.TextColor3 = Color3.new(1, 1, 1)
exit.TextSize = 30
exit.TextStrokeTransparency = 1000
exit.TextWrapped = true
exit.MouseButton1Click:connect(function()
   vh2:Destroy()
end)