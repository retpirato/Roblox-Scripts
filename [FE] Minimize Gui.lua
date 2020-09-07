-- Objects

local GUI = Instance.new("ScreenGui")
local OPEN = Instance.new("TextButton")
local MAINFRAME = Instance.new("Frame")
local TOPBAR = Instance.new("TextButton")
local Line = Instance.new("TextBox")
local Line_2 = Instance.new("TextBox")
local TheStreets = Instance.new("TextButton")
local ThemeButton = Instance.new("TextButton")
local CreditsButton = Instance.new("TextButton")
local Line_3 = Instance.new("TextBox")
local Line_4 = Instance.new("TextBox")
local Line_5 = Instance.new("TextBox")
local ThemePage = Instance.new("TextButton")
local ColorRed = Instance.new("TextButton")
local ColorBlue = Instance.new("TextButton")
local ColorGreen = Instance.new("TextButton")
local ColorPurple = Instance.new("TextButton")
local ImageLabel = Instance.new("ImageLabel")
local ColorDark = Instance.new("TextButton")
local TheStreetsPage = Instance.new("TextBox")
local SaveTools = Instance.new("TextButton")
local NoClipTools = Instance.new("TextButton")
local InsaneAll = Instance.new("TextButton")
local NoClipFly = Instance.new("TextButton")
local InfinitStam = Instance.new("TextButton")
local GodMode = Instance.new("TextButton")
local DoubleJump = Instance.new("TextButton")
local BridgeTool = Instance.new("TextButton")
local CreditPage = Instance.new("TextBox")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")

GUI.Name = "GUI"
GUI.Parent = game.CoreGui

OPEN.Name = "OPEN"
OPEN.Parent = GUI
OPEN.BackgroundColor3 = Color3.new(0, 0, 0)
OPEN.BackgroundTransparency = 0.10000000149012
OPEN.BorderColor3 = Color3.new(0, 0, 0)
OPEN.Draggable = true
OPEN.Position = UDim2.new(0, 0, 0, 418)
OPEN.Size = UDim2.new(0, 139, 0, 17)
OPEN.Font = Enum.Font.Cartoon
OPEN.FontSize = Enum.FontSize.Size24
OPEN.Text = "OPEN"
OPEN.TextColor3 = Color3.new(0.333333, 1, 1)
OPEN.TextSize = 20

MAINFRAME.Name = "MAINFRAME"
MAINFRAME.Parent = GUI
MAINFRAME.BackgroundColor3 = Color3.new(0, 0, 0)
MAINFRAME.BackgroundTransparency = 0.30000001192093
MAINFRAME.Draggable = true
MAINFRAME.Position = UDim2.new(0, 282, 0, 138)
MAINFRAME.Selectable = true
MAINFRAME.Size = UDim2.new(0, 607, 0, 295)
MAINFRAME.Visible = false

TOPBAR.Name = "TOPBAR"
TOPBAR.Parent = MAINFRAME
TOPBAR.Active = false
TOPBAR.BackgroundColor3 = Color3.new(0, 0, 0)
TOPBAR.BackgroundTransparency = 0.20000000298023
TOPBAR.Position = UDim2.new(0, 0, 0, -50)
TOPBAR.Size = UDim2.new(0, 607, 0, 50)
TOPBAR.Font = Enum.Font.Cartoon
TOPBAR.FontSize = Enum.FontSize.Size60
TOPBAR.Text = "Minimize"
TOPBAR.TextColor3 = Color3.new(0.333333, 1, 1)
TOPBAR.TextSize = 50
TOPBAR.TextXAlignment = Enum.TextXAlignment.Left

Line.Name = "Line"
Line.Parent = MAINFRAME
Line.BackgroundColor3 = Color3.new(0, 0, 0)
Line.BackgroundTransparency = 0.10000000149012
Line.BorderColor3 = Color3.new(0, 0, 0)
Line.Position = UDim2.new(0, 192, 0, 0)
Line.Size = UDim2.new(0, 8, 0, 295)
Line.Font = Enum.Font.SourceSans
Line.FontSize = Enum.FontSize.Size14
Line.Text = ""
Line.TextSize = 14

Line_2.Name = "Line"
Line_2.Parent = MAINFRAME
Line_2.BackgroundColor3 = Color3.new(0, 0, 0)
Line_2.BackgroundTransparency = 0.10000000149012
Line_2.BorderColor3 = Color3.new(0, 0, 0)
Line_2.Size = UDim2.new(0, 607, 0, 2)
Line_2.Font = Enum.Font.SourceSans
Line_2.FontSize = Enum.FontSize.Size14
Line_2.Text = ""
Line_2.TextSize = 14

TheStreets.Name = "TheStreets"
TheStreets.Parent = MAINFRAME
TheStreets.BackgroundColor3 = Color3.new(0, 0, 0)
TheStreets.BackgroundTransparency = 0.20000000298023
TheStreets.BorderColor3 = Color3.new(0, 0, 0)
TheStreets.Position = UDim2.new(0, 0, 0, 17)
TheStreets.Size = UDim2.new(0, 190, 0, 33)
TheStreets.Font = Enum.Font.Cartoon
TheStreets.FontSize = Enum.FontSize.Size14
TheStreets.Text = "TheStreets"
TheStreets.TextColor3 = Color3.new(0.333333, 1, 1)
TheStreets.TextSize = 14

ThemeButton.Name = "ThemeButton"
ThemeButton.Parent = MAINFRAME
ThemeButton.BackgroundColor3 = Color3.new(0, 0, 0)
ThemeButton.BackgroundTransparency = 0.20000000298023
ThemeButton.BorderColor3 = Color3.new(0, 0, 0)
ThemeButton.Position = UDim2.new(0, 0, 0, 66)
ThemeButton.Size = UDim2.new(0, 190, 0, 33)
ThemeButton.Font = Enum.Font.Cartoon
ThemeButton.FontSize = Enum.FontSize.Size14
ThemeButton.Text = "Themes"
ThemeButton.TextColor3 = Color3.new(0.333333, 1, 1)
ThemeButton.TextSize = 14

CreditsButton.Name = "CreditsButton"
CreditsButton.Parent = MAINFRAME
CreditsButton.BackgroundColor3 = Color3.new(0, 0, 0)
CreditsButton.BackgroundTransparency = 0.20000000298023
CreditsButton.BorderColor3 = Color3.new(0, 0, 0)
CreditsButton.Position = UDim2.new(0, 0, 0, 115)
CreditsButton.Size = UDim2.new(0, 190, 0, 33)
CreditsButton.Font = Enum.Font.Cartoon
CreditsButton.FontSize = Enum.FontSize.Size14
CreditsButton.Text = "Credits"
CreditsButton.TextColor3 = Color3.new(0.333333, 1, 1)
CreditsButton.TextSize = 14

Line_3.Name = "Line"
Line_3.Parent = MAINFRAME
Line_3.BackgroundColor3 = Color3.new(0, 0, 0)
Line_3.BackgroundTransparency = 0.10000000149012
Line_3.BorderColor3 = Color3.new(0, 0, 0)
Line_3.Position = UDim2.new(0, 599, 0, 0)
Line_3.Size = UDim2.new(0, 8, 0, 295)
Line_3.Font = Enum.Font.SourceSans
Line_3.FontSize = Enum.FontSize.Size14
Line_3.Text = ""
Line_3.TextSize = 14

Line_4.Name = "Line"
Line_4.Parent = MAINFRAME
Line_4.BackgroundColor3 = Color3.new(0, 0, 0)
Line_4.BackgroundTransparency = 0.10000000149012
Line_4.BorderColor3 = Color3.new(0, 0, 0)
Line_4.Position = UDim2.new(0, 0, 0, 293)
Line_4.Size = UDim2.new(0, 607, 0, 2)
Line_4.Font = Enum.Font.SourceSans
Line_4.FontSize = Enum.FontSize.Size14
Line_4.Text = ""
Line_4.TextColor3 = Color3.new(0, 0, 0)
Line_4.TextSize = 14

Line_5.Name = "Line"
Line_5.Parent = MAINFRAME
Line_5.BackgroundColor3 = Color3.new(0, 0, 0)
Line_5.BackgroundTransparency = 0.10000000149012
Line_5.BorderColor3 = Color3.new(0, 0, 0)
Line_5.Size = UDim2.new(0, 0, 0, 295)
Line_5.Font = Enum.Font.SourceSans
Line_5.FontSize = Enum.FontSize.Size14
Line_5.Text = ""
Line_5.TextSize = 14

ThemePage.Name = "ThemePage"
ThemePage.Parent = MAINFRAME
ThemePage.BackgroundColor3 = Color3.new(0, 0, 0)
ThemePage.BackgroundTransparency = 43434
ThemePage.BorderColor3 = Color3.new(0, 0, 0)
ThemePage.Position = UDim2.new(0, 219, 0, 0)
ThemePage.Size = UDim2.new(0, 388, 0, 295)
ThemePage.Visible = false
ThemePage.Font = Enum.Font.Cartoon
ThemePage.FontSize = Enum.FontSize.Size14
ThemePage.Text = ""
ThemePage.TextColor3 = Color3.new(0.333333, 1, 1)
ThemePage.TextSize = 14

ColorRed.Name = "ColorRed"
ColorRed.Parent = ThemePage
ColorRed.BackgroundColor3 = Color3.new(1, 0, 0)
ColorRed.BackgroundTransparency = 0.5
ColorRed.Position = UDim2.new(0, 17, 0, 18)
ColorRed.Size = UDim2.new(0, 149, 0, 33)
ColorRed.Font = Enum.Font.Cartoon
ColorRed.FontSize = Enum.FontSize.Size14
ColorRed.Text = "Red"
ColorRed.TextColor3 = Color3.new(0, 0, 0)
ColorRed.TextSize = 14

ColorBlue.Name = "ColorBlue"
ColorBlue.Parent = ThemePage
ColorBlue.BackgroundColor3 = Color3.new(0, 0, 1)
ColorBlue.BackgroundTransparency = 0.5
ColorBlue.Position = UDim2.new(0, 204, 0, 18)
ColorBlue.Size = UDim2.new(0, 149, 0, 33)
ColorBlue.Font = Enum.Font.Cartoon
ColorBlue.FontSize = Enum.FontSize.Size14
ColorBlue.Text = "Blue"
ColorBlue.TextColor3 = Color3.new(0, 0, 0)
ColorBlue.TextSize = 14

ColorGreen.Name = "ColorGreen"
ColorGreen.Parent = ThemePage
ColorGreen.BackgroundColor3 = Color3.new(0, 1, 0)
ColorGreen.BackgroundTransparency = 0.5
ColorGreen.Position = UDim2.new(0, 20, 0, 75)
ColorGreen.Size = UDim2.new(0, 149, 0, 33)
ColorGreen.Font = Enum.Font.Cartoon
ColorGreen.FontSize = Enum.FontSize.Size14
ColorGreen.Text = "Green"
ColorGreen.TextColor3 = Color3.new(0, 0, 0)
ColorGreen.TextSize = 14

ColorPurple.Name = "ColorPurple"
ColorPurple.Parent = ThemePage
ColorPurple.BackgroundColor3 = Color3.new(1, 0, 0.498039)
ColorPurple.BackgroundTransparency = 0.5
ColorPurple.Position = UDim2.new(0, 204, 0, 75)
ColorPurple.Size = UDim2.new(0, 149, 0, 33)
ColorPurple.Font = Enum.Font.Cartoon
ColorPurple.FontSize = Enum.FontSize.Size14
ColorPurple.Text = "Purple"
ColorPurple.TextColor3 = Color3.new(0, 0, 0)
ColorPurple.TextSize = 14

ImageLabel.Parent = ThemePage
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BackgroundTransparency = 3
ImageLabel.Position = UDim2.new(0, 134, 0, 175)
ImageLabel.Size = UDim2.new(0, 100, 0, 100)
ImageLabel.Image = "rbxassetid://7829588"

ColorDark.Name = "ColorDark"
ColorDark.Parent = ThemePage
ColorDark.BackgroundColor3 = Color3.new(0, 0, 0)
ColorDark.BorderColor3 = Color3.new(0, 0, 0)
ColorDark.Position = UDim2.new(0, 112, 0, 125)
ColorDark.Size = UDim2.new(0, 149, 0, 33)
ColorDark.Font = Enum.Font.Cartoon
ColorDark.FontSize = Enum.FontSize.Size14
ColorDark.Text = "Black"
ColorDark.TextColor3 = Color3.new(1, 1, 1)
ColorDark.TextSize = 14
ColorDark.TextStrokeColor3 = Color3.new(1, 1, 1)

TheStreetsPage.Name = "TheStreetsPage"
TheStreetsPage.Parent = MAINFRAME
TheStreetsPage.BackgroundColor3 = Color3.new(0, 0, 0)
TheStreetsPage.BackgroundTransparency = 5
TheStreetsPage.Position = UDim2.new(0, 199, 0, 0)
TheStreetsPage.Size = UDim2.new(0, 408, 0, 295)
TheStreetsPage.Visible = false
TheStreetsPage.Font = Enum.Font.SourceSans
TheStreetsPage.FontSize = Enum.FontSize.Size14
TheStreetsPage.Text = ""
TheStreetsPage.TextSize = 14

SaveTools.Name = "SaveTools"
SaveTools.Parent = TheStreetsPage
SaveTools.BackgroundColor3 = Color3.new(0, 0, 0)
SaveTools.BackgroundTransparency = 0.30000001192093
SaveTools.BorderColor3 = Color3.new(0, 0, 0)
SaveTools.Position = UDim2.new(0, 0, 0, 105)
SaveTools.Size = UDim2.new(0, 159, 0, 38)
SaveTools.Font = Enum.Font.SourceSans
SaveTools.FontSize = Enum.FontSize.Size14
SaveTools.Text = "Savetools"
SaveTools.TextColor3 = Color3.new(0.333333, 1, 1)
SaveTools.TextSize = 14

NoClipTools.Name = "NoClipTools"
NoClipTools.Parent = TheStreetsPage
NoClipTools.BackgroundColor3 = Color3.new(0, 0, 0)
NoClipTools.BackgroundTransparency = 0.30000001192093
NoClipTools.BorderColor3 = Color3.new(0, 0, 0)
NoClipTools.Position = UDim2.new(0, 0, 0, 159)
NoClipTools.Size = UDim2.new(0, 159, 0, 38)
NoClipTools.Font = Enum.Font.SourceSans
NoClipTools.FontSize = Enum.FontSize.Size14
NoClipTools.Text = "NoClipTools"
NoClipTools.TextColor3 = Color3.new(0.333333, 1, 1)
NoClipTools.TextSize = 14

InsaneAll.Name = "InsaneAll"
InsaneAll.Parent = TheStreetsPage
InsaneAll.BackgroundColor3 = Color3.new(0, 0, 0)
InsaneAll.BackgroundTransparency = 0.30000001192093
InsaneAll.BorderColor3 = Color3.new(0, 0, 0)
InsaneAll.Position = UDim2.new(0, 235, 0, 0)
InsaneAll.Size = UDim2.new(0, 173, 0, 38)
InsaneAll.Font = Enum.Font.SourceSans
InsaneAll.FontSize = Enum.FontSize.Size14
InsaneAll.Text = "InsaneAll"
InsaneAll.TextColor3 = Color3.new(0.333333, 1, 1)
InsaneAll.TextSize = 14

NoClipFly.Name = "NoClipFly"
NoClipFly.Parent = TheStreetsPage
NoClipFly.BackgroundColor3 = Color3.new(0, 0, 0)
NoClipFly.BackgroundTransparency = 0.30000001192093
NoClipFly.BorderColor3 = Color3.new(0, 0, 0)
NoClipFly.Position = UDim2.new(0, 235, 0, 159)
NoClipFly.Size = UDim2.new(0, 173, 0, 38)
NoClipFly.Font = Enum.Font.SourceSans
NoClipFly.FontSize = Enum.FontSize.Size14
NoClipFly.Text = "NoClipFly"
NoClipFly.TextColor3 = Color3.new(0.333333, 1, 1)
NoClipFly.TextSize = 14

InfinitStam.Name = "InfinitStam"
InfinitStam.Parent = TheStreetsPage
InfinitStam.BackgroundColor3 = Color3.new(0, 0, 0)
InfinitStam.BackgroundTransparency = 0.30000001192093
InfinitStam.BorderColor3 = Color3.new(0, 0, 0)
InfinitStam.Position = UDim2.new(0, 0, 0, 53)
InfinitStam.Size = UDim2.new(0, 159, 0, 38)
InfinitStam.Font = Enum.Font.SourceSans
InfinitStam.FontSize = Enum.FontSize.Size14
InfinitStam.Text = "InfinitStam"
InfinitStam.TextColor3 = Color3.new(0.333333, 1, 1)
InfinitStam.TextSize = 14

GodMode.Name = "GodMode"
GodMode.Parent = TheStreetsPage
GodMode.BackgroundColor3 = Color3.new(0, 0, 0)
GodMode.BackgroundTransparency = 0.30000001192093
GodMode.BorderColor3 = Color3.new(0, 0, 0)
GodMode.Size = UDim2.new(0, 159, 0, 38)
GodMode.Font = Enum.Font.SourceSans
GodMode.FontSize = Enum.FontSize.Size14
GodMode.Text = "GodMode"
GodMode.TextColor3 = Color3.new(0.333333, 1, 1)
GodMode.TextSize = 14

DoubleJump.Name = "DoubleJump"
DoubleJump.Parent = TheStreetsPage
DoubleJump.BackgroundColor3 = Color3.new(0, 0, 0)
DoubleJump.BackgroundTransparency = 0.30000001192093
DoubleJump.BorderColor3 = Color3.new(0, 0, 0)
DoubleJump.Position = UDim2.new(0, 235, 0, 104)
DoubleJump.Size = UDim2.new(0, 173, 0, 38)
DoubleJump.Font = Enum.Font.SourceSans
DoubleJump.FontSize = Enum.FontSize.Size14
DoubleJump.Text = "DoubleJump"
DoubleJump.TextColor3 = Color3.new(0.333333, 1, 1)
DoubleJump.TextSize = 14

BridgeTool.Name = "BridgeTool"
BridgeTool.Parent = TheStreetsPage
BridgeTool.BackgroundColor3 = Color3.new(0, 0, 0)
BridgeTool.BackgroundTransparency = 0.30000001192093
BridgeTool.BorderColor3 = Color3.new(0, 0, 0)
BridgeTool.Position = UDim2.new(0, 235, 0, 55)
BridgeTool.Size = UDim2.new(0, 173, 0, 38)
BridgeTool.Font = Enum.Font.SourceSans
BridgeTool.FontSize = Enum.FontSize.Size14
BridgeTool.Text = "BridgeTool"
BridgeTool.TextColor3 = Color3.new(0.333333, 1, 1)
BridgeTool.TextSize = 14

CreditPage.Name = "CreditPage"
CreditPage.Parent = MAINFRAME
CreditPage.BackgroundColor3 = Color3.new(0, 0, 0)
CreditPage.BackgroundTransparency = 4
CreditPage.Position = UDim2.new(0, 204, 0, 0)
CreditPage.Size = UDim2.new(0, 403, 0, 295)
CreditPage.Visible = false
CreditPage.Font = Enum.Font.SourceSans
CreditPage.FontSize = Enum.FontSize.Size14
CreditPage.Text = ""
CreditPage.TextSize = 14

TextLabel.Parent = CreditPage
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 4
TextLabel.Position = UDim2.new(0, 0, 0, 50)
TextLabel.Size = UDim2.new(0, 403, 0, 50)
TextLabel.Font = Enum.Font.Cartoon
TextLabel.FontSize = Enum.FontSize.Size36
TextLabel.Text = "Made by lolboy123#0581"
TextLabel.TextColor3 = Color3.new(0.333333, 1, 1)
TextLabel.TextSize = 35

TextLabel_2.Parent = CreditPage
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 4
TextLabel_2.Position = UDim2.new(0, 0, 0, 98)
TextLabel_2.Size = UDim2.new(0, 403, 0, 50)
TextLabel_2.Font = Enum.Font.Cartoon
TextLabel_2.FontSize = Enum.FontSize.Size36
TextLabel_2.Text = "Will be adding more shit "
TextLabel_2.TextColor3 = Color3.new(0.333333, 1, 1)
TextLabel_2.TextSize = 35

TextLabel_3.Parent = CreditPage
TextLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_3.BackgroundTransparency = 4
TextLabel_3.Position = UDim2.new(0, 0, 0, 148)
TextLabel_3.Size = UDim2.new(0, 403, 0, 50)
TextLabel_3.Font = Enum.Font.Cartoon
TextLabel_3.FontSize = Enum.FontSize.Size36
TextLabel_3.Text = "Enjoy :)"
TextLabel_3.TextColor3 = Color3.new(0.333333, 1, 1)
TextLabel_3.TextSize = 35

TOPBAR.MouseButton1Click:connect(function()
MAINFRAME:TweenSize(UDim2.new(0,680,0,0), 'InOut', 'Quad', 0.5, false)
wait(0.5)
TOPBAR:TweenSize(UDim2.new(0,0,0.06,0), 'InOut', 'Quad', 0.5, false)
MAINFRAME.Visible = false
OPEN.Visible = true
end)

OPEN.MouseButton1Click:connect(function()
OPEN.Visible = false
MAINFRAME.Visible = true
TOPBAR.TextXAlignment = "Left"
MAINFRAME:TweenSize(UDim2.new(0, 607,0, 295), 'InOut', 'Quad', 0.5, false)
   wait(0.5)
TOPBAR:TweenSize(UDim2.new(1,0,0.15,0), 'InOut', 'Quad', 0.5, false)
wait(0.5)
TOPBAR.Text = "Minimize"
MAINFRAME.TheStreets.Text = "TheStreets"
MAINFRAME.ThemePage.Text = "Themes"
MAINFRAME.CreditsPage.Text = "Credits"
end)

TheStreets.MouseButton1Down:connect(function()
MAINFRAME.Visible = true
TheStreetsPage.Visible = true
ThemePage.Visible = false
CreditPage.Visible = false
end)

ThemeButton.MouseButton1Down:connect(function()
MAINFRAME.Visible = true
ThemePage.Visible = true
CreditPage.Visible = false
end)

ThemeButton.MouseButton1Down:connect(function()
ThemePage.Visible = true
MAINFRAME.Visible = true
TheStreetsPage.Visible = false
CreditPage.Visible = false
end)

CreditsButton.MouseButton1Down:connect(function()
CreditPage.Visible = true
MAINFRAME.Visible = true
TheStreetsPage.Visible = false
ThemePage.Visible = false
end)

ColorRed.MouseButton1Click:connect(function()
local a = {name, NoClipTools, BridgeTool, TheStreets, InsaneAll, NoClipFly, GodMode, DoubleJump, Page2button, SaveTools, TheStreetGui, InfinitStam, TOPBAR, CreditsButton, ThemeButton, OPEN, Line, Line_2, Line_3, Line_4, Line_5}
for i,v in pairs(a) do
	v.BackgroundColor3 = Color3.new(255, 0, 0)
	v.BorderColor3 = Color3.new(0, 0, 0)
	if v.ClassName == "TextButton" then
	v.TextColor3 = Color3.new(0, 0, 0)
    if v.ClassName == "TextBox" then
	v.BackgroundColor3 = Color3.new(0, 0, 0)
	end
	end
	end
end)

ColorBlue.MouseButton1Click:connect(function()
local a = {name, NoClipTools, BridgeTool, TheStreets, InsaneAll, NoClipFly, GodMode, DoubleJump, Page2button, SaveTools, TheStreetGui, InfinitStam, TOPBAR, CreditsButton, ThemeButton, OPEN, Line, Line_2, Line_3, Line_4, Line_5}
for i,v in pairs(a) do
	v.BackgroundColor3 = Color3.new(0, 0, 255)
	v.BorderColor3 = Color3.new(0, 0, 0)
	if v.ClassName == "TextButton" then
	v.TextColor3 = Color3.new(0, 0, 0)
    if v.ClassName == "TextBox" then
	v.BackgroundColor3 = Color3.new(0, 0, 0)
	end
	end
	end
end)

ColorGreen.MouseButton1Click:connect(function()
local a = {name, NoClipTools, BridgeTool, TheStreets, InsaneAll, NoClipFly, GodMode, DoubleJump, Page2button, SaveTools, TheStreetGui, InfinitStam, TOPBAR, CreditsButton, ThemeButton, OPEN, Line, Line_2, Line_3, Line_4, Line_5}
for i,v in pairs(a) do
	v.BackgroundColor3 = Color3.new(0, 255, 0)
	v.BorderColor3 = Color3.new(0, 0, 0)
	if v.ClassName == "TextButton" then
	v.TextColor3 = Color3.new(0, 0, 0)
    if v.ClassName == "TextBox" then
	v.BackgroundColor3 = Color3.new(0, 0, 0)
	end
	end
	end
end)

ColorDark.MouseButton1Click:connect(function()
local a = {name, NoClipTools, BridgeTool, TheStreets, InsaneAll, NoClipFly, GodMode, DoubleJump, Page2button, SaveTools, TheStreetGui, InfinitStam, TOPBAR, CreditsButton, ThemeButton, OPEN, Line, Line_2, Line_3, Line_4, Line_5}
for i,v in pairs(a) do
	v.BackgroundColor3 = Color3.new(0, 0, 0)
	v.BorderColor3 = Color3.new(0, 0, 0)
	if v.ClassName == "TextButton" then
	v.TextColor3 = Color3.new(255, 255, 255)
    if v.ClassName == "TextBox" then
	v.BackgroundColor3 = Color3.new(0, 0, 0)
	end
	end
	end
end)

ColorPurple.MouseButton1Click:connect(function()
local a = {name, NoClipTools, BridgeTool, TheStreets, InsaneAll, NoClipFly, GodMode, DoubleJump, Page2button, SaveTools, TheStreetGui, InfinitStam, TOPBAR, CreditsButton, ThemeButton, OPEN, Line, Line_2, Line_3, Line_4, Line_5}
for i,v in pairs(a) do
	v.BackgroundColor3 = Color3.new(170, 0, 127)
	v.BorderColor3 = Color3.new(0, 0, 0)
	if v.ClassName == "TextButton" then
	v.TextColor3 = Color3.new(0, 0, 0)
    if v.ClassName == "TextBox" then
	v.BackgroundColor3 = Color3.new(0, 0, 0)
	end
	end
	end
end)

InfinitStam.MouseButton1Click:connect(function()
local player=game.Players.LocalPlayer
player.Backpack:WaitForChild("Punch").Info.Cooldown.Value = 0.01
player.Backpack.Punch.Info.AnimSpeed.Value = 5
player.Backpack:WaitForChild("Knife").Info.Cooldown.Value = 0.01
player.Backpack.Knife.Info.AnimSpeed.Value = 5
if game:GetService("MarketplaceService"):PlayerOwnsAsset(player, 503266657) then
player.Backpack:WaitForChild("Pipe").Info.Cooldown.Value = 0.01
player.Backpack.Pipe.Info.AnimSpeed.Value = 5
end
player.Backpack.ChildAdded:connect(function(child)
if child.Name == "Bat" or child.Name == "Bottle" then
child:WaitForChild("Info").Cooldown.Value = 0.01
child.Info.AnimSpeed.Value = 5
end
end)
local player=game.Players.LocalPlayer
player.Backpack.ServerTraits.Stam.Changed:connect(function()
player.Backpack.ServerTraits.Stam.Value = 100
end)
end)

NoClipTools.MouseButton1Click:connect(function()
local plr = game.Players.LocalPlayer

if plr:FindFirstChild("PlayerGui") then plg=plr.PlayerGui else return end
	bin=Instance.new("HopperBin",plr:FindFirstChild("Backpack"))
	bin.Name="iBTools"
	bin.Selected:connect(function(mouse)
		box=Instance.new("SelectionBox")
		lso=Instance.new("SelectionPointLasso")
		lso.Visible=false
		coroutine.resume(coroutine.create(function() repeat wait() if iOrb.Humanoid~=nil then
		lso.Humanoid=iOrb.Humanoid end until false end))
		md1=1
		md2=1
		md3=1
		clr=true
		ste=false
		lvi=false
		cle=false
		tme=.5
		function createGui()
			gui=Instance.new("ScreenGui",plg)
			gui.Name="iBGui"
			--PanelGUI--
			frm=Instance.new("Frame",gui)
			frm.Visible=false
			frm.Name="iBPanel"
			frm.Position=UDim2.new(0.0199999996,0,0.400000006,0)
			frm.Size=UDim2.new(0.150000006,0,0.400000006,0)
			frm.Style="RobloxRound"
			frm.ZIndex=8
			lab=Instance.new("TextLabel",frm)
			lab.Name="iBTitle"
			lab.BackgroundTransparency=1
			lab.Size=UDim2.new(1,0,0.150000006,0)
			lab.ZIndex=9
			lab.Font="ArialBold"
			lab.FontSize="Size18"
			lab.Text="iBuildTools Panel"
			lab.TextColor3=Color3.new(1,1,1)
			lab.TextStrokeTransparency=0
			lab.TextStrokeColor3=Color3.new(0,0,0)
			del=Instance.new("TextButton",frm)
			del.Name="iBDelete"
			del.BackgroundTransparency=1
			del.Position=UDim2.new(0,0,0.200000003,0)
			del.Size=UDim2.new(1,0,0.119999997,0)
			del.Style="RobloxButtonDefault"
			del.ZIndex=9
			del.Font="ArialBold"
			del.FontSize="Size12"
			del.Text="Delete"
			del.TextColor3=Color3.new(1,1,1)
			del.Selected=true
			ach=Instance.new("TextButton",frm)
			ach.Name="iBAnchor"
			ach.BackgroundTransparency=1
			ach.Position=UDim2.new(0,0,0.330000013,0)
			ach.Size=UDim2.new(1,0,0.119999997,0)
			ach.Style="RobloxButton"
			ach.ZIndex=9
			ach.Font="ArialBold"
			ach.FontSize="Size12"
			ach.Text="Anchor"
			ach.TextColor3=Color3.new(1,1,1)
			col=Instance.new("TextButton",frm)
			col.Name="iBCanCollide"
			col.BackgroundTransparency=1
			col.Position=UDim2.new(0,0,0.460000008,0)
			col.Size=UDim2.new(1,0,0.119999997,0)
			col.Style="RobloxButton"
			col.ZIndex=9
			col.Font="ArialBold"
			col.FontSize="Size12"
			col.Text="CanCollide"
			col.TextColor3=Color3.new(1,1,1)
			lck=Instance.new("TextButton",frm)
			lck.Name="iBLock"
			lck.BackgroundTransparency=1
			lck.Position=UDim2.new(0,0,0.579999983,0)
			lck.Size=UDim2.new(1,0,0.119999997,0)
			lck.Style="RobloxButton"
			lck.ZIndex=9
			lck.Font="ArialBold"
			lck.FontSize="Size12"
			lck.Text="Lock"
			lck.TextColor3=Color3.new(1,1,1)
			brk=Instance.new("TextButton",frm)
			brk.Name="iBBreak"
			brk.BackgroundTransparency=1
			brk.Position=UDim2.new(0,0,0.699999988,0)
			brk.Size=UDim2.new(1,0,0.119999997,0)
			brk.Style="RobloxButton"
			brk.ZIndex=9
			brk.Font="ArialBold"
			brk.FontSize="Size12"
			brk.Text="BreakJoints"
			brk.TextColor3=Color3.new(1,1,1)
			set=Instance.new("TextButton",frm)
			set.Name="iBSettings"
			set.BackgroundTransparency=1
			set.Position=UDim2.new(0,0,0.829999983,0)
			set.Size=UDim2.new(1,0,0.119999997,0)
			set.Style="RobloxButton"
			set.ZIndex=9
			set.Font="ArialBold"
			set.FontSize="Size12"
			set.Text="Settings"
			set.TextColor3=Color3.new(1,1,1)
			frm.Visible=true
			--SettingsGUI--
			frs=Instance.new("Frame",gui)
			frs.Visible=false
			frs.Name="iBSettings"
			frs.Position=UDim2.new(0.389999986,0,0.400000006,0)
			frs.Size=UDim2.new(0.25,0,0.25,0)
			frs.Style="RobloxRound"
			frs.ZIndex=8
			frw=Instance.new("Frame",frs)
			frw.Name="iBWindow"
			frw.Position=UDim2.new(0,0,0.25999999,0)
			frw.Size=UDim2.new(1,0,0.74000001,0)
			frw.Style="RobloxRound"
			frw.ZIndex=8
			cls=Instance.new("TextButton",frs)
			cls.Name="iBClose"
			cls.Position=UDim2.new(0.850000024,0,-0.00999999978,0)
			cls.Size=UDim2.new(0.150000006,0,0.219999999,0)
			cls.Style="RobloxButtonDefault"
			cls.ZIndex=10
			cls.Font="ArialBold"
			cls.FontSize="Size12"
			cls.Text="X"
			cls.TextColor3=Color3.new(1,0,0)
			wtl=Instance.new("TextLabel",frs)
			wtl.Name="iBTitle"
			wtl.BackgroundTransparency=1
			wtl.Size=UDim2.new(1,0,0.25,0)
			wtl.ZIndex=9
			wtl.Font="ArialBold"
			wtl.FontSize="Size14"
			wtl.Text="iBuildTools Settings Window"
			wtl.TextColor3=Color3.new(1,1,1)
			wtl.TextStrokeColor3=Color3.new(0,0,0)
			wtl.TextStrokeTransparency=0
			wtl.TextXAlignment="Left"
			clk=Instance.new("TextLabel",frw)
			clk.Name="iBClick"
			clk.BackgroundTransparency=1
			clk.Size=UDim2.new(1,0,0.330000013,0)
			clk.ZIndex=10
			clk.Font="ArialBold"
			clk.FontSize="Size12"
			clk.TextColor3=Color3.new(1,1,1)
			clk.Text=" - Click Mode : "
			clk.TextStrokeColor3=Color3.new(0,0,0)
			clk.TextStrokeTransparency=0
			clk.TextXAlignment="Left"
			ray=Instance.new("TextLabel",frw)
			ray.Name="iBRay"
			ray.BackgroundTransparency=1
			ray.Position=UDim2.new(0,0,0.330000013,0)
			ray.Size=UDim2.new(1,0,0.330000013,0)
			ray.ZIndex=10
			ray.Font="ArialBold"
			ray.FontSize="Size12"
			ray.TextColor3=Color3.new(1,1,1)
			ray.Text=" - Ray Mode : "
			ray.TextStrokeColor3=Color3.new(0,0,0)
			ray.TextStrokeTransparency=0
			ray.TextXAlignment="Left"
			rfc=Instance.new("TextLabel",frw)
			rfc.Name="iBRayFunction"
			rfc.BackgroundTransparency=1
			rfc.Position=UDim2.new(0,0,0.660000013,0)
			rfc.Size=UDim2.new(1,0,0.330000013,0)
			rfc.ZIndex=10
			rfc.Font="ArialBold"
			rfc.FontSize="Size12"
			rfc.TextColor3=Color3.new(1,1,1)
			rfc.Text=" - Ray Function : "
			rfc.TextStrokeColor3=Color3.new(0,0,0)
			rfc.TextStrokeTransparency=0
			rfc.TextXAlignment="Left"
			ckb=Instance.new("TextButton",frw)
			ckb.Name="iBClickButton"
			ckb.Position=UDim2.new(0.400000006,0,0,0)
			ckb.Size=UDim2.new(0.600000024,0,0.330000013,0)
			ckb.ZIndex=10
			ckb.Selected=true
			ckb.Style="RobloxButtonDefault"
			ckb.Font="ArialBold"
			ckb.FontSize="Size12"
			ckb.Text="Enabled"
			ckb.TextColor3=Color3.new(0,1,0)
			ryb=Instance.new("TextButton",frw)
			ryb.Name="iBRayButton"
			ryb.Position=UDim2.new(0.400000006,0,0.330000013,0)
			ryb.Size=UDim2.new(0.600000024,0,0.330000013,0)
			ryb.Style="RobloxButton"
			ryb.ZIndex=10
			ryb.Font="ArialBold"
			ryb.FontSize="Size12"
			ryb.Text="Disabled"
			ryb.TextColor3=Color3.new(1,0,0)
			rfb=Instance.new("TextButton",frw)
			rfb.Name="iBRayFButton"
			rfb.Position=UDim2.new(0.400000006,0,0.660000013,0)
			rfb.Size=UDim2.new(0.600000024,0,0.330000013,0)
			rfb.Style="RobloxButtonDefault"
			rfb.ZIndex=10
			rfb.Font="ArialBold"
			rfb.FontSize="Size12"
			rfb.Text="Enable Propertie"
			rfb.TextColor3=Color3.new(0,1,0)
		end createGui()
		coroutine.resume(coroutine.create(function()
			while(mouse)and wait() do
				if(box)and(ray)then
					if(lvi)then
						lso.Visible=true
					else
						lso.Visible=false
					end
					if(md1==1)then
						if(clr)then
							if(mouse.Target~=nil)then
								if(mouse.Target:IsA("BasePart"))or(mouse.Target.Name~="cParticle")or(mouse.Target.Name~="cParticle2")then
									box.Visible=true
									box.Parent=game.Workspace.CurrentCamera
									box.Adornee=mouse.Target
									if(md2==1)then
										box.Color=BrickColor.new("Bright red")
									elseif(md2==2)then
										if(mouse.Target.Anchored)then
											box.Color=BrickColor.new("Camo")
										else
											box.Color=BrickColor.new("Bright red")
										end
									elseif(md2==3)then
										if(mouse.Target.CanCollide)then
											box.Color=BrickColor.new("Camo")
										else
											box.Color=BrickColor.new("Bright red")
										end
									elseif(md2==4)then
										if(mouse.Target.Locked)then
											box.Color=BrickColor.new("Camo")
										else
											box.Color=BrickColor.new("Bright red")
										end
									elseif(md2==5)then
										box.Color=BrickColor.new("Bright blue")
									end
								end
							else
								box.Visible=false
								box.Parent=nil
								box.Adornee=nil
							end
						end
					elseif(md1==2)then
						lso.Point=mouse.Hit.p
						box.Visible=false
						box.Parent=nil
						box.Adornee=nil
						if(md2~=1)and(md2~=5)then
							if(md3==1)then
								lso.Color=BrickColor.new("Camo")
							elseif(md3==2)then
								lso.Color=BrickColor.new("Bright red")
							end
						elseif(md2==1)then
							if(cle)then
								lso.Color=BrickColor.new("Bright red")
							else
								lso.Color=BrickColor.new("Bright blue")
							end
						elseif(md2==5)then
							if(cle)then
								lso.Color=BrickColor.new("Bright red")
							else
								lso.Color=BrickColor.new("Bright blue")
							end
						end
					end
				end
			end
		end))
		function delDown()
			del_downFunc=mouse.Button1Down:connect(function()
				md2=1
				if(md2==1)then
					if(md1==1)then
						if(mouse.Target~=nil)then
							if(mouse.Target:IsA("BasePart"))or(mouse.Target.Name~="cParticle")or(mouse.Target.Name~="cParticle2")then
								mouse.Target:remove()
							end
						end
					elseif(md1==2)then
						lvi=true
						lso.Parent=game.Workspace.CurrentCamera
						while(lvi)and wait() do
							if(mouse.Target~=nil)then
								if(mouse.Target:IsA("BasePart"))or(mouse.Target.Name~="cParticle")or(mouse.Target.Name~="cParticle2")then
									mouse.Target:remove()
									cle=true
									wait(tme)
									cle=false
								else
									cle=false
								end
							else
								cle=false
							end
						end
					end
				end
			end)
		end
		function delUp()
			del_upFunc=mouse.Button1Up:connect(function()
				lvi=false
				cle=false
				lso.Parent=nil
			end)
		end
		function achDown()
			ach_downFunc=mouse.Button1Down:connect(function()
				md2=2
				if(md2==2)then
					if(md1==1)then
						if(mouse.Target~=nil)then
							if(mouse.Target:IsA("BasePart"))or(mouse.Target.Name~="cParticle")or(mouse.Target.Name~="cParticle2")then
								if(mouse.Target.Anchored)then
									mouse.Target.Anchored=false
								else
									mouse.Target.Anchored=true
								end
							end
						end
					elseif(md1==2)then
						lvi=true
						lso.Parent=game.Workspace.CurrentCamera
						while(lvi)and wait() do
							if(mouse.Target~=nil)then
								if(mouse.Target:IsA("BasePart"))or(mouse.Target.Name~="cParticle")or(mouse.Target.Name~="cParticle2")then
									if(md3==1)then
										mouse.Target.Anchored=true
									elseif(md3==2)then
										mouse.Target.Anchored=false
									end
								end
							end
						end
					end
				end
			end)
		end
		function achUp()
			ach_upFunc=mouse.Button1Up:connect(function()
				lvi=false
				lso.Parent=nil
			end)
		end
		function colDown()
			col_downFunc=mouse.Button1Down:connect(function()
				md2=3
				if(md2==3)then
					if(md1==1)then
						if(mouse.Target~=nil)then
							if(mouse.Target:IsA("BasePart"))or(mouse.Target.Name~="cParticle")or(mouse.Target.Name~="cParticle2")then
								if(mouse.Target.CanCollide)then
									mouse.Target.CanCollide=false
								else
									mouse.Target.CanCollide=true
								end
							end
						end
					elseif(md1==2)then
						lvi=true
						lso.Parent=game.Workspace.CurrentCamera
						while(lvi)and wait() do
							if(mouse.Target~=nil)then
								if(mouse.Target:IsA("BasePart"))or(mouse.Target.Name~="cParticle")or(mouse.Target.Name~="cParticle2")then
									if(md3==1)then
										mouse.Target.CanCollide=true
									elseif(md3==2)then
										mouse.Target.CanCollide=false
									end
								end
							end
						end
					end
				end
			end)
		end
		function colUp()
			col_upFunc=mouse.Button1Up:connect(function()
				lvi=false
				lso.Parent=nil
			end)
		end
		function lckDown()
			lck_downFunc=mouse.Button1Down:connect(function()
				md2=4
				if(md2==4)then
					if(md1==1)then
						if(mouse.Target~=nil)then
							if(mouse.Target:IsA("BasePart"))or(mouse.Target.Name~="cParticle")or(mouse.Target.Name~="cParticle2")then
								if(mouse.Target.Locked)then
									mouse.Target.Locked=false
								else
									mouse.Target.Locked=true
								end
							end
						end
					elseif(md1==2)then
						lvi=true
						lso.Parent=game.Workspace.CurrentCamera
						while(lvi)and wait() do
							if(mouse.Target~=nil)then
								if(mouse.Target:IsA("BasePart"))or(mouse.Target.Name~="cParticle")or(mouse.Target.Name~="cParticle2")then
									if(md3==1)then
										mouse.Target.Locked=true
									elseif(md3==2)then
										mouse.Target.Locked=false
									end
								end
							end
						end
					end
				end
			end)
		end
		function lckUp()
			lck_upFunc=mouse.Button1Up:connect(function()
				lvi=false
				lso.Parent=nil
			end)
		end
		function brkDown()
			brk_downFunc=mouse.Button1Down:connect(function()
				md2=5
				if(md2==5)then
					if(md1==1)then
						if(mouse.Target~=nil)then
							if(mouse.Target:IsA("BasePart"))or(mouse.Target.Name~="cParticle")or(mouse.Target.Name~="cParticle2")then
								clr=false
								box.Color=BrickColor.new("Bright red")
								mouse.Target:BreakJoints()
							end
						end
					elseif(md1==2)then
						lvi=true
						lso.Parent=game.Workspace.CurrentCamera
						while(lvi)and wait() do
							if(mouse.Target~=nil)then
								if(mouse.Target:IsA("BasePart"))or(mouse.Target.Name~="cParticle")or(mouse.Target.Name~="cParticle2")then
									mouse.Target:BreakJoints()
									cle=true
								else
									cle=true
								end
							else
								cle=false
							end
						end
					end
				end
			end)
		end
		function brkUp()
			brk_upFunc=mouse.Button1Up:connect(function()
				clr=true
				lvi=false
				cle=false
			end)
		end
		delDown()
		delUp()
		achDown()
		achUp()
		colDown()
		colUp()
		lckDown()
		lckUp()
		brkDown()
		brkUp()
		del.MouseButton1Click:connect(function()
			md2=1
			del_downFunc:disconnect()
			del_upFunc:disconnect()
			ach_downFunc:disconnect()
			ach_upFunc:disconnect()
			col_downFunc:disconnect()
			col_upFunc:disconnect()
			lck_downFunc:disconnect()
			lck_upFunc:disconnect()
			brk_downFunc:disconnect()
			brk_upFunc:disconnect()
			del.Style="RobloxButtonDefault"
			del.Selected=true
			ach.Style="RobloxButton"
			ach.Selected=false
			col.Style="RobloxButton"
			col.Selected=false
			lck.Style="RobloxButton"
			lck.Selected=false
			brk.Style="RobloxButton"
			brk.Selected=false
			delDown()
			delUp()
		end)
		ach.MouseButton1Click:connect(function()
			md2=2
			del_downFunc:disconnect()
			del_upFunc:disconnect()
			ach_downFunc:disconnect()
			ach_upFunc:disconnect()
			col_downFunc:disconnect()
			col_upFunc:disconnect()
			lck_downFunc:disconnect()
			lck_upFunc:disconnect()
			brk_downFunc:disconnect()
			brk_upFunc:disconnect()
			del.Style="RobloxButton"
			del.Selected=false
			ach.Style="RobloxButtonDefault"
			ach.Selected=true
			col.Style="RobloxButton"
			col.Selected=false
			lck.Style="RobloxButton"
			lck.Selected=false
			brk.Style="RobloxButton"
			brk.Selected=false
			achDown()
			achUp()
		end)
		col.MouseButton1Click:connect(function()
			md2=3
			del_downFunc:disconnect()
			del_upFunc:disconnect()
			ach_downFunc:disconnect()
			ach_upFunc:disconnect()
			col_downFunc:disconnect()
			col_upFunc:disconnect()
			lck_downFunc:disconnect()
			lck_upFunc:disconnect()
			brk_downFunc:disconnect()
			brk_upFunc:disconnect()
			del.Style="RobloxButton"
			del.Selected=false
			ach.Style="RobloxButton"
			ach.Selected=false
			col.Style="RobloxButtonDefault"
			col.Selected=true
			lck.Style="RobloxButton"
			lck.Selected=false
			brk.Style="RobloxButton"
			brk.Selected=false
			colDown()
			colUp()
		end)
		lck.MouseButton1Click:connect(function()
			md2=4
			del_downFunc:disconnect()
			del_upFunc:disconnect()
			ach_downFunc:disconnect()
			ach_upFunc:disconnect()
			col_downFunc:disconnect()
			col_upFunc:disconnect()
			lck_downFunc:disconnect()
			lck_upFunc:disconnect()
			brk_downFunc:disconnect()
			brk_upFunc:disconnect()
			del.Style="RobloxButton"
			del.Selected=false
			ach.Style="RobloxButton"
			ach.Selected=false
			col.Style="RobloxButton"
			col.Selected=false
			lck.Style="RobloxButtonDefault"
			lck.Selected=true
			brk.Style="RobloxButton"
			brk.Selected=false
			lckDown()
			lckUp()
		end)
		brk.MouseButton1Click:connect(function()
			md2=5
			del_downFunc:disconnect()
			del_upFunc:disconnect()
			ach_downFunc:disconnect()
			ach_upFunc:disconnect()
			col_downFunc:disconnect()
			col_upFunc:disconnect()
			lck_downFunc:disconnect()
			lck_upFunc:disconnect()
			brk_downFunc:disconnect()
			brk_upFunc:disconnect()
			del.Style="RobloxButton"
			del.Selected=false
			ach.Style="RobloxButton"
			ach.Selected=false
			col.Style="RobloxButton"
			col.Selected=false
			lck.Style="RobloxButton"
			lck.Selected=false
			brk.Style="RobloxButtonDefault"
			brk.Selected=true
			brkDown()
			brkUp()
		end)
		set.MouseButton1Click:connect(function()
			if(ste)then
				ste=false
				frs.Visible=false
				set.Style="RobloxButton"
			else
				ste=true
				frs.Visible=true
				set.Style="RobloxButtonDefault"
			end
		end)
		cls.MouseButton1Click:connect(function()
			ste=false
			frs.Visible=false
			set.Style="RobloxButton"
		end)
		ckb.MouseButton1Click:connect(function()
			md1=1
			ckb.Style="RobloxButtonDefault"
			ckb.Selected=true
			ckb.Text="Enabled"
			ckb.TextColor3=Color3.new(0,1,0)
			ryb.Style="RobloxButton"
			ryb.Selected=false
			ryb.Text="Disabled"
			ryb.TextColor3=Color3.new(1,0,0)
		end)
		ryb.MouseButton1Click:connect(function()
			md1=2
			ryb.Style="RobloxButtonDefault"
			ryb.Selected=true
			ryb.Text="Enabled"
			ryb.TextColor3=Color3.new(0,1,0)
			ckb.Style="RobloxButton"
			ckb.Selected=false
			ckb.Text="Disabled"
			ckb.TextColor3=Color3.new(1,0,0)
		end)
		rfb.MouseButton1Click:connect(function()
			if(md3==1)then
				md3=2
				rfb.Style="RobloxButton"
				rfb.Text="Disable Propertie"
				rfb.TextColor3=Color3.new(1,0,0)
			elseif(md3==2)then
				md3=1
				rfb.Style="RobloxButtonDefault"
				rfb.Text="Enable Propertie"
				rfb.TextColor3=Color3.new(0,1,0)
			end
		end)
	end)
	bin.Deselected:connect(function()
		clr=false
		if(box~=nil)then
			box:Destroy()
		end
		if(lso~=nil)then
			lso:Destroy()
		end
		if(gui~=nil)then
			gui:Destroy()
		end
	end)
end)

GodMode.MouseButton1Click:connect(function()
while wait() do
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    print(v)
        if v.Name == "KO" then
            v:Destroy()
        end
    end
    game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
    w1 = Instance.new("Weld") 
w1.Parent = game.Players.LocalPlayer.Character.Torso 
w1.Part0 = game.Players.LocalPlayer.Character.Head 
w1.Part1 = game.Players.LocalPlayer.Character.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -1.5, 0) 

w1 = Instance.new("Weld") 
w1.Parent = game.Players.LocalPlayer.Character.Torso 
w1.Part0 = game.Players.LocalPlayer.Character["Right Arm"] 
w1.Part1 = game.Players.LocalPlayer.Character.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-1.5, 0, 0) 

w1 = Instance.new("Weld") 
w1.Parent = game.Players.LocalPlayer.Character.Torso 
w1.Part0 = game.Players.LocalPlayer.Character["Left Arm"] 
w1.Part1 = game.Players.LocalPlayer.Character.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(1.5, 0, 0) 

w1 = Instance.new("Weld") 
w1.Parent = game.Players.LocalPlayer.Character.Torso 
w1.Part0 = game.Players.LocalPlayer.Character["Right Leg"] 
w1.Part1 = game.Players.LocalPlayer.Character.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-.5, 2, 0) 

w1 = Instance.new("Weld") 
w1.Parent = game.Players.LocalPlayer.Character.Torso 
w1.Part0 = game.Players.LocalPlayer.Character["Left Leg"] 
w1.Part1 = game.Players.LocalPlayer.Character.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(.5, 2, 0)
end
end)
   
SaveTools.MouseButton1Click:connect(function()
for i, v in pairs(game.Players.LocalPlayer.Backpack:children()) do
v.Parent = game.Players.LocalPlayer.StarterGear
end
end)

BridgeTool.MouseButton1Click:connect(function()
me = game.Players.LocalPlayer
h = Instance.new("HopperBin")
h.Parent = me.Backpack
h.Name = "Bridge Tool"
bridges = {}
hold = false
using = false
holdkey = false
polesize = 5
function selected(mouse, key)
	mouse.Button1Down:connect(function()
		if mouse.Target == nil then return end
		if using == true then return end
		using = true
		hold = true
		pos = mouse.Hit.p
		p = Instance.new("Part")
		p.Parent = workspace
		p.formFactor = 0
		p.Size = Vector3.new(5,1,1)
		p.Anchored = true
		p.Transparency = 0.6
		p.TopSurface = 0
		p.BrickColor = BrickColor.new("Brown")
		p.BottomSurface = 0
		p.CFrame = CFrame.new(pos)
		mes = Instance.new("SpecialMesh")
		mes.Parent = p
		mes.MeshType = "Brick"
		mes.Scale = Vector3.new(1,1,1)
		table.insert(bridges, p)
		mouse.Move:connect(function()
			if mouse.Target == nil then return end
			if hold == true then
				local dist = (p.Position - mouse.Hit.p).magnitude
				p.CFrame = CFrame.new((mouse.Hit.p + pos)/2, pos)
				mes.Scale = Vector3.new(1,1,dist*2)
			end
		end)
	end)
	mouse.Button1Up:connect(function()
		hold = false
		local duh = p.CFrame
		p.Size = Vector3.new(5,1,mes.Scale.Z)
		p.CFrame = duh
		mes:remove()
		for i=1, 5 do
			wait()
			p.Transparency = p.Transparency - 0.12
		end
		p.Material = "Wood"
		using = false
	end)
	mouse.KeyDown:connect(function(key)
		key = key:lower()
		if (key == "r") then
			for i=1, #bridges do
				bridges[i]:remove()
			end
		elseif (key == "q") then
			polesize = polesize - 1
			local ms = Instance.new("Message")
			ms.Parent = me
			ms.Text = "Pole size decreased to "..polesize
			wait(0.4)
			ms:remove()
		elseif (key == "e") then
			polesize = polesize + 1
			local ms = Instance.new("Message")
			ms.Parent = me
			ms.Text = "Pole size increased to "..polesize
			wait(0.4)
			ms:remove()
		elseif (key == "f") then
			if mouse.Target == nil then return end
			if using == true then return end
			using = true
			holdkey = true
			po = Instance.new("Part")
			po.Parent = workspace
			po.formFactor = 0
			po.Size = Vector3.new(1,1,1)
			po.Anchored = true
			po.Transparency = 0.5
			po.TopSurface = 0
			po.BrickColor = BrickColor.new("Brown")
			po.BottomSurface = 0
			mesh = Instance.new("SpecialMesh")
			mesh.Parent = po
			mesh.Scale = Vector3.new(1,polesize,1)
			po.CFrame = CFrame.new(mouse.Hit.p.X, mouse.Hit.p.Y + mesh.Scale.Y/2, mouse.Hit.p.Z)
			table.insert(bridges,po)
		end
	end)
	mouse.KeyUp:connect(function(key)
		key = key:lower()
		if (key == "f") then
			holdkey = false
			for i=1, 5 do
				wait()
				po.Transparency = po.Transparency - 0.1
			end
			local posi = po.CFrame
			po.Material = "Wood"
			po.Size = mesh.Scale
			mesh:remove()
			po.CFrame = posi
			using = false
		end
	end)
end
function deselected()
end
h.Selected:connect(selected)
h.Deselected:connect(deselected)

end)

NoClipFly.MouseButton1Click:connect(function()
noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)

if key == "h" then
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
print('Created by FileExplorer')
print('Credits to Peyton for the ChangeState part of this script') 
end)

DoubleJump.MouseButton1Click:connect(function()
local Player = game.Players.LocalPlayer
repeat wait() until Player.Character -- Yield until the Player's Character is no longer nil
local Character = Player.Character
local Humanoid = Character:WaitForChild("Humanoid")
local UserInputService = game:GetService("UserInputService")
local currentJump
local debounce = true
local DoubleJumpVelocity = 100 -- 50 is a normal ROBLOX jump
 
function jumpRayDown()
    local nR = Ray.new(Character.Torso.Position,Vector3.new(0,-1,0).unit*4)
    local hR,pR=game.Workspace:FindPartOnRay(nR,Character)
    if hR~=nil then
        return true
    end
    return false
end
 
Humanoid.Changed:connect(
    function(Property)
        if Property == "Jump" and debounce == true and Humanoid.Sit==false then
            currentJump=true
            debounce = false
            newConnection = Player:GetMouse().KeyDown:connect(function(key)
                if key:lower():byte()==32 and currentJump and Character.Torso.Velocity.y>-30 then
                    currentJump=false
                    for i, v in pairs(Character:GetChildren()) do
                        if v:isA("BasePart") then
                            v.Velocity = Vector3.new(v.Velocity.x,DoubleJumpVelocity,v.Velocity.z)
                        end
                    end
                end
            end)
            spawn(function()
                repeat wait() until jumpRayDown()==true
                debounce = true
                currentJump = false
                if type(newConnection)=="function" then
                    newConnection:disconnect()
                end
            end)
        elseif Property == "Jump" and Humanoid.Sit==true then
            Humanoid.Jump=false
        end
    end
)
end)

InsaneAll.MouseButton1Click:connect(function()
--FE Insane ALL (only insane)
for _,player in pairs(game.Players:GetPlayers()) do
AnimationId = "33796059"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = player.Character.Humanoid:LoadAnimation(Anim) -- script will error if Humanoid doesnt exist in character
k:Play() --Play the animation
k:AdjustSpeed(99) --Set '1' to any value you want to adjust the animation speed.
end 
end)