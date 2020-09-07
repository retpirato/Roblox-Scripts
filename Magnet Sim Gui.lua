-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local shinypets = Instance.new("TextButton")
local farm = Instance.new("TextButton")
local notifications = Instance.new("TextButton")
local Autosell = Instance.new("TextButton")
local autorebirth = Instance.new("TextButton")
local openegg = Instance.new("TextButton")
local credits = Instance.new("TextButton")
local Openeggtab = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local openegg_2 = Instance.new("TextButton")
local TextButton = Instance.new("TextButton")
local creds = Instance.new("Frame")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")
local TextLabel_6 = Instance.new("TextLabel")
local TextButton_2 = Instance.new("TextButton")
--Properties:
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.new(0.14902, 0.145098, 0.133333)
Main.BorderColor3 = Color3.new(0, 0, 0)
Main.Position = UDim2.new(0.203416154, 0, 0.273865402, 0)
Main.Size = UDim2.new(0, 376, 0, 270)
Main.Active = true
Main.Draggable = true
 
TextLabel.Parent = Main
TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 376, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "MagnetFuck3r v1"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true
TextLabel.Active = true
 
shinypets.Name = "shiny pets"
shinypets.Parent = Main
shinypets.BackgroundColor3 = Color3.new(0, 0, 0)
shinypets.BorderSizePixel = 0
shinypets.Position = UDim2.new(0, 0, 0.722593784, 0)
shinypets.Size = UDim2.new(0, 75, 0, 74)
shinypets.Font = Enum.Font.SourceSans
shinypets.Text = "Make all pets shiny"
shinypets.TextColor3 = Color3.new(1, 1, 1)
shinypets.TextScaled = true
shinypets.TextSize = 14
shinypets.TextWrapped = true
shinypets.MouseButton1Down:connect(function()
_G.shiny = true
local Shinys = {"Three-Headed Demon",   "Mad Demon",   "Fallen Bird",   "Demonic Bird",   "Cat Demon",   "Golden Dominus",   "Space Dominus",   "Flame Dominus",   "Frost Dominus",   "Spirit Dominus",   "Super Bear",   "Bat Bear",   "Flashy Bear",   "Storm Bear",   "Captain Bear",   "Cursed Wolf",   "Angel Wolf",   "Sanic",   "Ogre",   "Nyan Cat",   "Doge",   "MLG Bear",   "Rich Bear",   "Noob",   "Fancy Bear",   "Ice Wolf",   "Ghost Wolf",   "Galaxy Wolf",   "Galaxy Bear",   "Spirit Bear",   "Moon Bear",   "Crystal Fox",   "Magnetite Wolf",   "Winged Overseer",   "Overseer Wolf",   "Wizard Overseer",   "Three-Headed Overseer",   "Overseer Overlord",   "Praefectus Overseer"}
while _G.shiny do
wait(0.1)
for i = 1,#Shinys do
wait()
game.ReplicatedStorage.ShinyEvents.requestMakeShiny:FireServer(Shinys[i])
end
end
end)
 
farm.Name = "farm"
farm.Parent = Main
farm.BackgroundColor3 = Color3.new(0, 0, 0)
farm.BorderSizePixel = 0
farm.Position = UDim2.new(0, 0, 0.184622854, 0)
farm.Size = UDim2.new(0, 75, 0, 74)
farm.Font = Enum.Font.SourceSans
farm.Text = "Make your backpack full everytime"
farm.TextColor3 = Color3.new(1, 1, 1)
farm.TextScaled = true
farm.TextSize = 14
farm.TextWrapped = true
farm.MouseButton1Down:connect(function()
local r = game:GetService('ReplicatedStorage').Events.MagnetEvents['requestGrab']
local rs = game:GetService('RunService').RenderStepped
 
tool = "Dark-Matter Dual Magnet"
while rs:wait() do
for i = 1,10 do
r:FireServer("7", game.ReplicatedStorage.Tools[tool])
end
end
end)
notifications.Name = "notifications"
notifications.Parent = Main
notifications.BackgroundColor3 = Color3.new(0, 0, 0)
notifications.BorderSizePixel = 0
notifications.Position = UDim2.new(0.798016071, 0, 0.179630786, 0)
notifications.Size = UDim2.new(0, 75, 0, 74)
notifications.Font = Enum.Font.SourceSans
notifications.Text = "Remove  annoying notifications (Coins, etc.)"
notifications.TextColor3 = Color3.new(1, 1, 1)
notifications.TextScaled = true
notifications.TextSize = 14
notifications.TextWrapped = true
notifications.MouseButton1Down:connect(function()
local plr = game:GetService("Players").LocalPlayer
local screengui = plr.PlayerGui.GameHUD
screengui.EggHandler.Disabled = true
screengui.Notifications.Handler.Disabled = true
screengui.FullBackpack.Handler.Disabled = true
end)
 
Autosell.Name = "Auto sell"
Autosell.Parent = Main
Autosell.BackgroundColor3 = Color3.new(0, 0, 0)
Autosell.BorderSizePixel = 0
Autosell.Position = UDim2.new(0.19815512, 0, 0.448519677, 0)
Autosell.Size = UDim2.new(0, 75, 0, 74)
Autosell.Font = Enum.Font.SourceSans
Autosell.Text = "Auto-sell"
Autosell.TextColor3 = Color3.new(1, 1, 1)
Autosell.TextScaled = true
Autosell.TextSize = 14
Autosell.TextWrapped = true
Autosell.MouseButton1Down:connect(function()
_G.on = true
local plr = game.Players.LocalPlayer
local char = plr.Character.HumanoidRootPart
 
while _G.on do
game.Workspace.Rings.Sellx2.CanCollide = false
game.Workspace.Rings.Sellx2.Transparency = 1
game.Workspace.Rings.Sellx2.CFrame = char.CFrame + Vector3.new(0,math.random(-1,1),0)
wait(0.1)
end
end)
 
autorebirth.Name = "auto rebirth"
autorebirth.Parent = Main
autorebirth.BackgroundColor3 = Color3.new(0, 0, 0)
autorebirth.BorderSizePixel = 0
autorebirth.Position = UDim2.new(0.797905982, 0, 0.722593784, 0)
autorebirth.Size = UDim2.new(0, 75, 0, 74)
autorebirth.Font = Enum.Font.SourceSans
autorebirth.Text = "Auto rebirth (be careful)"
autorebirth.TextColor3 = Color3.new(1, 1, 1)
autorebirth.TextScaled = true
autorebirth.TextSize = 14
autorebirth.TextWrapped = true
autorebirth.MouseButton1Down:connect(function()
_G.Rebirths = true
while _G.rebirths do
wait()
local Rebirths = 1000 --1000, 500, 250, 100, 50, 25, 5 and 1
game:GetService("ReplicatedStorage").RebirthEvents.requestRebirth:FireServer(Rebirths)
end
end)
 
openegg.Name = "open egg"
openegg.Parent = Main
openegg.BackgroundColor3 = Color3.new(0, 0, 0)
openegg.BorderSizePixel = 0
openegg.Position = UDim2.new(0.597091317, 0, 0.455927074, 0)
openegg.Size = UDim2.new(0, 75, 0, 74)
openegg.Font = Enum.Font.SourceSans
openegg.Text = "Open any egg (another tab)"
openegg.TextColor3 = Color3.new(1, 1, 1)
openegg.TextScaled = true
openegg.TextSize = 14
openegg.TextWrapped = true
openegg.MouseButton1Click:connect(function()
    Openeggtab.Visible = true
end)
 
credits.Name = "credits"
credits.Parent = Main
credits.BackgroundColor3 = Color3.new(0, 0, 0)
credits.BorderSizePixel = 0
credits.Position = UDim2.new(0.397623181, 0, 0.178149402, 0)
credits.Size = UDim2.new(0, 75, 0, 28)
credits.Font = Enum.Font.SourceSans
credits.Text = "CREDITS"
credits.TextColor3 = Color3.new(1, 1, 1)
credits.TextScaled = true
credits.TextSize = 14
credits.TextWrapped = true
credits.MouseButton1Click:connect(function()
    creds.Visible = true
end)
 
Openeggtab.Name = "Open egg tab"
Openeggtab.Parent = ScreenGui
Openeggtab.BackgroundColor3 = Color3.new(0.14902, 0.145098, 0.133333)
Openeggtab.BorderColor3 = Color3.new(0, 0, 0)
Openeggtab.Position = UDim2.new(0.349378884, 0, 0.674920797, 0)
Openeggtab.Size = UDim2.new(0, 282, 0, 174)
Openeggtab.Visible = false
 
TextLabel_2.Parent = Openeggtab
TextLabel_2.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Size = UDim2.new(0, 282, 0, 50)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "MagnetFuck3r v1 open egg"
TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14
TextLabel_2.TextWrapped = true
 
openegg_2.Name = "open egg"
openegg_2.Parent = Openeggtab
openegg_2.BackgroundColor3 = Color3.new(0.168627, 0.168627, 0.168627)
openegg_2.BorderSizePixel = 0
openegg_2.Position = UDim2.new(-0.00219943002, 0, 0.283513218, 0)
openegg_2.Size = UDim2.new(0, 282, 0, 124)
openegg_2.Font = Enum.Font.SourceSans
openegg_2.Text = "IN DEVELOPMENT!"
openegg_2.TextColor3 = Color3.new(1, 1, 1)
openegg_2.TextScaled = true
openegg_2.TextSize = 14
openegg_2.TextWrapped = true
 
TextButton.Parent = Openeggtab
TextButton.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton.Position = UDim2.new(0.804964542, 0, -0.242807791, 0)
TextButton.Size = UDim2.new(0, 55, 0, 42)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "CLOSE"
TextButton.TextColor3 = Color3.new(1, 1, 1)
TextButton.TextScaled = true
TextButton.TextSize = 14
TextButton.TextWrapped = true
TextButton.MouseButton1Click:connect(function()
    Openeggtab.Visible = false
end)
 
creds.Name = "creds"
creds.Parent = ScreenGui
creds.BackgroundColor3 = Color3.new(0.14902, 0.145098, 0.133333)
creds.BorderColor3 = Color3.new(0, 0, 0)
creds.Position = UDim2.new(0.434782594, 0, 0.205263868, 0)
creds.Size = UDim2.new(0, 282, 0, 173)
 
TextLabel_3.Parent = creds
TextLabel_3.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(-1.1920929e-07, 0, -0.00574702024, 0)
TextLabel_3.Size = UDim2.new(0, 282, 0, 50)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "MagnetFuck3r v1 Credits"
TextLabel_3.TextColor3 = Color3.new(1, 1, 1)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14
TextLabel_3.TextWrapped = true
 
TextLabel_4.Parent = creds
TextLabel_4.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_4.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_4.Position = UDim2.new(0, 0, 0.293103546, 0)
TextLabel_4.Size = UDim2.new(0, 282, 0, 40)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "thats oof#3643 for making the gui. "
TextLabel_4.TextColor3 = Color3.new(1, 1, 1)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 30
TextLabel_4.TextWrapped = true
 
TextLabel_5.Parent = creds
TextLabel_5.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_5.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_5.Position = UDim2.new(0, 0, 0.522988558, 0)
TextLabel_5.Size = UDim2.new(0, 282, 0, 37)
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.Text = "iTzSadButNotRad on v3rm for scripts"
TextLabel_5.TextColor3 = Color3.new(1, 1, 1)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 30
TextLabel_5.TextWrapped = true
 
TextLabel_6.Parent = creds
TextLabel_6.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_6.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_6.Position = UDim2.new(-0.00354609918, 0, 0.7356323, 0)
TextLabel_6.Size = UDim2.new(0, 282, 0, 45)
TextLabel_6.Font = Enum.Font.SourceSans
TextLabel_6.Text = "AdamRoots on v3rm for posting the gui."
TextLabel_6.TextColor3 = Color3.new(1, 1, 1)
TextLabel_6.TextScaled = true
TextLabel_6.TextSize = 30
TextLabel_6.TextWrapped = true
 
TextButton_2.Parent = creds
TextButton_2.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton_2.Position = UDim2.new(0.804964542, 0, -0.248554915, 0)
TextButton_2.Size = UDim2.new(0, 55, 0, 42)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "CLOSE"
TextButton_2.TextColor3 = Color3.new(1, 1, 1)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14
TextButton_2.TextWrapped = true
TextButton_2.MouseButton1Click:connect(function()
    creds.Visible = false
end)
-- Scripts: