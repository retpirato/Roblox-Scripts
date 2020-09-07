local print = function() end
local warn = function() end
local error = function() end

math.randomseed(tick())

function RandomCharacters(length)
	local STR = ''
	
	for i = 1, length do
		STR = STR .. string.char(math.random(65,90))
	end
	
	return STR
end

if getgenv().dex_ui ~= nil then getgenv().dex_ui:remove() getgenv().dex_ui = nil end

CreateGui = function()
local ROBLOX = Instance.new("ScreenGui")
local PropertiesFrame = Instance.new("Frame")
local Header = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local ExplorerPanel = Instance.new("Frame")
local SideMenu = Instance.new("Frame")
local Toggle = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local Version = Instance.new("TextLabel")
local Slant = Instance.new("ImageLabel")
local Main = Instance.new("Frame")
local SlideOut = Instance.new("Frame")
local SlideFrame = Instance.new("Frame")
local Explorer = Instance.new("TextButton")
local Icon = Instance.new("ImageLabel")
local SaveMap = Instance.new("TextButton")
local Icon_2 = Instance.new("ImageLabel")
local Settings = Instance.new("TextButton")
local Icon_3 = Instance.new("ImageLabel")
local Remotes = Instance.new("TextButton")
local Icon_4 = Instance.new("ImageLabel")
local About = Instance.new("TextButton")
local Icon_5 = Instance.new("ImageLabel")
local OpenScriptEditor = Instance.new("TextButton")
local Icon_6 = Instance.new("ImageLabel")
local Toggle_2 = Instance.new("TextButton")
local SettingsPanel = Instance.new("Frame")
local Header_2 = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local SettingTemplate = Instance.new("Frame")
local SName = Instance.new("TextLabel")
local Status = Instance.new("TextLabel")
local Change = Instance.new("TextButton")
local OnBar = Instance.new("TextLabel")
local Bar = Instance.new("TextLabel")
local SettingList = Instance.new("Frame")
local SaveInstance = Instance.new("Frame")
local Title_2 = Instance.new("TextLabel")
local MainWindow = Instance.new("Frame")
local Save = Instance.new("TextButton")
local Desc = Instance.new("TextLabel")
local Cancel = Instance.new("TextButton")
local FileName = Instance.new("TextBox")
local SaveObjects = Instance.new("TextButton")
local enabled = Instance.new("TextLabel")
local Desc2 = Instance.new("TextLabel")
local Confirmation = Instance.new("Frame")
local Title_3 = Instance.new("TextLabel")
local MainWindow_2 = Instance.new("Frame")
local Yes = Instance.new("TextButton")
local Desc_2 = Instance.new("TextLabel")
local No = Instance.new("TextButton")
local Caution = Instance.new("Frame")
local Title_4 = Instance.new("TextLabel")
local MainWindow_3 = Instance.new("Frame")
local Desc_3 = Instance.new("TextLabel")
local Ok = Instance.new("TextButton")
local CallRemote = Instance.new("Frame")
local Title_5 = Instance.new("TextLabel")
local MainWindow_4 = Instance.new("Frame")
local Desc_4 = Instance.new("TextLabel")
local Arguments = Instance.new("ScrollingFrame")
local DisplayReturned = Instance.new("TextButton")
local enabled_2 = Instance.new("TextLabel")
local Desc2_2 = Instance.new("TextLabel")
local Add = Instance.new("TextButton")
local Subtract = Instance.new("TextButton")
local ArgumentTemplate = Instance.new("Frame")
local Type = Instance.new("TextButton")
local Value = Instance.new("TextBox")
local Cancel_2 = Instance.new("TextButton")
local Ok_2 = Instance.new("TextButton")
local TableCaution = Instance.new("Frame")
local MainWindow_5 = Instance.new("Frame")
local Ok_3 = Instance.new("TextButton")
local TableResults = Instance.new("ScrollingFrame")
local TableTemplate = Instance.new("Frame")
local Type_2 = Instance.new("TextLabel")
local Value_2 = Instance.new("TextLabel")
local Title_6 = Instance.new("TextLabel")
local ScriptEditor = Instance.new("Frame")
local Title_7 = Instance.new("TextLabel")
local Cover = Instance.new("Frame")
local EditorGrid = Instance.new("Frame")
local TopBar = Instance.new("Frame")
local ScriptBarLeft = Instance.new("ImageButton")
local ArrowGraphic = Instance.new("Frame")
local Graphic = Instance.new("Frame")
local Graphic_2 = Instance.new("Frame")
local Graphic_3 = Instance.new("Frame")
local Graphic_4 = Instance.new("Frame")
local ScriptBarRight = Instance.new("ImageButton")
local ArrowGraphic_2 = Instance.new("Frame")
local Graphic_5 = Instance.new("Frame")
local Graphic_6 = Instance.new("Frame")
local Graphic_7 = Instance.new("Frame")
local Graphic_8 = Instance.new("Frame")
local Clipboard = Instance.new("TextButton")
local SaveScript = Instance.new("TextButton")
local ScriptBar = Instance.new("Frame")
local Entry = Instance.new("Frame")
local Button = Instance.new("TextButton")
local Close = Instance.new("TextButton")
local Close_2 = Instance.new("TextButton")
local IntroFrame = Instance.new("Frame")
local Main_2 = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local Title_8 = Instance.new("TextLabel")
local Version_2 = Instance.new("TextLabel")
local Creator = Instance.new("TextLabel")
local BG = Instance.new("ImageLabel")
local Slant_2 = Instance.new("Frame")
local ImageLabel_2 = Instance.new("ImageLabel")
local SaveMapWindow = Instance.new("Frame")
local Header_3 = Instance.new("Frame")
local TextLabel_3 = Instance.new("TextLabel")
local MapSettings = Instance.new("Frame")
local Terrain = Instance.new("Frame")
local SName_2 = Instance.new("TextLabel")
local Status_2 = Instance.new("TextLabel")
local Change_2 = Instance.new("TextButton")
local OnBar_2 = Instance.new("TextLabel")
local Bar_2 = Instance.new("TextLabel")
local Lighting = Instance.new("Frame")
local SName_3 = Instance.new("TextLabel")
local Status_3 = Instance.new("TextLabel")
local Change_3 = Instance.new("TextButton")
local OnBar_3 = Instance.new("TextLabel")
local Bar_3 = Instance.new("TextLabel")
local CameraInstances = Instance.new("Frame")
local SName_4 = Instance.new("TextLabel")
local Status_4 = Instance.new("TextLabel")
local Change_4 = Instance.new("TextButton")
local OnBar_4 = Instance.new("TextLabel")
local Bar_4 = Instance.new("TextLabel")
local Scripts = Instance.new("Frame")
local SName_5 = Instance.new("TextLabel")
local Status_5 = Instance.new("TextLabel")
local Change_5 = Instance.new("TextButton")
local OnBar_5 = Instance.new("TextLabel")
local Bar_5 = Instance.new("TextLabel")
local ToSave = Instance.new("TextLabel")
local CopyList = Instance.new("Frame")
local Bottom = Instance.new("Frame")
local TextLabel_4 = Instance.new("TextLabel")
local Save_2 = Instance.new("TextButton")
local FileName_2 = Instance.new("TextBox")
local Entry_2 = Instance.new("Frame")
local Change_6 = Instance.new("TextButton")
local enabled_3 = Instance.new("TextLabel")
local Info = Instance.new("TextLabel")
local RemoteDebugWindow = Instance.new("Frame")
local Header_4 = Instance.new("Frame")
local TextLabel_5 = Instance.new("TextLabel")
local Desc_5 = Instance.new("TextLabel")
local AboutWindow = Instance.new("Frame")
local Header_5 = Instance.new("Frame")
local TextLabel_6 = Instance.new("TextLabel")
local Desc_6 = Instance.new("TextLabel")

ROBLOX.Name = RandomCharacters(16, 64)

PropertiesFrame.Name = "PropertiesFrame"
PropertiesFrame.Parent = ROBLOX
PropertiesFrame.Active = true
PropertiesFrame.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
PropertiesFrame.BorderColor3 = Color3.fromRGB(191, 191, 191)
PropertiesFrame.BorderSizePixel = 0
PropertiesFrame.Position = UDim2.new(1, 0, 0.5, 36)
PropertiesFrame.Size = UDim2.new(0, 300, 0.5, -36)

Header.Name = "Header"
Header.Parent = PropertiesFrame
Header.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Header.BorderColor3 = Color3.fromRGB(149, 149, 149)
Header.BorderSizePixel = 0
Header.Position = UDim2.new(0, 0, 0, -35)
Header.Size = UDim2.new(1, 0, 0, 35)

TextLabel.Parent = Header
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0, 4, 0, 0)
TextLabel.Size = UDim2.new(1, -4, 0.5, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Properties"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

TextBox.Parent = Header
TextBox.BackgroundTransparency = 0.8
TextBox.Position = UDim2.new(0, 4, 0.5, 0)
TextBox.Size = UDim2.new(1, -8, 0.5, -3)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "Search Properties"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 14
TextBox.TextXAlignment = Enum.TextXAlignment.Left

ExplorerPanel.Name = "ExplorerPanel"
ExplorerPanel.Parent = ROBLOX
ExplorerPanel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExplorerPanel.BorderColor3 = Color3.fromRGB(191, 191, 191)
ExplorerPanel.BorderSizePixel = 0
ExplorerPanel.Position = UDim2.new(1, 0, 0, 1)
ExplorerPanel.Size = UDim2.new(0, 300, 0.5, 0)

SideMenu.Name = "SideMenu"
SideMenu.Parent = ROBLOX
SideMenu.BackgroundColor3 = Color3.fromRGB(233, 233, 233)
SideMenu.BackgroundTransparency = 1
SideMenu.BorderColor3 = Color3.fromRGB(149, 149, 149)
SideMenu.BorderSizePixel = 0
SideMenu.Position = UDim2.new(1, -330, 0, 0)
SideMenu.Size = UDim2.new(0, 30, 0, 180)
SideMenu.Visible = false
SideMenu.ZIndex = 2

Toggle.Name = "Toggle"
Toggle.Parent = SideMenu
Toggle.Active = false
Toggle.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Toggle.BorderSizePixel = 0
Toggle.Position = UDim2.new(0, 0, 0, 60)
Toggle.Size = UDim2.new(0, 30, 0, 30)
Toggle.AutoButtonColor = false
Toggle.Font = Enum.Font.SourceSans
Toggle.Text = ">"
Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
Toggle.TextSize = 24
Toggle.TextTransparency = 1
Toggle.TextWrapped = true

Title.Name = "Title"
Title.Parent = SideMenu
Title.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(0, 30, 0, 20)
Title.ZIndex = 2
Title.Font = Enum.Font.SourceSansBold
Title.Text = "DEX"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 14
Title.TextWrapped = true

Version.Name = "Version"
Version.Parent = SideMenu
Version.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Version.BackgroundTransparency = 1
Version.Position = UDim2.new(0, 0, 0, 15)
Version.Size = UDim2.new(0, 30, 0, 20)
Version.ZIndex = 2
Version.Font = Enum.Font.SourceSansBold
Version.Text = "V2.0.0"
Version.TextColor3 = Color3.fromRGB(255, 255, 255)
Version.TextSize = 12
Version.TextWrapped = true

Slant.Name = "Slant"
Slant.Parent = SideMenu
Slant.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Slant.BackgroundTransparency = 1
Slant.Position = UDim2.new(0, 0, 0, 90)
Slant.Rotation = 180
Slant.Size = UDim2.new(0, 30, 0, 30)
Slant.Image = "rbxassetid://474172996"
Slant.ImageColor3 = Color3.fromRGB(43, 43, 43)

Main.Name = "Main"
Main.Parent = SideMenu
Main.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Main.BorderSizePixel = 0
Main.Size = UDim2.new(0, 30, 0, 30)

SlideOut.Name = "SlideOut"
SlideOut.Parent = SideMenu
SlideOut.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
SlideOut.BackgroundTransparency = 1
SlideOut.BorderSizePixel = 0
SlideOut.ClipsDescendants = true
SlideOut.Position = UDim2.new(0, 0, 0, 30)
SlideOut.Size = UDim2.new(0, 30, 0, 150)

SlideFrame.Name = "SlideFrame"
SlideFrame.Parent = SlideOut
SlideFrame.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
SlideFrame.BorderSizePixel = 0
SlideFrame.Position = UDim2.new(0, 0, 0, -150)
SlideFrame.Size = UDim2.new(0, 30, 0, 150)

Explorer.Name = "Explorer"
Explorer.Parent = SlideFrame
Explorer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Explorer.BackgroundTransparency = 1
Explorer.BorderSizePixel = 0
Explorer.Position = UDim2.new(0, 0, 0, 120)
Explorer.Size = UDim2.new(0, 30, 0, 30)
Explorer.ZIndex = 2
Explorer.AutoButtonColor = false
Explorer.Font = Enum.Font.SourceSans
Explorer.Text = ""
Explorer.TextSize = 24

Icon.Name = "Icon"
Icon.Parent = Explorer
Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon.BackgroundTransparency = 1
Icon.Position = UDim2.new(0, 5, 0, 5)
Icon.Size = UDim2.new(0, 20, 0, 20)
Icon.ZIndex = 2
Icon.Image = "rbxassetid://472635937"

SaveMap.Name = "SaveMap"
SaveMap.Parent = SlideFrame
SaveMap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SaveMap.BackgroundTransparency = 1
SaveMap.BorderSizePixel = 0
SaveMap.Position = UDim2.new(0, 0, 0, 90)
SaveMap.Size = UDim2.new(0, 30, 0, 30)
SaveMap.ZIndex = 2
SaveMap.AutoButtonColor = false
SaveMap.Font = Enum.Font.SourceSans
SaveMap.Text = ""
SaveMap.TextSize = 24

Icon_2.Name = "Icon"
Icon_2.Parent = SaveMap
Icon_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon_2.BackgroundTransparency = 1
Icon_2.Position = UDim2.new(0, 5, 0, 5)
Icon_2.Size = UDim2.new(0, 20, 0, 20)
Icon_2.ZIndex = 2
Icon_2.Image = "rbxassetid://472636337"

Settings.Name = "Settings"
Settings.Parent = SlideFrame
Settings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Settings.BackgroundTransparency = 1
Settings.BorderSizePixel = 0
Settings.Position = UDim2.new(0, 0, 0, 30)
Settings.Size = UDim2.new(0, 30, 0, 30)
Settings.ZIndex = 2
Settings.AutoButtonColor = false
Settings.Font = Enum.Font.SourceSans
Settings.Text = ""
Settings.TextSize = 24

Icon_3.Name = "Icon"
Icon_3.Parent = Settings
Icon_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon_3.BackgroundTransparency = 1
Icon_3.Position = UDim2.new(0, 5, 0, 5)
Icon_3.Size = UDim2.new(0, 20, 0, 20)
Icon_3.ZIndex = 2
Icon_3.Image = "rbxassetid://472635774"

Remotes.Name = "Remotes"
Remotes.Parent = SlideFrame
Remotes.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Remotes.BackgroundTransparency = 1
Remotes.BorderSizePixel = 0
Remotes.Position = UDim2.new(0, 0, 0, 60)
Remotes.Size = UDim2.new(0, 30, 0, 30)
Remotes.ZIndex = 2
Remotes.AutoButtonColor = false
Remotes.Font = Enum.Font.SourceSans
Remotes.Text = ""
Remotes.TextSize = 24

Icon_4.Name = "Icon"
Icon_4.Parent = Remotes
Icon_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon_4.BackgroundTransparency = 1
Icon_4.Position = UDim2.new(0, 5, 0, 5)
Icon_4.Size = UDim2.new(0, 20, 0, 20)
Icon_4.ZIndex = 2
Icon_4.Image = "rbxassetid://472636187"

About.Name = "About"
About.Parent = SlideFrame
About.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
About.BackgroundTransparency = 1
About.BorderSizePixel = 0
About.Size = UDim2.new(0, 30, 0, 30)
About.ZIndex = 2
About.AutoButtonColor = false
About.Font = Enum.Font.SourceSans
About.Text = ""
About.TextSize = 24

Icon_5.Archivable = false
Icon_5.Name = "Icon"
Icon_5.Parent = About
Icon_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon_5.BackgroundTransparency = 1
Icon_5.Position = UDim2.new(0, 5, 0, 5)
Icon_5.Size = UDim2.new(0, 20, 0, 20)
Icon_5.ZIndex = 2
Icon_5.Image = "rbxassetid://476354004"

OpenScriptEditor.Name = "OpenScriptEditor"
OpenScriptEditor.Parent = SideMenu
OpenScriptEditor.Active = false
OpenScriptEditor.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
OpenScriptEditor.BorderSizePixel = 0
OpenScriptEditor.Position = UDim2.new(0, 0, 0, 30)
OpenScriptEditor.Size = UDim2.new(0, 30, 0, 30)
OpenScriptEditor.ZIndex = 2
OpenScriptEditor.AutoButtonColor = false
OpenScriptEditor.Font = Enum.Font.SourceSans
OpenScriptEditor.Text = ""
OpenScriptEditor.TextSize = 24

Icon_6.Name = "Icon"
Icon_6.Parent = OpenScriptEditor
Icon_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon_6.BackgroundTransparency = 1
Icon_6.Position = UDim2.new(0, 5, 0, 5)
Icon_6.Size = UDim2.new(0, 20, 0, 20)
Icon_6.ZIndex = 2
Icon_6.Image = "rbxassetid://475456048"
Icon_6.ImageTransparency = 1

Toggle_2.Name = "Toggle"
Toggle_2.Parent = ROBLOX
Toggle_2.BackgroundColor3 = Color3.fromRGB(233, 233, 233)
Toggle_2.BorderColor3 = Color3.fromRGB(149, 149, 149)
Toggle_2.Position = UDim2.new(1, 0, 0, 0)
Toggle_2.Size = UDim2.new(0, 30, 0, 30)
Toggle_2.Font = Enum.Font.SourceSans
Toggle_2.Text = "<"
Toggle_2.TextSize = 24

SettingsPanel.Name = "SettingsPanel"
SettingsPanel.Parent = ROBLOX
SettingsPanel.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
SettingsPanel.BorderColor3 = Color3.fromRGB(191, 191, 191)
SettingsPanel.BorderSizePixel = 0
SettingsPanel.Position = UDim2.new(1, 0, 0, 1)
SettingsPanel.Size = UDim2.new(0, 300, 1, 0)

Header_2.Name = "Header"
Header_2.Parent = SettingsPanel
Header_2.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Header_2.BorderColor3 = Color3.fromRGB(30, 30, 30)
Header_2.Size = UDim2.new(1, 0, 0, 17)

TextLabel_2.Parent = Header_2
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.Position = UDim2.new(0, 4, 0, 0)
TextLabel_2.Size = UDim2.new(1, -4, 1, 0)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Settings"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 14
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

SettingTemplate.Name = "SettingTemplate"
SettingTemplate.Parent = SettingsPanel
SettingTemplate.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
SettingTemplate.BackgroundTransparency = 1
SettingTemplate.Position = UDim2.new(0, 0, 0, 18)
SettingTemplate.Size = UDim2.new(1, 0, 0, 60)
SettingTemplate.Visible = false

SName.Name = "SName"
SName.Parent = SettingTemplate
SName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SName.BackgroundTransparency = 1
SName.Position = UDim2.new(0, 10, 0, 0)
SName.Size = UDim2.new(1, -20, 0, 30)
SName.Font = Enum.Font.SourceSans
SName.Text = "SettingName"
SName.TextColor3 = Color3.fromRGB(255, 255, 255)
SName.TextSize = 18
SName.TextXAlignment = Enum.TextXAlignment.Left

Status.Name = "Status"
Status.Parent = SettingTemplate
Status.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Status.BackgroundTransparency = 1
Status.Position = UDim2.new(0, 60, 0, 30)
Status.Size = UDim2.new(0, 50, 0, 15)
Status.Font = Enum.Font.SourceSans
Status.Text = "Off"
Status.TextColor3 = Color3.fromRGB(255, 255, 255)
Status.TextSize = 18
Status.TextXAlignment = Enum.TextXAlignment.Left

Change.Name = "Change"
Change.Parent = SettingTemplate
Change.BackgroundColor3 = Color3.fromRGB(81, 81, 81)
Change.BorderSizePixel = 0
Change.Position = UDim2.new(0, 10, 0, 30)
Change.Size = UDim2.new(0, 40, 0, 15)
Change.Font = Enum.Font.SourceSans
Change.Text = ""
Change.TextColor3 = Color3.fromRGB(255, 255, 255)
Change.TextSize = 14

OnBar.Name = "OnBar"
OnBar.Parent = Change
OnBar.BackgroundColor3 = Color3.fromRGB(209, 125, 0)
OnBar.BorderSizePixel = 0
OnBar.Size = UDim2.new(0, 0, 0, 15)
OnBar.Font = Enum.Font.SourceSans
OnBar.Text = ""
OnBar.TextColor3 = Color3.fromRGB(255, 255, 255)
OnBar.TextSize = 14

Bar.Name = "Bar"
Bar.Parent = Change
Bar.BackgroundColor3 = Color3.fromRGB(255, 153, 0)
Bar.BorderSizePixel = 0
Bar.ClipsDescendants = true
Bar.Position = UDim2.new(0, -2, 0, -2)
Bar.Size = UDim2.new(0, 10, 0, 19)
Bar.Font = Enum.Font.SourceSans
Bar.Text = ""
Bar.TextColor3 = Color3.fromRGB(255, 255, 255)
Bar.TextSize = 14

SettingList.Name = "SettingList"
SettingList.Parent = SettingsPanel
SettingList.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
SettingList.BackgroundTransparency = 1
SettingList.Position = UDim2.new(0, 0, 0, 17)
SettingList.Size = UDim2.new(1, 0, 1, -17)

SaveInstance.Name = "SaveInstance"
SaveInstance.Parent = ROBLOX
SaveInstance.Active = true
SaveInstance.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
SaveInstance.BorderColor3 = Color3.fromRGB(30, 30, 30)
SaveInstance.Draggable = true
SaveInstance.Position = UDim2.new(0.3, 0, 0.3, 0)
SaveInstance.Size = UDim2.new(0, 350, 0, 20)
SaveInstance.Visible = false
SaveInstance.ZIndex = 2

Title_2.Name = "Title"
Title_2.Parent = SaveInstance
Title_2.BackgroundTransparency = 1
Title_2.Size = UDim2.new(1, 0, 1, 0)
Title_2.ZIndex = 2
Title_2.Font = Enum.Font.SourceSans
Title_2.Text = "Save Instance"
Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_2.TextSize = 14
Title_2.TextXAlignment = Enum.TextXAlignment.Left

MainWindow.Name = "MainWindow"
MainWindow.Parent = SaveInstance
MainWindow.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
MainWindow.BackgroundTransparency = 0.1
MainWindow.BorderColor3 = Color3.fromRGB(30, 30, 30)
MainWindow.Size = UDim2.new(1, 0, 0, 200)

Save.Name = "Save"
Save.Parent = MainWindow
Save.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Save.BackgroundTransparency = 0.5
Save.BorderColor3 = Color3.fromRGB(40, 40, 40)
Save.Position = UDim2.new(0.075, 0, 1, -40)
Save.Size = UDim2.new(0.4, 0, 0, 30)
Save.Font = Enum.Font.SourceSans
Save.Text = "Save"
Save.TextColor3 = Color3.fromRGB(255, 255, 255)
Save.TextSize = 18

Desc.Name = "Desc"
Desc.Parent = MainWindow
Desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Desc.BackgroundTransparency = 1
Desc.Position = UDim2.new(0, 0, 0, 20)
Desc.Size = UDim2.new(1, 0, 0, 40)
Desc.Font = Enum.Font.SourceSans
Desc.Text = "This will save an instance to your PC. Type in the name for your instance. (.rbxmx will be added automatically.)"
Desc.TextColor3 = Color3.fromRGB(255, 255, 255)
Desc.TextSize = 14
Desc.TextWrapped = true

Cancel.Name = "Cancel"
Cancel.Parent = MainWindow
Cancel.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Cancel.BackgroundTransparency = 0.5
Cancel.BorderColor3 = Color3.fromRGB(40, 40, 40)
Cancel.Position = UDim2.new(0.524, 0, 1, -40)
Cancel.Size = UDim2.new(0.4, 0, 0, 30)
Cancel.Font = Enum.Font.SourceSans
Cancel.Text = "Cancel"
Cancel.TextColor3 = Color3.fromRGB(255, 255, 255)
Cancel.TextSize = 18

FileName.Name = "FileName"
FileName.Parent = MainWindow
FileName.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
FileName.BackgroundTransparency = 0.2
FileName.BorderColor3 = Color3.fromRGB(40, 40, 40)
FileName.Position = UDim2.new(0.075, 0, 0.4, 0)
FileName.Size = UDim2.new(0.85, 0, 0, 30)
FileName.Font = Enum.Font.SourceSans
FileName.Text = ""
FileName.TextColor3 = Color3.fromRGB(255, 255, 255)
FileName.TextSize = 18
FileName.TextXAlignment = Enum.TextXAlignment.Left

SaveObjects.Name = "SaveObjects"
SaveObjects.Parent = MainWindow
SaveObjects.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
SaveObjects.BackgroundTransparency = 0.6
SaveObjects.BorderColor3 = Color3.fromRGB(40, 40, 40)
SaveObjects.Position = UDim2.new(0.075, 0, 0.625, 0)
SaveObjects.Size = UDim2.new(0, 20, 0, 20)
SaveObjects.ZIndex = 2
SaveObjects.Font = Enum.Font.SourceSans
SaveObjects.Text = ""
SaveObjects.TextColor3 = Color3.fromRGB(255, 255, 255)
SaveObjects.TextSize = 18

enabled.Name = "enabled"
enabled.Parent = SaveObjects
enabled.BackgroundColor3 = Color3.fromRGB(96, 96, 96)
enabled.BackgroundTransparency = 0.4
enabled.BorderSizePixel = 0
enabled.Position = UDim2.new(0, 3, 0, 3)
enabled.Size = UDim2.new(0, 14, 0, 14)
enabled.Font = Enum.Font.SourceSans
enabled.Text = ""
enabled.TextSize = 14

Desc2.Name = "Desc2"
Desc2.Parent = MainWindow
Desc2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Desc2.BackgroundTransparency = 1
Desc2.Position = UDim2.new(0.075, 30, 0.625, 0)
Desc2.Size = UDim2.new(0.925, -30, 0, 20)
Desc2.Font = Enum.Font.SourceSans
Desc2.Text = "Save \"Object\" type values"
Desc2.TextColor3 = Color3.fromRGB(255, 255, 255)
Desc2.TextSize = 14
Desc2.TextXAlignment = Enum.TextXAlignment.Left

Confirmation.Name = "Confirmation"
Confirmation.Parent = ROBLOX
Confirmation.Active = true
Confirmation.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Confirmation.BorderColor3 = Color3.fromRGB(30, 30, 30)
Confirmation.Draggable = true
Confirmation.Position = UDim2.new(0.3, 0, 0.349, 0)
Confirmation.Size = UDim2.new(0, 350, 0, 20)
Confirmation.Visible = false
Confirmation.ZIndex = 3

Title_3.Name = "Title"
Title_3.Parent = Confirmation
Title_3.BackgroundTransparency = 1
Title_3.Size = UDim2.new(1, 0, 1, 0)
Title_3.ZIndex = 3
Title_3.Font = Enum.Font.SourceSans
Title_3.Text = "    Confirm"
Title_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_3.TextSize = 14
Title_3.TextXAlignment = Enum.TextXAlignment.Left

MainWindow_2.Name = "MainWindow"
MainWindow_2.Parent = Confirmation
MainWindow_2.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
MainWindow_2.BackgroundTransparency = 0.1
MainWindow_2.BorderColor3 = Color3.fromRGB(40, 40, 40)
MainWindow_2.Size = UDim2.new(1, 0, 0, 150)
MainWindow_2.ZIndex = 2

Yes.Name = "Yes"
Yes.Parent = MainWindow_2
Yes.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Yes.BackgroundTransparency = 0.5
Yes.BorderColor3 = Color3.fromRGB(0, 0, 0)
Yes.Position = UDim2.new(0.075, 0, 1, -40)
Yes.Size = UDim2.new(0.4, 0, 0, 30)
Yes.ZIndex = 2
Yes.Font = Enum.Font.SourceSans
Yes.Text = "Yes"
Yes.TextColor3 = Color3.fromRGB(255, 255, 255)
Yes.TextSize = 18

Desc_2.Name = "Desc"
Desc_2.Parent = MainWindow_2
Desc_2.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Desc_2.BackgroundTransparency = 1
Desc_2.Position = UDim2.new(0, 0, 0, 20)
Desc_2.Size = UDim2.new(1, 0, 0, 40)
Desc_2.ZIndex = 2
Desc_2.Font = Enum.Font.SourceSans
Desc_2.Text = "The file, FILENAME, already exists. Overwrite?"
Desc_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Desc_2.TextSize = 14
Desc_2.TextWrapped = true

No.Name = "No"
No.Parent = MainWindow_2
No.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
No.BackgroundTransparency = 0.5
No.BorderColor3 = Color3.fromRGB(0, 0, 0)
No.Position = UDim2.new(0.524, 0, 1, -40)
No.Size = UDim2.new(0.4, 0, 0, 30)
No.ZIndex = 2
No.Font = Enum.Font.SourceSans
No.Text = "No"
No.TextColor3 = Color3.fromRGB(255, 255, 255)
No.TextSize = 18

Caution.Name = "Caution"
Caution.Parent = ROBLOX
Caution.Active = true
Caution.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Caution.BorderColor3 = Color3.fromRGB(30, 30, 30)
Caution.Draggable = true
Caution.Position = UDim2.new(0.3, 0, 0.3, 0)
Caution.Size = UDim2.new(0, 350, 0, 20)
Caution.Visible = false
Caution.ZIndex = 5

Title_4.Name = "Title"
Title_4.Parent = Caution
Title_4.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Title_4.BackgroundTransparency = 1
Title_4.Size = UDim2.new(1, 0, 1, 0)
Title_4.ZIndex = 5
Title_4.Font = Enum.Font.SourceSans
Title_4.Text = "    Caution"
Title_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_4.TextSize = 14
Title_4.TextStrokeColor3 = Color3.fromRGB(30, 30, 30)
Title_4.TextXAlignment = Enum.TextXAlignment.Left

MainWindow_3.Name = "MainWindow"
MainWindow_3.Parent = Caution
MainWindow_3.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
MainWindow_3.BackgroundTransparency = 0.1
MainWindow_3.BorderColor3 = Color3.fromRGB(40, 40, 40)
MainWindow_3.Size = UDim2.new(1, 0, 0, 150)
MainWindow_3.ZIndex = 4

Desc_3.Name = "Desc"
Desc_3.Parent = MainWindow_3
Desc_3.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Desc_3.BackgroundTransparency = 1
Desc_3.Position = UDim2.new(0, 0, 0, 20)
Desc_3.Size = UDim2.new(1, 0, 0, 42)
Desc_3.ZIndex = 4
Desc_3.Font = Enum.Font.SourceSans
Desc_3.Text = "The file, FILENAME, already exists. Overwrite?"
Desc_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Desc_3.TextSize = 14
Desc_3.TextStrokeColor3 = Color3.fromRGB(30, 30, 30)
Desc_3.TextWrapped = true

Ok.Name = "Ok"
Ok.Parent = MainWindow_3
Ok.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Ok.BackgroundTransparency = 0.5
Ok.BorderColor3 = Color3.fromRGB(0, 0, 0)
Ok.Position = UDim2.new(0.3, 0, 1, -40)
Ok.Size = UDim2.new(0.4, 0, 0, 30)
Ok.ZIndex = 4
Ok.Font = Enum.Font.SourceSans
Ok.Text = "Ok"
Ok.TextColor3 = Color3.fromRGB(255, 255, 255)
Ok.TextSize = 18
Ok.TextStrokeColor3 = Color3.fromRGB(30, 30, 30)

CallRemote.Name = "CallRemote"
CallRemote.Parent = ROBLOX
CallRemote.Active = true
CallRemote.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
CallRemote.BorderColor3 = Color3.fromRGB(40, 40, 40)
CallRemote.Draggable = true
CallRemote.Position = UDim2.new(0.3, 0, 0.3, 0)
CallRemote.Size = UDim2.new(0, 350, 0, 20)
CallRemote.Visible = false
CallRemote.ZIndex = 2

Title_5.Name = "Title"
Title_5.Parent = CallRemote
Title_5.BackgroundTransparency = 1
Title_5.Size = UDim2.new(1, 0, 1, 0)
Title_5.ZIndex = 2
Title_5.Font = Enum.Font.SourceSans
Title_5.Text = "Call Remote"
Title_5.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_5.TextSize = 14
Title_5.TextXAlignment = Enum.TextXAlignment.Left

MainWindow_4.Name = "MainWindow"
MainWindow_4.Parent = CallRemote
MainWindow_4.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
MainWindow_4.BackgroundTransparency = 0.1
MainWindow_4.BorderColor3 = Color3.fromRGB(40, 40, 40)
MainWindow_4.Size = UDim2.new(1, 0, 0, 200)

Desc_4.Name = "Desc"
Desc_4.Parent = MainWindow_4
Desc_4.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Desc_4.BackgroundTransparency = 1
Desc_4.BorderColor3 = Color3.fromRGB(30, 30, 30)
Desc_4.Position = UDim2.new(0, 0, 0, 20)
Desc_4.Size = UDim2.new(1, 0, 0, 20)
Desc_4.Font = Enum.Font.SourceSans
Desc_4.Text = "Arguments"
Desc_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Desc_4.TextSize = 14
Desc_4.TextWrapped = true

Arguments.Name = "Arguments"
Arguments.Parent = MainWindow_4
Arguments.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Arguments.BackgroundTransparency = 1
Arguments.BorderColor3 = Color3.fromRGB(30, 30, 30)
Arguments.Position = UDim2.new(0, 0, 0, 40)
Arguments.Size = UDim2.new(1, 0, 0, 80)
Arguments.BottomImage = "rbxasset://textures/blackBkg_square.png"
Arguments.CanvasSize = UDim2.new(0, 0, 0, 0)
Arguments.MidImage = "rbxasset://textures/blackBkg_square.png"
Arguments.TopImage = "rbxasset://textures/blackBkg_square.png"

DisplayReturned.Name = "DisplayReturned"
DisplayReturned.Parent = MainWindow_4
DisplayReturned.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
DisplayReturned.BackgroundTransparency = 0.6
DisplayReturned.BorderColor3 = Color3.fromRGB(30, 30, 30)
DisplayReturned.Position = UDim2.new(0.075, 0, 0.625, 0)
DisplayReturned.Size = UDim2.new(0, 20, 0, 20)
DisplayReturned.ZIndex = 2
DisplayReturned.Font = Enum.Font.SourceSans
DisplayReturned.Text = ""
DisplayReturned.TextColor3 = Color3.fromRGB(255, 255, 255)
DisplayReturned.TextSize = 18

enabled_2.Name = "enabled"
enabled_2.Parent = DisplayReturned
enabled_2.BackgroundColor3 = Color3.fromRGB(96, 96, 96)
enabled_2.BackgroundTransparency = 0.4
enabled_2.BorderSizePixel = 0
enabled_2.Position = UDim2.new(0, 3, 0, 3)
enabled_2.Size = UDim2.new(0, 14, 0, 14)
enabled_2.Visible = false
enabled_2.Font = Enum.Font.SourceSans
enabled_2.Text = ""
enabled_2.TextSize = 14

Desc2_2.Name = "Desc2"
Desc2_2.Parent = MainWindow_4
Desc2_2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Desc2_2.BackgroundTransparency = 1
Desc2_2.BorderColor3 = Color3.fromRGB(30, 30, 30)
Desc2_2.Position = UDim2.new(0.075, 30, 0.625, 0)
Desc2_2.Size = UDim2.new(0.925, -30, 0, 20)
Desc2_2.Font = Enum.Font.SourceSans
Desc2_2.Text = "Display values returned"
Desc2_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Desc2_2.TextSize = 14
Desc2_2.TextXAlignment = Enum.TextXAlignment.Left

Add.Name = "Add"
Add.Parent = MainWindow_4
Add.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Add.BackgroundTransparency = 0.5
Add.BorderColor3 = Color3.fromRGB(30, 30, 30)
Add.Position = UDim2.new(0.8, 0, 0.625, 0)
Add.Size = UDim2.new(0, 20, 0, 20)
Add.Font = Enum.Font.SourceSansBold
Add.Text = "+"
Add.TextColor3 = Color3.fromRGB(255, 255, 255)
Add.TextSize = 24

Subtract.Name = "Subtract"
Subtract.Parent = MainWindow_4
Subtract.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Subtract.BackgroundTransparency = 0.5
Subtract.BorderColor3 = Color3.fromRGB(30, 30, 30)
Subtract.Position = UDim2.new(0.899, 0, 0.625, 0)
Subtract.Size = UDim2.new(0, 20, 0, 20)
Subtract.Font = Enum.Font.SourceSansBold
Subtract.Text = "-"
Subtract.TextColor3 = Color3.fromRGB(255, 255, 255)
Subtract.TextSize = 24

ArgumentTemplate.Name = "ArgumentTemplate"
ArgumentTemplate.Parent = MainWindow_4
ArgumentTemplate.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ArgumentTemplate.BackgroundTransparency = 0.5
ArgumentTemplate.BorderColor3 = Color3.fromRGB(40, 40, 40)
ArgumentTemplate.Size = UDim2.new(1, 0, 0, 20)
ArgumentTemplate.Visible = false

Type.Name = "Type"
Type.Parent = ArgumentTemplate
Type.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Type.BackgroundTransparency = 0.899
Type.BorderColor3 = Color3.fromRGB(30, 30, 30)
Type.Size = UDim2.new(0.4, 0, 0, 20)
Type.Font = Enum.Font.SourceSans
Type.Text = "Script"
Type.TextSize = 18

Value.Name = "Value"
Value.Parent = ArgumentTemplate
Value.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Value.BackgroundTransparency = 0.899
Value.BorderColor3 = Color3.fromRGB(30, 30, 30)
Value.Position = UDim2.new(0.4, 0, 0, 0)
Value.Size = UDim2.new(0.6, -12, 0, 20)
Value.Font = Enum.Font.SourceSans
Value.Text = ""
Value.TextSize = 14
Value.TextXAlignment = Enum.TextXAlignment.Left

Cancel_2.Name = "Cancel"
Cancel_2.Parent = MainWindow_4
Cancel_2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Cancel_2.BackgroundTransparency = 0.5
Cancel_2.BorderColor3 = Color3.fromRGB(30, 30, 30)
Cancel_2.Size = UDim2.new(0.4, 0, 0, 30)
Cancel_2.Font = Enum.Font.SourceSans
Cancel_2.Text = "Cancel"
Cancel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Cancel_2.TextSize = 18

Ok_2.Name = "Ok"
Ok_2.Parent = MainWindow_4
Ok_2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Ok_2.BackgroundTransparency = 0.5
Ok_2.BorderColor3 = Color3.fromRGB(30, 30, 30)
Ok_2.Position = UDim2.new(0.075, 0, 1, -40)
Ok_2.Size = UDim2.new(0.4, 0, 0, 30)
Ok_2.Font = Enum.Font.SourceSans
Ok_2.Text = "Call"
Ok_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Ok_2.TextSize = 18

TableCaution.Name = "TableCaution"
TableCaution.Parent = ROBLOX
TableCaution.Active = true
TableCaution.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TableCaution.BorderColor3 = Color3.fromRGB(43, 43, 43)
TableCaution.Draggable = true
TableCaution.Position = UDim2.new(0.3, 0, 0.3, 0)
TableCaution.Size = UDim2.new(0, 350, 0, 20)
TableCaution.Visible = false
TableCaution.ZIndex = 2

MainWindow_5.Name = "MainWindow"
MainWindow_5.Parent = TableCaution
MainWindow_5.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
MainWindow_5.BackgroundTransparency = 0.1
MainWindow_5.BorderColor3 = Color3.fromRGB(43, 43, 43)
MainWindow_5.Size = UDim2.new(1, 0, 0, 150)

Ok_3.Name = "Ok"
Ok_3.Parent = MainWindow_5
Ok_3.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Ok_3.BackgroundTransparency = 0.5
Ok_3.BorderColor3 = Color3.fromRGB(30, 30, 30)
Ok_3.Position = UDim2.new(0.3, 0, 1, -40)
Ok_3.Size = UDim2.new(0.4, 0, 0, 30)
Ok_3.Font = Enum.Font.SourceSans
Ok_3.Text = "Ok"
Ok_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Ok_3.TextSize = 18

TableResults.Name = "TableResults"
TableResults.Parent = MainWindow_5
TableResults.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TableResults.BackgroundTransparency = 1
TableResults.Position = UDim2.new(0, 0, 0, 20)
TableResults.Size = UDim2.new(1, 0, 0, 80)
TableResults.BottomImage = "rbxasset://textures/blackBkg_square.png"
TableResults.CanvasSize = UDim2.new(0, 0, 0, 0)
TableResults.MidImage = "rbxasset://textures/blackBkg_square.png"
TableResults.TopImage = "rbxasset://textures/blackBkg_square.png"

TableTemplate.Name = "TableTemplate"
TableTemplate.Parent = MainWindow_5
TableTemplate.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
TableTemplate.BackgroundTransparency = 0.5
TableTemplate.BorderColor3 = Color3.fromRGB(191, 191, 191)
TableTemplate.Size = UDim2.new(1, 0, 0, 20)
TableTemplate.Visible = false

Type_2.Name = "Type"
Type_2.Parent = TableTemplate
Type_2.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Type_2.BackgroundTransparency = 0.899
Type_2.BorderColor3 = Color3.fromRGB(30, 30, 30)
Type_2.Size = UDim2.new(0.4, 0, 0, 20)
Type_2.Font = Enum.Font.SourceSans
Type_2.Text = "Script"
Type_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Type_2.TextSize = 18

Value_2.Name = "Value"
Value_2.Parent = TableTemplate
Value_2.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Value_2.BackgroundTransparency = 0.899
Value_2.BorderColor3 = Color3.fromRGB(30, 30, 30)
Value_2.Position = UDim2.new(0.4, 0, 0, 0)
Value_2.Size = UDim2.new(0.6, -12, 0, 20)
Value_2.Font = Enum.Font.SourceSans
Value_2.Text = "Script"
Value_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Value_2.TextSize = 14

Title_6.Name = "Title"
Title_6.Parent = TableCaution
Title_6.BackgroundTransparency = 1
Title_6.Size = UDim2.new(1, 0, 1, 0)
Title_6.ZIndex = 2
Title_6.Font = Enum.Font.SourceSans
Title_6.Text = "Caution"
Title_6.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_6.TextSize = 14
Title_6.TextXAlignment = Enum.TextXAlignment.Left

ScriptEditor.Name = "ScriptEditor"
ScriptEditor.Parent = ROBLOX
ScriptEditor.Active = true
ScriptEditor.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
ScriptEditor.BorderColor3 = Color3.fromRGB(30, 30, 30)
ScriptEditor.Draggable = true
ScriptEditor.Position = UDim2.new(0.3, 0, 0.3, 0)
ScriptEditor.Size = UDim2.new(0, 916, 0, 20)
ScriptEditor.Visible = false
ScriptEditor.ZIndex = 5

Title_7.Name = "Title"
Title_7.Parent = ScriptEditor
Title_7.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Title_7.BackgroundTransparency = 1
Title_7.Size = UDim2.new(1, 0, 1, 0)
Title_7.ZIndex = 5
Title_7.Font = Enum.Font.SourceSans
Title_7.Text = "Script Viewer"
Title_7.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_7.TextSize = 14
Title_7.TextXAlignment = Enum.TextXAlignment.Left

Cover.Name = "Cover"
Cover.Parent = ScriptEditor
Cover.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Cover.BorderColor3 = Color3.fromRGB(30, 30, 30)
Cover.Position = UDim2.new(0, 0, 3, 0)
Cover.Size = UDim2.new(0, 916, 0, 416)

EditorGrid.Name = "EditorGrid"
EditorGrid.Parent = ScriptEditor
EditorGrid.Active = true
EditorGrid.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
EditorGrid.BorderColor3 = Color3.fromRGB(30, 30, 30)
EditorGrid.Position = UDim2.new(0, 0, 3, 0)
EditorGrid.Size = UDim2.new(1, -16, 0, 400)

TopBar.Name = "TopBar"
TopBar.Parent = ScriptEditor
TopBar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TopBar.BorderColor3 = Color3.fromRGB(30, 30, 30)
TopBar.Size = UDim2.new(1, 0, 3, 0)

ScriptBarLeft.Name = "ScriptBarLeft"
ScriptBarLeft.Parent = TopBar
ScriptBarLeft.Active = false
ScriptBarLeft.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
ScriptBarLeft.BorderColor3 = Color3.fromRGB(30, 30, 30)
ScriptBarLeft.Position = UDim2.new(1, -32, 0, 40)
ScriptBarLeft.Size = UDim2.new(0, 16, 0, 20)
ScriptBarLeft.AutoButtonColor = false

ArrowGraphic.Name = "Arrow Graphic"
ArrowGraphic.Parent = ScriptBarLeft
ArrowGraphic.BackgroundTransparency = 1
ArrowGraphic.BorderSizePixel = 0
ArrowGraphic.Position = UDim2.new(0.5, -4, 0.5, -4)
ArrowGraphic.Size = UDim2.new(0, 8, 0, 8)

Graphic.Name = "Graphic"
Graphic.Parent = ArrowGraphic
Graphic.BackgroundColor3 = Color3.fromRGB(149, 149, 149)
Graphic.BackgroundTransparency = 0.699
Graphic.BorderSizePixel = 0
Graphic.Position = UDim2.new(0.25, 0, 0.375, 0)
Graphic.Size = UDim2.new(0.125, 0, 0.25, 0)

Graphic_2.Name = "Graphic"
Graphic_2.Parent = ArrowGraphic
Graphic_2.BackgroundColor3 = Color3.fromRGB(149, 149, 149)
Graphic_2.BackgroundTransparency = 0.699
Graphic_2.BorderSizePixel = 0
Graphic_2.Position = UDim2.new(0.375, 0, 0.25, 0)
Graphic_2.Size = UDim2.new(0.125, 0, 0.5, 0)

Graphic_3.Name = "Graphic"
Graphic_3.Parent = ArrowGraphic
Graphic_3.BackgroundColor3 = Color3.fromRGB(149, 149, 149)
Graphic_3.BackgroundTransparency = 0.699
Graphic_3.BorderSizePixel = 0
Graphic_3.Position = UDim2.new(0.5, 0, 0.125, 0)
Graphic_3.Size = UDim2.new(0.125, 0, 0.75, 0)

Graphic_4.Name = "Graphic"
Graphic_4.Parent = ArrowGraphic
Graphic_4.BackgroundColor3 = Color3.fromRGB(149, 149, 149)
Graphic_4.BackgroundTransparency = 0.699
Graphic_4.BorderSizePixel = 0
Graphic_4.Position = UDim2.new(0.625, 0, 0, 0)
Graphic_4.Size = UDim2.new(0.125, 0, 1, 0)

ScriptBarRight.Name = "ScriptBarRight"
ScriptBarRight.Parent = TopBar
ScriptBarRight.Active = false
ScriptBarRight.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
ScriptBarRight.BorderColor3 = Color3.fromRGB(30, 30, 30)
ScriptBarRight.Position = UDim2.new(1, -16, 0, 40)
ScriptBarRight.Size = UDim2.new(0, 16, 0, 20)
ScriptBarRight.AutoButtonColor = false

ArrowGraphic_2.Name = "Arrow Graphic"
ArrowGraphic_2.Parent = ScriptBarRight
ArrowGraphic_2.BackgroundTransparency = 1
ArrowGraphic_2.BorderSizePixel = 0
ArrowGraphic_2.Position = UDim2.new(0.5, -4, 0.5, -4)
ArrowGraphic_2.Size = UDim2.new(0, 8, 0, 8)

Graphic_5.Name = "Graphic"
Graphic_5.Parent = ArrowGraphic_2
Graphic_5.BackgroundColor3 = Color3.fromRGB(149, 149, 149)
Graphic_5.BackgroundTransparency = 0.699
Graphic_5.BorderSizePixel = 0
Graphic_5.Position = UDim2.new(0.625, 0, 0.375, 0)
Graphic_5.Size = UDim2.new(0.125, 0, 0.25, 0)

Graphic_6.Name = "Graphic"
Graphic_6.Parent = ArrowGraphic_2
Graphic_6.BackgroundColor3 = Color3.fromRGB(149, 149, 149)
Graphic_6.BackgroundTransparency = 0.699
Graphic_6.BorderSizePixel = 0
Graphic_6.Position = UDim2.new(0.5, 0, 0.25, 0)
Graphic_6.Size = UDim2.new(0.125, 0, 0.5, 0)

Graphic_7.Name = "Graphic"
Graphic_7.Parent = ArrowGraphic_2
Graphic_7.BackgroundColor3 = Color3.fromRGB(149, 149, 149)
Graphic_7.BackgroundTransparency = 0.699
Graphic_7.BorderSizePixel = 0
Graphic_7.Position = UDim2.new(0.375, 0, 0.125, 0)
Graphic_7.Size = UDim2.new(0.125, 0, 0.75, 0)

Graphic_8.Name = "Graphic"
Graphic_8.Parent = ArrowGraphic_2
Graphic_8.BackgroundColor3 = Color3.fromRGB(149, 149, 149)
Graphic_8.BackgroundTransparency = 0.699
Graphic_8.BorderSizePixel = 0
Graphic_8.Position = UDim2.new(0.25, 0, 0, 0)
Graphic_8.Size = UDim2.new(0.125, 0, 1, 0)

Clipboard.Name = "Clipboard"
Clipboard.Parent = TopBar
Clipboard.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Clipboard.BackgroundTransparency = 0.5
Clipboard.BorderColor3 = Color3.fromRGB(0, 0, 0)
Clipboard.Position = UDim2.new(0, 0, 0, 20)
Clipboard.Size = UDim2.new(0, 80, 0, 20)
Clipboard.AutoButtonColor = false
Clipboard.Font = Enum.Font.SourceSans
Clipboard.Text = "To Clipboard"
Clipboard.TextColor3 = Color3.fromRGB(255, 255, 255)
Clipboard.TextSize = 14

SaveScript.Name = "SaveScript"
SaveScript.Parent = TopBar
SaveScript.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
SaveScript.BackgroundTransparency = 0.5
SaveScript.BorderColor3 = Color3.fromRGB(0, 0, 0)
SaveScript.Position = UDim2.new(0, 80, 0, 20)
SaveScript.Size = UDim2.new(0, 80, 0, 20)
SaveScript.AutoButtonColor = false
SaveScript.Font = Enum.Font.SourceSans
SaveScript.Text = "Save Script"
SaveScript.TextColor3 = Color3.fromRGB(255, 255, 255)
SaveScript.TextSize = 14

ScriptBar.Name = "ScriptBar"
ScriptBar.Parent = TopBar
ScriptBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ScriptBar.BorderColor3 = Color3.fromRGB(30, 30, 30)
ScriptBar.ClipsDescendants = true
ScriptBar.Position = UDim2.new(0, 0, 0, 40)
ScriptBar.Size = UDim2.new(1, -32, 0, 20)

Entry.Name = "Entry"
Entry.Parent = TopBar
Entry.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Entry.BackgroundTransparency = 1
Entry.Size = UDim2.new(0, 100, 1, 0)
Entry.Visible = false

Button.Name = "Button"
Button.Parent = Entry
Button.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
Button.BackgroundTransparency = .6
Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Button.ClipsDescendants = true
Button.Size = UDim2.new(1, 0, 1, 0)
Button.ZIndex = 4
Button.Font = Enum.Font.SourceSans
Button.Text = ""
Button.TextSize = 12
Button.TextColor3 = Color3.fromRGB(255, 255, 255);
Button.TextXAlignment = Enum.TextXAlignment.Left

Close.Name = "Close"
Close.Parent = Entry
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1
Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close.Position = UDim2.new(1, -20, 0, 0)
Close.Size = UDim2.new(0, 20, 0, 20)
Close.ZIndex = 4
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextSize = 14
Close.TextColor3 = Color3.fromRGB(255, 255, 255)

Close_2.Name = "Close"
Close_2.Parent = ScriptEditor
Close_2.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Close_2.BackgroundTransparency = 1
Close_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close_2.Position = UDim2.new(1, -20, 0, 0)
Close_2.Size = UDim2.new(0, 20, 0, 20)
Close_2.ZIndex = 5
Close_2.Font = Enum.Font.SourceSans
Close_2.Text = "X"
Close_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Close_2.TextSize = 14

IntroFrame.Name = "IntroFrame"
IntroFrame.Parent = ROBLOX
IntroFrame.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
IntroFrame.BorderSizePixel = 0
IntroFrame.Position = UDim2.new(1, 30, 0, 0)
IntroFrame.Size = UDim2.new(0, 300, 1, 0)
IntroFrame.ZIndex = 2

Main_2.Name = "Main"
Main_2.Parent = IntroFrame
Main_2.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Main_2.BorderSizePixel = 0
Main_2.Position = UDim2.new(0, -30, 0, 0)
Main_2.Size = UDim2.new(0, 30, 0, 90)
Main_2.ZIndex = 4

ImageLabel.Parent = Main_2
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1
ImageLabel.BorderSizePixel = 0
ImageLabel.Size = UDim2.new(1, 0, 1, 0)
ImageLabel.ZIndex = 5
ImageLabel.Image = "rbxassetid://969742484"
ImageLabel.ScaleType = Enum.ScaleType.Tile
ImageLabel.TileSize = UDim2.new(25, 0, 6, 0)

Title_8.Name = "Title"
Title_8.Parent = IntroFrame
Title_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_8.BackgroundTransparency = 1
Title_8.Position = UDim2.new(0, 100, 0, 150)
Title_8.Size = UDim2.new(0, 100, 0, 60)
Title_8.ZIndex = 4
Title_8.Font = Enum.Font.SourceSansBold
Title_8.Text = "DEX"
Title_8.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_8.TextSize = 60
Title_8.TextWrapped = true

Version_2.Name = "Version"
Version_2.Parent = IntroFrame
Version_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Version_2.BackgroundTransparency = 1
Version_2.Position = UDim2.new(0, 100, 0, 210)
Version_2.Size = UDim2.new(0, 100, 0, 30)
Version_2.ZIndex = 4
Version_2.Font = Enum.Font.SourceSansBold
Version_2.Text = "V2.0.0"
Version_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Version_2.TextSize = 28
Version_2.TextWrapped = true

Creator.Name = "Creator"
Creator.Parent = IntroFrame
Creator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Creator.BackgroundTransparency = 1
Creator.Position = UDim2.new(0, 80, 0, 300)
Creator.Size = UDim2.new(0, 140, 0, 30)
Creator.ZIndex = 4
Creator.Font = Enum.Font.SourceSansBold
Creator.Text = ""
Creator.TextColor3 = Color3.fromRGB(255, 255, 255)
Creator.TextSize = 28
Creator.TextWrapped = true

BG.Name = "BG"
BG.Parent = IntroFrame
BG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BG.BackgroundTransparency = 1
BG.BorderSizePixel = 0
BG.Size = UDim2.new(1, 0, 1, 0)
BG.ZIndex = 3
BG.Image = "rbxassetid://969742484"
BG.ScaleType = Enum.ScaleType.Tile
BG.TileSize = UDim2.new(4, 0, 1, 0)

Slant_2.Name = "Slant"
Slant_2.Parent = IntroFrame
Slant_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Slant_2.BackgroundTransparency = 1
Slant_2.BorderSizePixel = 0
Slant_2.ClipsDescendants = true
Slant_2.Position = UDim2.new(0, -27, 0, 86)
Slant_2.Rotation = 45
Slant_2.Size = UDim2.new(0, 60, 0, 30)
Slant_2.ZIndex = 3

ImageLabel_2.Parent = Slant_2
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BackgroundTransparency = 1
ImageLabel_2.BorderSizePixel = 0
ImageLabel_2.Size = UDim2.new(1, 0, 1, 0)
ImageLabel_2.ZIndex = 2
ImageLabel_2.Image = "rbxassetid://969742484"
ImageLabel_2.ScaleType = Enum.ScaleType.Tile
ImageLabel_2.TileSize = UDim2.new(25, 0, 6, 0)

SaveMapWindow.Name = "SaveMapWindow"
SaveMapWindow.Parent = ROBLOX
SaveMapWindow.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
SaveMapWindow.BorderColor3 = Color3.fromRGB(191, 191, 191)
SaveMapWindow.BorderSizePixel = 0
SaveMapWindow.Position = UDim2.new(1, 0, 0, 1)
SaveMapWindow.Size = UDim2.new(0, 300, 1, 0)

Header_3.Name = "Header"
Header_3.Parent = SaveMapWindow
Header_3.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Header_3.BorderColor3 = Color3.fromRGB(30, 30, 30)
Header_3.Size = UDim2.new(1, 0, 0, 17)

TextLabel_3.Parent = Header_3
TextLabel_3.BackgroundTransparency = 1
TextLabel_3.Position = UDim2.new(0, 4, 0, 0)
TextLabel_3.Size = UDim2.new(1, -4, 1, 0)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "Map Downloader"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 14
TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

MapSettings.Name = "MapSettings"
MapSettings.Parent = SaveMapWindow
MapSettings.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
MapSettings.BackgroundTransparency = 1
MapSettings.BorderSizePixel = 0
MapSettings.Position = UDim2.new(0, 0, 0, 200)
MapSettings.Size = UDim2.new(1, 0, 0, 240)

Terrain.Name = "Terrain"
Terrain.Parent = MapSettings
Terrain.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Terrain.BackgroundTransparency = 1
Terrain.BorderSizePixel = 0
Terrain.Position = UDim2.new(0, 0, 0, 60)
Terrain.Size = UDim2.new(1, 0, 0, 60)

SName_2.Name = "SName"
SName_2.Parent = Terrain
SName_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SName_2.BackgroundTransparency = 1
SName_2.BorderColor3 = Color3.fromRGB(40, 40, 40)
SName_2.Position = UDim2.new(0, 10, 0, 0)
SName_2.Size = UDim2.new(1, -20, 0, 30)
SName_2.Font = Enum.Font.SourceSans
SName_2.Text = "Save Terrain"
SName_2.TextColor3 = Color3.fromRGB(255, 255, 255)
SName_2.TextSize = 18
SName_2.TextXAlignment = Enum.TextXAlignment.Left

Status_2.Name = "Status"
Status_2.Parent = Terrain
Status_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Status_2.BackgroundTransparency = 1
Status_2.BorderColor3 = Color3.fromRGB(40, 40, 40)
Status_2.Position = UDim2.new(0, 60, 0, 30)
Status_2.Size = UDim2.new(0, 50, 0, 15)
Status_2.Font = Enum.Font.SourceSans
Status_2.Text = "Off"
Status_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Status_2.TextSize = 18
Status_2.TextXAlignment = Enum.TextXAlignment.Left

Change_2.Name = "Change"
Change_2.Parent = Terrain
Change_2.BackgroundColor3 = Color3.fromRGB(81, 81, 81)
Change_2.BorderColor3 = Color3.fromRGB(40, 40, 40)
Change_2.BorderSizePixel = 0
Change_2.Position = UDim2.new(0, 10, 0, 30)
Change_2.Size = UDim2.new(0, 40, 0, 15)
Change_2.Font = Enum.Font.SourceSans
Change_2.Text = ""
Change_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Change_2.TextSize = 14

OnBar_2.Name = "OnBar"
OnBar_2.Parent = Change_2
OnBar_2.BackgroundColor3 = Color3.fromRGB(209, 125, 0)
OnBar_2.BorderSizePixel = 0
OnBar_2.Size = UDim2.new(0, 0, 0, 15)
OnBar_2.Font = Enum.Font.SourceSans
OnBar_2.Text = ""
OnBar_2.TextSize = 14

Bar_2.Name = "Bar"
Bar_2.Parent = Change_2
Bar_2.BackgroundColor3 = Color3.fromRGB(255, 153, 0)
Bar_2.BorderSizePixel = 0
Bar_2.ClipsDescendants = true
Bar_2.Position = UDim2.new(0, -2, 0, -2)
Bar_2.Size = UDim2.new(0, 10, 0, 19)
Bar_2.Font = Enum.Font.SourceSans
Bar_2.Text = ""
Bar_2.TextSize = 14

Lighting.Name = "Lighting"
Lighting.Parent = MapSettings
Lighting.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Lighting.BackgroundTransparency = 1
Lighting.BorderSizePixel = 0
Lighting.Position = UDim2.new(0, 0, 0, 120)
Lighting.Size = UDim2.new(1, 0, 0, 60)

SName_3.Name = "SName"
SName_3.Parent = Lighting
SName_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SName_3.BackgroundTransparency = 1
SName_3.BorderColor3 = Color3.fromRGB(40, 40, 40)
SName_3.Position = UDim2.new(0, 10, 0, 0)
SName_3.Size = UDim2.new(1, -20, 0, 30)
SName_3.Font = Enum.Font.SourceSans
SName_3.Text = "Lighting Properties"
SName_3.TextColor3 = Color3.fromRGB(255, 255, 255)
SName_3.TextSize = 18
SName_3.TextXAlignment = Enum.TextXAlignment.Left

Status_3.Name = "Status"
Status_3.Parent = Lighting
Status_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Status_3.BackgroundTransparency = 1
Status_3.BorderColor3 = Color3.fromRGB(40, 40, 40)
Status_3.Position = UDim2.new(0, 60, 0, 30)
Status_3.Size = UDim2.new(0, 50, 0, 15)
Status_3.Font = Enum.Font.SourceSans
Status_3.Text = "Off"
Status_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Status_3.TextSize = 18
Status_3.TextXAlignment = Enum.TextXAlignment.Left

Change_3.Name = "Change"
Change_3.Parent = Lighting
Change_3.BackgroundColor3 = Color3.fromRGB(81, 81, 81)
Change_3.BorderColor3 = Color3.fromRGB(40, 40, 40)
Change_3.BorderSizePixel = 0
Change_3.Position = UDim2.new(0, 10, 0, 30)
Change_3.Size = UDim2.new(0, 40, 0, 15)
Change_3.Font = Enum.Font.SourceSans
Change_3.Text = ""
Change_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Change_3.TextSize = 14

OnBar_3.Name = "OnBar"
OnBar_3.Parent = Change_3
OnBar_3.BackgroundColor3 = Color3.fromRGB(209, 125, 0)
OnBar_3.BorderSizePixel = 0
OnBar_3.Size = UDim2.new(0, 0, 0, 15)
OnBar_3.Font = Enum.Font.SourceSans
OnBar_3.Text = ""
OnBar_3.TextSize = 14

Bar_3.Name = "Bar"
Bar_3.Parent = Change_3
Bar_3.BackgroundColor3 = Color3.fromRGB(255, 153, 0)
Bar_3.BorderSizePixel = 0
Bar_3.ClipsDescendants = true
Bar_3.Position = UDim2.new(0, -2, 0, -2)
Bar_3.Size = UDim2.new(0, 10, 0, 19)
Bar_3.Font = Enum.Font.SourceSans
Bar_3.Text = ""
Bar_3.TextSize = 14

CameraInstances.Name = "CameraInstances"
CameraInstances.Parent = MapSettings
CameraInstances.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
CameraInstances.BackgroundTransparency = 1
CameraInstances.BorderSizePixel = 0
CameraInstances.Position = UDim2.new(0, 0, 0, 180)
CameraInstances.Size = UDim2.new(1, 0, 0, 60)

SName_4.Name = "SName"
SName_4.Parent = CameraInstances
SName_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SName_4.BackgroundTransparency = 1
SName_4.BorderColor3 = Color3.fromRGB(40, 40, 40)
SName_4.Position = UDim2.new(0, 10, 0, 0)
SName_4.Size = UDim2.new(1, -20, 0, 30)
SName_4.Font = Enum.Font.SourceSans
SName_4.Text = "Camera Instances"
SName_4.TextColor3 = Color3.fromRGB(255, 255, 255)
SName_4.TextSize = 18
SName_4.TextXAlignment = Enum.TextXAlignment.Left

Status_4.Name = "Status"
Status_4.Parent = CameraInstances
Status_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Status_4.BackgroundTransparency = 1
Status_4.BorderColor3 = Color3.fromRGB(40, 40, 40)
Status_4.Position = UDim2.new(0, 60, 0, 30)
Status_4.Size = UDim2.new(0, 50, 0, 15)
Status_4.Font = Enum.Font.SourceSans
Status_4.Text = "Off"
Status_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Status_4.TextSize = 18
Status_4.TextXAlignment = Enum.TextXAlignment.Left

Change_4.Name = "Change"
Change_4.Parent = CameraInstances
Change_4.BackgroundColor3 = Color3.fromRGB(81, 81, 81)
Change_4.BorderColor3 = Color3.fromRGB(40, 40, 40)
Change_4.BorderSizePixel = 0
Change_4.Position = UDim2.new(0, 10, 0, 30)
Change_4.Size = UDim2.new(0, 40, 0, 15)
Change_4.Font = Enum.Font.SourceSans
Change_4.Text = ""
Change_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Change_4.TextSize = 14

OnBar_4.Name = "OnBar"
OnBar_4.Parent = Change_4
OnBar_4.BackgroundColor3 = Color3.fromRGB(209, 125, 0)
OnBar_4.BorderSizePixel = 0
OnBar_4.Size = UDim2.new(0, 0, 0, 15)
OnBar_4.Font = Enum.Font.SourceSans
OnBar_4.Text = ""
OnBar_4.TextSize = 14

Bar_4.Name = "Bar"
Bar_4.Parent = Change_4
Bar_4.BackgroundColor3 = Color3.fromRGB(255, 153, 0)
Bar_4.BorderSizePixel = 0
Bar_4.ClipsDescendants = true
Bar_4.Position = UDim2.new(0, -2, 0, -2)
Bar_4.Size = UDim2.new(0, 10, 0, 19)
Bar_4.Font = Enum.Font.SourceSans
Bar_4.Text = ""
Bar_4.TextSize = 14

Scripts.Name = "Scripts"
Scripts.Parent = MapSettings
Scripts.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Scripts.BackgroundTransparency = 1
Scripts.BorderSizePixel = 0
Scripts.Size = UDim2.new(1, 0, 0, 60)

SName_5.Name = "SName"
SName_5.Parent = Scripts
SName_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SName_5.BackgroundTransparency = 1
SName_5.BorderColor3 = Color3.fromRGB(40, 40, 40)
SName_5.Position = UDim2.new(0, 10, 0, 0)
SName_5.Size = UDim2.new(1, -20, 0, 30)
SName_5.Font = Enum.Font.SourceSans
SName_5.Text = "Save Scripts"
SName_5.TextColor3 = Color3.fromRGB(255, 255, 255)
SName_5.TextSize = 18
SName_5.TextXAlignment = Enum.TextXAlignment.Left

Status_5.Name = "Status"
Status_5.Parent = Scripts
Status_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Status_5.BackgroundTransparency = 1
Status_5.BorderColor3 = Color3.fromRGB(40, 40, 40)
Status_5.Position = UDim2.new(0, 60, 0, 30)
Status_5.Size = UDim2.new(0, 50, 0, 15)
Status_5.Font = Enum.Font.SourceSans
Status_5.Text = "Off"
Status_5.TextColor3 = Color3.fromRGB(255, 255, 255)
Status_5.TextSize = 18
Status_5.TextXAlignment = Enum.TextXAlignment.Left

Change_5.Name = "Change"
Change_5.Parent = Scripts
Change_5.BackgroundColor3 = Color3.fromRGB(81, 81, 81)
Change_5.BorderColor3 = Color3.fromRGB(40, 40, 40)
Change_5.BorderSizePixel = 0
Change_5.Position = UDim2.new(0, 10, 0, 30)
Change_5.Size = UDim2.new(0, 40, 0, 15)
Change_5.Font = Enum.Font.SourceSans
Change_5.Text = ""
Change_5.TextColor3 = Color3.fromRGB(255, 255, 255)
Change_5.TextSize = 14

OnBar_5.Name = "OnBar"
OnBar_5.Parent = Change_5
OnBar_5.BackgroundColor3 = Color3.fromRGB(209, 125, 0)
OnBar_5.BorderSizePixel = 0
OnBar_5.Size = UDim2.new(0, 0, 0, 15)
OnBar_5.Font = Enum.Font.SourceSans
OnBar_5.Text = ""
OnBar_5.TextSize = 14

Bar_5.Name = "Bar"
Bar_5.Parent = Change_5
Bar_5.BackgroundColor3 = Color3.fromRGB(255, 153, 0)
Bar_5.BorderSizePixel = 0
Bar_5.ClipsDescendants = true
Bar_5.Position = UDim2.new(0, -2, 0, -2)
Bar_5.Size = UDim2.new(0, 10, 0, 19)
Bar_5.Font = Enum.Font.SourceSans
Bar_5.Text = ""
Bar_5.TextSize = 14

ToSave.Name = "ToSave"
ToSave.Parent = SaveMapWindow
ToSave.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
ToSave.BackgroundTransparency = 1
ToSave.Position = UDim2.new(0, 0, 0, 17)
ToSave.Size = UDim2.new(1, 0, 0, 20)
ToSave.Font = Enum.Font.SourceSans
ToSave.Text = "To Save"
ToSave.TextColor3 = Color3.fromRGB(255, 255, 255)
ToSave.TextSize = 18

CopyList.Name = "CopyList"
CopyList.Parent = SaveMapWindow
CopyList.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
CopyList.BackgroundTransparency = 0.4
CopyList.BorderSizePixel = 0
CopyList.Position = UDim2.new(0, 0, 0, 37)
CopyList.Size = UDim2.new(1, 0, 0, 163)

Bottom.Name = "Bottom"
Bottom.Parent = SaveMapWindow
Bottom.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Bottom.BorderColor3 = Color3.fromRGB(30, 30, 30)
Bottom.BorderSizePixel = 0
Bottom.Position = UDim2.new(0, 0, 1, -50)
Bottom.Size = UDim2.new(1, 0, 0, 50)

TextLabel_4.Parent = Bottom
TextLabel_4.BackgroundTransparency = 1
TextLabel_4.Position = UDim2.new(0, 4, 0, 0)
TextLabel_4.Size = UDim2.new(1, -4, 1, 0)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "After the map saves, open a new place on studio, then right click Lighting and \"Insert from file...\", then select your file and run the unpacker script inside the folder."
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextSize = 14
TextLabel_4.TextWrapped = true
TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_4.TextYAlignment = Enum.TextYAlignment.Top

Save_2.Name = "Save"
Save_2.Parent = SaveMapWindow
Save_2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Save_2.BackgroundTransparency = 0.4
Save_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Save_2.BorderSizePixel = 0
Save_2.Position = UDim2.new(0, 0, 1, -80)
Save_2.Size = UDim2.new(1, 0, 0, 30)
Save_2.Font = Enum.Font.SourceSans
Save_2.Text = "Save"
Save_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Save_2.TextSize = 18

FileName_2.Name = "FileName"
FileName_2.Parent = SaveMapWindow
FileName_2.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
FileName_2.BackgroundTransparency = 0.4
FileName_2.BorderSizePixel = 0
FileName_2.Position = UDim2.new(0, 0, 1, -105)
FileName_2.Size = UDim2.new(1, 0, 0, 25)
FileName_2.Font = Enum.Font.SourceSans
FileName_2.Text = "   PlaceName"
FileName_2.TextColor3 = Color3.fromRGB(255, 255, 255)
FileName_2.TextSize = 18
FileName_2.TextXAlignment = Enum.TextXAlignment.Left

Entry_2.Name = "Entry"
Entry_2.Parent = SaveMapWindow
Entry_2.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Entry_2.BackgroundTransparency = 1
Entry_2.BorderSizePixel = 0
Entry_2.Size = UDim2.new(1, 0, 0, 22)
Entry_2.Visible = false

Change_6.Name = "Change"
Change_6.Parent = Entry_2
Change_6.BackgroundColor3 = Color3.fromRGB(255, 149, 0)
Change_6.BackgroundTransparency = 0.6
Change_6.Position = UDim2.new(0, 10, 0, 1)
Change_6.Size = UDim2.new(0, 20, 0, 20)
Change_6.ZIndex = 2
Change_6.Font = Enum.Font.SourceSans
Change_6.Text = ""
Change_6.TextColor3 = Color3.fromRGB(255, 255, 255)
Change_6.TextSize = 18

enabled_3.Name = "enabled"
enabled_3.Parent = Change_6
enabled_3.BackgroundColor3 = Color3.fromRGB(209, 125, 0)
enabled_3.BackgroundTransparency = 0.4
enabled_3.BorderSizePixel = 0
enabled_3.Position = UDim2.new(0, 3, 0, 3)
enabled_3.Size = UDim2.new(0, 14, 0, 14)
enabled_3.Font = Enum.Font.SourceSans
enabled_3.Text = ""
enabled_3.TextColor3 = Color3.fromRGB(255, 255, 255)
enabled_3.TextSize = 14

Info.Name = "Info"
Info.Parent = Entry_2
Info.BackgroundTransparency = 1
Info.Position = UDim2.new(0, 40, 0, 0)
Info.Size = UDim2.new(1, -40, 0, 22)
Info.Font = Enum.Font.SourceSans
Info.Text = "Workspace"
Info.TextColor3 = Color3.fromRGB(255, 255, 255)
Info.TextSize = 18
Info.TextXAlignment = Enum.TextXAlignment.Left

RemoteDebugWindow.Name = "RemoteDebugWindow"
RemoteDebugWindow.Parent = ROBLOX
RemoteDebugWindow.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
RemoteDebugWindow.BorderColor3 = Color3.fromRGB(191, 191, 191)
RemoteDebugWindow.BorderSizePixel = 0
RemoteDebugWindow.Position = UDim2.new(1, 0, 0, 1)
RemoteDebugWindow.Size = UDim2.new(0, 300, 1, 0)

Header_4.Name = "Header"
Header_4.Parent = RemoteDebugWindow
Header_4.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Header_4.BorderColor3 = Color3.fromRGB(30, 30, 30)
Header_4.Size = UDim2.new(1, 0, 0, 17)

TextLabel_5.Parent = Header_4
TextLabel_5.BackgroundTransparency = 1
TextLabel_5.Position = UDim2.new(0, 4, 0, 0)
TextLabel_5.Size = UDim2.new(1, -4, 1, 0)
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.Text = "Remote Debugger"
TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.TextSize = 14
TextLabel_5.TextXAlignment = Enum.TextXAlignment.Left

Desc_5.Name = "Desc"
Desc_5.Parent = RemoteDebugWindow
Desc_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Desc_5.BackgroundTransparency = 1
Desc_5.Position = UDim2.new(0, 0, 0, 20)
Desc_5.Size = UDim2.new(1, 0, 0, 40)
Desc_5.Font = Enum.Font.SourceSans
Desc_5.Text = "Have fun with remotes"
Desc_5.TextColor3 = Color3.fromRGB(255, 255, 255)
Desc_5.TextSize = 32
Desc_5.TextWrapped = true

AboutWindow.Name = "AboutWindow"
AboutWindow.Parent = ROBLOX
AboutWindow.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
AboutWindow.BorderColor3 = Color3.fromRGB(191, 191, 191)
AboutWindow.BorderSizePixel = 0
AboutWindow.Position = UDim2.new(1, 0, 0, 1)
AboutWindow.Size = UDim2.new(0, 300, 1, 0)

Header_5.Name = "Header"
Header_5.Parent = AboutWindow
Header_5.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Header_5.BorderColor3 = Color3.fromRGB(30, 30, 30)
Header_5.Size = UDim2.new(1, 0, 0, 17)

TextLabel_6.Parent = Header_5
TextLabel_6.BackgroundTransparency = 1
TextLabel_6.Position = UDim2.new(0, 4, 0, 0)
TextLabel_6.Size = UDim2.new(1, -4, 1, 0)
TextLabel_6.Font = Enum.Font.SourceSans
TextLabel_6.Text = "About"
TextLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.TextSize = 14
TextLabel_6.TextXAlignment = Enum.TextXAlignment.Left

Desc_6.Name = "Desc"
Desc_6.Parent = AboutWindow
Desc_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Desc_6.BackgroundTransparency = 1
Desc_6.Position = UDim2.new(0.1, 0, 0.1, 0)
Desc_6.Size = UDim2.new(0.8, 0, 0, 200)
Desc_6.Font = Enum.Font.SourceSans
Desc_6.Text = "Dex v2.0"
Desc_6.TextColor3 = Color3.fromRGB(255, 255, 255)
Desc_6.TextSize = 24
Desc_6.TextWrapped = true

local NewGuiPart153 = Instance.new("BindableFunction")
local NewGuiPart154 = Instance.new("BindableFunction")
local NewGuiPart155 = Instance.new("BindableFunction")
local NewGuiPart156 = Instance.new("BindableFunction")
local NewGuiPart157 = Instance.new("BindableEvent")
local NewGuiPart158 = Instance.new("BindableFunction")
local NewGuiPart159 = Instance.new("BindableFunction")
local NewGuiPart160 = Instance.new("BindableEvent")
local NewGuiPart161 = Instance.new("BindableFunction")
local NewGuiPart162 = Instance.new("BindableFunction")
local NewGuiPart163 = Instance.new("BindableEvent")

NewGuiPart158.Name = "GetApi"
NewGuiPart158.Parent = PropertiesFrame
NewGuiPart158.Archivable = true

NewGuiPart159.Name = "GetAwaiting"
NewGuiPart159.Parent = PropertiesFrame
NewGuiPart159.Archivable = true

NewGuiPart160.Name = "SetAwaiting"
NewGuiPart160.Parent = PropertiesFrame
NewGuiPart160.Archivable = true

NewGuiPart153.Name = "GetOption"
NewGuiPart153.Parent = ExplorerPanel
NewGuiPart153.Archivable = true

NewGuiPart154.Name = "GetSelection"
NewGuiPart154.Parent = ExplorerPanel
NewGuiPart154.Archivable = true

NewGuiPart155.Name = "SetOption"
NewGuiPart155.Parent = ExplorerPanel
NewGuiPart155.Archivable = true

NewGuiPart156.Name = "SetSelection"
NewGuiPart156.Parent = ExplorerPanel
NewGuiPart156.Archivable = true

NewGuiPart157.Name = "SelectionChanged"
NewGuiPart157.Parent = ExplorerPanel
NewGuiPart157.Archivable = true

NewGuiPart161.Name = "GetSetting"
NewGuiPart161.Parent = RemoteDebugWindow
NewGuiPart161.Archivable = true

NewGuiPart162.Name = "GetSetting"
NewGuiPart162.Parent = SettingsPanel
NewGuiPart162.Archivable = true

NewGuiPart163.Name = "OpenScript"
NewGuiPart163.Parent = ScriptEditor
NewGuiPart163.Archivable = true

return ROBLOX
end

local D_E_X = CreateGui()
D_E_X.Parent = game.CoreGui.RobloxGui;

spawn(function()

local Gui = D_E_X

local IntroFrame = Gui:WaitForChild("IntroFrame")

local SideMenu = Gui:WaitForChild("SideMenu")
local OpenToggleButton = Gui:WaitForChild("Toggle")
local CloseToggleButton = SideMenu:WaitForChild("Toggle")
local OpenScriptEditorButton = SideMenu:WaitForChild("OpenScriptEditor")

local ScriptEditor = Gui:WaitForChild("ScriptEditor")

local SlideOut = SideMenu:WaitForChild("SlideOut")
local SlideFrame = SlideOut:WaitForChild("SlideFrame")
local Slant = SideMenu:WaitForChild("Slant")

local ExplorerButton = SlideFrame:WaitForChild("Explorer")
local SettingsButton = SlideFrame:WaitForChild("Settings")

local SelectionBox = Instance.new("SelectionBox")
SelectionBox.Parent = Gui

local ExplorerPanel = Gui:WaitForChild("ExplorerPanel")
local PropertiesFrame = Gui:WaitForChild("PropertiesFrame")
local SaveMapWindow = Gui:WaitForChild("SaveMapWindow")
local RemoteDebugWindow = Gui:WaitForChild("RemoteDebugWindow")
local AboutWindow = Gui:WaitForChild("AboutWindow")

local SettingsPanel = Gui:WaitForChild("SettingsPanel")
local SettingsListener = SettingsPanel:WaitForChild("GetSetting")
local SettingTemplate = SettingsPanel:WaitForChild("SettingTemplate")
local SettingList = SettingsPanel:WaitForChild("SettingList")

local SaveMapCopyList = SaveMapWindow:WaitForChild("CopyList")
local SaveMapSettingFrame = SaveMapWindow:WaitForChild("MapSettings")
local SaveMapName = SaveMapWindow:WaitForChild("FileName")
local SaveMapButton = SaveMapWindow:WaitForChild("Save")
local SaveMapCopyTemplate = SaveMapWindow:WaitForChild("Entry")
local SaveMapSettings = {
	CopyWhat = {
		Workspace = true,
		Lighting = true,
		ReplicatedStorage = true,
		ReplicatedFirst = true,
		StarterPack = true,
		StarterGui = true,
		StarterPlayer = true
	},
	SaveScripts = true,
	SaveTerrain = true,
	LightingProperties = true,
	CameraInstances = true
}

local SelectionChanged = ExplorerPanel:WaitForChild("SelectionChanged")
local GetSelection = ExplorerPanel:WaitForChild("GetSelection")
local SetSelection = ExplorerPanel:WaitForChild("SetSelection")

local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()

local CurrentWindow = "Nothing c:"
local Windows = {
	Explorer = {
		ExplorerPanel,
		PropertiesFrame
	},
	Settings = {SettingsPanel},
	SaveMap = {SaveMapWindow},
	Remotes = {RemoteDebugWindow},
	About = {AboutWindow}
}

function switchWindows(wName,over)
	if CurrentWindow == wName and not over then return end
	
	local count = 0
	
	for i,v in pairs(Windows) do
		count = 0
		if i ~= wName then
			for _,c in pairs(v) do c:TweenPosition(UDim2.new(1, 30, c.Position.Y.Scale, c.Position.Y.Offset), "Out", "Quad", 0.5, true) count = count + 1 end
			-- for _,c in pairs(v) do c:TweenPosition(UDim2.new(1, 30, count * 0.5, count * 36), "Out", "Quad", 0.5, true) count = count + 1 end
		end
	end
	
	count = 0
	
	if Windows[wName] then
		for _,c in pairs(Windows[wName]) do c:TweenPosition(UDim2.new(1, -300, c.Position.Y.Scale, c.Position.Y.Offset), "Out", "Quad", 0.5, true) count = count + 1 end
		-- for _,c in pairs(Windows[wName]) do c:TweenPosition(UDim2.new(1, -300, count * 0.5, count * 36), "Out", "Quad", 0.5, true) count = count + 1 end
	end
	
	if wName ~= "Nothing c:" then
		CurrentWindow = wName
		for i,v in pairs(SlideFrame:GetChildren()) do
			v.AutoButtonColor = false;
			v.BackgroundTransparency = 1
			v.Icon.ImageColor3 = Color3.fromRGB(185, 185, 185)
		end
		if SlideFrame:FindFirstChild(wName) then
			-- SlideFrame[wName].BackgroundTransparency = 1
			SlideFrame[wName].Icon.ImageColor3 = Color3.new(255,255,255)
		end
	end
end

function toggleDex(on)
	if on then
		SideMenu:TweenPosition(UDim2.new(1, -330, 0, 0), "Out", "Quad", 0.5, true)
		OpenToggleButton:TweenPosition(UDim2.new(1,0,0,0), "Out", "Quad", 0.5, true)
		switchWindows(CurrentWindow,true)
	else
		SideMenu:TweenPosition(UDim2.new(1, 0, 0, 0), "Out", "Quad", 0.5, true)
		OpenToggleButton:TweenPosition(UDim2.new(1,-30,0,0), "Out", "Quad", 0.5, true)
		switchWindows("Nothing c:")
	end
end

local Settings = {
	ClickSelect = false;
	SelBox = false;
	ClearProps = false;
	SelectUngrouped = true;
	SaveInstanceScripts = true;
}

function ReturnSetting(set)
	if set == "ClearProps" then
		return Settings.ClearProps
	elseif set == "SelectUngrouped" then
		return Settings.SelectUngrouped
	end
end

OpenToggleButton.MouseButton1Up:connect(function()
	toggleDex(true)
end)

OpenScriptEditorButton.MouseButton1Up:connect(function()
	if OpenScriptEditorButton.Active then
		ScriptEditor.Visible = true
	end
end)

CloseToggleButton.MouseButton1Up:connect(function()
	if CloseToggleButton.Active then
		toggleDex(false)
	end
end)

for i,v in pairs(SlideFrame:GetChildren()) do
	v.MouseButton1Click:connect(function()
		switchWindows(v.Name)
	end)
	
	-- v.MouseEnter:connect(function()v.BackgroundTransparency = 0.5 end)
	-- v.MouseLeave:connect(function()if CurrentWindow~=v.Name then v.BackgroundTransparency = 1 end end)
end


function createSetting(name, interName, defaultOn, func)
	local newSetting = SettingTemplate:Clone()
	newSetting.Position = UDim2.new(0,0,0,#SettingList:GetChildren() * 60)
	newSetting.SName.Text = name
	
	local function toggle(on)
		if on then
			newSetting.Change.Bar:TweenPosition(UDim2.new(0,32,0,-2),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.25,true)
			newSetting.Change.OnBar:TweenSize(UDim2.new(0,34,0,15),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.25,true)
			newSetting.Status.Text = "On"
			Settings[interName] = true
		else
			newSetting.Change.Bar:TweenPosition(UDim2.new(0,-2,0,-2),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.25,true)
			newSetting.Change.OnBar:TweenSize(UDim2.new(0,0,0,15),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.25,true)
			newSetting.Status.Text = "Off"
			Settings[interName] = false
		end
	end	
	
	newSetting.Change.MouseButton1Click:connect(function()
		toggle(not Settings[interName])
		if func then pcall(func, Settings[interName]) end
	end)
	
	newSetting.Visible = true
	newSetting.Parent = SettingList
	
	if defaultOn then
		toggle(true)
	end
end

createSetting("Click part to select","ClickSelect",false)
createSetting("Selection Box","SelBox",false)
createSetting("Clear property value on focus","ClearProps",false)
createSetting("Select ungrouped models","SelectUngrouped",true)
createSetting("SaveInstance decompiles scripts","SaveInstanceScripts",true)

local function getSelection()
	local t = GetSelection:Invoke()
	if t and #t > 0 then
		return t[1]
	else
		return nil
	end
end

Mouse.Button1Down:connect(function()
	if CurrentWindow == "Explorer" and Settings.ClickSelect then
		local target = Mouse.Target
		if target then
			SetSelection:Invoke({target})
		end
	end
end)

SelectionChanged.Event:connect(function()
	if Settings.SelBox then
		local success,err = pcall(function()
			local selection = getSelection()
			SelectionBox.Adornee = selection
		end)
		if err then
			SelectionBox.Adornee = nil
		end
	end
end)

SettingsListener.OnInvoke = ReturnSetting

-- Map Copier

function createMapSetting(obj,interName,defaultOn)
	local function toggle(on)
		if on then
			obj.Change.Bar:TweenPosition(UDim2.new(0,32,0,-2),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.25,true)
			obj.Change.OnBar:TweenSize(UDim2.new(0,34,0,15),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.25,true)
			obj.Status.Text = "On"
			SaveMapSettings[interName] = true
		else
			obj.Change.Bar:TweenPosition(UDim2.new(0,-2,0,-2),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.25,true)
			obj.Change.OnBar:TweenSize(UDim2.new(0,0,0,15),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.25,true)
			obj.Status.Text = "Off"
			SaveMapSettings[interName] = false
		end
	end	
	
	obj.Change.MouseButton1Click:connect(function()
		toggle(not SaveMapSettings[interName])
	end)
	
	obj.Visible = true
	obj.Parent = SaveMapSettingFrame
	
	if defaultOn then
		toggle(true)
	end
end

function createCopyWhatSetting(serv)
	if SaveMapSettings.CopyWhat[serv] then
		local newSetting = SaveMapCopyTemplate:Clone()
		newSetting.Position = UDim2.new(0,0,0,#SaveMapCopyList:GetChildren() * 22 + 5)
		newSetting.Info.Text = serv
		
		local function toggle(on)
			if on then
				newSetting.Change.enabled.Visible = true
				SaveMapSettings.CopyWhat[serv] = true
			else
				newSetting.Change.enabled.Visible = false
				SaveMapSettings.CopyWhat[serv] = false
			end
		end	
	
		newSetting.Change.MouseButton1Click:connect(function()
			toggle(not SaveMapSettings.CopyWhat[serv])
		end)
		
		newSetting.Visible = true
		newSetting.Parent = SaveMapCopyList
	end
end

createMapSetting(SaveMapSettingFrame.Scripts,"SaveScripts",true)
createMapSetting(SaveMapSettingFrame.Terrain,"SaveTerrain",true)
createMapSetting(SaveMapSettingFrame.Lighting,"LightingProperties",true)
createMapSetting(SaveMapSettingFrame.CameraInstances,"CameraInstances",true)

createCopyWhatSetting("Workspace")
createCopyWhatSetting("Lighting")
createCopyWhatSetting("ReplicatedStorage")
createCopyWhatSetting("ReplicatedFirst")
createCopyWhatSetting("StarterPack")
createCopyWhatSetting("StarterGui")
createCopyWhatSetting("StarterPlayer")

SaveMapName.Text = tostring(game.PlaceId).."MapCopy"

SaveMapButton.MouseButton1Click:connect(function()
	local copyWhat = {}

	local copyGroup = Instance.new("Model",game:GetService'ReplicatedStorage')

	local copyScripts = SaveMapSettings.SaveScripts

	local copyTerrain = SaveMapSettings.SaveTerrain

	local lightingProperties = SaveMapSettings.LightingProperties

	local cameraInstances = SaveMapSettings.CameraInstances

	-----------------------------------------------------------------------------------

	for i,v in pairs(SaveMapSettings.CopyWhat) do
		if v then
			table.insert(copyWhat,i)
		end
	end

	local consoleFunc = printconsole or writeconsole

	if consoleFunc then
		consoleFunc("Raspberry Pi's place copier loaded.")
		consoleFunc("Copying map of game "..tostring(game.PlaceId)..".")
	end

	function archivable(root)
		for i,v in pairs(root:GetChildren()) do
			if not game:GetService'Players':GetPlayerFromCharacter(v) then
				v.Archivable = true
				archivable(v)
			end
		end
	end

	function decompileS(root)
		for i,v in pairs(root:GetChildren()) do
			pcall(function()
				if v:IsA("LocalScript") then
					local isDisabled = v.Disabled
					v.Disabled = true
					v.Source = decompile(v)
					v.Disabled = isDisabled
				
					if v.Source == "" then 
						if consoleFunc then consoleFunc("LocalScript "..v.Name.." had a problem decompiling.") end
					else
						if consoleFunc then consoleFunc("LocalScript "..v.Name.." decompiled.") end
					end
				elseif v:IsA("ModuleScript") then
					v.Source = decompile(v)
				
					if v.Source == "" then 
						if consoleFunc then consoleFunc("ModuleScript "..v.Name.." had a problem decompiling.") end
					else
						if consoleFunc then consoleFunc("ModuleScript "..v.Name.." decompiled.") end
					end
				end
			end)
			decompileS(v)
		end
	end

	for i,v in pairs(copyWhat) do archivable(game[v]) end

	for j,obj in pairs(copyWhat) do
		if obj ~= "StarterPlayer" then
			local newFolder = Instance.new("Folder",copyGroup)
			newFolder.Name = obj
			for i,v in pairs(game[obj]:GetChildren()) do
				if v ~= copyGroup then
					pcall(function()
						v:Clone().Parent = newFolder
					end)
				end
			end
		else
			local newFolder = Instance.new("Model",copyGroup)
			newFolder.Name = "StarterPlayer"
			for i,v in pairs(game[obj]:GetChildren()) do
				local newObj = Instance.new("Folder",newFolder)
				newObj.Name = v.Name
				for _,c in pairs(v:GetChildren()) do
					if c.Name ~= "ControlScript" and c.Name ~= "CameraScript" then
						c:Clone().Parent = newObj
					end
				end
			end
		end
	end

	if workspace.CurrentCamera and cameraInstances then
		local cameraFolder = Instance.new("Model",copyGroup)
		cameraFolder.Name = "CameraItems"
		for i,v in pairs(workspace.CurrentCamera:GetChildren()) do v:Clone().Parent = cameraFolder end
	end

	if copyTerrain then
		local myTerrain = workspace.Terrain:CopyRegion(workspace.Terrain.MaxExtents)
		myTerrain.Parent = copyGroup
	end

	function saveProp(obj,prop,par)
		local myProp = obj[prop]
		if type(myProp) == "boolean" then
			local newProp = Instance.new("BoolValue",par)
			newProp.Name = prop
			newProp.Value = myProp
		elseif type(myProp) == "number" then
			local newProp = Instance.new("IntValue",par)
			newProp.Name = prop
			newProp.Value = myProp
		elseif type(myProp) == "string" then
			local newProp = Instance.new("StringValue",par)
			newProp.Name = prop
			newProp.Value = myProp
		elseif type(myProp) == "userdata" then -- Assume Color3
			pcall(function()
				local newProp = Instance.new("Color3Value",par)
				newProp.Name = prop
				newProp.Value = myProp
			end)
		end
	end

	if lightingProperties then
		local lightingProps = Instance.new("Model",copyGroup)
		lightingProps.Name = "LightingProperties"
	
		saveProp(game:GetService'Lighting',"Ambient",lightingProps)
		saveProp(game:GetService'Lighting',"Brightness",lightingProps)
		saveProp(game:GetService'Lighting',"ColorShift_Bottom",lightingProps)
		saveProp(game:GetService'Lighting',"ColorShift_Top",lightingProps)
		saveProp(game:GetService'Lighting',"GlobalShadows",lightingProps)
		saveProp(game:GetService'Lighting',"OutdoorAmbient",lightingProps)
		saveProp(game:GetService'Lighting',"Outlines",lightingProps)
		saveProp(game:GetService'Lighting',"GeographicLatitude",lightingProps)
		saveProp(game:GetService'Lighting',"TimeOfDay",lightingProps)
		saveProp(game:GetService'Lighting',"FogColor",lightingProps)
		saveProp(game:GetService'Lighting',"FogEnd",lightingProps)
		saveProp(game:GetService'Lighting',"FogStart",lightingProps)
	end

	if decompile and copyScripts then
		decompileS(copyGroup)
	end

	if SaveInstance then
		SaveInstance(copyGroup,SaveMapName.Text..".rbxm")
	elseif saveinstance then
		saveinstance(SaveMapName.Text..".rbxm", copyGroup)
	end
	--print("Saved!")
	if consoleFunc then
		consoleFunc("The map has been copied.")
	end
	SaveMapButton.Text = "The map has been saved"
	wait(5)
	SaveMapButton.Text = "Save"
end)

-- End Copier

wait()

IntroFrame:TweenPosition(UDim2.new(1,-300,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.5,true)

switchWindows("Explorer")

wait(1)

SideMenu.Visible = true

for i = 0,1,0.1 do
	IntroFrame.BackgroundTransparency = i
	IntroFrame.Main.BackgroundTransparency = i
	IntroFrame.Slant.ImageLabel.ImageTransparency = i
	IntroFrame.Title.TextTransparency = i
	IntroFrame.Version.TextTransparency = i
	IntroFrame.Creator.TextTransparency = i
	wait()
end

IntroFrame.Visible = false

SlideFrame:TweenPosition(UDim2.new(0,0,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.5,true)
OpenScriptEditorButton:TweenPosition(UDim2.new(0,0,0,180),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.5,true)
CloseToggleButton:TweenPosition(UDim2.new(0,0,0,210),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.5,true)
Slant:TweenPosition(UDim2.new(0,0,0,240),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.5,true)

wait(0.5)

for i = 1,0,-0.1 do
	OpenScriptEditorButton.Icon.ImageTransparency = i
	CloseToggleButton.TextTransparency = i
	wait()
end

CloseToggleButton.Active = true
CloseToggleButton.AutoButtonColor = true

OpenScriptEditorButton.Active = true
OpenScriptEditorButton.AutoButtonColor = true
end)
spawn(function()
	-- initial states
local Option = {
	-- can modify object parents in the hierarchy
	Modifiable = false;
	-- can select objects
	Selectable = true;
}

-- MERELY

Option.Modifiable = true

-- END MERELY

-- general size of GUI objects, in pixels
local GUI_SIZE = 16
-- padding between items within each entry
local ENTRY_PADDING = 1
-- padding between each entry
local ENTRY_MARGIN = 1

local Input = game:GetService("UserInputService")
local HoldingCtrl = false
local HoldingShift = false

--[[

# Explorer Panel

A GUI panel that displays the game hierarchy.


## Selection Bindables

- `Function GetSelection ( )`

	Returns an array of objects representing the objects currently
	selected in the panel.

- `Function SetSelection ( Objects selection )`

	Sets the objects that are selected in the panel. `selection` is an array
	of objects.

- `Event SelectionChanged ( )`

	Fired after the selection changes.


## Option Bindables

- `Function GetOption ( string optionName )`

	If `optionName` is given, returns the value of that option. Otherwise,
	returns a table of options and their current values.

- `Function SetOption ( string optionName, bool value )`

	Sets `optionName` to `value`.

	Options:

	- Modifiable

		Whether objects can be modified by the panel.

		Note that modifying objects depends on being able to select them. If
		Selectable is false, then Actions will not be available. Reparenting
		is still possible, but only for the dragged object.

	- Selectable

		Whether objects can be selected.

		If Modifiable is false, then left-clicking will perform a drag
		selection.

## Updates

- 2013-09-18
	- Fixed explorer icons to match studio explorer.

- 2013-09-14
	- Added GetOption and SetOption bindables.
		- Option: Modifiable; sets whether objects can be modified by the panel.
		- Option: Selectable; sets whether objects can be selected.
	- Slight modification to left-click selection behavior.
	- Improved layout and scaling.

- 2013-09-13
	- Added drag to reparent objects.
		- Left-click to select/deselect object.
		- Left-click and drag unselected object to reparent single object.
		- Left-click and drag selected object to move reparent entire selection.
		- Right-click while dragging to cancel.

- 2013-09-11
	- Added explorer panel header with actions.
		- Added Cut action.
		- Added Copy action.
		- Added Paste action.
		- Added Delete action.
	- Added drag selection.
		- Left-click: Add to selection on drag.
		- Right-click: Add to or remove from selection on drag.
	- Ensured SelectionChanged fires only when the selection actually changes.
	- Added documentation and change log.
	- Fixed thread issue.

- 2013-09-09
	- Added basic multi-selection.
		- Left-click to set selection.
		- Right-click to add to or remove from selection.
	- Removed "Selection" ObjectValue.
		- Added GetSelection BindableFunction.
		- Added SetSelection BindableFunction.
		- Added SelectionChanged BindableEvent.
	- Changed font to SourceSans.

- 2013-08-31
	- Improved GUI sizing based off of `GUI_SIZE` constant.
	- Automatic font size detection.

- 2013-08-27
	- Initial explorer panel.


## Todo

- Sorting
	- by ExplorerOrder
	- by children
	- by name
- Drag objects to reparent

]]

local ENTRY_SIZE = GUI_SIZE + ENTRY_PADDING*2
local ENTRY_BOUND = ENTRY_SIZE + ENTRY_MARGIN
local HEADER_SIZE = ENTRY_SIZE*2

local FONT = 'SourceSans'
local FONT_SIZE do
	local size = {8,9,10,11,12,14,18,24,36,48}
	local s
	local n = math.huge
	for i = 1,#size do
		if size[i] <= GUI_SIZE then
			FONT_SIZE = i - 1
		end
	end
end

local GuiColor = {
	Background      = Color3.fromRGB( 43,  43,  43);
	Border          = Color3.fromRGB( 20,  20,  20);
	Selected        = Color3.fromRGB(215, 125,   0);
	BorderSelected  = Color3.fromRGB(188, 118,   4);
	Text            = Color3.fromRGB(245, 245, 245);
	TextDisabled    = Color3.fromRGB(188, 188, 188);
	TextSelected    = Color3.fromRGB(255, 255, 255);
	Button          = Color3.fromRGB( 33,  33,  33);
	ButtonBorder    = Color3.fromRGB(133, 133, 133);
	ButtonSelected  = Color3.fromRGB(255, 188,   0);
	Field           = Color3.fromRGB( 43,  43,  43);
	FieldBorder     = Color3.fromRGB( 50,  50,  50);
	TitleBackground = Color3.fromRGB( 11,  11,  11);
}

--[[
Background      = Color3.fromRGB(233, 233, 233);
Border          = Color3.fromRGB(149, 149, 149);
Selected        = Color3.fromRGB( 96, 140, 211);
BorderSelected  = Color3.fromRGB( 86, 125, 188);
Text            = Color3.fromRGB(  0,   0,   0);
TextDisabled    = Color3.fromRGB(128, 128, 128);
TextSelected    = Color3.fromRGB(255, 255, 255);
Button          = Color3.fromRGB(221, 221, 221);
ButtonBorder    = Color3.fromRGB(149, 149, 149);
ButtonSelected  = Color3.fromRGB(255,   0,   0);
Field           = Color3.fromRGB(255, 255, 255);
FieldBorder     = Color3.fromRGB(191, 191, 191);
TitleBackground = Color3.fromRGB(178, 178, 178);
]]

----------------------------------------------------------------
----------------------------------------------------------------
----------------------------------------------------------------
----------------------------------------------------------------
---- Icon map constants

local MAP_ID = 483448923

-- Indices based on implementation of Icon function.
local ACTION_CUT         	 = 160
local ACTION_COPY        	 = 161
local ACTION_PASTE       	 = 162
local ACTION_DELETE      	 = 163
local ACTION_SORT        	 = 164
local ACTION_CUT_OVER    	 = 174
local ACTION_COPY_OVER   	 = 175
local ACTION_PASTE_OVER  	 = 176
local ACTION_DELETE_OVER	 = 177
local ACTION_SORT_OVER  	 = 178
local ACTION_EDITQUICKACCESS = 190
local ACTION_FREEZE 		 = 188
local ACTION_STARRED 		 = 189
local ACTION_ADDSTAR 		 = 184
local ACTION_ADDSTAR_OVER 	 = 187

local NODE_COLLAPSED      = 165
local NODE_EXPANDED       = 166
local NODE_COLLAPSED_OVER = 179
local NODE_EXPANDED_OVER  = 180

local ExplorerIndex = {
	["Accessory"] = 32;
	["Accoutrement"] = 32;
	["AdService"] = 73;
	["Animation"] = 60;
	["AnimationController"] = 60;
	["AnimationTrack"] = 60;
	["Animator"] = 60;
	["ArcHandles"] = 56;
	["AssetService"] = 72;
	["Attachment"] = 34;
	["Backpack"] = 20;
	["BadgeService"] = 75;
	["BallSocketConstraint"] = 89;
	["BillboardGui"] = 64;
	["BinaryStringValue"] = 4;
	["BindableEvent"] = 67;
	["BindableFunction"] = 66;
	["BlockMesh"] = 8;
	["BloomEffect"] = 90;
	["BlurEffect"] = 90;
	["BodyAngularVelocity"] = 14;
	["BodyForce"] = 14;
	["BodyGyro"] = 14;
	["BodyPosition"] = 14;
	["BodyThrust"] = 14;
	["BodyVelocity"] = 14;
	["BoolValue"] = 4;
	["BoxHandleAdornment"] = 54;
	["BrickColorValue"] = 4;
	["Camera"] = 5;
	["CFrameValue"] = 4;
	["CharacterMesh"] = 60;
	["Chat"] = 33;
	["ClickDetector"] = 41;
	["CollectionService"] = 30;
	["Color3Value"] = 4;
	["ColorCorrectionEffect"] = 90;
	["ConeHandleAdornment"] = 54;
	["Configuration"] = 58;
	["ContentProvider"] = 72;
	["ContextActionService"] = 41;
	["CoreGui"] = 46;
	["CoreScript"] = 18;
	["CornerWedgePart"] = 1;
	["CustomEvent"] = 4;
	["CustomEventReceiver"] = 4;
	["CylinderHandleAdornment"] = 54;
	["CylinderMesh"] = 8;
	["CylindricalConstraint"] = 89;
	["Debris"] = 30;
	["Decal"] = 7;
	["Dialog"] = 62;
	["DialogChoice"] = 63;
	["DoubleConstrainedValue"] = 4;
	["Explosion"] = 36;
	["FileMesh"] = 8;
	["Fire"] = 61;
	["Flag"] = 38;
	["FlagStand"] = 39;
	["FloorWire"] = 4;
	["Folder"] = 70;
	["ForceField"] = 37;
	["Frame"] = 48;
	["GamePassService"] = 19;
	["Glue"] = 34;
	["GuiButton"] = 52;
	["GuiMain"] = 47;
	["GuiService"] = 47;
	["Handles"] = 53;
	["HapticService"] = 84;
	["Hat"] = 45;
	["HingeConstraint"] = 89;
	["Hint"] = 33;
	["HopperBin"] = 22;
	["HttpService"] = 76;
	["Humanoid"] = 9;
	["ImageButton"] = 52;
	["ImageLabel"] = 49;
	["InsertService"] = 72;
	["IntConstrainedValue"] = 4;
	["IntValue"] = 4;
	["JointInstance"] = 34;
	["JointsService"] = 34;
	["Keyframe"] = 60;
	["KeyframeSequence"] = 60;
	["KeyframeSequenceProvider"] = 60;
	["Lighting"] = 13;
	["LineHandleAdornment"] = 54;
	["LocalScript"] = 18;
	["LogService"] = 87;
	["MarketplaceService"] = 46;
	["Message"] = 33;
	["Model"] = 2;
	["ModuleScript"] = 71;
	["Motor"] = 34;
	["Motor6D"] = 34;
	["MoveToConstraint"] = 89;
	["NegateOperation"] = 78;
	["NetworkClient"] = 16;
	["NetworkReplicator"] = 29;
	["NetworkServer"] = 15;
	["NumberValue"] = 4;
	["ObjectValue"] = 4;
	["Pants"] = 44;
	["ParallelRampPart"] = 1;
	["Part"] = 1;
	["ParticleEmitter"] = 69;
	["PartPairLasso"] = 57;
	["PathfindingService"] = 37;
	["Platform"] = 35;
	["Player"] = 12;
	["PlayerGui"] = 46;
	["Players"] = 21;
	["PlayerScripts"] = 82;
	["PointLight"] = 13;
	["PointsService"] = 83;
	["Pose"] = 60;
	["PrismaticConstraint"] = 89;
	["PrismPart"] = 1;
	["PyramidPart"] = 1;
	["RayValue"] = 4;
	["ReflectionMetadata"] = 86;
	["ReflectionMetadataCallbacks"] = 86;
	["ReflectionMetadataClass"] = 86;
	["ReflectionMetadataClasses"] = 86;
	["ReflectionMetadataEnum"] = 86;
	["ReflectionMetadataEnumItem"] = 86;
	["ReflectionMetadataEnums"] = 86;
	["ReflectionMetadataEvents"] = 86;
	["ReflectionMetadataFunctions"] = 86;
	["ReflectionMetadataMember"] = 86;
	["ReflectionMetadataProperties"] = 86;
	["ReflectionMetadataYieldFunctions"] = 86;
	["RemoteEvent"] = 80;
	["RemoteFunction"] = 79;
	["ReplicatedFirst"] = 72;
	["ReplicatedStorage"] = 72;
	["RightAngleRampPart"] = 1;
	["RocketPropulsion"] = 14;
	["RodConstraint"] = 89;
	["RopeConstraint"] = 89;
	["Rotate"] = 34;
	["RotateP"] = 34;
	["RotateV"] = 34;
	["RunService"] = 66;
	["ScreenGui"] = 47;
	["Script"] = 6;
	["ScrollingFrame"] = 48;
	["Seat"] = 35;
	["Selection"] = 55;
	["SelectionBox"] = 54;
	["SelectionPartLasso"] = 57;
	["SelectionPointLasso"] = 57;
	["SelectionSphere"] = 54;
	["ServerScriptService"] = 0;
	["ServerStorage"] = 74;
	["Shirt"] = 43;
	["ShirtGraphic"] = 40;
	["SkateboardPlatform"] = 35;
	["Sky"] = 28;
	["SlidingBallConstraint"] = 89;
	["Smoke"] = 59;
	["Snap"] = 34;
	["Sound"] = 11;
	["SoundService"] = 31;
	["Sparkles"] = 42;
	["SpawnLocation"] = 25;
	["SpecialMesh"] = 8;
	["SphereHandleAdornment"] = 54;
	["SpotLight"] = 13;
	["SpringConstraint"] = 89;
	["StarterCharacterScripts"] = 82;
	["StarterGear"] = 20;
	["StarterGui"] = 46;
	["StarterPack"] = 20;
	["StarterPlayer"] = 88;
	["StarterPlayerScripts"] = 82;
	["Status"] = 2;
	["StringValue"] = 4;
	["SunRaysEffect"] = 90;
	["SurfaceGui"] = 64;
	["SurfaceLight"] = 13;
	["SurfaceSelection"] = 55;
	["Team"] = 24;
	["Teams"] = 23;
	["TeleportService"] = 81;
	["Terrain"] = 65;
	["TerrainRegion"] = 65;
	["TestService"] = 68;
	["TextBox"] = 51;
	["TextButton"] = 51;
	["TextLabel"] = 50;
	["Texture"] = 10;
	["TextureTrail"] = 4;
	["Tool"] = 17;
	["TouchTransmitter"] = 37;
	["TrussPart"] = 1;
	["UnionOperation"] = 77;
	["UserInputService"] = 84;
	["Vector3Value"] = 4;
	["VehicleSeat"] = 35;
	["VelocityMotor"] = 34;
	["WedgePart"] = 1;
	["Weld"] = 34;
	["Workspace"] = 19;
}

----------------------------------------------------------------
----------------------------------------------------------------
----------------------------------------------------------------
----------------------------------------------------------------
----------------------------------------------------------------

function Create(ty,data)
	local obj
	if type(ty) == 'string' then
		obj = Instance.new(ty)
	else
		obj = ty
	end
	for k, v in pairs(data) do
		if type(k) == 'number' then
			v.Parent = obj
		else
			obj[k] = v
		end
	end
	return obj
end

local barActive = false
local activeOptions = {}

function createDDown(dBut, callback,...)
	if barActive then
		for i,v in pairs(activeOptions) do
			v:Destroy()
		end
		activeOptions = {}
		barActive = false
		return
	else
		barActive = true
	end
	local slots = {...}
	local base = dBut
	for i,v in pairs(slots) do
		local newOption = base:Clone()
		newOption.ZIndex = 5
		newOption.Name = "Option "..tostring(i)
		newOption.Parent = base.Parent.Parent.Parent
		newOption.BackgroundTransparency = 0
		newOption.ZIndex = 2
		table.insert(activeOptions,newOption)
		newOption.Position = UDim2.new(-0.4, dBut.Position.X.Offset, dBut.Position.Y.Scale, dBut.Position.Y.Offset + (#activeOptions * dBut.Size.Y.Offset))
		newOption.Text = slots[i]
		newOption.MouseButton1Down:connect(function()
			dBut.Text = slots[i]
			callback(slots[i])
			for i,v in pairs(activeOptions) do
				v:Destroy()
			end
			activeOptions = {}
			barActive = false
		end)
	end
end

-- Connects a function to an event such that it fires asynchronously
function Connect(event,func)
	return event:connect(function(...)
		local a = {...}
		spawn(function() func(unpack(a)) end)
	end)
end

-- returns the ascendant ScreenGui of an object
function GetScreen(screen)
	if screen == nil then return nil end
	while not screen:IsA("ScreenGui") do
		screen = screen.Parent
		if screen == nil then return nil end
	end
	return screen
end

do
	local ZIndexLock = {}
	-- Sets the ZIndex of an object and its descendants. Objects are locked so
	-- that SetZIndexOnChanged doesn't spawn multiple threads that set the
	-- ZIndex of the same object.
	function SetZIndex(object,z)
		if not ZIndexLock[object] then
			ZIndexLock[object] = true
			if object:IsA'GuiObject' then
				object.ZIndex = z
			end
			local children = object:GetChildren()
			for i = 1,#children do
				SetZIndex(children[i],z)
			end
			ZIndexLock[object] = nil
		end
	end

	function SetZIndexOnChanged(object)
		return object.Changed:connect(function(p)
			if p == "ZIndex" then
				SetZIndex(object,object.ZIndex)
			end
		end)
	end
end

---- IconMap ----
-- Image size: 256px x 256px
-- Icon size: 16px x 16px
-- Padding between each icon: 2px
-- Padding around image edge: 1px
-- Total icons: 14 x 14 (196)
local Icon do
	local iconMap = 'http://www.roblox.com/asset/?id=' .. MAP_ID
	game:GetService('ContentProvider'):Preload(iconMap)
	local iconDehash do
		-- 14 x 14, 0-based input, 0-based output
		local f=math.floor
		function iconDehash(h)
			return f(h/14%14),f(h%14)
		end
	end

	function Icon(IconFrame,index)
		local row,col = iconDehash(index)
		local mapSize = Vector2.new(256,256)
		local pad,border = 2,1
		local iconSize = 16

		local class = 'Frame'
		if type(IconFrame) == 'string' then
			class = IconFrame
			IconFrame = nil
		end

		if not IconFrame then
			IconFrame = Create(class,{
				Name = "Icon";
				BackgroundTransparency = 1;
				ClipsDescendants = true;
				Create('ImageLabel',{
					Name = "IconMap";
					Active = false;
					BackgroundTransparency = 1;
					Image = iconMap;
					Size = UDim2.new(mapSize.x/iconSize,0,mapSize.y/iconSize,0);
				});
			})
		end

		IconFrame.IconMap.Position = UDim2.new(-col - (pad*(col+1) + border)/iconSize,0,-row - (pad*(row+1) + border)/iconSize,0)
		return IconFrame
	end
end

----------------------------------------------------------------
----------------------------------------------------------------
----------------------------------------------------------------
----------------------------------------------------------------
---- ScrollBar
do
	-- AutoButtonColor doesn't always reset properly
	local function ResetButtonColor(button)
		local active = button.Active
		button.Active = not active
		button.Active = active
	end

	local function ArrowGraphic(size,dir,scaled,template)
		local Frame = Create('Frame',{
			Name = "Arrow Graphic";
			BorderSizePixel = 0;
			Size = UDim2.new(0,size,0,size);
			Transparency = 1;
		})
		if not template then
			template = Instance.new("Frame")
			template.BorderSizePixel = 0
		end

		template.BackgroundColor3 = Color3.new(1, 1, 1);

		local transform
		if dir == nil or dir == 'Up' then
			function transform(p,s) return p,s end
		elseif dir == 'Down' then
			function transform(p,s) return UDim2.new(0,p.X.Offset,0,size-p.Y.Offset-1),s end
		elseif dir == 'Left' then
			function transform(p,s) return UDim2.new(0,p.Y.Offset,0,p.X.Offset),UDim2.new(0,s.Y.Offset,0,s.X.Offset) end
		elseif dir == 'Right' then
			function transform(p,s) return UDim2.new(0,size-p.Y.Offset-1,0,p.X.Offset),UDim2.new(0,s.Y.Offset,0,s.X.Offset) end
		end

		local scale
		if scaled then
			function scale(p,s) return UDim2.new(p.X.Offset/size,0,p.Y.Offset/size,0),UDim2.new(s.X.Offset/size,0,s.Y.Offset/size,0) end
		else
			function scale(p,s) return p,s end
		end

		local o = math.floor(size/4)
		if size%2 == 0 then
			local n = size/2-1
			for i = 0,n do
				local t = template:Clone()
				local p,s = scale(transform(
					UDim2.new(0,n-i,0,o+i),
					UDim2.new(0,(i+1)*2,0,1)
				))
				t.Position = p
				t.Size = s
				t.Parent = Frame
			end
		else
			local n = (size-1)/2
			for i = 0,n do
				local t = template:Clone()
				local p,s = scale(transform(
					UDim2.new(0,n-i,0,o+i),
					UDim2.new(0,i*2+1,0,1)
				))
				t.Position = p
				t.Size = s
				t.Parent = Frame
			end
		end
		if size%4 > 1 then
			local t = template:Clone()
			local p,s = scale(transform(
				UDim2.new(0,0,0,size-o-1),
				UDim2.new(0,size,0,1)
			))
			t.Position = p
			t.Size = s
			t.Parent = Frame
		end

		for i,v in pairs(Frame:GetChildren()) do
			v.BackgroundColor3 = Color3.new(1, 1, 1);
		end

		return Frame
	end


	local function GripGraphic(size,dir,spacing,scaled,template)
		local Frame = Create('Frame',{
			Name = "Grip Graphic";
			BorderSizePixel = 0;
			Size = UDim2.new(0,size.x,0,size.y);
			Transparency = 1;
		})
		if not template then
			template = Instance.new("Frame")
			template.BorderSizePixel = 0
		end

		spacing = spacing or 2

		local scale
		if scaled then
			function scale(p) return UDim2.new(p.X.Offset/size.x,0,p.Y.Offset/size.y,0) end
		else
			function scale(p) return p end
		end

		if dir == 'Vertical' then
			for i=0,size.x-1,spacing do
				local t = template:Clone()
				t.Size = scale(UDim2.new(0,1,0,size.y))
				t.Position = scale(UDim2.new(0,i,0,0))
				t.Parent = Frame
			end
		elseif dir == nil or dir == 'Horizontal' then
			for i=0,size.y-1,spacing do
				local t = template:Clone()
				t.Size = scale(UDim2.new(0,size.x,0,1))
				t.Position = scale(UDim2.new(0,0,0,i))
				t.Parent = Frame
			end
		end

		return Frame
	end

	local mt = {
		__index = {
			GetScrollPercent = function(self)
				return self.ScrollIndex/(self.TotalSpace-self.VisibleSpace)
			end;
			CanScrollDown = function(self)
				return self.ScrollIndex + self.VisibleSpace < self.TotalSpace
			end;
			CanScrollUp = function(self)
				return self.ScrollIndex > 0
			end;
			ScrollDown = function(self)
				self.ScrollIndex = self.ScrollIndex + self.PageIncrement
				self:Update()
			end;
			ScrollUp = function(self)
				self.ScrollIndex = self.ScrollIndex - self.PageIncrement
				self:Update()
			end;
			ScrollTo = function(self,index)
				self.ScrollIndex = index
				self:Update()
			end;
			SetScrollPercent = function(self,percent)
				self.ScrollIndex = math.floor((self.TotalSpace - self.VisibleSpace)*percent + 0.5)
				self:Update()
			end;
		};
	}
	mt.__index.CanScrollRight = mt.__index.CanScrollDown
	mt.__index.CanScrollLeft = mt.__index.CanScrollUp
	mt.__index.ScrollLeft = mt.__index.ScrollUp
	mt.__index.ScrollRight = mt.__index.ScrollDown

	local ScrollStyles = {
		Background      = Color3.fromRGB(233, 233, 233);
		Border          = Color3.fromRGB(149, 149, 149);
		Selected        = Color3.fromRGB( 63, 119, 189);
		BorderSelected  = Color3.fromRGB( 55, 106, 167);
		Text            = Color3.fromRGB(  0,   0,   0);
		TextDisabled    = Color3.fromRGB(128, 128, 128);
		TextSelected    = Color3.fromRGB(255, 255, 255);
		Button          = Color3.fromRGB( 35,  35,  35);
		ButtonBorder    = Color3.fromRGB(149, 149, 149);
		ButtonSelected  = Color3.fromRGB(255,   0,   0);
		Field           = Color3.fromRGB(255, 255, 255);
		FieldBorder     = Color3.fromRGB(191, 191, 191);
		TitleBackground = Color3.fromRGB(178, 178, 178);
	}

	function ScrollBar(horizontal)
		-- create row scroll bar
		local ScrollBarWidth = GUI_SIZE;
		local ScrollFrame = Create('Frame',{
			Name = "ScrollFrame";
			Position = horizontal and UDim2.new(0,0,1,-ScrollBarWidth) or UDim2.new(1,-ScrollBarWidth,0,0);
			Size = horizontal and UDim2.new(1,0,0,ScrollBarWidth) or UDim2.new(0,ScrollBarWidth,1,0);
			BackgroundTransparency = 1;
			Create('ImageButton',{
				Name = "ScrollDown";
				Position = horizontal and UDim2.new(1,-ScrollBarWidth,0,0) or UDim2.new(0,0,1,-ScrollBarWidth);
				Size = UDim2.new(0, ScrollBarWidth, 0, ScrollBarWidth);
				BackgroundColor3 = ScrollStyles.Button;
				BorderColor3 = ScrollStyles.Border;
				BorderSizePixel = 0;
			});
			Create('ImageButton',{
				Name = "ScrollUp";
				Size = UDim2.new(0, ScrollBarWidth, 0, ScrollBarWidth);
				BackgroundColor3 = ScrollStyles.Button;
				BorderColor3 = ScrollStyles.Border;
				BorderSizePixel = 0;
			});
			Create('ImageButton',{
				Name = "ScrollBar";
				Size = horizontal and UDim2.new(1,-ScrollBarWidth*2,1,0) or UDim2.new(1,0,1,-ScrollBarWidth*2);
				Position = horizontal and UDim2.new(0,ScrollBarWidth,0,0) or UDim2.new(0,0,0,ScrollBarWidth);
				AutoButtonColor = false;
				BackgroundColor3 = Color3.fromRGB(20, 20, 20);
				BorderColor3 = ScrollStyles.Border;
				BorderSizePixel = 0;
				Create('ImageButton',{
					Name = "ScrollThumb";
					AutoButtonColor = false;
					Size = UDim2.new(0, ScrollBarWidth, 0, ScrollBarWidth);
					BackgroundColor3 = ScrollStyles.Button;
					BorderColor3 = ScrollStyles.Border;
					BorderSizePixel = 0;
				});
			});
		})

		local graphicTemplate = Create('Frame',{
			Name="Graphic";
			BorderSizePixel = 0;
			BackgroundColor3 = Color3.new(1, 1, 1);
		})
		local graphicSize = GUI_SIZE/2

		local ScrollDownFrame = ScrollFrame.ScrollDown
			local ScrollDownGraphic = ArrowGraphic(graphicSize,horizontal and 'Right' or 'Down',true,graphicTemplate)
			ScrollDownGraphic.Position = UDim2.new(0.5,-graphicSize/2,0.5,-graphicSize/2)
			ScrollDownGraphic.Parent = ScrollDownFrame
		local ScrollUpFrame = ScrollFrame.ScrollUp
			local ScrollUpGraphic = ArrowGraphic(graphicSize,horizontal and 'Left' or 'Up',true,graphicTemplate)
			ScrollUpGraphic.Position = UDim2.new(0.5,-graphicSize/2,0.5,-graphicSize/2)
			ScrollUpGraphic.Parent = ScrollUpFrame
		local ScrollBarFrame = ScrollFrame.ScrollBar
		local ScrollThumbFrame = ScrollBarFrame.ScrollThumb
		do
			local size = GUI_SIZE*3/8
			local Decal = GripGraphic(Vector2.new(size,size),horizontal and 'Vertical' or 'Horizontal',2,graphicTemplate)
			Decal.Position = UDim2.new(0.5,-size/2,0.5,-size/2)
			Decal.Parent = ScrollThumbFrame
		end

		local Class = setmetatable({
			GUI = ScrollFrame;
			ScrollIndex = 0;
			VisibleSpace = 0;
			TotalSpace = 0;
			PageIncrement = 1;
		},mt)

		local UpdateScrollThumb
		if horizontal then
			function UpdateScrollThumb()
				ScrollThumbFrame.Size = UDim2.new(Class.VisibleSpace/Class.TotalSpace,0,0,GUI_SIZE)
				if ScrollThumbFrame.AbsoluteSize.x < GUI_SIZE then
					ScrollThumbFrame.Size = UDim2.new(0,GUI_SIZE,0,GUI_SIZE)
				end
				local barSize = ScrollBarFrame.AbsoluteSize.x
				ScrollThumbFrame.Position = UDim2.new(Class:GetScrollPercent()*(barSize - ScrollThumbFrame.AbsoluteSize.x)/barSize,0,0,0)
			end
		else
			function UpdateScrollThumb()
				ScrollThumbFrame.Size = UDim2.new(0,GUI_SIZE,Class.VisibleSpace/Class.TotalSpace,0)
				if ScrollThumbFrame.AbsoluteSize.y < GUI_SIZE then
					ScrollThumbFrame.Size = UDim2.new(0,GUI_SIZE,0,GUI_SIZE)
				end
				local barSize = ScrollBarFrame.AbsoluteSize.y
				ScrollThumbFrame.Position = UDim2.new(0,0,Class:GetScrollPercent()*(barSize - ScrollThumbFrame.AbsoluteSize.y)/barSize,0)
			end
		end

		local lastDown
		local lastUp
		local scrollStyle = {BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=0}
		local scrollStyle_ds = {BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=0.7}

		local function Update()
			local t = Class.TotalSpace
			local v = Class.VisibleSpace
			local s = Class.ScrollIndex
			if v <= t then
				if s > 0 then
					if s + v > t then
						Class.ScrollIndex = t - v
					end
				else
					Class.ScrollIndex = 0
				end
			else
				Class.ScrollIndex = 0
			end

			if Class.UpdateCallback then
				if Class.UpdateCallback(Class) == false then
					return
				end
			end

			local down = Class:CanScrollDown()
			local up = Class:CanScrollUp()
			if down ~= lastDown then
				lastDown = down
				ScrollDownFrame.Active = down
				ScrollDownFrame.AutoButtonColor = down
				local children = ScrollDownGraphic:GetChildren()
				local style = down and scrollStyle or scrollStyle_ds
				for i = 1,#children do
					Create(children[i],style)
				end
			end
			if up ~= lastUp then
				lastUp = up
				ScrollUpFrame.Active = up
				ScrollUpFrame.AutoButtonColor = up
				local children = ScrollUpGraphic:GetChildren()
				local style = up and scrollStyle or scrollStyle_ds
				for i = 1,#children do
					Create(children[i],style)
				end
			end
			ScrollThumbFrame.Visible = down or up
			UpdateScrollThumb()
		end
		Class.Update = Update

		SetZIndexOnChanged(ScrollFrame)

		local MouseDrag = Create('ImageButton',{
			Name = "MouseDrag";
			Position = UDim2.new(-0.25,0,-0.25,0);
			Size = UDim2.new(1.5,0,1.5,0);
			Transparency = 1;
			AutoButtonColor = false;
			Active = true;
			ZIndex = 10;
		})

		local scrollEventID = 0
		ScrollDownFrame.MouseButton1Down:connect(function()
			scrollEventID = tick()
			local current = scrollEventID
			local up_con
			up_con = MouseDrag.MouseButton1Up:connect(function()
				scrollEventID = tick()
				MouseDrag.Parent = nil
				ResetButtonColor(ScrollDownFrame)
				up_con:disconnect(); drag = nil
			end)
			MouseDrag.Parent = GetScreen(ScrollFrame)
			Class:ScrollDown()
			wait(0.2) -- delay before auto scroll
			while scrollEventID == current do
				Class:ScrollDown()
				if not Class:CanScrollDown() then break end
				wait()
			end
		end)

		ScrollDownFrame.MouseButton1Up:connect(function()
			scrollEventID = tick()
		end)

		ScrollUpFrame.MouseButton1Down:connect(function()
			scrollEventID = tick()
			local current = scrollEventID
			local up_con
			up_con = MouseDrag.MouseButton1Up:connect(function()
				scrollEventID = tick()
				MouseDrag.Parent = nil
				ResetButtonColor(ScrollUpFrame)
				up_con:disconnect(); drag = nil
			end)
			MouseDrag.Parent = GetScreen(ScrollFrame)
			Class:ScrollUp()
			wait(0.2)
			while scrollEventID == current do
				Class:ScrollUp()
				if not Class:CanScrollUp() then break end
				wait()
			end
		end)

		ScrollUpFrame.MouseButton1Up:connect(function()
			scrollEventID = tick()
		end)

		if horizontal then
			ScrollBarFrame.MouseButton1Down:connect(function(x,y)
				scrollEventID = tick()
				local current = scrollEventID
				local up_con
				up_con = MouseDrag.MouseButton1Up:connect(function()
					scrollEventID = tick()
					MouseDrag.Parent = nil
					ResetButtonColor(ScrollUpFrame)
					up_con:disconnect(); drag = nil
				end)
				MouseDrag.Parent = GetScreen(ScrollFrame)
				if x > ScrollThumbFrame.AbsolutePosition.x then
					Class:ScrollTo(Class.ScrollIndex + Class.VisibleSpace)
					wait(0.2)
					while scrollEventID == current do
						if x < ScrollThumbFrame.AbsolutePosition.x + ScrollThumbFrame.AbsoluteSize.x then break end
						Class:ScrollTo(Class.ScrollIndex + Class.VisibleSpace)
						wait()
					end
				else
					Class:ScrollTo(Class.ScrollIndex - Class.VisibleSpace)
					wait(0.2)
					while scrollEventID == current do
						if x > ScrollThumbFrame.AbsolutePosition.x then break end
						Class:ScrollTo(Class.ScrollIndex - Class.VisibleSpace)
						wait()
					end
				end
			end)
		else
			ScrollBarFrame.MouseButton1Down:connect(function(x,y)
				scrollEventID = tick()
				local current = scrollEventID
				local up_con
				up_con = MouseDrag.MouseButton1Up:connect(function()
					scrollEventID = tick()
					MouseDrag.Parent = nil
					ResetButtonColor(ScrollUpFrame)
					up_con:disconnect(); drag = nil
				end)
				MouseDrag.Parent = GetScreen(ScrollFrame)
				if y > ScrollThumbFrame.AbsolutePosition.y then
					Class:ScrollTo(Class.ScrollIndex + Class.VisibleSpace)
					wait(0.2)
					while scrollEventID == current do
						if y < ScrollThumbFrame.AbsolutePosition.y + ScrollThumbFrame.AbsoluteSize.y then break end
						Class:ScrollTo(Class.ScrollIndex + Class.VisibleSpace)
						wait()
					end
				else
					Class:ScrollTo(Class.ScrollIndex - Class.VisibleSpace)
					wait(0.2)
					while scrollEventID == current do
						if y > ScrollThumbFrame.AbsolutePosition.y then break end
						Class:ScrollTo(Class.ScrollIndex - Class.VisibleSpace)
						wait()
					end
				end
			end)
		end

		if horizontal then
			ScrollThumbFrame.MouseButton1Down:connect(function(x,y)
				scrollEventID = tick()
				local mouse_offset = x - ScrollThumbFrame.AbsolutePosition.x
				local drag_con
				local up_con
				drag_con = MouseDrag.MouseMoved:connect(function(x,y)
					if not game:GetService'UserInputService':IsMouseButtonPressed'MouseButton1' then
						scrollEventID = tick()
						MouseDrag.Parent = nil
						ResetButtonColor(ScrollThumbFrame)
						drag_con:disconnect(); drag_con = nil
						up_con:disconnect(); drag = nil
					end
					local bar_abs_pos = ScrollBarFrame.AbsolutePosition.x
					local bar_drag = ScrollBarFrame.AbsoluteSize.x - ScrollThumbFrame.AbsoluteSize.x
					local bar_abs_one = bar_abs_pos + bar_drag
					x = x - mouse_offset
					x = x < bar_abs_pos and bar_abs_pos or x > bar_abs_one and bar_abs_one or x
					x = x - bar_abs_pos
					Class:SetScrollPercent(x/(bar_drag))
				end)
				up_con = MouseDrag.MouseButton1Up:connect(function()
					scrollEventID = tick()
					MouseDrag.Parent = nil
					ResetButtonColor(ScrollThumbFrame)
					drag_con:disconnect(); drag_con = nil
					up_con:disconnect(); drag = nil
				end)
				MouseDrag.Parent = GetScreen(ScrollFrame)
			end)
		else
			ScrollThumbFrame.MouseButton1Down:connect(function(x,y)
				scrollEventID = tick()
				local mouse_offset = y - ScrollThumbFrame.AbsolutePosition.y
				local drag_con
				local up_con
				drag_con = MouseDrag.MouseMoved:connect(function(x,y)
					if not game:GetService'UserInputService':IsMouseButtonPressed'MouseButton1' then
						scrollEventID = tick()
						MouseDrag.Parent = nil
						ResetButtonColor(ScrollThumbFrame)
						drag_con:disconnect(); drag_con = nil
						up_con:disconnect(); drag = nil
					end
					local bar_abs_pos = ScrollBarFrame.AbsolutePosition.y
					local bar_drag = ScrollBarFrame.AbsoluteSize.y - ScrollThumbFrame.AbsoluteSize.y
					local bar_abs_one = bar_abs_pos + bar_drag
					y = y - mouse_offset
					y = y < bar_abs_pos and bar_abs_pos or y > bar_abs_one and bar_abs_one or y
					y = y - bar_abs_pos
					Class:SetScrollPercent(y/(bar_drag))
				end)
				up_con = MouseDrag.MouseButton1Up:connect(function()
					scrollEventID = tick()
					MouseDrag.Parent = nil
					ResetButtonColor(ScrollThumbFrame)
					drag_con:disconnect(); drag_con = nil
					up_con:disconnect(); drag = nil
				end)
				MouseDrag.Parent = GetScreen(ScrollFrame)
			end)
		end

		function Class:Destroy()
			ScrollFrame:Destroy()
			MouseDrag:Destroy()
			for k in pairs(Class) do
				Class[k] = nil
			end
			setmetatable(Class,nil)
		end

		Update()

		return Class
	end
end

----------------------------------------------------------------
----------------------------------------------------------------
----------------------------------------------------------------
----------------------------------------------------------------
---- Explorer panel

local explorerPanel = D_E_X.ExplorerPanel
Create(explorerPanel,{
	BackgroundColor3 = GuiColor.Field;
	BorderColor3 = GuiColor.Border;
	Active = true;
})

local SettingsRemote = explorerPanel.Parent:WaitForChild("SettingsPanel"):WaitForChild("GetSetting")
local GetApiRemote = explorerPanel.Parent:WaitForChild("PropertiesFrame"):WaitForChild("GetApi")
local GetAwaitRemote = explorerPanel.Parent:WaitForChild("PropertiesFrame"):WaitForChild("GetAwaiting")
local bindSetAwaiting = explorerPanel.Parent:WaitForChild("PropertiesFrame"):WaitForChild("SetAwaiting")

local SaveInstanceWindow = explorerPanel.Parent:WaitForChild("SaveInstance")
local ConfirmationWindow = explorerPanel.Parent:WaitForChild("Confirmation")
local CautionWindow = explorerPanel.Parent:WaitForChild("Caution")
local TableCautionWindow = explorerPanel.Parent:WaitForChild("TableCaution")

local RemoteWindow = explorerPanel.Parent:WaitForChild("CallRemote")

local ScriptEditor = explorerPanel.Parent:WaitForChild("ScriptEditor")
local ScriptEditorEvent = ScriptEditor:WaitForChild("OpenScript")

local CurrentSaveInstanceWindow
local CurrentRemoteWindow

local lastSelectedNode

local DexStorage
local DexStorageMain
local DexStorageEnabled

if saveinstance then DexStorageEnabled = true end

if DexStorageEnabled then
	DexStorage = Instance.new("Folder")
	DexStorage.Name = "Dex"
	DexStorageMain = Instance.new("Folder", DexStorage)
	DexStorageMain.Name = "DexStorage"
end

local RunningScriptsStorage
local RunningScriptsStorageMain
local RunningScriptsStorageEnabled

if getscripts then RunningScriptsStorageEnabled = true end

if RunningScriptsStorageEnabled then
	RunningScriptsStorage = Instance.new("Folder")
	RunningScriptsStorage.Name = "Dex Internal Storage"
	RunningScriptsStorageMain = Instance.new("Folder", RunningScriptsStorage)
	RunningScriptsStorageMain.Name = "Running Scripts"
end

local UpvalueStorage
local UpvalueStorageVariables
local UpvalueStorageFunctions
local UpvalueStorageEnabled

if vars and funcs then UpvalueStorageEnabled = true end

if UpvalueStorageEnabled then
	UpvalueStorage = Instance.new('Folder')
	UpvalueStorage.Name = 'Upvalue Storage'
	UpvalueStorageVariables = Instance.new("Folder", UpvalueStorage)
	UpvalueStorageVariables.Name = "Upvalue Variables"
	UpvalueStorageFunctions = Instance.new("Folder", UpvalueStorage)
	UpvalueStorageFunctions.Name = "Upvalue Functions"
	for i, v in pairs(vars) do
		pcall(function()
			local n = Instance.new('StringValue', UpvalueStorageVariables)
			n.Name = tostring(i);
			n.Value = tostring(v);
		end)
	end
	for i, v in pairs(funcs) do
		pcall(function()
			local n = Instance.new('StringValue', UpvalueStorageFunctions)
			n.Name = tostring(i);
			n.Value = tostring(v);
		end)
	end
end

local listFrame = Create('Frame',{
	Name = "List";
	BackgroundTransparency = 1;
	ClipsDescendants = true;
	Position = UDim2.new(0,0,0,HEADER_SIZE);
	Size = UDim2.new(1,-GUI_SIZE,1,-HEADER_SIZE);
	Parent = explorerPanel;
})

local scrollBar = ScrollBar(false)
scrollBar.PageIncrement = 1
Create(scrollBar.GUI,{
	Position = UDim2.new(1,-GUI_SIZE,0,HEADER_SIZE);
	Size = UDim2.new(0,GUI_SIZE,1,-HEADER_SIZE);
	Parent = explorerPanel;
})

local scrollBarH = ScrollBar(true)
scrollBarH.PageIncrement = GUI_SIZE
Create(scrollBarH.GUI,{
	Position = UDim2.new(0,0,1,-GUI_SIZE);
	Size = UDim2.new(1,-GUI_SIZE,0,GUI_SIZE);
	Visible = false;
	Parent = explorerPanel;
})

local headerFrame = Create('Frame',{
	Name = "Header";
	BackgroundColor3 = GuiColor.Background;
	BorderColor3 = GuiColor.Border;
	Position = UDim2.new(0,0,0,0);
	Size = UDim2.new(1,0,0,HEADER_SIZE);
	Parent = explorerPanel;
	Create('TextLabel',{
		Text = "Explorer";
		BackgroundTransparency = 1;
		TextColor3 = GuiColor.Text;
		TextXAlignment = 'Left';
		Font = FONT;
		FontSize = FONT_SIZE;
		Position = UDim2.new(0,4,0,0);
		Size = UDim2.new(1,-4,0.5,0);
	});
})

local explorerFilter = 	Create('TextBox',{
	Text = "Filter Workspace";
	BackgroundTransparency = 0.8;
	TextColor3 = GuiColor.Text;
	TextXAlignment = 'Left';
	Font = FONT;
	FontSize = FONT_SIZE;
	Position = UDim2.new(0,4,0.5,0);
	Size = UDim2.new(1,-8,0.5,-2);
});
explorerFilter.Parent = headerFrame

SetZIndexOnChanged(explorerPanel)

local function CreateColor3(r, g, b) return Color3.new(r/255,g/255,b/255) end

local Styles = {
	Font = Enum.Font.Arial;
	Margin = 5;
	Black = CreateColor3(0,0,0);
	White = CreateColor3(24,24,24);
}

local Row = {
	Font = Styles.Font;
	FontSize = Enum.FontSize.Size14;
	TextXAlignment = Enum.TextXAlignment.Left;
	TextColor = Styles.Black;
	TextColorOver = Styles.White;
	TextLockedColor = CreateColor3(155,155,155);
	Height = 24;
	BorderColor = CreateColor3(216/4,216/4,216/4);
	BackgroundColor = Styles.White;
	BackgroundColorAlternate = CreateColor3(32, 32, 32);
	BackgroundColorMouseover = CreateColor3(40, 40, 40);
	TitleMarginLeft = 15;
}

local DropDown = {
	Font = Styles.Font;
	FontSize = Enum.FontSize.Size14;
	TextColor = CreateColor3(255,255,255);
	TextColorOver = Color3.new(1, 1, 1);
	TextXAlignment = Enum.TextXAlignment.Left;
	Height = 16;
	BackColor = Styles.White;
	BackColorOver = CreateColor3(190, 90, 0);
	BorderColor = CreateColor3(45,45,45);
	BorderSizePixel = 2;
	ArrowColor = CreateColor3(160/2,160/2,160/2);
	ArrowColorOver = Styles.Black;
}

local currentRightClickMenu
local CurrentInsertObjectWindow
local CurrentFunctionCallerWindow

local RbxApi

function ClassCanCreate(IName)
	local success,err = pcall(function() Instance.new(IName) end)
	if err then
		return false
	else
		return true
	end
end

function GetClasses()
	if RbxApi == nil then return {} end
	local classTable = {}
	for i,v in pairs(RbxApi.Classes) do
		if ClassCanCreate(v.Name) then
			table.insert(classTable,v.Name)
		end
	end
	return classTable
end

local function sortAlphabetic(t, property)
	table.sort(t, 
		function(x,y) return x[property] < y[property]
	end)
end

local function FunctionIsHidden(functionData)
	local tags = functionData["tags"]
	for _,name in pairs(tags) do
		if name == "deprecated"
			or name == "hidden"
			or name == "writeonly" then
			return true
		end
	end
	return false
end

local function GetAllFunctions(className)
	local class = RbxApi.Classes[className]
	local functions = {}
	
	if not class then return functions end
	
	while class do
		if class.Name == "Instance" then break end
		for _,nextFunction in pairs(class.Functions) do
			if not FunctionIsHidden(nextFunction) then
				table.insert(functions, nextFunction)
			end
		end
		class = RbxApi.Classes[class.Superclass]
	end
	
	sortAlphabetic(functions, "Name")

	return functions
end

function GetFunctions()
	if RbxApi == nil then return {} end
	local List = SelectionVar():Get()
	
	if #List == 0 then return end
	
	local MyObject = List[1]
	
	local functionTable = {}
	for i,v in pairs(GetAllFunctions(MyObject.ClassName)) do
		table.insert(functionTable,v)
	end
	return functionTable
end

function CreateInsertObjectMenu(choices, currentChoice, readOnly, onClick)
	local mouse = game:GetService'Players'.LocalPlayer:GetMouse()
	local totalSize = explorerPanel.Parent.AbsoluteSize.y
	if #choices == 0 then return end
	
	table.sort(choices, function(a,b) return a < b end)

	local frame = Instance.new("Frame")	
	frame.Name = "InsertObject"
	frame.Size = UDim2.new(0, 200, 1, 0)
	frame.BackgroundTransparency = 1
	frame.Active = true
	
	local menu = nil
	local arrow = nil
	local expanded = false
	local margin = DropDown.BorderSizePixel;
	
	--[[
	local button = Instance.new("TextButton")
	button.Font = Row.Font
	button.FontSize = Row.FontSize
	button.TextXAlignment = Row.TextXAlignment
	button.BackgroundTransparency = 1
	button.TextColor3 = Row.TextColor
	if readOnly then
		button.TextColor3 = Row.TextLockedColor
	end
	button.Text = currentChoice
	button.Size = UDim2.new(1, -2 * Styles.Margin, 1, 0)
	button.Position = UDim2.new(0, Styles.Margin, 0, 0)
	button.Parent = frame
	--]]
	
	local function hideMenu()
		expanded = false
		--showArrow(DropDown.ArrowColor)
		if frame then 
			--frame:Destroy()
			CurrentInsertObjectWindow.Visible = false
		end
	end
	
	local function showMenu()
		expanded = true
		menu = Instance.new("ScrollingFrame")
		menu.Size = UDim2.new(0,200,1,0)
		menu.CanvasSize = UDim2.new(0, 200, 0, #choices * DropDown.Height)
		menu.Position = UDim2.new(0, margin, 0, 0)
		menu.BackgroundTransparency = 0
		menu.BackgroundColor3 = DropDown.BackColor
		menu.BorderColor3 = DropDown.BorderColor
		menu.BorderSizePixel = DropDown.BorderSizePixel
		menu.TopImage = "rbxasset://textures/blackBkg_square.png"
		menu.MidImage = "rbxasset://textures/blackBkg_square.png"
		menu.BottomImage = "rbxasset://textures/blackBkg_square.png"
		menu.Active = true
		menu.ZIndex = 5
		menu.Parent = frame
		
		--local parentFrameHeight = script.Parent.List.Size.Y.Offset
		--local rowHeight = mouse.Y
		--if (rowHeight + menu.Size.Y.Offset) > parentFrameHeight then
		--	menu.Position = UDim2.new(0, margin, 0, -1 * (#choices * DropDown.Height) - margin)
		--end
			
		local function choice(name)
			onClick(name)
			hideMenu()
		end
		
		for i,name in pairs(choices) do
			local option = CreateRightClickMenuItem(name, function()
				choice(name)
			end,1)
			option.Size = UDim2.new(1, 0, 0, 20)
			option.Position = UDim2.new(0, 0, 0, (i - 1) * DropDown.Height)
			option.ZIndex = menu.ZIndex
			option.Parent = menu
		end
	end


	showMenu()

	
	return frame
end

function CreateFunctionCallerMenu(choices, currentChoice, readOnly, onClick)
	local mouse = game:GetService'Players'.LocalPlayer:GetMouse()
	local totalSize = explorerPanel.Parent.AbsoluteSize.y
	if #choices == 0 then return end
	
	table.sort(choices, function(a,b) return a.Name < b.Name end)

	local frame = Instance.new("Frame")	
	frame.Name = "InsertObject"
	frame.Size = UDim2.new(0, 200, 1, 0)
	frame.BackgroundTransparency = 1
	frame.Active = true
	
	local menu = nil
	local arrow = nil
	local expanded = false
	local margin = DropDown.BorderSizePixel;
	
	local function hideMenu()
		expanded = false
		--showArrow(DropDown.ArrowColor)
		if frame then 
			--frame:Destroy()
			CurrentInsertObjectWindow.Visible = false
		end
	end
	
	local function showMenu()
		expanded = true
		menu = Instance.new("ScrollingFrame")
		menu.Size = UDim2.new(0,300,1,0)
		menu.CanvasSize = UDim2.new(0, 300, 0, #choices * DropDown.Height)
		menu.Position = UDim2.new(0, margin, 0, 0)
		menu.BackgroundTransparency = 0
		menu.BackgroundColor3 = DropDown.BackColor
		menu.BorderColor3 = DropDown.BorderColor
		menu.BorderSizePixel = DropDown.BorderSizePixel
		menu.TopImage = "rbxasset://textures/blackBkg_square.png"
		menu.MidImage = "rbxasset://textures/blackBkg_square.png"
		menu.BottomImage = "rbxasset://textures/blackBkg_square.png"
		menu.Active = true
		menu.ZIndex = 5
		menu.Parent = frame
		
		--local parentFrameHeight = script.Parent.List.Size.Y.Offset
		--local rowHeight = mouse.Y
		--if (rowHeight + menu.Size.Y.Offset) > parentFrameHeight then
		--	menu.Position = UDim2.new(0, margin, 0, -1 * (#choices * DropDown.Height) - margin)
		--end
		
		local function GetParameters(functionData)
			local paraString = ""
			paraString = paraString.."("
			for i,v in pairs(functionData.Arguments) do
				paraString = paraString..v.Type.." "..v.Name
				if i < #functionData.Arguments then
					paraString = paraString..", "
				end
			end
			paraString = paraString..")"
			return paraString
		end
			
		local function choice(name)
			onClick(name)
			hideMenu()
		end
		
		for i,name in pairs(choices) do
			local option = CreateRightClickMenuItem(name.ReturnType.." "..name.Name..GetParameters(name), function()
				choice(name)
			end,2)
			option.Size = UDim2.new(1, 0, 0, 20)
			option.Position = UDim2.new(0, 0, 0, (i - 1) * DropDown.Height)
			option.ZIndex = menu.ZIndex
			option.Parent = menu
		end
	end


	showMenu()

	
	return frame
end

function CreateInsertObject()
	if not CurrentInsertObjectWindow then return end
	CurrentInsertObjectWindow.Visible = true
	if currentRightClickMenu and CurrentInsertObjectWindow.Visible then
		CurrentInsertObjectWindow.Position = UDim2.new(0,currentRightClickMenu.Position.X.Offset-currentRightClickMenu.Size.X.Offset-2,0,0)
	end
	if CurrentInsertObjectWindow.Visible then
		CurrentInsertObjectWindow.Parent = explorerPanel.Parent
	end
end

function CreateFunctionCaller()
	if CurrentFunctionCallerWindow then
		CurrentFunctionCallerWindow:Destroy()
		CurrentFunctionCallerWindow = nil
	end
	CurrentFunctionCallerWindow = CreateFunctionCallerMenu(
		GetFunctions(),
		"",
		false,
		function(option)
			CurrentFunctionCallerWindow:Destroy()
			CurrentFunctionCallerWindow = nil
			local list = SelectionVar():Get()
			for i = 1,#list do
				pcall(function() Instance.new(option,list[i]) end)
			end
			-- print(option.Name .. " selected to be called. Function caller being added soon, please wait!")
			--CallFunction()
			DestroyRightClick()
		end
	)
	if currentRightClickMenu and CurrentFunctionCallerWindow then
		CurrentFunctionCallerWindow.Position = UDim2.new(0,currentRightClickMenu.Position.X.Offset-currentRightClickMenu.Size.X.Offset*1.5-2,0,0)
	end
	if CurrentFunctionCallerWindow then
		CurrentFunctionCallerWindow.Parent = explorerPanel.Parent
	end
end

local UserInputService = game:GetService'UserInputService';

function GetMouseLocation()
	return UserInputService:GetMouseLocation() - Vector2.new(0, 36);
end

function MouseHoveringOver(GuiObject)
	local MLocation = GetMouseLocation();

	return (MLocation.x >= GuiObject.AbsolutePosition.X and MLocation.x <= (GuiObject.AbsolutePosition.X + GuiObject.AbsoluteSize.X)) and (MLocation.y >= GuiObject.AbsolutePosition.Y and MLocation.y <= (GuiObject.AbsolutePosition.Y + GuiObject.AbsoluteSize.Y));
end

function CreateRightClickMenuItem(text, onClick, insObj)
	local button = Instance.new("TextButton")
	button.Font = DropDown.Font
	button.FontSize = DropDown.FontSize
	button.TextColor3 = DropDown.TextColor
	button.TextXAlignment = DropDown.TextXAlignment
	button.BackgroundColor3 = DropDown.BackColor
	button.AutoButtonColor = false
	button.BorderSizePixel = 0
	button.Active = true
	button.Text = text
	
	if insObj == 1 then
		local newIcon = Icon(nil,ExplorerIndex[text] or 0)
		newIcon.Position = UDim2.new(0,0,0,2)
		newIcon.Size = UDim2.new(0,16,0,16)
		newIcon.IconMap.ZIndex = 5
		newIcon.Parent = button
		button.Text = "\t\t"..button.Text
	elseif insObj == 2 then
		button.FontSize = Enum.FontSize.Size11
	end

	spawn(function()
		while button.Parent ~= nil and button.Parent.Parent ~= nil do
			game:service'RunService'.Stepped:wait();
			if not MouseHoveringOver(button) then
				button.TextColor3 = DropDown.TextColor
				button.BackgroundColor3 = DropDown.BackColor
			end
		end
	end)
	
	button.MouseEnter:connect(function()
		button.TextColor3 = DropDown.TextColorOver
		button.BackgroundColor3 = DropDown.BackColorOver
		if not insObj and CurrentInsertObjectWindow then
			if CurrentInsertObjectWindow.Visible == false and button.Text == "Insert Object" then
				CreateInsertObject()
			elseif CurrentInsertObjectWindow.Visible and button.Text ~= "Insert Object" then
				CurrentInsertObjectWindow.Visible = false
			end
		end
		if not insObj then
			if CurrentFunctionCallerWindow and button.Text ~= "Call Function" then
				CurrentFunctionCallerWindow:Destroy()
				CurrentFunctionCallerWindow = nil
			elseif button.Text == "Call Function" then
				CreateFunctionCaller()
			end
		end
	end)
	button.MouseLeave:connect(function()
		button.TextColor3 = DropDown.TextColor
		button.BackgroundColor3 = DropDown.BackColor
	end)
	button.MouseButton1Click:connect(function()
		button.TextColor3 = DropDown.TextColor
		button.BackgroundColor3 = DropDown.BackColor
		onClick(text)
	end)	
	return button
end

function CreateRightClickMenu(choices, currentChoice, readOnly, onClick)
	local mouse = game:GetService'Players'.LocalPlayer:GetMouse()

	local frame = Instance.new("Frame")	
	frame.Name = "DropDown"
	frame.Size = UDim2.new(0, 200, 1, 0)
	frame.BackgroundTransparency = 1
	frame.Active = true
	
	local menu = nil
	local arrow = nil
	local expanded = false
	local margin = DropDown.BorderSizePixel;
	
	--[[
	local button = Instance.new("TextButton")
	button.Font = Row.Font
	button.FontSize = Row.FontSize
	button.TextXAlignment = Row.TextXAlignment
	button.BackgroundTransparency = 1
	button.TextColor3 = Row.TextColor
	if readOnly then
		button.TextColor3 = Row.TextLockedColor
	end
	button.Text = currentChoice
	button.Size = UDim2.new(1, -2 * Styles.Margin, 1, 0)
	button.Position = UDim2.new(0, Styles.Margin, 0, 0)
	button.Parent = frame
	--]]
	
	local function hideMenu()
		expanded = false
		--showArrow(DropDown.ArrowColor)
		if frame then 
			frame:Destroy()
			DestroyRightClick()
		end
	end
	
	local function showMenu()
		expanded = true
		menu = Instance.new("Frame")
		menu.Size = UDim2.new(0, 200, 0, #choices * DropDown.Height)
		menu.Position = UDim2.new(0, margin, 0, 5)
		menu.BackgroundTransparency = 0
		menu.BackgroundColor3 = DropDown.BackColor
		menu.BorderColor3 = DropDown.BorderColor
		menu.BorderSizePixel = DropDown.BorderSizePixel
		menu.Active = true
		menu.ZIndex = 5
		menu.Parent = frame
		
		--local parentFrameHeight = script.Parent.List.Size.Y.Offset
		--local rowHeight = mouse.Y
		--if (rowHeight + menu.Size.Y.Offset) > parentFrameHeight then
		--	menu.Position = UDim2.new(0, margin, 0, -1 * (#choices * DropDown.Height) - margin)
		--end
			
		local function choice(name)
			onClick(name)
			hideMenu()
		end
		
		for i,name in pairs(choices) do
			local option = CreateRightClickMenuItem(name, function()
				choice(name)
			end)
			option.Size = UDim2.new(1, 0, 0, 20)
			option.Position = UDim2.new(0, 0, 0, (i - 1) * DropDown.Height)
			option.ZIndex = menu.ZIndex
			option.Parent = menu
		end
	end


	showMenu()

	
	return frame
end

function checkMouseInGui(gui)
	if gui == nil then return false end
	local plrMouse = game:GetService'Players'.LocalPlayer:GetMouse()
	local guiPosition = gui.AbsolutePosition
	local guiSize = gui.AbsoluteSize	
	
	if plrMouse.X >= guiPosition.x and plrMouse.X <= guiPosition.x + guiSize.x and plrMouse.Y >= guiPosition.y and plrMouse.Y <= guiPosition.y + guiSize.y then
		return true
	else
		return false
	end
end

local clipboard = {}
local function delete(o)
	o.Parent = nil
end

local getTextWidth do
	local text = Create('TextLabel',{
		Name = "TextWidth";
		TextXAlignment = 'Left';
		TextYAlignment = 'Center';
		Font = FONT;
		FontSize = FONT_SIZE;
		Text = "";
		Position = UDim2.new(0,0,0,0);
		Size = UDim2.new(1,0,1,0);
		Visible = false;
		Parent = explorerPanel;
	})
	function getTextWidth(s)
		text.Text = s
		return text.TextBounds.x
	end
end

local nameScanned = false
-- Holds the game tree converted to a list.
local TreeList = {}
-- Matches objects to their tree node representation.
local NodeLookup = {}

local nodeWidth = 0

local QuickButtons = {}

function filteringWorkspace()
	if explorerFilter.Text ~= "" and explorerFilter.Text ~= "Filter Workspace" then
		return true
	end
	return false
end

function lookForAName(obj,name)
	for i,v in pairs(obj:GetDescendants()) do
		if string.find(string.lower(v.Name),string.lower(name)) then nameScanned = true end
		-- lookForAName(v,name)
	end
end

function scanName(obj)
	nameScanned = false
	if string.find(string.lower(obj.Name),string.lower(explorerFilter.Text)) then
		nameScanned = true
	else
		lookForAName(obj,explorerFilter.Text)
	end
	return nameScanned
end

function updateActions()
	for i,v in pairs(QuickButtons) do
		if v.Cond() then
			v.Toggle(true)
		else
			v.Toggle(false)
		end
	end
end

local updateList,rawUpdateList,updateScroll,rawUpdateSize do
	local function r(t)
		for i = 1,#t do
			if not filteringWorkspace() or scanName(t[i].Object) then
				TreeList[#TreeList+1] = t[i]

				local w = (t[i].Depth)*(2+ENTRY_PADDING+GUI_SIZE) + 2 + ENTRY_SIZE + 4 + getTextWidth(t[i].Object.Name) + 4
				if w > nodeWidth then
					nodeWidth = w
				end
				if t[i].Expanded or filteringWorkspace() then
					r(t[i])
				end
			end
		end
	end

	function rawUpdateSize()
		scrollBarH.TotalSpace = nodeWidth
		scrollBarH.VisibleSpace = listFrame.AbsoluteSize.x
		scrollBarH:Update()
		local visible = scrollBarH:CanScrollDown() or scrollBarH:CanScrollUp()
		scrollBarH.GUI.Visible = visible

		listFrame.Size = UDim2.new(1,-GUI_SIZE,1,-GUI_SIZE*(visible and 1 or 0) - HEADER_SIZE)

		scrollBar.VisibleSpace = math.ceil(listFrame.AbsoluteSize.y/ENTRY_BOUND)
		scrollBar.GUI.Size = UDim2.new(0,GUI_SIZE,1,-GUI_SIZE*(visible and 1 or 0) - HEADER_SIZE)
		
		scrollBar.TotalSpace = #TreeList+1
		scrollBar:Update()
	end

	function rawUpdateList()
		-- Clear then repopulate the entire list. It appears to be fast enough.
		TreeList = {}
		nodeWidth = 0
		r(NodeLookup[workspace.Parent])
		if DexStorageEnabled then
			r(NodeLookup[DexStorage])
		end
		if RunningScriptsStorageEnabled then
			r(NodeLookup[RunningScriptsStorage])
		end
		if UpvalueStorageEnabled then
			r(NodeLookup[UpvalueStorage])
		end
		rawUpdateSize()
		updateActions()
	end

	-- Adding or removing large models will cause many updates to occur. We
	-- can reduce the number of updates by creating a delay, then dropping any
	-- updates that occur during the delay.
	local updatingList = false
	function updateList()
		if updatingList then return end
		updatingList = true
		wait(2.25)
		updatingList = false
		rawUpdateList()
	end

	local updatingScroll = false
	function updateScroll()
		if updatingScroll then return end
		updatingScroll = true
		wait(2.25)
		updatingScroll = false
		scrollBar:Update()
	end
end

local Selection do
	local bindGetSelection = explorerPanel:FindFirstChild("GetSelection")
	if not bindGetSelection then
		bindGetSelection = Create('BindableFunction',{Name = "GetSelection"})
		bindGetSelection.Parent = explorerPanel
	end

	local bindSetSelection = explorerPanel:FindFirstChild("SetSelection")
	if not bindSetSelection then
		bindSetSelection = Create('BindableFunction',{Name = "SetSelection"})
		bindSetSelection.Parent = explorerPanel
	end

	local bindSelectionChanged = explorerPanel:FindFirstChild("SelectionChanged")
	if not bindSelectionChanged then
		bindSelectionChanged = Create('BindableEvent',{Name = "SelectionChanged"})
		bindSelectionChanged.Parent = explorerPanel
	end

	local SelectionList = {}
	local SelectionSet = {}
	local Updates = true
	Selection = {
		Selected = SelectionSet;
		List = SelectionList;
	}

	local function addObject(object)
		-- list update
		local lupdate = false
		-- scroll update
		local supdate = false

		if not SelectionSet[object] then
			local node = NodeLookup[object]
			if node then
				table.insert(SelectionList,object)
				SelectionSet[object] = true
				node.Selected = true

				-- expand all ancestors so that selected node becomes visible
				node = node.Parent
				while node do
					if not node.Expanded then
						node.Expanded = true
						lupdate = true
					end
					node = node.Parent
				end
				supdate = true
			end
		end
		return lupdate,supdate
	end

	function Selection:Set(objects)
		local lupdate = false
		local supdate = false

		if #SelectionList > 0 then
			for i = 1,#SelectionList do
				local object = SelectionList[i]
				local node = NodeLookup[object]
				if node then
					node.Selected = false
					SelectionSet[object] = nil
				end
			end

			SelectionList = {}
			Selection.List = SelectionList
			supdate = true
		end

		for i = 1,#objects do
			local l,s = addObject(objects[i])
			lupdate = l or lupdate
			supdate = s or supdate
		end

		if lupdate then
			rawUpdateList()
			supdate = true
		elseif supdate then
			scrollBar:Update()
		end

		if supdate then
			bindSelectionChanged:Fire()
			updateActions()
		end
	end

	function Selection:Add(object)
		local l,s = addObject(object)
		if l then
			rawUpdateList()
			if Updates then
				bindSelectionChanged:Fire()
				updateActions()
			end
		elseif s then
			scrollBar:Update()
			if Updates then
				bindSelectionChanged:Fire()
				updateActions()
			end
		end
	end
	
	function Selection:StopUpdates()
		Updates = false
	end
	
	function Selection:ResumeUpdates()
		Updates = true
		bindSelectionChanged:Fire()
		updateActions()
	end

	function Selection:Remove(object,noupdate)
		if SelectionSet[object] then
			local node = NodeLookup[object]
			if node then
				node.Selected = false
				SelectionSet[object] = nil
				for i = 1,#SelectionList do
					if SelectionList[i] == object then
						table.remove(SelectionList,i)
						break
					end
				end

				if not noupdate then
					scrollBar:Update()
				end
				bindSelectionChanged:Fire()
				updateActions()
			end
		end
	end

	function Selection:Get()
		local list = {}
		for i = 1,#SelectionList do
			list[i] = SelectionList[i]
		end
		return list
	end

	bindSetSelection.OnInvoke = function(...)
		Selection:Set(...)
	end

	bindGetSelection.OnInvoke = function()
		return Selection:Get()
	end
end

function CreateCaution(title,msg)
	local newCaution = CautionWindow:Clone()
	newCaution.Title.Text = title
	newCaution.MainWindow.Desc.Text = msg
	newCaution.Parent = explorerPanel.Parent
	newCaution.Visible = true
	newCaution.MainWindow.Ok.MouseButton1Up:connect(function()
		newCaution:Destroy()
	end)
end

function CreateTableCaution(title,msg)
	if type(msg) ~= "table" then return CreateCaution(title,tostring(msg)) end
	local newCaution = TableCautionWindow:Clone()
	newCaution.Title.Text = title
	
	local TableList = newCaution.MainWindow.TableResults
	local TableTemplate = newCaution.MainWindow.TableTemplate
	
	for i,v in pairs(msg) do
		local newResult = TableTemplate:Clone()
		newResult.Type.Text = type(v)
		newResult.Value.Text = tostring(v)
		newResult.Position = UDim2.new(0,0,0,#TableList:GetChildren() * 20)
		newResult.Parent = TableList
		TableList.CanvasSize = UDim2.new(0,0,0,#TableList:GetChildren() * 20)
		newResult.Visible = true
	end
	newCaution.Parent = explorerPanel.Parent
	newCaution.Visible = true
	newCaution.MainWindow.Ok.MouseButton1Up:connect(function()
		newCaution:Destroy()
	end)
end

local function Split(str, delimiter)
	local start = 1
	local t = {}
	while true do
		local pos = string.find (str, delimiter, start, true)
		if not pos then
			break
		end
		table.insert (t, string.sub (str, start, pos - 1))
		start = pos + string.len (delimiter)
	end
	table.insert (t, string.sub (str, start))
	return t
end

local function ToValue(value,type)
	if type == "Vector2" then
		local list = Split(value,",")
		if #list < 2 then return nil end
		local x = tonumber(list[1]) or 0
		local y = tonumber(list[2]) or 0
		return Vector2.new(x,y)
	elseif type == "Vector3" then
		local list = Split(value,",")
		if #list < 3 then return nil end
		local x = tonumber(list[1]) or 0
		local y = tonumber(list[2]) or 0
		local z = tonumber(list[3]) or 0
		return Vector3.new(x,y,z)
	elseif type == "Color3" then
		local list = Split(value,",")
		if #list < 3 then return nil end
		local r = tonumber(list[1]) or 0
		local g = tonumber(list[2]) or 0
		local b = tonumber(list[3]) or 0
		return Color3.new(r/255,g/255, b/255)
	elseif type == "UDim2" then
		local list = Split(string.gsub(string.gsub(value, "{", ""),"}",""),",")
		if #list < 4 then return nil end
		local xScale = tonumber(list[1]) or 0
		local xOffset = tonumber(list[2]) or 0
		local yScale = tonumber(list[3]) or 0
		local yOffset = tonumber(list[4]) or 0
		return UDim2.new(xScale, xOffset, yScale, yOffset)
	elseif type == "Number" then
		return tonumber(value)
	elseif type == "String" then
		return value
	elseif type == "NumberRange" then
		local list = Split(value,",")
		if #list == 1 then
			if tonumber(list[1]) == nil then return nil end
			local newVal = tonumber(list[1]) or 0
			return NumberRange.new(newVal)
		end
		if #list < 2 then return nil end
		local x = tonumber(list[1]) or 0
		local y = tonumber(list[2]) or 0
		return NumberRange.new(x,y)
	elseif type == "Script" then
		local success,err = ypcall(function()
		_G.D_E_X_DONOTUSETHISPLEASE = nil
		loadstring(
			"_G.D_E_X_DONOTUSETHISPLEASE = "..value
		)()
		return _G.D_E_X_DONOTUSETHISPLEASE
		end)
		if err then
			return nil
		end
	else
		return nil
	end
end

local function ToPropValue(value,type)
	if type == "Vector2" then
		local list = Split(value,",")
		if #list < 2 then return nil end
		local x = tonumber(list[1]) or 0
		local y = tonumber(list[2]) or 0
		return Vector2.new(x,y)
	elseif type == "Vector3" then
		local list = Split(value,",")
		if #list < 3 then return nil end
		local x = tonumber(list[1]) or 0
		local y = tonumber(list[2]) or 0
		local z = tonumber(list[3]) or 0
		return Vector3.new(x,y,z)
	elseif type == "Color3" then
		local list = Split(value,",")
		if #list < 3 then return nil end
		local r = tonumber(list[1]) or 0
		local g = tonumber(list[2]) or 0
		local b = tonumber(list[3]) or 0
		return Color3.new(r/255,g/255, b/255)
	elseif type == "UDim2" then
		local list = Split(string.gsub(string.gsub(value, "{", ""),"}",""),",")
		if #list < 4 then return nil end
		local xScale = tonumber(list[1]) or 0
		local xOffset = tonumber(list[2]) or 0
		local yScale = tonumber(list[3]) or 0
		local yOffset = tonumber(list[4]) or 0
		return UDim2.new(xScale, xOffset, yScale, yOffset)
	elseif type == "Content" then
		return value
	elseif type == "float" or type == "int" or type == "double" then
		return tonumber(value)
	elseif type == "string" then
		return value
	elseif type == "NumberRange" then
		local list = Split(value,",")
		if #list == 1 then
			if tonumber(list[1]) == nil then return nil end
			local newVal = tonumber(list[1]) or 0
			return NumberRange.new(newVal)
		end
		if #list < 2 then return nil end
		local x = tonumber(list[1]) or 0
		local y = tonumber(list[2]) or 0
		return NumberRange.new(x,y)
	elseif string.sub(value,1,4) == "Enum" then
		local getEnum = value
		while true do
			local x,y = string.find(getEnum,".")
			if y then
				getEnum = string.sub(getEnum,y+1)
			else
				break
			end
		end
		-- print(getEnum)
		return getEnum
	else
		return nil
	end
end

function PromptRemoteCaller(inst)
	if CurrentRemoteWindow then
		CurrentRemoteWindow:Destroy()
		CurrentRemoteWindow = nil
	end
	CurrentRemoteWindow = RemoteWindow:Clone()
	CurrentRemoteWindow.Parent = explorerPanel.Parent
	CurrentRemoteWindow.Visible = true
	
	local displayValues = false
	
	local ArgumentList = CurrentRemoteWindow.MainWindow.Arguments
	local ArgumentTemplate = CurrentRemoteWindow.MainWindow.ArgumentTemplate
	
	if inst:IsA("RemoteEvent") then
		CurrentRemoteWindow.Title.Text = "Fire Event"
		CurrentRemoteWindow.MainWindow.Ok.Text = "Fire"
		CurrentRemoteWindow.MainWindow.DisplayReturned.Visible = false
		CurrentRemoteWindow.MainWindow.Desc2.Visible = false
	end
	
	local newArgument = ArgumentTemplate:Clone()
	newArgument.Parent = ArgumentList
	newArgument.Visible = true
	newArgument.Type.MouseButton1Down:connect(function()
		createDDown(newArgument.Type,function(choice)
			newArgument.Type.Text = choice
		end,"Script","Number","String","Color3","Vector3","Vector2","UDim2","NumberRange")
	end)
	
	CurrentRemoteWindow.MainWindow.Ok.MouseButton1Up:connect(function()
		if CurrentRemoteWindow and inst.Parent ~= nil then
			local MyArguments = {}
			for i,v in pairs(ArgumentList:GetChildren()) do
				table.insert(MyArguments,ToValue(v.Value.Text,v.Type.Text))
			end
			if inst:IsA("RemoteFunction") then
				if displayValues then
					spawn(function()
						local myResults = inst:InvokeServer(unpack(MyArguments))
						if myResults then
							CreateTableCaution("Remote Caller",myResults)
						else
							CreateCaution("Remote Caller","This remote did not return anything.")
						end
					end)
				else
					spawn(function()
						inst:InvokeServer(unpack(MyArguments))
					end)
				end
			else
				inst:FireServer(unpack(MyArguments))
			end
			CurrentRemoteWindow:Destroy()
			CurrentRemoteWindow = nil
		end
	end)
	
	CurrentRemoteWindow.MainWindow.Add.MouseButton1Up:connect(function()
		if CurrentRemoteWindow then
			local newArgument = ArgumentTemplate:Clone()
			newArgument.Position = UDim2.new(0,0,0,#ArgumentList:GetChildren() * 20)
			newArgument.Parent = ArgumentList
			ArgumentList.CanvasSize = UDim2.new(0,0,0,#ArgumentList:GetChildren() * 20)
			newArgument.Visible = true
			newArgument.Type.MouseButton1Down:connect(function()
				createDDown(newArgument.Type,function(choice)
					newArgument.Type.Text = choice
				end,"Script","Number","String","Color3","Vector3","Vector2","UDim2","NumberRange")
			end)
		end
	end)
	
	CurrentRemoteWindow.MainWindow.Subtract.MouseButton1Up:connect(function()
		if CurrentRemoteWindow then
			if #ArgumentList:GetChildren() > 1 then
				ArgumentList:GetChildren()[#ArgumentList:GetChildren()]:Destroy()
				ArgumentList.CanvasSize = UDim2.new(0,0,0,#ArgumentList:GetChildren() * 20)
			end
		end
	end)
	
	CurrentRemoteWindow.MainWindow.Cancel.MouseButton1Up:connect(function()
		if CurrentRemoteWindow then
			CurrentRemoteWindow:Destroy()
			CurrentRemoteWindow = nil
		end
	end)
	
	CurrentRemoteWindow.MainWindow.DisplayReturned.MouseButton1Up:connect(function()
		if displayValues then
			displayValues = false
			CurrentRemoteWindow.MainWindow.DisplayReturned.enabled.Visible = false
		else
			displayValues = true
			CurrentRemoteWindow.MainWindow.DisplayReturned.enabled.Visible = true
		end
	end)
end

function PromptSaveInstance(inst)
	if not SaveInstance and not _G.SaveInstance then CreateCaution("SaveInstance Missing","You do not have the SaveInstance function installed. Please go to RaspberryPi's thread to retrieve it.") return end
	if CurrentSaveInstanceWindow then
		CurrentSaveInstanceWindow:Destroy()
		CurrentSaveInstanceWindow = nil
		if explorerPanel.Parent:FindFirstChild("SaveInstanceOverwriteCaution") then
			explorerPanel.Parent.SaveInstanceOverwriteCaution:Destroy()
		end
	end
	CurrentSaveInstanceWindow = SaveInstanceWindow:Clone()
	CurrentSaveInstanceWindow.Parent = explorerPanel.Parent
	CurrentSaveInstanceWindow.Visible = true
	
	local filename = CurrentSaveInstanceWindow.MainWindow.FileName
	local saveObjects = true
	local overwriteCaution = false
	
	CurrentSaveInstanceWindow.MainWindow.Save.MouseButton1Up:connect(function()
		if readfile and getelysianpath then
			if readfile(getelysianpath()..filename.Text..".rbxmx") then
				if not overwriteCaution then
					overwriteCaution = true
					local newCaution = ConfirmationWindow:Clone()
					newCaution.Name = "SaveInstanceOverwriteCaution"
					newCaution.MainWindow.Desc.Text = "The file, "..filename.Text..".rbxmx, already exists. Overwrite?"
					newCaution.Parent = explorerPanel.Parent
					newCaution.Visible = true
					newCaution.MainWindow.Yes.MouseButton1Up:connect(function()
						ypcall(function()
							SaveInstance(inst,filename.Text..".rbxmx",not saveObjects)
						end)
						overwriteCaution = false
						newCaution:Destroy()
						if CurrentSaveInstanceWindow then
							CurrentSaveInstanceWindow:Destroy()
							CurrentSaveInstanceWindow = nil
						end
					end)
					newCaution.MainWindow.No.MouseButton1Up:connect(function()
						overwriteCaution = false
						newCaution:Destroy()
					end)
				end
			else
				ypcall(function()
					SaveInstance(inst,filename.Text..".rbxmx",not saveObjects)
				end)
				if CurrentSaveInstanceWindow then
					CurrentSaveInstanceWindow:Destroy()
					CurrentSaveInstanceWindow = nil
					if explorerPanel.Parent:FindFirstChild("SaveInstanceOverwriteCaution") then
						explorerPanel.Parent.SaveInstanceOverwriteCaution:Destroy()
					end
				end
			end
		else
			ypcall(function()
				if SaveInstance then
					SaveInstance(inst,filename.Text..".rbxmx",not saveObjects)
				else
					_G.SaveInstance(inst,filename.Text,not saveObjects)
				end
			end)
			if CurrentSaveInstanceWindow then
				CurrentSaveInstanceWindow:Destroy()
				CurrentSaveInstanceWindow = nil
				if explorerPanel.Parent:FindFirstChild("SaveInstanceOverwriteCaution") then
					explorerPanel.Parent.SaveInstanceOverwriteCaution:Destroy()
				end
			end
		end
	end)
	CurrentSaveInstanceWindow.MainWindow.Cancel.MouseButton1Up:connect(function()
		if CurrentSaveInstanceWindow then
			CurrentSaveInstanceWindow:Destroy()
			CurrentSaveInstanceWindow = nil
			if explorerPanel.Parent:FindFirstChild("SaveInstanceOverwriteCaution") then
				explorerPanel.Parent.SaveInstanceOverwriteCaution:Destroy()
			end
		end
	end)
	CurrentSaveInstanceWindow.MainWindow.SaveObjects.MouseButton1Up:connect(function()
		if saveObjects then
			saveObjects = false
			CurrentSaveInstanceWindow.MainWindow.SaveObjects.enabled.Visible = false
		else
			saveObjects = true
			CurrentSaveInstanceWindow.MainWindow.SaveObjects.enabled.Visible = true
		end
	end)
end

function DestroyRightClick()
	if currentRightClickMenu then
		currentRightClickMenu:Destroy()
		currentRightClickMenu = nil
	end
	if CurrentInsertObjectWindow and CurrentInsertObjectWindow.Visible then
		CurrentInsertObjectWindow.Visible = false
	end
end

function rightClickMenu(sObj)
	local mouse = game:GetService'Players'.LocalPlayer:GetMouse()
	
	local extra = (sObj == RunningScriptsStorageMain and 'Refresh Instances' or nil)

	currentRightClickMenu = CreateRightClickMenu(
		{
			'Cut',
			'Copy',
			'Paste Into',
			'Duplicate',
			'Delete',
			-- 'Group',
			-- 'Ungroup',
			'Select Children',
			'Teleport To',
			-- 'Track',
			-- 'Insert Part',
			-- 'Insert Object',
			'View Script',
			'Save Script',
			'Dump Function',
			'Save Instance',
			'Call Function',
			'Call Remote',
			'Try Get Values',
			extra
		},
		"",
		false,
		function(option)
			if option == "Cut" then
				if not Option.Modifiable then return end
				clipboard = {}
				local list = Selection.List
				local cut = {}
				for i = 1,#list do
					local obj = list[i]:Clone()
					if obj then
						table.insert(clipboard,obj)
						table.insert(cut,list[i])
					end
				end
				for i = 1,#cut do
					pcall(delete,cut[i])
				end
				updateActions()
			elseif option == "Copy" then
				if not Option.Modifiable then return end
				clipboard = {}
				local list = Selection.List
				for i = 1,#list do
					table.insert(clipboard,list[i]:Clone())
				end
				updateActions()
			elseif option == "Paste Into" then
				if not Option.Modifiable then return end
				local parent = Selection.List[1] or workspace
				for i = 1,#clipboard do
					clipboard[i]:Clone().Parent = parent
				end
			elseif option == "Duplicate" then
				if not Option.Modifiable then return end
				local list = Selection:Get()
				for i = 1,#list do
					list[i]:Clone().Parent = Selection.List[1].Parent or workspace
				end
			elseif option == "Delete" then
				if not Option.Modifiable then return end
				local list = Selection:Get()
				for i = 1,#list do
					pcall(delete,list[i])
				end
				Selection:Set({})
			elseif option == "Group" then
				if not Option.Modifiable then return end
				local newModel = Instance.new("Model")
				local list = Selection:Get()
				newModel.Parent = Selection.List[1].Parent or workspace
				for i = 1,#list do
					list[i].Parent = newModel
				end
				Selection:Set({})
			elseif option == "Ungroup" then
				if not Option.Modifiable then return end
				local ungrouped = {}
				local list = Selection:Get()
				for i = 1,#list do
					if list[i]:IsA("Model") then
						for i2,v2 in pairs(list[i]:GetChildren()) do
							v2.Parent = list[i].Parent or workspace
							table.insert(ungrouped,v2)
						end		
						pcall(delete,list[i])			
					end
				end
				Selection:Set({})
				if SettingsRemote:Invoke("SelectUngrouped") then
					for i,v in pairs(ungrouped) do
						Selection:Add(v)
					end
				end
			elseif option == "Select Children" then
				if not Option.Modifiable then return end
				local list = Selection:Get()
				Selection:Set({})
				Selection:StopUpdates()
				for i = 1,#list do
					for i2,v2 in pairs(list[i]:GetChildren()) do
						Selection:Add(v2)
					end
				end
				Selection:ResumeUpdates()
			elseif option == "Teleport To" then
				if not Option.Modifiable then return end
				local list = Selection:Get()
				for i = 1,#list do
					if list[i]:IsA("BasePart") then
						pcall(function()
							game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = list[i].CFrame
						end)
						break
					end
				end
			elseif option == "Insert Part" then
				if not Option.Modifiable then return end
				local insertedParts = {}
				local list = Selection:Get()
				for i = 1,#list do
					pcall(function()
						local newPart = Instance.new("Part")
						newPart.Parent = list[i]
						newPart.CFrame = CFrame.new(game:GetService'Players'.LocalPlayer.Character.Head.Position) + Vector3.new(0,3,0)
						table.insert(insertedParts,newPart)
					end)
				end
			elseif option == "Save Instance" then
				if not Option.Modifiable then return end
				local list = Selection:Get()
				if #list == 1 then
					list[1].Archivable = true
					ypcall(function()PromptSaveInstance(list[1]:Clone())end)
				elseif #list > 1 then
					local newModel = Instance.new("Model")
					newModel.Name = "SavedInstances"
					for i = 1,#list do
						ypcall(function()
							list[i].Archivable = true
							list[i]:Clone().Parent = newModel
						end)
					end
					PromptSaveInstance(newModel)
				end
			elseif option == "Call Remote" then
				if not Option.Modifiable then return end
				local list = Selection:Get()
				for i = 1,#list do
					if list[i]:IsA("RemoteFunction") or list[i]:IsA("RemoteEvent") then
						PromptRemoteCaller(list[i])
						break
					end
				end
			elseif option == "Save Script" then
				if not Option.Modifiable then return end
				local list = Selection:Get()
				for i = 1,#list do
					if list[i]:IsA("LocalScript") or list[i]:IsA("ModuleScript") then
						if Synapse then
							Synapse:WriteFile(game.PlaceId .. '_' .. list[i].Name:gsub('%W', '') .. '_' .. math.random(100000, 999999) .. '.lua', decompile(list[i]))
						elseif writefile then
							writefile(game.PlaceId .. '_' .. list[i].Name:gsub('%W', '') .. '_' .. math.random(100000, 999999) .. '.lua', decompile(list[i]));
						end
					end
				end
			elseif option == "View Script" then
				-- if not Option.Modifiable then return end
				local list = Selection:Get()
				for i = 1,#list do
					if list[i]:IsA("LocalScript") or list[i]:IsA("ModuleScript") then
						ScriptEditorEvent:Fire(list[i])
					end
				end
			elseif option == 'Try Get Values' then
				for i, sObj in pairs(Selection:Get()) do
					if vars[sObj.Name] or funcs[sObj.Name] then
						local var = vars[sObj.Name] or funcs[sObj.Name]
						if var then
							if type(var) == 'table' then
								local T = var;
								-- table.sort(T, cmp)
								for i,v in pairs(T) do
									local n = Instance.new('StringValue', sObj);
									n.Name = tostring(i);
									local a, b = pcall(function()
										return tostring(v);
									end)
									n.Value = a and b or '.undefined';
									if (type(v) == 'function') then
										funcs[i] = v;
									else
										vars[i] = v;
									end
								end
							elseif type(var) == 'function' then
								local T = debug.getupvalues(var);
								-- table.sort(T, cmp)
								for i,v in pairs(T) do
									local n = Instance.new('StringValue', sObj);
									n.Name = tostring(i);
									local a, b = pcall(function()
										return tostring(v);
									end)
									n.Value = a and b or '.undefined';
									if (type(v) == 'function') then
										funcs[i] = v;
									else
										vars[i] = v;
									end
								end
							end
						end
					end
					if typeof(sObj) == 'Instance' and (sObj:IsA'LocalScript' or sObj:IsA'ModuleScript') then
						do -- get script env values
							local T = getsenv(sObj);
							for i,v in pairs(T) do
								if not sObj:FindFirstChild(tostring(i)) then
									local n = Instance.new('StringValue', sObj);
									n.Name = tostring(i);
									local a, b = pcall(function()
										return tostring(v);
									end)
									n.Value = a and b or '.undefined';
									if (type(v) == 'function') then
										funcs[i] = v;
										for fn, p in pairs(debug.getupvalues(v)) do
											if not sObj:FindFirstChild(tostring(fn)) then
												local n = Instance.new('StringValue', sObj);
												n.Name = tostring(fn);
												local a, b = pcall(function()
													return tostring(p);
												end)
												n.Value = a and b or '.undefined';
												if (type(p) == 'function') then
													funcs[fn] = p;
												else
													vars[fn] = p;
												end
											end
										end
									else
										vars[i] = v;
									end
								end
							end
						end
						--[[do -- attempt to get upvalue variables
							for i,v in pairs(getreg()) do
								if typeof(v) == 'function' then
									local T = debug.getupvalues(v);
									for i,v in pairs(T) do
										if not sObj:FindFirstChild(tostring(i)) then
											local n = Instance.new('StringValue', sObj);
											n.Name = tostring(i);
											local a, b = pcall(function()
												return tostring(v);
											end)
											n.Value = a and b or '.undefined';
											if (type(v) == 'function') then
												for _, p in pairs(debug.getupvalues(v)) do
													if not sObj:FindFirstChild(tostring(_)) then
														local n = Instance.new('StringValue', sObj);
														n.Name = tostring(_);
														local a, b = pcall(function()
															return tostring(p);
														end)
														n.Value = a and b or '.undefined';
													end
												end
											end
										end
									end
								end
							end
						end]]
					end
				end
			elseif option == 'Dump Function' then
				if funcs[sObj.Name] then
					local var = funcs[sObj.Name]
					if var then
						if type(var) == 'function' then
							if writefile then
								writefile(game.PlaceId .. '_' .. 'DF' .. '_' .. math.random(100000, 999999) .. '.lua', decompile(var));
							end
						end
					end
				end
			elseif option == 'Refresh Instances' then
				for i,v in pairs(getscripts()) do
					if v ~= RunningScriptsStorage and v ~= DexStorage and v ~= UpvalueStorage then
						if (v:IsA'LocalScript' or v:IsA'ModuleScript' or v:IsA'Script') then
							v.Archivable = true;
							local ls = v:clone()
							if v:IsA'LocalScript' or v:IsA'Script' then ls.Disabled = true; end
							ls.Parent = RunningScriptsStorageMain
						end
					end
				end
			elseif option == 'Track' then
				if not Option.Modifiable then return end
				local list = Selection:Get()
				for i = 1,#list do
					pcall(function()
						local name = list[i].Name;
						if list[i].Parent:FindFirstChildOfClass'Humanoid' then
							name = list[i].Parent.Name;
						end
						_G.Track(list[i], name, list[i].BrickColor.Color);
					end)
				end
			end
	end)
	currentRightClickMenu.Parent = explorerPanel.Parent
	currentRightClickMenu.Position = UDim2.new(0,mouse.X,0,mouse.Y)
	if currentRightClickMenu.AbsolutePosition.X + currentRightClickMenu.AbsoluteSize.X > explorerPanel.AbsolutePosition.X + explorerPanel.AbsoluteSize.X then
		currentRightClickMenu.Position = UDim2.new(0, explorerPanel.AbsolutePosition.X + explorerPanel.AbsoluteSize.X - currentRightClickMenu.AbsoluteSize.X, 0, mouse.Y)
	end
end

local function cancelReparentDrag()end
local function cancelSelectDrag()end
do
	local listEntries = {}
	local nameConnLookup = {}

	local mouseDrag = Create('ImageButton',{
		Name = "MouseDrag";
		Position = UDim2.new(-0.25,0,-0.25,0);
		Size = UDim2.new(1.5,0,1.5,0);
		Transparency = 1;
		AutoButtonColor = false;
		Active = true;
		ZIndex = 10;
	})
	local function dragSelect(last,add,button)
		local connDrag
		local conUp

		conDrag = mouseDrag.MouseMoved:connect(function(x,y)
			local pos = Vector2.new(x,y) - listFrame.AbsolutePosition
			local size = listFrame.AbsoluteSize
			if pos.x < 0 or pos.x > size.x or pos.y < 0 or pos.y > size.y then return end

			local i = math.ceil(pos.y/ENTRY_BOUND) + scrollBar.ScrollIndex
			-- Mouse may have made a large step, so interpolate between the
			-- last index and the current.
			for n = i<last and i or last, i>last and i or last do
				local node = TreeList[n]
				if node then
					if add then
						Selection:Add(node.Object)
					else
						Selection:Remove(node.Object)
					end
				end
			end
			last = i
		end)

		function cancelSelectDrag()
			mouseDrag.Parent = nil
			conDrag:disconnect()
			conUp:disconnect()
			function cancelSelectDrag()end
		end

		conUp = mouseDrag[button]:connect(cancelSelectDrag)

		mouseDrag.Parent = GetScreen(listFrame)
	end

	local function dragReparent(object,dragGhost,clickPos,ghostOffset)
		local connDrag
		local conUp
		local conUp2

		local parentIndex = nil
		local dragged = false

		local parentHighlight = Create('Frame',{
			Transparency = 1;
			Visible = false;
			Create('Frame',{
				BorderSizePixel = 0;
				BackgroundColor3 = Color3.new(0,0,0);
				BackgroundTransparency = 0.1;
				Position = UDim2.new(0,0,0,0);
				Size = UDim2.new(1,0,0,1);
			});
			Create('Frame',{
				BorderSizePixel = 0;
				BackgroundColor3 = Color3.new(0,0,0);
				BackgroundTransparency = 0.1;
				Position = UDim2.new(1,0,0,0);
				Size = UDim2.new(0,1,1,0);
			});
			Create('Frame',{
				BorderSizePixel = 0;
				BackgroundColor3 = Color3.new(0,0,0);
				BackgroundTransparency = 0.1;
				Position = UDim2.new(0,0,1,0);
				Size = UDim2.new(1,0,0,1);
			});
			Create('Frame',{
				BorderSizePixel = 0;
				BackgroundColor3 = Color3.new(0,0,0);
				BackgroundTransparency = 0.1;
				Position = UDim2.new(0,0,0,0);
				Size = UDim2.new(0,1,1,0);
			});
		})
		SetZIndex(parentHighlight,9)

		conDrag = mouseDrag.MouseMoved:connect(function(x,y)
			local dragPos = Vector2.new(x,y)
			if dragged then
				local pos = dragPos - listFrame.AbsolutePosition
				local size = listFrame.AbsoluteSize

				parentIndex = nil
				parentHighlight.Visible = false
				if pos.x >= 0 and pos.x <= size.x and pos.y >= 0 and pos.y <= size.y + ENTRY_SIZE*2 then
					local i = math.ceil(pos.y/ENTRY_BOUND-2)
					local node = TreeList[i + scrollBar.ScrollIndex]
					if node and node.Object ~= object and not object:IsAncestorOf(node.Object) then
						parentIndex = i
						local entry = listEntries[i]
						if entry then
							parentHighlight.Visible = true
							parentHighlight.Position = UDim2.new(0,1,0,entry.AbsolutePosition.y-listFrame.AbsolutePosition.y)
							parentHighlight.Size = UDim2.new(0,size.x-4,0,entry.AbsoluteSize.y)
						end
					end
				end

				dragGhost.Position = UDim2.new(0,dragPos.x+ghostOffset.x,0,dragPos.y+ghostOffset.y)
			elseif (clickPos-dragPos).magnitude > 8 then
				dragged = true
				SetZIndex(dragGhost,9)
				dragGhost.IndentFrame.Transparency = 0.25
				dragGhost.IndentFrame.EntryText.TextColor3 = GuiColor.TextSelected
				dragGhost.Position = UDim2.new(0,dragPos.x+ghostOffset.x,0,dragPos.y+ghostOffset.y)
				dragGhost.Parent = GetScreen(listFrame)
				parentHighlight.Parent = listFrame
			end
		end)

		function cancelReparentDrag()
			mouseDrag.Parent = nil
			conDrag:disconnect()
			conUp:disconnect()
			conUp2:disconnect()
			dragGhost:Destroy()
			parentHighlight:Destroy()
			function cancelReparentDrag()end
		end

		local wasSelected = Selection.Selected[object]
		if not wasSelected and Option.Selectable then
			Selection:Set({object})
		end

		conUp = mouseDrag.MouseButton1Up:connect(function()
			cancelReparentDrag()
			if dragged then
				if parentIndex then
					local parentNode = TreeList[parentIndex + scrollBar.ScrollIndex]
					if parentNode then
						parentNode.Expanded = true

						local parentObj = parentNode.Object
						local function parent(a,b)
							a.Parent = b
						end
						if Option.Selectable then
							local list = Selection.List
							for i = 1,#list do
								pcall(parent,list[i],parentObj)
							end
						else
							pcall(parent,object,parentObj)
						end
					end
				end
			else
				-- do selection click
				if wasSelected and Option.Selectable then
					Selection:Set({})
				end
			end
		end)
		conUp2 = mouseDrag.MouseButton2Down:connect(function()
			cancelReparentDrag()
		end)

		mouseDrag.Parent = GetScreen(listFrame)
	end

	local entryTemplate = Create('ImageButton',{
		Name = "Entry";
		Transparency = 1;
		AutoButtonColor = false;
		Position = UDim2.new(0,0,0,0);
		Size = UDim2.new(1,0,0,ENTRY_SIZE);
		Create('Frame',{
			Name = "IndentFrame";
			BackgroundTransparency = 1;
			BackgroundColor3 = GuiColor.Selected;
			BorderColor3 = GuiColor.BorderSelected;
			Position = UDim2.new(0,0,0,0);
			Size = UDim2.new(1,0,1,0);
			Create(Icon('ImageButton',0),{
				Name = "Expand";
				AutoButtonColor = false;
				Position = UDim2.new(0,-GUI_SIZE,0.5,-GUI_SIZE/2);
				Size = UDim2.new(0,GUI_SIZE,0,GUI_SIZE);
			});
			Create(Icon(nil,0),{
				Name = "ExplorerIcon";
				Position = UDim2.new(0,2+ENTRY_PADDING,0.5,-GUI_SIZE/2);
				Size = UDim2.new(0,GUI_SIZE,0,GUI_SIZE);
			});
			Create('TextLabel',{
				Name = "EntryText";
				BackgroundTransparency = 1;
				TextColor3 = GuiColor.Text;
				TextXAlignment = 'Left';
				TextYAlignment = 'Center';
				Font = FONT;
				FontSize = FONT_SIZE;
				Text = "";
				Position = UDim2.new(0,2+ENTRY_SIZE+4,0,0);
				Size = UDim2.new(1,-2,1,0);
			});
		});
	})

	function scrollBar.UpdateCallback(self)
		for i = 1,self.VisibleSpace do
			local node = TreeList[i + self.ScrollIndex]
			if node then
				local entry = listEntries[i]
				if not entry then
					entry = Create(entryTemplate:Clone(),{
						Position = UDim2.new(0,2,0,ENTRY_BOUND*(i-1)+2);
						Size = UDim2.new(0,nodeWidth,0,ENTRY_SIZE);
						ZIndex = listFrame.ZIndex;
					})
					listEntries[i] = entry

					local expand = entry.IndentFrame.Expand
					expand.MouseEnter:connect(function()
						local node = TreeList[i + self.ScrollIndex]
						if #node > 0 then
							if node.Expanded then
								Icon(expand,NODE_EXPANDED_OVER)
							else
								Icon(expand,NODE_COLLAPSED_OVER)
							end
						end
					end)
					expand.MouseLeave:connect(function()
						local node = TreeList[i + self.ScrollIndex]
						if #node > 0 then
							if node.Expanded then
								Icon(expand,NODE_EXPANDED)
							else
								Icon(expand,NODE_COLLAPSED)
							end
						end
					end)
					expand.MouseButton1Down:connect(function()
						local node = TreeList[i + self.ScrollIndex]
						if #node > 0 then
							node.Expanded = not node.Expanded
							if node.Object == explorerPanel.Parent and node.Expanded then
								CreateCaution("Warning","Please be careful when editing instances inside here, this is like the System32 of Dex and modifying objects here can break Dex.")
							end
							-- use raw update so the list updates instantly
							rawUpdateList()
						end
					end)

					entry.MouseButton1Down:connect(function(x,y)
						local node = TreeList[i + self.ScrollIndex]
						DestroyRightClick()
						if GetAwaitRemote:Invoke() then
							bindSetAwaiting:Fire(node.Object)
							return
						end
						
						if not HoldingShift then
							lastSelectedNode = i + self.ScrollIndex
						end
						
						if HoldingShift and not filteringWorkspace() then
							if lastSelectedNode then
								if i + self.ScrollIndex - lastSelectedNode > 0 then
									Selection:StopUpdates()
									for i2 = 1, i + self.ScrollIndex - lastSelectedNode do
										local newNode = TreeList[lastSelectedNode + i2]
										if newNode then
											Selection:Add(newNode.Object)
										end
									end
									Selection:ResumeUpdates()
								else
									Selection:StopUpdates()
									for i2 = i + self.ScrollIndex - lastSelectedNode, 1 do
										local newNode = TreeList[lastSelectedNode + i2]
										if newNode then
											Selection:Add(newNode.Object)
										end
									end
									Selection:ResumeUpdates()
								end
							end
							return
						end
						
						if HoldingCtrl then
							if Selection.Selected[node.Object] then
								Selection:Remove(node.Object)
							else
								Selection:Add(node.Object)
							end
							return
						end
						if Option.Modifiable then
							local pos = Vector2.new(x,y)
							dragReparent(node.Object,entry:Clone(),pos,entry.AbsolutePosition-pos)
						elseif Option.Selectable then
							if Selection.Selected[node.Object] then
								Selection:Set({})
							else
								Selection:Set({node.Object})
							end
							dragSelect(i+self.ScrollIndex,true,'MouseButton1Up')
						end
					end)

					entry.MouseButton2Down:connect(function()
						if not Option.Selectable then return end
						
						DestroyRightClick()
						
						curSelect = entry
						
						local node = TreeList[i + self.ScrollIndex]
						
						if GetAwaitRemote:Invoke() then
							bindSetAwaiting:Fire(node.Object)
							return
						end
						
						if not Selection.Selected[node.Object] then
							Selection:Set({node.Object})
						end
					end)
					
					
					entry.MouseButton2Up:connect(function()
						if not Option.Selectable then return end
						
						local node = TreeList[i + self.ScrollIndex]
						
						if checkMouseInGui(curSelect) then
							rightClickMenu(node.Object)
						end
					end)

					entry.Parent = listFrame
				end

				entry.Visible = true

				local object = node.Object

				-- update expand icon
				if #node == 0 then
					entry.IndentFrame.Expand.Visible = false
				elseif node.Expanded then
					Icon(entry.IndentFrame.Expand,NODE_EXPANDED)
					entry.IndentFrame.Expand.Visible = true
				else
					Icon(entry.IndentFrame.Expand,NODE_COLLAPSED)
					entry.IndentFrame.Expand.Visible = true
				end

				-- update explorer icon
				Icon(entry.IndentFrame.ExplorerIcon,ExplorerIndex[object.ClassName] or 0)

				-- update indentation
				local w = (node.Depth)*(2+ENTRY_PADDING+GUI_SIZE)
				entry.IndentFrame.Position = UDim2.new(0,w,0,0)
				entry.IndentFrame.Size = UDim2.new(1,-w,1,0)

				-- update name change detection
				if nameConnLookup[entry] then
					nameConnLookup[entry]:disconnect()
				end
				local text = entry.IndentFrame.EntryText
				text.Text = object.Name
				nameConnLookup[entry] = node.Object.Changed:connect(function(p)
					if p == 'Name' then
						text.Text = object.Name
					end
				end)

				-- update selection
				entry.IndentFrame.Transparency = node.Selected and 0 or 1
				text.TextColor3 = GuiColor[node.Selected and 'TextSelected' or 'Text']

				entry.Size = UDim2.new(0,nodeWidth,0,ENTRY_SIZE)
			elseif listEntries[i] then
				listEntries[i].Visible = false
			end
		end
		for i = self.VisibleSpace+1,self.TotalSpace do
			local entry = listEntries[i]
			if entry then
				listEntries[i] = nil
				entry:Destroy()
			end
		end
	end

	function scrollBarH.UpdateCallback(self)
		for i = 1,scrollBar.VisibleSpace do
			local node = TreeList[i + scrollBar.ScrollIndex]
			if node then
				local entry = listEntries[i]
				if entry then
					entry.Position = UDim2.new(0,2 - scrollBarH.ScrollIndex,0,ENTRY_BOUND*(i-1)+2)
				end
			end
		end
	end

	Connect(listFrame.Changed,function(p)
		if p == 'AbsoluteSize' then
			rawUpdateSize()
		end
	end)

	local wheelAmount = 6
	
	explorerPanel.MouseWheelForward:connect(function()
		if input ~= nil and input.down ~= nil and input.down.leftshift then
			if scrollBarH.VisibleSpace - 1 > wheelAmount then
				scrollBarH:ScrollTo(scrollBarH.ScrollIndex - wheelAmount)
			else
				scrollBarH:ScrollTo(scrollBarH.ScrollIndex - scrollBarH.VisibleSpace)
			end
		else
			if scrollBar.VisibleSpace - 1 > wheelAmount then
				scrollBar:ScrollTo(scrollBar.ScrollIndex - wheelAmount)
			else
				scrollBar:ScrollTo(scrollBar.ScrollIndex - scrollBar.VisibleSpace)
			end
		end
	end)
	explorerPanel.MouseWheelBackward:connect(function()
		if input ~= nil and input.down ~= nil and input.down.leftshift then
			if scrollBarH.VisibleSpace - 1 > wheelAmount then
				scrollBarH:ScrollTo(scrollBarH.ScrollIndex + wheelAmount)
			else
				scrollBarH:ScrollTo(scrollBarH.ScrollIndex + scrollBarH.VisibleSpace)
			end
		else
			if scrollBar.VisibleSpace - 1 > wheelAmount then
				scrollBar:ScrollTo(scrollBar.ScrollIndex + wheelAmount)
			else
				scrollBar:ScrollTo(scrollBar.ScrollIndex + scrollBar.VisibleSpace)
			end
		end
	end)
end

----------------------------------------------------------------
----------------------------------------------------------------
----------------------------------------------------------------
----------------------------------------------------------------
---- Object detection

-- Inserts `v` into `t` at `i`. Also sets `Index` field in `v`.
local function insert(t,i,v)
	for n = #t,i,-1 do
		local v = t[n]
		v.Index = n+1
		t[n+1] = v
	end
	v.Index = i
	t[i] = v
end

-- Removes `i` from `t`. Also sets `Index` field in removed value.
local function remove(t,i)
	local v = t[i]
	for n = i+1,#t do
		local v = t[n]
		v.Index = n-1
		t[n-1] = v
	end
	t[#t] = nil
	v.Index = 0
	return v
end

-- Returns how deep `o` is in the tree.
local function depth(o)
	local d = -1
	while o do
		o = o.Parent
		d = d + 1
	end
	return d
end


local connLookup = {}

-- Returns whether a node would be present in the tree list
local function nodeIsVisible(node)
	local visible = true
	node = node.Parent
	while node and visible do
		visible = visible and node.Expanded
		node = node.Parent
	end
	return visible
end

-- Removes an object's tree node. Called when the object stops existing in the
-- game tree.
local function removeObject(object)
	local objectNode = NodeLookup[object]
	if not objectNode then
		return
	end

	local visible = nodeIsVisible(objectNode)

	Selection:Remove(object,true)

	local parent = objectNode.Parent
	remove(parent,objectNode.Index)
	NodeLookup[object] = nil
	connLookup[object]:disconnect()
	connLookup[object] = nil

	if visible then
		updateList()
	elseif nodeIsVisible(parent) then
		updateScroll()
	end
end

-- Moves a tree node to a new parent. Called when an existing object's parent
-- changes.
local function moveObject(object,parent)
	local objectNode = NodeLookup[object]
	if not objectNode then
		return
	end

	local parentNode = NodeLookup[parent]
	if not parentNode then
		return
	end

	local visible = nodeIsVisible(objectNode)

	remove(objectNode.Parent,objectNode.Index)
	objectNode.Parent = parentNode

	objectNode.Depth = depth(object)
	local function r(node,d)
		for i = 1,#node do
			node[i].Depth = d
			r(node[i],d+1)
		end
	end
	r(objectNode,objectNode.Depth+1)

	insert(parentNode,#parentNode+1,objectNode)

	if visible or nodeIsVisible(objectNode) then
		updateList()
	elseif nodeIsVisible(objectNode.Parent) then
		updateScroll()
	end
end

-- ScriptContext['/Libraries/LibraryRegistration/LibraryRegistration']
-- This RobloxLocked object lets me index its properties for some reason

local function check(object)
	return object.AncestryChanged
end

-- Creates a new tree node from an object. Called when an object starts
-- existing in the game tree.
local function addObject(object,noupdate)
	if script then
		-- protect against naughty RobloxLocked objects
		local s = pcall(check,object)
		if not s then
			return
		end
	end

	local parentNode = NodeLookup[object.Parent]
	if not parentNode then
		return
	end

	local objectNode = {
		Object = object;
		Parent = parentNode;
		Index = 0;
		Expanded = false;
		Selected = false;
		Depth = depth(object);
	}

	connLookup[object] = Connect(object.AncestryChanged,function(c,p)
		if c == object then
			if p == nil then
				removeObject(c)
			else
				moveObject(c,p)
			end
		end
	end)

	NodeLookup[object] = objectNode
	insert(parentNode,#parentNode+1,objectNode)

	if not noupdate then
		if nodeIsVisible(objectNode) then
			updateList()
		elseif nodeIsVisible(objectNode.Parent) then
			updateScroll()
		end
	end
end

local function makeObject(obj,par)
	local newObject = Instance.new(obj.ClassName)
	for i,v in pairs(obj.Properties) do
		ypcall(function()
			local newProp
			newProp = ToPropValue(v.Value,v.Type)
			newObject[v.Name] = newProp
		end)
	end
	newObject.Parent = par
end

local function writeObject(obj)
	local newObject = {ClassName = obj.ClassName, Properties = {}}
	for i,v in pairs(RbxApi.GetProperties(obj.className)) do
		if v["Name"] ~= "Parent" then
			table.insert(newObject.Properties,{Name = v["Name"], Type = v["ValueType"], Value = tostring(obj[v["Name"]])})
		end
	end
	return newObject
end

local function buildDexStorage()
	--[[local localDexStorage
	
	local success,err = ypcall(function()
		localDexStorage = game:GetObjects("rbxasset://DexStorage.rbxm")
	end)
	
	if success and localDexStorage then
		for i,v in pairs(localDexStorage:GetChildren()) do
			ypcall(function()
				v.Parent = DexStorageMain
			end)
		end
	end]]
	
	updateDexStorageListeners()
	--[[
	local localDexStorage = readfile(getelysianpath().."DexStorage.txt")--game:GetService("CookiesService"):GetCookieValue("DexStorage")
	--local success,err = pcall(function()
		if localDexStorage then
			local objTable = game:GetService("HttpService"):JSONDecode(localDexStorage)
			for i,v in pairs(objTable) do
				makeObject(v,DexStorageMain)
			end
		end
	--end)
	--]]
end

local dexStorageDebounce = false
local dexStorageListeners = {}

local function updateDexStorage()
	if dexStorageDebounce then return end
	dexStorageDebounce = true	
	
	wait()
	
	pcall(function()
		saveinstance("content//DexStorage.rbxm",DexStorageMain)
	end)
	
	updateDexStorageListeners()
	
	dexStorageDebounce = false
	--[[
	local success,err = ypcall(function()
		local objs = {}
		for i,v in pairs(DexStorageMain:GetChildren()) do
			table.insert(objs,writeObject(v))
		end
		writefile(getelysianpath().."DexStorage.txt",game:GetService("HttpService"):JSONEncode(objs))
		--game:GetService("CookiesService"):SetCookieValue("DexStorage",game:GetService("HttpService"):JSONEncode(objs))
	end)
	if err then
		CreateCaution("DexStorage Save Fail!","DexStorage broke! If you see this message, report to Raspberry Pi!")
	end
	print("hi")
	--]]
end

function updateDexStorageListeners()
	for i,v in pairs(dexStorageListeners) do
		v:Disconnect()
	end
	dexStorageListeners = {}
	for i,v in pairs(DexStorageMain:GetChildren()) do
		pcall(function()
			local ev = v.Changed:connect(updateDexStorage)
			table.insert(dexStorageListeners,ev)
		end)
	end
end

do
	NodeLookup[workspace.Parent] = {
		Object = workspace.Parent;
		Parent = nil;
		Index = 0;
		Expanded = true;
	}
	
	if DexStorageEnabled then
		NodeLookup[DexStorage] = {
			Object = DexStorage;
			Parent = nil;
			Index = 0;
			Expanded = true;
		}
	end
	
	if RunningScriptsStorageEnabled then
		NodeLookup[RunningScriptsStorage] = {
			Object = RunningScriptsStorage;
			Parent = nil;
			Index = 0;
			Expanded = true;
		}
	end

	if UpvalueStorageEnabled then
		NodeLookup[UpvalueStorage] = {
			Object = UpvalueStorage;
			Parent = nil;
			Index = 0;
			Expanded = true;
		}
	end

	Connect(game.DescendantAdded,addObject)
	Connect(game.DescendantRemoving,removeObject)
	
	if DexStorageEnabled then
		--[[
		if readfile(getelysianpath().."DexStorage.txt") == nil then
			writefile(getelysianpath().."DexStorage.txt","")
		end
		--]]
		
		buildDexStorage()
	
		Connect(DexStorage.DescendantAdded,addObject)
		Connect(DexStorage.DescendantRemoving,removeObject)
	
		Connect(DexStorage.DescendantAdded,updateDexStorage)
		Connect(DexStorage.DescendantRemoving,updateDexStorage)
	end

	if UpvalueStorageEnabled then
		Connect(UpvalueStorageVariables.DescendantAdded,addObject)
		Connect(UpvalueStorageVariables.DescendantRemoving,removeObject)
	
		Connect(UpvalueStorageFunctions.DescendantAdded,addObject)
		Connect(UpvalueStorageFunctions.DescendantRemoving,removeObject)
	end
	
	if RunningScriptsStorageEnabled then
		Connect(RunningScriptsStorage.DescendantAdded,addObject)
		Connect(RunningScriptsStorage.DescendantRemoving,removeObject)		
		
		--[[ local currentTable = get_nil_instances()
		
		spawn(function()
			while true do
				if #currentTable ~= #get_nil_instances() then
					currentTable = get_nil_instances()
					--RunningScriptsStorageMain:ClearAllChildren()
					for i,v in pairs(get_nil_instances() do
						if v ~= RunningScriptsStorage and v ~= DexStorage and v ~= UpvalueStorage then
							pcall(function()
								v.Parent = RunningScriptsStorageMain
							end)
						end
					end
				end
				wait(60)
			end
		end)]]
	end

	local function get(o)
		return o:GetDescendants()
	end

	local function r(o)
		local s,children = pcall(get,o)
		if s then
			for i = 1,#children do
				addObject(children[i],true)
				-- r(children[i])
			end
		end
	end

	r(workspace.Parent)

	if DexStorageEnabled then
		r(DexStorage)
	end
	if RunningScriptsStorageEnabled then
		r(RunningScriptsStorage)
	end
	if UpvalueStorageEnabled then
		r(UpvalueStorage)
	end

	scrollBar.VisibleSpace = math.ceil(listFrame.AbsoluteSize.y/ENTRY_BOUND)
	updateList()
end

----------------------------------------------------------------
----------------------------------------------------------------
----------------------------------------------------------------
----------------------------------------------------------------
---- Actions

local actionButtons do
	actionButtons = {}

	local totalActions = 1
	local currentActions = totalActions
	local function makeButton(icon,over,name,vis,cond)
		local buttonEnabled = false
		
		local button = Create(Icon('ImageButton',icon),{
			Name = name .. "Button";
			Visible = Option.Modifiable and Option.Selectable;
			Position = UDim2.new(1,-(GUI_SIZE+2)*currentActions+2,0.25,-GUI_SIZE/2);
			Size = UDim2.new(0,GUI_SIZE,0,GUI_SIZE);
			Parent = headerFrame;
		})

		local tipText = Create('TextLabel',{
			Name = name .. "Text";
			Text = name;
			Visible = false;
			BackgroundTransparency = 1;
			TextXAlignment = 'Right';
			Font = FONT;
			FontSize = FONT_SIZE;
			Position = UDim2.new(0,0,0,0);
			Size = UDim2.new(1,-(GUI_SIZE+2)*totalActions,1,0);
			Parent = headerFrame;
		})

		
		button.MouseEnter:connect(function()
			if buttonEnabled then
				button.BackgroundTransparency = 0.9
			end
			--Icon(button,over)
			--tipText.Visible = true
		end)
		button.MouseLeave:connect(function()
			button.BackgroundTransparency = 1
			--Icon(button,icon)
			--tipText.Visible = false
		end)

		currentActions = currentActions + 1
		actionButtons[#actionButtons+1] = {Obj = button,Cond = cond}
		QuickButtons[#actionButtons+1] = {Obj = button,Cond = cond, Toggle = function(on)
			if on then
				buttonEnabled = true
				Icon(button,over)
			else
				buttonEnabled = false
				Icon(button,icon)
			end
		end}
		return button
	end

	--local clipboard = {}
	local function delete(o)
		o.Parent = nil
	end
	
	makeButton(ACTION_EDITQUICKACCESS,ACTION_EDITQUICKACCESS,"Options",true,function()return true end).MouseButton1Click:connect(function()
		
	end)
	

	-- DELETE
	makeButton(ACTION_DELETE,ACTION_DELETE_OVER,"Delete",true,function() return #Selection:Get() > 0 end).MouseButton1Click:connect(function()
		if not Option.Modifiable then return end
		local list = Selection:Get()
		for i = 1,#list do
			pcall(delete,list[i])
		end
		Selection:Set({})
	end)
	
	-- PASTE
	makeButton(ACTION_PASTE,ACTION_PASTE_OVER,"Paste",true,function() return #Selection:Get() > 0 and #clipboard > 0 end).MouseButton1Click:connect(function()
		if not Option.Modifiable then return end
		local parent = Selection.List[1] or workspace
		for i = 1,#clipboard do
			clipboard[i]:Clone().Parent = parent
		end
	end)
	
	-- COPY
	makeButton(ACTION_COPY,ACTION_COPY_OVER,"Copy",true,function() return #Selection:Get() > 0 end).MouseButton1Click:connect(function()
		if not Option.Modifiable then return end
		clipboard = {}
		local list = Selection.List
		for i = 1,#list do
			table.insert(clipboard,list[i]:Clone())
		end
		updateActions()
	end)
	
	-- CUT
	makeButton(ACTION_CUT,ACTION_CUT_OVER,"Cut",true,function() return #Selection:Get() > 0 end).MouseButton1Click:connect(function()
		if not Option.Modifiable then return end
		clipboard = {}
		local list = Selection.List
		local cut = {}
		for i = 1,#list do
			local obj = list[i]:Clone()
			if obj then
				table.insert(clipboard,obj)
				table.insert(cut,list[i])
			end
		end
		for i = 1,#cut do
			pcall(delete,cut[i])
		end
		updateActions()
	end)
	
	-- FREEZE
	makeButton(ACTION_FREEZE,ACTION_FREEZE,"Freeze",true,function() return true end)
	
	-- ADD/REMOVE STARRED
	makeButton(ACTION_ADDSTAR,ACTION_ADDSTAR_OVER,"Star",true,function() return #Selection:Get() > 0 end)
	
	-- STARRED
	makeButton(ACTION_STARRED,ACTION_STARRED,"Starred",true,function() return true end)


	-- SORT
	-- local actionSort = makeButton(ACTION_SORT,ACTION_SORT_OVER,"Sort")
end

----------------------------------------------------------------
----------------------------------------------------------------
----------------------------------------------------------------
----------------------------------------------------------------
---- Option Bindables

do
	local optionCallback = {
		Modifiable = function(value)
			for i = 1,#actionButtons do
				actionButtons[i].Obj.Visible = value and Option.Selectable
			end
			cancelReparentDrag()
		end;
		Selectable = function(value)
			for i = 1,#actionButtons do
				actionButtons[i].Obj.Visible = value and Option.Modifiable
			end
			cancelSelectDrag()
			Selection:Set({})
		end;
	}

	local bindSetOption = explorerPanel:FindFirstChild("SetOption")
	if not bindSetOption then
		bindSetOption = Create('BindableFunction',{Name = "SetOption"})
		bindSetOption.Parent = explorerPanel
	end

	bindSetOption.OnInvoke = function(optionName,value)
		if optionCallback[optionName] then
			Option[optionName] = value
			optionCallback[optionName](value)
		end
	end

	local bindGetOption = explorerPanel:FindFirstChild("GetOption")
	if not bindGetOption then
		bindGetOption = Create('BindableFunction',{Name = "GetOption"})
		bindGetOption.Parent = explorerPanel
	end

	bindGetOption.OnInvoke = function(optionName)
		if optionName then
			return Option[optionName]
		else
			local options = {}
			for k,v in pairs(Option) do
				options[k] = v
			end
			return options
		end
	end
end

function SelectionVar()
	return Selection
end

Input.InputBegan:connect(function(key)
	if key.KeyCode == Enum.KeyCode.LeftControl then
		HoldingCtrl = true
	end
	if key.KeyCode == Enum.KeyCode.LeftShift then
		HoldingShift = true
	end
end)

Input.InputEnded:connect(function(key)
	if key.KeyCode == Enum.KeyCode.LeftControl then
		HoldingCtrl = false
	end
	if key.KeyCode == Enum.KeyCode.LeftShift then
		HoldingShift = false
	end
end)

while RbxApi == nil do
	RbxApi = GetApiRemote:Invoke()
	wait()
end

explorerFilter.FocusLost:connect(function()
	rawUpdateList()
end)

--[[local lastType = 0

explorerFilter.Changed:connect(function(prop)
	if prop == "Text" then
		if tick() - lastType > 1 then
			rawUpdateList()
		end
		lastType = tick()
	end
end)]]

CurrentInsertObjectWindow = CreateInsertObjectMenu(
	GetClasses(),
	"",
	false,
	function(option)
		CurrentInsertObjectWindow.Visible = false
		local list = SelectionVar():Get()
		for i = 1,#list do
			pcall(function() Instance.new(option,list[i]) end)
		end
		DestroyRightClick()
	end
)
end)
spawn(function()
	--[[
	
Change log:

09/18
	Fixed checkbox mouseover sprite
	Encapsulated checkbox creation into separate method
	Fixed another checkbox issue

09/15
	Invalid input is ignored instead of setting to default of that data type
	Consolidated control methods and simplified them
	All input goes through ToValue method
	Fixed position of BrickColor palette
	Made DropDown appear above row if it would otherwise exceed the page height
	Cleaned up stylesheets

09/14
	Made properties window scroll when mouse wheel scrolled
	Object/Instance and Color3 data types handled properly
	Multiple BrickColor controls interfering with each other fixed
	Added support for Content data type
	
--]]

wait(0.2)

-- Services
local Teams = game:GetService("Teams")
local Workspace = game:GetService("Workspace")
local Debris = game:GetService("Debris")
local ContentProvider = game:GetService("ContentProvider")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Functions
function httpGet(url)
	return game:HttpGet(url,true)
end

-- RbxApi Stuff

local apiUrl = "http://anaminus.github.io/rbx/json/api/latest.json"
local maxChunkSize = 100 * 1000
local ApiJson
if script:FindFirstChild("RawApiJson") then
	ApiJson = script.RawApiJson
else
	ApiJson = ""
end


function getLocalApiJson()
	local rawApiJson = [===[
	[{"Superclass":null,"type":"Class","Name":"Instance","tags":["notbrowsable"]},{"ValueType":"bool","type":"Property","Name":"Archivable","tags":[],"Class":"Instance"},{"ValueType":"string","type":"Property","Name":"ClassName","tags":["readonly"],"Class":"Instance"},{"ValueType":"int","type":"Property","Name":"DataCost","tags":["RobloxPlaceSecurity","readonly"],"Class":"Instance"},{"ValueType":"string","type":"Property","Name":"Name","tags":[],"Class":"Instance"},{"ValueType":"Object","type":"Property","Name":"Parent","tags":[],"Class":"Instance"},{"ValueType":"bool","type":"Property","Name":"RobloxLocked","tags":["PluginSecurity"],"Class":"Instance"},{"ValueType":"bool","type":"Property","Name":"archivable","tags":["hidden"],"Class":"Instance"},{"ValueType":"string","type":"Property","Name":"className","tags":["deprecated","readonly"],"Class":"Instance"},{"ReturnType":"void","Arguments":[],"Name":"ClearAllChildren","tags":[],"Class":"Instance","type":"Function"},{"ReturnType":"Instance","Arguments":[],"Name":"Clone","tags":[],"Class":"Instance","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"Destroy","tags":[],"Class":"Instance","type":"Function"},{"ReturnType":"Instance","Arguments":[{"Type":"string","Name":"name","Default":null},{"Type":"bool","Name":"recursive","Default":"false"}],"Name":"FindFirstChild","tags":[],"Class":"Instance","type":"Function"},{"ReturnType":"Objects","Arguments":[],"Name":"GetChildren","tags":[],"Class":"Instance","type":"Function"},{"ReturnType":"string","Arguments":[{"Type":"int","Name":"scopeLength","Default":"4"}],"Name":"GetDebugId","tags":["PluginSecurity","notbrowsable"],"Class":"Instance","type":"Function"},{"ReturnType":"string","Arguments":[],"Name":"GetFullName","tags":[],"Class":"Instance","type":"Function"},{"ReturnType":"bool","Arguments":[{"Type":"string","Name":"className","Default":null}],"Name":"IsA","tags":[],"Class":"Instance","type":"Function"},{"ReturnType":"bool","Arguments":[{"Type":"Instance","Name":"descendant","Default":null}],"Name":"IsAncestorOf","tags":[],"Class":"Instance","type":"Function"},{"ReturnType":"bool","Arguments":[{"Type":"Instance","Name":"ancestor","Default":null}],"Name":"IsDescendantOf","tags":[],"Class":"Instance","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"Remove","tags":["deprecated"],"Class":"Instance","type":"Function"},{"ReturnType":"Objects","Arguments":[],"Name":"children","tags":["deprecated"],"Class":"Instance","type":"Function"},{"ReturnType":"Instance","Arguments":[],"Name":"clone","tags":["deprecated"],"Class":"Instance","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"destroy","tags":["deprecated"],"Class":"Instance","type":"Function"},{"ReturnType":"Instance","Arguments":[{"Type":"string","Name":"name","Default":null},{"Type":"bool","Name":"recursive","Default":"false"}],"Name":"findFirstChild","tags":["deprecated"],"Class":"Instance","type":"Function"},{"ReturnType":"Objects","Arguments":[],"Name":"getChildren","tags":["deprecated"],"Class":"Instance","type":"Function"},{"ReturnType":"bool","Arguments":[{"Type":"string","Name":"className","Default":null}],"Name":"isA","tags":["deprecated"],"Class":"Instance","type":"Function"},{"ReturnType":"bool","Arguments":[{"Type":"Instance","Name":"ancestor","Default":null}],"Name":"isDescendantOf","tags":["deprecated"],"Class":"Instance","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"remove","tags":["deprecated"],"Class":"Instance","type":"Function"},{"ReturnType":"Instance","Arguments":[{"Type":"string","Name":"childName","Default":null}],"Name":"WaitForChild","tags":[],"Class":"Instance","type":"YieldFunction"},{"Arguments":[{"Name":"child","Type":"Instance"},{"Name":"parent","Type":"Instance"}],"Name":"AncestryChanged","tags":[],"Class":"Instance","type":"Event"},{"Arguments":[{"Name":"property","Type":"Property"}],"Name":"Changed","tags":[],"Class":"Instance","type":"Event"},{"Arguments":[{"Name":"child","Type":"Instance"}],"Name":"ChildAdded","tags":[],"Class":"Instance","type":"Event"},{"Arguments":[{"Name":"child","Type":"Instance"}],"Name":"ChildRemoved","tags":[],"Class":"Instance","type":"Event"},{"Arguments":[{"Name":"descendant","Type":"Instance"}],"Name":"DescendantAdded","tags":[],"Class":"Instance","type":"Event"},{"Arguments":[{"Name":"descendant","Type":"Instance"}],"Name":"DescendantRemoving","tags":[],"Class":"Instance","type":"Event"},{"Arguments":[{"Name":"child","Type":"Instance"}],"Name":"childAdded","tags":["deprecated"],"Class":"Instance","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"Accoutrement","tags":[]},{"ValueType":"Vector3","type":"Property","Name":"AttachmentForward","tags":[],"Class":"Accoutrement"},{"ValueType":"CoordinateFrame","type":"Property","Name":"AttachmentPoint","tags":[],"Class":"Accoutrement"},{"ValueType":"Vector3","type":"Property","Name":"AttachmentPos","tags":[],"Class":"Accoutrement"},{"ValueType":"Vector3","type":"Property","Name":"AttachmentRight","tags":[],"Class":"Accoutrement"},{"ValueType":"Vector3","type":"Property","Name":"AttachmentUp","tags":[],"Class":"Accoutrement"},{"Superclass":"Accoutrement","type":"Class","Name":"Accessory","tags":[]},{"Superclass":"Accoutrement","type":"Class","Name":"Hat","tags":["deprecated"]},{"Superclass":"Instance","type":"Class","Name":"AdService","tags":["notCreatable"]},{"ReturnType":"void","Arguments":[],"Name":"ShowVideoAd","tags":[],"Class":"AdService","type":"Function"},{"Arguments":[{"Name":"adShown","Type":"bool"}],"Name":"VideoAdClosed","tags":[],"Class":"AdService","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"AdvancedDragger","tags":[]},{"Superclass":"Instance","type":"Class","Name":"Animation","tags":[]},{"ValueType":"Content","type":"Property","Name":"AnimationId","tags":[],"Class":"Animation"},{"Superclass":"Instance","type":"Class","Name":"AnimationController","tags":[]},{"ReturnType":"Array","Arguments":[],"Name":"GetPlayingAnimationTracks","tags":[],"Class":"AnimationController","type":"Function"},{"ReturnType":"Instance","Arguments":[{"Type":"Instance","Name":"animation","Default":null}],"Name":"LoadAnimation","tags":[],"Class":"AnimationController","type":"Function"},{"Arguments":[{"Name":"animationTrack","Type":"Instance"}],"Name":"AnimationPlayed","tags":[],"Class":"AnimationController","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"AnimationTrack","tags":[]},{"ValueType":"Object","type":"Property","Name":"Animation","tags":["readonly"],"Class":"AnimationTrack"},{"ValueType":"bool","type":"Property","Name":"IsPlaying","tags":["readonly"],"Class":"AnimationTrack"},{"ValueType":"float","type":"Property","Name":"Length","tags":["readonly"],"Class":"AnimationTrack"},{"ValueType":"AnimationPriority","type":"Property","Name":"Priority","tags":[],"Class":"AnimationTrack"},{"ValueType":"float","type":"Property","Name":"TimePosition","tags":[],"Class":"AnimationTrack"},{"ReturnType":"void","Arguments":[{"Type":"float","Name":"speed","Default":"1"}],"Name":"AdjustSpeed","tags":[],"Class":"AnimationTrack","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"float","Name":"weight","Default":"1"},{"Type":"float","Name":"fadeTime","Default":"0.100000001"}],"Name":"AdjustWeight","tags":[],"Class":"AnimationTrack","type":"Function"},{"ReturnType":"double","Arguments":[{"Type":"string","Name":"keyframeName","Default":null}],"Name":"GetTimeOfKeyframe","tags":[],"Class":"AnimationTrack","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"float","Name":"fadeTime","Default":"0.100000001"},{"Type":"float","Name":"weight","Default":"1"},{"Type":"float","Name":"speed","Default":"1"}],"Name":"Play","tags":[],"Class":"AnimationTrack","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"float","Name":"fadeTime","Default":"0.100000001"}],"Name":"Stop","tags":[],"Class":"AnimationTrack","type":"Function"},{"Arguments":[{"Name":"keyframeName","Type":"string"}],"Name":"KeyframeReached","tags":[],"Class":"AnimationTrack","type":"Event"},{"Arguments":[],"Name":"Stopped","tags":["deprecated"],"Class":"AnimationTrack","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"AnimationTrackState","tags":[]},{"Superclass":"Instance","type":"Class","Name":"Animator","tags":[]},{"ReturnType":"Instance","Arguments":[{"Type":"Instance","Name":"animation","Default":null}],"Name":"LoadAnimation","tags":[],"Class":"Animator","type":"Function"},{"Superclass":"Instance","type":"Class","Name":"AssetService","tags":[]},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"revertUrl","Default":null}],"Name":"SetAssetRevertUrl","tags":["LocalUserSecurity"],"Class":"AssetService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"versionsUrl","Default":null}],"Name":"SetAssetVersionsUrl","tags":["LocalUserSecurity"],"Class":"AssetService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"accessUrl","Default":null}],"Name":"SetPlaceAccessUrl","tags":["LocalUserSecurity"],"Class":"AssetService","type":"Function"},{"ReturnType":"int","Arguments":[{"Type":"string","Name":"placeName","Default":null},{"Type":"int","Name":"templatePlaceID","Default":null},{"Type":"string","Name":"description","Default":""}],"Name":"CreatePlaceAsync","tags":[],"Class":"AssetService","type":"YieldFunction"},{"ReturnType":"int","Arguments":[{"Type":"Instance","Name":"player","Default":null},{"Type":"string","Name":"placeName","Default":null},{"Type":"int","Name":"templatePlaceID","Default":null},{"Type":"string","Name":"description","Default":""}],"Name":"CreatePlaceInPlayerInventoryAsync","tags":[],"Class":"AssetService","type":"YieldFunction"},{"ReturnType":"Dictionary","Arguments":[{"Type":"int","Name":"placeId","Default":null},{"Type":"int","Name":"pageNum","Default":"1"}],"Name":"GetAssetVersions","tags":[],"Class":"AssetService","type":"YieldFunction"},{"ReturnType":"int","Arguments":[{"Type":"int","Name":"creationID","Default":null}],"Name":"GetCreatorAssetID","tags":[],"Class":"AssetService","type":"YieldFunction"},{"ReturnType":"Instance","Arguments":[],"Name":"GetGamePlacesAsync","tags":[],"Class":"AssetService","type":"YieldFunction"},{"ReturnType":"Dictionary","Arguments":[{"Type":"int","Name":"placeId","Default":null}],"Name":"GetPlacePermissions","tags":[],"Class":"AssetService","type":"YieldFunction"},{"ReturnType":"bool","Arguments":[{"Type":"int","Name":"placeId","Default":null},{"Type":"int","Name":"versionNumber","Default":null}],"Name":"RevertAsset","tags":[],"Class":"AssetService","type":"YieldFunction"},{"ReturnType":"void","Arguments":[],"Name":"SavePlaceAsync","tags":[],"Class":"AssetService","type":"YieldFunction"},{"ReturnType":"bool","Arguments":[{"Type":"int","Name":"placeId","Default":null},{"Type":"AccessType","Name":"accessType","Default":"Everyone"},{"Type":"Array","Name":"inviteList","Default":"{}"}],"Name":"SetPlacePermissions","tags":[],"Class":"AssetService","type":"YieldFunction"},{"Superclass":"Instance","type":"Class","Name":"Attachment","tags":[]},{"ValueType":"Vector3","type":"Property","Name":"Axis","tags":[],"Class":"Attachment"},{"ValueType":"CoordinateFrame","type":"Property","Name":"CFrame","tags":[],"Class":"Attachment"},{"ValueType":"Vector3","type":"Property","Name":"Position","tags":[],"Class":"Attachment"},{"ValueType":"Vector3","type":"Property","Name":"Rotation","tags":[],"Class":"Attachment"},{"ValueType":"Vector3","type":"Property","Name":"SecondaryAxis","tags":[],"Class":"Attachment"},{"ValueType":"Vector3","type":"Property","Name":"WorldAxis","tags":["readonly"],"Class":"Attachment"},{"ValueType":"Vector3","type":"Property","Name":"WorldPosition","tags":["readonly"],"Class":"Attachment"},{"ValueType":"Vector3","type":"Property","Name":"WorldRotation","tags":["readonly"],"Class":"Attachment"},{"ValueType":"Vector3","type":"Property","Name":"WorldSecondaryAxis","tags":["readonly"],"Class":"Attachment"},{"ReturnType":"Vector3","Arguments":[],"Name":"GetAxis","tags":[],"Class":"Attachment","type":"Function"},{"ReturnType":"Vector3","Arguments":[],"Name":"GetSecondaryAxis","tags":[],"Class":"Attachment","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Vector3","Name":"axis","Default":null}],"Name":"SetAxis","tags":[],"Class":"Attachment","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Vector3","Name":"axis","Default":null}],"Name":"SetSecondaryAxis","tags":[],"Class":"Attachment","type":"Function"},{"Superclass":"Instance","type":"Class","Name":"BadgeService","tags":["notCreatable"]},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"url","Default":null}],"Name":"SetAwardBadgeUrl","tags":["LocalUserSecurity"],"Class":"BadgeService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"seconds","Default":null}],"Name":"SetHasBadgeCooldown","tags":["LocalUserSecurity"],"Class":"BadgeService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"url","Default":null}],"Name":"SetHasBadgeUrl","tags":["LocalUserSecurity"],"Class":"BadgeService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"url","Default":null}],"Name":"SetIsBadgeDisabledUrl","tags":["LocalUserSecurity"],"Class":"BadgeService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"url","Default":null}],"Name":"SetIsBadgeLegalUrl","tags":["LocalUserSecurity"],"Class":"BadgeService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"placeId","Default":null}],"Name":"SetPlaceId","tags":["LocalUserSecurity"],"Class":"BadgeService","type":"Function"},{"ReturnType":"bool","Arguments":[{"Type":"int","Name":"userId","Default":null},{"Type":"int","Name":"badgeId","Default":null}],"Name":"AwardBadge","tags":[],"Class":"BadgeService","type":"YieldFunction"},{"ReturnType":"bool","Arguments":[{"Type":"int","Name":"badgeId","Default":null}],"Name":"IsDisabled","tags":[],"Class":"BadgeService","type":"YieldFunction"},{"ReturnType":"bool","Arguments":[{"Type":"int","Name":"badgeId","Default":null}],"Name":"IsLegal","tags":[],"Class":"BadgeService","type":"YieldFunction"},{"ReturnType":"bool","Arguments":[{"Type":"int","Name":"userId","Default":null},{"Type":"int","Name":"badgeId","Default":null}],"Name":"UserHasBadge","tags":[],"Class":"BadgeService","type":"YieldFunction"},{"Arguments":[{"Name":"message","Type":"string"},{"Name":"userId","Type":"int"},{"Name":"badgeId","Type":"int"}],"Name":"BadgeAwarded","tags":["RobloxScriptSecurity"],"Class":"BadgeService","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"BasePlayerGui","tags":[]},{"Superclass":"BasePlayerGui","type":"Class","Name":"CoreGui","tags":["notCreatable","notbrowsable"]},{"ValueType":"Object","type":"Property","Name":"SelectionImageObject","tags":["RobloxScriptSecurity"],"Class":"CoreGui"},{"ValueType":"int","type":"Property","Name":"Version","tags":["readonly"],"Class":"CoreGui"},{"Superclass":"BasePlayerGui","type":"Class","Name":"PlayerGui","tags":["notCreatable"]},{"ValueType":"Object","type":"Property","Name":"SelectionImageObject","tags":[],"Class":"PlayerGui"},{"ReturnType":"float","Arguments":[],"Name":"GetTopbarTransparency","tags":[],"Class":"PlayerGui","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"float","Name":"transparency","Default":null}],"Name":"SetTopbarTransparency","tags":[],"Class":"PlayerGui","type":"Function"},{"Arguments":[{"Name":"transparency","Type":"float"}],"Name":"TopbarTransparencyChangedSignal","tags":[],"Class":"PlayerGui","type":"Event"},{"Superclass":"BasePlayerGui","type":"Class","Name":"StarterGui","tags":[]},{"ValueType":"bool","type":"Property","Name":"ResetPlayerGuiOnSpawn","tags":[],"Class":"StarterGui"},{"ValueType":"bool","type":"Property","Name":"ShowDevelopmentGui","tags":[],"Class":"StarterGui"},{"ReturnType":"bool","Arguments":[{"Type":"CoreGuiType","Name":"coreGuiType","Default":null}],"Name":"GetCoreGuiEnabled","tags":[],"Class":"StarterGui","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"parameterName","Default":null},{"Type":"Function","Name":"getFunction","Default":null}],"Name":"RegisterGetCore","tags":["RobloxScriptSecurity"],"Class":"StarterGui","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"parameterName","Default":null},{"Type":"Function","Name":"setFunction","Default":null}],"Name":"RegisterSetCore","tags":["RobloxScriptSecurity"],"Class":"StarterGui","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"parameterName","Default":null},{"Type":"Variant","Name":"value","Default":null}],"Name":"SetCore","tags":[],"Class":"StarterGui","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"CoreGuiType","Name":"coreGuiType","Default":null},{"Type":"bool","Name":"enabled","Default":null}],"Name":"SetCoreGuiEnabled","tags":[],"Class":"StarterGui","type":"Function"},{"ReturnType":"Variant","Arguments":[{"Type":"string","Name":"parameterName","Default":null}],"Name":"GetCore","tags":[],"Class":"StarterGui","type":"YieldFunction"},{"Arguments":[{"Name":"coreGuiType","Type":"CoreGuiType"},{"Name":"enabled","Type":"bool"}],"Name":"CoreGuiChangedSignal","tags":["RobloxScriptSecurity"],"Class":"StarterGui","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"BinaryStringValue","tags":[]},{"Superclass":"Instance","type":"Class","Name":"BindableEvent","tags":[]},{"ReturnType":"void","Arguments":[{"Type":"Tuple","Name":"arguments","Default":null}],"Name":"Fire","tags":[],"Class":"BindableEvent","type":"Function"},{"Arguments":[{"Name":"arguments","Type":"Tuple"}],"Name":"Event","tags":[],"Class":"BindableEvent","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"BindableFunction","tags":[]},{"ReturnType":"Tuple","Arguments":[{"Type":"Tuple","Name":"arguments","Default":null}],"Name":"Invoke","tags":[],"Class":"BindableFunction","type":"YieldFunction"},{"ReturnType":"Tuple","Arguments":[{"Name":"arguments","Type":"Tuple"}],"Name":"OnInvoke","tags":[],"Class":"BindableFunction","type":"Callback"},{"Superclass":"Instance","type":"Class","Name":"BodyMover","tags":[]},{"Superclass":"BodyMover","type":"Class","Name":"BodyAngularVelocity","tags":[]},{"ValueType":"Vector3","type":"Property","Name":"AngularVelocity","tags":[],"Class":"BodyAngularVelocity"},{"ValueType":"Vector3","type":"Property","Name":"MaxTorque","tags":[],"Class":"BodyAngularVelocity"},{"ValueType":"float","type":"Property","Name":"P","tags":[],"Class":"BodyAngularVelocity"},{"ValueType":"Vector3","type":"Property","Name":"angularvelocity","tags":["deprecated"],"Class":"BodyAngularVelocity"},{"ValueType":"Vector3","type":"Property","Name":"maxTorque","tags":["deprecated"],"Class":"BodyAngularVelocity"},{"Superclass":"BodyMover","type":"Class","Name":"BodyForce","tags":[]},{"ValueType":"Vector3","type":"Property","Name":"Force","tags":[],"Class":"BodyForce"},{"ValueType":"Vector3","type":"Property","Name":"force","tags":["deprecated"],"Class":"BodyForce"},{"Superclass":"BodyMover","type":"Class","Name":"BodyGyro","tags":[]},{"ValueType":"CoordinateFrame","type":"Property","Name":"CFrame","tags":[],"Class":"BodyGyro"},{"ValueType":"float","type":"Property","Name":"D","tags":[],"Class":"BodyGyro"},{"ValueType":"Vector3","type":"Property","Name":"MaxTorque","tags":[],"Class":"BodyGyro"},{"ValueType":"float","type":"Property","Name":"P","tags":[],"Class":"BodyGyro"},{"ValueType":"CoordinateFrame","type":"Property","Name":"cframe","tags":["deprecated"],"Class":"BodyGyro"},{"ValueType":"Vector3","type":"Property","Name":"maxTorque","tags":["deprecated"],"Class":"BodyGyro"},{"Superclass":"BodyMover","type":"Class","Name":"BodyPosition","tags":[]},{"ValueType":"float","type":"Property","Name":"D","tags":[],"Class":"BodyPosition"},{"ValueType":"Vector3","type":"Property","Name":"MaxForce","tags":[],"Class":"BodyPosition"},{"ValueType":"float","type":"Property","Name":"P","tags":[],"Class":"BodyPosition"},{"ValueType":"Vector3","type":"Property","Name":"Position","tags":[],"Class":"BodyPosition"},{"ValueType":"Vector3","type":"Property","Name":"maxForce","tags":["deprecated"],"Class":"BodyPosition"},{"ValueType":"Vector3","type":"Property","Name":"position","tags":["deprecated"],"Class":"BodyPosition"},{"ReturnType":"Vector3","Arguments":[],"Name":"GetLastForce","tags":[],"Class":"BodyPosition","type":"Function"},{"ReturnType":"Vector3","Arguments":[],"Name":"lastForce","tags":["deprecated"],"Class":"BodyPosition","type":"Function"},{"Arguments":[],"Name":"ReachedTarget","tags":[],"Class":"BodyPosition","type":"Event"},{"Superclass":"BodyMover","type":"Class","Name":"BodyThrust","tags":[]},{"ValueType":"Vector3","type":"Property","Name":"Force","tags":[],"Class":"BodyThrust"},{"ValueType":"Vector3","type":"Property","Name":"Location","tags":[],"Class":"BodyThrust"},{"ValueType":"Vector3","type":"Property","Name":"force","tags":["deprecated"],"Class":"BodyThrust"},{"ValueType":"Vector3","type":"Property","Name":"location","tags":["deprecated"],"Class":"BodyThrust"},{"Superclass":"BodyMover","type":"Class","Name":"BodyVelocity","tags":[]},{"ValueType":"Vector3","type":"Property","Name":"MaxForce","tags":[],"Class":"BodyVelocity"},{"ValueType":"float","type":"Property","Name":"P","tags":[],"Class":"BodyVelocity"},{"ValueType":"Vector3","type":"Property","Name":"Velocity","tags":[],"Class":"BodyVelocity"},{"ValueType":"Vector3","type":"Property","Name":"maxForce","tags":["deprecated"],"Class":"BodyVelocity"},{"ValueType":"Vector3","type":"Property","Name":"velocity","tags":["deprecated"],"Class":"BodyVelocity"},{"ReturnType":"Vector3","Arguments":[],"Name":"GetLastForce","tags":[],"Class":"BodyVelocity","type":"Function"},{"ReturnType":"Vector3","Arguments":[],"Name":"lastForce","tags":[],"Class":"BodyVelocity","type":"Function"},{"Superclass":"BodyMover","type":"Class","Name":"RocketPropulsion","tags":[]},{"ValueType":"float","type":"Property","Name":"CartoonFactor","tags":[],"Class":"RocketPropulsion"},{"ValueType":"float","type":"Property","Name":"MaxSpeed","tags":[],"Class":"RocketPropulsion"},{"ValueType":"float","type":"Property","Name":"MaxThrust","tags":[],"Class":"RocketPropulsion"},{"ValueType":"Vector3","type":"Property","Name":"MaxTorque","tags":[],"Class":"RocketPropulsion"},{"ValueType":"Object","type":"Property","Name":"Target","tags":[],"Class":"RocketPropulsion"},{"ValueType":"Vector3","type":"Property","Name":"TargetOffset","tags":[],"Class":"RocketPropulsion"},{"ValueType":"float","type":"Property","Name":"TargetRadius","tags":[],"Class":"RocketPropulsion"},{"ValueType":"float","type":"Property","Name":"ThrustD","tags":[],"Class":"RocketPropulsion"},{"ValueType":"float","type":"Property","Name":"ThrustP","tags":[],"Class":"RocketPropulsion"},{"ValueType":"float","type":"Property","Name":"TurnD","tags":[],"Class":"RocketPropulsion"},{"ValueType":"float","type":"Property","Name":"TurnP","tags":[],"Class":"RocketPropulsion"},{"ReturnType":"void","Arguments":[],"Name":"Abort","tags":[],"Class":"RocketPropulsion","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"Fire","tags":[],"Class":"RocketPropulsion","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"fire","tags":["deprecated"],"Class":"RocketPropulsion","type":"Function"},{"Arguments":[],"Name":"ReachedTarget","tags":[],"Class":"RocketPropulsion","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"BoolValue","tags":[]},{"ValueType":"bool","type":"Property","Name":"Value","tags":[],"Class":"BoolValue"},{"Arguments":[{"Name":"value","Type":"bool"}],"Name":"Changed","tags":[],"Class":"BoolValue","type":"Event"},{"Arguments":[{"Name":"value","Type":"bool"}],"Name":"changed","tags":["deprecated"],"Class":"BoolValue","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"BrickColorValue","tags":[]},{"ValueType":"BrickColor","type":"Property","Name":"Value","tags":[],"Class":"BrickColorValue"},{"Arguments":[{"Name":"value","Type":"BrickColor"}],"Name":"Changed","tags":[],"Class":"BrickColorValue","type":"Event"},{"Arguments":[{"Name":"value","Type":"BrickColor"}],"Name":"changed","tags":["deprecated"],"Class":"BrickColorValue","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"Button","tags":[]},{"ReturnType":"void","Arguments":[{"Type":"bool","Name":"active","Default":null}],"Name":"SetActive","tags":["PluginSecurity"],"Class":"Button","type":"Function"},{"Arguments":[],"Name":"Click","tags":["PluginSecurity"],"Class":"Button","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"CFrameValue","tags":[]},{"ValueType":"CoordinateFrame","type":"Property","Name":"Value","tags":[],"Class":"CFrameValue"},{"Arguments":[{"Name":"value","Type":"CoordinateFrame"}],"Name":"Changed","tags":[],"Class":"CFrameValue","type":"Event"},{"Arguments":[{"Name":"value","Type":"CoordinateFrame"}],"Name":"changed","tags":["deprecated"],"Class":"CFrameValue","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"CacheableContentProvider","tags":[]},{"Superclass":"CacheableContentProvider","type":"Class","Name":"MeshContentProvider","tags":[]},{"Superclass":"CacheableContentProvider","type":"Class","Name":"SolidModelContentProvider","tags":[]},{"Superclass":"CacheableContentProvider","type":"Class","Name":"TextureContentProvider","tags":[]},{"Superclass":"Instance","type":"Class","Name":"Camera","tags":[]},{"ValueType":"CoordinateFrame","type":"Property","Name":"CFrame","tags":[],"Class":"Camera"},{"ValueType":"Object","type":"Property","Name":"CameraSubject","tags":[],"Class":"Camera"},{"ValueType":"CameraType","type":"Property","Name":"CameraType","tags":[],"Class":"Camera"},{"ValueType":"CoordinateFrame","type":"Property","Name":"CoordinateFrame","tags":["deprecated","hidden"],"Class":"Camera"},{"ValueType":"float","type":"Property","Name":"FieldOfView","tags":[],"Class":"Camera"},{"ValueType":"CoordinateFrame","type":"Property","Name":"Focus","tags":[],"Class":"Camera"},{"ValueType":"bool","type":"Property","Name":"HeadLocked","tags":[],"Class":"Camera"},{"ValueType":"float","type":"Property","Name":"HeadScale","tags":[],"Class":"Camera"},{"ValueType":"Vector2","type":"Property","Name":"ViewportSize","tags":["readonly"],"Class":"Camera"},{"ValueType":"CoordinateFrame","type":"Property","Name":"focus","tags":["deprecated"],"Class":"Camera"},{"ReturnType":"float","Arguments":[],"Name":"GetPanSpeed","tags":[],"Class":"Camera","type":"Function"},{"ReturnType":"CoordinateFrame","Arguments":[],"Name":"GetRenderCFrame","tags":[],"Class":"Camera","type":"Function"},{"ReturnType":"float","Arguments":[],"Name":"GetRoll","tags":[],"Class":"Camera","type":"Function"},{"ReturnType":"float","Arguments":[],"Name":"GetTiltSpeed","tags":[],"Class":"Camera","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"CoordinateFrame","Name":"endPos","Default":null},{"Type":"CoordinateFrame","Name":"endFocus","Default":null},{"Type":"float","Name":"duration","Default":null}],"Name":"Interpolate","tags":[],"Class":"Camera","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"units","Default":null}],"Name":"PanUnits","tags":[],"Class":"Camera","type":"Function"},{"ReturnType":"Ray","Arguments":[{"Type":"float","Name":"x","Default":null},{"Type":"float","Name":"y","Default":null},{"Type":"float","Name":"depth","Default":"0"}],"Name":"ScreenPointToRay","tags":[],"Class":"Camera","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"CameraPanMode","Name":"mode","Default":"Classic"}],"Name":"SetCameraPanMode","tags":[],"Class":"Camera","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"float","Name":"rollAngle","Default":null}],"Name":"SetRoll","tags":[],"Class":"Camera","type":"Function"},{"ReturnType":"bool","Arguments":[{"Type":"int","Name":"units","Default":null}],"Name":"TiltUnits","tags":[],"Class":"Camera","type":"Function"},{"ReturnType":"Ray","Arguments":[{"Type":"float","Name":"x","Default":null},{"Type":"float","Name":"y","Default":null},{"Type":"float","Name":"depth","Default":"0"}],"Name":"ViewportPointToRay","tags":[],"Class":"Camera","type":"Function"},{"ReturnType":"Tuple","Arguments":[{"Type":"Vector3","Name":"worldPoint","Default":null}],"Name":"WorldToScreenPoint","tags":[],"Class":"Camera","type":"Function"},{"ReturnType":"Tuple","Arguments":[{"Type":"Vector3","Name":"worldPoint","Default":null}],"Name":"WorldToViewportPoint","tags":[],"Class":"Camera","type":"Function"},{"ReturnType":"bool","Arguments":[{"Type":"float","Name":"distance","Default":null}],"Name":"Zoom","tags":["RobloxScriptSecurity"],"Class":"Camera","type":"Function"},{"Arguments":[{"Name":"entering","Type":"bool"}],"Name":"FirstPersonTransition","tags":["RobloxPlaceSecurity"],"Class":"Camera","type":"Event"},{"Arguments":[],"Name":"InterpolationFinished","tags":[],"Class":"Camera","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"ChangeHistoryService","tags":["notCreatable"]},{"ReturnType":"Tuple","Arguments":[],"Name":"GetCanRedo","tags":["PluginSecurity"],"Class":"ChangeHistoryService","type":"Function"},{"ReturnType":"Tuple","Arguments":[],"Name":"GetCanUndo","tags":["PluginSecurity"],"Class":"ChangeHistoryService","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"Redo","tags":["PluginSecurity"],"Class":"ChangeHistoryService","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"ResetWaypoints","tags":["PluginSecurity"],"Class":"ChangeHistoryService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"bool","Name":"state","Default":null}],"Name":"SetEnabled","tags":["PluginSecurity"],"Class":"ChangeHistoryService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"name","Default":null}],"Name":"SetWaypoint","tags":["PluginSecurity"],"Class":"ChangeHistoryService","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"Undo","tags":["PluginSecurity"],"Class":"ChangeHistoryService","type":"Function"},{"Arguments":[{"Name":"waypoint","Type":"string"}],"Name":"OnRedo","tags":["PluginSecurity"],"Class":"ChangeHistoryService","type":"Event"},{"Arguments":[{"Name":"waypoint","Type":"string"}],"Name":"OnUndo","tags":["PluginSecurity"],"Class":"ChangeHistoryService","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"CharacterAppearance","tags":[]},{"Superclass":"CharacterAppearance","type":"Class","Name":"BodyColors","tags":[]},{"ValueType":"BrickColor","type":"Property","Name":"HeadColor","tags":[],"Class":"BodyColors"},{"ValueType":"BrickColor","type":"Property","Name":"LeftArmColor","tags":[],"Class":"BodyColors"},{"ValueType":"BrickColor","type":"Property","Name":"LeftLegColor","tags":[],"Class":"BodyColors"},{"ValueType":"BrickColor","type":"Property","Name":"RightArmColor","tags":[],"Class":"BodyColors"},{"ValueType":"BrickColor","type":"Property","Name":"RightLegColor","tags":[],"Class":"BodyColors"},{"ValueType":"BrickColor","type":"Property","Name":"TorsoColor","tags":[],"Class":"BodyColors"},{"Superclass":"CharacterAppearance","type":"Class","Name":"CharacterMesh","tags":[]},{"ValueType":"int","type":"Property","Name":"BaseTextureId","tags":[],"Class":"CharacterMesh"},{"ValueType":"BodyPart","type":"Property","Name":"BodyPart","tags":[],"Class":"CharacterMesh"},{"ValueType":"int","type":"Property","Name":"MeshId","tags":[],"Class":"CharacterMesh"},{"ValueType":"int","type":"Property","Name":"OverlayTextureId","tags":[],"Class":"CharacterMesh"},{"Superclass":"CharacterAppearance","type":"Class","Name":"Clothing","tags":[]},{"Superclass":"Clothing","type":"Class","Name":"Pants","tags":[]},{"ValueType":"Content","type":"Property","Name":"PantsTemplate","tags":[],"Class":"Pants"},{"Superclass":"Clothing","type":"Class","Name":"Shirt","tags":[]},{"ValueType":"Content","type":"Property","Name":"ShirtTemplate","tags":[],"Class":"Shirt"},{"Superclass":"CharacterAppearance","type":"Class","Name":"ShirtGraphic","tags":[]},{"ValueType":"Content","type":"Property","Name":"Graphic","tags":[],"Class":"ShirtGraphic"},{"Superclass":"CharacterAppearance","type":"Class","Name":"Skin","tags":["deprecated"]},{"ValueType":"BrickColor","type":"Property","Name":"SkinColor","tags":[],"Class":"Skin"},{"Superclass":"Instance","type":"Class","Name":"Chat","tags":["notCreatable"]},{"ReturnType":"void","Arguments":[{"Type":"Instance","Name":"partOrCharacter","Default":null},{"Type":"string","Name":"message","Default":null},{"Type":"ChatColor","Name":"color","Default":"Blue"}],"Name":"Chat","tags":[],"Class":"Chat","type":"Function"},{"ReturnType":"string","Arguments":[{"Type":"string","Name":"stringToFilter","Default":null},{"Type":"Instance","Name":"playerFrom","Default":null},{"Type":"Instance","Name":"playerTo","Default":null}],"Name":"FilterStringAsync","tags":[],"Class":"Chat","type":"YieldFunction"},{"ReturnType":"string","Arguments":[{"Type":"string","Name":"stringToFilter","Default":null},{"Type":"Instance","Name":"playerToFilterFor","Default":null}],"Name":"FilterStringForPlayerAsync","tags":[],"Class":"Chat","type":"YieldFunction"},{"Arguments":[{"Name":"part","Type":"Instance"},{"Name":"message","Type":"string"},{"Name":"color","Type":"ChatColor"}],"Name":"Chatted","tags":[],"Class":"Chat","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"ChatFilter","tags":["notCreatable"]},{"Superclass":"Instance","type":"Class","Name":"ClickDetector","tags":[]},{"ValueType":"float","type":"Property","Name":"MaxActivationDistance","tags":[],"Class":"ClickDetector"},{"Arguments":[{"Name":"playerWhoClicked","Type":"Instance"}],"Name":"MouseClick","tags":[],"Class":"ClickDetector","type":"Event"},{"Arguments":[{"Name":"playerWhoHovered","Type":"Instance"}],"Name":"MouseHoverEnter","tags":[],"Class":"ClickDetector","type":"Event"},{"Arguments":[{"Name":"playerWhoHovered","Type":"Instance"}],"Name":"MouseHoverLeave","tags":[],"Class":"ClickDetector","type":"Event"},{"Arguments":[{"Name":"playerWhoClicked","Type":"Instance"}],"Name":"mouseClick","tags":["deprecated"],"Class":"ClickDetector","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"ClusterPacketCache","tags":[]},{"Superclass":"Instance","type":"Class","Name":"CollectionService","tags":[]},{"ReturnType":"Objects","Arguments":[{"Type":"string","Name":"class","Default":null}],"Name":"GetCollection","tags":[],"Class":"CollectionService","type":"Function"},{"Arguments":[{"Name":"instance","Type":"Instance"}],"Name":"ItemAdded","tags":[],"Class":"CollectionService","type":"Event"},{"Arguments":[{"Name":"instance","Type":"Instance"}],"Name":"ItemRemoved","tags":[],"Class":"CollectionService","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"Color3Value","tags":[]},{"ValueType":"Color3","type":"Property","Name":"Value","tags":[],"Class":"Color3Value"},{"Arguments":[{"Name":"value","Type":"Color3"}],"Name":"Changed","tags":[],"Class":"Color3Value","type":"Event"},{"Arguments":[{"Name":"value","Type":"Color3"}],"Name":"changed","tags":["deprecated"],"Class":"Color3Value","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"Configuration","tags":[]},{"Superclass":"Instance","type":"Class","Name":"Constraint","tags":[]},{"ValueType":"Object","type":"Property","Name":"Attachment0","tags":[],"Class":"Constraint"},{"ValueType":"Object","type":"Property","Name":"Attachment1","tags":[],"Class":"Constraint"},{"ValueType":"bool","type":"Property","Name":"Enabled","tags":[],"Class":"Constraint"},{"Superclass":"Constraint","type":"Class","Name":"BallSocketConstraint","tags":[]},{"ValueType":"bool","type":"Property","Name":"LimitsEnabled","tags":[],"Class":"BallSocketConstraint"},{"ValueType":"float","type":"Property","Name":"Restitution","tags":[],"Class":"BallSocketConstraint"},{"ValueType":"float","type":"Property","Name":"UpperAngle","tags":[],"Class":"BallSocketConstraint"},{"Superclass":"Constraint","type":"Class","Name":"HingeConstraint","tags":[]},{"ValueType":"ActuatorType","type":"Property","Name":"ActuatorType","tags":[],"Class":"HingeConstraint"},{"ValueType":"float","type":"Property","Name":"AngularSpeed","tags":[],"Class":"HingeConstraint"},{"ValueType":"float","type":"Property","Name":"AngularVelocity","tags":[],"Class":"HingeConstraint"},{"ValueType":"float","type":"Property","Name":"CurrentAngle","tags":["readonly"],"Class":"HingeConstraint"},{"ValueType":"bool","type":"Property","Name":"LimitsEnabled","tags":[],"Class":"HingeConstraint"},{"ValueType":"float","type":"Property","Name":"LowerAngle","tags":[],"Class":"HingeConstraint"},{"ValueType":"float","type":"Property","Name":"MotorMaxAcceleration","tags":[],"Class":"HingeConstraint"},{"ValueType":"float","type":"Property","Name":"MotorMaxTorque","tags":[],"Class":"HingeConstraint"},{"ValueType":"float","type":"Property","Name":"Restitution","tags":[],"Class":"HingeConstraint"},{"ValueType":"float","type":"Property","Name":"ServoMaxTorque","tags":[],"Class":"HingeConstraint"},{"ValueType":"float","type":"Property","Name":"TargetAngle","tags":[],"Class":"HingeConstraint"},{"ValueType":"float","type":"Property","Name":"UpperAngle","tags":[],"Class":"HingeConstraint"},{"Superclass":"Constraint","type":"Class","Name":"MoveToConstraint","tags":[]},{"ValueType":"float","type":"Property","Name":"MaxForce","tags":[],"Class":"MoveToConstraint"},{"ValueType":"float","type":"Property","Name":"StabilizingDistance","tags":[],"Class":"MoveToConstraint"},{"ValueType":"float","type":"Property","Name":"Velocity","tags":[],"Class":"MoveToConstraint"},{"Superclass":"Constraint","type":"Class","Name":"RodConstraint","tags":[]},{"ValueType":"float","type":"Property","Name":"CurrentDistance","tags":["readonly"],"Class":"RodConstraint"},{"ValueType":"float","type":"Property","Name":"Length","tags":[],"Class":"RodConstraint"},{"Superclass":"Constraint","type":"Class","Name":"RopeConstraint","tags":[]},{"ValueType":"float","type":"Property","Name":"CurrentLength","tags":["readonly"],"Class":"RopeConstraint"},{"ValueType":"float","type":"Property","Name":"Length","tags":[],"Class":"RopeConstraint"},{"ValueType":"float","type":"Property","Name":"Restitution","tags":[],"Class":"RopeConstraint"},{"Superclass":"Constraint","type":"Class","Name":"SlidingBallConstraint","tags":[]},{"ValueType":"ActuatorType","type":"Property","Name":"ActuatorType","tags":[],"Class":"SlidingBallConstraint"},{"ValueType":"float","type":"Property","Name":"CurrentPosition","tags":["readonly"],"Class":"SlidingBallConstraint"},{"ValueType":"bool","type":"Property","Name":"LimitsEnabled","tags":[],"Class":"SlidingBallConstraint"},{"ValueType":"float","type":"Property","Name":"LowerLimit","tags":[],"Class":"SlidingBallConstraint"},{"ValueType":"float","type":"Property","Name":"MotorMaxAcceleration","tags":[],"Class":"SlidingBallConstraint"},{"ValueType":"float","type":"Property","Name":"MotorMaxForce","tags":[],"Class":"SlidingBallConstraint"},{"ValueType":"float","type":"Property","Name":"Restitution","tags":[],"Class":"SlidingBallConstraint"},{"ValueType":"float","type":"Property","Name":"ServoMaxForce","tags":[],"Class":"SlidingBallConstraint"},{"ValueType":"float","type":"Property","Name":"Speed","tags":[],"Class":"SlidingBallConstraint"},{"ValueType":"float","type":"Property","Name":"TargetPosition","tags":[],"Class":"SlidingBallConstraint"},{"ValueType":"float","type":"Property","Name":"UpperLimit","tags":[],"Class":"SlidingBallConstraint"},{"ValueType":"float","type":"Property","Name":"Velocity","tags":[],"Class":"SlidingBallConstraint"},{"Superclass":"SlidingBallConstraint","type":"Class","Name":"CylindricalConstraint","tags":[]},{"ValueType":"float","type":"Property","Name":"AzimuthalAngle","tags":[],"Class":"CylindricalConstraint"},{"ValueType":"float","type":"Property","Name":"InclinationAngle","tags":[],"Class":"CylindricalConstraint"},{"Superclass":"SlidingBallConstraint","type":"Class","Name":"PrismaticConstraint","tags":[]},{"Superclass":"Constraint","type":"Class","Name":"SpringConstraint","tags":[]},{"ValueType":"float","type":"Property","Name":"CurrentLength","tags":["readonly"],"Class":"SpringConstraint"},{"ValueType":"float","type":"Property","Name":"Damping","tags":[],"Class":"SpringConstraint"},{"ValueType":"float","type":"Property","Name":"FreeLength","tags":[],"Class":"SpringConstraint"},{"ValueType":"bool","type":"Property","Name":"LimitsEnabled","tags":[],"Class":"SpringConstraint"},{"ValueType":"float","type":"Property","Name":"MaxForce","tags":[],"Class":"SpringConstraint"},{"ValueType":"float","type":"Property","Name":"MaxLength","tags":[],"Class":"SpringConstraint"},{"ValueType":"float","type":"Property","Name":"MinLength","tags":[],"Class":"SpringConstraint"},{"ValueType":"float","type":"Property","Name":"Stiffness","tags":[],"Class":"SpringConstraint"},{"Superclass":"Instance","type":"Class","Name":"ContentFilter","tags":[]},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"outstandingRequests","Default":null},{"Type":"int","Name":"cacheSize","Default":null}],"Name":"SetFilterLimits","tags":["LocalUserSecurity"],"Class":"ContentFilter","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"url","Default":null}],"Name":"SetFilterUrl","tags":["LocalUserSecurity"],"Class":"ContentFilter","type":"Function"},{"Superclass":"Instance","type":"Class","Name":"ContentProvider","tags":[]},{"ValueType":"string","type":"Property","Name":"BaseUrl","tags":["readonly"],"Class":"ContentProvider"},{"ValueType":"int","type":"Property","Name":"RequestQueueSize","tags":["readonly"],"Class":"ContentProvider"},{"ReturnType":"void","Arguments":[{"Type":"Content","Name":"contentId","Default":null}],"Name":"Preload","tags":[],"Class":"ContentProvider","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"url","Default":null}],"Name":"SetAssetUrl","tags":["LocalUserSecurity"],"Class":"ContentProvider","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"url","Default":null}],"Name":"SetBaseUrl","tags":["LocalUserSecurity"],"Class":"ContentProvider","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"count","Default":null}],"Name":"SetCacheSize","tags":["LocalUserSecurity"],"Class":"ContentProvider","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"count","Default":null}],"Name":"SetThreadPool","tags":["LocalUserSecurity"],"Class":"ContentProvider","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Array","Name":"contentIdList","Default":null}],"Name":"PreloadAsync","tags":[],"Class":"ContentProvider","type":"YieldFunction"},{"Superclass":"Instance","type":"Class","Name":"ContextActionService","tags":[]},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"actionName","Default":null},{"Type":"Function","Name":"functionToBind","Default":null},{"Type":"bool","Name":"createTouchButton","Default":null},{"Type":"Tuple","Name":"inputTypes","Default":null}],"Name":"BindAction","tags":[],"Class":"ContextActionService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"actionName","Default":null},{"Type":"Function","Name":"functionToBind","Default":null},{"Type":"bool","Name":"createTouchButton","Default":null},{"Type":"Tuple","Name":"inputTypes","Default":null}],"Name":"BindActionToInputTypes","tags":["deprecated"],"Class":"ContextActionService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"UserInputType","Name":"userInputTypeForActivation","Default":null},{"Type":"KeyCode","Name":"keyCodeForActivation","Default":"Unknown"}],"Name":"BindActivate","tags":[],"Class":"ContextActionService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"actionName","Default":null},{"Type":"Function","Name":"functionToBind","Default":null},{"Type":"bool","Name":"createTouchButton","Default":null},{"Type":"Tuple","Name":"inputTypes","Default":null}],"Name":"BindCoreAction","tags":["RobloxScriptSecurity"],"Class":"ContextActionService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"actionName","Default":null},{"Type":"UserInputState","Name":"state","Default":null},{"Type":"Instance","Name":"inputObject","Default":null}],"Name":"CallFunction","tags":["RobloxScriptSecurity"],"Class":"ContextActionService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"actionName","Default":null},{"Type":"Instance","Name":"actionButton","Default":null}],"Name":"FireActionButtonFoundSignal","tags":["RobloxScriptSecurity"],"Class":"ContextActionService","type":"Function"},{"ReturnType":"Dictionary","Arguments":[],"Name":"GetAllBoundActionInfo","tags":[],"Class":"ContextActionService","type":"Function"},{"ReturnType":"Dictionary","Arguments":[{"Type":"string","Name":"actionName","Default":null}],"Name":"GetBoundActionInfo","tags":[],"Class":"ContextActionService","type":"Function"},{"ReturnType":"string","Arguments":[],"Name":"GetCurrentLocalToolIcon","tags":[],"Class":"ContextActionService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"actionName","Default":null},{"Type":"string","Name":"description","Default":null}],"Name":"SetDescription","tags":[],"Class":"ContextActionService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"actionName","Default":null},{"Type":"string","Name":"image","Default":null}],"Name":"SetImage","tags":[],"Class":"ContextActionService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"actionName","Default":null},{"Type":"UDim2","Name":"position","Default":null}],"Name":"SetPosition","tags":[],"Class":"ContextActionService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"actionName","Default":null},{"Type":"string","Name":"title","Default":null}],"Name":"SetTitle","tags":[],"Class":"ContextActionService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"actionName","Default":null}],"Name":"UnbindAction","tags":[],"Class":"ContextActionService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"UserInputType","Name":"userInputTypeForActivation","Default":null},{"Type":"KeyCode","Name":"keyCodeForActivation","Default":"Unknown"}],"Name":"UnbindActivate","tags":[],"Class":"ContextActionService","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"UnbindAllActions","tags":[],"Class":"ContextActionService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"actionName","Default":null}],"Name":"UnbindCoreAction","tags":["RobloxScriptSecurity"],"Class":"ContextActionService","type":"Function"},{"ReturnType":"Instance","Arguments":[{"Type":"string","Name":"actionName","Default":null}],"Name":"GetButton","tags":[],"Class":"ContextActionService","type":"YieldFunction"},{"Arguments":[{"Name":"actionAdded","Type":"string"},{"Name":"createTouchButton","Type":"bool"},{"Name":"functionInfoTable","Type":"Dictionary"}],"Name":"BoundActionAdded","tags":["RobloxScriptSecurity"],"Class":"ContextActionService","type":"Event"},{"Arguments":[{"Name":"actionChanged","Type":"string"},{"Name":"changeName","Type":"string"},{"Name":"changeTable","Type":"Dictionary"}],"Name":"BoundActionChanged","tags":["RobloxScriptSecurity"],"Class":"ContextActionService","type":"Event"},{"Arguments":[{"Name":"actionRemoved","Type":"string"},{"Name":"functionInfoTable","Type":"Dictionary"}],"Name":"BoundActionRemoved","tags":["RobloxScriptSecurity"],"Class":"ContextActionService","type":"Event"},{"Arguments":[{"Name":"actionName","Type":"string"}],"Name":"GetActionButtonEvent","tags":["RobloxScriptSecurity"],"Class":"ContextActionService","type":"Event"},{"Arguments":[{"Name":"toolEquipped","Type":"Instance"}],"Name":"LocalToolEquipped","tags":[],"Class":"ContextActionService","type":"Event"},{"Arguments":[{"Name":"toolUnequipped","Type":"Instance"}],"Name":"LocalToolUnequipped","tags":[],"Class":"ContextActionService","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"Controller","tags":[]},{"ReturnType":"void","Arguments":[{"Type":"Button","Name":"button","Default":null},{"Type":"string","Name":"caption","Default":null}],"Name":"BindButton","tags":[],"Class":"Controller","type":"Function"},{"ReturnType":"bool","Arguments":[{"Type":"Button","Name":"button","Default":null}],"Name":"GetButton","tags":[],"Class":"Controller","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Button","Name":"button","Default":null}],"Name":"UnbindButton","tags":[],"Class":"Controller","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Button","Name":"button","Default":null},{"Type":"string","Name":"caption","Default":null}],"Name":"bindButton","tags":["deprecated"],"Class":"Controller","type":"Function"},{"ReturnType":"bool","Arguments":[{"Type":"Button","Name":"button","Default":null}],"Name":"getButton","tags":["deprecated"],"Class":"Controller","type":"Function"},{"Arguments":[{"Name":"button","Type":"Button"}],"Name":"ButtonChanged","tags":[],"Class":"Controller","type":"Event"},{"Superclass":"Controller","type":"Class","Name":"HumanoidController","tags":[]},{"Superclass":"Controller","type":"Class","Name":"SkateboardController","tags":[]},{"ValueType":"float","type":"Property","Name":"Steer","tags":["readonly"],"Class":"SkateboardController"},{"ValueType":"float","type":"Property","Name":"Throttle","tags":["readonly"],"Class":"SkateboardController"},{"Arguments":[{"Name":"axis","Type":"string"}],"Name":"AxisChanged","tags":[],"Class":"SkateboardController","type":"Event"},{"Superclass":"Controller","type":"Class","Name":"VehicleController","tags":[]},{"Superclass":"Instance","type":"Class","Name":"ControllerService","tags":["notCreatable"]},{"Superclass":"Instance","type":"Class","Name":"CookiesService","tags":[]},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"key","Default":null}],"Name":"DeleteCookieValue","tags":["RobloxSecurity"],"Class":"CookiesService","type":"Function"},{"ReturnType":"string","Arguments":[{"Type":"string","Name":"key","Default":null}],"Name":"GetCookieValue","tags":["RobloxSecurity"],"Class":"CookiesService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"key","Default":null},{"Type":"string","Name":"value","Default":null}],"Name":"SetCookieValue","tags":["RobloxSecurity"],"Class":"CookiesService","type":"Function"},{"Superclass":"Instance","type":"Class","Name":"CustomEvent","tags":["deprecated"]},{"ReturnType":"Objects","Arguments":[],"Name":"GetAttachedReceivers","tags":[],"Class":"CustomEvent","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"float","Name":"newValue","Default":null}],"Name":"SetValue","tags":[],"Class":"CustomEvent","type":"Function"},{"Arguments":[{"Name":"receiver","Type":"Instance"}],"Name":"ReceiverConnected","tags":[],"Class":"CustomEvent","type":"Event"},{"Arguments":[{"Name":"receiver","Type":"Instance"}],"Name":"ReceiverDisconnected","tags":[],"Class":"CustomEvent","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"CustomEventReceiver","tags":["deprecated"]},{"ValueType":"Object","type":"Property","Name":"Source","tags":[],"Class":"CustomEventReceiver"},{"ReturnType":"float","Arguments":[],"Name":"GetCurrentValue","tags":[],"Class":"CustomEventReceiver","type":"Function"},{"Arguments":[{"Name":"event","Type":"Instance"}],"Name":"EventConnected","tags":[],"Class":"CustomEventReceiver","type":"Event"},{"Arguments":[{"Name":"event","Type":"Instance"}],"Name":"EventDisconnected","tags":[],"Class":"CustomEventReceiver","type":"Event"},{"Arguments":[{"Name":"newValue","Type":"float"}],"Name":"SourceValueChanged","tags":[],"Class":"CustomEventReceiver","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"DataModelMesh","tags":["notbrowsable"]},{"ValueType":"Vector3","type":"Property","Name":"Offset","tags":[],"Class":"DataModelMesh"},{"ValueType":"Vector3","type":"Property","Name":"Scale","tags":[],"Class":"DataModelMesh"},{"ValueType":"Vector3","type":"Property","Name":"VertexColor","tags":[],"Class":"DataModelMesh"},{"Superclass":"DataModelMesh","type":"Class","Name":"BevelMesh","tags":["deprecated","notbrowsable"]},{"Superclass":"BevelMesh","type":"Class","Name":"BlockMesh","tags":[]},{"Superclass":"BevelMesh","type":"Class","Name":"CylinderMesh","tags":[]},{"Superclass":"DataModelMesh","type":"Class","Name":"FileMesh","tags":[]},{"ValueType":"Content","type":"Property","Name":"MeshId","tags":[],"Class":"FileMesh"},{"ValueType":"Content","type":"Property","Name":"TextureId","tags":[],"Class":"FileMesh"},{"Superclass":"FileMesh","type":"Class","Name":"SpecialMesh","tags":[]},{"ValueType":"MeshType","type":"Property","Name":"MeshType","tags":[],"Class":"SpecialMesh"},{"Superclass":"Instance","type":"Class","Name":"DataStoreService","tags":["notCreatable"]},{"ValueType":"bool","type":"Property","Name":"LegacyNamingScheme","tags":["LocalUserSecurity"],"Class":"DataStoreService"},{"ReturnType":"Instance","Arguments":[{"Type":"string","Name":"name","Default":null},{"Type":"string","Name":"scope","Default":"global"}],"Name":"GetDataStore","tags":[],"Class":"DataStoreService","type":"Function"},{"ReturnType":"Instance","Arguments":[],"Name":"GetGlobalDataStore","tags":[],"Class":"DataStoreService","type":"Function"},{"ReturnType":"Instance","Arguments":[{"Type":"string","Name":"name","Default":null},{"Type":"string","Name":"scope","Default":"global"}],"Name":"GetOrderedDataStore","tags":[],"Class":"DataStoreService","type":"Function"},{"Superclass":"Instance","type":"Class","Name":"Debris","tags":[]},{"ValueType":"int","type":"Property","Name":"MaxItems","tags":["deprecated"],"Class":"Debris"},{"ReturnType":"void","Arguments":[{"Type":"Instance","Name":"item","Default":null},{"Type":"double","Name":"lifetime","Default":"10"}],"Name":"AddItem","tags":[],"Class":"Debris","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"bool","Name":"enabled","Default":null}],"Name":"SetLegacyMaxItems","tags":["LocalUserSecurity"],"Class":"Debris","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Instance","Name":"item","Default":null},{"Type":"double","Name":"lifetime","Default":"10"}],"Name":"addItem","tags":["deprecated"],"Class":"Debris","type":"Function"},{"Superclass":"Instance","type":"Class","Name":"DebugSettings","tags":["notbrowsable"]},{"ValueType":"int","type":"Property","Name":"AltCdnFailureCount","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"int","type":"Property","Name":"AltCdnSuccessCount","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"int","type":"Property","Name":"AvailablePhysicalMemory","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"int","type":"Property","Name":"BlockMeshSize","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"string","type":"Property","Name":"CPU","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"int","type":"Property","Name":"CdnFailureCount","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"double","type":"Property","Name":"CdnResponceTime","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"int","type":"Property","Name":"CdnSuccessCount","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"int","type":"Property","Name":"CpuCount","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"int","type":"Property","Name":"CpuSpeed","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"int","type":"Property","Name":"DataModel","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"double","type":"Property","Name":"ElapsedTime","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"ErrorReporting","type":"Property","Name":"ErrorReporting","tags":[],"Class":"DebugSettings"},{"ValueType":"string","type":"Property","Name":"GfxCard","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"int","type":"Property","Name":"InstanceCount","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"bool","type":"Property","Name":"IsFmodProfilingEnabled","tags":[],"Class":"DebugSettings"},{"ValueType":"bool","type":"Property","Name":"IsProfilingEnabled","tags":[],"Class":"DebugSettings"},{"ValueType":"bool","type":"Property","Name":"IsScriptStackTracingEnabled","tags":[],"Class":"DebugSettings"},{"ValueType":"int","type":"Property","Name":"JobCount","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"double","type":"Property","Name":"LastCdnFailureTimeSpan","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"int","type":"Property","Name":"LuaRamLimit","tags":[],"Class":"DebugSettings"},{"ValueType":"int","type":"Property","Name":"NameDatabaseBytes","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"int","type":"Property","Name":"NameDatabaseSize","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"bool","type":"Property","Name":"OsIs64Bit","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"string","type":"Property","Name":"OsPlatform","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"int","type":"Property","Name":"OsPlatformId","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"string","type":"Property","Name":"OsVer","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"int","type":"Property","Name":"PageFaultsPerSecond","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"int","type":"Property","Name":"PageFileBytes","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"float","type":"Property","Name":"PixelShaderModel","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"int","type":"Property","Name":"PlayerCount","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"int","type":"Property","Name":"PrivateBytes","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"int","type":"Property","Name":"PrivateWorkingSetBytes","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"double","type":"Property","Name":"ProcessCores","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"int","type":"Property","Name":"ProcessorTime","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"double","type":"Property","Name":"ProfilingWindow","tags":[],"Class":"DebugSettings"},{"ValueType":"int","type":"Property","Name":"RAM","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"bool","type":"Property","Name":"ReportExtendedMachineConfiguration","tags":[],"Class":"DebugSettings"},{"ValueType":"bool","type":"Property","Name":"ReportSoundWarnings","tags":[],"Class":"DebugSettings"},{"ValueType":"string","type":"Property","Name":"Resolution","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"int","type":"Property","Name":"RobloxFailureCount","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"string","type":"Property","Name":"RobloxProductName","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"double","type":"Property","Name":"RobloxRespoceTime","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"int","type":"Property","Name":"RobloxSuccessCount","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"string","type":"Property","Name":"RobloxVersion","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"string","type":"Property","Name":"SIMD","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"string","type":"Property","Name":"SystemProductName","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"TickCountSampleMethod","type":"Property","Name":"TickCountPreciseOverride","tags":[],"Class":"DebugSettings"},{"ValueType":"int","type":"Property","Name":"TotalPhysicalMemory","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"int","type":"Property","Name":"TotalProcessorTime","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"float","type":"Property","Name":"VertexShaderModel","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"int","type":"Property","Name":"VideoMemory","tags":["readonly"],"Class":"DebugSettings"},{"ValueType":"int","type":"Property","Name":"VirtualBytes","tags":["readonly"],"Class":"DebugSettings"},{"ReturnType":"void","Arguments":[],"Name":"LegacyScriptMode","tags":["LocalUserSecurity","deprecated"],"Class":"DebugSettings","type":"Function"},{"ReturnType":"Tuple","Arguments":[],"Name":"ResetCdnFailureCounts","tags":["LocalUserSecurity"],"Class":"DebugSettings","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"bool","Name":"value","Default":null}],"Name":"SetBlockingRemove","tags":["LocalUserSecurity"],"Class":"DebugSettings","type":"Function"},{"Superclass":"Instance","type":"Class","Name":"DebuggerBreakpoint","tags":["notCreatable"]},{"ValueType":"string","type":"Property","Name":"Condition","tags":[],"Class":"DebuggerBreakpoint"},{"ValueType":"bool","type":"Property","Name":"IsEnabled","tags":[],"Class":"DebuggerBreakpoint"},{"ValueType":"int","type":"Property","Name":"Line","tags":["readonly"],"Class":"DebuggerBreakpoint"},{"Superclass":"Instance","type":"Class","Name":"DebuggerManager","tags":["notCreatable"]},{"ValueType":"bool","type":"Property","Name":"DebuggingEnabled","tags":["readonly"],"Class":"DebuggerManager"},{"ReturnType":"Instance","Arguments":[{"Type":"Instance","Name":"script","Default":null}],"Name":"AddDebugger","tags":[],"Class":"DebuggerManager","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"EnableDebugging","tags":["LocalUserSecurity"],"Class":"DebuggerManager","type":"Function"},{"ReturnType":"Objects","Arguments":[],"Name":"GetDebuggers","tags":[],"Class":"DebuggerManager","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"Resume","tags":[],"Class":"DebuggerManager","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"StepIn","tags":[],"Class":"DebuggerManager","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"StepOut","tags":[],"Class":"DebuggerManager","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"StepOver","tags":[],"Class":"DebuggerManager","type":"Function"},{"Arguments":[{"Name":"debugger","Type":"Instance"}],"Name":"DebuggerAdded","tags":[],"Class":"DebuggerManager","type":"Event"},{"Arguments":[{"Name":"debugger","Type":"Instance"}],"Name":"DebuggerRemoved","tags":[],"Class":"DebuggerManager","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"DebuggerWatch","tags":[]},{"ValueType":"string","type":"Property","Name":"Expression","tags":[],"Class":"DebuggerWatch"},{"ReturnType":"void","Arguments":[],"Name":"CheckSyntax","tags":[],"Class":"DebuggerWatch","type":"Function"},{"Superclass":"Instance","type":"Class","Name":"Dialog","tags":[]},{"ValueType":"float","type":"Property","Name":"ConversationDistance","tags":[],"Class":"Dialog"},{"ValueType":"string","type":"Property","Name":"GoodbyeDialog","tags":[],"Class":"Dialog"},{"ValueType":"bool","type":"Property","Name":"InUse","tags":[],"Class":"Dialog"},{"ValueType":"string","type":"Property","Name":"InitialPrompt","tags":[],"Class":"Dialog"},{"ValueType":"DialogPurpose","type":"Property","Name":"Purpose","tags":[],"Class":"Dialog"},{"ValueType":"DialogTone","type":"Property","Name":"Tone","tags":[],"Class":"Dialog"},{"ReturnType":"void","Arguments":[{"Type":"Instance","Name":"player","Default":null},{"Type":"Instance","Name":"dialogChoice","Default":null}],"Name":"SignalDialogChoiceSelected","tags":["RobloxScriptSecurity"],"Class":"Dialog","type":"Function"},{"Arguments":[{"Name":"player","Type":"Instance"},{"Name":"dialogChoice","Type":"Instance"}],"Name":"DialogChoiceSelected","tags":[],"Class":"Dialog","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"DialogChoice","tags":[]},{"ValueType":"string","type":"Property","Name":"GoodbyeDialog","tags":[],"Class":"DialogChoice"},{"ValueType":"string","type":"Property","Name":"ResponseDialog","tags":[],"Class":"DialogChoice"},{"ValueType":"string","type":"Property","Name":"UserDialog","tags":[],"Class":"DialogChoice"},{"Superclass":"Instance","type":"Class","Name":"DoubleConstrainedValue","tags":[]},{"ValueType":"double","type":"Property","Name":"ConstrainedValue","tags":["hidden"],"Class":"DoubleConstrainedValue"},{"ValueType":"double","type":"Property","Name":"MaxValue","tags":[],"Class":"DoubleConstrainedValue"},{"ValueType":"double","type":"Property","Name":"MinValue","tags":[],"Class":"DoubleConstrainedValue"},{"ValueType":"double","type":"Property","Name":"Value","tags":[],"Class":"DoubleConstrainedValue"},{"Arguments":[{"Name":"value","Type":"double"}],"Name":"Changed","tags":[],"Class":"DoubleConstrainedValue","type":"Event"},{"Arguments":[{"Name":"value","Type":"double"}],"Name":"changed","tags":["deprecated"],"Class":"DoubleConstrainedValue","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"Dragger","tags":[]},{"ReturnType":"void","Arguments":[{"Type":"Axis","Name":"axis","Default":"X"}],"Name":"AxisRotate","tags":[],"Class":"Dragger","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Instance","Name":"mousePart","Default":null},{"Type":"Vector3","Name":"pointOnMousePart","Default":null},{"Type":"Objects","Name":"parts","Default":null}],"Name":"MouseDown","tags":[],"Class":"Dragger","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Ray","Name":"mouseRay","Default":null}],"Name":"MouseMove","tags":[],"Class":"Dragger","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"MouseUp","tags":[],"Class":"Dragger","type":"Function"},{"Superclass":"Instance","type":"Class","Name":"Explosion","tags":[]},{"ValueType":"float","type":"Property","Name":"BlastPressure","tags":[],"Class":"Explosion"},{"ValueType":"float","type":"Property","Name":"BlastRadius","tags":[],"Class":"Explosion"},{"ValueType":"float","type":"Property","Name":"DestroyJointRadiusPercent","tags":[],"Class":"Explosion"},{"ValueType":"ExplosionType","type":"Property","Name":"ExplosionType","tags":[],"Class":"Explosion"},{"ValueType":"Vector3","type":"Property","Name":"Position","tags":[],"Class":"Explosion"},{"Arguments":[{"Name":"part","Type":"Instance"},{"Name":"distance","Type":"float"}],"Name":"Hit","tags":[],"Class":"Explosion","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"FaceInstance","tags":["notbrowsable"]},{"ValueType":"NormalId","type":"Property","Name":"Face","tags":[],"Class":"FaceInstance"},{"Superclass":"FaceInstance","type":"Class","Name":"Decal","tags":[]},{"ValueType":"float","type":"Property","Name":"LocalTransparencyModifier","tags":["hidden"],"Class":"Decal"},{"ValueType":"float","type":"Property","Name":"Shiny","tags":["deprecated"],"Class":"Decal"},{"ValueType":"float","type":"Property","Name":"Specular","tags":["deprecated"],"Class":"Decal"},{"ValueType":"Content","type":"Property","Name":"Texture","tags":[],"Class":"Decal"},{"ValueType":"float","type":"Property","Name":"Transparency","tags":[],"Class":"Decal"},{"Superclass":"Decal","type":"Class","Name":"Texture","tags":[]},{"ValueType":"float","type":"Property","Name":"StudsPerTileU","tags":[],"Class":"Texture"},{"ValueType":"float","type":"Property","Name":"StudsPerTileV","tags":[],"Class":"Texture"},{"Superclass":"Instance","type":"Class","Name":"Feature","tags":[]},{"ValueType":"NormalId","type":"Property","Name":"FaceId","tags":[],"Class":"Feature"},{"ValueType":"InOut","type":"Property","Name":"InOut","tags":[],"Class":"Feature"},{"ValueType":"LeftRight","type":"Property","Name":"LeftRight","tags":[],"Class":"Feature"},{"ValueType":"TopBottom","type":"Property","Name":"TopBottom","tags":[],"Class":"Feature"},{"Superclass":"Feature","type":"Class","Name":"Hole","tags":["deprecated"]},{"Superclass":"Feature","type":"Class","Name":"MotorFeature","tags":["deprecated"]},{"Superclass":"Instance","type":"Class","Name":"Fire","tags":[]},{"ValueType":"Color3","type":"Property","Name":"Color","tags":[],"Class":"Fire"},{"ValueType":"bool","type":"Property","Name":"Enabled","tags":[],"Class":"Fire"},{"ValueType":"float","type":"Property","Name":"Heat","tags":[],"Class":"Fire"},{"ValueType":"Color3","type":"Property","Name":"SecondaryColor","tags":[],"Class":"Fire"},{"ValueType":"float","type":"Property","Name":"Size","tags":[],"Class":"Fire"},{"ValueType":"float","type":"Property","Name":"size","tags":["deprecated"],"Class":"Fire"},{"Superclass":"Instance","type":"Class","Name":"FlagStandService","tags":[]},{"Superclass":"Instance","type":"Class","Name":"FlyweightService","tags":[]},{"Superclass":"FlyweightService","type":"Class","Name":"CSGDictionaryService","tags":[]},{"Superclass":"FlyweightService","type":"Class","Name":"NonReplicatedCSGDictionaryService","tags":[]},{"Superclass":"Instance","type":"Class","Name":"Folder","tags":[]},{"Superclass":"Instance","type":"Class","Name":"ForceField","tags":[]},{"Superclass":"Instance","type":"Class","Name":"FriendService","tags":["notCreatable"]},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"url","Default":null}],"Name":"SetBreakFriendUrl","tags":["LocalUserSecurity"],"Class":"FriendService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"url","Default":null}],"Name":"SetCreateFriendRequestUrl","tags":["LocalUserSecurity"],"Class":"FriendService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"url","Default":null}],"Name":"SetDeleteFriendRequestUrl","tags":["LocalUserSecurity"],"Class":"FriendService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"bool","Name":"enable","Default":null}],"Name":"SetEnabled","tags":["LocalUserSecurity"],"Class":"FriendService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"url","Default":null}],"Name":"SetFriendsOnlineUrl","tags":["LocalUserSecurity"],"Class":"FriendService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"url","Default":null}],"Name":"SetGetFriendsUrl","tags":["LocalUserSecurity"],"Class":"FriendService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"url","Default":null}],"Name":"SetMakeFriendUrl","tags":["LocalUserSecurity"],"Class":"FriendService","type":"Function"},{"Superclass":"Instance","type":"Class","Name":"FunctionalTest","tags":["deprecated"]},{"ValueType":"string","type":"Property","Name":"Description","tags":[],"Class":"FunctionalTest"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"message","Default":""}],"Name":"Error","tags":[],"Class":"FunctionalTest","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"message","Default":""}],"Name":"Failed","tags":[],"Class":"FunctionalTest","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"message","Default":""}],"Name":"Pass","tags":[],"Class":"FunctionalTest","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"message","Default":""}],"Name":"Passed","tags":[],"Class":"FunctionalTest","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"message","Default":""}],"Name":"Warn","tags":[],"Class":"FunctionalTest","type":"Function"},{"Superclass":"Instance","type":"Class","Name":"GamePassService","tags":[]},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"playerHasPassUrl","Default":null}],"Name":"SetPlayerHasPassUrl","tags":["LocalUserSecurity"],"Class":"GamePassService","type":"Function"},{"ReturnType":"bool","Arguments":[{"Type":"Instance","Name":"player","Default":null},{"Type":"int","Name":"gamePassId","Default":null}],"Name":"PlayerHasPass","tags":[],"Class":"GamePassService","type":"YieldFunction"},{"Superclass":"Instance","type":"Class","Name":"GameSettings","tags":["notbrowsable"]},{"ValueType":"float","type":"Property","Name":"BubbleChatLifetime","tags":[],"Class":"GameSettings"},{"ValueType":"int","type":"Property","Name":"BubbleChatMaxBubbles","tags":[],"Class":"GameSettings"},{"ValueType":"int","type":"Property","Name":"ChatHistory","tags":[],"Class":"GameSettings"},{"ValueType":"int","type":"Property","Name":"ChatScrollLength","tags":[],"Class":"GameSettings"},{"ValueType":"bool","type":"Property","Name":"CollisionSoundEnabled","tags":["deprecated"],"Class":"GameSettings"},{"ValueType":"float","type":"Property","Name":"CollisionSoundVolume","tags":["deprecated"],"Class":"GameSettings"},{"ValueType":"bool","type":"Property","Name":"HardwareMouse","tags":[],"Class":"GameSettings"},{"ValueType":"int","type":"Property","Name":"MaxCollisionSounds","tags":["deprecated"],"Class":"GameSettings"},{"ValueType":"int","type":"Property","Name":"ReportAbuseChatHistory","tags":[],"Class":"GameSettings"},{"ValueType":"bool","type":"Property","Name":"SoftwareSound","tags":[],"Class":"GameSettings"},{"ValueType":"bool","type":"Property","Name":"SoundEnabled","tags":[],"Class":"GameSettings"},{"ValueType":"bool","type":"Property","Name":"VideoCaptureEnabled","tags":[],"Class":"GameSettings"},{"ValueType":"VideoQualitySettings","type":"Property","Name":"VideoQuality","tags":[],"Class":"GameSettings"},{"Arguments":[{"Name":"recording","Type":"bool"}],"Name":"VideoRecordingChangeRequest","tags":["RobloxScriptSecurity"],"Class":"GameSettings","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"GamepadService","tags":[]},{"Superclass":"Instance","type":"Class","Name":"Geometry","tags":[]},{"Superclass":"Instance","type":"Class","Name":"GlobalDataStore","tags":[]},{"ReturnType":"Connection","Arguments":[{"Type":"string","Name":"key","Default":null},{"Type":"Function","Name":"callback","Default":null}],"Name":"OnUpdate","tags":[],"Class":"GlobalDataStore","type":"Function"},{"ReturnType":"Variant","Arguments":[{"Type":"string","Name":"key","Default":null}],"Name":"GetAsync","tags":[],"Class":"GlobalDataStore","type":"YieldFunction"},{"ReturnType":"Variant","Arguments":[{"Type":"string","Name":"key","Default":null},{"Type":"int","Name":"delta","Default":"1"}],"Name":"IncrementAsync","tags":[],"Class":"GlobalDataStore","type":"YieldFunction"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"key","Default":null},{"Type":"Variant","Name":"value","Default":null}],"Name":"SetAsync","tags":[],"Class":"GlobalDataStore","type":"YieldFunction"},{"ReturnType":"Tuple","Arguments":[{"Type":"string","Name":"key","Default":null},{"Type":"Function","Name":"transformFunction","Default":null}],"Name":"UpdateAsync","tags":[],"Class":"GlobalDataStore","type":"YieldFunction"},{"Superclass":"GlobalDataStore","type":"Class","Name":"OrderedDataStore","tags":[]},{"ReturnType":"Instance","Arguments":[{"Type":"bool","Name":"ascending","Default":null},{"Type":"int","Name":"pagesize","Default":null},{"Type":"Variant","Name":"minValue","Default":null},{"Type":"Variant","Name":"maxValue","Default":null}],"Name":"GetSortedAsync","tags":[],"Class":"OrderedDataStore","type":"YieldFunction"},{"Superclass":"Instance","type":"Class","Name":"GroupService","tags":["notCreatable"]},{"ReturnType":"Instance","Arguments":[{"Type":"int","Name":"groupId","Default":null}],"Name":"GetAlliesAsync","tags":[],"Class":"GroupService","type":"YieldFunction"},{"ReturnType":"Instance","Arguments":[{"Type":"int","Name":"groupId","Default":null}],"Name":"GetEnemiesAsync","tags":[],"Class":"GroupService","type":"YieldFunction"},{"ReturnType":"Variant","Arguments":[{"Type":"int","Name":"groupId","Default":null}],"Name":"GetGroupInfoAsync","tags":[],"Class":"GroupService","type":"YieldFunction"},{"ReturnType":"Array","Arguments":[{"Type":"int","Name":"userId","Default":null}],"Name":"GetGroupsAsync","tags":[],"Class":"GroupService","type":"YieldFunction"},{"Superclass":"Instance","type":"Class","Name":"GuiBase","tags":[]},{"Superclass":"GuiBase","type":"Class","Name":"GuiBase2d","tags":["notbrowsable"]},{"ValueType":"Vector2","type":"Property","Name":"AbsolutePosition","tags":["readonly"],"Class":"GuiBase2d"},{"ValueType":"Vector2","type":"Property","Name":"AbsoluteSize","tags":["readonly"],"Class":"GuiBase2d"},{"Superclass":"GuiBase2d","type":"Class","Name":"GuiObject","tags":["notbrowsable"]},{"ValueType":"bool","type":"Property","Name":"Active","tags":[],"Class":"GuiObject"},{"ValueType":"BrickColor","type":"Property","Name":"BackgroundColor","tags":["deprecated","hidden"],"Class":"GuiObject"},{"ValueType":"Color3","type":"Property","Name":"BackgroundColor3","tags":[],"Class":"GuiObject"},{"ValueType":"float","type":"Property","Name":"BackgroundTransparency","tags":[],"Class":"GuiObject"},{"ValueType":"BrickColor","type":"Property","Name":"BorderColor","tags":["deprecated","hidden"],"Class":"GuiObject"},{"ValueType":"Color3","type":"Property","Name":"BorderColor3","tags":[],"Class":"GuiObject"},{"ValueType":"int","type":"Property","Name":"BorderSizePixel","tags":[],"Class":"GuiObject"},{"ValueType":"bool","type":"Property","Name":"ClipsDescendants","tags":[],"Class":"GuiObject"},{"ValueType":"bool","type":"Property","Name":"Draggable","tags":[],"Class":"GuiObject"},{"ValueType":"Object","type":"Property","Name":"NextSelectionDown","tags":[],"Class":"GuiObject"},{"ValueType":"Object","type":"Property","Name":"NextSelectionLeft","tags":[],"Class":"GuiObject"},{"ValueType":"Object","type":"Property","Name":"NextSelectionRight","tags":[],"Class":"GuiObject"},{"ValueType":"Object","type":"Property","Name":"NextSelectionUp","tags":[],"Class":"GuiObject"},{"ValueType":"UDim2","type":"Property","Name":"Position","tags":[],"Class":"GuiObject"},{"ValueType":"float","type":"Property","Name":"Rotation","tags":[],"Class":"GuiObject"},{"ValueType":"bool","type":"Property","Name":"Selectable","tags":[],"Class":"GuiObject"},{"ValueType":"Object","type":"Property","Name":"SelectionImageObject","tags":[],"Class":"GuiObject"},{"ValueType":"UDim2","type":"Property","Name":"Size","tags":[],"Class":"GuiObject"},{"ValueType":"SizeConstraint","type":"Property","Name":"SizeConstraint","tags":[],"Class":"GuiObject"},{"ValueType":"float","type":"Property","Name":"Transparency","tags":["hidden"],"Class":"GuiObject"},{"ValueType":"bool","type":"Property","Name":"Visible","tags":[],"Class":"GuiObject"},{"ValueType":"int","type":"Property","Name":"ZIndex","tags":[],"Class":"GuiObject"},{"ReturnType":"bool","Arguments":[{"Type":"UDim2","Name":"endPosition","Default":null},{"Type":"EasingDirection","Name":"easingDirection","Default":"Out"},{"Type":"EasingStyle","Name":"easingStyle","Default":"Quad"},{"Type":"float","Name":"time","Default":"1"},{"Type":"bool","Name":"override","Default":"false"},{"Type":"Function","Name":"callback","Default":"nil"}],"Name":"TweenPosition","tags":[],"Class":"GuiObject","type":"Function"},{"ReturnType":"bool","Arguments":[{"Type":"UDim2","Name":"endSize","Default":null},{"Type":"EasingDirection","Name":"easingDirection","Default":"Out"},{"Type":"EasingStyle","Name":"easingStyle","Default":"Quad"},{"Type":"float","Name":"time","Default":"1"},{"Type":"bool","Name":"override","Default":"false"},{"Type":"Function","Name":"callback","Default":"nil"}],"Name":"TweenSize","tags":[],"Class":"GuiObject","type":"Function"},{"ReturnType":"bool","Arguments":[{"Type":"UDim2","Name":"endSize","Default":null},{"Type":"UDim2","Name":"endPosition","Default":null},{"Type":"EasingDirection","Name":"easingDirection","Default":"Out"},{"Type":"EasingStyle","Name":"easingStyle","Default":"Quad"},{"Type":"float","Name":"time","Default":"1"},{"Type":"bool","Name":"override","Default":"false"},{"Type":"Function","Name":"callback","Default":"nil"}],"Name":"TweenSizeAndPosition","tags":[],"Class":"GuiObject","type":"Function"},{"Arguments":[{"Name":"initialPosition","Type":"UDim2"}],"Name":"DragBegin","tags":[],"Class":"GuiObject","type":"Event"},{"Arguments":[{"Name":"x","Type":"int"},{"Name":"y","Type":"int"}],"Name":"DragStopped","tags":[],"Class":"GuiObject","type":"Event"},{"Arguments":[{"Name":"input","Type":"Instance"}],"Name":"InputBegan","tags":[],"Class":"GuiObject","type":"Event"},{"Arguments":[{"Name":"input","Type":"Instance"}],"Name":"InputChanged","tags":[],"Class":"GuiObject","type":"Event"},{"Arguments":[{"Name":"input","Type":"Instance"}],"Name":"InputEnded","tags":[],"Class":"GuiObject","type":"Event"},{"Arguments":[{"Name":"x","Type":"int"},{"Name":"y","Type":"int"}],"Name":"MouseEnter","tags":[],"Class":"GuiObject","type":"Event"},{"Arguments":[{"Name":"x","Type":"int"},{"Name":"y","Type":"int"}],"Name":"MouseLeave","tags":[],"Class":"GuiObject","type":"Event"},{"Arguments":[{"Name":"x","Type":"int"},{"Name":"y","Type":"int"}],"Name":"MouseMoved","tags":[],"Class":"GuiObject","type":"Event"},{"Arguments":[{"Name":"x","Type":"int"},{"Name":"y","Type":"int"}],"Name":"MouseWheelBackward","tags":[],"Class":"GuiObject","type":"Event"},{"Arguments":[{"Name":"x","Type":"int"},{"Name":"y","Type":"int"}],"Name":"MouseWheelForward","tags":[],"Class":"GuiObject","type":"Event"},{"Arguments":[],"Name":"SelectionGained","tags":[],"Class":"GuiObject","type":"Event"},{"Arguments":[],"Name":"SelectionLost","tags":[],"Class":"GuiObject","type":"Event"},{"Arguments":[{"Name":"touchPositions","Type":"Array"},{"Name":"state","Type":"UserInputState"}],"Name":"TouchLongPress","tags":[],"Class":"GuiObject","type":"Event"},{"Arguments":[{"Name":"touchPositions","Type":"Array"},{"Name":"totalTranslation","Type":"Vector2"},{"Name":"velocity","Type":"Vector2"},{"Name":"state","Type":"UserInputState"}],"Name":"TouchPan","tags":[],"Class":"GuiObject","type":"Event"},{"Arguments":[{"Name":"touchPositions","Type":"Array"},{"Name":"scale","Type":"float"},{"Name":"velocity","Type":"float"},{"Name":"state","Type":"UserInputState"}],"Name":"TouchPinch","tags":[],"Class":"GuiObject","type":"Event"},{"Arguments":[{"Name":"touchPositions","Type":"Array"},{"Name":"rotation","Type":"float"},{"Name":"velocity","Type":"float"},{"Name":"state","Type":"UserInputState"}],"Name":"TouchRotate","tags":[],"Class":"GuiObject","type":"Event"},{"Arguments":[{"Name":"swipeDirection","Type":"SwipeDirection"},{"Name":"numberOfTouches","Type":"int"}],"Name":"TouchSwipe","tags":[],"Class":"GuiObject","type":"Event"},{"Arguments":[{"Name":"touchPositions","Type":"Array"}],"Name":"TouchTap","tags":[],"Class":"GuiObject","type":"Event"},{"Superclass":"GuiObject","type":"Class","Name":"Frame","tags":[]},{"ValueType":"FrameStyle","type":"Property","Name":"Style","tags":[],"Class":"Frame"},{"Superclass":"GuiObject","type":"Class","Name":"GuiButton","tags":["notbrowsable"]},{"ValueType":"bool","type":"Property","Name":"AutoButtonColor","tags":[],"Class":"GuiButton"},{"ValueType":"bool","type":"Property","Name":"Modal","tags":[],"Class":"GuiButton"},{"ValueType":"bool","type":"Property","Name":"Selected","tags":[],"Class":"GuiButton"},{"ValueType":"ButtonStyle","type":"Property","Name":"Style","tags":[],"Class":"GuiButton"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"verb","Default":null}],"Name":"SetVerb","tags":["RobloxScriptSecurity"],"Class":"GuiButton","type":"Function"},{"Arguments":[],"Name":"MouseButton1Click","tags":[],"Class":"GuiButton","type":"Event"},{"Arguments":[{"Name":"x","Type":"int"},{"Name":"y","Type":"int"}],"Name":"MouseButton1Down","tags":[],"Class":"GuiButton","type":"Event"},{"Arguments":[{"Name":"x","Type":"int"},{"Name":"y","Type":"int"}],"Name":"MouseButton1Up","tags":[],"Class":"GuiButton","type":"Event"},{"Arguments":[],"Name":"MouseButton2Click","tags":[],"Class":"GuiButton","type":"Event"},{"Arguments":[{"Name":"x","Type":"int"},{"Name":"y","Type":"int"}],"Name":"MouseButton2Down","tags":[],"Class":"GuiButton","type":"Event"},{"Arguments":[{"Name":"x","Type":"int"},{"Name":"y","Type":"int"}],"Name":"MouseButton2Up","tags":[],"Class":"GuiButton","type":"Event"},{"Superclass":"GuiButton","type":"Class","Name":"ImageButton","tags":[]},{"ValueType":"Content","type":"Property","Name":"Image","tags":[],"Class":"ImageButton"},{"ValueType":"Color3","type":"Property","Name":"ImageColor3","tags":[],"Class":"ImageButton"},{"ValueType":"Vector2","type":"Property","Name":"ImageRectOffset","tags":[],"Class":"ImageButton"},{"ValueType":"Vector2","type":"Property","Name":"ImageRectSize","tags":[],"Class":"ImageButton"},{"ValueType":"float","type":"Property","Name":"ImageTransparency","tags":[],"Class":"ImageButton"},{"ValueType":"ScaleType","type":"Property","Name":"ScaleType","tags":[],"Class":"ImageButton"},{"ValueType":"Rect2D","type":"Property","Name":"SliceCenter","tags":[],"Class":"ImageButton"},{"Superclass":"GuiButton","type":"Class","Name":"TextButton","tags":[]},{"ValueType":"Font","type":"Property","Name":"Font","tags":[],"Class":"TextButton"},{"ValueType":"FontSize","type":"Property","Name":"FontSize","tags":[],"Class":"TextButton"},{"ValueType":"string","type":"Property","Name":"Text","tags":[],"Class":"TextButton"},{"ValueType":"Vector2","type":"Property","Name":"TextBounds","tags":["readonly"],"Class":"TextButton"},{"ValueType":"BrickColor","type":"Property","Name":"TextColor","tags":["deprecated","hidden"],"Class":"TextButton"},{"ValueType":"Color3","type":"Property","Name":"TextColor3","tags":[],"Class":"TextButton"},{"ValueType":"bool","type":"Property","Name":"TextFits","tags":["readonly"],"Class":"TextButton"},{"ValueType":"bool","type":"Property","Name":"TextScaled","tags":[],"Class":"TextButton"},{"ValueType":"Color3","type":"Property","Name":"TextStrokeColor3","tags":[],"Class":"TextButton"},{"ValueType":"float","type":"Property","Name":"TextStrokeTransparency","tags":[],"Class":"TextButton"},{"ValueType":"float","type":"Property","Name":"TextTransparency","tags":[],"Class":"TextButton"},{"ValueType":"bool","type":"Property","Name":"TextWrap","tags":["deprecated"],"Class":"TextButton"},{"ValueType":"bool","type":"Property","Name":"TextWrapped","tags":[],"Class":"TextButton"},{"ValueType":"TextXAlignment","type":"Property","Name":"TextXAlignment","tags":[],"Class":"TextButton"},{"ValueType":"TextYAlignment","type":"Property","Name":"TextYAlignment","tags":[],"Class":"TextButton"},{"Superclass":"GuiObject","type":"Class","Name":"GuiLabel","tags":[]},{"Superclass":"GuiLabel","type":"Class","Name":"ImageLabel","tags":[]},{"ValueType":"Content","type":"Property","Name":"Image","tags":[],"Class":"ImageLabel"},{"ValueType":"Color3","type":"Property","Name":"ImageColor3","tags":[],"Class":"ImageLabel"},{"ValueType":"Vector2","type":"Property","Name":"ImageRectOffset","tags":[],"Class":"ImageLabel"},{"ValueType":"Vector2","type":"Property","Name":"ImageRectSize","tags":[],"Class":"ImageLabel"},{"ValueType":"float","type":"Property","Name":"ImageTransparency","tags":[],"Class":"ImageLabel"},{"ValueType":"ScaleType","type":"Property","Name":"ScaleType","tags":[],"Class":"ImageLabel"},{"ValueType":"Rect2D","type":"Property","Name":"SliceCenter","tags":[],"Class":"ImageLabel"},{"Superclass":"GuiLabel","type":"Class","Name":"TextLabel","tags":[]},{"ValueType":"Font","type":"Property","Name":"Font","tags":[],"Class":"TextLabel"},{"ValueType":"FontSize","type":"Property","Name":"FontSize","tags":[],"Class":"TextLabel"},{"ValueType":"string","type":"Property","Name":"Text","tags":[],"Class":"TextLabel"},{"ValueType":"Vector2","type":"Property","Name":"TextBounds","tags":["readonly"],"Class":"TextLabel"},{"ValueType":"BrickColor","type":"Property","Name":"TextColor","tags":["deprecated","hidden"],"Class":"TextLabel"},{"ValueType":"Color3","type":"Property","Name":"TextColor3","tags":[],"Class":"TextLabel"},{"ValueType":"bool","type":"Property","Name":"TextFits","tags":["readonly"],"Class":"TextLabel"},{"ValueType":"bool","type":"Property","Name":"TextScaled","tags":[],"Class":"TextLabel"},{"ValueType":"Color3","type":"Property","Name":"TextStrokeColor3","tags":[],"Class":"TextLabel"},{"ValueType":"float","type":"Property","Name":"TextStrokeTransparency","tags":[],"Class":"TextLabel"},{"ValueType":"float","type":"Property","Name":"TextTransparency","tags":[],"Class":"TextLabel"},{"ValueType":"bool","type":"Property","Name":"TextWrap","tags":["deprecated"],"Class":"TextLabel"},{"ValueType":"bool","type":"Property","Name":"TextWrapped","tags":[],"Class":"TextLabel"},{"ValueType":"TextXAlignment","type":"Property","Name":"TextXAlignment","tags":[],"Class":"TextLabel"},{"ValueType":"TextYAlignment","type":"Property","Name":"TextYAlignment","tags":[],"Class":"TextLabel"},{"Superclass":"GuiObject","type":"Class","Name":"Scale9Frame","tags":[]},{"ValueType":"Vector2int16","type":"Property","Name":"ScaleEdgeSize","tags":[],"Class":"Scale9Frame"},{"ValueType":"string","type":"Property","Name":"SlicePrefix","tags":[],"Class":"Scale9Frame"},{"Superclass":"GuiObject","type":"Class","Name":"ScrollingFrame","tags":[]},{"ValueType":"Vector2","type":"Property","Name":"AbsoluteWindowSize","tags":["readonly"],"Class":"ScrollingFrame"},{"ValueType":"Content","type":"Property","Name":"BottomImage","tags":[],"Class":"ScrollingFrame"},{"ValueType":"Vector2","type":"Property","Name":"CanvasPosition","tags":[],"Class":"ScrollingFrame"},{"ValueType":"UDim2","type":"Property","Name":"CanvasSize","tags":[],"Class":"ScrollingFrame"},{"ValueType":"Content","type":"Property","Name":"MidImage","tags":[],"Class":"ScrollingFrame"},{"ValueType":"int","type":"Property","Name":"ScrollBarThickness","tags":[],"Class":"ScrollingFrame"},{"ValueType":"bool","type":"Property","Name":"ScrollingEnabled","tags":[],"Class":"ScrollingFrame"},{"ValueType":"Content","type":"Property","Name":"TopImage","tags":[],"Class":"ScrollingFrame"},{"Superclass":"GuiObject","type":"Class","Name":"TextBox","tags":[]},{"ValueType":"bool","type":"Property","Name":"ClearTextOnFocus","tags":[],"Class":"TextBox"},{"ValueType":"Font","type":"Property","Name":"Font","tags":[],"Class":"TextBox"},{"ValueType":"FontSize","type":"Property","Name":"FontSize","tags":[],"Class":"TextBox"},{"ValueType":"bool","type":"Property","Name":"MultiLine","tags":[],"Class":"TextBox"},{"ValueType":"string","type":"Property","Name":"Text","tags":[],"Class":"TextBox"},{"ValueType":"Vector2","type":"Property","Name":"TextBounds","tags":["readonly"],"Class":"TextBox"},{"ValueType":"BrickColor","type":"Property","Name":"TextColor","tags":["deprecated","hidden"],"Class":"TextBox"},{"ValueType":"Color3","type":"Property","Name":"TextColor3","tags":[],"Class":"TextBox"},{"ValueType":"bool","type":"Property","Name":"TextFits","tags":["readonly"],"Class":"TextBox"},{"ValueType":"bool","type":"Property","Name":"TextScaled","tags":[],"Class":"TextBox"},{"ValueType":"Color3","type":"Property","Name":"TextStrokeColor3","tags":[],"Class":"TextBox"},{"ValueType":"float","type":"Property","Name":"TextStrokeTransparency","tags":[],"Class":"TextBox"},{"ValueType":"float","type":"Property","Name":"TextTransparency","tags":[],"Class":"TextBox"},{"ValueType":"bool","type":"Property","Name":"TextWrap","tags":["deprecated"],"Class":"TextBox"},{"ValueType":"bool","type":"Property","Name":"TextWrapped","tags":[],"Class":"TextBox"},{"ValueType":"TextXAlignment","type":"Property","Name":"TextXAlignment","tags":[],"Class":"TextBox"},{"ValueType":"TextYAlignment","type":"Property","Name":"TextYAlignment","tags":[],"Class":"TextBox"},{"ReturnType":"void","Arguments":[],"Name":"CaptureFocus","tags":[],"Class":"TextBox","type":"Function"},{"ReturnType":"bool","Arguments":[],"Name":"IsFocused","tags":[],"Class":"TextBox","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"ReleaseFocus","tags":[],"Class":"TextBox","type":"Function"},{"Arguments":[{"Name":"enterPressed","Type":"bool"},{"Name":"inputThatCausedFocusLoss","Type":"Instance"}],"Name":"FocusLost","tags":[],"Class":"TextBox","type":"Event"},{"Arguments":[],"Name":"Focused","tags":[],"Class":"TextBox","type":"Event"},{"Superclass":"GuiBase2d","type":"Class","Name":"LayerCollector","tags":[]},{"Superclass":"LayerCollector","type":"Class","Name":"BillboardGui","tags":[]},{"ValueType":"bool","type":"Property","Name":"Active","tags":[],"Class":"BillboardGui"},{"ValueType":"Object","type":"Property","Name":"Adornee","tags":[],"Class":"BillboardGui"},{"ValueType":"bool","type":"Property","Name":"AlwaysOnTop","tags":[],"Class":"BillboardGui"},{"ValueType":"bool","type":"Property","Name":"Enabled","tags":[],"Class":"BillboardGui"},{"ValueType":"Vector3","type":"Property","Name":"ExtentsOffset","tags":[],"Class":"BillboardGui"},{"ValueType":"Object","type":"Property","Name":"PlayerToHideFrom","tags":[],"Class":"BillboardGui"},{"ValueType":"UDim2","type":"Property","Name":"Size","tags":[],"Class":"BillboardGui"},{"ValueType":"Vector2","type":"Property","Name":"SizeOffset","tags":[],"Class":"BillboardGui"},{"ValueType":"Vector3","type":"Property","Name":"StudsOffset","tags":[],"Class":"BillboardGui"},{"Superclass":"LayerCollector","type":"Class","Name":"ScreenGui","tags":[]},{"Superclass":"ScreenGui","type":"Class","Name":"GuiMain","tags":["deprecated"]},{"Superclass":"LayerCollector","type":"Class","Name":"SurfaceGui","tags":[]},{"ValueType":"bool","type":"Property","Name":"Active","tags":[],"Class":"SurfaceGui"},{"ValueType":"Object","type":"Property","Name":"Adornee","tags":[],"Class":"SurfaceGui"},{"ValueType":"bool","type":"Property","Name":"AlwaysOnTop","tags":[],"Class":"SurfaceGui"},{"ValueType":"Vector2","type":"Property","Name":"CanvasSize","tags":[],"Class":"SurfaceGui"},{"ValueType":"bool","type":"Property","Name":"Enabled","tags":[],"Class":"SurfaceGui"},{"ValueType":"NormalId","type":"Property","Name":"Face","tags":[],"Class":"SurfaceGui"},{"ValueType":"float","type":"Property","Name":"ToolPunchThroughDistance","tags":[],"Class":"SurfaceGui"},{"Superclass":"GuiBase","type":"Class","Name":"GuiBase3d","tags":[]},{"ValueType":"BrickColor","type":"Property","Name":"Color","tags":["deprecated","hidden"],"Class":"GuiBase3d"},{"ValueType":"Color3","type":"Property","Name":"Color3","tags":[],"Class":"GuiBase3d"},{"ValueType":"float","type":"Property","Name":"Transparency","tags":[],"Class":"GuiBase3d"},{"ValueType":"bool","type":"Property","Name":"Visible","tags":[],"Class":"GuiBase3d"},{"Superclass":"GuiBase3d","type":"Class","Name":"FloorWire","tags":["deprecated"]},{"ValueType":"float","type":"Property","Name":"CycleOffset","tags":[],"Class":"FloorWire"},{"ValueType":"Object","type":"Property","Name":"From","tags":[],"Class":"FloorWire"},{"ValueType":"float","type":"Property","Name":"StudsBetweenTextures","tags":[],"Class":"FloorWire"},{"ValueType":"Content","type":"Property","Name":"Texture","tags":[],"Class":"FloorWire"},{"ValueType":"Vector2","type":"Property","Name":"TextureSize","tags":[],"Class":"FloorWire"},{"ValueType":"Object","type":"Property","Name":"To","tags":[],"Class":"FloorWire"},{"ValueType":"float","type":"Property","Name":"Velocity","tags":[],"Class":"FloorWire"},{"ValueType":"float","type":"Property","Name":"WireRadius","tags":[],"Class":"FloorWire"},{"Superclass":"GuiBase3d","type":"Class","Name":"PVAdornment","tags":[]},{"ValueType":"Object","type":"Property","Name":"Adornee","tags":[],"Class":"PVAdornment"},{"Superclass":"PVAdornment","type":"Class","Name":"HandleAdornment","tags":[]},{"ValueType":"bool","type":"Property","Name":"AlwaysOnTop","tags":[],"Class":"HandleAdornment"},{"ValueType":"CoordinateFrame","type":"Property","Name":"CFrame","tags":[],"Class":"HandleAdornment"},{"ValueType":"Vector3","type":"Property","Name":"SizeRelativeOffset","tags":[],"Class":"HandleAdornment"},{"ValueType":"int","type":"Property","Name":"ZIndex","tags":[],"Class":"HandleAdornment"},{"Arguments":[],"Name":"MouseButton1Down","tags":[],"Class":"HandleAdornment","type":"Event"},{"Arguments":[],"Name":"MouseButton1Up","tags":[],"Class":"HandleAdornment","type":"Event"},{"Arguments":[],"Name":"MouseEnter","tags":[],"Class":"HandleAdornment","type":"Event"},{"Arguments":[],"Name":"MouseLeave","tags":[],"Class":"HandleAdornment","type":"Event"},{"Superclass":"HandleAdornment","type":"Class","Name":"BoxHandleAdornment","tags":[]},{"ValueType":"Vector3","type":"Property","Name":"Size","tags":[],"Class":"BoxHandleAdornment"},{"Superclass":"HandleAdornment","type":"Class","Name":"ConeHandleAdornment","tags":[]},{"ValueType":"float","type":"Property","Name":"Height","tags":[],"Class":"ConeHandleAdornment"},{"ValueType":"float","type":"Property","Name":"Radius","tags":[],"Class":"ConeHandleAdornment"},{"Superclass":"HandleAdornment","type":"Class","Name":"CylinderHandleAdornment","tags":[]},{"ValueType":"float","type":"Property","Name":"Height","tags":[],"Class":"CylinderHandleAdornment"},{"ValueType":"float","type":"Property","Name":"Radius","tags":[],"Class":"CylinderHandleAdornment"},{"Superclass":"HandleAdornment","type":"Class","Name":"ImageHandleAdornment","tags":[]},{"ValueType":"Content","type":"Property","Name":"Image","tags":[],"Class":"ImageHandleAdornment"},{"ValueType":"Vector2","type":"Property","Name":"Size","tags":[],"Class":"ImageHandleAdornment"},{"Superclass":"HandleAdornment","type":"Class","Name":"LineHandleAdornment","tags":[]},{"ValueType":"float","type":"Property","Name":"Length","tags":[],"Class":"LineHandleAdornment"},{"ValueType":"float","type":"Property","Name":"Thickness","tags":[],"Class":"LineHandleAdornment"},{"Superclass":"HandleAdornment","type":"Class","Name":"SphereHandleAdornment","tags":[]},{"ValueType":"float","type":"Property","Name":"Radius","tags":[],"Class":"SphereHandleAdornment"},{"Superclass":"PVAdornment","type":"Class","Name":"SelectionBox","tags":[]},{"ValueType":"float","type":"Property","Name":"LineThickness","tags":[],"Class":"SelectionBox"},{"ValueType":"BrickColor","type":"Property","Name":"SurfaceColor","tags":["deprecated","hidden"],"Class":"SelectionBox"},{"ValueType":"Color3","type":"Property","Name":"SurfaceColor3","tags":[],"Class":"SelectionBox"},{"ValueType":"float","type":"Property","Name":"SurfaceTransparency","tags":[],"Class":"SelectionBox"},{"Superclass":"PVAdornment","type":"Class","Name":"SelectionSphere","tags":[]},{"ValueType":"BrickColor","type":"Property","Name":"SurfaceColor","tags":["deprecated","hidden"],"Class":"SelectionSphere"},{"ValueType":"Color3","type":"Property","Name":"SurfaceColor3","tags":[],"Class":"SelectionSphere"},{"ValueType":"float","type":"Property","Name":"SurfaceTransparency","tags":[],"Class":"SelectionSphere"},{"Superclass":"GuiBase3d","type":"Class","Name":"PartAdornment","tags":[]},{"ValueType":"Object","type":"Property","Name":"Adornee","tags":[],"Class":"PartAdornment"},{"Superclass":"PartAdornment","type":"Class","Name":"HandlesBase","tags":[]},{"Superclass":"HandlesBase","type":"Class","Name":"ArcHandles","tags":[]},{"ValueType":"Axes","type":"Property","Name":"Axes","tags":[],"Class":"ArcHandles"},{"Arguments":[{"Name":"axis","Type":"Axis"}],"Name":"MouseButton1Down","tags":[],"Class":"ArcHandles","type":"Event"},{"Arguments":[{"Name":"axis","Type":"Axis"}],"Name":"MouseButton1Up","tags":[],"Class":"ArcHandles","type":"Event"},{"Arguments":[{"Name":"axis","Type":"Axis"},{"Name":"relativeAngle","Type":"float"},{"Name":"deltaRadius","Type":"float"}],"Name":"MouseDrag","tags":[],"Class":"ArcHandles","type":"Event"},{"Arguments":[{"Name":"axis","Type":"Axis"}],"Name":"MouseEnter","tags":[],"Class":"ArcHandles","type":"Event"},{"Arguments":[{"Name":"axis","Type":"Axis"}],"Name":"MouseLeave","tags":[],"Class":"ArcHandles","type":"Event"},{"Superclass":"HandlesBase","type":"Class","Name":"Handles","tags":[]},{"ValueType":"Faces","type":"Property","Name":"Faces","tags":[],"Class":"Handles"},{"ValueType":"HandlesStyle","type":"Property","Name":"Style","tags":[],"Class":"Handles"},{"Arguments":[{"Name":"face","Type":"NormalId"}],"Name":"MouseButton1Down","tags":[],"Class":"Handles","type":"Event"},{"Arguments":[{"Name":"face","Type":"NormalId"}],"Name":"MouseButton1Up","tags":[],"Class":"Handles","type":"Event"},{"Arguments":[{"Name":"face","Type":"NormalId"},{"Name":"distance","Type":"float"}],"Name":"MouseDrag","tags":[],"Class":"Handles","type":"Event"},{"Arguments":[{"Name":"face","Type":"NormalId"}],"Name":"MouseEnter","tags":[],"Class":"Handles","type":"Event"},{"Arguments":[{"Name":"face","Type":"NormalId"}],"Name":"MouseLeave","tags":[],"Class":"Handles","type":"Event"},{"Superclass":"PartAdornment","type":"Class","Name":"SurfaceSelection","tags":[]},{"ValueType":"NormalId","type":"Property","Name":"TargetSurface","tags":[],"Class":"SurfaceSelection"},{"Superclass":"GuiBase3d","type":"Class","Name":"SelectionLasso","tags":[]},{"ValueType":"Object","type":"Property","Name":"Humanoid","tags":[],"Class":"SelectionLasso"},{"Superclass":"SelectionLasso","type":"Class","Name":"SelectionPartLasso","tags":["deprecated"]},{"ValueType":"Object","type":"Property","Name":"Part","tags":[],"Class":"SelectionPartLasso"},{"Superclass":"SelectionLasso","type":"Class","Name":"SelectionPointLasso","tags":["deprecated"]},{"ValueType":"Vector3","type":"Property","Name":"Point","tags":[],"Class":"SelectionPointLasso"},{"Superclass":"GuiBase3d","type":"Class","Name":"TextureTrail","tags":["deprecated"]},{"ValueType":"float","type":"Property","Name":"CycleOffset","tags":["RobloxPlaceSecurity"],"Class":"TextureTrail"},{"ValueType":"Object","type":"Property","Name":"From","tags":["RobloxPlaceSecurity"],"Class":"TextureTrail"},{"ValueType":"float","type":"Property","Name":"StudsBetweenTextures","tags":["RobloxPlaceSecurity"],"Class":"TextureTrail"},{"ValueType":"Content","type":"Property","Name":"Texture","tags":["RobloxPlaceSecurity"],"Class":"TextureTrail"},{"ValueType":"Vector2","type":"Property","Name":"TextureSize","tags":["RobloxPlaceSecurity"],"Class":"TextureTrail"},{"ValueType":"Object","type":"Property","Name":"To","tags":["RobloxPlaceSecurity"],"Class":"TextureTrail"},{"ValueType":"float","type":"Property","Name":"Velocity","tags":["RobloxPlaceSecurity"],"Class":"TextureTrail"},{"Superclass":"Instance","type":"Class","Name":"GuiItem","tags":[]},{"Superclass":"GuiItem","type":"Class","Name":"Backpack","tags":[]},{"Superclass":"GuiItem","type":"Class","Name":"BackpackItem","tags":[]},{"ValueType":"Content","type":"Property","Name":"TextureId","tags":[],"Class":"BackpackItem"},{"Superclass":"BackpackItem","type":"Class","Name":"HopperBin","tags":["deprecated"]},{"ValueType":"bool","type":"Property","Name":"Active","tags":[],"Class":"HopperBin"},{"ValueType":"BinType","type":"Property","Name":"BinType","tags":[],"Class":"HopperBin"},{"ReturnType":"void","Arguments":[],"Name":"Disable","tags":["RobloxScriptSecurity"],"Class":"HopperBin","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"ToggleSelect","tags":["RobloxScriptSecurity"],"Class":"HopperBin","type":"Function"},{"Arguments":[],"Name":"Deselected","tags":[],"Class":"HopperBin","type":"Event"},{"Arguments":[{"Name":"mouse","Type":"Instance"}],"Name":"Selected","tags":[],"Class":"HopperBin","type":"Event"},{"Superclass":"BackpackItem","type":"Class","Name":"Tool","tags":[]},{"ValueType":"bool","type":"Property","Name":"CanBeDropped","tags":[],"Class":"Tool"},{"ValueType":"bool","type":"Property","Name":"Enabled","tags":[],"Class":"Tool"},{"ValueType":"CoordinateFrame","type":"Property","Name":"Grip","tags":[],"Class":"Tool"},{"ValueType":"Vector3","type":"Property","Name":"GripForward","tags":[],"Class":"Tool"},{"ValueType":"Vector3","type":"Property","Name":"GripPos","tags":[],"Class":"Tool"},{"ValueType":"Vector3","type":"Property","Name":"GripRight","tags":[],"Class":"Tool"},{"ValueType":"Vector3","type":"Property","Name":"GripUp","tags":[],"Class":"Tool"},{"ValueType":"bool","type":"Property","Name":"ManualActivationOnly","tags":[],"Class":"Tool"},{"ValueType":"bool","type":"Property","Name":"RequiresHandle","tags":[],"Class":"Tool"},{"ValueType":"string","type":"Property","Name":"ToolTip","tags":[],"Class":"Tool"},{"ReturnType":"void","Arguments":[],"Name":"Activate","tags":[],"Class":"Tool","type":"Function"},{"Arguments":[],"Name":"Activated","tags":[],"Class":"Tool","type":"Event"},{"Arguments":[],"Name":"Deactivated","tags":[],"Class":"Tool","type":"Event"},{"Arguments":[{"Name":"mouse","Type":"Instance"}],"Name":"Equipped","tags":[],"Class":"Tool","type":"Event"},{"Arguments":[],"Name":"Unequipped","tags":[],"Class":"Tool","type":"Event"},{"Superclass":"Tool","type":"Class","Name":"Flag","tags":["deprecated"]},{"ValueType":"BrickColor","type":"Property","Name":"TeamColor","tags":[],"Class":"Flag"},{"Superclass":"GuiItem","type":"Class","Name":"ButtonBindingWidget","tags":[]},{"Superclass":"GuiItem","type":"Class","Name":"GuiRoot","tags":["notCreatable"]},{"Superclass":"GuiItem","type":"Class","Name":"Hopper","tags":["deprecated"]},{"Superclass":"GuiItem","type":"Class","Name":"StarterPack","tags":[]},{"Superclass":"Instance","type":"Class","Name":"GuiService","tags":["notCreatable"]},{"ValueType":"bool","type":"Property","Name":"AutoSelectGuiEnabled","tags":[],"Class":"GuiService"},{"ValueType":"bool","type":"Property","Name":"CoreGuiNavigationEnabled","tags":[],"Class":"GuiService"},{"ValueType":"bool","type":"Property","Name":"GuiNavigationEnabled","tags":[],"Class":"GuiService"},{"ValueType":"bool","type":"Property","Name":"IsModalDialog","tags":["deprecated","readonly"],"Class":"GuiService"},{"ValueType":"bool","type":"Property","Name":"IsWindows","tags":["deprecated","readonly"],"Class":"GuiService"},{"ValueType":"bool","type":"Property","Name":"MenuIsOpen","tags":["readonly"],"Class":"GuiService"},{"ValueType":"bool","type":"Property","Name":"ScreenGuiEnabled","tags":["RobloxScriptSecurity"],"Class":"GuiService"},{"ValueType":"Object","type":"Property","Name":"SelectedCoreObject","tags":["RobloxScriptSecurity"],"Class":"GuiService"},{"ValueType":"Object","type":"Property","Name":"SelectedObject","tags":[],"Class":"GuiService"},{"ReturnType":"void","Arguments":[{"Type":"Instance","Name":"dialog","Default":null},{"Type":"CenterDialogType","Name":"centerDialogType","Default":null},{"Type":"Function","Name":"showFunction","Default":null},{"Type":"Function","Name":"hideFunction","Default":null}],"Name":"AddCenterDialog","tags":["RobloxScriptSecurity"],"Class":"GuiService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"key","Default":null}],"Name":"AddKey","tags":["RobloxScriptSecurity"],"Class":"GuiService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"selectionName","Default":null},{"Type":"Instance","Name":"selectionParent","Default":null}],"Name":"AddSelectionParent","tags":[],"Class":"GuiService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"selectionName","Default":null},{"Type":"Tuple","Name":"selections","Default":null}],"Name":"AddSelectionTuple","tags":[],"Class":"GuiService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"SpecialKey","Name":"key","Default":null}],"Name":"AddSpecialKey","tags":["RobloxScriptSecurity"],"Class":"GuiService","type":"Function"},{"ReturnType":"int","Arguments":[],"Name":"GetBrickCount","tags":["RobloxScriptSecurity"],"Class":"GuiService","type":"Function"},{"ReturnType":"Instance","Arguments":[{"Type":"Vector3","Name":"position","Default":null}],"Name":"GetClosestDialogToPosition","tags":["RobloxScriptSecurity"],"Class":"GuiService","type":"Function"},{"ReturnType":"string","Arguments":[],"Name":"GetErrorMessage","tags":["RobloxScriptSecurity","deprecated"],"Class":"GuiService","type":"Function"},{"ReturnType":"string","Arguments":[],"Name":"GetUiMessage","tags":["RobloxScriptSecurity"],"Class":"GuiService","type":"Function"},{"ReturnType":"bool","Arguments":[],"Name":"IsTenFootInterface","tags":["RobloxScriptSecurity"],"Class":"GuiService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"url","Default":null}],"Name":"OpenBrowserWindow","tags":["RobloxScriptSecurity"],"Class":"GuiService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Instance","Name":"dialog","Default":null}],"Name":"RemoveCenterDialog","tags":["RobloxScriptSecurity"],"Class":"GuiService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"key","Default":null}],"Name":"RemoveKey","tags":["RobloxScriptSecurity"],"Class":"GuiService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"selectionName","Default":null}],"Name":"RemoveSelectionGroup","tags":[],"Class":"GuiService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"SpecialKey","Name":"key","Default":null}],"Name":"RemoveSpecialKey","tags":["RobloxScriptSecurity"],"Class":"GuiService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"errorMessage","Default":null}],"Name":"SetErrorMessage","tags":["LocalUserSecurity","deprecated"],"Class":"GuiService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"x1","Default":null},{"Type":"int","Name":"y1","Default":null},{"Type":"int","Name":"x2","Default":null},{"Type":"int","Name":"y2","Default":null}],"Name":"SetGlobalGuiInset","tags":["RobloxScriptSecurity"],"Class":"GuiService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"bool","Name":"open","Default":null}],"Name":"SetMenuIsOpen","tags":["RobloxScriptSecurity"],"Class":"GuiService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"UiMessageType","Name":"msgType","Default":null},{"Type":"string","Name":"uiMessage","Default":null}],"Name":"SetUiMessage","tags":["LocalUserSecurity"],"Class":"GuiService","type":"Function"},{"ReturnType":"bool","Arguments":[{"Type":"string","Name":"input","Default":null}],"Name":"ShowStatsBasedOnInputString","tags":["RobloxScriptSecurity"],"Class":"GuiService","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"ToggleFullscreen","tags":["RobloxScriptSecurity"],"Class":"GuiService","type":"Function"},{"ReturnType":"Vector2","Arguments":[],"Name":"GetScreenResolution","tags":["RobloxScriptSecurity"],"Class":"GuiService","type":"YieldFunction"},{"Arguments":[],"Name":"BrowserWindowClosed","tags":["RobloxScriptSecurity"],"Class":"GuiService","type":"Event"},{"Arguments":[{"Name":"newErrorMessage","Type":"string"}],"Name":"ErrorMessageChanged","tags":["RobloxScriptSecurity","deprecated"],"Class":"GuiService","type":"Event"},{"Arguments":[],"Name":"EscapeKeyPressed","tags":["RobloxScriptSecurity"],"Class":"GuiService","type":"Event"},{"Arguments":[{"Name":"key","Type":"string"},{"Name":"modifiers","Type":"string"}],"Name":"KeyPressed","tags":["RobloxScriptSecurity"],"Class":"GuiService","type":"Event"},{"Arguments":[],"Name":"MenuClosed","tags":[],"Class":"GuiService","type":"Event"},{"Arguments":[],"Name":"MenuOpened","tags":[],"Class":"GuiService","type":"Event"},{"Arguments":[],"Name":"ShowLeaveConfirmation","tags":["RobloxScriptSecurity"],"Class":"GuiService","type":"Event"},{"Arguments":[{"Name":"key","Type":"SpecialKey"},{"Name":"modifiers","Type":"string"}],"Name":"SpecialKeyPressed","tags":["RobloxScriptSecurity"],"Class":"GuiService","type":"Event"},{"Arguments":[{"Name":"msgType","Type":"UiMessageType"},{"Name":"newUiMessage","Type":"string"}],"Name":"UiMessageChanged","tags":["RobloxScriptSecurity"],"Class":"GuiService","type":"Event"},{"ReturnType":"void","Arguments":[{"Name":"title","Type":"string"},{"Name":"text","Type":"string"}],"Name":"SendCoreUiNotification","tags":["RobloxScriptSecurity"],"Class":"GuiService","type":"Callback"},{"Superclass":"Instance","type":"Class","Name":"GuidRegistryService","tags":[]},{"Superclass":"Instance","type":"Class","Name":"HapticService","tags":["notCreatable"]},{"ReturnType":"Tuple","Arguments":[{"Type":"UserInputType","Name":"inputType","Default":null},{"Type":"VibrationMotor","Name":"vibrationMotor","Default":null}],"Name":"GetMotor","tags":[],"Class":"HapticService","type":"Function"},{"ReturnType":"bool","Arguments":[{"Type":"UserInputType","Name":"inputType","Default":null},{"Type":"VibrationMotor","Name":"vibrationMotor","Default":null}],"Name":"IsMotorSupported","tags":[],"Class":"HapticService","type":"Function"},{"ReturnType":"bool","Arguments":[{"Type":"UserInputType","Name":"inputType","Default":null}],"Name":"IsVibrationSupported","tags":[],"Class":"HapticService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"UserInputType","Name":"inputType","Default":null},{"Type":"VibrationMotor","Name":"vibrationMotor","Default":null},{"Type":"Tuple","Name":"vibrationValues","Default":null}],"Name":"SetMotor","tags":[],"Class":"HapticService","type":"Function"},{"Superclass":"Instance","type":"Class","Name":"HttpRbxApiService","tags":["notCreatable"]},{"ReturnType":"string","Arguments":[{"Type":"string","Name":"apiUrlPath","Default":null},{"Type":"bool","Name":"useHttps","Default":"true"},{"Type":"ThrottlingPriority","Name":"priority","Default":"Default"}],"Name":"GetAsync","tags":["RobloxScriptSecurity"],"Class":"HttpRbxApiService","type":"YieldFunction"},{"ReturnType":"string","Arguments":[{"Type":"string","Name":"apiUrlPath","Default":null},{"Type":"string","Name":"data","Default":null},{"Type":"bool","Name":"useHttps","Default":"true"},{"Type":"ThrottlingPriority","Name":"priority","Default":"Default"},{"Type":"HttpContentType","Name":"content_type","Default":"ApplicationJson"}],"Name":"PostAsync","tags":["RobloxScriptSecurity"],"Class":"HttpRbxApiService","type":"YieldFunction"},{"Superclass":"Instance","type":"Class","Name":"HttpService","tags":["notCreatable"]},{"ValueType":"bool","type":"Property","Name":"HttpEnabled","tags":["LocalUserSecurity"],"Class":"HttpService"},{"ReturnType":"string","Arguments":[{"Type":"bool","Name":"wrapInCurlyBraces","Default":"true"}],"Name":"GenerateGUID","tags":[],"Class":"HttpService","type":"Function"},{"ReturnType":"Variant","Arguments":[{"Type":"string","Name":"input","Default":null}],"Name":"JSONDecode","tags":[],"Class":"HttpService","type":"Function"},{"ReturnType":"string","Arguments":[{"Type":"Variant","Name":"input","Default":null}],"Name":"JSONEncode","tags":[],"Class":"HttpService","type":"Function"},{"ReturnType":"string","Arguments":[{"Type":"string","Name":"input","Default":null}],"Name":"UrlEncode","tags":[],"Class":"HttpService","type":"Function"},{"ReturnType":"string","Arguments":[{"Type":"string","Name":"url","Default":null},{"Type":"bool","Name":"nocache","Default":"false"}],"Name":"GetAsync","tags":[],"Class":"HttpService","type":"YieldFunction"},{"ReturnType":"string","Arguments":[{"Type":"string","Name":"url","Default":null},{"Type":"string","Name":"data","Default":null},{"Type":"HttpContentType","Name":"content_type","Default":"ApplicationJson"},{"Type":"bool","Name":"compress","Default":"false"}],"Name":"PostAsync","tags":[],"Class":"HttpService","type":"YieldFunction"},{"Superclass":"Instance","type":"Class","Name":"Humanoid","tags":[]},{"ValueType":"bool","type":"Property","Name":"AutoJumpEnabled","tags":[],"Class":"Humanoid"},{"ValueType":"bool","type":"Property","Name":"AutoRotate","tags":[],"Class":"Humanoid"},{"ValueType":"Vector3","type":"Property","Name":"CameraOffset","tags":[],"Class":"Humanoid"},{"ValueType":"HumanoidDisplayDistanceType","type":"Property","Name":"DisplayDistanceType","tags":[],"Class":"Humanoid"},{"ValueType":"float","type":"Property","Name":"Health","tags":[],"Class":"Humanoid"},{"ValueType":"float","type":"Property","Name":"HealthDisplayDistance","tags":[],"Class":"Humanoid"},{"ValueType":"float","type":"Property","Name":"HipHeight","tags":[],"Class":"Humanoid"},{"ValueType":"bool","type":"Property","Name":"Jump","tags":[],"Class":"Humanoid"},{"ValueType":"float","type":"Property","Name":"JumpPower","tags":[],"Class":"Humanoid"},{"ValueType":"Object","type":"Property","Name":"LeftLeg","tags":[],"Class":"Humanoid"},{"ValueType":"float","type":"Property","Name":"MaxHealth","tags":[],"Class":"Humanoid"},{"ValueType":"float","type":"Property","Name":"MaxSlopeAngle","tags":[],"Class":"Humanoid"},{"ValueType":"Vector3","type":"Property","Name":"MoveDirection","tags":["readonly"],"Class":"Humanoid"},{"ValueType":"float","type":"Property","Name":"NameDisplayDistance","tags":[],"Class":"Humanoid"},{"ValueType":"NameOcclusion","type":"Property","Name":"NameOcclusion","tags":[],"Class":"Humanoid"},{"ValueType":"bool","type":"Property","Name":"PlatformStand","tags":[],"Class":"Humanoid"},{"ValueType":"HumanoidRigType","type":"Property","Name":"RigType","tags":[],"Class":"Humanoid"},{"ValueType":"Object","type":"Property","Name":"RightLeg","tags":[],"Class":"Humanoid"},{"ValueType":"Object","type":"Property","Name":"SeatPart","tags":["readonly"],"Class":"Humanoid"},{"ValueType":"bool","type":"Property","Name":"Sit","tags":[],"Class":"Humanoid"},{"ValueType":"Vector3","type":"Property","Name":"TargetPoint","tags":[],"Class":"Humanoid"},{"ValueType":"Object","type":"Property","Name":"Torso","tags":[],"Class":"Humanoid"},{"ValueType":"float","type":"Property","Name":"WalkSpeed","tags":[],"Class":"Humanoid"},{"ValueType":"Object","type":"Property","Name":"WalkToPart","tags":[],"Class":"Humanoid"},{"ValueType":"Vector3","type":"Property","Name":"WalkToPoint","tags":[],"Class":"Humanoid"},{"ValueType":"float","type":"Property","Name":"maxHealth","tags":["deprecated"],"Class":"Humanoid"},{"ReturnType":"bool","Arguments":[{"Type":"string","Name":"status","Default":null}],"Name":"AddCustomStatus","tags":["deprecated"],"Class":"Humanoid","type":"Function"},{"ReturnType":"bool","Arguments":[{"Type":"Status","Name":"status","Default":"Poison"}],"Name":"AddStatus","tags":["deprecated"],"Class":"Humanoid","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"HumanoidStateType","Name":"state","Default":"None"}],"Name":"ChangeState","tags":[],"Class":"Humanoid","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Instance","Name":"tool","Default":null}],"Name":"EquipTool","tags":[],"Class":"Humanoid","type":"Function"},{"ReturnType":"Array","Arguments":[],"Name":"GetPlayingAnimationTracks","tags":[],"Class":"Humanoid","type":"Function"},{"ReturnType":"HumanoidStateType","Arguments":[],"Name":"GetState","tags":[],"Class":"Humanoid","type":"Function"},{"ReturnType":"bool","Arguments":[{"Type":"HumanoidStateType","Name":"state","Default":null}],"Name":"GetStateEnabled","tags":[],"Class":"Humanoid","type":"Function"},{"ReturnType":"Array","Arguments":[],"Name":"GetStatuses","tags":["deprecated"],"Class":"Humanoid","type":"Function"},{"ReturnType":"bool","Arguments":[{"Type":"string","Name":"status","Default":null}],"Name":"HasCustomStatus","tags":["deprecated"],"Class":"Humanoid","type":"Function"},{"ReturnType":"bool","Arguments":[{"Type":"Status","Name":"status","Default":"Poison"}],"Name":"HasStatus","tags":["deprecated"],"Class":"Humanoid","type":"Function"},{"ReturnType":"Instance","Arguments":[{"Type":"Instance","Name":"animation","Default":null}],"Name":"LoadAnimation","tags":[],"Class":"Humanoid","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Vector3","Name":"moveDirection","Default":null},{"Type":"bool","Name":"relativeToCamera","Default":"false"}],"Name":"Move","tags":[],"Class":"Humanoid","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Vector3","Name":"location","Default":null},{"Type":"Instance","Name":"part","Default":"nil"}],"Name":"MoveTo","tags":[],"Class":"Humanoid","type":"Function"},{"ReturnType":"bool","Arguments":[{"Type":"string","Name":"status","Default":null}],"Name":"RemoveCustomStatus","tags":["deprecated"],"Class":"Humanoid","type":"Function"},{"ReturnType":"bool","Arguments":[{"Type":"Status","Name":"status","Default":"Poison"}],"Name":"RemoveStatus","tags":["deprecated"],"Class":"Humanoid","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"bool","Name":"enabled","Default":null}],"Name":"SetClickToWalkEnabled","tags":["RobloxScriptSecurity"],"Class":"Humanoid","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"HumanoidStateType","Name":"state","Default":null},{"Type":"bool","Name":"enabled","Default":null}],"Name":"SetStateEnabled","tags":[],"Class":"Humanoid","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"float","Name":"amount","Default":null}],"Name":"TakeDamage","tags":[],"Class":"Humanoid","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"UnequipTools","tags":[],"Class":"Humanoid","type":"Function"},{"ReturnType":"Instance","Arguments":[{"Type":"Instance","Name":"animation","Default":null}],"Name":"loadAnimation","tags":["deprecated"],"Class":"Humanoid","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"float","Name":"amount","Default":null}],"Name":"takeDamage","tags":["deprecated"],"Class":"Humanoid","type":"Function"},{"Arguments":[{"Name":"animationTrack","Type":"Instance"}],"Name":"AnimationPlayed","tags":[],"Class":"Humanoid","type":"Event"},{"Arguments":[{"Name":"speed","Type":"float"}],"Name":"Climbing","tags":[],"Class":"Humanoid","type":"Event"},{"Arguments":[{"Name":"status","Type":"string"}],"Name":"CustomStatusAdded","tags":["deprecated"],"Class":"Humanoid","type":"Event"},{"Arguments":[{"Name":"status","Type":"string"}],"Name":"CustomStatusRemoved","tags":["deprecated"],"Class":"Humanoid","type":"Event"},{"Arguments":[],"Name":"Died","tags":[],"Class":"Humanoid","type":"Event"},{"Arguments":[{"Name":"active","Type":"bool"}],"Name":"FallingDown","tags":[],"Class":"Humanoid","type":"Event"},{"Arguments":[{"Name":"active","Type":"bool"}],"Name":"FreeFalling","tags":[],"Class":"Humanoid","type":"Event"},{"Arguments":[{"Name":"active","Type":"bool"}],"Name":"GettingUp","tags":[],"Class":"Humanoid","type":"Event"},{"Arguments":[{"Name":"health","Type":"float"}],"Name":"HealthChanged","tags":[],"Class":"Humanoid","type":"Event"},{"Arguments":[{"Name":"active","Type":"bool"}],"Name":"Jumping","tags":[],"Class":"Humanoid","type":"Event"},{"Arguments":[{"Name":"reached","Type":"bool"}],"Name":"MoveToFinished","tags":[],"Class":"Humanoid","type":"Event"},{"Arguments":[{"Name":"active","Type":"bool"}],"Name":"PlatformStanding","tags":[],"Class":"Humanoid","type":"Event"},{"Arguments":[{"Name":"active","Type":"bool"}],"Name":"Ragdoll","tags":[],"Class":"Humanoid","type":"Event"},{"Arguments":[{"Name":"speed","Type":"float"}],"Name":"Running","tags":[],"Class":"Humanoid","type":"Event"},{"Arguments":[{"Name":"active","Type":"bool"},{"Name":"currentSeatPart","Type":"Instance"}],"Name":"Seated","tags":[],"Class":"Humanoid","type":"Event"},{"Arguments":[{"Name":"old","Type":"HumanoidStateType"},{"Name":"new","Type":"HumanoidStateType"}],"Name":"StateChanged","tags":[],"Class":"Humanoid","type":"Event"},{"Arguments":[{"Name":"state","Type":"HumanoidStateType"},{"Name":"isEnabled","Type":"bool"}],"Name":"StateEnabledChanged","tags":[],"Class":"Humanoid","type":"Event"},{"Arguments":[{"Name":"status","Type":"Status"}],"Name":"StatusAdded","tags":["deprecated"],"Class":"Humanoid","type":"Event"},{"Arguments":[{"Name":"status","Type":"Status"}],"Name":"StatusRemoved","tags":["deprecated"],"Class":"Humanoid","type":"Event"},{"Arguments":[{"Name":"active","Type":"bool"}],"Name":"Strafing","tags":[],"Class":"Humanoid","type":"Event"},{"Arguments":[{"Name":"speed","Type":"float"}],"Name":"Swimming","tags":[],"Class":"Humanoid","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"InputObject","tags":["notCreatable"]},{"ValueType":"Vector3","type":"Property","Name":"Delta","tags":[],"Class":"InputObject"},{"ValueType":"KeyCode","type":"Property","Name":"KeyCode","tags":[],"Class":"InputObject"},{"ValueType":"Vector3","type":"Property","Name":"Position","tags":[],"Class":"InputObject"},{"ValueType":"UserInputState","type":"Property","Name":"UserInputState","tags":[],"Class":"InputObject"},{"ValueType":"UserInputType","type":"Property","Name":"UserInputType","tags":[],"Class":"InputObject"},{"Superclass":"Instance","type":"Class","Name":"InsertService","tags":["notCreatable"]},{"ValueType":"bool","type":"Property","Name":"AllowInsertFreeModels","tags":[],"Class":"InsertService"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"assetId","Default":null}],"Name":"ApproveAssetId","tags":["deprecated"],"Class":"InsertService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"assetVersionId","Default":null}],"Name":"ApproveAssetVersionId","tags":["deprecated"],"Class":"InsertService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Instance","Name":"instance","Default":null}],"Name":"Insert","tags":["deprecated"],"Class":"InsertService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"bool","Name":"enable","Default":null},{"Type":"bool","Name":"user","Default":"false"}],"Name":"SetAdvancedResults","tags":["LocalUserSecurity"],"Class":"InsertService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"assetUrl","Default":null}],"Name":"SetAssetUrl","tags":["LocalUserSecurity"],"Class":"InsertService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"assetVersionUrl","Default":null}],"Name":"SetAssetVersionUrl","tags":["LocalUserSecurity"],"Class":"InsertService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"baseSetsUrl","Default":null}],"Name":"SetBaseCategoryUrl","tags":["LocalUserSecurity"],"Class":"InsertService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"baseSetsUrl","Default":null}],"Name":"SetBaseSetsUrl","tags":["LocalUserSecurity"],"Class":"InsertService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"collectionUrl","Default":null}],"Name":"SetCollectionUrl","tags":["LocalUserSecurity"],"Class":"InsertService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"freeDecalUrl","Default":null}],"Name":"SetFreeDecalUrl","tags":["LocalUserSecurity"],"Class":"InsertService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"freeModelUrl","Default":null}],"Name":"SetFreeModelUrl","tags":["LocalUserSecurity"],"Class":"InsertService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"float","Name":"trustLevel","Default":null}],"Name":"SetTrustLevel","tags":["LocalUserSecurity"],"Class":"InsertService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"userSetsUrl","Default":null}],"Name":"SetUserCategoryUrl","tags":["LocalUserSecurity"],"Class":"InsertService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"userSetsUrl","Default":null}],"Name":"SetUserSetsUrl","tags":["LocalUserSecurity"],"Class":"InsertService","type":"Function"},{"ReturnType":"Array","Arguments":[],"Name":"GetBaseCategories","tags":["deprecated"],"Class":"InsertService","type":"YieldFunction"},{"ReturnType":"Array","Arguments":[],"Name":"GetBaseSets","tags":[],"Class":"InsertService","type":"YieldFunction"},{"ReturnType":"Array","Arguments":[{"Type":"int","Name":"categoryId","Default":null}],"Name":"GetCollection","tags":[],"Class":"InsertService","type":"YieldFunction"},{"ReturnType":"Array","Arguments":[{"Type":"string","Name":"searchText","Default":null},{"Type":"int","Name":"pageNum","Default":null}],"Name":"GetFreeDecals","tags":[],"Class":"InsertService","type":"YieldFunction"},{"ReturnType":"Array","Arguments":[{"Type":"string","Name":"searchText","Default":null},{"Type":"int","Name":"pageNum","Default":null}],"Name":"GetFreeModels","tags":[],"Class":"InsertService","type":"YieldFunction"},{"ReturnType":"int","Arguments":[{"Type":"int","Name":"assetId","Default":null}],"Name":"GetLatestAssetVersionAsync","tags":[],"Class":"InsertService","type":"YieldFunction"},{"ReturnType":"Array","Arguments":[{"Type":"int","Name":"userId","Default":null}],"Name":"GetUserCategories","tags":["deprecated"],"Class":"InsertService","type":"YieldFunction"},{"ReturnType":"Array","Arguments":[{"Type":"int","Name":"userId","Default":null}],"Name":"GetUserSets","tags":[],"Class":"InsertService","type":"YieldFunction"},{"ReturnType":"Instance","Arguments":[{"Type":"int","Name":"assetId","Default":null}],"Name":"LoadAsset","tags":[],"Class":"InsertService","type":"YieldFunction"},{"ReturnType":"Instance","Arguments":[{"Type":"int","Name":"assetVersionId","Default":null}],"Name":"LoadAssetVersion","tags":[],"Class":"InsertService","type":"YieldFunction"},{"ReturnType":"Instance","Arguments":[{"Type":"int","Name":"assetId","Default":null}],"Name":"loadAsset","tags":["deprecated"],"Class":"InsertService","type":"YieldFunction"},{"Superclass":"Instance","type":"Class","Name":"InstancePacketCache","tags":[]},{"Superclass":"Instance","type":"Class","Name":"IntConstrainedValue","tags":[]},{"ValueType":"int","type":"Property","Name":"ConstrainedValue","tags":["hidden"],"Class":"IntConstrainedValue"},{"ValueType":"int","type":"Property","Name":"MaxValue","tags":[],"Class":"IntConstrainedValue"},{"ValueType":"int","type":"Property","Name":"MinValue","tags":[],"Class":"IntConstrainedValue"},{"ValueType":"int","type":"Property","Name":"Value","tags":[],"Class":"IntConstrainedValue"},{"Arguments":[{"Name":"value","Type":"int"}],"Name":"Changed","tags":[],"Class":"IntConstrainedValue","type":"Event"},{"Arguments":[{"Name":"value","Type":"int"}],"Name":"changed","tags":["deprecated"],"Class":"IntConstrainedValue","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"IntValue","tags":[]},{"ValueType":"int","type":"Property","Name":"Value","tags":[],"Class":"IntValue"},{"Arguments":[{"Name":"value","Type":"int"}],"Name":"Changed","tags":[],"Class":"IntValue","type":"Event"},{"Arguments":[{"Name":"value","Type":"int"}],"Name":"changed","tags":["deprecated"],"Class":"IntValue","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"JointInstance","tags":[]},{"ValueType":"CoordinateFrame","type":"Property","Name":"C0","tags":[],"Class":"JointInstance"},{"ValueType":"CoordinateFrame","type":"Property","Name":"C1","tags":[],"Class":"JointInstance"},{"ValueType":"Object","type":"Property","Name":"Part0","tags":[],"Class":"JointInstance"},{"ValueType":"Object","type":"Property","Name":"Part1","tags":[],"Class":"JointInstance"},{"ValueType":"Object","type":"Property","Name":"part1","tags":["deprecated","hidden"],"Class":"JointInstance"},{"Superclass":"JointInstance","type":"Class","Name":"DynamicRotate","tags":[]},{"ValueType":"float","type":"Property","Name":"BaseAngle","tags":[],"Class":"DynamicRotate"},{"Superclass":"DynamicRotate","type":"Class","Name":"RotateP","tags":[]},{"Superclass":"DynamicRotate","type":"Class","Name":"RotateV","tags":[]},{"Superclass":"JointInstance","type":"Class","Name":"Glue","tags":[]},{"ValueType":"Vector3","type":"Property","Name":"F0","tags":[],"Class":"Glue"},{"ValueType":"Vector3","type":"Property","Name":"F1","tags":[],"Class":"Glue"},{"ValueType":"Vector3","type":"Property","Name":"F2","tags":[],"Class":"Glue"},{"ValueType":"Vector3","type":"Property","Name":"F3","tags":[],"Class":"Glue"},{"Superclass":"JointInstance","type":"Class","Name":"ManualSurfaceJointInstance","tags":[]},{"Superclass":"ManualSurfaceJointInstance","type":"Class","Name":"ManualGlue","tags":[]},{"Superclass":"ManualSurfaceJointInstance","type":"Class","Name":"ManualWeld","tags":[]},{"Superclass":"JointInstance","type":"Class","Name":"Motor","tags":[]},{"ValueType":"float","type":"Property","Name":"CurrentAngle","tags":[],"Class":"Motor"},{"ValueType":"float","type":"Property","Name":"DesiredAngle","tags":[],"Class":"Motor"},{"ValueType":"float","type":"Property","Name":"MaxVelocity","tags":[],"Class":"Motor"},{"ReturnType":"void","Arguments":[{"Type":"float","Name":"value","Default":null}],"Name":"SetDesiredAngle","tags":[],"Class":"Motor","type":"Function"},{"Superclass":"Motor","type":"Class","Name":"Motor6D","tags":[]},{"Superclass":"JointInstance","type":"Class","Name":"Rotate","tags":[]},{"Superclass":"JointInstance","type":"Class","Name":"Snap","tags":[]},{"Superclass":"JointInstance","type":"Class","Name":"VelocityMotor","tags":[]},{"ValueType":"float","type":"Property","Name":"CurrentAngle","tags":[],"Class":"VelocityMotor"},{"ValueType":"float","type":"Property","Name":"DesiredAngle","tags":[],"Class":"VelocityMotor"},{"ValueType":"Object","type":"Property","Name":"Hole","tags":[],"Class":"VelocityMotor"},{"ValueType":"float","type":"Property","Name":"MaxVelocity","tags":[],"Class":"VelocityMotor"},{"Superclass":"JointInstance","type":"Class","Name":"Weld","tags":[]},{"Superclass":"Instance","type":"Class","Name":"JointsService","tags":["notCreatable"]},{"ReturnType":"void","Arguments":[],"Name":"ClearJoinAfterMoveJoints","tags":[],"Class":"JointsService","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"CreateJoinAfterMoveJoints","tags":[],"Class":"JointsService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Instance","Name":"joinInstance","Default":null}],"Name":"SetJoinAfterMoveInstance","tags":[],"Class":"JointsService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Instance","Name":"joinTarget","Default":null}],"Name":"SetJoinAfterMoveTarget","tags":[],"Class":"JointsService","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"ShowPermissibleJoints","tags":[],"Class":"JointsService","type":"Function"},{"Superclass":"Instance","type":"Class","Name":"Keyframe","tags":[]},{"ValueType":"float","type":"Property","Name":"Time","tags":[],"Class":"Keyframe"},{"ReturnType":"void","Arguments":[{"Type":"Instance","Name":"pose","Default":null}],"Name":"AddPose","tags":[],"Class":"Keyframe","type":"Function"},{"ReturnType":"Objects","Arguments":[],"Name":"GetPoses","tags":[],"Class":"Keyframe","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Instance","Name":"pose","Default":null}],"Name":"RemovePose","tags":[],"Class":"Keyframe","type":"Function"},{"Superclass":"Instance","type":"Class","Name":"KeyframeSequence","tags":[]},{"ValueType":"bool","type":"Property","Name":"Loop","tags":[],"Class":"KeyframeSequence"},{"ValueType":"AnimationPriority","type":"Property","Name":"Priority","tags":[],"Class":"KeyframeSequence"},{"ReturnType":"void","Arguments":[{"Type":"Instance","Name":"keyframe","Default":null}],"Name":"AddKeyframe","tags":[],"Class":"KeyframeSequence","type":"Function"},{"ReturnType":"Objects","Arguments":[],"Name":"GetKeyframes","tags":[],"Class":"KeyframeSequence","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Instance","Name":"keyframe","Default":null}],"Name":"RemoveKeyframe","tags":[],"Class":"KeyframeSequence","type":"Function"},{"Superclass":"Instance","type":"Class","Name":"KeyframeSequenceProvider","tags":[]},{"ReturnType":"Instance","Arguments":[{"Type":"Content","Name":"assetId","Default":null}],"Name":"GetKeyframeSequence","tags":[],"Class":"KeyframeSequenceProvider","type":"Function"},{"ReturnType":"Instance","Arguments":[{"Type":"int","Name":"assetId","Default":null},{"Type":"bool","Name":"useCache","Default":null}],"Name":"GetKeyframeSequenceById","tags":[],"Class":"KeyframeSequenceProvider","type":"Function"},{"ReturnType":"Content","Arguments":[{"Type":"Instance","Name":"keyframeSequence","Default":null}],"Name":"RegisterActiveKeyframeSequence","tags":[],"Class":"KeyframeSequenceProvider","type":"Function"},{"ReturnType":"Content","Arguments":[{"Type":"Instance","Name":"keyframeSequence","Default":null}],"Name":"RegisterKeyframeSequence","tags":[],"Class":"KeyframeSequenceProvider","type":"Function"},{"ReturnType":"Dictionary","Arguments":[{"Type":"int","Name":"userId","Default":null},{"Type":"int","Name":"page","Default":"1"}],"Name":"GetAnimations","tags":[],"Class":"KeyframeSequenceProvider","type":"YieldFunction"},{"Superclass":"Instance","type":"Class","Name":"Light","tags":[]},{"ValueType":"float","type":"Property","Name":"Brightness","tags":[],"Class":"Light"},{"ValueType":"Color3","type":"Property","Name":"Color","tags":[],"Class":"Light"},{"ValueType":"bool","type":"Property","Name":"Enabled","tags":[],"Class":"Light"},{"ValueType":"bool","type":"Property","Name":"Shadows","tags":[],"Class":"Light"},{"Superclass":"Light","type":"Class","Name":"PointLight","tags":[]},{"ValueType":"float","type":"Property","Name":"Range","tags":[],"Class":"PointLight"},{"Superclass":"Light","type":"Class","Name":"SpotLight","tags":[]},{"ValueType":"float","type":"Property","Name":"Angle","tags":[],"Class":"SpotLight"},{"ValueType":"NormalId","type":"Property","Name":"Face","tags":[],"Class":"SpotLight"},{"ValueType":"float","type":"Property","Name":"Range","tags":[],"Class":"SpotLight"},{"Superclass":"Light","type":"Class","Name":"SurfaceLight","tags":[]},{"ValueType":"float","type":"Property","Name":"Angle","tags":[],"Class":"SurfaceLight"},{"ValueType":"NormalId","type":"Property","Name":"Face","tags":[],"Class":"SurfaceLight"},{"ValueType":"float","type":"Property","Name":"Range","tags":[],"Class":"SurfaceLight"},{"Superclass":"Instance","type":"Class","Name":"Lighting","tags":["notCreatable"]},{"ValueType":"Color3","type":"Property","Name":"Ambient","tags":[],"Class":"Lighting"},{"ValueType":"float","type":"Property","Name":"Brightness","tags":[],"Class":"Lighting"},{"ValueType":"Color3","type":"Property","Name":"ColorShift_Bottom","tags":[],"Class":"Lighting"},{"ValueType":"Color3","type":"Property","Name":"ColorShift_Top","tags":[],"Class":"Lighting"},{"ValueType":"Color3","type":"Property","Name":"FogColor","tags":[],"Class":"Lighting"},{"ValueType":"float","type":"Property","Name":"FogEnd","tags":[],"Class":"Lighting"},{"ValueType":"float","type":"Property","Name":"FogStart","tags":[],"Class":"Lighting"},{"ValueType":"float","type":"Property","Name":"GeographicLatitude","tags":[],"Class":"Lighting"},{"ValueType":"bool","type":"Property","Name":"GlobalShadows","tags":[],"Class":"Lighting"},{"ValueType":"Color3","type":"Property","Name":"OutdoorAmbient","tags":[],"Class":"Lighting"},{"ValueType":"bool","type":"Property","Name":"Outlines","tags":[],"Class":"Lighting"},{"ValueType":"Color3","type":"Property","Name":"ShadowColor","tags":[],"Class":"Lighting"},{"ValueType":"string","type":"Property","Name":"TimeOfDay","tags":[],"Class":"Lighting"},{"ReturnType":"double","Arguments":[],"Name":"GetMinutesAfterMidnight","tags":[],"Class":"Lighting","type":"Function"},{"ReturnType":"Vector3","Arguments":[],"Name":"GetMoonDirection","tags":[],"Class":"Lighting","type":"Function"},{"ReturnType":"float","Arguments":[],"Name":"GetMoonPhase","tags":[],"Class":"Lighting","type":"Function"},{"ReturnType":"Vector3","Arguments":[],"Name":"GetSunDirection","tags":[],"Class":"Lighting","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"double","Name":"minutes","Default":null}],"Name":"SetMinutesAfterMidnight","tags":[],"Class":"Lighting","type":"Function"},{"ReturnType":"double","Arguments":[],"Name":"getMinutesAfterMidnight","tags":["deprecated"],"Class":"Lighting","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"double","Name":"minutes","Default":null}],"Name":"setMinutesAfterMidnight","tags":["deprecated"],"Class":"Lighting","type":"Function"},{"Arguments":[{"Name":"skyboxChanged","Type":"bool"}],"Name":"LightingChanged","tags":[],"Class":"Lighting","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"LocalWorkspace","tags":["notCreatable"]},{"Superclass":"Instance","type":"Class","Name":"LogService","tags":["notCreatable"]},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"source","Default":null}],"Name":"ExecuteScript","tags":["RobloxScriptSecurity"],"Class":"LogService","type":"Function"},{"ReturnType":"Array","Arguments":[],"Name":"GetLogHistory","tags":[],"Class":"LogService","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"RequestServerOutput","tags":["RobloxScriptSecurity"],"Class":"LogService","type":"Function"},{"Arguments":[{"Name":"message","Type":"string"},{"Name":"messageType","Type":"MessageType"}],"Name":"MessageOut","tags":[],"Class":"LogService","type":"Event"},{"Arguments":[{"Name":"message","Type":"string"},{"Name":"messageType","Type":"MessageType"},{"Name":"timestamp","Type":"int"}],"Name":"ServerMessageOut","tags":["RobloxScriptSecurity"],"Class":"LogService","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"LoginService","tags":[]},{"ReturnType":"void","Arguments":[],"Name":"Logout","tags":["RobloxSecurity"],"Class":"LoginService","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"PromptLogin","tags":["RobloxSecurity"],"Class":"LoginService","type":"Function"},{"Arguments":[{"Name":"loginError","Type":"string"}],"Name":"LoginFailed","tags":["RobloxSecurity"],"Class":"LoginService","type":"Event"},{"Arguments":[{"Name":"username","Type":"string"}],"Name":"LoginSucceeded","tags":["RobloxSecurity"],"Class":"LoginService","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"LuaSettings","tags":[]},{"ValueType":"bool","type":"Property","Name":"AreScriptStartsReported","tags":[],"Class":"LuaSettings"},{"ValueType":"double","type":"Property","Name":"DefaultWaitTime","tags":[],"Class":"LuaSettings"},{"ValueType":"int","type":"Property","Name":"GcFrequency","tags":[],"Class":"LuaSettings"},{"ValueType":"int","type":"Property","Name":"GcLimit","tags":[],"Class":"LuaSettings"},{"ValueType":"int","type":"Property","Name":"GcPause","tags":[],"Class":"LuaSettings"},{"ValueType":"int","type":"Property","Name":"GcStepMul","tags":[],"Class":"LuaSettings"},{"ValueType":"float","type":"Property","Name":"WaitingThreadsBudget","tags":[],"Class":"LuaSettings"},{"Superclass":"Instance","type":"Class","Name":"LuaSourceContainer","tags":[]},{"Superclass":"LuaSourceContainer","type":"Class","Name":"BaseScript","tags":[]},{"ValueType":"bool","type":"Property","Name":"Disabled","tags":[],"Class":"BaseScript"},{"ValueType":"Content","type":"Property","Name":"LinkedSource","tags":[],"Class":"BaseScript"},{"Superclass":"BaseScript","type":"Class","Name":"CoreScript","tags":["notCreatable"]},{"Superclass":"BaseScript","type":"Class","Name":"Script","tags":[]},{"ValueType":"ProtectedString","type":"Property","Name":"Source","tags":["PluginSecurity"],"Class":"Script"},{"ReturnType":"string","Arguments":[],"Name":"GetHash","tags":["RobloxPlaceSecurity"],"Class":"Script","type":"Function"},{"Superclass":"Script","type":"Class","Name":"LocalScript","tags":[]},{"Superclass":"LuaSourceContainer","type":"Class","Name":"ModuleScript","tags":[]},{"ValueType":"Content","type":"Property","Name":"LinkedSource","tags":[],"Class":"ModuleScript"},{"ValueType":"ProtectedString","type":"Property","Name":"Source","tags":["PluginSecurity"],"Class":"ModuleScript"},{"Superclass":"Instance","type":"Class","Name":"LuaWebService","tags":[]},{"Superclass":"Instance","type":"Class","Name":"MarketplaceService","tags":["notCreatable"]},{"ReturnType":"void","Arguments":[{"Type":"Instance","Name":"player","Default":null},{"Type":"string","Name":"productId","Default":null}],"Name":"PromptNativePurchase","tags":["RobloxScriptSecurity"],"Class":"MarketplaceService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Instance","Name":"player","Default":null},{"Type":"int","Name":"productId","Default":null},{"Type":"bool","Name":"equipIfPurchased","Default":"true"},{"Type":"CurrencyType","Name":"currencyType","Default":"Default"}],"Name":"PromptProductPurchase","tags":[],"Class":"MarketplaceService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Instance","Name":"player","Default":null},{"Type":"int","Name":"assetId","Default":null},{"Type":"bool","Name":"equipIfPurchased","Default":"true"},{"Type":"CurrencyType","Name":"currencyType","Default":"Default"}],"Name":"PromptPurchase","tags":[],"Class":"MarketplaceService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Instance","Name":"player","Default":null},{"Type":"string","Name":"productId","Default":null}],"Name":"PromptThirdPartyPurchase","tags":["RobloxPlaceSecurity"],"Class":"MarketplaceService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"assetId","Default":null},{"Type":"int","Name":"robuxAmount","Default":null}],"Name":"ReportAssetSale","tags":["RobloxScriptSecurity"],"Class":"MarketplaceService","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"ReportRobuxUpsellStarted","tags":["RobloxScriptSecurity"],"Class":"MarketplaceService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"ticket","Default":null},{"Type":"int","Name":"playerId","Default":null},{"Type":"int","Name":"productId","Default":null}],"Name":"SignalClientPurchaseSuccess","tags":["RobloxScriptSecurity"],"Class":"MarketplaceService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"userId","Default":null},{"Type":"int","Name":"productId","Default":null},{"Type":"bool","Name":"success","Default":null}],"Name":"SignalPromptProductPurchaseFinished","tags":["RobloxScriptSecurity"],"Class":"MarketplaceService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Instance","Name":"player","Default":null},{"Type":"int","Name":"assetId","Default":null},{"Type":"bool","Name":"success","Default":null}],"Name":"SignalPromptPurchaseFinished","tags":["RobloxScriptSecurity"],"Class":"MarketplaceService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"bool","Name":"value","Default":null}],"Name":"SignalServerLuaDialogClosed","tags":["RobloxScriptSecurity"],"Class":"MarketplaceService","type":"Function"},{"ReturnType":"Instance","Arguments":[],"Name":"GetDeveloperProductsAsync","tags":[],"Class":"MarketplaceService","type":"YieldFunction"},{"ReturnType":"Dictionary","Arguments":[{"Type":"int","Name":"assetId","Default":null},{"Type":"InfoType","Name":"infoType","Default":"Asset"}],"Name":"GetProductInfo","tags":[],"Class":"MarketplaceService","type":"YieldFunction"},{"ReturnType":"bool","Arguments":[{"Type":"Instance","Name":"player","Default":null},{"Type":"int","Name":"assetId","Default":null}],"Name":"PlayerOwnsAsset","tags":[],"Class":"MarketplaceService","type":"YieldFunction"},{"Arguments":[{"Name":"arguments","Type":"Tuple"}],"Name":"ClientLuaDialogRequested","tags":["RobloxScriptSecurity"],"Class":"MarketplaceService","type":"Event"},{"Arguments":[{"Name":"ticket","Type":"string"},{"Name":"playerId","Type":"int"},{"Name":"productId","Type":"int"}],"Name":"ClientPurchaseSuccess","tags":["RobloxScriptSecurity"],"Class":"MarketplaceService","type":"Event"},{"Arguments":[{"Name":"player","Type":"Instance"},{"Name":"productId","Type":"string"},{"Name":"wasPurchased","Type":"bool"}],"Name":"NativePurchaseFinished","tags":["RobloxScriptSecurity"],"Class":"MarketplaceService","type":"Event"},{"Arguments":[{"Name":"userId","Type":"int"},{"Name":"productId","Type":"int"},{"Name":"isPurchased","Type":"bool"}],"Name":"PromptProductPurchaseFinished","tags":["deprecated"],"Class":"MarketplaceService","type":"Event"},{"Arguments":[{"Name":"player","Type":"Instance"},{"Name":"productId","Type":"int"},{"Name":"equipIfPurchased","Type":"bool"},{"Name":"currencyType","Type":"CurrencyType"}],"Name":"PromptProductPurchaseRequested","tags":["RobloxScriptSecurity"],"Class":"MarketplaceService","type":"Event"},{"Arguments":[{"Name":"player","Type":"Instance"},{"Name":"assetId","Type":"int"},{"Name":"isPurchased","Type":"bool"}],"Name":"PromptPurchaseFinished","tags":[],"Class":"MarketplaceService","type":"Event"},{"Arguments":[{"Name":"player","Type":"Instance"},{"Name":"assetId","Type":"int"},{"Name":"equipIfPurchased","Type":"bool"},{"Name":"currencyType","Type":"CurrencyType"}],"Name":"PromptPurchaseRequested","tags":["RobloxScriptSecurity"],"Class":"MarketplaceService","type":"Event"},{"Arguments":[{"Name":"serverResponseTable","Type":"Dictionary"}],"Name":"ServerPurchaseVerification","tags":["RobloxScriptSecurity"],"Class":"MarketplaceService","type":"Event"},{"Arguments":[{"Name":"player","Type":"Instance"},{"Name":"productId","Type":"string"},{"Name":"receipt","Type":"string"},{"Name":"wasPurchased","Type":"bool"}],"Name":"ThirdPartyPurchaseFinished","tags":["RobloxPlaceSecurity"],"Class":"MarketplaceService","type":"Event"},{"ReturnType":"ProductPurchaseDecision","Arguments":[{"Name":"receiptInfo","Type":"Dictionary"}],"Name":"ProcessReceipt","tags":[],"Class":"MarketplaceService","type":"Callback"},{"Superclass":"Instance","type":"Class","Name":"Message","tags":["deprecated"]},{"ValueType":"string","type":"Property","Name":"Text","tags":[],"Class":"Message"},{"Superclass":"Message","type":"Class","Name":"Hint","tags":["deprecated"]},{"Superclass":"Instance","type":"Class","Name":"Mouse","tags":[]},{"ValueType":"CoordinateFrame","type":"Property","Name":"Hit","tags":["readonly"],"Class":"Mouse"},{"ValueType":"Content","type":"Property","Name":"Icon","tags":[],"Class":"Mouse"},{"ValueType":"CoordinateFrame","type":"Property","Name":"Origin","tags":["readonly"],"Class":"Mouse"},{"ValueType":"Object","type":"Property","Name":"Target","tags":["readonly"],"Class":"Mouse"},{"ValueType":"Object","type":"Property","Name":"TargetFilter","tags":[],"Class":"Mouse"},{"ValueType":"NormalId","type":"Property","Name":"TargetSurface","tags":["readonly"],"Class":"Mouse"},{"ValueType":"Ray","type":"Property","Name":"UnitRay","tags":["readonly"],"Class":"Mouse"},{"ValueType":"int","type":"Property","Name":"ViewSizeX","tags":["readonly"],"Class":"Mouse"},{"ValueType":"int","type":"Property","Name":"ViewSizeY","tags":["readonly"],"Class":"Mouse"},{"ValueType":"int","type":"Property","Name":"X","tags":["readonly"],"Class":"Mouse"},{"ValueType":"int","type":"Property","Name":"Y","tags":["readonly"],"Class":"Mouse"},{"ValueType":"CoordinateFrame","type":"Property","Name":"hit","tags":["deprecated","hidden","readonly"],"Class":"Mouse"},{"ValueType":"Object","type":"Property","Name":"target","tags":["deprecated","readonly"],"Class":"Mouse"},{"Arguments":[],"Name":"Button1Down","tags":[],"Class":"Mouse","type":"Event"},{"Arguments":[],"Name":"Button1Up","tags":[],"Class":"Mouse","type":"Event"},{"Arguments":[],"Name":"Button2Down","tags":[],"Class":"Mouse","type":"Event"},{"Arguments":[],"Name":"Button2Up","tags":[],"Class":"Mouse","type":"Event"},{"Arguments":[],"Name":"Idle","tags":[],"Class":"Mouse","type":"Event"},{"Arguments":[{"Name":"key","Type":"string"}],"Name":"KeyDown","tags":["deprecated"],"Class":"Mouse","type":"Event"},{"Arguments":[{"Name":"key","Type":"string"}],"Name":"KeyUp","tags":["deprecated"],"Class":"Mouse","type":"Event"},{"Arguments":[],"Name":"Move","tags":[],"Class":"Mouse","type":"Event"},{"Arguments":[],"Name":"WheelBackward","tags":[],"Class":"Mouse","type":"Event"},{"Arguments":[],"Name":"WheelForward","tags":[],"Class":"Mouse","type":"Event"},{"Arguments":[{"Name":"key","Type":"string"}],"Name":"keyDown","tags":["deprecated"],"Class":"Mouse","type":"Event"},{"Superclass":"Mouse","type":"Class","Name":"PlayerMouse","tags":[]},{"Superclass":"Mouse","type":"Class","Name":"PluginMouse","tags":[]},{"Arguments":[{"Name":"instances","Type":"Objects"}],"Name":"DragEnter","tags":["PluginSecurity"],"Class":"PluginMouse","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"NetworkMarker","tags":["notbrowsable"]},{"Arguments":[],"Name":"Received","tags":[],"Class":"NetworkMarker","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"NetworkPeer","tags":["notbrowsable"]},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"limit","Default":null}],"Name":"SetOutgoingKBPSLimit","tags":["PluginSecurity"],"Class":"NetworkPeer","type":"Function"},{"Superclass":"NetworkPeer","type":"Class","Name":"NetworkClient","tags":["notCreatable"]},{"ValueType":"string","type":"Property","Name":"Ticket","tags":[],"Class":"NetworkClient"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"blockDuration","Default":"3000"}],"Name":"Disconnect","tags":["LocalUserSecurity"],"Class":"NetworkClient","type":"Function"},{"ReturnType":"Instance","Arguments":[{"Type":"int","Name":"userId","Default":null},{"Type":"string","Name":"server","Default":null},{"Type":"int","Name":"serverPort","Default":null},{"Type":"int","Name":"clientPort","Default":"0"},{"Type":"int","Name":"threadSleepTime","Default":"30"}],"Name":"PlayerConnect","tags":["PluginSecurity"],"Class":"NetworkClient","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"gameSessionID","Default":null}],"Name":"SetGameSessionID","tags":["RobloxSecurity"],"Class":"NetworkClient","type":"Function"},{"Arguments":[{"Name":"peer","Type":"string"},{"Name":"replicator","Type":"Instance"}],"Name":"ConnectionAccepted","tags":[],"Class":"NetworkClient","type":"Event"},{"Arguments":[{"Name":"peer","Type":"string"},{"Name":"code","Type":"int"},{"Name":"reason","Type":"string"}],"Name":"ConnectionFailed","tags":[],"Class":"NetworkClient","type":"Event"},{"Arguments":[{"Name":"peer","Type":"string"}],"Name":"ConnectionRejected","tags":[],"Class":"NetworkClient","type":"Event"},{"Superclass":"NetworkPeer","type":"Class","Name":"NetworkServer","tags":["notCreatable"]},{"ValueType":"int","type":"Property","Name":"Port","tags":["readonly"],"Class":"NetworkServer"},{"ReturnType":"void","Arguments":[],"Name":"ConfigureAsCloudEditServer","tags":["RobloxSecurity"],"Class":"NetworkServer","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"ConfigureAsTeamTestServer","tags":["RobloxSecurity"],"Class":"NetworkServer","type":"Function"},{"ReturnType":"int","Arguments":[],"Name":"GetClientCount","tags":["LocalUserSecurity"],"Class":"NetworkServer","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"bool","Name":"value","Default":null}],"Name":"SetIsPlayerAuthenticationRequired","tags":["RobloxSecurity"],"Class":"NetworkServer","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"port","Default":"0"},{"Type":"int","Name":"threadSleepTime","Default":"20"}],"Name":"Start","tags":["PluginSecurity"],"Class":"NetworkServer","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"blockDuration","Default":"1000"}],"Name":"Stop","tags":["LocalUserSecurity"],"Class":"NetworkServer","type":"Function"},{"Arguments":[{"Name":"peer","Type":"Instance"},{"Name":"result","Type":"FilterResult"},{"Name":"instance","Type":"Instance"},{"Name":"member","Type":"string"}],"Name":"DataBasicFiltered","tags":["LocalUserSecurity"],"Class":"NetworkServer","type":"Event"},{"Arguments":[{"Name":"peer","Type":"Instance"},{"Name":"result","Type":"FilterResult"},{"Name":"instance","Type":"Instance"},{"Name":"member","Type":"string"}],"Name":"DataCustomFiltered","tags":["LocalUserSecurity"],"Class":"NetworkServer","type":"Event"},{"Arguments":[{"Name":"peer","Type":"string"},{"Name":"replicator","Type":"Instance"}],"Name":"IncommingConnection","tags":["RobloxScriptSecurity"],"Class":"NetworkServer","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"NetworkReplicator","tags":["notCreatable"]},{"ValueType":"string","type":"Property","Name":"MachineAddress","tags":["LocalUserSecurity","readonly"],"Class":"NetworkReplicator"},{"ValueType":"int","type":"Property","Name":"Port","tags":["LocalUserSecurity","readonly"],"Class":"NetworkReplicator"},{"ReturnType":"void","Arguments":[],"Name":"CloseConnection","tags":["LocalUserSecurity"],"Class":"NetworkReplicator","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"DisableProcessPackets","tags":["LocalUserSecurity"],"Class":"NetworkReplicator","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"EnableProcessPackets","tags":["LocalUserSecurity"],"Class":"NetworkReplicator","type":"Function"},{"ReturnType":"Instance","Arguments":[],"Name":"GetPlayer","tags":[],"Class":"NetworkReplicator","type":"Function"},{"ReturnType":"string","Arguments":[{"Type":"int","Name":"verbosityLevel","Default":"0"}],"Name":"GetRakStatsString","tags":["PluginSecurity"],"Class":"NetworkReplicator","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"RequestCharacter","tags":["LocalUserSecurity"],"Class":"NetworkReplicator","type":"Function"},{"ReturnType":"Instance","Arguments":[],"Name":"SendMarker","tags":["LocalUserSecurity"],"Class":"NetworkReplicator","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"double","Name":"seconds","Default":null}],"Name":"SetPropSyncExpiration","tags":["LocalUserSecurity"],"Class":"NetworkReplicator","type":"Function"},{"Arguments":[{"Name":"peer","Type":"string"},{"Name":"lostConnection","Type":"bool"}],"Name":"Disconnection","tags":["LocalUserSecurity"],"Class":"NetworkReplicator","type":"Event"},{"Superclass":"NetworkReplicator","type":"Class","Name":"ClientReplicator","tags":["notCreatable"]},{"ReturnType":"void","Arguments":[{"Type":"bool","Name":"request","Default":null}],"Name":"RequestServerStats","tags":["RobloxScriptSecurity"],"Class":"ClientReplicator","type":"Function"},{"Arguments":[{"Name":"stats","Type":"Dictionary"}],"Name":"StatsReceived","tags":["RobloxScriptSecurity"],"Class":"ClientReplicator","type":"Event"},{"Superclass":"NetworkReplicator","type":"Class","Name":"ServerReplicator","tags":["notCreatable"]},{"ReturnType":"void","Arguments":[],"Name":"PreventTerrainChanges","tags":["RobloxPlaceSecurity"],"Class":"ServerReplicator","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"bool","Name":"value","Default":null}],"Name":"SetBasicFilteringEnabled","tags":["RobloxPlaceSecurity"],"Class":"ServerReplicator","type":"Function"},{"Arguments":[{"Name":"userId","Type":"int"},{"Name":"isAuthenticated","Type":"bool"},{"Name":"protocolVersion","Type":"int"}],"Name":"TicketProcessed","tags":[],"Class":"ServerReplicator","type":"Event"},{"ReturnType":"FilterResult","Arguments":[{"Name":"deletingItem","Type":"Instance"}],"Name":"DeleteFilter","tags":["RobloxPlaceSecurity","noyield"],"Class":"ServerReplicator","type":"Callback"},{"ReturnType":"FilterResult","Arguments":[{"Name":"firingItem","Type":"Instance"},{"Name":"event","Type":"string"}],"Name":"EventFilter","tags":["RobloxPlaceSecurity","noyield"],"Class":"ServerReplicator","type":"Callback"},{"ReturnType":"FilterResult","Arguments":[{"Name":"newItem","Type":"Instance"},{"Name":"parent","Type":"Instance"}],"Name":"NewFilter","tags":["RobloxPlaceSecurity","noyield"],"Class":"ServerReplicator","type":"Callback"},{"ReturnType":"FilterResult","Arguments":[{"Name":"changingItem","Type":"Instance"},{"Name":"member","Type":"string"},{"Name":"value","Type":"Variant"}],"Name":"PropertyFilter","tags":["RobloxPlaceSecurity","noyield"],"Class":"ServerReplicator","type":"Callback"},{"Superclass":"Instance","type":"Class","Name":"NetworkSettings","tags":["notbrowsable"]},{"ValueType":"bool","type":"Property","Name":"ArePhysicsRejectionsReported","tags":[],"Class":"NetworkSettings"},{"ValueType":"int","type":"Property","Name":"CanSendPacketBufferLimit","tags":[],"Class":"NetworkSettings"},{"ValueType":"float","type":"Property","Name":"ClientPhysicsSendRate","tags":[],"Class":"NetworkSettings"},{"ValueType":"float","type":"Property","Name":"DataGCRate","tags":[],"Class":"NetworkSettings"},{"ValueType":"int","type":"Property","Name":"DataMtuAdjust","tags":[],"Class":"NetworkSettings"},{"ValueType":"PacketPriority","type":"Property","Name":"DataSendPriority","tags":["hidden"],"Class":"NetworkSettings"},{"ValueType":"float","type":"Property","Name":"DataSendRate","tags":[],"Class":"NetworkSettings"},{"ValueType":"bool","type":"Property","Name":"EnableHeavyCompression","tags":["hidden"],"Class":"NetworkSettings"},{"ValueType":"bool","type":"Property","Name":"ExperimentalPhysicsEnabled","tags":[],"Class":"NetworkSettings"},{"ValueType":"int","type":"Property","Name":"ExtraMemoryUsed","tags":["PluginSecurity","hidden"],"Class":"NetworkSettings"},{"ValueType":"float","type":"Property","Name":"FreeMemoryMBytes","tags":["PluginSecurity","hidden","readonly"],"Class":"NetworkSettings"},{"ValueType":"float","type":"Property","Name":"FreeMemoryPoolMBytes","tags":["PluginSecurity","hidden","readonly"],"Class":"NetworkSettings"},{"ValueType":"double","type":"Property","Name":"IncommingReplicationLag","tags":[],"Class":"NetworkSettings"},{"ValueType":"bool","type":"Property","Name":"IsQueueErrorComputed","tags":[],"Class":"NetworkSettings"},{"ValueType":"bool","type":"Property","Name":"IsThrottledByCongestionControl","tags":[],"Class":"NetworkSettings"},{"ValueType":"bool","type":"Property","Name":"IsThrottledByOutgoingBandwidthLimit","tags":[],"Class":"NetworkSettings"},{"ValueType":"int","type":"Property","Name":"MaxDataModelSendBuffer","tags":["deprecated"],"Class":"NetworkSettings"},{"ValueType":"float","type":"Property","Name":"NetworkOwnerRate","tags":[],"Class":"NetworkSettings"},{"ValueType":"int","type":"Property","Name":"PhysicsMtuAdjust","tags":[],"Class":"NetworkSettings"},{"ValueType":"PhysicsReceiveMethod","type":"Property","Name":"PhysicsReceive","tags":[],"Class":"NetworkSettings"},{"ValueType":"PhysicsSendMethod","type":"Property","Name":"PhysicsSend","tags":[],"Class":"NetworkSettings"},{"ValueType":"PacketPriority","type":"Property","Name":"PhysicsSendPriority","tags":["hidden"],"Class":"NetworkSettings"},{"ValueType":"float","type":"Property","Name":"PhysicsSendRate","tags":[],"Class":"NetworkSettings"},{"ValueType":"int","type":"Property","Name":"PreferredClientPort","tags":[],"Class":"NetworkSettings"},{"ValueType":"bool","type":"Property","Name":"PrintBits","tags":[],"Class":"NetworkSettings"},{"ValueType":"bool","type":"Property","Name":"PrintEvents","tags":[],"Class":"NetworkSettings"},{"ValueType":"bool","type":"Property","Name":"PrintFilters","tags":[],"Class":"NetworkSettings"},{"ValueType":"bool","type":"Property","Name":"PrintInstances","tags":[],"Class":"NetworkSettings"},{"ValueType":"bool","type":"Property","Name":"PrintPhysicsErrors","tags":[],"Class":"NetworkSettings"},{"ValueType":"bool","type":"Property","Name":"PrintProperties","tags":[],"Class":"NetworkSettings"},{"ValueType":"bool","type":"Property","Name":"PrintSplitMessage","tags":[],"Class":"NetworkSettings"},{"ValueType":"bool","type":"Property","Name":"PrintStreamInstanceQuota","tags":[],"Class":"NetworkSettings"},{"ValueType":"bool","type":"Property","Name":"PrintTouches","tags":[],"Class":"NetworkSettings"},{"ValueType":"double","type":"Property","Name":"ReceiveRate","tags":[],"Class":"NetworkSettings"},{"ValueType":"bool","type":"Property","Name":"RenderStreamedRegions","tags":[],"Class":"NetworkSettings"},{"ValueType":"string","type":"Property","Name":"ReportStatURL","tags":["deprecated","hidden"],"Class":"NetworkSettings"},{"ValueType":"int","type":"Property","Name":"SendPacketBufferLimit","tags":[],"Class":"NetworkSettings"},{"ValueType":"bool","type":"Property","Name":"ShowActiveAnimationAsset","tags":[],"Class":"NetworkSettings"},{"ValueType":"bool","type":"Property","Name":"ShowPartMovementWayPoint","tags":[],"Class":"NetworkSettings"},{"ValueType":"int","type":"Property","Name":"TotalNumMovementWayPoint","tags":[],"Class":"NetworkSettings"},{"ValueType":"float","type":"Property","Name":"TouchSendRate","tags":[],"Class":"NetworkSettings"},{"ValueType":"bool","type":"Property","Name":"TrackDataTypes","tags":[],"Class":"NetworkSettings"},{"ValueType":"bool","type":"Property","Name":"TrackPhysicsDetails","tags":[],"Class":"NetworkSettings"},{"ValueType":"bool","type":"Property","Name":"UseInstancePacketCache","tags":[],"Class":"NetworkSettings"},{"ValueType":"bool","type":"Property","Name":"UsePhysicsPacketCache","tags":[],"Class":"NetworkSettings"},{"ValueType":"int","type":"Property","Name":"WaitingForCharacterLogRate","tags":["deprecated","hidden"],"Class":"NetworkSettings"},{"Superclass":"Instance","type":"Class","Name":"NotificationService","tags":["notCreatable"]},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"userId","Default":null}],"Name":"CancelAllNotification","tags":["RobloxPlaceSecurity"],"Class":"NotificationService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"userId","Default":null},{"Type":"int","Name":"alertId","Default":null}],"Name":"CancelNotification","tags":["RobloxPlaceSecurity"],"Class":"NotificationService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"userId","Default":null},{"Type":"int","Name":"alertId","Default":null},{"Type":"string","Name":"alertMsg","Default":null},{"Type":"int","Name":"minutesToFire","Default":null}],"Name":"ScheduleNotification","tags":["RobloxPlaceSecurity"],"Class":"NotificationService","type":"Function"},{"ReturnType":"Array","Arguments":[{"Type":"int","Name":"userId","Default":null}],"Name":"GetScheduledNotifications","tags":["RobloxPlaceSecurity"],"Class":"NotificationService","type":"YieldFunction"},{"Superclass":"Instance","type":"Class","Name":"NumberValue","tags":[]},{"ValueType":"double","type":"Property","Name":"Value","tags":[],"Class":"NumberValue"},{"Arguments":[{"Name":"value","Type":"double"}],"Name":"Changed","tags":[],"Class":"NumberValue","type":"Event"},{"Arguments":[{"Name":"value","Type":"double"}],"Name":"changed","tags":["deprecated"],"Class":"NumberValue","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"ObjectValue","tags":[]},{"ValueType":"Object","type":"Property","Name":"Value","tags":[],"Class":"ObjectValue"},{"Arguments":[{"Name":"value","Type":"Instance"}],"Name":"Changed","tags":[],"Class":"ObjectValue","type":"Event"},{"Arguments":[{"Name":"value","Type":"Instance"}],"Name":"changed","tags":["deprecated"],"Class":"ObjectValue","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"OneQuarterClusterPacketCacheBase","tags":[]},{"Superclass":"Instance","type":"Class","Name":"PVInstance","tags":["notbrowsable"]},{"ValueType":"CoordinateFrame","type":"Property","Name":"CoordinateFrame","tags":["deprecated","writeonly"],"Class":"PVInstance"},{"Superclass":"PVInstance","type":"Class","Name":"BasePart","tags":["notbrowsable"]},{"ValueType":"bool","type":"Property","Name":"Anchored","tags":[],"Class":"BasePart"},{"ValueType":"float","type":"Property","Name":"BackParamA","tags":[],"Class":"BasePart"},{"ValueType":"float","type":"Property","Name":"BackParamB","tags":[],"Class":"BasePart"},{"ValueType":"SurfaceType","type":"Property","Name":"BackSurface","tags":[],"Class":"BasePart"},{"ValueType":"InputType","type":"Property","Name":"BackSurfaceInput","tags":[],"Class":"BasePart"},{"ValueType":"float","type":"Property","Name":"BottomParamA","tags":[],"Class":"BasePart"},{"ValueType":"float","type":"Property","Name":"BottomParamB","tags":[],"Class":"BasePart"},{"ValueType":"SurfaceType","type":"Property","Name":"BottomSurface","tags":[],"Class":"BasePart"},{"ValueType":"InputType","type":"Property","Name":"BottomSurfaceInput","tags":[],"Class":"BasePart"},{"ValueType":"BrickColor","type":"Property","Name":"BrickColor","tags":[],"Class":"BasePart"},{"ValueType":"CoordinateFrame","type":"Property","Name":"CFrame","tags":[],"Class":"BasePart"},{"ValueType":"bool","type":"Property","Name":"CanCollide","tags":[],"Class":"BasePart"},{"ValueType":"Color3","type":"Property","Name":"Color","tags":["deprecated"],"Class":"BasePart"},{"ValueType":"PhysicalProperties","type":"Property","Name":"CustomPhysicalProperties","tags":[],"Class":"BasePart"},{"ValueType":"float","type":"Property","Name":"Elasticity","tags":[],"Class":"BasePart"},{"ValueType":"float","type":"Property","Name":"Friction","tags":[],"Class":"BasePart"},{"ValueType":"float","type":"Property","Name":"FrontParamA","tags":[],"Class":"BasePart"},{"ValueType":"float","type":"Property","Name":"FrontParamB","tags":[],"Class":"BasePart"},{"ValueType":"SurfaceType","type":"Property","Name":"FrontSurface","tags":[],"Class":"BasePart"},{"ValueType":"InputType","type":"Property","Name":"FrontSurfaceInput","tags":[],"Class":"BasePart"},{"ValueType":"float","type":"Property","Name":"LeftParamA","tags":[],"Class":"BasePart"},{"ValueType":"float","type":"Property","Name":"LeftParamB","tags":[],"Class":"BasePart"},{"ValueType":"SurfaceType","type":"Property","Name":"LeftSurface","tags":[],"Class":"BasePart"},{"ValueType":"InputType","type":"Property","Name":"LeftSurfaceInput","tags":[],"Class":"BasePart"},{"ValueType":"float","type":"Property","Name":"LocalTransparencyModifier","tags":["hidden"],"Class":"BasePart"},{"ValueType":"bool","type":"Property","Name":"Locked","tags":[],"Class":"BasePart"},{"ValueType":"Material","type":"Property","Name":"Material","tags":[],"Class":"BasePart"},{"ValueType":"Vector3","type":"Property","Name":"Position","tags":[],"Class":"BasePart"},{"ValueType":"float","type":"Property","Name":"ReceiveAge","tags":["hidden","readonly"],"Class":"BasePart"},{"ValueType":"float","type":"Property","Name":"Reflectance","tags":[],"Class":"BasePart"},{"ValueType":"int","type":"Property","Name":"ResizeIncrement","tags":["readonly"],"Class":"BasePart"},{"ValueType":"Faces","type":"Property","Name":"ResizeableFaces","tags":["readonly"],"Class":"BasePart"},{"ValueType":"float","type":"Property","Name":"RightParamA","tags":[],"Class":"BasePart"},{"ValueType":"float","type":"Property","Name":"RightParamB","tags":[],"Class":"BasePart"},{"ValueType":"SurfaceType","type":"Property","Name":"RightSurface","tags":[],"Class":"BasePart"},{"ValueType":"InputType","type":"Property","Name":"RightSurfaceInput","tags":[],"Class":"BasePart"},{"ValueType":"Vector3","type":"Property","Name":"RotVelocity","tags":[],"Class":"BasePart"},{"ValueType":"Vector3","type":"Property","Name":"Rotation","tags":[],"Class":"BasePart"},{"ValueType":"Vector3","type":"Property","Name":"Size","tags":[],"Class":"BasePart"},{"ValueType":"float","type":"Property","Name":"SpecificGravity","tags":["readonly"],"Class":"BasePart"},{"ValueType":"float","type":"Property","Name":"TopParamA","tags":[],"Class":"BasePart"},{"ValueType":"float","type":"Property","Name":"TopParamB","tags":[],"Class":"BasePart"},{"ValueType":"SurfaceType","type":"Property","Name":"TopSurface","tags":[],"Class":"BasePart"},{"ValueType":"InputType","type":"Property","Name":"TopSurfaceInput","tags":[],"Class":"BasePart"},{"ValueType":"float","type":"Property","Name":"Transparency","tags":[],"Class":"BasePart"},{"ValueType":"Vector3","type":"Property","Name":"Velocity","tags":[],"Class":"BasePart"},{"ValueType":"BrickColor","type":"Property","Name":"brickColor","tags":["deprecated"],"Class":"BasePart"},{"ReturnType":"void","Arguments":[],"Name":"BreakJoints","tags":[],"Class":"BasePart","type":"Function"},{"ReturnType":"Tuple","Arguments":[],"Name":"CanSetNetworkOwnership","tags":[],"Class":"BasePart","type":"Function"},{"ReturnType":"Objects","Arguments":[{"Type":"bool","Name":"recursive","Default":"false"}],"Name":"GetConnectedParts","tags":[],"Class":"BasePart","type":"Function"},{"ReturnType":"float","Arguments":[],"Name":"GetMass","tags":[],"Class":"BasePart","type":"Function"},{"ReturnType":"Instance","Arguments":[],"Name":"GetNetworkOwner","tags":[],"Class":"BasePart","type":"Function"},{"ReturnType":"bool","Arguments":[],"Name":"GetNetworkOwnershipAuto","tags":[],"Class":"BasePart","type":"Function"},{"ReturnType":"CoordinateFrame","Arguments":[],"Name":"GetRenderCFrame","tags":[],"Class":"BasePart","type":"Function"},{"ReturnType":"Instance","Arguments":[],"Name":"GetRootPart","tags":[],"Class":"BasePart","type":"Function"},{"ReturnType":"Objects","Arguments":[],"Name":"GetTouchingParts","tags":[],"Class":"BasePart","type":"Function"},{"ReturnType":"bool","Arguments":[],"Name":"IsGrounded","tags":[],"Class":"BasePart","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"MakeJoints","tags":[],"Class":"BasePart","type":"Function"},{"ReturnType":"bool","Arguments":[{"Type":"NormalId","Name":"normalId","Default":null},{"Type":"int","Name":"deltaAmount","Default":null}],"Name":"Resize","tags":[],"Class":"BasePart","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Instance","Name":"playerInstance","Default":"nil"}],"Name":"SetNetworkOwner","tags":[],"Class":"BasePart","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"SetNetworkOwnershipAuto","tags":[],"Class":"BasePart","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"breakJoints","tags":["deprecated"],"Class":"BasePart","type":"Function"},{"ReturnType":"float","Arguments":[],"Name":"getMass","tags":["deprecated"],"Class":"BasePart","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"makeJoints","tags":["deprecated"],"Class":"BasePart","type":"Function"},{"ReturnType":"bool","Arguments":[{"Type":"NormalId","Name":"normalId","Default":null},{"Type":"int","Name":"deltaAmount","Default":null}],"Name":"resize","tags":["deprecated"],"Class":"BasePart","type":"Function"},{"Arguments":[{"Name":"part","Type":"Instance"}],"Name":"LocalSimulationTouched","tags":["deprecated"],"Class":"BasePart","type":"Event"},{"Arguments":[],"Name":"OutfitChanged","tags":["deprecated"],"Class":"BasePart","type":"Event"},{"Arguments":[{"Name":"otherPart","Type":"Instance"}],"Name":"StoppedTouching","tags":["deprecated"],"Class":"BasePart","type":"Event"},{"Arguments":[{"Name":"otherPart","Type":"Instance"}],"Name":"TouchEnded","tags":[],"Class":"BasePart","type":"Event"},{"Arguments":[{"Name":"otherPart","Type":"Instance"}],"Name":"Touched","tags":[],"Class":"BasePart","type":"Event"},{"Arguments":[{"Name":"otherPart","Type":"Instance"}],"Name":"touched","tags":["deprecated"],"Class":"BasePart","type":"Event"},{"Superclass":"BasePart","type":"Class","Name":"CornerWedgePart","tags":[]},{"Superclass":"BasePart","type":"Class","Name":"FormFactorPart","tags":[]},{"ValueType":"FormFactor","type":"Property","Name":"FormFactor","tags":["deprecated"],"Class":"FormFactorPart"},{"ValueType":"FormFactor","type":"Property","Name":"formFactor","tags":["deprecated","hidden"],"Class":"FormFactorPart"},{"Superclass":"FormFactorPart","type":"Class","Name":"Part","tags":[]},{"ValueType":"PartType","type":"Property","Name":"Shape","tags":[],"Class":"Part"},{"Superclass":"Part","type":"Class","Name":"FlagStand","tags":["deprecated"]},{"ValueType":"BrickColor","type":"Property","Name":"TeamColor","tags":[],"Class":"FlagStand"},{"Arguments":[{"Name":"player","Type":"Instance"}],"Name":"FlagCaptured","tags":[],"Class":"FlagStand","type":"Event"},{"Superclass":"Part","type":"Class","Name":"Platform","tags":[]},{"Superclass":"Part","type":"Class","Name":"Seat","tags":[]},{"ValueType":"bool","type":"Property","Name":"Disabled","tags":[],"Class":"Seat"},{"ValueType":"Object","type":"Property","Name":"Occupant","tags":["readonly"],"Class":"Seat"},{"Superclass":"Part","type":"Class","Name":"SkateboardPlatform","tags":["deprecated"]},{"ValueType":"Object","type":"Property","Name":"Controller","tags":["readonly"],"Class":"SkateboardPlatform"},{"ValueType":"Object","type":"Property","Name":"ControllingHumanoid","tags":["readonly"],"Class":"SkateboardPlatform"},{"ValueType":"int","type":"Property","Name":"Steer","tags":[],"Class":"SkateboardPlatform"},{"ValueType":"bool","type":"Property","Name":"StickyWheels","tags":[],"Class":"SkateboardPlatform"},{"ValueType":"int","type":"Property","Name":"Throttle","tags":[],"Class":"SkateboardPlatform"},{"ReturnType":"void","Arguments":[{"Type":"Vector3","Name":"impulseWorld","Default":null}],"Name":"ApplySpecificImpulse","tags":[],"Class":"SkateboardPlatform","type":"Function"},{"Arguments":[{"Name":"humanoid","Type":"Instance"},{"Name":"skateboardController","Type":"Instance"}],"Name":"Equipped","tags":[],"Class":"SkateboardPlatform","type":"Event"},{"Arguments":[{"Name":"newState","Type":"MoveState"},{"Name":"oldState","Type":"MoveState"}],"Name":"MoveStateChanged","tags":[],"Class":"SkateboardPlatform","type":"Event"},{"Arguments":[{"Name":"humanoid","Type":"Instance"}],"Name":"Unequipped","tags":[],"Class":"SkateboardPlatform","type":"Event"},{"Arguments":[{"Name":"humanoid","Type":"Instance"},{"Name":"skateboardController","Type":"Instance"}],"Name":"equipped","tags":["deprecated"],"Class":"SkateboardPlatform","type":"Event"},{"Arguments":[{"Name":"humanoid","Type":"Instance"}],"Name":"unequipped","tags":["deprecated"],"Class":"SkateboardPlatform","type":"Event"},{"Superclass":"Part","type":"Class","Name":"SpawnLocation","tags":[]},{"ValueType":"bool","type":"Property","Name":"AllowTeamChangeOnTouch","tags":[],"Class":"SpawnLocation"},{"ValueType":"int","type":"Property","Name":"Duration","tags":[],"Class":"SpawnLocation"},{"ValueType":"bool","type":"Property","Name":"Enabled","tags":[],"Class":"SpawnLocation"},{"ValueType":"bool","type":"Property","Name":"Neutral","tags":[],"Class":"SpawnLocation"},{"ValueType":"BrickColor","type":"Property","Name":"TeamColor","tags":[],"Class":"SpawnLocation"},{"Superclass":"FormFactorPart","type":"Class","Name":"WedgePart","tags":[]},{"Superclass":"BasePart","type":"Class","Name":"MeshPart","tags":[]},{"ValueType":"Material","type":"Property","Name":"Material","tags":["deprecated","readonly"],"Class":"MeshPart"},{"ValueType":"Content","type":"Property","Name":"TextureID","tags":[],"Class":"MeshPart"},{"Superclass":"BasePart","type":"Class","Name":"ParallelRampPart","tags":["deprecated","notbrowsable"]},{"Superclass":"BasePart","type":"Class","Name":"PartOperation","tags":[]},{"ValueType":"bool","type":"Property","Name":"UsePartColor","tags":[],"Class":"PartOperation"},{"Superclass":"PartOperation","type":"Class","Name":"NegateOperation","tags":[]},{"Superclass":"PartOperation","type":"Class","Name":"UnionOperation","tags":[]},{"Superclass":"BasePart","type":"Class","Name":"PrismPart","tags":["deprecated","notbrowsable"]},{"ValueType":"PrismSides","type":"Property","Name":"Sides","tags":[],"Class":"PrismPart"},{"Superclass":"BasePart","type":"Class","Name":"PyramidPart","tags":["deprecated","notbrowsable"]},{"ValueType":"PyramidSides","type":"Property","Name":"Sides","tags":[],"Class":"PyramidPart"},{"Superclass":"BasePart","type":"Class","Name":"RightAngleRampPart","tags":["deprecated","notbrowsable"]},{"Superclass":"BasePart","type":"Class","Name":"Terrain","tags":["notCreatable"]},{"ValueType":"bool","type":"Property","Name":"IsSmooth","tags":["readonly"],"Class":"Terrain"},{"ValueType":"Region3int16","type":"Property","Name":"MaxExtents","tags":["readonly"],"Class":"Terrain"},{"ValueType":"Color3","type":"Property","Name":"WaterColor","tags":[],"Class":"Terrain"},{"ValueType":"float","type":"Property","Name":"WaterTransparency","tags":[],"Class":"Terrain"},{"ValueType":"float","type":"Property","Name":"WaterWaveSize","tags":[],"Class":"Terrain"},{"ValueType":"float","type":"Property","Name":"WaterWaveSpeed","tags":[],"Class":"Terrain"},{"ReturnType":"bool","Arguments":[{"Type":"int","Name":"x","Default":null},{"Type":"int","Name":"y","Default":null},{"Type":"int","Name":"z","Default":null}],"Name":"AutowedgeCell","tags":[],"Class":"Terrain","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Region3int16","Name":"region","Default":null}],"Name":"AutowedgeCells","tags":[],"Class":"Terrain","type":"Function"},{"ReturnType":"Vector3","Arguments":[{"Type":"int","Name":"x","Default":null},{"Type":"int","Name":"y","Default":null},{"Type":"int","Name":"z","Default":null}],"Name":"CellCenterToWorld","tags":[],"Class":"Terrain","type":"Function"},{"ReturnType":"Vector3","Arguments":[{"Type":"int","Name":"x","Default":null},{"Type":"int","Name":"y","Default":null},{"Type":"int","Name":"z","Default":null}],"Name":"CellCornerToWorld","tags":[],"Class":"Terrain","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"Clear","tags":[],"Class":"Terrain","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"ConvertToSmooth","tags":["PluginSecurity"],"Class":"Terrain","type":"Function"},{"ReturnType":"Instance","Arguments":[{"Type":"Region3int16","Name":"region","Default":null}],"Name":"CopyRegion","tags":[],"Class":"Terrain","type":"Function"},{"ReturnType":"int","Arguments":[],"Name":"CountCells","tags":[],"Class":"Terrain","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Vector3","Name":"center","Default":null},{"Type":"float","Name":"radius","Default":null},{"Type":"Material","Name":"material","Default":null}],"Name":"FillBall","tags":[],"Class":"Terrain","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"CoordinateFrame","Name":"cframe","Default":null},{"Type":"Vector3","Name":"size","Default":null},{"Type":"Material","Name":"material","Default":null}],"Name":"FillBlock","tags":[],"Class":"Terrain","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Region3","Name":"region","Default":null},{"Type":"float","Name":"resolution","Default":null},{"Type":"Material","Name":"material","Default":null}],"Name":"FillRegion","tags":[],"Class":"Terrain","type":"Function"},{"ReturnType":"Tuple","Arguments":[{"Type":"int","Name":"x","Default":null},{"Type":"int","Name":"y","Default":null},{"Type":"int","Name":"z","Default":null}],"Name":"GetCell","tags":[],"Class":"Terrain","type":"Function"},{"ReturnType":"Tuple","Arguments":[{"Type":"int","Name":"x","Default":null},{"Type":"int","Name":"y","Default":null},{"Type":"int","Name":"z","Default":null}],"Name":"GetWaterCell","tags":[],"Class":"Terrain","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Instance","Name":"region","Default":null},{"Type":"Vector3int16","Name":"corner","Default":null},{"Type":"bool","Name":"pasteEmptyCells","Default":null}],"Name":"PasteRegion","tags":[],"Class":"Terrain","type":"Function"},{"ReturnType":"Tuple","Arguments":[{"Type":"Region3","Name":"region","Default":null},{"Type":"float","Name":"resolution","Default":null}],"Name":"ReadVoxels","tags":[],"Class":"Terrain","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"x","Default":null},{"Type":"int","Name":"y","Default":null},{"Type":"int","Name":"z","Default":null},{"Type":"CellMaterial","Name":"material","Default":null},{"Type":"CellBlock","Name":"block","Default":null},{"Type":"CellOrientation","Name":"orientation","Default":null}],"Name":"SetCell","tags":[],"Class":"Terrain","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Region3int16","Name":"region","Default":null},{"Type":"CellMaterial","Name":"material","Default":null},{"Type":"CellBlock","Name":"block","Default":null},{"Type":"CellOrientation","Name":"orientation","Default":null}],"Name":"SetCells","tags":[],"Class":"Terrain","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"x","Default":null},{"Type":"int","Name":"y","Default":null},{"Type":"int","Name":"z","Default":null},{"Type":"WaterForce","Name":"force","Default":null},{"Type":"WaterDirection","Name":"direction","Default":null}],"Name":"SetWaterCell","tags":[],"Class":"Terrain","type":"Function"},{"ReturnType":"Vector3","Arguments":[{"Type":"Vector3","Name":"position","Default":null}],"Name":"WorldToCell","tags":[],"Class":"Terrain","type":"Function"},{"ReturnType":"Vector3","Arguments":[{"Type":"Vector3","Name":"position","Default":null}],"Name":"WorldToCellPreferEmpty","tags":[],"Class":"Terrain","type":"Function"},{"ReturnType":"Vector3","Arguments":[{"Type":"Vector3","Name":"position","Default":null}],"Name":"WorldToCellPreferSolid","tags":[],"Class":"Terrain","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Region3","Name":"region","Default":null},{"Type":"float","Name":"resolution","Default":null},{"Type":"Array","Name":"materials","Default":null},{"Type":"Array","Name":"occupancy","Default":null}],"Name":"WriteVoxels","tags":[],"Class":"Terrain","type":"Function"},{"Superclass":"BasePart","type":"Class","Name":"TrussPart","tags":[]},{"ValueType":"Style","type":"Property","Name":"Style","tags":[],"Class":"TrussPart"},{"Superclass":"BasePart","type":"Class","Name":"VehicleSeat","tags":[]},{"ValueType":"int","type":"Property","Name":"AreHingesDetected","tags":["readonly"],"Class":"VehicleSeat"},{"ValueType":"bool","type":"Property","Name":"Disabled","tags":[],"Class":"VehicleSeat"},{"ValueType":"bool","type":"Property","Name":"HeadsUpDisplay","tags":[],"Class":"VehicleSeat"},{"ValueType":"float","type":"Property","Name":"MaxSpeed","tags":[],"Class":"VehicleSeat"},{"ValueType":"Object","type":"Property","Name":"Occupant","tags":["readonly"],"Class":"VehicleSeat"},{"ValueType":"int","type":"Property","Name":"Steer","tags":[],"Class":"VehicleSeat"},{"ValueType":"int","type":"Property","Name":"Throttle","tags":[],"Class":"VehicleSeat"},{"ValueType":"float","type":"Property","Name":"Torque","tags":[],"Class":"VehicleSeat"},{"ValueType":"float","type":"Property","Name":"TurnSpeed","tags":[],"Class":"VehicleSeat"},{"Superclass":"PVInstance","type":"Class","Name":"Model","tags":[]},{"ValueType":"Object","type":"Property","Name":"PrimaryPart","tags":[],"Class":"Model"},{"ReturnType":"void","Arguments":[],"Name":"BreakJoints","tags":[],"Class":"Model","type":"Function"},{"ReturnType":"Vector3","Arguments":[],"Name":"GetExtentsSize","tags":[],"Class":"Model","type":"Function"},{"ReturnType":"CoordinateFrame","Arguments":[],"Name":"GetModelCFrame","tags":["deprecated"],"Class":"Model","type":"Function"},{"ReturnType":"Vector3","Arguments":[],"Name":"GetModelSize","tags":["deprecated"],"Class":"Model","type":"Function"},{"ReturnType":"CoordinateFrame","Arguments":[],"Name":"GetPrimaryPartCFrame","tags":[],"Class":"Model","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"MakeJoints","tags":[],"Class":"Model","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Vector3","Name":"position","Default":null}],"Name":"MoveTo","tags":[],"Class":"Model","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"ResetOrientationToIdentity","tags":["deprecated"],"Class":"Model","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"SetIdentityOrientation","tags":["deprecated"],"Class":"Model","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"CoordinateFrame","Name":"cframe","Default":null}],"Name":"SetPrimaryPartCFrame","tags":[],"Class":"Model","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Vector3","Name":"delta","Default":null}],"Name":"TranslateBy","tags":[],"Class":"Model","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"breakJoints","tags":["deprecated"],"Class":"Model","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"makeJoints","tags":["deprecated"],"Class":"Model","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Vector3","Name":"location","Default":null}],"Name":"move","tags":["deprecated"],"Class":"Model","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Vector3","Name":"location","Default":null}],"Name":"moveTo","tags":["deprecated"],"Class":"Model","type":"Function"},{"Superclass":"Model","type":"Class","Name":"RootInstance","tags":["notbrowsable"]},{"Superclass":"RootInstance","type":"Class","Name":"Workspace","tags":[]},{"ValueType":"bool","type":"Property","Name":"AllowThirdPartySales","tags":[],"Class":"Workspace"},{"ValueType":"Object","type":"Property","Name":"CurrentCamera","tags":[],"Class":"Workspace"},{"ValueType":"double","type":"Property","Name":"DistributedGameTime","tags":[],"Class":"Workspace"},{"ValueType":"bool","type":"Property","Name":"FilteringEnabled","tags":[],"Class":"Workspace"},{"ValueType":"float","type":"Property","Name":"Gravity","tags":[],"Class":"Workspace"},{"ValueType":"bool","type":"Property","Name":"StreamingEnabled","tags":[],"Class":"Workspace"},{"ValueType":"Object","type":"Property","Name":"Terrain","tags":["readonly"],"Class":"Workspace"},{"ReturnType":"void","Arguments":[{"Type":"Objects","Name":"objects","Default":null}],"Name":"BreakJoints","tags":["PluginSecurity"],"Class":"Workspace","type":"Function"},{"ReturnType":"bool","Arguments":[],"Name":"ExperimentalSolverIsEnabled","tags":["LocalUserSecurity"],"Class":"Workspace","type":"Function"},{"ReturnType":"Tuple","Arguments":[{"Type":"Ray","Name":"ray","Default":null},{"Type":"Instance","Name":"ignoreDescendentsInstance","Default":"nil"},{"Type":"bool","Name":"terrainCellsAreCubes","Default":"false"},{"Type":"bool","Name":"ignoreWater","Default":"false"}],"Name":"FindPartOnRay","tags":[],"Class":"Workspace","type":"Function"},{"ReturnType":"Tuple","Arguments":[{"Type":"Ray","Name":"ray","Default":null},{"Type":"Objects","Name":"ignoreDescendentsTable","Default":null},{"Type":"bool","Name":"terrainCellsAreCubes","Default":"false"},{"Type":"bool","Name":"ignoreWater","Default":"false"}],"Name":"FindPartOnRayWithIgnoreList","tags":[],"Class":"Workspace","type":"Function"},{"ReturnType":"Objects","Arguments":[{"Type":"Region3","Name":"region","Default":null},{"Type":"Instance","Name":"ignoreDescendentsInstance","Default":"nil"},{"Type":"int","Name":"maxParts","Default":"20"}],"Name":"FindPartsInRegion3","tags":[],"Class":"Workspace","type":"Function"},{"ReturnType":"Objects","Arguments":[{"Type":"Region3","Name":"region","Default":null},{"Type":"Objects","Name":"ignoreDescendentsTable","Default":null},{"Type":"int","Name":"maxParts","Default":"20"}],"Name":"FindPartsInRegion3WithIgnoreList","tags":[],"Class":"Workspace","type":"Function"},{"ReturnType":"int","Arguments":[],"Name":"GetNumAwakeParts","tags":[],"Class":"Workspace","type":"Function"},{"ReturnType":"bool","Arguments":[],"Name":"GetPhysicsAnalyzerBreakOnIssue","tags":["PluginSecurity"],"Class":"Workspace","type":"Function"},{"ReturnType":"Objects","Arguments":[{"Type":"int","Name":"index","Default":null}],"Name":"GetPhysicsAnalyzerIssue","tags":["PluginSecurity"],"Class":"Workspace","type":"Function"},{"ReturnType":"int","Arguments":[],"Name":"GetPhysicsThrottling","tags":[],"Class":"Workspace","type":"Function"},{"ReturnType":"double","Arguments":[],"Name":"GetRealPhysicsFPS","tags":[],"Class":"Workspace","type":"Function"},{"ReturnType":"bool","Arguments":[{"Type":"Region3","Name":"region","Default":null},{"Type":"Instance","Name":"ignoreDescendentsInstance","Default":"nil"}],"Name":"IsRegion3Empty","tags":[],"Class":"Workspace","type":"Function"},{"ReturnType":"bool","Arguments":[{"Type":"Region3","Name":"region","Default":null},{"Type":"Objects","Name":"ignoreDescendentsTable","Default":null}],"Name":"IsRegion3EmptyWithIgnoreList","tags":[],"Class":"Workspace","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Objects","Name":"objects","Default":null},{"Type":"JointCreationMode","Name":"jointType","Default":null}],"Name":"JoinToOutsiders","tags":[],"Class":"Workspace","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Objects","Name":"objects","Default":null}],"Name":"MakeJoints","tags":["PluginSecurity"],"Class":"Workspace","type":"Function"},{"ReturnType":"bool","Arguments":[],"Name":"PGSIsEnabled","tags":[],"Class":"Workspace","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"bool","Name":"enable","Default":null}],"Name":"SetPhysicsAnalyzerBreakOnIssue","tags":["PluginSecurity"],"Class":"Workspace","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"bool","Name":"value","Default":null}],"Name":"SetPhysicsThrottleEnabled","tags":["LocalUserSecurity"],"Class":"Workspace","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Objects","Name":"objects","Default":null}],"Name":"UnjoinFromOutsiders","tags":[],"Class":"Workspace","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"ZoomToExtents","tags":["PluginSecurity"],"Class":"Workspace","type":"Function"},{"ReturnType":"Tuple","Arguments":[{"Type":"Ray","Name":"ray","Default":null},{"Type":"Instance","Name":"ignoreDescendentsInstance","Default":"nil"},{"Type":"bool","Name":"terrainCellsAreCubes","Default":"false"},{"Type":"bool","Name":"ignoreWater","Default":"false"}],"Name":"findPartOnRay","tags":["deprecated"],"Class":"Workspace","type":"Function"},{"ReturnType":"Objects","Arguments":[{"Type":"Region3","Name":"region","Default":null},{"Type":"Instance","Name":"ignoreDescendentsInstance","Default":"nil"},{"Type":"int","Name":"maxParts","Default":"20"}],"Name":"findPartsInRegion3","tags":["deprecated"],"Class":"Workspace","type":"Function"},{"Arguments":[{"Name":"count","Type":"int"}],"Name":"PhysicsAnalyzerIssuesFound","tags":["PluginSecurity"],"Class":"Workspace","type":"Event"},{"Superclass":"Model","type":"Class","Name":"Status","tags":["deprecated","notCreatable"]},{"Superclass":"Instance","type":"Class","Name":"Pages","tags":[]},{"ValueType":"bool","type":"Property","Name":"IsFinished","tags":["readonly"],"Class":"Pages"},{"ReturnType":"Array","Arguments":[],"Name":"GetCurrentPage","tags":[],"Class":"Pages","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"AdvanceToNextPageAsync","tags":[],"Class":"Pages","type":"YieldFunction"},{"Superclass":"Pages","type":"Class","Name":"DataStorePages","tags":[]},{"Superclass":"Pages","type":"Class","Name":"FriendPages","tags":[]},{"Superclass":"Pages","type":"Class","Name":"StandardPages","tags":[]},{"Superclass":"Instance","type":"Class","Name":"PartOperationAsset","tags":[]},{"Superclass":"Instance","type":"Class","Name":"ParticleEmitter","tags":[]},{"ValueType":"Vector3","type":"Property","Name":"Acceleration","tags":[],"Class":"ParticleEmitter"},{"ValueType":"ColorSequence","type":"Property","Name":"Color","tags":[],"Class":"ParticleEmitter"},{"ValueType":"float","type":"Property","Name":"Drag","tags":[],"Class":"ParticleEmitter"},{"ValueType":"NormalId","type":"Property","Name":"EmissionDirection","tags":[],"Class":"ParticleEmitter"},{"ValueType":"bool","type":"Property","Name":"Enabled","tags":[],"Class":"ParticleEmitter"},{"ValueType":"NumberRange","type":"Property","Name":"Lifetime","tags":[],"Class":"ParticleEmitter"},{"ValueType":"float","type":"Property","Name":"LightEmission","tags":[],"Class":"ParticleEmitter"},{"ValueType":"bool","type":"Property","Name":"LockedToPart","tags":[],"Class":"ParticleEmitter"},{"ValueType":"float","type":"Property","Name":"Rate","tags":[],"Class":"ParticleEmitter"},{"ValueType":"NumberRange","type":"Property","Name":"RotSpeed","tags":[],"Class":"ParticleEmitter"},{"ValueType":"NumberRange","type":"Property","Name":"Rotation","tags":[],"Class":"ParticleEmitter"},{"ValueType":"NumberSequence","type":"Property","Name":"Size","tags":[],"Class":"ParticleEmitter"},{"ValueType":"NumberRange","type":"Property","Name":"Speed","tags":[],"Class":"ParticleEmitter"},{"ValueType":"Content","type":"Property","Name":"Texture","tags":[],"Class":"ParticleEmitter"},{"ValueType":"NumberSequence","type":"Property","Name":"Transparency","tags":[],"Class":"ParticleEmitter"},{"ValueType":"float","type":"Property","Name":"VelocityInheritance","tags":[],"Class":"ParticleEmitter"},{"ValueType":"float","type":"Property","Name":"VelocitySpread","tags":[],"Class":"ParticleEmitter"},{"ValueType":"float","type":"Property","Name":"ZOffset","tags":[],"Class":"ParticleEmitter"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"particleCount","Default":"16"}],"Name":"Emit","tags":[],"Class":"ParticleEmitter","type":"Function"},{"Superclass":"Instance","type":"Class","Name":"Path","tags":[]},{"ValueType":"PathStatus","type":"Property","Name":"Status","tags":["readonly"],"Class":"Path"},{"ReturnType":"Array","Arguments":[],"Name":"GetPointCoordinates","tags":[],"Class":"Path","type":"Function"},{"ReturnType":"int","Arguments":[{"Type":"int","Name":"start","Default":null}],"Name":"CheckOcclusionAsync","tags":[],"Class":"Path","type":"YieldFunction"},{"Superclass":"Instance","type":"Class","Name":"PathfindingService","tags":["notCreatable"]},{"ValueType":"float","type":"Property","Name":"EmptyCutoff","tags":[],"Class":"PathfindingService"},{"ReturnType":"Instance","Arguments":[{"Type":"Vector3","Name":"start","Default":null},{"Type":"Vector3","Name":"finish","Default":null},{"Type":"float","Name":"maxDistance","Default":null}],"Name":"ComputeRawPathAsync","tags":[],"Class":"PathfindingService","type":"YieldFunction"},{"ReturnType":"Instance","Arguments":[{"Type":"Vector3","Name":"start","Default":null},{"Type":"Vector3","Name":"finish","Default":null},{"Type":"float","Name":"maxDistance","Default":null}],"Name":"ComputeSmoothPathAsync","tags":[],"Class":"PathfindingService","type":"YieldFunction"},{"Superclass":"Instance","type":"Class","Name":"PersonalServerService","tags":[]},{"ValueType":"string","type":"Property","Name":"RoleSets","tags":["RobloxScriptSecurity"],"Class":"PersonalServerService"},{"ReturnType":"void","Arguments":[{"Type":"Instance","Name":"player","Default":null}],"Name":"Demote","tags":["RobloxScriptSecurity"],"Class":"PersonalServerService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Instance","Name":"player","Default":null}],"Name":"Promote","tags":["RobloxScriptSecurity"],"Class":"PersonalServerService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"personalServerGetRankUrl","Default":null}],"Name":"SetPersonalServerGetRankUrl","tags":["LocalUserSecurity"],"Class":"PersonalServerService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"personalServerRoleSetsUrl","Default":null}],"Name":"SetPersonalServerRoleSetsUrl","tags":["LocalUserSecurity"],"Class":"PersonalServerService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"personalServerSetRankUrl","Default":null}],"Name":"SetPersonalServerSetRankUrl","tags":["LocalUserSecurity"],"Class":"PersonalServerService","type":"Function"},{"ReturnType":"string","Arguments":[{"Type":"int","Name":"placeId","Default":null}],"Name":"GetRoleSets","tags":["RobloxScriptSecurity"],"Class":"PersonalServerService","type":"YieldFunction"},{"Superclass":"Instance","type":"Class","Name":"PhysicsPacketCache","tags":[]},{"Superclass":"Instance","type":"Class","Name":"PhysicsService","tags":[]},{"Superclass":"Instance","type":"Class","Name":"PhysicsSettings","tags":[]},{"ValueType":"bool","type":"Property","Name":"AllowSleep","tags":[],"Class":"PhysicsSettings"},{"ValueType":"bool","type":"Property","Name":"AreAnchorsShown","tags":[],"Class":"PhysicsSettings"},{"ValueType":"bool","type":"Property","Name":"AreAssembliesShown","tags":[],"Class":"PhysicsSettings"},{"ValueType":"bool","type":"Property","Name":"AreAttachmentsShown","tags":[],"Class":"PhysicsSettings"},{"ValueType":"bool","type":"Property","Name":"AreAwakePartsHighlighted","tags":[],"Class":"PhysicsSettings"},{"ValueType":"bool","type":"Property","Name":"AreBodyTypesShown","tags":[],"Class":"PhysicsSettings"},{"ValueType":"bool","type":"Property","Name":"AreConstraintsShown","tags":[],"Class":"PhysicsSettings"},{"ValueType":"bool","type":"Property","Name":"AreContactPointsShown","tags":[],"Class":"PhysicsSettings"},{"ValueType":"bool","type":"Property","Name":"AreJointCoordinatesShown","tags":[],"Class":"PhysicsSettings"},{"ValueType":"bool","type":"Property","Name":"AreMechanismsShown","tags":[],"Class":"PhysicsSettings"},{"ValueType":"bool","type":"Property","Name":"AreModelCoordsShown","tags":[],"Class":"PhysicsSettings"},{"ValueType":"bool","type":"Property","Name":"AreOwnersShown","tags":[],"Class":"PhysicsSettings"},{"ValueType":"bool","type":"Property","Name":"ArePartCoordsShown","tags":[],"Class":"PhysicsSettings"},{"ValueType":"bool","type":"Property","Name":"AreRegionsShown","tags":[],"Class":"PhysicsSettings"},{"ValueType":"bool","type":"Property","Name":"AreUnalignedPartsShown","tags":[],"Class":"PhysicsSettings"},{"ValueType":"bool","type":"Property","Name":"AreWorldCoordsShown","tags":[],"Class":"PhysicsSettings"},{"ValueType":"bool","type":"Property","Name":"IsReceiveAgeShown","tags":[],"Class":"PhysicsSettings"},{"ValueType":"bool","type":"Property","Name":"IsTreeShown","tags":[],"Class":"PhysicsSettings"},{"ValueType":"bool","type":"Property","Name":"ParallelPhysics","tags":[],"Class":"PhysicsSettings"},{"ValueType":"bool","type":"Property","Name":"PhysicsAnalyzerEnabled","tags":["PluginSecurity","readonly"],"Class":"PhysicsSettings"},{"ValueType":"EnviromentalPhysicsThrottle","type":"Property","Name":"PhysicsEnvironmentalThrottle","tags":[],"Class":"PhysicsSettings"},{"ValueType":"bool","type":"Property","Name":"ShowDecompositionGeometry","tags":[],"Class":"PhysicsSettings"},{"ValueType":"double","type":"Property","Name":"ThrottleAdjustTime","tags":[],"Class":"PhysicsSettings"},{"Superclass":"Instance","type":"Class","Name":"Player","tags":[]},{"ValueType":"int","type":"Property","Name":"AccountAge","tags":["readonly"],"Class":"Player"},{"ValueType":"bool","type":"Property","Name":"AppearanceDidLoad","tags":["RobloxScriptSecurity","deprecated","readonly"],"Class":"Player"},{"ValueType":"bool","type":"Property","Name":"AutoJumpEnabled","tags":[],"Class":"Player"},{"ValueType":"float","type":"Property","Name":"CameraMaxZoomDistance","tags":[],"Class":"Player"},{"ValueType":"float","type":"Property","Name":"CameraMinZoomDistance","tags":[],"Class":"Player"},{"ValueType":"CameraMode","type":"Property","Name":"CameraMode","tags":[],"Class":"Player"},{"ValueType":"bool","type":"Property","Name":"CanLoadCharacterAppearance","tags":[],"Class":"Player"},{"ValueType":"Object","type":"Property","Name":"Character","tags":[],"Class":"Player"},{"ValueType":"string","type":"Property","Name":"CharacterAppearance","tags":["notbrowsable"],"Class":"Player"},{"ValueType":"ChatMode","type":"Property","Name":"ChatMode","tags":["RobloxScriptSecurity","readonly"],"Class":"Player"},{"ValueType":"int","type":"Property","Name":"DataComplexity","tags":["readonly"],"Class":"Player"},{"ValueType":"int","type":"Property","Name":"DataComplexityLimit","tags":["LocalUserSecurity"],"Class":"Player"},{"ValueType":"bool","type":"Property","Name":"DataReady","tags":["readonly"],"Class":"Player"},{"ValueType":"DevCameraOcclusionMode","type":"Property","Name":"DevCameraOcclusionMode","tags":[],"Class":"Player"},{"ValueType":"DevComputerCameraMovementMode","type":"Property","Name":"DevComputerCameraMode","tags":[],"Class":"Player"},{"ValueType":"DevComputerMovementMode","type":"Property","Name":"DevComputerMovementMode","tags":[],"Class":"Player"},{"ValueType":"bool","type":"Property","Name":"DevEnableMouseLock","tags":[],"Class":"Player"},{"ValueType":"DevTouchCameraMovementMode","type":"Property","Name":"DevTouchCameraMode","tags":[],"Class":"Player"},{"ValueType":"DevTouchMovementMode","type":"Property","Name":"DevTouchMovementMode","tags":[],"Class":"Player"},{"ValueType":"int","type":"Property","Name":"FollowUserId","tags":["readonly"],"Class":"Player"},{"ValueType":"bool","type":"Property","Name":"Guest","tags":["RobloxScriptSecurity","readonly"],"Class":"Player"},{"ValueType":"bool","type":"Property","Name":"HasBuildTools","tags":["RobloxScriptSecurity"],"Class":"Player"},{"ValueType":"float","type":"Property","Name":"HealthDisplayDistance","tags":[],"Class":"Player"},{"ValueType":"float","type":"Property","Name":"MaximumSimulationRadius","tags":["LocalUserSecurity"],"Class":"Player"},{"ValueType":"MembershipType","type":"Property","Name":"MembershipType","tags":["readonly"],"Class":"Player"},{"ValueType":"float","type":"Property","Name":"NameDisplayDistance","tags":[],"Class":"Player"},{"ValueType":"bool","type":"Property","Name":"Neutral","tags":[],"Class":"Player"},{"ValueType":"int","type":"Property","Name":"PersonalServerRank","tags":["RobloxScriptSecurity"],"Class":"Player"},{"ValueType":"Object","type":"Property","Name":"RespawnLocation","tags":[],"Class":"Player"},{"ValueType":"float","type":"Property","Name":"SimulationRadius","tags":["LocalUserSecurity"],"Class":"Player"},{"ValueType":"BrickColor","type":"Property","Name":"TeamColor","tags":[],"Class":"Player"},{"ValueType":"bool","type":"Property","Name":"Teleported","tags":["RobloxScriptSecurity","hidden","readonly"],"Class":"Player"},{"ValueType":"bool","type":"Property","Name":"TeleportedIn","tags":["RobloxScriptSecurity"],"Class":"Player"},{"ValueType":"int","type":"Property","Name":"UserId","tags":[],"Class":"Player"},{"ValueType":"string","type":"Property","Name":"VRDevice","tags":["RobloxScriptSecurity"],"Class":"Player"},{"ValueType":"int","type":"Property","Name":"userId","tags":["deprecated"],"Class":"Player"},{"ReturnType":"void","Arguments":[],"Name":"ClearCharacterAppearance","tags":[],"Class":"Player","type":"Function"},{"ReturnType":"float","Arguments":[{"Type":"Vector3","Name":"point","Default":null}],"Name":"DistanceFromCharacter","tags":[],"Class":"Player","type":"Function"},{"ReturnType":"FriendStatus","Arguments":[{"Type":"Instance","Name":"player","Default":null}],"Name":"GetFriendStatus","tags":["RobloxScriptSecurity"],"Class":"Player","type":"Function"},{"ReturnType":"string","Arguments":[],"Name":"GetGameSessionID","tags":["RobloxSecurity"],"Class":"Player","type":"Function"},{"ReturnType":"Instance","Arguments":[],"Name":"GetMouse","tags":[],"Class":"Player","type":"Function"},{"ReturnType":"bool","Arguments":[],"Name":"GetUnder13","tags":["RobloxScriptSecurity"],"Class":"Player","type":"Function"},{"ReturnType":"bool","Arguments":[],"Name":"HasAppearanceLoaded","tags":[],"Class":"Player","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"JumpCharacter","tags":["RobloxScriptSecurity"],"Class":"Player","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"message","Default":""}],"Name":"Kick","tags":[],"Class":"Player","type":"Function"},{"ReturnType":"bool","Arguments":[{"Type":"string","Name":"key","Default":null}],"Name":"LoadBoolean","tags":[],"Class":"Player","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"bool","Name":"inGame","Default":"true"}],"Name":"LoadCharacter","tags":[],"Class":"Player","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Instance","Name":"assetInstance","Default":null}],"Name":"LoadCharacterAppearance","tags":[],"Class":"Player","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"LoadData","tags":["LocalUserSecurity"],"Class":"Player","type":"Function"},{"ReturnType":"Instance","Arguments":[{"Type":"string","Name":"key","Default":null}],"Name":"LoadInstance","tags":[],"Class":"Player","type":"Function"},{"ReturnType":"double","Arguments":[{"Type":"string","Name":"key","Default":null}],"Name":"LoadNumber","tags":[],"Class":"Player","type":"Function"},{"ReturnType":"string","Arguments":[{"Type":"string","Name":"key","Default":null}],"Name":"LoadString","tags":[],"Class":"Player","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Vector3","Name":"walkDirection","Default":null},{"Type":"bool","Name":"relativeToCamera","Default":"false"}],"Name":"Move","tags":[],"Class":"Player","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Vector2","Name":"walkDirection","Default":null},{"Type":"float","Name":"maxWalkDelta","Default":null}],"Name":"MoveCharacter","tags":["RobloxScriptSecurity"],"Class":"Player","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"RemoveCharacter","tags":["LocalUserSecurity"],"Class":"Player","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Instance","Name":"player","Default":null}],"Name":"RequestFriendship","tags":["RobloxScriptSecurity"],"Class":"Player","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Instance","Name":"player","Default":null}],"Name":"RevokeFriendship","tags":["RobloxScriptSecurity"],"Class":"Player","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"key","Default":null},{"Type":"bool","Name":"value","Default":null}],"Name":"SaveBoolean","tags":[],"Class":"Player","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"SaveData","tags":["LocalUserSecurity"],"Class":"Player","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"key","Default":null},{"Type":"Instance","Name":"value","Default":null}],"Name":"SaveInstance","tags":[],"Class":"Player","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"SaveLeaderboardData","tags":["LocalUserSecurity"],"Class":"Player","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"key","Default":null},{"Type":"double","Name":"value","Default":null}],"Name":"SaveNumber","tags":[],"Class":"Player","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"key","Default":null},{"Type":"string","Name":"value","Default":null}],"Name":"SaveString","tags":[],"Class":"Player","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"accountAge","Default":null}],"Name":"SetAccountAge","tags":["PluginSecurity"],"Class":"Player","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"MembershipType","Name":"membershipType","Default":null}],"Name":"SetMembershipType","tags":["RobloxScriptSecurity"],"Class":"Player","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"bool","Name":"value","Default":null}],"Name":"SetSuperSafeChat","tags":["PluginSecurity"],"Class":"Player","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"bool","Name":"value","Default":null}],"Name":"SetUnder13","tags":["RobloxSecurity","deprecated"],"Class":"Player","type":"Function"},{"ReturnType":"bool","Arguments":[{"Type":"string","Name":"key","Default":null}],"Name":"loadBoolean","tags":["deprecated"],"Class":"Player","type":"Function"},{"ReturnType":"Instance","Arguments":[{"Type":"string","Name":"key","Default":null}],"Name":"loadInstance","tags":["deprecated"],"Class":"Player","type":"Function"},{"ReturnType":"double","Arguments":[{"Type":"string","Name":"key","Default":null}],"Name":"loadNumber","tags":["deprecated"],"Class":"Player","type":"Function"},{"ReturnType":"string","Arguments":[{"Type":"string","Name":"key","Default":null}],"Name":"loadString","tags":["deprecated"],"Class":"Player","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"key","Default":null},{"Type":"bool","Name":"value","Default":null}],"Name":"saveBoolean","tags":["deprecated"],"Class":"Player","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"key","Default":null},{"Type":"Instance","Name":"value","Default":null}],"Name":"saveInstance","tags":["deprecated"],"Class":"Player","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"key","Default":null},{"Type":"double","Name":"value","Default":null}],"Name":"saveNumber","tags":["deprecated"],"Class":"Player","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"key","Default":null},{"Type":"string","Name":"value","Default":null}],"Name":"saveString","tags":["deprecated"],"Class":"Player","type":"Function"},{"ReturnType":"Array","Arguments":[{"Type":"int","Name":"maxFriends","Default":"200"}],"Name":"GetFriendsOnline","tags":[],"Class":"Player","type":"YieldFunction"},{"ReturnType":"int","Arguments":[{"Type":"int","Name":"groupId","Default":null}],"Name":"GetRankInGroup","tags":[],"Class":"Player","type":"YieldFunction"},{"ReturnType":"string","Arguments":[{"Type":"int","Name":"groupId","Default":null}],"Name":"GetRoleInGroup","tags":[],"Class":"Player","type":"YieldFunction"},{"ReturnType":"string","Arguments":[],"Name":"GetWebPersonalServerRank","tags":["LocalUserSecurity","backend"],"Class":"Player","type":"YieldFunction"},{"ReturnType":"bool","Arguments":[{"Type":"int","Name":"userId","Default":null}],"Name":"IsBestFriendsWith","tags":["deprecated"],"Class":"Player","type":"YieldFunction"},{"ReturnType":"bool","Arguments":[{"Type":"int","Name":"userId","Default":null}],"Name":"IsFriendsWith","tags":[],"Class":"Player","type":"YieldFunction"},{"ReturnType":"bool","Arguments":[{"Type":"int","Name":"groupId","Default":null}],"Name":"IsInGroup","tags":[],"Class":"Player","type":"YieldFunction"},{"ReturnType":"bool","Arguments":[{"Type":"int","Name":"rank","Default":null}],"Name":"SetWebPersonalServerRank","tags":["WritePlayerSecurity"],"Class":"Player","type":"YieldFunction"},{"ReturnType":"bool","Arguments":[],"Name":"WaitForDataReady","tags":[],"Class":"Player","type":"YieldFunction"},{"ReturnType":"bool","Arguments":[{"Type":"int","Name":"userId","Default":null}],"Name":"isFriendsWith","tags":["deprecated"],"Class":"Player","type":"YieldFunction"},{"ReturnType":"bool","Arguments":[],"Name":"waitForDataReady","tags":["deprecated"],"Class":"Player","type":"YieldFunction"},{"Arguments":[{"Name":"character","Type":"Instance"}],"Name":"CharacterAdded","tags":[],"Class":"Player","type":"Event"},{"Arguments":[{"Name":"character","Type":"Instance"}],"Name":"CharacterAppearanceLoaded","tags":[],"Class":"Player","type":"Event"},{"Arguments":[{"Name":"character","Type":"Instance"}],"Name":"CharacterRemoving","tags":[],"Class":"Player","type":"Event"},{"Arguments":[{"Name":"message","Type":"string"},{"Name":"recipient","Type":"Instance"}],"Name":"Chatted","tags":[],"Class":"Player","type":"Event"},{"Arguments":[{"Name":"player","Type":"Instance"},{"Name":"friendStatus","Type":"FriendStatus"}],"Name":"FriendStatusChanged","tags":["RobloxScriptSecurity"],"Class":"Player","type":"Event"},{"Arguments":[{"Name":"time","Type":"double"}],"Name":"Idled","tags":[],"Class":"Player","type":"Event"},{"Arguments":[{"Name":"teleportState","Type":"TeleportState"},{"Name":"placeId","Type":"int"},{"Name":"spawnName","Type":"string"}],"Name":"OnTeleport","tags":[],"Class":"Player","type":"Event"},{"Arguments":[{"Name":"radius","Type":"float"}],"Name":"SimulationRadiusChanged","tags":["LocalUserSecurity"],"Class":"Player","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"PlayerScripts","tags":["notCreatable"]},{"Superclass":"Instance","type":"Class","Name":"Players","tags":[]},{"ValueType":"bool","type":"Property","Name":"BubbleChat","tags":["readonly"],"Class":"Players"},{"ValueType":"bool","type":"Property","Name":"CharacterAutoLoads","tags":[],"Class":"Players"},{"ValueType":"bool","type":"Property","Name":"ClassicChat","tags":["readonly"],"Class":"Players"},{"ValueType":"Object","type":"Property","Name":"LocalPlayer","tags":["readonly"],"Class":"Players"},{"ValueType":"int","type":"Property","Name":"MaxPlayers","tags":["readonly"],"Class":"Players"},{"ValueType":"int","type":"Property","Name":"MaxPlayersInternal","tags":["LocalUserSecurity"],"Class":"Players"},{"ValueType":"int","type":"Property","Name":"NumPlayers","tags":["readonly"],"Class":"Players"},{"ValueType":"int","type":"Property","Name":"PreferredPlayers","tags":["readonly"],"Class":"Players"},{"ValueType":"int","type":"Property","Name":"PreferredPlayersInternal","tags":["LocalUserSecurity"],"Class":"Players"},{"ValueType":"Object","type":"Property","Name":"localPlayer","tags":["deprecated","hidden","readonly"],"Class":"Players"},{"ValueType":"int","type":"Property","Name":"numPlayers","tags":["deprecated","hidden","readonly"],"Class":"Players"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"key","Default":null}],"Name":"AddLeaderboardKey","tags":["LocalUserSecurity"],"Class":"Players","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"message","Default":null}],"Name":"Chat","tags":["PluginSecurity"],"Class":"Players","type":"Function"},{"ReturnType":"Instance","Arguments":[{"Type":"int","Name":"userId","Default":null},{"Type":"bool","Name":"isTeleport","Default":"false"}],"Name":"CreateLocalPlayer","tags":["PluginSecurity"],"Class":"Players","type":"Function"},{"ReturnType":"Instance","Arguments":[{"Type":"int","Name":"userID","Default":null}],"Name":"GetPlayerByID","tags":["LocalUserSecurity","deprecated"],"Class":"Players","type":"Function"},{"ReturnType":"Instance","Arguments":[{"Type":"int","Name":"userId","Default":null}],"Name":"GetPlayerById","tags":["LocalUserSecurity"],"Class":"Players","type":"Function"},{"ReturnType":"Instance","Arguments":[{"Type":"int","Name":"userId","Default":null}],"Name":"GetPlayerByUserId","tags":[],"Class":"Players","type":"Function"},{"ReturnType":"Instance","Arguments":[{"Type":"Instance","Name":"character","Default":null}],"Name":"GetPlayerFromCharacter","tags":[],"Class":"Players","type":"Function"},{"ReturnType":"Objects","Arguments":[],"Name":"GetPlayers","tags":[],"Class":"Players","type":"Function"},{"ReturnType":"bool","Arguments":[],"Name":"GetUseCoreScriptHealthBar","tags":["RobloxScriptSecurity"],"Class":"Players","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Instance","Name":"player","Default":null},{"Type":"string","Name":"reason","Default":null},{"Type":"string","Name":"optionalMessage","Default":null}],"Name":"ReportAbuse","tags":["LocalUserSecurity"],"Class":"Players","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"url","Default":null}],"Name":"SetAbuseReportUrl","tags":["RobloxSecurity"],"Class":"Players","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"url","Default":null}],"Name":"SetBuildUserPermissionsUrl","tags":["RobloxSecurity"],"Class":"Players","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"url","Default":null}],"Name":"SetChatFilterUrl","tags":["RobloxSecurity"],"Class":"Players","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"ChatStyle","Name":"style","Default":"Classic"}],"Name":"SetChatStyle","tags":["PluginSecurity"],"Class":"Players","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"url","Default":null}],"Name":"SetLoadDataUrl","tags":["LocalUserSecurity"],"Class":"Players","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"url","Default":null}],"Name":"SetSaveDataUrl","tags":["LocalUserSecurity"],"Class":"Players","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"url","Default":null}],"Name":"SetSaveLeaderboardDataUrl","tags":["LocalUserSecurity"],"Class":"Players","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"url","Default":null}],"Name":"SetSysStatsUrl","tags":["LocalUserSecurity"],"Class":"Players","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"urlId","Default":null}],"Name":"SetSysStatsUrlId","tags":["LocalUserSecurity"],"Class":"Players","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"message","Default":null}],"Name":"TeamChat","tags":["PluginSecurity"],"Class":"Players","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"message","Default":null},{"Type":"Instance","Name":"player","Default":null}],"Name":"WhisperChat","tags":["LocalUserSecurity"],"Class":"Players","type":"Function"},{"ReturnType":"Instance","Arguments":[{"Type":"Instance","Name":"character","Default":null}],"Name":"getPlayerFromCharacter","tags":["deprecated"],"Class":"Players","type":"Function"},{"ReturnType":"Objects","Arguments":[],"Name":"getPlayers","tags":["deprecated"],"Class":"Players","type":"Function"},{"ReturnType":"Instance","Arguments":[{"Type":"Instance","Name":"character","Default":null}],"Name":"playerFromCharacter","tags":["deprecated"],"Class":"Players","type":"Function"},{"ReturnType":"Objects","Arguments":[],"Name":"players","tags":["deprecated"],"Class":"Players","type":"Function"},{"ReturnType":"string","Arguments":[{"Type":"int","Name":"blockerUserId","Default":null},{"Type":"int","Name":"blockeeUserId","Default":null}],"Name":"BlockUser","tags":["RobloxScriptSecurity"],"Class":"Players","type":"YieldFunction"},{"ReturnType":"Instance","Arguments":[{"Type":"int","Name":"userId","Default":null}],"Name":"GetCharacterAppearanceAsync","tags":[],"Class":"Players","type":"YieldFunction"},{"ReturnType":"Instance","Arguments":[{"Type":"int","Name":"userId","Default":null}],"Name":"GetFriendsAsync","tags":[],"Class":"Players","type":"YieldFunction"},{"ReturnType":"string","Arguments":[{"Type":"int","Name":"userId","Default":null}],"Name":"GetNameFromUserIdAsync","tags":[],"Class":"Players","type":"YieldFunction"},{"ReturnType":"int","Arguments":[{"Type":"string","Name":"userName","Default":null}],"Name":"GetUserIdFromNameAsync","tags":[],"Class":"Players","type":"YieldFunction"},{"ReturnType":"string","Arguments":[{"Type":"int","Name":"exblockerUserId","Default":null},{"Type":"int","Name":"exblockeeUserId","Default":null}],"Name":"UnblockUser","tags":["RobloxScriptSecurity"],"Class":"Players","type":"YieldFunction"},{"Arguments":[{"Name":"player","Type":"Instance"},{"Name":"player","Type":"Instance"},{"Name":"friendRequestEvent","Type":"FriendRequestEvent"}],"Name":"FriendRequestEvent","tags":["RobloxScriptSecurity"],"Class":"Players","type":"Event"},{"Arguments":[{"Name":"message","Type":"string"}],"Name":"GameAnnounce","tags":["RobloxScriptSecurity"],"Class":"Players","type":"Event"},{"Arguments":[{"Name":"player","Type":"Instance"}],"Name":"PlayerAdded","tags":[],"Class":"Players","type":"Event"},{"Arguments":[{"Name":"player","Type":"Instance"}],"Name":"PlayerAddedEarly","tags":["LocalUserSecurity"],"Class":"Players","type":"Event"},{"Arguments":[{"Name":"chatType","Type":"PlayerChatType"},{"Name":"player","Type":"Instance"},{"Name":"message","Type":"string"},{"Name":"targetPlayer","Type":"Instance"}],"Name":"PlayerChatted","tags":["LocalUserSecurity"],"Class":"Players","type":"Event"},{"Arguments":[{"Name":"player","Type":"Instance"}],"Name":"PlayerRemoving","tags":[],"Class":"Players","type":"Event"},{"Arguments":[{"Name":"player","Type":"Instance"}],"Name":"PlayerRemovingLate","tags":["LocalUserSecurity"],"Class":"Players","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"Plugin","tags":[]},{"ValueType":"bool","type":"Property","Name":"CollisionEnabled","tags":["readonly"],"Class":"Plugin"},{"ValueType":"float","type":"Property","Name":"GridSize","tags":["readonly"],"Class":"Plugin"},{"ReturnType":"void","Arguments":[{"Type":"bool","Name":"exclusiveMouse","Default":null}],"Name":"Activate","tags":["PluginSecurity"],"Class":"Plugin","type":"Function"},{"ReturnType":"Instance","Arguments":[{"Type":"string","Name":"name","Default":null}],"Name":"CreateToolbar","tags":["PluginSecurity"],"Class":"Plugin","type":"Function"},{"ReturnType":"JointCreationMode","Arguments":[],"Name":"GetJoinMode","tags":["PluginSecurity"],"Class":"Plugin","type":"Function"},{"ReturnType":"Instance","Arguments":[],"Name":"GetMouse","tags":["PluginSecurity"],"Class":"Plugin","type":"Function"},{"ReturnType":"Variant","Arguments":[{"Type":"string","Name":"key","Default":null}],"Name":"GetSetting","tags":["PluginSecurity"],"Class":"Plugin","type":"Function"},{"ReturnType":"int","Arguments":[],"Name":"GetStudioUserId","tags":["PluginSecurity"],"Class":"Plugin","type":"Function"},{"ReturnType":"Objects","Arguments":[{"Type":"Objects","Name":"objects","Default":null}],"Name":"Negate","tags":["PluginSecurity"],"Class":"Plugin","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Instance","Name":"script","Default":null},{"Type":"int","Name":"lineNumber","Default":"0"}],"Name":"OpenScript","tags":["PluginSecurity"],"Class":"Plugin","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"url","Default":null}],"Name":"OpenWikiPage","tags":["PluginSecurity"],"Class":"Plugin","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"SaveSelectedToRoblox","tags":["PluginSecurity"],"Class":"Plugin","type":"Function"},{"ReturnType":"Objects","Arguments":[{"Type":"Objects","Name":"objects","Default":null}],"Name":"Separate","tags":["PluginSecurity"],"Class":"Plugin","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"key","Default":null},{"Type":"Variant","Name":"value","Default":null}],"Name":"SetSetting","tags":["PluginSecurity"],"Class":"Plugin","type":"Function"},{"ReturnType":"Instance","Arguments":[{"Type":"Objects","Name":"objects","Default":null}],"Name":"Union","tags":["PluginSecurity"],"Class":"Plugin","type":"Function"},{"ReturnType":"int","Arguments":[{"Type":"string","Name":"assetType","Default":null}],"Name":"PromptForExistingAssetId","tags":["PluginSecurity"],"Class":"Plugin","type":"YieldFunction"},{"Arguments":[],"Name":"Deactivation","tags":["PluginSecurity"],"Class":"Plugin","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"PluginManager","tags":[]},{"ReturnType":"Instance","Arguments":[],"Name":"CreatePlugin","tags":["PluginSecurity"],"Class":"PluginManager","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"filePath","Default":""}],"Name":"ExportPlace","tags":["PluginSecurity"],"Class":"PluginManager","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"filePath","Default":""}],"Name":"ExportSelection","tags":["PluginSecurity"],"Class":"PluginManager","type":"Function"},{"Superclass":"Instance","type":"Class","Name":"PointsService","tags":["notCreatable"]},{"ReturnType":"int","Arguments":[],"Name":"GetAwardablePoints","tags":["deprecated"],"Class":"PointsService","type":"Function"},{"ReturnType":"Tuple","Arguments":[{"Type":"int","Name":"userId","Default":null},{"Type":"int","Name":"amount","Default":null}],"Name":"AwardPoints","tags":[],"Class":"PointsService","type":"YieldFunction"},{"ReturnType":"int","Arguments":[{"Type":"int","Name":"userId","Default":null}],"Name":"GetGamePointBalance","tags":[],"Class":"PointsService","type":"YieldFunction"},{"ReturnType":"int","Arguments":[{"Type":"int","Name":"userId","Default":null}],"Name":"GetPointBalance","tags":["deprecated"],"Class":"PointsService","type":"YieldFunction"},{"Arguments":[{"Name":"userId","Type":"int"},{"Name":"pointsAwarded","Type":"int"},{"Name":"userBalanceInGame","Type":"int"},{"Name":"userTotalBalance","Type":"int"}],"Name":"PointsAwarded","tags":[],"Class":"PointsService","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"Pose","tags":[]},{"ValueType":"CoordinateFrame","type":"Property","Name":"CFrame","tags":[],"Class":"Pose"},{"ValueType":"PoseEasingDirection","type":"Property","Name":"EasingDirection","tags":[],"Class":"Pose"},{"ValueType":"PoseEasingStyle","type":"Property","Name":"EasingStyle","tags":[],"Class":"Pose"},{"ValueType":"float","type":"Property","Name":"MaskWeight","tags":[],"Class":"Pose"},{"ValueType":"float","type":"Property","Name":"Weight","tags":[],"Class":"Pose"},{"ReturnType":"void","Arguments":[{"Type":"Instance","Name":"pose","Default":null}],"Name":"AddSubPose","tags":[],"Class":"Pose","type":"Function"},{"ReturnType":"Objects","Arguments":[],"Name":"GetSubPoses","tags":[],"Class":"Pose","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Instance","Name":"pose","Default":null}],"Name":"RemoveSubPose","tags":[],"Class":"Pose","type":"Function"},{"Superclass":"Instance","type":"Class","Name":"PostEffect","tags":[]},{"ValueType":"bool","type":"Property","Name":"Enabled","tags":[],"Class":"PostEffect"},{"Superclass":"PostEffect","type":"Class","Name":"BloomEffect","tags":[]},{"ValueType":"float","type":"Property","Name":"Intensity","tags":[],"Class":"BloomEffect"},{"ValueType":"float","type":"Property","Name":"Size","tags":[],"Class":"BloomEffect"},{"ValueType":"float","type":"Property","Name":"Threshold","tags":[],"Class":"BloomEffect"},{"Superclass":"PostEffect","type":"Class","Name":"BlurEffect","tags":[]},{"ValueType":"float","type":"Property","Name":"Size","tags":[],"Class":"BlurEffect"},{"Superclass":"PostEffect","type":"Class","Name":"ColorCorrectionEffect","tags":[]},{"ValueType":"float","type":"Property","Name":"Brightness","tags":[],"Class":"ColorCorrectionEffect"},{"ValueType":"float","type":"Property","Name":"Contrast","tags":[],"Class":"ColorCorrectionEffect"},{"ValueType":"float","type":"Property","Name":"Saturation","tags":[],"Class":"ColorCorrectionEffect"},{"ValueType":"Color3","type":"Property","Name":"TintColor","tags":[],"Class":"ColorCorrectionEffect"},{"Superclass":"PostEffect","type":"Class","Name":"SunRaysEffect","tags":[]},{"ValueType":"float","type":"Property","Name":"Intensity","tags":[],"Class":"SunRaysEffect"},{"ValueType":"float","type":"Property","Name":"Spread","tags":[],"Class":"SunRaysEffect"},{"Superclass":"Instance","type":"Class","Name":"RayValue","tags":[]},{"ValueType":"Ray","type":"Property","Name":"Value","tags":[],"Class":"RayValue"},{"Arguments":[{"Name":"value","Type":"Ray"}],"Name":"Changed","tags":[],"Class":"RayValue","type":"Event"},{"Arguments":[{"Name":"value","Type":"Ray"}],"Name":"changed","tags":["deprecated"],"Class":"RayValue","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"ReflectionMetadata","tags":[]},{"Superclass":"Instance","type":"Class","Name":"ReflectionMetadataCallbacks","tags":[]},{"Superclass":"Instance","type":"Class","Name":"ReflectionMetadataClasses","tags":[]},{"Superclass":"Instance","type":"Class","Name":"ReflectionMetadataEnums","tags":[]},{"Superclass":"Instance","type":"Class","Name":"ReflectionMetadataEvents","tags":[]},{"Superclass":"Instance","type":"Class","Name":"ReflectionMetadataFunctions","tags":[]},{"Superclass":"Instance","type":"Class","Name":"ReflectionMetadataItem","tags":[]},{"ValueType":"bool","type":"Property","Name":"Browsable","tags":[],"Class":"ReflectionMetadataItem"},{"ValueType":"bool","type":"Property","Name":"Deprecated","tags":[],"Class":"ReflectionMetadataItem"},{"ValueType":"bool","type":"Property","Name":"IsBackend","tags":[],"Class":"ReflectionMetadataItem"},{"ValueType":"double","type":"Property","Name":"UIMaximum","tags":[],"Class":"ReflectionMetadataItem"},{"ValueType":"double","type":"Property","Name":"UIMinimum","tags":[],"Class":"ReflectionMetadataItem"},{"ValueType":"string","type":"Property","Name":"summary","tags":[],"Class":"ReflectionMetadataItem"},{"Superclass":"ReflectionMetadataItem","type":"Class","Name":"ReflectionMetadataClass","tags":[]},{"ValueType":"int","type":"Property","Name":"ExplorerImageIndex","tags":[],"Class":"ReflectionMetadataClass"},{"ValueType":"int","type":"Property","Name":"ExplorerOrder","tags":[],"Class":"ReflectionMetadataClass"},{"ValueType":"bool","type":"Property","Name":"Insertable","tags":[],"Class":"ReflectionMetadataClass"},{"ValueType":"string","type":"Property","Name":"PreferredParent","tags":[],"Class":"ReflectionMetadataClass"},{"Superclass":"ReflectionMetadataItem","type":"Class","Name":"ReflectionMetadataEnum","tags":[]},{"Superclass":"ReflectionMetadataItem","type":"Class","Name":"ReflectionMetadataEnumItem","tags":[]},{"Superclass":"ReflectionMetadataItem","type":"Class","Name":"ReflectionMetadataMember","tags":[]},{"Superclass":"Instance","type":"Class","Name":"ReflectionMetadataProperties","tags":[]},{"Superclass":"Instance","type":"Class","Name":"ReflectionMetadataYieldFunctions","tags":[]},{"Superclass":"Instance","type":"Class","Name":"RemoteEvent","tags":[]},{"ReturnType":"void","Arguments":[{"Type":"Tuple","Name":"arguments","Default":null}],"Name":"FireAllClients","tags":[],"Class":"RemoteEvent","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Instance","Name":"player","Default":null},{"Type":"Tuple","Name":"arguments","Default":null}],"Name":"FireClient","tags":[],"Class":"RemoteEvent","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Tuple","Name":"arguments","Default":null}],"Name":"FireServer","tags":[],"Class":"RemoteEvent","type":"Function"},{"Arguments":[{"Name":"arguments","Type":"Tuple"}],"Name":"OnClientEvent","tags":[],"Class":"RemoteEvent","type":"Event"},{"Arguments":[{"Name":"player","Type":"Instance"},{"Name":"arguments","Type":"Tuple"}],"Name":"OnServerEvent","tags":[],"Class":"RemoteEvent","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"RemoteFunction","tags":[]},{"ReturnType":"Tuple","Arguments":[{"Type":"Instance","Name":"player","Default":null},{"Type":"Tuple","Name":"arguments","Default":null}],"Name":"InvokeClient","tags":[],"Class":"RemoteFunction","type":"YieldFunction"},{"ReturnType":"Tuple","Arguments":[{"Type":"Tuple","Name":"arguments","Default":null}],"Name":"InvokeServer","tags":[],"Class":"RemoteFunction","type":"YieldFunction"},{"ReturnType":"Tuple","Arguments":[{"Name":"arguments","Type":"Tuple"}],"Name":"OnClientInvoke","tags":[],"Class":"RemoteFunction","type":"Callback"},{"ReturnType":"Tuple","Arguments":[{"Name":"player","Type":"Instance"},{"Name":"arguments","Type":"Tuple"}],"Name":"OnServerInvoke","tags":[],"Class":"RemoteFunction","type":"Callback"},{"Superclass":"Instance","type":"Class","Name":"RenderHooksService","tags":[]},{"ReturnType":"void","Arguments":[],"Name":"CaptureMetrics","tags":["LocalUserSecurity"],"Class":"RenderHooksService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"qId","Default":null}],"Name":"DisableQueue","tags":["LocalUserSecurity"],"Class":"RenderHooksService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"bool","Name":"enabled","Default":null}],"Name":"EnableAdorns","tags":["LocalUserSecurity"],"Class":"RenderHooksService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"qId","Default":null}],"Name":"EnableQueue","tags":["LocalUserSecurity"],"Class":"RenderHooksService","type":"Function"},{"ReturnType":"double","Arguments":[],"Name":"GetDeltaAve","tags":["LocalUserSecurity"],"Class":"RenderHooksService","type":"Function"},{"ReturnType":"double","Arguments":[],"Name":"GetGPUDelay","tags":["LocalUserSecurity"],"Class":"RenderHooksService","type":"Function"},{"ReturnType":"double","Arguments":[],"Name":"GetPresentTime","tags":["LocalUserSecurity"],"Class":"RenderHooksService","type":"Function"},{"ReturnType":"double","Arguments":[],"Name":"GetRenderAve","tags":["LocalUserSecurity"],"Class":"RenderHooksService","type":"Function"},{"ReturnType":"double","Arguments":[],"Name":"GetRenderConfMax","tags":["LocalUserSecurity"],"Class":"RenderHooksService","type":"Function"},{"ReturnType":"double","Arguments":[],"Name":"GetRenderConfMin","tags":["LocalUserSecurity"],"Class":"RenderHooksService","type":"Function"},{"ReturnType":"double","Arguments":[],"Name":"GetRenderStd","tags":["LocalUserSecurity"],"Class":"RenderHooksService","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"PrintScene","tags":["LocalUserSecurity"],"Class":"RenderHooksService","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"ReloadShaders","tags":["LocalUserSecurity"],"Class":"RenderHooksService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"width","Default":null},{"Type":"int","Name":"height","Default":null}],"Name":"ResizeWindow","tags":["LocalUserSecurity"],"Class":"RenderHooksService","type":"Function"},{"Superclass":"Instance","type":"Class","Name":"RenderSettings","tags":["notbrowsable"]},{"ValueType":"AASamples","type":"Property","Name":"AASamples","tags":[],"Class":"RenderSettings"},{"ValueType":"Antialiasing","type":"Property","Name":"Antialiasing","tags":[],"Class":"RenderSettings"},{"ValueType":"int","type":"Property","Name":"AutoFRMLevel","tags":[],"Class":"RenderSettings"},{"ValueType":"bool","type":"Property","Name":"DebugDisableInterpolation","tags":[],"Class":"RenderSettings"},{"ValueType":"bool","type":"Property","Name":"EagerBulkExecution","tags":[],"Class":"RenderSettings"},{"ValueType":"QualityLevel","type":"Property","Name":"EditQualityLevel","tags":[],"Class":"RenderSettings"},{"ValueType":"bool","type":"Property","Name":"EnableFRM","tags":["hidden"],"Class":"RenderSettings"},{"ValueType":"bool","type":"Property","Name":"ExportMergeByMaterial","tags":[],"Class":"RenderSettings"},{"ValueType":"FramerateManagerMode","type":"Property","Name":"FrameRateManager","tags":[],"Class":"RenderSettings"},{"ValueType":"GraphicsMode","type":"Property","Name":"GraphicsMode","tags":[],"Class":"RenderSettings"},{"ValueType":"bool","type":"Property","Name":"IsAggregationShown","tags":[],"Class":"RenderSettings"},{"ValueType":"bool","type":"Property","Name":"IsSynchronizedWithPhysics","tags":[],"Class":"RenderSettings"},{"ValueType":"int","type":"Property","Name":"MeshCacheSize","tags":[],"Class":"RenderSettings"},{"ValueType":"QualityLevel","type":"Property","Name":"QualityLevel","tags":[],"Class":"RenderSettings"},{"ValueType":"bool","type":"Property","Name":"ReloadAssets","tags":[],"Class":"RenderSettings"},{"ValueType":"Resolution","type":"Property","Name":"Resolution","tags":[],"Class":"RenderSettings"},{"ValueType":"bool","type":"Property","Name":"ShowBoundingBoxes","tags":[],"Class":"RenderSettings"},{"ValueType":"bool","type":"Property","Name":"ShowInterpolationpath","tags":[],"Class":"RenderSettings"},{"ValueType":"int","type":"Property","Name":"TextureCacheSize","tags":[],"Class":"RenderSettings"},{"ReturnType":"int","Arguments":[],"Name":"GetMaxQualityLevel","tags":[],"Class":"RenderSettings","type":"Function"},{"Superclass":"Instance","type":"Class","Name":"ReplicatedFirst","tags":["notCreatable"]},{"ReturnType":"bool","Arguments":[],"Name":"IsDefaultLoadingGuiRemoved","tags":["RobloxScriptSecurity"],"Class":"ReplicatedFirst","type":"Function"},{"ReturnType":"bool","Arguments":[],"Name":"IsFinishedReplicating","tags":["RobloxScriptSecurity"],"Class":"ReplicatedFirst","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"RemoveDefaultLoadingScreen","tags":[],"Class":"ReplicatedFirst","type":"Function"},{"Arguments":[],"Name":"FinishedReplicating","tags":["RobloxScriptSecurity"],"Class":"ReplicatedFirst","type":"Event"},{"Arguments":[],"Name":"RemoveDefaultLoadingGuiSignal","tags":["RobloxScriptSecurity"],"Class":"ReplicatedFirst","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"ReplicatedStorage","tags":["notCreatable"]},{"Superclass":"Instance","type":"Class","Name":"RobloxReplicatedStorage","tags":["notCreatable","notbrowsable"]},{"Superclass":"Instance","type":"Class","Name":"RunService","tags":[]},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"name","Default":null},{"Type":"int","Name":"priority","Default":null},{"Type":"Function","Name":"function","Default":null}],"Name":"BindToRenderStep","tags":[],"Class":"RunService","type":"Function"},{"ReturnType":"bool","Arguments":[],"Name":"IsClient","tags":[],"Class":"RunService","type":"Function"},{"ReturnType":"bool","Arguments":[],"Name":"IsRunMode","tags":[],"Class":"RunService","type":"Function"},{"ReturnType":"bool","Arguments":[],"Name":"IsRunning","tags":["RobloxScriptSecurity"],"Class":"RunService","type":"Function"},{"ReturnType":"bool","Arguments":[],"Name":"IsServer","tags":[],"Class":"RunService","type":"Function"},{"ReturnType":"bool","Arguments":[],"Name":"IsStudio","tags":[],"Class":"RunService","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"Pause","tags":["PluginSecurity"],"Class":"RunService","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"Reset","tags":["PluginSecurity","deprecated"],"Class":"RunService","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"Run","tags":["PluginSecurity"],"Class":"RunService","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"Stop","tags":["PluginSecurity"],"Class":"RunService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"name","Default":null}],"Name":"UnbindFromRenderStep","tags":[],"Class":"RunService","type":"Function"},{"Arguments":[{"Name":"step","Type":"double"}],"Name":"Heartbeat","tags":[],"Class":"RunService","type":"Event"},{"Arguments":[{"Name":"step","Type":"double"}],"Name":"RenderStepped","tags":[],"Class":"RunService","type":"Event"},{"Arguments":[{"Name":"time","Type":"double"},{"Name":"step","Type":"double"}],"Name":"Stepped","tags":[],"Class":"RunService","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"RuntimeScriptService","tags":["notCreatable"]},{"Superclass":"Instance","type":"Class","Name":"ScriptContext","tags":["notCreatable"]},{"ValueType":"bool","type":"Property","Name":"ScriptsDisabled","tags":["LocalUserSecurity"],"Class":"ScriptContext"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"assetId","Default":null},{"Type":"Instance","Name":"parent","Default":null},{"Type":"string","Name":"name","Default":null}],"Name":"AddCoreScript","tags":["RobloxScriptSecurity"],"Class":"ScriptContext","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"name","Default":null},{"Type":"Instance","Name":"parent","Default":null}],"Name":"AddCoreScriptLocal","tags":["RobloxScriptSecurity"],"Class":"ScriptContext","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"assetId","Default":null}],"Name":"AddStarterScript","tags":["LocalUserSecurity"],"Class":"ScriptContext","type":"Function"},{"ReturnType":"Tuple","Arguments":[{"Type":"bool","Name":"clearHighwaterMark","Default":"true"}],"Name":"GetHeapStats","tags":["RobloxScriptSecurity"],"Class":"ScriptContext","type":"Function"},{"ReturnType":"Array","Arguments":[],"Name":"GetScriptStats","tags":["RobloxScriptSecurity"],"Class":"ScriptContext","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"bool","Name":"enable","Default":"false"}],"Name":"SetCollectScriptStats","tags":["RobloxScriptSecurity"],"Class":"ScriptContext","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"double","Name":"seconds","Default":null}],"Name":"SetTimeout","tags":["PluginSecurity"],"Class":"ScriptContext","type":"Function"},{"Arguments":[{"Name":"object","Type":"Instance"},{"Name":"member","Type":"string"},{"Name":"script","Type":"Instance"}],"Name":"CamelCaseViolation","tags":["RobloxScriptSecurity"],"Class":"ScriptContext","type":"Event"},{"Arguments":[{"Name":"message","Type":"string"},{"Name":"stackTrace","Type":"string"},{"Name":"script","Type":"Instance"}],"Name":"Error","tags":[],"Class":"ScriptContext","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"ScriptDebugger","tags":["notCreatable"]},{"ValueType":"int","type":"Property","Name":"CurrentLine","tags":["readonly"],"Class":"ScriptDebugger"},{"ValueType":"bool","type":"Property","Name":"IsDebugging","tags":["readonly"],"Class":"ScriptDebugger"},{"ValueType":"bool","type":"Property","Name":"IsPaused","tags":["readonly"],"Class":"ScriptDebugger"},{"ValueType":"Object","type":"Property","Name":"Script","tags":["readonly"],"Class":"ScriptDebugger"},{"ReturnType":"Instance","Arguments":[{"Type":"string","Name":"expression","Default":null}],"Name":"AddWatch","tags":[],"Class":"ScriptDebugger","type":"Function"},{"ReturnType":"Objects","Arguments":[],"Name":"GetBreakpoints","tags":[],"Class":"ScriptDebugger","type":"Function"},{"ReturnType":"Map","Arguments":[],"Name":"GetGlobals","tags":[],"Class":"ScriptDebugger","type":"Function"},{"ReturnType":"Map","Arguments":[{"Type":"int","Name":"stackFrame","Default":"0"}],"Name":"GetLocals","tags":[],"Class":"ScriptDebugger","type":"Function"},{"ReturnType":"Array","Arguments":[],"Name":"GetStack","tags":[],"Class":"ScriptDebugger","type":"Function"},{"ReturnType":"Map","Arguments":[{"Type":"int","Name":"stackFrame","Default":"0"}],"Name":"GetUpvalues","tags":[],"Class":"ScriptDebugger","type":"Function"},{"ReturnType":"Variant","Arguments":[{"Type":"Instance","Name":"watch","Default":null}],"Name":"GetWatchValue","tags":[],"Class":"ScriptDebugger","type":"Function"},{"ReturnType":"Objects","Arguments":[],"Name":"GetWatches","tags":[],"Class":"ScriptDebugger","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"Resume","tags":["deprecated"],"Class":"ScriptDebugger","type":"Function"},{"ReturnType":"Instance","Arguments":[{"Type":"int","Name":"line","Default":null}],"Name":"SetBreakpoint","tags":[],"Class":"ScriptDebugger","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"name","Default":null},{"Type":"Variant","Name":"value","Default":null}],"Name":"SetGlobal","tags":[],"Class":"ScriptDebugger","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"name","Default":null},{"Type":"Variant","Name":"value","Default":null},{"Type":"int","Name":"stackFrame","Default":"0"}],"Name":"SetLocal","tags":[],"Class":"ScriptDebugger","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"name","Default":null},{"Type":"Variant","Name":"value","Default":null},{"Type":"int","Name":"stackFrame","Default":"0"}],"Name":"SetUpvalue","tags":[],"Class":"ScriptDebugger","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"StepIn","tags":["deprecated"],"Class":"ScriptDebugger","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"StepOut","tags":["deprecated"],"Class":"ScriptDebugger","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"StepOver","tags":["deprecated"],"Class":"ScriptDebugger","type":"Function"},{"Arguments":[{"Name":"breakpoint","Type":"Instance"}],"Name":"BreakpointAdded","tags":[],"Class":"ScriptDebugger","type":"Event"},{"Arguments":[{"Name":"breakpoint","Type":"Instance"}],"Name":"BreakpointRemoved","tags":[],"Class":"ScriptDebugger","type":"Event"},{"Arguments":[{"Name":"line","Type":"int"}],"Name":"EncounteredBreak","tags":[],"Class":"ScriptDebugger","type":"Event"},{"Arguments":[],"Name":"Resuming","tags":[],"Class":"ScriptDebugger","type":"Event"},{"Arguments":[{"Name":"watch","Type":"Instance"}],"Name":"WatchAdded","tags":[],"Class":"ScriptDebugger","type":"Event"},{"Arguments":[{"Name":"watch","Type":"Instance"}],"Name":"WatchRemoved","tags":[],"Class":"ScriptDebugger","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"ScriptInformationProvider","tags":[]},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"access","Default":null}],"Name":"SetAccessKey","tags":["RobloxSecurity"],"Class":"ScriptInformationProvider","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"url","Default":null}],"Name":"SetAssetUrl","tags":["LocalUserSecurity"],"Class":"ScriptInformationProvider","type":"Function"},{"Superclass":"Instance","type":"Class","Name":"ScriptService","tags":[]},{"Superclass":"Instance","type":"Class","Name":"Selection","tags":[]},{"ReturnType":"Objects","Arguments":[],"Name":"Get","tags":["PluginSecurity"],"Class":"Selection","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Objects","Name":"selection","Default":null}],"Name":"Set","tags":["PluginSecurity"],"Class":"Selection","type":"Function"},{"Arguments":[],"Name":"SelectionChanged","tags":[],"Class":"Selection","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"ServerScriptService","tags":["notCreatable"]},{"Superclass":"Instance","type":"Class","Name":"ServerStorage","tags":["notCreatable"]},{"Superclass":"Instance","type":"Class","Name":"ServiceProvider","tags":["notbrowsable"]},{"ReturnType":"Instance","Arguments":[{"Type":"string","Name":"className","Default":null}],"Name":"FindService","tags":[],"Class":"ServiceProvider","type":"Function"},{"ReturnType":"Instance","Arguments":[{"Type":"string","Name":"className","Default":null}],"Name":"GetService","tags":[],"Class":"ServiceProvider","type":"Function"},{"ReturnType":"Instance","Arguments":[{"Type":"string","Name":"className","Default":null}],"Name":"getService","tags":["deprecated"],"Class":"ServiceProvider","type":"Function"},{"ReturnType":"Instance","Arguments":[{"Type":"string","Name":"className","Default":null}],"Name":"service","tags":["deprecated"],"Class":"ServiceProvider","type":"Function"},{"Arguments":[],"Name":"Close","tags":[],"Class":"ServiceProvider","type":"Event"},{"Arguments":[],"Name":"CloseLate","tags":["LocalUserSecurity"],"Class":"ServiceProvider","type":"Event"},{"Arguments":[{"Name":"service","Type":"Instance"}],"Name":"ServiceAdded","tags":[],"Class":"ServiceProvider","type":"Event"},{"Arguments":[{"Name":"service","Type":"Instance"}],"Name":"ServiceRemoving","tags":[],"Class":"ServiceProvider","type":"Event"},{"Superclass":"ServiceProvider","type":"Class","Name":"DataModel","tags":[]},{"ValueType":"int","type":"Property","Name":"CreatorId","tags":["readonly"],"Class":"DataModel"},{"ValueType":"CreatorType","type":"Property","Name":"CreatorType","tags":["readonly"],"Class":"DataModel"},{"ValueType":"GearGenreSetting","type":"Property","Name":"GearGenreSetting","tags":["readonly"],"Class":"DataModel"},{"ValueType":"Genre","type":"Property","Name":"Genre","tags":["readonly"],"Class":"DataModel"},{"ValueType":"bool","type":"Property","Name":"IsPersonalServer","tags":["RobloxScriptSecurity"],"Class":"DataModel"},{"ValueType":"string","type":"Property","Name":"JobId","tags":["readonly"],"Class":"DataModel"},{"ValueType":"bool","type":"Property","Name":"LocalSaveEnabled","tags":["RobloxScriptSecurity","readonly"],"Class":"DataModel"},{"ValueType":"int","type":"Property","Name":"PlaceId","tags":["readonly"],"Class":"DataModel"},{"ValueType":"int","type":"Property","Name":"PlaceVersion","tags":["readonly"],"Class":"DataModel"},{"ValueType":"string","type":"Property","Name":"VIPServerId","tags":["readonly"],"Class":"DataModel"},{"ValueType":"int","type":"Property","Name":"VIPServerOwnerId","tags":["readonly"],"Class":"DataModel"},{"ValueType":"Object","type":"Property","Name":"Workspace","tags":["readonly"],"Class":"DataModel"},{"ValueType":"Object","type":"Property","Name":"lighting","tags":["deprecated","readonly"],"Class":"DataModel"},{"ValueType":"Object","type":"Property","Name":"workspace","tags":["deprecated","readonly"],"Class":"DataModel"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"displayName","Default":null},{"Type":"string","Name":"stat","Default":null}],"Name":"AddStat","tags":["LocalUserSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"ClearMessage","tags":["LocalUserSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"bool","Name":"localSave","Default":null}],"Name":"FinishShutdown","tags":["RobloxScriptSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"double","Arguments":[{"Type":"string","Name":"jobname","Default":null},{"Type":"double","Name":"greaterThan","Default":null}],"Name":"GetJobIntervalPeakFraction","tags":["PluginSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"double","Arguments":[{"Type":"string","Name":"jobname","Default":null},{"Type":"double","Name":"greaterThan","Default":null}],"Name":"GetJobTimePeakFraction","tags":["PluginSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"Array","Arguments":[],"Name":"GetJobsExtendedStats","tags":["PluginSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"Array","Arguments":[],"Name":"GetJobsInfo","tags":["PluginSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"string","Arguments":[],"Name":"GetMessage","tags":[],"Class":"DataModel","type":"Function"},{"ReturnType":"bool","Arguments":[],"Name":"GetRemoteBuildMode","tags":[],"Class":"DataModel","type":"Function"},{"ReturnType":"string","Arguments":[{"Type":"string","Name":"url","Default":null},{"Type":"bool","Name":"synchronous","Default":"false"}],"Name":"HttpGet","tags":["RobloxScriptSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"string","Arguments":[{"Type":"string","Name":"url","Default":null},{"Type":"string","Name":"data","Default":null},{"Type":"bool","Name":"synchronous","Default":"false"},{"Type":"string","Name":"contentType","Default":"*/*"}],"Name":"HttpPost","tags":["RobloxScriptSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"bool","Arguments":[{"Type":"GearType","Name":"gearType","Default":null}],"Name":"IsGearTypeAllowed","tags":[],"Class":"DataModel","type":"Function"},{"ReturnType":"bool","Arguments":[],"Name":"IsLoaded","tags":[],"Class":"DataModel","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Content","Name":"url","Default":null}],"Name":"Load","tags":["LocalUserSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"assetID","Default":null}],"Name":"LoadGame","tags":["LocalUserSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"LoadPlugins","tags":["RobloxSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"assetID","Default":null}],"Name":"LoadWorld","tags":["LocalUserSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"stat","Default":null}],"Name":"RemoveStat","tags":["LocalUserSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"category","Default":null},{"Type":"string","Name":"action","Default":"custom"},{"Type":"string","Name":"label","Default":"none"},{"Type":"int","Name":"value","Default":"0"}],"Name":"ReportInGoogleAnalytics","tags":["RobloxScriptSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"id","Default":null},{"Type":"string","Name":"key1","Default":null},{"Type":"string","Name":"value1","Default":null},{"Type":"string","Name":"key2","Default":null},{"Type":"string","Name":"value2","Default":null}],"Name":"ReportMeasurement","tags":["RobloxScriptSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Content","Name":"url","Default":null}],"Name":"Save","tags":["RobloxSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"SaveStats","tags":["LocalUserSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"ServerSave","tags":["LocalUserSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"creatorID","Default":null},{"Type":"CreatorType","Name":"creatorType","Default":null}],"Name":"SetCreatorID","tags":["PluginSecurity","deprecated"],"Class":"DataModel","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"creatorId","Default":null},{"Type":"CreatorType","Name":"creatorType","Default":null}],"Name":"SetCreatorId","tags":["PluginSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"GearGenreSetting","Name":"genreRestriction","Default":null},{"Type":"int","Name":"allowedGenres","Default":null}],"Name":"SetGearSettings","tags":["PluginSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Genre","Name":"genre","Default":null}],"Name":"SetGenre","tags":["PluginSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"double","Name":"seconds","Default":null}],"Name":"SetJobsExtendedStatsWindow","tags":["LocalUserSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"message","Default":null}],"Name":"SetMessage","tags":["LocalUserSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"SetMessageBrickCount","tags":["LocalUserSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"placeID","Default":null},{"Type":"bool","Name":"robloxPlace","Default":"false"}],"Name":"SetPlaceID","tags":["PluginSecurity","deprecated"],"Class":"DataModel","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"placeId","Default":null},{"Type":"bool","Name":"robloxPlace","Default":"false"}],"Name":"SetPlaceId","tags":["PluginSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"placeId","Default":null}],"Name":"SetPlaceVersion","tags":["PluginSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"bool","Name":"buildModeEnabled","Default":null}],"Name":"SetRemoteBuildMode","tags":["LocalUserSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"info","Default":null}],"Name":"SetScreenshotInfo","tags":["LocalUserSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"url","Default":null}],"Name":"SetServerSaveUrl","tags":["LocalUserSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"universeId","Default":null}],"Name":"SetUniverseId","tags":["PluginSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"newId","Default":null}],"Name":"SetVIPServerId","tags":["LocalUserSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"newId","Default":null}],"Name":"SetVIPServerOwnerId","tags":["LocalUserSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"info","Default":null}],"Name":"SetVideoInfo","tags":["LocalUserSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"Shutdown","tags":["LocalUserSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"ToggleTools","tags":["LocalUserSecurity"],"Class":"DataModel","type":"Function"},{"ReturnType":"string","Arguments":[{"Type":"string","Name":"url","Default":null}],"Name":"HttpGetAsync","tags":["RobloxScriptSecurity"],"Class":"DataModel","type":"YieldFunction"},{"ReturnType":"string","Arguments":[{"Type":"string","Name":"url","Default":null},{"Type":"string","Name":"data","Default":null},{"Type":"string","Name":"contentType","Default":"*/*"}],"Name":"HttpPostAsync","tags":["RobloxScriptSecurity"],"Class":"DataModel","type":"YieldFunction"},{"ReturnType":"bool","Arguments":[{"Type":"SaveFilter","Name":"saveFilter","Default":"SaveAll"}],"Name":"SavePlace","tags":[],"Class":"DataModel","type":"YieldFunction"},{"ReturnType":"bool","Arguments":[],"Name":"SaveToRoblox","tags":["RobloxScriptSecurity"],"Class":"DataModel","type":"YieldFunction"},{"Arguments":[],"Name":"AllowedGearTypeChanged","tags":[],"Class":"DataModel","type":"Event"},{"Arguments":[{"Name":"betterQuality","Type":"bool"}],"Name":"GraphicsQualityChangeRequest","tags":[],"Class":"DataModel","type":"Event"},{"Arguments":[{"Name":"object","Type":"Instance"},{"Name":"descriptor","Type":"Property"}],"Name":"ItemChanged","tags":[],"Class":"DataModel","type":"Event"},{"Arguments":[],"Name":"Loaded","tags":[],"Class":"DataModel","type":"Event"},{"ReturnType":"Tuple","Arguments":[],"Name":"OnClose","tags":[],"Class":"DataModel","type":"Callback"},{"ReturnType":"bool","Arguments":[],"Name":"RequestShutdown","tags":["RobloxScriptSecurity","noyield"],"Class":"DataModel","type":"Callback"},{"Superclass":"ServiceProvider","type":"Class","Name":"GenericSettings","tags":[]},{"Superclass":"GenericSettings","type":"Class","Name":"GlobalSettings","tags":["notbrowsable"]},{"ReturnType":"bool","Arguments":[{"Type":"string","Name":"name","Default":null}],"Name":"GetFFlag","tags":[],"Class":"GlobalSettings","type":"Function"},{"ReturnType":"string","Arguments":[{"Type":"string","Name":"name","Default":null}],"Name":"GetFVariable","tags":[],"Class":"GlobalSettings","type":"Function"},{"ReturnType":"Dictionary","Arguments":[],"Name":"GetFVariables","tags":["RobloxScriptSecurity"],"Class":"GlobalSettings","type":"Function"},{"Superclass":"GenericSettings","type":"Class","Name":"UserSettings","tags":[]},{"ReturnType":"bool","Arguments":[{"Type":"string","Name":"name","Default":null}],"Name":"IsUserFeatureEnabled","tags":[],"Class":"UserSettings","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"Reset","tags":[],"Class":"UserSettings","type":"Function"},{"Superclass":"Instance","type":"Class","Name":"Sky","tags":[]},{"ValueType":"bool","type":"Property","Name":"CelestialBodiesShown","tags":[],"Class":"Sky"},{"ValueType":"Content","type":"Property","Name":"SkyboxBk","tags":[],"Class":"Sky"},{"ValueType":"Content","type":"Property","Name":"SkyboxDn","tags":[],"Class":"Sky"},{"ValueType":"Content","type":"Property","Name":"SkyboxFt","tags":[],"Class":"Sky"},{"ValueType":"Content","type":"Property","Name":"SkyboxLf","tags":[],"Class":"Sky"},{"ValueType":"Content","type":"Property","Name":"SkyboxRt","tags":[],"Class":"Sky"},{"ValueType":"Content","type":"Property","Name":"SkyboxUp","tags":[],"Class":"Sky"},{"ValueType":"int","type":"Property","Name":"StarCount","tags":[],"Class":"Sky"},{"Superclass":"Instance","type":"Class","Name":"Smoke","tags":[]},{"ValueType":"Color3","type":"Property","Name":"Color","tags":[],"Class":"Smoke"},{"ValueType":"bool","type":"Property","Name":"Enabled","tags":[],"Class":"Smoke"},{"ValueType":"float","type":"Property","Name":"Opacity","tags":[],"Class":"Smoke"},{"ValueType":"float","type":"Property","Name":"RiseVelocity","tags":[],"Class":"Smoke"},{"ValueType":"float","type":"Property","Name":"Size","tags":[],"Class":"Smoke"},{"Superclass":"Instance","type":"Class","Name":"SocialService","tags":[]},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"bestFriendUrl","Default":null}],"Name":"SetBestFriendUrl","tags":["LocalUserSecurity"],"Class":"SocialService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"friendUrl","Default":null}],"Name":"SetFriendUrl","tags":["LocalUserSecurity"],"Class":"SocialService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"groupRankUrl","Default":null}],"Name":"SetGroupRankUrl","tags":["LocalUserSecurity"],"Class":"SocialService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"groupRoleUrl","Default":null}],"Name":"SetGroupRoleUrl","tags":["LocalUserSecurity"],"Class":"SocialService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"groupUrl","Default":null}],"Name":"SetGroupUrl","tags":["LocalUserSecurity"],"Class":"SocialService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"stuffUrl","Default":null}],"Name":"SetPackageContentsUrl","tags":["LocalUserSecurity"],"Class":"SocialService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"stuffUrl","Default":null}],"Name":"SetStuffUrl","tags":["LocalUserSecurity"],"Class":"SocialService","type":"Function"},{"Superclass":"Instance","type":"Class","Name":"Sound","tags":[]},{"ValueType":"bool","type":"Property","Name":"IsPaused","tags":["readonly"],"Class":"Sound"},{"ValueType":"bool","type":"Property","Name":"IsPlaying","tags":["readonly"],"Class":"Sound"},{"ValueType":"bool","type":"Property","Name":"Looped","tags":[],"Class":"Sound"},{"ValueType":"float","type":"Property","Name":"MaxDistance","tags":[],"Class":"Sound"},{"ValueType":"float","type":"Property","Name":"MinDistance","tags":[],"Class":"Sound"},{"ValueType":"float","type":"Property","Name":"Pitch","tags":[],"Class":"Sound"},{"ValueType":"bool","type":"Property","Name":"PlayOnRemove","tags":[],"Class":"Sound"},{"ValueType":"Content","type":"Property","Name":"SoundId","tags":[],"Class":"Sound"},{"ValueType":"double","type":"Property","Name":"TimeLength","tags":["readonly"],"Class":"Sound"},{"ValueType":"double","type":"Property","Name":"TimePosition","tags":[],"Class":"Sound"},{"ValueType":"float","type":"Property","Name":"Volume","tags":[],"Class":"Sound"},{"ValueType":"bool","type":"Property","Name":"isPlaying","tags":["deprecated","readonly"],"Class":"Sound"},{"ReturnType":"void","Arguments":[],"Name":"Pause","tags":[],"Class":"Sound","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"Play","tags":[],"Class":"Sound","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"Resume","tags":[],"Class":"Sound","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"Stop","tags":[],"Class":"Sound","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"pause","tags":["deprecated"],"Class":"Sound","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"play","tags":["deprecated"],"Class":"Sound","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"stop","tags":["deprecated"],"Class":"Sound","type":"Function"},{"Arguments":[{"Name":"soundId","Type":"string"},{"Name":"numOfTimesLooped","Type":"int"}],"Name":"DidLoop","tags":[],"Class":"Sound","type":"Event"},{"Arguments":[{"Name":"soundId","Type":"string"}],"Name":"Ended","tags":[],"Class":"Sound","type":"Event"},{"Arguments":[{"Name":"soundId","Type":"string"}],"Name":"Paused","tags":[],"Class":"Sound","type":"Event"},{"Arguments":[{"Name":"soundId","Type":"string"}],"Name":"Played","tags":[],"Class":"Sound","type":"Event"},{"Arguments":[{"Name":"soundId","Type":"string"}],"Name":"Stopped","tags":[],"Class":"Sound","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"SoundService","tags":["notCreatable"]},{"ValueType":"ReverbType","type":"Property","Name":"AmbientReverb","tags":[],"Class":"SoundService"},{"ValueType":"float","type":"Property","Name":"DistanceFactor","tags":[],"Class":"SoundService"},{"ValueType":"float","type":"Property","Name":"DopplerScale","tags":[],"Class":"SoundService"},{"ValueType":"float","type":"Property","Name":"RolloffScale","tags":[],"Class":"SoundService"},{"ReturnType":"Tuple","Arguments":[],"Name":"GetListener","tags":[],"Class":"SoundService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"SoundType","Name":"sound","Default":null}],"Name":"PlayStockSound","tags":["RobloxScriptSecurity"],"Class":"SoundService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"ListenerType","Name":"listenerType","Default":null},{"Type":"Tuple","Name":"listener","Default":null}],"Name":"SetListener","tags":[],"Class":"SoundService","type":"Function"},{"Superclass":"Instance","type":"Class","Name":"Sparkles","tags":[]},{"ValueType":"Color3","type":"Property","Name":"Color","tags":["hidden"],"Class":"Sparkles"},{"ValueType":"bool","type":"Property","Name":"Enabled","tags":[],"Class":"Sparkles"},{"ValueType":"Color3","type":"Property","Name":"SparkleColor","tags":[],"Class":"Sparkles"},{"Superclass":"Instance","type":"Class","Name":"SpawnerService","tags":[]},{"Superclass":"Instance","type":"Class","Name":"StarterGear","tags":[]},{"Superclass":"Instance","type":"Class","Name":"StarterPlayer","tags":[]},{"ValueType":"bool","type":"Property","Name":"AutoJumpEnabled","tags":[],"Class":"StarterPlayer"},{"ValueType":"float","type":"Property","Name":"CameraMaxZoomDistance","tags":[],"Class":"StarterPlayer"},{"ValueType":"float","type":"Property","Name":"CameraMinZoomDistance","tags":[],"Class":"StarterPlayer"},{"ValueType":"CameraMode","type":"Property","Name":"CameraMode","tags":[],"Class":"StarterPlayer"},{"ValueType":"DevCameraOcclusionMode","type":"Property","Name":"DevCameraOcclusionMode","tags":[],"Class":"StarterPlayer"},{"ValueType":"DevComputerCameraMovementMode","type":"Property","Name":"DevComputerCameraMovementMode","tags":[],"Class":"StarterPlayer"},{"ValueType":"DevComputerMovementMode","type":"Property","Name":"DevComputerMovementMode","tags":[],"Class":"StarterPlayer"},{"ValueType":"DevTouchCameraMovementMode","type":"Property","Name":"DevTouchCameraMovementMode","tags":[],"Class":"StarterPlayer"},{"ValueType":"DevTouchMovementMode","type":"Property","Name":"DevTouchMovementMode","tags":[],"Class":"StarterPlayer"},{"ValueType":"bool","type":"Property","Name":"EnableMouseLockOption","tags":[],"Class":"StarterPlayer"},{"ValueType":"float","type":"Property","Name":"HealthDisplayDistance","tags":[],"Class":"StarterPlayer"},{"ValueType":"bool","type":"Property","Name":"LoadCharacterAppearance","tags":[],"Class":"StarterPlayer"},{"ValueType":"float","type":"Property","Name":"NameDisplayDistance","tags":[],"Class":"StarterPlayer"},{"Superclass":"Instance","type":"Class","Name":"StarterPlayerScripts","tags":[]},{"Superclass":"StarterPlayerScripts","type":"Class","Name":"StarterCharacterScripts","tags":[]},{"Superclass":"Instance","type":"Class","Name":"Stats","tags":["notCreatable"]},{"ValueType":"double","type":"Property","Name":"MinReportInterval","tags":["RobloxScriptSecurity"],"Class":"Stats"},{"ValueType":"string","type":"Property","Name":"ReporterType","tags":["RobloxScriptSecurity"],"Class":"Stats"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"category","Default":null},{"Type":"Dictionary","Name":"data","Default":null}],"Name":"Report","tags":["RobloxScriptSecurity"],"Class":"Stats","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"ReportJobsStepWindow","tags":["RobloxScriptSecurity"],"Class":"Stats","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"bool","Name":"includeJobs","Default":"false"}],"Name":"ReportTaskScheduler","tags":["RobloxScriptSecurity"],"Class":"Stats","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"url","Default":null}],"Name":"SetReportUrl","tags":["RobloxScriptSecurity"],"Class":"Stats","type":"Function"},{"Superclass":"Instance","type":"Class","Name":"StatsItem","tags":[]},{"ReturnType":"double","Arguments":[],"Name":"GetValue","tags":["PluginSecurity"],"Class":"StatsItem","type":"Function"},{"ReturnType":"string","Arguments":[],"Name":"GetValueString","tags":["PluginSecurity"],"Class":"StatsItem","type":"Function"},{"Superclass":"StatsItem","type":"Class","Name":"ProfilingItem","tags":[]},{"ReturnType":"Tuple","Arguments":[{"Type":"double","Name":"window","Default":"0"}],"Name":"GetTimes","tags":["PluginSecurity"],"Class":"ProfilingItem","type":"Function"},{"ReturnType":"Tuple","Arguments":[{"Type":"int","Name":"frames","Default":"1"}],"Name":"GetTimesForFrames","tags":["PluginSecurity"],"Class":"ProfilingItem","type":"Function"},{"Superclass":"StatsItem","type":"Class","Name":"RunningAverageItemDouble","tags":[]},{"Superclass":"StatsItem","type":"Class","Name":"RunningAverageItemInt","tags":[]},{"Superclass":"StatsItem","type":"Class","Name":"RunningAverageTimeIntervalItem","tags":[]},{"Superclass":"StatsItem","type":"Class","Name":"TotalCountTimeIntervalItem","tags":[]},{"Superclass":"Instance","type":"Class","Name":"StringValue","tags":[]},{"ValueType":"string","type":"Property","Name":"Value","tags":[],"Class":"StringValue"},{"Arguments":[{"Name":"value","Type":"string"}],"Name":"Changed","tags":[],"Class":"StringValue","type":"Event"},{"Arguments":[{"Name":"value","Type":"string"}],"Name":"changed","tags":["deprecated"],"Class":"StringValue","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"StudioTool","tags":[]},{"ValueType":"bool","type":"Property","Name":"Enabled","tags":[],"Class":"StudioTool"},{"Arguments":[],"Name":"Activated","tags":[],"Class":"StudioTool","type":"Event"},{"Arguments":[],"Name":"Deactivated","tags":[],"Class":"StudioTool","type":"Event"},{"Arguments":[{"Name":"mouse","Type":"Instance"}],"Name":"Equipped","tags":[],"Class":"StudioTool","type":"Event"},{"Arguments":[],"Name":"Unequipped","tags":[],"Class":"StudioTool","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"TaskScheduler","tags":[]},{"ValueType":"bool","type":"Property","Name":"AreArbitersThrottled","tags":[],"Class":"TaskScheduler"},{"ValueType":"ConcurrencyModel","type":"Property","Name":"Concurrency","tags":[],"Class":"TaskScheduler"},{"ValueType":"double","type":"Property","Name":"NumRunningJobs","tags":["readonly"],"Class":"TaskScheduler"},{"ValueType":"double","type":"Property","Name":"NumSleepingJobs","tags":["readonly"],"Class":"TaskScheduler"},{"ValueType":"double","type":"Property","Name":"NumWaitingJobs","tags":["readonly"],"Class":"TaskScheduler"},{"ValueType":"PriorityMethod","type":"Property","Name":"PriorityMethod","tags":[],"Class":"TaskScheduler"},{"ValueType":"double","type":"Property","Name":"SchedulerDutyCycle","tags":["readonly"],"Class":"TaskScheduler"},{"ValueType":"double","type":"Property","Name":"SchedulerRate","tags":["readonly"],"Class":"TaskScheduler"},{"ValueType":"SleepAdjustMethod","type":"Property","Name":"SleepAdjustMethod","tags":[],"Class":"TaskScheduler"},{"ValueType":"double","type":"Property","Name":"ThreadAffinity","tags":["readonly"],"Class":"TaskScheduler"},{"ValueType":"ThreadPoolConfig","type":"Property","Name":"ThreadPoolConfig","tags":[],"Class":"TaskScheduler"},{"ValueType":"int","type":"Property","Name":"ThreadPoolSize","tags":["readonly"],"Class":"TaskScheduler"},{"ValueType":"double","type":"Property","Name":"ThrottledJobSleepTime","tags":[],"Class":"TaskScheduler"},{"ReturnType":"void","Arguments":[{"Type":"bool","Name":"exclusive","Default":"true"},{"Type":"double","Name":"fps","Default":"30"}],"Name":"AddDummyJob","tags":["LocalUserSecurity"],"Class":"TaskScheduler","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"double","Name":"timeSlice","Default":null},{"Type":"int","Name":"numShare","Default":null}],"Name":"SetThreadShare","tags":["LocalUserSecurity","deprecated"],"Class":"TaskScheduler","type":"Function"},{"Superclass":"Instance","type":"Class","Name":"Team","tags":[]},{"ValueType":"bool","type":"Property","Name":"AutoAssignable","tags":[],"Class":"Team"},{"ValueType":"bool","type":"Property","Name":"AutoColorCharacters","tags":["deprecated"],"Class":"Team"},{"ValueType":"int","type":"Property","Name":"Score","tags":["deprecated"],"Class":"Team"},{"ValueType":"BrickColor","type":"Property","Name":"TeamColor","tags":[],"Class":"Team"},{"Superclass":"Instance","type":"Class","Name":"Teams","tags":["notCreatable"]},{"ReturnType":"Objects","Arguments":[],"Name":"GetTeams","tags":[],"Class":"Teams","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"RebalanceTeams","tags":["deprecated"],"Class":"Teams","type":"Function"},{"Superclass":"Instance","type":"Class","Name":"TeleportService","tags":[]},{"ValueType":"bool","type":"Property","Name":"CustomizedTeleportUI","tags":["deprecated"],"Class":"TeleportService"},{"ReturnType":"Variant","Arguments":[],"Name":"GetLocalPlayerTeleportData","tags":[],"Class":"TeleportService","type":"Function"},{"ReturnType":"Variant","Arguments":[{"Type":"string","Name":"setting","Default":null}],"Name":"GetTeleportSetting","tags":[],"Class":"TeleportService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"setting","Default":null},{"Type":"Variant","Name":"value","Default":null}],"Name":"SetTeleportSetting","tags":[],"Class":"TeleportService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"placeId","Default":null},{"Type":"Instance","Name":"player","Default":"nil"},{"Type":"Variant","Name":"teleportData","Default":null},{"Type":"Instance","Name":"customLoadingScreen","Default":"nil"}],"Name":"Teleport","tags":[],"Class":"TeleportService","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"TeleportCancel","tags":["RobloxScriptSecurity"],"Class":"TeleportService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"placeId","Default":null},{"Type":"string","Name":"instanceId","Default":null},{"Type":"Instance","Name":"player","Default":"nil"},{"Type":"string","Name":"spawnName","Default":""},{"Type":"Variant","Name":"teleportData","Default":null},{"Type":"Instance","Name":"customLoadingScreen","Default":"nil"}],"Name":"TeleportToPlaceInstance","tags":[],"Class":"TeleportService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"placeId","Default":null},{"Type":"string","Name":"reservedServerAccessCode","Default":null},{"Type":"Objects","Name":"players","Default":null},{"Type":"string","Name":"spawnName","Default":""},{"Type":"Variant","Name":"teleportData","Default":null},{"Type":"Instance","Name":"customLoadingScreen","Default":"nil"}],"Name":"TeleportToPrivateServer","tags":[],"Class":"TeleportService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"int","Name":"placeId","Default":null},{"Type":"string","Name":"spawnName","Default":null},{"Type":"Instance","Name":"player","Default":"nil"},{"Type":"Variant","Name":"teleportData","Default":null},{"Type":"Instance","Name":"customLoadingScreen","Default":"nil"}],"Name":"TeleportToSpawnByName","tags":[],"Class":"TeleportService","type":"Function"},{"ReturnType":"Tuple","Arguments":[{"Type":"int","Name":"userId","Default":null}],"Name":"GetPlayerPlaceInstanceAsync","tags":[],"Class":"TeleportService","type":"YieldFunction"},{"ReturnType":"string","Arguments":[{"Type":"int","Name":"placeId","Default":null}],"Name":"ReserveServer","tags":[],"Class":"TeleportService","type":"YieldFunction"},{"Arguments":[{"Name":"loadingGui","Type":"Instance"},{"Name":"dataTable","Type":"Variant"}],"Name":"LocalPlayerArrivedFromTeleport","tags":[],"Class":"TeleportService","type":"Event"},{"ReturnType":"bool","Arguments":[{"Name":"message","Type":"string"},{"Name":"placeId","Type":"int"},{"Name":"spawnName","Type":"string"}],"Name":"ConfirmationCallback","tags":["RobloxScriptSecurity","noyield"],"Class":"TeleportService","type":"Callback"},{"ReturnType":"void","Arguments":[{"Name":"message","Type":"string"}],"Name":"ErrorCallback","tags":["RobloxScriptSecurity","noyield"],"Class":"TeleportService","type":"Callback"},{"Superclass":"Instance","type":"Class","Name":"TerrainRegion","tags":[]},{"ValueType":"bool","type":"Property","Name":"IsSmooth","tags":["readonly"],"Class":"TerrainRegion"},{"ValueType":"Vector3","type":"Property","Name":"SizeInCells","tags":["readonly"],"Class":"TerrainRegion"},{"ReturnType":"void","Arguments":[],"Name":"ConvertToSmooth","tags":["PluginSecurity"],"Class":"TerrainRegion","type":"Function"},{"Superclass":"Instance","type":"Class","Name":"TestService","tags":[]},{"ValueType":"bool","type":"Property","Name":"AutoRuns","tags":[],"Class":"TestService"},{"ValueType":"string","type":"Property","Name":"Description","tags":[],"Class":"TestService"},{"ValueType":"int","type":"Property","Name":"ErrorCount","tags":["readonly"],"Class":"TestService"},{"ValueType":"bool","type":"Property","Name":"Is30FpsThrottleEnabled","tags":[],"Class":"TestService"},{"ValueType":"bool","type":"Property","Name":"IsPhysicsEnvironmentalThrottled","tags":[],"Class":"TestService"},{"ValueType":"bool","type":"Property","Name":"IsSleepAllowed","tags":[],"Class":"TestService"},{"ValueType":"int","type":"Property","Name":"NumberOfPlayers","tags":[],"Class":"TestService"},{"ValueType":"double","type":"Property","Name":"SimulateSecondsLag","tags":[],"Class":"TestService"},{"ValueType":"int","type":"Property","Name":"TestCount","tags":["readonly"],"Class":"TestService"},{"ValueType":"double","type":"Property","Name":"Timeout","tags":[],"Class":"TestService"},{"ValueType":"int","type":"Property","Name":"WarnCount","tags":["readonly"],"Class":"TestService"},{"ReturnType":"void","Arguments":[{"Type":"bool","Name":"condition","Default":null},{"Type":"string","Name":"description","Default":null},{"Type":"Instance","Name":"source","Default":"nil"},{"Type":"int","Name":"line","Default":"0"}],"Name":"Check","tags":[],"Class":"TestService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"text","Default":null},{"Type":"Instance","Name":"source","Default":"nil"},{"Type":"int","Name":"line","Default":"0"}],"Name":"Checkpoint","tags":[],"Class":"TestService","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"Done","tags":[],"Class":"TestService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"description","Default":null},{"Type":"Instance","Name":"source","Default":"nil"},{"Type":"int","Name":"line","Default":"0"}],"Name":"Error","tags":[],"Class":"TestService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"description","Default":null},{"Type":"Instance","Name":"source","Default":"nil"},{"Type":"int","Name":"line","Default":"0"}],"Name":"Fail","tags":[],"Class":"TestService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"text","Default":null},{"Type":"Instance","Name":"source","Default":"nil"},{"Type":"int","Name":"line","Default":"0"}],"Name":"Message","tags":[],"Class":"TestService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"bool","Name":"condition","Default":null},{"Type":"string","Name":"description","Default":null},{"Type":"Instance","Name":"source","Default":"nil"},{"Type":"int","Name":"line","Default":"0"}],"Name":"Require","tags":[],"Class":"TestService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"bool","Name":"condition","Default":null},{"Type":"string","Name":"description","Default":null},{"Type":"Instance","Name":"source","Default":"nil"},{"Type":"int","Name":"line","Default":"0"}],"Name":"Warn","tags":[],"Class":"TestService","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"Run","tags":["PluginSecurity"],"Class":"TestService","type":"YieldFunction"},{"Arguments":[{"Name":"condition","Type":"bool"},{"Name":"text","Type":"string"},{"Name":"script","Type":"Instance"},{"Name":"line","Type":"int"}],"Name":"ServerCollectConditionalResult","tags":[],"Class":"TestService","type":"Event"},{"Arguments":[{"Name":"text","Type":"string"},{"Name":"script","Type":"Instance"},{"Name":"line","Type":"int"}],"Name":"ServerCollectResult","tags":[],"Class":"TestService","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"TextService","tags":["notCreatable"]},{"ReturnType":"Vector2","Arguments":[{"Type":"string","Name":"string","Default":null},{"Type":"int","Name":"fontSize","Default":null},{"Type":"Font","Name":"font","Default":null},{"Type":"Vector2","Name":"frameSize","Default":null}],"Name":"GetTextSize","tags":["RobloxScriptSecurity"],"Class":"TextService","type":"Function"},{"Superclass":"Instance","type":"Class","Name":"TimerService","tags":["notCreatable"]},{"Superclass":"Instance","type":"Class","Name":"Toolbar","tags":[]},{"ReturnType":"Instance","Arguments":[{"Type":"string","Name":"text","Default":null},{"Type":"string","Name":"tooltip","Default":null},{"Type":"string","Name":"iconname","Default":null}],"Name":"CreateButton","tags":["PluginSecurity"],"Class":"Toolbar","type":"Function"},{"Superclass":"Instance","type":"Class","Name":"TouchInputService","tags":[]},{"Superclass":"Instance","type":"Class","Name":"TouchTransmitter","tags":["notCreatable","notbrowsable"]},{"Superclass":"Instance","type":"Class","Name":"TweenService","tags":[]},{"Superclass":"Instance","type":"Class","Name":"UserGameSettings","tags":[]},{"ValueType":"bool","type":"Property","Name":"AllTutorialsDisabled","tags":["RobloxScriptSecurity"],"Class":"UserGameSettings"},{"ValueType":"CustomCameraMode","type":"Property","Name":"CameraMode","tags":["RobloxScriptSecurity"],"Class":"UserGameSettings"},{"ValueType":"ComputerCameraMovementMode","type":"Property","Name":"ComputerCameraMovementMode","tags":[],"Class":"UserGameSettings"},{"ValueType":"ComputerMovementMode","type":"Property","Name":"ComputerMovementMode","tags":[],"Class":"UserGameSettings"},{"ValueType":"ControlMode","type":"Property","Name":"ControlMode","tags":[],"Class":"UserGameSettings"},{"ValueType":"bool","type":"Property","Name":"Fullscreen","tags":["RobloxScriptSecurity"],"Class":"UserGameSettings"},{"ValueType":"UploadSetting","type":"Property","Name":"ImageUploadPromptBehavior","tags":["RobloxScriptSecurity"],"Class":"UserGameSettings"},{"ValueType":"float","type":"Property","Name":"MasterVolume","tags":[],"Class":"UserGameSettings"},{"ValueType":"float","type":"Property","Name":"MouseSensitivity","tags":[],"Class":"UserGameSettings"},{"ValueType":"RotationType","type":"Property","Name":"RotationType","tags":[],"Class":"UserGameSettings"},{"ValueType":"SavedQualitySetting","type":"Property","Name":"SavedQualityLevel","tags":[],"Class":"UserGameSettings"},{"ValueType":"TouchCameraMovementMode","type":"Property","Name":"TouchCameraMovementMode","tags":[],"Class":"UserGameSettings"},{"ValueType":"TouchMovementMode","type":"Property","Name":"TouchMovementMode","tags":[],"Class":"UserGameSettings"},{"ValueType":"bool","type":"Property","Name":"UsedHideHudShortcut","tags":["RobloxScriptSecurity"],"Class":"UserGameSettings"},{"ValueType":"int","type":"Property","Name":"VRRotationIntensity","tags":["RobloxScriptSecurity"],"Class":"UserGameSettings"},{"ValueType":"UploadSetting","type":"Property","Name":"VideoUploadPromptBehavior","tags":["RobloxScriptSecurity"],"Class":"UserGameSettings"},{"ReturnType":"bool","Arguments":[{"Type":"string","Name":"tutorialId","Default":null}],"Name":"GetTutorialState","tags":["RobloxScriptSecurity"],"Class":"UserGameSettings","type":"Function"},{"ReturnType":"bool","Arguments":[],"Name":"InFullScreen","tags":[],"Class":"UserGameSettings","type":"Function"},{"ReturnType":"bool","Arguments":[],"Name":"InStudioMode","tags":[],"Class":"UserGameSettings","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"tutorialId","Default":null},{"Type":"bool","Name":"value","Default":null}],"Name":"SetTutorialState","tags":["RobloxScriptSecurity"],"Class":"UserGameSettings","type":"Function"},{"Arguments":[{"Name":"isFullscreen","Type":"bool"}],"Name":"FullscreenChanged","tags":[],"Class":"UserGameSettings","type":"Event"},{"Arguments":[{"Name":"isStudioMode","Type":"bool"}],"Name":"StudioModeChanged","tags":[],"Class":"UserGameSettings","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"UserInputService","tags":["notCreatable"]},{"ValueType":"bool","type":"Property","Name":"AccelerometerEnabled","tags":["readonly"],"Class":"UserInputService"},{"ValueType":"bool","type":"Property","Name":"GamepadEnabled","tags":["readonly"],"Class":"UserInputService"},{"ValueType":"bool","type":"Property","Name":"GyroscopeEnabled","tags":["readonly"],"Class":"UserInputService"},{"ValueType":"bool","type":"Property","Name":"KeyboardEnabled","tags":["readonly"],"Class":"UserInputService"},{"ValueType":"bool","type":"Property","Name":"ModalEnabled","tags":[],"Class":"UserInputService"},{"ValueType":"MouseBehavior","type":"Property","Name":"MouseBehavior","tags":[],"Class":"UserInputService"},{"ValueType":"bool","type":"Property","Name":"MouseEnabled","tags":["readonly"],"Class":"UserInputService"},{"ValueType":"bool","type":"Property","Name":"MouseIconEnabled","tags":[],"Class":"UserInputService"},{"ValueType":"OverrideMouseIconBehavior","type":"Property","Name":"OverrideMouseIconBehavior","tags":["RobloxScriptSecurity"],"Class":"UserInputService"},{"ValueType":"bool","type":"Property","Name":"TouchEnabled","tags":["readonly"],"Class":"UserInputService"},{"ValueType":"CoordinateFrame","type":"Property","Name":"UserHeadCFrame","tags":["deprecated","readonly"],"Class":"UserInputService"},{"ValueType":"bool","type":"Property","Name":"VREnabled","tags":["readonly"],"Class":"UserInputService"},{"ReturnType":"bool","Arguments":[{"Type":"UserInputType","Name":"gamepadNum","Default":null},{"Type":"KeyCode","Name":"gamepadKeyCode","Default":null}],"Name":"GamepadSupports","tags":[],"Class":"UserInputService","type":"Function"},{"ReturnType":"Array","Arguments":[],"Name":"GetConnectedGamepads","tags":[],"Class":"UserInputService","type":"Function"},{"ReturnType":"Instance","Arguments":[],"Name":"GetDeviceAcceleration","tags":[],"Class":"UserInputService","type":"Function"},{"ReturnType":"Instance","Arguments":[],"Name":"GetDeviceGravity","tags":[],"Class":"UserInputService","type":"Function"},{"ReturnType":"Tuple","Arguments":[],"Name":"GetDeviceRotation","tags":[],"Class":"UserInputService","type":"Function"},{"ReturnType":"Instance","Arguments":[],"Name":"GetFocusedTextBox","tags":[],"Class":"UserInputService","type":"Function"},{"ReturnType":"bool","Arguments":[{"Type":"UserInputType","Name":"gamepadNum","Default":null}],"Name":"GetGamepadConnected","tags":[],"Class":"UserInputService","type":"Function"},{"ReturnType":"Array","Arguments":[{"Type":"UserInputType","Name":"gamepadNum","Default":null}],"Name":"GetGamepadState","tags":[],"Class":"UserInputService","type":"Function"},{"ReturnType":"Array","Arguments":[],"Name":"GetKeysPressed","tags":[],"Class":"UserInputService","type":"Function"},{"ReturnType":"UserInputType","Arguments":[],"Name":"GetLastInputType","tags":[],"Class":"UserInputService","type":"Function"},{"ReturnType":"Array","Arguments":[],"Name":"GetNavigationGamepads","tags":[],"Class":"UserInputService","type":"Function"},{"ReturnType":"Platform","Arguments":[],"Name":"GetPlatform","tags":["RobloxScriptSecurity"],"Class":"UserInputService","type":"Function"},{"ReturnType":"Array","Arguments":[{"Type":"UserInputType","Name":"gamepadNum","Default":null}],"Name":"GetSupportedGamepadKeyCodes","tags":[],"Class":"UserInputService","type":"Function"},{"ReturnType":"CoordinateFrame","Arguments":[{"Type":"UserCFrame","Name":"type","Default":null}],"Name":"GetUserCFrame","tags":[],"Class":"UserInputService","type":"Function"},{"ReturnType":"bool","Arguments":[{"Type":"KeyCode","Name":"keyCode","Default":null}],"Name":"IsKeyDown","tags":[],"Class":"UserInputService","type":"Function"},{"ReturnType":"bool","Arguments":[{"Type":"UserInputType","Name":"gamepadEnum","Default":null}],"Name":"IsNavigationGamepad","tags":[],"Class":"UserInputService","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"RecenterUserHeadCFrame","tags":[],"Class":"UserInputService","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"UserInputType","Name":"gamepadEnum","Default":null},{"Type":"bool","Name":"enabled","Default":null}],"Name":"SetNavigationGamepad","tags":[],"Class":"UserInputService","type":"Function"},{"Arguments":[{"Name":"acceleration","Type":"Instance"}],"Name":"DeviceAccelerationChanged","tags":[],"Class":"UserInputService","type":"Event"},{"Arguments":[{"Name":"gravity","Type":"Instance"}],"Name":"DeviceGravityChanged","tags":[],"Class":"UserInputService","type":"Event"},{"Arguments":[{"Name":"rotation","Type":"Instance"},{"Name":"cframe","Type":"CoordinateFrame"}],"Name":"DeviceRotationChanged","tags":[],"Class":"UserInputService","type":"Event"},{"Arguments":[{"Name":"gamepadNum","Type":"UserInputType"}],"Name":"GamepadConnected","tags":[],"Class":"UserInputService","type":"Event"},{"Arguments":[{"Name":"gamepadNum","Type":"UserInputType"}],"Name":"GamepadDisconnected","tags":[],"Class":"UserInputService","type":"Event"},{"Arguments":[{"Name":"input","Type":"Instance"},{"Name":"gameProcessedEvent","Type":"bool"}],"Name":"InputBegan","tags":[],"Class":"UserInputService","type":"Event"},{"Arguments":[{"Name":"input","Type":"Instance"},{"Name":"gameProcessedEvent","Type":"bool"}],"Name":"InputChanged","tags":[],"Class":"UserInputService","type":"Event"},{"Arguments":[{"Name":"input","Type":"Instance"},{"Name":"gameProcessedEvent","Type":"bool"}],"Name":"InputEnded","tags":[],"Class":"UserInputService","type":"Event"},{"Arguments":[],"Name":"JumpRequest","tags":[],"Class":"UserInputService","type":"Event"},{"Arguments":[{"Name":"lastInputType","Type":"UserInputType"}],"Name":"LastInputTypeChanged","tags":[],"Class":"UserInputService","type":"Event"},{"Arguments":[{"Name":"textboxReleased","Type":"Instance"}],"Name":"TextBoxFocusReleased","tags":[],"Class":"UserInputService","type":"Event"},{"Arguments":[{"Name":"textboxFocused","Type":"Instance"}],"Name":"TextBoxFocused","tags":[],"Class":"UserInputService","type":"Event"},{"Arguments":[{"Name":"touch","Type":"Instance"},{"Name":"gameProcessedEvent","Type":"bool"}],"Name":"TouchEnded","tags":[],"Class":"UserInputService","type":"Event"},{"Arguments":[{"Name":"touchPositions","Type":"Array"},{"Name":"state","Type":"UserInputState"},{"Name":"gameProcessedEvent","Type":"bool"}],"Name":"TouchLongPress","tags":[],"Class":"UserInputService","type":"Event"},{"Arguments":[{"Name":"touch","Type":"Instance"},{"Name":"gameProcessedEvent","Type":"bool"}],"Name":"TouchMoved","tags":[],"Class":"UserInputService","type":"Event"},{"Arguments":[{"Name":"touchPositions","Type":"Array"},{"Name":"totalTranslation","Type":"Vector2"},{"Name":"velocity","Type":"Vector2"},{"Name":"state","Type":"UserInputState"},{"Name":"gameProcessedEvent","Type":"bool"}],"Name":"TouchPan","tags":[],"Class":"UserInputService","type":"Event"},{"Arguments":[{"Name":"touchPositions","Type":"Array"},{"Name":"scale","Type":"float"},{"Name":"velocity","Type":"float"},{"Name":"state","Type":"UserInputState"},{"Name":"gameProcessedEvent","Type":"bool"}],"Name":"TouchPinch","tags":[],"Class":"UserInputService","type":"Event"},{"Arguments":[{"Name":"touchPositions","Type":"Array"},{"Name":"rotation","Type":"float"},{"Name":"velocity","Type":"float"},{"Name":"state","Type":"UserInputState"},{"Name":"gameProcessedEvent","Type":"bool"}],"Name":"TouchRotate","tags":[],"Class":"UserInputService","type":"Event"},{"Arguments":[{"Name":"touch","Type":"Instance"},{"Name":"gameProcessedEvent","Type":"bool"}],"Name":"TouchStarted","tags":[],"Class":"UserInputService","type":"Event"},{"Arguments":[{"Name":"swipeDirection","Type":"SwipeDirection"},{"Name":"numberOfTouches","Type":"int"},{"Name":"gameProcessedEvent","Type":"bool"}],"Name":"TouchSwipe","tags":[],"Class":"UserInputService","type":"Event"},{"Arguments":[{"Name":"touchPositions","Type":"Array"},{"Name":"gameProcessedEvent","Type":"bool"}],"Name":"TouchTap","tags":[],"Class":"UserInputService","type":"Event"},{"Arguments":[{"Name":"type","Type":"UserCFrame"},{"Name":"value","Type":"CoordinateFrame"}],"Name":"UserCFrameChanged","tags":[],"Class":"UserInputService","type":"Event"},{"Arguments":[],"Name":"WindowFocusReleased","tags":[],"Class":"UserInputService","type":"Event"},{"Arguments":[],"Name":"WindowFocused","tags":[],"Class":"UserInputService","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"Vector3Value","tags":[]},{"ValueType":"Vector3","type":"Property","Name":"Value","tags":[],"Class":"Vector3Value"},{"Arguments":[{"Name":"value","Type":"Vector3"}],"Name":"Changed","tags":[],"Class":"Vector3Value","type":"Event"},{"Arguments":[{"Name":"value","Type":"Vector3"}],"Name":"changed","tags":["deprecated"],"Class":"Vector3Value","type":"Event"},{"Superclass":"Instance","type":"Class","Name":"VirtualUser","tags":["notCreatable"]},{"ReturnType":"void","Arguments":[{"Type":"Vector2","Name":"position","Default":null},{"Type":"CoordinateFrame","Name":"camera","Default":"Identity"}],"Name":"Button1Down","tags":["LocalUserSecurity"],"Class":"VirtualUser","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Vector2","Name":"position","Default":null},{"Type":"CoordinateFrame","Name":"camera","Default":"Identity"}],"Name":"Button1Up","tags":["LocalUserSecurity"],"Class":"VirtualUser","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Vector2","Name":"position","Default":null},{"Type":"CoordinateFrame","Name":"camera","Default":"Identity"}],"Name":"Button2Down","tags":["LocalUserSecurity"],"Class":"VirtualUser","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Vector2","Name":"position","Default":null},{"Type":"CoordinateFrame","Name":"camera","Default":"Identity"}],"Name":"Button2Up","tags":["LocalUserSecurity"],"Class":"VirtualUser","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"CaptureController","tags":["LocalUserSecurity"],"Class":"VirtualUser","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Vector2","Name":"position","Default":null},{"Type":"CoordinateFrame","Name":"camera","Default":"Identity"}],"Name":"ClickButton1","tags":["LocalUserSecurity"],"Class":"VirtualUser","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Vector2","Name":"position","Default":null},{"Type":"CoordinateFrame","Name":"camera","Default":"Identity"}],"Name":"ClickButton2","tags":["LocalUserSecurity"],"Class":"VirtualUser","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"Vector2","Name":"position","Default":null},{"Type":"CoordinateFrame","Name":"camera","Default":"Identity"}],"Name":"MoveMouse","tags":["LocalUserSecurity"],"Class":"VirtualUser","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"key","Default":null}],"Name":"SetKeyDown","tags":["LocalUserSecurity"],"Class":"VirtualUser","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"key","Default":null}],"Name":"SetKeyUp","tags":["LocalUserSecurity"],"Class":"VirtualUser","type":"Function"},{"ReturnType":"void","Arguments":[],"Name":"StartRecording","tags":["LocalUserSecurity"],"Class":"VirtualUser","type":"Function"},{"ReturnType":"string","Arguments":[],"Name":"StopRecording","tags":["LocalUserSecurity"],"Class":"VirtualUser","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"key","Default":null}],"Name":"TypeKey","tags":["LocalUserSecurity"],"Class":"VirtualUser","type":"Function"},{"Superclass":"Instance","type":"Class","Name":"Visit","tags":["notCreatable"]},{"ReturnType":"string","Arguments":[],"Name":"GetUploadUrl","tags":["RobloxSecurity"],"Class":"Visit","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"pingUrl","Default":null},{"Type":"int","Name":"interval","Default":null}],"Name":"SetPing","tags":["RobloxSecurity"],"Class":"Visit","type":"Function"},{"ReturnType":"void","Arguments":[{"Type":"string","Name":"url","Default":null}],"Name":"SetUploadUrl","tags":["RobloxSecurity"],"Class":"Visit","type":"Function"},{"type":"Enum","Name":"AASamples","tags":[]},{"type":"EnumItem","Name":"None","tags":[],"Value":1,"Enum":"AASamples"},{"type":"EnumItem","Name":"4","tags":[],"Value":4,"Enum":"AASamples"},{"type":"EnumItem","Name":"8","tags":[],"Value":8,"Enum":"AASamples"},{"type":"Enum","Name":"AccessType","tags":[]},{"type":"EnumItem","Name":"Me","tags":[],"Value":0,"Enum":"AccessType"},{"type":"EnumItem","Name":"Friends","tags":[],"Value":1,"Enum":"AccessType"},{"type":"EnumItem","Name":"Everyone","tags":[],"Value":2,"Enum":"AccessType"},{"type":"EnumItem","Name":"InviteOnly","tags":[],"Value":3,"Enum":"AccessType"},{"type":"Enum","Name":"ActionType","tags":[]},{"type":"EnumItem","Name":"Nothing","tags":[],"Value":0,"Enum":"ActionType"},{"type":"EnumItem","Name":"Pause","tags":[],"Value":1,"Enum":"ActionType"},{"type":"EnumItem","Name":"Lose","tags":[],"Value":2,"Enum":"ActionType"},{"type":"EnumItem","Name":"Draw","tags":[],"Value":3,"Enum":"ActionType"},{"type":"EnumItem","Name":"Win","tags":[],"Value":4,"Enum":"ActionType"},{"type":"Enum","Name":"ActuatorType","tags":[]},{"type":"EnumItem","Name":"None","tags":[],"Value":0,"Enum":"ActuatorType"},{"type":"EnumItem","Name":"Motor","tags":[],"Value":1,"Enum":"ActuatorType"},{"type":"EnumItem","Name":"Servo","tags":[],"Value":2,"Enum":"ActuatorType"},{"type":"Enum","Name":"AnimationPriority","tags":[]},{"type":"EnumItem","Name":"Idle","tags":[],"Value":0,"Enum":"AnimationPriority"},{"type":"EnumItem","Name":"Movement","tags":[],"Value":1,"Enum":"AnimationPriority"},{"type":"EnumItem","Name":"Action","tags":[],"Value":2,"Enum":"AnimationPriority"},{"type":"EnumItem","Name":"Core","tags":[],"Value":1000,"Enum":"AnimationPriority"},{"type":"Enum","Name":"Antialiasing","tags":[]},{"type":"EnumItem","Name":"Automatic","tags":[],"Value":0,"Enum":"Antialiasing"},{"type":"EnumItem","Name":"Off","tags":[],"Value":2,"Enum":"Antialiasing"},{"type":"EnumItem","Name":"On","tags":[],"Value":1,"Enum":"Antialiasing"},{"type":"Enum","Name":"Axis","tags":[]},{"type":"EnumItem","Name":"X","tags":[],"Value":0,"Enum":"Axis"},{"type":"EnumItem","Name":"Y","tags":[],"Value":1,"Enum":"Axis"},{"type":"EnumItem","Name":"Z","tags":[],"Value":2,"Enum":"Axis"},{"type":"Enum","Name":"BinType","tags":[]},{"type":"EnumItem","Name":"Script","tags":[],"Value":0,"Enum":"BinType"},{"type":"EnumItem","Name":"GameTool","tags":[],"Value":1,"Enum":"BinType"},{"type":"EnumItem","Name":"Grab","tags":[],"Value":2,"Enum":"BinType"},{"type":"EnumItem","Name":"Clone","tags":[],"Value":3,"Enum":"BinType"},{"type":"EnumItem","Name":"Hammer","tags":[],"Value":4,"Enum":"BinType"},{"type":"Enum","Name":"BodyPart","tags":[]},{"type":"EnumItem","Name":"Head","tags":[],"Value":0,"Enum":"BodyPart"},{"type":"EnumItem","Name":"Torso","tags":[],"Value":1,"Enum":"BodyPart"},{"type":"EnumItem","Name":"LeftArm","tags":[],"Value":2,"Enum":"BodyPart"},{"type":"EnumItem","Name":"RightArm","tags":[],"Value":3,"Enum":"BodyPart"},{"type":"EnumItem","Name":"LeftLeg","tags":[],"Value":4,"Enum":"BodyPart"},{"type":"EnumItem","Name":"RightLeg","tags":[],"Value":5,"Enum":"BodyPart"},{"type":"Enum","Name":"Button","tags":[]},{"type":"EnumItem","Name":"Jump","tags":[],"Value":32,"Enum":"Button"},{"type":"EnumItem","Name":"Dismount","tags":[],"Value":8,"Enum":"Button"},{"type":"Enum","Name":"ButtonStyle","tags":[]},{"type":"EnumItem","Name":"Custom","tags":[],"Value":0,"Enum":"ButtonStyle"},{"type":"EnumItem","Name":"RobloxButtonDefault","tags":[],"Value":1,"Enum":"ButtonStyle"},{"type":"EnumItem","Name":"RobloxButton","tags":[],"Value":2,"Enum":"ButtonStyle"},{"type":"EnumItem","Name":"RobloxRoundButton","tags":[],"Value":3,"Enum":"ButtonStyle"},{"type":"EnumItem","Name":"RobloxRoundDefaultButton","tags":[],"Value":4,"Enum":"ButtonStyle"},{"type":"EnumItem","Name":"RobloxRoundDropdownButton","tags":[],"Value":5,"Enum":"ButtonStyle"},{"type":"Enum","Name":"CameraMode","tags":[]},{"type":"EnumItem","Name":"Classic","tags":[],"Value":0,"Enum":"CameraMode"},{"type":"EnumItem","Name":"LockFirstPerson","tags":[],"Value":1,"Enum":"CameraMode"},{"type":"Enum","Name":"CameraPanMode","tags":[]},{"type":"EnumItem","Name":"Classic","tags":[],"Value":0,"Enum":"CameraPanMode"},{"type":"EnumItem","Name":"EdgeBump","tags":[],"Value":1,"Enum":"CameraPanMode"},{"type":"Enum","Name":"CameraType","tags":[]},{"type":"EnumItem","Name":"Fixed","tags":[],"Value":0,"Enum":"CameraType"},{"type":"EnumItem","Name":"Watch","tags":[],"Value":2,"Enum":"CameraType"},{"type":"EnumItem","Name":"Attach","tags":[],"Value":1,"Enum":"CameraType"},{"type":"EnumItem","Name":"Track","tags":[],"Value":3,"Enum":"CameraType"},{"type":"EnumItem","Name":"Follow","tags":[],"Value":4,"Enum":"CameraType"},{"type":"EnumItem","Name":"Custom","tags":[],"Value":5,"Enum":"CameraType"},{"type":"EnumItem","Name":"Scriptable","tags":[],"Value":6,"Enum":"CameraType"},{"type":"Enum","Name":"CellBlock","tags":[]},{"type":"EnumItem","Name":"Solid","tags":[],"Value":0,"Enum":"CellBlock"},{"type":"EnumItem","Name":"VerticalWedge","tags":[],"Value":1,"Enum":"CellBlock"},{"type":"EnumItem","Name":"CornerWedge","tags":[],"Value":2,"Enum":"CellBlock"},{"type":"EnumItem","Name":"InverseCornerWedge","tags":[],"Value":3,"Enum":"CellBlock"},{"type":"EnumItem","Name":"HorizontalWedge","tags":[],"Value":4,"Enum":"CellBlock"},{"type":"Enum","Name":"CellMaterial","tags":[]},{"type":"EnumItem","Name":"Empty","tags":[],"Value":0,"Enum":"CellMaterial"},{"type":"EnumItem","Name":"Grass","tags":[],"Value":1,"Enum":"CellMaterial"},{"type":"EnumItem","Name":"Sand","tags":[],"Value":2,"Enum":"CellMaterial"},{"type":"EnumItem","Name":"Brick","tags":[],"Value":3,"Enum":"CellMaterial"},{"type":"EnumItem","Name":"Granite","tags":[],"Value":4,"Enum":"CellMaterial"},{"type":"EnumItem","Name":"Asphalt","tags":[],"Value":5,"Enum":"CellMaterial"},{"type":"EnumItem","Name":"Iron","tags":[],"Value":6,"Enum":"CellMaterial"},{"type":"EnumItem","Name":"Aluminum","tags":[],"Value":7,"Enum":"CellMaterial"},{"type":"EnumItem","Name":"Gold","tags":[],"Value":8,"Enum":"CellMaterial"},{"type":"EnumItem","Name":"WoodPlank","tags":[],"Value":9,"Enum":"CellMaterial"},{"type":"EnumItem","Name":"WoodLog","tags":[],"Value":10,"Enum":"CellMaterial"},{"type":"EnumItem","Name":"Gravel","tags":[],"Value":11,"Enum":"CellMaterial"},{"type":"EnumItem","Name":"CinderBlock","tags":[],"Value":12,"Enum":"CellMaterial"},{"type":"EnumItem","Name":"MossyStone","tags":[],"Value":13,"Enum":"CellMaterial"},{"type":"EnumItem","Name":"Cement","tags":[],"Value":14,"Enum":"CellMaterial"},{"type":"EnumItem","Name":"RedPlastic","tags":[],"Value":15,"Enum":"CellMaterial"},{"type":"EnumItem","Name":"BluePlastic","tags":[],"Value":16,"Enum":"CellMaterial"},{"type":"EnumItem","Name":"Water","tags":[],"Value":17,"Enum":"CellMaterial"},{"type":"Enum","Name":"CellOrientation","tags":[]},{"type":"EnumItem","Name":"NegZ","tags":[],"Value":0,"Enum":"CellOrientation"},{"type":"EnumItem","Name":"X","tags":[],"Value":1,"Enum":"CellOrientation"},{"type":"EnumItem","Name":"Z","tags":[],"Value":2,"Enum":"CellOrientation"},{"type":"EnumItem","Name":"NegX","tags":[],"Value":3,"Enum":"CellOrientation"},{"type":"Enum","Name":"CenterDialogType","tags":[]},{"type":"EnumItem","Name":"UnsolicitedDialog","tags":[],"Value":1,"Enum":"CenterDialogType"},{"type":"EnumItem","Name":"PlayerInitiatedDialog","tags":[],"Value":2,"Enum":"CenterDialogType"},{"type":"EnumItem","Name":"ModalDialog","tags":[],"Value":3,"Enum":"CenterDialogType"},{"type":"EnumItem","Name":"QuitDialog","tags":[],"Value":4,"Enum":"CenterDialogType"},{"type":"Enum","Name":"ChatColor","tags":[]},{"type":"EnumItem","Name":"Blue","tags":[],"Value":0,"Enum":"ChatColor"},{"type":"EnumItem","Name":"Green","tags":[],"Value":1,"Enum":"ChatColor"},{"type":"EnumItem","Name":"Red","tags":[],"Value":2,"Enum":"ChatColor"},{"type":"Enum","Name":"ChatMode","tags":[]},{"type":"EnumItem","Name":"Menu","tags":[],"Value":0,"Enum":"ChatMode"},{"type":"EnumItem","Name":"TextAndMenu","tags":[],"Value":1,"Enum":"ChatMode"},{"type":"Enum","Name":"ChatStyle","tags":[]},{"type":"EnumItem","Name":"Classic","tags":[],"Value":0,"Enum":"ChatStyle"},{"type":"EnumItem","Name":"Bubble","tags":[],"Value":1,"Enum":"ChatStyle"},{"type":"EnumItem","Name":"ClassicAndBubble","tags":[],"Value":2,"Enum":"ChatStyle"},{"type":"Enum","Name":"CollisionFidelity","tags":[]},{"type":"EnumItem","Name":"Default","tags":[],"Value":0,"Enum":"CollisionFidelity"},{"type":"EnumItem","Name":"Hull","tags":[],"Value":1,"Enum":"CollisionFidelity"},{"type":"EnumItem","Name":"Box","tags":[],"Value":2,"Enum":"CollisionFidelity"},{"type":"Enum","Name":"ComputerCameraMovementMode","tags":[]},{"type":"EnumItem","Name":"Default","tags":[],"Value":0,"Enum":"ComputerCameraMovementMode"},{"type":"EnumItem","Name":"Follow","tags":[],"Value":2,"Enum":"ComputerCameraMovementMode"},{"type":"EnumItem","Name":"Classic","tags":[],"Value":1,"Enum":"ComputerCameraMovementMode"},{"type":"Enum","Name":"ComputerMovementMode","tags":[]},{"type":"EnumItem","Name":"Default","tags":[],"Value":0,"Enum":"ComputerMovementMode"},{"type":"EnumItem","Name":"KeyboardMouse","tags":[],"Value":1,"Enum":"ComputerMovementMode"},{"type":"EnumItem","Name":"ClickToMove","tags":[],"Value":2,"Enum":"ComputerMovementMode"},{"type":"Enum","Name":"ConcurrencyModel","tags":[]},{"type":"EnumItem","Name":"Serial","tags":[],"Value":0,"Enum":"ConcurrencyModel"},{"type":"EnumItem","Name":"Safe","tags":[],"Value":1,"Enum":"ConcurrencyModel"},{"type":"EnumItem","Name":"Logical","tags":[],"Value":2,"Enum":"ConcurrencyModel"},{"type":"EnumItem","Name":"Empirical","tags":[],"Value":3,"Enum":"ConcurrencyModel"},{"type":"Enum","Name":"ControlMode","tags":[]},{"type":"EnumItem","Name":"MouseLockSwitch","tags":[],"Value":1,"Enum":"ControlMode"},{"type":"EnumItem","Name":"Classic","tags":[],"Value":0,"Enum":"ControlMode"},{"type":"Enum","Name":"CoreGuiType","tags":[]},{"type":"EnumItem","Name":"PlayerList","tags":[],"Value":0,"Enum":"CoreGuiType"},{"type":"EnumItem","Name":"Health","tags":[],"Value":1,"Enum":"CoreGuiType"},{"type":"EnumItem","Name":"Backpack","tags":[],"Value":2,"Enum":"CoreGuiType"},{"type":"EnumItem","Name":"Chat","tags":[],"Value":3,"Enum":"CoreGuiType"},{"type":"EnumItem","Name":"All","tags":[],"Value":4,"Enum":"CoreGuiType"},{"type":"Enum","Name":"CreatorType","tags":[]},{"type":"EnumItem","Name":"User","tags":[],"Value":0,"Enum":"CreatorType"},{"type":"EnumItem","Name":"Group","tags":[],"Value":1,"Enum":"CreatorType"},{"type":"Enum","Name":"CurrencyType","tags":[]},{"type":"EnumItem","Name":"Default","tags":[],"Value":0,"Enum":"CurrencyType"},{"type":"EnumItem","Name":"Robux","tags":[],"Value":1,"Enum":"CurrencyType"},{"type":"EnumItem","Name":"Tix","tags":[],"Value":2,"Enum":"CurrencyType"},{"type":"Enum","Name":"CustomCameraMode","tags":[]},{"type":"EnumItem","Name":"Default","tags":[],"Value":0,"Enum":"CustomCameraMode"},{"type":"EnumItem","Name":"Follow","tags":[],"Value":2,"Enum":"CustomCameraMode"},{"type":"EnumItem","Name":"Classic","tags":[],"Value":1,"Enum":"CustomCameraMode"},{"type":"Enum","Name":"DevCameraOcclusionMode","tags":[]},{"type":"EnumItem","Name":"Zoom","tags":[],"Value":0,"Enum":"DevCameraOcclusionMode"},{"type":"EnumItem","Name":"Invisicam","tags":[],"Value":1,"Enum":"DevCameraOcclusionMode"},{"type":"Enum","Name":"DevComputerCameraMovementMode","tags":[]},{"type":"EnumItem","Name":"UserChoice","tags":[],"Value":0,"Enum":"DevComputerCameraMovementMode"},{"type":"EnumItem","Name":"Classic","tags":[],"Value":1,"Enum":"DevComputerCameraMovementMode"},{"type":"EnumItem","Name":"Follow","tags":[],"Value":2,"Enum":"DevComputerCameraMovementMode"},{"type":"Enum","Name":"DevComputerMovementMode","tags":[]},{"type":"EnumItem","Name":"UserChoice","tags":[],"Value":0,"Enum":"DevComputerMovementMode"},{"type":"EnumItem","Name":"KeyboardMouse","tags":[],"Value":1,"Enum":"DevComputerMovementMode"},{"type":"EnumItem","Name":"ClickToMove","tags":[],"Value":2,"Enum":"DevComputerMovementMode"},{"type":"EnumItem","Name":"Scriptable","tags":[],"Value":3,"Enum":"DevComputerMovementMode"},{"type":"Enum","Name":"DevTouchCameraMovementMode","tags":[]},{"type":"EnumItem","Name":"UserChoice","tags":[],"Value":0,"Enum":"DevTouchCameraMovementMode"},{"type":"EnumItem","Name":"Classic","tags":[],"Value":1,"Enum":"DevTouchCameraMovementMode"},{"type":"EnumItem","Name":"Follow","tags":[],"Value":2,"Enum":"DevTouchCameraMovementMode"},{"type":"Enum","Name":"DevTouchMovementMode","tags":[]},{"type":"EnumItem","Name":"UserChoice","tags":[],"Value":0,"Enum":"DevTouchMovementMode"},{"type":"EnumItem","Name":"Thumbstick","tags":[],"Value":1,"Enum":"DevTouchMovementMode"},{"type":"EnumItem","Name":"DPad","tags":[],"Value":2,"Enum":"DevTouchMovementMode"},{"type":"EnumItem","Name":"Thumbpad","tags":[],"Value":3,"Enum":"DevTouchMovementMode"},{"type":"EnumItem","Name":"ClickToMove","tags":[],"Value":4,"Enum":"DevTouchMovementMode"},{"type":"EnumItem","Name":"Scriptable","tags":[],"Value":5,"Enum":"DevTouchMovementMode"},{"type":"Enum","Name":"DialogPurpose","tags":[]},{"type":"EnumItem","Name":"Quest","tags":[],"Value":0,"Enum":"DialogPurpose"},{"type":"EnumItem","Name":"Help","tags":[],"Value":1,"Enum":"DialogPurpose"},{"type":"EnumItem","Name":"Shop","tags":[],"Value":2,"Enum":"DialogPurpose"},{"type":"Enum","Name":"DialogTone","tags":[]},{"type":"EnumItem","Name":"Neutral","tags":[],"Value":0,"Enum":"DialogTone"},{"type":"EnumItem","Name":"Friendly","tags":[],"Value":1,"Enum":"DialogTone"},{"type":"EnumItem","Name":"Enemy","tags":[],"Value":2,"Enum":"DialogTone"},{"type":"Enum","Name":"EasingDirection","tags":[]},{"type":"EnumItem","Name":"In","tags":[],"Value":0,"Enum":"EasingDirection"},{"type":"EnumItem","Name":"Out","tags":[],"Value":1,"Enum":"EasingDirection"},{"type":"EnumItem","Name":"InOut","tags":[],"Value":2,"Enum":"EasingDirection"},{"type":"Enum","Name":"EasingStyle","tags":[]},{"type":"EnumItem","Name":"Linear","tags":[],"Value":0,"Enum":"EasingStyle"},{"type":"EnumItem","Name":"Sine","tags":[],"Value":1,"Enum":"EasingStyle"},{"type":"EnumItem","Name":"Back","tags":[],"Value":2,"Enum":"EasingStyle"},{"type":"EnumItem","Name":"Quad","tags":[],"Value":3,"Enum":"EasingStyle"},{"type":"EnumItem","Name":"Quart","tags":[],"Value":4,"Enum":"EasingStyle"},{"type":"EnumItem","Name":"Quint","tags":[],"Value":5,"Enum":"EasingStyle"},{"type":"EnumItem","Name":"Bounce","tags":[],"Value":6,"Enum":"EasingStyle"},{"type":"EnumItem","Name":"Elastic","tags":[],"Value":7,"Enum":"EasingStyle"},{"type":"Enum","Name":"EnviromentalPhysicsThrottle","tags":[]},{"type":"EnumItem","Name":"DefaultAuto","tags":[],"Value":0,"Enum":"EnviromentalPhysicsThrottle"},{"type":"EnumItem","Name":"Disabled","tags":[],"Value":1,"Enum":"EnviromentalPhysicsThrottle"},{"type":"EnumItem","Name":"Always","tags":[],"Value":2,"Enum":"EnviromentalPhysicsThrottle"},{"type":"EnumItem","Name":"Skip2","tags":[],"Value":3,"Enum":"EnviromentalPhysicsThrottle"},{"type":"EnumItem","Name":"Skip4","tags":[],"Value":4,"Enum":"EnviromentalPhysicsThrottle"},{"type":"EnumItem","Name":"Skip8","tags":[],"Value":5,"Enum":"EnviromentalPhysicsThrottle"},{"type":"EnumItem","Name":"Skip16","tags":[],"Value":6,"Enum":"EnviromentalPhysicsThrottle"},{"type":"Enum","Name":"ErrorReporting","tags":[]},{"type":"EnumItem","Name":"DontReport","tags":[],"Value":0,"Enum":"ErrorReporting"},{"type":"EnumItem","Name":"Prompt","tags":[],"Value":1,"Enum":"ErrorReporting"},{"type":"EnumItem","Name":"Report","tags":[],"Value":2,"Enum":"ErrorReporting"},{"type":"Enum","Name":"ExplosionType","tags":[]},{"type":"EnumItem","Name":"NoCraters","tags":[],"Value":0,"Enum":"ExplosionType"},{"type":"EnumItem","Name":"Craters","tags":[],"Value":1,"Enum":"ExplosionType"},{"type":"EnumItem","Name":"CratersAndDebris","tags":[],"Value":2,"Enum":"ExplosionType"},{"type":"Enum","Name":"FilterResult","tags":[]},{"type":"EnumItem","Name":"Rejected","tags":[],"Value":1,"Enum":"FilterResult"},{"type":"EnumItem","Name":"Accepted","tags":[],"Value":0,"Enum":"FilterResult"},{"type":"Enum","Name":"Font","tags":[]},{"type":"EnumItem","Name":"Legacy","tags":[],"Value":0,"Enum":"Font"},{"type":"EnumItem","Name":"Arial","tags":[],"Value":1,"Enum":"Font"},{"type":"EnumItem","Name":"ArialBold","tags":[],"Value":2,"Enum":"Font"},{"type":"EnumItem","Name":"SourceSans","tags":[],"Value":3,"Enum":"Font"},{"type":"EnumItem","Name":"SourceSansBold","tags":[],"Value":4,"Enum":"Font"},{"type":"EnumItem","Name":"SourceSansLight","tags":[],"Value":5,"Enum":"Font"},{"type":"EnumItem","Name":"SourceSansItalic","tags":[],"Value":6,"Enum":"Font"},{"type":"Enum","Name":"FontSize","tags":[]},{"type":"EnumItem","Name":"Size8","tags":[],"Value":0,"Enum":"FontSize"},{"type":"EnumItem","Name":"Size9","tags":[],"Value":1,"Enum":"FontSize"},{"type":"EnumItem","Name":"Size10","tags":[],"Value":2,"Enum":"FontSize"},{"type":"EnumItem","Name":"Size11","tags":[],"Value":3,"Enum":"FontSize"},{"type":"EnumItem","Name":"Size12","tags":[],"Value":4,"Enum":"FontSize"},{"type":"EnumItem","Name":"Size14","tags":[],"Value":5,"Enum":"FontSize"},{"type":"EnumItem","Name":"Size18","tags":[],"Value":6,"Enum":"FontSize"},{"type":"EnumItem","Name":"Size24","tags":[],"Value":7,"Enum":"FontSize"},{"type":"EnumItem","Name":"Size36","tags":[],"Value":8,"Enum":"FontSize"},{"type":"EnumItem","Name":"Size48","tags":[],"Value":9,"Enum":"FontSize"},{"type":"EnumItem","Name":"Size28","tags":[],"Value":10,"Enum":"FontSize"},{"type":"EnumItem","Name":"Size32","tags":[],"Value":11,"Enum":"FontSize"},{"type":"EnumItem","Name":"Size42","tags":[],"Value":12,"Enum":"FontSize"},{"type":"EnumItem","Name":"Size60","tags":[],"Value":13,"Enum":"FontSize"},{"type":"EnumItem","Name":"Size96","tags":[],"Value":14,"Enum":"FontSize"},{"type":"Enum","Name":"FormFactor","tags":[]},{"type":"EnumItem","Name":"Symmetric","tags":[],"Value":0,"Enum":"FormFactor"},{"type":"EnumItem","Name":"Brick","tags":[],"Value":1,"Enum":"FormFactor"},{"type":"EnumItem","Name":"Plate","tags":[],"Value":2,"Enum":"FormFactor"},{"type":"EnumItem","Name":"Custom","tags":[],"Value":3,"Enum":"FormFactor"},{"type":"Enum","Name":"FrameStyle","tags":[]},{"type":"EnumItem","Name":"Custom","tags":[],"Value":0,"Enum":"FrameStyle"},{"type":"EnumItem","Name":"ChatBlue","tags":[],"Value":1,"Enum":"FrameStyle"},{"type":"EnumItem","Name":"RobloxSquare","tags":[],"Value":2,"Enum":"FrameStyle"},{"type":"EnumItem","Name":"RobloxRound","tags":[],"Value":3,"Enum":"FrameStyle"},{"type":"EnumItem","Name":"ChatGreen","tags":[],"Value":4,"Enum":"FrameStyle"},{"type":"EnumItem","Name":"ChatRed","tags":[],"Value":5,"Enum":"FrameStyle"},{"type":"EnumItem","Name":"DropShadow","tags":[],"Value":6,"Enum":"FrameStyle"},{"type":"Enum","Name":"FramerateManagerMode","tags":[]},{"type":"EnumItem","Name":"Automatic","tags":[],"Value":0,"Enum":"FramerateManagerMode"},{"type":"EnumItem","Name":"On","tags":[],"Value":1,"Enum":"FramerateManagerMode"},{"type":"EnumItem","Name":"Off","tags":[],"Value":2,"Enum":"FramerateManagerMode"},{"type":"Enum","Name":"FriendRequestEvent","tags":[]},{"type":"EnumItem","Name":"Issue","tags":[],"Value":0,"Enum":"FriendRequestEvent"},{"type":"EnumItem","Name":"Revoke","tags":[],"Value":1,"Enum":"FriendRequestEvent"},{"type":"EnumItem","Name":"Accept","tags":[],"Value":2,"Enum":"FriendRequestEvent"},{"type":"EnumItem","Name":"Deny","tags":[],"Value":3,"Enum":"FriendRequestEvent"},{"type":"Enum","Name":"FriendStatus","tags":[]},{"type":"EnumItem","Name":"Unknown","tags":[],"Value":0,"Enum":"FriendStatus"},{"type":"EnumItem","Name":"NotFriend","tags":[],"Value":1,"Enum":"FriendStatus"},{"type":"EnumItem","Name":"Friend","tags":[],"Value":2,"Enum":"FriendStatus"},{"type":"EnumItem","Name":"FriendRequestSent","tags":[],"Value":3,"Enum":"FriendStatus"},{"type":"EnumItem","Name":"FriendRequestReceived","tags":[],"Value":4,"Enum":"FriendStatus"},{"type":"Enum","Name":"FunctionalTestResult","tags":[]},{"type":"EnumItem","Name":"Passed","tags":[],"Value":0,"Enum":"FunctionalTestResult"},{"type":"EnumItem","Name":"Warning","tags":[],"Value":1,"Enum":"FunctionalTestResult"},{"type":"EnumItem","Name":"Error","tags":[],"Value":2,"Enum":"FunctionalTestResult"},{"type":"Enum","Name":"GearGenreSetting","tags":[]},{"type":"EnumItem","Name":"AllGenres","tags":[],"Value":0,"Enum":"GearGenreSetting"},{"type":"EnumItem","Name":"MatchingGenreOnly","tags":[],"Value":1,"Enum":"GearGenreSetting"},{"type":"Enum","Name":"GearType","tags":[]},{"type":"EnumItem","Name":"MeleeWeapons","tags":[],"Value":0,"Enum":"GearType"},{"type":"EnumItem","Name":"RangedWeapons","tags":[],"Value":1,"Enum":"GearType"},{"type":"EnumItem","Name":"Explosives","tags":[],"Value":2,"Enum":"GearType"},{"type":"EnumItem","Name":"PowerUps","tags":[],"Value":3,"Enum":"GearType"},{"type":"EnumItem","Name":"NavigationEnhancers","tags":[],"Value":4,"Enum":"GearType"},{"type":"EnumItem","Name":"MusicalInstruments","tags":[],"Value":5,"Enum":"GearType"},{"type":"EnumItem","Name":"SocialItems","tags":[],"Value":6,"Enum":"GearType"},{"type":"EnumItem","Name":"BuildingTools","tags":[],"Value":7,"Enum":"GearType"},{"type":"EnumItem","Name":"Transport","tags":[],"Value":8,"Enum":"GearType"},{"type":"Enum","Name":"Genre","tags":[]},{"type":"EnumItem","Name":"All","tags":[],"Value":0,"Enum":"Genre"},{"type":"EnumItem","Name":"TownAndCity","tags":[],"Value":1,"Enum":"Genre"},{"type":"EnumItem","Name":"Fantasy","tags":[],"Value":2,"Enum":"Genre"},{"type":"EnumItem","Name":"SciFi","tags":[],"Value":3,"Enum":"Genre"},{"type":"EnumItem","Name":"Ninja","tags":[],"Value":4,"Enum":"Genre"},{"type":"EnumItem","Name":"Scary","tags":[],"Value":5,"Enum":"Genre"},{"type":"EnumItem","Name":"Pirate","tags":[],"Value":6,"Enum":"Genre"},{"type":"EnumItem","Name":"Adventure","tags":[],"Value":7,"Enum":"Genre"},{"type":"EnumItem","Name":"Sports","tags":[],"Value":8,"Enum":"Genre"},{"type":"EnumItem","Name":"Funny","tags":[],"Value":9,"Enum":"Genre"},{"type":"EnumItem","Name":"WildWest","tags":[],"Value":10,"Enum":"Genre"},{"type":"EnumItem","Name":"War","tags":[],"Value":11,"Enum":"Genre"},{"type":"EnumItem","Name":"SkatePark","tags":[],"Value":12,"Enum":"Genre"},{"type":"EnumItem","Name":"Tutorial","tags":[],"Value":13,"Enum":"Genre"},{"type":"Enum","Name":"GraphicsMode","tags":[]},{"type":"EnumItem","Name":"Automatic","tags":[],"Value":1,"Enum":"GraphicsMode"},{"type":"EnumItem","Name":"Direct3D9","tags":[],"Value":3,"Enum":"GraphicsMode"},{"type":"EnumItem","Name":"Direct3D11","tags":[],"Value":2,"Enum":"GraphicsMode"},{"type":"EnumItem","Name":"OpenGL","tags":[],"Value":4,"Enum":"GraphicsMode"},{"type":"EnumItem","Name":"NoGraphics","tags":[],"Value":5,"Enum":"GraphicsMode"},{"type":"Enum","Name":"HandlesStyle","tags":[]},{"type":"EnumItem","Name":"Resize","tags":[],"Value":0,"Enum":"HandlesStyle"},{"type":"EnumItem","Name":"Movement","tags":[],"Value":1,"Enum":"HandlesStyle"},{"type":"Enum","Name":"HttpContentType","tags":[]},{"type":"EnumItem","Name":"ApplicationJson","tags":[],"Value":0,"Enum":"HttpContentType"},{"type":"EnumItem","Name":"ApplicationXml","tags":[],"Value":1,"Enum":"HttpContentType"},{"type":"EnumItem","Name":"ApplicationUrlEncoded","tags":[],"Value":2,"Enum":"HttpContentType"},{"type":"EnumItem","Name":"TextPlain","tags":[],"Value":3,"Enum":"HttpContentType"},{"type":"EnumItem","Name":"TextXml","tags":[],"Value":4,"Enum":"HttpContentType"},{"type":"Enum","Name":"HumanoidDisplayDistanceType","tags":[]},{"type":"EnumItem","Name":"Viewer","tags":[],"Value":0,"Enum":"HumanoidDisplayDistanceType"},{"type":"EnumItem","Name":"Subject","tags":[],"Value":1,"Enum":"HumanoidDisplayDistanceType"},{"type":"EnumItem","Name":"None","tags":[],"Value":2,"Enum":"HumanoidDisplayDistanceType"},{"type":"Enum","Name":"HumanoidRigType","tags":[]},{"type":"EnumItem","Name":"R6","tags":[],"Value":0,"Enum":"HumanoidRigType"},{"type":"EnumItem","Name":"R15","tags":[],"Value":1,"Enum":"HumanoidRigType"},{"type":"Enum","Name":"HumanoidStateType","tags":[]},{"type":"EnumItem","Name":"FallingDown","tags":[],"Value":0,"Enum":"HumanoidStateType"},{"type":"EnumItem","Name":"Running","tags":[],"Value":8,"Enum":"HumanoidStateType"},{"type":"EnumItem","Name":"RunningNoPhysics","tags":[],"Value":10,"Enum":"HumanoidStateType"},{"type":"EnumItem","Name":"Climbing","tags":[],"Value":12,"Enum":"HumanoidStateType"},{"type":"EnumItem","Name":"StrafingNoPhysics","tags":[],"Value":11,"Enum":"HumanoidStateType"},{"type":"EnumItem","Name":"Ragdoll","tags":[],"Value":1,"Enum":"HumanoidStateType"},{"type":"EnumItem","Name":"GettingUp","tags":[],"Value":2,"Enum":"HumanoidStateType"},{"type":"EnumItem","Name":"Jumping","tags":[],"Value":3,"Enum":"HumanoidStateType"},{"type":"EnumItem","Name":"Landed","tags":[],"Value":7,"Enum":"HumanoidStateType"},{"type":"EnumItem","Name":"Flying","tags":[],"Value":6,"Enum":"HumanoidStateType"},{"type":"EnumItem","Name":"Freefall","tags":[],"Value":5,"Enum":"HumanoidStateType"},{"type":"EnumItem","Name":"Seated","tags":[],"Value":13,"Enum":"HumanoidStateType"},{"type":"EnumItem","Name":"PlatformStanding","tags":[],"Value":14,"Enum":"HumanoidStateType"},{"type":"EnumItem","Name":"Dead","tags":[],"Value":15,"Enum":"HumanoidStateType"},{"type":"EnumItem","Name":"Swimming","tags":[],"Value":4,"Enum":"HumanoidStateType"},{"type":"EnumItem","Name":"Physics","tags":[],"Value":16,"Enum":"HumanoidStateType"},{"type":"EnumItem","Name":"None","tags":[],"Value":18,"Enum":"HumanoidStateType"},{"type":"Enum","Name":"InOut","tags":[]},{"type":"EnumItem","Name":"Edge","tags":[],"Value":0,"Enum":"InOut"},{"type":"EnumItem","Name":"Inset","tags":[],"Value":1,"Enum":"InOut"},{"type":"EnumItem","Name":"Center","tags":[],"Value":2,"Enum":"InOut"},{"type":"Enum","Name":"InfoType","tags":[]},{"type":"EnumItem","Name":"Asset","tags":[],"Value":0,"Enum":"InfoType"},{"type":"EnumItem","Name":"Product","tags":[],"Value":1,"Enum":"InfoType"},{"type":"Enum","Name":"InputType","tags":[]},{"type":"EnumItem","Name":"NoInput","tags":[],"Value":0,"Enum":"InputType"},{"type":"EnumItem","Name":"LeftTread","tags":[],"Value":1,"Enum":"InputType"},{"type":"EnumItem","Name":"RightTread","tags":[],"Value":2,"Enum":"InputType"},{"type":"EnumItem","Name":"Steer","tags":[],"Value":3,"Enum":"InputType"},{"type":"EnumItem","Name":"Throtle","tags":[],"Value":4,"Enum":"InputType"},{"type":"EnumItem","Name":"UpDown","tags":[],"Value":6,"Enum":"InputType"},{"type":"EnumItem","Name":"Action1","tags":[],"Value":7,"Enum":"InputType"},{"type":"EnumItem","Name":"Action2","tags":[],"Value":8,"Enum":"InputType"},{"type":"EnumItem","Name":"Action3","tags":[],"Value":9,"Enum":"InputType"},{"type":"EnumItem","Name":"Action4","tags":[],"Value":10,"Enum":"InputType"},{"type":"EnumItem","Name":"Action5","tags":[],"Value":11,"Enum":"InputType"},{"type":"EnumItem","Name":"Constant","tags":[],"Value":12,"Enum":"InputType"},{"type":"EnumItem","Name":"Sin","tags":[],"Value":13,"Enum":"InputType"},{"type":"Enum","Name":"JointCreationMode","tags":[]},{"type":"EnumItem","Name":"All","tags":[],"Value":0,"Enum":"JointCreationMode"},{"type":"EnumItem","Name":"Surface","tags":[],"Value":1,"Enum":"JointCreationMode"},{"type":"EnumItem","Name":"None","tags":[],"Value":2,"Enum":"JointCreationMode"},{"type":"Enum","Name":"JointType","tags":[]},{"type":"EnumItem","Name":"None","tags":[],"Value":22,"Enum":"JointType"},{"type":"EnumItem","Name":"Rotate","tags":[],"Value":6,"Enum":"JointType"},{"type":"EnumItem","Name":"RotateP","tags":[],"Value":7,"Enum":"JointType"},{"type":"EnumItem","Name":"RotateV","tags":[],"Value":8,"Enum":"JointType"},{"type":"EnumItem","Name":"Glue","tags":[],"Value":9,"Enum":"JointType"},{"type":"EnumItem","Name":"Weld","tags":[],"Value":1,"Enum":"JointType"},{"type":"EnumItem","Name":"Snap","tags":[],"Value":3,"Enum":"JointType"},{"type":"Enum","Name":"KeyCode","tags":[]},{"type":"EnumItem","Name":"Unknown","tags":[],"Value":0,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Backspace","tags":[],"Value":8,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Tab","tags":[],"Value":9,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Clear","tags":[],"Value":12,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Return","tags":[],"Value":13,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Pause","tags":[],"Value":19,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Escape","tags":[],"Value":27,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Space","tags":[],"Value":32,"Enum":"KeyCode"},{"type":"EnumItem","Name":"QuotedDouble","tags":[],"Value":34,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Hash","tags":[],"Value":35,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Dollar","tags":[],"Value":36,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Percent","tags":[],"Value":37,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Ampersand","tags":[],"Value":38,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Quote","tags":[],"Value":39,"Enum":"KeyCode"},{"type":"EnumItem","Name":"LeftParenthesis","tags":[],"Value":40,"Enum":"KeyCode"},{"type":"EnumItem","Name":"RightParenthesis","tags":[],"Value":41,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Asterisk","tags":[],"Value":42,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Plus","tags":[],"Value":43,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Comma","tags":[],"Value":44,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Minus","tags":[],"Value":45,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Period","tags":[],"Value":46,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Slash","tags":[],"Value":47,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Zero","tags":[],"Value":48,"Enum":"KeyCode"},{"type":"EnumItem","Name":"One","tags":[],"Value":49,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Two","tags":[],"Value":50,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Three","tags":[],"Value":51,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Four","tags":[],"Value":52,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Five","tags":[],"Value":53,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Six","tags":[],"Value":54,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Seven","tags":[],"Value":55,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Eight","tags":[],"Value":56,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Nine","tags":[],"Value":57,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Colon","tags":[],"Value":58,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Semicolon","tags":[],"Value":59,"Enum":"KeyCode"},{"type":"EnumItem","Name":"LessThan","tags":[],"Value":60,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Equals","tags":[],"Value":61,"Enum":"KeyCode"},{"type":"EnumItem","Name":"GreaterThan","tags":[],"Value":62,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Question","tags":[],"Value":63,"Enum":"KeyCode"},{"type":"EnumItem","Name":"At","tags":[],"Value":64,"Enum":"KeyCode"},{"type":"EnumItem","Name":"LeftBracket","tags":[],"Value":91,"Enum":"KeyCode"},{"type":"EnumItem","Name":"BackSlash","tags":[],"Value":92,"Enum":"KeyCode"},{"type":"EnumItem","Name":"RightBracket","tags":[],"Value":93,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Caret","tags":[],"Value":94,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Underscore","tags":[],"Value":95,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Backquote","tags":[],"Value":96,"Enum":"KeyCode"},{"type":"EnumItem","Name":"A","tags":[],"Value":97,"Enum":"KeyCode"},{"type":"EnumItem","Name":"B","tags":[],"Value":98,"Enum":"KeyCode"},{"type":"EnumItem","Name":"C","tags":[],"Value":99,"Enum":"KeyCode"},{"type":"EnumItem","Name":"D","tags":[],"Value":100,"Enum":"KeyCode"},{"type":"EnumItem","Name":"E","tags":[],"Value":101,"Enum":"KeyCode"},{"type":"EnumItem","Name":"F","tags":[],"Value":102,"Enum":"KeyCode"},{"type":"EnumItem","Name":"G","tags":[],"Value":103,"Enum":"KeyCode"},{"type":"EnumItem","Name":"H","tags":[],"Value":104,"Enum":"KeyCode"},{"type":"EnumItem","Name":"I","tags":[],"Value":105,"Enum":"KeyCode"},{"type":"EnumItem","Name":"J","tags":[],"Value":106,"Enum":"KeyCode"},{"type":"EnumItem","Name":"K","tags":[],"Value":107,"Enum":"KeyCode"},{"type":"EnumItem","Name":"L","tags":[],"Value":108,"Enum":"KeyCode"},{"type":"EnumItem","Name":"M","tags":[],"Value":109,"Enum":"KeyCode"},{"type":"EnumItem","Name":"N","tags":[],"Value":110,"Enum":"KeyCode"},{"type":"EnumItem","Name":"O","tags":[],"Value":111,"Enum":"KeyCode"},{"type":"EnumItem","Name":"P","tags":[],"Value":112,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Q","tags":[],"Value":113,"Enum":"KeyCode"},{"type":"EnumItem","Name":"R","tags":[],"Value":114,"Enum":"KeyCode"},{"type":"EnumItem","Name":"S","tags":[],"Value":115,"Enum":"KeyCode"},{"type":"EnumItem","Name":"T","tags":[],"Value":116,"Enum":"KeyCode"},{"type":"EnumItem","Name":"U","tags":[],"Value":117,"Enum":"KeyCode"},{"type":"EnumItem","Name":"V","tags":[],"Value":118,"Enum":"KeyCode"},{"type":"EnumItem","Name":"W","tags":[],"Value":119,"Enum":"KeyCode"},{"type":"EnumItem","Name":"X","tags":[],"Value":120,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Y","tags":[],"Value":121,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Z","tags":[],"Value":122,"Enum":"KeyCode"},{"type":"EnumItem","Name":"LeftCurly","tags":[],"Value":123,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Pipe","tags":[],"Value":124,"Enum":"KeyCode"},{"type":"EnumItem","Name":"RightCurly","tags":[],"Value":125,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Tilde","tags":[],"Value":126,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Delete","tags":[],"Value":127,"Enum":"KeyCode"},{"type":"EnumItem","Name":"KeypadZero","tags":[],"Value":256,"Enum":"KeyCode"},{"type":"EnumItem","Name":"KeypadOne","tags":[],"Value":257,"Enum":"KeyCode"},{"type":"EnumItem","Name":"KeypadTwo","tags":[],"Value":258,"Enum":"KeyCode"},{"type":"EnumItem","Name":"KeypadThree","tags":[],"Value":259,"Enum":"KeyCode"},{"type":"EnumItem","Name":"KeypadFour","tags":[],"Value":260,"Enum":"KeyCode"},{"type":"EnumItem","Name":"KeypadFive","tags":[],"Value":261,"Enum":"KeyCode"},{"type":"EnumItem","Name":"KeypadSix","tags":[],"Value":262,"Enum":"KeyCode"},{"type":"EnumItem","Name":"KeypadSeven","tags":[],"Value":263,"Enum":"KeyCode"},{"type":"EnumItem","Name":"KeypadEight","tags":[],"Value":264,"Enum":"KeyCode"},{"type":"EnumItem","Name":"KeypadNine","tags":[],"Value":265,"Enum":"KeyCode"},{"type":"EnumItem","Name":"KeypadPeriod","tags":[],"Value":266,"Enum":"KeyCode"},{"type":"EnumItem","Name":"KeypadDivide","tags":[],"Value":267,"Enum":"KeyCode"},{"type":"EnumItem","Name":"KeypadMultiply","tags":[],"Value":268,"Enum":"KeyCode"},{"type":"EnumItem","Name":"KeypadMinus","tags":[],"Value":269,"Enum":"KeyCode"},{"type":"EnumItem","Name":"KeypadPlus","tags":[],"Value":270,"Enum":"KeyCode"},{"type":"EnumItem","Name":"KeypadEnter","tags":[],"Value":271,"Enum":"KeyCode"},{"type":"EnumItem","Name":"KeypadEquals","tags":[],"Value":272,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Up","tags":[],"Value":273,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Down","tags":[],"Value":274,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Right","tags":[],"Value":275,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Left","tags":[],"Value":276,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Insert","tags":[],"Value":277,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Home","tags":[],"Value":278,"Enum":"KeyCode"},{"type":"EnumItem","Name":"End","tags":[],"Value":279,"Enum":"KeyCode"},{"type":"EnumItem","Name":"PageUp","tags":[],"Value":280,"Enum":"KeyCode"},{"type":"EnumItem","Name":"PageDown","tags":[],"Value":281,"Enum":"KeyCode"},{"type":"EnumItem","Name":"LeftShift","tags":[],"Value":304,"Enum":"KeyCode"},{"type":"EnumItem","Name":"RightShift","tags":[],"Value":303,"Enum":"KeyCode"},{"type":"EnumItem","Name":"LeftMeta","tags":[],"Value":310,"Enum":"KeyCode"},{"type":"EnumItem","Name":"RightMeta","tags":[],"Value":309,"Enum":"KeyCode"},{"type":"EnumItem","Name":"LeftAlt","tags":[],"Value":308,"Enum":"KeyCode"},{"type":"EnumItem","Name":"RightAlt","tags":[],"Value":307,"Enum":"KeyCode"},{"type":"EnumItem","Name":"LeftControl","tags":[],"Value":306,"Enum":"KeyCode"},{"type":"EnumItem","Name":"RightControl","tags":[],"Value":305,"Enum":"KeyCode"},{"type":"EnumItem","Name":"CapsLock","tags":[],"Value":301,"Enum":"KeyCode"},{"type":"EnumItem","Name":"NumLock","tags":[],"Value":300,"Enum":"KeyCode"},{"type":"EnumItem","Name":"ScrollLock","tags":[],"Value":302,"Enum":"KeyCode"},{"type":"EnumItem","Name":"LeftSuper","tags":[],"Value":311,"Enum":"KeyCode"},{"type":"EnumItem","Name":"RightSuper","tags":[],"Value":312,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Mode","tags":[],"Value":313,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Compose","tags":[],"Value":314,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Help","tags":[],"Value":315,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Print","tags":[],"Value":316,"Enum":"KeyCode"},{"type":"EnumItem","Name":"SysReq","tags":[],"Value":317,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Break","tags":[],"Value":318,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Menu","tags":[],"Value":319,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Power","tags":[],"Value":320,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Euro","tags":[],"Value":321,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Undo","tags":[],"Value":322,"Enum":"KeyCode"},{"type":"EnumItem","Name":"F1","tags":[],"Value":282,"Enum":"KeyCode"},{"type":"EnumItem","Name":"F2","tags":[],"Value":283,"Enum":"KeyCode"},{"type":"EnumItem","Name":"F3","tags":[],"Value":284,"Enum":"KeyCode"},{"type":"EnumItem","Name":"F4","tags":[],"Value":285,"Enum":"KeyCode"},{"type":"EnumItem","Name":"F5","tags":[],"Value":286,"Enum":"KeyCode"},{"type":"EnumItem","Name":"F6","tags":[],"Value":287,"Enum":"KeyCode"},{"type":"EnumItem","Name":"F7","tags":[],"Value":288,"Enum":"KeyCode"},{"type":"EnumItem","Name":"F8","tags":[],"Value":289,"Enum":"KeyCode"},{"type":"EnumItem","Name":"F9","tags":[],"Value":290,"Enum":"KeyCode"},{"type":"EnumItem","Name":"F10","tags":[],"Value":291,"Enum":"KeyCode"},{"type":"EnumItem","Name":"F11","tags":[],"Value":292,"Enum":"KeyCode"},{"type":"EnumItem","Name":"F12","tags":[],"Value":293,"Enum":"KeyCode"},{"type":"EnumItem","Name":"F13","tags":[],"Value":294,"Enum":"KeyCode"},{"type":"EnumItem","Name":"F14","tags":[],"Value":295,"Enum":"KeyCode"},{"type":"EnumItem","Name":"F15","tags":[],"Value":296,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World0","tags":[],"Value":160,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World1","tags":[],"Value":161,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World2","tags":[],"Value":162,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World3","tags":[],"Value":163,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World4","tags":[],"Value":164,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World5","tags":[],"Value":165,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World6","tags":[],"Value":166,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World7","tags":[],"Value":167,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World8","tags":[],"Value":168,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World9","tags":[],"Value":169,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World10","tags":[],"Value":170,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World11","tags":[],"Value":171,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World12","tags":[],"Value":172,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World13","tags":[],"Value":173,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World14","tags":[],"Value":174,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World15","tags":[],"Value":175,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World16","tags":[],"Value":176,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World17","tags":[],"Value":177,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World18","tags":[],"Value":178,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World19","tags":[],"Value":179,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World20","tags":[],"Value":180,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World21","tags":[],"Value":181,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World22","tags":[],"Value":182,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World23","tags":[],"Value":183,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World24","tags":[],"Value":184,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World25","tags":[],"Value":185,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World26","tags":[],"Value":186,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World27","tags":[],"Value":187,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World28","tags":[],"Value":188,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World29","tags":[],"Value":189,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World30","tags":[],"Value":190,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World31","tags":[],"Value":191,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World32","tags":[],"Value":192,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World33","tags":[],"Value":193,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World34","tags":[],"Value":194,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World35","tags":[],"Value":195,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World36","tags":[],"Value":196,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World37","tags":[],"Value":197,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World38","tags":[],"Value":198,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World39","tags":[],"Value":199,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World40","tags":[],"Value":200,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World41","tags":[],"Value":201,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World42","tags":[],"Value":202,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World43","tags":[],"Value":203,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World44","tags":[],"Value":204,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World45","tags":[],"Value":205,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World46","tags":[],"Value":206,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World47","tags":[],"Value":207,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World48","tags":[],"Value":208,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World49","tags":[],"Value":209,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World50","tags":[],"Value":210,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World51","tags":[],"Value":211,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World52","tags":[],"Value":212,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World53","tags":[],"Value":213,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World54","tags":[],"Value":214,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World55","tags":[],"Value":215,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World56","tags":[],"Value":216,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World57","tags":[],"Value":217,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World58","tags":[],"Value":218,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World59","tags":[],"Value":219,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World60","tags":[],"Value":220,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World61","tags":[],"Value":221,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World62","tags":[],"Value":222,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World63","tags":[],"Value":223,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World64","tags":[],"Value":224,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World65","tags":[],"Value":225,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World66","tags":[],"Value":226,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World67","tags":[],"Value":227,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World68","tags":[],"Value":228,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World69","tags":[],"Value":229,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World70","tags":[],"Value":230,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World71","tags":[],"Value":231,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World72","tags":[],"Value":232,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World73","tags":[],"Value":233,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World74","tags":[],"Value":234,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World75","tags":[],"Value":235,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World76","tags":[],"Value":236,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World77","tags":[],"Value":237,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World78","tags":[],"Value":238,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World79","tags":[],"Value":239,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World80","tags":[],"Value":240,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World81","tags":[],"Value":241,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World82","tags":[],"Value":242,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World83","tags":[],"Value":243,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World84","tags":[],"Value":244,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World85","tags":[],"Value":245,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World86","tags":[],"Value":246,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World87","tags":[],"Value":247,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World88","tags":[],"Value":248,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World89","tags":[],"Value":249,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World90","tags":[],"Value":250,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World91","tags":[],"Value":251,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World92","tags":[],"Value":252,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World93","tags":[],"Value":253,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World94","tags":[],"Value":254,"Enum":"KeyCode"},{"type":"EnumItem","Name":"World95","tags":[],"Value":255,"Enum":"KeyCode"},{"type":"EnumItem","Name":"ButtonX","tags":[],"Value":1000,"Enum":"KeyCode"},{"type":"EnumItem","Name":"ButtonY","tags":[],"Value":1001,"Enum":"KeyCode"},{"type":"EnumItem","Name":"ButtonA","tags":[],"Value":1002,"Enum":"KeyCode"},{"type":"EnumItem","Name":"ButtonB","tags":[],"Value":1003,"Enum":"KeyCode"},{"type":"EnumItem","Name":"ButtonR1","tags":[],"Value":1004,"Enum":"KeyCode"},{"type":"EnumItem","Name":"ButtonL1","tags":[],"Value":1005,"Enum":"KeyCode"},{"type":"EnumItem","Name":"ButtonR2","tags":[],"Value":1006,"Enum":"KeyCode"},{"type":"EnumItem","Name":"ButtonL2","tags":[],"Value":1007,"Enum":"KeyCode"},{"type":"EnumItem","Name":"ButtonR3","tags":[],"Value":1008,"Enum":"KeyCode"},{"type":"EnumItem","Name":"ButtonL3","tags":[],"Value":1009,"Enum":"KeyCode"},{"type":"EnumItem","Name":"ButtonStart","tags":[],"Value":1010,"Enum":"KeyCode"},{"type":"EnumItem","Name":"ButtonSelect","tags":[],"Value":1011,"Enum":"KeyCode"},{"type":"EnumItem","Name":"DPadLeft","tags":[],"Value":1012,"Enum":"KeyCode"},{"type":"EnumItem","Name":"DPadRight","tags":[],"Value":1013,"Enum":"KeyCode"},{"type":"EnumItem","Name":"DPadUp","tags":[],"Value":1014,"Enum":"KeyCode"},{"type":"EnumItem","Name":"DPadDown","tags":[],"Value":1015,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Thumbstick1","tags":[],"Value":1016,"Enum":"KeyCode"},{"type":"EnumItem","Name":"Thumbstick2","tags":[],"Value":1017,"Enum":"KeyCode"},{"type":"Enum","Name":"KeywordFilterType","tags":[]},{"type":"EnumItem","Name":"Include","tags":[],"Value":0,"Enum":"KeywordFilterType"},{"type":"EnumItem","Name":"Exclude","tags":[],"Value":1,"Enum":"KeywordFilterType"},{"type":"Enum","Name":"LeftRight","tags":[]},{"type":"EnumItem","Name":"Left","tags":[],"Value":0,"Enum":"LeftRight"},{"type":"EnumItem","Name":"Center","tags":[],"Value":1,"Enum":"LeftRight"},{"type":"EnumItem","Name":"Right","tags":[],"Value":2,"Enum":"LeftRight"},{"type":"Enum","Name":"LevelOfDetailSetting","tags":[]},{"type":"EnumItem","Name":"High","tags":[],"Value":2,"Enum":"LevelOfDetailSetting"},{"type":"EnumItem","Name":"Medium","tags":[],"Value":1,"Enum":"LevelOfDetailSetting"},{"type":"EnumItem","Name":"Low","tags":[],"Value":0,"Enum":"LevelOfDetailSetting"},{"type":"Enum","Name":"ListenerType","tags":[]},{"type":"EnumItem","Name":"Camera","tags":[],"Value":0,"Enum":"ListenerType"},{"type":"EnumItem","Name":"CFrame","tags":[],"Value":1,"Enum":"ListenerType"},{"type":"EnumItem","Name":"ObjectPosition","tags":[],"Value":2,"Enum":"ListenerType"},{"type":"EnumItem","Name":"ObjectCFrame","tags":[],"Value":3,"Enum":"ListenerType"},{"type":"Enum","Name":"Material","tags":[]},{"type":"EnumItem","Name":"Plastic","tags":[],"Value":256,"Enum":"Material"},{"type":"EnumItem","Name":"Wood","tags":[],"Value":512,"Enum":"Material"},{"type":"EnumItem","Name":"Slate","tags":[],"Value":800,"Enum":"Material"},{"type":"EnumItem","Name":"Concrete","tags":[],"Value":816,"Enum":"Material"},{"type":"EnumItem","Name":"CorrodedMetal","tags":[],"Value":1040,"Enum":"Material"},{"type":"EnumItem","Name":"DiamondPlate","tags":[],"Value":1056,"Enum":"Material"},{"type":"EnumItem","Name":"Foil","tags":[],"Value":1072,"Enum":"Material"},{"type":"EnumItem","Name":"Grass","tags":[],"Value":1280,"Enum":"Material"},{"type":"EnumItem","Name":"Ice","tags":[],"Value":1536,"Enum":"Material"},{"type":"EnumItem","Name":"Marble","tags":[],"Value":784,"Enum":"Material"},{"type":"EnumItem","Name":"Granite","tags":[],"Value":832,"Enum":"Material"},{"type":"EnumItem","Name":"Brick","tags":[],"Value":848,"Enum":"Material"},{"type":"EnumItem","Name":"Pebble","tags":[],"Value":864,"Enum":"Material"},{"type":"EnumItem","Name":"Sand","tags":[],"Value":1296,"Enum":"Material"},{"type":"EnumItem","Name":"Fabric","tags":[],"Value":1312,"Enum":"Material"},{"type":"EnumItem","Name":"SmoothPlastic","tags":[],"Value":272,"Enum":"Material"},{"type":"EnumItem","Name":"Metal","tags":[],"Value":1088,"Enum":"Material"},{"type":"EnumItem","Name":"WoodPlanks","tags":[],"Value":528,"Enum":"Material"},{"type":"EnumItem","Name":"Cobblestone","tags":[],"Value":880,"Enum":"Material"},{"type":"EnumItem","Name":"Air","tags":["notbrowsable"],"Value":1792,"Enum":"Material"},{"type":"EnumItem","Name":"Water","tags":["notbrowsable"],"Value":2048,"Enum":"Material"},{"type":"EnumItem","Name":"Rock","tags":["notbrowsable"],"Value":896,"Enum":"Material"},{"type":"EnumItem","Name":"Glacier","tags":["notbrowsable"],"Value":1552,"Enum":"Material"},{"type":"EnumItem","Name":"Snow","tags":["notbrowsable"],"Value":1328,"Enum":"Material"},{"type":"EnumItem","Name":"Sandstone","tags":["notbrowsable"],"Value":912,"Enum":"Material"},{"type":"EnumItem","Name":"Mud","tags":["notbrowsable"],"Value":1344,"Enum":"Material"},{"type":"EnumItem","Name":"Basalt","tags":["notbrowsable"],"Value":788,"Enum":"Material"},{"type":"EnumItem","Name":"Ground","tags":["notbrowsable"],"Value":1360,"Enum":"Material"},{"type":"EnumItem","Name":"CrackedLava","tags":["notbrowsable"],"Value":804,"Enum":"Material"},{"type":"EnumItem","Name":"Neon","tags":[],"Value":288,"Enum":"Material"},{"type":"EnumItem","Name":"Asphalt","tags":["notbrowsable"],"Value":1376,"Enum":"Material"},{"type":"EnumItem","Name":"LeafyGrass","tags":["notbrowsable"],"Value":1284,"Enum":"Material"},{"type":"EnumItem","Name":"Salt","tags":["notbrowsable"],"Value":1392,"Enum":"Material"},{"type":"EnumItem","Name":"Limestone","tags":["notbrowsable"],"Value":820,"Enum":"Material"},{"type":"EnumItem","Name":"Pavement","tags":["notbrowsable"],"Value":836,"Enum":"Material"},{"type":"Enum","Name":"MembershipType","tags":[]},{"type":"EnumItem","Name":"None","tags":[],"Value":0,"Enum":"MembershipType"},{"type":"EnumItem","Name":"BuildersClub","tags":[],"Value":1,"Enum":"MembershipType"},{"type":"EnumItem","Name":"TurboBuildersClub","tags":[],"Value":2,"Enum":"MembershipType"},{"type":"EnumItem","Name":"OutrageousBuildersClub","tags":[],"Value":3,"Enum":"MembershipType"},{"type":"Enum","Name":"MeshType","tags":[]},{"type":"EnumItem","Name":"Head","tags":[],"Value":0,"Enum":"MeshType"},{"type":"EnumItem","Name":"Torso","tags":[],"Value":1,"Enum":"MeshType"},{"type":"EnumItem","Name":"Wedge","tags":[],"Value":2,"Enum":"MeshType"},{"type":"EnumItem","Name":"Prism","tags":["deprecated"],"Value":7,"Enum":"MeshType"},{"type":"EnumItem","Name":"Pyramid","tags":["deprecated"],"Value":8,"Enum":"MeshType"},{"type":"EnumItem","Name":"ParallelRamp","tags":["deprecated"],"Value":9,"Enum":"MeshType"},{"type":"EnumItem","Name":"RightAngleRamp","tags":["deprecated"],"Value":10,"Enum":"MeshType"},{"type":"EnumItem","Name":"CornerWedge","tags":["deprecated"],"Value":11,"Enum":"MeshType"},{"type":"EnumItem","Name":"Brick","tags":[],"Value":6,"Enum":"MeshType"},{"type":"EnumItem","Name":"Sphere","tags":[],"Value":3,"Enum":"MeshType"},{"type":"EnumItem","Name":"Cylinder","tags":[],"Value":4,"Enum":"MeshType"},{"type":"EnumItem","Name":"FileMesh","tags":[],"Value":5,"Enum":"MeshType"},{"type":"Enum","Name":"MessageType","tags":[]},{"type":"EnumItem","Name":"MessageOutput","tags":[],"Value":0,"Enum":"MessageType"},{"type":"EnumItem","Name":"MessageInfo","tags":[],"Value":1,"Enum":"MessageType"},{"type":"EnumItem","Name":"MessageWarning","tags":[],"Value":2,"Enum":"MessageType"},{"type":"EnumItem","Name":"MessageError","tags":[],"Value":3,"Enum":"MessageType"},{"type":"Enum","Name":"MouseBehavior","tags":[]},{"type":"EnumItem","Name":"Default","tags":[],"Value":0,"Enum":"MouseBehavior"},{"type":"EnumItem","Name":"LockCenter","tags":[],"Value":1,"Enum":"MouseBehavior"},{"type":"EnumItem","Name":"LockCurrentPosition","tags":[],"Value":2,"Enum":"MouseBehavior"},{"type":"Enum","Name":"MoveState","tags":[]},{"type":"EnumItem","Name":"Stopped","tags":[],"Value":0,"Enum":"MoveState"},{"type":"EnumItem","Name":"Coasting","tags":[],"Value":1,"Enum":"MoveState"},{"type":"EnumItem","Name":"Pushing","tags":[],"Value":2,"Enum":"MoveState"},{"type":"EnumItem","Name":"Stopping","tags":[],"Value":3,"Enum":"MoveState"},{"type":"EnumItem","Name":"AirFree","tags":[],"Value":4,"Enum":"MoveState"},{"type":"Enum","Name":"NameOcclusion","tags":[]},{"type":"EnumItem","Name":"OccludeAll","tags":[],"Value":2,"Enum":"NameOcclusion"},{"type":"EnumItem","Name":"EnemyOcclusion","tags":[],"Value":1,"Enum":"NameOcclusion"},{"type":"EnumItem","Name":"NoOcclusion","tags":[],"Value":0,"Enum":"NameOcclusion"},{"type":"Enum","Name":"NetworkOwnership","tags":[]},{"type":"EnumItem","Name":"Automatic","tags":[],"Value":0,"Enum":"NetworkOwnership"},{"type":"EnumItem","Name":"Manual","tags":[],"Value":1,"Enum":"NetworkOwnership"},{"type":"Enum","Name":"NormalId","tags":[]},{"type":"EnumItem","Name":"Top","tags":[],"Value":1,"Enum":"NormalId"},{"type":"EnumItem","Name":"Bottom","tags":[],"Value":4,"Enum":"NormalId"},{"type":"EnumItem","Name":"Back","tags":[],"Value":2,"Enum":"NormalId"},{"type":"EnumItem","Name":"Front","tags":[],"Value":5,"Enum":"NormalId"},{"type":"EnumItem","Name":"Right","tags":[],"Value":0,"Enum":"NormalId"},{"type":"EnumItem","Name":"Left","tags":[],"Value":3,"Enum":"NormalId"},{"type":"Enum","Name":"OverrideMouseIconBehavior","tags":[]},{"type":"EnumItem","Name":"None","tags":[],"Value":0,"Enum":"OverrideMouseIconBehavior"},{"type":"EnumItem","Name":"ForceShow","tags":[],"Value":1,"Enum":"OverrideMouseIconBehavior"},{"type":"EnumItem","Name":"ForceHide","tags":[],"Value":2,"Enum":"OverrideMouseIconBehavior"},{"type":"Enum","Name":"PacketPriority","tags":[]},{"type":"EnumItem","Name":"IMMEDIATE_PRIORITY","tags":[],"Value":0,"Enum":"PacketPriority"},{"type":"EnumItem","Name":"HIGH_PRIORITY","tags":[],"Value":1,"Enum":"PacketPriority"},{"type":"EnumItem","Name":"MEDIUM_PRIORITY","tags":[],"Value":2,"Enum":"PacketPriority"},{"type":"EnumItem","Name":"LOW_PRIORITY","tags":[],"Value":3,"Enum":"PacketPriority"},{"type":"Enum","Name":"PacketReliability","tags":[]},{"type":"EnumItem","Name":"UNRELIABLE","tags":[],"Value":0,"Enum":"PacketReliability"},{"type":"EnumItem","Name":"UNRELIABLE_SEQUENCED","tags":[],"Value":1,"Enum":"PacketReliability"},{"type":"EnumItem","Name":"RELIABLE","tags":[],"Value":2,"Enum":"PacketReliability"},{"type":"EnumItem","Name":"RELIABLE_ORDERED","tags":[],"Value":3,"Enum":"PacketReliability"},{"type":"EnumItem","Name":"RELIABLE_SEQUENCED","tags":[],"Value":4,"Enum":"PacketReliability"},{"type":"Enum","Name":"PartType","tags":[]},{"type":"EnumItem","Name":"Ball","tags":[],"Value":0,"Enum":"PartType"},{"type":"EnumItem","Name":"Block","tags":[],"Value":1,"Enum":"PartType"},{"type":"EnumItem","Name":"Cylinder","tags":[],"Value":2,"Enum":"PartType"},{"type":"Enum","Name":"PathStatus","tags":[]},{"type":"EnumItem","Name":"Success","tags":[],"Value":0,"Enum":"PathStatus"},{"type":"EnumItem","Name":"ClosestNoPath","tags":[],"Value":1,"Enum":"PathStatus"},{"type":"EnumItem","Name":"ClosestOutOfRange","tags":[],"Value":2,"Enum":"PathStatus"},{"type":"EnumItem","Name":"FailStartNotEmpty","tags":[],"Value":3,"Enum":"PathStatus"},{"type":"EnumItem","Name":"FailFinishNotEmpty","tags":[],"Value":4,"Enum":"PathStatus"},{"type":"Enum","Name":"PhysicalPropertiesMode","tags":[]},{"type":"EnumItem","Name":"Default","tags":[],"Value":1,"Enum":"PhysicalPropertiesMode"},{"type":"EnumItem","Name":"Legacy","tags":[],"Value":0,"Enum":"PhysicalPropertiesMode"},{"type":"EnumItem","Name":"New","tags":[],"Value":2,"Enum":"PhysicalPropertiesMode"},{"type":"Enum","Name":"PhysicsReceiveMethod","tags":[]},{"type":"EnumItem","Name":"Direct","tags":[],"Value":0,"Enum":"PhysicsReceiveMethod"},{"type":"EnumItem","Name":"Interpolation","tags":[],"Value":1,"Enum":"PhysicsReceiveMethod"},{"type":"Enum","Name":"PhysicsSendMethod","tags":[]},{"type":"EnumItem","Name":"ErrorComputation","tags":[],"Value":0,"Enum":"PhysicsSendMethod"},{"type":"EnumItem","Name":"ErrorComputation2","tags":[],"Value":1,"Enum":"PhysicsSendMethod"},{"type":"EnumItem","Name":"RoundRobin","tags":[],"Value":2,"Enum":"PhysicsSendMethod"},{"type":"EnumItem","Name":"TopNErrors","tags":[],"Value":3,"Enum":"PhysicsSendMethod"},{"type":"Enum","Name":"Platform","tags":[]},{"type":"EnumItem","Name":"Windows","tags":[],"Value":0,"Enum":"Platform"},{"type":"EnumItem","Name":"OSX","tags":[],"Value":1,"Enum":"Platform"},{"type":"EnumItem","Name":"IOS","tags":[],"Value":2,"Enum":"Platform"},{"type":"EnumItem","Name":"Android","tags":[],"Value":3,"Enum":"Platform"},{"type":"EnumItem","Name":"XBoxOne","tags":[],"Value":4,"Enum":"Platform"},{"type":"EnumItem","Name":"PS4","tags":[],"Value":5,"Enum":"Platform"},{"type":"EnumItem","Name":"PS3","tags":[],"Value":6,"Enum":"Platform"},{"type":"EnumItem","Name":"XBox360","tags":[],"Value":7,"Enum":"Platform"},{"type":"EnumItem","Name":"WiiU","tags":[],"Value":8,"Enum":"Platform"},{"type":"EnumItem","Name":"NX","tags":[],"Value":9,"Enum":"Platform"},{"type":"EnumItem","Name":"Ouya","tags":[],"Value":10,"Enum":"Platform"},{"type":"EnumItem","Name":"AndroidTV","tags":[],"Value":11,"Enum":"Platform"},{"type":"EnumItem","Name":"Chromecast","tags":[],"Value":12,"Enum":"Platform"},{"type":"EnumItem","Name":"Linux","tags":[],"Value":13,"Enum":"Platform"},{"type":"EnumItem","Name":"SteamOS","tags":[],"Value":14,"Enum":"Platform"},{"type":"EnumItem","Name":"WebOS","tags":[],"Value":15,"Enum":"Platform"},{"type":"EnumItem","Name":"DOS","tags":[],"Value":16,"Enum":"Platform"},{"type":"EnumItem","Name":"BeOS","tags":[],"Value":17,"Enum":"Platform"},{"type":"EnumItem","Name":"UWP","tags":[],"Value":18,"Enum":"Platform"},{"type":"EnumItem","Name":"None","tags":[],"Value":19,"Enum":"Platform"},{"type":"Enum","Name":"PlayerActions","tags":[]},{"type":"EnumItem","Name":"CharacterForward","tags":[],"Value":0,"Enum":"PlayerActions"},{"type":"EnumItem","Name":"CharacterBackward","tags":[],"Value":1,"Enum":"PlayerActions"},{"type":"EnumItem","Name":"CharacterLeft","tags":[],"Value":2,"Enum":"PlayerActions"},{"type":"EnumItem","Name":"CharacterRight","tags":[],"Value":3,"Enum":"PlayerActions"},{"type":"EnumItem","Name":"CharacterJump","tags":[],"Value":4,"Enum":"PlayerActions"},{"type":"Enum","Name":"PlayerChatType","tags":[]},{"type":"EnumItem","Name":"All","tags":[],"Value":0,"Enum":"PlayerChatType"},{"type":"EnumItem","Name":"Team","tags":[],"Value":1,"Enum":"PlayerChatType"},{"type":"EnumItem","Name":"Whisper","tags":[],"Value":2,"Enum":"PlayerChatType"},{"type":"Enum","Name":"PoseEasingDirection","tags":[]},{"type":"EnumItem","Name":"Out","tags":[],"Value":1,"Enum":"PoseEasingDirection"},{"type":"EnumItem","Name":"InOut","tags":[],"Value":2,"Enum":"PoseEasingDirection"},{"type":"EnumItem","Name":"In","tags":[],"Value":0,"Enum":"PoseEasingDirection"},{"type":"Enum","Name":"PoseEasingStyle","tags":[]},{"type":"EnumItem","Name":"Linear","tags":[],"Value":0,"Enum":"PoseEasingStyle"},{"type":"EnumItem","Name":"Constant","tags":[],"Value":1,"Enum":"PoseEasingStyle"},{"type":"EnumItem","Name":"Elastic","tags":[],"Value":2,"Enum":"PoseEasingStyle"},{"type":"EnumItem","Name":"Cubic","tags":[],"Value":3,"Enum":"PoseEasingStyle"},{"type":"EnumItem","Name":"Bounce","tags":[],"Value":4,"Enum":"PoseEasingStyle"},{"type":"Enum","Name":"PriorityMethod","tags":[]},{"type":"EnumItem","Name":"LastError","tags":[],"Value":0,"Enum":"PriorityMethod"},{"type":"EnumItem","Name":"AccumulatedError","tags":[],"Value":1,"Enum":"PriorityMethod"},{"type":"EnumItem","Name":"FIFO","tags":[],"Value":2,"Enum":"PriorityMethod"},{"type":"Enum","Name":"PrismSides","tags":[]},{"type":"EnumItem","Name":"3","tags":[],"Value":3,"Enum":"PrismSides"},{"type":"EnumItem","Name":"5","tags":[],"Value":5,"Enum":"PrismSides"},{"type":"EnumItem","Name":"6","tags":[],"Value":6,"Enum":"PrismSides"},{"type":"EnumItem","Name":"8","tags":[],"Value":8,"Enum":"PrismSides"},{"type":"EnumItem","Name":"10","tags":[],"Value":10,"Enum":"PrismSides"},{"type":"EnumItem","Name":"20","tags":[],"Value":20,"Enum":"PrismSides"},{"type":"Enum","Name":"PrivilegeType","tags":[]},{"type":"EnumItem","Name":"Owner","tags":[],"Value":255,"Enum":"PrivilegeType"},{"type":"EnumItem","Name":"Admin","tags":[],"Value":240,"Enum":"PrivilegeType"},{"type":"EnumItem","Name":"Member","tags":[],"Value":128,"Enum":"PrivilegeType"},{"type":"EnumItem","Name":"Visitor","tags":[],"Value":10,"Enum":"PrivilegeType"},{"type":"EnumItem","Name":"Banned","tags":[],"Value":0,"Enum":"PrivilegeType"},{"type":"Enum","Name":"ProductPurchaseDecision","tags":[]},{"type":"EnumItem","Name":"NotProcessedYet","tags":[],"Value":0,"Enum":"ProductPurchaseDecision"},{"type":"EnumItem","Name":"PurchaseGranted","tags":[],"Value":1,"Enum":"ProductPurchaseDecision"},{"type":"Enum","Name":"PyramidSides","tags":[]},{"type":"EnumItem","Name":"3","tags":[],"Value":3,"Enum":"PyramidSides"},{"type":"EnumItem","Name":"4","tags":[],"Value":4,"Enum":"PyramidSides"},{"type":"EnumItem","Name":"5","tags":[],"Value":5,"Enum":"PyramidSides"},{"type":"EnumItem","Name":"6","tags":[],"Value":6,"Enum":"PyramidSides"},{"type":"EnumItem","Name":"8","tags":[],"Value":8,"Enum":"PyramidSides"},{"type":"EnumItem","Name":"10","tags":[],"Value":10,"Enum":"PyramidSides"},{"type":"EnumItem","Name":"20","tags":[],"Value":20,"Enum":"PyramidSides"},{"type":"Enum","Name":"QualityLevel","tags":[]},{"type":"EnumItem","Name":"Automatic","tags":[],"Value":0,"Enum":"QualityLevel"},{"type":"EnumItem","Name":"Level01","tags":[],"Value":1,"Enum":"QualityLevel"},{"type":"EnumItem","Name":"Level02","tags":[],"Value":2,"Enum":"QualityLevel"},{"type":"EnumItem","Name":"Level03","tags":[],"Value":3,"Enum":"QualityLevel"},{"type":"EnumItem","Name":"Level04","tags":[],"Value":4,"Enum":"QualityLevel"},{"type":"EnumItem","Name":"Level05","tags":[],"Value":5,"Enum":"QualityLevel"},{"type":"EnumItem","Name":"Level06","tags":[],"Value":6,"Enum":"QualityLevel"},{"type":"EnumItem","Name":"Level07","tags":[],"Value":7,"Enum":"QualityLevel"},{"type":"EnumItem","Name":"Level08","tags":[],"Value":8,"Enum":"QualityLevel"},{"type":"EnumItem","Name":"Level09","tags":[],"Value":9,"Enum":"QualityLevel"},{"type":"EnumItem","Name":"Level10","tags":[],"Value":10,"Enum":"QualityLevel"},{"type":"EnumItem","Name":"Level11","tags":[],"Value":11,"Enum":"QualityLevel"},{"type":"EnumItem","Name":"Level12","tags":[],"Value":12,"Enum":"QualityLevel"},{"type":"EnumItem","Name":"Level13","tags":[],"Value":13,"Enum":"QualityLevel"},{"type":"EnumItem","Name":"Level14","tags":[],"Value":14,"Enum":"QualityLevel"},{"type":"EnumItem","Name":"Level15","tags":[],"Value":15,"Enum":"QualityLevel"},{"type":"EnumItem","Name":"Level16","tags":[],"Value":16,"Enum":"QualityLevel"},{"type":"EnumItem","Name":"Level17","tags":[],"Value":17,"Enum":"QualityLevel"},{"type":"EnumItem","Name":"Level18","tags":[],"Value":18,"Enum":"QualityLevel"},{"type":"EnumItem","Name":"Level19","tags":[],"Value":19,"Enum":"QualityLevel"},{"type":"EnumItem","Name":"Level20","tags":[],"Value":20,"Enum":"QualityLevel"},{"type":"EnumItem","Name":"Level21","tags":[],"Value":21,"Enum":"QualityLevel"},{"type":"Enum","Name":"RenderPriority","tags":[]},{"type":"EnumItem","Name":"First","tags":[],"Value":0,"Enum":"RenderPriority"},{"type":"EnumItem","Name":"Input","tags":[],"Value":100,"Enum":"RenderPriority"},{"type":"EnumItem","Name":"Camera","tags":[],"Value":200,"Enum":"RenderPriority"},{"type":"EnumItem","Name":"Character","tags":[],"Value":300,"Enum":"RenderPriority"},{"type":"EnumItem","Name":"Last","tags":[],"Value":2000,"Enum":"RenderPriority"},{"type":"Enum","Name":"Resolution","tags":[]},{"type":"EnumItem","Name":"Automatic","tags":[],"Value":0,"Enum":"Resolution"},{"type":"EnumItem","Name":"720x526","tags":[],"Value":1,"Enum":"Resolution"},{"type":"EnumItem","Name":"800x600","tags":[],"Value":2,"Enum":"Resolution"},{"type":"EnumItem","Name":"1024x600","tags":[],"Value":3,"Enum":"Resolution"},{"type":"EnumItem","Name":"1024x768","tags":[],"Value":4,"Enum":"Resolution"},{"type":"EnumItem","Name":"1280x720","tags":[],"Value":5,"Enum":"Resolution"},{"type":"EnumItem","Name":"1280x768","tags":[],"Value":6,"Enum":"Resolution"},{"type":"EnumItem","Name":"1152x864","tags":[],"Value":7,"Enum":"Resolution"},{"type":"EnumItem","Name":"1280x800","tags":[],"Value":8,"Enum":"Resolution"},{"type":"EnumItem","Name":"1360x768","tags":[],"Value":9,"Enum":"Resolution"},{"type":"EnumItem","Name":"1280x960","tags":[],"Value":10,"Enum":"Resolution"},{"type":"EnumItem","Name":"1280x1024","tags":[],"Value":11,"Enum":"Resolution"},{"type":"EnumItem","Name":"1440x900","tags":[],"Value":12,"Enum":"Resolution"},{"type":"EnumItem","Name":"1600x900","tags":[],"Value":13,"Enum":"Resolution"},{"type":"EnumItem","Name":"1600x1024","tags":[],"Value":14,"Enum":"Resolution"},{"type":"EnumItem","Name":"1600x1200","tags":[],"Value":15,"Enum":"Resolution"},{"type":"EnumItem","Name":"1680x1050","tags":[],"Value":16,"Enum":"Resolution"},{"type":"EnumItem","Name":"1920x1080","tags":[],"Value":17,"Enum":"Resolution"},{"type":"EnumItem","Name":"1920x1200","tags":[],"Value":18,"Enum":"Resolution"},{"type":"Enum","Name":"ReverbType","tags":[]},{"type":"EnumItem","Name":"NoReverb","tags":[],"Value":0,"Enum":"ReverbType"},{"type":"EnumItem","Name":"GenericReverb","tags":[],"Value":1,"Enum":"ReverbType"},{"type":"EnumItem","Name":"PaddedCell","tags":[],"Value":2,"Enum":"ReverbType"},{"type":"EnumItem","Name":"Room","tags":[],"Value":3,"Enum":"ReverbType"},{"type":"EnumItem","Name":"Bathroom","tags":[],"Value":4,"Enum":"ReverbType"},{"type":"EnumItem","Name":"LivingRoom","tags":[],"Value":5,"Enum":"ReverbType"},{"type":"EnumItem","Name":"StoneRoom","tags":[],"Value":6,"Enum":"ReverbType"},{"type":"EnumItem","Name":"Auditorium","tags":[],"Value":7,"Enum":"ReverbType"},{"type":"EnumItem","Name":"ConcertHall","tags":[],"Value":8,"Enum":"ReverbType"},{"type":"EnumItem","Name":"Cave","tags":[],"Value":9,"Enum":"ReverbType"},{"type":"EnumItem","Name":"Arena","tags":[],"Value":10,"Enum":"ReverbType"},{"type":"EnumItem","Name":"Hangar","tags":[],"Value":11,"Enum":"ReverbType"},{"type":"EnumItem","Name":"CarpettedHallway","tags":[],"Value":12,"Enum":"ReverbType"},{"type":"EnumItem","Name":"Hallway","tags":[],"Value":13,"Enum":"ReverbType"},{"type":"EnumItem","Name":"StoneCorridor","tags":[],"Value":14,"Enum":"ReverbType"},{"type":"EnumItem","Name":"Alley","tags":[],"Value":15,"Enum":"ReverbType"},{"type":"EnumItem","Name":"Forest","tags":[],"Value":16,"Enum":"ReverbType"},{"type":"EnumItem","Name":"City","tags":[],"Value":17,"Enum":"ReverbType"},{"type":"EnumItem","Name":"Mountains","tags":[],"Value":18,"Enum":"ReverbType"},{"type":"EnumItem","Name":"Quarry","tags":[],"Value":19,"Enum":"ReverbType"},{"type":"EnumItem","Name":"Plain","tags":[],"Value":20,"Enum":"ReverbType"},{"type":"EnumItem","Name":"ParkingLot","tags":[],"Value":21,"Enum":"ReverbType"},{"type":"EnumItem","Name":"SewerPipe","tags":[],"Value":22,"Enum":"ReverbType"},{"type":"EnumItem","Name":"UnderWater","tags":[],"Value":23,"Enum":"ReverbType"},{"type":"Enum","Name":"RollOffMode","tags":[]},{"type":"EnumItem","Name":"Inverse","tags":[],"Value":0,"Enum":"RollOffMode"},{"type":"EnumItem","Name":"Linear","tags":[],"Value":1,"Enum":"RollOffMode"},{"type":"Enum","Name":"RotationType","tags":[]},{"type":"EnumItem","Name":"MovementRelative","tags":[],"Value":0,"Enum":"RotationType"},{"type":"EnumItem","Name":"CameraRelative","tags":[],"Value":1,"Enum":"RotationType"},{"type":"Enum","Name":"RuntimeUndoBehavior","tags":[]},{"type":"EnumItem","Name":"Aggregate","tags":[],"Value":0,"Enum":"RuntimeUndoBehavior"},{"type":"EnumItem","Name":"Snapshot","tags":[],"Value":1,"Enum":"RuntimeUndoBehavior"},{"type":"EnumItem","Name":"Hybrid","tags":[],"Value":2,"Enum":"RuntimeUndoBehavior"},{"type":"Enum","Name":"SaveFilter","tags":[]},{"type":"EnumItem","Name":"SaveAll","tags":[],"Value":2,"Enum":"SaveFilter"},{"type":"EnumItem","Name":"SaveWorld","tags":[],"Value":0,"Enum":"SaveFilter"},{"type":"EnumItem","Name":"SaveGame","tags":[],"Value":1,"Enum":"SaveFilter"},{"type":"Enum","Name":"SavedQualitySetting","tags":[]},{"type":"EnumItem","Name":"Automatic","tags":[],"Value":0,"Enum":"SavedQualitySetting"},{"type":"EnumItem","Name":"QualityLevel1","tags":[],"Value":1,"Enum":"SavedQualitySetting"},{"type":"EnumItem","Name":"QualityLevel2","tags":[],"Value":2,"Enum":"SavedQualitySetting"},{"type":"EnumItem","Name":"QualityLevel3","tags":[],"Value":3,"Enum":"SavedQualitySetting"},{"type":"EnumItem","Name":"QualityLevel4","tags":[],"Value":4,"Enum":"SavedQualitySetting"},{"type":"EnumItem","Name":"QualityLevel5","tags":[],"Value":5,"Enum":"SavedQualitySetting"},{"type":"EnumItem","Name":"QualityLevel6","tags":[],"Value":6,"Enum":"SavedQualitySetting"},{"type":"EnumItem","Name":"QualityLevel7","tags":[],"Value":7,"Enum":"SavedQualitySetting"},{"type":"EnumItem","Name":"QualityLevel8","tags":[],"Value":8,"Enum":"SavedQualitySetting"},{"type":"EnumItem","Name":"QualityLevel9","tags":[],"Value":9,"Enum":"SavedQualitySetting"},{"type":"EnumItem","Name":"QualityLevel10","tags":[],"Value":10,"Enum":"SavedQualitySetting"},{"type":"Enum","Name":"ScaleType","tags":[]},{"type":"EnumItem","Name":"Stretch","tags":[],"Value":0,"Enum":"ScaleType"},{"type":"EnumItem","Name":"Slice","tags":[],"Value":1,"Enum":"ScaleType"},{"type":"Enum","Name":"SizeConstraint","tags":[]},{"type":"EnumItem","Name":"RelativeXY","tags":[],"Value":0,"Enum":"SizeConstraint"},{"type":"EnumItem","Name":"RelativeXX","tags":[],"Value":1,"Enum":"SizeConstraint"},{"type":"EnumItem","Name":"RelativeYY","tags":[],"Value":2,"Enum":"SizeConstraint"},{"type":"Enum","Name":"SleepAdjustMethod","tags":[]},{"type":"EnumItem","Name":"None","tags":[],"Value":0,"Enum":"SleepAdjustMethod"},{"type":"EnumItem","Name":"LastSample","tags":[],"Value":1,"Enum":"SleepAdjustMethod"},{"type":"EnumItem","Name":"AverageInterval","tags":[],"Value":2,"Enum":"SleepAdjustMethod"},{"type":"Enum","Name":"SoundType","tags":[]},{"type":"EnumItem","Name":"NoSound","tags":[],"Value":0,"Enum":"SoundType"},{"type":"EnumItem","Name":"Boing","tags":[],"Value":1,"Enum":"SoundType"},{"type":"EnumItem","Name":"Bomb","tags":[],"Value":2,"Enum":"SoundType"},{"type":"EnumItem","Name":"Break","tags":[],"Value":3,"Enum":"SoundType"},{"type":"EnumItem","Name":"Click","tags":[],"Value":4,"Enum":"SoundType"},{"type":"EnumItem","Name":"Clock","tags":[],"Value":5,"Enum":"SoundType"},{"type":"EnumItem","Name":"Slingshot","tags":[],"Value":6,"Enum":"SoundType"},{"type":"EnumItem","Name":"Page","tags":[],"Value":7,"Enum":"SoundType"},{"type":"EnumItem","Name":"Ping","tags":[],"Value":8,"Enum":"SoundType"},{"type":"EnumItem","Name":"Snap","tags":[],"Value":9,"Enum":"SoundType"},{"type":"EnumItem","Name":"Splat","tags":[],"Value":10,"Enum":"SoundType"},{"type":"EnumItem","Name":"Step","tags":[],"Value":11,"Enum":"SoundType"},{"type":"EnumItem","Name":"StepOn","tags":[],"Value":12,"Enum":"SoundType"},{"type":"EnumItem","Name":"Swoosh","tags":[],"Value":13,"Enum":"SoundType"},{"type":"EnumItem","Name":"Victory","tags":[],"Value":14,"Enum":"SoundType"},{"type":"Enum","Name":"SpecialKey","tags":[]},{"type":"EnumItem","Name":"Insert","tags":[],"Value":0,"Enum":"SpecialKey"},{"type":"EnumItem","Name":"Home","tags":[],"Value":1,"Enum":"SpecialKey"},{"type":"EnumItem","Name":"End","tags":[],"Value":2,"Enum":"SpecialKey"},{"type":"EnumItem","Name":"PageUp","tags":[],"Value":3,"Enum":"SpecialKey"},{"type":"EnumItem","Name":"PageDown","tags":[],"Value":4,"Enum":"SpecialKey"},{"type":"EnumItem","Name":"ChatHotkey","tags":[],"Value":5,"Enum":"SpecialKey"},{"type":"Enum","Name":"Status","tags":[]},{"type":"EnumItem","Name":"Poison","tags":["deprecated"],"Value":0,"Enum":"Status"},{"type":"EnumItem","Name":"Confusion","tags":["deprecated"],"Value":1,"Enum":"Status"},{"type":"Enum","Name":"Stuff","tags":[]},{"type":"EnumItem","Name":"Heads","tags":[],"Value":0,"Enum":"Stuff"},{"type":"EnumItem","Name":"Faces","tags":[],"Value":1,"Enum":"Stuff"},{"type":"EnumItem","Name":"Hats","tags":[],"Value":2,"Enum":"Stuff"},{"type":"EnumItem","Name":"TShirts","tags":[],"Value":3,"Enum":"Stuff"},{"type":"EnumItem","Name":"Shirts","tags":[],"Value":4,"Enum":"Stuff"},{"type":"EnumItem","Name":"Pants","tags":[],"Value":5,"Enum":"Stuff"},{"type":"EnumItem","Name":"Gears","tags":[],"Value":6,"Enum":"Stuff"},{"type":"EnumItem","Name":"Torsos","tags":[],"Value":7,"Enum":"Stuff"},{"type":"EnumItem","Name":"LeftArms","tags":[],"Value":8,"Enum":"Stuff"},{"type":"EnumItem","Name":"RightArms","tags":[],"Value":9,"Enum":"Stuff"},{"type":"EnumItem","Name":"LeftLegs","tags":[],"Value":10,"Enum":"Stuff"},{"type":"EnumItem","Name":"RightLegs","tags":[],"Value":11,"Enum":"Stuff"},{"type":"EnumItem","Name":"Bodies","tags":[],"Value":12,"Enum":"Stuff"},{"type":"EnumItem","Name":"Costumes","tags":[],"Value":13,"Enum":"Stuff"},{"type":"Enum","Name":"Style","tags":[]},{"type":"EnumItem","Name":"AlternatingSupports","tags":[],"Value":0,"Enum":"Style"},{"type":"EnumItem","Name":"BridgeStyleSupports","tags":[],"Value":1,"Enum":"Style"},{"type":"EnumItem","Name":"NoSupports","tags":[],"Value":2,"Enum":"Style"},{"type":"Enum","Name":"SurfaceConstraint","tags":[]},{"type":"EnumItem","Name":"None","tags":[],"Value":0,"Enum":"SurfaceConstraint"},{"type":"EnumItem","Name":"Hinge","tags":[],"Value":1,"Enum":"SurfaceConstraint"},{"type":"EnumItem","Name":"SteppingMotor","tags":[],"Value":2,"Enum":"SurfaceConstraint"},{"type":"EnumItem","Name":"Motor","tags":[],"Value":3,"Enum":"SurfaceConstraint"},{"type":"Enum","Name":"SurfaceType","tags":[]},{"type":"EnumItem","Name":"Smooth","tags":[],"Value":0,"Enum":"SurfaceType"},{"type":"EnumItem","Name":"Glue","tags":[],"Value":1,"Enum":"SurfaceType"},{"type":"EnumItem","Name":"Weld","tags":[],"Value":2,"Enum":"SurfaceType"},{"type":"EnumItem","Name":"Studs","tags":[],"Value":3,"Enum":"SurfaceType"},{"type":"EnumItem","Name":"Inlet","tags":[],"Value":4,"Enum":"SurfaceType"},{"type":"EnumItem","Name":"Universal","tags":[],"Value":5,"Enum":"SurfaceType"},{"type":"EnumItem","Name":"Hinge","tags":[],"Value":6,"Enum":"SurfaceType"},{"type":"EnumItem","Name":"Motor","tags":[],"Value":7,"Enum":"SurfaceType"},{"type":"EnumItem","Name":"SteppingMotor","tags":[],"Value":8,"Enum":"SurfaceType"},{"type":"EnumItem","Name":"Unjoinable","tags":[],"Value":9,"Enum":"SurfaceType"},{"type":"EnumItem","Name":"SmoothNoOutlines","tags":[],"Value":10,"Enum":"SurfaceType"},{"type":"Enum","Name":"SwipeDirection","tags":[]},{"type":"EnumItem","Name":"Right","tags":[],"Value":0,"Enum":"SwipeDirection"},{"type":"EnumItem","Name":"Left","tags":[],"Value":1,"Enum":"SwipeDirection"},{"type":"EnumItem","Name":"Up","tags":[],"Value":2,"Enum":"SwipeDirection"},{"type":"EnumItem","Name":"Down","tags":[],"Value":3,"Enum":"SwipeDirection"},{"type":"EnumItem","Name":"None","tags":[],"Value":4,"Enum":"SwipeDirection"},{"type":"Enum","Name":"TeleportState","tags":[]},{"type":"EnumItem","Name":"RequestedFromServer","tags":[],"Value":0,"Enum":"TeleportState"},{"type":"EnumItem","Name":"Started","tags":[],"Value":1,"Enum":"TeleportState"},{"type":"EnumItem","Name":"WaitingForServer","tags":[],"Value":2,"Enum":"TeleportState"},{"type":"EnumItem","Name":"Failed","tags":[],"Value":3,"Enum":"TeleportState"},{"type":"EnumItem","Name":"InProgress","tags":[],"Value":4,"Enum":"TeleportState"},{"type":"Enum","Name":"TeleportType","tags":[]},{"type":"EnumItem","Name":"ToPlace","tags":[],"Value":0,"Enum":"TeleportType"},{"type":"EnumItem","Name":"ToInstance","tags":[],"Value":1,"Enum":"TeleportType"},{"type":"EnumItem","Name":"ToReservedServer","tags":[],"Value":2,"Enum":"TeleportType"},{"type":"Enum","Name":"TextXAlignment","tags":[]},{"type":"EnumItem","Name":"Left","tags":[],"Value":0,"Enum":"TextXAlignment"},{"type":"EnumItem","Name":"Center","tags":[],"Value":2,"Enum":"TextXAlignment"},{"type":"EnumItem","Name":"Right","tags":[],"Value":1,"Enum":"TextXAlignment"},{"type":"Enum","Name":"TextYAlignment","tags":[]},{"type":"EnumItem","Name":"Top","tags":[],"Value":0,"Enum":"TextYAlignment"},{"type":"EnumItem","Name":"Center","tags":[],"Value":1,"Enum":"TextYAlignment"},{"type":"EnumItem","Name":"Bottom","tags":[],"Value":2,"Enum":"TextYAlignment"},{"type":"Enum","Name":"ThreadPoolConfig","tags":[]},{"type":"EnumItem","Name":"Auto","tags":[],"Value":0,"Enum":"ThreadPoolConfig"},{"type":"EnumItem","Name":"PerCore1","tags":[],"Value":101,"Enum":"ThreadPoolConfig"},{"type":"EnumItem","Name":"PerCore2","tags":[],"Value":102,"Enum":"ThreadPoolConfig"},{"type":"EnumItem","Name":"PerCore3","tags":[],"Value":103,"Enum":"ThreadPoolConfig"},{"type":"EnumItem","Name":"PerCore4","tags":[],"Value":104,"Enum":"ThreadPoolConfig"},{"type":"EnumItem","Name":"Threads1","tags":[],"Value":1,"Enum":"ThreadPoolConfig"},{"type":"EnumItem","Name":"Threads2","tags":[],"Value":2,"Enum":"ThreadPoolConfig"},{"type":"EnumItem","Name":"Threads3","tags":[],"Value":3,"Enum":"ThreadPoolConfig"},{"type":"EnumItem","Name":"Threads4","tags":[],"Value":4,"Enum":"ThreadPoolConfig"},{"type":"EnumItem","Name":"Threads8","tags":[],"Value":8,"Enum":"ThreadPoolConfig"},{"type":"EnumItem","Name":"Threads16","tags":[],"Value":16,"Enum":"ThreadPoolConfig"},{"type":"Enum","Name":"ThrottlingPriority","tags":[]},{"type":"EnumItem","Name":"Extreme","tags":[],"Value":2,"Enum":"ThrottlingPriority"},{"type":"EnumItem","Name":"ElevatedOnServer","tags":[],"Value":1,"Enum":"ThrottlingPriority"},{"type":"EnumItem","Name":"Default","tags":[],"Value":0,"Enum":"ThrottlingPriority"},{"type":"Enum","Name":"TickCountSampleMethod","tags":[]},{"type":"EnumItem","Name":"Fast","tags":[],"Value":0,"Enum":"TickCountSampleMethod"},{"type":"EnumItem","Name":"Benchmark","tags":[],"Value":1,"Enum":"TickCountSampleMethod"},{"type":"EnumItem","Name":"Precise","tags":[],"Value":2,"Enum":"TickCountSampleMethod"},{"type":"Enum","Name":"TopBottom","tags":[]},{"type":"EnumItem","Name":"Top","tags":[],"Value":0,"Enum":"TopBottom"},{"type":"EnumItem","Name":"Center","tags":[],"Value":1,"Enum":"TopBottom"},{"type":"EnumItem","Name":"Bottom","tags":[],"Value":2,"Enum":"TopBottom"},{"type":"Enum","Name":"TouchCameraMovementMode","tags":[]},{"type":"EnumItem","Name":"Default","tags":[],"Value":0,"Enum":"TouchCameraMovementMode"},{"type":"EnumItem","Name":"Follow","tags":[],"Value":2,"Enum":"TouchCameraMovementMode"},{"type":"EnumItem","Name":"Classic","tags":[],"Value":1,"Enum":"TouchCameraMovementMode"},{"type":"Enum","Name":"TouchMovementMode","tags":[]},{"type":"EnumItem","Name":"Default","tags":[],"Value":0,"Enum":"TouchMovementMode"},{"type":"EnumItem","Name":"Thumbstick","tags":[],"Value":1,"Enum":"TouchMovementMode"},{"type":"EnumItem","Name":"DPad","tags":[],"Value":2,"Enum":"TouchMovementMode"},{"type":"EnumItem","Name":"Thumbpad","tags":[],"Value":3,"Enum":"TouchMovementMode"},{"type":"EnumItem","Name":"ClickToMove","tags":[],"Value":4,"Enum":"TouchMovementMode"},{"type":"Enum","Name":"TweenStatus","tags":[]},{"type":"EnumItem","Name":"Canceled","tags":[],"Value":0,"Enum":"TweenStatus"},{"type":"EnumItem","Name":"Completed","tags":[],"Value":1,"Enum":"TweenStatus"},{"type":"Enum","Name":"UiMessageType","tags":[]},{"type":"EnumItem","Name":"UiMessageError","tags":[],"Value":0,"Enum":"UiMessageType"},{"type":"EnumItem","Name":"UiMessageInfo","tags":[],"Value":1,"Enum":"UiMessageType"},{"type":"Enum","Name":"UploadSetting","tags":[]},{"type":"EnumItem","Name":"Never","tags":[],"Value":0,"Enum":"UploadSetting"},{"type":"EnumItem","Name":"Ask","tags":[],"Value":1,"Enum":"UploadSetting"},{"type":"EnumItem","Name":"Always","tags":[],"Value":2,"Enum":"UploadSetting"},{"type":"Enum","Name":"UserCFrame","tags":[]},{"type":"EnumItem","Name":"Head","tags":[],"Value":0,"Enum":"UserCFrame"},{"type":"EnumItem","Name":"LeftHand","tags":[],"Value":1,"Enum":"UserCFrame"},{"type":"EnumItem","Name":"RightHand","tags":[],"Value":2,"Enum":"UserCFrame"},{"type":"Enum","Name":"UserInputState","tags":[]},{"type":"EnumItem","Name":"Begin","tags":[],"Value":0,"Enum":"UserInputState"},{"type":"EnumItem","Name":"Change","tags":[],"Value":1,"Enum":"UserInputState"},{"type":"EnumItem","Name":"End","tags":[],"Value":2,"Enum":"UserInputState"},{"type":"EnumItem","Name":"Cancel","tags":[],"Value":3,"Enum":"UserInputState"},{"type":"EnumItem","Name":"None","tags":[],"Value":4,"Enum":"UserInputState"},{"type":"Enum","Name":"UserInputType","tags":[]},{"type":"EnumItem","Name":"MouseButton1","tags":[],"Value":0,"Enum":"UserInputType"},{"type":"EnumItem","Name":"MouseButton2","tags":[],"Value":1,"Enum":"UserInputType"},{"type":"EnumItem","Name":"MouseButton3","tags":[],"Value":2,"Enum":"UserInputType"},{"type":"EnumItem","Name":"MouseWheel","tags":[],"Value":3,"Enum":"UserInputType"},{"type":"EnumItem","Name":"MouseMovement","tags":[],"Value":4,"Enum":"UserInputType"},{"type":"EnumItem","Name":"Touch","tags":[],"Value":7,"Enum":"UserInputType"},{"type":"EnumItem","Name":"Keyboard","tags":[],"Value":8,"Enum":"UserInputType"},{"type":"EnumItem","Name":"Focus","tags":[],"Value":9,"Enum":"UserInputType"},{"type":"EnumItem","Name":"Accelerometer","tags":[],"Value":10,"Enum":"UserInputType"},{"type":"EnumItem","Name":"Gyro","tags":[],"Value":11,"Enum":"UserInputType"},{"type":"EnumItem","Name":"Gamepad1","tags":[],"Value":12,"Enum":"UserInputType"},{"type":"EnumItem","Name":"Gamepad2","tags":[],"Value":13,"Enum":"UserInputType"},{"type":"EnumItem","Name":"Gamepad3","tags":[],"Value":14,"Enum":"UserInputType"},{"type":"EnumItem","Name":"Gamepad4","tags":[],"Value":15,"Enum":"UserInputType"},{"type":"EnumItem","Name":"Gamepad5","tags":[],"Value":16,"Enum":"UserInputType"},{"type":"EnumItem","Name":"Gamepad6","tags":[],"Value":17,"Enum":"UserInputType"},{"type":"EnumItem","Name":"Gamepad7","tags":[],"Value":18,"Enum":"UserInputType"},{"type":"EnumItem","Name":"Gamepad8","tags":[],"Value":19,"Enum":"UserInputType"},{"type":"EnumItem","Name":"TextInput","tags":[],"Value":20,"Enum":"UserInputType"},{"type":"EnumItem","Name":"None","tags":[],"Value":21,"Enum":"UserInputType"},{"type":"Enum","Name":"VibrationMotor","tags":[]},{"type":"EnumItem","Name":"Large","tags":[],"Value":0,"Enum":"VibrationMotor"},{"type":"EnumItem","Name":"Small","tags":[],"Value":1,"Enum":"VibrationMotor"},{"type":"EnumItem","Name":"LeftTrigger","tags":[],"Value":2,"Enum":"VibrationMotor"},{"type":"EnumItem","Name":"RightTrigger","tags":[],"Value":3,"Enum":"VibrationMotor"},{"type":"EnumItem","Name":"LeftHand","tags":[],"Value":4,"Enum":"VibrationMotor"},{"type":"EnumItem","Name":"RightHand","tags":[],"Value":5,"Enum":"VibrationMotor"},{"type":"Enum","Name":"VideoQualitySettings","tags":[]},{"type":"EnumItem","Name":"LowResolution","tags":[],"Value":0,"Enum":"VideoQualitySettings"},{"type":"EnumItem","Name":"MediumResolution","tags":[],"Value":1,"Enum":"VideoQualitySettings"},{"type":"EnumItem","Name":"HighResolution","tags":[],"Value":2,"Enum":"VideoQualitySettings"},{"type":"Enum","Name":"WaterDirection","tags":[]},{"type":"EnumItem","Name":"NegX","tags":[],"Value":0,"Enum":"WaterDirection"},{"type":"EnumItem","Name":"X","tags":[],"Value":1,"Enum":"WaterDirection"},{"type":"EnumItem","Name":"NegY","tags":[],"Value":2,"Enum":"WaterDirection"},{"type":"EnumItem","Name":"Y","tags":[],"Value":3,"Enum":"WaterDirection"},{"type":"EnumItem","Name":"NegZ","tags":[],"Value":4,"Enum":"WaterDirection"},{"type":"EnumItem","Name":"Z","tags":[],"Value":5,"Enum":"WaterDirection"},{"type":"Enum","Name":"WaterForce","tags":[]},{"type":"EnumItem","Name":"None","tags":[],"Value":0,"Enum":"WaterForce"},{"type":"EnumItem","Name":"Small","tags":[],"Value":1,"Enum":"WaterForce"},{"type":"EnumItem","Name":"Medium","tags":[],"Value":2,"Enum":"WaterForce"},{"type":"EnumItem","Name":"Strong","tags":[],"Value":3,"Enum":"WaterForce"},{"type":"EnumItem","Name":"Max","tags":[],"Value":4,"Enum":"WaterForce"}]
]===]
	return rawApiJson
end

function getCurrentApiJson()
	local jsonStr = nil

	local success, err = pcall(function()
		jsonStr = httpGet(apiUrl)
	end)
	if success then
		return jsonStr
	else
		return getLocalApiJson()
	end
end

function splitStringIntoChunks(jsonStr)
	-- Splits up a string into a table with a given size
	local t = {}
	for i = 1, math.ceil(string.len(jsonStr)/maxChunkSize) do
		local str = jsonStr:sub((i-1)*maxChunkSize+1, i*maxChunkSize)
		table.insert(t, str)
	end
	return t
end

local jsonToParse = getCurrentApiJson()
local apiChunks = splitStringIntoChunks(jsonToParse)

function getRbxApi()
--[[
	Api.Classes
	Api.Enums
	Api.GetProperties(className)
	Api.IsEnum(valueType)
--]]

-- Services
local HttpService = game:GetService("HttpService")
local ServerStorage = game:GetService("ServerStorage")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Remotes
--local Remotes = ReplicatedStorage:WaitForChild("OnlineStudio"):WaitForChild("Remotes")
--local GetApiJsonFunction = Remotes:WaitForChild("GetApiJson")

-- Functions
local JsonDecode = function(s) return HttpService:JSONDecode(s) end

local function GetApiRemoteFunction(index)
	if (apiChunks[index]) then 
		return apiChunks[index], #apiChunks
	else
		return nil
	end
end

local function getApiJson()
	local apiTable = {}
	local firstPage, pageCount = GetApiRemoteFunction(1)
	table.insert(apiTable, firstPage)
	for i = 2, pageCount do
		--print("Fetching API page # " .. tostring(i))
		local result = GetApiRemoteFunction(i)
		table.insert(apiTable, result)
	end
	return table.concat(apiTable)
end

local json = getApiJson()
local apiDump =  JsonDecode(json)

local Classes = {}
local Enums = {}

local function sortAlphabetic(t, property)
	table.sort(t, 
		function(x,y) return x[property] < y[property]
	end)
end

local function isEnum(name)
	return Enums[name] ~= nil
end

local function getProperties(className)
	local class = Classes[className]
	local properties = {}
	
	if not class then return properties end
	
	while class do
		for _,property in pairs(class.Properties) do
			table.insert(properties, property)
		end
		class = Classes[class.Superclass]
	end
	
	sortAlphabetic(properties, "Name")

	return properties
end

for _,item in pairs(apiDump) do
	local itemType = item.type
-- Classes --
	if (itemType == 'Class') then
		Classes[item.Name] = item
		item.Properties = {}
		item.Functions = {}
		item.YieldFunctions = {}
		item.Events = {}
		item.Callbacks = {}
-- Members --
	elseif (itemType == 'Property') then
		table.insert(Classes[item.Class].Properties, item)
	elseif (itemType == 'Function') then
		table.insert(Classes[item.Class].Functions, item)
	elseif (itemType == 'YieldFunction') then
		table.insert(Classes[item.Class].YieldFunctions, item)
	elseif (itemType == 'Event') then
		table.insert(Classes[item.Class].Events, item)
	elseif (itemType == 'Callback') then
		table.insert(Classes[item.Class].Callbacks, item)
-- Enums --
	elseif (itemType == 'Enum') then
		Enums[item.Name] = item
		item.EnumItems = {}
	elseif (itemType == 'EnumItem') then
		Enums[item.Enum].EnumItems[item.Name] = item
	end
end

return {
	Classes = Classes;
	Enums = Enums;
	GetProperties = getProperties;
	IsEnum = isEnum;
}
end

-- Modules
local Permissions = {CanEdit = true}
local RbxApi = getRbxApi()

--[[
	RbxApi.Classes
	RbxApi.Enums
	RbxApi.GetProperties(className)
	RbxApi.IsEnum(valueType)
--]]

-- Styles

local function CreateColor3(r, g, b) return Color3.new(r/255,g/255,b/255) end

local Styles = {
	Font = Enum.Font.Arial;
	Margin = 5;
	Black = CreateColor3(0,0,0);
	White = CreateColor3(24,24,24);
}

local Row = {
	Font = Styles.Font;
	FontSize = Enum.FontSize.Size14;
	TextXAlignment = Enum.TextXAlignment.Left;
	TextColor = Color3.fromRGB(244,244,244);
	TextColorOver = Color3.fromRGB(244,244,244);
	TextLockedColor = CreateColor3(230,230,230);
	Height = 24;
	BorderColor = CreateColor3(216/4,216/4,216/4);
	BackgroundColor = Styles.White;
	BackgroundColorAlternate = CreateColor3(32, 32, 32);
	BackgroundColorMouseover = CreateColor3(40, 40, 40);
	TitleMarginLeft = 15;
}

local DropDown = {
	Font = Styles.Font;
	FontSize = Enum.FontSize.Size14;
	TextColor = CreateColor3(255,255,255);
	TextColorOver = Color3.new(1, 1, 1);
	TextXAlignment = Enum.TextXAlignment.Left;
	Height = 16;
	BackColor = Styles.White;
	BackColorOver = CreateColor3(190, 90, 0);
	BorderColor = CreateColor3(45,45,45);
	BorderSizePixel = 2;
	ArrowColor = CreateColor3(160/2,160/2,160/2);
	ArrowColorOver = Styles.Black;
}

local BrickColors = {
	BoxSize = 13;
	BorderSizePixel = 1;
	BorderColor = CreateColor3(160,160,160);
	FrameColor = CreateColor3(160,160,160);
	Size = 20;
	Padding = 4;
	ColorsPerRow = 8;
	OuterBorder = 1;
	OuterBorderColor = Styles.Black;
}

wait(1)

local Gui = D_E_X
local PropertiesFrame = Gui:WaitForChild("PropertiesFrame")
local ExplorerFrame = Gui:WaitForChild("ExplorerPanel")

local bindGetSelection = ExplorerFrame.GetSelection
local bindSelectionChanged = ExplorerFrame.SelectionChanged
local bindGetApi = PropertiesFrame.GetApi
local bindGetAwait = PropertiesFrame.GetAwaiting
local bindSetAwait = PropertiesFrame.SetAwaiting

local ContentUrl = ContentProvider.BaseUrl .. "asset/?id="

local SettingsRemote = Gui:WaitForChild("SettingsPanel"):WaitForChild("GetSetting")

local propertiesSearch = PropertiesFrame.Header.TextBox

local AwaitingObjectValue = false
local AwaitingObjectObj
local AwaitingObjectProp

function searchingProperties()
	if propertiesSearch.Text ~= "" and propertiesSearch.Text ~= "Search Properties" then
		return true
	end
	return false
end

local function GetSelection()
	local selection = bindGetSelection:Invoke()
	if #selection == 0 then
		return nil
	else
		return selection
	end 
end

-- Number

local function Round(number, decimalPlaces)
	return tonumber(string.format("%." .. (decimalPlaces or 0) .. "f", number))
end

-- Strings

local function Split(str, delimiter)
	local start = 1
	local t = {}
	while true do
		local pos = string.find (str, delimiter, start, true)
		if not pos then
			break
		end
		table.insert (t, string.sub (str, start, pos - 1))
		start = pos + string.len (delimiter)
	end
	table.insert (t, string.sub (str, start))
	return t
end

-- Data Type Handling

local function ToString(value, type)
	if type == "float" then
		return tostring(Round(value,2))
	elseif type == "Content" then
		if string.find(value,"/asset") then
			local match = string.find(value, "=") + 1
			local id = string.sub(value, match)
			return id
		else
			return tostring(value)
		end
	elseif type == "Vector2" then
		local x = value.x
		local y = value.y
		return string.format("%g, %g", x,y)
	elseif type == "Vector3" then
		local x = value.x
		local y = value.y
		local z = value.z
		return string.format("%g, %g, %g", x,y,z)
	elseif type == "Color3" then
		local r = value.r
		local g = value.g
		local b = value.b
		return string.format("%d, %d, %d", r*255,g*255,b*255)
	elseif type == "UDim2" then
		local xScale = value.X.Scale
		local xOffset = value.X.Offset
		local yScale = value.Y.Scale
		local yOffset = value.Y.Offset
		return string.format("{%d, %d}, {%d, %d}", xScale, xOffset, yScale, yOffset)
	else
		return tostring(value)
	end
end

local function ToValue(value,type)
	if type == "Vector2" then
		local list = Split(value,",")
		if #list < 2 then return nil end
		local x = tonumber(list[1]) or 0
		local y = tonumber(list[2]) or 0
		return Vector2.new(x,y)
	elseif type == "Vector3" then
		local list = Split(value,",")
		if #list < 3 then return nil end
		local x = tonumber(list[1]) or 0
		local y = tonumber(list[2]) or 0
		local z = tonumber(list[3]) or 0
		return Vector3.new(x,y,z)
	elseif type == "Color3" then
		local list = Split(value,",")
		if #list < 3 then return nil end
		local r = tonumber(list[1]) or 0
		local g = tonumber(list[2]) or 0
		local b = tonumber(list[3]) or 0
		return Color3.new(r/255,g/255, b/255)
	elseif type == "UDim2" then
		local list = Split(string.gsub(string.gsub(value, "{", ""),"}",""),",")
		if #list < 4 then return nil end
		local xScale = tonumber(list[1]) or 0
		local xOffset = tonumber(list[2]) or 0
		local yScale = tonumber(list[3]) or 0
		local yOffset = tonumber(list[4]) or 0
		return UDim2.new(xScale, xOffset, yScale, yOffset)
	elseif type == "Content" then
		if tonumber(value) ~= nil then
			value = ContentUrl .. value
		end
		return value
	elseif type == "float" or type == "int" or type == "double" then
		return tonumber(value)
	elseif type == "string" then
		return value
	elseif type == "NumberRange" then
		local list = Split(value,",")
		if #list == 1 then
			if tonumber(list[1]) == nil then return nil end
			local newVal = tonumber(list[1]) or 0
			return NumberRange.new(newVal)
		end
		if #list < 2 then return nil end
		local x = tonumber(list[1]) or 0
		local y = tonumber(list[2]) or 0
		return NumberRange.new(x,y)
	else
		return nil
	end
end


-- Tables

local function CopyTable(T)
  local t2 = {}
  for k,v in pairs(T) do
    t2[k] = v
  end
  return t2
end

local function SortTable(T)
	table.sort(T, 
		function(x,y) return x.Name < y.Name
	end)
end

-- Spritesheet
local Sprite = {
	Width = 13;
	Height = 13;
}

local Spritesheet = {
	Image = "http://www.roblox.com/asset/?id=128896947";
	Height = 256;
	Width = 256;
}

local Images = {
	"unchecked",
	"checked",
	"unchecked_over",
	"checked_over",
	"unchecked_disabled",
	"checked_disabled"
}

local function SpritePosition(spriteName)
	local x = 0
	local y = 0
	for i,v in pairs(Images) do
		if (v == spriteName) then
			return {x, y}
		end
		x = x + Sprite.Height
		if (x + Sprite.Width) > Spritesheet.Width then
			x = 0
			y = y + Sprite.Height
		end
	end
end

local function GetCheckboxImageName(checked, readOnly, mouseover)
	if checked then
		if readOnly then
			return "checked_disabled"
		elseif mouseover then
			return "checked_over"
		else
			return "checked"
		end
	else
		if readOnly then
			return "unchecked_disabled"
		elseif mouseover then
			return "unchecked_over"
		else
			return "unchecked"
		end
	end
end

local MAP_ID = 418720155

-- Gui Controls --

---- IconMap ----
-- Image size: 256px x 256px
-- Icon size: 16px x 16px
-- Padding between each icon: 2px
-- Padding around image edge: 1px
-- Total icons: 14 x 14 (196)
local Icon do
	local iconMap = 'http://www.roblox.com/asset/?id=' .. MAP_ID
	game:GetService('ContentProvider'):Preload(iconMap)
	local iconDehash do
		-- 14 x 14, 0-based input, 0-based output
		local f=math.floor
		function iconDehash(h)
			return f(h/14%14),f(h%14)
		end
	end

	function Icon(IconFrame,index)
		local row,col = iconDehash(index)
		local mapSize = Vector2.new(256,256)
		local pad,border = 2,1
		local iconSize = 16

		local class = 'Frame'
		if type(IconFrame) == 'string' then
			class = IconFrame
			IconFrame = nil
		end

		if not IconFrame then
			IconFrame = Create(class,{
				Name = "Icon";
				BackgroundTransparency = 1;
				ClipsDescendants = true;
				Create('ImageLabel',{
					Name = "IconMap";
					Active = false;
					BackgroundTransparency = 1;
					Image = iconMap;
					Size = UDim2.new(mapSize.x/iconSize,0,mapSize.y/iconSize,0);
				});
			})
		end

		IconFrame.IconMap.Position = UDim2.new(-col - (pad*(col+1) + border)/iconSize,0,-row - (pad*(row+1) + border)/iconSize,0)
		return IconFrame
	end
end

local function CreateCell()
	local tableCell = Instance.new("Frame")
	tableCell.Size = UDim2.new(0.5, -1, 1, 0)
	tableCell.BackgroundColor3 = Row.BackgroundColor
	tableCell.BorderColor3 = Row.BorderColor
	return tableCell
end
	
local function CreateLabel(readOnly)
	local label = Instance.new("TextLabel")
	label.Font = Row.Font
	label.FontSize = Row.FontSize
	label.TextXAlignment = Row.TextXAlignment
	label.BackgroundTransparency = 1
	
	if readOnly then
		label.TextColor3 = Row.TextLockedColor
	else
		label.TextColor3 = Row.TextColor
	end
	return label
end

local function CreateTextButton(readOnly, onClick)
	local button = Instance.new("TextButton")
	button.Font = Row.Font
	button.FontSize = Row.FontSize
	button.TextXAlignment = Row.TextXAlignment
	button.BackgroundTransparency = 1
	if readOnly then
		button.TextColor3 = Row.TextLockedColor
	else
		button.TextColor3 = Row.TextColor
		button.MouseButton1Click:connect(function()
			onClick()
		end)
	end
	return button
end

local function CreateObject(readOnly)
	local button = Instance.new("TextButton")
	button.Font = Row.Font
	button.FontSize = Row.FontSize
	button.TextXAlignment = Row.TextXAlignment
	button.BackgroundTransparency = 1
	if readOnly then
		button.TextColor3 = Row.TextLockedColor
	else
		button.TextColor3 = Row.TextColor
	end
	local cancel = Create(Icon('ImageButton',177),{
		Name = "Cancel";
		Visible = false;
		Position = UDim2.new(1,-20,0,0);
		Size = UDim2.new(0,20,0,20);
		Parent = button;
	})
	return button
end

local function CreateTextBox(readOnly)
	if readOnly then
		local box = CreateLabel(readOnly)
		return box
	else
		local box = Instance.new("TextBox")
		if not SettingsRemote:Invoke("ClearProps") then
			box.ClearTextOnFocus = false
		end
		box.Font = Row.Font
		box.FontSize = Row.FontSize
		box.TextXAlignment = Row.TextXAlignment
		box.BackgroundTransparency = 1
		box.TextColor3 = Row.TextColor
		return box
	end
end

local function CreateDropDownItem(text, onClick)
	local button = Instance.new("TextButton")
	button.Font = DropDown.Font
	button.FontSize = DropDown.FontSize
	button.TextColor3 = DropDown.TextColor
	button.TextXAlignment = DropDown.TextXAlignment
	button.BackgroundColor3 = DropDown.BackColor
	button.AutoButtonColor = false
	button.BorderSizePixel = 0
	button.Active = true
	button.Text = text
	
	button.MouseEnter:connect(function()
		button.TextColor3 = DropDown.TextColorOver
		button.BackgroundColor3 = DropDown.BackColorOver
	end)
	button.MouseLeave:connect(function()
		button.TextColor3 = DropDown.TextColor
		button.BackgroundColor3 = DropDown.BackColor
	end)
	button.MouseButton1Click:connect(function()
		onClick(text)
	end)	
	return button
end

local function CreateDropDown(choices, currentChoice, readOnly, onClick)
	local frame = Instance.new("Frame")	
	frame.Name = "DropDown"
	frame.Size = UDim2.new(1, 0, 1, 0)
	frame.BackgroundTransparency = 1
	frame.Active = true
	
	local menu = nil
	local arrow = nil
	local expanded = false
	local margin = DropDown.BorderSizePixel;
	
	local button = Instance.new("TextButton")
	button.Font = Row.Font
	button.FontSize = Row.FontSize
	button.TextXAlignment = Row.TextXAlignment
	button.BackgroundTransparency = 1
	button.TextColor3 = Row.TextColor
	if readOnly then
		button.TextColor3 = Row.TextLockedColor
	end
	button.Text = currentChoice
	button.Size = UDim2.new(1, -2 * Styles.Margin, 1, 0)
	button.Position = UDim2.new(0, Styles.Margin, 0, 0)
	button.Parent = frame
	
	local function showArrow(color)
		if arrow then arrow:Destroy() end
		
		local graphicTemplate = Create('Frame',{
			Name="Graphic";
			BorderSizePixel = 0;
			BackgroundColor3 = Color3.new(1, 1, 1);
		})
		local graphicSize = 16/2
		
		arrow = ArrowGraphic(graphicSize,'Down',true,graphicTemplate)
		arrow.Position = UDim2.new(1,-graphicSize * 2,0.5,-graphicSize/2)
		arrow.Parent = frame
	end
	
	local function hideMenu()
		expanded = false
		showArrow(DropDown.ArrowColor)
		if menu then menu:Destroy() end
	end
	
	local function showMenu()
		expanded = true
		menu = Instance.new("Frame")
		menu.Size = UDim2.new(1, -2 * margin, 0, #choices * DropDown.Height)
		menu.Position = UDim2.new(0, margin, 0, Row.Height + margin)
		menu.BackgroundTransparency = 0
		menu.BackgroundColor3 = DropDown.BackColor
		menu.BorderColor3 = DropDown.BorderColor
		menu.BorderSizePixel = DropDown.BorderSizePixel
		menu.Active = true
		menu.ZIndex = 5
		menu.Parent = frame
		
		local parentFrameHeight = menu.Parent.Parent.Parent.Parent.Size.Y.Offset
		local rowHeight = menu.Parent.Parent.Parent.Position.Y.Offset
		if (rowHeight + menu.Size.Y.Offset) > math.max(parentFrameHeight,PropertiesFrame.AbsoluteSize.y) then
			menu.Position = UDim2.new(0, margin, 0, -1 * (#choices * DropDown.Height) - margin)
		end
			
		local function choice(name)
			onClick(name)
			hideMenu()
		end
		
		for i,name in pairs(choices) do
			local option = CreateDropDownItem(name, function()
				choice(name)
			end)
			option.Size = UDim2.new(1, 0, 0, 16)
			option.Position = UDim2.new(0, 0, 0, (i - 1) * DropDown.Height)
			option.ZIndex = menu.ZIndex
			option.Parent = menu
		end
	end
	
	showArrow(DropDown.ArrowColor)
	
	if not readOnly then
		
		button.MouseEnter:connect(function()
			button.TextColor3 = Row.TextColor
			showArrow(DropDown.ArrowColorOver)
		end)
		button.MouseLeave:connect(function()
			button.TextColor3 = Row.TextColor
			if not expanded then
				showArrow(DropDown.ArrowColor)
			end
		end)
		button.MouseButton1Click:connect(function()
			if expanded then
				hideMenu()
			else
				showMenu()
			end
		end)
	end
	
	return frame,button
end

local function CreateBrickColor(readOnly, onClick)
	local frame = Instance.new("Frame")
	frame.Size = UDim2.new(1,0,1,0)
	frame.BackgroundTransparency = 1
	
	local colorPalette = Instance.new("Frame")
	colorPalette.BackgroundTransparency = 0
	colorPalette.SizeConstraint = Enum.SizeConstraint.RelativeXX
	colorPalette.Size = UDim2.new(1, -2 * BrickColors.OuterBorder, 1, -2 * BrickColors.OuterBorder)
	colorPalette.BorderSizePixel = BrickColors.BorderSizePixel
	colorPalette.BorderColor3 = BrickColors.BorderColor
	colorPalette.Position = UDim2.new(0, BrickColors.OuterBorder, 0, BrickColors.OuterBorder + Row.Height)
	colorPalette.ZIndex = 5
	colorPalette.Visible = false
	colorPalette.BorderSizePixel = BrickColors.OuterBorder
	colorPalette.BorderColor3 = BrickColors.OuterBorderColor
	colorPalette.Parent = frame
	
	local function show()
		colorPalette.Visible = true
	end
	
	local function hide()
		colorPalette.Visible = false
	end
	
	local function toggle()
		colorPalette.Visible = not colorPalette.Visible
	end
	
	local colorBox = Instance.new("TextButton", frame)
	colorBox.Position = UDim2.new(0, Styles.Margin, 0, Styles.Margin)
	colorBox.Size = UDim2.new(0, BrickColors.BoxSize, 0, BrickColors.BoxSize)
	colorBox.Text = ""
	colorBox.MouseButton1Click:connect(function()
		if not readOnly then
			toggle()
		end
	end)
	
	if readOnly then
		colorBox.AutoButtonColor = false
	end
	
	local spacingBefore = (Styles.Margin * 2) + BrickColors.BoxSize
	
	local propertyLabel = CreateTextButton(readOnly, function()
		if not readOnly then
			toggle()
		end
	end)
	propertyLabel.Size = UDim2.new(1, (-1 * spacingBefore) - Styles.Margin, 1, 0)
	propertyLabel.Position = UDim2.new(0, spacingBefore, 0, 0)
	propertyLabel.Parent = frame
	
	local size = (1 / BrickColors.ColorsPerRow)
	
	for index = 0, 127 do
		local brickColor = BrickColor.palette(index)
		local color3 = brickColor.Color
		
		local x = size * (index % BrickColors.ColorsPerRow)
		local y = size * math.floor(index / BrickColors.ColorsPerRow)
	
		local brickColorBox = Instance.new("TextButton")
		brickColorBox.Text = ""
		brickColorBox.Size = UDim2.new(size,0,size,0)
		brickColorBox.BackgroundColor3 = color3
		brickColorBox.Position = UDim2.new(x, 0, y, 0)
		brickColorBox.ZIndex = colorPalette.ZIndex
		brickColorBox.Parent = colorPalette
	
		brickColorBox.MouseButton1Click:connect(function()
			hide()
			onClick(brickColor)
		end)
	end
	
	return frame,propertyLabel,colorBox
end

local function CreateColor3Control(readOnly, onClick)
	local frame = Instance.new("Frame")
	frame.Size = UDim2.new(1,0,1,0)
	frame.BackgroundTransparency = 1
	
	local colorBox = Instance.new("TextButton", frame)
	colorBox.Position = UDim2.new(0, Styles.Margin, 0, Styles.Margin)
	colorBox.Size = UDim2.new(0, BrickColors.BoxSize, 0, BrickColors.BoxSize)
	colorBox.Text = ""
	colorBox.AutoButtonColor = false
	
	local spacingBefore = (Styles.Margin * 2) + BrickColors.BoxSize
	local box = CreateTextBox(readOnly)
	box.Size = UDim2.new(1, (-1 * spacingBefore) - Styles.Margin, 1, 0)
	box.Position = UDim2.new(0, spacingBefore, 0, 0)
	box.Parent = frame
	
	return frame,box,colorBox
end

function CreateCheckbox(value, readOnly, onClick)
	local checked = value
	local mouseover = false

	local checkboxFrame = Instance.new("ImageButton")
	checkboxFrame.Size = UDim2.new(0, Sprite.Width, 0, Sprite.Height)
	checkboxFrame.BackgroundTransparency = 1
	checkboxFrame.ClipsDescendants = true
	--checkboxFrame.Position = UDim2.new(0, Styles.Margin, 0, Styles.Margin)

	local spritesheetImage = Instance.new("ImageLabel", checkboxFrame)
	spritesheetImage.Name = "SpritesheetImageLabel"
	spritesheetImage.Size = UDim2.new(0, Spritesheet.Width, 0, Spritesheet.Height)
	spritesheetImage.Image = Spritesheet.Image
	spritesheetImage.BackgroundTransparency = 1
	
	local function updateSprite()
		local spriteName = GetCheckboxImageName(checked, readOnly, mouseover)
		local spritePosition = SpritePosition(spriteName)
		spritesheetImage.Position = UDim2.new(0, -1 * spritePosition[1], 0, -1 * spritePosition[2])
	end
	
	local function setValue(val)
		checked = val
		updateSprite()
	end

	if not readOnly then
		checkboxFrame.MouseEnter:connect(function() mouseover = true updateSprite() end)
		checkboxFrame.MouseLeave:connect(function() mouseover = false updateSprite() end)
		checkboxFrame.MouseButton1Click:connect(function()
			onClick(checked)
		end)
	end
	
	updateSprite()
	
	return checkboxFrame, setValue
end



-- Code for handling controls of various data types --

local Controls = {}

Controls["default"] = function(object, propertyData, readOnly)
	local propertyName = propertyData["Name"]
	local propertyType = propertyData["ValueType"]
	
	local box = CreateTextBox(readOnly)
	box.Size = UDim2.new(1, -2 * Styles.Margin, 1, 0)
	box.Position = UDim2.new(0, Styles.Margin, 0, 0)

	local function update()
		local value = object[propertyName]
		box.Text = ToString(value, propertyType)
	end
	
	if not readOnly then
		box.FocusLost:connect(function(enterPressed)
			Set(object, propertyData, ToValue(box.Text,propertyType))
			update()
		end)
	end
	
	update()
	
	object.Changed:connect(function(property)
		if (property == propertyName) then
			update()
		end
	end)
	
	return box
end

Controls["bool"] = function(object, propertyData, readOnly)
	local propertyName = propertyData["Name"]
	local checked = object[propertyName]
	
	local checkbox, setValue = CreateCheckbox(checked, readOnly, function(value)
		Set(object, propertyData, not checked)
	end)
	checkbox.Position = UDim2.new(0, Styles.Margin, 0, Styles.Margin)
	
	setValue(checked)
	
	local function update()
		checked = object[propertyName]
		setValue(checked)
	end
	
	object.Changed:connect(function(property)
		if (property == propertyName) then
			update()
		end
	end)
	
	if object:IsA("BoolValue") then
		object.Changed:connect(function(val)
			update()
		end)
	end
	
	update()
	
	return checkbox
end

Controls["BrickColor"] = function(object, propertyData, readOnly)
	local propertyName = propertyData["Name"]

	local frame,label,brickColorBox = CreateBrickColor(readOnly, function(brickColor)
		Set(object, propertyData, brickColor)
	end)
	
	local function update()
		local value = object[propertyName]
		brickColorBox.BackgroundColor3 = value.Color
		label.Text = tostring(value)
	end
	
	update()
	
	object.Changed:connect(function(property)
		if (property == propertyName) then
			update()
		end
	end)
	
	return frame
end

Controls["Color3"] = function(object, propertyData, readOnly)
	local propertyName = propertyData["Name"]

	local frame,textBox,colorBox = CreateColor3Control(readOnly)
	
	textBox.FocusLost:connect(function(enterPressed)
		Set(object, propertyData, ToValue(textBox.Text,"Color3"))
		local value = object[propertyName]
		colorBox.BackgroundColor3 = value
		textBox.Text = ToString(value, "Color3")
	end)
			
	local function update()
		local value = object[propertyName]
		colorBox.BackgroundColor3 = value
		textBox.Text = ToString(value, "Color3")
	end
	
	update()
	
	object.Changed:connect(function(property)
		if (property == propertyName) then
			update()
		end
	end)
	
	return frame
end

Controls["Enum"] = function(object, propertyData, readOnly)
	local propertyName = propertyData["Name"]
	local propertyType = propertyData["ValueType"]
	
	local enumName = object[propertyName].Name
	
	local enumNames = {}
	for _,enum in pairs(Enum[tostring(propertyType)]:GetEnumItems()) do
		table.insert(enumNames, enum.Name)
	end
	
	local dropdown, propertyLabel = CreateDropDown(enumNames, enumName, readOnly, function(value)
		Set(object, propertyData, value)
	end)
	--dropdown.Parent = frame
	
	local function update()
		local value = object[propertyName].Name
		propertyLabel.Text = tostring(value)
	end
	
	update()
	
	object.Changed:connect(function(property)
		if (property == propertyName) then
			update()
		end
	end)
	
	return dropdown
end

Controls["Object"] = function(object, propertyData, readOnly)
	local propertyName = propertyData["Name"]
	local propertyType = propertyData["ValueType"]
	
	local box = CreateObject(readOnly,function()end)
	box.Size = UDim2.new(1, -2 * Styles.Margin, 1, 0)
	box.Position = UDim2.new(0, Styles.Margin, 0, 0)

	local function update()
		if AwaitingObjectObj == object then
			if AwaitingObjectValue == true then
				box.Text = "Select an Object"
				return
			end
		end
		local value = object[propertyName]
		box.Text = ToString(value, propertyType)
	end
	
	if not readOnly then
		box.MouseButton1Click:connect(function()
			if AwaitingObjectValue then
				AwaitingObjectValue = false
				update()
				return
			end
			AwaitingObjectValue = true
			AwaitingObjectObj = object
			AwaitingObjectProp = propertyData
			box.Text = "Select an Object"
		end)
		
		box.Cancel.Visible = true
		box.Cancel.MouseButton1Click:connect(function()
			object[propertyName] = nil
		end)
	end
	
	update()
	
	object.Changed:connect(function(property)
		if (property == propertyName) then
			update()
		end
	end)
	
	if object:IsA("ObjectValue") then
		object.Changed:connect(function(val)
			update()
		end)
	end
	
	return box
end

function GetControl(object, propertyData, readOnly)
	local propertyType = propertyData["ValueType"]
	local control = nil
	
	if Controls[propertyType] then
		control = Controls[propertyType](object, propertyData, readOnly)
	elseif RbxApi.IsEnum(propertyType) then
		control = Controls["Enum"](object, propertyData, readOnly)
	else
		control = Controls["default"](object, propertyData, readOnly)
	end
	return control
end
-- Permissions

function CanEditObject(object)
	local player = Players.LocalPlayer
	local character = player.Character
	return Permissions.CanEdit
end

function CanEditProperty(object,propertyData)
	local tags = propertyData["tags"]
	for _,name in pairs(tags) do
		if name == "readonly" then
			return false
		end
	end
	return CanEditObject(object)
end

--RbxApi
local function PropertyIsHidden(propertyData)
	local tags = propertyData["tags"]
	for _,name in pairs(tags) do
		if name == "deprecated"
			or name == "hidden"
			or name == "writeonly" then
			return true
		end
	end
	return false
end

function Set(object, propertyData, value)
	local propertyName = propertyData["Name"]
	local propertyType = propertyData["ValueType"]
	
	if value == nil then return end
	
	for i,v in pairs(GetSelection()) do
		if CanEditProperty(v,propertyData) then
			pcall(function()
				--print("Setting " .. propertyName .. " to " .. tostring(value))
				v[propertyName] = value
			end)
		end
	end
end

function CreateRow(object, propertyData, isAlternateRow)
	local propertyName = propertyData["Name"]
	local propertyType = propertyData["ValueType"]
	local propertyValue = object[propertyName]
	--rowValue, rowValueType, isAlternate
	local backColor = Row.BackgroundColor;
	if (isAlternateRow) then
		backColor = Row.BackgroundColorAlternate
	end
	
	local readOnly = not CanEditProperty(object, propertyData)
	if propertyType == "Instance" or propertyName == "Parent" then readOnly = true end

	local rowFrame = Instance.new("Frame")
	rowFrame.Size = UDim2.new(1,0,0,Row.Height)
	rowFrame.BackgroundTransparency = 1
	rowFrame.Name = 'Row'

	local propertyLabelFrame = CreateCell()
	propertyLabelFrame.Parent = rowFrame
	propertyLabelFrame.ClipsDescendants = true
	
	local propertyLabel = CreateLabel(readOnly)
	propertyLabel.Text = propertyName
	propertyLabel.Size = UDim2.new(1, -1 * Row.TitleMarginLeft, 1, 0)
	propertyLabel.Position = UDim2.new(0, Row.TitleMarginLeft, 0, 0)
	propertyLabel.Parent = propertyLabelFrame

	local propertyValueFrame = CreateCell()
	propertyValueFrame.Size = UDim2.new(0.5, -1, 1, 0)
	propertyValueFrame.Position = UDim2.new(0.5, 0, 0, 0)
	propertyValueFrame.Parent = rowFrame

	local control = GetControl(object, propertyData, readOnly)
	control.Parent = propertyValueFrame

	rowFrame.MouseEnter:connect(function()
		propertyLabelFrame.BackgroundColor3 = Row.BackgroundColorMouseover
		propertyValueFrame.BackgroundColor3 = Row.BackgroundColorMouseover
	end)
	rowFrame.MouseLeave:connect(function()
		propertyLabelFrame.BackgroundColor3 = backColor
		propertyValueFrame.BackgroundColor3 = backColor
	end)
	
	propertyLabelFrame.BackgroundColor3 = backColor
	propertyValueFrame.BackgroundColor3 = backColor
	
	return rowFrame
end

function ClearPropertiesList()
	for _,instance in pairs(ContentFrame:GetChildren()) do
		instance:Destroy()
	end
end

local selection = Gui:FindFirstChild("Selection", 1)

function displayProperties(props)
	for i,v in pairs(props) do
		pcall(function()
			local a = CreateRow(v.object, v.propertyData, ((numRows % 2) == 0))
			a.Position = UDim2.new(0,0,0,numRows*Row.Height)
			a.Parent = ContentFrame
			numRows = numRows + 1
		end)
	end
end

function checkForDupe(prop,props)
	for i,v in pairs(props) do
		if v.propertyData.Name == prop.Name and v.propertyData.ValueType == prop.ValueType then
			return true
		end
	end
	return false
end

function sortProps(t)
	table.sort(t, 
		function(x,y) return x.propertyData.Name < y.propertyData.Name
	end)
end

function showProperties(obj)
	ClearPropertiesList()
	if obj == nil then return end
	local propHolder = {}
	local foundProps = {}
	numRows = 0
	for _,nextObj in pairs(obj) do
		if not foundProps[nextObj.className] then
			foundProps[nextObj.className] = true
			for i,v in pairs(RbxApi.GetProperties(nextObj.className)) do
				local suc, err = pcall(function()
					if not (PropertyIsHidden(v)) and not checkForDupe(v,propHolder) then
						if string.find(string.lower(v.Name),string.lower(propertiesSearch.Text)) or not searchingProperties() then
							table.insert(propHolder,{propertyData = v, object = nextObj})
						end
					end
				end)
				--[[if not suc then 
					warn("Problem getting the value of property " .. v.Name .. " | " .. err)
				end	--]]
			end
		end
	end
	sortProps(propHolder)
	displayProperties(propHolder)
	ContentFrame.Size = UDim2.new(1, 0, 0, numRows * Row.Height)
	scrollBar.ScrollIndex = 0
	scrollBar.TotalSpace = numRows * Row.Height
	scrollBar.Update()
end

----------------------------------------------------------------
-----------------------SCROLLBAR STUFF--------------------------
----------------------------------------------------------------
----------------------------------------------------------------
local ScrollBarWidth = 16

local ScrollStyles = {
	Background      = Color3.fromRGB(233, 233, 233);
	Border          = Color3.fromRGB(149, 149, 149);
	Selected        = Color3.fromRGB( 63, 119, 189);
	BorderSelected  = Color3.fromRGB( 55, 106, 167);
	Text            = Color3.fromRGB(  0,   0,   0);
	TextDisabled    = Color3.fromRGB(128, 128, 128);
	TextSelected    = Color3.fromRGB(255, 255, 255);
	Button          = Color3.fromRGB( 35,  35,  35);
	ButtonBorder    = Color3.fromRGB(149, 149, 149);
	ButtonSelected  = Color3.fromRGB(255,   0,   0);
	Field           = Color3.fromRGB(255, 255, 255);
	FieldBorder     = Color3.fromRGB(191, 191, 191);
	TitleBackground = Color3.fromRGB(178, 178, 178);
}
do
	local ZIndexLock = {}
	function SetZIndex(object,z)
		if not ZIndexLock[object] then
			ZIndexLock[object] = true
			if object:IsA'GuiObject' then
				object.ZIndex = z
			end
			local children = object:GetChildren()
			for i = 1,#children do
				SetZIndex(children[i],z)
			end
			ZIndexLock[object] = nil
		end
	end
end
function SetZIndexOnChanged(object)
	return object.Changed:connect(function(p)
		if p == "ZIndex" then
			SetZIndex(object,object.ZIndex)
		end
	end)
end
function Create(ty,data)
	local obj
	if type(ty) == 'string' then
		obj = Instance.new(ty)
	else
		obj = ty
	end
	for k, v in pairs(data) do
		if type(k) == 'number' then
			v.Parent = obj
		else
			obj[k] = v
		end
	end
	return obj
end
-- returns the ascendant ScreenGui of an object
function GetScreen(screen)
	if screen == nil then return nil end
	while not screen:IsA("ScreenGui") do
		screen = screen.Parent
		if screen == nil then return nil end
	end
	return screen
end
-- AutoButtonColor doesn't always reset properly
function ResetButtonColor(button)
	local active = button.Active
	button.Active = not active
	button.Active = active
end

function ArrowGraphic(size,dir,scaled,template)
	local Frame = Create('Frame',{
		Name = "Arrow Graphic";
		BorderSizePixel = 0;
		Size = UDim2.new(0,size,0,size);
		Transparency = 1;
	})
	if not template then
		template = Instance.new("Frame")
		template.BorderSizePixel = 0
	end

	template.BackgroundColor3 = Color3.new(1, 1, 1);

	local transform
	if dir == nil or dir == 'Up' then
		function transform(p,s) return p,s end
	elseif dir == 'Down' then
		function transform(p,s) return UDim2.new(0,p.X.Offset,0,size-p.Y.Offset-1),s end
	elseif dir == 'Left' then
		function transform(p,s) return UDim2.new(0,p.Y.Offset,0,p.X.Offset),UDim2.new(0,s.Y.Offset,0,s.X.Offset) end
	elseif dir == 'Right' then
		function transform(p,s) return UDim2.new(0,size-p.Y.Offset-1,0,p.X.Offset),UDim2.new(0,s.Y.Offset,0,s.X.Offset) end
	end

	local scale
	if scaled then
		function scale(p,s) return UDim2.new(p.X.Offset/size,0,p.Y.Offset/size,0),UDim2.new(s.X.Offset/size,0,s.Y.Offset/size,0) end
	else
		function scale(p,s) return p,s end
	end

	local o = math.floor(size/4)
	if size%2 == 0 then
		local n = size/2-1
		for i = 0,n do
			local t = template:Clone()
			local p,s = scale(transform(
				UDim2.new(0,n-i,0,o+i),
				UDim2.new(0,(i+1)*2,0,1)
			))
			t.Position = p
			t.Size = s
			t.Parent = Frame
		end
	else
		local n = (size-1)/2
		for i = 0,n do
			local t = template:Clone()
			local p,s = scale(transform(
				UDim2.new(0,n-i,0,o+i),
				UDim2.new(0,i*2+1,0,1)
			))
			t.Position = p
			t.Size = s
			t.Parent = Frame
		end
	end
	if size%4 > 1 then
		local t = template:Clone()
		local p,s = scale(transform(
			UDim2.new(0,0,0,size-o-1),
			UDim2.new(0,size,0,1)
		))
		t.Position = p
		t.Size = s
		t.Parent = Frame
	end

	for i,v in pairs(Frame:GetChildren()) do
		v.BackgroundColor3 = Color3.new(1, 1, 1);
	end

	return Frame
end

function GripGraphic(size,dir,spacing,scaled,template)
	local Frame = Create('Frame',{
		Name = "Grip Graphic";
		BorderSizePixel = 0;
		Size = UDim2.new(0,size.x,0,size.y);
		Transparency = 1;
	})
	if not template then
		template = Instance.new("Frame")
		template.BorderSizePixel = 0
	end

	spacing = spacing or 2

	local scale
	if scaled then
		function scale(p) return UDim2.new(p.X.Offset/size.x,0,p.Y.Offset/size.y,0) end
	else
		function scale(p) return p end
	end

	if dir == 'Vertical' then
		for i=0,size.x-1,spacing do
			local t = template:Clone()
			t.Size = scale(UDim2.new(0,1,0,size.y))
			t.Position = scale(UDim2.new(0,i,0,0))
			t.Parent = Frame
		end
	elseif dir == nil or dir == 'Horizontal' then
		for i=0,size.y-1,spacing do
			local t = template:Clone()
			t.Size = scale(UDim2.new(0,size.x,0,1))
			t.Position = scale(UDim2.new(0,0,0,i))
			t.Parent = Frame
		end
	end

	return Frame
end

do
	local mt = {
		__index = {
			GetScrollPercent = function(self)
				return self.ScrollIndex/(self.TotalSpace-self.VisibleSpace)
			end;
			CanScrollDown = function(self)
				return self.ScrollIndex + self.VisibleSpace < self.TotalSpace
			end;
			CanScrollUp = function(self)
				return self.ScrollIndex > 0
			end;
			ScrollDown = function(self)
				self.ScrollIndex = self.ScrollIndex + self.PageIncrement
				self:Update()
			end;
			ScrollUp = function(self)
				self.ScrollIndex = self.ScrollIndex - self.PageIncrement
				self:Update()
			end;
			ScrollTo = function(self,index)
				self.ScrollIndex = index
				self:Update()
			end;
			SetScrollPercent = function(self,percent)
				self.ScrollIndex = math.floor((self.TotalSpace - self.VisibleSpace)*percent + 0.5)
				self:Update()
			end;
		};
	}
	mt.__index.CanScrollRight = mt.__index.CanScrollDown
	mt.__index.CanScrollLeft = mt.__index.CanScrollUp
	mt.__index.ScrollLeft = mt.__index.ScrollUp
	mt.__index.ScrollRight = mt.__index.ScrollDown

	function ScrollBar(horizontal)
		-- create row scroll bar
		local ScrollFrame = Create('Frame',{
			Name = "ScrollFrame";
			Position = horizontal and UDim2.new(0,0,1,-ScrollBarWidth) or UDim2.new(1,-ScrollBarWidth,0,0);
			Size = horizontal and UDim2.new(1,0,0,ScrollBarWidth) or UDim2.new(0,ScrollBarWidth,1,0);
			BackgroundTransparency = 1;
			Create('ImageButton',{
				Name = "ScrollDown";
				Position = horizontal and UDim2.new(1,-ScrollBarWidth,0,0) or UDim2.new(0,0,1,-ScrollBarWidth);
				Size = UDim2.new(0, ScrollBarWidth, 0, ScrollBarWidth);
				BackgroundColor3 = ScrollStyles.Button;
				BorderColor3 = ScrollStyles.Border;
				BorderSizePixel = 0;
			});
			Create('ImageButton',{
				Name = "ScrollUp";
				Size = UDim2.new(0, ScrollBarWidth, 0, ScrollBarWidth);
				BackgroundColor3 = ScrollStyles.Button;
				BorderColor3 = ScrollStyles.Border;
				BorderSizePixel = 0;
			});
			Create('ImageButton',{
				Name = "ScrollBar";
				Size = horizontal and UDim2.new(1,-ScrollBarWidth*2,1,0) or UDim2.new(1,0,1,-ScrollBarWidth*2);
				Position = horizontal and UDim2.new(0,ScrollBarWidth,0,0) or UDim2.new(0,0,0,ScrollBarWidth);
				AutoButtonColor = false;
				BackgroundColor3 = Color3.fromRGB(20, 20, 20);
				BorderColor3 = ScrollStyles.Border;
				BorderSizePixel = 0;
				Create('ImageButton',{
					Name = "ScrollThumb";
					AutoButtonColor = false;
					Size = UDim2.new(0, ScrollBarWidth, 0, ScrollBarWidth);
					BackgroundColor3 = ScrollStyles.Button;
					BorderColor3 = ScrollStyles.Border;
					BorderSizePixel = 0;
				});
			});
		})

		local graphicTemplate = Create('Frame',{
			Name="Graphic";
			BorderSizePixel = 0;
			BackgroundColor3 = Color3.new(1, 1, 1);
		})
		local graphicSize = ScrollBarWidth/2

		local ScrollDownFrame = ScrollFrame.ScrollDown
			local ScrollDownGraphic = ArrowGraphic(graphicSize,horizontal and 'Right' or 'Down',true,graphicTemplate)
			ScrollDownGraphic.Position = UDim2.new(0.5,-graphicSize/2,0.5,-graphicSize/2)
			ScrollDownGraphic.Parent = ScrollDownFrame
		local ScrollUpFrame = ScrollFrame.ScrollUp
			local ScrollUpGraphic = ArrowGraphic(graphicSize,horizontal and 'Left' or 'Up',true,graphicTemplate)
			ScrollUpGraphic.Position = UDim2.new(0.5,-graphicSize/2,0.5,-graphicSize/2)
			ScrollUpGraphic.Parent = ScrollUpFrame
		local ScrollBarFrame = ScrollFrame.ScrollBar
		local ScrollThumbFrame = ScrollBarFrame.ScrollThumb
		do
			local size = ScrollBarWidth*3/8
			local Decal = GripGraphic(Vector2.new(size,size),horizontal and 'Vertical' or 'Horizontal',2,graphicTemplate)
			Decal.Position = UDim2.new(0.5,-size/2,0.5,-size/2)
			Decal.Parent = ScrollThumbFrame
		end

		local MouseDrag = Create('ImageButton',{
			Name = "MouseDrag";
			Position = UDim2.new(-0.25,0,-0.25,0);
			Size = UDim2.new(1.5,0,1.5,0);
			Transparency = 1;
			AutoButtonColor = false;
			Active = true;
			ZIndex = 10;
		})

		local Class = setmetatable({
			GUI = ScrollFrame;
			ScrollIndex = 0;
			VisibleSpace = 0;
			TotalSpace = 0;
			PageIncrement = 1;
		},mt)

		local UpdateScrollThumb
		if horizontal then
			function UpdateScrollThumb()
				ScrollThumbFrame.Size = UDim2.new(Class.VisibleSpace/Class.TotalSpace,0,0,ScrollBarWidth)
				if ScrollThumbFrame.AbsoluteSize.x < ScrollBarWidth then
					ScrollThumbFrame.Size = UDim2.new(0,ScrollBarWidth,0,ScrollBarWidth)
				end
				local barSize = ScrollBarFrame.AbsoluteSize.x
				ScrollThumbFrame.Position = UDim2.new(Class:GetScrollPercent()*(barSize - ScrollThumbFrame.AbsoluteSize.x)/barSize,0,0,0)
			end
		else
			function UpdateScrollThumb()
				ScrollThumbFrame.Size = UDim2.new(0,ScrollBarWidth,Class.VisibleSpace/Class.TotalSpace,0)
				if ScrollThumbFrame.AbsoluteSize.y < ScrollBarWidth then
					ScrollThumbFrame.Size = UDim2.new(0,ScrollBarWidth,0,ScrollBarWidth)
				end
				local barSize = ScrollBarFrame.AbsoluteSize.y
				ScrollThumbFrame.Position = UDim2.new(0,0,Class:GetScrollPercent()*(barSize - ScrollThumbFrame.AbsoluteSize.y)/barSize,0)
			end
		end

		local lastDown
		local lastUp
		local scrollStyle = {BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=0}
		local scrollStyle_ds = {BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=0.7}

		local function Update()
			local t = Class.TotalSpace
			local v = Class.VisibleSpace
			local s = Class.ScrollIndex
			if v <= t then
				if s > 0 then
					if s + v > t then
						Class.ScrollIndex = t - v
					end
				else
					Class.ScrollIndex = 0
				end
			else
				Class.ScrollIndex = 0
			end

			if Class.UpdateCallback then
				if Class.UpdateCallback(Class) == false then
					return
				end
			end

			local down = Class:CanScrollDown()
			local up = Class:CanScrollUp()
			if down ~= lastDown then
				lastDown = down
				ScrollDownFrame.Active = down
				ScrollDownFrame.AutoButtonColor = down
				local children = ScrollDownGraphic:GetChildren()
				local style = down and scrollStyle or scrollStyle_ds
				for i = 1,#children do
					Create(children[i],style)
				end
			end
			if up ~= lastUp then
				lastUp = up
				ScrollUpFrame.Active = up
				ScrollUpFrame.AutoButtonColor = up
				local children = ScrollUpGraphic:GetChildren()
				local style = up and scrollStyle or scrollStyle_ds
				for i = 1,#children do
					Create(children[i],style)
				end
			end
			ScrollThumbFrame.Visible = down or up
			UpdateScrollThumb()
		end
		Class.Update = Update

		SetZIndexOnChanged(ScrollFrame)

		local scrollEventID = 0
		ScrollDownFrame.MouseButton1Down:connect(function()
			scrollEventID = tick()
			local current = scrollEventID
			local up_con
			up_con = MouseDrag.MouseButton1Up:connect(function()
				scrollEventID = tick()
				MouseDrag.Parent = nil
				ResetButtonColor(ScrollDownFrame)
				up_con:disconnect(); drag = nil
			end)
			MouseDrag.Parent = GetScreen(ScrollFrame)
			Class:ScrollDown()
			wait(0.2) -- delay before auto scroll
			while scrollEventID == current do
				Class:ScrollDown()
				if not Class:CanScrollDown() then break end
				wait()
			end
		end)

		ScrollDownFrame.MouseButton1Up:connect(function()
			scrollEventID = tick()
		end)

		ScrollUpFrame.MouseButton1Down:connect(function()
			scrollEventID = tick()
			local current = scrollEventID
			local up_con
			up_con = MouseDrag.MouseButton1Up:connect(function()
				scrollEventID = tick()
				MouseDrag.Parent = nil
				ResetButtonColor(ScrollUpFrame)
				up_con:disconnect(); drag = nil
			end)
			MouseDrag.Parent = GetScreen(ScrollFrame)
			Class:ScrollUp()
			wait(0.2)
			while scrollEventID == current do
				Class:ScrollUp()
				if not Class:CanScrollUp() then break end
				wait()
			end
		end)

		ScrollUpFrame.MouseButton1Up:connect(function()
			scrollEventID = tick()
		end)

		if horizontal then
			ScrollBarFrame.MouseButton1Down:connect(function(x,y)
				scrollEventID = tick()
				local current = scrollEventID
				local up_con
				up_con = MouseDrag.MouseButton1Up:connect(function()
					scrollEventID = tick()
					MouseDrag.Parent = nil
					ResetButtonColor(ScrollUpFrame)
					up_con:disconnect(); drag = nil
				end)
				MouseDrag.Parent = GetScreen(ScrollFrame)
				if x > ScrollThumbFrame.AbsolutePosition.x then
					Class:ScrollTo(Class.ScrollIndex + Class.VisibleSpace)
					wait(0.2)
					while scrollEventID == current do
						if x < ScrollThumbFrame.AbsolutePosition.x + ScrollThumbFrame.AbsoluteSize.x then break end
						Class:ScrollTo(Class.ScrollIndex + Class.VisibleSpace)
						wait()
					end
				else
					Class:ScrollTo(Class.ScrollIndex - Class.VisibleSpace)
					wait(0.2)
					while scrollEventID == current do
						if x > ScrollThumbFrame.AbsolutePosition.x then break end
						Class:ScrollTo(Class.ScrollIndex - Class.VisibleSpace)
						wait()
					end
				end
			end)
		else
			ScrollBarFrame.MouseButton1Down:connect(function(x,y)
				scrollEventID = tick()
				local current = scrollEventID
				local up_con
				up_con = MouseDrag.MouseButton1Up:connect(function()
					scrollEventID = tick()
					MouseDrag.Parent = nil
					ResetButtonColor(ScrollUpFrame)
					up_con:disconnect(); drag = nil
				end)
				MouseDrag.Parent = GetScreen(ScrollFrame)
				if y > ScrollThumbFrame.AbsolutePosition.y then
					Class:ScrollTo(Class.ScrollIndex + Class.VisibleSpace)
					wait(0.2)
					while scrollEventID == current do
						if y < ScrollThumbFrame.AbsolutePosition.y + ScrollThumbFrame.AbsoluteSize.y then break end
						Class:ScrollTo(Class.ScrollIndex + Class.VisibleSpace)
						wait()
					end
				else
					Class:ScrollTo(Class.ScrollIndex - Class.VisibleSpace)
					wait(0.2)
					while scrollEventID == current do
						if y > ScrollThumbFrame.AbsolutePosition.y then break end
						Class:ScrollTo(Class.ScrollIndex - Class.VisibleSpace)
						wait()
					end
				end
			end)
		end

		if horizontal then
			ScrollThumbFrame.MouseButton1Down:connect(function(x,y)
				scrollEventID = tick()
				local mouse_offset = x - ScrollThumbFrame.AbsolutePosition.x
				local drag_con
				local up_con
				drag_con = MouseDrag.MouseMoved:connect(function(x,y)
					if not game:GetService'UserInputService':IsMouseButtonPressed'MouseButton1' then
						scrollEventID = tick()
						MouseDrag.Parent = nil
						ResetButtonColor(ScrollThumbFrame)
						drag_con:disconnect(); drag_con = nil
						up_con:disconnect(); drag = nil
					end
					local bar_abs_pos = ScrollBarFrame.AbsolutePosition.x
					local bar_drag = ScrollBarFrame.AbsoluteSize.x - ScrollThumbFrame.AbsoluteSize.x
					local bar_abs_one = bar_abs_pos + bar_drag
					x = x - mouse_offset
					x = x < bar_abs_pos and bar_abs_pos or x > bar_abs_one and bar_abs_one or x
					x = x - bar_abs_pos
					Class:SetScrollPercent(x/(bar_drag))
				end)
				up_con = MouseDrag.MouseButton1Up:connect(function()
					scrollEventID = tick()
					MouseDrag.Parent = nil
					ResetButtonColor(ScrollThumbFrame)
					drag_con:disconnect(); drag_con = nil
					up_con:disconnect(); drag = nil
				end)
				MouseDrag.Parent = GetScreen(ScrollFrame)
			end)
		else
			ScrollThumbFrame.MouseButton1Down:connect(function(x,y)
				scrollEventID = tick()
				local mouse_offset = y - ScrollThumbFrame.AbsolutePosition.y
				local drag_con
				local up_con
				drag_con = MouseDrag.MouseMoved:connect(function(x,y)
					if not game:GetService'UserInputService':IsMouseButtonPressed'MouseButton1' then
						scrollEventID = tick()
						MouseDrag.Parent = nil
						ResetButtonColor(ScrollThumbFrame)
						drag_con:disconnect(); drag_con = nil
						up_con:disconnect(); drag = nil
					end
					local bar_abs_pos = ScrollBarFrame.AbsolutePosition.y
					local bar_drag = ScrollBarFrame.AbsoluteSize.y - ScrollThumbFrame.AbsoluteSize.y
					local bar_abs_one = bar_abs_pos + bar_drag
					y = y - mouse_offset
					y = y < bar_abs_pos and bar_abs_pos or y > bar_abs_one and bar_abs_one or y
					y = y - bar_abs_pos
					Class:SetScrollPercent(y/(bar_drag))
				end)
				up_con = MouseDrag.MouseButton1Up:connect(function()
					scrollEventID = tick()
					MouseDrag.Parent = nil
					ResetButtonColor(ScrollThumbFrame)
					drag_con:disconnect(); drag_con = nil
					up_con:disconnect(); drag = nil
				end)
				MouseDrag.Parent = GetScreen(ScrollFrame)
			end)
		end

		function Class:Destroy()
			ScrollFrame:Destroy()
			MouseDrag:Destroy()
			for k in pairs(Class) do
				Class[k] = nil
			end
			setmetatable(Class,nil)
		end

		Update()

		return Class
	end
end

----------------------------------------------------------------
----------------------------------------------------------------
----------------------------------------------------------------
----------------------------------------------------------------

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(1, -1 * ScrollBarWidth, 1, 0)
MainFrame.Position = UDim2.new(0, 0, 0, 0)
MainFrame.BackgroundTransparency = 1
MainFrame.ClipsDescendants = true
MainFrame.Parent = PropertiesFrame

ContentFrame = Instance.new("Frame")
ContentFrame.Name = "ContentFrame"
ContentFrame.Size = UDim2.new(1, 0, 0, 0)
ContentFrame.BackgroundTransparency = 1
ContentFrame.Parent = MainFrame

scrollBar = ScrollBar(false)
scrollBar.PageIncrement = 1
Create(scrollBar.GUI,{
	Position = UDim2.new(1,-ScrollBarWidth,0,0);
	Size = UDim2.new(0,ScrollBarWidth,1,0);
	Parent = PropertiesFrame;
})

scrollBarH = ScrollBar(true)
scrollBarH.PageIncrement = ScrollBarWidth
Create(scrollBarH.GUI,{
	Position = UDim2.new(0,0,1,-ScrollBarWidth);
	Size = UDim2.new(1,-ScrollBarWidth,0,ScrollBarWidth);
	Visible = false;
	Parent = PropertiesFrame;
})

do
	local listEntries = {}
	local nameConnLookup = {}
	
	function scrollBar.UpdateCallback(self)
		scrollBar.TotalSpace = ContentFrame.AbsoluteSize.Y
		scrollBar.VisibleSpace = MainFrame.AbsoluteSize.Y
		ContentFrame.Position = UDim2.new(ContentFrame.Position.X.Scale,ContentFrame.Position.X.Offset,0,-1*scrollBar.ScrollIndex)
	end

	function scrollBarH.UpdateCallback(self)
		
	end

	MainFrame.Changed:connect(function(p)
		if p == 'AbsoluteSize' then
			scrollBarH.VisibleSpace = math.ceil(MainFrame.AbsoluteSize.x)
			scrollBarH:Update()
			scrollBar.VisibleSpace = math.ceil(MainFrame.AbsoluteSize.y)
			scrollBar:Update()
		end
	end)

	local wheelAmount = Row.Height
	PropertiesFrame.MouseWheelForward:connect(function()
		if input ~= nil and input.down ~= nil and input.down.leftshift then
			if scrollBarH.VisibleSpace - 1 > wheelAmount then
				scrollBarH:ScrollTo(scrollBarH.ScrollIndex - wheelAmount)
			else
				scrollBarH:ScrollTo(scrollBarH.ScrollIndex - scrollBarH.VisibleSpace)
			end
		else
			if scrollBar.VisibleSpace - 1 > wheelAmount then
				scrollBar:ScrollTo(scrollBar.ScrollIndex - wheelAmount)
			else
				scrollBar:ScrollTo(scrollBar.ScrollIndex - scrollBar.VisibleSpace)
			end
		end
	end)
	PropertiesFrame.MouseWheelBackward:connect(function()
		if input ~= nil and input.down ~= nil and input.down.leftshift then
			if scrollBarH.VisibleSpace - 1 > wheelAmount then
				scrollBarH:ScrollTo(scrollBarH.ScrollIndex + wheelAmount)
			else
				scrollBarH:ScrollTo(scrollBarH.ScrollIndex + scrollBarH.VisibleSpace)
			end
		else
			if scrollBar.VisibleSpace - 1 > wheelAmount then
				scrollBar:ScrollTo(scrollBar.ScrollIndex + wheelAmount)
			else
				scrollBar:ScrollTo(scrollBar.ScrollIndex + scrollBar.VisibleSpace)
			end
		end
	end)
end

scrollBar.VisibleSpace = math.ceil(MainFrame.AbsoluteSize.y)
scrollBar:Update()

showProperties(GetSelection())

bindSelectionChanged.Event:connect(function()
	showProperties(GetSelection())
end)

bindSetAwait.Event:connect(function(obj)
	if AwaitingObjectValue then
		AwaitingObjectValue = false
		local mySel = obj
		if mySel then
			pcall(function()
				Set(AwaitingObjectObj, AwaitingObjectProp, mySel)
			end)
		end
	end
end)

propertiesSearch.Changed:connect(function(prop)
	if prop == "Text" then
		showProperties(GetSelection())
	end
end)

bindGetApi.OnInvoke = function()
	return RbxApi
end

bindGetAwait.OnInvoke = function()
	return AwaitingObjectValue
end
end)
spawn(function()

local top = D_E_X.ScriptEditor

print(top)

local editorGrid = top:WaitForChild("EditorGrid")

print(editorGrid)

local currentSource = ""
local currentScrName = "";

local currentEditor = {
	x = 0,
	y = 0
}

local userInput = game:GetService("UserInputService")
local mouse = game:GetService'Players'.LocalPlayer:GetMouse()

local topBar = top:WaitForChild("TopBar")
local scriptBar = topBar:WaitForChild("ScriptBar")
local scriptBarLeft = topBar:WaitForChild("ScriptBarLeft")
local scriptBarRight = topBar:WaitForChild("ScriptBarRight")
local clipboardButton = topBar:WaitForChild("Clipboard")
local saveScriptButton = topBar:FindFirstChild("SaveScript")

local entryTemplate = topBar:WaitForChild("Entry")

local openEvent = top:WaitForChild("OpenScript")

local closeButton = top:WaitForChild("Close")

local memoryScripts = {}

local editingIndex = 0

-- Scrollbar

local ScrollBarWidth = 16

local ScrollStyles = {
	Background      = Color3.fromRGB(233, 233, 233);
	Border          = Color3.fromRGB( 20,  20,  20);
	Selected        = Color3.fromRGB( 63, 119, 189);
	BorderSelected  = Color3.fromRGB( 55, 106, 167);
	Text            = Color3.fromRGB(  0,   0,   0);
	TextDisabled    = Color3.fromRGB(128, 128, 128);
	TextSelected    = Color3.fromRGB(255, 255, 255);
	Button          = Color3.fromRGB( 35,  35,  35);
	ButtonBorder    = Color3.fromRGB(149, 149, 149);
	ButtonSelected  = Color3.fromRGB(255,   0,   0);
	Field           = Color3.fromRGB(255, 255, 255);
	FieldBorder     = Color3.fromRGB(191, 191, 191);
	TitleBackground = Color3.fromRGB(178, 178, 178);
}
do
	local ZIndexLock = {}
	function SetZIndex(object,z)
		if not ZIndexLock[object] then
			ZIndexLock[object] = true
			if object:IsA'GuiObject' then
				object.ZIndex = z
			end
			local children = object:GetChildren()
			for i = 1,#children do
				SetZIndex(children[i],z)
			end
			ZIndexLock[object] = nil
		end
	end
end
function SetZIndexOnChanged(object)
	return object.Changed:connect(function(p)
		if p == "ZIndex" then
			SetZIndex(object,object.ZIndex)
		end
	end)
end
function Create(ty,data)
	local obj
	if type(ty) == 'string' then
		obj = Instance.new(ty)
	else
		obj = ty
	end
	for k, v in pairs(data) do
		if type(k) == 'number' then
			v.Parent = obj
		else
			obj[k] = v
		end
	end
	return obj
end
-- returns the ascendant ScreenGui of an object
function GetScreen(screen)
	if screen == nil then return nil end
	while not screen:IsA("ScreenGui") do
		screen = screen.Parent
		if screen == nil then return nil end
	end
	return screen
end
-- AutoButtonColor doesn't always reset properly
function ResetButtonColor(button)
	local active = button.Active
	button.Active = not active
	button.Active = active
end

function ArrowGraphic(size,dir,scaled,template)
	local Frame = Create('Frame',{
		Name = "Arrow Graphic";
		BorderSizePixel = 0;
		Size = UDim2.new(0,size,0,size);
		Transparency = 1;
	})
	if not template then
		template = Instance.new("Frame")
		template.BorderSizePixel = 0
	end

	template.BackgroundColor3 = Color3.new(1, 1, 1);

	local transform
	if dir == nil or dir == 'Up' then
		function transform(p,s) return p,s end
	elseif dir == 'Down' then
		function transform(p,s) return UDim2.new(0,p.X.Offset,0,size-p.Y.Offset-1),s end
	elseif dir == 'Left' then 
		function transform(p,s) return UDim2.new(0,p.Y.Offset,0,p.X.Offset),UDim2.new(0,s.Y.Offset,0,s.X.Offset) end
	elseif dir == 'Right' then
		function transform(p,s) return UDim2.new(0,size-p.Y.Offset-1,0,p.X.Offset),UDim2.new(0,s.Y.Offset,0,s.X.Offset) end
	end

	local scale
	if scaled then
		function scale(p,s) return UDim2.new(p.X.Offset/size,0,p.Y.Offset/size,0),UDim2.new(s.X.Offset/size,0,s.Y.Offset/size,0) end
	else
		function scale(p,s) return p,s end
	end

	local o = math.floor(size/4)
	if size%2 == 0 then
		local n = size/2-1
		for i = 0,n do
			local t = template:Clone()
			local p,s = scale(transform(
				UDim2.new(0,n-i,0,o+i),
				UDim2.new(0,(i+1)*2,0,1)
			))
			t.Position = p
			t.Size = s
			t.Parent = Frame
		end
	else
		local n = (size-1)/2
		for i = 0,n do
			local t = template:Clone()
			local p,s = scale(transform(
				UDim2.new(0,n-i,0,o+i),
				UDim2.new(0,i*2+1,0,1)
			))
			t.Position = p
			t.Size = s
			t.Parent = Frame
		end
	end
	if size%4 > 1 then
		local t = template:Clone()
		local p,s = scale(transform(
			UDim2.new(0,0,0,size-o-1),
			UDim2.new(0,size,0,1)
		))
		t.Position = p
		t.Size = s
		t.Parent = Frame
	end

	for i,v in pairs(Frame:GetChildren()) do
		v.BackgroundColor3 = Color3.new(1, 1, 1);
	end

	return Frame
end

function GripGraphic(size,dir,spacing,scaled,template)
	local Frame = Create('Frame',{
		Name = "Grip Graphic";
		BorderSizePixel = 0;
		Size = UDim2.new(0,size.x,0,size.y);
		Transparency = 1;
	})
	if not template then
		template = Instance.new("Frame")
		template.BorderSizePixel = 0
	end

	spacing = spacing or 2

	local scale
	if scaled then
		function scale(p) return UDim2.new(p.X.Offset/size.x,0,p.Y.Offset/size.y,0) end
	else
		function scale(p) return p end
	end

	if dir == 'Vertical' then
		for i=0,size.x-1,spacing do
			local t = template:Clone()
			t.Size = scale(UDim2.new(0,1,0,size.y))
			t.Position = scale(UDim2.new(0,i,0,0))
			t.Parent = Frame
		end
	elseif dir == nil or dir == 'Horizontal' then
		for i=0,size.y-1,spacing do
			local t = template:Clone()
			t.Size = scale(UDim2.new(0,size.x,0,1))
			t.Position = scale(UDim2.new(0,0,0,i))
			t.Parent = Frame
		end
	end

	return Frame
end

do
	local mt = {
		__index = {
			GetScrollPercent = function(self)
				return self.ScrollIndex/(self.TotalSpace-self.VisibleSpace)
			end;
			CanScrollDown = function(self)
				return self.ScrollIndex + self.VisibleSpace < self.TotalSpace
			end;
			CanScrollUp = function(self)
				return self.ScrollIndex > 0
			end;
			ScrollDown = function(self)
				self.ScrollIndex = self.ScrollIndex + self.PageIncrement
				self:Update()
			end;
			ScrollUp = function(self)
				self.ScrollIndex = self.ScrollIndex - self.PageIncrement
				self:Update()
			end;
			ScrollTo = function(self,index)
				self.ScrollIndex = index
				self:Update()
			end;
			SetScrollPercent = function(self,percent)
				self.ScrollIndex = math.floor((self.TotalSpace - self.VisibleSpace)*percent + 0.5)
				self:Update()
			end;
		};
	}
	mt.__index.CanScrollRight = mt.__index.CanScrollDown
	mt.__index.CanScrollLeft = mt.__index.CanScrollUp
	mt.__index.ScrollLeft = mt.__index.ScrollUp
	mt.__index.ScrollRight = mt.__index.ScrollDown

	function ScrollBar(horizontal)
		-- create row scroll bar
		local ScrollFrame = Create('Frame',{
			Name = "ScrollFrame";
			Position = horizontal and UDim2.new(0,0,1,-ScrollBarWidth) or UDim2.new(1,-ScrollBarWidth,0,0);
			Size = horizontal and UDim2.new(1,0,0,ScrollBarWidth) or UDim2.new(0,ScrollBarWidth,1,0);
			BackgroundTransparency = 1;
			Create('ImageButton',{
				Name = "ScrollDown";
				Position = horizontal and UDim2.new(1,-ScrollBarWidth,0,0) or UDim2.new(0,0,1,-ScrollBarWidth);
				Size = UDim2.new(0, ScrollBarWidth, 0, ScrollBarWidth);
				BackgroundColor3 = ScrollStyles.Button;
				BorderColor3 = ScrollStyles.Border;
				BorderSizePixel = 0;
			});
			Create('ImageButton',{
				Name = "ScrollUp";
				Size = UDim2.new(0, ScrollBarWidth, 0, ScrollBarWidth);
				BackgroundColor3 = ScrollStyles.Button;
				BorderColor3 = ScrollStyles.Border;
				BorderSizePixel = 0;
			});
			Create('ImageButton',{
				Name = "ScrollBar";
				Size = horizontal and UDim2.new(1,-ScrollBarWidth*2,1,0) or UDim2.new(1,0,1,-ScrollBarWidth*2);
				Position = horizontal and UDim2.new(0,ScrollBarWidth,0,0) or UDim2.new(0,0,0,ScrollBarWidth);
				AutoButtonColor = false;
				BackgroundColor3 = Color3.fromRGB(20, 20, 20);
				BorderColor3 = ScrollStyles.Border;
				BorderSizePixel = 0;
				Create('ImageButton',{
					Name = "ScrollThumb";
					AutoButtonColor = false;
					Size = UDim2.new(0, ScrollBarWidth, 0, ScrollBarWidth);
					BackgroundColor3 = ScrollStyles.Button;
					BorderColor3 = ScrollStyles.Border;
					BorderSizePixel = 0;
				});
			});
		})

		local graphicTemplate = Create('Frame',{
			Name="Graphic";
			BorderSizePixel = 0;
			BackgroundColor3 = Color3.new(1, 1, 1);
		})
		local graphicSize = ScrollBarWidth/2

		local ScrollDownFrame = ScrollFrame.ScrollDown
			local ScrollDownGraphic = ArrowGraphic(graphicSize,horizontal and 'Right' or 'Down',true,graphicTemplate)
			ScrollDownGraphic.Position = UDim2.new(0.5,-graphicSize/2,0.5,-graphicSize/2)
			ScrollDownGraphic.Parent = ScrollDownFrame
		local ScrollUpFrame = ScrollFrame.ScrollUp
			local ScrollUpGraphic = ArrowGraphic(graphicSize,horizontal and 'Left' or 'Up',true,graphicTemplate)
			ScrollUpGraphic.Position = UDim2.new(0.5,-graphicSize/2,0.5,-graphicSize/2)
			ScrollUpGraphic.Parent = ScrollUpFrame
		local ScrollBarFrame = ScrollFrame.ScrollBar
		local ScrollThumbFrame = ScrollBarFrame.ScrollThumb
		do
			local size = ScrollBarWidth*3/8
			local Decal = GripGraphic(Vector2.new(size,size),horizontal and 'Vertical' or 'Horizontal',2,graphicTemplate)
			Decal.Position = UDim2.new(0.5,-size/2,0.5,-size/2)
			Decal.Parent = ScrollThumbFrame
		end

		local MouseDrag = Create('ImageButton',{
			Name = "MouseDrag";
			Position = UDim2.new(-0.25,0,-0.25,0);
			Size = UDim2.new(1.5,0,1.5,0);
			Transparency = 1;
			AutoButtonColor = false;
			Active = true;
			ZIndex = 10;
		})

		local Class = setmetatable({
			GUI = ScrollFrame;
			ScrollIndex = 0;
			VisibleSpace = 0;
			TotalSpace = 0;
			PageIncrement = 1;
		},mt)

		local UpdateScrollThumb
		if horizontal then
			function UpdateScrollThumb()
				ScrollThumbFrame.Size = UDim2.new(Class.VisibleSpace/Class.TotalSpace,0,0,ScrollBarWidth)
				if ScrollThumbFrame.AbsoluteSize.x < ScrollBarWidth then
					ScrollThumbFrame.Size = UDim2.new(0,ScrollBarWidth,0,ScrollBarWidth)
				end
				local barSize = ScrollBarFrame.AbsoluteSize.x
				ScrollThumbFrame.Position = UDim2.new(Class:GetScrollPercent()*(barSize - ScrollThumbFrame.AbsoluteSize.x)/barSize,0,0,0)
			end
		else
			function UpdateScrollThumb()
				ScrollThumbFrame.Size = UDim2.new(0,ScrollBarWidth,Class.VisibleSpace/Class.TotalSpace,0)
				if ScrollThumbFrame.AbsoluteSize.y < ScrollBarWidth then
					ScrollThumbFrame.Size = UDim2.new(0,ScrollBarWidth,0,ScrollBarWidth)
				end
				local barSize = ScrollBarFrame.AbsoluteSize.y
				ScrollThumbFrame.Position = UDim2.new(0,0,Class:GetScrollPercent()*(barSize - ScrollThumbFrame.AbsoluteSize.y)/barSize,0)
			end
		end

		local lastDown
		local lastUp
		local scrollStyle = {BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=0}
		local scrollStyle_ds = {BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=0.7}

		local function Update()
			local t = Class.TotalSpace
			local v = Class.VisibleSpace
			local s = Class.ScrollIndex
			if v <= t then
				if s > 0 then
					if s + v > t then
						Class.ScrollIndex = t - v
					end
				else
					Class.ScrollIndex = 0
				end
			else
				Class.ScrollIndex = 0
			end

			if Class.UpdateCallback then
				if Class.UpdateCallback(Class) == false then
					return
				end
			end

			local down = Class:CanScrollDown()
			local up = Class:CanScrollUp()
			if down ~= lastDown then
				lastDown = down
				ScrollDownFrame.Active = down
				ScrollDownFrame.AutoButtonColor = down
				local children = ScrollDownGraphic:GetChildren()
				local style = down and scrollStyle or scrollStyle_ds
				for i = 1,#children do
					Create(children[i],style)
				end
			end
			if up ~= lastUp then
				lastUp = up
				ScrollUpFrame.Active = up
				ScrollUpFrame.AutoButtonColor = up
				local children = ScrollUpGraphic:GetChildren()
				local style = up and scrollStyle or scrollStyle_ds
				for i = 1,#children do
					Create(children[i],style)
				end
			end
			ScrollThumbFrame.Visible = down or up
			UpdateScrollThumb()
		end
		Class.Update = Update

		SetZIndexOnChanged(ScrollFrame)

		local scrollEventID = 0
		ScrollDownFrame.MouseButton1Down:connect(function()
			scrollEventID = tick()
			local current = scrollEventID
			local up_con
			up_con = MouseDrag.MouseButton1Up:connect(function()
				scrollEventID = tick()
				MouseDrag.Parent = nil
				ResetButtonColor(ScrollDownFrame)
				up_con:disconnect(); drag = nil
			end)
			MouseDrag.Parent = GetScreen(ScrollFrame)
			Class:ScrollDown()
			wait(0.2) -- delay before auto scroll
			while scrollEventID == current do
				Class:ScrollDown()
				if not Class:CanScrollDown() then break end
				wait()
			end
		end)

		ScrollDownFrame.MouseButton1Up:connect(function()
			scrollEventID = tick()
		end)

		ScrollUpFrame.MouseButton1Down:connect(function()
			scrollEventID = tick()
			local current = scrollEventID
			local up_con
			up_con = MouseDrag.MouseButton1Up:connect(function()
				scrollEventID = tick()
				MouseDrag.Parent = nil
				ResetButtonColor(ScrollUpFrame)
				up_con:disconnect(); drag = nil
			end)
			MouseDrag.Parent = GetScreen(ScrollFrame)
			Class:ScrollUp()
			wait(0.2)
			while scrollEventID == current do
				Class:ScrollUp()
				if not Class:CanScrollUp() then break end
				wait()
			end
		end)

		ScrollUpFrame.MouseButton1Up:connect(function()
			scrollEventID = tick()
		end)

		if horizontal then
			ScrollBarFrame.MouseButton1Down:connect(function(x,y)
				scrollEventID = tick()
				local current = scrollEventID
				local up_con
				up_con = MouseDrag.MouseButton1Up:connect(function()
					scrollEventID = tick()
					MouseDrag.Parent = nil
					ResetButtonColor(ScrollUpFrame)
					up_con:disconnect(); drag = nil
				end)
				MouseDrag.Parent = GetScreen(ScrollFrame)
				if x > ScrollThumbFrame.AbsolutePosition.x then
					Class:ScrollTo(Class.ScrollIndex + Class.VisibleSpace)
					wait(0.2)
					while scrollEventID == current do
						if x < ScrollThumbFrame.AbsolutePosition.x + ScrollThumbFrame.AbsoluteSize.x then break end
						Class:ScrollTo(Class.ScrollIndex + Class.VisibleSpace)
						wait()
					end
				else
					Class:ScrollTo(Class.ScrollIndex - Class.VisibleSpace)
					wait(0.2)
					while scrollEventID == current do
						if x > ScrollThumbFrame.AbsolutePosition.x then break end
						Class:ScrollTo(Class.ScrollIndex - Class.VisibleSpace)
						wait()
					end
				end
			end)
		else
			ScrollBarFrame.MouseButton1Down:connect(function(x,y)
				scrollEventID = tick()
				local current = scrollEventID
				local up_con
				up_con = MouseDrag.MouseButton1Up:connect(function()
					scrollEventID = tick()
					MouseDrag.Parent = nil
					ResetButtonColor(ScrollUpFrame)
					up_con:disconnect(); drag = nil
				end)
				MouseDrag.Parent = GetScreen(ScrollFrame)
				if y > ScrollThumbFrame.AbsolutePosition.y then
					Class:ScrollTo(Class.ScrollIndex + Class.VisibleSpace)
					wait(0.2)
					while scrollEventID == current do
						if y < ScrollThumbFrame.AbsolutePosition.y + ScrollThumbFrame.AbsoluteSize.y then break end
						Class:ScrollTo(Class.ScrollIndex + Class.VisibleSpace)
						wait()
					end
				else
					Class:ScrollTo(Class.ScrollIndex - Class.VisibleSpace)
					wait(0.2)
					while scrollEventID == current do
						if y > ScrollThumbFrame.AbsolutePosition.y then break end
						Class:ScrollTo(Class.ScrollIndex - Class.VisibleSpace)
						wait()
					end
				end
			end)
		end

		if horizontal then
			ScrollThumbFrame.MouseButton1Down:connect(function(x,y)
				scrollEventID = tick()
				local mouse_offset = x - ScrollThumbFrame.AbsolutePosition.x
				local drag_con
				local up_con
				drag_con = MouseDrag.MouseMoved:connect(function(x,y)
					if not game:GetService'UserInputService':IsMouseButtonPressed'MouseButton1' then
						scrollEventID = tick()
						MouseDrag.Parent = nil
						ResetButtonColor(ScrollThumbFrame)
						drag_con:disconnect(); drag_con = nil
						up_con:disconnect(); drag = nil
					end
					local bar_abs_pos = ScrollBarFrame.AbsolutePosition.x
					local bar_drag = ScrollBarFrame.AbsoluteSize.x - ScrollThumbFrame.AbsoluteSize.x
					local bar_abs_one = bar_abs_pos + bar_drag
					x = x - mouse_offset
					x = x < bar_abs_pos and bar_abs_pos or x > bar_abs_one and bar_abs_one or x
					x = x - bar_abs_pos
					Class:SetScrollPercent(x/(bar_drag))
				end)
				up_con = MouseDrag.MouseButton1Up:connect(function()
					scrollEventID = tick()
					MouseDrag.Parent = nil
					ResetButtonColor(ScrollThumbFrame)
					drag_con:disconnect(); drag_con = nil
					up_con:disconnect(); drag = nil
				end)
				MouseDrag.Parent = GetScreen(ScrollFrame)
			end)
		else
			ScrollThumbFrame.MouseButton1Down:connect(function(x,y)
				scrollEventID = tick()
				local mouse_offset = y - ScrollThumbFrame.AbsolutePosition.y
				local drag_con
				local up_con
				drag_con = MouseDrag.MouseMoved:connect(function(x,y)
					if not game:GetService'UserInputService':IsMouseButtonPressed'MouseButton1' then
						scrollEventID = tick()
						MouseDrag.Parent = nil
						ResetButtonColor(ScrollThumbFrame)
						drag_con:disconnect(); drag_con = nil
						up_con:disconnect(); drag = nil
					end
					local bar_abs_pos = ScrollBarFrame.AbsolutePosition.y
					local bar_drag = ScrollBarFrame.AbsoluteSize.y - ScrollThumbFrame.AbsoluteSize.y
					local bar_abs_one = bar_abs_pos + bar_drag
					y = y - mouse_offset
					y = y < bar_abs_pos and bar_abs_pos or y > bar_abs_one and bar_abs_one or y
					y = y - bar_abs_pos
					Class:SetScrollPercent(y/(bar_drag))
				end)
				up_con = MouseDrag.MouseButton1Up:connect(function()
					scrollEventID = tick()
					MouseDrag.Parent = nil
					ResetButtonColor(ScrollThumbFrame)
					drag_con:disconnect(); drag_con = nil
					up_con:disconnect(); drag = nil
				end)
				MouseDrag.Parent = GetScreen(ScrollFrame)
			end)
		end

		function Class:Destroy()
			ScrollFrame:Destroy()
			MouseDrag:Destroy()
			for k in pairs(Class) do
				Class[k] = nil
			end
			setmetatable(Class,nil)
		end

		Update()

		return Class
	end
end

-- End Scrollbar

local scrollBar = ScrollBar(false)
scrollBar.PageIncrement = 16
Create(scrollBar.GUI,{
	Position = UDim2.new(1,0,0,0);
	Size = UDim2.new(0,ScrollBarWidth,1,0);
	Parent = editorGrid;
})

local scrollBarH = ScrollBar(true)
scrollBarH.PageIncrement = 8
Create(scrollBarH.GUI,{
	Position = UDim2.new(0,0,1,0);
	Size = UDim2.new(1,0,0,ScrollBarWidth);
	Parent = editorGrid;
})

local wheelAmount = 24;

editorGrid.MouseWheelForward:connect(function()
	if input ~= nil and input.down ~= nil and input.down.leftshift then
		if scrollBarH.VisibleSpace - 1 > wheelAmount then
			scrollBarH:ScrollTo(scrollBarH.ScrollIndex - wheelAmount)
		else
			scrollBarH:ScrollTo(scrollBarH.ScrollIndex - scrollBarH.VisibleSpace)
		end
	else
		if scrollBar.VisibleSpace - 1 > wheelAmount then
			scrollBar:ScrollTo(scrollBar.ScrollIndex - wheelAmount)
		else
			scrollBar:ScrollTo(scrollBar.ScrollIndex - scrollBar.VisibleSpace)
		end
	end
end)
editorGrid.MouseWheelBackward:connect(function()
	if input ~= nil and input.down ~= nil and input.down.leftshift then
		if scrollBarH.VisibleSpace - 1 > wheelAmount then
			scrollBarH:ScrollTo(scrollBarH.ScrollIndex + wheelAmount)
		else
			scrollBarH:ScrollTo(scrollBarH.ScrollIndex + scrollBarH.VisibleSpace)
		end
	else
		if scrollBar.VisibleSpace - 1 > wheelAmount then
			scrollBar:ScrollTo(scrollBar.ScrollIndex + wheelAmount)
		else
			scrollBar:ScrollTo(scrollBar.ScrollIndex + scrollBar.VisibleSpace)
		end
	end
end)

local entries = {}

local grid = {}

local count = 1
local xCount = 1

local lineSpan = 0

for i = 0,editorGrid.AbsoluteSize.X - 20,8 do
	local newRow = {}
	for j = 0,390,16 do
		local cellText = Instance.new("TextLabel",editorGrid)
		cellText.Name = string.format('grid(%s,%s)', i, j);
		cellText.BackgroundTransparency = 1
		cellText.BorderSizePixel = 0
		cellText.Text = ""
		cellText.Position = UDim2.new(0,i,0,j)
		cellText.Size = UDim2.new(0,8,0,16)
		cellText.Font = Enum.Font.SourceSans
		cellText.FontSize = Enum.FontSize.Size18
		table.insert(newRow,cellText)
		xCount = xCount + 1
	end
	table.insert(grid,newRow)
	count = count + 1
	xCount = 1
end

local syntaxHighlightList = {
	{["Keyword"] = "for", 			["Color"] = Color3.fromRGB( 86, 153, 212), ["Independent"] = true};
	{["Keyword"] = "local", 		["Color"] = Color3.fromRGB( 86, 153, 212), ["Independent"] = true};
	{["Keyword"] = "if", 			["Color"] = Color3.fromRGB( 86, 153, 212), ["Independent"] = true};
	{["Keyword"] = "then", 			["Color"] = Color3.fromRGB( 86, 153, 212), ["Independent"] = true};
	{["Keyword"] = "do", 			["Color"] = Color3.fromRGB( 86, 153, 212), ["Independent"] = true};
	{["Keyword"] = "while", 		["Color"] = Color3.fromRGB( 86, 153, 212), ["Independent"] = true};
	{["Keyword"] = "end", 			["Color"] = Color3.fromRGB( 86, 153, 212), ["Independent"] = true};
	{["Keyword"] = "function", 		["Color"] = Color3.fromRGB( 86, 153, 212), ["Independent"] = true};
	{["Keyword"] = "return", 		["Color"] = Color3.fromRGB( 86, 153, 212), ["Independent"] = true};
	{["Keyword"] = "break", 		["Color"] = Color3.fromRGB( 86, 153, 212), ["Independent"] = true};
	{["Keyword"] = "else", 			["Color"] = Color3.fromRGB( 86, 153, 212), ["Independent"] = true};
	{["Keyword"] = "elseif", 		["Color"] = Color3.fromRGB( 86, 153, 212), ["Independent"] = true};
	{["Keyword"] = "in", 			["Color"] = Color3.fromRGB( 86, 153, 212), ["Independent"] = true};
	{["Keyword"] = "pairs", 		["Color"] = Color3.fromRGB(205,  98, 255), ["Independent"] = true};
	{["Keyword"] = "ipairs", 		["Color"] = Color3.fromRGB(205,  98, 255), ["Independent"] = true};
	{["Keyword"] = "next", 			["Color"] = Color3.fromRGB(205,  98, 255), ["Independent"] = true};
	{["Keyword"] = "require", 		["Color"] = Color3.fromRGB(205,  98, 255), ["Independent"] = true};
	{["Keyword"] = "pcall", 		["Color"] = Color3.fromRGB(205,  98, 255), ["Independent"] = true};
	{["Keyword"] = "xpcall", 		["Color"] = Color3.fromRGB(205,  98, 255), ["Independent"] = true};
	{["Keyword"] = "ypcall", 		["Color"] = Color3.fromRGB(205,  98, 255), ["Independent"] = true};
	{["Keyword"] = "assert", 		["Color"] = Color3.fromRGB(205,  98, 255), ["Independent"] = true};
}

function checkMouseInGui(gui)
	if gui == nil then return false end
	local plrMouse = game:GetService'Players'.LocalPlayer:GetMouse()
	local guiPosition = gui.AbsolutePosition
	local guiSize = gui.AbsoluteSize	
	
	if plrMouse.X >= guiPosition.x and plrMouse.X <= guiPosition.x + guiSize.x and plrMouse.Y >= guiPosition.y and plrMouse.Y <= guiPosition.y + guiSize.y then
		return true
	else
		return false
	end
end

function AddZeros(num,reach)
	local toConvert = tostring(num)
	while #toConvert < reach do
		toConvert = " "..toConvert
	end
	return toConvert
end

function buildScript(source,xOff,yOff,override)
	local buildingRows = true
	local buildScr = source
	
	local totalLines = 0

	if currentSource ~= source then
		currentSource = source
	end

	if override then
		currentSource = source
		entries = {}
		buildScr = tostring(buildScr);
		while buildingRows do
			local x,y = string.find(buildScr,"\n")
			if x and y then
				table.insert(entries,string.sub(buildScr,1,y))
				buildScr = string.sub(buildScr,y+1,string.len(buildScr))
			else
				buildingRows = false
				table.insert(entries,buildScr)
			end
		end
	end
	
	totalLines = #entries
	lineSpan = #tostring(totalLines)
	
	if lineSpan == 1 then lineSpan = 2 end
	
	local currentRow = 1
	local currentColumn = 2 + lineSpan
	
	local colorTime = 0
	local colorReplace = nil
	
	local inString = false
	
	local workingEntries = entries
	
	--[[
	for i,v in pairs(entries) do
		table.insert(workingEntries,v)
	end
	
	for i = 1,yOff do
		table.remove(workingEntries,1)
	end
	--]]
	
	local delayance = xOff

	for i = 1,#grid do
		for j = 1,#grid[i] do
			if i <= lineSpan then
				local newNum = AddZeros(yOff + j,lineSpan)
				local newDigit =  string.sub(newNum,i,i)
				if newDigit == " " then
					grid[i][j].Text = ""
				else
					grid[i][j].Text = newDigit
				end

				-- grid[i][j].BorderSizePixel = 1

				grid[i][j].TextColor3 = Color3.fromRGB(245, 245, 245)
				grid[i][j].BackgroundTransparency = 0
				grid[i][j].BackgroundColor3 = Color3.fromRGB(60, 60, 60)
				grid[i][j].Font = Enum.Font.SourceSans
			elseif i == lineSpan + 1 then
				-- grid[i][j].BorderSizePixel = 1

				grid[i][j].Text = ""
				grid[i][j].BackgroundTransparency = 0
				grid[i][j].BackgroundColor3 = Color3.fromRGB(55, 55, 55)
				-- grid[i][j].Font = Enum.Font.SourceSans
			else
				-- grid[i][j].BorderSizePixel = 1

				grid[i][j].Text = ""
				grid[i][j].BackgroundTransparency = 1
				--grid[i][j].Font = Enum.Font.SourceSans
			end
		end
	end
	
	while true do
		if currentRow > #workingEntries or currentRow > #grid[1] then break end
		local entry = workingEntries[currentRow+yOff]
		while entry ~= nil and typeof(entry) == 'string' and string.len(entry) > 0 do
			if string.sub(entry,1,1) == "\t" then entry = "    "..string.sub(entry,2) end
			
			if currentColumn > #grid then break end
			
			if delayance == 0 then
				grid[currentColumn][currentRow].Text = string.sub(entry,1,1)
			end
			
			-- Coloring
			
			if not inString then
				for i,v in pairs(syntaxHighlightList) do
					if string.sub(entry,1,string.len(v["Keyword"])) == v["Keyword"] then
						if v["Independent"] then
							local outCheck = string.len(v["Keyword"])+1
							local outEntry = string.sub(entry,outCheck,outCheck)
							if not string.find(outEntry,"%w") then
								colorTime = string.len(v["Keyword"])
								colorReplace = v["Color"]
							end
						else
							colorTime = string.len(v["Keyword"])
							colorReplace = v["Color"]
						end
					end
				end
			end
			
			if string.sub(entry,1,1) == "\"" and string.match(entry,"\".+\"") then
				inString = true
				colorTime = string.len(string.match(entry,"\".+\""))
				colorReplace = Color3.fromRGB(73, 212, 107);
			end

			local oldTC3 = Color3.fromRGB(244, 244, 244); --grid[currentColumn][currentRow].TextColor3
			
			if colorTime > 0 then
				colorTime = colorTime - 1
				oldTC3 = grid[currentColumn][currentRow].TextColor3
				grid[currentColumn][currentRow].TextColor3 = colorReplace
				if colorTime == 0 then inString = false end
			else
				grid[currentColumn][currentRow].TextColor3 = oldTC3 --Color3.new(0,0,0)
				inString = false
			end
			
			if delayance == 0 then
				currentColumn = currentColumn + 1
			else
				delayance = delayance - 1
			end
			entry = string.sub(entry,2,string.len(entry))
		end
		currentRow = currentRow + 1
		currentColumn = 2 + lineSpan
		colorTime = 0
		delayance = xOff
		inString = false
	end
end

function scrollBar.UpdateCallback(self)
	scrollBar.TotalSpace = #entries * 16
	scrollBar.VisibleSpace = editorGrid.AbsoluteSize.Y
	buildScript(currentSource,math.floor(scrollBarH.ScrollIndex/8),math.floor(scrollBar.ScrollIndex/16))
end

function scrollBarH.UpdateCallback(self)
	scrollBarH.TotalSpace = (getLongestEntry(entries) + 1 + lineSpan) * 8
	scrollBarH.VisibleSpace = editorGrid.AbsoluteSize.X
	buildScript(currentSource,math.floor(scrollBarH.ScrollIndex/8),math.floor(scrollBar.ScrollIndex/16))
end

function getLongestEntry(tab)
	local longest = 0
	for i,v in pairs(tab) do
		if string.len(v) > longest then
			longest = string.len(v)
		end
	end
	return longest
end

function openScript(scrObj)
	if scrObj:IsA("LocalScript") then
		scrObj.Archivable = true
		scrObj = scrObj:Clone()
		scrObj.Disabled = true
	end
	
	local scrName = scrObj.Name
	local scrSource = decompile(scrObj)
	currentScrName = scrObj.Name;
	
	table.insert(memoryScripts,{Name = scrName,Source = scrSource})
	
	local newTab = entryTemplate:Clone()
	newTab.Button.Text = scrName
	newTab.Position = UDim2.new(0,#scriptBar:GetChildren() * 100,0,0)
	newTab.BackgroundColor3 = Color3.new(33, 33, 33)
	newTab.Visible = true
	
	newTab.Button.MouseButton1Down:connect(function()
		for i,v in pairs(scriptBar:GetChildren()) do
			if v == newTab then
				editingIndex = i
				buildScript(memoryScripts[i].Source,0,0,true)
				wait(.1);
				scrollBar:ScrollTo(1)
				scrollBar:Update()
				scrollBarH:ScrollTo(1)
				scrollBarH:Update()
			end
		end
	end)
	
	newTab.Close.MouseButton1Click:connect(function()
		for i,v in pairs(scriptBar:GetChildren()) do
			if v == newTab then
				table.remove(memoryScripts,i)
				if editingIndex == i then
					editingIndex = #memoryScripts
					if editingIndex > 0 then
						buildScript(memoryScripts[#memoryScripts].Source,0,0,true)
					else
						buildScript("",0,0,true)
					end
				end
				
				scrollBar:ScrollTo(1)
				scrollBar:Update()
				scrollBarH:ScrollTo(1)
				scrollBarH:Update()
				
				for i2 = i,#scriptBar:GetChildren() do
					scriptBar:GetChildren()[i2].Position = scriptBar:GetChildren()[i2].Position + UDim2.new(0,-100,0,0)
				end
				if editingIndex > i then
					editingIndex = editingIndex - 1
				end
				newTab:Destroy()
			end
		end
	end)
	
	editingIndex = #memoryScripts
	buildScript(scrSource,0,0,true)
	
	newTab.Parent = scriptBar
end

getgenv().openScript = openScript;

function updateScriptBar()

end

function _updateScriptBar()
	local entryCount = 0
	
	scriptBarLeft.Active = false
	scriptBarLeft.AutoButtonColor = false
	for i,v in pairs(scriptBarLeft["Arrow Graphic"]:GetChildren()) do
		v.BackgroundTransparency = 0.7
	end
	scriptBarRight.Active = false
	scriptBarRight.AutoButtonColor = false
	for i,v in pairs(scriptBarRight["Arrow Graphic"]:GetChildren()) do
		v.BackgroundTransparency = 0.7
	end
	for i,v in pairs(scriptBar:GetChildren()) do
		if v.Position.X.Offset < 0 then
			scriptBarLeft.Active = true
			scriptBarLeft.AutoButtonColor = true
			for i,v in pairs(scriptBarLeft["Arrow Graphic"]:GetChildren()) do
				v.BackgroundTransparency = 0
			end
		elseif v.Position.X.Offset >= 0 then
			entryCount = entryCount + 1
			if entryCount == 5 then
				scriptBarRight.Active = true
				scriptBarRight.AutoButtonColor = true
				for i,v in pairs(scriptBarRight["Arrow Graphic"]:GetChildren()) do
					v.BackgroundTransparency = 0
				end
			end
		end
	end
end

scriptBar.ChildAdded:connect(updateScriptBar)
scriptBar.ChildRemoved:connect(updateScriptBar)

scriptBarLeft.MouseButton1Click:connect(function()
	if scriptBarLeft.Active == false then return end
	for i,v in pairs(scriptBar:GetChildren()) do
		v.Position = v.Position + UDim2.new(0,100,0,0)
	end
	updateScriptBar()
end)

scriptBarRight.MouseButton1Click:connect(function()
	if scriptBarRight.Active == false then return end
	for i,v in pairs(scriptBar:GetChildren()) do
		v.Position = v.Position + UDim2.new(0,-100,0,0)
	end
	updateScriptBar()
end)

mouse.Button1Down:connect(function()
	if checkMouseInGui(editorGrid) then
	end
end)

openEvent.Event:connect(function(...)
	top.Visible = true
	local args = {...}
	if #args > 0 then
		openScript(args[1])
	end
end)

clipboardButton.MouseButton1Click:connect(function()
	if Clipboard and Clipboard.set then
		Clipboard.set(currentSource)
	elseif CopyString then
		CopyString(currentSource)
	elseif Synapse then
		Synapse:Copy(currentSource)
	elseif setclipboard then
		setclipboard(currentSource)
	end
end)

saveScriptButton.MouseButton1Click:connect(function()
	if Synapse then
		Synapse:WriteFile(game.PlaceId .. '_' .. currentScrName:gsub('%W', '') .. '_' .. math.random(100000, 999999) .. '.lua', currentSource)
	elseif writefile then
		writefile(game.PlaceId .. '_' .. currentScrName:gsub('%W', '') .. '_' .. math.random(100000, 999999) .. '.lua', currentSource);
	end
end)

closeButton.MouseButton1Click:connect(function()
	top.Visible = false
end)

--[[
local scr = script.Parent:WaitForChild("Scr")
local scr2 = script.Parent:WaitForChild("Scr2")
local scr3 = script.Parent:WaitForChild("Scr3")
local scr4 = script.Parent:WaitForChild("TOS")
local scr5 = script.Parent:WaitForChild("HW")
--]]

buildScript("",0,0,true)
--[[
openScript(scr)
openScript(scr2)
openScript(scr3)
openScript(scr4)
openScript(scr5)
--]]

scrollBar:Update()
scrollBarH:Update()
end)

function ScrambleNames(A)
	for i,v in pairs(A:GetDescendants()) do
		v.Name = RandomCharacters(math.random(16, 64));
	end
end

wait(.25)

D_E_X.Parent = game:GetService'CoreGui'