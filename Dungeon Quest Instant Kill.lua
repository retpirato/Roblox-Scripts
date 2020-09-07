-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local Dungeon = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local walkspeed = Instance.new("TextButton")
local onehit1 = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local close = Instance.new("TextButton")
local noclip = Instance.new("TextButton")
local onehit2 = Instance.new("TextButton")
--Properties:
Dungeon.Name = "Dungeon"
Dungeon.Parent = game.CoreGui
Dungeon.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = Dungeon
main.BackgroundColor3 = Color3.new(0.301961, 0.301961, 0.301961)
main.Position = UDim2.new(0.0190677941, 0, 0.475968987, 0)
main.Size = UDim2.new(0, 206, 0, 213)

walkspeed.Name = "walkspeed"
walkspeed.Parent = main
walkspeed.BackgroundColor3 = Color3.new(0, 0, 1)
walkspeed.Position = UDim2.new(0.126213595, 0, 0.164319247, 0)
walkspeed.Size = UDim2.new(0, 160, 0, 21)
walkspeed.Font = Enum.Font.SourceSans
walkspeed.Text = "Walk Speed"
walkspeed.TextColor3 = Color3.new(0, 0, 0)
walkspeed.TextSize = 14
walkspeed.MouseButton1Down:connect(function()
game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 50
end)

onehit1.Name = "onehit1"
onehit1.Parent = main
onehit1.BackgroundColor3 = Color3.new(0, 0, 1)
onehit1.Position = UDim2.new(0.121359229, 0, 0.507042289, 0)
onehit1.Size = UDim2.new(0, 160, 0, 22)
onehit1.Font = Enum.Font.SourceSans
onehit1.Text = "One Hit Samurai"
onehit1.TextColor3 = Color3.new(0, 0, 0)
onehit1.TextSize = 14
onehit1.MouseButton1Down:connect(function()
local name = "Samurai Swordsman";
local function Modify(part)
    part.Head:Destroy()
end
 
local function recursive(obj)
    for _, child in pairs(obj:GetChildren()) do
        if (child.Name == name) then
            Modify(child);
        end
        recursive(child);
    end
end
recursive(workspace);	
end)

TextLabel.Parent = main
TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel.Position = UDim2.new(-0.0376067311, 0, -0.0614352711, 0)
TextLabel.Size = UDim2.new(0, 221, 0, 35)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Dungeon Quest Gui's"
TextLabel.TextColor3 = Color3.new(1, 0, 0)
TextLabel.TextSize = 14

TextLabel_2.Parent = TextLabel
TextLabel_2.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_2.Position = UDim2.new(-0.00125388801, 0, 5.68571472, 0)
TextLabel_2.Size = UDim2.new(0, 221, 0, 33)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Gui By Ki?t Lewis"
TextLabel_2.TextColor3 = Color3.new(1, 0, 0)
TextLabel_2.TextSize = 14

close.Name = "close"
close.Parent = TextLabel_2
close.BackgroundColor3 = Color3.new(1, 1, 1)
close.Position = UDim2.new(0.87378639, 0, -5.75032043, 0)
close.Size = UDim2.new(0, 20, 0, 17)
close.Font = Enum.Font.SourceSans
close.Text = "X"
close.TextColor3 = Color3.new(0, 0, 0)
close.TextSize = 14

noclip.Name = "noclip"
noclip.Parent = main
noclip.BackgroundColor3 = Color3.new(0, 0, 1)
noclip.Position = UDim2.new(0.121359222, 0, 0.671361506, 0)
noclip.Size = UDim2.new(0, 161, 0, 24)
noclip.Font = Enum.Font.SourceSans
noclip.Text = "Noclip"
noclip.TextColor3 = Color3.new(0, 0, 0)
noclip.TextSize = 14
noclip.MouseButton1Down:connect(function()
noclip = true
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
 
if key == "o" then
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
print('Thanks for Use')
print('Thanks very much')
end)

onehit2.Name = "onehit2"
onehit2.Parent = main
onehit2.BackgroundColor3 = Color3.new(0, 0, 1)
onehit2.Position = UDim2.new(0.121359222, 0, 0.328236043, 0)
onehit2.Size = UDim2.new(0, 161, 0, 24)
onehit2.Font = Enum.Font.SourceSans
onehit2.Text = "One Hit Shuriken"
onehit2.TextColor3 = Color3.new(0, 0, 0)
onehit2.TextSize = 14
onehit2.MouseButton1Down:connect(function()
local nama = "Shuriken Thrower";
local function Modify(part)
    part.Head:Destroy()
end
 
local function recursive(obj)
    for _, child in pairs(obj:GetChildren()) do
        if (child.Name == nama) then
            Modify(child);
        end
        recursive(child);
    end
end
recursive(workspace);
 
end)
-- Scripts: