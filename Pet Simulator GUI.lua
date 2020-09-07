-- Updated 21th Jun 2019 --
-- Credit to Maksik#3010 --

-- Farming Script Fixed --

-- Anti Idle by My friend
local VirtualUser=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
VirtualUser:CaptureController()
VirtualUser:ClickButton2(Vector2.new())
end)

buypetactive = false
buyhatactive = false
FarmStart = false
FarmArea = "none"
showstartmessage = true
WalkNumber = "1"
JumpNumber = "1"
adprainbowactive = false
adhrobuxactive = false
adhlordfedactive = false
adhblackdominoactive = false
stopifgethatactive = false

local EggKeepers = {
	"Dominus Huge", "Hydra", "Agony", -- Any pet with it's name in here will not be auto-deleted after purchased!
}

local petTable = {}
local Try = 0
local Amount = 0

local function PetTable()
	local Stats = workspace["__REMOTES"]["Core"]["Get Other Stats"]:InvokeServer()
	local Times = #Stats[game.Players.LocalPlayer.Name]["Save"]["Pets"]
	local Name = game:GetService("Players").LocalPlayer.Name
	petTable = {}
	Try = 0
	Amount = 0
    for i=1,Times do
        if(Stats[Name]["Save"]["Pets"][Times].e == true) then
			Amount = Amount + 1
			petTable[Amount] = {
				["ID"] = tonumber(Stats[Name]["Save"]["Pets"][Times].id),
				["LEVEL"] = tonumber(Stats[Name]["Save"]["Pets"][Times].l),
			}
        end
        Times = Times - 1
    end
end

pcall(function()
	PetTable()
end)

local MainGUI = Instance.new("ScreenGui")
local TopFrame = Instance.new("Frame")
local PSHeader = Instance.new("TextLabel")
local ClosePS = Instance.new("TextButton")
local StatsFrame = Instance.new("Frame")
local FarmCoins = Instance.new("TextButton")
local FarmFrame = Instance.new("Frame")
local PowerTextInfo1 = Instance.new("TextLabel")
local PowerText1 = Instance.new("TextLabel")
local FarmPower = Instance.new("TextBox")
local StartFarming = Instance.new("TextButton")
local StartFarmingEarth = Instance.new("TextButton")
local StartFarmingMoon = Instance.new("TextButton")
local WalkSpeed = Instance.new("TextButton")
local JumpPower = Instance.new("TextButton")
local BuyScreen = Instance.new("TextButton")
local BuyScreenFrame = Instance.new("Frame")
local BuyPetTitle1 = Instance.new("TextLabel")
local BuyPetTitle2 = Instance.new("TextLabel")
local BuyPetTitle3 = Instance.new("TextLabel")
local BuyPetAmount1 = Instance.new("TextLabel")
local BuyPetAmount2 = Instance.new("TextBox")
local BuyPetAmount3 = Instance.new("TextBox")
local BuyPetTier1 = Instance.new("TextLabel")
local BuyPetTier2 = Instance.new("TextBox")
local BuyPetGo = Instance.new("TextButton")
local ADPetLabel1 = Instance.new("TextLabel")
local KeepRainbowPet = Instance.new("TextButton")
local BuyHatTier2 = Instance.new("TextBox")
local BuyHatTitle1 = Instance.new("TextLabel")
local BuyHatTitle2 = Instance.new("TextLabel")
local BuyHatAmount1 = Instance.new("TextLabel")
local BuyHatAmount2 = Instance.new("TextBox")
local BuyHatTier1 = Instance.new("TextLabel")
local BuyHatGo = Instance.new("TextButton")
local ADHatLabel1 = Instance.new("TextLabel")
local KeepRobuxHat = Instance.new("TextButton")
local KeepLordFedHat = Instance.new("TextButton")
local KeepBlackDominoHat = Instance.new("TextButton")
local StopIfGetHat = Instance.new("TextButton")
local Locations = Instance.new("TextButton")
local Locations2 = Instance.new("TextButton")
local PetCode = Instance.new("TextButton")
local CodeInfoFrame = Instance.new("Frame")
local CodeInfo1 = Instance.new("TextLabel")
local SelectPet = Instance.new("TextLabel")
local SelectPetInput = Instance.new("TextBox")
local MaxCoins = Instance.new("TextLabel")
local MaxC1 = Instance.new("TextButton")
local MaxC2 = Instance.new("TextButton")
local MaxC3 = Instance.new("TextButton")
local MaxAgility = Instance.new("TextLabel")
local MaxA1 = Instance.new("TextButton")
local MaxA2 = Instance.new("TextButton")
local MaxA3 = Instance.new("TextButton")
local MainFrame = Instance.new("Frame")
local Stats = Instance.new("TextButton")
local Spawn = Instance.new("TextButton")
local Shop = Instance.new("TextButton")
local Area2 = Instance.new("TextButton")
local Area3 = Instance.new("TextButton")
local Area4 = Instance.new("TextButton")
local Area5 = Instance.new("TextButton")
local Area6 = Instance.new("TextButton")
local Area7 = Instance.new("TextButton")
local Area8 = Instance.new("TextButton")
local Area9 = Instance.new("TextButton")
local Area10 = Instance.new("TextButton")
local Area11 = Instance.new("TextButton")
local Area12 = Instance.new("TextButton")
local Rocket = Instance.new("TextButton")
local CandyLand = Instance.new("TextButton")
local CyborgLand = Instance.new("TextButton")
local GoldCrate = Instance.new("TextButton")
local AreaDivider = Instance.new("TextLabel")
local AllHealthLabel = Instance.new("TextLabel")
local AllHealthMinLabel = Instance.new("TextLabel")
local AllHealthMaxLabel = Instance.new("TextLabel")
local AllHealthMin = Instance.new("TextBox")
local AllHealthMax = Instance.new("TextBox")
local EarthHealthLabel = Instance.new("TextLabel")
local EarthHealthMinLabel = Instance.new("TextLabel")
local EarthHealthMaxLabel = Instance.new("TextLabel")
local EarthHealthMin = Instance.new("TextBox")
local EarthHealthMax = Instance.new("TextBox")
local MoonHealthLabel = Instance.new("TextLabel")
local MoonHealthMinLabel = Instance.new("TextLabel")
local MoonHealthMaxLabel = Instance.new("TextLabel")
local MoonHealthMin = Instance.new("TextBox")
local MoonHealthMax = Instance.new("TextBox")
local TeleportScreen = Instance.new("TextButton")

--game.Workspace["__THINGS"].Barriers:ClearAllChildren()

function hint(txt, t)
	if t then
		local h = Instance.new("Hint",game.Players.LocalPlayer.PlayerGui)
		h.Text = txt
		wait(t)
		h:remove()
	else
		local h = Instance.new("Hint",game.Players.LocalPlayer.PlayerGui)
		h.Text = txt
		wait(5)
		h:remove()
	end
end

MainGUI.Name = "MainGUI"
MainGUI.Parent = game.CoreGui
local MainCORE = game.CoreGui["MainGUI"]

TopFrame.Name = "TopFrame"
TopFrame.Parent = MainGUI
TopFrame.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
TopFrame.BackgroundTransparency = 0
TopFrame.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
TopFrame.Active = true
TopFrame.Selectable = true
TopFrame.Draggable = true
TopFrame.Visible = true
TopFrame.Position = UDim2.new(1, -150, 0.5, -145)
TopFrame.Size = UDim2.new(0, 140, 0, 30)

PSHeader.Name = "PSHeader"
PSHeader.Parent = TopFrame
PSHeader.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
PSHeader.BackgroundTransparency = 1
PSHeader.BorderSizePixel = 0
PSHeader.BorderColor3 = Color3.new(0, 0, 0)
PSHeader.Position = UDim2.new(0, 5, 0, 5)
PSHeader.Size = UDim2.new(0, 105, 0, 20)
PSHeader.Font = Enum.Font.Fantasy
PSHeader.Text = "Pet Simulator"
PSHeader.TextColor3 = Color3.new(0, 0, 0)
PSHeader.TextScaled = true
PSHeader.TextSize = 17

ClosePS.Name = "ClosePS"
ClosePS.Parent = TopFrame
ClosePS.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
ClosePS.BorderColor3 = Color3.new(0, 0, 0)
ClosePS.Position = UDim2.new(0, 115, 0, 5)
ClosePS.Size = UDim2.new(0, 20, 0, 20)
ClosePS.Font = Enum.Font.Fantasy
ClosePS.Text = "X"
ClosePS.TextColor3 = Color3.new(1, 0, 0)
ClosePS.TextScaled = true
ClosePS.TextSize = 17

MainFrame.Name = "MainFrame"
MainFrame.Parent = TopFrame
MainFrame.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
MainFrame.BackgroundTransparency = 0
MainFrame.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
MainFrame.Position = UDim2.new(0, 0, 0, 30)
MainFrame.Size = UDim2.new(0, 140, 0, 458)
MainFrame.Visible = true

BuyScreen.Name = "BuyScreen"
BuyScreen.Parent = MainFrame
BuyScreen.BackgroundColor3 = Color3.new(0, 0, 0)
BuyScreen.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
BuyScreen.Position = UDim2.new(0, 5, 0, 5)
BuyScreen.Size = UDim2.new(0, 60, 0, 25)
BuyScreen.Font = Enum.Font.Fantasy
BuyScreen.TextColor3 = Color3.new(1, 1, 1)
BuyScreen.Text = "SHOP"
BuyScreen.TextSize = 17
BuyScreen.TextWrapped = true

FarmCoins.Name = "FarmCoins"
FarmCoins.Parent = MainFrame
FarmCoins.BackgroundColor3 = Color3.new(0, 0, 0)
FarmCoins.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
FarmCoins.Position = UDim2.new(0, 75, 0, 5)
FarmCoins.Size = UDim2.new(0, 60, 0, 25)
FarmCoins.Font = Enum.Font.Fantasy
FarmCoins.TextColor3 = Color3.new(1, 1, 1)
FarmCoins.Text = "FARM"
FarmCoins.TextSize = 17
FarmCoins.TextWrapped = true

WalkSpeed.Name = "WalkSpeed"
WalkSpeed.Parent = MainFrame
WalkSpeed.BackgroundColor3 = Color3.new(0, 0, 0)
WalkSpeed.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
WalkSpeed.Position = UDim2.new(0, 5, 0, 40)
WalkSpeed.Size = UDim2.new(0, 60, 0, 25)
WalkSpeed.Font = Enum.Font.Fantasy
WalkSpeed.TextColor3 = Color3.new(1, 1, 1)
WalkSpeed.Text = "Walk:1"
WalkSpeed.TextSize = 17
WalkSpeed.TextWrapped = true

JumpPower.Name = "JumpPower"
JumpPower.Parent = MainFrame
JumpPower.BackgroundColor3 = Color3.new(0, 0, 0)
JumpPower.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
JumpPower.Position = UDim2.new(0, 75, 0, 40)
JumpPower.Size = UDim2.new(0, 60, 0, 25)
JumpPower.Font = Enum.Font.Fantasy
JumpPower.TextColor3 = Color3.new(1, 1, 1)
JumpPower.Text = "Jump:1"
JumpPower.TextSize = 17
JumpPower.TextWrapped = true

TeleportScreen.Name = "TeleportScreen"
TeleportScreen.Parent = MainFrame
TeleportScreen.BackgroundColor3 = Color3.new(0, 0, 0)
TeleportScreen.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
TeleportScreen.Position = UDim2.new(0, 5, 0, 75)
TeleportScreen.Size = UDim2.new(0, 130, 0, 20)
TeleportScreen.Font = Enum.Font.Fantasy
TeleportScreen.TextColor3 = Color3.new(1, 1, 1)
TeleportScreen.Text = "GAME TELEPORT"
TeleportScreen.TextSize = 17
TeleportScreen.TextWrapped = true

Spawn.Name = "Spawn"
Spawn.Parent = MainFrame
Spawn.BackgroundColor3 = Color3.new(0, 0, 0)
Spawn.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
Spawn.Position = UDim2.new(0, 5, 0, 100)
Spawn.Size = UDim2.new(0, 130, 0, 20)
Spawn.Font = Enum.Font.Fantasy
Spawn.TextColor3 = Color3.new(1, 1, 1)
Spawn.Text = "Spawn Area"
Spawn.TextSize = 17
Spawn.TextWrapped = true

Shop.Name = "Shop"
Shop.Parent = MainFrame
Shop.BackgroundColor3 = Color3.new(0, 0, 0)
Shop.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
Shop.Position = UDim2.new(0, 5, 0, 125)
Shop.Size = UDim2.new(0, 130, 0, 20)
Shop.Font = Enum.Font.Fantasy
Shop.TextColor3 = Color3.new(1, 1, 1)
Shop.Text = "Egg Shop"
Shop.TextSize = 17
Shop.TextWrapped = true

Area2.Name = "Area2"
Area2.Parent = MainFrame
Area2.BackgroundColor3 = Color3.new(0, 0, 0)
Area2.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
Area2.Position = UDim2.new(0, 5, 0, 150)
Area2.Size = UDim2.new(0, 130, 0, 20)
Area2.Font = Enum.Font.Fantasy
Area2.TextColor3 = Color3.new(1, 1, 1)
Area2.Text = "25K Area"
Area2.TextSize = 17
Area2.TextWrapped = true

Area3.Name = "Area3"
Area3.Parent = MainFrame
Area3.BackgroundColor3 = Color3.new(0, 0, 0)
Area3.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
Area3.Position = UDim2.new(0, 5, 0, 175)
Area3.Size = UDim2.new(0, 130, 0, 20)
Area3.Font = Enum.Font.Fantasy
Area3.TextColor3 = Color3.new(1, 1, 1)
Area3.Text = "400K Area"
Area3.TextSize = 17
Area3.TextWrapped = true

Area4.Name = "Area4"
Area4.Parent = MainFrame
Area4.BackgroundColor3 = Color3.new(0, 0, 0)
Area4.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
Area4.Position = UDim2.new(0, 5, 0, 200)
Area4.Size = UDim2.new(0, 130, 0, 20)
Area4.Font = Enum.Font.Fantasy
Area4.TextColor3 = Color3.new(1, 1, 1)
Area4.Text = "2.5M Area"
Area4.TextSize = 17
Area4.TextWrapped = true

Area5.Name = "Area5"
Area5.Parent = MainFrame
Area5.BackgroundColor3 = Color3.new(0, 0, 0)
Area5.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
Area5.Position = UDim2.new(0, 5, 0, 225)
Area5.Size = UDim2.new(0, 130, 0, 20)
Area5.Font = Enum.Font.Fantasy
Area5.TextColor3 = Color3.new(1, 1, 1)
Area5.Text = "20M Area"
Area5.TextSize = 17
Area5.TextWrapped = true

Area6.Name = "Area6"
Area6.Parent = MainFrame
Area6.BackgroundColor3 = Color3.new(0, 0, 0)
Area6.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
Area6.Position = UDim2.new(0, 5, 0, 250)
Area6.Size = UDim2.new(0, 130, 0, 20)
Area6.Font = Enum.Font.Fantasy
Area6.TextColor3 = Color3.new(1, 1, 1)
Area6.Text = "500M Area"
Area6.TextSize = 17
Area6.TextWrapped = true

Rocket.Name = "Rocket"
Rocket.Parent = MainFrame
Rocket.BackgroundColor3 = Color3.new(0, 0, 0)
Rocket.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
Rocket.Position = UDim2.new(0, 5, 0, 275)
Rocket.Size = UDim2.new(0, 130, 0, 20)
Rocket.Font = Enum.Font.Fantasy
Rocket.TextColor3 = Color3.new(1, 1, 1)
Rocket.Text = "Rocket Area"
Rocket.TextSize = 17
Rocket.TextWrapped = true

AreaDivider.Name = "AreaDivider"
AreaDivider.Parent = MainFrame
AreaDivider.BackgroundColor3 = Color3.new(0, 0, 0)
AreaDivider.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
AreaDivider.Position = UDim2.new(0, 0, 0, 300)
AreaDivider.Size = UDim2.new(0, 140, 0, 3)
AreaDivider.Font = Enum.Font.Fantasy
AreaDivider.Text = ""
AreaDivider.TextSize = 17

Area9.Name = "Area9"
Area9.Parent = MainFrame
Area9.BackgroundColor3 = Color3.new(0, 0, 0)
Area9.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
Area9.Position = UDim2.new(0, 5, 0, 308)
Area9.Size = UDim2.new(0, 130, 0, 20)
Area9.Font = Enum.Font.Fantasy
Area9.TextColor3 = Color3.new(1, 1, 1)
Area9.Text = "Moon Spawn Point"
Area9.TextSize = 17
Area9.TextWrapped = true

Area8.Name = "Area8"
Area8.Parent = MainFrame
Area8.BackgroundColor3 = Color3.new(0, 0, 0)
Area8.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
Area8.Position = UDim2.new(0, 5, 0, 333)
Area8.Size = UDim2.new(0, 130, 0, 20)
Area8.Font = Enum.Font.Fantasy
Area8.TextColor3 = Color3.new(1, 1, 1)
Area8.Text = "Moon Egg Shop"
Area8.TextSize = 17
Area8.TextWrapped = true

Area10.Name = "Area10"
Area10.Parent = MainFrame
Area10.BackgroundColor3 = Color3.new(0, 0, 0)
Area10.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
Area10.Position = UDim2.new(0, 5, 0, 358)
Area10.Size = UDim2.new(0, 130, 0, 20)
Area10.Font = Enum.Font.Fantasy
Area10.TextColor3 = Color3.new(1, 1, 1)
Area10.Text = "Moon Area 2"
Area10.TextSize = 17
Area10.TextWrapped = true

CandyLand.Name = "CandyLand"
CandyLand.Parent = MainFrame
CandyLand.BackgroundColor3 = Color3.new(0, 0, 0)
CandyLand.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
CandyLand.Position = UDim2.new(0, 5, 0, 383)
CandyLand.Size = UDim2.new(0, 130, 0, 20)
CandyLand.Font = Enum.Font.Fantasy
CandyLand.TextColor3 = Color3.new(1, 1, 1)
CandyLand.Text = "Candy Land"
CandyLand.TextSize = 17
CandyLand.TextWrapped = true

CyborgLand.Name = "CyborgLand"
CyborgLand.Parent = MainFrame
CyborgLand.BackgroundColor3 = Color3.new(0, 0, 0)
CyborgLand.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
CyborgLand.Position = UDim2.new(0, 5, 0, 408)
CyborgLand.Size = UDim2.new(0, 130, 0, 20)
CyborgLand.Font = Enum.Font.Fantasy
CyborgLand.TextColor3 = Color3.new(1, 1, 1)
CyborgLand.Text = "Cyborg Land"
CyborgLand.TextSize = 17
CyborgLand.TextWrapped = true

GoldCrate.Name = "GoldCrate"
GoldCrate.Parent = MainFrame
GoldCrate.BackgroundColor3 = Color3.new(0, 0, 0)
GoldCrate.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
GoldCrate.Position = UDim2.new(0, 5, 0, 433)
GoldCrate.Size = UDim2.new(0, 130, 0, 20)
GoldCrate.Font = Enum.Font.Fantasy
GoldCrate.TextColor3 = Color3.new(1, 1, 1)
GoldCrate.Text = "Gold Land"
GoldCrate.TextSize = 17
GoldCrate.TextWrapped = true

BuyScreenFrame.Name = "BuyScreenFrame"
BuyScreenFrame.Parent = TopFrame
BuyScreenFrame.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
BuyScreenFrame.BackgroundTransparency = 0
BuyScreenFrame.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
BuyScreenFrame.Position = UDim2.new(0, -5, 0, 30)
BuyScreenFrame.Size = UDim2.new(0, 150, 0, 425)
BuyScreenFrame.Visible = false

Locations.Name = "Locations"
Locations.Parent = BuyScreenFrame
Locations.BackgroundColor3 = Color3.new(0, 0, 0)
Locations.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
Locations.Position = UDim2.new(0, 5, 0, 5)
Locations.Size = UDim2.new(0, 140, 0, 25)
Locations.Font = Enum.Font.Fantasy
Locations.TextColor3 = Color3.new(1, 1, 1)
Locations.Text = "LOCATIONS"
Locations.TextSize = 17
Locations.TextWrapped = true

BuyPetTitle2.Name = "BuyPetTitle2"
BuyPetTitle2.Parent = BuyScreenFrame
BuyPetTitle2.BackgroundTransparency = 1
BuyPetTitle2.BorderSizePixel = 0
BuyPetTitle2.Position = UDim2.new(0, 5, 0, 40)
BuyPetTitle2.Size = UDim2.new(0, 140, 0, 20)
BuyPetTitle2.Font = Enum.Font.Fantasy
BuyPetTitle2.TextColor3 = Color3.new(0, 0, 0)
BuyPetTitle2.Text = "BUY PETS"
BuyPetTitle2.TextSize = 17
BuyPetTitle2.TextWrapped = true

BuyPetAmount1.Name = "BuyPetAmount1"
BuyPetAmount1.Parent = BuyScreenFrame
BuyPetAmount1.BackgroundColor3 = Color3.new(0, 0, 0)
BuyPetAmount1.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
BuyPetAmount1.Position = UDim2.new(0, 5, 0, 60)
BuyPetAmount1.Size = UDim2.new(0, 90, 0, 20)
BuyPetAmount1.Font = Enum.Font.Fantasy
BuyPetAmount1.TextColor3 = Color3.new(1, 1, 1)
BuyPetAmount1.Text = "Quantity"
BuyPetAmount1.TextSize = 17
BuyPetAmount1.TextWrapped = true

BuyPetAmount2.Name = "BuyPetAmount2"
BuyPetAmount2.Parent = BuyScreenFrame
BuyPetAmount2.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
BuyPetAmount2.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BuyPetAmount2.Position = UDim2.new(0, 95, 0, 59)
BuyPetAmount2.Size = UDim2.new(0, 50, 0, 21)
BuyPetAmount2.Font = Enum.Font.Fantasy
BuyPetAmount2.TextColor3 = Color3.new(1, 1, 1)
BuyPetAmount2.Text = "1"
BuyPetAmount2.TextSize = 15
BuyPetAmount2.TextWrapped = true

BuyPetTier1.Name = "BuyPetTier1"
BuyPetTier1.Parent = BuyScreenFrame
BuyPetTier1.BackgroundColor3 = Color3.new(0, 0, 0)
BuyPetTier1.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
BuyPetTier1.Position = UDim2.new(0, 5, 0, 81)
BuyPetTier1.Size = UDim2.new(0, 40, 0, 20)
BuyPetTier1.Font = Enum.Font.Fantasy
BuyPetTier1.TextColor3 = Color3.new(1, 1, 1)
BuyPetTier1.Text = "Tier"
BuyPetTier1.TextSize = 17
BuyPetTier1.TextWrapped = true

BuyPetTier2.Name = "BuyPetTier2"
BuyPetTier2.Parent = BuyScreenFrame
BuyPetTier2.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
BuyPetTier2.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BuyPetTier2.Position = UDim2.new(0, 45, 0, 81)
BuyPetTier2.Size = UDim2.new(0, 100, 0, 21)
BuyPetTier2.Font = Enum.Font.Fantasy
BuyPetTier2.TextColor3 = Color3.new(1, 1, 1)
BuyPetTier2.Text = "18"
BuyPetTier2.TextSize = 15
BuyPetTier2.TextWrapped = true

BuyPetTitle3.Name = "BuyPetTitle3"
BuyPetTitle3.Parent = BuyScreenFrame
BuyPetTitle3.BackgroundColor3 = Color3.new(0, 0, 0)
BuyPetTitle3.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
BuyPetTitle3.Position = UDim2.new(0, 5, 0, 106)
BuyPetTitle3.Size = UDim2.new(0, 140, 0, 35)
BuyPetTitle3.Font = Enum.Font.Fantasy
BuyPetTitle3.TextColor3 = Color3.new(1, 1, 1)
BuyPetTitle3.Text = "In Tier type 1-18,\nHallow, Cursed Hallow"
BuyPetTitle3.TextSize = 15
BuyPetTitle3.TextWrapped = true

KeepRainbowPet.Name = "KeepRainbowPet"
KeepRainbowPet.Parent = BuyScreenFrame
KeepRainbowPet.BackgroundColor3 = Color3.new(0, 0, 0)
KeepRainbowPet.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
KeepRainbowPet.Position = UDim2.new(0, 5, 0, 146)
KeepRainbowPet.Size = UDim2.new(0, 140, 0, 35)
KeepRainbowPet.Font = Enum.Font.Fantasy
KeepRainbowPet.TextColor3 = Color3.new(1, 1, 1)
KeepRainbowPet.Text = "Auto Delete Pets,\nKeep Rainbow: OFF"
KeepRainbowPet.TextSize = 17
KeepRainbowPet.TextWrapped = true

BuyPetGo.Name = "BuyPetGo"
BuyPetGo.Parent = BuyScreenFrame
BuyPetGo.BackgroundColor3 = Color3.new(0.3, 0, 0)
BuyPetGo.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BuyPetGo.Position = UDim2.new(0, 5, 0, 186)
BuyPetGo.Size = UDim2.new(0, 140, 0, 20)
BuyPetGo.Font = Enum.Font.Fantasy
BuyPetGo.TextColor3 = Color3.new(1, 1, 1)
BuyPetGo.Text = "Buy Pets"
BuyPetGo.TextSize = 17
BuyPetGo.TextWrapped = true

BuyHatTitle2.Name = "BuyHatTitle2"
BuyHatTitle2.Parent = BuyScreenFrame
BuyHatTitle2.BackgroundTransparency = 1
BuyHatTitle2.BorderSizePixel = 0
BuyHatTitle2.Position = UDim2.new(0, 5, 0, 215)
BuyHatTitle2.Size = UDim2.new(0, 140, 0, 20)
BuyHatTitle2.Font = Enum.Font.Fantasy
BuyHatTitle2.TextColor3 = Color3.new(0, 0, 0)
BuyHatTitle2.Text = "BUY HATS"
BuyHatTitle2.TextSize = 17
BuyHatTitle2.TextWrapped = true

BuyHatAmount1.Name = "BuyHatAmount1"
BuyHatAmount1.Parent = BuyScreenFrame
BuyHatAmount1.BackgroundColor3 = Color3.new(0, 0, 0)
BuyHatAmount1.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
BuyHatAmount1.Position = UDim2.new(0, 6, 0, 235)
BuyHatAmount1.Size = UDim2.new(0, 89, 0, 20)
BuyHatAmount1.Font = Enum.Font.Fantasy
BuyHatAmount1.TextColor3 = Color3.new(1, 1, 1)
BuyHatAmount1.Text = "Quantity"
BuyHatAmount1.TextSize = 17
BuyHatAmount1.TextWrapped = true

BuyHatAmount2.Name = "BuyHatAmount2"
BuyHatAmount2.Parent = BuyScreenFrame
BuyHatAmount2.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
BuyHatAmount2.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BuyHatAmount2.Position = UDim2.new(0, 95, 0, 234)
BuyHatAmount2.Size = UDim2.new(0, 50, 0, 21)
BuyHatAmount2.Font = Enum.Font.Fantasy
BuyHatAmount2.TextColor3 = Color3.new(1, 1, 1)
BuyHatAmount2.Text = "1"
BuyHatAmount2.TextSize = 17
BuyHatAmount2.TextWrapped = true

BuyHatTier1.Name = "BuyHatTier1"
BuyHatTier1.Parent = BuyScreenFrame
BuyHatTier1.BackgroundColor3 = Color3.new(0, 0, 0)
BuyHatTier1.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
BuyHatTier1.Position = UDim2.new(0, 6, 0, 256)
BuyHatTier1.Size = UDim2.new(0, 60, 0, 20)
BuyHatTier1.Font = Enum.Font.Fantasy
BuyHatTier1.TextColor3 = Color3.new(1, 1, 1)
BuyHatTier1.Text = "Tier"
BuyHatTier1.TextSize = 17
BuyHatTier1.TextWrapped = true

BuyHatTier2.Name = "BuyHatTier2"
BuyHatTier2.Parent = BuyScreenFrame
BuyHatTier2.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
BuyHatTier2.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BuyHatTier2.Position = UDim2.new(0, 66, 0, 256)
BuyHatTier2.Size = UDim2.new(0, 79, 0, 21)
BuyHatTier2.Font = Enum.Font.Fantasy
BuyHatTier2.TextColor3 = Color3.new(1, 1, 1)
BuyHatTier2.Text = "Golden"
BuyHatTier2.TextSize = 17
BuyHatTier2.TextWrapped = true

BuyHatTitle1.Name = "BuyHatTitle1"
BuyHatTitle1.Parent = BuyScreenFrame
BuyHatTitle1.BackgroundColor3 = Color3.new(0, 0, 0)
BuyHatTitle1.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
BuyHatTitle1.Position = UDim2.new(0, 5, 0, 282)
BuyHatTitle1.Size = UDim2.new(0, 140, 0, 35)
BuyHatTitle1.Font = Enum.Font.Fantasy
BuyHatTitle1.TextColor3 = Color3.new(1, 1, 1)
BuyHatTitle1.Text = "In Tier type 1-4 or Golden"
BuyHatTitle1.TextSize = 17
BuyHatTitle1.TextWrapped = true

KeepRobuxHat.Name = "KeepRobuxHat"
KeepRobuxHat.Parent = BuyScreenFrame
KeepRobuxHat.BackgroundColor3 = Color3.new(0, 0, 0)
KeepRobuxHat.BorderColor3 = Color3.new(0.3, 0.3, 0.3)
KeepRobuxHat.Position = UDim2.new(0, 5, 0, 322)
KeepRobuxHat.Size = UDim2.new(0, 140, 0, 35)
KeepRobuxHat.Font = Enum.Font.Fantasy
KeepRobuxHat.TextColor3 = Color3.new(1, 1, 1)
KeepRobuxHat.Text = "Auto Delete Hats,\nKeep Robux: OFF"
KeepRobuxHat.TextSize = 17
KeepRobuxHat.TextWrapped = true

KeepLordFedHat.Name = "KeepLordFedHat"
KeepLordFedHat.Parent = BuyScreenFrame
KeepLordFedHat.BackgroundColor3 = Color3.new(0, 0, 0)
KeepLordFedHat.BorderColor3 = Color3.new(0.3, 0.3, 0.3)
KeepLordFedHat.Position = UDim2.new(0, 5, 0, 358)
KeepLordFedHat.Size = UDim2.new(0, 140, 0, 20)
KeepLordFedHat.Font = Enum.Font.Fantasy
KeepLordFedHat.TextColor3 = Color3.new(1, 1, 1)
KeepLordFedHat.Text = "Lord Fed: OFF"
KeepLordFedHat.TextSize = 17
KeepLordFedHat.TextWrapped = true

KeepBlackDominoHat.Name = "KeepBlackDominoHat"
KeepBlackDominoHat.Parent = BuyScreenFrame
KeepBlackDominoHat.BackgroundColor3 = Color3.new(0, 0, 0)
KeepBlackDominoHat.BorderColor3 = Color3.new(0.3, 0.3, 0.3)
KeepBlackDominoHat.Position = UDim2.new(0, 5, 0, 379)
KeepBlackDominoHat.Size = UDim2.new(0, 140, 0, 20)
KeepBlackDominoHat.Font = Enum.Font.Fantasy
KeepBlackDominoHat.TextColor3 = Color3.new(1, 1, 1)
KeepBlackDominoHat.Text = "Black Domino: OFF"
KeepBlackDominoHat.TextSize = 17
KeepBlackDominoHat.TextWrapped = true

BuyHatGo.Name = "BuyHatGo"
BuyHatGo.Parent = BuyScreenFrame
BuyHatGo.BackgroundColor3 = Color3.new(0.3, 0, 0)
BuyHatGo.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BuyHatGo.Position = UDim2.new(0, 5, 0, 400)
BuyHatGo.Size = UDim2.new(0, 140, 0, 20)
BuyHatGo.Font = Enum.Font.Fantasy
BuyHatGo.TextColor3 = Color3.new(1, 1, 1)
BuyHatGo.Text = "Buy Hats"
BuyHatGo.TextSize = 17
BuyHatGo.TextWrapped = true

FarmFrame.Name = "FarmFrame"
FarmFrame.Parent = TopFrame
FarmFrame.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
FarmFrame.BackgroundTransparency = 0
FarmFrame.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
FarmFrame.Position = UDim2.new(0, 0, 0, 30)
FarmFrame.Size = UDim2.new(0, 140, 0, 351)
FarmFrame.Visible = false

Locations2.Name = "Locations2"
Locations2.Parent = FarmFrame
Locations2.BackgroundColor3 = Color3.new(0, 0, 0)
Locations2.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
Locations2.Position = UDim2.new(0, 5, 0, 5)
Locations2.Size = UDim2.new(0, 130, 0, 25)
Locations2.Font = Enum.Font.Fantasy
Locations2.TextColor3 = Color3.new(1, 1, 1)
Locations2.Text = "LOCATIONS"
Locations2.TextSize = 17
Locations2.TextWrapped = true

AllHealthLabel.Name = "AllHealthLabel"
AllHealthLabel.Parent = FarmFrame
AllHealthLabel.BackgroundColor3 = Color3.new(0, 0, 0)
AllHealthLabel.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
AllHealthLabel.Position = UDim2.new(0, 5, 0, 50)
AllHealthLabel.Size = UDim2.new(0, 130, 0, 20)
AllHealthLabel.Font = Enum.Font.Fantasy
AllHealthLabel.TextColor3 = Color3.new(1, 1, 1)
AllHealthLabel.Text = "Coin/Chest Health"
AllHealthLabel.TextSize = 17
AllHealthLabel.TextWrapped = true

AllHealthMinLabel.Name = "AllHealthMinLabel"
AllHealthMinLabel.Parent = FarmFrame
AllHealthMinLabel.BackgroundColor3 = Color3.new(0, 0, 0)
AllHealthMinLabel.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
AllHealthMinLabel.Position = UDim2.new(0, 5, 0, 71)
AllHealthMinLabel.Size = UDim2.new(0, 40, 0, 20)
AllHealthMinLabel.Font = Enum.Font.Fantasy
AllHealthMinLabel.TextColor3 = Color3.new(1, 1, 1)
AllHealthMinLabel.Text = "Min"
AllHealthMinLabel.TextSize = 17
AllHealthMinLabel.TextWrapped = true

AllHealthMin.Name = "AllHealthMin"
AllHealthMin.Parent = FarmFrame
AllHealthMin.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
AllHealthMin.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
AllHealthMin.Position = UDim2.new(0, 46, 0, 71)
AllHealthMin.Size = UDim2.new(0, 89, 0, 20)
AllHealthMin.Font = Enum.Font.Fantasy
AllHealthMin.TextColor3 = Color3.new(1, 1, 1)
AllHealthMin.Text = "1"
AllHealthMin.TextSize = 17
AllHealthMin.TextWrapped = true

AllHealthMaxLabel.Name = "AllHealthMaxLabel"
AllHealthMaxLabel.Parent = FarmFrame
AllHealthMaxLabel.BackgroundColor3 = Color3.new(0, 0, 0)
AllHealthMaxLabel.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
AllHealthMaxLabel.Position = UDim2.new(0, 5, 0, 92)
AllHealthMaxLabel.Size = UDim2.new(0, 40, 0, 20)
AllHealthMaxLabel.Font = Enum.Font.Fantasy
AllHealthMaxLabel.TextColor3 = Color3.new(1, 1, 1)
AllHealthMaxLabel.Text = "Max"
AllHealthMaxLabel.TextSize = 17
AllHealthMaxLabel.TextWrapped = true

AllHealthMax.Name = "AllHealthMax"
AllHealthMax.Parent = FarmFrame
AllHealthMax.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
AllHealthMax.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
AllHealthMax.Position = UDim2.new(0, 46, 0, 92)
AllHealthMax.Size = UDim2.new(0, 89, 0, 20)
AllHealthMax.Font = Enum.Font.Fantasy
AllHealthMax.TextColor3 = Color3.new(1, 1, 1)
AllHealthMax.Text = "10e6"
AllHealthMax.TextSize = 17
AllHealthMax.TextWrapped = true

StartFarming.Name = "StartFarming"
StartFarming.Parent = FarmFrame
StartFarming.BackgroundColor3 = Color3.new(0.3, 0, 0)
StartFarming.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
StartFarming.Position = UDim2.new(0, 5, 0, 117)
StartFarming.Size = UDim2.new(0, 130, 0, 25)
StartFarming.Font = Enum.Font.Fantasy
StartFarming.TextColor3 = Color3.new(1, 1, 1)
StartFarming.Text = "Mine ALL: OFF"
StartFarming.TextSize = 17
StartFarming.TextWrapped = true

EarthHealthLabel.Name = "EarthHealthLabel"
EarthHealthLabel.Parent = FarmFrame
EarthHealthLabel.BackgroundColor3 = Color3.new(0, 0, 0)
EarthHealthLabel.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
EarthHealthLabel.Position = UDim2.new(0, 5, 0, 152)
EarthHealthLabel.Size = UDim2.new(0, 130, 0, 20)
EarthHealthLabel.Font = Enum.Font.Fantasy
EarthHealthLabel.TextColor3 = Color3.new(1, 1, 1)
EarthHealthLabel.Text = "Coin/Chest Health"
EarthHealthLabel.TextSize = 17
EarthHealthLabel.TextWrapped = true

EarthHealthMinLabel.Name = "EarthHealthMinLabel"
EarthHealthMinLabel.Parent = FarmFrame
EarthHealthMinLabel.BackgroundColor3 = Color3.new(0, 0, 0)
EarthHealthMinLabel.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
EarthHealthMinLabel.Position = UDim2.new(0, 5, 0, 173)
EarthHealthMinLabel.Size = UDim2.new(0, 40, 0, 20)
EarthHealthMinLabel.Font = Enum.Font.Fantasy
EarthHealthMinLabel.TextColor3 = Color3.new(1, 1, 1)
EarthHealthMinLabel.Text = "Min"
EarthHealthMinLabel.TextSize = 17
EarthHealthMinLabel.TextWrapped = true

EarthHealthMin.Name = "EarthHealthMin"
EarthHealthMin.Parent = FarmFrame
EarthHealthMin.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
EarthHealthMin.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
EarthHealthMin.Position = UDim2.new(0, 46, 0, 173)
EarthHealthMin.Size = UDim2.new(0, 89, 0, 20)
EarthHealthMin.Font = Enum.Font.Fantasy
EarthHealthMin.TextColor3 = Color3.new(1, 1, 1)
EarthHealthMin.Text = "1"
EarthHealthMin.TextSize = 17
EarthHealthMin.TextWrapped = true

EarthHealthMaxLabel.Name = "EarthHealthMaxLabel"
EarthHealthMaxLabel.Parent = FarmFrame
EarthHealthMaxLabel.BackgroundColor3 = Color3.new(0, 0, 0)
EarthHealthMaxLabel.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
EarthHealthMaxLabel.Position = UDim2.new(0, 5, 0, 194)
EarthHealthMaxLabel.Size = UDim2.new(0, 40, 0, 20)
EarthHealthMaxLabel.Font = Enum.Font.Fantasy
EarthHealthMaxLabel.TextColor3 = Color3.new(1, 1, 1)
EarthHealthMaxLabel.Text = "Max"
EarthHealthMaxLabel.TextSize = 17
EarthHealthMaxLabel.TextWrapped = true

EarthHealthMax.Name = "EarthHealthMax"
EarthHealthMax.Parent = FarmFrame
EarthHealthMax.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
EarthHealthMax.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
EarthHealthMax.Position = UDim2.new(0, 46, 0, 194)
EarthHealthMax.Size = UDim2.new(0, 89, 0, 20)
EarthHealthMax.Font = Enum.Font.Fantasy
EarthHealthMax.TextColor3 = Color3.new(1, 1, 1)
EarthHealthMax.Text = "20e06"
EarthHealthMax.TextSize = 17
EarthHealthMax.TextWrapped = true

StartFarmingEarth.Name = "StartFarmingEarth"
StartFarmingEarth.Parent = FarmFrame
StartFarmingEarth.BackgroundColor3 = Color3.new(0.3, 0, 0)
StartFarmingEarth.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
StartFarmingEarth.Position = UDim2.new(0, 5, 0, 219)
StartFarmingEarth.Size = UDim2.new(0, 130, 0, 25)
StartFarmingEarth.Font = Enum.Font.Fantasy
StartFarmingEarth.TextColor3 = Color3.new(1, 1, 1)
StartFarmingEarth.Text = "Mine Earth: OFF"
StartFarmingEarth.TextSize = 17
StartFarmingEarth.TextWrapped = true

MoonHealthLabel.Name = "MoonHealthLabel"
MoonHealthLabel.Parent = FarmFrame
MoonHealthLabel.BackgroundColor3 = Color3.new(0, 0, 0)
MoonHealthLabel.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
MoonHealthLabel.Position = UDim2.new(0, 5, 0, 254)
MoonHealthLabel.Size = UDim2.new(0, 130, 0, 20)
MoonHealthLabel.Font = Enum.Font.Fantasy
MoonHealthLabel.TextColor3 = Color3.new(1, 1, 1)
MoonHealthLabel.Text = "Coin/Chest Health"
MoonHealthLabel.TextSize = 17
MoonHealthLabel.TextWrapped = true

MoonHealthMinLabel.Name = "MoonHealthMinLabel"
MoonHealthMinLabel.Parent = FarmFrame
MoonHealthMinLabel.BackgroundColor3 = Color3.new(0, 0, 0)
MoonHealthMinLabel.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
MoonHealthMinLabel.Position = UDim2.new(0, 5, 0, 275)
MoonHealthMinLabel.Size = UDim2.new(0, 40, 0, 20)
MoonHealthMinLabel.Font = Enum.Font.Fantasy
MoonHealthMinLabel.TextColor3 = Color3.new(1, 1, 1)
MoonHealthMinLabel.Text = "Min"
MoonHealthMinLabel.TextSize = 17
MoonHealthMinLabel.TextWrapped = true

MoonHealthMin.Name = "MoonHealthMin"
MoonHealthMin.Parent = FarmFrame
MoonHealthMin.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
MoonHealthMin.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
MoonHealthMin.Position = UDim2.new(0, 46, 0, 275)
MoonHealthMin.Size = UDim2.new(0, 89, 0, 20)
MoonHealthMin.Font = Enum.Font.Fantasy
MoonHealthMin.TextColor3 = Color3.new(1, 1, 1)
MoonHealthMin.Text = "10e04"
MoonHealthMin.TextSize = 17
MoonHealthMin.TextWrapped = true

MoonHealthMaxLabel.Name = "MoonHealthMaxLabel"
MoonHealthMaxLabel.Parent = FarmFrame
MoonHealthMaxLabel.BackgroundColor3 = Color3.new(0, 0, 0)
MoonHealthMaxLabel.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
MoonHealthMaxLabel.Position = UDim2.new(0, 5, 0, 296)
MoonHealthMaxLabel.Size = UDim2.new(0, 40, 0, 20)
MoonHealthMaxLabel.Font = Enum.Font.Fantasy
MoonHealthMaxLabel.TextColor3 = Color3.new(1, 1, 1)
MoonHealthMaxLabel.Text = "Max"
MoonHealthMaxLabel.TextSize = 17
MoonHealthMaxLabel.TextWrapped = true

MoonHealthMax.Name = "MoonHealthMax"
MoonHealthMax.Parent = FarmFrame
MoonHealthMax.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
MoonHealthMax.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
MoonHealthMax.Position = UDim2.new(0, 46, 0, 296)
MoonHealthMax.Size = UDim2.new(0, 89, 0, 20)
MoonHealthMax.Font = Enum.Font.Fantasy
MoonHealthMax.TextColor3 = Color3.new(1, 1, 1)
MoonHealthMax.Text = "60e06"
MoonHealthMax.TextSize = 17
MoonHealthMax.TextWrapped = true

StartFarmingMoon.Name = "StartFarmingMoon"
StartFarmingMoon.Parent = FarmFrame
StartFarmingMoon.BackgroundColor3 = Color3.new(0.3, 0, 0)
StartFarmingMoon.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
StartFarmingMoon.Position = UDim2.new(0, 5, 0, 321)
StartFarmingMoon.Size = UDim2.new(0, 130, 0, 25)
StartFarmingMoon.Font = Enum.Font.Fantasy
StartFarmingMoon.TextColor3 = Color3.new(1, 1, 1)
StartFarmingMoon.Text = "Mine Moon: OFF"
StartFarmingMoon.TextSize = 17
StartFarmingMoon.TextWrapped = true

-- Close GUI --
ClosePS.MouseButton1Down:connect(function()
	MainGUI:destroy()
end)

BuyScreen.MouseButton1Click:connect(function()
	MainFrame.Visible = false
	BuyScreenFrame.Visible = true
end)

Locations.MouseButton1Click:connect(function()
	MainFrame.Visible = true
	BuyScreenFrame.Visible = false
end)

FarmCoins.MouseButton1Click:connect(function()
	MainFrame.Visible = false
	FarmFrame.Visible = true
end)

Locations2.MouseButton1Click:connect(function()
	MainFrame.Visible = true
	FarmFrame.Visible = false
end)

-- Notify --
function notify(msg)
	game.StarterGui:SetCore('SendNotification', {
		Title = 'Pets Simulator';
		Text = msg;
		Duration = 5;
	})
end

spawn(function()
	while true do
		if showstartmessage then
			hint("-Don't use Moon teleports until you are on the Moon. Use Rocket to reach Moon-", 7)
			hint("-If teleporting back to Earth locations use Rocket to reach Earth first-", 7)
			hint("-If you don't do this your pets will get stuck-", 5)
			showstartmessage = false
		end
		wait(0.5)
	end
end)

TeleportScreen.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.PlayerGui.Teleport.Enabled = true
end)

-- Farm --

StartFarming.MouseButton1Click:connect(function()
	if not FarmStart then
		FarmArea = "all"
		FarmCoins.BackgroundColor3 = Color3.new(0, 0.3, 0)
		StartFarming.BackgroundColor3 = Color3.new(0, 0.3, 0)
		StartFarming.Text = "Mine ALL: ON"
		coins = game.Workspace:WaitForChild("__REMOTES"):WaitForChild("Game"):WaitForChild("Coins")
		save = game.Workspace:WaitForChild("__REMOTES"):WaitForChild("Core"):WaitForChild("Get Other Stats"):InvokeServer()
		plr = game:GetService("Players").LocalPlayer
		done = "no"
		pcall(function()
			PetTable()
		end)
		FarmStart = true
	else
		FarmStart = false
		FarmArea = "none"
		FarmCoins.BackgroundColor3 = Color3.new(0, 0, 0)
		StartFarming.BackgroundColor3 = Color3.new(0.3, 0, 0)
		StartFarming.Text = "Mine ALL: OFF"
	end
end)

StartFarmingEarth.MouseButton1Click:connect(function()
	if not FarmStart then
		FarmArea = "earth"
		FarmCoins.BackgroundColor3 = Color3.new(0, 0.3, 0)
		StartFarmingEarth.BackgroundColor3 = Color3.new(0, 0.3, 0)
		StartFarmingEarth.Text = "Mine Earth: ON"
		coins = game.Workspace:WaitForChild("__REMOTES"):WaitForChild("Game"):WaitForChild("Coins")
		save = game.Workspace:WaitForChild("__REMOTES"):WaitForChild("Core"):WaitForChild("Get Other Stats"):InvokeServer()
		plr = game:GetService("Players").LocalPlayer
		done = "no"
		pcall(function()
			PetTable()
		end)
		FarmStart = true
	else
		FarmStart = false
		FarmArea = "none"
		FarmCoins.BackgroundColor3 = Color3.new(0, 0, 0)
		StartFarmingEarth.BackgroundColor3 = Color3.new(0.3, 0, 0)
		StartFarmingEarth.Text = "Mine Earth: OFF"
	end
end)

StartFarmingMoon.MouseButton1Click:connect(function()
	if not FarmStart then
		FarmArea = "moon"
		FarmCoins.BackgroundColor3 = Color3.new(0, 0.3, 0)
		StartFarmingMoon.BackgroundColor3 = Color3.new(0, 0.3, 0)
		StartFarmingMoon.Text = "Mine Moon: ON"
		coins = game.Workspace:WaitForChild("__REMOTES"):WaitForChild("Game"):WaitForChild("Coins")
		save = game.Workspace:WaitForChild("__REMOTES"):WaitForChild("Core"):WaitForChild("Get Other Stats"):InvokeServer()
		plr = game:GetService("Players").LocalPlayer
		done = "no"
		pcall(function()
			PetTable()
		end)
		FarmStart = true
	else
		FarmStart = false
		FarmArea = "none"
		FarmCoins.BackgroundColor3 = Color3.new(0, 0, 0)
		StartFarmingMoon.BackgroundColor3 = Color3.new(0.3, 0, 0)
		StartFarmingMoon.Text = "Mine Moon: OFF"
	end
end)

function mine(b)
    while FarmStart and (b:FindFirstChild"Health" ~= nil) and (b:FindFirstChild"Health".Value > 0)  do
		wait(0.1)
		for PetNumber,_ in pairs(petTable) do
			if not FarmStart then break end
			coins:FireServer("Mine",b.Name, petTable[PetNumber]["LEVEL"],petTable[PetNumber]["ID"])
		end
	end
end

spawn(function()
	while true do
		while FarmStart do
			for _,b in next, workspace.__THINGS.Coins:GetChildren() do
				if (done ~= b) then
					if (FarmArea == "all") then
						if workspace.__THINGS.Coins:FindFirstChild(b.Name) then
							if b.Health.Value > tonumber(AllHealthMin.Text) and b.Health.Value < tonumber(AllHealthMax.Text) then
								mine(b)
							end
						end
					elseif (FarmArea == "earth") then
						if workspace.__THINGS.Coins:FindFirstChild(b.Name) then
							if b.Position.Y < 100 then
								if b.Health.Value > tonumber(EarthHealthMin.Text) and b.Health.Value < tonumber(EarthHealthMax.Text) then
									mine(b)
								end
							end
						end
					elseif (FarmArea == "moon") then
						if workspace.__THINGS.Coins:FindFirstChild(b.Name) then
							if b.Position.Y > 100 then
								if b.Health.Value > tonumber(MoonHealthMin.Text) and b.Health.Value < tonumber(MoonHealthMax.Text) then
									mine(b)
								end
							end
						end
					else
					end
				end
			end
			wait()
		end
		wait()
	end
end)

WalkSpeed.MouseButton1Click:connect(function()
	if WalkNumber == "1" then
		WalkSpeed.BackgroundColor3 = Color3.new(0, 0, 0.5)
		WalkSpeed.Text = "Walk:2"
		WalkNumber = "2"
		Walk = 30
	elseif WalkNumber == "2" then
		WalkSpeed.BackgroundColor3 = Color3.new(0.5, 0, 0)
		WalkSpeed.Text = "Walk:3"
		WalkNumber = "3"
		Walk = 80
	elseif WalkNumber == "3" then
		WalkSpeed.BackgroundColor3 = Color3.new(0, 0, 0)
		WalkSpeed.Text = "Walk:1"
		WalkNumber = "1"
		Walk = 16
	else
		WalkSpeed.BackgroundColor3 = Color3.new(0, 0, 0)
		WalkSpeed.Text = "Walk:1"
		WalkNumber = "1"
		Walk = 16
	end
	player = game.Players.LocalPlayer
	player.Character.Humanoid.WalkSpeed = Walk
end)

JumpPower.MouseButton1Click:connect(function()
	if JumpNumber == "1" then
		JumpPower.BackgroundColor3 = Color3.new(0, 0, 0.5)
		JumpPower.Text = "Jump:2"
		JumpNumber = "2"
		Jump = 150
	elseif JumpNumber == "2" then
		JumpPower.BackgroundColor3 = Color3.new(0.5, 0, 0)
		JumpPower.Text = "Jump:3"
		JumpNumber = "3"
		Jump = 400
	elseif JumpNumber == "3" then
		JumpPower.BackgroundColor3 = Color3.new(0, 0, 0)
		JumpPower.Text = "Jump:1"
		JumpNumber = "1"
		Jump = 50
	else
		JumpPower.BackgroundColor3 = Color3.new(0, 0, 0)
		JumpPower.Text = "Jump:1"
		JumpNumber = "1"
		Jump = 50
	end
	player = game.Players.LocalPlayer
	player.Character.Humanoid.JumpPower = Jump
end)

-- Display pet number in dev console --
PetCode.MouseButton1Click:connect(function()
	local children = workspace["__DEBRIS"].Pets[game.Players.LocalPlayer.Name]:GetChildren()
	for i = 1, #children do
		print("Active Pet " ..tostring(i).. ": " ..children[i].Name)
	end
	print("\nWARNING, YOU CAN ONLY MAX COIN OR AGILITY, THE OTHER STAT WILL BE\nRESET SO BEST USED ONLY FOR NEW PETS OR SOME STATS WILL BE RESET!")
	CodeInfoFrame.Visible = true
	wait(15)
	CodeInfoFrame.Visible = false
end)

-- Buy Eggs --

KeepRainbowPet.MouseButton1Click:connect(function()
	if not adprainbowactive then
		adprainbowactive = true
		KeepRainbowPet.Text = "Auto Delete Pets,\nKeep Rainbow: ON"
	else
		adprainbowactive = false
		KeepRainbowPet.Text = "Auto Delete Pets,\nKeep Rainbow: OFF"
	end
end)

local Directory = require(game:GetService("ReplicatedStorage")["1 | Directory"])

local CheckKeepers = function(Info)
	for _,Keeper in pairs(EggKeepers) do
		if string.lower(tostring(Keeper)) == string.lower(Directory.Pets[Info].DisplayName) then
			return true
		end
		if string.lower(tostring(Keeper)) == string.lower(Directory.Pets[Info].ReferenceName) then
			return true
		end
	end
end

local CheckIfRainbow = function(Stats, PET_ID)
	for _,Pet in ipairs(Stats.Save.Pets) do
		for ID,Info in pairs (Pet) do
			if ID == "id" then
				if Info == PET_ID then
					if Pet.r == true then
						return true
					end
				end
			end
		end
	end
end

local GetPurchasedPetInfo = function(Stats, PET_ID)
	for _,Pet in ipairs(Stats.Save.Pets) do
		for ID,Info in pairs (Pet) do
			if ID == "id" then
				if Info == PET_ID then
					return Pet.n
				end
			end
		end
	end
end

local GetStats = function()
	return workspace["__REMOTES"].Core["Get Stats"]:InvokeServer()
end

local BuyEgg = function()
	if BuyPetTier2.Text:lower() == "hallow" then
		return game["Workspace"]["__REMOTES"].Game["Shop"]:InvokeServer("Buy", "Eggs", "Hallow")
	elseif BuyPetTier2.Text:lower() == "cursed hallow" then
		return game["Workspace"]["__REMOTES"].Game["Shop"]:InvokeServer("Buy", "Eggs", "Cursed Hallow")
	else
		return game["Workspace"]["__REMOTES"].Game["Shop"]:InvokeServer("Buy", "Eggs", "Tier " ..BuyPetTier2.Text)
	end
end

local PrintPetInfo = function(PetInfo, PetID)
	warn(tostring("Pet Name: " .. Directory.Pets[PetInfo].DisplayName .. " - ID: " .. PetID))
end

local DeletePet = function(PetID)
	game["Workspace"]["__REMOTES"].Game["Inventory"]:InvokeServer("Delete", PetID)
end

BuyPetGo.MouseButton1Click:connect(function()
	if buypetactive == true then
		buypetactive = false
		BuyPetGo.Text = "Buy Pets"
	else
		buypetactive = true
		BuyPetGo.Text = "Stop"
	end
	if buypetactive == true then
		if tonumber(BuyPetAmount2.Text) >= 1 then
			for i = 1, tonumber(BuyPetAmount2.Text) do 
				if buypetactive == false then break end
				BuyPetGo.Text = "Pet " ..tostring(i).. "...Stop"
				wait()
				local EggPurchase,EggPurchaseInfo = BuyEgg()
				if EggPurchase == true and EggPurchaseInfo then
					wait()
					local Stats = GetStats()
					local PurchasedPetInfo = GetPurchasedPetInfo(Stats, EggPurchaseInfo.id)
					if PurchasedPetInfo then
						PrintPetInfo(PurchasedPetInfo, EggPurchaseInfo.id)
						if CheckKeepers(PurchasedPetInfo) ~= true and buypetactive == true then
							if adprainbowactive then
								if CheckIfRainbow(Stats, EggPurchaseInfo.id) ~= true and buypetactive == true then
									warn(tostring("Deleting Pet: " .. Directory.Pets[PurchasedPetInfo].DisplayName .. " - ID: " .. EggPurchaseInfo.id))
									DeletePet(EggPurchaseInfo.id)
								end
							end
						end
					end
				end
			end
			BuyPetGo.Text = "Buy Pets"
			buypetactive = false
		end
	end
end)

-- Buy Hats --

KeepRobuxHat.MouseButton1Click:connect(function()
	if not adhrobuxactive then
		adhrobuxactive = true
		KeepRobuxHat.Text = "Auto Delete Hats,\nKeep Robux: ON"
	else
		adhrobuxactive = false
		KeepRobuxHat.Text = "Auto Delete Hats,\nKeep Robux: OFF"
	end
end)

KeepLordFedHat.MouseButton1Click:connect(function()
	if not adhlordfedactive then
		adhlordfedactive = true
		KeepLordFedHat.Text = "Lord Fed: ON"
	else
		adhlordfedactive = false
		KeepLordFedHat.Text = "Lord Fed: OFF"
	end
end)

KeepBlackDominoHat.MouseButton1Click:connect(function()
	if not adhblackdominoactive then
		adhblackdominoactive = true
		KeepBlackDominoHat.Text = "Black Domino: ON"
	else
		adhblackdominoactive = false
		KeepBlackDominoHat.Text = "Black Domino: OFF"
	end
end)

local Directory = require(game:GetService("ReplicatedStorage")["1 | Directory"])

local CheckKeepersHat = function(Info)
	if adhrobuxactive then
		if string.lower(Directory.Hats[Info].DisplayName) == string.lower("Robux") or string.lower(Directory.Hats[Info].ReferenceName) == string.lower("Robux") then
			return true
		end
	end
	if adhlordfedactive then
		if string.lower(Directory.Hats[Info].DisplayName) == string.lower("Lord of the Federation") or string.lower(Directory.Hats[Info].ReferenceName) == string.lower("Lord of the Federation") then
			return true
		end
	end
	if adhblackdominoactive then
		if string.lower(Directory.Hats[Info].DisplayName) == string.lower("Black Iron Domino Crown") or string.lower(Directory.Hats[Info].ReferenceName) == string.lower("Black Iron Domino Crown") then
			return true
		end
	end
end

local GetPurchasedHatInfo = function(Stats, HAT_ID)
	for _,Hat in ipairs(Stats.Save.Hats) do
		for ID,Info in pairs (Hat) do
			if ID == "id" then
				if Info == HAT_ID then
					return Hat.n
				end
			end
		end
	end
end

local GetStats = function()
	return workspace["__REMOTES"].Core["Get Stats"]:InvokeServer()
end

local BuyHatPresent = function()
	if BuyHatTier2.Text:lower() == "golden" then
		return game["Workspace"]["__REMOTES"].Game["Shop"]:InvokeServer("Buy", "Presents", "Golden")
	else
		return game["Workspace"]["__REMOTES"].Game["Shop"]:InvokeServer("Buy", "Presents", "Tier " ..BuyHatTier2.Text)
	end
end

local PrintHatInfo = function(HatInfo, HatID)
	warn(tostring("Hat Name: " .. Directory.Hats[HatInfo].DisplayName .. " - ID: " .. HatID))
end

local DeleteHat = function(HatID)
	local remote = Game["Workspace"]["__REMOTES"].Game["Hats"]
	local args = {
		[1] = "Delete",
		[2] = HatID
	}
	remote:InvokeServer(unpack(args))
end

BuyHatGo.MouseButton1Click:connect(function()
	if buyhatactive == true then
		buyhatactive = false
		BuyHatGo.Text = "Buy Hats"
	else
		buyhatactive = true
	end
	if buyhatactive == true then
		if tonumber(BuyHatAmount2.Text) >= 1 then
			if BuyHatTier2.Text:lower() ~= "golden" then
				adhrobuxactive = false
				KeepRobuxHat.Text = "Keep Robux: OFF"
				adhlordfedactive = false
				KeepLordFedHat.Text = "Lord Fed: OFF"
				adhblackdominoactive = false
				KeepBlackDominoHat.Text = "Black Domino: OFF"
			end
			for i = 1, tonumber(BuyHatAmount2.Text) do 
				if buyhatactive == false then break end
				BuyHatGo.Text = "Hat " ..tostring(i).. "...Stop"
				wait()
				local HatPurchase,HatPurchaseInfo = BuyHatPresent()
				if HatPurchase == true and HatPurchaseInfo then
					wait()
					local Stats = GetStats()
					local PurchasedHatInfo = GetPurchasedHatInfo(Stats, HatPurchaseInfo.id)
					if PurchasedHatInfo then
						PrintHatInfo(PurchasedHatInfo, HatPurchaseInfo.id)
						if adhrobuxactive or adhlordfedactive or adhblackdominoactive then
							if CheckKeepersHat(PurchasedHatInfo) ~= true and buyhatactive == true then
								warn(tostring("Deleting Hat: " .. Directory.Hats[PurchasedHatInfo].DisplayName .. " - ID: " .. HatPurchaseInfo.id))
								DeleteHat(HatPurchaseInfo.id)
							end
						end
					end
				end
			end
			BuyHatGo.Text = "Buy Hats"
			buyhatactive = false
		end
	end
end)

-- TP to locations --
Spawn.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(526, -36.292, 909)
	notify'Teleported to the Spawn Location'
end)

Shop.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(647.35, -33.6, 890.23)
	notify'Teleported to the Shop'
end)

Area2.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(13, -37, 885)
	notify'Teleported to the 25K Coins Area'
end)

Area3.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-364, -37, 885)
	notify'Teleported to the 400K Coins Area'
end)

Area4.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-760, -37, 885)
	notify'Teleported to the 2.5M Coins Area'
end)

Area5.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1160, -37, 885)
	notify'Teleported to the 20M Coins Area'
end)

Area6.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1500, -37, 885)
	notify'Teleported to the 500M Coins Area'
end)

Rocket.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1828, -37, 897)
	notify'Teleported to the Rocket Area'
end)

Area8.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(616, 146, -1720)
	notify'Teleported to the Moon Shop'
end)

Area9.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(527, 145, -1762)
	notify'Teleported to the Moon Area 1'
end)

Area10.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(124.8, 145, -1718)
	notify'Teleported to the Moon Area 2'
end)

CandyLand.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(13.7, 145, -1449.8)
	notify'Teleported to Candy Land'
end)

CyborgLand.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-283.5, 145, -1704.4)
	notify'Teleported to the Cyborg Area'
end)

GoldCrate.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9.4, 145, -1902.9)
	notify'Teleported to the Gold Land'
end)