-- Instances:
local RogueGUI = Instance.new("ScreenGui")
local CreditsLabel = Instance.new("TextLabel")
local ButtonClose = Instance.new("TextButton")
local MainFrame = Instance.new("Frame")
local ButtonInfJump = Instance.new("TextButton")
local ButtonDestroyWalls = Instance.new("TextButton")
local ButtonSpeed = Instance.new("TextButton")
local ButtonAimbotGUI = Instance.new("TextButton")
local ButtonRemoveBaseplates = Instance.new("TextButton")
local ButtonAudioLogger = Instance.new("TextButton")
local ButtonInfo = Instance.new("TextButton")
local ButtonSettings = Instance.new("TextButton")
local SongsFrame = Instance.new("Frame")
local LabelSongs = Instance.new("TextLabel")
local Songs1 = Instance.new("TextLabel")
local ButtonInputSong1 = Instance.new("TextButton")
local ButtonInputSong2 = Instance.new("TextButton")
local Songs2 = Instance.new("TextLabel")
local ButtonInputSong3 = Instance.new("TextButton")
local Songs3 = Instance.new("TextLabel")
local ButtonInputSong4 = Instance.new("TextButton")
local Songs4 = Instance.new("TextLabel")
local Songs5 = Instance.new("TextLabel")
local ButtonInputSong5 = Instance.new("TextButton")
local Songs6 = Instance.new("TextLabel")
local ButtonInputSong6 = Instance.new("TextButton")
local ButtonInputSong7 = Instance.new("TextButton")
local Songs7 = Instance.new("TextLabel")
local SettingsFrame = Instance.new("Frame")
local LabelSettings = Instance.new("TextLabel")
local LabelColors = Instance.new("TextLabel")
local ButtonColorBlue = Instance.new("TextButton")
local ButtonColorRed = Instance.new("TextButton")
local ButtonColorGreen = Instance.new("TextButton")
local ButtonColorWhite = Instance.new("TextButton")
local ButtonColorPurple = Instance.new("TextButton")
local ButtonColorYellow = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local InfoFrame = Instance.new("Frame")
local LabelInfo = Instance.new("TextLabel")
local ButtonCopyDiscord = Instance.new("TextButton")
local Info1 = Instance.new("TextLabel")
local Info2 = Instance.new("TextLabel")
local ButtonSongs = Instance.new("TextButton")
local Info3 = Instance.new("TextLabel")
local ButtonCopyGameLink = Instance.new("TextButton")
--Properties:
RogueGUI.Name = "RogueGUI"
RogueGUI.Parent = game.CoreGui

CreditsLabel.Name = "CreditsLabel"
CreditsLabel.Parent = RogueGUI
CreditsLabel.Active = true
CreditsLabel.BackgroundColor3 = Color3.new(0, 0, 0)
CreditsLabel.Draggable = true
CreditsLabel.Position = UDim2.new(0.526117027, 0, 0.233415246, -2)
CreditsLabel.Size = UDim2.new(0, 300, 0, 15)
CreditsLabel.Font = Enum.Font.SciFi
CreditsLabel.Text = "KAT Killer"
CreditsLabel.TextColor3 = Color3.new(1, 1, 1)
CreditsLabel.TextSize = 14
CreditsLabel.Active = true
CreditsLabel.Draggable = true

ButtonClose.Name = "ButtonClose"
ButtonClose.Parent = CreditsLabel
ButtonClose.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonClose.Position = UDim2.new(0.949999988, 0, 0, 0)
ButtonClose.Size = UDim2.new(0, 15, 0, 15)
ButtonClose.Font = Enum.Font.SciFi
ButtonClose.Text = "X"
ButtonClose.TextColor3 = Color3.new(1, 1, 1)
ButtonClose.TextSize = 14

MainFrame.Name = "MainFrame"
MainFrame.Parent = CreditsLabel
MainFrame.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
MainFrame.Position = UDim2.new(-0.00333333341, 0, 1.00000095, 0)
MainFrame.Size = UDim2.new(0, 300, 0, 189)

ButtonInfJump.Name = "ButtonInfJump"
ButtonInfJump.Parent = MainFrame
ButtonInfJump.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonInfJump.Position = UDim2.new(0.0199999996, 0, 0.0335161537, 0)
ButtonInfJump.Size = UDim2.new(0, 140, 0, 35)
ButtonInfJump.Font = Enum.Font.SciFi
ButtonInfJump.Text = "Inf Jump"
ButtonInfJump.TextColor3 = Color3.new(1, 1, 1)
ButtonInfJump.TextSize = 14

ButtonDestroyWalls.Name = "ButtonDestroyWalls"
ButtonDestroyWalls.Parent = MainFrame
ButtonDestroyWalls.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonDestroyWalls.Position = UDim2.new(0.519999981, 0, 0.0388071574, 0)
ButtonDestroyWalls.Size = UDim2.new(0, 140, 0, 35)
ButtonDestroyWalls.Font = Enum.Font.SciFi
ButtonDestroyWalls.Text = "DestroyWalls (Fixed)"
ButtonDestroyWalls.TextColor3 = Color3.new(1, 1, 1)
ButtonDestroyWalls.TextSize = 14

ButtonSpeed.Name = "ButtonSpeed"
ButtonSpeed.Parent = MainFrame
ButtonSpeed.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonSpeed.Position = UDim2.new(0.519999981, 0, 0.514924288, 0)
ButtonSpeed.Size = UDim2.new(0, 140, 0, 35)
ButtonSpeed.Font = Enum.Font.SciFi
ButtonSpeed.Text = "Speed Semi-Fixed"
ButtonSpeed.TextColor3 = Color3.new(1, 1, 1)
ButtonSpeed.TextSize = 14

ButtonAimbotGUI.Name = "ButtonAimbotGUI"
ButtonAimbotGUI.Parent = MainFrame
ButtonAimbotGUI.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonAimbotGUI.Position = UDim2.new(0.0199999996, 0, 0.278076947, 0)
ButtonAimbotGUI.Size = UDim2.new(0, 140, 0, 35)
ButtonAimbotGUI.Font = Enum.Font.SciFi
ButtonAimbotGUI.Text = "Aimbot GUI"
ButtonAimbotGUI.TextColor3 = Color3.new(1, 1, 1)
ButtonAimbotGUI.TextSize = 14

ButtonRemoveBaseplates.Name = "ButtonRemoveBaseplates"
ButtonRemoveBaseplates.Parent = MainFrame
ButtonRemoveBaseplates.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonRemoveBaseplates.Position = UDim2.new(0.519999981, 0, 0.273065567, 0)
ButtonRemoveBaseplates.Size = UDim2.new(0, 140, 0, 35)
ButtonRemoveBaseplates.Font = Enum.Font.SciFi
ButtonRemoveBaseplates.Text = "Remove Baseplates"
ButtonRemoveBaseplates.TextColor3 = Color3.new(1, 1, 1)
ButtonRemoveBaseplates.TextSize = 14

ButtonAudioLogger.Name = "ButtonAudioLogger"
ButtonAudioLogger.Parent = MainFrame
ButtonAudioLogger.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonAudioLogger.Position = UDim2.new(0.0199999996, 0, 0.515203953, 0)
ButtonAudioLogger.Size = UDim2.new(0, 140, 0, 35)
ButtonAudioLogger.Font = Enum.Font.SciFi
ButtonAudioLogger.Text = "Audio Logger"
ButtonAudioLogger.TextColor3 = Color3.new(1, 1, 1)
ButtonAudioLogger.TextSize = 14

ButtonInfo.Name = "ButtonInfo"
ButtonInfo.Parent = MainFrame
ButtonInfo.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonInfo.Position = UDim2.new(0.519999981, 0, 0.75897181, 0)
ButtonInfo.Size = UDim2.new(0, 140, 0, 35)
ButtonInfo.Font = Enum.Font.SciFi
ButtonInfo.Text = "Open Info"
ButtonInfo.TextColor3 = Color3.new(1, 1, 1)
ButtonInfo.TextSize = 14

ButtonSettings.Name = "ButtonSettings"
ButtonSettings.Parent = MainFrame
ButtonSettings.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonSettings.Position = UDim2.new(0.0199999996, 0, 0.753960609, 0)
ButtonSettings.Size = UDim2.new(0, 140, 0, 35)
ButtonSettings.Font = Enum.Font.SciFi
ButtonSettings.Text = "Open Settings"
ButtonSettings.TextColor3 = Color3.new(1, 1, 1)
ButtonSettings.TextSize = 14

SongsFrame.Name = "SongsFrame"
SongsFrame.Parent = CreditsLabel
SongsFrame.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
SongsFrame.Position = UDim2.new(-0.666666687, 0, 0.933334351, 0)
SongsFrame.Size = UDim2.new(0, 200, 0, 189)

LabelSongs.Name = "LabelSongs"
LabelSongs.Parent = SongsFrame
LabelSongs.Active = true
LabelSongs.BackgroundColor3 = Color3.new(0, 0, 0)
LabelSongs.Position = UDim2.new(0, 0, -0.0740741566, 0)
LabelSongs.Size = UDim2.new(0, 200, 0, 14)
LabelSongs.Font = Enum.Font.SciFi
LabelSongs.Text = "Bypassed Songs"
LabelSongs.TextColor3 = Color3.new(1, 1, 1)
LabelSongs.TextSize = 14

Songs1.Name = "Songs1"
Songs1.Parent = SongsFrame
Songs1.Active = true
Songs1.BackgroundColor3 = Color3.new(0, 0, 0)
Songs1.Position = UDim2.new(0, 0, 0.0370370373, 0)
Songs1.Size = UDim2.new(0, 95, 0, 14)
Songs1.Font = Enum.Font.SciFi
Songs1.Text = "Wendy"
Songs1.TextColor3 = Color3.new(1, 1, 1)
Songs1.TextSize = 10

ButtonInputSong1.Name = "ButtonInputSong1"
ButtonInputSong1.Parent = SongsFrame
ButtonInputSong1.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonInputSong1.Position = UDim2.new(0.524999976, 0, 0.0370370373, 0)
ButtonInputSong1.Size = UDim2.new(0, 95, 0, 14)
ButtonInputSong1.Font = Enum.Font.SciFi
ButtonInputSong1.Text = "Input Song"
ButtonInputSong1.TextColor3 = Color3.new(1, 1, 1)
ButtonInputSong1.TextSize = 10

ButtonInputSong2.Name = "ButtonInputSong2"
ButtonInputSong2.Parent = SongsFrame
ButtonInputSong2.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonInputSong2.Position = UDim2.new(0.524999976, 0, 0.111866944, 0)
ButtonInputSong2.Size = UDim2.new(0, 95, 0, 14)
ButtonInputSong2.Font = Enum.Font.SciFi
ButtonInputSong2.Text = "Input Song"
ButtonInputSong2.TextColor3 = Color3.new(1, 1, 1)
ButtonInputSong2.TextSize = 10

Songs2.Name = "Songs2"
Songs2.Parent = SongsFrame
Songs2.Active = true
Songs2.BackgroundColor3 = Color3.new(0, 0, 0)
Songs2.Position = UDim2.new(0, 0, 0.111866944, 0)
Songs2.Size = UDim2.new(0, 95, 0, 14)
Songs2.Font = Enum.Font.SciFi
Songs2.Text = "I Beat My..."
Songs2.TextColor3 = Color3.new(1, 1, 1)
Songs2.TextSize = 10

ButtonInputSong3.Name = "ButtonInputSong3"
ButtonInputSong3.Parent = SongsFrame
ButtonInputSong3.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonInputSong3.Position = UDim2.new(0.524999976, 0, 0.186696857, 0)
ButtonInputSong3.Size = UDim2.new(0, 95, 0, 14)
ButtonInputSong3.Font = Enum.Font.SciFi
ButtonInputSong3.Text = "Input Song"
ButtonInputSong3.TextColor3 = Color3.new(1, 1, 1)
ButtonInputSong3.TextSize = 10

Songs3.Name = "Songs3"
Songs3.Parent = SongsFrame
Songs3.Active = true
Songs3.BackgroundColor3 = Color3.new(0, 0, 0)
Songs3.Position = UDim2.new(0, 0, 0.186696857, 0)
Songs3.Size = UDim2.new(0, 95, 0, 14)
Songs3.Font = Enum.Font.SciFi
Songs3.Text = "Audi"
Songs3.TextColor3 = Color3.new(1, 1, 1)
Songs3.TextSize = 10

ButtonInputSong4.Name = "ButtonInputSong4"
ButtonInputSong4.Parent = SongsFrame
ButtonInputSong4.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonInputSong4.Position = UDim2.new(0.524999976, 0, 0.261526912, 0)
ButtonInputSong4.Size = UDim2.new(0, 95, 0, 14)
ButtonInputSong4.Font = Enum.Font.SciFi
ButtonInputSong4.Text = "Input Song"
ButtonInputSong4.TextColor3 = Color3.new(1, 1, 1)
ButtonInputSong4.TextSize = 10

Songs4.Name = "Songs4"
Songs4.Parent = SongsFrame
Songs4.Active = true
Songs4.BackgroundColor3 = Color3.new(0, 0, 0)
Songs4.Position = UDim2.new(0, 0, 0.261526912, 0)
Songs4.Size = UDim2.new(0, 95, 0, 14)
Songs4.Font = Enum.Font.SciFi
Songs4.Text = "Oreo"
Songs4.TextColor3 = Color3.new(1, 1, 1)
Songs4.TextSize = 10

Songs5.Name = "Songs5"
Songs5.Parent = SongsFrame
Songs5.Active = true
Songs5.BackgroundColor3 = Color3.new(0, 0, 0)
Songs5.Position = UDim2.new(0, 0, 0.336356848, 0)
Songs5.Size = UDim2.new(0, 95, 0, 14)
Songs5.Font = Enum.Font.SciFi
Songs5.Text = "Trenchboy"
Songs5.TextColor3 = Color3.new(1, 1, 1)
Songs5.TextSize = 10

ButtonInputSong5.Name = "ButtonInputSong5"
ButtonInputSong5.Parent = SongsFrame
ButtonInputSong5.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonInputSong5.Position = UDim2.new(0.524999976, 0, 0.336356848, 0)
ButtonInputSong5.Size = UDim2.new(0, 95, 0, 14)
ButtonInputSong5.Font = Enum.Font.SciFi
ButtonInputSong5.Text = "Input Song"
ButtonInputSong5.TextColor3 = Color3.new(1, 1, 1)
ButtonInputSong5.TextSize = 10

Songs6.Name = "Songs6"
Songs6.Parent = SongsFrame
Songs6.Active = true
Songs6.BackgroundColor3 = Color3.new(0, 0, 0)
Songs6.Position = UDim2.new(0, 0, 0.411186755, 0)
Songs6.Size = UDim2.new(0, 95, 0, 14)
Songs6.Font = Enum.Font.SciFi
Songs6.Text = "Ya Know"
Songs6.TextColor3 = Color3.new(1, 1, 1)
Songs6.TextSize = 10

ButtonInputSong6.Name = "ButtonInputSong6"
ButtonInputSong6.Parent = SongsFrame
ButtonInputSong6.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonInputSong6.Position = UDim2.new(0.524999976, 0, 0.411186755, 0)
ButtonInputSong6.Size = UDim2.new(0, 95, 0, 14)
ButtonInputSong6.Font = Enum.Font.SciFi
ButtonInputSong6.Text = "Input Song"
ButtonInputSong6.TextColor3 = Color3.new(1, 1, 1)
ButtonInputSong6.TextSize = 10

ButtonInputSong7.Name = "ButtonInputSong7"
ButtonInputSong7.Parent = SongsFrame
ButtonInputSong7.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonInputSong7.Position = UDim2.new(0.524999976, 0, 0.486016661, 0)
ButtonInputSong7.Size = UDim2.new(0, 95, 0, 14)
ButtonInputSong7.Font = Enum.Font.SciFi
ButtonInputSong7.Text = "Input Song"
ButtonInputSong7.TextColor3 = Color3.new(1, 1, 1)
ButtonInputSong7.TextSize = 10

Songs7.Name = "Songs7"
Songs7.Parent = SongsFrame
Songs7.Active = true
Songs7.BackgroundColor3 = Color3.new(0, 0, 0)
Songs7.Position = UDim2.new(0, 0, 0.486016661, 0)
Songs7.Size = UDim2.new(0, 95, 0, 14)
Songs7.Font = Enum.Font.SciFi
Songs7.Text = "Witchblade"
Songs7.TextColor3 = Color3.new(1, 1, 1)
Songs7.TextSize = 10

SettingsFrame.Name = "SettingsFrame"
SettingsFrame.Parent = CreditsLabel
SettingsFrame.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
SettingsFrame.Position = UDim2.new(0.996666908, 0, 0.933334351, 0)
SettingsFrame.Size = UDim2.new(0, 200, 0, 189)

LabelSettings.Name = "LabelSettings"
LabelSettings.Parent = SettingsFrame
LabelSettings.Active = true
LabelSettings.BackgroundColor3 = Color3.new(0, 0, 0)
LabelSettings.BorderColor3 = Color3.new(0, 0, 0)
LabelSettings.Position = UDim2.new(0, 0, -0.0740740746, 0)
LabelSettings.Size = UDim2.new(0, 200, 0, 14)
LabelSettings.Font = Enum.Font.SciFi
LabelSettings.Text = "Settings"
LabelSettings.TextColor3 = Color3.new(1, 1, 1)
LabelSettings.TextSize = 14

LabelColors.Name = "LabelColors"
LabelColors.Parent = SettingsFrame
LabelColors.Active = true
LabelColors.BackgroundColor3 = Color3.new(0, 0, 0)
LabelColors.Position = UDim2.new(0, 0, 0.0370370373, 0)
LabelColors.Size = UDim2.new(0, 200, 0, 10)
LabelColors.Font = Enum.Font.SciFi
LabelColors.Text = "UI Colors"
LabelColors.TextColor3 = Color3.new(1, 1, 1)
LabelColors.TextSize = 14

ButtonColorBlue.Name = "ButtonColorBlue"
ButtonColorBlue.Parent = SettingsFrame
ButtonColorBlue.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonColorBlue.Position = UDim2.new(0, 0, 0.0899470896, 0)
ButtonColorBlue.Size = UDim2.new(0, 95, 0, 20)
ButtonColorBlue.Font = Enum.Font.SciFi
ButtonColorBlue.Text = "Blue"
ButtonColorBlue.TextColor3 = Color3.new(1, 1, 1)
ButtonColorBlue.TextSize = 14

ButtonColorRed.Name = "ButtonColorRed"
ButtonColorRed.Parent = SettingsFrame
ButtonColorRed.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonColorRed.Position = UDim2.new(0.524999976, 0, 0.0899470896, 0)
ButtonColorRed.Size = UDim2.new(0, 95, 0, 20)
ButtonColorRed.Font = Enum.Font.SciFi
ButtonColorRed.Text = "Red"
ButtonColorRed.TextColor3 = Color3.new(1, 1, 1)
ButtonColorRed.TextSize = 14

ButtonColorGreen.Name = "ButtonColorGreen"
ButtonColorGreen.Parent = SettingsFrame
ButtonColorGreen.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonColorGreen.Position = UDim2.new(0, 0, 0.196917504, 0)
ButtonColorGreen.Size = UDim2.new(0, 95, 0, 20)
ButtonColorGreen.Font = Enum.Font.SciFi
ButtonColorGreen.Text = "Green"
ButtonColorGreen.TextColor3 = Color3.new(1, 1, 1)
ButtonColorGreen.TextSize = 14

ButtonColorWhite.Name = "ButtonColorWhite"
ButtonColorWhite.Parent = SettingsFrame
ButtonColorWhite.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonColorWhite.Position = UDim2.new(0.524999976, 0, 0.196917504, 0)
ButtonColorWhite.Size = UDim2.new(0, 95, 0, 20)
ButtonColorWhite.Font = Enum.Font.SciFi
ButtonColorWhite.Text = "White"
ButtonColorWhite.TextColor3 = Color3.new(1, 1, 1)
ButtonColorWhite.TextSize = 14

ButtonColorPurple.Name = "ButtonColorPurple"
ButtonColorPurple.Parent = SettingsFrame
ButtonColorPurple.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonColorPurple.Position = UDim2.new(0, 0, 0.300437003, 0)
ButtonColorPurple.Size = UDim2.new(0, 95, 0, 20)
ButtonColorPurple.Font = Enum.Font.SciFi
ButtonColorPurple.Text = "Purple"
ButtonColorPurple.TextColor3 = Color3.new(1, 1, 1)
ButtonColorPurple.TextSize = 14

ButtonColorYellow.Name = "ButtonColorYellow"
ButtonColorYellow.Parent = SettingsFrame
ButtonColorYellow.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonColorYellow.Position = UDim2.new(0.524999976, 0, 0.300437003, 0)
ButtonColorYellow.Size = UDim2.new(0, 95, 0, 20)
ButtonColorYellow.Font = Enum.Font.SciFi
ButtonColorYellow.Text = "Yellow"
ButtonColorYellow.TextColor3 = Color3.new(1, 1, 1)
ButtonColorYellow.TextSize = 14

TextLabel.Parent = SettingsFrame
TextLabel.Active = true
TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel.Position = UDim2.new(0.109999999, 0, 0.164777011, 0)
TextLabel.Rotation = -25
TextLabel.Size = UDim2.new(0, 156, 0, 22)
TextLabel.Font = Enum.Font.SciFi
TextLabel.Text = "Not Finished"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 14

InfoFrame.Name = "InfoFrame"
InfoFrame.Parent = CreditsLabel
InfoFrame.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
InfoFrame.Position = UDim2.new(0, 0, 13.5333347, 0)
InfoFrame.Size = UDim2.new(0, 300, 0, 202)

LabelInfo.Name = "LabelInfo"
LabelInfo.Parent = InfoFrame
LabelInfo.Active = true
LabelInfo.BackgroundColor3 = Color3.new(0, 0, 0)
LabelInfo.Position = UDim2.new(0, 0, -2.44744933e-05, 0)
LabelInfo.Size = UDim2.new(0, 300, 0, 14)
LabelInfo.Font = Enum.Font.SciFi
LabelInfo.Text = "Information Tab"
LabelInfo.TextColor3 = Color3.new(1, 1, 1)
LabelInfo.TextSize = 12

ButtonCopyDiscord.Name = "ButtonCopyDiscord"
ButtonCopyDiscord.Parent = InfoFrame
ButtonCopyDiscord.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonCopyDiscord.Position = UDim2.new(0, 0, 0.900990129, 0)
ButtonCopyDiscord.Size = UDim2.new(0, 146, 0, 20)
ButtonCopyDiscord.Font = Enum.Font.SciFi
ButtonCopyDiscord.Text = "Copy Discord Link"
ButtonCopyDiscord.TextColor3 = Color3.new(1, 1, 1)
ButtonCopyDiscord.TextSize = 20

Info1.Name = "Info1"
Info1.Parent = InfoFrame
Info1.Active = true
Info1.BackgroundColor3 = Color3.new(0, 0, 0)
Info1.Position = UDim2.new(0.0700000003, 0, 0.123762377, 0)
Info1.Size = UDim2.new(0, 258, 0, 32)
Info1.Font = Enum.Font.SciFi
Info1.Text = "This Script Is for Rogue Test Place"
Info1.TextColor3 = Color3.new(1, 1, 1)
Info1.TextSize = 14

Info2.Name = "Info2"
Info2.Parent = InfoFrame
Info2.Active = true
Info2.BackgroundColor3 = Color3.new(0, 0, 0)
Info2.Position = UDim2.new(0.0700000003, 0, 0.282178223, 0)
Info2.Size = UDim2.new(0, 258, 0, 32)
Info2.Font = Enum.Font.SciFi
Info2.Text = "This Took Me Around 2 Hours To Code"
Info2.TextColor3 = Color3.new(1, 1, 1)
Info2.TextSize = 14

ButtonSongs.Name = "ButtonSongs"
ButtonSongs.Parent = InfoFrame
ButtonSongs.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonSongs.Position = UDim2.new(0.513333321, 0, 0.900990129, 0)
ButtonSongs.Size = UDim2.new(0, 146, 0, 20)
ButtonSongs.Font = Enum.Font.SciFi
ButtonSongs.Text = "Open Songs"
ButtonSongs.TextColor3 = Color3.new(1, 1, 1)
ButtonSongs.TextSize = 20

Info3.Name = "Info3"
Info3.Parent = InfoFrame
Info3.Active = true
Info3.BackgroundColor3 = Color3.new(0, 0, 0)
Info3.Position = UDim2.new(0.0700000003, 0, 0.415841579, 0)
Info3.Size = UDim2.new(0, 258, 0, 32)
Info3.Font = Enum.Font.SciFi
Info3.Text = "This GUI Is For A Game Called KAT"
Info3.TextColor3 = Color3.new(1, 1, 1)
Info3.TextSize = 14

ButtonCopyGameLink.Name = "ButtonCopyGameLink"
ButtonCopyGameLink.Parent = InfoFrame
ButtonCopyGameLink.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonCopyGameLink.Position = UDim2.new(0.25333333, 0, 0.801980257, 0)
ButtonCopyGameLink.Size = UDim2.new(0, 146, 0, 20)
ButtonCopyGameLink.Font = Enum.Font.SciFi
ButtonCopyGameLink.Text = "Copy Game Link"
ButtonCopyGameLink.TextColor3 = Color3.new(1, 1, 1)
ButtonCopyGameLink.TextSize = 20
-- Scripts:
InfoFrame.Visible = false
SettingsFrame.Visible = false
SongsFrame.Visible = false
counter = 0 
function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end

local LocalPlayer = game.Players.LocalPlayer.Name

ButtonAimbotGUI.MouseButton1Click:connect(function()
	loadstring(game:HttpGet("https://pastebin.com/raw/EX6fqt7N",true))()
end)

ButtonInfJump.MouseButton1Click:connect(function()
	game:GetService("UserInputService").JumpRequest:connect(function()
    	game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")       
    end)
end)

ButtonClose.MouseButton1Click:connect(function()
	RogueGUI:Destroy()
end)

ButtonDestroyWalls.MouseButton1Click:connect(function()
	
	local Part = Instance.new("Part")
	local plrpos = game:GetService("Workspace")[LocalPlayer]["Left Leg"].Position

	Part.Size = Vector3.new(1500,1,1500)
	Part.Transparency = 0
	Part.Anchored = true
	Part.BrickColor = BrickColor.new("Dark green")
	Part.CanCollide = true
	Part.Parent = game.Workspace
	Part.Position = plrpos

	game.Workspace.MapMain.MapParts:Destroy()

end)

ButtonSpeed.MouseButton1Click:connect(function()
	loadstring(game:HttpGet("https://pastebin.com/raw/3QDvDhSv",true))()
end)

ButtonAudioLogger.MouseButton1Click:connect(function()
	loadstring(game:HttpGet("https://pastebin.com/raw/T01kfe48",true))()
end)

ButtonRemoveBaseplates.MouseButton1Click:connect(function()
	game.Workspace.Part:Destroy()
end)

ButtonInfo.MouseButton1Click:connect(function()
	if ButtonInfo.Text == "Open Info" then
		InfoFrame.Visible = true
		ButtonInfo.Text = "Close Info"
	elseif
		ButtonInfo.Text == "Close Info" then
			ButtonInfo.Text = "Open Info"
			InfoFrame.Visible = false
	end
end)

ButtonSongs.MouseButton1Click:connect(function()
	if ButtonSongs.Text == "Open Songs" then
		ButtonSongs.Text = "Close Songs"
		SongsFrame.Visible = true
	elseif
		ButtonSongs.Text == "Close Songs" then
			ButtonSongs.Text = "Open Songs"
			SongsFrame.Visible = false
	end
end)

ButtonCopyDiscord.MouseButton1Click:connect(function()
	setclipboard("https://discord.gg/ajAgVrZ")
end)

ButtonInputSong1.MouseButton1Click:connect(function()
	setclipboard("3340604777")
end)

ButtonInputSong2.MouseButton1Click:connect(function()
	setclipboard("3410546891")
end)

ButtonInputSong3.MouseButton1Click:connect(function()
	setclipboard("3341534150")
end)

ButtonInputSong4.MouseButton1Click:connect(function()
	setclipboard("3367788710")
end)

ButtonInputSong5.MouseButton1Click:connect(function()
	setclipboard("3238425073")
end)

ButtonInputSong6.MouseButton1Click:connect(function()
	setclipboard("3360610679")
end)

ButtonInputSong7.MouseButton1Click:connect(function()
	setclipboard("3402919425")
end)

ButtonSettings.MouseButton1Click:connect(function()
	if ButtonSettings.Text == "Open Settings" then
		SettingsFrame.Visible = true
		ButtonSettings.Text = "Close Settings"
	elseif
		ButtonSettings.Text == "Close Settings" then
			SettingsFrame.Visible = false
			ButtonSettings.Text = "Open Settings"
	end
end)

ButtonCopyGameLink.MouseButton1Click:connect(function()
	setclipboard("https://www.roblox.com/games/621129760/MAP-KAT")
end)

ButtonColorBlue.MouseButton1Click:connect(function()
	
end)

ButtonColorRed.MouseButton1Click:connect(function()
	
end)

ButtonColorGreen.MouseButton1Click:connect(function()
	
end)

ButtonColorWhite.MouseButton1Click:connect(function()
	
end)

ButtonColorPurple.MouseButton1Click:connect(function()
	
end)

ButtonColorYellow.MouseButton1Click:connect(function()
	
end)


--Rainbow UI Stuff
while wait(0.1) do
	LabelColors.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)
	LabelInfo.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)
	LabelSettings.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)
	LabelSongs.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)
	CreditsLabel.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)
	ButtonClose.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)

	counter = counter + 0.01
end