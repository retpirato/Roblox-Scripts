--[[
Desc:
Made this because I was told to and because I was bored
------
Game:
https://www.roblox.com/games/2533391464/Update-Snowman-Simulator
]]
print('loading')
plr = game:GetService('Players').LocalPlayer
Root = plr.Character.HumanoidRootPart
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local TopFrame = Instance.new("Frame")
local Close = Instance.new("TextButton")
local Minimize = Instance.new("TextButton")
local Game = Instance.new("TextLabel")
local B1 = Instance.new("TextButton")
local L1 = Instance.new("TextLabel")
local B5 = Instance.new("TextButton")
local L5 = Instance.new("TextLabel")
local B3 = Instance.new("TextButton")
local L3 = Instance.new("TextLabel")
local B6 = Instance.new("TextButton")
local L6 = Instance.new("TextLabel")
local B2 = Instance.new("TextButton")
local L2 = Instance.new("TextLabel")
local B4 = Instance.new("TextButton")
local L4 = Instance.new("TextLabel")
local GuiCred = Instance.new("TextLabel")
local ScriptCred = Instance.new("TextLabel")
ScreenGui.Parent = game.CoreGui
B1.TextWrapped = true
B2.TextWrapped = true
B3.TextWrapped = true
B4.TextWrapped = true
B5.TextWrapped = true
B6.TextWrapped = true
ScriptCred.TextWrapped = true
GuiCred.TextWrapped = true
Game.TextWrapped = true
_G.on1 = 0
_G.on2 = 0
_G.on3 = 0
_G.on4 = 0
_G.on5 = 0
_G.on6 = 0
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.new(0.364706, 0.360784, 0.380392)
MainFrame.BackgroundTransparency = 0.40000000596046
MainFrame.BorderColor3 = Color3.new(0.501961, 0.533333, 0.529412)
MainFrame.Position = UDim2.new(0.229385316, 0, 0.28605482, 0)
MainFrame.Size = UDim2.new(0, 360, 0, 239)
MainFrame.Draggable = true
MainFrame.Active = true
MainFrame.Selectable = true
TopFrame.Name = "TopFrame"
TopFrame.Parent = MainFrame
TopFrame.BackgroundColor3 = Color3.new(0.364706, 0.360784, 0.380392)
TopFrame.BackgroundTransparency = 0.89999997615814
TopFrame.BorderSizePixel = 0
TopFrame.Size = UDim2.new(0, 360, 0, 24)
Close.Name = "Close"
Close.Parent = TopFrame
Close.BackgroundColor3 = Color3.new(0.364706, 0.360784, 0.380392)
Close.BackgroundTransparency = 0.80000001192093
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.916666627, 0, 0, 0)
Close.Size = UDim2.new(0, 24, 0, 24)
Close.Font = Enum.Font.SourceSans
Close.Text = "x"
Close.TextColor3 = Color3.new(0, 0, 0)
Close.TextSize = 16
Minimize.Name = "Minimize"
Minimize.Parent = TopFrame
Minimize.BackgroundColor3 = Color3.new(0.364706, 0.360784, 0.380392)
Minimize.BackgroundTransparency = 0.80000001192093
Minimize.BorderSizePixel = 0
Minimize.Position = UDim2.new(0.827777803, 0, 0, 0)
Minimize.Size = UDim2.new(0, 24, 0, 24)
Minimize.Font = Enum.Font.SourceSans
Minimize.Text = "^"
Minimize.TextColor3 = Color3.new(0, 0, 0)
Minimize.TextSize = 18
Game.Name = "Game"
Game.Parent = TopFrame
Game.BackgroundColor3 = Color3.new(0.364706, 0.360784, 0.380392)
Game.BackgroundTransparency = 0.80000001192093
Game.BorderSizePixel = 0
Game.Position = UDim2.new(0.0222222228, 0, 0, 0)
Game.Size = UDim2.new(0, 281, 0, 24)
Game.Font = Enum.Font.SourceSans
Game.Text = "[Game name here]"
Game.TextColor3 = Color3.new(0, 0, 0)
Game.TextSize = 14
B1.Name = "B1"
B1.Parent = MainFrame
B1.BackgroundColor3 = Color3.new(0.333333, 0.478431, 0.584314)
B1.BackgroundTransparency = 0.20000000298023
B1.Position = UDim2.new(0.0583333373, 0, 0.146443501, 0)
B1.Size = UDim2.new(0, 132, 0, 44)
B1.Font = Enum.Font.SourceSans
B1.Text = "B1 N/A"
B1.TextColor3 = Color3.new(0, 0, 0)
B1.TextSize = 14
L1.Name = "L1"
L1.Parent = B1
L1.BackgroundColor3 = Color3.new(0.313726, 0.360784, 0.403922)
L1.Position = UDim2.new(0.871212125, 0, 0, 0)
L1.Size = UDim2.new(0, 17, 0, 17)
L1.Font = Enum.Font.SourceSans
L1.Text = ""
L1.TextColor3 = Color3.new(0, 0, 0)
L1.TextSize = 14
B2.Name = "B2"
B2.Parent = MainFrame
B2.BackgroundColor3 = Color3.new(0.333333, 0.478431, 0.584314)
B2.BackgroundTransparency = 0.20000000298023
B2.Position = UDim2.new(0.0583333373, 0, 0.405857742, 0)
B2.Size = UDim2.new(0, 132, 0, 44)
B2.Font = Enum.Font.SourceSans
B2.Text = "B2 N/A"
B2.TextColor3 = Color3.new(0, 0, 0)
B2.TextSize = 14
L2.Name = "L2"
L2.Parent = B2
L2.BackgroundColor3 = Color3.new(0.313726, 0.360784, 0.403922)
L2.Position = UDim2.new(0.871212125, 0, 0, 0)
L2.Size = UDim2.new(0, 17, 0, 17)
L2.Font = Enum.Font.SourceSans
L2.Text = ""
L2.TextColor3 = Color3.new(0, 0, 0)
L2.TextSize = 14
B3.Name = "B3"
B3.Parent = MainFrame
B3.BackgroundColor3 = Color3.new(0.333333, 0.478431, 0.584314)
B3.BackgroundTransparency = 0.20000000298023
B3.Position = UDim2.new(0.0583333373, 0, 0.656903744, 0)
B3.Size = UDim2.new(0, 132, 0, 44)
B3.Font = Enum.Font.SourceSans
B3.Text = "B3 N/A"
B3.TextColor3 = Color3.new(0, 0, 0)
B3.TextSize = 14
L3.Name = "L3"
L3.Parent = B3
L3.BackgroundColor3 = Color3.new(0.313726, 0.360784, 0.403922)
L3.Position = UDim2.new(0.871212125, 0, 0, 0)
L3.Size = UDim2.new(0, 17, 0, 17)
L3.Font = Enum.Font.SourceSans
L3.Text = ""
L3.TextColor3 = Color3.new(0, 0, 0)
L3.TextSize = 14
B4.Name = "B4"
B4.Parent = MainFrame
B4.BackgroundColor3 = Color3.new(0.333333, 0.478431, 0.584314)
B4.BackgroundTransparency = 0.20000000298023
B4.Position = UDim2.new(0.577777743, 0, 0.146443516, 0)
B4.Size = UDim2.new(0, 132, 0, 44)
B4.Font = Enum.Font.SourceSans
B4.Text = "B4 N/A"
B4.TextColor3 = Color3.new(0, 0, 0)
B4.TextSize = 14
L4.Name = "L4"
L4.Parent = B4
L4.BackgroundColor3 = Color3.new(0.313726, 0.360784, 0.403922)
L4.Position = UDim2.new(0.871212125, 0, 0, 0)
L4.Size = UDim2.new(0, 17, 0, 17)
L4.Font = Enum.Font.SourceSans
L4.Text = ""
L4.TextColor3 = Color3.new(0, 0, 0)
L4.TextSize = 14
B5.Name = "B5"
B5.Parent = MainFrame
B5.BackgroundColor3 = Color3.new(0.333333, 0.478431, 0.584314)
B5.BackgroundTransparency = 0.20000000298023
B5.Position = UDim2.new(0.577777743, 0, 0.405857742, 0)
B5.Size = UDim2.new(0, 132, 0, 44)
B5.Font = Enum.Font.SourceSans
B5.Text = "B5 N/A"
B5.TextColor3 = Color3.new(0, 0, 0)
B5.TextSize = 14
L5.Name = "L5"
L5.Parent = B5
L5.BackgroundColor3 = Color3.new(0.313726, 0.360784, 0.403922)
L5.Position = UDim2.new(0.871212125, 0, 0, 0)
L5.Size = UDim2.new(0, 17, 0, 17)
L5.Font = Enum.Font.SourceSans
L5.Text = ""
L5.TextColor3 = Color3.new(0, 0, 0)
L5.TextSize = 14
B6.Name = "B6"
B6.Parent = MainFrame
B6.BackgroundColor3 = Color3.new(0.333333, 0.478431, 0.584314)
B6.BackgroundTransparency = 0.20000000298023
B6.Position = UDim2.new(0.577777743, 0, 0.656903803, 0)
B6.Size = UDim2.new(0, 132, 0, 44)
B6.Font = Enum.Font.SourceSans
B6.Text = "B6 N/A"
B6.TextColor3 = Color3.new(0, 0, 0)
B6.TextSize = 14
L6.Name = "L6"
L6.Parent = B6
L6.BackgroundColor3 = Color3.new(0.313726, 0.360784, 0.403922)
L6.Position = UDim2.new(0.871212125, 0, 0, 0)
L6.Size = UDim2.new(0, 17, 0, 17)
L6.Font = Enum.Font.SourceSans
L6.Text = ""
L6.TextColor3 = Color3.new(0, 0, 0)
L6.TextSize = 14
GuiCred.Name = "GuiCred"
GuiCred.Parent = MainFrame
GuiCred.BackgroundColor3 = Color3.new(0.45098, 0.584314, 0.682353)
GuiCred.BackgroundTransparency = 0.60000002384186
GuiCred.BorderSizePixel = 0
GuiCred.Position = UDim2.new(0, 0, 0.88702929, 0)
GuiCred.Size = UDim2.new(0, 174, 0, 27)
GuiCred.Font = Enum.Font.SourceSans
GuiCred.Text = "Gui Credit: brianops1"
GuiCred.TextColor3 = Color3.new(0, 0, 0)
GuiCred.TextSize = 14
ScriptCred.Name = "ScriptCred"
ScriptCred.Parent = MainFrame
ScriptCred.BackgroundColor3 = Color3.new(0.45098, 0.584314, 0.682353)
ScriptCred.BackgroundTransparency = 0.60000002384186
ScriptCred.BorderSizePixel = 0
ScriptCred.Position = UDim2.new(0.522222221, 0, 0.887000024, 0)
ScriptCred.Size = UDim2.new(0, 172, 0, 27)
ScriptCred.Font = Enum.Font.SourceSans
ScriptCred.Text = "Script(s) credit: "
ScriptCred.TextColor3 = Color3.new(0, 0, 0)
ScriptCred.TextSize = 14
function onL(Light)
Light.BackgroundColor3 = Color3.new(0.364706, 0.694118, 1)
end
function offL(Light)
Light.BackgroundColor3 = Color3.new(0.313726, 0.360784, 0.403922)
end
------------------------------------------------------

Game.Text = "Snowman Simulator" -- Game name here
ScriptCred.Text = ScriptCred.Text .. "brianops1" -- put the script creators name here

--Enter the script name corresponding to the button below
B1.Text = "Attack all enemies"
B2.Text = "Autocollect snow"
B3.Text = "AutoCollect canes"
B4.Text = "Autosell snow"
B5.Text = "Autosell Canes"
B6.Text = "Teleport to snow"

B1.MouseButton1Click:connect(function()
if _G.on1 == 1 then
_G.on1 = 0
offL(L1)
else
_G.on1 = 1
onL(L1)
while _G.on1 == 1 do
game:GetService('RunService').Stepped:wait()
for i,v in pairs(game:GetService("Workspace").minionsHolder:GetChildren()) do
if v and _G.on1 == 1 then
game:GetService('RunService').Stepped:wait()
local A_1 = "minionHit"
local A_2 = v
local Event = game:GetService("ReplicatedStorage").ThisGame.Calls.minionHelper
Event:FireServer(A_1, A_2)
end
end
end
end
end)
B2.MouseButton1Click:connect(function()
if _G.on2 == 1 then
_G.on2 = 0
offL(L2)
else
_G.on2 = 1
onL(L2)
while _G.on2 == 1 do
game:GetService('RunService').Stepped:wait()
for i = 1,50 do
game:GetService('RunService').Stepped:wait()
local Event = game:GetService("ReplicatedStorage").ThisGame.Calls.collectSnow
Event:FireServer()
end
local A_1 = "stopRoll"
local Event = game:GetService("ReplicatedStorage").ThisGame.Calls.snowballControllerFunc
Event:InvokeServer(A_1)
end
end
end)
B3.MouseButton1Click:connect(function()
if _G.on3 == 1 then
_G.on3 = 0
offL(L3)
else
_G.on3 = 1
onL(L3)
while _G.on3 == 1 do
game:GetService('RunService').Stepped:wait()
for i,v in pairs(game.workspace.gameCandyCanes:GetChildren()) do
if v and _G.on3 == 1 then
local cane = v:FindFirstChild("cane")
if cane then
game:GetService('RunService').Stepped:wait()
orgin = Root.CFrame
Root.CFrame = cane.CFrame * CFrame.new(0,3,0)
wait(.1)
Root.CFrame = orgin
end
end
local C = game.Workspace:FindFirstChild("cane",true)
if C then
game:GetService('RunService').Stepped:wait()
orgin = Root.CFrame
Root.CFrame = C.CFrame * CFrame.new(0,3,0)
wait(.1)
Root.CFrame = orgin
end
end
end
end
end)
B4.MouseButton1Click:connect(function()
if _G.on4 == 1 then
_G.on4 = 0
offL(L4)
else
_G.on4 = 1
onL(L4)
while _G.on4 == 1 do
wait(.5)
local A_1 = "addToSnowman"
local Event = game:GetService("ReplicatedStorage").ThisGame.Calls.snowballController
Event:FireServer(A_1)
end
end
end)
B5.MouseButton1Click:connect(function()
if _G.on5 == 1 then
_G.on5 = 0
offL(L5)
else
_G.on5 = 1
onL(L5)
while _G.on5 == 1 do
wait()
local A_1 = "sellCandycanes"
local A_2 = 2
local Event = game:GetService("ReplicatedStorage").ThisGame.Calls.candycaneSell
Event:FireServer(A_1, A_2)
local A_1 = "sellCandycanes"
local A_2 = 3
local Event = game:GetService("ReplicatedStorage").ThisGame.Calls.candycaneSell
Event:FireServer(A_1, A_2)
local A_1 = "sellCandycanes"
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").ThisGame.Calls.candycaneSell
Event:FireServer(A_1, A_2)
end
end
end)
B6.MouseButton1Click:connect(function()
if _G.on6 == 1 then
_G.on6 = 0
offL(L6)
else
_G.on6 = 1
onL(L6)
while _G.on6 == 1 do
game:GetService('RunService').Stepped:wait()
for i,v in pairs(game.Workspace.SNOWPILES:GetChildren()) do
if v and _G.on6 == 1 then
orgin = Root.CFrame
Root.CFrame = v.CFrame
wait()
Root.CFrame = orgin
end
end
end
end
end)

------------------------------------------------------

m = 0
Close.MouseButton1Click:connect(function()
_G.on1 = 0
_G.on2 = 0
_G.on3 = 0
_G.on4 = 0
_G.on5 = 0
_G.on6 = 0
MainFrame:Destroy()
ScreenGui:Destroy()
end)
Minimize.MouseButton1Click:connect(function()
if m == 0 then
m = 1
B1.Visible = false
B2.Visible = false
B3.Visible = false
B4.Visible = false
B5.Visible = false
B6.Visible = false
GuiCred.Visible = false
ScriptCred.Visible = false
MainFrame.Size = TopFrame.Size
Minimize.TextSize = 18
Minimize.Text = "v"
else
m = 0
MainFrame.Size = UDim2.new(0, 360, 0, 239)
B1.Visible = true
B2.Visible = true
B3.Visible = true
B4.Visible = true
B5.Visible = true
B6.Visible = true
GuiCred.Visible = true
ScriptCred.Visible = true
Minimize.TextSize = 20
Minimize.Text = "^"
end
end)
print('loaded')