-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local Copy = Instance.new("ScreenGui")
local OpenFrame = Instance.new("Frame")
local Open = Instance.new("TextButton")
local BySten = Instance.new("TextLabel")
local MainFrame = Instance.new("Frame")
local AutoSell = Instance.new("TextButton")
local GodAxe = Instance.new("TextButton")
local MaxLand = Instance.new("TextButton")
local PaintTool = Instance.new("TextButton")
local TpPlayer = Instance.new("TextButton")
local PlotTp = Instance.new("TextButton")
local RemoveFog = Instance.new("TextButton")
local Fly = Instance.new("TextButton")
local TpWood = Instance.new("TextButton")
local NoClip = Instance.new("TextButton")
local Blueprint = Instance.new("TextButton")
local Player = Instance.new("TextButton")
local WaterWalk = Instance.new("TextButton")
local Teleports = Instance.new("TextButton")
local Clone = Instance.new("TextButton")
local TpTool = Instance.new("TextButton")
local CloneFrame = Instance.new("Frame")
local CloneBox = Instance.new("TextBox")
local CloneButton = Instance.new("TextButton")
local Nothing = Instance.new("Frame")
local XCln = Instance.new("TextButton")
local WipeBase = Instance.new("TextButton")
local TeleportsFrame = Instance.new("Frame")
local XTp = Instance.new("TextButton")
local ScrollingFrame = Instance.new("ScrollingFrame")
local WoodRUs = Instance.new("TextButton")
local SpawnPoint = Instance.new("TextButton")
local LandStore = Instance.new("TextButton")
local LinksLogic = Instance.new("TextButton")
local Cave = Instance.new("TextButton")
local Swamp = Instance.new("TextButton")
local Volcano = Instance.new("TextButton")
local PalmIsland = Instance.new("TextButton")
local BobsShack = Instance.new("TextButton")
local Bridge = Instance.new("TextButton")
local BoxedCars = Instance.new("TextButton")
local EndTimes = Instance.new("TextButton")
local Dock = Instance.new("TextButton")
local FancyFurnishings = Instance.new("TextButton")
local ShrineOfSight = Instance.new("TextButton")
local FineArtsShop = Instance.new("TextButton")
local StrangeMan = Instance.new("TextButton")
local VolcanoWin = Instance.new("TextButton")
local TheDen = Instance.new("TextButton")
local SkiLodge = Instance.new("TextButton")
local PlayerTpFrame = Instance.new("Frame")
local TpGo = Instance.new("TextButton")
local PlayerTpBox = Instance.new("TextBox")
local Nothing_2 = Instance.new("Frame")
local XplrTp = Instance.new("TextButton")
local PlayerFrame = Instance.new("Frame")
local Jump = Instance.new("TextButton")
local Speed = Instance.new("TextButton")
local SpeedBox = Instance.new("TextBox")
local JumpBox = Instance.new("TextBox")
local Xsj = Instance.new("TextButton")
local Nothing_3 = Instance.new("Frame")
local Nothing_4 = Instance.new("Frame")
local Nothing_5 = Instance.new("TextLabel")
local AutoSellFrame = Instance.new("Frame")
local SellWood = Instance.new("TextButton")
local SellPlanks = Instance.new("TextButton")
local Xas = Instance.new("TextButton")
--Properties:
Copy.Name = "Copy"
Copy.Parent = game.CoreGui
Copy.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

OpenFrame.Name = "OpenFrame"
OpenFrame.Parent = Copy
OpenFrame.BackgroundColor3 = Color3.new(1, 1, 1)
OpenFrame.Position = UDim2.new(0.712543011, 0, -0.00122846384, 0)
OpenFrame.Size = UDim2.new(0, 120, 0, 66)
OpenFrame.Style = Enum.FrameStyle.RobloxRound

Open.Name = "Open"
Open.Parent = OpenFrame
Open.BackgroundColor3 = Color3.new(1, 1, 1)
Open.Position = UDim2.new(-0.0782629997, 0, -0.121563233, 0)
Open.Size = UDim2.new(0, 120, 0, 38)
Open.Style = Enum.ButtonStyle.RobloxRoundButton
Open.Font = Enum.Font.GothamBlack
Open.Text = "Open :)"
Open.TextColor3 = Color3.new(0, 0, 0)
Open.TextSize = 30
Open.TextWrapped = true

BySten.Name = "BySten"
BySten.Parent = OpenFrame
BySten.BackgroundColor3 = Color3.new(1, 1, 1)
BySten.BackgroundTransparency = 1
BySten.Position = UDim2.new(-0.0384889059, 0, 0.48475492, 0)
BySten.Size = UDim2.new(0, 120, 0, 38)
BySten.Font = Enum.Font.GothamBlack
BySten.Text = "Gui By: Sten"
BySten.TextColor3 = Color3.new(0.513726, 0.513726, 0.513726)
BySten.TextSize = 17
BySten.TextWrapped = true

MainFrame.Name = "MainFrame"
MainFrame.Parent = Copy
MainFrame.BackgroundColor3 = Color3.new(1, 1, 1)
MainFrame.Position = UDim2.new(0.925900757, 0, 0.309582323, 0)
MainFrame.Size = UDim2.new(0, 109, 0, 352)
MainFrame.Visible = false
MainFrame.Style = Enum.FrameStyle.RobloxRound

AutoSell.Name = "AutoSell"
AutoSell.Parent = MainFrame
AutoSell.BackgroundColor3 = Color3.new(1, 1, 1)
AutoSell.Position = UDim2.new(-0.040226087, 0, -0.0243195631, 0)
AutoSell.Size = UDim2.new(0, 100, 0, 22)
AutoSell.Style = Enum.ButtonStyle.RobloxRoundButton
AutoSell.Font = Enum.Font.SciFi
AutoSell.Text = "AutoSell"
AutoSell.TextColor3 = Color3.new(0, 0, 0)
AutoSell.TextSize = 19

GodAxe.Name = "GodAxe"
GodAxe.Parent = MainFrame
GodAxe.BackgroundColor3 = Color3.new(1, 1, 1)
GodAxe.Position = UDim2.new(-0.040226087, 0, 0.0394736193, 0)
GodAxe.Size = UDim2.new(0, 100, 0, 22)
GodAxe.Style = Enum.ButtonStyle.RobloxRoundButton
GodAxe.Font = Enum.Font.SciFi
GodAxe.Text = "God Axe"
GodAxe.TextColor3 = Color3.new(0, 0, 0)
GodAxe.TextSize = 19
GodAxe.MouseButton1Down:connect(function()
	
end)

MaxLand.Name = "MaxLand"
MaxLand.Parent = MainFrame
MaxLand.BackgroundColor3 = Color3.new(1, 1, 1)
MaxLand.Position = UDim2.new(-0.040226087, 0, 0.103266895, 0)
MaxLand.Size = UDim2.new(0, 100, 0, 22)
MaxLand.Style = Enum.ButtonStyle.RobloxRoundButton
MaxLand.Font = Enum.Font.SciFi
MaxLand.Text = "Max Land"
MaxLand.TextColor3 = Color3.new(0, 0, 0)
MaxLand.TextSize = 19
MaxLand.MouseButton1Down:connect(function()
	
end)

PaintTool.Name = "PaintTool"
PaintTool.Parent = MainFrame
PaintTool.BackgroundColor3 = Color3.new(1, 1, 1)
PaintTool.Position = UDim2.new(-0.040226087, 0, 0.167060077, 0)
PaintTool.Size = UDim2.new(0, 100, 0, 22)
PaintTool.Style = Enum.ButtonStyle.RobloxRoundButton
PaintTool.Font = Enum.Font.SciFi
PaintTool.Text = "Paint"
PaintTool.TextColor3 = Color3.new(0, 0, 0)
PaintTool.TextSize = 19
PaintTool.MouseButton1Down:connect(function()
	
end)

TpPlayer.Name = "TpPlayer"
TpPlayer.Parent = MainFrame
TpPlayer.BackgroundColor3 = Color3.new(1, 1, 1)
TpPlayer.Position = UDim2.new(-0.040226087, 0, 0.230853349, 0)
TpPlayer.Size = UDim2.new(0, 100, 0, 22)
TpPlayer.Style = Enum.ButtonStyle.RobloxRoundButton
TpPlayer.Font = Enum.Font.SciFi
TpPlayer.Text = "Tp Player"
TpPlayer.TextColor3 = Color3.new(0, 0, 0)
TpPlayer.TextSize = 19

PlotTp.Name = "PlotTp"
PlotTp.Parent = MainFrame
PlotTp.BackgroundColor3 = Color3.new(1, 1, 1)
PlotTp.Position = UDim2.new(-0.040226087, 0, 0.294646442, 0)
PlotTp.Size = UDim2.new(0, 100, 0, 22)
PlotTp.Style = Enum.ButtonStyle.RobloxRoundButton
PlotTp.Font = Enum.Font.SciFi
PlotTp.Text = "Tp Plot"
PlotTp.TextColor3 = Color3.new(0, 0, 0)
PlotTp.TextSize = 19
PlotTp.MouseButton1Down:connect(function()
	
end)

RemoveFog.Name = "RemoveFog"
RemoveFog.Parent = MainFrame
RemoveFog.BackgroundColor3 = Color3.new(1, 1, 1)
RemoveFog.Position = UDim2.new(-0.040226087, 0, 0.358439714, 0)
RemoveFog.Size = UDim2.new(0, 100, 0, 22)
RemoveFog.Style = Enum.ButtonStyle.RobloxRoundButton
RemoveFog.Font = Enum.Font.SciFi
RemoveFog.Text = "Fog"
RemoveFog.TextColor3 = Color3.new(0, 0, 0)
RemoveFog.TextSize = 19
RemoveFog.MouseButton1Down:connect(function()
	
end)

Fly.Name = "Fly"
Fly.Parent = MainFrame
Fly.BackgroundColor3 = Color3.new(1, 1, 1)
Fly.Position = UDim2.new(-0.040226087, 0, 0.422232896, 0)
Fly.Size = UDim2.new(0, 100, 0, 22)
Fly.Style = Enum.ButtonStyle.RobloxRoundButton
Fly.Font = Enum.Font.SciFi
Fly.Text = "Fly[SpaceX2/Q]"
Fly.TextColor3 = Color3.new(0, 0, 0)
Fly.TextSize = 13
Fly.MouseButton1Down:connect(function()
	
end)

TpWood.Name = "TpWood"
TpWood.Parent = MainFrame
TpWood.BackgroundColor3 = Color3.new(1, 1, 1)
TpWood.Position = UDim2.new(-0.040226087, 0, 0.55213052, 0)
TpWood.Size = UDim2.new(0, 100, 0, 22)
TpWood.Style = Enum.ButtonStyle.RobloxRoundButton
TpWood.Font = Enum.Font.SciFi
TpWood.Text = "Tp Wood"
TpWood.TextColor3 = Color3.new(0, 0, 0)
TpWood.TextSize = 19
TpWood.MouseButton1Down:connect(function()
	
end)

NoClip.Name = "NoClip"
NoClip.Parent = MainFrame
NoClip.BackgroundColor3 = Color3.new(1, 1, 1)
NoClip.Position = UDim2.new(-0.040226087, 0, 0.615923703, 0)
NoClip.Size = UDim2.new(0, 100, 0, 22)
NoClip.Style = Enum.ButtonStyle.RobloxRoundButton
NoClip.Font = Enum.Font.SciFi
NoClip.Text = "NoClip [F]"
NoClip.TextColor3 = Color3.new(0, 0, 0)
NoClip.TextSize = 19
NoClip.MouseButton1Down:connect(function()
	
end)

Blueprint.Name = "Blueprint"
Blueprint.Parent = MainFrame
Blueprint.BackgroundColor3 = Color3.new(1, 1, 1)
Blueprint.Position = UDim2.new(-0.040226087, 0, 0.743510067, 0)
Blueprint.Size = UDim2.new(0, 100, 0, 22)
Blueprint.Style = Enum.ButtonStyle.RobloxRoundButton
Blueprint.Font = Enum.Font.SciFi
Blueprint.Text = "Blueprints"
Blueprint.TextColor3 = Color3.new(0, 0, 0)
Blueprint.TextSize = 19
Blueprint.MouseButton1Down:connect(function()
	
end)

Player.Name = "Player"
Player.Parent = MainFrame
Player.BackgroundColor3 = Color3.new(1, 1, 1)
Player.Position = UDim2.new(-0.040226087, 0, 0.807303309, 0)
Player.Size = UDim2.new(0, 100, 0, 22)
Player.Style = Enum.ButtonStyle.RobloxRoundButton
Player.Font = Enum.Font.SciFi
Player.Text = "Speed[v]"
Player.TextColor3 = Color3.new(0, 0, 0)
Player.TextSize = 19

WaterWalk.Name = "WaterWalk"
WaterWalk.Parent = MainFrame
WaterWalk.BackgroundColor3 = Color3.new(1, 1, 1)
WaterWalk.Position = UDim2.new(-0.040226087, 0, 0.679716945, 0)
WaterWalk.Size = UDim2.new(0, 100, 0, 22)
WaterWalk.Style = Enum.ButtonStyle.RobloxRoundButton
WaterWalk.Font = Enum.Font.SciFi
WaterWalk.Text = "Water Walk"
WaterWalk.TextColor3 = Color3.new(0, 0, 0)
WaterWalk.TextSize = 19

Teleports.Name = "Teleports"
Teleports.Parent = MainFrame
Teleports.BackgroundColor3 = Color3.new(1, 1, 1)
Teleports.Position = UDim2.new(-0.040226087, 0, 0.871096492, 0)
Teleports.Size = UDim2.new(0, 100, 0, 22)
Teleports.Style = Enum.ButtonStyle.RobloxRoundButton
Teleports.Font = Enum.Font.SciFi
Teleports.Text = "Teleports"
Teleports.TextColor3 = Color3.new(0, 0, 0)
Teleports.TextSize = 19

Clone.Name = "Clone"
Clone.Parent = MainFrame
Clone.BackgroundColor3 = Color3.new(1, 1, 1)
Clone.Position = UDim2.new(-0.040226087, 0, 0.936906815, 0)
Clone.Size = UDim2.new(0, 100, 0, 22)
Clone.Style = Enum.ButtonStyle.RobloxRoundButton
Clone.Font = Enum.Font.SciFi
Clone.Text = "Clone"
Clone.TextColor3 = Color3.new(0, 0, 0)
Clone.TextSize = 19

TpTool.Name = "TpTool"
TpTool.Parent = MainFrame
TpTool.BackgroundColor3 = Color3.new(1, 1, 1)
TpTool.Position = UDim2.new(-0.040226087, 0, 0.488043219, 0)
TpTool.Size = UDim2.new(0, 100, 0, 22)
TpTool.Style = Enum.ButtonStyle.RobloxRoundButton
TpTool.Font = Enum.Font.SciFi
TpTool.Text = "TpTool"
TpTool.TextColor3 = Color3.new(0, 0, 0)
TpTool.TextSize = 19
TpTool.MouseButton1Down:connect(function()
	
end)

CloneFrame.Name = "CloneFrame"
CloneFrame.Parent = Copy
CloneFrame.BackgroundColor3 = Color3.new(1, 1, 1)
CloneFrame.Position = UDim2.new(0.926528156, 0, 0.742014766, 0)
CloneFrame.Size = UDim2.new(0, 108, 0, 139)
CloneFrame.Visible = false
CloneFrame.Style = Enum.FrameStyle.RobloxRound

CloneBox.Name = "CloneBox"
CloneBox.Parent = CloneFrame
CloneBox.BackgroundColor3 = Color3.new(1, 1, 1)
CloneBox.BackgroundTransparency = 1
CloneBox.Position = UDim2.new(-0.0293726027, 0, 0.176717967, 0)
CloneBox.Size = UDim2.new(0, 97, 0, 33)
CloneBox.Font = Enum.Font.SourceSans
CloneBox.Text = ""
CloneBox.TextColor3 = Color3.new(1, 1, 1)
CloneBox.TextSize = 21

CloneButton.Name = "CloneButton"
CloneButton.Parent = CloneFrame
CloneButton.BackgroundColor3 = Color3.new(1, 1, 1)
CloneButton.Position = UDim2.new(-0.0277777798, 0, 0.505793989, 0)
CloneButton.Size = UDim2.new(0, 97, 0, 34)
CloneButton.Style = Enum.ButtonStyle.RobloxRoundButton
CloneButton.Font = Enum.Font.SourceSans
CloneButton.Text = "Clone Wood"
CloneButton.TextColor3 = Color3.new(0, 0, 0)
CloneButton.TextSize = 19
CloneButton.MouseButton1Down:connect(function()
	
end)

Nothing.Name = "Nothing"
Nothing.Parent = CloneFrame
Nothing.BackgroundColor3 = Color3.new(1, 1, 1)
Nothing.Position = UDim2.new(-0.0833333358, 0, 0.130693793, 0)
Nothing.Size = UDim2.new(0, 107, 0, 41)
Nothing.Style = Enum.FrameStyle.RobloxRound

XCln.Name = "XCln"
XCln.Parent = CloneFrame
XCln.BackgroundColor3 = Color3.new(1, 1, 1)
XCln.Position = UDim2.new(0.830498278, 0, -0.0636140555, 0)
XCln.Size = UDim2.new(0, 23, 0, 23)
XCln.Style = Enum.ButtonStyle.RobloxRoundButton
XCln.Font = Enum.Font.SourceSans
XCln.Text = "X"
XCln.TextColor3 = Color3.new(0, 0, 0)
XCln.TextSize = 14

WipeBase.Name = "WipeBase"
WipeBase.Parent = CloneFrame
WipeBase.BackgroundColor3 = Color3.new(1, 1, 1)
WipeBase.Position = UDim2.new(-0.0277777798, 0, 0.780571103, 0)
WipeBase.Size = UDim2.new(0, 97, 0, 34)
WipeBase.Style = Enum.ButtonStyle.RobloxRoundButton
WipeBase.Font = Enum.Font.SourceSans
WipeBase.Text = "Wipe Base"
WipeBase.TextColor3 = Color3.new(0, 0, 0)
WipeBase.TextSize = 19
WipeBase.MouseButton1Down:connect(function()
	
end)

TeleportsFrame.Name = "TeleportsFrame"
TeleportsFrame.Parent = Copy
TeleportsFrame.BackgroundColor3 = Color3.new(1, 1, 1)
TeleportsFrame.Position = UDim2.new(0.856963634, 0, 0.176904216, 0)
TeleportsFrame.Size = UDim2.new(0, 109, 0, 568)
TeleportsFrame.Visible = false
TeleportsFrame.Style = Enum.FrameStyle.RobloxRound

XTp.Name = "XTp"
XTp.Parent = TeleportsFrame
XTp.BackgroundColor3 = Color3.new(1, 1, 1)
XTp.Position = UDim2.new(0.849016786, 0, -0.0156653486, 0)
XTp.Size = UDim2.new(0, 23, 0, 23)
XTp.Style = Enum.ButtonStyle.RobloxRoundButton
XTp.Font = Enum.Font.SourceSans
XTp.Text = "X"
XTp.TextColor3 = Color3.new(0, 0, 0)
XTp.TextSize = 14

ScrollingFrame.Parent = TeleportsFrame
ScrollingFrame.BackgroundColor3 = Color3.new(0.380392, 0.380392, 0.380392)
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(-0.0337955542, 0, 0.0400685035, 0)
ScrollingFrame.Size = UDim2.new(0, 100, 0, 524)

WoodRUs.Name = "WoodRUs"
WoodRUs.Parent = ScrollingFrame
WoodRUs.BackgroundColor3 = Color3.new(1, 1, 1)
WoodRUs.Size = UDim2.new(0, 95, 0, 24)
WoodRUs.Style = Enum.ButtonStyle.RobloxRoundButton
WoodRUs.Font = Enum.Font.SciFi
WoodRUs.Text = "WoodRUs"
WoodRUs.TextColor3 = Color3.new(0, 0, 0)
WoodRUs.TextSize = 15

SpawnPoint.Name = "SpawnPoint"
SpawnPoint.Parent = ScrollingFrame
SpawnPoint.BackgroundColor3 = Color3.new(1, 1, 1)
SpawnPoint.Position = UDim2.new(0, 0, 0.0281690136, 0)
SpawnPoint.Size = UDim2.new(0, 95, 0, 24)
SpawnPoint.Style = Enum.ButtonStyle.RobloxRoundButton
SpawnPoint.Font = Enum.Font.SciFi
SpawnPoint.Text = "SpawnPoint"
SpawnPoint.TextColor3 = Color3.new(0, 0, 0)
SpawnPoint.TextSize = 15

LandStore.Name = "LandStore"
LandStore.Parent = ScrollingFrame
LandStore.BackgroundColor3 = Color3.new(1, 1, 1)
LandStore.Position = UDim2.new(0, 0, 0.0580985919, 0)
LandStore.Size = UDim2.new(0, 95, 0, 24)
LandStore.Style = Enum.ButtonStyle.RobloxRoundButton
LandStore.Font = Enum.Font.SciFi
LandStore.Text = "LandStore"
LandStore.TextColor3 = Color3.new(0, 0, 0)
LandStore.TextSize = 15

LinksLogic.Name = "LinksLogic"
LinksLogic.Parent = ScrollingFrame
LinksLogic.BackgroundColor3 = Color3.new(1, 1, 1)
LinksLogic.Position = UDim2.new(0, 0, 0.0862676054, 0)
LinksLogic.Size = UDim2.new(0, 95, 0, 24)
LinksLogic.Style = Enum.ButtonStyle.RobloxRoundButton
LinksLogic.Font = Enum.Font.SciFi
LinksLogic.Text = "LinksLogic"
LinksLogic.TextColor3 = Color3.new(0, 0, 0)
LinksLogic.TextSize = 15

Cave.Name = "Cave"
Cave.Parent = ScrollingFrame
Cave.BackgroundColor3 = Color3.new(1, 1, 1)
Cave.Position = UDim2.new(0, 0, 0.115316905, 0)
Cave.Size = UDim2.new(0, 95, 0, 24)
Cave.Style = Enum.ButtonStyle.RobloxRoundButton
Cave.Font = Enum.Font.SciFi
Cave.Text = "Cave"
Cave.TextColor3 = Color3.new(0, 0, 0)
Cave.TextSize = 15

Swamp.Name = "Swamp"
Swamp.Parent = ScrollingFrame
Swamp.BackgroundColor3 = Color3.new(1, 1, 1)
Swamp.Position = UDim2.new(0, 0, 0.143485919, 0)
Swamp.Size = UDim2.new(0, 95, 0, 24)
Swamp.Style = Enum.ButtonStyle.RobloxRoundButton
Swamp.Font = Enum.Font.SciFi
Swamp.Text = "Swamp"
Swamp.TextColor3 = Color3.new(0, 0, 0)
Swamp.TextSize = 15

Volcano.Name = "Volcano"
Volcano.Parent = ScrollingFrame
Volcano.BackgroundColor3 = Color3.new(1, 1, 1)
Volcano.Position = UDim2.new(0, 0, 0.173415497, 0)
Volcano.Size = UDim2.new(0, 95, 0, 24)
Volcano.Style = Enum.ButtonStyle.RobloxRoundButton
Volcano.Font = Enum.Font.SciFi
Volcano.Text = "Volcano"
Volcano.TextColor3 = Color3.new(0, 0, 0)
Volcano.TextSize = 15

PalmIsland.Name = "PalmIsland"
PalmIsland.Parent = ScrollingFrame
PalmIsland.BackgroundColor3 = Color3.new(1, 1, 1)
PalmIsland.Position = UDim2.new(0, 0, 0.201584518, 0)
PalmIsland.Size = UDim2.new(0, 95, 0, 24)
PalmIsland.Style = Enum.ButtonStyle.RobloxRoundButton
PalmIsland.Font = Enum.Font.SciFi
PalmIsland.Text = "PalmIsland"
PalmIsland.TextColor3 = Color3.new(0, 0, 0)
PalmIsland.TextSize = 15

BobsShack.Name = "BobsShack"
BobsShack.Parent = ScrollingFrame
BobsShack.BackgroundColor3 = Color3.new(1, 1, 1)
BobsShack.Position = UDim2.new(0, 0, 0.228873238, 0)
BobsShack.Size = UDim2.new(0, 95, 0, 24)
BobsShack.Style = Enum.ButtonStyle.RobloxRoundButton
BobsShack.Font = Enum.Font.SciFi
BobsShack.Text = "BobsShack"
BobsShack.TextColor3 = Color3.new(0, 0, 0)
BobsShack.TextSize = 15

Bridge.Name = "Bridge"
Bridge.Parent = ScrollingFrame
Bridge.BackgroundColor3 = Color3.new(1, 1, 1)
Bridge.Position = UDim2.new(0, 0, 0.257042229, 0)
Bridge.Size = UDim2.new(0, 95, 0, 24)
Bridge.Style = Enum.ButtonStyle.RobloxRoundButton
Bridge.Font = Enum.Font.SciFi
Bridge.Text = "Bridge"
Bridge.TextColor3 = Color3.new(0, 0, 0)
Bridge.TextSize = 15

BoxedCars.Name = "BoxedCars"
BoxedCars.Parent = ScrollingFrame
BoxedCars.BackgroundColor3 = Color3.new(1, 1, 1)
BoxedCars.Position = UDim2.new(0, 0, 0.286971837, 0)
BoxedCars.Size = UDim2.new(0, 95, 0, 24)
BoxedCars.Style = Enum.ButtonStyle.RobloxRoundButton
BoxedCars.Font = Enum.Font.SciFi
BoxedCars.Text = "Boxed Cars"
BoxedCars.TextColor3 = Color3.new(0, 0, 0)
BoxedCars.TextSize = 15

EndTimes.Name = "EndTimes"
EndTimes.Parent = ScrollingFrame
EndTimes.BackgroundColor3 = Color3.new(1, 1, 1)
EndTimes.Position = UDim2.new(0, 0, 0.315140843, 0)
EndTimes.Size = UDim2.new(0, 95, 0, 24)
EndTimes.Style = Enum.ButtonStyle.RobloxRoundButton
EndTimes.Font = Enum.Font.SciFi
EndTimes.Text = "End Times"
EndTimes.TextColor3 = Color3.new(0, 0, 0)
EndTimes.TextSize = 15

Dock.Name = "Dock"
Dock.Parent = ScrollingFrame
Dock.BackgroundColor3 = Color3.new(1, 1, 1)
Dock.Position = UDim2.new(0, 0, 0.34419015, 0)
Dock.Size = UDim2.new(0, 95, 0, 24)
Dock.Style = Enum.ButtonStyle.RobloxRoundButton
Dock.Font = Enum.Font.SciFi
Dock.Text = "Dock"
Dock.TextColor3 = Color3.new(0, 0, 0)
Dock.TextSize = 15

FancyFurnishings.Name = "FancyFurnishings"
FancyFurnishings.Parent = ScrollingFrame
FancyFurnishings.BackgroundColor3 = Color3.new(1, 1, 1)
FancyFurnishings.Position = UDim2.new(0, 0, 0.402288705, 0)
FancyFurnishings.Size = UDim2.new(0, 95, 0, 24)
FancyFurnishings.Style = Enum.ButtonStyle.RobloxRoundButton
FancyFurnishings.Font = Enum.Font.SciFi
FancyFurnishings.Text = "FancyFurn"
FancyFurnishings.TextColor3 = Color3.new(0, 0, 0)
FancyFurnishings.TextSize = 15

ShrineOfSight.Name = "ShrineOfSight"
ShrineOfSight.Parent = ScrollingFrame
ShrineOfSight.BackgroundColor3 = Color3.new(1, 1, 1)
ShrineOfSight.Position = UDim2.new(0, 0, 0.372359127, 0)
ShrineOfSight.Size = UDim2.new(0, 95, 0, 24)
ShrineOfSight.Style = Enum.ButtonStyle.RobloxRoundButton
ShrineOfSight.Font = Enum.Font.SciFi
ShrineOfSight.Text = "Shrine"
ShrineOfSight.TextColor3 = Color3.new(0, 0, 0)
ShrineOfSight.TextSize = 15

FineArtsShop.Name = "FineArtsShop"
FineArtsShop.Parent = ScrollingFrame
FineArtsShop.BackgroundColor3 = Color3.new(1, 1, 1)
FineArtsShop.Position = UDim2.new(0, 0, 0.430457741, 0)
FineArtsShop.Size = UDim2.new(0, 95, 0, 24)
FineArtsShop.Style = Enum.ButtonStyle.RobloxRoundButton
FineArtsShop.Font = Enum.Font.SciFi
FineArtsShop.Text = "Fine Art"
FineArtsShop.TextColor3 = Color3.new(0, 0, 0)
FineArtsShop.TextSize = 15

StrangeMan.Name = "StrangeMan"
StrangeMan.Parent = ScrollingFrame
StrangeMan.BackgroundColor3 = Color3.new(1, 1, 1)
StrangeMan.Position = UDim2.new(0, 0, 0.544014096, 0)
StrangeMan.Size = UDim2.new(0, 95, 0, 24)
StrangeMan.Style = Enum.ButtonStyle.RobloxRoundButton
StrangeMan.Font = Enum.Font.SciFi
StrangeMan.Text = "StrangeMan"
StrangeMan.TextColor3 = Color3.new(0, 0, 0)
StrangeMan.TextSize = 15

VolcanoWin.Name = "VolcanoWin"
VolcanoWin.Parent = ScrollingFrame
VolcanoWin.BackgroundColor3 = Color3.new(1, 1, 1)
VolcanoWin.Position = UDim2.new(0, 0, 0.460387349, 0)
VolcanoWin.Size = UDim2.new(0, 95, 0, 24)
VolcanoWin.Style = Enum.ButtonStyle.RobloxRoundButton
VolcanoWin.Font = Enum.Font.SciFi
VolcanoWin.Text = "VolcanoWin"
VolcanoWin.TextColor3 = Color3.new(0, 0, 0)
VolcanoWin.TextSize = 15

TheDen.Name = "TheDen"
TheDen.Parent = ScrollingFrame
TheDen.BackgroundColor3 = Color3.new(1, 1, 1)
TheDen.Position = UDim2.new(0, 0, 0.489436626, 0)
TheDen.Size = UDim2.new(0, 95, 0, 24)
TheDen.Style = Enum.ButtonStyle.RobloxRoundButton
TheDen.Font = Enum.Font.SciFi
TheDen.Text = "The Den"
TheDen.TextColor3 = Color3.new(0, 0, 0)
TheDen.TextSize = 15

SkiLodge.Name = "SkiLodge"
SkiLodge.Parent = ScrollingFrame
SkiLodge.BackgroundColor3 = Color3.new(1, 1, 1)
SkiLodge.Position = UDim2.new(-0.200000003, 0, 0.510563374, 0)
SkiLodge.Size = UDim2.new(0, 95, 0, 24)
SkiLodge.Style = Enum.ButtonStyle.RobloxRoundButton
SkiLodge.Font = Enum.Font.SciFi
SkiLodge.Text = "SkiLodge"
SkiLodge.TextColor3 = Color3.new(0, 0, 0)
SkiLodge.TextSize = 15

PlayerTpFrame.Name = "PlayerTpFrame"
PlayerTpFrame.Parent = Copy
PlayerTpFrame.BackgroundColor3 = Color3.new(1, 1, 1)
PlayerTpFrame.Position = UDim2.new(0.926528156, 0, 0.176904216, 0)
PlayerTpFrame.Size = UDim2.new(0, 108, 0, 108)
PlayerTpFrame.Visible = false
PlayerTpFrame.Style = Enum.FrameStyle.RobloxRound

TpGo.Name = "TpGo"
TpGo.Parent = PlayerTpFrame
TpGo.BackgroundColor3 = Color3.new(1, 1, 1)
TpGo.Position = UDim2.new(-0.0277777798, 0, 0.692592621, 0)
TpGo.Size = UDim2.new(0, 97, 0, 34)
TpGo.Style = Enum.ButtonStyle.RobloxRoundButton
TpGo.Font = Enum.Font.SourceSans
TpGo.Text = "Teleport!"
TpGo.TextColor3 = Color3.new(0, 0, 0)
TpGo.TextSize = 19
TpGo.MouseButton1Down:connect(function()
	
end)

PlayerTpBox.Name = "PlayerTpBox"
PlayerTpBox.Parent = PlayerTpFrame
PlayerTpBox.BackgroundColor3 = Color3.new(1, 1, 1)
PlayerTpBox.BackgroundTransparency = 1
PlayerTpBox.Position = UDim2.new(-0.0293726027, 0, 0.220370382, 0)
PlayerTpBox.Size = UDim2.new(0, 97, 0, 33)
PlayerTpBox.Font = Enum.Font.SourceSans
PlayerTpBox.Text = ""
PlayerTpBox.TextColor3 = Color3.new(1, 1, 1)
PlayerTpBox.TextSize = 21

Nothing_2.Name = "Nothing"
Nothing_2.Parent = PlayerTpFrame
Nothing_2.BackgroundColor3 = Color3.new(1, 1, 1)
Nothing_2.Position = UDim2.new(-0.0833333358, 0, 0.174346209, 0)
Nothing_2.Size = UDim2.new(0, 107, 0, 41)
Nothing_2.Style = Enum.FrameStyle.RobloxRound

XplrTp.Name = "XplrTp"
XplrTp.Parent = PlayerTpFrame
XplrTp.BackgroundColor3 = Color3.new(1, 1, 1)
XplrTp.Position = UDim2.new(0.830668151, 0, -0.0853082091, 0)
XplrTp.Size = UDim2.new(0, 23, 0, 23)
XplrTp.Style = Enum.ButtonStyle.RobloxRoundButton
XplrTp.Font = Enum.Font.SourceSans
XplrTp.Text = "X"
XplrTp.TextColor3 = Color3.new(0, 0, 0)
XplrTp.TextSize = 14

PlayerFrame.Name = "PlayerFrame"
PlayerFrame.Parent = Copy
PlayerFrame.BackgroundColor3 = Color3.new(1, 1, 1)
PlayerFrame.Position = UDim2.new(0.856963634, 0, 0.0465870611, 0)
PlayerFrame.Size = UDim2.new(0, 222, 0, 105)
PlayerFrame.Visible = false
PlayerFrame.Style = Enum.FrameStyle.RobloxRound

Jump.Name = "Jump"
Jump.Parent = PlayerFrame
Jump.BackgroundColor3 = Color3.new(1, 1, 1)
Jump.Position = UDim2.new(0.546453774, 0, 0.665461063, 0)
Jump.Size = UDim2.new(0, 95, 0, 31)
Jump.Style = Enum.ButtonStyle.RobloxRoundButton
Jump.Font = Enum.Font.SourceSans
Jump.Text = "Add Jump"
Jump.TextColor3 = Color3.new(0, 0, 0)
Jump.TextSize = 22

Speed.Name = "Speed"
Speed.Parent = PlayerFrame
Speed.BackgroundColor3 = Color3.new(1, 1, 1)
Speed.Position = UDim2.new(-0.00760026742, 0, 0.665461063, 0)
Speed.Size = UDim2.new(0, 95, 0, 31)
Speed.Style = Enum.ButtonStyle.RobloxRoundButton
Speed.Font = Enum.Font.SourceSans
Speed.Text = "Add Speed"
Speed.TextColor3 = Color3.new(0, 0, 0)
Speed.TextSize = 22

SpeedBox.Name = "SpeedBox"
SpeedBox.Parent = PlayerFrame
SpeedBox.BackgroundColor3 = Color3.new(1, 1, 1)
SpeedBox.BackgroundTransparency = 1
SpeedBox.Position = UDim2.new(0.0292589404, 0, 0.35691607, 0)
SpeedBox.Size = UDim2.new(0, 78, 0, 25)
SpeedBox.Font = Enum.Font.SourceSans
SpeedBox.Text = ""
SpeedBox.TextColor3 = Color3.new(1, 1, 1)
SpeedBox.TextSize = 14

JumpBox.Name = "JumpBox"
JumpBox.Parent = PlayerFrame
JumpBox.BackgroundColor3 = Color3.new(1, 1, 1)
JumpBox.BackgroundTransparency = 1
JumpBox.Position = UDim2.new(0.58781755, 0, 0.35691607, 0)
JumpBox.Size = UDim2.new(0, 78, 0, 25)
JumpBox.Font = Enum.Font.SourceSans
JumpBox.Text = ""
JumpBox.TextColor3 = Color3.new(1, 1, 1)
JumpBox.TextSize = 14

Xsj.Name = "Xsj"
Xsj.Parent = PlayerFrame
Xsj.BackgroundColor3 = Color3.new(1, 1, 1)
Xsj.Position = UDim2.new(0.929597378, 0, -0.0921854824, 0)
Xsj.Size = UDim2.new(0, 23, 0, 23)
Xsj.Style = Enum.ButtonStyle.RobloxRoundButton
Xsj.Font = Enum.Font.SourceSans
Xsj.Text = "X"
Xsj.TextColor3 = Color3.new(0, 0, 0)
Xsj.TextSize = 14

Nothing_3.Name = "Nothing"
Nothing_3.Parent = PlayerFrame
Nothing_3.BackgroundColor3 = Color3.new(1, 1, 1)
Nothing_3.Position = UDim2.new(0.00984095596, 0, 0.306382596, 0)
Nothing_3.Size = UDim2.new(0, 87, 0, 33)
Nothing_3.Style = Enum.FrameStyle.RobloxRound

Nothing_4.Name = "Nothing"
Nothing_4.Parent = PlayerFrame
Nothing_4.BackgroundColor3 = Color3.new(1, 1, 1)
Nothing_4.Position = UDim2.new(0.568399489, 0, 0.306382596, 0)
Nothing_4.Size = UDim2.new(0, 87, 0, 33)
Nothing_4.Style = Enum.FrameStyle.RobloxRound

Nothing_5.Name = "Nothing"
Nothing_5.Parent = PlayerFrame
Nothing_5.BackgroundColor3 = Color3.new(1, 1, 1)
Nothing_5.BackgroundTransparency = 1
Nothing_5.BorderColor3 = Color3.new(0.541176, 0.541176, 0.541176)
Nothing_5.Position = UDim2.new(0.00803519506, 0, 0.0401814133, 0)
Nothing_5.Size = UDim2.new(0, 200, 0, 24)
Nothing_5.Font = Enum.Font.SourceSans
Nothing_5.Text = "Speed                Jump"
Nothing_5.TextColor3 = Color3.new(0.792157, 0.792157, 0.792157)
Nothing_5.TextSize = 25
Nothing_5.TextStrokeColor3 = Color3.new(0.462745, 0.462745, 0.462745)

AutoSellFrame.Name = "AutoSellFrame"
AutoSellFrame.Parent = Copy
AutoSellFrame.BackgroundColor3 = Color3.new(1, 1, 1)
AutoSellFrame.Position = UDim2.new(0.856831253, 0, 0.874692917, 0)
AutoSellFrame.Size = UDim2.new(0, 108, 0, 108)
AutoSellFrame.Visible = false
AutoSellFrame.Style = Enum.FrameStyle.RobloxRound

SellWood.Name = "SellWood"
SellWood.Parent = AutoSellFrame
SellWood.BackgroundColor3 = Color3.new(1, 1, 1)
SellWood.Position = UDim2.new(-0.00668221898, 0, 0.164123103, 0)
SellWood.Size = UDim2.new(0, 92, 0, 40)
SellWood.Style = Enum.ButtonStyle.RobloxRoundButton
SellWood.Font = Enum.Font.SourceSans
SellWood.Text = "Sell Wood [H]"
SellWood.TextColor3 = Color3.new(0, 0, 0)
SellWood.TextSize = 18
SellWood.MouseButton1Down:connect(function()
	
end)

SellPlanks.Name = "SellPlanks"
SellPlanks.Parent = AutoSellFrame
SellPlanks.BackgroundColor3 = Color3.new(1, 1, 1)
SellPlanks.Position = UDim2.new(-0.00668221898, 0, 0.584353149, 0)
SellPlanks.Size = UDim2.new(0, 92, 0, 41)
SellPlanks.Style = Enum.ButtonStyle.RobloxRoundButton
SellPlanks.Font = Enum.Font.SourceSans
SellPlanks.Text = "Sell Planks [G]"
SellPlanks.TextColor3 = Color3.new(0, 0, 0)
SellPlanks.TextSize = 18
SellPlanks.MouseButton1Down:connect(function()
	
end)

Xas.Name = "Xas"
Xas.Parent = AutoSellFrame
Xas.BackgroundColor3 = Color3.new(1, 1, 1)
Xas.Position = UDim2.new(0.830668151, 0, -0.0853082091, 0)
Xas.Size = UDim2.new(0, 23, 0, 23)
Xas.Style = Enum.ButtonStyle.RobloxRoundButton
Xas.Font = Enum.Font.SourceSans
Xas.Text = "X"
Xas.TextColor3 = Color3.new(0, 0, 0)
Xas.TextSize = 14

Xsj.MouseButton1Down:connect(function()
	PlayerFrame.Visible = false
end)

XplrTp.MouseButton1Down:connect(function()
	PlayerTpFrame.Visible = false
end)

XTp.MouseButton1Down:connect(function()
	TeleportsFrame.Visible = false
end)

XCln.MouseButton1Down:connect(function()
	CloneFrame.Visible = false
end)

Xas.MouseButton1Down:connect(function()
	AutoSellFrame.Visible = false
end)

Clone.MouseButton1Down:connect(function()
	CloneFrame.Visible = true
end)

Teleports.MouseButton1Down:connect(function()
	TeleportsFrame.Visible = true
end)

AutoSell.MouseButton1Down:connect(function()
	AutoSellFrame.Visible = true
end)

Open.MouseButton1Down:connect(function()
	MainFrame.Visible = true
OpenFrame.Visible = false
end)

TpPlayer.MouseButton1Down:connect(function()
	PlayerTpFrame.Visible = true
end)

AutoSellFrame.Draggable = true

CloneFrame.Draggable = true

PlayerFrame.Draggable = true

PlayerTpFrame.Draggable = true

TeleportsFrame.Draggable = true


--GodAxe--------------------------------------------------------------------------------

GodAxe.MouseButton1Down:connect(function()
	Player = game.Players.LocalPlayer
mouse = Player:GetMouse()
game:GetService('RunService').RenderStepped:connect(function()
	if Player.Character:FindFirstChild("Tool") then
		if MouseDown == true then
			if mouse.Target.Name == "WoodSection" then
				targetWood = mouse.Target
				Tool=Player.Character.Tool
				---FaceVector
				Height = targetWood.CFrame:pointToObjectSpace(mouse.Hit.p).Y + targetWood.Size.Y/2
				local ray = Ray.new(Player.Character.Head.Position, ((targetWood.CFrame * CFrame.new(0, Height - targetWood.Size.Y/2, 0)).p - Player.Character.Head.Position).unit * 200)
				part,_,p = workspace:FindPartOnRay(ray, Player.Character)
				function fixVector(V)
					return Vector3.new(math.floor(V.X + 0.5), math.floor(V.Y + 0.5), math.floor(V.Z + 0.5))
				end
				local faceVector = fixVector(targetWood.CFrame:vectorToObjectSpace(p))
				if faceVector.Y ~= 0 then
					return
				end
				local lookAtCFrame = CFrame.new(Player.Character.Head.Position, mouse.Hit.p)
				local relativeCFrame = lookAtCFrame:toObjectSpace(targetWood.CFrame * CFrame.Angles(math.pi/2, 0, 0))
				local relativeLookVector = relativeCFrame.lookVector
				local m = relativeLookVector.Y >= 0 and 1 or -1
				if faceVector.X == 1 then
					faceVector = Vector3.new(0, 0, -1) * m
				elseif faceVector.X == -1 then
					faceVector = Vector3.new(0, 0, 1) * m
				elseif faceVector.Z == 1 then
					faceVector = Vector3.new(1, 0, 0) * m
				elseif faceVector.Z == -1 then
					faceVector = Vector3.new(-1, 0, 0) * m
				end
				local cutEvent = targetWood.Parent.CutEvent
				game.ReplicatedStorage.Interaction.RemoteProxy:FireServer(cutEvent, {sectionId = targetWood.ID.Value, faceVector = faceVector, height = Height, hitPoints = 0.2, cooldown = 0, cuttingClass = "Axe", tool = Player.Character.Tool})
			end
		end
	end
end)
end)

--MaxLand-------------------------------------------------------------------------------

MaxLand.MouseButton1Down:connect(function()
	for i, v in pairs(game:GetService("Workspace").Properties:GetChildren()) do
		if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
			base = v
			square = v.OriginSquare
			end
		end
	function makebase(pos)
		local Event = game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty
		Event:FireServer(base, pos)
		end
	spos = square.Position
	makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z))
	makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z))
	makebase(CFrame.new(spos.X, spos.Y, spos.Z + 40))
	makebase(CFrame.new(spos.X, spos.Y, spos.Z - 40))
	makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z + 40))
	makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z - 40))
	makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z + 40))
	makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z - 40))
	makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z))
	makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z))
	makebase(CFrame.new(spos.X, spos.Y, spos.Z + 80))
	makebase(CFrame.new(spos.X, spos.Y, spos.Z - 80))
--Corners--
	makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z + 80))
	makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z - 80))
	makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z + 80))
	makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z - 80))
--Corners--
	makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z + 80))
	makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z + 80))
	makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z + 40))
	makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z - 40))
	makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z + 40))
	makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z - 40))
	makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z - 80))
	makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z - 80))
end)

--PaintTool-----------------------------------------------------------------------------

PaintTool.MouseButton1Down:connect(function()
	-- Instances:
local ColorPicker = Instance.new("ScreenGui")
local ChangeColor = Instance.new("Frame")
local CurrentColor = Instance.new("ImageButton")
local Picker = Instance.new("ScrollingFrame")
local Birch = Instance.new("ImageButton")
local DropShadow = Instance.new("Frame")
local Grey = Instance.new("ImageButton")
local DropShadow_2 = Instance.new("Frame")
local Walnut = Instance.new("ImageButton")
local DropShadow_3 = Instance.new("Frame")
local Generic = Instance.new("ImageButton")
local DropShadow_4 = Instance.new("Frame")
local Oak = Instance.new("ImageButton")
local DropShadow_5 = Instance.new("Frame")
local Pine = Instance.new("ImageButton")
local DropShadow_6 = Instance.new("Frame")
local Palm = Instance.new("ImageButton")
local DropShadow_7 = Instance.new("Frame")
local Cherry = Instance.new("ImageButton")
local DropShadow_8 = Instance.new("Frame")
local Koa = Instance.new("ImageButton")
local DropShadow_9 = Instance.new("Frame")
local Volcano = Instance.new("ImageButton")
local DropShadow_10 = Instance.new("Frame")
local GreenSwampy = Instance.new("ImageButton")
local DropShadow_11 = Instance.new("Frame")
local GoldSwampy = Instance.new("ImageButton")
local DropShadow_12 = Instance.new("Frame")
local GenericSpecial = Instance.new("ImageButton")
local DropShadow_13 = Instance.new("Frame")
local SnowGlow = Instance.new("ImageButton")
local DropShadow_14 = Instance.new("Frame")
local Frost = Instance.new("ImageButton")
local DropShadow_15 = Instance.new("Frame")
local CaveCrawler = Instance.new("ImageButton")
local DropShadow_16 = Instance.new("Frame")
local LoneCave = Instance.new("ImageButton")
local DropShadow_17 = Instance.new("Frame")
local Spooky = Instance.new("ImageButton")
local DropShadow_18 = Instance.new("Frame")
local SpookyNeon = Instance.new("ImageButton")
local DropShadow_19 = Instance.new("Frame")
--Properties:
ColorPicker.Name = "ColorPicker"
ColorPicker.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

ChangeColor.Name = "ChangeColor"
ChangeColor.Parent = ColorPicker
ChangeColor.BackgroundColor3 = Color3.new(0.176471, 0.254902, 0.427451)
ChangeColor.BorderColor3 = Color3.new(0, 0, 0)
ChangeColor.BorderSizePixel = 2
ChangeColor.Position = UDim2.new(0, 10, 1, -110)
ChangeColor.Size = UDim2.new(0, 100, 0, 100)
ChangeColor.ZIndex = 2
ColorPicker.Enabled = false

CurrentColor.Name = "CurrentColor"
CurrentColor.Parent = ChangeColor
CurrentColor.BackgroundColor3 = Color3.new(0.176471, 0.254902, 0.427451)
CurrentColor.BorderColor3 = Color3.new(0, 0, 0)
CurrentColor.BorderSizePixel = 2
CurrentColor.Position = UDim2.new(0, 10, 0, 10)
CurrentColor.Size = UDim2.new(0, 80, 0, 80)
CurrentColor.ZIndex = 2
CurrentColor.Image = "rbxassetid://2712547918"
CurrentColor.ScaleType = Enum.ScaleType.Crop

Picker.Name = "Picker"
Picker.Parent = ColorPicker
Picker.BackgroundColor3 = Color3.new(0.176471, 0.254902, 0.427451)
Picker.BorderColor3 = Color3.new(0, 0, 0)
Picker.BorderSizePixel = 2
Picker.Position = UDim2.new(0, 10, 1, -320)
Picker.Size = UDim2.new(0, 100, 0, 200)
Picker.CanvasPosition = Vector2.new(0, 700)
Picker.CanvasSize = UDim2.new(0, 0, 0, 900)
Picker.ScrollBarThickness = 7
Picker.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left
Picker.Visible = false

Birch.Name = "Birch"
Birch.Parent = Picker
Birch.BackgroundColor3 = Color3.new(1, 1, 1)
Birch.BorderColor3 = Color3.new(0, 0, 0)
Birch.Position = UDim2.new(0, 10, 0, 5)
Birch.Size = UDim2.new(0, 80, 0, 40)
Birch.ZIndex = 3
Birch.Image = "rbxassetid://2712547918"
Birch.ScaleType = Enum.ScaleType.Crop

DropShadow.Name = "DropShadow"
DropShadow.Parent = Birch
DropShadow.BackgroundColor3 = Color3.new(0, 0, 0)
DropShadow.BorderSizePixel = 0
DropShadow.Position = UDim2.new(0, 4, 0, 4)
DropShadow.Size = UDim2.new(1, 0, 1, 0)
DropShadow.ZIndex = 2

Grey.Name = "Grey"
Grey.Parent = Picker
Grey.BackgroundColor3 = Color3.new(1, 1, 1)
Grey.BorderColor3 = Color3.new(0, 0, 0)
Grey.Position = UDim2.new(0, 10, 0, 55)
Grey.Size = UDim2.new(0, 80, 0, 40)
Grey.ZIndex = 3
Grey.Image = "rbxassetid://924320031"
Grey.ScaleType = Enum.ScaleType.Crop

DropShadow_2.Name = "DropShadow"
DropShadow_2.Parent = Grey
DropShadow_2.BackgroundColor3 = Color3.new(0, 0, 0)
DropShadow_2.BorderSizePixel = 0
DropShadow_2.Position = UDim2.new(0, 4, 0, 4)
DropShadow_2.Size = UDim2.new(1, 0, 1, 0)
DropShadow_2.ZIndex = 2

Walnut.Name = "Walnut"
Walnut.Parent = Picker
Walnut.BackgroundColor3 = Color3.new(1, 1, 1)
Walnut.BorderColor3 = Color3.new(0, 0, 0)
Walnut.Position = UDim2.new(0, 10, 0, 105)
Walnut.Size = UDim2.new(0, 80, 0, 40)
Walnut.ZIndex = 3
Walnut.Image = "rbxassetid://2712559790"
Walnut.ScaleType = Enum.ScaleType.Crop

DropShadow_3.Name = "DropShadow"
DropShadow_3.Parent = Walnut
DropShadow_3.BackgroundColor3 = Color3.new(0, 0, 0)
DropShadow_3.BorderSizePixel = 0
DropShadow_3.Position = UDim2.new(0, 4, 0, 4)
DropShadow_3.Size = UDim2.new(1, 0, 1, 0)
DropShadow_3.ZIndex = 2

Generic.Name = "Generic"
Generic.Parent = Picker
Generic.BackgroundColor3 = Color3.new(1, 1, 1)
Generic.BorderColor3 = Color3.new(0, 0, 0)
Generic.Position = UDim2.new(0, 10, 0, 155)
Generic.Size = UDim2.new(0, 80, 0, 40)
Generic.ZIndex = 3
Generic.Image = "rbxassetid://2712568624"
Generic.ScaleType = Enum.ScaleType.Crop

DropShadow_4.Name = "DropShadow"
DropShadow_4.Parent = Generic
DropShadow_4.BackgroundColor3 = Color3.new(0, 0, 0)
DropShadow_4.BorderSizePixel = 0
DropShadow_4.Position = UDim2.new(0, 4, 0, 4)
DropShadow_4.Size = UDim2.new(1, 0, 1, 0)
DropShadow_4.ZIndex = 2

Oak.Name = "Oak"
Oak.Parent = Picker
Oak.BackgroundColor3 = Color3.new(1, 1, 1)
Oak.BorderColor3 = Color3.new(0, 0, 0)
Oak.Position = UDim2.new(0, 10, 0, 205)
Oak.Size = UDim2.new(0, 80, 0, 40)
Oak.ZIndex = 3
Oak.Image = "rbxassetid://2712579185"
Oak.ScaleType = Enum.ScaleType.Crop

DropShadow_5.Name = "DropShadow"
DropShadow_5.Parent = Oak
DropShadow_5.BackgroundColor3 = Color3.new(0, 0, 0)
DropShadow_5.BorderSizePixel = 0
DropShadow_5.Position = UDim2.new(0, 4, 0, 4)
DropShadow_5.Size = UDim2.new(1, 0, 1, 0)
DropShadow_5.ZIndex = 2

Pine.Name = "Pine"
Pine.Parent = Picker
Pine.BackgroundColor3 = Color3.new(1, 1, 1)
Pine.BorderColor3 = Color3.new(0, 0, 0)
Pine.Position = UDim2.new(0, 10, 0, 255)
Pine.Size = UDim2.new(0, 80, 0, 40)
Pine.ZIndex = 3
Pine.Image = "rbxassetid://2712591183"
Pine.ScaleType = Enum.ScaleType.Crop

DropShadow_6.Name = "DropShadow"
DropShadow_6.Parent = Pine
DropShadow_6.BackgroundColor3 = Color3.new(0, 0, 0)
DropShadow_6.BorderSizePixel = 0
DropShadow_6.Position = UDim2.new(0, 4, 0, 4)
DropShadow_6.Size = UDim2.new(1, 0, 1, 0)
DropShadow_6.ZIndex = 2

Palm.Name = "Palm"
Palm.Parent = Picker
Palm.BackgroundColor3 = Color3.new(1, 1, 1)
Palm.BorderColor3 = Color3.new(0, 0, 0)
Palm.Position = UDim2.new(0, 10, 0, 305)
Palm.Size = UDim2.new(0, 80, 0, 40)
Palm.ZIndex = 3
Palm.Image = "rbxassetid://2712597395"
Palm.ScaleType = Enum.ScaleType.Crop

DropShadow_7.Name = "DropShadow"
DropShadow_7.Parent = Palm
DropShadow_7.BackgroundColor3 = Color3.new(0, 0, 0)
DropShadow_7.BorderSizePixel = 0
DropShadow_7.Position = UDim2.new(0, 4, 0, 4)
DropShadow_7.Size = UDim2.new(1, 0, 1, 0)
DropShadow_7.ZIndex = 2

Cherry.Name = "Cherry"
Cherry.Parent = Picker
Cherry.BackgroundColor3 = Color3.new(1, 1, 1)
Cherry.BorderColor3 = Color3.new(0, 0, 0)
Cherry.Position = UDim2.new(0, 10, 0, 355)
Cherry.Size = UDim2.new(0, 80, 0, 40)
Cherry.ZIndex = 3
Cherry.Image = "rbxassetid://2712608599"
Cherry.ScaleType = Enum.ScaleType.Crop

DropShadow_8.Name = "DropShadow"
DropShadow_8.Parent = Cherry
DropShadow_8.BackgroundColor3 = Color3.new(0, 0, 0)
DropShadow_8.BorderSizePixel = 0
DropShadow_8.Position = UDim2.new(0, 4, 0, 4)
DropShadow_8.Size = UDim2.new(1, 0, 1, 0)
DropShadow_8.ZIndex = 2

Koa.Name = "Koa"
Koa.Parent = Picker
Koa.BackgroundColor3 = Color3.new(1, 1, 1)
Koa.BorderColor3 = Color3.new(0, 0, 0)
Koa.Position = UDim2.new(0, 10, 0, 355)
Koa.Size = UDim2.new(0, 80, 0, 40)
Koa.ZIndex = 3
Koa.Image = "rbxassetid://2712612798"
Koa.ScaleType = Enum.ScaleType.Crop

DropShadow_9.Name = "DropShadow"
DropShadow_9.Parent = Koa
DropShadow_9.BackgroundColor3 = Color3.new(0, 0, 0)
DropShadow_9.BorderSizePixel = 0
DropShadow_9.Position = UDim2.new(0, 4, 0, 4)
DropShadow_9.Size = UDim2.new(1, 0, 1, 0)
DropShadow_9.ZIndex = 2

Volcano.Name = "Volcano"
Volcano.Parent = Picker
Volcano.BackgroundColor3 = Color3.new(1, 1, 1)
Volcano.BorderColor3 = Color3.new(0, 0, 0)
Volcano.Position = UDim2.new(0, 10, 0, 405)
Volcano.Size = UDim2.new(0, 80, 0, 40)
Volcano.ZIndex = 3
Volcano.Image = "rbxassetid://2712618609"
Volcano.ScaleType = Enum.ScaleType.Crop

DropShadow_10.Name = "DropShadow"
DropShadow_10.Parent = Volcano
DropShadow_10.BackgroundColor3 = Color3.new(0, 0, 0)
DropShadow_10.BorderSizePixel = 0
DropShadow_10.Position = UDim2.new(0, 4, 0, 4)
DropShadow_10.Size = UDim2.new(1, 0, 1, 0)
DropShadow_10.ZIndex = 2

GreenSwampy.Name = "GreenSwampy"
GreenSwampy.Parent = Picker
GreenSwampy.BackgroundColor3 = Color3.new(1, 1, 1)
GreenSwampy.BorderColor3 = Color3.new(0, 0, 0)
GreenSwampy.Position = UDim2.new(0, 10, 0, 455)
GreenSwampy.Size = UDim2.new(0, 80, 0, 40)
GreenSwampy.ZIndex = 3
GreenSwampy.Image = "rbxassetid://2712623896"
GreenSwampy.ScaleType = Enum.ScaleType.Crop

DropShadow_11.Name = "DropShadow"
DropShadow_11.Parent = GreenSwampy
DropShadow_11.BackgroundColor3 = Color3.new(0, 0, 0)
DropShadow_11.BorderSizePixel = 0
DropShadow_11.Position = UDim2.new(0, 4, 0, 4)
DropShadow_11.Size = UDim2.new(1, 0, 1, 0)
DropShadow_11.ZIndex = 2

GoldSwampy.Name = "GoldSwampy"
GoldSwampy.Parent = Picker
GoldSwampy.BackgroundColor3 = Color3.new(1, 1, 1)
GoldSwampy.BorderColor3 = Color3.new(0, 0, 0)
GoldSwampy.Position = UDim2.new(0, 10, 0, 505)
GoldSwampy.Size = UDim2.new(0, 80, 0, 40)
GoldSwampy.ZIndex = 3
GoldSwampy.Image = "rbxassetid://2712631457"
GoldSwampy.ScaleType = Enum.ScaleType.Crop

DropShadow_12.Name = "DropShadow"
DropShadow_12.Parent = GoldSwampy
DropShadow_12.BackgroundColor3 = Color3.new(0, 0, 0)
DropShadow_12.BorderSizePixel = 0
DropShadow_12.Position = UDim2.new(0, 4, 0, 4)
DropShadow_12.Size = UDim2.new(1, 0, 1, 0)
DropShadow_12.ZIndex = 2

GenericSpecial.Name = "GenericSpecial"
GenericSpecial.Parent = Picker
GenericSpecial.BackgroundColor3 = Color3.new(1, 1, 1)
GenericSpecial.BorderColor3 = Color3.new(0, 0, 0)
GenericSpecial.Position = UDim2.new(0, 10, 0, 555)
GenericSpecial.Size = UDim2.new(0, 80, 0, 40)
GenericSpecial.ZIndex = 3
GenericSpecial.Image = "rbxassetid://2712639396"
GenericSpecial.ScaleType = Enum.ScaleType.Crop

DropShadow_13.Name = "DropShadow"
DropShadow_13.Parent = GenericSpecial
DropShadow_13.BackgroundColor3 = Color3.new(0, 0, 0)
DropShadow_13.BorderSizePixel = 0
DropShadow_13.Position = UDim2.new(0, 4, 0, 4)
DropShadow_13.Size = UDim2.new(1, 0, 1, 0)
DropShadow_13.ZIndex = 2

SnowGlow.Name = "SnowGlow"
SnowGlow.Parent = Picker
SnowGlow.BackgroundColor3 = Color3.new(1, 1, 1)
SnowGlow.BorderColor3 = Color3.new(0, 0, 0)
SnowGlow.Position = UDim2.new(0, 10, 0, 605)
SnowGlow.Size = UDim2.new(0, 80, 0, 40)
SnowGlow.ZIndex = 3
SnowGlow.Image = "rbxassetid://2712651454"
SnowGlow.ScaleType = Enum.ScaleType.Crop

DropShadow_14.Name = "DropShadow"
DropShadow_14.Parent = SnowGlow
DropShadow_14.BackgroundColor3 = Color3.new(0, 0, 0)
DropShadow_14.BorderSizePixel = 0
DropShadow_14.Position = UDim2.new(0, 4, 0, 4)
DropShadow_14.Size = UDim2.new(1, 0, 1, 0)
DropShadow_14.ZIndex = 2

Frost.Name = "Frost"
Frost.Parent = Picker
Frost.BackgroundColor3 = Color3.new(1, 1, 1)
Frost.BorderColor3 = Color3.new(0, 0, 0)
Frost.Position = UDim2.new(0, 10, 0, 655)
Frost.Size = UDim2.new(0, 80, 0, 40)
Frost.ZIndex = 3
Frost.Image = "rbxassetid://2712667804"
Frost.ScaleType = Enum.ScaleType.Crop

DropShadow_15.Name = "DropShadow"
DropShadow_15.Parent = Frost
DropShadow_15.BackgroundColor3 = Color3.new(0, 0, 0)
DropShadow_15.BorderSizePixel = 0
DropShadow_15.Position = UDim2.new(0, 4, 0, 4)
DropShadow_15.Size = UDim2.new(1, 0, 1, 0)
DropShadow_15.ZIndex = 2

CaveCrawler.Name = "CaveCrawler"
CaveCrawler.Parent = Picker
CaveCrawler.BackgroundColor3 = Color3.new(1, 1, 1)
CaveCrawler.BorderColor3 = Color3.new(0, 0, 0)
CaveCrawler.Position = UDim2.new(0, 10, 0, 705)
CaveCrawler.Size = UDim2.new(0, 80, 0, 40)
CaveCrawler.ZIndex = 3
CaveCrawler.Image = "rbxassetid://2712673980"
CaveCrawler.ScaleType = Enum.ScaleType.Crop

DropShadow_16.Name = "DropShadow"
DropShadow_16.Parent = CaveCrawler
DropShadow_16.BackgroundColor3 = Color3.new(0, 0, 0)
DropShadow_16.BorderSizePixel = 0
DropShadow_16.Position = UDim2.new(0, 4, 0, 4)
DropShadow_16.Size = UDim2.new(1, 0, 1, 0)
DropShadow_16.ZIndex = 2

LoneCave.Name = "LoneCave"
LoneCave.Parent = Picker
LoneCave.BackgroundColor3 = Color3.new(1, 1, 1)
LoneCave.BorderColor3 = Color3.new(0, 0, 0)
LoneCave.Position = UDim2.new(0, 10, 0, 755)
LoneCave.Size = UDim2.new(0, 80, 0, 40)
LoneCave.ZIndex = 3
LoneCave.Image = "rbxassetid://2712693147"
LoneCave.ScaleType = Enum.ScaleType.Crop

DropShadow_17.Name = "DropShadow"
DropShadow_17.Parent = LoneCave
DropShadow_17.BackgroundColor3 = Color3.new(0, 0, 0)
DropShadow_17.BorderSizePixel = 0
DropShadow_17.Position = UDim2.new(0, 4, 0, 4)
DropShadow_17.Size = UDim2.new(1, 0, 1, 0)
DropShadow_17.ZIndex = 2

Spooky.Name = "Spooky"
Spooky.Parent = Picker
Spooky.BackgroundColor3 = Color3.new(1, 1, 1)
Spooky.BorderColor3 = Color3.new(0, 0, 0)
Spooky.Position = UDim2.new(0, 10, 0, 805)
Spooky.Size = UDim2.new(0, 80, 0, 40)
Spooky.ZIndex = 3
Spooky.Image = "rbxassetid://2712696822"
Spooky.ScaleType = Enum.ScaleType.Crop

DropShadow_18.Name = "DropShadow"
DropShadow_18.Parent = Spooky
DropShadow_18.BackgroundColor3 = Color3.new(0, 0, 0)
DropShadow_18.BorderSizePixel = 0
DropShadow_18.Position = UDim2.new(0, 4, 0, 4)
DropShadow_18.Size = UDim2.new(1, 0, 1, 0)
DropShadow_18.ZIndex = 2

SpookyNeon.Name = "SpookyNeon"
SpookyNeon.Parent = Picker
SpookyNeon.BackgroundColor3 = Color3.new(1, 1, 1)
SpookyNeon.BorderColor3 = Color3.new(0, 0, 0)
SpookyNeon.Position = UDim2.new(0, 10, 0, 855)
SpookyNeon.Size = UDim2.new(0, 80, 0, 40)
SpookyNeon.ZIndex = 3
SpookyNeon.Image = "rbxassetid://2712700047"
SpookyNeon.ScaleType = Enum.ScaleType.Crop

DropShadow_19.Name = "DropShadow"
DropShadow_19.Parent = SpookyNeon
DropShadow_19.BackgroundColor3 = Color3.new(0, 0, 0)
DropShadow_19.BorderSizePixel = 0
DropShadow_19.Position = UDim2.new(0, 4, 0, 4)
DropShadow_19.Size = UDim2.new(1, 0, 1, 0)
DropShadow_19.ZIndex = 2
-- Scripts:
woodtype = "Birch"

local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.RequiresHandle = false
--tool.RobloxLocked = true
tool.Name = "Paint"
tool.ToolTip = "Changes A Stucture's Wood Type"
tool.Equipped:connect(function(Mouse)
ColorPicker.Enabled = true
Mouse.Button1Down:connect(function()
if Mouse.Target.Parent:FindFirstChild("Type") or Mouse.Target.Parent:FindFirstChild("BlueprintWoodClass") then
local Cframe
if Mouse.Target.Parent:FindFirstChild("MainCFrame") then
Cframe = Mouse.Target.Parent.MainCFrame.Value
else
Cframe = Mouse.Target.Parent.PrimaryPart.CFrame
end
if Mouse.Target.Parent ~= nil then
game.ReplicatedStorage.PlaceStructure.ClientPlacedStructure:FireServer(Mouse.Target.Parent.ItemName.Value, Cframe, game.Players.LocalPlayer, woodtype, Mouse.Target.Parent, false)
end
else
--do nothing
end
end)
end)

tool.Unequipped:connect(function(mouse)
ColorPicker.Enabled = false
end)


Birch.MouseButton1Click:Connect(function()
CurrentColor.Image = Birch.Image
woodtype = "Birch"
end)

Grey.MouseButton1Click:Connect(function()
CurrentColor.Image = Grey.Image
woodtype = nil
end)

Walnut.MouseButton1Click:Connect(function()
CurrentColor.Image = Walnut.Image
woodtype = "Walnut"
end)

Generic.MouseButton1Click:Connect(function()
CurrentColor.Image = Generic.Image
woodtype = "Generic"
end)

Oak.MouseButton1Click:Connect(function()
CurrentColor.Image = Oak.Image
woodtype = "Oak"
end)

Pine.MouseButton1Click:Connect(function()
CurrentColor.Image = Pine.Image
woodtype = "Pine"
end)

Palm.MouseButton1Click:Connect(function()
CurrentColor.Image = Palm.Image
woodtype = "Palm"
end)

Koa.MouseButton1Click:Connect(function()
CurrentColor.Image = Koa.Image
woodtype = "Koa"
end)

Volcano.MouseButton1Click:Connect(function()
CurrentColor.Image = Volcano.Image
woodtype = "Volcano"
end)

GreenSwampy.MouseButton1Click:Connect(function()
CurrentColor.Image = GreenSwampy.Image
woodtype = "GreenSwampy"
end)

GoldSwampy.MouseButton1Click:Connect(function()
CurrentColor.Image = GoldSwampy.Image
woodtype = "GoldSwampy"
end)

GenericSpecial.MouseButton1Click:Connect(function()
CurrentColor.Image = GenericSpecial.Image
woodtype = "GenericSpecial"
end)

SnowGlow.MouseButton1Click:Connect(function()
CurrentColor.Image = SnowGlow.Image
woodtype = "SnowGlow"
end)

Frost.MouseButton1Click:Connect(function()
CurrentColor.Image = Frost.Image
woodtype = "Frost"
end)

CaveCrawler.MouseButton1Click:Connect(function()
CurrentColor.Image = CaveCrawler.Image
woodtype = "CaveCrawler"
end)

LoneCave.MouseButton1Click:Connect(function()
CurrentColor.Image = LoneCave.Image
woodtype = "LoneCave"
end)

Spooky.MouseButton1Click:Connect(function()
CurrentColor.Image = Spooky.Image
woodtype = "Spooky"
end)

SpookyNeon.MouseButton1Click:Connect(function()
CurrentColor.Image = SpookyNeon.Image
woodtype = "SpookyNeon"
end)

--bring up menu
CurrentColor.MouseButton1Click:Connect(function()
if Picker.Visible == false then
Picker.Visible = true
else
Picker.Visible = false
end
end)
end)

--PlotTp--------------------------------------------------------------------------------

PlotTp.MouseButton1Down:connect(function()
	for i,v in pairs(game.Workspace.Properties:GetChildren()) do
		if v.Owner.Value == game.Players.LocalPlayer then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.OriginSquare.CFrame + Vector3.new(0,10,0)
		end
	end
end)

--RemoveFog-----------------------------------------------------------------------------

RemoveFog.MouseButton1Down:connect(function()
	game.Lighting.Changed:connect(function()
	game.Lighting.TimeOfDay = "12:00:00"
	game.Lighting.FogEnd = 9999
	game.Lighting.Brightness = 1
end)
end)

--Fly-----------------------------------------------------------------------------------

Fly.MouseButton1Down:connect(function()
	for i,v in pairs(script:GetChildren()) do
	pcall(function() v.Value = "" end)
			game:GetService("Debris"):AddItem(v,.1)
		end
   
		function weld(p0,p1,c0,c1,par)
			local w = Instance.new("Weld",p0 or par)
			w.Part0 = p0
			w.Part1 = p1
			w.C0 = c0 or CFrame.new()
			w.C1 = c1 or CFrame.new()
			return w
		end
   
		local motors = {}
   
		function motor(p0,p1,c0,c1,des,vel,par)
			local w = Instance.new("Motor6D",p0 or par)
			w.Part0 = p0
			w.Part1 = p1
			w.C0 = c0 or CFrame.new()
			w.C1 = c1 or CFrame.new()
			w.MaxVelocity = tonumber(vel) or .05
			w.DesiredAngle = tonumber(des) or 0
			return w
		end
   
		function lerp(a,b,c)
			return a+(b-a)*c
		end
   
		function clerp(c1,c2,al)
			local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
			local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
			for i,v in pairs(com1) do
				com1[i] = lerp(v,com2[i],al)
			end
			return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
		end
   
		function ccomplerp(c1,c2,al)
			local com1 = {c1:components()}
			local com2 = {c2:components()}
			for i,v in pairs(com1) do
				com1[i] = lerp(v,com2[i],al)
			end
			return CFrame.new(unpack(com1))
		end
   
		function tickwave(time,length,offset)
			return (math.abs((tick()+(offset or 0))%time-time/2)*2-time/2)/time/2*length
		end

		function invcol(c)
			c = c.Color
			return BrickColor.new(Color3.new(1-c.b,1-c.g,1-c.r))
		end
		local oc = oc or function(...) return ... end
		local plr = game.Players.LocalPlayer
		local char = plr.Character
		local tor = char.Torso
		local hum = char.Humanoid
		hum.PlatformStand = false
		pcall(function()
			char.Wings:Destroy()
		end)
		pcall(function()
			char.Angel:Destroy() -- hat
		end)
		local mod = Instance.new("Model",char)
		mod.Name = "Wings"
		local special = {
			[game.Players.LocalPlayer.Name] = {"Black","Bright red",.5,0,false,Color3.new(1,0,0),Color3.new(0,0,0)},
		}
		local topcolor = BrickColor.new("Really black")
		local feacolor = BrickColor.new("Black")
		local ptrans = 0
		local pref = 0
		local fire = true
		local fmcol = Color3.new()
		local fscol = Color3.new()
		local spec = special[plr.Name:lower()]
		if spec then
			topcolor,feacolor,ptrans,pref,fire,fmcol,fscol = spec[1] and BrickColor.new(spec[1]) or topcolor,spec[2] and BrickColor.new(spec[2]) or feacolor,spec[3],spec[4],spec[5],spec[6],spec[7]
		end
		local part = Instance.new("Part")
		part.FormFactor = "Custom"
		part.Size = Vector3.new(.2,.2,.2)
		part.TopSurface,part.BottomSurface = 0,0
		part.CanCollide = false
		part.BrickColor = BrickColor.new("Black")
		part.Transparency = ptrans
		part.Reflectance = pref
		local ef = Instance.new("Fire",fire and part or nil)
		ef.Size = .15
		ef.Color = BrickColor.new("Black").Color
		ef.SecondaryColor = BrickColor.new("Bright red").Color
		part:BreakJoints()
		function newpart()
			local clone = part:Clone()
			clone.Parent = mod
			clone:BreakJoints()
			return clone
		end
		local feath = newpart()
		feath.BrickColor = feacolor
		feath.Transparency = 0
		Instance.new("SpecialMesh",feath).MeshType = "Sphere"
		function newfeather()
			local clone = feath:Clone()
			clone.Parent = mod
			clone:BreakJoints()
			return clone
		end
		flying = false
		moving = false
		for i,v in pairs(tor:GetChildren()) do
			if v.ClassName:lower():match("body") then
				v:Destroy()
			end
		end
		local ctor = tor:Clone()
		ctor:ClearAllChildren()
		ctor.Name = "cTorso"
		ctor.Transparency = 1
		ctor.CanCollide = false
		ctor.FormFactor = "Custom"
		ctor.Size = Vector3.new(.2,.2,.2)
		ctor.Parent = mod
		weld(tor,ctor)
		local bg = Instance.new("BodyGyro",ctor)
		bg.maxTorque = Vector3.new()
		bg.P = 15000
		bg.D = 1000
		local bv = Instance.new("BodyVelocity",ctor)
		bv.maxForce = Vector3.new()
		bv.P = 15000
		vel = Vector3.new()
		cf = CFrame.new()
		flspd = 0
		keysdown = {}
		keypressed = {}
		ktime = {}
		descendtimer = 0
		jumptime = tick()
		hum.Jumping:connect(function()
			jumptime = tick()
		end)
		cam = workspace.CurrentCamera
		kd = plr:GetMouse().KeyDown:connect(oc(function(key)
			keysdown[key] = true
			keypressed[key] = true
			if key == "q" then
				descendtimer = tick()
			elseif key == " " and not hum.Jump then
				jumptime = tick()
			elseif (key == "a" or key == "d") and ktime[key] and tick()-ktime[key] < .3 and math.abs(reqrotx) < .3 then
				reqrotx = key == "a" and math.pi*2 or -math.pi*2
			end
			ktime[key] = tick()
		end))
   
		ku = plr:GetMouse().KeyUp:connect(function(key)
			keysdown[key] = false
			if key == " " then
				descendtimer = tick()
			end
		end)
		function mid(a,b,c)
			return math.max(a,math.min(b,c or -a))
		end
		function bn(a)
			return a and 1 or 0
		end
		function gm(tar)
			local m = 0
			for i,v in pairs(tar:GetChildren()) do
				if v:IsA("BasePart") then
					m = m + v:GetMass()
				end
				m = m + gm(v)
			end
			return m
		end
		reqrotx = 0
		local grav = 196.2
		local con
		con = game:GetService("RunService").Stepped:connect(oc(function()
			local obvel = tor.CFrame:vectorToObjectSpace(tor.Velocity)
			local sspd, uspd,fspd = obvel.X,obvel.Y,obvel.Z
			if flying then
				local lfldir = fldir
				fldir = cam.CoordinateFrame:vectorToWorldSpace(Vector3.new(bn(keysdown.d)-bn(keysdown.a),0,bn(keysdown.s)-bn(keysdown.w))).unit
				local lmoving = moving
				moving = fldir.magnitude > .1
				if lmoving and not moving then
					idledir = lfldir*Vector3.new(1,0,1)
					descendtimer = tick()
				end
				local dbomb = fldir.Y < -.6 or (moving and keysdown["1"])
				if moving and keysdown["0"] and lmoving then
					fldir = (Vector3.new(lfldir.X,math.min(fldir.Y,lfldir.Y+.01)-.1,lfldir.Z)+(fldir*Vector3.new(1,0,1))*.05).unit
				end
				local down = tor.CFrame:vectorToWorldSpace(Vector3.new(0,-1,0))
				local descending = (not moving and keysdown["q"] and not keysdown[" "])
				cf = ccomplerp(cf,CFrame.new(tor.Position,tor.Position+(not moving and idledir or fldir)),keysdown["0"] and .02 or .07)
				local gdown = not dbomb and cf.lookVector.Y < -.2 and tor.Velocity.unit.Y < .05
				hum.PlatformStand = true
				bg.maxTorque = Vector3.new(1,1,1)*9e5
				local rotvel = CFrame.new(Vector3.new(),tor.Velocity):toObjectSpace(CFrame.new(Vector3.new(),fldir)).lookVector
				bg.cframe = cf * CFrame.Angles(not moving and -.1 or -math.pi/2+.2,moving and mid(-2.5,rotvel.X/1.5) + reqrotx or 0,0)
				reqrotx = reqrotx - reqrotx/10
				bv.maxForce = Vector3.new(1,1,1)*9e4*.5
				local anioff =(bn(keysdown[" "])-bn(keysdown["q"]))/2
				local ani = tickwave(1.5-anioff,1)
				bv.velocity = bv.velocity:Lerp(Vector3.new(0,bn(not moving)*-ani*15+(descending and math.min(20,tick()-descendtimer)*-8 or bn(keysdown[" "])-bn(keysdown["q"]))*15,0)+vel,.6)
				vel = moving and cf.lookVector*flspd or Vector3.new()
				flspd = math.min(120,lerp(flspd,moving and (fldir.Y<0 and flspd+(-fldir.Y)*grav/60 or math.max(50,flspd-fldir.Y*grav/300)) or 60,.4))
				local hit,ray = workspace:FindPartOnRayWithIgnoreList(Ray.new(tor.Position,Vector3.new(0,-3.5+math.min(0,bv.velocity.y)/30,0)),{char})
				if hit and down.Y < -.85 and tick()-flystart > 1 then
					flying = false
					hum.PlatformStand = false
					tor.Velocity = Vector3.new()
				end
			else
				bg.maxTorque = Vector3.new()
				bv.maxForce = Vector3.new()
				local x,y,z = fspd/160,uspd/700,sspd/900
				if keypressed[" "] and not flying and (tick()-jumptime > .05 and (tick()-jumptime < 3 or hum.Jump)) then
					vel = Vector3.new(0,50,0)
					bv.velocity = vel
					idledir = cam.CoordinateFrame.lookVector*Vector3.new(1,0,1)
					cf = tor.CFrame * CFrame.Angles(-.01,0,0)
					tor.CFrame = cf
					bg.cframe = cf
					flystart = tick()
					flying = true
			end
		end
		keypressed = {}
	end))
end)

--TpWood--------------------------------------------------------------------------------

TpWood.MouseButton1Down:connect(function()
	for _, Log in pairs(game.Workspace.LogModels:GetChildren()) do
if Log.Name:sub(1, 6) == "Loose_" and Log:findFirstChild("Owner") then
if Log.Owner.Value == game.Players.LocalPlayer then
Log:MoveTo(game.Players.LocalPlayer.Character.Torso.Position + Vector3.new(0, 15, 0))
end
end
end
end)

--NoClip--------------------------------------------------------------------------------

NoClip.MouseButton1Down:connect(function()
		local noclipplayer = game:GetService("Players").LocalPlayer
local noclipmouse = noclipplayer:GetMouse()

local donoclip = false
local noclip = false

function b_noclip(key)
if (key == "f") then
if noclip == false then
donoclip = true

noclip = true
elseif noclip == true then
donoclip = false

noclip = false
end
end
end

noclipmouse.KeyDown:connect(b_noclip)

game:GetService("Players").LocalPlayer.Character.Head.Touched:connect(function(obj)
if obj ~= workspace.Terrain then
if donoclip == true then
obj.CanCollide = false
else
obj.CanCollide = true
end
end
end)
end)

--WaterWalk-----------------------------------------------------------------------------

WaterWalk.MouseButton1Down:connect(function()
		if WCollide == "Nothing" then
		WCollide = "On"
		WTR.BackgroundColor3 = Color3.new(0, 0.5, 0)
        WTR.Text = "WaterIsS"
		for i,v in pairs(game.Workspace.Water:GetChildren()) do
			if v:IsA("Part") then
				v.CanCollide = true
			end
		end
	else
		WCollide = "Nothing"
		WTR.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
        WTR.Text = "WalkOnW"
		for i,v in pairs(game.Workspace.Water:GetChildren()) do
			if v:IsA("Part") then
				v.CanCollide = false
			end
		end
	end
end)

--TpTool--------------------------------------------------------------------------------

TpTool.MouseButton1Down:connect(function()
	mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Click Teleport"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end)
tool.Parent = game.Players.LocalPlayer.Backpack
end)

--PlayerTpButton------------------------------------------------------------------------

TpGo.MouseButton1Down:connect(function()
	local tp_namedplayer = PlayerTpBox.Text
    local tp_player = game:GetService("Players")[tp_namedplayer]
    local PLR = game:GetService("Players").LocalPlayer
    local p = PlayerTpBox.Text
   
    if tp_player then
            for i = 1,20 do
        wait()
        PLR.Character.HumanoidRootPart.CFrame = tp_player.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
        end
    end
end)

--SellWood------------------------------------------------------------------------------

SellWood.MouseButton1Down:connect(function()
	Mouse = game.Players.LocalPlayer:GetMouse()	
	
Mouse.KeyDown:connect(function(key)
if key:lower() == "h" then	
	for _, Log in pairs(game.Workspace.LogModels:GetChildren()) do
		if Log.Name:sub(1, 6) == "Loose_" and Log:findFirstChild("Owner") then
			if Log.Owner.Value == game.Players.LocalPlayer then
				for i,v in pairs(Log:GetChildren()) do
					if v.Name=="WoodSection" then
						spawn(function()
							for i=1,10 do
								wait()
								v.CFrame=CFrame.new(Vector3.new(315, -0.296, 85.791))*CFrame.Angles(math.rad(90),0,0)
							end
						end)
					end
				end
				spawn(function()
					for i=1,20 do
						wait()
						game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Log)
					end
				end)
			end
		end
	end
end
end)

end)

--SellPlanks----------------------------------------------------------------------------

SellPlanks.MouseButton1Down:connect(function()
	Mouse = game.Players.LocalPlayer:GetMouse()
Mouse.KeyDown:Connect(function(key)	
if key:lower() == "g" then 
	for _, Plank in pairs(game.Workspace.PlayerModels:GetChildren()) do
		if Plank.Name=="Plank" and Plank:findFirstChild("Owner") then
			if Plank.Owner.Value == game.Players.LocalPlayer then
				for i,v in pairs(Plank:GetChildren()) do
					      v.Name="WoodSection" 
						spawn(function()
							for i=1,10 do
								wait()
								v.CFrame=CFrame.new(Vector3.new(315, -0.296, 85.791))*CFrame.Angles(math.rad(90),0,0)
							end
						end)
					end
				end
				spawn(function()
					for i=1,20 do
						wait()
						game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Plank)
					end
				end)
			end
		end
	end
end)

end)

--BluePrints----------------------------------------------------------------------------

Blueprint.MouseButton1Down:connect(function()
		for i,v in pairs(game.ReplicatedStorage.Purchasables.Structures.BlueprintStructures:GetChildren()) do
local clone = v:Clone()
clone.Parent = game.Players.LocalPlayer.PlayerBlueprints.Blueprints
end
end)

--CloneBase-----------------------------------------------------------------------------

CloneButton.MouseButton1Down:connect(function()
	CloneButton.MouseButton1Down:connect(function()
	local RunService = game:GetService("RunService")
local TargetPlayer = CloneBox.Text
local SlowMode = true
local WipeLocal = false

local CopyStructure = true
local CopyWire = true
local CopyItems = true
local CopyFurniture = true

if WipeLocal then
for i,v in pairs(game.Workspace.PlayerModels:GetChildren()) do
if v:FindFirstChild("Owner") then
if v.Owner.Value == game.Players.LocalPlayer then
game.ReplicatedStorage.Interaction.DestroyStructure:FireServer(v)
end
end
end
wait(0.5)
end

for i,v in pairs(game.Players:GetChildren()) do
if v ~= game.Players.LocalPlayer then
if v.Name:find(TargetPlayer) then
TargetPlayer = v
break
end
end
end

local LocalLand, TargetLand

for i,v in pairs(game.Workspace.Properties:GetChildren()) do
if v:FindFirstChild("Owner") then
if v.Owner.Value == TargetPlayer then
TargetLand = v
elseif v.Owner.Value == game.Players.LocalPlayer then
LocalLand = v
end
end
end

local CollectedTargetStructures, CollectedLocalStructures, CollectedLocalFurnitures, CollectedTargetFurnitures, CollectedLocalItems, CollectedTargetItems  = {}, {}, {}, {}, {}, {}
local CollectedTargetItemsCopy, CollectedTargetFurnituresCopy = {}, {}
local TotalCollectedBlueprints = 0

if CopyStructure then
for i,v in pairs(game.Workspace.PlayerModels:GetChildren()) do
if v:FindFirstChild("Owner") and v.Owner.Value == TargetPlayer then
if v:FindFirstChild("BuildDependentWood") and (v.Type.Value == "Structure" or v.Type.Value == "Furniture") then
local Data = {}
Data.WoodClass = v:FindFirstChild("BlueprintWoodClass") and v.BlueprintWoodClass.Value
Data.OffSet = (v:FindFirstChild("MainCFrame") and v.MainCFrame.Value or v.PrimaryPart.CFrame) - TargetLand.OriginSquare.Position
Data.BlueprintType = v.ItemName.Value
table.insert(CollectedTargetStructures,Data)
end
end
end

for i, Data in pairs(CollectedTargetStructures) do
game.ReplicatedStorage.PlaceStructure.ClientPlacedBlueprint:FireServer(Data.BlueprintType, LocalLand.OriginSquare.CFrame - Vector3.new(0,20,0), game.Players.LocalPlayer)

if SlowMode and (math.random(1,2) ~= 1) then
RunService.RenderStepped:Wait()
end
end
end

function blueprintHasBeenCollected(Model)
if CollectedLocalStructures[Model.Name] then
for i, BlueprintModel in pairs(CollectedLocalStructures[Model.Name]) do
if BlueprintModel == Model then
return true
end
end
end
return false
end

repeat 
for i,v in pairs(game.Workspace.PlayerModels:GetChildren()) do
if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer and v:FindFirstChild("Type") and v.Type.Value == "Blueprint" and not blueprintHasBeenCollected(v) then
if not CollectedLocalStructures[v.Name] then
CollectedLocalStructures[v.Name] = {}
end
table.insert(CollectedLocalStructures[v.Name], v)
TotalCollectedBlueprints = TotalCollectedBlueprints + 1
end
end
wait()
until TotalCollectedBlueprints == #CollectedTargetStructures

function SpawnStructure(Data, Blueprint)
local Position = Data.OffSet + LocalLand.OriginSquare.Position
game.ReplicatedStorage.PlaceStructure.ClientPlacedStructure:FireServer(Blueprint.ItemName.Value, Position, game.Players.LocalPlayer, Data.WoodClass, Blueprint, not Data.WoodClass)
end

for i, Data in pairs(CollectedTargetStructures) do
local Blueprint = CollectedLocalStructures[Data.BlueprintType][1]
table.remove(CollectedLocalStructures[Data.BlueprintType], 1)

SpawnStructure(Data, Blueprint)

if SlowMode and (math.random(1,2) ~= 1) then
RunService.RenderStepped:Wait()
end
end

function CreateWire(WireType, Points)
local Wire = game.ReplicatedStorage.Purchasables.WireObjects[WireType]

for i,v in pairs(Points) do
Points[i] = v + LocalLand.OriginSquare.Position
end

game.ReplicatedStorage.PlaceStructure.ClientPlacedWire:FireServer(Wire, Points)
end

if CopyWire then
for i,v in pairs(game.Workspace.PlayerModels:GetChildren()) do
if v:FindFirstChild("Owner") and v.Owner.Value == TargetPlayer and v:FindFirstChild("Type") and v.Type.Value == "Wire" and v:FindFirstChild("End1") then
local Points = {}
local PointCount = 1

table.insert(Points, (v.End1.Position - TargetLand.OriginSquare.Position))

for i,w in pairs(v:GetChildren()) do
if w.Name:find("Point") then
PointCount = PointCount + 1
end
end

for i=2, PointCount do
local Point = v:FindFirstChild("Point"..tostring(i))
table.insert(Points, (Point.Position - TargetLand.OriginSquare.Position))
end

table.insert(Points, (v.End2.Position - TargetLand.OriginSquare.Position))
CreateWire(v.ItemName.Value, Points)

if SlowMode and (math.random(1,2) ~= 1)then
RunService.RenderStepped:Wait()
end
end
end
end

function isValidFurniture(Model)
if Model:FindFirstChild("Type") and (Model.Type.Value == "Structure" or Model.Type.Value == "Furniture" or Model.Type.Value == "Vehicle Spot") then 
if Model:FindFirstChild("BuildDependentWood") or Model:FindFirstChild("PurchasedBoxItemName") then 
return false
end
return true
end
return false
end

function Spawn(ItemName, Position)
   local Info = {}
   Info.Name = ItemName.Value
   Info.Type = ItemName.Name == "PurchasedBoxItemName" and ItemName or game.ReplicatedStorage.Purchasables.Structures.HardStructures.Sawmill2.Type
   Info.OtherInfo = game.ReplicatedStorage.Purchasables.WireObjects.Wire.OtherInfo
   local Points = {Position.p, Position.p}
   game.ReplicatedStorage.PlaceStructure.ClientPlacedWire:FireServer(Info, Points)
end

if CopyFurniture then
for i, Model in pairs(game.Workspace.PlayerModels:GetChildren()) do
if Model:FindFirstChild("Owner") and Model.Owner.Value == TargetPlayer and isValidFurniture(Model) then
local ItemName = Model:FindFirstChild("ItemName") or Model:FindFirstChild("PurchasedBoxItemName")
local Position = (Model:FindFirstChild("MainCFrame") and Model.MainCFrame.Value or Model.PrimaryPart.CFrame) - TargetLand.OriginSquare.Position

if ItemName.Name == "PurchasedBoxItemName" then
Spawn(ItemName, Position + LocalLand.OriginSquare.Position)
else
Spawn(ItemName, LocalLand.OriginSquare.CFrame - Vector3.new(0,20,0))
end

local Data = {}
Data.ItemName = ItemName.Value
Data.OffSet = Position

table.insert(CollectedTargetFurnitures, Data)

if SlowMode and (math.random(1,2) ~= 1)then
RunService.RenderStepped:Wait()
end
end
end
end

for i, v in pairs(CollectedTargetFurnitures) do
table.insert(CollectedTargetFurnituresCopy,v)
end

function isValidFurnitureModel(Model)
for i, Data in pairs(CollectedTargetFurnitures) do
if Data.ItemName == Model.ItemName.Value then
table.remove(CollectedTargetFurnitures, i)
return true
end
end
return false
end

repeat 
for i, Model in pairs(game.Workspace.PlayerModels:GetChildren()) do
if Model.Name == "Wire" and Model:FindFirstChild("Owner") and Model.Owner.Value == game.Players.LocalPlayer and Model.ItemName.Value ~= "Wire" and isValidFurnitureModel(Model) then
table.insert(CollectedLocalFurnitures, Model)
end
end
wait()
until #CollectedTargetFurnitures == 0

function GrabModelFromCollectedFurnitures(ItemName)
for i, Model in pairs(CollectedLocalFurnitures) do
if Model.ItemName.Value == ItemName then
table.remove(CollectedLocalFurnitures,i)
return Model
end
end
end

for i, Data in pairs(CollectedTargetFurnituresCopy) do
local Model = GrabModelFromCollectedFurnitures(Data.ItemName)
local ItemName = Data.ItemName
local Position = Data.OffSet + LocalLand.OriginSquare.Position
game.ReplicatedStorage.PlaceStructure.ClientPlacedStructure:FireServer(ItemName,Position,game.Players.LocalPlayer,false,Model,true)

if SlowMode and (math.random(1,2) ~= 1)then
RunService.RenderStepped:Wait()
end
end

function isValidItem(Model)
if Model:FindFirstChild("Type") and (Model.Type.Value == "Structure" or Model.Type.Value == "Loose Item" or Model.Type.Value == "Tool" or Model.Type.Value == "Wire" or Model.Type.Value == "Furniture" or Model.Type.Value == "Gift") then 
if (Model.Type.Value == "Structure" or Model.Type.Value == "Wire" or Model.Type.Value == "Furniture") and not Model:FindFirstChild("PurchasedBoxItemName") then
return false
end

return true
elseif not Model:FindFirstChild("Type") then
if Model:FindFirstChild("ItemName") then
local ItemName = Model.ItemName.Value:lower()

if ItemName:find("bob") and (ItemName:find("wob") or ItemName:find("head"))then
return true
end
end
end
return false
end
function itemIsOnLand(Position)
if (math.abs(Position.X - TargetLand.OriginSquare.Position.X) > 101 or math.abs(Position.Z - TargetLand.OriginSquare.Position.Z) > 101) then
return false
end
for i, Square in pairs(TargetLand:GetChildren()) do
if Square.Name == "Square" then
if (math.abs(Position.X - Square.Position.X) < 21 and math.abs(Position.Z - Square.Position.Z) < 21) then
return true
end
end
end
return false
end

if CopyItems then
for i, Model in pairs(game.Workspace.PlayerModels:GetChildren()) do
if Model:FindFirstChild("Owner") and Model.Owner.Value == TargetPlayer and isValidItem(Model) then
local ItemName = Model:FindFirstChild("ItemName") or Model:FindFirstChild("PurchasedBoxItemName")
local Position = (Model:FindFirstChild("MainCFrame") and Model.MainCFrame.Value or Model.PrimaryPart.CFrame) - TargetLand.OriginSquare.Position

if itemIsOnLand((Model:FindFirstChild("MainCFrame") and Model.MainCFrame.Value or Model.PrimaryPart.CFrame).p) then
Spawn(ItemName, LocalLand.OriginSquare.CFrame - Vector3.new(0,20,0))

local Data = {}
Data.ItemName = ItemName.Value
Data.OffSet = Position

table.insert(CollectedTargetItems, Data)

if SlowMode and (math.random(1,2) ~= 1)then
RunService.RenderStepped:Wait()
end
end
end
end
end

for i, v in pairs(CollectedTargetItems) do
table.insert(CollectedTargetItemsCopy,v)
end

function isValidItemModel(Model)
for i, Data in pairs(CollectedTargetItems) do
if Data.ItemName == Model.ItemName.Value then
table.remove(CollectedTargetItems, i)
return true
end
end
return false
end
function itemHasBeenCollected(Model)
for i, Data in pairs(CollectedLocalItems) do
if Data.ItemName == Model.ItemName.Value then
return true
end
end
return false
end

repeat 
for i, Model in pairs(game.Workspace.PlayerModels:GetChildren()) do
if Model.Name == "Wire" and Model:FindFirstChild("Owner") and Model.Owner.Value == game.Players.LocalPlayer and (Model.ItemName.Value ~= "Wire" or (Model:FindFirstChild("ItemName") and Model.ItemName.Value == "Wire" and Model:FindFirstChild("PurchasedBoxItemName"))) and isValidItemModel(Model) and not itemHasBeenCollected(Model) then
table.insert(CollectedLocalItems, Model)
end
end
wait()
until #CollectedTargetItems == 0

function GrabModelFromCollectedItems(ItemName)
for i, Model in pairs(CollectedLocalItems) do
if Model.ItemName.Value == ItemName then
table.remove(CollectedLocalItems,i)
return Model
end
end
end

for i, Data in pairs(CollectedTargetItemsCopy) do
local Model = GrabModelFromCollectedItems(Data.ItemName)
local ItemName = Data.ItemName
local Position = Data.OffSet + LocalLand.OriginSquare.Position

if Model:FindFirstChild("PurchasedBoxItemName") then
game.ReplicatedStorage.PlaceStructure.ClientPlacedStructure:FireServer(false, Position, false, false, Model)
Model.Parent = nil
else
game.ReplicatedStorage.PlaceStructure.ClientPlacedStructure:FireServer(ItemName,Position,game.Players.LocalPlayer,false,Model,true)
end

if SlowMode and (math.random(1,2) ~= 1)then
RunService.RenderStepped:Wait()
end
end

print("Finished Copying!")
	end)
end)

--WipeBase------------------------------------------------------------------------------

WipeBase.MouseButton1Down:connect(function()
	for i,v in next,workspace.PlayerModels:GetChildren() do
    if v:FindFirstChild("Main") and v.Owner.Value == game.Players.LocalPlayer then
    for q,p in pairs(v:GetChildren()) do       
        if p.Name:lower():match("box") or p.Name == "DraggableItem" then
            wait()
                v.PrimaryPart = v.Main
                game.ReplicatedStorage.Interaction.Verify:FireServer('Item owned by player',v)
                   v:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character.Head.CFrame)
                 game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
        end
    end
    end
end
end)

--Teleports-----------------------------------------------------------------------------

local WayPoints = {
["Wood R Us"] = CFrame.new(265, 5, 57),
["SpawnPoint"] = CFrame.new(155, 5, 74),
["Land Store"] = CFrame.new(258, 5, -99),
["Link's Logic"] = CFrame.new(4607, 9, -798),
["Cave"] = CFrame.new(3581, -177, 430),
["Volcano"] = CFrame.new(-1585, 625, 1140),
["Swamp"] = CFrame.new(-1209, 138, -801),
["Palm Island"] = CFrame.new(2549, 5, -42),
["Fancy Furnishings"] = CFrame.new(491, 13, -1720),
["Boxed Cars"] = CFrame.new(509, 5.2, -1463),
["Fine Arts Shop"] = CFrame.new(5207, -156, 719),
["Bob's Shack"] = CFrame.new(260, 10, -2542),
["Dock"] = CFrame.new(1114, 3.2, -197),
["Bridge"] = CFrame.new(113, 15, -977),
["End Times"] = CFrame.new(113, -204, -951),
["Shrine Of Sight"] = CFrame.new(-1600, 205, 919),
["The Den"] = CFrame.new(323, 49, 1930),
["Volcano Win"] = CFrame.new(-1675, 358, 1476),
["Ski Lodge"] = CFrame.new(1244, 66, 2306),
["Strange Man"] = CFrame.new(1061, 20, 1131)
}

WoodRUs.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Wood R Us"]
end)

SpawnPoint.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["SpawnPoint"]
end)

LandStore.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Land Store"]
end)

LinksLogic.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Link's Logic"]
end)

Cave.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Cave"]
end)

Volcano.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Volcano"]
end)

Swamp.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Swamp"]
end)

PalmIsland.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Palm Island"]
end)

FancyFurnishings.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Fancy Furnishings"]
end)

BoxedCars.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Boxed Cars"]
end)

FineArtsShop.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Fine Arts Shop"]
end)

BobsShack.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Bob's Shack"]
end)

Dock.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Dock"]
end)

Bridge.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Bridge"]
end)

EndTimes.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["End Times"]
end)

ShrineOfSight.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Shrine Of Sight"]
end)

TheDen.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["The Den"]
end)

VolcanoWin.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Volcano Win"]
end)

SkiLodge.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Ski Lodge"]
end)

StrangeMan.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Strange Man"]
end)

--Speed/Jump-------------------------------------------------------------------

Player.MouseButton1Down:connect(function()
	 local walkspeedplayer = game:GetService("Players").LocalPlayer
    local walkspeedmouse = walkspeedplayer:GetMouse()
    
    local walkspeedenabled = false
    
    function x_walkspeed(key)
        if (key == "v") then
            if walkspeedenabled == false then
                _G.WS = 100;
                local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
                Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
                Humanoid.WalkSpeed = _G.WS;
                end)
                Humanoid.WalkSpeed = _G.WS;
                
                walkspeedenabled = true
            elseif walkspeedenabled == true then
                _G.WS = 10;
                local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
                Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
                Humanoid.WalkSpeed = _G.WS;
                end)
                Humanoid.WalkSpeed = _G.WS;
                
                walkspeedenabled = false
            end
        end
    end
    
    walkspeedmouse.KeyDown:connect(x_walkspeed)
end)