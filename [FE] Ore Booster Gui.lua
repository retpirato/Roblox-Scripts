print("Miners Haven Ore Booster GUI created by LeviTheOtaku @v3rm")
print("Thanks for buying the special unobfuscated version!")
print("ples don't leak this since you bought the unobfuscated version lol")

local OreBoostGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local MineName = Instance.new("TextBox")
local OreBoostButton = Instance.new("TextButton")
local AutoRebirthButton = Instance.new("TextButton")
local AutoLoadout1Button = Instance.new("TextButton")

OreBoostGui.Name = "OreBoostGui"
OreBoostGui.Parent = game.CoreGui

MainFrame.Name = "MainFrame"
MainFrame.Parent = OreBoostGui
MainFrame.BackgroundColor3 = Color3.new(1, 1, 1)
MainFrame.BorderSizePixel = 0
MainFrame.Size = UDim2.new(0.100000001, 0, 0.200000003, 0)
MainFrame.Active = true
MainFrame.Draggable = true

MineName.Name = "MineName"
MineName.Parent = MainFrame
MineName.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
MineName.BorderSizePixel = 0
MineName.Size = UDim2.new(1, 0, 0.300000012, 0)
MineName.FontSize = Enum.FontSize.Size14
MineName.Text = "Basic Iron Mine"
MineName.TextColor3 = Color3.new(0, 0.156863, 0.596078)
MineName.TextScaled = true
MineName.TextSize = 14
MineName.TextWrapped = true

OreBoostButton.Name = "OreBoostButton"
OreBoostButton.Parent = MainFrame
OreBoostButton.BackgroundColor3 = Color3.new(0.862745, 0.862745, 0.862745)
OreBoostButton.BorderSizePixel = 0
OreBoostButton.Position = UDim2.new(0, 0, 0.300000012, 0)
OreBoostButton.Size = UDim2.new(1, 0, 0.200000003, 0)
OreBoostButton.FontSize = Enum.FontSize.Size14
OreBoostButton.Text = "Ore Boost: OFF"
OreBoostButton.TextScaled = true
OreBoostButton.TextSize = 14
OreBoostButton.TextWrapped = true

AutoRebirthButton.Name = "AutoRebirthButton"
AutoRebirthButton.Parent = MainFrame
AutoRebirthButton.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
AutoRebirthButton.BorderSizePixel = 0
AutoRebirthButton.Position = UDim2.new(0, 0, 0.600000024, 0)
AutoRebirthButton.Size = UDim2.new(1, 0, 0.200000003, 0)
AutoRebirthButton.FontSize = Enum.FontSize.Size14
AutoRebirthButton.Text = "Auto Rebirth: OFF"
AutoRebirthButton.TextScaled = true
AutoRebirthButton.TextSize = 14
AutoRebirthButton.TextWrapped = true

AutoLoadout1Button.Name = "AutoLoadout1Button"
AutoLoadout1Button.Parent = MainFrame
AutoLoadout1Button.BackgroundColor3 = Color3.new(0.862745, 0.862745, 0.862745)
AutoLoadout1Button.BorderSizePixel = 0
AutoLoadout1Button.Position = UDim2.new(0, 0, 0.800000012, 0)
AutoLoadout1Button.Size = UDim2.new(1, 0, 0.200000003, 0)
AutoLoadout1Button.FontSize = Enum.FontSize.Size14
AutoLoadout1Button.Text = "Auto Loadout 1: OFF"
AutoLoadout1Button.TextScaled = true
AutoLoadout1Button.TextSize = 14
AutoLoadout1Button.TextWrapped = true

local autoloadout1 = false
AutoLoadout1Button.MouseButton1Down:connect(function()
if autoloadout1 == false then
autoloadout1 = true
AutoLoadout1Button.Text = "Auto Loadout 1: ON"
else
autoloadout1 = false
AutoLoadout1Button.Text = "Auto Loadout 1: OFF"
end
end)

local autorebirth = false
AutoRebirthButton.MouseButton1Down:connect(function()
if autorebirth == false then
autorebirth = true
AutoRebirthButton.Text = "Auto Rebirth 1: ON"
else
autorebirth = false
AutoRebirthButton.Text = "Auto Rebirth 1: OFF"
end
end)

spawn(function()
while true do
wait()
if autoloadout1 == true then
game.Players.LocalPlayer.PlayerGui.GUI.Menu.Menu.Sounds.Message.Volume = 0
game.Players.LocalPlayer.PlayerGui.GUI.Notifications.Visible = false
game.ReplicatedStorage.Layouts:InvokeServer("Load","Layout1")
else
game.Players.LocalPlayer.PlayerGui.GUI.Menu.Menu.Sounds.Message.Volume = 0.5
game.Players.LocalPlayer.PlayerGui.GUI.Notifications.Visible = true
end
end
end)

spawn(function()
while true do
wait()
if autorebirth == true then
game.ReplicatedStorage.Rebirth:InvokeServer()
end
end
end)


local oreboost = false
OreBoostButton.MouseButton1Down:connect(function()
if oreboost == false then
oreboost = true
OreBoostButton.Text = "Ore Boost: ON"
else
oreboost = false
OreBoostButton.Text = "Ore Boost: OFF"
end
end)


spawn(function()
while true do
wait()
if oreboost == true then
local tyc = workspace.Tycoons:GetChildren()
for i=1,#tyc do
local basepart = tyc[i]:GetChildren()
for i=1,#basepart do
if basepart[i].ClassName == "Model" then
if basepart[i].Model:findFirstChild("Upgrade") then
if basepart[i].Model.Upgrade:findFirstChild("Cloned") then
else
local decoy = basepart[i].Model.Upgrade:Clone()
decoy.Parent = basepart[i].Model
decoy.Name = "UpgradeDecoy"
local tag = Instance.new("StringValue",basepart[i].Model.Upgrade)
tag.Name = "Cloned"
local deco = basepart[i].Model.Upgrade:GetChildren()
for i=1,#deco do
if deco[i].ClassName == "ParticleEmitter" then
deco[i]:remove()
end
if deco[i].Name == "Mesh" then
deco[i]:remove()
end
if deco[i].Name == "Smoke" then
deco[i]:remove()
end
if deco[i].Name == "Fire" then
deco[i]:remove()
end
end
if basepart[i].Model.Upgrade:findFirstChild("Error") then
basepart[i].Model.Upgrade.Error.Volume = 0
end
basepart[i].Model.Upgrade.Transparency = 1
basepart[i].Model.Upgrade.Size = Vector3.new(5,5,5)
basepart[i].Model.Upgrade.CFrame = CFrame.new(workspace.Tycoons[tostring(game.Players.LocalPlayer.PlayerTycoon.Value)][MineName.Text].Model.Drop.Position)
end
end
end
end
end
end
end
end)