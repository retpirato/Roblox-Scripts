-- UPDATE 22

-- still works as of 03/22/2019
-- if it breaks (you see the boss dead on the ground with health) then rejoin no fixing that.

-- slaying simulator https://www.roblox.com/games/2616498302/6M-Slaying-Simulator#!/game-instances

-- initial variables
hum = game.Players.LocalPlayer.Character.HumanoidRootPart
thePlayer = game.Players.LocalPlayer.Character

-- Objects

local ScreenGui = Instance.new("ScreenGui")
local GUI = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Credits = Instance.new("TextLabel")
local SwordAttack= Instance.new("TextButton")
local SwordAttackNo = Instance.new("TextButton")

-- Properties

modifier = false

ScreenGui.Parent = game.CoreGui

GUI.Name = "GUI"
GUI.Parent = ScreenGui
GUI.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
GUI.BorderColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
GUI.BorderSizePixel = 0
GUI.Position = UDim2.new(0, 0, 0.730039531, 0)
GUI.Size = UDim2.new(0, 316, 0, 339)
GUI.Style = Enum.FrameStyle.RobloxRound

Title.Name = "Title"
Title.Parent = GUI
Title.Active = true
Title.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
Title.Position = UDim2.new(0.114720426, 0, 0.00523944944, 0)
Title.Size = UDim2.new(0, 200, 0, 50)
Title.Font = Enum.Font.SourceSans
Title.Text = "Slaying Simulator GUI"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextSize = 14

SwordAttack.Name = "SwordAttack"
SwordAttack.Parent = GUI
SwordAttack.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
SwordAttack.Position = UDim2.new(0.114720426, 0, 0.233038351, 0)
SwordAttack.Size = UDim2.new(0, 200, 0, 50)
SwordAttack.Font = Enum.Font.SourceSans
SwordAttack.Text = "Spam tp/One Hitt Boss"
SwordAttack.TextColor3 = Color3.new(1, 1, 1)
SwordAttack.TextSize = 14
SwordAttack.MouseButton1Down:connect(function()

if modifier == true then
modifier = false
SwordAttack.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
else
modifier = true
SwordAttack.BackgroundColor3 = Color3.new(40, 127, 71)
kill()
end
end)

SwordAttackNo.Name = "SwordAttackNo"
SwordAttackNo.Parent = GUI
SwordAttackNo.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
SwordAttackNo.Position = UDim2.new(0.114720426, 0, 0.551622391, 0)
SwordAttackNo.Size = UDim2.new(0, 200, 0, 50)
SwordAttackNo.Font = Enum.Font.SourceSans
SwordAttackNo.Text = "Teleport back to spawn"
SwordAttackNo.TextColor3 = Color3.new(1, 1, 1)
SwordAttackNo.TextSize = 14
SwordAttackNo.MouseButton1Down:connect(function()
hum = game.Players.LocalPlayer.Character.HumanoidRootPart
hum.CFrame = CFrame.new(-69, 4, 18)
end)

Credits.Name = "Credits"
Credits.Parent = GUI
Credits.BackgroundColor3 = Color3.new(1, 1, 1)
Credits.Position = UDim2.new(0.00316455704, 0, 0.943952799, 0)
Credits.Size = UDim2.new(0, 109, 0, 18)
Credits.Font = Enum.Font.SourceSans
Credits.Text = "Credits to MRobbin99"
Credits.TextSize = 14


-- functions

-- Kill
function kill()
while modifier do
wait(.5)
if game.Workspace.Enemies["Crackop"]:FindFirstChild(" ") ~= nil then
if game.Workspace.Enemies["Crackop"][" "]:FindFirstChild("LowerTorso") ~= nil then
if game.Workspace.Enemies["Crackop"][" "]:FindFirstChild("HumanoidRootPart") ~= nil then
hum = game.Players.LocalPlayer.Character.HumanoidRootPart
enemie = game.Workspace.Enemies["Crackop"]:FindFirstChild(" ")
hum.CFrame = enemie.HumanoidRootPart.CFrame * CFrame.new(-3.5,0,3)
if enemie:FindFirstChild("Gearworks Sword") ~= nil then
sword = enemie:FindFirstChild("Gearworks Sword")
sword:Destroy()
end
char = game.Players.LocalPlayer.Character:GetChildren()
for i = 1, #char do
if char[i].ClassName == "Tool" then
char[i].ControlFolder.PlayAnimation:FireServer()
end
end
wait(0.3)
if enemie.Humanoid.Health ~= enemie.Humanoid.MaxHealth and game.Workspace.Enemies:FindFirstChild("Yeti") ~= nil then
if enemie:FindFirstChild("UpperTorso") ~= nil then
enemie.UpperTorso:Destroy()
end
end
end
end
end
end
end