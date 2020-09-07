--Key = ThanhTuoi--
game.StarterGui:SetCore('SendNotification', {
Title = 'DungeonQuest OP';
Text = "Make by ThanhTuoi#6349";
Duration = 5;
    })
local Main = Instance.new("ScreenGui")
local ErrorFrame = Instance.new("ImageLabel")
local AuthenLabelNoti = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local AuthenticationFrame = Instance.new("ImageLabel")
local Welcome = Instance.new("TextLabel")
local AuthenLabel = Instance.new("TextLabel")
local CheckKey = Instance.new("TextButton")
local KeyBox = Instance.new("TextBox")
local MainFrame = Instance.new("Frame")
local NameGUI = Instance.new("TextLabel")
local Ver = Instance.new("TextLabel")
local FuncFrame = Instance.new("Frame")
local InstantKill60 = Instance.new("TextButton")
local AutoSkill = Instance.new("TextButton")
local StealSkill = Instance.new("TextButton")
local TpNpc60 = Instance.new("TextButton")
local TpNpc75Old = Instance.new("TextButton")
local InstantKill70 = Instance.new("TextButton")
local TpNpc75New = Instance.new("TextButton")
local AutoFarm59 = Instance.new("TextButton")
local InstantKill60ON = Instance.new("TextButton")
local AutoSkillON = Instance.new("TextButton")
local StealSkillON = Instance.new("TextButton")
local TpNpc60ON = Instance.new("TextButton")
local TpNpc75OldON = Instance.new("TextButton")
local InstantKill70ON = Instance.new("TextButton")
local TpNpc75NewON = Instance.new("TextButton")
local AutoFarm59ON = Instance.new("TextButton")
local FuncLabel = Instance.new("Frame")
local FunLabel = Instance.new("TextLabel")
local MovementFrame = Instance.new("Frame")
local Noclip = Instance.new("TextButton")
local Walkspeed = Instance.new("TextButton")
local HipHight = Instance.new("TextButton")
local NoclipON = Instance.new("TextButton")
local WalkspeedON = Instance.new("TextButton")
local HipHightON = Instance.new("TextButton")
local Movement = Instance.new("Frame")
local MoveLabel = Instance.new("TextLabel")
local Settings = Instance.new("Frame")
local SettingLabel = Instance.new("TextLabel")
local SettingFrame = Instance.new("Frame")
local DisableBlur = Instance.new("TextButton")
local DisableBlurON = Instance.new("TextButton")
--Properties:
Main.Name = "Main"
Main.Parent = game.CoreGui

ErrorFrame.Name = "ErrorFrame"
ErrorFrame.Parent = Main
ErrorFrame.BackgroundColor3 = Color3.new(1, 1, 1)
ErrorFrame.BackgroundTransparency = 1
ErrorFrame.Position = UDim2.new(0.399136275, 0, 0.413120627, 0)
ErrorFrame.Size = UDim2.new(0, 327, 0, 132)
ErrorFrame.Visible = false
ErrorFrame.Image = "rbxassetid://2851926732"
ErrorFrame.ImageColor3 = Color3.new(0.333333, 1, 1)
ErrorFrame.ScaleType = Enum.ScaleType.Slice
ErrorFrame.SliceCenter = Rect.new(12, 12, 12, 12)

AuthenLabelNoti.Name = "AuthenLabelNoti"
AuthenLabelNoti.Parent = ErrorFrame
AuthenLabelNoti.BackgroundColor3 = Color3.new(0, 1, 1)
AuthenLabelNoti.BackgroundTransparency = 1
AuthenLabelNoti.BorderSizePixel = 0
AuthenLabelNoti.Size = UDim2.new(0, 327, 0, 29)
AuthenLabelNoti.Font = Enum.Font.GothamBold
AuthenLabelNoti.Text = "//AUTHENTICATION//"
AuthenLabelNoti.TextColor3 = Color3.new(1, 0, 0)
AuthenLabelNoti.TextSize = 20

TextLabel.Parent = ErrorFrame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.0214067101, 0, 0.246810317, 0)
TextLabel.Size = UDim2.new(0, 320, 0, 31)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "HELLO:"
TextLabel.TextColor3 = Color3.new(0, 0, 0)
TextLabel.TextSize = 25
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_2.Parent = ErrorFrame
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.Position = UDim2.new(0.0214067325, 0, 0.481658876, 0)
TextLabel_2.Size = UDim2.new(0, 308, 0, 57)
TextLabel_2.Font = Enum.Font.GothamBold
TextLabel_2.Text = "FAILED TO AUTHENTICATION YOU PLEASE CHECK YOUR KEY AND TRY AGAIN"
TextLabel_2.TextColor3 = Color3.new(1, 0, 0)
TextLabel_2.TextSize = 19
TextLabel_2.TextWrapped = true
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

AuthenticationFrame.Name = "AuthenticationFrame"
AuthenticationFrame.Parent = Main
AuthenticationFrame.BackgroundColor3 = Color3.new(1, 1, 1)
AuthenticationFrame.BackgroundTransparency = 1
AuthenticationFrame.Position = UDim2.new(0.39420107, 0, 0.385697991, 0)
AuthenticationFrame.Size = UDim2.new(0, 340, 0, 186)
AuthenticationFrame.Image = "rbxassetid://2851926732"
AuthenticationFrame.ImageColor3 = Color3.new(0.333333, 1, 1)
AuthenticationFrame.ScaleType = Enum.ScaleType.Slice
AuthenticationFrame.SliceCenter = Rect.new(12, 12, 12, 12)

Welcome.Name = "Welcome"
Welcome.Parent = AuthenticationFrame
Welcome.BackgroundColor3 = Color3.new(1, 1, 1)
Welcome.BackgroundTransparency = 1
Welcome.Position = UDim2.new(0.0354880691, 0, 0.156989336, 0)
Welcome.Size = UDim2.new(0, 327, 0, 33)
Welcome.Font = Enum.Font.GothamBlack
Welcome.Text = "WELCOME:"
Welcome.TextColor3 = Color3.new(0, 0, 0)
Welcome.TextSize = 20
Welcome.TextXAlignment = Enum.TextXAlignment.Left

AuthenLabel.Name = "AuthenLabel"
AuthenLabel.Parent = AuthenticationFrame
AuthenLabel.BackgroundColor3 = Color3.new(0.333333, 1, 1)
AuthenLabel.BackgroundTransparency = 1
AuthenLabel.BorderSizePixel = 0
AuthenLabel.Size = UDim2.new(0, 339, 0, 30)
AuthenLabel.ZIndex = 2
AuthenLabel.Font = Enum.Font.GothamBold
AuthenLabel.Text = "//AUTHENTICATION//"
AuthenLabel.TextColor3 = Color3.new(1, 0, 0)
AuthenLabel.TextSize = 20
AuthenLabel.TextWrapped = true

CheckKey.Name = "CheckKey"
CheckKey.Parent = AuthenticationFrame
CheckKey.BackgroundColor3 = Color3.new(0, 1, 1)
CheckKey.BorderSizePixel = 2
CheckKey.Position = UDim2.new(0.203167498, 0, 0.716743588, 0)
CheckKey.Size = UDim2.new(0, 200, 0, 27)
CheckKey.Font = Enum.Font.GothamBold
CheckKey.Text = "CHECK KEY"
CheckKey.TextColor3 = Color3.new(0, 0, 0)
CheckKey.TextSize = 20

KeyBox.Name = "KeyBox"
KeyBox.Parent = AuthenticationFrame
KeyBox.BackgroundColor3 = Color3.new(0, 1, 1)
KeyBox.BorderSizePixel = 2
KeyBox.Position = UDim2.new(0.0761150718, 0, 0.386482358, 0)
KeyBox.Size = UDim2.new(0, 286, 0, 42)
KeyBox.Font = Enum.Font.GothamBold
KeyBox.Text = "ENTER YOUR KEY HERE"
KeyBox.TextColor3 = Color3.new(0, 0, 0)
KeyBox.TextSize = 25

MainFrame.Name = "MainFrame"
MainFrame.Parent = Main
MainFrame.BackgroundColor3 = Color3.new(1, 1, 1)
MainFrame.BackgroundTransparency = 1
MainFrame.Position = UDim2.new(0.177810133, 0, 0.345759362, 0)
MainFrame.Size = UDim2.new(0, 89, 0, 155)
MainFrame.Visible = false

NameGUI.Name = "Name"
NameGUI.Parent = MainFrame
NameGUI.BackgroundColor3 = Color3.new(1, 1, 1)
NameGUI.BackgroundTransparency = 1
NameGUI.Position = UDim2.new(-3.27465081, 0, -1.81935489, 0)
NameGUI.Size = UDim2.new(0, 483, 0, 59)
NameGUI.Font = Enum.Font.GothamBold
NameGUI.Text = "DUNGEON QUEST OP"
NameGUI.TextColor3 = Color3.new(0, 0, 0)
NameGUI.TextSize = 50

Ver.Name = "Ver"
Ver.Parent = NameGUI
Ver.BackgroundColor3 = Color3.new(1, 1, 1)
Ver.BackgroundTransparency = 1
Ver.Position = UDim2.new(0.853597999, 0, 0.828571439, 0)
Ver.Size = UDim2.new(0, 146, 0, 46)
Ver.Font = Enum.Font.GothamBold
Ver.Text = "V1.0.5"
Ver.TextColor3 = Color3.new(1, 0, 0)
Ver.TextSize = 40

FuncFrame.Name = "FuncFrame"
FuncFrame.Parent = MainFrame
FuncFrame.BackgroundColor3 = Color3.new(0, 0, 0)
FuncFrame.BackgroundTransparency = 0.34999999403954
FuncFrame.Position = UDim2.new(-2.7415731, 0, -0.935483873, 0)
FuncFrame.Size = UDim2.new(0, 290, 0, 300)

InstantKill60.Name = "InstantKill60"
InstantKill60.Parent = FuncFrame
InstantKill60.BackgroundColor3 = Color3.new(1, 1, 1)
InstantKill60.BackgroundTransparency = 1
InstantKill60.Position = UDim2.new(0.0411034413, 0, 0.273333341, 0)
InstantKill60.Size = UDim2.new(0, 278, 0, 23)
InstantKill60.Font = Enum.Font.GothamBold
InstantKill60.Text = "> Instant Kill (60-65)"
InstantKill60.TextColor3 = Color3.new(1, 1, 1)
InstantKill60.TextSize = 20
InstantKill60.TextXAlignment = Enum.TextXAlignment.Left

AutoSkill.Name = "AutoSkill"
AutoSkill.Parent = FuncFrame
AutoSkill.BackgroundColor3 = Color3.new(1, 1, 1)
AutoSkill.BackgroundTransparency = 1
AutoSkill.Position = UDim2.new(0.0419999734, 0, 0.0399999991, 0)
AutoSkill.Size = UDim2.new(0, 277, 0, 24)
AutoSkill.Font = Enum.Font.GothamBold
AutoSkill.Text = "> Auto Skill and Auto Attack"
AutoSkill.TextColor3 = Color3.new(1, 1, 1)
AutoSkill.TextSize = 20
AutoSkill.TextXAlignment = Enum.TextXAlignment.Left

StealSkill.Name = "StealSkill"
StealSkill.Parent = FuncFrame
StealSkill.BackgroundColor3 = Color3.new(1, 1, 1)
StealSkill.BackgroundTransparency = 1
StealSkill.Position = UDim2.new(0.0419999734, 0, 0.159999996, 0)
StealSkill.Size = UDim2.new(0, 276, 0, 25)
StealSkill.Font = Enum.Font.GothamBold
StealSkill.Text = "> Steal Skill Player"
StealSkill.TextColor3 = Color3.new(1, 1, 1)
StealSkill.TextSize = 20
StealSkill.TextXAlignment = Enum.TextXAlignment.Left

TpNpc60.Name = "TpNpc60"
TpNpc60.Parent = FuncFrame
TpNpc60.BackgroundColor3 = Color3.new(1, 1, 1)
TpNpc60.BackgroundTransparency = 1
TpNpc60.Position = UDim2.new(0.0361034535, 0, 0.403333336, 0)
TpNpc60.Size = UDim2.new(0, 276, 0, 24)
TpNpc60.Font = Enum.Font.GothamBold
TpNpc60.Text = "> Tp NPC (60-65)"
TpNpc60.TextColor3 = Color3.new(1, 1, 1)
TpNpc60.TextSize = 20
TpNpc60.TextXAlignment = Enum.TextXAlignment.Left

TpNpc75Old.Name = "TpNpc75Old"
TpNpc75Old.Parent = FuncFrame
TpNpc75Old.BackgroundColor3 = Color3.new(1, 1, 1)
TpNpc75Old.BackgroundTransparency = 1
TpNpc75Old.Position = UDim2.new(0.0345517397, 0, 0.649999976, 0)
TpNpc75Old.Size = UDim2.new(0, 279, 0, 24)
TpNpc75Old.Font = Enum.Font.GothamBold
TpNpc75Old.Text = "> Tp NPC (70-75) [OLD]"
TpNpc75Old.TextColor3 = Color3.new(1, 1, 1)
TpNpc75Old.TextSize = 20
TpNpc75Old.TextXAlignment = Enum.TextXAlignment.Left

InstantKill70.Name = "InstantKill70"
InstantKill70.Parent = FuncFrame
InstantKill70.BackgroundColor3 = Color3.new(1, 1, 1)
InstantKill70.BackgroundTransparency = 1
InstantKill70.Position = UDim2.new(0.0416551791, 0, 0.536666691, 0)
InstantKill70.Size = UDim2.new(0, 275, 0, 23)
InstantKill70.Font = Enum.Font.GothamBold
InstantKill70.Text = "> Instant Kill (70-75)"
InstantKill70.TextColor3 = Color3.new(1, 1, 1)
InstantKill70.TextSize = 20
InstantKill70.TextXAlignment = Enum.TextXAlignment.Left

TpNpc75New.Name = "TpNpc75New"
TpNpc75New.Parent = FuncFrame
TpNpc75New.BackgroundColor3 = Color3.new(1, 1, 1)
TpNpc75New.BackgroundTransparency = 1
TpNpc75New.Position = UDim2.new(0.0414482914, 0, 0.779999971, 0)
TpNpc75New.Size = UDim2.new(0, 276, 0, 24)
TpNpc75New.Font = Enum.Font.GothamBold
TpNpc75New.Text = "> Tp NPC (70-75) [NEW]"
TpNpc75New.TextColor3 = Color3.new(1, 1, 1)
TpNpc75New.TextSize = 20
TpNpc75New.TextXAlignment = Enum.TextXAlignment.Left

AutoFarm59.Name = "AutoFarm59"
AutoFarm59.Parent = FuncFrame
AutoFarm59.BackgroundColor3 = Color3.new(1, 1, 1)
AutoFarm59.BackgroundTransparency = 1
AutoFarm59.Position = UDim2.new(0.0345517397, 0, 0.886666656, 0)
AutoFarm59.Size = UDim2.new(0, 277, 0, 24)
AutoFarm59.Font = Enum.Font.GothamBold
AutoFarm59.Text = "> Auto Farm (1 - 59)"
AutoFarm59.TextColor3 = Color3.new(1, 1, 1)
AutoFarm59.TextSize = 20
AutoFarm59.TextXAlignment = Enum.TextXAlignment.Left

FuncLabel.Name = "FuncLabel"
FuncLabel.Parent = MainFrame
FuncLabel.BackgroundColor3 = Color3.new(0, 0, 1)
FuncLabel.BorderSizePixel = 0
FuncLabel.Position = UDim2.new(-2.9662919, 0, -1.1161288, 0)
FuncLabel.Size = UDim2.new(0, 330, 0, 28)

FunLabel.Name = "FunLabel"
FunLabel.Parent = FuncLabel
FunLabel.BackgroundColor3 = Color3.new(1, 1, 1)
FunLabel.BackgroundTransparency = 1
FunLabel.Position = UDim2.new(-0.00253554829, 0, -0.0304881502, 0)
FunLabel.Size = UDim2.new(0, 330, 0, 28)
FunLabel.Font = Enum.Font.GothamBold
FunLabel.Text = "FUNCTION"
FunLabel.TextColor3 = Color3.new(1, 1, 1)
FunLabel.TextSize = 20
FunLabel.TextWrapped = true

MovementFrame.Name = "MovementFrame"
MovementFrame.Parent = MainFrame
MovementFrame.BackgroundColor3 = Color3.new(0, 0, 0)
MovementFrame.BackgroundTransparency = 0.34999999403954
MovementFrame.Position = UDim2.new(1.85488713, 0, -0.935483634, 0)
MovementFrame.Size = UDim2.new(0, 231, 0, 134)

Noclip.Name = "Noclip"
Noclip.Parent = MovementFrame
Noclip.BackgroundColor3 = Color3.new(1, 1, 1)
Noclip.BackgroundTransparency = 1
Noclip.Position = UDim2.new(0.0501341708, 0, 0.0477611497, 0)
Noclip.Size = UDim2.new(0, 218, 0, 23)
Noclip.Font = Enum.Font.GothamBold
Noclip.Text = "> Noclip"
Noclip.TextColor3 = Color3.new(1, 1, 1)
Noclip.TextSize = 20
Noclip.TextXAlignment = Enum.TextXAlignment.Left

Walkspeed.Name = "Walkspeed"
Walkspeed.Parent = MovementFrame
Walkspeed.BackgroundColor3 = Color3.new(1, 1, 1)
Walkspeed.BackgroundTransparency = 1
Walkspeed.Position = UDim2.new(0.0470427796, 0, 0.347611964, 0)
Walkspeed.Size = UDim2.new(0, 219, 0, 24)
Walkspeed.Font = Enum.Font.GothamBold
Walkspeed.Text = "> Walk Speed"
Walkspeed.TextColor3 = Color3.new(1, 1, 1)
Walkspeed.TextSize = 20
Walkspeed.TextXAlignment = Enum.TextXAlignment.Left

HipHight.Name = "HipHight"
HipHight.Parent = MovementFrame
HipHight.BackgroundColor3 = Color3.new(1, 1, 1)
HipHight.BackgroundTransparency = 1
HipHight.Position = UDim2.new(0.0676208735, 0, 0.632686675, 0)
HipHight.Size = UDim2.new(0, 215, 0, 25)
HipHight.Font = Enum.Font.GothamBold
HipHight.Text = "> HipHight"
HipHight.TextColor3 = Color3.new(1, 1, 1)
HipHight.TextSize = 20
HipHight.TextXAlignment = Enum.TextXAlignment.Left


Movement.Name = "Movement"
Movement.Parent = MainFrame
Movement.BackgroundColor3 = Color3.new(0, 0, 1)
Movement.BorderSizePixel = 0
Movement.Position = UDim2.new(1.6518172, 0, -1.12258029, 0)
Movement.Size = UDim2.new(0, 268, 0, 28)

MoveLabel.Name = "MoveLabel"
MoveLabel.Parent = Movement
MoveLabel.BackgroundColor3 = Color3.new(1, 1, 1)
MoveLabel.BackgroundTransparency = 1
MoveLabel.Position = UDim2.new(0.00165979564, 0, 0.0398110151, 0)
MoveLabel.Size = UDim2.new(0, 267, 0, 27)
MoveLabel.Font = Enum.Font.GothamBold
MoveLabel.Text = "MOVEMENT"
MoveLabel.TextColor3 = Color3.new(1, 1, 1)
MoveLabel.TextSize = 20
MoveLabel.TextWrapped = true

Settings.Name = "Settings"
Settings.Parent = MainFrame
Settings.BackgroundColor3 = Color3.new(0, 0, 1)
Settings.BorderSizePixel = 0
Settings.Position = UDim2.new(5.43833399, 0, -1.12258029, 0)
Settings.Size = UDim2.new(0, 164, 0, 28)

SettingLabel.Name = "SettingLabel"
SettingLabel.Parent = Settings
SettingLabel.BackgroundColor3 = Color3.new(1, 1, 1)
SettingLabel.BackgroundTransparency = 1
SettingLabel.Position = UDim2.new(0.00773625821, 0, -0.0316171646, 0)
SettingLabel.Size = UDim2.new(0, 162, 0, 27)
SettingLabel.Font = Enum.Font.GothamBold
SettingLabel.Text = "SETTINGS"
SettingLabel.TextColor3 = Color3.new(1, 1, 1)
SettingLabel.TextSize = 20
SettingLabel.TextWrapped = true

SettingFrame.Name = "SettingFrame"
SettingFrame.Parent = MainFrame
SettingFrame.BackgroundColor3 = Color3.new(0, 0, 0)
SettingFrame.BackgroundTransparency = 0.34999999403954
SettingFrame.Position = UDim2.new(5.50876904, 0, -0.94193548, 0)
SettingFrame.Size = UDim2.new(0, 151, 0, 100)

DisableBlur.Name = "DisableBlur"
DisableBlur.Parent = SettingFrame
DisableBlur.BackgroundColor3 = Color3.new(1, 1, 1)
DisableBlur.BackgroundTransparency = 1
DisableBlur.Position = UDim2.new(0.0359266661, 0, 0.119999997, 0)
DisableBlur.Size = UDim2.new(0, 134, 0, 26)
DisableBlur.Font = Enum.Font.GothamBold
DisableBlur.Text = "> Disable Blur"
DisableBlur.TextColor3 = Color3.new(1, 1, 1)
DisableBlur.TextSize = 20
DisableBlur.TextWrapped = true

DisableBlurON.Name = "DisableBlur"
DisableBlurON.Parent = SettingFrame
DisableBlurON.BackgroundColor3 = Color3.new(1, 1, 1)
DisableBlurON.BackgroundTransparency = 1
DisableBlurON.Position = UDim2.new(0.0359266661, 0, 0.119999997, 0)
DisableBlurON.Size = UDim2.new(0, 134, 0, 26)
DisableBlurON.Font = Enum.Font.GothamBold
DisableBlurON.Text = "> Disable Blur"
DisableBlurON.TextColor3 = Color3.new(1, 1, 1)
DisableBlurON.TextSize = 20
DisableBlurON.TextWrapped = true
DisableBlurON.Visible = false

NoclipON.Name = "Noclip"
NoclipON.Parent = MovementFrame
NoclipON.BackgroundColor3 = Color3.new(1, 1, 1)
NoclipON.BackgroundTransparency = 1
NoclipON.Position = UDim2.new(0.0501341708, 0, 0.0477611497, 0)
NoclipON.Size = UDim2.new(0, 218, 0, 23)
NoclipON.Font = Enum.Font.GothamBold
NoclipON.Text = "> Noclip"
NoclipON.TextColor3 = Color3.new(1, 1, 1)
NoclipON.TextSize = 20
NoclipON.TextXAlignment = Enum.TextXAlignment.Left
NoclipON.Visible = false

WalkspeedON.Name = "Walkspeed"
WalkspeedON.Parent = MovementFrame
WalkspeedON.BackgroundColor3 = Color3.new(1, 1, 1)
WalkspeedON.BackgroundTransparency = 1
WalkspeedON.Position = UDim2.new(0.0470427796, 0, 0.347611964, 0)
WalkspeedON.Size = UDim2.new(0, 219, 0, 24)
WalkspeedON.Font = Enum.Font.GothamBold
WalkspeedON.Text = "> Walk Speed"
WalkspeedON.TextColor3 = Color3.new(1, 1, 1)
WalkspeedON.TextSize = 20
WalkspeedON.TextXAlignment = Enum.TextXAlignment.Left
WalkspeedON.Visible = false

HipHightON.Name = "HipHight"
HipHightON.Parent = MovementFrame
HipHightON.BackgroundColor3 = Color3.new(1, 1, 1)
HipHightON.BackgroundTransparency = 1
HipHightON.Position = UDim2.new(0.0676208735, 0, 0.632686675, 0)
HipHightON.Size = UDim2.new(0, 215, 0, 25)
HipHightON.Font = Enum.Font.GothamBold
HipHightON.Text = "> HipHight"
HipHightON.TextColor3 = Color3.new(1, 1, 1)
HipHightON.TextSize = 20
HipHightON.TextXAlignment = Enum.TextXAlignment.Left
HipHightON.Visible = false

InstantKill60ON.Name = "InstantKill60"
InstantKill60ON.Parent = FuncFrame
InstantKill60ON.BackgroundColor3 = Color3.new(1, 1, 1)
InstantKill60ON.BackgroundTransparency = 1
InstantKill60ON.Position = UDim2.new(0.0411034413, 0, 0.273333341, 0)
InstantKill60ON.Size = UDim2.new(0, 278, 0, 23)
InstantKill60ON.Font = Enum.Font.GothamBold
InstantKill60ON.Text = "> Instant Kill (60-65)"
InstantKill60ON.TextColor3 = Color3.new(1, 1, 1)
InstantKill60ON.TextSize = 20
InstantKill60ON.TextXAlignment = Enum.TextXAlignment.Left
InstantKill60ON.Visible = false

AutoSkillON.Name = "AutoSkill"
AutoSkillON.Parent = FuncFrame
AutoSkillON.BackgroundColor3 = Color3.new(1, 1, 1)
AutoSkillON.BackgroundTransparency = 1
AutoSkillON.Position = UDim2.new(0.0419999734, 0, 0.0399999991, 0)
AutoSkillON.Size = UDim2.new(0, 277, 0, 24)
AutoSkillON.Font = Enum.Font.GothamBold
AutoSkillON.Text = "> Auto Skill and Auto Attack"
AutoSkillON.TextColor3 = Color3.new(1, 1, 1)
AutoSkillON.TextSize = 20
AutoSkillON.TextXAlignment = Enum.TextXAlignment.Left
AutoSkillON.Visible = false

StealSkillON.Name = "StealSkill"
StealSkillON.Parent = FuncFrame
StealSkillON.BackgroundColor3 = Color3.new(1, 1, 1)
StealSkillON.BackgroundTransparency = 1
StealSkillON.Position = UDim2.new(0.0419999734, 0, 0.159999996, 0)
StealSkillON.Size = UDim2.new(0, 276, 0, 25)
StealSkillON.Font = Enum.Font.GothamBold
StealSkillON.Text = "> Steal Skill Player"
StealSkillON.TextColor3 = Color3.new(1, 1, 1)
StealSkillON.TextSize = 20
StealSkillON.TextXAlignment = Enum.TextXAlignment.Left
StealSkillON.Visible = false

TpNpc60ON.Name = "TpNpc60"
TpNpc60ON.Parent = FuncFrame
TpNpc60ON.BackgroundColor3 = Color3.new(1, 1, 1)
TpNpc60ON.BackgroundTransparency = 1
TpNpc60ON.Position = UDim2.new(0.0361034535, 0, 0.403333336, 0)
TpNpc60ON.Size = UDim2.new(0, 276, 0, 24)
TpNpc60ON.Font = Enum.Font.GothamBold
TpNpc60ON.Text = "> Tp NPC (60-65)"
TpNpc60ON.TextColor3 = Color3.new(1, 1, 1)
TpNpc60ON.TextSize = 20
TpNpc60ON.TextXAlignment = Enum.TextXAlignment.Left
TpNpc60ON.Visible = false

TpNpc75OldON.Name = "TpNpc75Old"
TpNpc75OldON.Parent = FuncFrame
TpNpc75OldON.BackgroundColor3 = Color3.new(1, 1, 1)
TpNpc75OldON.BackgroundTransparency = 1
TpNpc75OldON.Position = UDim2.new(0.0345517397, 0, 0.649999976, 0)
TpNpc75OldON.Size = UDim2.new(0, 279, 0, 24)
TpNpc75OldON.Font = Enum.Font.GothamBold
TpNpc75OldON.Text = "> Tp NPC (70-75) [OLD]"
TpNpc75OldON.TextColor3 = Color3.new(1, 1, 1)
TpNpc75OldON.TextSize = 20
TpNpc75OldON.TextXAlignment = Enum.TextXAlignment.Left
TpNpc75OldON.Visible = false

InstantKill70ON.Name = "InstantKill70"
InstantKill70ON.Parent = FuncFrame
InstantKill70ON.BackgroundColor3 = Color3.new(1, 1, 1)
InstantKill70ON.BackgroundTransparency = 1
InstantKill70ON.Position = UDim2.new(0.0416551791, 0, 0.536666691, 0)
InstantKill70ON.Size = UDim2.new(0, 275, 0, 23)
InstantKill70ON.Font = Enum.Font.GothamBold
InstantKill70ON.Text = "> Instant Kill (70-75)"
InstantKill70ON.TextColor3 = Color3.new(1, 1, 1)
InstantKill70ON.TextSize = 20
InstantKill70ON.TextXAlignment = Enum.TextXAlignment.Left
InstantKill70ON.Visible = false

TpNpc75NewON.Name = "TpNpc75New"
TpNpc75NewON.Parent = FuncFrame
TpNpc75NewON.BackgroundColor3 = Color3.new(1, 1, 1)
TpNpc75NewON.BackgroundTransparency = 1
TpNpc75NewON.Position = UDim2.new(0.0414482914, 0, 0.779999971, 0)
TpNpc75NewON.Size = UDim2.new(0, 276, 0, 24)
TpNpc75NewON.Font = Enum.Font.GothamBold
TpNpc75NewON.Text = "> Tp NPC (70-75) [NEW]"
TpNpc75NewON.TextColor3 = Color3.new(1, 1, 1)
TpNpc75NewON.TextSize = 20
TpNpc75NewON.TextXAlignment = Enum.TextXAlignment.Left
TpNpc75NewON.Visible = false

AutoFarm59ON.Name = "AutoFarm59"
AutoFarm59ON.Parent = FuncFrame
AutoFarm59ON.BackgroundColor3 = Color3.new(1, 1, 1)
AutoFarm59ON.BackgroundTransparency = 1
AutoFarm59ON.Position = UDim2.new(0.0345517397, 0, 0.886666656, 0)
AutoFarm59ON.Size = UDim2.new(0, 277, 0, 24)
AutoFarm59ON.Font = Enum.Font.GothamBold
AutoFarm59ON.Text = "> Auto Farm (1 - 59)"
AutoFarm59ON.TextColor3 = Color3.new(1, 1, 1)
AutoFarm59ON.TextSize = 20
AutoFarm59ON.TextXAlignment = Enum.TextXAlignment.Left
AutoFarm59ON.Visible = false

--Local Name
Name = game.Players.LocalPlayer.Name
--Sound error
local newsound = Instance.new("Sound",workspace)
newsound.Name = "earbleed"
newsound.SoundId = "rbxassetid://285685019"
newsound.Looped = true
local earbleep = Instance.new("DistortionSoundEffect",newsound)
earbleep.Enabled = true
earbleep.Priority = 55
--Welcome
Welcome.Text = "WELCOME: "..Name..""
TextLabel.Text = "HELLO: "..Name..""
--Local key
key = "ThanhTuoi"


--Check key
CheckKey.MouseButton1Down:connect(function()
if KeyBox.Text == key  then 
	game.StarterGui:SetCore('SendNotification', {
Title = 'AUTHENTICATION';
Text = "SUCCESS WHITELIST, THANKS FOR BUY SCRIPT";
Duration = 5;
	})
	wait()
	AuthenticationFrame.Visible = false
	MainFrame.Visible = true
	Instance.new("BlurEffect", game.Lighting).Name = "BlurLoad"
	game.Lighting.BlurLoad.Size = 20
	wait()
--Open/Close
function onKeyPress(inputObject, gameProcessedEvent)
	if inputObject.KeyCode == Enum.KeyCode.RightShift then
		if MainFrame.Visible == true then
			MainFrame.Visible =  false
			game.Lighting.BlurLoad:Destroy()
		elseif MainFrame.Visible == false then
			MainFrame.Visible = true
			Instance.new("BlurEffect", game.Lighting).Name = "BlurLoad"
			game.Lighting.BlurLoad.Size = 20
	wait()
		end
	end
end
 
game:GetService("UserInputService").InputBegan:connect(onKeyPress)
elseif KeyBox.Text == blacklist then
	newsound:Play()
	AuthenticationFrame.Visible = false
	ErrorFrame.Visible = true 
	wait(2)
	newsound:Destroy()
	wait(2)
	game.StarterGui:SetCore('SendNotification', {
Title = 'AUTHENTICATION';
Text = "KEY HAS BLACKLIST";
Duration = 5;
	})
	wait(5)
	game.Players.LocalPlayer:Kick(" HELLO: "..Name.."\nFAILED TO AUTHENTICATION YOU BECAUSE YOUR KEY HAS BLACKLIST")
end
end)
--Disable Blur
DisableBlur.MouseButton1Down:connect(function()
DisableBlur.Visible = false
DisableBlurON.Visible = true 
game.Lighting.BlurLoad:Destroy()
end)

DisableBlurON.MouseButton1Down:connect(function()
DisableBlurON.Visible = false
DisableBlur.Visible = true
Instance.new("BlurEffect", game.Lighting).Name = "BlurLoad"
game.Lighting.BlurLoad.Size = 20
end)
--Auto Skill
AutoSkill.MouseButton1Down:connect(function()
AutoSkill.Visible = false
AutoSkillON.Visible = true
--Script Here (ON)
function FireSwingRemote()
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:FindFirstChild("Weapon") and v:FindFirstChild("swing") then
return v.swing:FireServer()
end
end
end
_G.Skill = true
while _G.Skill do
    wait()
FireSwingRemote() 
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") and v:FindFirstChild("abilitySlot") then
        if v.abilitySlot.Value == "q" then
            v:FindFirstChildWhichIsA("RemoteEvent"):FireServer()
            v.cooldown.Changed:Connect(function()      
            v.cooldown.Value = 0
            end)
        end
        end
        end
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") and v:FindFirstChild("abilitySlot") then
        if v.abilitySlot.Value == "e" then
            v:FindFirstChildWhichIsA("RemoteEvent"):FireServer()
            v.cooldown.Changed:Connect(function()      
            v.cooldown.Value = 0
            end)
        end
        end
        end
end
end)

--Instant Kill
InstantKill60.MouseButton1Down:connect(function()
InstantKill60.Visible = false
InstantKill60ON.Visible = true
--Script Here (ON)
_G.a = true
while _G.a do
wait(2)
for a,b in pairs(game.Workspace:GetChildren()) do
if b:IsA("Folder") then
for c,d in pairs(b:GetChildren()) do
if d:FindFirstChild("enemyFolder") then
for e,f in pairs(d.enemyFolder:GetChildren()) do
if f:FindFirstChild("HumanoidRootPart") and f:FindFirstChild("Humanoid") then  
repeat
 
f.Humanoid.Health = 0
wait()
until f.Humanoid.Health < 1
end
end
end
end
end
end
for _,m in pairs(game.workspace.dungeon.bossRoom.enemyFolder:GetDescendants()) do
    if string.find(m.Name,"") then
        if m.Humanoid.Health < 1 then
            wait(2)
            game:GetService'TeleportService':Teleport(2414851778)
        end
    end
    end
end
end)

--Instant Kill
InstantKill70.MouseButton1Down:connect(function()
InstantKill70.Visible = false
InstantKill70ON.Visible = true
--Script Here (ON)
_G.s = true
while _G.s do
wait(2)
for z,x in pairs(game.Workspace:GetChildren()) do
if x:IsA("Folder") then
for j,k in pairs(x:GetChildren()) do
if k:FindFirstChild("enemyFolder") then
for q,u in pairs(k.enemyFolder:GetChildren()) do
if u:FindFirstChild("HumanoidRootPart") and u:FindFirstChild("Humanoid") then
for v,g in pairs(u:GetChildren()) do
    if g.Name == "Head" then
        g:Destroy()
        wait()
end
end
end
end
end
end
end
end
for _,m in pairs(game.workspace.dungeon.bossRoom.enemyFolder:GetDescendants()) do
    if string.find(m.Name,"The") then
        if m.Humanoid.Health < 1 then
            wait(2)
            game:GetService'TeleportService':Teleport(2414851778)
        end
    end
    end
end
end)

--Steal Skill
StealSkill.MouseButton1Down:connect(function()
StealSkill.Visible = false
StealSkillON.Visible = true
--Script Here (ON)
_G.Steal = true
while _G.Steal do
wait()
for a,b in pairs(game.Players:GetChildren()) do
if string.find(b.Name,"") then
for c,d in pairs(b.Backpack:GetChildren()) do
if d:IsA("Tool") then
d.Parent = game.Players.LocalPlayer.Backpack
end
end
end
end
end

end)

--TpNPC
TpNpc60.MouseButton1Down:connect(function()
TpNpc60.Visible = false
TpNpc60ON.Visible = true
--Script Here (ON)
_G.Farma = true
game.ReplicatedStorage.remotes.changeStartValue:FireServer()
noclip = true
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
 
if key == "o" then
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
print('Created by FileExplorer')
print('Credits to Peyton for the ChangeState part of this script')
while _G.Farma do
wait(2)
for a,b in pairs(game.Workspace:GetChildren()) do
if b:IsA("Folder") then
for c,d in pairs(b:GetChildren()) do
if d:FindFirstChild("enemyFolder") then
for e,f in pairs(d.enemyFolder:GetChildren()) do
if f:FindFirstChild("HumanoidRootPart") and f:FindFirstChild("Humanoid") then  
repeat
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(f.HumanoidRootPart.Position + Vector3.new(0,20,0),f.HumanoidRootPart.Position)
f.Humanoid.Health = 0
wait(0.8)
until f.Humanoid.Health < 1
end
end
end
end
end
end
end
end)


--TpNPC
TpNpc75Old.MouseButton1Down:connect(function()
TpNpc75Old.Visible = false
TpNpc75OldON.Visible = true
--Script Here (ON)
_G.Farms = true
game.ReplicatedStorage.remotes.changeStartValue:FireServer()
noclip = true
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
 
if key == "o" then
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
print('Created by FileExplorer')
print('Credits to Peyton for the ChangeState part of this script')
while _G.Farms do
wait(2)
for a,b in pairs(game.Workspace:GetChildren()) do
if b:IsA("Folder") then
for c,d in pairs(b:GetChildren()) do
if d:FindFirstChild("enemyFolder") then
for e,f in pairs(d.enemyFolder:GetChildren()) do
if f:FindFirstChild("HumanoidRootPart") and f:FindFirstChild("Humanoid") then  
repeat
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = f.HumanoidRootPart.CFrame * CFrame.new(0,15,0)
f.Humanoid.Health = 0
wait()
for z,x in pairs(game.Workspace:GetChildren()) do
if x:IsA("Folder") then
for j,k in pairs(x:GetChildren()) do
if k:FindFirstChild("enemyFolder") then
for q,u in pairs(k.enemyFolder:GetChildren()) do
if u:FindFirstChild("HumanoidRootPart") and u:FindFirstChild("Humanoid") then
for v,g in pairs(u:GetChildren()) do
    if g.Name == "Head" then
        g:Destroy()
        wait()
end
end
end
end
end
end
end
end
until f.Humanoid.Health < 1
end
end
end
end
end
end
for _,m in pairs(game.workspace.dungeon.bossRoom.enemyFolder:GetDescendants()) do
    if string.find(m.Name,"The") then
        if m.Humanoid.Health < 1 then
            wait(2)
            game:GetService'TeleportService':Teleport(2414851778)
        end
    end
    end
end
end)

--TpNPC
TpNpc75New.MouseButton1Down:connect(function()
TpNpc75New.Visible = false
TpNpc75NewON.Visible = true
--Script Here (ON)
game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
wait(0.1)
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait(0.1)
game.Players.LocalPlayer.Character.Animate.Disabled = false
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
_G.Farmf = true
game.ReplicatedStorage.remotes.changeStartValue:FireServer()
noclip = true
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
 
if key == "o" then
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
print('Created by FileExplorer')
print('Credits to Peyton for the ChangeState part of this script')
while _G.Farmf do
wait(2)
for a,b in pairs(game.Workspace:GetChildren()) do
if b:IsA("Folder") then
for c,d in pairs(b:GetChildren()) do
if d:FindFirstChild("enemyFolder") then
for e,f in pairs(d.enemyFolder:GetChildren()) do
if f:FindFirstChild("HumanoidRootPart") and f:FindFirstChild("Humanoid") then  

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = f.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
f.Humanoid.Health = 0
wait(0.5)
for z,x in pairs(game.Workspace:GetChildren()) do
if x:IsA("Folder") then
for j,k in pairs(x:GetChildren()) do
if k:FindFirstChild("enemyFolder") then
for q,u in pairs(k.enemyFolder:GetChildren()) do
if u:FindFirstChild("HumanoidRootPart") and u:FindFirstChild("Humanoid") then
for v,g in pairs(u:GetChildren()) do
    if g.Name == "Head" then
        g:Destroy()
        wait()
end
end
end
end
end
end
end
end

end
end
end
end
end
end
for _,m in pairs(game.workspace.dungeon.bossRoom.enemyFolder:GetDescendants()) do
    if string.find(m.Name,"The") then
        if m.Humanoid.Health < 1 then
            wait(2)
            game:GetService'TeleportService':Teleport(2414851778)
        end
    end
    end
end
end)


--HipHight
HipHight.MouseButton1Down:connect(function()
HipHight.Visible = false
HipHightON.Visible = true
--Script Here (ON)
game:GetService("Players").LocalPlayer.Character.Humanoid.HipHeight = 15
end)

--Noclip
Noclip.MouseButton1Down:connect(function()
Noclip.Visible = false
NoclipON.Visible = true
--Script Here (ON)
noclip = true
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
 
if key == "o" then
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
print('Thanks for Use')
print('Thanks very much')
end)

--Walkspeed
Walkspeed.MouseButton1Down:connect(function()
Walkspeed.Visible = false
WalkspeedON.Visible = true
--Script Here (ON)
game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 100
end)

--Auto Skill OFF
AutoSkillON.MouseButton1Down:connect(function()
AutoSkillON.Visible = false
AutoSkill.Visible = true
--Script Here (OFF)
_G.Skill = false
end)

--Instant Kill OFF
InstantKill60ON.MouseButton1Down:connect(function()
InstantKill60ON.Visible = false
InstantKill60.Visible = true
--Script Here (OFF)
_G.a = false
end)

--Instant Kill OFF
InstantKill70ON.MouseButton1Down:connect(function()
InstantKill70ON.Visible = false
InstantKill70.Visible = true
--Script Here (OFF)
_G.s = false
end)

--Steal Skill OFF
StealSkillON.MouseButton1Down:connect(function()
StealSkillON.Visible = false
StealSkill.Visible = true
--Script Here (OFF)
_G.Steal = false
end)

--TpNPC OFF
TpNpc60ON.MouseButton1Down:connect(function()
TpNpc60ON.Visible = false
TpNpc60.Visible = true
--Script Here (OFF)
_G.Farma = false
end)

--TpNPC 70 OFF
TpNpc75OldON.MouseButton1Down:connect(function()
TpNpc75OldON.Visible = false
TpNpc75Old.Visible = true
--Script Here (OFF)
_G.Farms = false
end)

--TpNPC 70 OFF
TpNpc75NewON.MouseButton1Down:connect(function()
TpNpc75NewON.Visible = false
TpNpc75New.Visible = true
--Script Here (OFF)
_G.Farmf = false

end)

--HipHight OFF
HipHightON.MouseButton1Down:connect(function()
HipHightON.Visible = false
HipHight.Visible = true
--Script Here (OFF)
game:GetService("Players").LocalPlayer.Character.Humanoid.HipHeight = 2
end)

--Noclip OFF
NoclipON.MouseButton1Down:connect(function()
NoclipON.Visible = false
Noclip.Visible = true
--Script Here (OFF)
noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
 
if key == "o" then
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
print('Thanks for Use')
print('Thanks very much')
end)

--Walkspeed OFF
WalkspeedON.MouseButton1Down:connect(function()
WalkspeedON.Visible = false
Walkspeed.Visible = true
--Script Here (OFF)
game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 30
end)

--Auto Farm
AutoFarm59.MouseButton1Down:connect(function()
AutoFarm59ON.Visible = true
AutoFarm59.Visible = false
--Script Here (ON)
_G.Farmd = true
noclip = true
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
 
if key == "o" then
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)

game.ReplicatedStorage.remotes.changeStartValue:FireServer()
while _G.Farmd do
wait(3)
for a,b in pairs(game.Workspace:GetChildren()) do
if b:IsA("Folder") then
for c,d in pairs(b:GetChildren()) do
if d:FindFirstChild("enemyFolder") then
for e,f in pairs(d.enemyFolder:GetChildren()) do
if f:FindFirstChild("HumanoidRootPart") and f:FindFirstChild("Humanoid") then

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(f.HumanoidRootPart.Position + Vector3.new(0,6,0),f.HumanoidRootPart.Position)


wait()

end
end
end
end
end
end
end
end)

--Auto Farm OFF
AutoFarm59ON.MouseButton1Down:connect(function()
AutoFarm59.Visible = true
AutoFarm59ON.Visible = false
_G.Farmd = false
end)

--Rainbown Settings
function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
local counter1 = 1
while wait(0.1) do
	FuncLabel.BackgroundColor3 = Color3.fromHSV(zigzag(counter1),1,1) 
	Movement.BackgroundColor3 = Color3.fromHSV(zigzag(counter1),1,1) 
	AutoSkillON.TextColor3 = Color3.fromHSV(zigzag(counter1),1,1) 
	StealSkillON.TextColor3 = Color3.fromHSV(zigzag(counter1),1,1)
	InstantKill60ON.TextColor3 = Color3.fromHSV(zigzag(counter1),1,1)
	TpNpc60ON.TextColor3 = Color3.fromHSV(zigzag(counter1),1,1) 
	HipHightON.TextColor3 = Color3.fromHSV(zigzag(counter1),1,1)
	NoclipON.TextColor3 = Color3.fromHSV(zigzag(counter1),1,1)
	WalkspeedON.TextColor3 = Color3.fromHSV(zigzag(counter1),1,1)
	NameGUI.TextColor3 = Color3.fromHSV(zigzag(counter1),1,1)
	InstantKill70ON.TextColor3 = Color3.fromHSV(zigzag(counter1),1,1)
	TpNpc75NewON.TextColor3 = Color3.fromHSV(zigzag(counter1),1,1)
	TpNpc75OldON.TextColor3 = Color3.fromHSV(zigzag(counter1),1,1)
	DisableBlurON.TextColor3 = Color3.fromHSV(zigzag(counter1),1,1)
	Settings.BackgroundColor3 = Color3.fromHSV(zigzag(counter1),1,1)
	AutoFarm59ON.TextColor3 = Color3.fromHSV(zigzag(counter1),1,1)
	counter1 = counter1 + 0.01
end