-- VillanityGUI V3 for Prison Life V2.0.2 Made By MadnessEngine#9934
-- I did not create the scripts I only modified some and made the GUI
-- Credits to the original script creators
-- Hotkeys are E for Fly and V for Noclip
local VillanityGUIV3 = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local Frame_3 = Instance.new("Frame")
local Text = Instance.new("TextLabel")
local Text_2 = Instance.new("TextLabel")
local Frame_4 = Instance.new("Frame")
local Frame_5 = Instance.new("Frame")
local Frame_6 = Instance.new("Frame")
local Frame_7 = Instance.new("Frame")
local Close = Instance.new("Frame")
local Frame_8 = Instance.new("Frame")
local Frame_9 = Instance.new("Frame")
local Frame_10 = Instance.new("Frame")
local Frame_11 = Instance.new("Frame")
local CloseButton = Instance.new("TextButton")
local KAOnB = Instance.new("TextButton")
local PageOneButton = Instance.new("Frame")
local Frame_12 = Instance.new("Frame")
local Frame_13 = Instance.new("Frame")
local Frame_14 = Instance.new("Frame")
local Frame_15 = Instance.new("Frame")
local PageOneB = Instance.new("ImageButton")
local Text_3 = Instance.new("TextLabel")
local Text_4 = Instance.new("TextLabel")
local GMOnB = Instance.new("TextButton")
local GMOffB = Instance.new("TextButton")
local Text_5 = Instance.new("TextLabel")
local NCOnB = Instance.new("TextButton")
local NCOffB = Instance.new("TextButton")
local Text_6 = Instance.new("TextLabel")
local AllCrimsB = Instance.new("TextButton")
local Text_7 = Instance.new("TextLabel")
local GuardB = Instance.new("TextButton")
local InmateB = Instance.new("TextButton")
local Text_8 = Instance.new("TextLabel")
local ClickArrestOn = Instance.new("TextLabel")
local KillAllB = Instance.new("TextButton")
local Text_9 = Instance.new("TextLabel")
local Text_10 = Instance.new("TextLabel")
local ArrestAllB = Instance.new("TextButton")
local CAOnB = Instance.new("TextButton")
local WepB = Instance.new("TextButton")
local Text_11 = Instance.new("TextLabel")
local Text_12 = Instance.new("TextLabel")
local Text_13 = Instance.new("TextLabel")
local FlyOnB = Instance.new("TextButton")
local FlyOffB = Instance.new("TextButton")
local BtoolsOn = Instance.new("TextButton")
local KAOffB = Instance.new("TextButton")
local Open = Instance.new("Frame")
local Frame_16 = Instance.new("Frame")
local Frame_17 = Instance.new("Frame")
local Frame_18 = Instance.new("Frame")
local Frame_19 = Instance.new("Frame")
local OpenButton = Instance.new("TextButton")
local PageOne = Instance.new("Frame")
local Frame_20 = Instance.new("Frame")
local Frame_21 = Instance.new("Frame")
local Frame_22 = Instance.new("Frame")
local Text_14 = Instance.new("TextLabel")
local Text_15 = Instance.new("TextLabel")
local Frame_23 = Instance.new("Frame")
local Frame_24 = Instance.new("Frame")
local Frame_25 = Instance.new("Frame")
local PageTwoButton = Instance.new("Frame")
local Frame_26 = Instance.new("Frame")
local Frame_27 = Instance.new("Frame")
local Frame_28 = Instance.new("Frame")
local Frame_29 = Instance.new("Frame")
local PageTwoB = Instance.new("ImageButton")
local Close_2 = Instance.new("Frame")
local Frame_30 = Instance.new("Frame")
local Frame_31 = Instance.new("Frame")
local Frame_32 = Instance.new("Frame")
local Frame_33 = Instance.new("Frame")
local CloseButton_2 = Instance.new("TextButton")
local EscapePrison = Instance.new("Frame")
local EscPriB = Instance.new("TextButton")
local PrisonGateO = Instance.new("Frame")
local PriGatOB = Instance.new("TextButton")
local Text_16 = Instance.new("TextLabel")
local Text_17 = Instance.new("TextLabel")
local PrisonYard = Instance.new("Frame")
local PriYarB = Instance.new("TextButton")
local Text_18 = Instance.new("TextLabel")
local Text_19 = Instance.new("TextLabel")
local CriminalBase = Instance.new("Frame")
local CriBasB = Instance.new("TextButton")
local PrisonGateI = Instance.new("Frame")
local PriGatIB = Instance.new("TextButton")
local Text_20 = Instance.new("TextLabel")
local PrisonYardT = Instance.new("Frame")
local PriYarTB = Instance.new("TextButton")
local Text_21 = Instance.new("TextLabel")
local GuardsRoom = Instance.new("Frame")
local GuaRooB = Instance.new("TextButton")
local PrisonCafeteria = Instance.new("Frame")
local PriCafB = Instance.new("TextButton")
local Text_22 = Instance.new("TextLabel")
local Text_23 = Instance.new("TextLabel")
local PrisonCells = Instance.new("Frame")
local PriCelB = Instance.new("TextButton")
local Text_24 = Instance.new("TextLabel")
local Text_25 = Instance.new("TextLabel")
local GasStation = Instance.new("Frame")
local GasStaB = Instance.new("TextButton")
local PrisonGateCR = Instance.new("Frame")
local PriGatCRB = Instance.new("TextButton")
local PrisonRoof = Instance.new("Frame")
local PriRooB = Instance.new("TextButton")
local Text_26 = Instance.new("TextLabel")
local Text_27 = Instance.new("TextLabel")
local Text_28 = Instance.new("TextLabel")
local Text_29 = Instance.new("TextLabel")
local Text_30 = Instance.new("TextLabel")
local Text_31 = Instance.new("TextLabel")
local PageMainButton = Instance.new("Frame")
local Frame_34 = Instance.new("Frame")
local Frame_35 = Instance.new("Frame")
local Frame_36 = Instance.new("Frame")
local Frame_37 = Instance.new("Frame")
local PageMainB = Instance.new("ImageButton")
local Frame_38 = Instance.new("Frame")
local PageTwo = Instance.new("Frame")
local Frame_39 = Instance.new("Frame")
local Frame_40 = Instance.new("Frame")
local Frame_41 = Instance.new("Frame")
local Text_32 = Instance.new("TextLabel")
local Text_33 = Instance.new("TextLabel")
local Frame_42 = Instance.new("Frame")
local Frame_43 = Instance.new("Frame")
local Frame_44 = Instance.new("Frame")
local Frame_45 = Instance.new("Frame")
local Close_3 = Instance.new("Frame")
local Frame_46 = Instance.new("Frame")
local Frame_47 = Instance.new("Frame")
local Frame_48 = Instance.new("Frame")
local Frame_49 = Instance.new("Frame")
local CloseButton_3 = Instance.new("TextButton")
local Text_34 = Instance.new("TextLabel")
local M5Speed = Instance.new("Frame")
local M5SpeedB = Instance.new("TextButton")
local PageOneBack = Instance.new("Frame")
local Frame_50 = Instance.new("Frame")
local Frame_51 = Instance.new("Frame")
local Frame_52 = Instance.new("Frame")
local Frame_53 = Instance.new("Frame")
local PageOneBackB = Instance.new("ImageButton")
local Text_35 = Instance.new("TextLabel")
local ViewPlayer = Instance.new("Frame")
local ViePlaB = Instance.new("TextButton")
local Frame_54 = Instance.new("Frame")
local Text_36 = Instance.new("TextLabel")
local GotoPlayer = Instance.new("Frame")
local GotPlaB = Instance.new("TextButton")
local P5Speed = Instance.new("Frame")
local P5SpeedB = Instance.new("TextButton")
local Text_37 = Instance.new("TextLabel")
local P5Jump = Instance.new("Frame")
local P5JumpB = Instance.new("TextButton")
local Text_38 = Instance.new("TextLabel")
local M5Jump = Instance.new("Frame")
local M5JumpB = Instance.new("TextButton")
local Respawn = Instance.new("Frame")
local ResB = Instance.new("TextButton")
local Frame_55 = Instance.new("Frame")
local Text_39 = Instance.new("TextLabel")
local Frame_56 = Instance.new("Frame")
local Text_40 = Instance.new("TextLabel")
local Text_41 = Instance.new("TextLabel")
local KillPlayer = Instance.new("Frame")
local KilPlaB = Instance.new("TextButton")
local DefaultSettings = Instance.new("Frame")
local DefSetB = Instance.new("TextButton")
local MakeCriminal = Instance.new("Frame")
local MakCriB = Instance.new("TextButton")
local Text_42 = Instance.new("TextLabel")
local PlrNameBox = Instance.new("TextBox")
local Text_43 = Instance.new("TextLabel")
local Frame_57 = Instance.new("Frame")
local Frame_58 = Instance.new("Frame")
local Frame_59 = Instance.new("Frame")
local Frame_60 = Instance.new("Frame")
local OpenOne = Instance.new("Frame")
local Frame_61 = Instance.new("Frame")
local Frame_62 = Instance.new("Frame")
local Frame_63 = Instance.new("Frame")
local Frame_64 = Instance.new("Frame")
local OpenOneButton = Instance.new("TextButton")
local OpenTwo = Instance.new("Frame")
local Frame_65 = Instance.new("Frame")
local Frame_66 = Instance.new("Frame")
local Frame_67 = Instance.new("Frame")
local Frame_68 = Instance.new("Frame")
local OpenTwoButton = Instance.new("TextButton")
--Properties:
VillanityGUIV3.Name = "VillanityGUIV3"
VillanityGUIV3.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Main.Name = "Main"
Main.Parent = VillanityGUIV3
Main.BackgroundColor3 = Color3.new(0, 0, 0)
Main.BackgroundTransparency = 0.5
Main.BorderColor3 = Color3.new(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, -170, 0.5, -182)
Main.Size = UDim2.new(0, 340, 0, 363)

Frame.Parent = Main
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BackgroundTransparency = 0.40000000596046
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, -0.187110379, 0)
Frame.Size = UDim2.new(0, 340, 0, 57)

Frame_2.Parent = Main
Frame_2.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_2.BackgroundTransparency = 0.30000001192093
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0, 0, -0.0290706288, 0)
Frame_2.Size = UDim2.new(0, 340, 0, 11)

Frame_3.Parent = Main
Frame_3.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_3.BackgroundTransparency = 0.30000001192093
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0, 0, -0.199869528, 0)
Frame_3.Size = UDim2.new(0, 340, 0, 5)

Text.Name = "Text"
Text.Parent = Frame_3
Text.BackgroundColor3 = Color3.new(1, 1, 1)
Text.BackgroundTransparency = 1
Text.BorderSizePixel = 0
Text.Position = UDim2.new(0.153058887, 0, -2.60000038, 0)
Text.Size = UDim2.new(0, 234, 0, 67)
Text.Font = Enum.Font.Cartoon
Text.Text = "Villanity GUI V3"
Text.TextColor3 = Color3.new(1, 1, 1)
Text.TextSize = 40

Text_2.Name = "Text"
Text_2.Parent = Frame_3
Text_2.BackgroundColor3 = Color3.new(1, 1, 1)
Text_2.BackgroundTransparency = 1
Text_2.BorderSizePixel = 0
Text_2.Position = UDim2.new(0.156000018, 0, 3.19999766, 0)
Text_2.Size = UDim2.new(0, 234, 0, 67)
Text_2.Font = Enum.Font.Cartoon
Text_2.Text = "Prison Life - Main"
Text_2.TextColor3 = Color3.new(1, 1, 1)
Text_2.TextSize = 30

Frame_4.Parent = Main
Frame_4.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_4.BackgroundTransparency = 0.30000001192093
Frame_4.BorderSizePixel = 0
Frame_4.Position = UDim2.new(1, 0, -0.217630848, 0)
Frame_4.Size = UDim2.new(0, 5, 0, 453)

Frame_5.Parent = Main
Frame_5.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_5.BackgroundTransparency = 0.30000001192093
Frame_5.BorderSizePixel = 0
Frame_5.Position = UDim2.new(0, 0, 1.00123239, 0)
Frame_5.Size = UDim2.new(0, 340, 0, 5)

Frame_6.Parent = Main
Frame_6.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_6.BackgroundTransparency = 0.30000001192093
Frame_6.BorderSizePixel = 0
Frame_6.Position = UDim2.new(-0.0147058647, 0, -0.217630848, 0)
Frame_6.Size = UDim2.new(0, 5, 0, 453)

Frame_7.Parent = Main
Frame_7.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_7.BackgroundTransparency = 0.30000001192093
Frame_7.BorderSizePixel = 0
Frame_7.Position = UDim2.new(0.491176456, 0, 0, 0)
Frame_7.Size = UDim2.new(0, 5, 0, 363)

Close.Name = "Close"
Close.Parent = Main
Close.BackgroundColor3 = Color3.new(0, 0, 0)
Close.BackgroundTransparency = 1
Close.BorderColor3 = Color3.new(1, 1, 1)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(-1.15294135, 500, 1.03108263, 0)
Close.Size = UDim2.new(0, 121, 0, 44)

Frame_8.Parent = Close
Frame_8.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_8.BackgroundTransparency = 0.30000001192093
Frame_8.BorderSizePixel = 0
Frame_8.Position = UDim2.new(1, 0, 0, 0)
Frame_8.Size = UDim2.new(0, 6, 0, 44)

Frame_9.Parent = Close
Frame_9.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_9.BackgroundTransparency = 0.30000001192093
Frame_9.BorderSizePixel = 0
Frame_9.Position = UDim2.new(-0.0495867766, 0, 1, 0)
Frame_9.Size = UDim2.new(0, 133, 0, 6)

Frame_10.Parent = Close
Frame_10.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_10.BackgroundTransparency = 0.30000001192093
Frame_10.BorderSizePixel = 0
Frame_10.Position = UDim2.new(-0.0495867729, 0, 0, 0)
Frame_10.Size = UDim2.new(0, 6, 0, 44)

Frame_11.Parent = Close
Frame_11.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_11.BackgroundTransparency = 0.30000001192093
Frame_11.BorderSizePixel = 0
Frame_11.Position = UDim2.new(-0.0495867766, 0, -0.136363626, 0)
Frame_11.Size = UDim2.new(0, 133, 0, 6)

CloseButton.Name = "CloseButton"
CloseButton.Parent = Close
CloseButton.Active = false
CloseButton.BackgroundColor3 = Color3.new(0, 0, 0)
CloseButton.BackgroundTransparency = 0.5
CloseButton.BorderSizePixel = 0
CloseButton.Size = UDim2.new(0, 121, 0, 44)
CloseButton.Font = Enum.Font.Cartoon
CloseButton.Text = "Close"
CloseButton.TextColor3 = Color3.new(1, 1, 1)
CloseButton.TextSize = 25

KAOnB.Name = "KAOnB"
KAOnB.Parent = Main
KAOnB.Active = false
KAOnB.BackgroundColor3 = Color3.new(0, 0, 0)
KAOnB.BackgroundTransparency = 0.5
KAOnB.BorderSizePixel = 0
KAOnB.Position = UDim2.new(-1.87600005, 500, 0.0370000005, 0)
KAOnB.Size = UDim2.new(0, 121, 0, 44)
KAOnB.Font = Enum.Font.Cartoon
KAOnB.Text = "Turn On"
KAOnB.TextColor3 = Color3.new(1, 1, 1)
KAOnB.TextSize = 25

PageOneButton.Name = "PageOneButton"
PageOneButton.Parent = Main
PageOneButton.BackgroundColor3 = Color3.new(0, 0, 0)
PageOneButton.BackgroundTransparency = 0.5
PageOneButton.BorderColor3 = Color3.new(1, 1, 1)
PageOneButton.BorderSizePixel = 0
PageOneButton.Position = UDim2.new(-0.744117677, 500, 1.04407716, 0)
PageOneButton.Size = UDim2.new(0, 65, 0, 34)

Frame_12.Parent = PageOneButton
Frame_12.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_12.BackgroundTransparency = 0.30000001192093
Frame_12.BorderSizePixel = 0
Frame_12.Position = UDim2.new(1, 0, 0.0294117648, 0)
Frame_12.Size = UDim2.new(0, 3, 0, 33)

Frame_13.Parent = PageOneButton
Frame_13.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_13.BackgroundTransparency = 0.30000001192093
Frame_13.BorderSizePixel = 0
Frame_13.Position = UDim2.new(-0.0461538471, 0, 1, 0)
Frame_13.Size = UDim2.new(0, 71, 0, 3)

Frame_14.Parent = PageOneButton
Frame_14.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_14.BackgroundTransparency = 0.30000001192093
Frame_14.BorderSizePixel = 0
Frame_14.Position = UDim2.new(-0.0461538471, 0, 0.0294117648, 0)
Frame_14.Size = UDim2.new(0, 3, 0, 33)

Frame_15.Parent = PageOneButton
Frame_15.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_15.BackgroundTransparency = 0.30000001192093
Frame_15.BorderSizePixel = 0
Frame_15.Position = UDim2.new(-0.0461538471, 0, -0.0588235296, 0)
Frame_15.Size = UDim2.new(0, 71, 0, 3)

PageOneB.Name = "PageOneB"
PageOneB.Parent = PageOneButton
PageOneB.BackgroundColor3 = Color3.new(1, 1, 1)
PageOneB.BackgroundTransparency = 1
PageOneB.Position = UDim2.new(0.169230774, 0, 0, 0)
PageOneB.Size = UDim2.new(0, 42, 0, 34)
PageOneB.Image = "rbxassetid://2383375247"

Text_3.Name = "Text"
Text_3.Parent = Main
Text_3.BackgroundColor3 = Color3.new(0, 0, 0)
Text_3.BackgroundTransparency = 1
Text_3.Position = UDim2.new(-0.0511663258, 0, 0.028236717, 0)
Text_3.Size = UDim2.new(0, 200, 0, 50)
Text_3.Font = Enum.Font.Cartoon
Text_3.Text = "KillAura"
Text_3.TextColor3 = Color3.new(1, 1, 1)
Text_3.TextSize = 25

Text_4.Name = "Text"
Text_4.Parent = Main
Text_4.BackgroundColor3 = Color3.new(0, 0, 0)
Text_4.BackgroundTransparency = 1
Text_4.Position = UDim2.new(-0.0511663258, 0, 0.193526015, 0)
Text_4.Size = UDim2.new(0, 200, 0, 50)
Text_4.Font = Enum.Font.Cartoon
Text_4.Text = "GodMode"
Text_4.TextColor3 = Color3.new(1, 1, 1)
Text_4.TextSize = 25

GMOnB.Name = "GMOnB"
GMOnB.Parent = Main
GMOnB.Active = false
GMOnB.BackgroundColor3 = Color3.new(0, 0, 0)
GMOnB.BackgroundTransparency = 0.5
GMOnB.BorderSizePixel = 0
GMOnB.Position = UDim2.new(-1.87899995, 500, 0.194000006, 0)
GMOnB.Size = UDim2.new(0, 121, 0, 44)
GMOnB.Font = Enum.Font.Cartoon
GMOnB.Text = "Turn On"
GMOnB.TextColor3 = Color3.new(1, 1, 1)
GMOnB.TextSize = 25

GMOffB.Name = "GMOffB"
GMOffB.Parent = Main
GMOffB.Active = false
GMOffB.BackgroundColor3 = Color3.new(0, 0, 0)
GMOffB.BackgroundTransparency = 0.5
GMOffB.BorderSizePixel = 0
GMOffB.Position = UDim2.new(-1.87899995, 500, 0.194000006, 0)
GMOffB.Size = UDim2.new(0, 121, 0, 44)
GMOffB.Visible = false
GMOffB.Font = Enum.Font.Cartoon
GMOffB.Text = "Turn Off"
GMOffB.TextColor3 = Color3.new(1, 1, 1)
GMOffB.TextSize = 25

Text_5.Name = "Text"
Text_5.Parent = Main
Text_5.BackgroundColor3 = Color3.new(0, 0, 0)
Text_5.BackgroundTransparency = 1
Text_5.Position = UDim2.new(-0.0511663258, 0, 0.336776704, 0)
Text_5.Size = UDim2.new(0, 200, 0, 50)
Text_5.Font = Enum.Font.Cartoon
Text_5.Text = "Noclip"
Text_5.TextColor3 = Color3.new(1, 1, 1)
Text_5.TextSize = 25

NCOnB.Name = "NCOnB"
NCOnB.Parent = Main
NCOnB.Active = false
NCOnB.BackgroundColor3 = Color3.new(0, 0, 0)
NCOnB.BackgroundTransparency = 0.5
NCOnB.BorderSizePixel = 0
NCOnB.Position = UDim2.new(-1.87600005, 500, 0.344999999, 0)
NCOnB.Size = UDim2.new(0, 121, 0, 44)
NCOnB.Font = Enum.Font.Cartoon
NCOnB.Text = "Turn On"
NCOnB.TextColor3 = Color3.new(1, 1, 1)
NCOnB.TextSize = 25

NCOffB.Name = "NCOffB"
NCOffB.Parent = Main
NCOffB.Active = false
NCOffB.BackgroundColor3 = Color3.new(0, 0, 0)
NCOffB.BackgroundTransparency = 0.5
NCOffB.BorderSizePixel = 0
NCOffB.Position = UDim2.new(-1.87600005, 500, 0.344999999, 0)
NCOffB.Size = UDim2.new(0, 121, 0, 44)
NCOffB.Visible = false
NCOffB.Font = Enum.Font.Cartoon
NCOffB.Text = "Turn Off"
NCOffB.TextColor3 = Color3.new(1, 1, 1)
NCOffB.TextSize = 25

Text_6.Name = "Text"
Text_6.Parent = Main
Text_6.BackgroundColor3 = Color3.new(0, 0, 0)
Text_6.BackgroundTransparency = 1
Text_6.Position = UDim2.new(-0.0511663258, 0, 0.491046697, 0)
Text_6.Size = UDim2.new(0, 200, 0, 50)
Text_6.Font = Enum.Font.Cartoon
Text_6.Text = "All Criminals"
Text_6.TextColor3 = Color3.new(1, 1, 1)
Text_6.TextSize = 25

AllCrimsB.Name = "AllCrimsB"
AllCrimsB.Parent = Main
AllCrimsB.Active = false
AllCrimsB.BackgroundColor3 = Color3.new(0, 0, 0)
AllCrimsB.BackgroundTransparency = 0.5
AllCrimsB.BorderSizePixel = 0
AllCrimsB.Position = UDim2.new(-1.87600005, 500, 0.499000013, 0)
AllCrimsB.Size = UDim2.new(0, 121, 0, 44)
AllCrimsB.Font = Enum.Font.Cartoon
AllCrimsB.Text = "Activate"
AllCrimsB.TextColor3 = Color3.new(1, 1, 1)
AllCrimsB.TextSize = 25

Text_7.Name = "Text"
Text_7.Parent = Main
Text_7.BackgroundColor3 = Color3.new(0, 0, 0)
Text_7.BackgroundTransparency = 1
Text_7.Position = UDim2.new(-0.050999999, 0, 0.735000014, 0)
Text_7.Size = UDim2.new(0, 200, 0, 50)
Text_7.Font = Enum.Font.Cartoon
Text_7.Text = "Team Switch"
Text_7.TextColor3 = Color3.new(1, 1, 1)
Text_7.TextSize = 25

GuardB.Name = "GuardB"
GuardB.Parent = Main
GuardB.Active = false
GuardB.BackgroundColor3 = Color3.new(0, 0, 0)
GuardB.BackgroundTransparency = 0.5
GuardB.BorderSizePixel = 0
GuardB.Position = UDim2.new(-1.87600005, 500, 0.665000021, 0)
GuardB.Size = UDim2.new(0, 121, 0, 44)
GuardB.Font = Enum.Font.Cartoon
GuardB.Text = "Guard"
GuardB.TextColor3 = Color3.new(1, 1, 1)
GuardB.TextSize = 25

InmateB.Name = "InmateB"
InmateB.Parent = Main
InmateB.Active = false
InmateB.BackgroundColor3 = Color3.new(0, 0, 0)
InmateB.BackgroundTransparency = 0.5
InmateB.BorderSizePixel = 0
InmateB.Position = UDim2.new(-1.87600005, 500, 0.829999983, 0)
InmateB.Size = UDim2.new(0, 121, 0, 44)
InmateB.Font = Enum.Font.Cartoon
InmateB.Text = "Inmate"
InmateB.TextColor3 = Color3.new(1, 1, 1)
InmateB.TextSize = 25

Text_8.Name = "Text"
Text_8.Parent = Main
Text_8.BackgroundColor3 = Color3.new(0, 0, 0)
Text_8.BackgroundTransparency = 1
Text_8.Position = UDim2.new(0.460764706, 0, 0.0270110369, 0)
Text_8.Size = UDim2.new(0, 200, 0, 50)
Text_8.Font = Enum.Font.Cartoon
Text_8.Text = "KillAll"
Text_8.TextColor3 = Color3.new(1, 1, 1)
Text_8.TextSize = 25

ClickArrestOn.Name = "ClickArrestOn"
ClickArrestOn.Parent = Main
ClickArrestOn.BackgroundColor3 = Color3.new(0, 0, 0)
ClickArrestOn.BackgroundTransparency = 0.5
ClickArrestOn.BorderSizePixel = 0
ClickArrestOn.Position = UDim2.new(-0.426352978, 500, 0.829438031, 0)
ClickArrestOn.Size = UDim2.new(0, 121, 0, 44)
ClickArrestOn.Visible = false
ClickArrestOn.Font = Enum.Font.Cartoon
ClickArrestOn.Text = "Activated"
ClickArrestOn.TextColor3 = Color3.new(1, 1, 1)
ClickArrestOn.TextSize = 25

KillAllB.Name = "KillAllB"
KillAllB.Parent = Main
KillAllB.Active = false
KillAllB.BackgroundColor3 = Color3.new(0, 0, 0)
KillAllB.BackgroundTransparency = 0.5
KillAllB.BorderSizePixel = 0
KillAllB.Position = UDim2.new(-0.421000004, 500, 0.0370000005, 0)
KillAllB.Size = UDim2.new(0, 121, 0, 44)
KillAllB.Font = Enum.Font.Cartoon
KillAllB.Text = "Activate"
KillAllB.TextColor3 = Color3.new(1, 1, 1)
KillAllB.TextSize = 25

Text_9.Name = "Text"
Text_9.Parent = Main
Text_9.BackgroundColor3 = Color3.new(0, 0, 0)
Text_9.BackgroundTransparency = 1
Text_9.Position = UDim2.new(0.460764706, 0, 0.65511024, 0)
Text_9.Size = UDim2.new(0, 200, 0, 50)
Text_9.Font = Enum.Font.Cartoon
Text_9.Text = "Btools"
Text_9.TextColor3 = Color3.new(1, 1, 1)
Text_9.TextSize = 25

Text_10.Name = "Text"
Text_10.Parent = Main
Text_10.BackgroundColor3 = Color3.new(0, 0, 0)
Text_10.BackgroundTransparency = 1
Text_10.Position = UDim2.new(0.460764706, 0, 0.184035838, 0)
Text_10.Size = UDim2.new(0, 200, 0, 50)
Text_10.Font = Enum.Font.Cartoon
Text_10.Text = "Arrest All"
Text_10.TextColor3 = Color3.new(1, 1, 1)
Text_10.TextSize = 25

ArrestAllB.Name = "ArrestAllB"
ArrestAllB.Parent = Main
ArrestAllB.Active = false
ArrestAllB.BackgroundColor3 = Color3.new(0, 0, 0)
ArrestAllB.BackgroundTransparency = 0.5
ArrestAllB.BorderSizePixel = 0
ArrestAllB.Position = UDim2.new(-0.421000004, 500, 0.194000006, 0)
ArrestAllB.Size = UDim2.new(0, 121, 0, 44)
ArrestAllB.Font = Enum.Font.Cartoon
ArrestAllB.Text = "Activate"
ArrestAllB.TextColor3 = Color3.new(1, 1, 1)
ArrestAllB.TextSize = 25

CAOnB.Name = "CAOnB"
CAOnB.Parent = Main
CAOnB.Active = false
CAOnB.BackgroundColor3 = Color3.new(0, 0, 0)
CAOnB.BackgroundTransparency = 0.5
CAOnB.BorderSizePixel = 0
CAOnB.Position = UDim2.new(-0.425999999, 500, 0.829999983, 0)
CAOnB.Size = UDim2.new(0, 121, 0, 44)
CAOnB.Font = Enum.Font.Cartoon
CAOnB.Text = "Activate"
CAOnB.TextColor3 = Color3.new(1, 1, 1)
CAOnB.TextSize = 25

WepB.Name = "WepB"
WepB.Parent = Main
WepB.Active = false
WepB.BackgroundColor3 = Color3.new(0, 0, 0)
WepB.BackgroundTransparency = 0.5
WepB.BorderSizePixel = 0
WepB.Position = UDim2.new(-0.423999995, 500, 0.344999999, 0)
WepB.Size = UDim2.new(0, 121, 0, 44)
WepB.Font = Enum.Font.Cartoon
WepB.Text = "Activate"
WepB.TextColor3 = Color3.new(1, 1, 1)
WepB.TextSize = 25

Text_11.Name = "Text"
Text_11.Parent = Main
Text_11.BackgroundColor3 = Color3.new(0, 0, 0)
Text_11.BackgroundTransparency = 1
Text_11.Position = UDim2.new(0.460764706, 0, 0.812135041, 0)
Text_11.Size = UDim2.new(0, 200, 0, 50)
Text_11.Font = Enum.Font.Cartoon
Text_11.Text = "Click Arrest"
Text_11.TextColor3 = Color3.new(1, 1, 1)
Text_11.TextSize = 25

Text_12.Name = "Text"
Text_12.Parent = Main
Text_12.BackgroundColor3 = Color3.new(0, 0, 0)
Text_12.BackgroundTransparency = 1
Text_12.Position = UDim2.new(0.460764706, 0, 0.335550994, 0)
Text_12.Size = UDim2.new(0, 200, 0, 50)
Text_12.Font = Enum.Font.Cartoon
Text_12.Text = "Weapons"
Text_12.TextColor3 = Color3.new(1, 1, 1)
Text_12.TextSize = 25

Text_13.Name = "Text"
Text_13.Parent = Main
Text_13.BackgroundColor3 = Color3.new(0, 0, 0)
Text_13.BackgroundTransparency = 1
Text_13.Position = UDim2.new(0.454882354, 0, 0.489820957, 0)
Text_13.Size = UDim2.new(0, 200, 0, 50)
Text_13.Font = Enum.Font.Cartoon
Text_13.Text = "Flying"
Text_13.TextColor3 = Color3.new(1, 1, 1)
Text_13.TextSize = 25

FlyOnB.Name = "FlyOnB"
FlyOnB.Parent = Main
FlyOnB.Active = false
FlyOnB.BackgroundColor3 = Color3.new(0, 0, 0)
FlyOnB.BackgroundTransparency = 0.5
FlyOnB.BorderSizePixel = 0
FlyOnB.Position = UDim2.new(-0.423999995, 500, 0.499000013, 0)
FlyOnB.Size = UDim2.new(0, 121, 0, 44)
FlyOnB.Font = Enum.Font.Cartoon
FlyOnB.Text = "Turn On"
FlyOnB.TextColor3 = Color3.new(1, 1, 1)
FlyOnB.TextSize = 25

FlyOffB.Name = "FlyOffB"
FlyOffB.Parent = Main
FlyOffB.Active = false
FlyOffB.BackgroundColor3 = Color3.new(0, 0, 0)
FlyOffB.BackgroundTransparency = 0.5
FlyOffB.BorderSizePixel = 0
FlyOffB.Position = UDim2.new(-0.423999995, 500, 0.499000013, 0)
FlyOffB.Size = UDim2.new(0, 121, 0, 44)
FlyOffB.Visible = false
FlyOffB.Font = Enum.Font.Cartoon
FlyOffB.Text = "Turn Off"
FlyOffB.TextColor3 = Color3.new(1, 1, 1)
FlyOffB.TextSize = 25

BtoolsOn.Name = "BtoolsOn"
BtoolsOn.Parent = Main
BtoolsOn.Active = false
BtoolsOn.BackgroundColor3 = Color3.new(0, 0, 0)
BtoolsOn.BackgroundTransparency = 0.5
BtoolsOn.BorderSizePixel = 0
BtoolsOn.Position = UDim2.new(-0.423999995, 500, 0.665000021, 0)
BtoolsOn.Size = UDim2.new(0, 121, 0, 44)
BtoolsOn.Font = Enum.Font.Cartoon
BtoolsOn.Text = "Activate"
BtoolsOn.TextColor3 = Color3.new(1, 1, 1)
BtoolsOn.TextSize = 25

KAOffB.Name = "KAOffB"
KAOffB.Parent = Main
KAOffB.Active = false
KAOffB.BackgroundColor3 = Color3.new(0, 0, 0)
KAOffB.BackgroundTransparency = 0.5
KAOffB.BorderSizePixel = 0
KAOffB.Position = UDim2.new(-1.87600005, 500, 0.0370000005, 0)
KAOffB.Size = UDim2.new(0, 121, 0, 44)
KAOffB.Visible = false
KAOffB.Font = Enum.Font.Cartoon
KAOffB.Text = "Turn Off"
KAOffB.TextColor3 = Color3.new(1, 1, 1)
KAOffB.TextSize = 25

Open.Name = "Open"
Open.Parent = VillanityGUIV3
Open.BackgroundColor3 = Color3.new(0, 0, 0)
Open.BackgroundTransparency = 1
Open.BorderColor3 = Color3.new(1, 1, 1)
Open.BorderSizePixel = 0
Open.Position = UDim2.new(0.0140581066, 0, 0.795202971, 0)
Open.Size = UDim2.new(0, 121, 0, 44)
Open.Visible = false

Frame_16.Parent = Open
Frame_16.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_16.BackgroundTransparency = 0.30000001192093
Frame_16.BorderSizePixel = 0
Frame_16.Position = UDim2.new(-0.0495867766, 0, -0.136363626, 0)
Frame_16.Size = UDim2.new(0, 133, 0, 6)

Frame_17.Parent = Open
Frame_17.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_17.BackgroundTransparency = 0.30000001192093
Frame_17.BorderSizePixel = 0
Frame_17.Position = UDim2.new(-0.0495867766, 0, 1, 0)
Frame_17.Size = UDim2.new(0, 133, 0, 6)

Frame_18.Parent = Open
Frame_18.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_18.BackgroundTransparency = 0.30000001192093
Frame_18.BorderSizePixel = 0
Frame_18.Position = UDim2.new(1, 0, 0, 0)
Frame_18.Size = UDim2.new(0, 6, 0, 44)

Frame_19.Parent = Open
Frame_19.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_19.BackgroundTransparency = 0.30000001192093
Frame_19.BorderSizePixel = 0
Frame_19.Position = UDim2.new(-0.0495867729, 0, 0, 0)
Frame_19.Size = UDim2.new(0, 6, 0, 44)

OpenButton.Name = "OpenButton"
OpenButton.Parent = Open
OpenButton.Active = false
OpenButton.BackgroundColor3 = Color3.new(0, 0, 0)
OpenButton.BackgroundTransparency = 0.5
OpenButton.BorderSizePixel = 0
OpenButton.Size = UDim2.new(0, 121, 0, 44)
OpenButton.Font = Enum.Font.Cartoon
OpenButton.Text = "Open"
OpenButton.TextColor3 = Color3.new(1, 1, 1)
OpenButton.TextSize = 25

PageOne.Name = "PageOne"
PageOne.Parent = VillanityGUIV3
PageOne.BackgroundColor3 = Color3.new(0, 0, 0)
PageOne.BackgroundTransparency = 0.5
PageOne.BorderColor3 = Color3.new(0, 0, 0)
PageOne.BorderSizePixel = 0
PageOne.Position = UDim2.new(0.5, -170, 0.5, -182)
PageOne.Size = UDim2.new(0, 340, 0, 363)
PageOne.Visible = false

Frame_20.Parent = PageOne
Frame_20.BackgroundColor3 = Color3.new(0, 0, 0)
Frame_20.BackgroundTransparency = 0.40000000596046
Frame_20.BorderSizePixel = 0
Frame_20.Position = UDim2.new(0, 0, -0.187110379, 0)
Frame_20.Size = UDim2.new(0, 340, 0, 57)

Frame_21.Parent = PageOne
Frame_21.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_21.BackgroundTransparency = 0.30000001192093
Frame_21.BorderSizePixel = 0
Frame_21.Position = UDim2.new(0, 0, -0.0290706288, 0)
Frame_21.Size = UDim2.new(0, 340, 0, 11)

Frame_22.Parent = PageOne
Frame_22.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_22.BackgroundTransparency = 0.30000001192093
Frame_22.BorderSizePixel = 0
Frame_22.Position = UDim2.new(0, 0, -0.199869528, 0)
Frame_22.Size = UDim2.new(0, 340, 0, 5)

Text_14.Name = "Text"
Text_14.Parent = Frame_22
Text_14.BackgroundColor3 = Color3.new(1, 1, 1)
Text_14.BackgroundTransparency = 1
Text_14.BorderSizePixel = 0
Text_14.Position = UDim2.new(0.153058887, 0, -2.60000038, 0)
Text_14.Size = UDim2.new(0, 234, 0, 67)
Text_14.Font = Enum.Font.Cartoon
Text_14.Text = "Villanity GUI V3"
Text_14.TextColor3 = Color3.new(1, 1, 1)
Text_14.TextSize = 40

Text_15.Name = "Text"
Text_15.Parent = Frame_22
Text_15.BackgroundColor3 = Color3.new(1, 1, 1)
Text_15.BackgroundTransparency = 1
Text_15.BorderSizePixel = 0
Text_15.Position = UDim2.new(0.156000003, 0, 3.20000005, 0)
Text_15.Size = UDim2.new(0, 234, 0, 67)
Text_15.Font = Enum.Font.Cartoon
Text_15.Text = "Prison Life - Teleport"
Text_15.TextColor3 = Color3.new(1, 1, 1)
Text_15.TextSize = 30

Frame_23.Parent = PageOne
Frame_23.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_23.BackgroundTransparency = 0.30000001192093
Frame_23.BorderSizePixel = 0
Frame_23.Position = UDim2.new(1, 0, -0.217630848, 0)
Frame_23.Size = UDim2.new(0, 5, 0, 453)

Frame_24.Parent = PageOne
Frame_24.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_24.BackgroundTransparency = 0.30000001192093
Frame_24.BorderSizePixel = 0
Frame_24.Position = UDim2.new(0, 0, 1.00123239, 0)
Frame_24.Size = UDim2.new(0, 340, 0, 5)

Frame_25.Parent = PageOne
Frame_25.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_25.BackgroundTransparency = 0.30000001192093
Frame_25.BorderSizePixel = 0
Frame_25.Position = UDim2.new(-0.0147058647, 0, -0.217630848, 0)
Frame_25.Size = UDim2.new(0, 5, 0, 453)

PageTwoButton.Name = "PageTwoButton"
PageTwoButton.Parent = PageOne
PageTwoButton.BackgroundColor3 = Color3.new(0, 0, 0)
PageTwoButton.BackgroundTransparency = 0.5
PageTwoButton.BorderColor3 = Color3.new(1, 1, 1)
PageTwoButton.BorderSizePixel = 0
PageTwoButton.Position = UDim2.new(-0.744117677, 500, 1.04407716, 0)
PageTwoButton.Size = UDim2.new(0, 65, 0, 34)

Frame_26.Parent = PageTwoButton
Frame_26.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_26.BackgroundTransparency = 0.30000001192093
Frame_26.BorderSizePixel = 0
Frame_26.Position = UDim2.new(1, 0, 0.0294117648, 0)
Frame_26.Size = UDim2.new(0, 3, 0, 33)

Frame_27.Parent = PageTwoButton
Frame_27.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_27.BackgroundTransparency = 0.30000001192093
Frame_27.BorderSizePixel = 0
Frame_27.Position = UDim2.new(-0.0461538471, 0, 1, 0)
Frame_27.Size = UDim2.new(0, 71, 0, 3)

Frame_28.Parent = PageTwoButton
Frame_28.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_28.BackgroundTransparency = 0.30000001192093
Frame_28.BorderSizePixel = 0
Frame_28.Position = UDim2.new(-0.0461538471, 0, 0.0294117648, 0)
Frame_28.Size = UDim2.new(0, 3, 0, 33)

Frame_29.Parent = PageTwoButton
Frame_29.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_29.BackgroundTransparency = 0.30000001192093
Frame_29.BorderSizePixel = 0
Frame_29.Position = UDim2.new(-0.0461538471, 0, -0.0588235296, 0)
Frame_29.Size = UDim2.new(0, 71, 0, 3)

PageTwoB.Name = "PageTwoB"
PageTwoB.Parent = PageTwoButton
PageTwoB.BackgroundColor3 = Color3.new(1, 1, 1)
PageTwoB.BackgroundTransparency = 1
PageTwoB.Position = UDim2.new(0.169230774, 0, 0, 0)
PageTwoB.Size = UDim2.new(0, 42, 0, 34)
PageTwoB.Image = "rbxassetid://2383375247"

Close_2.Name = "Close"
Close_2.Parent = PageOne
Close_2.BackgroundColor3 = Color3.new(0, 0, 0)
Close_2.BackgroundTransparency = 1
Close_2.BorderColor3 = Color3.new(1, 1, 1)
Close_2.BorderSizePixel = 0
Close_2.Position = UDim2.new(-1.15294135, 500, 1.03108263, 0)
Close_2.Size = UDim2.new(0, 121, 0, 44)

Frame_30.Parent = Close_2
Frame_30.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_30.BackgroundTransparency = 0.30000001192093
Frame_30.BorderSizePixel = 0
Frame_30.Position = UDim2.new(1, 0, 0, 0)
Frame_30.Size = UDim2.new(0, 6, 0, 44)

Frame_31.Parent = Close_2
Frame_31.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_31.BackgroundTransparency = 0.30000001192093
Frame_31.BorderSizePixel = 0
Frame_31.Position = UDim2.new(-0.0495867766, 0, 1, 0)
Frame_31.Size = UDim2.new(0, 133, 0, 6)

Frame_32.Parent = Close_2
Frame_32.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_32.BackgroundTransparency = 0.30000001192093
Frame_32.BorderSizePixel = 0
Frame_32.Position = UDim2.new(-0.0495867729, 0, 0, 0)
Frame_32.Size = UDim2.new(0, 6, 0, 44)

Frame_33.Parent = Close_2
Frame_33.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_33.BackgroundTransparency = 0.30000001192093
Frame_33.BorderSizePixel = 0
Frame_33.Position = UDim2.new(-0.0495867766, 0, -0.136363626, 0)
Frame_33.Size = UDim2.new(0, 133, 0, 6)

CloseButton_2.Name = "CloseButton"
CloseButton_2.Parent = Close_2
CloseButton_2.Active = false
CloseButton_2.BackgroundColor3 = Color3.new(0, 0, 0)
CloseButton_2.BackgroundTransparency = 0.5
CloseButton_2.BorderSizePixel = 0
CloseButton_2.Size = UDim2.new(0, 121, 0, 44)
CloseButton_2.Font = Enum.Font.Cartoon
CloseButton_2.Text = "Close"
CloseButton_2.TextColor3 = Color3.new(1, 1, 1)
CloseButton_2.TextSize = 25

EscapePrison.Name = "EscapePrison"
EscapePrison.Parent = PageOne
EscapePrison.BackgroundColor3 = Color3.new(0, 0, 0)
EscapePrison.BackgroundTransparency = 1
EscapePrison.BorderColor3 = Color3.new(1, 1, 1)
EscapePrison.BorderSizePixel = 0
EscapePrison.Position = UDim2.new(-1.87647057, 500, 0.0365923047, 0)
EscapePrison.Size = UDim2.new(0, 121, 0, 44)

EscPriB.Name = "EscPriB"
EscPriB.Parent = EscapePrison
EscPriB.Active = false
EscPriB.BackgroundColor3 = Color3.new(0, 0, 0)
EscPriB.BackgroundTransparency = 0.5
EscPriB.BorderSizePixel = 0
EscPriB.Size = UDim2.new(0, 121, 0, 44)
EscPriB.Font = Enum.Font.Cartoon
EscPriB.Text = "Teleport"
EscPriB.TextColor3 = Color3.new(1, 1, 1)
EscPriB.TextSize = 25

PrisonGateO.Name = "PrisonGateO"
PrisonGateO.Parent = PageOne
PrisonGateO.BackgroundColor3 = Color3.new(0, 0, 0)
PrisonGateO.BackgroundTransparency = 1
PrisonGateO.BorderColor3 = Color3.new(1, 1, 1)
PrisonGateO.BorderSizePixel = 0
PrisonGateO.Position = UDim2.new(-0.423529416, 500, 0.664691448, 0)
PrisonGateO.Size = UDim2.new(0, 121, 0, 44)

PriGatOB.Name = "PriGatOB"
PriGatOB.Parent = PrisonGateO
PriGatOB.Active = false
PriGatOB.BackgroundColor3 = Color3.new(0, 0, 0)
PriGatOB.BackgroundTransparency = 0.5
PriGatOB.BorderSizePixel = 0
PriGatOB.Size = UDim2.new(0, 121, 0, 44)
PriGatOB.Font = Enum.Font.Cartoon
PriGatOB.Text = "Teleport"
PriGatOB.TextColor3 = Color3.new(1, 1, 1)
PriGatOB.TextSize = 25

Text_16.Name = "Text"
Text_16.Parent = PageOne
Text_16.BackgroundColor3 = Color3.new(0, 0, 0)
Text_16.BackgroundTransparency = 1
Text_16.Position = UDim2.new(-0.0511663258, 0, 0.028236717, 0)
Text_16.Size = UDim2.new(0, 200, 0, 50)
Text_16.Font = Enum.Font.Cartoon
Text_16.Text = "Escape Prison"
Text_16.TextColor3 = Color3.new(1, 1, 1)
Text_16.TextSize = 25

Text_17.Name = "Text"
Text_17.Parent = PageOne
Text_17.BackgroundColor3 = Color3.new(0, 0, 0)
Text_17.BackgroundTransparency = 1
Text_17.Position = UDim2.new(-0.0511663258, 0, 0.193526015, 0)
Text_17.Size = UDim2.new(0, 200, 0, 50)
Text_17.Font = Enum.Font.Cartoon
Text_17.Text = "Prison Yard"
Text_17.TextColor3 = Color3.new(1, 1, 1)
Text_17.TextSize = 25

PrisonYard.Name = "PrisonYard"
PrisonYard.Parent = PageOne
PrisonYard.BackgroundColor3 = Color3.new(0, 0, 0)
PrisonYard.BackgroundTransparency = 1
PrisonYard.BorderColor3 = Color3.new(1, 1, 1)
PrisonYard.BorderSizePixel = 0
PrisonYard.Position = UDim2.new(-1.8794117, 500, 0.193617105, 0)
PrisonYard.Size = UDim2.new(0, 121, 0, 44)

PriYarB.Name = "PriYarB"
PriYarB.Parent = PrisonYard
PriYarB.Active = false
PriYarB.BackgroundColor3 = Color3.new(0, 0, 0)
PriYarB.BackgroundTransparency = 0.5
PriYarB.BorderSizePixel = 0
PriYarB.Size = UDim2.new(0, 121, 0, 44)
PriYarB.Font = Enum.Font.Cartoon
PriYarB.Text = "Teleport"
PriYarB.TextColor3 = Color3.new(1, 1, 1)
PriYarB.TextSize = 25

Text_18.Name = "Text"
Text_18.Parent = PageOne
Text_18.BackgroundColor3 = Color3.new(0, 0, 0)
Text_18.BackgroundTransparency = 1
Text_18.Position = UDim2.new(0.454882354, 0, 0.462272763, 0)
Text_18.Size = UDim2.new(0, 200, 0, 50)
Text_18.Font = Enum.Font.Cartoon
Text_18.Text = "Prison Gate"
Text_18.TextColor3 = Color3.new(1, 1, 1)
Text_18.TextSize = 25

Text_19.Name = "Text"
Text_19.Parent = PageOne
Text_19.BackgroundColor3 = Color3.new(0, 0, 0)
Text_19.BackgroundTransparency = 1
Text_19.Position = UDim2.new(-0.0511663258, 0, 0.336776704, 0)
Text_19.Size = UDim2.new(0, 200, 0, 50)
Text_19.Font = Enum.Font.Cartoon
Text_19.Text = "Criminal Base"
Text_19.TextColor3 = Color3.new(1, 1, 1)
Text_19.TextSize = 25

CriminalBase.Name = "CriminalBase"
CriminalBase.Parent = PageOne
CriminalBase.BackgroundColor3 = Color3.new(0, 0, 0)
CriminalBase.BackgroundTransparency = 1
CriminalBase.BorderColor3 = Color3.new(1, 1, 1)
CriminalBase.BorderSizePixel = 0
CriminalBase.Position = UDim2.new(-1.87600005, 500, 0.344999999, 0)
CriminalBase.Size = UDim2.new(0, 121, 0, 44)

CriBasB.Name = "CriBasB"
CriBasB.Parent = CriminalBase
CriBasB.Active = false
CriBasB.BackgroundColor3 = Color3.new(0, 0, 0)
CriBasB.BackgroundTransparency = 0.5
CriBasB.BorderSizePixel = 0
CriBasB.Size = UDim2.new(0, 121, 0, 44)
CriBasB.Font = Enum.Font.Cartoon
CriBasB.Text = "Teleport"
CriBasB.TextColor3 = Color3.new(1, 1, 1)
CriBasB.TextSize = 25

PrisonGateI.Name = "PrisonGateI"
PrisonGateI.Parent = PageOne
PrisonGateI.BackgroundColor3 = Color3.new(0, 0, 0)
PrisonGateI.BackgroundTransparency = 1
PrisonGateI.BorderColor3 = Color3.new(1, 1, 1)
PrisonGateI.BorderSizePixel = 0
PrisonGateI.Position = UDim2.new(-0.423529387, 500, 0.499402225, 0)
PrisonGateI.Size = UDim2.new(0, 121, 0, 44)

PriGatIB.Name = "PriGatIB"
PriGatIB.Parent = PrisonGateI
PriGatIB.Active = false
PriGatIB.BackgroundColor3 = Color3.new(0, 0, 0)
PriGatIB.BackgroundTransparency = 0.5
PriGatIB.BorderSizePixel = 0
PriGatIB.Size = UDim2.new(0, 121, 0, 44)
PriGatIB.Font = Enum.Font.Cartoon
PriGatIB.Text = "Teleport"
PriGatIB.TextColor3 = Color3.new(1, 1, 1)
PriGatIB.TextSize = 25

Text_20.Name = "Text"
Text_20.Parent = PageOne
Text_20.BackgroundColor3 = Color3.new(0, 0, 0)
Text_20.BackgroundTransparency = 1
Text_20.Position = UDim2.new(-0.0511663258, 0, 0.463498473, 0)
Text_20.Size = UDim2.new(0, 200, 0, 50)
Text_20.Font = Enum.Font.Cartoon
Text_20.Text = "Prison Yard"
Text_20.TextColor3 = Color3.new(1, 1, 1)
Text_20.TextSize = 25

PrisonYardT.Name = "PrisonYardT"
PrisonYardT.Parent = PageOne
PrisonYardT.BackgroundColor3 = Color3.new(0, 0, 0)
PrisonYardT.BackgroundTransparency = 1
PrisonYardT.BorderColor3 = Color3.new(1, 1, 1)
PrisonYardT.BorderSizePixel = 0
PrisonYardT.Position = UDim2.new(-1.87647057, 500, 0.499402225, 0)
PrisonYardT.Size = UDim2.new(0, 121, 0, 44)

PriYarTB.Name = "PriYarTB"
PriYarTB.Parent = PrisonYardT
PriYarTB.Active = false
PriYarTB.BackgroundColor3 = Color3.new(0, 0, 0)
PriYarTB.BackgroundTransparency = 0.5
PriYarTB.BorderSizePixel = 0
PriYarTB.Size = UDim2.new(0, 121, 0, 44)
PriYarTB.Font = Enum.Font.Cartoon
PriYarTB.Text = "Teleport"
PriYarTB.TextColor3 = Color3.new(1, 1, 1)
PriYarTB.TextSize = 25

Text_21.Name = "Text"
Text_21.Parent = PageOne
Text_21.BackgroundColor3 = Color3.new(0, 0, 0)
Text_21.BackgroundTransparency = 1
Text_21.Position = UDim2.new(-0.050999999, 0, 0.65511024, 0)
Text_21.Size = UDim2.new(0, 200, 0, 50)
Text_21.Font = Enum.Font.Cartoon
Text_21.Text = "Guards Room"
Text_21.TextColor3 = Color3.new(1, 1, 1)
Text_21.TextSize = 25

GuardsRoom.Name = "GuardsRoom"
GuardsRoom.Parent = PageOne
GuardsRoom.BackgroundColor3 = Color3.new(0, 0, 0)
GuardsRoom.BackgroundTransparency = 1
GuardsRoom.BorderColor3 = Color3.new(1, 1, 1)
GuardsRoom.BorderSizePixel = 0
GuardsRoom.Position = UDim2.new(-1.87647057, 500, 0.664691448, 0)
GuardsRoom.Size = UDim2.new(0, 121, 0, 44)

GuaRooB.Name = "GuaRooB"
GuaRooB.Parent = GuardsRoom
GuaRooB.Active = false
GuaRooB.BackgroundColor3 = Color3.new(0, 0, 0)
GuaRooB.BackgroundTransparency = 0.5
GuaRooB.BorderSizePixel = 0
GuaRooB.Size = UDim2.new(0, 121, 0, 44)
GuaRooB.Font = Enum.Font.Cartoon
GuaRooB.Text = "Teleport"
GuaRooB.TextColor3 = Color3.new(1, 1, 1)
GuaRooB.TextSize = 25

PrisonCafeteria.Name = "PrisonCafeteria"
PrisonCafeteria.Parent = PageOne
PrisonCafeteria.BackgroundColor3 = Color3.new(0, 0, 0)
PrisonCafeteria.BackgroundTransparency = 1
PrisonCafeteria.BorderColor3 = Color3.new(1, 1, 1)
PrisonCafeteria.BorderSizePixel = 0
PrisonCafeteria.Position = UDim2.new(-1.87647057, 500, 0.829980731, 0)
PrisonCafeteria.Size = UDim2.new(0, 121, 0, 44)

PriCafB.Name = "PriCafB"
PriCafB.Parent = PrisonCafeteria
PriCafB.Active = false
PriCafB.BackgroundColor3 = Color3.new(0, 0, 0)
PriCafB.BackgroundTransparency = 0.5
PriCafB.BorderSizePixel = 0
PriCafB.Size = UDim2.new(0, 121, 0, 44)
PriCafB.Font = Enum.Font.Cartoon
PriCafB.Text = "Teleport"
PriCafB.TextColor3 = Color3.new(1, 1, 1)
PriCafB.TextSize = 25

Text_22.Name = "Text"
Text_22.Parent = PageOne
Text_22.BackgroundColor3 = Color3.new(0, 0, 0)
Text_22.BackgroundTransparency = 1
Text_22.Position = UDim2.new(0.460764706, 0, 0.0270110369, 0)
Text_22.Size = UDim2.new(0, 200, 0, 50)
Text_22.Font = Enum.Font.Cartoon
Text_22.Text = "Prison Cells"
Text_22.TextColor3 = Color3.new(1, 1, 1)
Text_22.TextSize = 25

Text_23.Name = "Text"
Text_23.Parent = PageOne
Text_23.BackgroundColor3 = Color3.new(0, 0, 0)
Text_23.BackgroundTransparency = 1
Text_23.Position = UDim2.new(0.460764706, 0, 0.335550994, 0)
Text_23.Size = UDim2.new(0, 200, 0, 50)
Text_23.Font = Enum.Font.Cartoon
Text_23.Text = "Prison Roof"
Text_23.TextColor3 = Color3.new(1, 1, 1)
Text_23.TextSize = 25

PrisonCells.Name = "PrisonCells"
PrisonCells.Parent = PageOne
PrisonCells.BackgroundColor3 = Color3.new(0, 0, 0)
PrisonCells.BackgroundTransparency = 1
PrisonCells.BorderColor3 = Color3.new(1, 1, 1)
PrisonCells.BorderSizePixel = 0
PrisonCells.Position = UDim2.new(-0.420588136, 500, 0.0365922302, 0)
PrisonCells.Size = UDim2.new(0, 121, 0, 44)

PriCelB.Name = "PriCelB"
PriCelB.Parent = PrisonCells
PriCelB.Active = false
PriCelB.BackgroundColor3 = Color3.new(0, 0, 0)
PriCelB.BackgroundTransparency = 0.5
PriCelB.BorderSizePixel = 0
PriCelB.Size = UDim2.new(0, 121, 0, 44)
PriCelB.Font = Enum.Font.Cartoon
PriCelB.Text = "Teleport"
PriCelB.TextColor3 = Color3.new(1, 1, 1)
PriCelB.TextSize = 25

Text_24.Name = "Text"
Text_24.Parent = PageOne
Text_24.BackgroundColor3 = Color3.new(0, 0, 0)
Text_24.BackgroundTransparency = 1
Text_24.Position = UDim2.new(0.460764706, 0, 0.627562046, 0)
Text_24.Size = UDim2.new(0, 200, 0, 50)
Text_24.Font = Enum.Font.Cartoon
Text_24.Text = "Prison Gate"
Text_24.TextColor3 = Color3.new(1, 1, 1)
Text_24.TextSize = 25

Text_25.Name = "Text"
Text_25.Parent = PageOne
Text_25.BackgroundColor3 = Color3.new(0, 0, 0)
Text_25.BackgroundTransparency = 1
Text_25.Position = UDim2.new(0.460764706, 0, 0.184035838, 0)
Text_25.Size = UDim2.new(0, 200, 0, 50)
Text_25.Font = Enum.Font.Cartoon
Text_25.Text = "Gas Station"
Text_25.TextColor3 = Color3.new(1, 1, 1)
Text_25.TextSize = 25

GasStation.Name = "GasStation"
GasStation.Parent = PageOne
GasStation.BackgroundColor3 = Color3.new(0, 0, 0)
GasStation.BackgroundTransparency = 1
GasStation.BorderColor3 = Color3.new(1, 1, 1)
GasStation.BorderSizePixel = 0
GasStation.Position = UDim2.new(-0.420588136, 500, 0.193617016, 0)
GasStation.Size = UDim2.new(0, 121, 0, 44)

GasStaB.Name = "GasStaB"
GasStaB.Parent = GasStation
GasStaB.Active = false
GasStaB.BackgroundColor3 = Color3.new(0, 0, 0)
GasStaB.BackgroundTransparency = 0.5
GasStaB.BorderSizePixel = 0
GasStaB.Size = UDim2.new(0, 121, 0, 44)
GasStaB.Font = Enum.Font.Cartoon
GasStaB.Text = "Teleport"
GasStaB.TextColor3 = Color3.new(1, 1, 1)
GasStaB.TextSize = 25

PrisonGateCR.Name = "PrisonGateCR"
PrisonGateCR.Parent = PageOne
PrisonGateCR.BackgroundColor3 = Color3.new(0, 0, 0)
PrisonGateCR.BackgroundTransparency = 1
PrisonGateCR.BorderColor3 = Color3.new(1, 1, 1)
PrisonGateCR.BorderSizePixel = 0
PrisonGateCR.Position = UDim2.new(-0.426470608, 500, 0.829980731, 0)
PrisonGateCR.Size = UDim2.new(0, 121, 0, 44)

PriGatCRB.Name = "PriGatCRB"
PriGatCRB.Parent = PrisonGateCR
PriGatCRB.Active = false
PriGatCRB.BackgroundColor3 = Color3.new(0, 0, 0)
PriGatCRB.BackgroundTransparency = 0.5
PriGatCRB.BorderSizePixel = 0
PriGatCRB.Size = UDim2.new(0, 121, 0, 44)
PriGatCRB.Font = Enum.Font.Cartoon
PriGatCRB.Text = "Teleport"
PriGatCRB.TextColor3 = Color3.new(1, 1, 1)
PriGatCRB.TextSize = 25

PrisonRoof.Name = "PrisonRoof"
PrisonRoof.Parent = PageOne
PrisonRoof.BackgroundColor3 = Color3.new(0, 0, 0)
PrisonRoof.BackgroundTransparency = 1
PrisonRoof.BorderColor3 = Color3.new(1, 1, 1)
PrisonRoof.BorderSizePixel = 0
PrisonRoof.Position = UDim2.new(-0.423529416, 500, 0.345132232, 0)
PrisonRoof.Size = UDim2.new(0, 121, 0, 44)

PriRooB.Name = "PriRooB"
PriRooB.Parent = PrisonRoof
PriRooB.Active = false
PriRooB.BackgroundColor3 = Color3.new(0, 0, 0)
PriRooB.BackgroundTransparency = 0.5
PriRooB.BorderSizePixel = 0
PriRooB.Size = UDim2.new(0, 121, 0, 44)
PriRooB.Font = Enum.Font.Cartoon
PriRooB.Text = "Teleport"
PriRooB.TextColor3 = Color3.new(1, 1, 1)
PriRooB.TextSize = 25

Text_26.Name = "Text"
Text_26.Parent = PageOne
Text_26.BackgroundColor3 = Color3.new(0, 0, 0)
Text_26.BackgroundTransparency = 1
Text_26.Position = UDim2.new(0.460764706, 0, 0.795606136, 0)
Text_26.Size = UDim2.new(0, 200, 0, 50)
Text_26.Font = Enum.Font.Cartoon
Text_26.Text = "Prison Gate"
Text_26.TextColor3 = Color3.new(1, 1, 1)
Text_26.TextSize = 25

Text_27.Name = "Text"
Text_27.Parent = PageOne
Text_27.BackgroundColor3 = Color3.new(0, 0, 0)
Text_27.BackgroundTransparency = 1
Text_27.Position = UDim2.new(-0.0511663258, 0, 0.518594921, 0)
Text_27.Size = UDim2.new(0, 200, 0, 50)
Text_27.Font = Enum.Font.Cartoon
Text_27.Text = "Tower"
Text_27.TextColor3 = Color3.new(1, 1, 1)
Text_27.TextSize = 25

Text_28.Name = "Text"
Text_28.Parent = PageOne
Text_28.BackgroundColor3 = Color3.new(0, 0, 0)
Text_28.BackgroundTransparency = 1
Text_28.Position = UDim2.new(-0.050999999, 1, 0.819999993, 0)
Text_28.Size = UDim2.new(0, 200, 0, 50)
Text_28.Font = Enum.Font.Cartoon
Text_28.Text = "Prison Cafeteria"
Text_28.TextColor3 = Color3.new(1, 1, 1)
Text_28.TextSize = 25

Text_29.Name = "Text"
Text_29.Parent = PageOne
Text_29.BackgroundColor3 = Color3.new(0, 0, 0)
Text_29.BackgroundTransparency = 1
Text_29.Position = UDim2.new(0.454882354, 0, 0.517369211, 0)
Text_29.Size = UDim2.new(0, 200, 0, 50)
Text_29.Font = Enum.Font.Cartoon
Text_29.Text = "Inside"
Text_29.TextColor3 = Color3.new(1, 1, 1)
Text_29.TextSize = 25

Text_30.Name = "Text"
Text_30.Parent = PageOne
Text_30.BackgroundColor3 = Color3.new(0, 0, 0)
Text_30.BackgroundTransparency = 1
Text_30.Position = UDim2.new(0.460764706, 0, 0.679903626, 0)
Text_30.Size = UDim2.new(0, 200, 0, 50)
Text_30.Font = Enum.Font.Cartoon
Text_30.Text = "Outside"
Text_30.TextColor3 = Color3.new(1, 1, 1)
Text_30.TextSize = 25

Text_31.Name = "Text"
Text_31.Parent = PageOne
Text_31.BackgroundColor3 = Color3.new(0, 0, 0)
Text_31.BackgroundTransparency = 1
Text_31.Position = UDim2.new(0.460999995, 0, 0.845000029, 1)
Text_31.Size = UDim2.new(0, 200, 0, 50)
Text_31.Font = Enum.Font.Cartoon
Text_31.Text = "Control Room"
Text_31.TextColor3 = Color3.new(1, 1, 1)
Text_31.TextSize = 25

PageMainButton.Name = "PageMainButton"
PageMainButton.Parent = PageOne
PageMainButton.BackgroundColor3 = Color3.new(0, 0, 0)
PageMainButton.BackgroundTransparency = 0.5
PageMainButton.BorderColor3 = Color3.new(1, 1, 1)
PageMainButton.BorderSizePixel = 0
PageMainButton.Position = UDim2.new(-1.39705884, 500, 1.04400003, 0)
PageMainButton.Size = UDim2.new(0, 65, 0, 34)

Frame_34.Parent = PageMainButton
Frame_34.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_34.BackgroundTransparency = 0.30000001192093
Frame_34.BorderSizePixel = 0
Frame_34.Position = UDim2.new(1, 0, 0.0294117648, 0)
Frame_34.Size = UDim2.new(0, 3, 0, 33)

Frame_35.Parent = PageMainButton
Frame_35.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_35.BackgroundTransparency = 0.30000001192093
Frame_35.BorderSizePixel = 0
Frame_35.Position = UDim2.new(-0.0461538471, 0, 1, 0)
Frame_35.Size = UDim2.new(0, 71, 0, 3)

Frame_36.Parent = PageMainButton
Frame_36.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_36.BackgroundTransparency = 0.30000001192093
Frame_36.BorderSizePixel = 0
Frame_36.Position = UDim2.new(-0.0461538471, 0, 0.0294117648, 0)
Frame_36.Size = UDim2.new(0, 3, 0, 33)

Frame_37.Parent = PageMainButton
Frame_37.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_37.BackgroundTransparency = 0.30000001192093
Frame_37.BorderSizePixel = 0
Frame_37.Position = UDim2.new(-0.0461538471, 0, -0.0588235296, 0)
Frame_37.Size = UDim2.new(0, 71, 0, 3)

PageMainB.Name = "PageMainB"
PageMainB.Parent = PageMainButton
PageMainB.BackgroundColor3 = Color3.new(1, 1, 1)
PageMainB.BackgroundTransparency = 1
PageMainB.Position = UDim2.new(0.169230774, 0, 0, 0)
PageMainB.Size = UDim2.new(0, 42, 0, 34)
PageMainB.Image = "rbxassetid://2383375247"
PageMainB.ImageRectOffset = Vector2.new(420, 0)
PageMainB.ImageRectSize = Vector2.new(-420, 420)

Frame_38.Parent = PageOne
Frame_38.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_38.BackgroundTransparency = 0.30000001192093
Frame_38.BorderSizePixel = 0
Frame_38.Position = UDim2.new(0.491176456, 0, 0, 0)
Frame_38.Size = UDim2.new(0, 5, 0, 363)

PageTwo.Name = "PageTwo"
PageTwo.Parent = VillanityGUIV3
PageTwo.BackgroundColor3 = Color3.new(0, 0, 0)
PageTwo.BackgroundTransparency = 0.5
PageTwo.BorderColor3 = Color3.new(0, 0, 0)
PageTwo.BorderSizePixel = 0
PageTwo.Position = UDim2.new(0.5, -170, 0.5, -182)
PageTwo.Size = UDim2.new(0, 340, 0, 363)
PageTwo.Visible = false

Frame_39.Parent = PageTwo
Frame_39.BackgroundColor3 = Color3.new(0, 0, 0)
Frame_39.BackgroundTransparency = 0.40000000596046
Frame_39.BorderSizePixel = 0
Frame_39.Position = UDim2.new(0, 0, -0.187110379, 0)
Frame_39.Size = UDim2.new(0, 340, 0, 57)

Frame_40.Parent = PageTwo
Frame_40.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_40.BackgroundTransparency = 0.30000001192093
Frame_40.BorderSizePixel = 0
Frame_40.Position = UDim2.new(0, 0, -0.0290706288, 0)
Frame_40.Size = UDim2.new(0, 340, 0, 11)

Frame_41.Parent = PageTwo
Frame_41.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_41.BackgroundTransparency = 0.30000001192093
Frame_41.BorderSizePixel = 0
Frame_41.Position = UDim2.new(0, 0, -0.199869528, 0)
Frame_41.Size = UDim2.new(0, 340, 0, 5)

Text_32.Name = "Text"
Text_32.Parent = Frame_41
Text_32.BackgroundColor3 = Color3.new(1, 1, 1)
Text_32.BackgroundTransparency = 1
Text_32.BorderSizePixel = 0
Text_32.Position = UDim2.new(0.153058887, 0, -2.60000038, 0)
Text_32.Size = UDim2.new(0, 234, 0, 67)
Text_32.Font = Enum.Font.Cartoon
Text_32.Text = "Villanity GUI V3"
Text_32.TextColor3 = Color3.new(1, 1, 1)
Text_32.TextSize = 40

Text_33.Name = "Text"
Text_33.Parent = Frame_41
Text_33.BackgroundColor3 = Color3.new(1, 1, 1)
Text_33.BackgroundTransparency = 1
Text_33.BorderSizePixel = 0
Text_33.Position = UDim2.new(0.156000003, 0, 3.20000005, 0)
Text_33.Size = UDim2.new(0, 234, 0, 67)
Text_33.Font = Enum.Font.Cartoon
Text_33.Text = "Prison Life - Player"
Text_33.TextColor3 = Color3.new(1, 1, 1)
Text_33.TextSize = 30

Frame_42.Parent = PageTwo
Frame_42.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_42.BackgroundTransparency = 0.30000001192093
Frame_42.BorderSizePixel = 0
Frame_42.Position = UDim2.new(1, 0, -0.217630848, 0)
Frame_42.Size = UDim2.new(0, 5, 0, 453)

Frame_43.Parent = PageTwo
Frame_43.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_43.BackgroundTransparency = 0.30000001192093
Frame_43.BorderSizePixel = 0
Frame_43.Position = UDim2.new(0, 0, 1.00123239, 0)
Frame_43.Size = UDim2.new(0, 340, 0, 5)

Frame_44.Parent = PageTwo
Frame_44.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_44.BackgroundTransparency = 0.30000001192093
Frame_44.BorderSizePixel = 0
Frame_44.Position = UDim2.new(-0.0147058647, 0, -0.217630848, 0)
Frame_44.Size = UDim2.new(0, 5, 0, 453)

Frame_45.Parent = PageTwo
Frame_45.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_45.BackgroundTransparency = 0.30000001192093
Frame_45.BorderSizePixel = 0
Frame_45.Position = UDim2.new(0.491176456, 0, 0.490358114, 0)
Frame_45.Size = UDim2.new(0, 5, 0, 185)

Close_3.Name = "Close"
Close_3.Parent = PageTwo
Close_3.BackgroundColor3 = Color3.new(0, 0, 0)
Close_3.BackgroundTransparency = 1
Close_3.BorderColor3 = Color3.new(1, 1, 1)
Close_3.BorderSizePixel = 0
Close_3.Position = UDim2.new(-1.15294135, 500, 1.03108263, 0)
Close_3.Size = UDim2.new(0, 121, 0, 44)

Frame_46.Parent = Close_3
Frame_46.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_46.BackgroundTransparency = 0.30000001192093
Frame_46.BorderSizePixel = 0
Frame_46.Position = UDim2.new(1, 0, 0, 0)
Frame_46.Size = UDim2.new(0, 6, 0, 44)

Frame_47.Parent = Close_3
Frame_47.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_47.BackgroundTransparency = 0.30000001192093
Frame_47.BorderSizePixel = 0
Frame_47.Position = UDim2.new(-0.0495867766, 0, 1, 0)
Frame_47.Size = UDim2.new(0, 133, 0, 6)

Frame_48.Parent = Close_3
Frame_48.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_48.BackgroundTransparency = 0.30000001192093
Frame_48.BorderSizePixel = 0
Frame_48.Position = UDim2.new(-0.0495867729, 0, 0, 0)
Frame_48.Size = UDim2.new(0, 6, 0, 44)

Frame_49.Parent = Close_3
Frame_49.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_49.BackgroundTransparency = 0.30000001192093
Frame_49.BorderSizePixel = 0
Frame_49.Position = UDim2.new(-0.0495867766, 0, -0.136363626, 0)
Frame_49.Size = UDim2.new(0, 133, 0, 6)

CloseButton_3.Name = "CloseButton"
CloseButton_3.Parent = Close_3
CloseButton_3.Active = false
CloseButton_3.BackgroundColor3 = Color3.new(0, 0, 0)
CloseButton_3.BackgroundTransparency = 0.5
CloseButton_3.BorderSizePixel = 0
CloseButton_3.Size = UDim2.new(0, 121, 0, 44)
CloseButton_3.Font = Enum.Font.Cartoon
CloseButton_3.Text = "Close"
CloseButton_3.TextColor3 = Color3.new(1, 1, 1)
CloseButton_3.TextSize = 25

Text_34.Name = "Text"
Text_34.Parent = PageTwo
Text_34.BackgroundColor3 = Color3.new(0, 0, 0)
Text_34.BackgroundTransparency = 1
Text_34.Position = UDim2.new(0.460764706, 0, 0.489820957, 0)
Text_34.Size = UDim2.new(0, 200, 0, 50)
Text_34.Font = Enum.Font.Cartoon
Text_34.Text = "+5 Walk Speed"
Text_34.TextColor3 = Color3.new(1, 1, 1)
Text_34.TextSize = 25

M5Speed.Name = "M5Speed"
M5Speed.Parent = PageTwo
M5Speed.BackgroundColor3 = Color3.new(0, 0, 0)
M5Speed.BackgroundTransparency = 1
M5Speed.BorderColor3 = Color3.new(1, 1, 1)
M5Speed.BorderSizePixel = 0
M5Speed.Position = UDim2.new(-0.423529416, 500, 0.664691448, 0)
M5Speed.Size = UDim2.new(0, 121, 0, 44)

M5SpeedB.Name = "M5SpeedB"
M5SpeedB.Parent = M5Speed
M5SpeedB.Active = false
M5SpeedB.BackgroundColor3 = Color3.new(0, 0, 0)
M5SpeedB.BackgroundTransparency = 0.5
M5SpeedB.BorderSizePixel = 0
M5SpeedB.Size = UDim2.new(0, 121, 0, 44)
M5SpeedB.Font = Enum.Font.Cartoon
M5SpeedB.Text = "Execute"
M5SpeedB.TextColor3 = Color3.new(1, 1, 1)
M5SpeedB.TextSize = 25

PageOneBack.Name = "PageOneBack"
PageOneBack.Parent = PageTwo
PageOneBack.BackgroundColor3 = Color3.new(0, 0, 0)
PageOneBack.BackgroundTransparency = 0.5
PageOneBack.BorderColor3 = Color3.new(1, 1, 1)
PageOneBack.BorderSizePixel = 0
PageOneBack.Position = UDim2.new(-1.39705884, 500, 1.04400003, 0)
PageOneBack.Size = UDim2.new(0, 65, 0, 34)

Frame_50.Parent = PageOneBack
Frame_50.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_50.BackgroundTransparency = 0.30000001192093
Frame_50.BorderSizePixel = 0
Frame_50.Position = UDim2.new(1, 0, 0.0294117648, 0)
Frame_50.Size = UDim2.new(0, 3, 0, 33)

Frame_51.Parent = PageOneBack
Frame_51.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_51.BackgroundTransparency = 0.30000001192093
Frame_51.BorderSizePixel = 0
Frame_51.Position = UDim2.new(-0.0461538471, 0, 1, 0)
Frame_51.Size = UDim2.new(0, 71, 0, 3)

Frame_52.Parent = PageOneBack
Frame_52.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_52.BackgroundTransparency = 0.30000001192093
Frame_52.BorderSizePixel = 0
Frame_52.Position = UDim2.new(-0.0461538471, 0, 0.0294117648, 0)
Frame_52.Size = UDim2.new(0, 3, 0, 33)

Frame_53.Parent = PageOneBack
Frame_53.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_53.BackgroundTransparency = 0.30000001192093
Frame_53.BorderSizePixel = 0
Frame_53.Position = UDim2.new(-0.0461538471, 0, -0.0588235296, 0)
Frame_53.Size = UDim2.new(0, 71, 0, 3)

PageOneBackB.Name = "PageOneBackB"
PageOneBackB.Parent = PageOneBack
PageOneBackB.BackgroundColor3 = Color3.new(1, 1, 1)
PageOneBackB.BackgroundTransparency = 1
PageOneBackB.Position = UDim2.new(0.169230774, 0, 0, 0)
PageOneBackB.Size = UDim2.new(0, 42, 0, 34)
PageOneBackB.Image = "rbxassetid://2383375247"
PageOneBackB.ImageRectOffset = Vector2.new(420, 0)
PageOneBackB.ImageRectSize = Vector2.new(-420, 420)

Text_35.Name = "Text"
Text_35.Parent = PageTwo
Text_35.BackgroundColor3 = Color3.new(0, 0, 0)
Text_35.BackgroundTransparency = 1
Text_35.Position = UDim2.new(-0.0511663258, 0, 0.193526015, 0)
Text_35.Size = UDim2.new(0, 200, 0, 50)
Text_35.Font = Enum.Font.Cartoon
Text_35.Text = "View Player"
Text_35.TextColor3 = Color3.new(1, 1, 1)
Text_35.TextSize = 25

ViewPlayer.Name = "ViewPlayer"
ViewPlayer.Parent = PageTwo
ViewPlayer.BackgroundColor3 = Color3.new(0, 0, 0)
ViewPlayer.BackgroundTransparency = 1
ViewPlayer.BorderColor3 = Color3.new(1, 1, 1)
ViewPlayer.BorderSizePixel = 0
ViewPlayer.Position = UDim2.new(-1.8794117, 500, 0.193617105, 0)
ViewPlayer.Size = UDim2.new(0, 121, 0, 44)

ViePlaB.Name = "ViePlaB"
ViePlaB.Parent = ViewPlayer
ViePlaB.Active = false
ViePlaB.BackgroundColor3 = Color3.new(0, 0, 0)
ViePlaB.BackgroundTransparency = 0.5
ViePlaB.BorderSizePixel = 0
ViePlaB.Size = UDim2.new(0, 121, 0, 44)
ViePlaB.Font = Enum.Font.Cartoon
ViePlaB.Text = "Execute"
ViePlaB.TextColor3 = Color3.new(1, 1, 1)
ViePlaB.TextSize = 25

Frame_54.Parent = PageTwo
Frame_54.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_54.BackgroundTransparency = 0.30000001192093
Frame_54.BorderSizePixel = 0
Frame_54.Position = UDim2.new(0.120588236, 0, 0.201101929, 0)
Frame_54.Size = UDim2.new(0, 258, 0, 5)

Text_36.Name = "Text"
Text_36.Parent = PageTwo
Text_36.BackgroundColor3 = Color3.new(0, 0, 0)
Text_36.BackgroundTransparency = 1
Text_36.Position = UDim2.new(-0.0511663258, 0, 0.336776704, 0)
Text_36.Size = UDim2.new(0, 200, 0, 50)
Text_36.Font = Enum.Font.Cartoon
Text_36.Text = "Goto Player"
Text_36.TextColor3 = Color3.new(1, 1, 1)
Text_36.TextSize = 25

GotoPlayer.Name = "GotoPlayer"
GotoPlayer.Parent = PageTwo
GotoPlayer.BackgroundColor3 = Color3.new(0, 0, 0)
GotoPlayer.BackgroundTransparency = 1
GotoPlayer.BorderColor3 = Color3.new(1, 1, 1)
GotoPlayer.BorderSizePixel = 0
GotoPlayer.Position = UDim2.new(-1.87600005, 500, 0.344999999, 0)
GotoPlayer.Size = UDim2.new(0, 121, 0, 44)

GotPlaB.Name = "GotPlaB"
GotPlaB.Parent = GotoPlayer
GotPlaB.Active = false
GotPlaB.BackgroundColor3 = Color3.new(0, 0, 0)
GotPlaB.BackgroundTransparency = 0.5
GotPlaB.BorderSizePixel = 0
GotPlaB.Size = UDim2.new(0, 121, 0, 44)
GotPlaB.Font = Enum.Font.Cartoon
GotPlaB.Text = "Execute"
GotPlaB.TextColor3 = Color3.new(1, 1, 1)
GotPlaB.TextSize = 25

P5Speed.Name = "P5Speed"
P5Speed.Parent = PageTwo
P5Speed.BackgroundColor3 = Color3.new(0, 0, 0)
P5Speed.BackgroundTransparency = 1
P5Speed.BorderColor3 = Color3.new(1, 1, 1)
P5Speed.BorderSizePixel = 0
P5Speed.Position = UDim2.new(-0.423529387, 500, 0.499402225, 0)
P5Speed.Size = UDim2.new(0, 121, 0, 44)

P5SpeedB.Name = "P5SpeedB"
P5SpeedB.Parent = P5Speed
P5SpeedB.Active = false
P5SpeedB.BackgroundColor3 = Color3.new(0, 0, 0)
P5SpeedB.BackgroundTransparency = 0.5
P5SpeedB.BorderSizePixel = 0
P5SpeedB.Size = UDim2.new(0, 121, 0, 44)
P5SpeedB.Font = Enum.Font.Cartoon
P5SpeedB.Text = "Execute"
P5SpeedB.TextColor3 = Color3.new(1, 1, 1)
P5SpeedB.TextSize = 25

Text_37.Name = "Text"
Text_37.Parent = PageTwo
Text_37.BackgroundColor3 = Color3.new(0, 0, 0)
Text_37.BackgroundTransparency = 1
Text_37.Position = UDim2.new(-0.0511663258, 0, 0.491046667, 0)
Text_37.Size = UDim2.new(0, 200, 0, 50)
Text_37.Font = Enum.Font.Cartoon
Text_37.Text = "+5 Jump Height"
Text_37.TextColor3 = Color3.new(1, 1, 1)
Text_37.TextSize = 25

P5Jump.Name = "P5Jump"
P5Jump.Parent = PageTwo
P5Jump.BackgroundColor3 = Color3.new(0, 0, 0)
P5Jump.BackgroundTransparency = 1
P5Jump.BorderColor3 = Color3.new(1, 1, 1)
P5Jump.BorderSizePixel = 0
P5Jump.Position = UDim2.new(-1.87647057, 500, 0.499402225, 0)
P5Jump.Size = UDim2.new(0, 121, 0, 44)

P5JumpB.Name = "P5JumpB"
P5JumpB.Parent = P5Jump
P5JumpB.Active = false
P5JumpB.BackgroundColor3 = Color3.new(0, 0, 0)
P5JumpB.BackgroundTransparency = 0.5
P5JumpB.BorderSizePixel = 0
P5JumpB.Size = UDim2.new(0, 121, 0, 44)
P5JumpB.Font = Enum.Font.Cartoon
P5JumpB.Text = "Execute"
P5JumpB.TextColor3 = Color3.new(1, 1, 1)
P5JumpB.TextSize = 25

Text_38.Name = "Text"
Text_38.Parent = PageTwo
Text_38.BackgroundColor3 = Color3.new(0, 0, 0)
Text_38.BackgroundTransparency = 1
Text_38.Position = UDim2.new(-0.050999999, 0, 0.65511024, 0)
Text_38.Size = UDim2.new(0, 200, 0, 50)
Text_38.Font = Enum.Font.Cartoon
Text_38.Text = "-5 Jump Height"
Text_38.TextColor3 = Color3.new(1, 1, 1)
Text_38.TextSize = 25

M5Jump.Name = "M5Jump"
M5Jump.Parent = PageTwo
M5Jump.BackgroundColor3 = Color3.new(0, 0, 0)
M5Jump.BackgroundTransparency = 1
M5Jump.BorderColor3 = Color3.new(1, 1, 1)
M5Jump.BorderSizePixel = 0
M5Jump.Position = UDim2.new(-1.87647057, 500, 0.664691448, 0)
M5Jump.Size = UDim2.new(0, 121, 0, 44)

M5JumpB.Name = "M5JumpB"
M5JumpB.Parent = M5Jump
M5JumpB.Active = false
M5JumpB.BackgroundColor3 = Color3.new(0, 0, 0)
M5JumpB.BackgroundTransparency = 0.5
M5JumpB.BorderSizePixel = 0
M5JumpB.Size = UDim2.new(0, 121, 0, 44)
M5JumpB.Font = Enum.Font.Cartoon
M5JumpB.Text = "Execute"
M5JumpB.TextColor3 = Color3.new(1, 1, 1)
M5JumpB.TextSize = 25

Respawn.Name = "Respawn"
Respawn.Parent = PageTwo
Respawn.BackgroundColor3 = Color3.new(0, 0, 0)
Respawn.BackgroundTransparency = 1
Respawn.BorderColor3 = Color3.new(1, 1, 1)
Respawn.BorderSizePixel = 0
Respawn.Position = UDim2.new(-1.87647057, 500, 0.829980731, 0)
Respawn.Size = UDim2.new(0, 121, 0, 44)

ResB.Name = "ResB"
ResB.Parent = Respawn
ResB.Active = false
ResB.BackgroundColor3 = Color3.new(0, 0, 0)
ResB.BackgroundTransparency = 0.5
ResB.BorderSizePixel = 0
ResB.Size = UDim2.new(0, 121, 0, 44)
ResB.Font = Enum.Font.Cartoon
ResB.Text = "Execute"
ResB.TextColor3 = Color3.new(1, 1, 1)
ResB.TextSize = 25

Frame_55.Parent = PageTwo
Frame_55.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_55.BackgroundTransparency = 0.30000001192093
Frame_55.BorderSizePixel = 0
Frame_55.Position = UDim2.new(0.105882362, 0, 0, 0)
Frame_55.Size = UDim2.new(0, 5, 0, 78)

Text_39.Name = "Text"
Text_39.Parent = PageTwo
Text_39.BackgroundColor3 = Color3.new(0, 0, 0)
Text_39.BackgroundTransparency = 1
Text_39.Position = UDim2.new(0.460764706, 0, 0.335550994, 0)
Text_39.Size = UDim2.new(0, 200, 0, 50)
Text_39.Font = Enum.Font.Cartoon
Text_39.Text = "Make Criminal"
Text_39.TextColor3 = Color3.new(1, 1, 1)
Text_39.TextSize = 25

Frame_56.Parent = PageTwo
Frame_56.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_56.BackgroundTransparency = 0.30000001192093
Frame_56.BorderSizePixel = 0
Frame_56.Position = UDim2.new(0.879411757, 0, 0, 0)
Frame_56.Size = UDim2.new(0, 5, 0, 78)

Text_40.Name = "Text"
Text_40.Parent = PageTwo
Text_40.BackgroundColor3 = Color3.new(0, 0, 0)
Text_40.BackgroundTransparency = 1
Text_40.Position = UDim2.new(0.460764706, 0, 0.65511024, 0)
Text_40.Size = UDim2.new(0, 200, 0, 50)
Text_40.Font = Enum.Font.Cartoon
Text_40.Text = "-5 Walk Speed"
Text_40.TextColor3 = Color3.new(1, 1, 1)
Text_40.TextSize = 25

Text_41.Name = "Text"
Text_41.Parent = PageTwo
Text_41.BackgroundColor3 = Color3.new(0, 0, 0)
Text_41.BackgroundTransparency = 1
Text_41.Position = UDim2.new(0.460764706, 0, 0.192300305, 0)
Text_41.Size = UDim2.new(0, 200, 0, 50)
Text_41.Font = Enum.Font.Cartoon
Text_41.Text = "Kill Player"
Text_41.TextColor3 = Color3.new(1, 1, 1)
Text_41.TextSize = 25
Text_41.TextWrapped = true

KillPlayer.Name = "KillPlayer"
KillPlayer.Parent = PageTwo
KillPlayer.BackgroundColor3 = Color3.new(0, 0, 0)
KillPlayer.BackgroundTransparency = 1
KillPlayer.BorderColor3 = Color3.new(1, 1, 1)
KillPlayer.BorderSizePixel = 0
KillPlayer.Position = UDim2.new(-0.420588136, 500, 0.193617016, 0)
KillPlayer.Size = UDim2.new(0, 121, 0, 44)

KilPlaB.Name = "KilPlaB"
KilPlaB.Parent = KillPlayer
KilPlaB.Active = false
KilPlaB.BackgroundColor3 = Color3.new(0, 0, 0)
KilPlaB.BackgroundTransparency = 0.5
KilPlaB.BorderSizePixel = 0
KilPlaB.Size = UDim2.new(0, 121, 0, 44)
KilPlaB.Font = Enum.Font.Cartoon
KilPlaB.Text = "Execute"
KilPlaB.TextColor3 = Color3.new(1, 1, 1)
KilPlaB.TextSize = 25

DefaultSettings.Name = "DefaultSettings"
DefaultSettings.Parent = PageTwo
DefaultSettings.BackgroundColor3 = Color3.new(0, 0, 0)
DefaultSettings.BackgroundTransparency = 1
DefaultSettings.BorderColor3 = Color3.new(1, 1, 1)
DefaultSettings.BorderSizePixel = 0
DefaultSettings.Position = UDim2.new(-0.426470608, 500, 0.829980731, 0)
DefaultSettings.Size = UDim2.new(0, 121, 0, 44)

DefSetB.Name = "DefSetB"
DefSetB.Parent = DefaultSettings
DefSetB.Active = false
DefSetB.BackgroundColor3 = Color3.new(0, 0, 0)
DefSetB.BackgroundTransparency = 0.5
DefSetB.BorderSizePixel = 0
DefSetB.Size = UDim2.new(0, 121, 0, 44)
DefSetB.Font = Enum.Font.Cartoon
DefSetB.Text = "Execute"
DefSetB.TextColor3 = Color3.new(1, 1, 1)
DefSetB.TextSize = 25

MakeCriminal.Name = "MakeCriminal"
MakeCriminal.Parent = PageTwo
MakeCriminal.BackgroundColor3 = Color3.new(0, 0, 0)
MakeCriminal.BackgroundTransparency = 1
MakeCriminal.BorderColor3 = Color3.new(1, 1, 1)
MakeCriminal.BorderSizePixel = 0
MakeCriminal.Position = UDim2.new(-0.423529416, 500, 0.345132232, 0)
MakeCriminal.Size = UDim2.new(0, 121, 0, 44)

MakCriB.Name = "MakCriB"
MakCriB.Parent = MakeCriminal
MakCriB.Active = false
MakCriB.BackgroundColor3 = Color3.new(0, 0, 0)
MakCriB.BackgroundTransparency = 0.5
MakCriB.BorderSizePixel = 0
MakCriB.Size = UDim2.new(0, 121, 0, 44)
MakCriB.Font = Enum.Font.Cartoon
MakCriB.Text = "Execute"
MakCriB.TextColor3 = Color3.new(1, 1, 1)
MakCriB.TextSize = 25

Text_42.Name = "Text"
Text_42.Parent = PageTwo
Text_42.BackgroundColor3 = Color3.new(0, 0, 0)
Text_42.BackgroundTransparency = 1
Text_42.Position = UDim2.new(0.460764706, 0, 0.820399523, 0)
Text_42.Size = UDim2.new(0, 200, 0, 50)
Text_42.Font = Enum.Font.Cartoon
Text_42.Text = "Default Settings"
Text_42.TextColor3 = Color3.new(1, 1, 1)
Text_42.TextSize = 25

PlrNameBox.Name = "PlrNameBox"
PlrNameBox.Parent = PageTwo
PlrNameBox.BackgroundColor3 = Color3.new(1, 1, 1)
PlrNameBox.BackgroundTransparency = 1
PlrNameBox.Position = UDim2.new(0.155882359, 0, 0.052341599, 0)
PlrNameBox.Size = UDim2.new(0, 234, 0, 33)
PlrNameBox.Font = Enum.Font.Cartoon
PlrNameBox.PlaceholderColor3 = Color3.new(1, 1, 1)
PlrNameBox.Text = "Player Name"
PlrNameBox.TextColor3 = Color3.new(1, 1, 1)
PlrNameBox.TextScaled = true
PlrNameBox.TextSize = 20
PlrNameBox.TextWrapped = true

Text_43.Name = "Text"
Text_43.Parent = PageTwo
Text_43.BackgroundColor3 = Color3.new(0, 0, 0)
Text_43.BackgroundTransparency = 1
Text_43.Position = UDim2.new(-0.050999999, 1, 0.819999993, 0)
Text_43.Size = UDim2.new(0, 200, 0, 50)
Text_43.Font = Enum.Font.Cartoon
Text_43.Text = "Respawn"
Text_43.TextColor3 = Color3.new(1, 1, 1)
Text_43.TextSize = 25

Frame_57.Parent = PageTwo
Frame_57.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_57.BackgroundTransparency = 0.30000001192093
Frame_57.BorderSizePixel = 0
Frame_57.Position = UDim2.new(0.894117653, 0, 0.0991735533, 0)
Frame_57.Size = UDim2.new(0, 36, 0, 5)

Frame_58.Parent = PageTwo
Frame_58.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_58.BackgroundTransparency = 0.30000001192093
Frame_58.BorderSizePixel = 0
Frame_58.Position = UDim2.new(0, 0, 0.0991735533, 0)
Frame_58.Size = UDim2.new(0, 36, 0, 5)

Frame_59.Parent = PageTwo
Frame_59.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_59.BackgroundTransparency = 0.30000001192093
Frame_59.BorderSizePixel = 0
Frame_59.Position = UDim2.new(0, 0, 0.476584017, 0)
Frame_59.Size = UDim2.new(0, 340, 0, 5)

Frame_60.Parent = PageTwo
Frame_60.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_60.BackgroundTransparency = 0.30000001192093
Frame_60.BorderSizePixel = 0
Frame_60.Position = UDim2.new(0.491176456, 0, 0.214876026, 0)
Frame_60.Size = UDim2.new(0, 5, 0, 95)

OpenOne.Name = "OpenOne"
OpenOne.Parent = VillanityGUIV3
OpenOne.BackgroundColor3 = Color3.new(0, 0, 0)
OpenOne.BackgroundTransparency = 1
OpenOne.BorderColor3 = Color3.new(1, 1, 1)
OpenOne.BorderSizePixel = 0
OpenOne.Position = UDim2.new(0.0140581066, 0, 0.795202971, 0)
OpenOne.Size = UDim2.new(0, 121, 0, 44)
OpenOne.Visible = false

Frame_61.Parent = OpenOne
Frame_61.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_61.BackgroundTransparency = 0.30000001192093
Frame_61.BorderSizePixel = 0
Frame_61.Position = UDim2.new(-0.0495867766, 0, -0.136363626, 0)
Frame_61.Size = UDim2.new(0, 133, 0, 6)

Frame_62.Parent = OpenOne
Frame_62.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_62.BackgroundTransparency = 0.30000001192093
Frame_62.BorderSizePixel = 0
Frame_62.Position = UDim2.new(-0.0495867766, 0, 1, 0)
Frame_62.Size = UDim2.new(0, 133, 0, 6)

Frame_63.Parent = OpenOne
Frame_63.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_63.BackgroundTransparency = 0.30000001192093
Frame_63.BorderSizePixel = 0
Frame_63.Position = UDim2.new(1, 0, 0, 0)
Frame_63.Size = UDim2.new(0, 6, 0, 44)

Frame_64.Parent = OpenOne
Frame_64.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_64.BackgroundTransparency = 0.30000001192093
Frame_64.BorderSizePixel = 0
Frame_64.Position = UDim2.new(-0.0495867729, 0, 0, 0)
Frame_64.Size = UDim2.new(0, 6, 0, 44)

OpenOneButton.Name = "OpenOneButton"
OpenOneButton.Parent = OpenOne
OpenOneButton.Active = false
OpenOneButton.BackgroundColor3 = Color3.new(0, 0, 0)
OpenOneButton.BackgroundTransparency = 0.5
OpenOneButton.BorderSizePixel = 0
OpenOneButton.Size = UDim2.new(0, 121, 0, 44)
OpenOneButton.Font = Enum.Font.Cartoon
OpenOneButton.Text = "Open"
OpenOneButton.TextColor3 = Color3.new(1, 1, 1)
OpenOneButton.TextSize = 25

OpenTwo.Name = "OpenTwo"
OpenTwo.Parent = VillanityGUIV3
OpenTwo.BackgroundColor3 = Color3.new(0, 0, 0)
OpenTwo.BackgroundTransparency = 1
OpenTwo.BorderColor3 = Color3.new(1, 1, 1)
OpenTwo.BorderSizePixel = 0
OpenTwo.Position = UDim2.new(0.0140581066, 0, 0.795202971, 0)
OpenTwo.Size = UDim2.new(0, 121, 0, 44)
OpenTwo.Visible = false

Frame_65.Parent = OpenTwo
Frame_65.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_65.BackgroundTransparency = 0.30000001192093
Frame_65.BorderSizePixel = 0
Frame_65.Position = UDim2.new(-0.0495867766, 0, -0.136363626, 0)
Frame_65.Size = UDim2.new(0, 133, 0, 6)

Frame_66.Parent = OpenTwo
Frame_66.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_66.BackgroundTransparency = 0.30000001192093
Frame_66.BorderSizePixel = 0
Frame_66.Position = UDim2.new(-0.0495867766, 0, 1, 0)
Frame_66.Size = UDim2.new(0, 133, 0, 6)

Frame_67.Parent = OpenTwo
Frame_67.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_67.BackgroundTransparency = 0.30000001192093
Frame_67.BorderSizePixel = 0
Frame_67.Position = UDim2.new(1, 0, 0, 0)
Frame_67.Size = UDim2.new(0, 6, 0, 44)

Frame_68.Parent = OpenTwo
Frame_68.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_68.BackgroundTransparency = 0.30000001192093
Frame_68.BorderSizePixel = 0
Frame_68.Position = UDim2.new(-0.0495867729, 0, 0, 0)
Frame_68.Size = UDim2.new(0, 6, 0, 44)

OpenTwoButton.Name = "OpenTwoButton"
OpenTwoButton.Parent = OpenTwo
OpenTwoButton.Active = false
OpenTwoButton.BackgroundColor3 = Color3.new(0, 0, 0)
OpenTwoButton.BackgroundTransparency = 0.5
OpenTwoButton.BorderSizePixel = 0
OpenTwoButton.Size = UDim2.new(0, 121, 0, 44)
OpenTwoButton.Font = Enum.Font.Cartoon
OpenTwoButton.Text = "Open"
OpenTwoButton.TextColor3 = Color3.new(1, 1, 1)
OpenTwoButton.TextSize = 25
-- Scripts:

function  plrlist(thing)
for _, v in pairs(game.Players:GetPlayers()) do
if string.find(string.lower(v.Name),string.lower(thing)) then
return v
end
end
end

EscPriB.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(155, 54, 2484)
end)

PriYarB.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(713, 97, 2470)
end)

CriBasB.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-943, 94, 2064)
end)

PriYarTB.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(818, 130, 2571)
end)

GuaRooB.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(836, 99, 2269)
end)

PriCafB.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(943, 99, 2248)
end)

PriCelB.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(917, 99, 2471)
end)

GasStaB.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-518, 54, 1658)
end)

PriRooB.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(873, 118, 2370)
end)

PriGatIB.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(521, 98, 2216)
end)

PriGatOB.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(485, 98, 2216)
end)

PriGatCRB.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(504, 102, 2250)
end)

CloseButton.MouseButton1Down:connect(function()
Main.Visible = false
Open.Visible = true
end)

CloseButton_2.MouseButton1Down:connect(function()
PageOne.Visible = false
OpenOne.Visible = true
end)

CloseButton_3.MouseButton1Down:connect(function()
PageTwo.Visible = false
OpenTwo.Visible = true
end)

PageOneB.MouseButton1Down:connect(function()
Main.Visible = false
PageOne.Visible = true
end)

PageMainB.MouseButton1Down:connect(function()
PageOne.Visible = false
Main.Visible = true
end)

OpenButton.MouseButton1Down:connect(function()
Main.Visible = true
Open.Visible = false
end)

OpenOneButton.MouseButton1Down:connect(function()
PageOne.Visible = true
OpenOne.Visible = false
end)

OpenTwoButton.MouseButton1Down:connect(function()
PageTwo.Visible = true
OpenTwo.Visible = false
end)

PageTwoB.MouseButton1Down:connect(function()
PageTwo.Visible = true
PageOne.Visible = false
end)

PageOneBackB.MouseButton1Down:connect(function()
PageTwo.Visible = false
PageOne.Visible = true
end)

KAOnB.MouseButton1Down:connect(function()
Main.KAOnB.Visible = false
Main.KAOffB.Visible = true

mainRemotes = game.ReplicatedStorage
meleeRemote = mainRemotes['meleeEvent']

killAura = true

contextactionservice = game.ContextActionService

function toggleKillAura(actionName, inputState, inputObject)
print('Doing the action : ' .. actionName)
if inputState == Enum.UserInputState.Begin then
if killAura == true then
killAura = true
else
killAura = true
end
end
end

contextactionservice:BindAction('ToggleKillAura', toggleKillAura, false, Enum.KeyCode.K)

while wait() do
if killAura == true then
for _, plr in pairs (game:GetService('Players'):GetChildren()) do
if plr.Name ~= game.Players.LocalPlayer.Name then
meleeRemote:FireServer(plr)
end
end
end
end
end)

KAOffB.MouseButton1Down:connect(function()
Main.KAOffB.Visible = false
Main.KAOnB.Visible = true

mainRemotes = game.ReplicatedStorage
meleeRemote = mainRemotes['meleeEvent']

killAura = false

contextactionservice = game.ContextActionService

function toggleKillAura(actionName, inputState, inputObject)
print('Doing the action : ' .. actionName)
if inputState == Enum.UserInputState.Begin then
if killAura == true then
killAura = false
else
killAura = false
end
end
end

contextactionservice:BindAction('ToggleKillAura', toggleKillAura, false, Enum.KeyCode.K)

while wait() do
if killAura == true then
for _, plr in pairs (game:GetService('Players'):GetChildren()) do
if plr.Name ~= game.Players.LocalPlayer.Name then
meleeRemote:FireServer(plr)
end
end
end
end
end)

GMOnB.MouseButton1Down:connect(function()
wait(0.1)
Main.GMOnB.Visible = false
Main.GMOffB.Visible = true

lplayer = game:GetService("Players").LocalPlayer

        lplayer.Character.Humanoid.Name = 1
        local l = lplayer.Character["1"]:Clone()
        l.Parent = lplayer.Character
        l.Name = "Humanoid"
        wait(0.1)
        lplayer.Character["1"]:Destroy()
        game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
        lplayer.Character.Animate.Disabled = true
        wait(0.1)
        lplayer.Character.Animate.Disabled             = false
        lplayer.Character.Humanoid.DisplayDistanceType = "None"
end)

GMOffB.MouseButton1Down:connect(function()
wait(0.1)
Main.GMOffB.Visible = false
Main.GMOnB.Visible = true

        lplayer.Character.Humanoid.Health = 0
local a1 = Instance.new("Model", workspace)
local a2 = Instance.new("Part", a1)
a2.CanCollide = true
a2.Anchored = true
a2.CFrame = CFrame.new(10000, 10000, 10000)
a2.Name = "Torso"
local a3 = Instance.new("Humanoid", a1)
a3.MaxHealth=100;a3.Health=100
game.Players.LocalPlayer.Character = a1
a3.Health=0
end)

ViePlaB.MouseButton1Down:connect(function()
	game.Workspace.CurrentCamera.CameraSubject = plrlist(PlrNameBox.Text).Character.Humanoid
end)

GotPlaB.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = plrlist(PlrNameBox.Text).Character.HumanoidRootPart.CFrame
end)

P5JumpB.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.Humanoid.JumpPower = game.Players.LocalPlayer.Character.Humanoid.JumpPower + 5
end)

M5JumpB.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.Humanoid.JumpPower = game.Players.LocalPlayer.Character.Humanoid.JumpPower - 5
end)

P5SpeedB.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed + 5
end)

M5SpeedB.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed - 5
end)

DefSetB.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end)

ResB.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character:BreakJoints()
end)

KilPlaB.MouseButton1Down:connect(function()
local prepos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local success = pcall(function()
Players = game:GetService("Players")
for i, Lplayer in pairs(Players:GetPlayers()) do
if Lplayer.Name == game:GetService("Players").LocalPlayer.Name then
local cmd = workspace:FindFirstChild(Lplayer.Name)
cmd.HumanoidRootPart.CFrame = CFrame.new(863, 110, 2542)
end
end

Players = game:GetService("Players")
for i, player in pairs(Players:GetPlayers()) do
print(player.Name)
if player.Name ~= game:GetService("Players").LocalPlayer.Name then
plrlist(PlrNameBox.Text).Character.HumanoidRootPart.CFrame = CFrame.new(863, 113, 2542)
end
end
end)
	if success then
	wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = prepos
	else
	wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = prepos
		end
end)

MakCriB.MouseButton1Down:connect(function()
local prepos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
Players = game:GetService("Players")
for i, Lplayer in pairs(Players:GetPlayers()) do
if Lplayer.Name == game:GetService("Players").LocalPlayer.Name then
local cmd = workspace:FindFirstChild(Lplayer.Name)
cmd.HumanoidRootPart.CFrame = CFrame.new(-911, 95, 2138)
end
end

Players = game:GetService("Players")
for i, player in pairs(Players:GetPlayers()) do
print(player.Name)
if player.Name ~= game:GetService("Players").LocalPlayer.Name then
plrlist(PlrNameBox.Text).Character.HumanoidRootPart.CFrame = CFrame.new(-920, 95, 2138)
end
end

wait(0.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = prepos
Players = game:GetService("Players")
for i, Lplayer in pairs(Players:GetPlayers()) do
if Lplayer.Name == game:GetService("Players").LocalPlayer.Name then
local cmd = workspace:FindFirstChild(Lplayer.Name)
cmd.HumanoidRootPart.CFrame = CFrame.new(863, 110, 2542)
end
end

Players = game:GetService("Players")
for i, player in pairs(Players:GetPlayers()) do
print(player.Name)
if player.Name ~= game:GetService("Players").LocalPlayer.Name then
plrlist(PlrNameBox.Text).Character.HumanoidRootPart.CFrame = CFrame.new(863, 113, 2542)
end
end
wait(0.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = prepos
end)

player = game.Players.LocalPlayer
toggle = player:GetMouse()

flytoggled = false

toggle.KeyDown:connect(function(t)

if t == "e" then

if flytoggled == false then

flytoggled = true
Main.FlyOnB.Visible = false
Main.FlyOffB.Visible = true
Fly = true
  local mouse=game.Players.LocalPlayer:GetMouse''
  localplayer=game.Players.LocalPlayer
  game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
  local torso = game.Players.LocalPlayer.Character.HumanoidRootPart
  local speed = 3
  local keys  = {a=false,d=false,w=false,s=false} 
  local e1
  local e2
  local function start()
   local pos = Instance.new("BodyPosition",torso)
   local gyro = Instance.new("BodyGyro",torso)
   pos.Name="EPIXPOS"
   pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
   pos.position = torso.Position
   gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
   gyro.cframe = torso.CFrame
   repeat
    wait()
    localplayer.Character.Humanoid.PlatformStand=true
    local new=gyro.cframe - gyro.cframe.p + pos.position
    if not keys.w and not keys.s and not keys.a and not keys.d then
        speed = 3
    end 
    if keys.w then 
     new   = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
     speed = speed+0.00
    end
    if keys.s then 
     new   = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
     speed = speed+0.00
    end
    if keys.d then 
     new   = new * CFrame.new(speed,0,0)
     speed = speed+0.00
    end
    if keys.a then 
     new   = new * CFrame.new(-speed,0,0)
     speed = speed+0.00
    end
 if speed>3 then
     speed = 3
    end
    pos.position=new.p
    if keys.w then
     gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*15),0,0)
    elseif keys.s then
     gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*15),0,0)
    else
     gyro.cframe = workspace.CurrentCamera.CoordinateFrame
    end
   until not Fly
   if gyro then gyro:Destroy() end
   if pos then pos:Destroy() end
   flying                                       = false
   localplayer.Character.Humanoid.PlatformStand = false
   speed                                        = 5
  end
  e1=mouse.KeyDown:connect(function(key)
   if not torso or not torso.Parent then flying=false e1:disconnect() e2:disconnect() return end
   if key=="w" then
    keys.w=true
   elseif key=="s" then
    keys.s=true
   elseif key=="a" then
    keys.a=true
   elseif key=="d" then
    keys.d=true
   end
  end)
  e2=mouse.KeyUp:connect(function(key)
   if key=="w" then
    keys.w=false
   elseif key=="s" then
    keys.s=false
   elseif key=="a" then
    keys.a=false
   elseif key=="d" then
    keys.d=false
   end
  end)
  start()

else

flytoggled = false
Main.FlyOnB.Visible = true
Main.FlyOffB.Visible = false
Fly = false
  local mouse=game.Players.LocalPlayer:GetMouse''
  localplayer=game.Players.LocalPlayer
  game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
  local torso = game.Players.LocalPlayer.Character.HumanoidRootPart
  local speed = 3
  local keys  = {a=false,d=false,w=false,s=false} 
  local e1
  local e2
  local function start()
   local pos = Instance.new("BodyPosition",torso)
   local gyro = Instance.new("BodyGyro",torso)
   pos.Name="EPIXPOS"
   pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
   pos.position = torso.Position
   gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
   gyro.cframe = torso.CFrame
   repeat
    wait()
    localplayer.Character.Humanoid.PlatformStand=true
    local new=gyro.cframe - gyro.cframe.p + pos.position
    if not keys.w and not keys.s and not keys.a and not keys.d then
        speed = 3
    end 
    if keys.w then 
     new   = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
     speed = speed+0.00
    end
    if keys.s then 
     new   = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
     speed = speed+0.00
    end
    if keys.d then 
     new   = new * CFrame.new(speed,0,0)
     speed = speed+0.00
    end
    if keys.a then 
     new   = new * CFrame.new(-speed,0,0)
     speed = speed+0.00
    end
 if speed>3 then
     speed = 3
    end
    pos.position=new.p
    if keys.w then
     gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*15),0,0)
    elseif keys.s then
     gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*15),0,0)
    else
     gyro.cframe = workspace.CurrentCamera.CoordinateFrame
    end
   until not Fly
   if gyro then gyro:Destroy() end
   if pos then pos:Destroy() end
   flying                                       = false
   localplayer.Character.Humanoid.PlatformStand = false
   speed                                        = 5
  end
  e1=mouse.KeyDown:connect(function(key)
   if not torso or not torso.Parent then flying=false e1:disconnect() e2:disconnect() return end
   if key=="w" then
    keys.w=true
   elseif key=="s" then
    keys.s=true
   elseif key=="a" then
    keys.a=true
   elseif key=="d" then
    keys.d=true
   end
  end)
  e2=mouse.KeyUp:connect(function(key)
   if key=="w" then
    keys.w=false
   elseif key=="s" then
    keys.s=false
   elseif key=="a" then
    keys.a=false
   elseif key=="d" then
    keys.d=false
   end
  end)
  start()
end

end
end)

player = game.Players.LocalPlayer
toggletwo = player:GetMouse()

nocliptoggled = false

toggletwo.KeyDown:connect(function(t)

if t == "v" then

if nocliptoggled == false then

nocliptoggled = true
Main.NCOnB.Visible = false
Main.NCOffB.Visible = true

noclip = true
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)

else

nocliptoggled = false
Main.NCOffB.Visible = false
Main.NCOnB.Visible = true

noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
end

end
end)

AllCrimsB.MouseButton1Down:connect(function()
local prepos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local function allcrims()
    for i, player in ipairs(game:GetService("Players"):GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = CFrame.new(-920, 95, 2138)
            player.Character.HumanoidRootPart.CFrame = CFrame.new(-920, 95, 2138)
            player.Character.HumanoidRootPart.CFrame = CFrame.new(-920, 95, 2138)
        end
    end
end
wait(0.1)
local prepos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
allcrims()
wait(0.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = prepos
end)

NCOnB.MouseButton1Down:connect(function()
wait(0.1)
nocliptoggled = true
Main.NCOnB.Visible = false
Main.NCOffB.Visible = true

noclip = true
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
end)

NCOffB.MouseButton1Down:connect(function()
wait(0.1)
nocliptoggled = false
Main.NCOffB.Visible = false
Main.NCOnB.Visible = true

noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
end)

CAOnB.MouseButton1Down:connect(function()
Main.CAOnB.Visible = false
Main.ClickArrestOn.Visible = true
local mouse = game.Players.LocalPlayer:GetMouse()
local arrestEvent = game.Workspace.Remote.arrest
mouse.Button1Down:connect(function()
local obj = mouse.Target
local response = arrestEvent:InvokeServer(obj)
end)
end)

GuardB.MouseButton1Down:connect(function()
wait(0.1)
Workspace.Remote.TeamEvent:FireServer("Bright blue")
end)

InmateB.MouseButton1Down:connect(function()
wait(0.1)
Workspace.Remote.TeamEvent:FireServer("Bright orange") 
end)

KillAllB.MouseButton1Down:connect(function()
wait(0.1)
local prepos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
Players = game:GetService("Players")
for i, Lplayer in pairs(Players:GetPlayers()) do
if Lplayer.Name == game:GetService("Players").LocalPlayer.Name then
local cmd = workspace:FindFirstChild(Lplayer.Name)
cmd.HumanoidRootPart.CFrame = CFrame.new(863, 110, 2542)
end
end


Players = game:GetService("Players")
for i, player in pairs(Players:GetPlayers()) do
print(player.Name)
if player.Name ~= game:GetService("Players").LocalPlayer.Name then
local cmd = workspace:FindFirstChild(player.Name)
cmd.HumanoidRootPart.CFrame = CFrame.new(863, 113, 2542)
end
end
wait(0.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = prepos
end)

ArrestAllB.MouseButton1Down:connect(function()
wait(0.1)
local Player = game.Players.LocalPlayer
local cpos = Player.Character.HumanoidRootPart.CFrame
for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
if v.Name ~= Player.Name then
local i = 10
    repeat
    wait()
    i = i-1
    game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
    Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
    until i == 0
end
end
end)

WepB.MouseButton1Down:connect(function()
wait(0.1)
  local Weapon = {"AK-47"}
for i,v in pairs(workspace.Prison_ITEMS.giver:GetChildren()) do
if v.Name == Weapon[1] then
local lol = workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
end
end

  local Weapon = {"Remington 870"}
for i,v in pairs(workspace.Prison_ITEMS.giver:GetChildren()) do
if v.Name == Weapon[1] then
local lol = workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
end
end

  local Weapon = {"M9"}
for i,v in pairs(workspace.Prison_ITEMS.giver:GetChildren()) do
if v.Name == Weapon[1] then
local lol = workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
end
end
end)

FlyOnB.MouseButton1Down:connect(function()
flytoggled = true
wait(0.1)
Main.FlyOnB.Visible = false
Main.FlyOffB.Visible = true
    Fly = true
  local mouse=game.Players.LocalPlayer:GetMouse''
  localplayer=game.Players.LocalPlayer
  game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
  local torso = game.Players.LocalPlayer.Character.HumanoidRootPart
  local speed = 3
  local keys  = {a=false,d=false,w=false,s=false} 
  local e1
  local e2
  local function start()
   local pos = Instance.new("BodyPosition",torso)
   local gyro = Instance.new("BodyGyro",torso)
   pos.Name="EPIXPOS"
   pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
   pos.position = torso.Position
   gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
   gyro.cframe = torso.CFrame
   repeat
    wait()
    localplayer.Character.Humanoid.PlatformStand=true
    local new=gyro.cframe - gyro.cframe.p + pos.position
    if not keys.w and not keys.s and not keys.a and not keys.d then
        speed = 3
    end 
    if keys.w then 
     new   = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
     speed = speed+0.00
    end
    if keys.s then 
     new   = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
     speed = speed+0.00
    end
    if keys.d then 
     new   = new * CFrame.new(speed,0,0)
     speed = speed+0.00
    end
    if keys.a then 
     new   = new * CFrame.new(-speed,0,0)
     speed = speed+0.00
    end
 if speed>3 then
     speed = 3
    end
    pos.position=new.p
    if keys.w then
     gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*15),0,0)
    elseif keys.s then
     gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*15),0,0)
    else
     gyro.cframe = workspace.CurrentCamera.CoordinateFrame
    end
   until not Fly
   if gyro then gyro:Destroy() end
   if pos then pos:Destroy() end
   flying                                       = false
   localplayer.Character.Humanoid.PlatformStand = false
   speed                                        = 5
  end
  e1=mouse.KeyDown:connect(function(key)
   if not torso or not torso.Parent then flying=false e1:disconnect() e2:disconnect() return end
   if key=="w" then
    keys.w=true
   elseif key=="s" then
    keys.s=true
   elseif key=="a" then
    keys.a=true
   elseif key=="d" then
    keys.d=true
   end
  end)
  e2=mouse.KeyUp:connect(function(key)
   if key=="w" then
    keys.w=false
   elseif key=="s" then
    keys.s=false
   elseif key=="a" then
    keys.a=false
   elseif key=="d" then
    keys.d=false
   end
  end)
  start()
end)

FlyOffB.MouseButton1Down:connect(function()
flytoggled = false
wait(0.1)
Main.FlyOffB.Visible = false
Main.FlyOnB.Visible = true
    Fly = false
  local mouse=game.Players.LocalPlayer:GetMouse''
  localplayer=game.Players.LocalPlayer
  game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
  local torso = game.Players.LocalPlayer.Character.HumanoidRootPart
  local speed=0
  local keys={a=false,d=false,w=false,s=false} 
  local e1
  local e2
  local function start()
   local pos = Instance.new("BodyPosition",torso)
   local gyro = Instance.new("BodyGyro",torso)
   pos.Name="EPIXPOS"
   pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
   pos.position = torso.Position
   gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
   gyro.cframe = torso.CFrame
   repeat
    wait()
    localplayer.Character.Humanoid.PlatformStand=true
    local new=gyro.cframe - gyro.cframe.p + pos.position
    if not keys.w and not keys.s and not keys.a and not keys.d then
     speed=1
    end 
    if keys.w then 
     new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
     speed=speed+0.01
    end
    if keys.s then 
     new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
     speed=speed+0.01
    end
    if keys.d then 
     new = new * CFrame.new(speed,0,0)
     speed=speed+0.01
    end
    if keys.a then 
     new = new * CFrame.new(-speed,0,0)
     speed=speed+0.01
    end
    if speed>5 then
     speed=5
    end
    pos.position=new.p
    if keys.w then
     gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*15),0,0)
    elseif keys.s then
     gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*15),0,0)
    else
     gyro.cframe = workspace.CurrentCamera.CoordinateFrame
    end
   until not Fly
   if gyro then gyro:Destroy() end
   if pos then pos:Destroy() end
   flying=false
   localplayer.Character.Humanoid.PlatformStand=false
   speed=0
  end
  e1=mouse.KeyDown:connect(function(key)
   if not torso or not torso.Parent then flying=false e1:disconnect() e2:disconnect() return end
   if key=="w" then
    keys.w=true
   elseif key=="s" then
    keys.s=true
   elseif key=="a" then
    keys.a=true
   elseif key=="d" then
    keys.d=true
   end
  end)
  e2=mouse.KeyUp:connect(function(key)
   if key=="w" then
    keys.w=false
   elseif key=="s" then
    keys.s=false
   elseif key=="a" then
    keys.a=false
   elseif key=="d" then
    keys.d=false
   end
  end)
  start()
end)

BtoolsOn.MouseButton1Down:connect(function()
wait(0.1)
local tool1 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
local tool2 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
local tool3 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
tool1.BinType = "Clone"
tool2.BinType = "Hammer"
tool3.BinType = "Grab"
end)

-- The GUI Script Ends Here