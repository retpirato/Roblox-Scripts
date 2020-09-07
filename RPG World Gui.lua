-- Made by Jxnt#9029 Follow the TOS rules or else....
-- Use _G.var = false to stop the script!

local ScreenGui = Instance.new("ScreenGui")
local WhatisSkidals = Instance.new("Frame")
local Welcome = Instance.new("TextLabel")
local Jxnt9029 = Instance.new("TextLabel")
local Line = Instance.new("TextLabel")
local Welcome_2 = Instance.new("TextLabel")
local NextPageTOS = Instance.new("TextButton")
local Welcome_3 = Instance.new("TextLabel")
local Teleports = Instance.new("Frame")
local Welcome_4 = Instance.new("TextLabel")
local Jxnt9029_2 = Instance.new("TextLabel")
local Line_2 = Instance.new("TextLabel")
local FireWorldArea = Instance.new("TextButton")
local CityArea = Instance.new("TextButton")
local NightmareArea = Instance.new("TextButton")
local StarterArea = Instance.new("TextButton")
local DesertArea = Instance.new("TextButton")
local IceLandArea = Instance.new("TextButton")
local about = Instance.new("TextLabel")
local PreviousPageOpenEggs = Instance.new("TextButton")
local Line_3 = Instance.new("TextLabel")
local Openclose = Instance.new("Frame")
local Open = Instance.new("TextButton")
local Close = Instance.new("TextButton")
local TOS = Instance.new("Frame")
local Welcome_5 = Instance.new("TextLabel")
local Jxnt9029_3 = Instance.new("TextLabel")
local Line_4 = Instance.new("TextLabel")
local Welcome_6 = Instance.new("TextLabel")
local NextPageAutoFarm = Instance.new("TextButton")
local AutoFarm = Instance.new("Frame")
local Welcome_7 = Instance.new("TextLabel")
local Jxnt9029_4 = Instance.new("TextLabel")
local Line_5 = Instance.new("TextLabel")
local FireWorldFarm = Instance.new("TextButton")
local CityFarm = Instance.new("TextButton")
local NightmareFarm = Instance.new("TextButton")
local StarterFarm = Instance.new("TextButton")
local DesertFarm = Instance.new("TextButton")
local IceLandFarm = Instance.new("TextButton")
local about_2 = Instance.new("TextLabel")
local NextPageOpenEggs = Instance.new("TextButton")
local PreviousPageTOS = Instance.new("TextButton")
local Line_6 = Instance.new("TextLabel")
local OpenEggs = Instance.new("Frame")
local Welcome_8 = Instance.new("TextLabel")
local Jxnt9029_5 = Instance.new("TextLabel")
local Line_7 = Instance.new("TextLabel")
local UnobtainableEgg = Instance.new("TextButton")
local GalaxyEgg = Instance.new("TextButton")
local GodlyEgg = Instance.new("TextButton")
local MythicalEgg = Instance.new("TextButton")
local LegendaryEgg = Instance.new("TextButton")
local OverpoweredEgg = Instance.new("TextButton")
local about_3 = Instance.new("TextLabel")
local NextPageTeleports = Instance.new("TextButton")
local PreviousPageAutoFarm = Instance.new("TextButton")
local Line_8 = Instance.new("TextLabel")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

WhatisSkidals.Draggable = true
TOS.Draggable = true
OpenEggs.Draggable = true
AutoFarm.Draggable = true
Teleports.Draggable = true

WhatisSkidals.Name = "What is Skidals"
WhatisSkidals.Parent = ScreenGui
WhatisSkidals.Active = true
WhatisSkidals.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
WhatisSkidals.BorderColor3 = Color3.new(1, 1, 1)
WhatisSkidals.Position = UDim2.new(0.39868328, 0, 0.275184274, 0)
WhatisSkidals.Size = UDim2.new(0, 417, 0, 223)
WhatisSkidals.Visible = false

Welcome.Name = "Welcome"
Welcome.Parent = WhatisSkidals
Welcome.BackgroundColor3 = Color3.new(1, 1, 1)
Welcome.BackgroundTransparency = 99
Welcome.Position = UDim2.new(0.381334901, 0, -0.036725454, 0)
Welcome.Size = UDim2.new(0, 89, 0, 50)
Welcome.Font = Enum.Font.Cartoon
Welcome.Text = "Welcome to Skidals..."
Welcome.TextColor3 = Color3.new(1, 1, 1)
Welcome.TextSize = 20

Jxnt9029.Name = "Jxnt#9029"
Jxnt9029.Parent = WhatisSkidals
Jxnt9029.BackgroundColor3 = Color3.new(1, 1, 1)
Jxnt9029.BackgroundTransparency = 99
Jxnt9029.Position = UDim2.new(0.386310011, 0, 0.0724243596, 0)
Jxnt9029.Size = UDim2.new(0, 89, 0, 36)
Jxnt9029.Font = Enum.Font.Cartoon
Jxnt9029.Text = "Jxnt#9029"
Jxnt9029.TextColor3 = Color3.new(1, 1, 1)
Jxnt9029.TextSize = 13

Line.Name = "Line"
Line.Parent = WhatisSkidals
Line.BackgroundColor3 = Color3.new(1, 1, 1)
Line.BackgroundTransparency = 99
Line.Position = UDim2.new(0.348892361, 0, 0.180959612, 0)
Line.Size = UDim2.new(0, 119, 0, 23)
Line.Font = Enum.Font.Cartoon
Line.Text = "---------"
Line.TextColor3 = Color3.new(1, 1, 1)
Line.TextSize = 13

Welcome_2.Name = "Welcome"
Welcome_2.Parent = WhatisSkidals
Welcome_2.BackgroundColor3 = Color3.new(1, 1, 1)
Welcome_2.BackgroundTransparency = 99
Welcome_2.Position = UDim2.new(0.135066241, 0, 0.233827651, 0)
Welcome_2.Size = UDim2.new(0, 293, 0, 64)
Welcome_2.Font = Enum.Font.Cartoon
Welcome_2.Text = "a GUI for RPG World, a upcoming popular game."
Welcome_2.TextColor3 = Color3.new(1, 1, 1)
Welcome_2.TextSize = 20
Welcome_2.TextWrapped = true

NextPageTOS.Name = "Next Page (TOS)"
NextPageTOS.Parent = WhatisSkidals
NextPageTOS.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
NextPageTOS.BorderColor3 = Color3.new(1, 1, 1)
NextPageTOS.Position = UDim2.new(0.335731417, 0, 0.736716986, 0)
NextPageTOS.Size = UDim2.new(0, 127, 0, 37)
NextPageTOS.Font = Enum.Font.Cartoon
NextPageTOS.Text = "Continue..."
NextPageTOS.TextColor3 = Color3.new(1, 1, 1)
NextPageTOS.TextSize = 14
NextPageTOS.MouseButton1Click:connect (function ()
	TOS.Visible = true
	WhatisSkidals.Visible = false
end)

Welcome_3.Name = "Welcome"
Welcome_3.Parent = WhatisSkidals
Welcome_3.BackgroundColor3 = Color3.new(1, 1, 1)
Welcome_3.BackgroundTransparency = 99
Welcome_3.Position = UDim2.new(0.0415410809, 0, 0.449074239, 0)
Welcome_3.Size = UDim2.new(0, 381, 0, 64)
Welcome_3.Font = Enum.Font.Cartoon
Welcome_3.Text = "Enjoy using Skidals!! You better have vouched ;)"
Welcome_3.TextColor3 = Color3.new(1, 1, 1)
Welcome_3.TextSize = 20
Welcome_3.TextWrapped = true

Teleports.Name = "Teleports"
Teleports.Parent = ScreenGui
Teleports.Active = true
Teleports.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Teleports.BorderColor3 = Color3.new(1, 1, 1)
Teleports.Position = UDim2.new(0.39868328, 0, 0.275184274, 0)
Teleports.Size = UDim2.new(0, 417, 0, 223)
Teleports.Visible = false

Welcome_4.Name = "Welcome"
Welcome_4.Parent = Teleports
Welcome_4.BackgroundColor3 = Color3.new(1, 1, 1)
Welcome_4.BackgroundTransparency = 99
Welcome_4.Position = UDim2.new(0.0702602491, 0, -0.0299763363, 0)
Welcome_4.Size = UDim2.new(0, 110, 0, 52)
Welcome_4.Font = Enum.Font.Cartoon
Welcome_4.Text = "Skidals Teleports"
Welcome_4.TextColor3 = Color3.new(1, 1, 1)
Welcome_4.TextSize = 20

Jxnt9029_2.Name = "Jxnt#9029"
Jxnt9029_2.Parent = Teleports
Jxnt9029_2.BackgroundColor3 = Color3.new(1, 1, 1)
Jxnt9029_2.BackgroundTransparency = 99
Jxnt9029_2.Position = UDim2.new(0.0969475433, 0, 0.0766635761, 0)
Jxnt9029_2.Size = UDim2.new(0, 89, 0, 35)
Jxnt9029_2.Font = Enum.Font.Cartoon
Jxnt9029_2.Text = "Jxnt#9029"
Jxnt9029_2.TextColor3 = Color3.new(1, 1, 1)
Jxnt9029_2.TextSize = 13

Line_2.Name = "Line"
Line_2.Parent = Teleports
Line_2.BackgroundColor3 = Color3.new(1, 1, 1)
Line_2.BackgroundTransparency = 99
Line_2.Position = UDim2.new(0.0572212636, 0, 0.109027676, 0)
Line_2.Size = UDim2.new(0, 119, 0, 47)
Line_2.Font = Enum.Font.Cartoon
Line_2.Text = "---------"
Line_2.TextColor3 = Color3.new(1, 1, 1)
Line_2.TextSize = 13

FireWorldArea.Name = "FireWorld Area"
FireWorldArea.Parent = Teleports
FireWorldArea.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
FireWorldArea.BorderColor3 = Color3.new(1, 1, 1)
FireWorldArea.Position = UDim2.new(0.726618707, 0, 0.107555449, 0)
FireWorldArea.Size = UDim2.new(0, 106, 0, 37)
FireWorldArea.Font = Enum.Font.Cartoon
FireWorldArea.Text = "FireWorld Area"
FireWorldArea.TextColor3 = Color3.new(1, 1, 1)
FireWorldArea.TextSize = 15
FireWorldArea.MouseButton1Click:connect (function ()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-737.966, .021109, -35.60407)		
end)

CityArea.Name = "City Area"
CityArea.Parent = Teleports
CityArea.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
CityArea.BorderColor3 = Color3.new(1, 1, 1)
CityArea.Position = UDim2.new(0.724220693, 0, 0.322190464, 0)
CityArea.Size = UDim2.new(0, 106, 0, 37)
CityArea.Font = Enum.Font.Cartoon
CityArea.Text = "City Area"
CityArea.TextColor3 = Color3.new(1, 1, 1)
CityArea.TextSize = 15
CityArea.MouseButton1Click:connect (function ()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-170.366, 0.2106, -7.850)	
end)

NightmareArea.Name = "Nightmare Area"
NightmareArea.Parent = Teleports
NightmareArea.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
NightmareArea.BorderColor3 = Color3.new(1, 1, 1)
NightmareArea.Position = UDim2.new(0.726618707, 0, 0.538547039, 0)
NightmareArea.Size = UDim2.new(0, 106, 0, 37)
NightmareArea.Font = Enum.Font.Cartoon
NightmareArea.Text = "Nightmare Area"
NightmareArea.TextColor3 = Color3.new(1, 1, 1)
NightmareArea.TextSize = 15
NightmareArea.MouseButton1Click:connect (function ()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1403.92, 0.209, -17.322)	
end)

StarterArea.Name = "Starter Area"
StarterArea.Parent = Teleports
StarterArea.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
StarterArea.BorderColor3 = Color3.new(1, 1, 1)
StarterArea.Position = UDim2.new(0.438580513, 0, 0.109027654, 0)
StarterArea.Size = UDim2.new(0, 106, 0, 37)
StarterArea.Font = Enum.Font.Cartoon
StarterArea.Text = "Starter Area"
StarterArea.TextColor3 = Color3.new(1, 1, 1)
StarterArea.TextSize = 15
StarterArea.MouseButton1Click:connect (function ()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(252.75, 2.111, 25.458)
end)

DesertArea.Name = "Desert Area"
DesertArea.Parent = Teleports
DesertArea.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
DesertArea.BorderColor3 = Color3.new(1, 1, 1)
DesertArea.Position = UDim2.new(0.436182499, 0, 0.322190464, 0)
DesertArea.Size = UDim2.new(0, 106, 0, 37)
DesertArea.Font = Enum.Font.Cartoon
DesertArea.Text = "Desert Area"
DesertArea.TextColor3 = Color3.new(1, 1, 1)
DesertArea.TextSize = 15
DesertArea.MouseButton1Click:connect (function ()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1083.002, 0.211, 6.544857)	
end)

IceLandArea.Name = "IceLand Area"
IceLandArea.Parent = Teleports
IceLandArea.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
IceLandArea.BorderColor3 = Color3.new(1, 1, 1)
IceLandArea.Position = UDim2.new(0.436182559, 0, 0.541332722, 0)
IceLandArea.Size = UDim2.new(0, 106, 0, 37)
IceLandArea.Font = Enum.Font.Cartoon
IceLandArea.Text = "IceLand Area"
IceLandArea.TextColor3 = Color3.new(1, 1, 1)
IceLandArea.TextSize = 15
IceLandArea.MouseButton1Click:connect (function ()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-486.190, 0.2097, 17.820400)		
end)

about.Name = "about"
about.Parent = Teleports
about.BackgroundColor3 = Color3.new(1, 1, 1)
about.BackgroundTransparency = 99
about.Position = UDim2.new(0.0630660057, 0, 0.104552813, 0)
about.Size = UDim2.new(0, 117, 0, 132)
about.Font = Enum.Font.Cartoon
about.Text = "Select a place you would like to teleport! Remember, the higher the areas, the harder it gets."
about.TextColor3 = Color3.new(1, 1, 1)
about.TextSize = 14
about.TextWrapped = true

PreviousPageOpenEggs.Name = "Previous Page (OpenEggs)"
PreviousPageOpenEggs.Parent = Teleports
PreviousPageOpenEggs.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
PreviousPageOpenEggs.BorderColor3 = Color3.new(1, 0.615686, 0)
PreviousPageOpenEggs.Position = UDim2.new(0.584863603, 0, 0.794174969, 0)
PreviousPageOpenEggs.Size = UDim2.new(0, 106, 0, 37)
PreviousPageOpenEggs.Font = Enum.Font.Cartoon
PreviousPageOpenEggs.Text = "Previous Page"
PreviousPageOpenEggs.TextColor3 = Color3.new(1, 1, 1)
PreviousPageOpenEggs.TextSize = 15
PreviousPageOpenEggs.MouseButton1Click:connect (function ()
	OpenEggs.Visible = true
	Teleports.Visible = false
end)

Line_3.Name = "Line"
Line_3.Parent = Teleports
Line_3.BackgroundColor3 = Color3.new(1, 1, 1)
Line_3.BackgroundTransparency = 99
Line_3.Position = UDim2.new(0.570410728, 0, 0.656295955, 0)
Line_3.Size = UDim2.new(0, 119, 0, 44)
Line_3.Font = Enum.Font.Cartoon
Line_3.Text = "--------------"
Line_3.TextColor3 = Color3.new(1, 1, 1)
Line_3.TextSize = 13

Openclose.Name = "Open /close"
Openclose.Parent = ScreenGui
Openclose.Active = true
Openclose.BackgroundColor3 = Color3.new(1, 1, 1)
Openclose.BackgroundTransparency = 100
Openclose.Size = UDim2.new(0, 100, 0, 100)

Open.Name = "Open"
Open.Parent = Openclose
Open.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Open.BackgroundTransparency = 0.10000000149012
Open.BorderColor3 = Color3.new(1, 1, 1)
Open.Position = UDim2.new(0, 0, 6.55267811, 0)
Open.Size = UDim2.new(0, 79, 0, 37)
Open.Font = Enum.Font.Cartoon
Open.Text = "Open"
Open.TextColor3 = Color3.new(1, 1, 1)
Open.TextSize = 22
Open.MouseButton1Click:connect (function ()
	WhatisSkidals.Visible = true
	Open.Visible = false
	Close.Visible = true
end)

Close.Name = "Close"
Close.Parent = Openclose
Close.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Close.BackgroundTransparency = 0.10000000149012
Close.BorderColor3 = Color3.new(1, 1, 1)
Close.Position = UDim2.new(0, 0, 6.55267811, 0)
Close.Size = UDim2.new(0, 79, 0, 37)
Close.Visible = false
Close.Font = Enum.Font.Cartoon
Close.Text = "Close"
Close.TextColor3 = Color3.new(1, 1, 1)
Close.TextSize = 22
Close.MouseButton1Click:connect (function ()
	AutoFarm.Visible = false
	OpenEggs.Visible = false
	TOS.Visible = false
	Teleports.Visible = false
	WhatisSkidals.Visible = false
	Close.Visible = false
	Open.Visible = true
end)

TOS.Name = "TOS"
TOS.Parent = ScreenGui
TOS.Active = true
TOS.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
TOS.BorderColor3 = Color3.new(1, 1, 1)
TOS.Position = UDim2.new(0.39868328, 0, 0.275184274, 0)
TOS.Size = UDim2.new(0, 417, 0, 223)
TOS.Visible = false

Welcome_5.Name = "Welcome"
Welcome_5.Parent = TOS
Welcome_5.BackgroundColor3 = Color3.new(1, 1, 1)
Welcome_5.BackgroundTransparency = 99
Welcome_5.Position = UDim2.new(0.381334901, 0, -0.036725454, 0)
Welcome_5.Size = UDim2.new(0, 89, 0, 50)
Welcome_5.Font = Enum.Font.Cartoon
Welcome_5.Text = "Skidals TOS"
Welcome_5.TextColor3 = Color3.new(1, 1, 1)
Welcome_5.TextSize = 20

Jxnt9029_3.Name = "Jxnt#9029"
Jxnt9029_3.Parent = TOS
Jxnt9029_3.BackgroundColor3 = Color3.new(1, 1, 1)
Jxnt9029_3.BackgroundTransparency = 99
Jxnt9029_3.Position = UDim2.new(0.386310011, 0, 0.0724243596, 0)
Jxnt9029_3.Size = UDim2.new(0, 89, 0, 36)
Jxnt9029_3.Font = Enum.Font.Cartoon
Jxnt9029_3.Text = "Jxnt#9029"
Jxnt9029_3.TextColor3 = Color3.new(1, 1, 1)
Jxnt9029_3.TextSize = 13

Line_4.Name = "Line"
Line_4.Parent = TOS
Line_4.BackgroundColor3 = Color3.new(1, 1, 1)
Line_4.BackgroundTransparency = 99
Line_4.Position = UDim2.new(0.348892361, 0, 0.180959612, 0)
Line_4.Size = UDim2.new(0, 119, 0, 23)
Line_4.Font = Enum.Font.Cartoon
Line_4.Text = "---------"
Line_4.TextColor3 = Color3.new(1, 1, 1)
Line_4.TextSize = 13

Welcome_6.Name = "Welcome"
Welcome_6.Parent = TOS
Welcome_6.BackgroundColor3 = Color3.new(1, 1, 1)
Welcome_6.BackgroundTransparency = 99
Welcome_6.Position = UDim2.new(0.0548378192, 0, 0.231775671, 0)
Welcome_6.Size = UDim2.new(0, 370, 0, 111)
Welcome_6.Font = Enum.Font.Cartoon
Welcome_6.Text = "TOS: You are not allowed to use this in ANY kind of video. You must either be accepted by me to upload one or give full credits to me. If any video is uploaded breaking this TOS, the video will be striked. All other TOS rules apply that are on thread as well."
Welcome_6.TextColor3 = Color3.new(1, 1, 1)
Welcome_6.TextSize = 17
Welcome_6.TextWrapped = true

NextPageAutoFarm.Name = "Next Page (AutoFarm)"
NextPageAutoFarm.Parent = TOS
NextPageAutoFarm.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
NextPageAutoFarm.BorderColor3 = Color3.new(1, 1, 1)
NextPageAutoFarm.Position = UDim2.new(0.328805625, 0, 0.733455718, 0)
NextPageAutoFarm.Size = UDim2.new(0, 127, 0, 37)
NextPageAutoFarm.Font = Enum.Font.Cartoon
NextPageAutoFarm.Text = "Continue..."
NextPageAutoFarm.TextColor3 = Color3.new(1, 1, 1)
NextPageAutoFarm.TextSize = 14
NextPageAutoFarm.MouseButton1Click:connect (function ()
	TOS.Visible = false
	AutoFarm.Visible = true
end)

AutoFarm.Name = "Auto Farm"
AutoFarm.Parent = ScreenGui
AutoFarm.Active = true
AutoFarm.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
AutoFarm.BorderColor3 = Color3.new(1, 1, 1)
AutoFarm.Position = UDim2.new(0.39868328, 0, 0.275184274, 0)
AutoFarm.Size = UDim2.new(0, 417, 0, 223)
AutoFarm.Visible = false

Welcome_7.Name = "Welcome"
Welcome_7.Parent = AutoFarm
Welcome_7.BackgroundColor3 = Color3.new(1, 1, 1)
Welcome_7.BackgroundTransparency = 99
Welcome_7.Position = UDim2.new(0.0702602491, 0, -0.0299763363, 0)
Welcome_7.Size = UDim2.new(0, 110, 0, 52)
Welcome_7.Font = Enum.Font.Cartoon 
Welcome_7.Text = "Skidals Autofarm"
Welcome_7.TextColor3 = Color3.new(1, 1, 1)
Welcome_7.TextSize = 20

Jxnt9029_4.Name = "Jxnt#9029"
Jxnt9029_4.Parent = AutoFarm
Jxnt9029_4.BackgroundColor3 = Color3.new(1, 1, 1)
Jxnt9029_4.BackgroundTransparency = 99
Jxnt9029_4.Position = UDim2.new(0.0969475433, 0, 0.0766635761, 0)
Jxnt9029_4.Size = UDim2.new(0, 89, 0, 35)
Jxnt9029_4.Font = Enum.Font.Cartoon
Jxnt9029_4.Text = "Jxnt#9029"
Jxnt9029_4.TextColor3 = Color3.new(1, 1, 1)
Jxnt9029_4.TextSize = 13

Line_5.Name = "Line"
Line_5.Parent = AutoFarm
Line_5.BackgroundColor3 = Color3.new(1, 1, 1)
Line_5.BackgroundTransparency = 99
Line_5.Position = UDim2.new(0.0572212636, 0, 0.109027676, 0)
Line_5.Size = UDim2.new(0, 119, 0, 47)
Line_5.Font = Enum.Font.Cartoon
Line_5.Text = "---------"
Line_5.TextColor3 = Color3.new(1, 1, 1)
Line_5.TextSize = 13

FireWorldFarm.Name = "FireWorld Farm"
FireWorldFarm.Parent = AutoFarm
FireWorldFarm.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
FireWorldFarm.BorderColor3 = Color3.new(1, 1, 1)
FireWorldFarm.Position = UDim2.new(0.726618707, 0, 0.107555449, 0)
FireWorldFarm.Size = UDim2.new(0, 106, 0, 37)
FireWorldFarm.Font = Enum.Font.Cartoon
FireWorldFarm.Text = "FireWorld Farm"
FireWorldFarm.TextColor3 = Color3.new(1, 1, 1)
FireWorldFarm.TextSize = 15
FireWorldFarm.MouseButton1Click:connect (function ()
	_G.var = true
while _G.var == true do
	wait(.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Areas["Fire World"].NPCs["Lava Monster"].HumanoidRootPart.CFrame


 

local tb;_19BA8020 =
{
}
local tbl_main =
{
	"Click",
	tbl_19BA8020
}
game:GetService("ReplicatedStorage").Events.Npc:FireServer(unpack(tbl_main))
end
end)

CityFarm.Name = "City Farm"
CityFarm.Parent = AutoFarm
CityFarm.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
CityFarm.BorderColor3 = Color3.new(1, 1, 1)
CityFarm.Position = UDim2.new(0.724220693, 0, 0.322190464, 0)
CityFarm.Size = UDim2.new(0, 106, 0, 37)
CityFarm.Font = Enum.Font.Cartoon
CityFarm.Text = "City Farm"
CityFarm.TextColor3 = Color3.new(1, 1, 1)
CityFarm.TextSize = 15
CityFarm.MouseButton1Click:connect (function ()
	_G.var = true
while _G.var == true do
	wait(.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Areas["City"].NPCs["Criminal"].HumanoidRootPart.CFrame


 

local tb;_19BA8020 =
{
}
local tbl_main =
{
	"Click",
	tbl_19BA8020
}
game:GetService("ReplicatedStorage").Events.Npc:FireServer(unpack(tbl_main))
end
end)

NightmareFarm.Name = "Nightmare Farm"
NightmareFarm.Parent = AutoFarm
NightmareFarm.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
NightmareFarm.BorderColor3 = Color3.new(1, 1, 1)
NightmareFarm.Position = UDim2.new(0.726618707, 0, 0.538547039, 0)
NightmareFarm.Size = UDim2.new(0, 106, 0, 37)
NightmareFarm.Font = Enum.Font.Cartoon
NightmareFarm.Text = "Nightmare Farm"
NightmareFarm.TextColor3 = Color3.new(1, 1, 1)
NightmareFarm.TextSize = 15
NightmareFarm.MouseButton1Click:connect (function ()
	_G.var = true
while _G.var == true do
	wait(.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Areas["Nightmare"].NPCs["Assassin"].HumanoidRootPart.CFrame


 

local tb;_19BA8020 =
{
}
local tbl_main =
{
	"Click",
	tbl_19BA8020
}
game:GetService("ReplicatedStorage").Events.Npc:FireServer(unpack(tbl_main))
end
end)

StarterFarm.Name = "Starter Farm"
StarterFarm.Parent = AutoFarm
StarterFarm.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
StarterFarm.BorderColor3 = Color3.new(1, 1, 1)
StarterFarm.Position = UDim2.new(0.438580513, 0, 0.109027654, 0)
StarterFarm.Size = UDim2.new(0, 106, 0, 37)
StarterFarm.Font = Enum.Font.Cartoon
StarterFarm.Text = "Starter Farm"
StarterFarm.TextColor3 = Color3.new(1, 1, 1)
StarterFarm.TextSize = 15
StarterFarm.MouseButton1Click:connect (function ()
	_G.var = true
while _G.var == true do
	wait(.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Areas["Starter"].NPCs["Villager"].HumanoidRootPart.CFrame


 

local tb;_19BA8020 =
{
}
local tbl_main =
{
	"Click",
	tbl_19BA8020
}
game:GetService("ReplicatedStorage").Events.Npc:FireServer(unpack(tbl_main))
end
end)

DesertFarm.Name = "Desert Farm"
DesertFarm.Parent = AutoFarm
DesertFarm.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
DesertFarm.BorderColor3 = Color3.new(1, 1, 1)
DesertFarm.Position = UDim2.new(0.436182499, 0, 0.322190464, 0)
DesertFarm.Size = UDim2.new(0, 106, 0, 37)
DesertFarm.Font = Enum.Font.Cartoon
DesertFarm.Text = "Desert Farm"
DesertFarm.TextColor3 = Color3.new(1, 1, 1)
DesertFarm.TextSize = 15
DesertFarm.MouseButton1Click:connect (function ()
	_G.var = true
while _G.var == true do
	wait(.3)	_G.var = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Areas["Desert"].NPCs["Mummy"].HumanoidRootPart.CFrame


 

local tb;_19BA8020 =
{
}
local tbl_main =
{
	"Click",
	tbl_19BA8020
}
game:GetService("ReplicatedStorage").Events.Npc:FireServer(unpack(tbl_main))
end
end)

IceLandFarm.Name = "IceLand Farm"
IceLandFarm.Parent = AutoFarm
IceLandFarm.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
IceLandFarm.BorderColor3 = Color3.new(1, 1, 1)
IceLandFarm.Position = UDim2.new(0.436182559, 0, 0.541332722, 0)
IceLandFarm.Size = UDim2.new(0, 106, 0, 37)
IceLandFarm.Font = Enum.Font.Cartoon
IceLandFarm.Text = "IceLand Farm"
IceLandFarm.TextColor3 = Color3.new(1, 1, 1)
IceLandFarm.TextSize = 15
IceLandFarm.MouseButton1Click:connect (function ()
	_G.var = true
while _G.var == true do
	wait(.3)	_G.var = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Areas["Ice Land"].NPCs["Ice Golem"].HumanoidRootPart.CFrame


 

local tb;_19BA8020 =
{
}
local tbl_main =
{
	"Click",
	tbl_19BA8020
}
game:GetService("ReplicatedStorage").Events.Npc:FireServer(unpack(tbl_main))
end
end)

about_2.Name = "about"
about_2.Parent = AutoFarm
about_2.BackgroundColor3 = Color3.new(1, 1, 1)
about_2.BackgroundTransparency = 99
about_2.Position = UDim2.new(0.0630660057, 0, 0.203207523, 0)
about_2.Size = UDim2.new(0, 117, 0, 132)
about_2.Font = Enum.Font.Cartoon
about_2.Text = "Select a AutoFarm Area that you want. The higher area means the more likely you are going to die. If you have a good sword then your good. Enjoy "
about_2.TextColor3 = Color3.new(1, 1, 1)
about_2.TextSize = 14
about_2.TextWrapped = true

NextPageOpenEggs.Name = "Next Page (Open Eggs)"
NextPageOpenEggs.Parent = AutoFarm
NextPageOpenEggs.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
NextPageOpenEggs.BorderColor3 = Color3.new(1, 0.615686, 0)
NextPageOpenEggs.Position = UDim2.new(0.729016781, 0, 0.798659265, 0)
NextPageOpenEggs.Size = UDim2.new(0, 105, 0, 37)
NextPageOpenEggs.Font = Enum.Font.Cartoon
NextPageOpenEggs.Text = "Next Page"
NextPageOpenEggs.TextColor3 = Color3.new(1, 1, 1)
NextPageOpenEggs.TextSize = 15
NextPageOpenEggs.MouseButton1Click:connect (function ()
	OpenEggs.Visible = true
	AutoFarm.Visible = false
end)

PreviousPageTOS.Parent = AutoFarm
PreviousPageTOS.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
PreviousPageTOS.BorderColor3 = Color3.new(1, 0.615686, 0)
PreviousPageTOS.Position = UDim2.new(0.436182559, 0, 0.798659265, 0)
PreviousPageTOS.Size = UDim2.new(0, 106, 0, 37)
PreviousPageTOS.Font = Enum.Font.Cartoon
PreviousPageTOS.Text = "Previous Page"
PreviousPageTOS.TextColor3 = Color3.new(1, 1, 1)
PreviousPageTOS.TextSize = 15
PreviousPageTOS.MouseButton1Click:connect (function ()
	TOS.Visible = true
	AutoFarm.Visible = false
end)

Line_6.Name = "Line"
Line_6.Parent = AutoFarm
Line_6.BackgroundColor3 = Color3.new(1, 1, 1)
Line_6.BackgroundTransparency = 99
Line_6.Position = UDim2.new(0.570410728, 0, 0.656295955, 0)
Line_6.Size = UDim2.new(0, 119, 0, 44)
Line_6.Font = Enum.Font.Cartoon
Line_6.Text = "---------"
Line_6.TextColor3 = Color3.new(1, 1, 1)
Line_6.TextSize = 13

OpenEggs.Name = "OpenEggs"
OpenEggs.Parent = ScreenGui
OpenEggs.Active = true
OpenEggs.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
OpenEggs.BorderColor3 = Color3.new(1, 1, 1)
OpenEggs.Position = UDim2.new(0.39868328, 0, 0.275184274, 0)
OpenEggs.Size = UDim2.new(0, 417, 0, 223)
OpenEggs.Visible = false

Welcome_8.Name = "Welcome"
Welcome_8.Parent = OpenEggs
Welcome_8.BackgroundColor3 = Color3.new(1, 1, 1)
Welcome_8.BackgroundTransparency = 99
Welcome_8.Position = UDim2.new(0.0702602491, 0, -0.0299763363, 0)
Welcome_8.Size = UDim2.new(0, 110, 0, 52)
Welcome_8.Font = Enum.Font.Cartoon
Welcome_8.Text = "Skidals Egg Opener"
Welcome_8.TextColor3 = Color3.new(1, 1, 1)
Welcome_8.TextSize = 20

Jxnt9029_5.Name = "Jxnt#9029"
Jxnt9029_5.Parent = OpenEggs
Jxnt9029_5.BackgroundColor3 = Color3.new(1, 1, 1)
Jxnt9029_5.BackgroundTransparency = 99
Jxnt9029_5.Position = UDim2.new(0.0969475433, 0, 0.0766635761, 0)
Jxnt9029_5.Size = UDim2.new(0, 89, 0, 35)
Jxnt9029_5.Font = Enum.Font.Cartoon
Jxnt9029_5.Text = "Jxnt#9029"
Jxnt9029_5.TextColor3 = Color3.new(1, 1, 1)
Jxnt9029_5.TextSize = 13

Line_7.Name = "Line"
Line_7.Parent = OpenEggs
Line_7.BackgroundColor3 = Color3.new(1, 1, 1)
Line_7.BackgroundTransparency = 99
Line_7.Position = UDim2.new(0.0572212636, 0, 0.109027676, 0)
Line_7.Size = UDim2.new(0, 119, 0, 47)
Line_7.Font = Enum.Font.Cartoon
Line_7.Text = "---------"
Line_7.TextColor3 = Color3.new(1, 1, 1)
Line_7.TextSize = 13

UnobtainableEgg.Name = "Unobtainable Egg"
UnobtainableEgg.Parent = OpenEggs
UnobtainableEgg.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
UnobtainableEgg.BorderColor3 = Color3.new(1, 1, 1)
UnobtainableEgg.Position = UDim2.new(0.726618707, 0, 0.107555449, 0)
UnobtainableEgg.Size = UDim2.new(0, 106, 0, 37)
UnobtainableEgg.Font = Enum.Font.Cartoon
UnobtainableEgg.Text = "Unobtainable Egg"
UnobtainableEgg.TextColor3 = Color3.new(1, 1, 1)
UnobtainableEgg.TextSize = 14
UnobtainableEgg.MouseButton1Click:connect (function ()
	_G.var = true
while _G.var == true do
	wait()	
	
	local tbl_20813AF8 = 
{
      "Egg", 
      "Unobtainable"
}
local tbl_main = 
{
      "Buy", 
      tbl_20813AF8
}
game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(tbl_main))
end
end)

GalaxyEgg.Name = "Galaxy Egg"
GalaxyEgg.Parent = OpenEggs
GalaxyEgg.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
GalaxyEgg.BorderColor3 = Color3.new(1, 1, 1)
GalaxyEgg.Position = UDim2.new(0.724220693, 0, 0.322190464, 0)
GalaxyEgg.Size = UDim2.new(0, 106, 0, 37)
GalaxyEgg.Font = Enum.Font.Cartoon
GalaxyEgg.Text = "Galaxy Egg"
GalaxyEgg.TextColor3 = Color3.new(1, 1, 1)
GalaxyEgg.TextSize = 15
GalaxyEgg.MouseButton1Click:connect (function ()
	_G.var = true
while _G.var == true do
	wait()	
	
	local tbl_20813AF8 = 
{
      "Egg", 
      "Galaxy"
}
local tbl_main = 
{
      "Buy", 
      tbl_20813AF8
}
game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(tbl_main))
end
end)

GodlyEgg.Name = "Godly Egg"
GodlyEgg.Parent = OpenEggs
GodlyEgg.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
GodlyEgg.BorderColor3 = Color3.new(1, 1, 1)
GodlyEgg.Position = UDim2.new(0.726618707, 0, 0.538547039, 0)
GodlyEgg.Size = UDim2.new(0, 106, 0, 37)
GodlyEgg.Font = Enum.Font.Cartoon
GodlyEgg.Text = "Godly Egg"
GodlyEgg.TextColor3 = Color3.new(1, 1, 1)
GodlyEgg.TextSize = 15
GodlyEgg.MouseButton1Click:connect (function ()
	_G.var = true
while _G.var == true do
	wait()	
	
	local tbl_20813AF8 = 
{
      "Egg", 
      "Godly"
}
local tbl_main = 
{
      "Buy", 
      tbl_20813AF8
}
game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(tbl_main))
end
end)

MythicalEgg.Name = "Mythical Egg"
MythicalEgg.Parent = OpenEggs
MythicalEgg.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
MythicalEgg.BorderColor3 = Color3.new(1, 1, 1)
MythicalEgg.Position = UDim2.new(0.438580513, 0, 0.109027654, 0)
MythicalEgg.Size = UDim2.new(0, 106, 0, 37)
MythicalEgg.Font = Enum.Font.Cartoon
MythicalEgg.Text = "Mythical Egg"
MythicalEgg.TextColor3 = Color3.new(1, 1, 1)
MythicalEgg.TextSize = 15
MythicalEgg.MouseButton1Click:connect (function ()
	_G.var = true
while _G.var == true do
	wait()	
	
	local tbl_20813AF8 = 
{
      "Egg", 
      "Mythical"
}
local tbl_main = 
{
      "Buy", 
      tbl_20813AF8
}
game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(tbl_main))
end
end)

LegendaryEgg.Name = "Legendary Egg"
LegendaryEgg.Parent = OpenEggs
LegendaryEgg.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
LegendaryEgg.BorderColor3 = Color3.new(1, 1, 1)
LegendaryEgg.Position = UDim2.new(0.436182499, 0, 0.322190464, 0)
LegendaryEgg.Size = UDim2.new(0, 106, 0, 37)
LegendaryEgg.Font = Enum.Font.Cartoon
LegendaryEgg.Text = "Legendary Egg"
LegendaryEgg.TextColor3 = Color3.new(1, 1, 1)
LegendaryEgg.TextSize = 15
LegendaryEgg.MouseButton1Click:connect (function ()
	_G.var = true
while _G.var == true do
	wait()	
	
	local tbl_20813AF8 = 
{
      "Egg", 
      "Legendary"
}
local tbl_main = 
{
      "Buy", 
      tbl_20813AF8
}
game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(tbl_main))
end
end)

OverpoweredEgg.Name = "Overpowered Egg"
OverpoweredEgg.Parent = OpenEggs
OverpoweredEgg.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
OverpoweredEgg.BorderColor3 = Color3.new(1, 1, 1)
OverpoweredEgg.Position = UDim2.new(0.436182559, 0, 0.541332722, 0)
OverpoweredEgg.Size = UDim2.new(0, 106, 0, 37)
OverpoweredEgg.Font = Enum.Font.Cartoon
OverpoweredEgg.Text = "Overpowered Egg"
OverpoweredEgg.TextColor3 = Color3.new(1, 1, 1)
OverpoweredEgg.TextSize = 14
OverpoweredEgg.MouseButton1Click:connect (function ()
	_G.var = true
while _G.var == true do
	wait()	
	
	local tbl_20813AF8 = 
{
      "Egg", 
      "Overpowered"
}
local tbl_main = 
{
      "Buy", 
      tbl_20813AF8
}
game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(tbl_main))
end
end)

about_3.Name = "about"
about_3.Parent = OpenEggs
about_3.BackgroundColor3 = Color3.new(1, 1, 1)
about_3.BackgroundTransparency = 99
about_3.Position = UDim2.new(0.0630660057, 0, 0.203207523, 0)
about_3.Size = UDim2.new(0, 117, 0, 132)
about_3.Font = Enum.Font.Cartoon
about_3.Text = "Select an Egg you would like to open. You must have the balance to actually open it. It will start AFK faming them. If you wish to stop then leave the game"
about_3.TextColor3 = Color3.new(1, 1, 1)
about_3.TextSize = 14
about_3.TextWrapped = true

NextPageTeleports.Name = "Next Page (Teleports)"
NextPageTeleports.Parent = OpenEggs
NextPageTeleports.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
NextPageTeleports.BorderColor3 = Color3.new(1, 0.615686, 0)
NextPageTeleports.Position = UDim2.new(0.729016781, 0, 0.798659265, 0)
NextPageTeleports.Size = UDim2.new(0, 105, 0, 37)
NextPageTeleports.Font = Enum.Font.Cartoon
NextPageTeleports.Text = "Next Page"
NextPageTeleports.TextColor3 = Color3.new(1, 1, 1)
NextPageTeleports.TextSize = 15
NextPageTeleports.MouseButton1Click:connect (function ()
	Teleports.Visible = true
	OpenEggs.Visible = false
end)

PreviousPageAutoFarm.Name = "Previous Page (AutoFarm)"
PreviousPageAutoFarm.Parent = OpenEggs
PreviousPageAutoFarm.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
PreviousPageAutoFarm.BorderColor3 = Color3.new(1, 0.615686, 0)
PreviousPageAutoFarm.Position = UDim2.new(0.436182559, 0, 0.798659265, 0)
PreviousPageAutoFarm.Size = UDim2.new(0, 106, 0, 37)
PreviousPageAutoFarm.Font = Enum.Font.Cartoon
PreviousPageAutoFarm.Text = "Previous Page"
PreviousPageAutoFarm.TextColor3 = Color3.new(1, 1, 1)
PreviousPageAutoFarm.TextSize = 15
PreviousPageAutoFarm.MouseButton1Click:connect (function ()
	AutoFarm.Visible = true
	OpenEggs.Visible = false
end)

Line_8.Name = "Line"
Line_8.Parent = OpenEggs
Line_8.BackgroundColor3 = Color3.new(1, 1, 1)
Line_8.BackgroundTransparency = 99
Line_8.Position = UDim2.new(0.570410728, 0, 0.656295955, 0)
Line_8.Size = UDim2.new(0, 119, 0, 44)
Line_8.Font = Enum.Font.Cartoon
Line_8.Text = "---------"
Line_8.TextColor3 = Color3.new(1, 1, 1)
Line_8.TextSize = 13