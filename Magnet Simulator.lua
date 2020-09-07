-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local SimpleGUI = Instance.new("ScreenGui")
local OpenFrame = Instance.new("Frame")
local Open = Instance.new("TextButton")
local Main = Instance.new("Frame")
local BeautyA = Instance.new("Frame")
local Name = Instance.new("TextLabel")
local BeautyB = Instance.new("Frame")
local Credit = Instance.new("TextLabel")
local AutoFarm = Instance.new("TextButton")
local RemoveHud = Instance.new("TextButton")
local SellAll = Instance.new("TextButton")
local AutoRebirth = Instance.new("TextButton")
local ChestShop = Instance.new("TextButton")
local RebirthShop = Instance.new("TextButton")
local BackpackShop = Instance.new("TextButton")
local MagnetShop = Instance.new("TextButton")
local UnlockAreas = Instance.new("TextButton")
local Close = Instance.new("TextButton")
--Properties:
SimpleGUI.Name = "Simple GUI"
SimpleGUI.Parent = game.CoreGui

OpenFrame.Name = "OpenFrame"
OpenFrame.Parent = SimpleGUI
OpenFrame.Active = true
OpenFrame.BackgroundColor3 = Color3.new(0, 0.615686, 1)
OpenFrame.BorderColor3 = Color3.new(0, 0.419608, 0.972549)
OpenFrame.BorderSizePixel = 0
OpenFrame.Position = UDim2.new(0, 0, 0.582296014, 0)
OpenFrame.Size = UDim2.new(0, 102, 0, 35)

Open.Name = "Open"
Open.Parent = OpenFrame
Open.BackgroundColor3 = Color3.new(0, 0.568627, 0.921569)
Open.BorderSizePixel = 0
Open.Position = UDim2.new(0.0588235296, 0, 0.0857142881, 0)
Open.Size = UDim2.new(0, 89, 0, 28)
Open.Font = Enum.Font.SourceSans
Open.Text = "Open"
Open.TextColor3 = Color3.new(1, 1, 1)
Open.TextSize = 30
Open.MouseButton1Down:connect(function()
Main.Visible = true
OpenFrame.Visible = false
end)

Main.Name = "Main"
Main.Parent = SimpleGUI
Main.Active = true
Main.BackgroundColor3 = Color3.new(0.168627, 0.168627, 0.168627)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.314731121, 0, 0.344398379, 0)
Main.Size = UDim2.new(0, 613, 0, 349)
Main.Visible = false
Main.Draggable = true

BeautyA.Name = "BeautyA"
BeautyA.Parent = Main
BeautyA.BackgroundColor3 = Color3.new(0, 0.607843, 0.933333)
BeautyA.BorderColor3 = Color3.new(0.0627451, 0.0627451, 0.0627451)
BeautyA.BorderSizePixel = 0
BeautyA.Size = UDim2.new(0, 613, 0, 41)

Name.Name = "Name"
Name.Parent = BeautyA
Name.BackgroundColor3 = Color3.new(1, 1, 1)
Name.BackgroundTransparency = 1
Name.BorderSizePixel = 0
Name.Position = UDim2.new(0.336052209, 0, 0, 0)
Name.Size = UDim2.new(0, 200, 0, 41)
Name.Font = Enum.Font.Cartoon
Name.Text = "Magnet Simulator"
Name.TextColor3 = Color3.new(1, 1, 1)
Name.TextSize = 30

BeautyB.Name = "BeautyB"
BeautyB.Parent = Main
BeautyB.BackgroundColor3 = Color3.new(0, 0.607843, 0.933333)
BeautyB.BorderColor3 = Color3.new(0.0627451, 0.0627451, 0.0627451)
BeautyB.BorderSizePixel = 0
BeautyB.Position = UDim2.new(0, 0, 0.88252151, 0)
BeautyB.Size = UDim2.new(0, 613, 0, 41)

Credit.Name = "Credit"
Credit.Parent = BeautyB
Credit.BackgroundColor3 = Color3.new(1, 1, 1)
Credit.BackgroundTransparency = 1
Credit.BorderSizePixel = 0
Credit.Position = UDim2.new(0.336052209, 0, 0, 0)
Credit.Size = UDim2.new(0, 200, 0, 45)
Credit.Font = Enum.Font.Cartoon
Credit.Text = "GUI by BearHax"
Credit.TextColor3 = Color3.new(1, 1, 1)
Credit.TextSize = 40

AutoFarm.Name = "Auto Farm"
AutoFarm.Parent = Main
AutoFarm.BackgroundColor3 = Color3.new(0, 0.607843, 0.933333)
AutoFarm.BorderSizePixel = 0
AutoFarm.Position = UDim2.new(0.0487850308, 0, 0.205249548, 0)
AutoFarm.Size = UDim2.new(0, 152, 0, 41)
AutoFarm.Font = Enum.Font.SourceSans
AutoFarm.Text = "Auto Farm"
AutoFarm.TextColor3 = Color3.new(1, 1, 1)
AutoFarm.TextSize = 30
AutoFarm.MouseButton1Down:connect(function()
local Remote = game.ReplicatedStorage.Events.MagnetEvents['requestGrab']
local Arguments = {
     [1] = "72000",
     [2] = game.ReplicatedStorage.Tools["Galaxy Rebirth Magnet"]
}
while wait() do
Remote:FireServer(unpack(Arguments))
end
end)

RemoveHud.Name = "Remove Hud"
RemoveHud.Parent = Main
RemoveHud.BackgroundColor3 = Color3.new(0, 0.607843, 0.933333)
RemoveHud.BorderSizePixel = 0
RemoveHud.Position = UDim2.new(0.0487850308, 0, 0.440206587, 0)
RemoveHud.Size = UDim2.new(0, 152, 0, 41)
RemoveHud.Font = Enum.Font.SourceSans
RemoveHud.Text = "Remove Hub"
RemoveHud.TextColor3 = Color3.new(1, 1, 1)
RemoveHud.TextSize = 30
RemoveHud.MouseButton1Down:connect(function()
local plr = game:GetService("Players").LocalPlayer
local screengui = plr.PlayerGui.GameHUD
screengui.EggHandler.Disabled = true
screengui.Notifications.Handler.Disabled = true
screengui.FullBackpack.Handler.Disabled = true
screengui.HatHandler.Disabled = true
end)

SellAll.Name = "Sell All"
SellAll.Parent = Main
SellAll.BackgroundColor3 = Color3.new(0, 0.607843, 0.933333)
SellAll.BorderSizePixel = 0
SellAll.Position = UDim2.new(0.0487850308, 0, 0.672298253, 0)
SellAll.Size = UDim2.new(0, 152, 0, 41)
SellAll.Font = Enum.Font.SourceSans
SellAll.Text = "Sell All"
SellAll.TextColor3 = Color3.new(1, 1, 1)
SellAll.TextSize = 30
SellAll.MouseButton1Down:connect(function()
_G.on = true
local plr = game.Players.LocalPlayer
local char = plr.Character.HumanoidRootPart

while _G.on do 
game.Workspace.Rings.Sell.CanCollide = false
game.Workspace.Rings.Sell.CFrame = char.CFrame + Vector3.new(0,math.random(-1,1),0)
wait(0.1)
end
end)

AutoRebirth.Name = "Auto Rebirth"
AutoRebirth.Parent = Main
AutoRebirth.BackgroundColor3 = Color3.new(0, 0.607843, 0.933333)
AutoRebirth.BorderSizePixel = 0
AutoRebirth.Position = UDim2.new(0.375049293, 0, 0.205249548, 0)
AutoRebirth.Size = UDim2.new(0, 152, 0, 41)
AutoRebirth.Font = Enum.Font.SourceSans
AutoRebirth.Text = "Auto Rebirth"
AutoRebirth.TextColor3 = Color3.new(1, 1, 1)
AutoRebirth.TextSize = 30
AutoRebirth.MouseButton1Down:connect(function()
while true do
   wait() --Change to nothing for FAST rebirths, 5 - 10 for lots of rebirth tokens and like 20 MAX for HIGH rebirth tokens but DO NOT Let your money pass around 7.5E Money. It will go to negatives.
game:GetService("ReplicatedStorage").RebirthEvents.requestRebirth:FireServer()
end
end)

ChestShop.Name = "Chest Shop"
ChestShop.Parent = Main
ChestShop.BackgroundColor3 = Color3.new(0, 0.607843, 0.933333)
ChestShop.BorderSizePixel = 0
ChestShop.Position = UDim2.new(0.375049293, 0, 0.440206587, 0)
ChestShop.Size = UDim2.new(0, 152, 0, 41)
ChestShop.Font = Enum.Font.SourceSans
ChestShop.Text = "Chest Shop"
ChestShop.TextColor3 = Color3.new(1, 1, 1)
ChestShop.TextSize = 35
ChestShop.MouseButton1Down:connect(function()
game.Players.LocalPlayer.PlayerGui.ChestShop.All.Visible = true
end)

RebirthShop.Name = "Rebirth Shop"
RebirthShop.Parent = Main
RebirthShop.BackgroundColor3 = Color3.new(0, 0.607843, 0.933333)
RebirthShop.BorderSizePixel = 0
RebirthShop.Position = UDim2.new(0.375049293, 0, 0.672298253, 0)
RebirthShop.Size = UDim2.new(0, 152, 0, 41)
RebirthShop.Font = Enum.Font.SourceSans
RebirthShop.Text = "Rebirth Shop"
RebirthShop.TextColor3 = Color3.new(1, 1, 1)
RebirthShop.TextSize = 30
RebirthShop.MouseButton1Down:connect(function()
game.Players.LocalPlayer.PlayerGui.RebirthShop.Open.Value = true
end)

BackpackShop.Name = "Backpack Shop"
BackpackShop.Parent = Main
BackpackShop.BackgroundColor3 = Color3.new(0, 0.607843, 0.933333)
BackpackShop.BorderSizePixel = 0
BackpackShop.Position = UDim2.new(0.704576194, 0, 0.205249548, 0)
BackpackShop.Size = UDim2.new(0, 152, 0, 41)
BackpackShop.Font = Enum.Font.SourceSans
BackpackShop.Text = "Backpack Shop"
BackpackShop.TextColor3 = Color3.new(1, 1, 1)
BackpackShop.TextSize = 28
BackpackShop.MouseButton1Down:connect(function()
game.Players.LocalPlayer.PlayerGui.BackpackShop.Open.Value = true
end)

MagnetShop.Name = "Magnet Shop"
MagnetShop.Parent = Main
MagnetShop.BackgroundColor3 = Color3.new(0, 0.607843, 0.933333)
MagnetShop.BorderSizePixel = 0
MagnetShop.Position = UDim2.new(0.704576194, 0, 0.440206587, 0)
MagnetShop.Size = UDim2.new(0, 152, 0, 41)
MagnetShop.Font = Enum.Font.SourceSans
MagnetShop.Text = "Magnet Shop"
MagnetShop.TextColor3 = Color3.new(1, 1, 1)
MagnetShop.TextSize = 30
MagnetShop.MouseButton1Down:connect(function()
game.Players.LocalPlayer.PlayerGui.Shop.Open.Value = true
end)

UnlockAreas.Name = "Unlock Areas"
UnlockAreas.Parent = Main
UnlockAreas.BackgroundColor3 = Color3.new(0, 0.607843, 0.933333)
UnlockAreas.BorderSizePixel = 0
UnlockAreas.Position = UDim2.new(0.704576194, 0, 0.672298253, 0)
UnlockAreas.Size = UDim2.new(0, 152, 0, 41)
UnlockAreas.Font = Enum.Font.SourceSans
UnlockAreas.Text = "Unlock Areas"
UnlockAreas.TextColor3 = Color3.new(1, 1, 1)
UnlockAreas.TextSize = 30
UnlockAreas.MouseButton1Down:connect(function()
game:GetService("ReplicatedStorage").Events.ShopEvents.buyDoor:FireServer(5000)
game:GetService("ReplicatedStorage").Events.ShopEvents.buyDoor:FireServer(50000)
game:GetService("ReplicatedStorage").Events.ShopEvents.buyDoor:FireServer(500000)
game:GetService("ReplicatedStorage").Events.ShopEvents.buyDoor:FireServer(1500000)
game:GetService("ReplicatedStorage").Events.ShopEvents.buyDoor:FireServer(40000000)
end)

Close.Name = "Close"
Close.Parent = Main
Close.BackgroundColor3 = Color3.new(0, 0.607843, 0.933333)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.906835079, 0, 0, 0)
Close.Size = UDim2.new(0, 57, 0, 40)
Close.Font = Enum.Font.Cartoon
Close.Text = "X"
Close.TextColor3 = Color3.new(1, 1, 1)
Close.TextSize = 35
Close.MouseButton1Down:connect(function()
OpenFrame.Visible = true
Main.Visible = false
end)