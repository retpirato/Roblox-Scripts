local MinersHavenGui = Instance.new("ScreenGui")
local DecoFrame = Instance.new("Frame")
local CratesFrame = Instance.new("Frame")
local Deco = Instance.new("ImageLabel")
local NumberOfBoxes = Instance.new("TextLabel")
local TPCrates = Instance.new("TextButton")
local LoopTPCrates = Instance.new("TextButton")
local Deco_2 = Instance.new("ImageLabel")
local Deco_3 = Instance.new("ImageLabel")
local Deco_4 = Instance.new("ImageLabel")
local Loop = Instance.new("ImageLabel")
local MinesTPFrame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local AmountToGive = Instance.new("TextBox")
local MineChanButton = Instance.new("ImageButton")
local Deco_5 = Instance.new("TextLabel")
local CloversTwitchCoinsFrame = Instance.new("Frame")
local PlusCloverButton = Instance.new("TextButton")
local PlusTwitchButton = Instance.new("TextButton")
local Toggleable = Instance.new("Frame")
local AutoInfernoBoxFrame = Instance.new("Frame")
local Deco_6 = Instance.new("TextLabel")
local AutoInfernoButton = Instance.new("TextButton")
local AutoRebirthFrame = Instance.new("Frame")
local Deco_7 = Instance.new("TextLabel")
local AutoRebirthButton = Instance.new("TextButton")
local AutoRegularBoxFrame = Instance.new("Frame")
local Deco_8 = Instance.new("TextLabel")
local AutoRegularButton = Instance.new("TextButton")
local AutoUnrealBoxFrame = Instance.new("Frame")
local Deco_9 = Instance.new("TextLabel")
local AutoUnrealButton = Instance.new("TextButton")
local ButtonClickerFrame = Instance.new("Frame")
local Deco_10 = Instance.new("TextLabel")
local ButtonClickerButton = Instance.new("TextButton")
local RemoteClickerFrame = Instance.new("Frame")
local Deco_11 = Instance.new("TextLabel")
local RemoteClickerButton = Instance.new("TextButton")
local AutoLoadoutFrame = Instance.new("Frame")
local Deco_12 = Instance.new("TextLabel")
local AutoLoadout1Button = Instance.new("TextButton")
local NotificationsFrame = Instance.new("Frame")
local Deco_13 = Instance.new("TextLabel")
local NotificationsButton = Instance.new("TextButton")

MinersHavenGui.Name = "MinersHavenGui"
MinersHavenGui.Parent = game.CoreGui

DecoFrame.Name = "DecoFrame"
DecoFrame.Parent = MinersHavenGui
DecoFrame.Active = true
DecoFrame.BackgroundColor3 = Color3.new(1, 1, 1)
DecoFrame.BorderSizePixel = 0
DecoFrame.Draggable = true
DecoFrame.Position = UDim2.new(0.25, 0, 0.25, 0)
DecoFrame.Size = UDim2.new(0.300000012, 0, 0.5, 0)

CratesFrame.Name = "CratesFrame"
CratesFrame.Parent = DecoFrame
CratesFrame.BackgroundColor3 = Color3.new(0.454902, 0.454902, 0.454902)
CratesFrame.BorderSizePixel = 0
CratesFrame.Position = UDim2.new(0.449999988, 0, 0.100000001, 0)
CratesFrame.Size = UDim2.new(0.5, 0, 0.150000006, 0)

Deco.Name = "Deco"
Deco.Parent = CratesFrame
Deco.BackgroundColor3 = Color3.new(1, 1, 1)
Deco.BackgroundTransparency = 1
Deco.Size = UDim2.new(0.300000012, 0, 1, 0)
Deco.Image = "rbxassetid://853410753"

NumberOfBoxes.Name = "NumberOfBoxes"
NumberOfBoxes.Parent = Deco
NumberOfBoxes.BackgroundColor3 = Color3.new(1, 1, 1)
NumberOfBoxes.BackgroundTransparency = 1
NumberOfBoxes.Size = UDim2.new(1, 0, 1, 0)
NumberOfBoxes.Font = Enum.Font.SciFi
NumberOfBoxes.FontSize = Enum.FontSize.Size24
NumberOfBoxes.Text = "0"
NumberOfBoxes.TextColor3 = Color3.new(1, 1, 1)
NumberOfBoxes.TextSize = 24
NumberOfBoxes.TextStrokeTransparency = 0
NumberOfBoxes.TextWrapped = true

TPCrates.Name = "TPCrates"
TPCrates.Parent = CratesFrame
TPCrates.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
TPCrates.BackgroundTransparency = 1
TPCrates.Position = UDim2.new(0.349999994, 0, 0, 0)
TPCrates.Size = UDim2.new(0.300000012, 0, 1, 0)
TPCrates.ZIndex = 2
TPCrates.Font = Enum.Font.SourceSans
TPCrates.FontSize = Enum.FontSize.Size14
TPCrates.Text = "TP Crates"
TPCrates.TextColor3 = Color3.new(1, 1, 1)
TPCrates.TextSize = 14
TPCrates.TextStrokeColor3 = Color3.new(1, 0.976471, 0.976471)
TPCrates.TextWrapped = true
TPCrates.TextYAlignment = Enum.TextYAlignment.Top

LoopTPCrates.Name = "LoopTPCrates"
LoopTPCrates.Parent = CratesFrame
LoopTPCrates.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
LoopTPCrates.BackgroundTransparency = 1
LoopTPCrates.Position = UDim2.new(0.699999988, 0, 0, 0)
LoopTPCrates.Size = UDim2.new(0.300000012, 0, 1, 0)
LoopTPCrates.ZIndex = 2
LoopTPCrates.Font = Enum.Font.SourceSans
LoopTPCrates.FontSize = Enum.FontSize.Size14
LoopTPCrates.Text = "Loop TP Crates: OFF"
LoopTPCrates.TextColor3 = Color3.new(1, 1, 1)
LoopTPCrates.TextSize = 14
LoopTPCrates.TextWrapped = true
LoopTPCrates.TextYAlignment = Enum.TextYAlignment.Top

Deco_2.Name = "Deco"
Deco_2.Parent = CratesFrame
Deco_2.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_2.BackgroundTransparency = 1
Deco_2.Position = UDim2.new(0.349999994, 0, 0, 0)
Deco_2.Size = UDim2.new(0.300000012, 0, 1, 0)
Deco_2.Image = "rbxassetid://853410753"

Deco_3.Name = "Deco"
Deco_3.Parent = Deco_2
Deco_3.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_3.BackgroundTransparency = 1
Deco_3.Size = UDim2.new(1, 0, 1, 0)
Deco_3.Image = "rbxassetid://29563831"

Deco_4.Name = "Deco"
Deco_4.Parent = CratesFrame
Deco_4.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_4.BackgroundTransparency = 1
Deco_4.Position = UDim2.new(0.699999988, 0, 0, 0)
Deco_4.Size = UDim2.new(0.300000012, 0, 1, 0)
Deco_4.Image = "rbxassetid://853410753"

Loop.Name = "Loop"
Loop.Parent = Deco_4
Loop.BackgroundColor3 = Color3.new(1, 1, 1)
Loop.BackgroundTransparency = 1
Loop.Size = UDim2.new(1, 0, 1, 0)
Loop.Image = "rbxassetid://169611736"
Loop.ImageColor3 = Color3.new(1, 0, 0)
Loop.ImageTransparency = 0.5

MinesTPFrame.Name = "MinesTPFrame"
MinesTPFrame.Parent = DecoFrame
MinesTPFrame.BackgroundColor3 = Color3.new(0.454902, 0.454902, 0.454902)
MinesTPFrame.BorderSizePixel = 0
MinesTPFrame.Position = UDim2.new(0.449999988, 0, 0.550000012, 0)
MinesTPFrame.Size = UDim2.new(0.5, 0, 0.400000006, 0)

TextLabel.Parent = MinesTPFrame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(0.699999988, 0, 0.300000012, 0)
TextLabel.Font = Enum.Font.Highway
TextLabel.FontSize = Enum.FontSize.Size14
TextLabel.Text = "Amount to give:"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

AmountToGive.Name = "AmountToGive"
AmountToGive.Parent = MinesTPFrame
AmountToGive.BackgroundColor3 = Color3.new(1, 1, 1)
AmountToGive.BackgroundTransparency = 1
AmountToGive.Position = UDim2.new(0.699999988, 0, 0, 0)
AmountToGive.Size = UDim2.new(0.300000012, 0, 0.300000012, 0)
AmountToGive.Font = Enum.Font.SourceSans
AmountToGive.FontSize = Enum.FontSize.Size24
AmountToGive.Text = "10"
AmountToGive.TextColor3 = Color3.new(0, 0.886275, 1)
AmountToGive.TextScaled = true
AmountToGive.TextSize = 24
AmountToGive.TextWrapped = true

MineChanButton.Name = "MineChanButton"
MineChanButton.Parent = MinesTPFrame
MineChanButton.BackgroundColor3 = Color3.new(1, 1, 1)
MineChanButton.BorderSizePixel = 0
MineChanButton.Position = UDim2.new(0.330000013, 0, 0.400000006, 0)
MineChanButton.Size = UDim2.new(0.349999994, 0, 0.400000006, 0)
MineChanButton.Image = "rbxassetid://1407000502"

Deco_5.Name = "Deco"
Deco_5.Parent = MineChanButton
Deco_5.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_5.BackgroundTransparency = 1
Deco_5.Size = UDim2.new(1, 0, 0.200000003, 0)
Deco_5.Font = Enum.Font.SourceSans
Deco_5.FontSize = Enum.FontSize.Size14
Deco_5.Text = "Iron Mine-Chan"
Deco_5.TextColor3 = Color3.new(1, 1, 1)
Deco_5.TextScaled = true
Deco_5.TextSize = 14
Deco_5.TextWrapped = true

CloversTwitchCoinsFrame.Name = "CloversTwitchCoinsFrame"
CloversTwitchCoinsFrame.Parent = DecoFrame
CloversTwitchCoinsFrame.BackgroundColor3 = Color3.new(0.454902, 0.454902, 0.454902)
CloversTwitchCoinsFrame.BorderSizePixel = 0
CloversTwitchCoinsFrame.Position = UDim2.new(0.449999988, 0, 0.349999994, 0)
CloversTwitchCoinsFrame.Size = UDim2.new(0.5, 0, 0.100000001, 0)

PlusCloverButton.Name = "PlusCloverButton"
PlusCloverButton.Parent = CloversTwitchCoinsFrame
PlusCloverButton.BackgroundColor3 = Color3.new(1, 1, 1)
PlusCloverButton.BorderSizePixel = 0
PlusCloverButton.Position = UDim2.new(0.0500000007, 0, 0.100000001, 0)
PlusCloverButton.Size = UDim2.new(0.899999976, 0, 0.400000006, 0)
PlusCloverButton.Font = Enum.Font.SourceSans
PlusCloverButton.FontSize = Enum.FontSize.Size14
PlusCloverButton.Text = "+1 Clover"
PlusCloverButton.TextColor3 = Color3.new(0, 0.294118, 0.0666667)
PlusCloverButton.TextSize = 14

PlusTwitchButton.Name = "PlusTwitchButton"
PlusTwitchButton.Parent = CloversTwitchCoinsFrame
PlusTwitchButton.BackgroundColor3 = Color3.new(1, 1, 1)
PlusTwitchButton.BorderSizePixel = 0
PlusTwitchButton.Position = UDim2.new(0.0500000007, 0, 0.5, 0)
PlusTwitchButton.Size = UDim2.new(0.899999976, 0, 0.400000006, 0)
PlusTwitchButton.Font = Enum.Font.SourceSans
PlusTwitchButton.FontSize = Enum.FontSize.Size14
PlusTwitchButton.Text = "+1 Twitch Coin"
PlusTwitchButton.TextColor3 = Color3.new(0.411765, 0, 0.427451)
PlusTwitchButton.TextSize = 14

Toggleable.Name = "Toggleable"
Toggleable.Parent = DecoFrame
Toggleable.BackgroundColor3 = Color3.new(1, 1, 1)
Toggleable.BackgroundTransparency = 1
Toggleable.Size = UDim2.new(0.400000006, 0, 1, 0)

AutoInfernoBoxFrame.Name = "AutoInfernoBoxFrame"
AutoInfernoBoxFrame.Parent = Toggleable
AutoInfernoBoxFrame.BackgroundColor3 = Color3.new(0.454902, 0.454902, 0.454902)
AutoInfernoBoxFrame.BorderSizePixel = 0
AutoInfernoBoxFrame.Position = UDim2.new(0.0500000007, 0, 0.600000024, 0)
AutoInfernoBoxFrame.Size = UDim2.new(0.899999976, 0, 0.075000003, 0)

Deco_6.Name = "Deco"
Deco_6.Parent = AutoInfernoBoxFrame
Deco_6.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_6.BackgroundTransparency = 1
Deco_6.Size = UDim2.new(1, 0, 0.5, 0)
Deco_6.Font = Enum.Font.Highway
Deco_6.FontSize = Enum.FontSize.Size14
Deco_6.Text = "Auto open inferno boxes."
Deco_6.TextColor3 = Color3.new(1, 1, 1)
Deco_6.TextSize = 14

AutoInfernoButton.Name = "AutoInfernoButton"
AutoInfernoButton.Parent = AutoInfernoBoxFrame
AutoInfernoButton.BackgroundColor3 = Color3.new(1, 1, 1)
AutoInfernoButton.BorderSizePixel = 0
AutoInfernoButton.Position = UDim2.new(0.25, 0, 0.5, 0)
AutoInfernoButton.Size = UDim2.new(0.5, 0, 0.5, 0)
AutoInfernoButton.Font = Enum.Font.SourceSans
AutoInfernoButton.FontSize = Enum.FontSize.Size14
AutoInfernoButton.Text = "OFF"
AutoInfernoButton.TextColor3 = Color3.new(1, 0, 0)
AutoInfernoButton.TextSize = 14

AutoRebirthFrame.Name = "AutoRebirthFrame"
AutoRebirthFrame.Parent = Toggleable
AutoRebirthFrame.BackgroundColor3 = Color3.new(0.454902, 0.454902, 0.454902)
AutoRebirthFrame.BorderSizePixel = 0
AutoRebirthFrame.Position = UDim2.new(0.0500000007, 0, 0.0500000007, 0)
AutoRebirthFrame.Size = UDim2.new(0.899999976, 0, 0.075000003, 0)

Deco_7.Name = "Deco"
Deco_7.Parent = AutoRebirthFrame
Deco_7.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_7.BackgroundTransparency = 1
Deco_7.Size = UDim2.new(1, 0, 0.5, 0)
Deco_7.Font = Enum.Font.Highway
Deco_7.FontSize = Enum.FontSize.Size14
Deco_7.Text = "Auto rebirth when possible."
Deco_7.TextColor3 = Color3.new(1, 1, 1)
Deco_7.TextSize = 14

AutoRebirthButton.Name = "AutoRebirthButton"
AutoRebirthButton.Parent = AutoRebirthFrame
AutoRebirthButton.BackgroundColor3 = Color3.new(1, 1, 1)
AutoRebirthButton.BorderSizePixel = 0
AutoRebirthButton.Position = UDim2.new(0.25, 0, 0.5, 0)
AutoRebirthButton.Size = UDim2.new(0.5, 0, 0.5, 0)
AutoRebirthButton.Font = Enum.Font.SourceSans
AutoRebirthButton.FontSize = Enum.FontSize.Size14
AutoRebirthButton.Text = "OFF"
AutoRebirthButton.TextColor3 = Color3.new(1, 0, 0)
AutoRebirthButton.TextSize = 14

AutoRegularBoxFrame.Name = "AutoRegularBoxFrame"
AutoRegularBoxFrame.Parent = Toggleable
AutoRegularBoxFrame.BackgroundColor3 = Color3.new(0.454902, 0.454902, 0.454902)
AutoRegularBoxFrame.BorderSizePixel = 0
AutoRegularBoxFrame.Position = UDim2.new(0.0500000007, 0, 0.400000006, 0)
AutoRegularBoxFrame.Size = UDim2.new(0.899999976, 0, 0.075000003, 0)

Deco_8.Name = "Deco"
Deco_8.Parent = AutoRegularBoxFrame
Deco_8.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_8.BackgroundTransparency = 1
Deco_8.Size = UDim2.new(1, 0, 0.5, 0)
Deco_8.Font = Enum.Font.Highway
Deco_8.FontSize = Enum.FontSize.Size14
Deco_8.Text = "Auto open regular boxes."
Deco_8.TextColor3 = Color3.new(1, 1, 1)
Deco_8.TextSize = 14

AutoRegularButton.Name = "AutoRegularButton"
AutoRegularButton.Parent = AutoRegularBoxFrame
AutoRegularButton.BackgroundColor3 = Color3.new(1, 1, 1)
AutoRegularButton.BorderSizePixel = 0
AutoRegularButton.Position = UDim2.new(0.25, 0, 0.5, 0)
AutoRegularButton.Size = UDim2.new(0.5, 0, 0.5, 0)
AutoRegularButton.Font = Enum.Font.SourceSans
AutoRegularButton.FontSize = Enum.FontSize.Size14
AutoRegularButton.Text = "OFF"
AutoRegularButton.TextColor3 = Color3.new(1, 0, 0)
AutoRegularButton.TextSize = 14

AutoUnrealBoxFrame.Name = "AutoUnrealBoxFrame"
AutoUnrealBoxFrame.Parent = Toggleable
AutoUnrealBoxFrame.BackgroundColor3 = Color3.new(0.454902, 0.454902, 0.454902)
AutoUnrealBoxFrame.BorderSizePixel = 0
AutoUnrealBoxFrame.Position = UDim2.new(0.0500000007, 0, 0.5, 0)
AutoUnrealBoxFrame.Size = UDim2.new(0.899999976, 0, 0.075000003, 0)

Deco_9.Name = "Deco"
Deco_9.Parent = AutoUnrealBoxFrame
Deco_9.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_9.BackgroundTransparency = 1
Deco_9.Size = UDim2.new(1, 0, 0.5, 0)
Deco_9.Font = Enum.Font.Highway
Deco_9.FontSize = Enum.FontSize.Size14
Deco_9.Text = "Auto open unreal boxes."
Deco_9.TextColor3 = Color3.new(1, 1, 1)
Deco_9.TextSize = 14

AutoUnrealButton.Name = "AutoUnrealButton"
AutoUnrealButton.Parent = AutoUnrealBoxFrame
AutoUnrealButton.BackgroundColor3 = Color3.new(1, 1, 1)
AutoUnrealButton.BorderSizePixel = 0
AutoUnrealButton.Position = UDim2.new(0.25, 0, 0.5, 0)
AutoUnrealButton.Size = UDim2.new(0.5, 0, 0.5, 0)
AutoUnrealButton.Font = Enum.Font.SourceSans
AutoUnrealButton.FontSize = Enum.FontSize.Size14
AutoUnrealButton.Text = "OFF"
AutoUnrealButton.TextColor3 = Color3.new(1, 0, 0)
AutoUnrealButton.TextSize = 14

ButtonClickerFrame.Name = "ButtonClickerFrame"
ButtonClickerFrame.Parent = Toggleable
ButtonClickerFrame.BackgroundColor3 = Color3.new(0.454902, 0.454902, 0.454902)
ButtonClickerFrame.BorderSizePixel = 0
ButtonClickerFrame.Position = UDim2.new(0.0500000007, 0, 0.25, 0)
ButtonClickerFrame.Size = UDim2.new(0.899999976, 0, 0.075000003, 0)

Deco_10.Name = "Deco"
Deco_10.Parent = ButtonClickerFrame
Deco_10.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_10.BackgroundTransparency = 1
Deco_10.Size = UDim2.new(1, 0, 0.5, 0)
Deco_10.Font = Enum.Font.Highway
Deco_10.FontSize = Enum.FontSize.Size14
Deco_10.Text = "Autoclick the buttons."
Deco_10.TextColor3 = Color3.new(1, 1, 1)
Deco_10.TextSize = 14

ButtonClickerButton.Name = "ButtonClickerButton"
ButtonClickerButton.Parent = ButtonClickerFrame
ButtonClickerButton.BackgroundColor3 = Color3.new(1, 1, 1)
ButtonClickerButton.BorderSizePixel = 0
ButtonClickerButton.Position = UDim2.new(0.25, 0, 0.5, 0)
ButtonClickerButton.Size = UDim2.new(0.5, 0, 0.5, 0)
ButtonClickerButton.Font = Enum.Font.SourceSans
ButtonClickerButton.FontSize = Enum.FontSize.Size14
ButtonClickerButton.Text = "OFF"
ButtonClickerButton.TextColor3 = Color3.new(1, 0, 0)
ButtonClickerButton.TextSize = 14

RemoteClickerFrame.Name = "RemoteClickerFrame"
RemoteClickerFrame.Parent = Toggleable
RemoteClickerFrame.BackgroundColor3 = Color3.new(0.454902, 0.454902, 0.454902)
RemoteClickerFrame.BorderSizePixel = 0
RemoteClickerFrame.Position = UDim2.new(0.0500000007, 0, 0.150000006, 0)
RemoteClickerFrame.Size = UDim2.new(0.899999976, 0, 0.075000003, 0)

Deco_11.Name = "Deco"
Deco_11.Parent = RemoteClickerFrame
Deco_11.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_11.BackgroundTransparency = 1
Deco_11.Size = UDim2.new(1, 0, 0.5, 0)
Deco_11.Font = Enum.Font.Highway
Deco_11.FontSize = Enum.FontSize.Size14
Deco_11.Text = "Autoclick the remote."
Deco_11.TextColor3 = Color3.new(1, 1, 1)
Deco_11.TextSize = 14

RemoteClickerButton.Name = "RemoteClickerButton"
RemoteClickerButton.Parent = RemoteClickerFrame
RemoteClickerButton.BackgroundColor3 = Color3.new(1, 1, 1)
RemoteClickerButton.BorderSizePixel = 0
RemoteClickerButton.Position = UDim2.new(0.25, 0, 0.5, 0)
RemoteClickerButton.Size = UDim2.new(0.5, 0, 0.5, 0)
RemoteClickerButton.Font = Enum.Font.SourceSans
RemoteClickerButton.FontSize = Enum.FontSize.Size14
RemoteClickerButton.Text = "OFF"
RemoteClickerButton.TextColor3 = Color3.new(1, 0, 0)
RemoteClickerButton.TextSize = 14

AutoLoadoutFrame.Name = "AutoLoadoutFrame"
AutoLoadoutFrame.Parent = Toggleable
AutoLoadoutFrame.BackgroundColor3 = Color3.new(0.454902, 0.454902, 0.454902)
AutoLoadoutFrame.BorderSizePixel = 0
AutoLoadoutFrame.Position = UDim2.new(0.0500000007, 0, 0.75, 0)
AutoLoadoutFrame.Size = UDim2.new(0.899999976, 0, 0.075000003, 0)

Deco_12.Name = "Deco"
Deco_12.Parent = AutoLoadoutFrame
Deco_12.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_12.BackgroundTransparency = 1
Deco_12.Size = UDim2.new(1, 0, 0.5, 0)
Deco_12.Font = Enum.Font.Highway
Deco_12.FontSize = Enum.FontSize.Size14
Deco_12.Text = "Auto Load Loadout 1"
Deco_12.TextColor3 = Color3.new(1, 1, 1)
Deco_12.TextSize = 14

AutoLoadout1Button.Name = "AutoLoadout1Button"
AutoLoadout1Button.Parent = AutoLoadoutFrame
AutoLoadout1Button.BackgroundColor3 = Color3.new(1, 1, 1)
AutoLoadout1Button.BorderSizePixel = 0
AutoLoadout1Button.Position = UDim2.new(0.25, 0, 0.5, 0)
AutoLoadout1Button.Size = UDim2.new(0.5, 0, 0.5, 0)
AutoLoadout1Button.Font = Enum.Font.SourceSans
AutoLoadout1Button.FontSize = Enum.FontSize.Size14
AutoLoadout1Button.Text = "OFF"
AutoLoadout1Button.TextColor3 = Color3.new(1, 0, 0)
AutoLoadout1Button.TextSize = 14

NotificationsFrame.Name = "NotificationsFrame"
NotificationsFrame.Parent = Toggleable
NotificationsFrame.BackgroundColor3 = Color3.new(0.454902, 0.454902, 0.454902)
NotificationsFrame.BorderSizePixel = 0
NotificationsFrame.Position = UDim2.new(0.0500000007, 0, 0.850000024, 0)
NotificationsFrame.Size = UDim2.new(0.899999976, 0, 0.075000003, 0)

Deco_13.Name = "Deco"
Deco_13.Parent = NotificationsFrame
Deco_13.BackgroundColor3 = Color3.new(1, 1, 1)
Deco_13.BackgroundTransparency = 1
Deco_13.Size = UDim2.new(1, 0, 0.5, 0)
Deco_13.Font = Enum.Font.Highway
Deco_13.FontSize = Enum.FontSize.Size14
Deco_13.Text = "Notifications"
Deco_13.TextColor3 = Color3.new(1, 1, 1)
Deco_13.TextSize = 14

NotificationsButton.Name = "NotificationsButton"
NotificationsButton.Parent = NotificationsFrame
NotificationsButton.BackgroundColor3 = Color3.new(1, 1, 1)
NotificationsButton.BorderSizePixel = 0
NotificationsButton.Position = UDim2.new(0.25, 0, 0.5, 0)
NotificationsButton.Size = UDim2.new(0.5, 0, 0.5, 0)
NotificationsButton.Font = Enum.Font.SourceSans
NotificationsButton.FontSize = Enum.FontSize.Size14
NotificationsButton.Text = "ON"
NotificationsButton.TextColor3 = Color3.new(0, 1, 0)
NotificationsButton.TextSize = 14

function CountBricks()
 local c = 0
for i,v in pairs(workspace:GetChildren()) do
for x in string.gmatch(v.Name, "Crate") do
wait(0.2)
c = c + 1
end
end
return c
end

tpcratez = false

spawn (function()
while true do
wait()
NumberOfBoxes.Text = CountBricks()
if tpcratez == true then
local pos = Instance.new("Vector3Value")
pos.Value = game.Players.LocalPlayer.Character.Head.Position
local children = game.Workspace:GetChildren()
for i =1, #children do
wait(0.1)
if children[i] ~= nil then
for x in string.gmatch(children[i].Name, "Crate") do
if children[i].ClassName == "Part" then
game.Players.LocalPlayer.Character:MoveTo(children[i].Position)
wait(0.3)
end
end
end
end
wait(0.1)
game.Players.LocalPlayer.Character:MoveTo(pos.Value)
pos:remove()
end
end
end)

TPCrates.MouseButton1Down:connect(function()
local pos = Instance.new("Vector3Value")
pos.Value = game.Players.LocalPlayer.Character.Head.Position
local children = game.Workspace:GetChildren()
for i =1, #children do
wait(0.1)
if children[i] ~= nil then
for x in string.gmatch(children[i].Name, "Crate") do
if children[i].ClassName == "Part" then
game.Players.LocalPlayer.Character:MoveTo(children[i].Position)
wait(0.3)
end
end
end
end
wait(0.1)
game.Players.LocalPlayer.Character:MoveTo(pos.Value)
pos:remove()
end)

LoopTPCrates.MouseButton1Down:connect(function()
if tpcratez == true then
LoopTPCrates.Text = "Loop TP Crates: OFF"
Loop.ImageColor3 = Color3.fromRGB(255,0,0)
tpcratez = false else
LoopTPCrates.Text = "Loop TP Crates: ON"
Loop.ImageColor3 = Color3.fromRGB(0,255,0)
tpcratez = true
end
end)



local autoremote = false
RemoteClickerButton.MouseButton1Down:connect(function()
if autoremote == false then
autoremote = true
RemoteClickerButton.Text = "ON"
RemoteClickerButton.TextColor3 = Color3.fromRGB(0,255,0)
else
autoremote = false
RemoteClickerButton.Text = "OFF"
RemoteClickerButton.TextColor3 = Color3.fromRGB(255,0,0)
end
end)

local autobutton = false
ButtonClickerButton.MouseButton1Down:connect(function()
if autobutton == false then
autobutton = true
ButtonClickerButton.Text = "ON"
ButtonClickerButton.TextColor3 = Color3.fromRGB(0,255,0)
else
autobutton = false
ButtonClickerButton.Text = "OFF"
ButtonClickerButton.TextColor3 = Color3.fromRGB(255,0,0)
end
end)

local notificationstog = true
NotificationsButton.MouseButton1Down:connect(function()
if notificationstog == false then
notificationstog = true
NotificationsButton.Text = "ON"
NotificationsButton.TextColor3 = Color3.fromRGB(0,255,0)
else
notificationstog = false
NotificationsButton.Text = "OFF"
NotificationsButton.TextColor3 = Color3.fromRGB(255,0,0)
end
end)

local loadloadout1 = false
AutoLoadout1Button.MouseButton1Down:connect(function()
if loadloadout1 == false then
loadloadout1 = true
AutoLoadout1Button.Text = "ON"
AutoLoadout1Button.TextColor3 = Color3.fromRGB(0,255,0)
else
loadloadout1 = false
AutoLoadout1Button.Text = "OFF"
AutoLoadout1Button.TextColor3 = Color3.fromRGB(255,0,0)
end
end)

spawn (function()
while true do
wait()
if autoremote == true then
game.ReplicatedStorage.RemoteDrop:FireServer()
end
end
end)

spawn (function()
while true do
wait()
if notificationstog == true then
game.Players.LocalPlayer.PlayerGui.GUI.Notifications.Visible = true
else
game.Players.LocalPlayer.PlayerGui.GUI.Notifications.Visible = false
end
end
end)

spawn(function()
while true do
wait()
if loadloadout1 == true then
game.ReplicatedStorage.Layouts:InvokeServer("Load","Layout1")
end
end
end)


local factorys = workspace.Tycoons:GetChildren()
for i =1, #factorys do
if factorys[i].Owner.Value == game.Players.LocalPlayer.Name then
myfac = factorys[i]
end
end

spawn (function()
while true do
wait(0.1)
if autobutton == true then
local clickymines = myfac:GetChildren()
for i =1, #clickymines do
if clickymines[i].ClassName == "Model" then
if clickymines[i].Model:findFirstChild("Button") then
local de = clickymines[i].Model:GetChildren()
for i =1, #de do
if de[i].Name == "Button" then
game.ReplicatedStorage.Click:FireServer(de[i])
end
end
end
end
end
end
end
end)

spawn (function()
while true do
wait(0.5)
if workspace.Map:findFirstChild("Iron Mine-Chan") then
MineChanButton.Visible = true
else
MineChanButton.Visible = false
end
end
end)



MineChanButton.MouseButton1Down:connect(function()
for i = 1,AmountToGive.Text do
game:GetService("ReplicatedStorage").Click:FireServer(workspace.Map["Iron Mine-Chan"].Hitbox)
end
end)


PlusTwitchButton.MouseButton1Down:connect(function()
game.Players.LocalPlayer.TwitchPoints.Value = game.Players.LocalPlayer.TwitchPoints.Value+1
end)
PlusCloverButton.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Clovers.Value = game.Players.LocalPlayer.Clovers.Value+1
end)

local reloop = false
AutoRegularButton.MouseButton1Down:connect(function()
if reloop == false then
reloop = true
AutoRegularButton.Text = "ON"
AutoRegularButton.TextColor3 = Color3.fromRGB(0,255,0)
else
reloop = false
AutoRegularButton.Text = "OFF"
AutoRegularButton.TextColor3 = Color3.fromRGB(255,0,0)
end
end)




local unloop = false
AutoUnrealButton.MouseButton1Down:connect(function()
if unloop == false then
unloop = true
AutoUnrealButton.Text = "ON"
AutoUnrealButton.TextColor3 = Color3.fromRGB(0,255,0)
else
unloop = false
AutoUnrealButton.Text = "OFF"
AutoUnrealButton.TextColor3 = Color3.fromRGB(255,0,0)
end
end)




local inloop = false
AutoInfernoButton.MouseButton1Down:connect(function()
if inloop == false then
inloop = true
AutoInfernoButton.Text = "ON"
AutoInfernoButton.TextColor3 = Color3.fromRGB(0,255,0)
else
inloop = false
AutoInfernoButton.Text = "OFF"
AutoInfernoButton.TextColor3 = Color3.fromRGB(255,0,0)
end
end)

spawn (function()
while true do
wait(0.1)
if reloop == true then
if 0 < game.Players.LocalPlayer.Crates.Regular.Value then
else
game.ReplicatedStorage.MysteryBox:InvokeServer("Regular")
end
end

if unloop == true then
if 0 < game.Players.LocalPlayer.Crates.Unreal.Value then
else
game.ReplicatedStorage.MysteryBox:InvokeServer("Unreal")
end
end

if inloop == true then
if 0 < game.Players.LocalPlayer.Crates.Inferno.Value then
else
game.ReplicatedStorage.MysteryBox:InvokeServer("Inferno")
end
end
end
end)



local autorebirth = false
AutoRebirthButton.MouseButton1Down:connect(function()
if autorebirth == false then
autorebirth = true
AutoRebirthButton.Text = "ON"
AutoRebirthButton.TextColor3 = Color3.fromRGB(0,255,0)
else
autorebirth = false
AutoRebirthButton.Text = "OFF"
AutoRebirthButton.TextColor3 = Color3.fromRGB(255,0,0)
end
end)

spawn (function()
while true do
wait(1)
if autorebirth == true then
game.ReplicatedStorage.Rebirth:InvokeServer()
end
end
end)