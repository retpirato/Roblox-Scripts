-- Made by abs_0 (absoabsolute0)
-- Objects
 
local mygui = Instance.new("ScreenGui")
local maintab = Instance.new("Frame")
local title = Instance.new("TextLabel")
local bodyframe = Instance.new("Frame")
local menuframe = Instance.new("Frame")
local generalbuttonframe = Instance.new("Frame")
local generalbutton = Instance.new("TextButton")
local generalbuttonlabel = Instance.new("ImageLabel")
local lpbuttonframe = Instance.new("Frame")
local lpbutton = Instance.new("TextButton")
local lpbuttonlabel = Instance.new("ImageLabel")
local tpbuttonframe = Instance.new("Frame")
local tpbutton = Instance.new("TextButton")
local tpbuttonlabel = Instance.new("ImageLabel")
local tptextbox = Instance.new("TextBox")
local tpunderline = Instance.new("Frame")
local tpunderlinebase = Instance.new("Frame")
local generalframe = Instance.new("Frame")
local generalespframe = Instance.new("Frame")
local generalespbutton = Instance.new("TextButton")
local generalesplabel = Instance.new("ImageLabel")
local generalcoinframe = Instance.new("Frame")
local generalcoinbutton = Instance.new("TextButton")
local generalcoinlabel = Instance.new("ImageLabel")
local generalgunframe = Instance.new("Frame")
local generalgunbutton = Instance.new("TextButton")
local generalgunlabel = Instance.new("ImageLabel")
local generallobbyframe = Instance.new("Frame")
local generallobbybutton = Instance.new("TextButton")
local generallobbylabel = Instance.new("ImageLabel")
local lpframe = Instance.new("Frame")
local lpjumpframe = Instance.new("Frame")
local lpjumpbutton = Instance.new("TextButton")
local lpjumplabel = Instance.new("ImageLabel")
local lpgravframe = Instance.new("Frame")
local lpgravbutton = Instance.new("TextButton")
local lpgravlabel = Instance.new("ImageLabel")
local lpwalkframe = Instance.new("Frame")
local lpwalkbutton = Instance.new("TextButton")
local lpwalklabel = Instance.new("ImageLabel")
local lpgodframe = Instance.new("Frame")
local lpgodbutton = Instance.new("TextButton")
local lpgodlabel = Instance.new("ImageLabel")
local backbutton1 = Instance.new("TextButton")
local backbutton1label = Instance.new("ImageLabel")
local backbutton2 = Instance.new("TextButton")
local backbutton2label = Instance.new("ImageLabel")
local creditsbutton = Instance.new("TextButton")
local creditsiconlabel1 = Instance.new("ImageLabel")
local creditsiconlabel2 = Instance.new("ImageLabel")
local toggle = Instance.new("Frame")
local closeall = Instance.new("TextButton")
local closeopen = Instance.new("TextButton")
local closeopenlabel = Instance.new("ImageLabel")
local creditstab = Instance.new("Frame")
local creditstitle = Instance.new("TextLabel")
local creditsframe = Instance.new("Frame")
local creditsmenuframe = Instance.new("Frame")
local creditsfield = Instance.new("TextLabel")
local closecredits = Instance.new("TextButton")
 
-- Properties
 
mygui.Name = "mygui"
mygui.Parent = game.CoreGui
 
maintab.Name = "maintab"
maintab.Parent = mygui
maintab.Active = true
maintab.BackgroundColor3 = Color3.new(1, 1, 1)
maintab.BackgroundTransparency = 0.5
maintab.BorderSizePixel = 0
maintab.Draggable = true
maintab.Position = UDim2.new(0, 900, 0, 330)
maintab.Size = UDim2.new(0, 256, 0, 30)
 
title.Name = "title"
title.Parent = maintab
title.BackgroundColor3 = Color3.new(0, 0.45098, 0.862745)
title.BorderSizePixel = 0
title.Size = UDim2.new(0, 256, 0, 30)
title.Font = Enum.Font.SourceSansBold
title.FontSize = Enum.FontSize.Size24
title.Text = "MM2 Gui"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextSize = 23
 
bodyframe.Name = "bodyframe"
bodyframe.Parent = maintab
bodyframe.BackgroundColor3 = Color3.new(0, 0.615686, 1)
bodyframe.BorderSizePixel = 0
bodyframe.ClipsDescendants = true
bodyframe.Position = UDim2.new(0, 0, 0, 30)
bodyframe.Size = UDim2.new(0, 256, 0, 222)
 
menuframe.Name = "menuframe"
menuframe.Parent = bodyframe
menuframe.BackgroundColor3 = Color3.new(1, 1, 1)
menuframe.BackgroundTransparency = 1
menuframe.BorderSizePixel = 0
menuframe.Size = UDim2.new(0, 256, 0, 222)
 
generalbuttonframe.Name = "generalbuttonframe"
generalbuttonframe.Parent = menuframe
generalbuttonframe.BackgroundColor3 = Color3.new(1, 1, 1)
generalbuttonframe.BorderSizePixel = 0
generalbuttonframe.Position = UDim2.new(0, 31, 0, 31)
generalbuttonframe.Size = UDim2.new(0, 194, 0, 31)
 
generalbutton.Name = "generalbutton"
generalbutton.Parent = generalbuttonframe
generalbutton.BackgroundColor3 = Color3.new(1, 1, 1)
generalbutton.BackgroundTransparency = 1
generalbutton.BorderSizePixel = 0
generalbutton.ClipsDescendants = true
generalbutton.Size = UDim2.new(0, 194, 0, 30)
generalbutton.Font = Enum.Font.SourceSansSemibold
generalbutton.FontSize = Enum.FontSize.Size24
generalbutton.Text = "General"
generalbutton.TextColor3 = Color3.new(0, 0.615686, 1)
generalbutton.TextSize = 20
 
generalbuttonlabel.Name = "generalbuttonlabel"
generalbuttonlabel.Parent = generalbutton
generalbuttonlabel.AnchorPoint = Vector2.new(0.5, 0.5)
generalbuttonlabel.BackgroundColor3 = Color3.new(1, 1, 1)
generalbuttonlabel.BackgroundTransparency = 1
generalbuttonlabel.BorderSizePixel = 0
generalbuttonlabel.Position = UDim2.new(0.840206146, 0, 0.500000477, 0)
generalbuttonlabel.Size = UDim2.new(0, 50, 0, 50)
generalbuttonlabel.Visible = false
generalbuttonlabel.Image = "rbxassetid://200182847"
generalbuttonlabel.ImageColor3 = Color3.new(0, 0.705882, 1)
generalbuttonlabel.ImageTransparency = 0.80000001192093
 
lpbuttonframe.Name = "lpbuttonframe"
lpbuttonframe.Parent = menuframe
lpbuttonframe.BackgroundColor3 = Color3.new(1, 1, 1)
lpbuttonframe.BorderSizePixel = 0
lpbuttonframe.Position = UDim2.new(0, 31, 0, 96)
lpbuttonframe.Size = UDim2.new(0, 194, 0, 31)
 
lpbutton.Name = "lpbutton"
lpbutton.Parent = lpbuttonframe
lpbutton.BackgroundColor3 = Color3.new(1, 1, 1)
lpbutton.BackgroundTransparency = 1
lpbutton.BorderSizePixel = 0
lpbutton.ClipsDescendants = true
lpbutton.Size = UDim2.new(0, 194, 0, 30)
lpbutton.Font = Enum.Font.SourceSansSemibold
lpbutton.FontSize = Enum.FontSize.Size24
lpbutton.Text = "Local Player"
lpbutton.TextColor3 = Color3.new(0, 0.615686, 1)
lpbutton.TextSize = 19
 
lpbuttonlabel.Name = "lpbuttonlabel"
lpbuttonlabel.Parent = lpbutton
lpbuttonlabel.AnchorPoint = Vector2.new(0.5, 0.5)
lpbuttonlabel.BackgroundColor3 = Color3.new(1, 1, 1)
lpbuttonlabel.BackgroundTransparency = 1
lpbuttonlabel.BorderSizePixel = 0
lpbuttonlabel.Position = UDim2.new(0.840206146, 0, 0.500000477, 0)
lpbuttonlabel.Size = UDim2.new(0, 50, 0, 50)
lpbuttonlabel.Visible = false
lpbuttonlabel.Image = "rbxassetid://200182847"
lpbuttonlabel.ImageColor3 = Color3.new(0, 0.705882, 1)
lpbuttonlabel.ImageTransparency = 0.80000001192093
 
tptextbox.Name = "tptextbox"
tptextbox.Parent = menuframe
tptextbox.BackgroundColor3 = Color3.new(1, 1, 1)
tptextbox.BackgroundTransparency = 1
tptextbox.BorderSizePixel = 0
tptextbox.Position = UDim2.new(0, 31, 0, 165)
tptextbox.Size = UDim2.new(0, 194, 0, 31)
tptextbox.Font = Enum.Font.SourceSans
tptextbox.FontSize = Enum.FontSize.Size18
tptextbox.Text = "Player Name"
tptextbox.TextColor3 = Color3.new(1, 1, 1)
tptextbox.TextSize = 15
 
tpunderline.Name = "tpunderline"
tpunderline.Parent = tptextbox
tpunderline.AnchorPoint = Vector2.new(0, 0)
tpunderline.BackgroundColor3 = Color3.new(1, 1, 1)
tpunderline.BorderSizePixel = 0
tpunderline.Position = UDim2.new(0.496815294, 0, 0.967741966, 0)
tpunderline.Size = UDim2.new(0, 0, 0, 2)
 
tpunderlinebase.Name = "tpunderlinebase"
tpunderlinebase.Parent = tptextbox
tpunderlinebase.AnchorPoint = Vector2.new(0.5, 0.5)
tpunderlinebase.BackgroundColor3 = Color3.new(1, 1, 1)
tpunderlinebase.BackgroundTransparency = 0.80000001192093
tpunderlinebase.BorderSizePixel = 0
tpunderlinebase.Position = UDim2.new(0.496815294, 0, 0.967741966, 0)
tpunderlinebase.Size = UDim2.new(0, 157, 0, 2)
tpunderlinebase.Visible = false --secretkey
 
generalframe.Name = "generalframe"
generalframe.Parent = bodyframe
generalframe.BackgroundColor3 = Color3.new(1, 1, 1)
generalframe.BackgroundTransparency = 1
generalframe.BorderSizePixel = 0
generalframe.Position = UDim2.new(0, 256, 0, 0)
generalframe.Size = UDim2.new(0, 256, 0, 222)
 
generalespframe.Name = "generalespframe"
generalespframe.Parent = generalframe
generalespframe.BackgroundColor3 = Color3.new(1, 1, 1)
generalespframe.BorderSizePixel = 0
generalespframe.Position = UDim2.new(0, 31, 0, 172)
generalespframe.Size = UDim2.new(0, 194, 0, 30)
 
generalespbutton.Name = "generalespbutton"
generalespbutton.Parent = generalespframe
generalespbutton.BackgroundColor3 = Color3.new(1, 1, 1)
generalespbutton.BackgroundTransparency = 1
generalespbutton.BorderSizePixel = 0
generalespbutton.ClipsDescendants = true
generalespbutton.Size = UDim2.new(0, 194, 0, 30)
generalespbutton.Font = Enum.Font.SourceSansSemibold
generalespbutton.FontSize = Enum.FontSize.Size24
generalespbutton.Text = "ESP (Left Alt)"
generalespbutton.TextColor3 = Color3.new(0, 0.615686, 1)
generalespbutton.TextSize = 19
 
generalesplabel.Name = "generalesplabel"
generalesplabel.Parent = generalespbutton
generalesplabel.AnchorPoint = Vector2.new(0.5, 0.5)
generalesplabel.BackgroundColor3 = Color3.new(1, 1, 1)
generalesplabel.BackgroundTransparency = 1
generalesplabel.BorderSizePixel = 0
generalesplabel.Position = UDim2.new(0.840206146, 0, 0.500000477, 0)
generalesplabel.Size = UDim2.new(0, 50, 0, 50)
generalesplabel.Visible = false
generalesplabel.Image = "rbxassetid://200182847"
generalesplabel.ImageColor3 = Color3.new(0, 0.705882, 1)
generalesplabel.ImageTransparency = 0.80000001192093
 
generalcoinframe.Name = "generalcoinframe"
generalcoinframe.Parent = generalframe
generalcoinframe.BackgroundColor3 = Color3.new(1, 1, 1)
generalcoinframe.BorderSizePixel = 0
generalcoinframe.Position = UDim2.new(0, 31, 0, 120)
generalcoinframe.Size = UDim2.new(0, 194, 0, 30)
 
generalcoinbutton.Name = "generalcoinbutton"
generalcoinbutton.Parent = generalcoinframe
generalcoinbutton.BackgroundColor3 = Color3.new(1, 1, 1)
generalcoinbutton.BackgroundTransparency = 1
generalcoinbutton.BorderSizePixel = 0
generalcoinbutton.ClipsDescendants = true
generalcoinbutton.Position = UDim2.new(0, 0, 0, -1)
generalcoinbutton.Size = UDim2.new(0, 194, 0, 31)
generalcoinbutton.Font = Enum.Font.SourceSansSemibold
generalcoinbutton.FontSize = Enum.FontSize.Size24
generalcoinbutton.Text = "Grab 10 Coins"
generalcoinbutton.TextColor3 = Color3.new(0, 0.615686, 1)
generalcoinbutton.TextSize = 19
 
generalcoinlabel.Name = "generalcoinlabel"
generalcoinlabel.Parent = generalcoinbutton
generalcoinlabel.AnchorPoint = Vector2.new(0.5, 0.5)
generalcoinlabel.BackgroundColor3 = Color3.new(1, 1, 1)
generalcoinlabel.BackgroundTransparency = 1
generalcoinlabel.BorderSizePixel = 0
generalcoinlabel.Position = UDim2.new(0.840206146, 0, 0.500000477, 0)
generalcoinlabel.Size = UDim2.new(0, 50, 0, 50)
generalcoinlabel.Visible = false
generalcoinlabel.Image = "rbxassetid://200182847"
generalcoinlabel.ImageColor3 = Color3.new(0, 0.705882, 1)
generalcoinlabel.ImageTransparency = 0.80000001192093
 
generalgunframe.Name = "generalgunframe"
generalgunframe.Parent = generalframe
generalgunframe.BackgroundColor3 = Color3.new(1, 1, 1)
generalgunframe.BorderSizePixel = 0
generalgunframe.Position = UDim2.new(0, 31, 0, 68)
generalgunframe.Size = UDim2.new(0, 194, 0, 30)
 
generalgunbutton.Name = "generalgunbutton"
generalgunbutton.Parent = generalgunframe
generalgunbutton.BackgroundColor3 = Color3.new(1, 1, 1)
generalgunbutton.BackgroundTransparency = 1
generalgunbutton.BorderSizePixel = 0
generalgunbutton.ClipsDescendants = true
generalgunbutton.Size = UDim2.new(0, 194, 0, 30)
generalgunbutton.Font = Enum.Font.SourceSansSemibold
generalgunbutton.FontSize = Enum.FontSize.Size24
generalgunbutton.Text = "Grab Gun"
generalgunbutton.TextColor3 = Color3.new(0, 0.615686, 1)
generalgunbutton.TextSize = 19
 
generalgunlabel.Name = "generalgunlabel"
generalgunlabel.Parent = generalgunbutton
generalgunlabel.AnchorPoint = Vector2.new(0.5, 0.5)
generalgunlabel.BackgroundColor3 = Color3.new(1, 1, 1)
generalgunlabel.BackgroundTransparency = 1
generalgunlabel.BorderSizePixel = 0
generalgunlabel.Position = UDim2.new(0.840206146, 0, 0.500000477, 0)
generalgunlabel.Size = UDim2.new(0, 50, 0, 50)
generalgunlabel.Visible = false
generalgunlabel.Image = "rbxassetid://200182847"
generalgunlabel.ImageColor3 = Color3.new(0, 0.705882, 1)
generalgunlabel.ImageTransparency = 0.80000001192093
 
generallobbyframe.Name = "generallobbyframe"
generallobbyframe.Parent = generalframe
generallobbyframe.BackgroundColor3 = Color3.new(1, 1, 1)
generallobbyframe.BorderSizePixel = 0
generallobbyframe.Position = UDim2.new(0, 31, 0, 17)
generallobbyframe.Size = UDim2.new(0, 194, 0, 30)
 
generallobbybutton.Name = "generallobbybutton"
generallobbybutton.Parent = generallobbyframe
generallobbybutton.BackgroundColor3 = Color3.new(1, 1, 1)
generallobbybutton.BackgroundTransparency = 1
generallobbybutton.BorderSizePixel = 0
generallobbybutton.ClipsDescendants = true
generallobbybutton.Size = UDim2.new(0, 194, 0, 30)
generallobbybutton.Font = Enum.Font.SourceSansSemibold
generallobbybutton.FontSize = Enum.FontSize.Size24
generallobbybutton.Text = "TP to Lobby"
generallobbybutton.TextColor3 = Color3.new(0, 0.615686, 1)
generallobbybutton.TextSize = 19
 
generallobbylabel.Name = "generallobbylabel"
generallobbylabel.Parent = generallobbybutton
generallobbylabel.AnchorPoint = Vector2.new(0.5, 0.5)
generallobbylabel.BackgroundColor3 = Color3.new(1, 1, 1)
generallobbylabel.BackgroundTransparency = 1
generallobbylabel.BorderSizePixel = 0
generallobbylabel.Position = UDim2.new(0.840206146, 0, 0.500000477, 0)
generallobbylabel.Size = UDim2.new(0, 50, 0, 50)
generallobbylabel.Visible = false
generallobbylabel.Image = "rbxassetid://200182847"
generallobbylabel.ImageColor3 = Color3.new(0, 0.705882, 1)
generallobbylabel.ImageTransparency = 0.80000001192093
 
lpframe.Name = "lpframe"
lpframe.Parent = bodyframe
lpframe.BackgroundColor3 = Color3.new(1, 1, 1)
lpframe.BackgroundTransparency = 1
lpframe.BorderSizePixel = 0
lpframe.Position = UDim2.new(0, 256, 0, 0)
lpframe.Size = UDim2.new(0, 256, 0, 222)
 
lpjumpframe.Name = "lpjumpframe"
lpjumpframe.Parent = lpframe
lpjumpframe.BackgroundColor3 = Color3.new(1, 1, 1)
lpjumpframe.BorderSizePixel = 0
lpjumpframe.Position = UDim2.new(0, 31, 0, 172)
lpjumpframe.Size = UDim2.new(0, 194, 0, 30)
 
lpjumpbutton.Name = "lpjumpbutton"
lpjumpbutton.Parent = lpjumpframe
lpjumpbutton.BackgroundColor3 = Color3.new(1, 1, 1)
lpjumpbutton.BackgroundTransparency = 1
lpjumpbutton.BorderSizePixel = 0
lpjumpbutton.ClipsDescendants = true
lpjumpbutton.Size = UDim2.new(0, 194, 0, 30)
lpjumpbutton.Font = Enum.Font.SourceSansSemibold
lpjumpbutton.FontSize = Enum.FontSize.Size24
lpjumpbutton.Text = "High Jump"
lpjumpbutton.TextColor3 = Color3.new(0, 0.615686, 1)
lpjumpbutton.TextSize = 19
 
lpjumplabel.Name = "lpjumplabel"
lpjumplabel.Parent = lpjumpbutton
lpjumplabel.AnchorPoint = Vector2.new(0.5, 0.5)
lpjumplabel.BackgroundColor3 = Color3.new(1, 1, 1)
lpjumplabel.BackgroundTransparency = 1
lpjumplabel.BorderSizePixel = 0
lpjumplabel.Position = UDim2.new(0.840206146, 0, 0.500000477, 0)
lpjumplabel.Size = UDim2.new(0, 50, 0, 50)
lpjumplabel.Visible = false
lpjumplabel.Image = "rbxassetid://200182847"
lpjumplabel.ImageColor3 = Color3.new(0, 0.705882, 1)
lpjumplabel.ImageTransparency = 0.80000001192093
 
lpgravframe.Name = "lpgravframe"
lpgravframe.Parent = lpframe
lpgravframe.BackgroundColor3 = Color3.new(1, 1, 1)
lpgravframe.BorderSizePixel = 0
lpgravframe.Position = UDim2.new(0, 31, 0, 120)
lpgravframe.Size = UDim2.new(0, 194, 0, 30)
 
lpgravbutton.Name = "lpgravbutton"
lpgravbutton.Parent = lpgravframe
lpgravbutton.BackgroundColor3 = Color3.new(1, 1, 1)
lpgravbutton.BackgroundTransparency = 1
lpgravbutton.BorderSizePixel = 0
lpgravbutton.ClipsDescendants = true
lpgravbutton.Position = UDim2.new(0, 0, 0, -1)
lpgravbutton.Size = UDim2.new(0, 194, 0, 31)
lpgravbutton.Font = Enum.Font.SourceSansSemibold
lpgravbutton.FontSize = Enum.FontSize.Size24
lpgravbutton.Text = "Low Gravity"
lpgravbutton.TextColor3 = Color3.new(0, 0.615686, 1)
lpgravbutton.TextSize = 19
 
lpgravlabel.Name = "lpgravlabel"
lpgravlabel.Parent = lpgravbutton
lpgravlabel.AnchorPoint = Vector2.new(0.5, 0.5)
lpgravlabel.BackgroundColor3 = Color3.new(1, 1, 1)
lpgravlabel.BackgroundTransparency = 1
lpgravlabel.BorderSizePixel = 0
lpgravlabel.Position = UDim2.new(0.840206146, 0, 0.500000477, 0)
lpgravlabel.Size = UDim2.new(0, 50, 0, 50)
lpgravlabel.Visible = false
lpgravlabel.Image = "rbxassetid://200182847"
lpgravlabel.ImageColor3 = Color3.new(0, 0.705882, 1)
lpgravlabel.ImageTransparency = 0.80000001192093
 
lpwalkframe.Name = "lpwalkframe"
lpwalkframe.Parent = lpframe
lpwalkframe.BackgroundColor3 = Color3.new(1, 1, 1)
lpwalkframe.BorderSizePixel = 0
lpwalkframe.Position = UDim2.new(0, 31, 0, 68)
lpwalkframe.Size = UDim2.new(0, 194, 0, 30)
 
lpwalkbutton.Name = "lpwalkbutton"
lpwalkbutton.Parent = lpwalkframe
lpwalkbutton.BackgroundColor3 = Color3.new(1, 1, 1)
lpwalkbutton.BackgroundTransparency = 1
lpwalkbutton.BorderSizePixel = 0
lpwalkbutton.ClipsDescendants = true
lpwalkbutton.Size = UDim2.new(0, 194, 0, 30)
lpwalkbutton.Font = Enum.Font.SourceSansSemibold
lpwalkbutton.FontSize = Enum.FontSize.Size24
lpwalkbutton.Text = "Fast Walk"
lpwalkbutton.TextColor3 = Color3.new(0, 0.615686, 1)
lpwalkbutton.TextSize = 19
 
lpwalklabel.Name = "lpwalklabel"
lpwalklabel.Parent = lpwalkbutton
lpwalklabel.AnchorPoint = Vector2.new(0.5, 0.5)
lpwalklabel.BackgroundColor3 = Color3.new(1, 1, 1)
lpwalklabel.BackgroundTransparency = 1
lpwalklabel.BorderSizePixel = 0
lpwalklabel.Position = UDim2.new(0.840206146, 0, 0.500000477, 0)
lpwalklabel.Size = UDim2.new(0, 50, 0, 50)
lpwalklabel.Visible = false
lpwalklabel.Image = "rbxassetid://200182847"
lpwalklabel.ImageColor3 = Color3.new(0, 0.705882, 1)
lpwalklabel.ImageTransparency = 0.80000001192093
 
lpgodframe.Name = "lpgodframe"
lpgodframe.Parent = lpframe
lpgodframe.BackgroundColor3 = Color3.new(1, 1, 1)
lpgodframe.BorderSizePixel = 0
lpgodframe.Position = UDim2.new(0, 31, 0, 17)
lpgodframe.Size = UDim2.new(0, 194, 0, 30)
 
lpgodbutton.Name = "lpgodbutton"
lpgodbutton.Parent = lpgodframe
lpgodbutton.BackgroundColor3 = Color3.new(1, 1, 1)
lpgodbutton.BackgroundTransparency = 1
lpgodbutton.BorderSizePixel = 0
lpgodbutton.ClipsDescendants = true
lpgodbutton.Size = UDim2.new(0, 194, 0, 30)
lpgodbutton.Font = Enum.Font.SourceSansSemibold
lpgodbutton.FontSize = Enum.FontSize.Size24
lpgodbutton.Text = "God Mode"
lpgodbutton.TextColor3 = Color3.new(0, 0.615686, 1)
lpgodbutton.TextSize = 19
 
lpgodlabel.Name = "lpgodlabel"
lpgodlabel.Parent = lpgodbutton
lpgodlabel.AnchorPoint = Vector2.new(0.5, 0.5)
lpgodlabel.BackgroundColor3 = Color3.new(1, 1, 1)
lpgodlabel.BackgroundTransparency = 1
lpgodlabel.BorderSizePixel = 0
lpgodlabel.Position = UDim2.new(0.840206146, 0, 0.500000477, 0)
lpgodlabel.Size = UDim2.new(0, 50, 0, 50)
lpgodlabel.Visible = false
lpgodlabel.Image = "rbxassetid://200182847"
lpgodlabel.ImageColor3 = Color3.new(0, 0.705882, 1)
lpgodlabel.ImageTransparency = 0.80000001192093
 
backbutton1.Name = "backbutton1"
backbutton1.Parent = maintab
backbutton1.Active = false
backbutton1.BackgroundColor3 = Color3.new(0, 0.407843, 0.658824)
backbutton1.BackgroundTransparency = 1
backbutton1.BorderSizePixel = 0
backbutton1.ClipsDescendants = true
backbutton1.Size = UDim2.new(0, 29, 0, 30)
backbutton1.Visible = false
backbutton1.AutoButtonColor = false
backbutton1.Font = Enum.Font.SourceSansBold
backbutton1.FontSize = Enum.FontSize.Size24
backbutton1.Text = "<"
backbutton1.TextColor3 = Color3.new(1, 1, 1)
backbutton1.TextSize = 20
 
backbutton1label.Name = "backbutton1label"
backbutton1label.Parent = backbutton1
backbutton1label.AnchorPoint = Vector2.new(0.5, 0.5)
backbutton1label.BackgroundColor3 = Color3.new(1, 1, 1)
backbutton1label.BackgroundTransparency = 1
backbutton1label.BorderSizePixel = 0
backbutton1label.Position = UDim2.new(0.840206146, 0, 0.500000477, 0)
backbutton1label.Size = UDim2.new(0, 50, 0, 50)
backbutton1label.Visible = false
backbutton1label.Image = "rbxassetid://200182847"
backbutton1label.ImageTransparency = 0.80000001192093
 
backbutton2.Name = "backbutton2"
backbutton2.Parent = maintab
backbutton2.Active = false
backbutton2.BackgroundColor3 = Color3.new(0, 0.407843, 0.658824)
backbutton2.BackgroundTransparency = 1
backbutton2.BorderSizePixel = 0
backbutton2.ClipsDescendants = true
backbutton2.Size = UDim2.new(0, 29, 0, 30)
backbutton2.Visible = false
backbutton2.AutoButtonColor = false
backbutton2.Font = Enum.Font.SourceSansBold
backbutton2.FontSize = Enum.FontSize.Size24
backbutton2.Text = "<"
backbutton2.TextColor3 = Color3.new(1, 1, 1)
backbutton2.TextSize = 20
 
backbutton2label.Name = "backbutton2label"
backbutton2label.Parent = backbutton2
backbutton2label.AnchorPoint = Vector2.new(0.5, 0.5)
backbutton2label.BackgroundColor3 = Color3.new(1, 1, 1)
backbutton2label.BackgroundTransparency = 1
backbutton2label.BorderSizePixel = 0
backbutton2label.Position = UDim2.new(0.840206146, 0, 0.500000477, 0)
backbutton2label.Size = UDim2.new(0, 50, 0, 50)
backbutton2label.Visible = false
backbutton2label.Image = "rbxassetid://200182847"
backbutton2label.ImageTransparency = 0.80000001192093
 
creditsbutton.Name = "creditsbutton"
creditsbutton.Parent = maintab
creditsbutton.BackgroundColor3 = Color3.new(1, 1, 1)
creditsbutton.BackgroundTransparency = 1
creditsbutton.BorderSizePixel = 0
creditsbutton.ClipsDescendants = true
creditsbutton.Position = UDim2.new(0.87890625, 0, 0, 0)
creditsbutton.Size = UDim2.new(0, 31, 0, 30)
creditsbutton.Font = Enum.Font.SourceSansSemibold
creditsbutton.FontSize = Enum.FontSize.Size18
creditsbutton.Text = ""
creditsbutton.TextColor3 = Color3.new(0, 0.615686, 1)
creditsbutton.TextSize = 15
 
creditsiconlabel1.Name = "creditsiconlabel1"
creditsiconlabel1.Parent = creditsbutton
creditsiconlabel1.AnchorPoint = Vector2.new(0.5, 0.5)
creditsiconlabel1.BackgroundColor3 = Color3.new(1, 1, 1)
creditsiconlabel1.BackgroundTransparency = 1
creditsiconlabel1.BorderSizePixel = 0
creditsiconlabel1.Position = UDim2.new(0.840206146, 0, 0.500000477, 0)
creditsiconlabel1.Size = UDim2.new(0, 50, 0, 50)
creditsiconlabel1.Visible = false
creditsiconlabel1.Image = "rbxassetid://200182847"
creditsiconlabel1.ImageTransparency = 0.80000001192093
 
creditsiconlabel2.Name = "creditsiconlabel2"
creditsiconlabel2.Parent = creditsbutton
creditsiconlabel2.AnchorPoint = Vector2.new(0.5, 0.5)
creditsiconlabel2.BackgroundColor3 = Color3.new(1, 1, 1)
creditsiconlabel2.BackgroundTransparency = 1
creditsiconlabel2.BorderSizePixel = 0
creditsiconlabel2.Position = UDim2.new(0.5, 0, 0.5, 0)
creditsiconlabel2.Size = UDim2.new(0, 17, 0, 17)
creditsiconlabel2.Image = "rbxassetid://23151450"
 
toggle.Name = "toggle"
toggle.Parent = mygui
toggle.Active = true
toggle.BackgroundColor3 = Color3.new(0.992157, 0.984314, 1)
toggle.BackgroundTransparency = 0.5
toggle.BorderSizePixel = 0
toggle.Draggable = true
toggle.Position = UDim2.new(0, 5, 0, 530)
toggle.Size = UDim2.new(0, 140, 0, 30)
 
closeall.Name = "closeall"
closeall.Parent = toggle
closeall.BackgroundColor3 = Color3.new(1, 0, 0)
closeall.BorderSizePixel = 0
closeall.Position = UDim2.new(0, 110, 0, 0)
closeall.Size = UDim2.new(0, 30, 0, 30)
closeall.FontSize = Enum.FontSize.Size18
closeall.Text = ""
closeall.TextSize = 15
 
closeopen.Name = "closeopen"
closeopen.Parent = toggle
closeopen.BackgroundColor3 = Color3.new(0, 0.615686, 1)
closeopen.BorderSizePixel = 0
closeopen.ClipsDescendants = true
closeopen.Size = UDim2.new(0, 110, 0, 30)
closeopen.AutoButtonColor = false
closeopen.Font = Enum.Font.SourceSansBold
closeopen.FontSize = Enum.FontSize.Size24
closeopen.Text = "Close"
closeopen.TextColor3 = Color3.new(1, 1, 1)
closeopen.TextSize = 20
 
closeopenlabel.Name = "closeopenlabel"
closeopenlabel.Parent = closeopen
closeopenlabel.AnchorPoint = Vector2.new(0.5, 0.5)
closeopenlabel.BackgroundColor3 = Color3.new(1, 1, 1)
closeopenlabel.BackgroundTransparency = 1
closeopenlabel.BorderSizePixel = 0
closeopenlabel.Position = UDim2.new(0.840206146, 0, 0.500000477, 0)
closeopenlabel.Size = UDim2.new(0, 50, 0, 50)
closeopenlabel.Visible = false
closeopenlabel.Image = "rbxassetid://200182847"
closeopenlabel.ImageTransparency = 0.80000001192093
 
creditstab.Name = "creditstab"
creditstab.Parent = mygui
creditstab.Active = true
creditstab.BackgroundColor3 = Color3.new(1, 1, 1)
creditstab.BackgroundTransparency = 0.5
creditstab.BorderSizePixel = 0
creditstab.Draggable = true
creditstab.Position = UDim2.new(0, 42, 0, 47)
creditstab.Size = UDim2.new(0, 256, 0, 30)
creditstab.Visible = false
 
creditstitle.Name = "creditstitle"
creditstitle.Parent = creditstab
creditstitle.BackgroundColor3 = Color3.new(0, 0.45098, 0.862745)
creditstitle.BorderSizePixel = 0
creditstitle.Position = UDim2.new(-0.001953125, 0, 0, 0)
creditstitle.Size = UDim2.new(0, 256, 0, 30)
creditstitle.Font = Enum.Font.SourceSansBold
creditstitle.FontSize = Enum.FontSize.Size24
creditstitle.Text = "Credits"
creditstitle.TextColor3 = Color3.new(1, 1, 1)
creditstitle.TextSize = 23
 
creditsframe.Name = "creditsframe"
creditsframe.Parent = creditstab
creditsframe.BackgroundColor3 = Color3.new(0, 0.615686, 1)
creditsframe.BorderSizePixel = 0
creditsframe.ClipsDescendants = true
creditsframe.Position = UDim2.new(0, 0, 0, 30)
creditsframe.Size = UDim2.new(0, 256, 0, 222)
 
creditsmenuframe.Name = "menuframe"
creditsmenuframe.Parent = creditsframe
creditsmenuframe.BackgroundColor3 = Color3.new(1, 1, 1)
creditsmenuframe.BackgroundTransparency = 1
creditsmenuframe.BorderSizePixel = 0
creditsmenuframe.Size = UDim2.new(0, 256, 0, 222)
 
creditsfield.Name = "creditsfield"
creditsfield.Parent = creditsmenuframe
creditsfield.BackgroundColor3 = Color3.new(1, 1, 1)
creditsfield.BorderSizePixel = 0
creditsfield.Position = UDim2.new(0, 31, 0, 31)
creditsfield.Size = UDim2.new(0, 194, 0, 31)
creditsfield.Font = Enum.Font.SourceSansSemibold
creditsfield.FontSize = Enum.FontSize.Size24
creditsfield.Text = "By: abs_0"
creditsfield.TextColor3 = Color3.new(0, 0.615686, 1)
creditsfield.TextSize = 20
 
closecredits.Name = "closeall"
closecredits.Parent = creditstab
closecredits.BackgroundColor3 = Color3.new(1, 0, 0)
closecredits.BorderSizePixel = 0
closecredits.Position = UDim2.new(0, 226, 0, 0)
closecredits.Size = UDim2.new(0, 30, 0, 30)
closecredits.FontSize = Enum.FontSize.Size18
closecredits.Text = ""
closecredits.TextSize = 15
 
--Appearance Scripts
 
--mygui.maintab.bodyframe.generalframe.generallobbyframe.generallobbybutton.Script
local mouse = game.Players.LocalPlayer:GetMouse()
 
 
generallobbybutton.MouseButton1Down:connect(function()
    local x = (mouse.X) - (generallobbybutton.AbsolutePosition.X)
    local y = (mouse.Y) - (generallobbybutton.AbsolutePosition.Y)
    generallobbylabel.Position = UDim2.new(0,x,0,y)
    generallobbylabel.Size = UDim2.new(0,50,0,50)
    generallobbylabel.ImageTransparency = 0.8
    generallobbylabel.Visible = true
   
    wait()
   
    generallobbylabel:TweenSize(
        UDim2.new(0,390,0,390),
        "Out",
        "Quint",
        1
    )
end)
 
generallobbybutton.MouseButton1Up:connect(function()
    wait(0.35)
    local TweenService = game:GetService("TweenService")
    local circle = generallobbylabel
   
    local Info = TweenInfo.new(
        0.2, -- Length
        Enum.EasingStyle.Linear, -- Easing Style
        Enum.EasingDirection.Out, -- Easing Direction
        0, -- Times repeated
        false, -- Reverse
        0 -- Delay
    )
    local Goals =
    {
        ImageTransparency = 1;
    }
   
    local tween = TweenService:Create(circle,Info,Goals)
    tween:Play()
end)
 
--mygui.maintab.bodyframe.generalframe.generalgunframe.generalgunbutton.Script
local mouse = game.Players.LocalPlayer:GetMouse()
 
 
generalgunbutton.MouseButton1Down:connect(function()
    local x = (mouse.X) - (generalgunbutton.AbsolutePosition.X)
    local y = (mouse.Y) - (generalgunbutton.AbsolutePosition.Y)
    generalgunlabel.Position = UDim2.new(0,x,0,y)
    generalgunlabel.Size = UDim2.new(0,50,0,50)
    generalgunlabel.ImageTransparency = 0.8
    generalgunlabel.Visible = true
   
    wait()
   
    generalgunlabel:TweenSize(
        UDim2.new(0,390,0,390),
        "Out",
        "Quint",
        1
    )
end)
 
generalgunbutton.MouseButton1Up:connect(function()
    wait(0.35)
    local TweenService = game:GetService("TweenService")
    local circle = generalgunlabel
   
    local Info = TweenInfo.new(
        0.2, -- Length
        Enum.EasingStyle.Linear, -- Easing Style
        Enum.EasingDirection.Out, -- Easing Direction
        0, -- Times repeated
        false, -- Reverse
        0 -- Delay
    )
    local Goals =
    {
        ImageTransparency = 1;
    }
   
    local tween = TweenService:Create(circle,Info,Goals)
    tween:Play()
end)
 
--mygui.maintab.bodyframe.generalframe.generalcoinframe.generalcoinbutton.Script
local mouse = game.Players.LocalPlayer:GetMouse()
 
 
generalcoinbutton.MouseButton1Down:connect(function()
    local x = (mouse.X) - (generalcoinbutton.AbsolutePosition.X)
    local y = (mouse.Y) - (generalcoinbutton.AbsolutePosition.Y)
    generalcoinlabel.Position = UDim2.new(0,x,0,y)
    generalcoinlabel.Size = UDim2.new(0,50,0,50)
    generalcoinlabel.ImageTransparency = 0.8
    generalcoinlabel.Visible = true
   
    wait()
   
    generalcoinlabel:TweenSize(
        UDim2.new(0,390,0,390),
        "Out",
        "Quint",
        1
    )
end)
 
generalcoinbutton.MouseButton1Up:connect(function()
    wait(0.35)
    local TweenService = game:GetService("TweenService")
    local circle = generalcoinlabel
   
    local Info = TweenInfo.new(
        0.2, -- Length
        Enum.EasingStyle.Linear, -- Easing Style
        Enum.EasingDirection.Out, -- Easing Direction
        0, -- Times repeated
        false, -- Reverse
        0 -- Delay
    )
    local Goals =
    {
        ImageTransparency = 1;
    }
   
    local tween = TweenService:Create(circle,Info,Goals)
    tween:Play()
end)
 
--mygui.maintab.bodyframe.generalframe.generalespframe.generalespbutton.Script
local mouse = game.Players.LocalPlayer:GetMouse()
 
 
generalespbutton.MouseButton1Down:connect(function()
    local x = (mouse.X) - (generalespbutton.AbsolutePosition.X)
    local y = (mouse.Y) - (generalespbutton.AbsolutePosition.Y)
    generalesplabel.Position = UDim2.new(0,x,0,y)
    generalesplabel.Size = UDim2.new(0,50,0,50)
    generalesplabel.ImageTransparency = 0.8
    generalesplabel.Visible = true
   
    wait()
   
    generalesplabel:TweenSize(
        UDim2.new(0,390,0,390),
        "Out",
        "Quint",
        1
    )
end)
 
generalespbutton.MouseButton1Up:connect(function()
    wait(0.35)
    local TweenService = game:GetService("TweenService")
    local circle = generalesplabel
   
    local Info = TweenInfo.new(
        0.2, -- Length
        Enum.EasingStyle.Linear, -- Easing Style
        Enum.EasingDirection.Out, -- Easing Direction
        0, -- Times repeated
        false, -- Reverse
        0 -- Delay
    )
    local Goals =
    {
        ImageTransparency = 1;
    }
   
    local tween = TweenService:Create(circle,Info,Goals)
    tween:Play()
end)
 
--mygui.maintab.bodyframe.lpframe.lpgodframe.lpgodbutton.Script
local mouse = game.Players.LocalPlayer:GetMouse()
 
 
lpgodbutton.MouseButton1Down:connect(function()
    local x = (mouse.X) - (lpgodbutton.AbsolutePosition.X)
    local y = (mouse.Y) - (lpgodbutton.AbsolutePosition.Y)
    lpgodbutton.lpgodlabel.Position = UDim2.new(0,x,0,y)
    lpgodbutton.lpgodlabel.Size = UDim2.new(0,50,0,50)
    lpgodbutton.lpgodlabel.ImageTransparency = 0.8
    lpgodbutton.lpgodlabel.Visible = true
   
    wait()
   
    lpgodbutton.lpgodlabel:TweenSize(
        UDim2.new(0,390,0,390),
        "Out",
        "Quint",
        1
    )
end)
 
lpgodbutton.MouseButton1Up:connect(function()
    wait(0.35)
    local TweenService = game:GetService("TweenService")
    local circle = lpgodbutton.lpgodlabel
   
    local Info = TweenInfo.new(
        0.2, -- Length
        Enum.EasingStyle.Linear, -- Easing Style
        Enum.EasingDirection.Out, -- Easing Direction
        0, -- Times repeated
        false, -- Reverse
        0 -- Delay
    )
    local Goals =
    {
        ImageTransparency = 1;
    }
   
    local tween = TweenService:Create(circle,Info,Goals)
    tween:Play()
end)
 
--mygui.maintab.bodyframe.lpframe.lpwalkframe.lpwalkbutton.Script
local mouse = game.Players.LocalPlayer:GetMouse()
 
 
lpwalkbutton.MouseButton1Down:connect(function()
    if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == 16 * 5 then
        lpwalkbutton.TextColor3 = Color3.new(1,128/255,0)
        lpwalkbutton.lpwalklabel.ImageColor3 = Color3.new(1,128/255,0)
    else
        lpwalkbutton.TextColor3 = Color3.new(0,157/255,1)
        lpwalkbutton.lpwalklabel.ImageColor3 = Color3.new(0,157/255,1)
    end
   
    local x = (mouse.X) - (lpwalkbutton.AbsolutePosition.X)
    local y = (mouse.Y) - (lpwalkbutton.AbsolutePosition.Y)
    lpwalkbutton.lpwalklabel.Position = UDim2.new(0,x,0,y)
    lpwalkbutton.lpwalklabel.Size = UDim2.new(0,50,0,50)
    lpwalkbutton.lpwalklabel.ImageTransparency = 0.8
    lpwalkbutton.lpwalklabel.Visible = true
   
    wait()
   
    lpwalkbutton.lpwalklabel:TweenSize(
        UDim2.new(0,390,0,390),
        "Out",
        "Quint",
        1
    )
end)
 
lpwalkbutton.MouseButton1Up:connect(function()
    wait(0.35)
    local TweenService = game:GetService("TweenService")
    local circle = lpwalkbutton.lpwalklabel
   
    local Info = TweenInfo.new(
        0.2, -- Length
        Enum.EasingStyle.Linear, -- Easing Style
        Enum.EasingDirection.Out, -- Easing Direction
        0, -- Times repeated
        false, -- Reverse
        0 -- Delay
    )
    local Goals =
    {
        ImageTransparency = 1;
    }
   
    local tween = TweenService:Create(circle,Info,Goals)
    tween:Play()
end)
 
--mygui.maintab.bodyframe.lpframe.lpgravframe.lpgravbutton.Script
local mouse = game.Players.LocalPlayer:GetMouse()
 
lpgravbutton.MouseButton1Down:connect(function()
    if game.Workspace.Gravity < 196.1 then
        lpgravbutton.TextColor3 = Color3.new(1,128/255,0)
        lpgravbutton.lpgravlabel.ImageColor3 = Color3.new(1,128/255,0)
    else
        lpgravbutton.TextColor3 = Color3.new(0,157/255,1)
        lpgravbutton.lpgravlabel.ImageColor3 = Color3.new(0,157/255,1)
    end
   
    local x = (mouse.X) - (lpgravbutton.AbsolutePosition.X)
    local y = (mouse.Y) - (lpgravbutton.AbsolutePosition.Y)
    lpgravbutton.lpgravlabel.Position = UDim2.new(0,x,0,y)
    lpgravbutton.lpgravlabel.Size = UDim2.new(0,50,0,50)
    lpgravbutton.lpgravlabel.ImageTransparency = 0.8
    lpgravbutton.lpgravlabel.Visible = true
   
    wait()
   
    lpgravbutton.lpgravlabel:TweenSize(
        UDim2.new(0,390,0,390),
        "Out",
        "Quint",
        1
    )
end)
 
lpgravbutton.MouseButton1Up:connect(function()
    wait(0.35)
    local TweenService = game:GetService("TweenService")
    local circle = lpgravbutton.lpgravlabel
   
    local Info = TweenInfo.new(
        0.2, -- Length
        Enum.EasingStyle.Linear, -- Easing Style
        Enum.EasingDirection.Out, -- Easing Direction
        0, -- Times repeated
        false, -- Reverse
        0 -- Delay
    )
    local Goals =
    {
        ImageTransparency = 1;
    }
   
    local tween = TweenService:Create(circle,Info,Goals)
    tween:Play()
end)
 
--mygui.maintab.bodyframe.lpframe.lpjumpframe.lpjumpbutton.Script
local mouse = game.Players.LocalPlayer:GetMouse()
 
 
lpjumpbutton.MouseButton1Down:connect(function()
    if game.Players.LocalPlayer.Character.Humanoid.JumpPower == 100 then
        lpjumpbutton.TextColor3 = Color3.new(1,128/255,0)
        lpjumpbutton.lpjumplabel.ImageColor3 = Color3.new(1,128/255,0)
    else
        lpjumpbutton.TextColor3 = Color3.new(0,157/255,1)
        lpjumpbutton.lpjumplabel.ImageColor3 = Color3.new(0,157/255,1)
    end
   
    local x = (mouse.X) - (lpjumpbutton.AbsolutePosition.X)
    local y = (mouse.Y) - (lpjumpbutton.AbsolutePosition.Y)
    lpjumpbutton.lpjumplabel.Position = UDim2.new(0,x,0,y)
    lpjumpbutton.lpjumplabel.Size = UDim2.new(0,50,0,50)
    lpjumpbutton.lpjumplabel.ImageTransparency = 0.8
    lpjumpbutton.lpjumplabel.Visible = true
   
    wait()
   
    lpjumpbutton.lpjumplabel:TweenSize(
        UDim2.new(0,390,0,390),
        "Out",
        "Quint",
        1
    )
end)
 
lpjumpbutton.MouseButton1Up:connect(function()
    wait(0.35)
    local TweenService = game:GetService("TweenService")
    local circle = lpjumpbutton.lpjumplabel
   
    local Info = TweenInfo.new(
        0.2, -- Length
        Enum.EasingStyle.Linear, -- Easing Style
        Enum.EasingDirection.Out, -- Easing Direction
        0, -- Times repeated
        false, -- Reverse
        0 -- Delay
    )
    local Goals =
    {
        ImageTransparency = 1;
    }
   
    local tween = TweenService:Create(circle,Info,Goals)
    tween:Play()
end)
 
--mygui.maintab.bodyframe.menuframe.generalbuttonframe.generalbutton.Script
local mouse = game.Players.LocalPlayer:GetMouse()
 
 
generalbutton.MouseButton1Down:connect(function()
    local x = (mouse.X) - (generalbutton.AbsolutePosition.X)
    local y = (mouse.Y) - (generalbutton.AbsolutePosition.Y)
    generalbutton.generalbuttonlabel.Position = UDim2.new(0,x,0,y)
    generalbutton.generalbuttonlabel.Size = UDim2.new(0,50,0,50)
    generalbutton.generalbuttonlabel.ImageTransparency = 0.8
    generalbutton.generalbuttonlabel.Visible = true
   
    wait()
   
    generalbutton.generalbuttonlabel:TweenSize(
        UDim2.new(0,390,0,390),
        "Out",
        "Quint",
        1
    )
end)
 
generalbutton.MouseButton1Up:connect(function()
    wait(0.35)
    local TweenService = game:GetService("TweenService")
    local circle = generalbutton.generalbuttonlabel
   
    local Info = TweenInfo.new(
        0.2, -- Length
        Enum.EasingStyle.Linear, -- Easing Style
        Enum.EasingDirection.Out, -- Easing Direction
        0, -- Times repeated
        false, -- Reverse
        0 -- Delay
    )
    local Goals =
    {
        ImageTransparency = 1;
    }
   
    local tween = TweenService:Create(circle,Info,Goals)
    tween:Play()
end)
 
--mygui.maintab.bodyframe.menuframe.generalbuttonframe.generalbutton.TransitionScript
generalbutton.MouseButton1Click:connect(function()
    wait(0.25)
    menuframe:TweenPosition(
        UDim2.new(0,-256,0,0),
        "Out",
        "Quint",
        0.2
    )
    generalframe:TweenPosition(
        UDim2.new(0,0,0,0),
        "Out",
        "Quint",
        0.2
    )
    backbutton1.Visible = true
    backbutton1.Active = true
    maintab.title.Text = "General"
    maintab.title.TextSize = 19
end)
 
--mygui.maintab.bodyframe.menuframe.lpbuttonframe.lpbutton.Script
local mouse = game.Players.LocalPlayer:GetMouse()
 
 
lpbutton.MouseButton1Down:connect(function()
    local x = (mouse.X) - (lpbutton.AbsolutePosition.X)
    local y = (mouse.Y) - (lpbutton.AbsolutePosition.Y)
    lpbutton.lpbuttonlabel.Position = UDim2.new(0,x,0,y)
    lpbutton.lpbuttonlabel.Size = UDim2.new(0,50,0,50)
    lpbutton.lpbuttonlabel.ImageTransparency = 0.8
    lpbutton.lpbuttonlabel.Visible = true
   
    wait()
   
    lpbuttonlabel:TweenSize(
        UDim2.new(0,390,0,390),
        "Out",
        "Quint",
        1
    )
end)
 
lpbutton.MouseButton1Up:connect(function()
    wait(0.35)
    local TweenService = game:GetService("TweenService")
    local circle = lpbutton.lpbuttonlabel
   
    local Info = TweenInfo.new(
        0.2, -- Length
        Enum.EasingStyle.Linear, -- Easing Style
        Enum.EasingDirection.Out, -- Easing Direction
        0, -- Times repeated
        false, -- Reverse
        0 -- Delay
    )
    local Goals =
    {
        ImageTransparency = 1;
    }
   
    local tween = TweenService:Create(circle,Info,Goals)
    tween:Play()
end)
 
--mygui.maintab.bodyframe.menuframe.lpbuttonframe.lpbutton.TransitionScript
lpbutton.MouseButton1Click:connect(function()
    wait(0.25)
    menuframe:TweenPosition(
        UDim2.new(0,-256,0,0),
        "Out",
        "Quint",
        0.2
    )
    lpframe:TweenPosition(
        UDim2.new(0,0,0,0),
        "Out",
        "Quint",
        0.2
    )
    backbutton2.Visible = true
    backbutton2.Active = true
    maintab.title.Text = "Local Player"
    maintab.title.TextSize = 19
end)
 
--mygui.maintab.bodyframe.menuframe.tpbuttonframe.tpbutton.Script
local mouse = game.Players.LocalPlayer:GetMouse()
 
 
tpbutton.MouseButton1Down:connect(function()
    local x = (mouse.X) - (tpbutton.AbsolutePosition.X)
    local y = (mouse.Y) - (tpbutton.AbsolutePosition.Y)
    tpbutton.tpbuttonlabel.Position = UDim2.new(0,x,0,y)
    tpbutton.tpbuttonlabel.Size = UDim2.new(0,0,0,0)
    tpbutton.tpbuttonlabel.ImageTransparency = 0.8
    tpbutton.tpbuttonlabel.Visible = true
   
    wait()
   
    tpbutton.tpbuttonlabel:TweenSize(
        UDim2.new(0,75,0,75),
        "Out",
        "Quint",
        0.9
    )
end)
 
tpbutton.MouseButton1Up:connect(function()
    wait(0.35)
    local TweenService = game:GetService("TweenService")
    local circle = tpbutton.tpbuttonlabel
   
    local Info = TweenInfo.new(
        0.2, -- Length
        Enum.EasingStyle.Linear, -- Easing Style
        Enum.EasingDirection.Out, -- Easing Direction
        0, -- Times repeated
        false, -- Reverse
        0 -- Delay
    )
    local Goals =
    {
        ImageTransparency = 1;
    }
   
    local tween = TweenService:Create(circle,Info,Goals)
    tween:Play()
end)
 
--mygui.maintab.bodyframe.menuframe.tptextbox.matscript
--[[tptextbox.Focused:connect(function()
    local mouse = game.Players.LocalPlayer:GetMouse()
    tptextbox.tpunderline.BackgroundTransparency = 0
    local x = (mouse.X) - (tpbutton.AbsolutePosition.X)
    tpunderline.Position = UDim2.new(0,x,0,30) --insert correct offset in Y!!
   
    wait()
    tptextbox.tpunderline:TweenSizeAndPosition(
        UDim2.new(0,156,0,2),
        UDim2.new(0,0,0,30),
        "Out",
        "Quint",
        0.2
    )
end)]]--
 
--mygui.maintab.backbutton1.Script
local mouse = game.Players.LocalPlayer:GetMouse()
 
backbutton1.MouseButton1Down:connect(function()
    backbutton1.backbutton1label.Position = UDim2.new(0.5,0,0.5,0)
    backbutton1.backbutton1label.Size = UDim2.new(0,0,0,0)
    backbutton1.backbutton1label.ImageTransparency = 0.8
    backbutton1.backbutton1label.Visible = true
   
    wait()
   
    backbutton1.backbutton1label:TweenSize(
        UDim2.new(0,60,0,60),
        "Out",
        "Quint",
        0.25
    )
end)
 
backbutton1.MouseButton1Up:connect(function()
    wait(0.35)
    local TweenService = game:GetService("TweenService")
    local circle = backbutton1.backbutton1label
   
    local Info = TweenInfo.new(
        0.2, -- Length
        Enum.EasingStyle.Linear, -- Easing Style
        Enum.EasingDirection.Out, -- Easing Direction
        0, -- Times repeated
        false, -- Reverse
        0 -- Delay
    )
    local Goals =
    {
        ImageTransparency = 1;
    }
   
    local tween = TweenService:Create(circle,Info,Goals)
    tween:Play()
end)
 
--mygui.maintab.backbutton1.TransitionScript
backbutton1.MouseButton1Click:connect(function()
    wait(0.2)
    menuframe:TweenPosition(
        UDim2.new(0,0,0,0),
        "Out",
        "Quint",
        0.2
    )
    generalframe:TweenPosition(
        UDim2.new(0,256,0,0),
        "Out",
        "Quint",
        0.2
    )
    backbutton1.Visible = false
    backbutton1.Active = false
    maintab.title.Text = "MM2 Gui"
    maintab.title.TextSize = 20
end)
 
--mygui.maintab.backbutton2.Script
local mouse = game.Players.LocalPlayer:GetMouse()
 
 
backbutton2.MouseButton1Down:connect(function()
    backbutton2.backbutton2label.Position = UDim2.new(0.5,0,0.5,0)
    backbutton2.backbutton2label.Size = UDim2.new(0,0,0,0)
    backbutton2.backbutton2label.ImageTransparency = 0.8
    backbutton2.backbutton2label.Visible = true
   
    wait()
   
    backbutton2.backbutton2label:TweenSize(
        UDim2.new(0,60,0,60),
        "Out",
        "Quint",
        0.25
    )
end)
 
backbutton2.MouseButton1Up:connect(function()
    wait(0.35)
    local TweenService = game:GetService("TweenService")
    local circle = backbutton2.backbutton2label
   
    local Info = TweenInfo.new(
        0.2, -- Length
        Enum.EasingStyle.Linear, -- Easing Style
        Enum.EasingDirection.Out, -- Easing Direction
        0, -- Times repeated
        false, -- Reverse
        0 -- Delay
    )
    local Goals =
    {
        ImageTransparency = 1;
    }
   
    local tween = TweenService:Create(circle,Info,Goals)
    tween:Play()
end)
 
--mygui.maintab.backbutton2.TransitionScript
backbutton2.MouseButton1Click:connect(function()
    wait(0.2)
    menuframe:TweenPosition(
        UDim2.new(0,0,0,0),
        "Out",
        "Quint",
        0.2
    )
    lpframe:TweenPosition(
        UDim2.new(0,256,0,0),
        "Out",
        "Quint",
        0.2
    )
    backbutton2.Visible = false
    backbutton2.Active = false
    backbutton2.Parent.title.Text = "MM2 Gui"
    backbutton2.Parent.title.TextSize = 20
end)
 
--mygui.maintab.creditsbutton.Script
local mouse = game.Players.LocalPlayer:GetMouse()
 
 
creditsbutton.MouseButton1Down:connect(function()
    local x = (mouse.X) - (creditsbutton.AbsolutePosition.X)
    local y = (mouse.Y) - (creditsbutton.AbsolutePosition.Y)
    creditsbutton.creditsiconlabel1.Position = UDim2.new(0,x,0,y)
    creditsbutton.creditsiconlabel1.Size = UDim2.new(0,0,0,0)
    creditsbutton.creditsiconlabel1.ImageTransparency = 0.8
    creditsbutton.creditsiconlabel1.Visible = true
   
    wait()
   
    creditsbutton.creditsiconlabel1:TweenSize(
        UDim2.new(0,75,0,75),
        "Out",
        "Quint",
        0.9
    )
end)
 
creditsbutton.MouseButton1Up:connect(function()
    wait(0.35)
    local TweenService = game:GetService("TweenService")
    local circle = creditsbutton.creditsiconlabel1
   
    local Info = TweenInfo.new(
        0.2, -- Length
        Enum.EasingStyle.Linear, -- Easing Style
        Enum.EasingDirection.Out, -- Easing Direction
        0, -- Times repeated
        false, -- Reverse
        0 -- Delay
    )
    local Goals =
    {
        ImageTransparency = 1;
    }
   
    local tween = TweenService:Create(circle,Info,Goals)
    tween:Play()
end)
 
--mygui.maintab.creditsbutton.CreditsWindowScript
creditsbutton.MouseButton1Click:connect(function()
    creditstab.Visible = true
    creditstab.Active = true
end)
 
--mygui.creditstab.closecredits.Script
closecredits.MouseButton1Click:connect(function()
    creditstab.Visible = false
    creditstab.Active = false
end)
 
--mygui.toggle.closeopen.CloseOpenScript
closeopen.MouseButton1Click:connect(function()
    if
        (maintab.Visible == true) and
        (maintab.Active == true) then
        maintab.Visible = false
        maintab.Active = false
        closeopen.Text = "Open"
    else
        maintab.Visible = true
        maintab.Active = true
        closeopen.Text = "Close"
    end
end)
 
--mygui.toggle.closeopen.Script
local mouse = game.Players.LocalPlayer:GetMouse()
 
 
closeopen.MouseButton1Down:connect(function()
    local x = (mouse.X) - (closeopen.AbsolutePosition.X)
    local y = (mouse.Y) - (closeopen.AbsolutePosition.Y)
    closeopen.closeopenlabel.Position = UDim2.new(0,x,0,y)
    closeopen.closeopenlabel.Size = UDim2.new(0,50,0,50)
    closeopen.closeopenlabel.ImageTransparency = 0.8
    closeopen.closeopenlabel.Visible = true
   
    wait()
   
    closeopen.closeopenlabel:TweenSize(
        UDim2.new(0,240,0,240),
        "Out",
        "Quint",
        1
    )
end)
 
closeopen.MouseButton1Up:connect(function()
    wait(0.35)
    local TweenService = game:GetService("TweenService")
    local circle = closeopen.closeopenlabel
   
    local Info = TweenInfo.new(
        0.2, -- Length
        Enum.EasingStyle.Linear, -- Easing Style
        Enum.EasingDirection.Out, -- Easing Direction
        0, -- Times repeated
        false, -- Reverse
        0 -- Delay
    )
    local Goals =
    {
        ImageTransparency = 1;
    }
   
    local tween = TweenService:Create(circle,Info,Goals)
    tween:Play()
end)
 
--mygui.toggle.closeall.Script
closeall.MouseButton1Click:connect(function()
    mygui:Remove()
end)
 
-- Scripts
 
lpgravbutton.MouseButton1Down:connect(function()
    if game.Workspace.Gravity > 196.1 then
        game.Workspace.Gravity = 50
    else
        game.Workspace.Gravity = 196.2
    end
end)
 
lpwalkbutton.MouseButton1Down:connect(function()
    if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == 16 then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16 * 5
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end
end)
 
lpjumpbutton.MouseButton1Down:connect(function()
    if game.Players.LocalPlayer.Character.Humanoid.JumpPower == 50 then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100
    else
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end
end)
 
lpgodbutton.MouseButton1Down:connect(function()
    game.Players.LocalPlayer.Character.Humanoid:Remove()
    Instance.new('Humanoid', game.Players.LocalPlayer.Character)
end)
 
generallobbybutton.MouseButton1Down:connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-109.56, 140, -11.75) + Vector3.new(1, 0, 0)
end)
 
generalgunbutton.MouseButton1Down:connect(function()
    game.Workspace.GunDrop.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(2,0,0)
end)
 
generalcoinbutton.MouseButton1Down:connect(function()
    for i = 10, 1, -1 do
        for i,v in pairs(game.Workspace:GetChildren()) do
            local s = v:FindFirstChild("CoinContainer")
            local e = game.Players.LocalPlayer.Character:FindFirstChild("Torso")
            if e and s then
                for i,c in pairs(s:GetChildren()) do
                    c.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame
                end
            end
        end
        wait(0.7)
    end
end)
 
--[[tpbutton.MouseButton1Down:connect(function()
    for i,v in pairs(game.Workspace:GetChildren()) do
        if tptextbox.Text:lower() == v.Name:lower() then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[v.Name].HumanoidRootPart.CFrame
        else
            print("Player not found")
        end
    end
end)]]--
 
 
 
 
--script
local parent = tptextbox --insert textbox name!
local mouse = game.Players.LocalPlayer:GetMouse()
 
local xsize = parent.Size.X.Offset
local ysize = parent.Size.Y.Offset
parent.Visible = true
parent.Active = true
parent.Selectable = true
 
local Underline = Instance.new("Frame")
local UnderlineBase = Instance.new("Frame")
 
Underline.Name = "Underline"
Underline.Parent = parent
Underline.BackgroundColor3 = parent.TextColor3
Underline.BorderSizePixel = 0
Underline.Position = UDim2.new(0, 0, 1, 0)
Underline.Size = UDim2.new(0, 0, 0, 1)
 
UnderlineBase.Name = "UnderlineBase"
UnderlineBase.Parent = parent
UnderlineBase.BackgroundColor3 = parent.TextColor3
UnderlineBase.BackgroundTransparency = 0.85
UnderlineBase.BorderSizePixel = 0
UnderlineBase.Position = UDim2.new(0, 0, 1, 0)
UnderlineBase.Size = UDim2.new(0, xsize, 0, 1)
 
parent.Focused:connect(function()
    local x = (mouse.X) - (parent.AbsolutePosition.X)
    Underline.BackgroundTransparency = 0
    Underline.Position = UDim2.new(0,x,1,0)
    wait()
    Underline:TweenSizeAndPosition(
        UDim2.new(0, xsize, 0, 1),
        UDim2.new(0, 0, 1, 0),
        "Out",
        "Quint",
        0.2
    )
end)
 
parent.FocusLost:connect(function(enterPressed)
    if parent.Text == "" then
        parent.Text = "Player Name"
    end
   
    local TweenService = game:GetService("TweenService")
   
    local Info = TweenInfo.new(
        0.15,
        Enum.EasingStyle.Linear,
        Enum.EasingDirection.Out,
        0,
        false,
        0
    )
    local Goals =
    {
        BackgroundTransparency = 1;
    }
   
    local tween = TweenService:Create(Underline,Info,Goals)
    tween:Play()
   
    wait(0.15)
    Underline.Size = UDim2.new(0,0,0,1)
 
    if enterPressed then
        for i,v in pairs(game.Workspace:GetChildren()) do
            if tptextbox.Text:lower() == v.Name:lower() then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[v.Name].HumanoidRootPart.CFrame
            else
                print("Player not found")
            end
        end
        print(true)
    elseif tptextbox.Text ~= "Player Name" then
        tptextbox.Text = "Press Enter to TP"
    end
end)
 
--/script
 
if enterPressed then
    for i,v in pairs(game.Workspace:GetChildren()) do
        if tptextbox.Text:lower() == v.Name:lower() then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[v.Name].HumanoidRootPart.CFrame
        else
            print("Player not found")
        end
    end
end
 
generalespbutton.MouseButton1Down:connect(function()
    --credits to Nebula Hub for the esp + aimbot
    PLAYER  = game.Players.LocalPlayer
    MOUSE   = PLAYER:GetMouse()
    CC      = game.Workspace.CurrentCamera
 
    ENABLED      = false
    ESP_ENABLED  = false
 
    _G.FREE_FOR_ALL = true
 
    _G.BIND        = 50
    _G.ESP_BIND    = 52
    _G.CHANGE_AIM  = 'q'
 
    _G.AIM_AT = 'Head'
 
    wait(1)
 
    function GetNearestPlayerToMouse()
    local PLAYERS      = {}
    local PLAYER_HOLD  = {}
    local DISTANCES    = {}
    for i, v in pairs(game.Players:GetPlayers()) do
    if v ~= PLAYER then
    table.insert(PLAYERS, v)
    end
    end
    for i, v in pairs(PLAYERS) do
    if _G.FREE_FOR_ALL == false then
    if v and (v.Character) ~= nil and v.TeamColor ~= PLAYER.TeamColor then
    local AIM = v.Character:FindFirstChild(_G.AIM_AT)
    if AIM ~= nil then
    local DISTANCE                 = (AIM.Position - game.Workspace.CurrentCamera.CoordinateFrame.p).magnitude
    local RAY                      = Ray.new(game.Workspace.CurrentCamera.CoordinateFrame.p, (MOUSE.Hit.p - CC.CoordinateFrame.p).unit * DISTANCE)
    local HIT,POS                  = game.Workspace:FindPartOnRay(RAY, game.Workspace)
    local DIFF                     = math.floor((POS - AIM.Position).magnitude)
    PLAYER_HOLD[v.Name .. i]       = {}
    PLAYER_HOLD[v.Name .. i].dist  = DISTANCE
    PLAYER_HOLD[v.Name .. i].plr   = v
    PLAYER_HOLD[v.Name .. i].diff  = DIFF
    table.insert(DISTANCES, DIFF)
    end
    end
    elseif _G.FREE_FOR_ALL == true then
    local AIM = v.Character:FindFirstChild(_G.AIM_AT)
    if AIM ~= nil then
    local DISTANCE                 = (AIM.Position - game.Workspace.CurrentCamera.CoordinateFrame.p).magnitude
    local RAY                      = Ray.new(game.Workspace.CurrentCamera.CoordinateFrame.p, (MOUSE.Hit.p - CC.CoordinateFrame.p).unit * DISTANCE)
    local HIT,POS                  = game.Workspace:FindPartOnRay(RAY, game.Workspace)
    local DIFF                     = math.floor((POS - AIM.Position).magnitude)
    PLAYER_HOLD[v.Name .. i]       = {}
    PLAYER_HOLD[v.Name .. i].dist  = DISTANCE
    PLAYER_HOLD[v.Name .. i].plr   = v
    PLAYER_HOLD[v.Name .. i].diff  = DIFF
    table.insert(DISTANCES, DIFF)
    end
    end
    end
 
    if unpack(DISTANCES) == nil then
    return false
    end
 
    local L_DISTANCE = math.floor(math.min(unpack(DISTANCES)))
    if L_DISTANCE > 20 then
    return false
    end
 
    for i, v in pairs(PLAYER_HOLD) do
    if v.diff == L_DISTANCE then
    return v.plr
    end
    end
    return false
    end
 
    GUI_MAIN                           = Instance.new('ScreenGui', game.CoreGui)
    GUI_TARGET                         = Instance.new('TextLabel', GUI_MAIN)
    GUI_AIM_AT                         = Instance.new('TextLabel', GUI_MAIN)
 
    GUI_MAIN.Name                      = 'AIMBOT'
 
    GUI_TARGET.Size                    = UDim2.new(0,200,0,30)
    GUI_TARGET.BackgroundTransparency  = 0.5
    GUI_TARGET.BackgroundColor         = BrickColor.new('Fossil')
    GUI_TARGET.BorderSizePixel         = 0
    GUI_TARGET.Position                = UDim2.new(0.5,-100,0,0)
    GUI_TARGET.Text                    = 'AIMBOT : OFF'
    GUI_TARGET.TextColor3              = Color3.new(1,1,1)
    GUI_TARGET.TextStrokeTransparency  = 1
    GUI_TARGET.TextWrapped             = true
    GUI_TARGET.FontSize                = 'Size24'
    GUI_TARGET.Font                    = 'SourceSansBold'
 
    GUI_AIM_AT.Size                    = UDim2.new(0,200,0,20)
    GUI_AIM_AT.BackgroundTransparency  = 0.5
    GUI_AIM_AT.BackgroundColor         = BrickColor.new('Fossil')
    GUI_AIM_AT.BorderSizePixel         = 0
    GUI_AIM_AT.Position                = UDim2.new(0.5,-100,0,30)
    GUI_AIM_AT.Text                    = 'AIMING : HEAD'
    GUI_AIM_AT.TextColor3              = Color3.new(1,1,1)
    GUI_AIM_AT.TextStrokeTransparency  = 1
    GUI_AIM_AT.TextWrapped             = true
    GUI_AIM_AT.FontSize                = 'Size18'
    GUI_AIM_AT.Font                    = 'SourceSansBold'
 
    local TRACK = false
 
    function CREATE(BASE, COLOR)
    local ESP_MAIN                   = Instance.new('BillboardGui', PLAYER.PlayerGui)
    local ESP_DOT                    = Instance.new('Frame', ESP_MAIN)
    local ESP_NAME                   = Instance.new('TextLabel', ESP_MAIN)
 
    ESP_MAIN.Name                    = 'ESP'
    ESP_MAIN.Adornee                 = BASE
    ESP_MAIN.AlwaysOnTop             = true
    ESP_MAIN.ExtentsOffset           = Vector3.new(0, 1, 0)
    ESP_MAIN.Size                    = UDim2.new(0, 5, 0, 5)
 
    ESP_DOT.Name                     = 'DOT'
    ESP_DOT.BackgroundColor3         = COLOR
    ESP_DOT.BackgroundTransparency   = 0.3
    ESP_DOT.BorderSizePixel          = 0
    ESP_DOT.Position                 = UDim2.new(-0.5, 0, -0.5, 0)
    ESP_DOT.Size                     = UDim2.new(2, 0, 2, 0)
    ESP_DOT.Visible                  = true
    ESP_DOT.ZIndex                   = 10
 
    ESP_NAME.Name                    = 'NAME'
    ESP_NAME.BackgroundColor3        = Color3.new(255, 255, 255)
    ESP_NAME.BackgroundTransparency  = 1
    ESP_NAME.BorderSizePixel         = 0
    ESP_NAME.Position                = UDim2.new(0, 0, 0, -40)
    ESP_NAME.Size                    = UDim2.new(1, 0, 10, 0)
    ESP_NAME.Visible                 = true
    ESP_NAME.ZIndex                  = 10
    ESP_NAME.Font                    = 'ArialBold'
    ESP_NAME.FontSize                = 'Size14'
    ESP_NAME.Text                    = BASE.Parent.Name:upper()
    ESP_NAME.TextColor3              = COLOR
    end
 
    function CLEAR()
    for _,v in pairs(PLAYER.PlayerGui:children()) do
    if v.Name == 'ESP' and v:IsA('BillboardGui') then
    v:Destroy()
    end
    end
    end
 
    local Remote = game:service'ReplicatedStorage'.GetPlayerData
    local player_roles = Remote:InvokeServer()
    function FIND()
        CLEAR()
        TRACK = true
        spawn(function()
            while wait() do
                if TRACK then
                    CLEAR()
                    local a,b = ypcall(function()
                    for name,player in pairs(player_roles)do
                        if game:service'Players':FindFirstChild(name) ~= nil then
                            local v = game:service'Players':FindFirstChild(name)
                            if v.Character and v.Character:FindFirstChild('Head') then             
                                if v.Character:FindFirstChild('Head') then
                                    if player.Dead ~= true then
                                        if player.Role == "Murderer"then
                                            CREATE(v.Character.Head, Color3.new(1,0,0))
                                        elseif player.Role == "Sheriff" or player.Role == "Hero" then
                                            CREATE(v.Character.Head, Color3.new(0,0,1))
                                        else
                                            CREATE(v.Character.Head, Color3.new(0,1,0))
                                        end
                                    end
                                end
                            end
                        end
                    end
                    end)
                end
            end
            wait(1)
        end)
    end
    coroutine.wrap(function()
    while wait()do
    player_roles = Remote:InvokeServer()
    end
    end)()
 
    MOUSE.KeyDown:connect(function(KEY)
    KEY = KEY:lower():byte()
    if KEY == _G.BIND then
    ENABLED = true
    end
    end)
 
    MOUSE.KeyUp:connect(function(KEY)
    KEY = KEY:lower():byte()
    if KEY == _G.BIND then
    ENABLED = false
    end
    end)
 
    MOUSE.KeyDown:connect(function(KEY)
    KEY = KEY:lower():byte()
    if KEY == _G.ESP_BIND then
    if ESP_ENABLED == false then
    FIND()
    ESP_ENABLED = true
    print('ESP : ON')
    elseif ESP_ENABLED == true then
    wait()
    CLEAR()
    TRACK = false
    ESP_ENABLED = false
    print('ESP : OFF')
    end
    end
    end)
 
    MOUSE.KeyDown:connect(function(KEY)
    if KEY == _G.CHANGE_AIM then
    if _G.AIM_AT == 'Head' then
    _G.AIM_AT = 'Torso'
    GUI_AIM_AT.Text = 'AIMING : TORSO'
    elseif _G.AIM_AT == 'Torso' then
    _G.AIM_AT = 'Head'
    GUI_AIM_AT.Text = 'AIMING : HEAD'
    end
    end
    end)
 
    game:GetService('RunService').RenderStepped:connect(function()
    if ENABLED then
    local TARGET = GetNearestPlayerToMouse()
    if (TARGET ~= false) then
    local AIM = TARGET.Character:FindFirstChild(_G.AIM_AT)
    if AIM then
    CC.CoordinateFrame = CFrame.new(CC.CoordinateFrame.p, AIM.CFrame.p)
    end
    GUI_TARGET.Text = 'AIMBOT : '.. TARGET.Name:sub(1, 5)
    else
    GUI_TARGET.Text = 'AIMBOT : OFF'
    end
    end
    end)
 
    repeat
    wait()
    if ESP_ENABLED == true then
    FIND()
    end
    until ESP_ENABLED == false
 
 
    wait()
 
    _G.FREE_FOR_ALL = true
 
    _G.BIND = 50 -- LEFT CTRL
    _G.ESP_BIND = 52 -- LEFT ALT
end)
 
local plr = game.Players.LocalPlayer
 
plr:GetMouse().KeyDown:connect(function(KeyUp)
    if KeyUp == "0" then
        plr.Character.Humanoid.WalkSpeed = 35
    end
end)
 
plr:GetMouse().KeyUp:connect(function(KeyUp)
    if KeyUp == "0" then
        plr.Character.Humanoid.WalkSpeed = 16
    end
end)