 local start = tick()
    local VERSION = "3.0.1"
    print"Rose Hub process started."
    local coreGui = game:GetService("CoreGui")
    --local coreGui = game:GetService("Players").LocalPlayer.PlayerGui
    local tweening = false
    local scriptsTabText = ""
    local feTabText = ""
    local gameScriptsTabText = ""
    local guiTabText = ""
    local darkBack = false
    local lightBack = true
    local tweenService = game:GetService("TweenService")
    local tweenSpeed = 0.35
    local colorPickerOpen = false
    local backColor = Color3.fromRGB(255, 255, 255)
    local lightColor = Color3.fromRGB(255, 255, 255)
    local darkColor = Color3.fromRGB(150, 150, 150)
    local textColor = Color3.fromRGB(255, 255, 255)
    local httpService = game:GetService("HttpService")
    local savingSettings = false
    local mainSettings = nil
    local lighting = game:GetService("Lighting")
    local mWorkspace = game:GetService("Workspace")
   
    local defaultSettings = {
        ["BackgroundColorR"] = 59,
        ["BackgroundColorG"] = 59,
        ["BackgroundColorB"] = 59,
        ["PickerColorR"] = 59,
        ["PickerColorG"] = 59,
        ["PickerColorB"] = 59,
        ["ChangePickerBackground"] = true,
        ["Transparency"] = 0.7,
        ["RainbowOn"] = false,
        ["RainbowSpeed"] = 75,
    }
   
    local function round(num)
        return math.floor(num * 10^3 + 0.5) / 10^3
    end
   
    if writefile and readfile and pcall(function() readfile("RoseHubSettings.txt") end) then
        local file = readfile("RoseHubSettings.txt")
        local continue = true
        local write = false
        if pcall(function() httpService:JSONDecode(file) end) then
            file = httpService:JSONDecode(readfile("RoseHubSettings.txt"))
            mainSettings = file
        else
            mainSettings = defaultSettings
            writefile("RoseHubSettings.txt", httpService:JSONEncode(defaultSettings))
            warn("Settings file corrupted, creating new.")
            continue = false
        end
        if continue then
            for setting,value in pairs(defaultSettings) do
                if file[setting] == nil then
                    writefile("RoseHubSettings.txt", httpService:JSONEncode(defaultSettings))
                    warn(setting.." is missing, setting to default.")
                    file[setting] = defaultSettings[setting]
                    write = true
                elseif file[setting] ~= nil then
                    if type(file[setting]) ~= type(defaultSettings[setting]) then
                        warn(setting.." is invalid, overwriting.")
                        write = true
                        file[setting] = defaultSettings[setting]
                    end
                end
            end
            if write == true then
                warn("Fixing settings file.")
                mainSettings = file
                writefile("RoseHubSettings.txt", httpService:JSONEncode(mainSettings))
                write = false
            end
        end
    else
        mainSettings = defaultSettings
        if writefile then
            warn("Rose Hub settings missing, creating new.")
            writefile("RoseHubSettings.txt", httpService:JSONEncode(defaultSettings))
        end
    end
   
    local savedColor = Color3.fromRGB(mainSettings.BackgroundColorR, mainSettings.BackgroundColorG, mainSettings.BackgroundColorB)
    local mainTransparency = mainSettings.Transparency
    local enableRainbow = mainSettings.RainbowOn
    local rainbowCount = mainSettings.RainbowSpeed
    local mainTrans = mainSettings.Transparency
    local changeColorPickerBack = mainSettings.ChangePickerBackground
    local colorPickerBack = Color3.fromRGB(mainSettings.PickerColorR, mainSettings.PickerColorG, mainSettings.PickerColorB)
   
    local function saveSetting(backColor, pickerColor, changeBack, tranparency, rainbowOn, rainbowSpeed)
        local settingsTab = {
            ["BackgroundColorR"] = round(backColor.r*255),
            ["BackgroundColorG"] = round(backColor.g*255),
            ["BackgroundColorB"] = round(backColor.b*255),
            ["PickerColorR"] = round(pickerColor.r*255),
            ["PickerColorG"] = round(pickerColor.g*255),
            ["PickerColorB"] = round(pickerColor.b*255),
            ["ChangePickerBackground"] = changeBack,
            ["Transparency"] = round(tranparency),
            ["RainbowOn"] = rainbowOn,
            ["RainbowSpeed"] = rainbowSpeed,
        }
        writefile("RoseHubSettings.txt", httpService:JSONEncode(settingsTab))
    end
   
    if darkBack then
        backColor = Color3.fromRGB(150, 150, 150)
    end
   
    local scripttabList = {
        {"Infinite Yield", "MjBzRjmT", 1},
        {"Knife V3", "W833RBFr", 1},
        {"Bird Wings", "RQ9b8UTv", 1},
        {"M4A1", "eP1zq8tb", 1},
        {"Dungun", "90M7Mi8e", 1},
        {"Bomb Vest", "tG1PPuMd", 1},
        {"Music Bars", "SvYebC2r", 1},
        {"Omni God", "87NeeChc", 1},
        {"Pain Titan", "Hg5L8EtM", 1,},
        {"Reaper Titan", "B0q3QBg6", 1},
        {"Alter Chat", "ZSB4pN9R", 1},
        {"Hoverbike", 01268225564, 2},
        {"Rail Gun Titan", "0wFiFdwM", 1},
        {"True Hero", "P8AQ2ebJ", 1},
        {"Celestial Wheel", "bymTcgzf", 1},
        {"Knive V4", "j0Ns1w1S", 1},
        {"Ravenger Claws", "D7GxxvWL", 1},
        {"John Doe", "m5wHsLhr", 1},
        {"Messor Titan", "4bSrkLtA", 1},
        {"Clown Titan", "L0WLDZvc", 1},
        {"Chara", "HrWjgXtb", 1},
        {"Shedlesky Rage", "2SPz35LS", 1},
        {"LunchaThug", "x6GWFC5K", 1},
        {"Nazi Flag", "ZCZNxFBD", 1},
        {"Psychopath", "DGqk3bqY", 1},
        {"Fireworks Wand", "GB29NAPv", 1},
        {"Psycho Clown", "UgxKqKwE", 1},
        {"Inferno", "qhMGk36S", 1},
        {"Police Titan", "UCmufLU8", 1},
        {"Galaxy Titan", "nKNdCrKj", 1},
        {"Holy Wrench", "cKSh0a8C", 1},
        {"Krystal Dance", "j7EqLfbP", 1},
        {"Pee", "3CYmA0Pz", 1},
        {"Jihad", "vSujnuaF", 1},
        {"Hermit Purple", "R3C3ajQV", 1},
        {"Golden Gun", "2574Sd9E", 1},
        {"Goku", "yAXZZF9r", 1},
        {"Emoji", "vKPcMKnm", 1},
        {"Damn Son", "AMLHT8aJ", 1},
        {"Devuzi", "q0mt2peM", 1},
        {"Flash", "gGSVVq1H", 1},
        {"Teal Scythe", "0TUBSaxt", 1},
        {"Demon Demise", "ghMDMW63", 1},
        {"Red Sayan", "uC5DBvf9", 1},
        {"Ban Hammer", "1ynQ4Mu0", 1},
        {"Dick Gun", "UR9FBjcj", 1},
        {"Dat Boi", "Sz7KJHay", 1},
        {"Watermelon Trap", "pypsM3hj", 1},
        {"Whip", "XDsek3Rf", 1},
        {"School Shooter", "EmmwRFDA", 1},
        {"9/11", "3UmV26hG", 1},
        {"Bong", "8Kb08E9s", 1},
        {"Horse", "MVph7nmq", 1},
        {"Scythe", "fEEVkJba", 1},
        {"Disco Fog", "xg8d4PS0", 1},
        {"Disco Mesh", "GvtPCRVR", 1},
        {"Russian Dance", "RADQ2vH8", 1},
        {"Sun God", "0uJhLJ5m", 1},
        {"Rolling Light Ball", "S4Hj3MPd", 1},
        {"Red Death Scythe", "KJ5nqeVF", 1},
        {"Crystal Pistols", "GDLZ4VAq", 1},
        {"Epic Sword", "DZVV9AGG", 1},
        {"Circle Visualizer", "diJiteen", 1},
        {"Hex Blade", "fA0bBELV", 1},
        {"Bulldog", "nPPLxSA3", 1},
        {"FS-627-SENDER", "R3m4gfuP", 1},
        {"Voodoo Child", "w5TEtd0Q", 1},
        {"Bye Bye", "XBysEMgg", 1},
        {"Galil V2", "cnFz3h8D", 1},
        {"Mario", "pKmtnc9u", 1},
        {"Lighting Blade", "rMEe8R4N", 1},
        {"Flamingo Skybox", "8rWM880e", 1},
        {"Sin Unleashed", "ZQh5B023", 1},
        {"Ravager", "VQEz6a6i", 1},
        {"Brock", "Fe5YrxcY", 1},
        {"M249", "J4ijx897", 1},
        {"MG36", "zLZ4Auqn", 1},
        {"Omega Scythe", "Ag8dKZYB", 1},
        {"Omega Sword", "7JjxwhPn", 1},
        {"Draw", "1322re6a", 1},
        {"Gaydar", "s1P9sJub", 1},
        {"Crimson Hell", "na3pQXNV", 1},
        {"Psycho", "WNvhEZJw", 1},
        {"R6", "yX1DMcvM", 1},
        {"Elemental God", "mLz55spD", 1},
        {"Cross Power", "mLz55spD", 1},
        {"Blood Harvester", "qz0ufnwd", 1},
        {"Mustard Gas", "sg2wg4y8", 1},
        {"Gas Can", "xknu2gna", 1},
        {"Frieza", "tpkyda6c",  1},
        {"Sadistic Genocider V2",   "nch0tn9u", 1},
        {"Demon Nelf", "VcBmmGuz", 1},
        {"Demonic Sword", "W2Hc3Tkd", 1},
        {"Noob Power", "9YMc9FRj", 1},
        {"Creep", "z7S1ugBF", 1},
        {"Crazy Nuke", "6kbRdDk6", 1},
        {"Sticky Bombs", "2A4U8xdA", 1},
        {"Cloud Visualizer", "sMCnTvHa", 1},
        {"Furfag", "FS1d8pB9", 1},
        {"Another Fist", "ukLjYGS1", 1},
        {"Eyozen", "VmQXnzZs", 1},
        {"Shadow Blade", "E08uiXDL", 1},
        {"Glock", "UwRX1avh", 1},
        {"Star Glitcher", "uiXScmiC", 1},
   
    }
   
    local fescripttabList = {
        {"Fe God", "KduGECH6", 1},
        {"Fe Fly", 1281055032, 2},
        {"Spam", "74GjB7tB", 1},
    }
   
    local gameScriptsList = {
        {"Virgo 3.0", "EwYDRD4Y", 1},
        {"City Life Bomb Vest", "sLHGSBn1", 1},
        {"City Life Suicide", "YdKKQ7yT", 1},
        {"City Life Explosion", "vy78mqrG", 1},
        {"CB:RO Aimbot", "t3yHg06t", 1},
        {"Prison Life 2 GUI", "d6X2R39V", 1},
        {"Jailbreak GUI", 1461971147, 2},
        {"Apoc Tools v4", "0de4tAtR", 1},
    }
   
    local guitabList = {
        {"c00lgui", "Rz2EFsLU", 1},
        {"Topkek 4.0", "d0CJRrcg", 1},
        {"Topkek 3.0", "SikGfE9u", 1},
        {"Ro-Xploit 4.0", 175137115, 2},
        {"Ro-Xploit 5.0", 288646117, 2},
        {"Ro-Xploit 6.0", 364364477, 2},
        {"Dex 2.0", 492005721, 2},
        {"Dex 3.0", 418957341, 2},
        {"Clown Van", "a5UZuuiT", 1},
        {"Hell Elevator GUI", "8NYWpf2T", 1},
        {"Chams / Aimlock", "Yi7fzELj", 1},
        {"YourMom GUI", "289110135", 2},
        {"Pepe GUI", "277881926", 2},
        {"Brack Hub", "PT9Gf7d5", 1},
        {"Vesprin FE GUI", "1231351616", 2},
        {"Music GUI", "U352cdsv", 1},
    }
   
    local mapsList = {
        {"Clockwork Arena", "EvnXCXhP", 1},
        {"Town Map", 1345094164, 2},
        {"Cave Island", "t29C42rm", 1},
        {"Nature Map", "gmF4Kq5B", 1},
        {"Nazi Map", "az8sLCLT", 1},
        {"Ritual Room", "hYCTFiAC", 1},
        {"Stripper", "jztW5Vuy", 1},
        {"Witch Map", "R9epW292", 1},
        {"Rainbow Tunnel", "8bznLitn", 1},
        {"Scary Map", "fNw46f74", 1},
        {"Nazi Camp", "KJNk4STm", 1},
        {"Night Club", 1281063730, 2},
        {"Da Club", "6UyLJheX", 1},
    }
   
    local lists = {
        {scripttabList, "Scripts"},
        {fescripttabList, "FE Scripts"},
        {gameScriptsList, "Game Scripts"},
        {guitabList, "GUIs"},
        {mapsList, "Maps"},
    }
   
    local tabs = {
        "Home",
        "Scripts",
        "FE Scripts",
        "GUIs",
        "Maps",
        "Audios",
        "Decals",
        "Executor",
        "ScriptSearch",
        "Game Scripts",
        "Settings",
        "Credits",
    }
   
    local threshold = 185
    local transBackRunning = false
    local tweenTable = {}
    local function updateBack(...)
        local list = {...}
        local color = list[1]
        screenGui.Top.Main.BackgroundColor3 = color
        if list[2] and changeColorPickerBack == true then
            list[2].BackgroundColor3 = color
        end
        if round(color.g*255) >= threshold and round(color.b*255) >= threshold and darkBack == false or round(color.g*255) >= threshold and darkBack == false then
            if lightBack == true and transBackRunning == true then
                for _,tween in pairs(tweenTable) do
                    tween:Pause()
                end
            end
            tweenTable = {}
            darkBack = true
            lightBack = false
            for i,v in pairs(screenGui.Top.Important:GetDescendants()) do
                local goal = {}
                goal.BackgroundColor3 = darkColor
                local customTween = tweenService:Create(v, TweenInfo.new(0.5), goal)
                table.insert(tweenTable, customTween)
            end
            transBackRunning = true
            for _,tween in pairs(tweenTable) do
                tween:Play()
            end
            tweenTable[1].Completed:Connect(function()
                transBackRunning = false
            end)
        elseif round(color.g*255) < threshold and round(color.b*255) < threshold and lightBack == false or round(color.g*255) < threshold and lightBack == false then
            if lightBack == true and transBackRunning == true then
                for _,tween in pairs(tweenTable) do
                    tween:Pause()
                end
            end
            tweenTable = {}
            lightBack = true
            darkBack = false
            for i,v in pairs(screenGui.Top.Important:GetDescendants()) do
                local goal = {}
                goal.BackgroundColor3 = lightColor
                local customTween = tweenService:Create(v, TweenInfo.new(0.5), goal)
                table.insert(tweenTable, customTween)
            end
            transBackRunning = true
            for _,tween in pairs(tweenTable) do
                tween:Play()
            end
            tweenTable[1].Completed:Connect(function()
                transBackRunning = false
            end)
        end
    end
   
    local function createFrame(Active, BackgroundColor3, BackgroundTransparency, BorderSizePixel, ClipsDescendants, Name, Parent, Position, Size)
        local Frame = Instance.new("Frame")
        Frame.Active = Active
        Frame.BackgroundColor3 = BackgroundColor3
        Frame.BackgroundTransparency = BackgroundTransparency
        Frame.BorderSizePixel = BorderSizePixel
        Frame.ClipsDescendants = ClipsDescendants
        Frame.Name = Name
        Frame.Parent = Parent
        Frame.Position = Position
        Frame.Size = Size
        return Frame
    end
   
    local function createTextLabel(BackgroundColor3, BackgroundTransparency, BorderSizePixel, Font, Name, Parent, Position, Size, Text, TextColor3, TextSize, TextWrapped, TextXAlignment, TextYAlignment, ZIndex)
        local TextLabel = Instance.new("TextLabel")
        TextLabel.BackgroundColor3 = BackgroundColor3
        TextLabel.BackgroundTransparency = BackgroundTransparency
        TextLabel.BorderSizePixel = BorderSizePixel
        TextLabel.Font = Font
        TextLabel.Name = Name
        TextLabel.Parent = Parent
        TextLabel.Position = Position
        TextLabel.Size = Size
        TextLabel.Text = Text
        TextLabel.TextColor3 = TextColor3
        TextLabel.TextSize = TextSize
        TextLabel.TextWrapped = TextWrapped
        TextLabel.TextXAlignment = TextXAlignment
        TextLabel.TextYAlignment = TextYAlignment
        TextLabel.ZIndex = ZIndex
        return TextLabel
    end
   
    local function createTextBox(BackgroundColor3, BackgroundTransparency, BorderSizePixel, Font, Name, Parent, PlaceholderText, Position, Size, Text, TextColor3, TextSize, TextWrapped, TextXAlignment, TextYAlignment)
        local TextBox = Instance.new("TextBox")
        TextBox.BackgroundColor3 = BackgroundColor3
        TextBox.BackgroundTransparency = BackgroundTransparency
        TextBox.BorderSizePixel = BorderSizePixel
        TextBox.Font = Font
        TextBox.Name = Name
        TextBox.Parent = Parent
        TextBox.PlaceholderText = PlaceholderText
        TextBox.Position = Position
        TextBox.Size = Size
        TextBox.Text = Text
        TextBox.TextColor3 = TextColor3
        TextBox.TextSize = TextSize
        TextBox.TextWrapped = TextWrapped
        TextBox.TextXAlignment = TextXAlignment
        TextBox.TextYAlignment = TextYAlignment
        return TextBox
    end
   
    local function createTextButton(BackgroundColor3, BackgroundTransparency, BorderSizePixel, Font, Name, Parent, Position, Size, Text, TextColor3, TextSize, ZIndex, func)
        local TextButton = Instance.new("TextButton")
        TextButton.BackgroundColor3 = BackgroundColor3
        TextButton.BackgroundTransparency = BackgroundTransparency
        TextButton.BorderSizePixel = BorderSizePixel
        TextButton.Font = Font
        TextButton.Name = Name
        TextButton.Parent = Parent
        TextButton.Position = Position
        TextButton.Size = Size
        TextButton.Text = Text
        TextButton.TextColor3 = TextColor3
        TextButton.TextSize = TextSize
        TextButton.ZIndex = ZIndex
        TextButton.MouseButton1Down:Connect(func)
        return TextButton
    end
   
    local function createImageLabel(BackgroundTransparency, Image, Name, Parent, Position, Selectable, Size, ZIndex)
        local ImageLabel = Instance.new("ImageLabel")
        ImageLabel.BackgroundTransparency = BackgroundTransparency
        ImageLabel.Image = Image
        ImageLabel.Name = Name
        ImageLabel.Parent = Parent
        ImageLabel.Position = Position
        ImageLabel.Selectable = Selectable
        ImageLabel.Size = Size
        ImageLabel.ZIndex = ZIndex
        return ImageLabel
    end
   
    local function createScrollingFrame(BackgroundColor3, BackgroundTransparency, BorderSizePixel, BottomImage, CanvasSize, MidImage, Name, Parent, Position, Rotation, ScrollBarThickness, Selectable, Size, TopImage, Visible)
        local ScrollingFrame = Instance.new("ScrollingFrame")
        ScrollingFrame.BackgroundColor3 = BackgroundColor3
        ScrollingFrame.BackgroundTransparency = BackgroundTransparency
        ScrollingFrame.BorderSizePixel = BorderSizePixel
        ScrollingFrame.BottomImage = BottomImage
        ScrollingFrame.CanvasSize = CanvasSize
        ScrollingFrame.MidImage = MidImage
        ScrollingFrame.Name = Name
        ScrollingFrame.Parent = Parent
        ScrollingFrame.Position = Position
        ScrollingFrame.Rotation = Rotation
        ScrollingFrame.ScrollBarThickness = ScrollBarThickness
        ScrollingFrame.Selectable = Selectable
        ScrollingFrame.Size = Size
        ScrollingFrame.TopImage = TopImage
        ScrollingFrame.Visible = Visible
        return ScrollingFrame
    end
   
    function CreateInstance(cls,props)
        local inst = Instance.new(cls)
        for i,v in pairs(props) do
            inst[i] = v
        end
        return inst
    end
   
    local pickerCreated = false
    local ColorPicker do
        ColorPicker = {}
       
        local function createColorPick()
            local ColorPick = CreateInstance("ScreenGui",{DisplayOrder=0,Enabled=true,ResetOnSpawn=true,Name="ColorPick",})
            local ColorPick2 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.39215689897537,0.39215689897537,0.39215689897537),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,450,0,330),SizeConstraint=0,Visible=true,ZIndex=1,Name="ColorPicker",Parent = ColorPick})
            local ColorPickBack = CreateInstance("Frame",{Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=colorPickerBack,BackgroundTransparency=0,BorderColor3=Color3.new(0.14509804546833,0.20784315466881,0.21176472306252),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(1, 0, 1, 0),SizeConstraint=0,Visible=true,ZIndex=1,Name="Backdrop",Parent = ColorPick2})
            local ColorPick3 = CreateInstance("Frame",{Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.fromRGB(117, 117, 117),BackgroundTransparency=0.5,BorderColor3=Color3.new(0.14509804546833,0.20784315466881,0.21176472306252),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,25),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,-25),SizeConstraint=0,Visible=true,ZIndex=1,Name="Content",Parent = ColorPickBack})
            local ColorPick4 = CreateInstance("ImageLabel",{Image="rbxassetid://1072518502",ImageColor3=Color3.new(1,1,1),ImageRectOffset=Vector2.new(0,0),ImageRectSize=Vector2.new(0,0),ImageTransparency=0,ScaleType=0,SliceCenter=Rect.new(0,0,0,0),Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=0,BorderColor3=Color3.new(0.37647062540054,0.37647062540054,0.37647062540054),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-30,0,5),Rotation=0,Selectable=false,Size=UDim2.new(0,13,0,200),SizeConstraint=0,Visible=true,ZIndex=1,Name="ColorStrip",Parent = ColorPick3})
            local ColorPick5 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=0,BorderColor3=Color3.new(0.37647062540054,0.37647062540054,0.37647062540054),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-260,0,211),Rotation=0,Selectable=false,Size=UDim2.new(0,35,1,-245),SizeConstraint=0,Visible=true,ZIndex=1,Name="Preview",Parent = ColorPick3})
            local ColorPick6 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.37647062540054,0.37647062540054,0.37647062540054),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=true,Draggable=false,Position=UDim2.new(1,-261,0,4),Rotation=0,Selectable=false,Size=UDim2.new(0,222,0,202),SizeConstraint=0,Visible=true,ZIndex=1,Name="ColorSpaceFrame",Parent = ColorPick3})
            local ColorPick7 = CreateInstance("ImageLabel",{Image="rbxassetid://1072518406",ImageColor3=Color3.new(1,1,1),ImageRectOffset=Vector2.new(0,0),ImageRectSize=Vector2.new(0,0),ImageTransparency=0,ScaleType=0,SliceCenter=Rect.new(0,0,0,0),Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=0,BorderColor3=Color3.new(0.37647062540054,0.37647062540054,0.37647062540054),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,1,0,1),Rotation=0,Selectable=false,Size=UDim2.new(0,220,0,200),SizeConstraint=0,Visible=true,ZIndex=1,Name="ColorSpace",Parent = ColorPick6})
            local ColorPick8 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,210,0,190),Rotation=0,Selectable=false,Size=UDim2.new(0,20,0,20),SizeConstraint=0,Visible=true,ZIndex=1,Name="Scope",Parent = ColorPick7})
            local ColorPick9 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0,0,0),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,9,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,2,0,20),SizeConstraint=0,Visible=true,ZIndex=1,Name="Line",Parent = ColorPick8})
            local ColorPick10 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0,0,0),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,9),Rotation=0,Selectable=false,Size=UDim2.new(0,20,0,2),SizeConstraint=0,Visible=true,ZIndex=1,Name="Line",Parent = ColorPick8})
            local ColorPick11 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.3137255012989,0.3137255012989,0.3137255012989),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-16,0,1),Rotation=0,Selectable=false,Size=UDim2.new(0,5,0,208),SizeConstraint=0,Visible=true,ZIndex=1,Name="ArrowFrame",Parent = ColorPick3})
            local ColorPick12 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.63921570777893,0.63529413938522,0.64705884456635),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-2,0,-4),Rotation=0,Selectable=false,Size=UDim2.new(0,8,0,16),SizeConstraint=0,Visible=true,ZIndex=1,Name="Arrow",Parent = ColorPick11})
            local ColorPick13 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0,0,0),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,2,0,8),Rotation=0,Selectable=false,Size=UDim2.new(0,1,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick12})
            local ColorPick14 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0,0,0),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,3,0,7),Rotation=0,Selectable=false,Size=UDim2.new(0,1,0,3),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick12})
            local ColorPick15 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0,0,0),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,4,0,6),Rotation=0,Selectable=false,Size=UDim2.new(0,1,0,5),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick12})
            local ColorPick16 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0,0,0),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,5,0,5),Rotation=0,Selectable=false,Size=UDim2.new(0,1,0,7),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick12})
            local ColorPick17 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0,0,0),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,6,0,4),Rotation=0,Selectable=false,Size=UDim2.new(0,1,0,9),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick12})
            local ColorPick18 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.25098040699959,0.25098040699959,0.25098040699959),BackgroundTransparency=0,BorderColor3=Color3.new(0.37647062540054,0.37647062540054,0.37647062540054),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-180,0,211),Rotation=0,Selectable=false,Size=UDim2.new(0,52,0,16),SizeConstraint=0,Visible=true,ZIndex=1,Name="Hue",Parent = ColorPick3})
            local ColorPick19 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=3,FontSize=5,MultiLine=false,Text="0",TextColor3=Color3.new(0.86274516582489,0.86274516582489,0.86274516582489),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.25098040699959,0.25098040699959,0.25098040699959),BackgroundTransparency=1,BorderColor3=Color3.new(0.37647062540054,0.37647062540054,0.37647062540054),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,2,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0,50,0,16),SizeConstraint=0,Visible=true,ZIndex=1,Name="Input",Parent = ColorPick18})
            local ColorPick20 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-16,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,16,1,0),SizeConstraint=0,Visible=true,ZIndex=1,Name="ArrowFrame",Parent = ColorPick19})
            local ColorPick21 = CreateInstance("TextButton",{Font=3,FontSize=5,Text="",TextColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=false,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(1,0,0,8),SizeConstraint=0,Visible=true,ZIndex=1,Name="Up",Parent = ColorPick20})
            local ColorPick22 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.63921570777893,0.63529413938522,0.64705884456635),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,16,0,8),SizeConstraint=0,Visible=true,ZIndex=1,Name="Arrow",Parent = ColorPick21})
            local ColorPick23 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,8,0,3),Rotation=0,Selectable=false,Size=UDim2.new(0,1,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick22})
            local ColorPick24 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,7,0,4),Rotation=0,Selectable=false,Size=UDim2.new(0,3,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick22})
            local ColorPick25 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,6,0,5),Rotation=0,Selectable=false,Size=UDim2.new(0,5,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick22})
            local ColorPick26 = CreateInstance("TextButton",{Font=3,FontSize=5,Text="",TextColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=false,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,8),Rotation=0,Selectable=true,Size=UDim2.new(1,0,0,8),SizeConstraint=0,Visible=true,ZIndex=1,Name="Down",Parent = ColorPick20})
            local ColorPick27 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.63921570777893,0.63529413938522,0.64705884456635),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,16,0,8),SizeConstraint=0,Visible=true,ZIndex=1,Name="Arrow",Parent = ColorPick26})
            local ColorPick28 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,8,0,5),Rotation=0,Selectable=false,Size=UDim2.new(0,1,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick27})
            local ColorPick29 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,7,0,4),Rotation=0,Selectable=false,Size=UDim2.new(0,3,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick27})
            local ColorPick30 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,6,0,3),Rotation=0,Selectable=false,Size=UDim2.new(0,5,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick27})
            local ColorPick31 = CreateInstance("TextLabel",{Font=3,FontSize=5,Text="Hue:",TextColor3=Color3.new(0.86274516582489,0.86274516582489,0.86274516582489),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=1,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-40,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,34,1,0),SizeConstraint=0,Visible=true,ZIndex=1,Name="Title",Parent = ColorPick18})
            local ColorPick32 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.25098040699959,0.25098040699959,0.25098040699959),BackgroundTransparency=0,BorderColor3=Color3.new(0.37647062540054,0.37647062540054,0.37647062540054),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-180,0,233),Rotation=0,Selectable=false,Size=UDim2.new(0,52,0,16),SizeConstraint=0,Visible=true,ZIndex=1,Name="Sat",Parent = ColorPick3})
            local ColorPick33 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=3,FontSize=5,MultiLine=false,Text="0",TextColor3=Color3.new(0.86274516582489,0.86274516582489,0.86274516582489),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.25098040699959,0.25098040699959,0.25098040699959),BackgroundTransparency=1,BorderColor3=Color3.new(0.37647062540054,0.37647062540054,0.37647062540054),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,2,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0,50,0,16),SizeConstraint=0,Visible=true,ZIndex=1,Name="Input",Parent = ColorPick32})
            local ColorPick34 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-16,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,16,1,0),SizeConstraint=0,Visible=true,ZIndex=1,Name="ArrowFrame",Parent = ColorPick33})
            local ColorPick35 = CreateInstance("TextButton",{Font=3,FontSize=5,Text="",TextColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=false,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(1,0,0,8),SizeConstraint=0,Visible=true,ZIndex=1,Name="Up",Parent = ColorPick34})
            local ColorPick36 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.63921570777893,0.63529413938522,0.64705884456635),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,16,0,8),SizeConstraint=0,Visible=true,ZIndex=1,Name="Arrow",Parent = ColorPick35})
            local ColorPick37 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,8,0,3),Rotation=0,Selectable=false,Size=UDim2.new(0,1,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick36})
            local ColorPick38 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,7,0,4),Rotation=0,Selectable=false,Size=UDim2.new(0,3,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick36})
            local ColorPick39 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,6,0,5),Rotation=0,Selectable=false,Size=UDim2.new(0,5,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick36})
            local ColorPick40 = CreateInstance("TextButton",{Font=3,FontSize=5,Text="",TextColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=false,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,8),Rotation=0,Selectable=true,Size=UDim2.new(1,0,0,8),SizeConstraint=0,Visible=true,ZIndex=1,Name="Down",Parent = ColorPick34})
            local ColorPick41 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.63921570777893,0.63529413938522,0.64705884456635),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,16,0,8),SizeConstraint=0,Visible=true,ZIndex=1,Name="Arrow",Parent = ColorPick40})
            local ColorPick42 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,8,0,5),Rotation=0,Selectable=false,Size=UDim2.new(0,1,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick41})
            local ColorPick43 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,7,0,4),Rotation=0,Selectable=false,Size=UDim2.new(0,3,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick41})
            local ColorPick44 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,6,0,3),Rotation=0,Selectable=false,Size=UDim2.new(0,5,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick41})
            local ColorPick45 = CreateInstance("TextLabel",{Font=3,FontSize=5,Text="Sat:",TextColor3=Color3.new(0.86274516582489,0.86274516582489,0.86274516582489),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=1,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-40,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,34,1,0),SizeConstraint=0,Visible=true,ZIndex=1,Name="Title",Parent = ColorPick32})
            local ColorPick46 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.25098040699959,0.25098040699959,0.25098040699959),BackgroundTransparency=0,BorderColor3=Color3.new(0.37647062540054,0.37647062540054,0.37647062540054),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-180,0,255),Rotation=0,Selectable=false,Size=UDim2.new(0,52,0,16),SizeConstraint=0,Visible=true,ZIndex=1,Name="Val",Parent = ColorPick3})
            local ColorPick47 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=3,FontSize=5,MultiLine=false,Text="255",TextColor3=Color3.new(0.86274516582489,0.86274516582489,0.86274516582489),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.25098040699959,0.25098040699959,0.25098040699959),BackgroundTransparency=1,BorderColor3=Color3.new(0.37647062540054,0.37647062540054,0.37647062540054),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,2,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0,50,0,16),SizeConstraint=0,Visible=true,ZIndex=1,Name="Input",Parent = ColorPick46})
            local ColorPick48 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-16,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,16,1,0),SizeConstraint=0,Visible=true,ZIndex=1,Name="ArrowFrame",Parent = ColorPick47})
            local ColorPick49 = CreateInstance("TextButton",{Font=3,FontSize=5,Text="",TextColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=false,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(1,0,0,8),SizeConstraint=0,Visible=true,ZIndex=1,Name="Up",Parent = ColorPick48})
            local ColorPick50 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.63921570777893,0.63529413938522,0.64705884456635),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,16,0,8),SizeConstraint=0,Visible=true,ZIndex=1,Name="Arrow",Parent = ColorPick49})
            local ColorPick51 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,8,0,3),Rotation=0,Selectable=false,Size=UDim2.new(0,1,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick50})
            local ColorPick52 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,7,0,4),Rotation=0,Selectable=false,Size=UDim2.new(0,3,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick50})
            local ColorPick53 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,6,0,5),Rotation=0,Selectable=false,Size=UDim2.new(0,5,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick50})
            local ColorPick54 = CreateInstance("TextButton",{Font=3,FontSize=5,Text="",TextColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=false,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,8),Rotation=0,Selectable=true,Size=UDim2.new(1,0,0,8),SizeConstraint=0,Visible=true,ZIndex=1,Name="Down",Parent = ColorPick48})
            local ColorPick55 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.63921570777893,0.63529413938522,0.64705884456635),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,16,0,8),SizeConstraint=0,Visible=true,ZIndex=1,Name="Arrow",Parent = ColorPick54})
            local ColorPick56 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,8,0,5),Rotation=0,Selectable=false,Size=UDim2.new(0,1,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick55})
            local ColorPick57 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,7,0,4),Rotation=0,Selectable=false,Size=UDim2.new(0,3,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick55})
            local ColorPick58 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,6,0,3),Rotation=0,Selectable=false,Size=UDim2.new(0,5,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick55})
            local ColorPick59 = CreateInstance("TextLabel",{Font=3,FontSize=5,Text="Val:",TextColor3=Color3.new(0.86274516582489,0.86274516582489,0.86274516582489),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=1,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-40,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,34,1,0),SizeConstraint=0,Visible=true,ZIndex=1,Name="Title",Parent = ColorPick46})
            local ColorPick60 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.25098040699959,0.25098040699959,0.25098040699959),BackgroundTransparency=0,BorderColor3=Color3.new(0.37647062540054,0.37647062540054,0.37647062540054),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-63,0,233),Rotation=0,Selectable=false,Size=UDim2.new(0,52,0,16),SizeConstraint=0,Visible=true,ZIndex=1,Name="Green",Parent = ColorPick3})
            local ColorPick61 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=3,FontSize=5,MultiLine=false,Text="0",TextColor3=Color3.new(0.86274516582489,0.86274516582489,0.86274516582489),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.25098040699959,0.25098040699959,0.25098040699959),BackgroundTransparency=1,BorderColor3=Color3.new(0.37647062540054,0.37647062540054,0.37647062540054),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,2,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0,50,0,16),SizeConstraint=0,Visible=true,ZIndex=1,Name="Input",Parent = ColorPick60})
            local ColorPick62 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-16,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,16,1,0),SizeConstraint=0,Visible=true,ZIndex=1,Name="ArrowFrame",Parent = ColorPick61})
            local ColorPick63 = CreateInstance("TextButton",{Font=3,FontSize=5,Text="",TextColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=false,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(1,0,0,8),SizeConstraint=0,Visible=true,ZIndex=1,Name="Up",Parent = ColorPick62})
            local ColorPick64 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.63921570777893,0.63529413938522,0.64705884456635),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,16,0,8),SizeConstraint=0,Visible=true,ZIndex=1,Name="Arrow",Parent = ColorPick63})
            local ColorPick65 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,8,0,3),Rotation=0,Selectable=false,Size=UDim2.new(0,1,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick64})
            local ColorPick66 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,7,0,4),Rotation=0,Selectable=false,Size=UDim2.new(0,3,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick64})
            local ColorPick67 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,6,0,5),Rotation=0,Selectable=false,Size=UDim2.new(0,5,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick64})
            local ColorPick68 = CreateInstance("TextButton",{Font=3,FontSize=5,Text="",TextColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=false,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,8),Rotation=0,Selectable=true,Size=UDim2.new(1,0,0,8),SizeConstraint=0,Visible=true,ZIndex=1,Name="Down",Parent = ColorPick62})
            local ColorPick69 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.63921570777893,0.63529413938522,0.64705884456635),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,16,0,8),SizeConstraint=0,Visible=true,ZIndex=1,Name="Arrow",Parent = ColorPick68})
            local ColorPick70 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,8,0,5),Rotation=0,Selectable=false,Size=UDim2.new(0,1,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick69})
            local ColorPick71 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,7,0,4),Rotation=0,Selectable=false,Size=UDim2.new(0,3,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick69})
            local ColorPick72 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,6,0,3),Rotation=0,Selectable=false,Size=UDim2.new(0,5,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick69})
            local ColorPick73 = CreateInstance("TextLabel",{Font=3,FontSize=5,Text="Green:",TextColor3=Color3.new(0.86274516582489,0.86274516582489,0.86274516582489),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=1,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-40,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,34,1,0),SizeConstraint=0,Visible=true,ZIndex=1,Name="Title",Parent = ColorPick60})
            local ColorPick74 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.25098040699959,0.25098040699959,0.25098040699959),BackgroundTransparency=0,BorderColor3=Color3.new(0.37647062540054,0.37647062540054,0.37647062540054),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-63,0,211),Rotation=0,Selectable=false,Size=UDim2.new(0,52,0,16),SizeConstraint=0,Visible=true,ZIndex=1,Name="Red",Parent = ColorPick3})
            local ColorPick75 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=3,FontSize=5,MultiLine=false,Text="0",TextColor3=Color3.new(0.86274516582489,0.86274516582489,0.86274516582489),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.25098040699959,0.25098040699959,0.25098040699959),BackgroundTransparency=1,BorderColor3=Color3.new(0.37647062540054,0.37647062540054,0.37647062540054),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,2,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0,50,0,16),SizeConstraint=0,Visible=true,ZIndex=1,Name="Input",Parent = ColorPick74})
            local ColorPick76 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-16,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,16,1,0),SizeConstraint=0,Visible=true,ZIndex=1,Name="ArrowFrame",Parent = ColorPick75})
            local ColorPick77 = CreateInstance("TextButton",{Font=3,FontSize=5,Text="",TextColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=false,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(1,0,0,8),SizeConstraint=0,Visible=true,ZIndex=1,Name="Up",Parent = ColorPick76})
            local ColorPick78 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.63921570777893,0.63529413938522,0.64705884456635),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,16,0,8),SizeConstraint=0,Visible=true,ZIndex=1,Name="Arrow",Parent = ColorPick77})
            local ColorPick79 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,8,0,3),Rotation=0,Selectable=false,Size=UDim2.new(0,1,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick78})
            local ColorPick80 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,7,0,4),Rotation=0,Selectable=false,Size=UDim2.new(0,3,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick78})
            local ColorPick81 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,6,0,5),Rotation=0,Selectable=false,Size=UDim2.new(0,5,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick78})
            local ColorPick82 = CreateInstance("TextButton",{Font=3,FontSize=5,Text="",TextColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=false,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,8),Rotation=0,Selectable=true,Size=UDim2.new(1,0,0,8),SizeConstraint=0,Visible=true,ZIndex=1,Name="Down",Parent = ColorPick76})
            local ColorPick83 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.63921570777893,0.63529413938522,0.64705884456635),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,16,0,8),SizeConstraint=0,Visible=true,ZIndex=1,Name="Arrow",Parent = ColorPick82})
            local ColorPick84 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,8,0,5),Rotation=0,Selectable=false,Size=UDim2.new(0,1,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick83})
            local ColorPick85 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,7,0,4),Rotation=0,Selectable=false,Size=UDim2.new(0,3,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick83})
            local ColorPick86 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,6,0,3),Rotation=0,Selectable=false,Size=UDim2.new(0,5,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick83})
            local ColorPick87 = CreateInstance("TextLabel",{Font=3,FontSize=5,Text="Red:",TextColor3=Color3.new(0.86274516582489,0.86274516582489,0.86274516582489),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=1,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-40,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,34,1,0),SizeConstraint=0,Visible=true,ZIndex=1,Name="Title",Parent = ColorPick74})
            local ColorPick88 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.25098040699959,0.25098040699959,0.25098040699959),BackgroundTransparency=0,BorderColor3=Color3.new(0.37647062540054,0.37647062540054,0.37647062540054),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-63,0,255),Rotation=0,Selectable=false,Size=UDim2.new(0,52,0,16),SizeConstraint=0,Visible=true,ZIndex=1,Name="Blue",Parent = ColorPick3})
            local ColorPick89 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=3,FontSize=5,MultiLine=false,Text="0",TextColor3=Color3.new(0.86274516582489,0.86274516582489,0.86274516582489),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.25098040699959,0.25098040699959,0.25098040699959),BackgroundTransparency=1,BorderColor3=Color3.new(0.37647062540054,0.37647062540054,0.37647062540054),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,2,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0,50,0,16),SizeConstraint=0,Visible=true,ZIndex=1,Name="Input",Parent = ColorPick88})
            local ColorPick90 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-16,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,16,1,0),SizeConstraint=0,Visible=true,ZIndex=1,Name="ArrowFrame",Parent = ColorPick89})
            local ColorPick91 = CreateInstance("TextButton",{Font=3,FontSize=5,Text="",TextColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=false,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(1,0,0,8),SizeConstraint=0,Visible=true,ZIndex=1,Name="Up",Parent = ColorPick90})
            local ColorPick92 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.63921570777893,0.63529413938522,0.64705884456635),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,16,0,8),SizeConstraint=0,Visible=true,ZIndex=1,Name="Arrow",Parent = ColorPick91})
            local ColorPick93 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,8,0,3),Rotation=0,Selectable=false,Size=UDim2.new(0,1,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick92})
            local ColorPick94 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,7,0,4),Rotation=0,Selectable=false,Size=UDim2.new(0,3,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick92})
            local ColorPick95 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,6,0,5),Rotation=0,Selectable=false,Size=UDim2.new(0,5,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick92})
            local ColorPick96 = CreateInstance("TextButton",{Font=3,FontSize=5,Text="",TextColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=false,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,8),Rotation=0,Selectable=true,Size=UDim2.new(1,0,0,8),SizeConstraint=0,Visible=true,ZIndex=1,Name="Down",Parent = ColorPick90})
            local ColorPick97 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.63921570777893,0.63529413938522,0.64705884456635),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,16,0,8),SizeConstraint=0,Visible=true,ZIndex=1,Name="Arrow",Parent = ColorPick96})
            local ColorPick98 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,8,0,5),Rotation=0,Selectable=false,Size=UDim2.new(0,1,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick97})
            local ColorPick99 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,7,0,4),Rotation=0,Selectable=false,Size=UDim2.new(0,3,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick97})
            local ColorPick100 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.86274510622025,0.86274510622025,0.86274510622025),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,6,0,3),Rotation=0,Selectable=false,Size=UDim2.new(0,5,0,1),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = ColorPick97})
            local ColorPick101 = CreateInstance("TextLabel",{Font=3,FontSize=5,Text="Blue:",TextColor3=Color3.new(0.86274516582489,0.86274516582489,0.86274516582489),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=1,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-40,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,34,1,0),SizeConstraint=0,Visible=true,ZIndex=1,Name="Title",Parent = ColorPick88})
            local ColorPick102 = CreateInstance("TextButton",{Font=3,FontSize=5,Text="OK",TextColor3=Color3.new(0.86274516582489,0.86274516582489,0.86274516582489),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=false,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.18823531270027,0.18823531270027,0.18823531270027),BackgroundTransparency=0,BorderColor3=Color3.new(0.37647062540054,0.37647062540054,0.37647062540054),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-210,1,-28),Rotation=0,Selectable=true,Size=UDim2.new(0,100,0,25),SizeConstraint=0,Visible=true,ZIndex=1,Name="Ok",Parent = ColorPick3})
            local ColorPick103 = CreateInstance("TextButton",{Font=3,FontSize=5,Text="Cancel",TextColor3=Color3.new(0.86274516582489,0.86274516582489,0.86274516582489),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=false,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.18823531270027,0.18823531270027,0.18823531270027),BackgroundTransparency=0,BorderColor3=Color3.new(0.37647062540054,0.37647062540054,0.37647062540054),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-105,1,-28),Rotation=0,Selectable=true,Size=UDim2.new(0,100,0,25),SizeConstraint=0,Visible=true,ZIndex=1,Name="Cancel",Parent = ColorPick3})
            local ColorPick104 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,5,0,5),Rotation=0,Selectable=false,Size=UDim2.new(0,180,0,200),SizeConstraint=0,Visible=true,ZIndex=1,Name="BasicColors",Parent = ColorPick3})
            local ColorPick105 = CreateInstance("TextLabel",{Font=3,FontSize=5,Text="Basic Colors",TextColor3=Color3.new(0.86274516582489,0.86274516582489,0.86274516582489),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,-5),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,26),SizeConstraint=0,Visible=true,ZIndex=1,Name="Title",Parent = ColorPick104})
            local ColorPick106 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,5,0,210),Rotation=0,Selectable=false,Size=UDim2.new(0,180,0,90),SizeConstraint=0,Visible=true,ZIndex=1,Name="CustomColors",Parent = ColorPick3})
            local ColorPick107 = CreateInstance("TextLabel",{Font=3,FontSize=5,Text="Custom Colors (RC = Set)",TextColor3=Color3.new(0.86274516582489,0.86274516582489,0.86274516582489),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,20),SizeConstraint=0,Visible=true,ZIndex=1,Name="Title",Parent = ColorPick106})
            local ColorPick108 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.fromRGB(84, 84, 84),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,25),SizeConstraint=0,Visible=true,ZIndex=1,Name="TopBar",Parent = ColorPick2})
            createImageLabel(1, "rbxasset://textures/ui/TopBar/dropshadow.png", "TopBarShadow", ColorPick108, UDim2.new(0, 0, 1, 0), false, UDim2.new(1, 0, 0, 3), 4)
            local ColorPick109 = CreateInstance("TextLabel",{Font=3,FontSize=5,Text="Color Picker",TextColor3=Color3.new(0.86274516582489,0.86274516582489,0.86274516582489),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,25,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,-50,0,25),SizeConstraint=0,Visible=true,ZIndex=1,Name="WindowTitle",Parent = ColorPick108})
            local ColorPick110 = CreateInstance("TextButton",{Font=4,FontSize=5,Text="X",TextColor3=Color3.new(0.86274516582489,0.86274516582489,0.86274516582489),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=false,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-27,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0,25,0,25),SizeConstraint=0,Visible=true,ZIndex=1,Name="Close",Parent = ColorPick108})
            return ColorPick
        end
        local GuiTemplate = createColorPick()
       
        ColorPicker.new = function()
            pickerCreated = true
            local newMt = setmetatable({},{})
           
            local rootGui = GuiTemplate:Clone()
            rootGui.Parent = coreGui
            rootGui.Enabled = true
            pickerGui = rootGui.ColorPicker
            local pickerTopBar = pickerGui.TopBar
            backDrop = pickerGui.Backdrop
            local pickerFrame = pickerGui.Backdrop.Content
            local colorSpace = pickerFrame.ColorSpaceFrame.ColorSpace
            local colorStrip = pickerFrame.ColorStrip
            local previewFrame = pickerFrame.Preview
            local basicColorsFrame = pickerFrame.BasicColors
            local customColorsFrame = pickerFrame.CustomColors
            local okButton = pickerFrame.Ok
            local cancelButton = pickerFrame.Cancel
            local closeButton = pickerTopBar.Close
   
            local colorScope = colorSpace.Scope
            local colorArrow = pickerFrame.ArrowFrame.Arrow
   
            local hueInput = pickerFrame.Hue.Input
            local satInput = pickerFrame.Sat.Input
            local valInput = pickerFrame.Val.Input
   
            local redInput = pickerFrame.Red.Input
            local greenInput = pickerFrame.Green.Input
            local blueInput = pickerFrame.Blue.Input
   
            local user = game:GetService("UserInputService")
            local mouse = game:GetService("Players").LocalPlayer:GetMouse()
           
            local hue,sat,val = Color3.toHSV(savedColor)
            local red,green,blue = savedColor.r, savedColor.g, savedColor.b
            local chosenColor = savedColor
   
            local basicColors = {Color3.new(0,0,0),Color3.new(0.66666668653488,0,0),Color3.new(0,0.33333334326744,0),Color3.new(0.66666668653488,0.33333334326744,0),Color3.new(0,0.66666668653488,0),Color3.new(0.66666668653488,0.66666668653488,0),Color3.new(0,1,0),Color3.new(0.66666668653488,1,0),Color3.new(0,0,0.49803924560547),Color3.new(0.66666668653488,0,0.49803924560547),Color3.new(0,0.33333334326744,0.49803924560547),Color3.new(0.66666668653488,0.33333334326744,0.49803924560547),Color3.new(0,0.66666668653488,0.49803924560547),Color3.new(0.66666668653488,0.66666668653488,0.49803924560547),Color3.new(0,1,0.49803924560547),Color3.new(0.66666668653488,1,0.49803924560547),Color3.new(0,0,1),Color3.new(0.66666668653488,0,1),Color3.new(0,0.33333334326744,1),Color3.new(0.66666668653488,0.33333334326744,1),Color3.new(0,0.66666668653488,1),Color3.new(0.66666668653488,0.66666668653488,1),Color3.new(0,1,1),Color3.new(0.66666668653488,1,1),Color3.new(0.33333334326744,0,0),Color3.new(1,0,0),Color3.new(0.33333334326744,0.33333334326744,0),Color3.new(1,0.33333334326744,0),Color3.new(0.33333334326744,0.66666668653488,0),Color3.new(1,0.66666668653488,0),Color3.new(0.33333334326744,1,0),Color3.new(1,1,0),Color3.new(0.33333334326744,0,0.49803924560547),Color3.new(1,0,0.49803924560547),Color3.new(0.33333334326744,0.33333334326744,0.49803924560547),Color3.new(1,0.33333334326744,0.49803924560547),Color3.new(0.33333334326744,0.66666668653488,0.49803924560547),Color3.new(1,0.66666668653488,0.49803924560547),Color3.new(0.33333334326744,1,0.49803924560547),Color3.new(1,1,0.49803924560547),Color3.new(0.33333334326744,0,1),Color3.new(1,0,1),Color3.new(0.33333334326744,0.33333334326744,1),Color3.new(1,0.33333334326744,1),Color3.new(0.33333334326744,0.66666668653488,1),Color3.new(1,0.66666668653488,1),Color3.new(0.33333334326744,1,1),Color3.new(1,1,1)}
            local customColors = {}
   
            local function updateColor(noupdate)
                local relativeX,relativeY,relativeStripY = 219 - hue*219, 199 - sat*199, 199 - val*199
                local hsvColor = Color3.fromHSV(hue,sat,val)
       
                if noupdate == 2 or not noupdate then
                    hueInput.Text = tostring(math.ceil(359*hue))
                    satInput.Text = tostring(math.ceil(255*sat))
                    valInput.Text = tostring(math.floor(255*val))
                end
                if noupdate == 1 or not noupdate then
                    redInput.Text = tostring(math.floor(255*red))
                    greenInput.Text = tostring(math.floor(255*green))
                    blueInput.Text = tostring(math.floor(255*blue))
                end
       
                chosenColor = Color3.new(red,green,blue)
       
                colorScope.Position = UDim2.new(0,relativeX-9,0,relativeY-9)
                colorStrip.ImageColor3 = Color3.fromHSV(hue,sat,1)
                colorArrow.Position = UDim2.new(0,-2,0,relativeStripY-4)
                previewFrame.BackgroundColor3 = chosenColor
       
                updateBack(chosenColor, backDrop)
               
                newMt.Color = chosenColor
                if newMt.Changed then
                    newMt:Changed(chosenColor)
                end
            end
   
            local function colorSpaceInput()
                local relativeX = mouse.X - colorSpace.AbsolutePosition.X
                local relativeY = mouse.Y - colorSpace.AbsolutePosition.Y
                   
                if relativeX < 0 then relativeX = 0 elseif relativeX > 219 then relativeX = 219 end
                if relativeY < 0 then relativeY = 0 elseif relativeY > 199 then relativeY = 199 end
                   
                hue = (219 - relativeX)/219
                sat = (199 - relativeY)/199
       
                local hsvColor = Color3.fromHSV(hue,sat,val)
                red,green,blue = hsvColor.r,hsvColor.g,hsvColor.b
       
                updateColor()
            end
   
            local function colorStripInput()
                local relativeY = mouse.Y - colorStrip.AbsolutePosition.Y
       
                if relativeY < 0 then relativeY = 0 elseif relativeY > 199 then relativeY = 199 end
       
                val = (199 - relativeY)/199
       
                local hsvColor = Color3.fromHSV(hue,sat,val)
                red,green,blue = hsvColor.r,hsvColor.g,hsvColor.b
       
                updateColor()
            end
   
            local function hookButtons(frame,func)
                frame.ArrowFrame.Up.InputBegan:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseMovement then
                        frame.ArrowFrame.Up.BackgroundTransparency = 0.5
                    elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
                        local releaseEvent,runEvent
               
                        local startTime = tick()
                        local pressing = true
                        local startNum = tonumber(frame.Text)
               
                        if not startNum then return end
               
                        releaseEvent = user.InputEnded:Connect(function(input)
                            if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
                            releaseEvent:Disconnect()
                            pressing = false
                        end)
               
                        startNum = startNum + 1
                        func(startNum)
                        while pressing do
                            if tick()-startTime > 0.3 then
                                startNum = startNum + 1
                                func(startNum)
                            end
                            wait(0.1)
                        end
                    end
                end)
       
                frame.ArrowFrame.Up.InputEnded:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseMovement then
                        frame.ArrowFrame.Up.BackgroundTransparency = 1
                    end
                end)
       
                frame.ArrowFrame.Down.InputBegan:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseMovement then
                        frame.ArrowFrame.Down.BackgroundTransparency = 0.5
                    elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
                        local releaseEvent,runEvent
               
                        local startTime = tick()
                        local pressing = true
                        local startNum = tonumber(frame.Text)
               
                        if not startNum then return end
               
                        releaseEvent = user.InputEnded:Connect(function(input)
                            if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
                            releaseEvent:Disconnect()
                            pressing = false
                        end)
               
                        startNum = startNum - 1
                        func(startNum)
                        while pressing do
                            if tick()-startTime > 0.3 then
                                startNum = startNum - 1
                                func(startNum)
                            end
                            wait(0.1)
                        end
                    end
                end)
       
                frame.ArrowFrame.Down.InputEnded:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseMovement then
                        frame.ArrowFrame.Down.BackgroundTransparency = 1
                    end
                end)
            end
   
            colorSpace.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    local releaseEvent,mouseEvent
           
                    releaseEvent = user.InputEnded:Connect(function(input)
                        if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
                        releaseEvent:Disconnect()
                        mouseEvent:Disconnect()
                    end)
           
                    mouseEvent = user.InputChanged:Connect(function(input)
                        if input.UserInputType == Enum.UserInputType.MouseMovement then
                            colorSpaceInput()
                        end
                    end)
           
                    colorSpaceInput()
                end
            end)
   
            colorStrip.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    local releaseEvent,mouseEvent
           
                    releaseEvent = user.InputEnded:Connect(function(input)
                        if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
                        releaseEvent:Disconnect()
                        mouseEvent:Disconnect()
                    end)
           
                    mouseEvent = user.InputChanged:Connect(function(input)
                        if input.UserInputType == Enum.UserInputType.MouseMovement then
                            colorStripInput()
                        end
                    end)
           
                    colorStripInput()
                end
            end)
   
            local function updateHue(str)
                local num = tonumber(str)
                if num then
                    hue = math.clamp(math.floor(num),0,359)/359
                    local hsvColor = Color3.fromHSV(hue,sat,val)
                    red,green,blue = hsvColor.r,hsvColor.g,hsvColor.b
                    hueInput.Text = tostring(hue*359)
                    updateColor(1)
                end
            end
            hueInput.FocusLost:Connect(function() updateHue(hueInput.Text) end) hookButtons(hueInput,updateHue)
   
            local function updateSat(str)
                local num = tonumber(str)
                if num then
                    sat = math.clamp(math.floor(num),0,255)/255
                    local hsvColor = Color3.fromHSV(hue,sat,val)
                    red,green,blue = hsvColor.r,hsvColor.g,hsvColor.b
                    satInput.Text = tostring(sat*255)
                    updateColor(1)
                end
            end
            satInput.FocusLost:Connect(function() updateSat(satInput.Text) end) hookButtons(satInput,updateSat)
   
            local function updateVal(str)
                local num = tonumber(str)
                if num then
                    val = math.clamp(math.floor(num),0,255)/255
                    local hsvColor = Color3.fromHSV(hue,sat,val)
                    red,green,blue = hsvColor.r,hsvColor.g,hsvColor.b
                    valInput.Text = tostring(val*255)
                    updateColor(1)
                end
            end
            valInput.FocusLost:Connect(function() updateVal(valInput.Text) end) hookButtons(valInput,updateVal)
           
            local function updateRed(str)
                local num = tonumber(str)
                if num then
                    red = math.clamp(math.floor(num),0,255)/255
                    local newColor = Color3.new(red,green,blue)
                    hue,sat,val = Color3.toHSV(newColor)
                    redInput.Text = tostring(red*255)
                    updateColor(2)
                end
            end
            redInput.FocusLost:Connect(function() updateRed(redInput.Text) end) hookButtons(redInput,updateRed)
           
            local function updateGreen(str)
                local num = tonumber(str)
                if num then
                    green = math.clamp(math.floor(num),0,255)/255
                    local newColor = Color3.new(red,green,blue)
                    hue,sat,val = Color3.toHSV(newColor)
                    greenInput.Text = tostring(green*255)
                    updateColor(2)
                end
            end
            greenInput.FocusLost:Connect(function() updateGreen(greenInput.Text) end) hookButtons(greenInput,updateGreen)
           
            local function updateBlue(str)
                local num = tonumber(str)
                if num then
                    blue = math.clamp(math.floor(num),0,255)/255
                    local newColor = Color3.new(red,green,blue)
                    hue,sat,val = Color3.toHSV(newColor)
                    blueInput.Text = tostring(blue*255)
                    updateColor(2)
                end
            end
            blueInput.FocusLost:Connect(function() updateBlue(blueInput.Text) end) hookButtons(blueInput,updateBlue)
           
            local colorChoice = Instance.new("TextButton")
            colorChoice.Name = "Choice"
            colorChoice.Size = UDim2.new(0,25,0,18)
            colorChoice.BorderColor3 = Color3.new(96/255,96/255,96/255)
            colorChoice.Text = ""
            colorChoice.AutoButtonColor = false
           
            local row = 0
            local column = 0
            for i,v in pairs(basicColors) do
                local newColor = colorChoice:Clone()
                newColor.BackgroundColor3 = v
                newColor.Position = UDim2.new(0,1 + 30*column,0,21 + 23*row)
               
                newColor.MouseButton1Click:Connect(function()
                    red,green,blue = v.r,v.g,v.b
                    local newColor = Color3.new(red,green,blue)
                    hue,sat,val = Color3.toHSV(newColor)
                    updateColor()
                end)   
               
                newColor.Parent = basicColorsFrame
                column = column + 1
                if column == 6 then row = row + 1 column = 0 end
            end
           
            row = 0
            column = 0
            for i = 1,12 do
                local color = customColors[i] or Color3.new(0,0,0)
                local newColor = colorChoice:Clone()
                newColor.BackgroundColor3 = color
                newColor.Position = UDim2.new(0,1 + 30*column,0,20 + 23*row)
               
                newColor.MouseButton1Click:Connect(function()
                    local curColor = customColors[i] or Color3.new(0,0,0)
                    red,green,blue = curColor.r,curColor.g,curColor.b
                    hue,sat,val = Color3.toHSV(curColor)
                    updateColor()
                end)
               
                newColor.MouseButton2Click:Connect(function()
                    customColors[i] = chosenColor
                    newColor.BackgroundColor3 = chosenColor
                end)
               
                newColor.Parent = customColorsFrame
                column = column + 1
                if column == 6 then row = row + 1 column = 0 end
            end
           
            pickerTopBar.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    local releaseEvent,mouseEvent
                    local dragOffX,dragOffY = mouse.X-pickerTopBar.AbsolutePosition.X,mouse.Y-pickerTopBar.AbsolutePosition.Y
                   
                    releaseEvent = user.InputEnded:Connect(function(input)
                        if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
                        releaseEvent:Disconnect()
                        mouseEvent:Disconnect()
                    end)
                   
                    mouseEvent = user.InputChanged:Connect(function(input)
                        if input.UserInputType == Enum.UserInputType.MouseMovement then
                            pickerGui.Position = UDim2.new(0,mouse.X-dragOffX,0,mouse.Y-dragOffY)
                        end
                    end)
                end
            end)
           
            okButton.MouseButton1Click:Connect(function() if newMt.Confirm then newMt:Confirm(chosenColor) end pickerGui.Visible = false savedColor = chosenColor colorPickerOpen = false end)
            okButton.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then okButton.BackgroundTransparency = 0.4 end end)
            okButton.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then okButton.BackgroundTransparency = 0 end end)
           
            cancelButton.MouseButton1Click:Connect(function() if newMt.Cancel then newMt:Cancel() end pickerGui.Visible = false updateBack(savedColor, backDrop) colorPickerOpen = false end)
            cancelButton.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then cancelButton.BackgroundTransparency = 0.4 end end)
            cancelButton.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then cancelButton.BackgroundTransparency = 0 end end)
           
            closeButton.MouseButton1Click:Connect(function() pickerGui.Visible = false updateBack(savedColor, backDrop) colorPickerOpen = false end)
           
            updateColor()
           
            newMt.SetColor = function(self,color)
                red,green,blue = color.r,color.g,color.b
                hue,sat,val = Color3.toHSV(color)
                updateColor()
            end
           
            newMt.Gui = rootGui
           
            return newMt
        end
    end
   
    local rainbowColors = {
        Color3.fromRGB(0, 0, 255),
        Color3.fromRGB(255, 0, 0),
        Color3.fromRGB(255, 255, 0),
        Color3.fromRGB(0, 255, 0),
        Color3.fromRGB(0, 255, 255),
    }
   
    local rainbow = false
    local customRainbow = false
    local rainbowReset = false
    local rainbowStart = 1
    local currentRainbow = nil
   
    spawn(function()
        while wait() do
            if rainbow == true then
                for i,v in pairs(rainbowColors) do
                    local start = rainbowColors[i]
                    local rEnd = i + 1
                    if not rainbowColors[rEnd] then
                        rEnd = 1
                    end
                    if customRainbow == true then
                        local back = screenGui.Top.Main.BackgroundColor3
                        start = back
                    end
                    for num = rainbowCount, 1, -1 do
                        currentRainbow = start:Lerp(rainbowColors[rEnd], (rainbowCount - num)/rainbowCount)
                        if rainbow == true then
                            updateBack(currentRainbow)
                        else
                            break
                        end
                        wait()
                    end
                    customRainbow = false
                end
                if rainbowReset == true then
                    rainbowReset = false
                    rainbow = false
                    currentRainbow = screenGui.Top.Main.BackgroundColor3
                    for num = rainbowCount, 1, -1 do
                        currentRainbow = currentRainbow:Lerp(savedColor, (rainbowCount - num)/rainbowCount)
                        updateBack(currentRainbow)
                        if rainbow == true then
                            rainbowReset = false
                            break
                        end
                        wait()
                    end
                    wait()
                end
            end
        end
    end)
   
    --Intro
    screenGui = Instance.new("ScreenGui")
    screenGui.Parent = coreGui
    screenGui.Name = "Introooo"
    screenGui.Enabled = false
   
    createFrame(false, Color3.fromRGB(59, 59, 59), 0, 0, true, "Intro", screenGui, UDim2.new(0.5, -188, 0.5, -84), UDim2.new(0, 376, 0, 169))
       
    createTextLabel(Color3.fromRGB(84, 84, 84), 0, 0, Enum.Font.SourceSansBold, "Top", screenGui.Intro, UDim2.new(0, 0, 0, 0), UDim2.new(0, 376, 0, 25), "</> Rose Hub </>", Color3.fromRGB(255, 255, 255), 25, true, Enum.TextXAlignment.Center, Enum.TextYAlignment.Top, 1)
   
    createImageLabel(1, "rbxasset://textures/ui/TopBar/dropshadow.png", "TopBarShadow", screenGui.Intro.Top, UDim2.new(0, 0, 1, 0), false, UDim2.new(1, 0, 0, 3), 4)
   
    createTextLabel(Color3.fromRGB(255, 255, 255), 1, 1, Enum.Font.SourceSansBold, "Loading", screenGui.Intro, UDim2.new(0, 88, 0, 139), UDim2.new(0, 200, 0, 30), "Loading...", Color3.fromRGB(255, 255, 255), 20, false, Enum.TextXAlignment.Center, Enum.TextYAlignment.Center, 1)
   
    createTextLabel(Color3.fromRGB(255, 255, 255), 1, 1, Enum.Font.SourceSansBold, "Motto", screenGui.Intro, UDim2.new(0, 88, 0, 25), UDim2.new(0, 200, 0, 33), [["Innovating Creativity"]], Color3.fromRGB(255, 255, 255), 17, false, Enum.TextXAlignment.Center, Enum.TextYAlignment.Center, 1)
   
    createFrame(false, Color3.fromRGB(255, 255, 255), 0.65, 1, false, "Background", screenGui.Intro, UDim2.new(0, 19, 0, 75), UDim2.new(0, 338, 0, 33))
   
    createFrame(false, Color3.fromRGB(255, 255, 255), 0, 0, false, "Bar", screenGui.Intro.Background, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 33))
   
    createImageLabel(1, "rbxasset://textures/ui/TopBar/dropshadow.png", "TopBarShadow", screenGui.Intro.Background, UDim2.new(0, 0, 1, 0), false, UDim2.new(1, 0, 0, 3), 4)
   
    tweening = true
   
    screenGui.Intro.Size = UDim2.new(0, 0, 0, 25)
   
    wait()
   
    screenGui.Enabled = true
   
    screenGui.Intro:TweenSize(UDim2.new(0, 376, 0, 25), "Out", "Quad", 0.5)
   
    wait(0.5)
    wait()
   
    screenGui.Intro:TweenSize(UDim2.new(0, 376, 0, 169), "Out", "Quad", 0.5)
   
    wait(0.5)
   
    screenGui.Intro.Background.Bar:TweenSize(UDim2.new(1, 0, 0, 33), "Out", "Quad", 3)
   
    intro = screenGui
   
    --Create Gui
    gui = Instance.new("ScreenGui")
    gui.Parent = coreGui
    gui.Name = "RoseHub"
    gui.Enabled = false
   
    local uiScale = Instance.new("UIScale")
    uiScale.Scale = 1.1
    uiScale.Parent = gui
   
    createFrame(true, Color3.fromRGB(255, 255, 255), 1, 0, false, "Main", gui, UDim2.new(0.5, -180, 0.5, -172), UDim2.new(0, 361, 0, 344))
   
    gui.Main.Active = true
    gui.Main.Draggable = true
    gui.Main.ClipsDescendants = true
   
    createTextButton(Color3.fromRGB(84, 84, 84), 0, 0, Enum.Font.SourceSansBold, "Open", gui, UDim2.new(0, 0, 0.75, 0), UDim2.new(0, 75, 0, 30), "Open", textColor, 14, 1, function()
        if tweening == false then
            tweening = true
            gui.Open:TweenPosition(UDim2.new(0, -75, 0.75, 0), "Out", "Quad", 0.25)
            wait(0.25)
            gui.Main:TweenSize(UDim2.new(0, 361, 0, 31), "Out", "Quad", 0.5)
            wait(0.5)
            wait()
            gui.Main:TweenSize(UDim2.new(0, 361, 0, 347), "Out", "Quad", 0.5)
            wait(0.5)
            tweening = false
        end
    end)
   
    createImageLabel(1, "rbxasset://textures/ui/TopBar/dropshadow.png", "TopBarShadow", gui.Open, UDim2.new(0, 0, 1, 0), false, UDim2.new(1, 0, 0, 3), 4)
   
    screenGui = gui.Main
   
    createFrame(true, Color3.fromRGB(84, 84, 84), 0, 0, false, "Top", screenGui, UDim2.new(0, 0, 0, 0), UDim2.new(0, 361, 0, 31))
    createFrame(false, savedColor, 0, 0, false, "Main", screenGui.Top, UDim2.new(0, 0, 0.984, 0), UDim2.new(0, 361, 0, 313))
   
    createImageLabel(1, "rbxasset://textures/ui/TopBar/dropshadow.png", "TopBarShadow", screenGui.Top.Main, UDim2.new(0, 0, 1, 0), false, UDim2.new(1, 0, 0, 3), 4)
   
    createFrame(false, Color3.fromRGB(117, 117, 117), 0.5, 0, false, "Tabs", screenGui.Top, UDim2.new(0, 0, 1, 0), UDim2.new(0, 110, 0, 313))
   
    createFrame(false, backColor, 1, 0, true, "Important", screenGui.Top, UDim2.new(0.36, 0, 1.516, 0), UDim2.new(0, 211, 0, 281))
   
    local underline = createFrame(false, backColor, 0, 0, false, "Frame", screenGui.Top.Tabs, UDim2.new(0, 20, 0, 25), UDim2.new(0, 70, 0, 2))
   
    --Create Tabs Function
    local tabPos = 0
    local oldTab = tabs[1]
    for _,tab in pairs(tabs) do
        local tabFrame = createFrame(false, Color3.fromRGB(117, 117, 117), 0.75, 0, false, tab.."Tab", screenGui.Top.Important, UDim2.new(-1, 0, 0, 0), UDim2.new(0, 211, 0, 281))
        local tweenPos = tabPos + 22
        createTextButton(backColor, 1, 1, Enum.Font.SourceSansBold, tab, screenGui.Top.Tabs, UDim2.new(0, 0, 0, tabPos), UDim2.new(0, 110, 0, 26), tab, textColor, 14, 1, function()
            if tweening == false and tab ~= oldTab then
                tweening = true
                underline:TweenSizeAndPosition(UDim2.new(0, 2, 0, 0), UDim2.new(0, 55, 0, underline.Position.Y.Offset), "Out", "Quad", tweenSpeed)
                local newUnderline = createFrame(false, backColor, 0, 0, false, "Frame", screenGui.Top.Tabs, UDim2.new(0, 55, 0, tweenPos), UDim2.new(0, 0, 0, 2))
                newUnderline:TweenSizeAndPosition(UDim2.new(0, screenGui.Top.Tabs[tab].TextBounds.X, 0, 2), UDim2.new(0, 55 - screenGui.Top.Tabs[tab].TextBounds.X/2, 0, tweenPos), "Out", "Quad", tweenSpeed)
                screenGui.Top.Important[oldTab.."Tab"]:TweenPosition(UDim2.new(1, 0, 0, 0), "Out", "Quad", tweenSpeed)
                screenGui.Top.Important[tab.."Tab"]:TweenPosition(UDim2.new(0, 0, 0, 0), "Out", "Quad", tweenSpeed)
                screenGui.Top.CurrentTab:TweenSize(UDim2.new(0, 0, 0, 31), "Out", "Quad", tweenSpeed/2)
                wait(tweenSpeed/2)
                screenGui.Top.CurrentTab.Label.Text = tab
                screenGui.Top.CurrentTab:TweenSize(UDim2.new(0, 109, 0, 31), "Out", "Quad", tweenSpeed/2)
                wait(tweenSpeed/2)
                screenGui.Top.Important[oldTab.."Tab"].Position = UDim2.new(-1, 0, 0, 0)
                underline:Destroy()
                underline = newUnderline
                oldTab = tab
                tweening = false
            end
        end)
        tabPos = tabPos + 26
    end
    screenGui.Top.Important[tabs[1].."Tab"].Position = UDim2.new(0, 0, 0, 0)
    underline.Size = UDim2.new(0, screenGui.Top.Tabs[tabs[1]].TextBounds.X, 0, 2)
    underline.Position = UDim2.new(0, 55 - screenGui.Top.Tabs[tabs[1]].TextBounds.X/2, 0, 22)
   
    createTextLabel(backColor, 1, 1, Enum.Font.SourceSansBold, "Name", screenGui.Top, UDim2.new(0, 45, 0, 0), UDim2.new(0, 109, 1, 0), "Rose Hub "..VERSION, textColor, 18, true, Enum.TextXAlignment.Left, Enum.TextYAlignment.Center, 1)
   
    createTextButton(backColor, 1, 0, Enum.Font.SourceSansBold, "Close", screenGui.Top, UDim2.new(0.898, 0, 0, 0), UDim2.new(0, 36, 0, 31), "X", textColor, 18, 1, function()
        if tweening == false then
            tweening = true
            gui.Main:TweenSize(UDim2.new(0, 361, 0, 31), "Out", "Quad", 0.5)
            wait(0.5)
            gui.Main:TweenSize(UDim2.new(0, 0, 0, 31), "Out", "Quad", 0.5)
            wait(0.5)
            wait()
            gui.Open:TweenPosition(UDim2.new(0, 0, 0.75, 0), "Out", "Quad", 0.25)
            wait(0.25)
            tweening = false
        end
    end)
   
    local singleImageButton = Instance.new("ImageButton")
    singleImageButton.BackgroundColor3 = backColor
    singleImageButton.BackgroundTransparency = 1
    singleImageButton.Image = "rbxassetid://708157521"
    singleImageButton.Parent = screenGui.Top
    singleImageButton.Position = UDim2.new(0.033, 0, 0.129, 0)
    singleImageButton.ScaleType = Enum.ScaleType.Fit
    singleImageButton.Size = UDim2.new(0, 24, 0, 23)
    singleImageButton.MouseButton1Down:Connect(function()
        --Stuff
    end)
   
    --Home Tab
    createTextLabel(backColor, 1, 1, Enum.Font.SourceSansBold, "Part1", screenGui.Top.Important.HomeTab, UDim2.new(0.024, 0, 0.009, 0), UDim2.new(0, 200, 0, 50), "Welcome to Rose Hub!", textColor, 20, false, Enum.TextXAlignment.Center, Enum.TextYAlignment.Center, 1)
   
    createTextButton(backColor, 0.75, 0, Enum.Font.SourceSansBold, "Discord", screenGui.Top.Important.HomeTab, UDim2.new(0.024, 0, 0.721, 0), UDim2.new(0, 200, 0, 50), "Discord Server:\nhttps://discord.me/rosehub", textColor, 14, 1, function()
       
    end)
   
    createImageLabel(1, "rbxasset://textures/ui/TopBar/dropshadow.png", "TopBarShadow", screenGui.Top.Important.HomeTab.Discord, UDim2.new(0, 0, 1, 0), false, UDim2.new(1, 0, 0, 3), 4)
   
    createTextLabel(backColor, 1, 0, Enum.Font.SourceSans, "Explanation", screenGui.Top.Important.HomeTab, UDim2.new(0, 0, 0.174, 0), UDim2.new(0, 211, 0, 141), [[To get started click the tabs to find what scripts your looking for.
    The scrolling bar is invisible so to scroll use your scroll wheel.
   
    Want scripts or features added?
   
    Join our Discord for Support donations and more!]], textColor, 14, true, Enum.TextXAlignment.Center, Enum.TextYAlignment.Top, 4)
   
    --All Script Tabs
    --Sort lists and insert them
    for _,list in pairs(lists) do
        local toSort = {}
        local sortedList = {}
        local pos = 0
       
        for _,v in pairs(list[1]) do
            table.insert(toSort, v[1])
        end
       
        table.sort(toSort)
       
        for i,name in pairs(toSort) do
            for i,actualTable in pairs(list[1]) do
                if name == actualTable[1] then
                    table.insert(sortedList, {actualTable[1], actualTable[2], actualTable[3]})
                end
            end
        end
       
        --Make Holding Frame
        createScrollingFrame(backColor, 0.8, 0, "", UDim2.new(0, 0, 0, 0), "", "Holder", screenGui.Top.Important[list[2].."Tab"], UDim2.new(0, 10, 0, 38), 0, 0, false, UDim2.new(1, -20, 1, -48), "", true)
       
        --Function to create the buttons
        local function createButons(text)
            pos = 5
            for _,button in pairs(sortedList) do
                if text == "" or string.match(string.lower(button[1]), string.lower(text)) then
                    createTextButton(backColor, mainTrans, 0, Enum.Font.SourceSans, button[1], screenGui.Top.Important[list[2].."Tab"].Holder, UDim2.new(0, 5, 0, pos), UDim2.new(0, 181, 0, 20), button[1], textColor, 14, 1, function()
                        if button[3] == 1 then
                            loadstring(game:HttpGet("https://pastebin.com/raw/"..button[2], true))()
                        elseif button[3] == 2 then
                            loadstring(game:GetObjects("rbxassetid://"..button[2])[1].Source)()
                        end
                    end)
                    pos = pos + 23
                end
            end
        end
       
        --Remove Buttons and create new on search
        local function removeButtons()
            for _,button in pairs(screenGui.Top.Important[list[2].."Tab"].Holder:GetChildren()) do
                button:Destroy()
            end
        end
       
        --Search Function
        createTextBox(backColor, mainTrans, 0, Enum.Font.SourceSans, "Search", screenGui.Top.Important[list[2].."Tab"], "Search "..list[2], UDim2.new(0, 10, 0, 10), UDim2.new(1, -20, 0, 22), "", textColor, 14, false, Enum.TextXAlignment.Center, Enum.TextYAlignment.Center)
        createImageLabel(1, "rbxasset://textures/ui/TopBar/dropshadow.png", "TopBarShadow", screenGui.Top.Important[list[2].."Tab"].Search, UDim2.new(0, 0, 1, 0), false, UDim2.new(1, 0, 0, 3), 4)
        screenGui.Top.Important[list[2].."Tab"].Search.PlaceholderColor3 = textColor
        screenGui.Top.Important[list[2].."Tab"].Search.PlaceholderText = "Search "..list[2]
        local function searchBar(chosenList)   
            local search = screenGui.Top.Important[chosenList.."Tab"].Search
            local currentSearch = ""
            search.Changed:connect(function(property)
                if property == "Text" then
                    if search.Text ~= "" and search.Text ~= currentSearch then
                        currentSearch = search.Text
                        removeButtons()
                        createButons(search.Text)
                    elseif search.Text == "" and currentSearch.Text ~= "" then
                        currentSearch = search.Text
                        removeButtons()
                        createButons("")
                    end
                end
            end)
        end
       
        searchBar(list[2])
       
        --Create Buttons with no search
        createButons("")
       
        screenGui.Top.Important[list[2].."Tab"].Holder.CanvasSize = UDim2.new(1, 0, 0, pos + 2)
    end
   
    --Executor Tab
    local movedExec = false
    local movingText = false
   
    local execHolder = createScrollingFrame(backColor, mainTrans, 0, "rbxasset://textures/ui/Scroll/scroll-bottom.png", UDim2.new(0, 0, 0, 0), "rbxasset://textures/ui/Scroll/scroll-middle.png", "Holder", screenGui.Top.Important.ExecutorTab, UDim2.new(0, 10, 0, 10), 0, 10, false, UDim2.new(1, -20, 1, -56), "rbxasset://textures/ui/Scroll/scroll-top.png", true)
    execHolder.Changed:connect(function(property)
        if property == "CanvasPosition" then
            if movingText == false then
                if execInput.TextBounds.Y - execHolder.CanvasPosition.Y <= 201 then
                    movedExec = false
                else
                    movedExec = true
                end
            end
        end
    end)
   
    createTextButton(backColor, mainTrans, 0, Enum.Font.SourceSansBold, "execute", screenGui.Top.Important.ExecutorTab, UDim2.new(0, 10, 1, -41), UDim2.new(0, 93, 0, 31), "Execute", textColor, 15, 3, function()
        pcall(function()
            loadstring(execInput.Text)()
        end)
    end)
   
    createImageLabel(1, "rbxasset://textures/ui/TopBar/dropshadow.png", "TopBarShadow", screenGui.Top.Important.ExecutorTab.execute, UDim2.new(0, 0, 1, 0), false, UDim2.new(1, 0, 0, 3), 4)
   
    createTextButton(backColor, mainTrans, 0, Enum.Font.SourceSansBold, "clear", screenGui.Top.Important.ExecutorTab, UDim2.new(0, 108, 1, -41), UDim2.new(0, 93, 0, 31), "Clear", textColor, 15, 3, function()
        execInput.Text = ""
    end)
   
    createImageLabel(1, "rbxasset://textures/ui/TopBar/dropshadow.png", "TopBarShadow", screenGui.Top.Important.ExecutorTab.clear, UDim2.new(0, 0, 1, 0), false, UDim2.new(1, 0, 0, 3), 4)
   
    execInput = createTextBox(backColor, 1, 0, Enum.Font.SourceSans, "input", screenGui.Top.Important.ExecutorTab.Holder, "Input script here...", UDim2.new(0, 10, 0, 10), UDim2.new(0, 170, 1, 0), "", textColor, 14, true, Enum.TextXAlignment.Left, Enum.TextYAlignment.Top)
    execInput.ClearTextOnFocus = false
    execInput.MultiLine = true
    execInput.Changed:connect(function(property)
        if property == "Text" then
            movingText = true
            execHolder.CanvasSize = UDim2.new(1, -20, 0, execInput.TextBounds.Y + execInput.TextSize + 10)
            if movedExec == false and execInput.TextBounds.Y - execHolder.CanvasPosition.Y >= 205 then
                execHolder.CanvasPosition = Vector2.new(0, execInput.TextBounds.Y + 224 + execInput.TextSize + 10)
                movedExec = false
            elseif movedExec == true and execInput.TextBounds.Y < 224 then
                movedExec = false
            end
            movingText = false
        end
    end)
   
    --Settings
    createTextButton(backColor, mainTrans, 0, Enum.Font.SourceSansBold, "colorpickopen", screenGui.Top.Important.SettingsTab, UDim2.new(0, 10, 0, 10), UDim2.new(0, 93, 0, 31), "Color Picker", textColor, 15, 3, function()
        if colorPickerOpen == false then
            colorPickerOpen = true
            if rainbow == true then
                rainbow = false
                rainbowReset = true
            end
            if pickerCreated ~= true then
                ColorPicker.new()
            else
                pickerGui.Visible = true
            end
        end
    end)
   
    createImageLabel(1, "rbxasset://textures/ui/TopBar/dropshadow.png", "TopBarShadow", screenGui.Top.Important.SettingsTab.colorpickopen, UDim2.new(0, 0, 1, 0), false, UDim2.new(1, 0, 0, 3), 4)
   
    createTextButton(backColor, mainTrans, 0, Enum.Font.SourceSansBold, "ResetGui", screenGui.Top.Important.SettingsTab, UDim2.new(0, 108, 0, 10), UDim2.new(0, 93, 0, 31), "Reset Gui", textColor, 15, 3, function()
        rainbowReset = true
        rainbow = false
        rainbowCount = 75
        changeColorPickerBack = true
        backDrop.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
        updateBack(Color3.fromRGB(59, 59, 59))
        savedColor = Color3.fromRGB(59, 59, 59)
    end)
   
    createImageLabel(1, "rbxasset://textures/ui/TopBar/dropshadow.png", "TopBarShadow", screenGui.Top.Important.SettingsTab.ResetGui, UDim2.new(0, 0, 1, 0), false, UDim2.new(1, 0, 0, 3), 4)
   
    createFrame(false, backColor, mainTrans, 0, false, "RainbowFrame", screenGui.Top.Important.SettingsTab, UDim2.new(0, 10, 0, 46), UDim2.new(1, -20, 0, 111))
   
    createTextLabel(backColor, mainTrans, 0, Enum.Font.SourceSansBold, "SpeedLabel", screenGui.Top.Important.SettingsTab.RainbowFrame, UDim2.new(0, 10, 0, 46), UDim2.new(0, 90, 0, 25), "Speed: "..tostring(rainbowCount), textColor, 15, false, Enum.TextXAlignment.Center, Enum.TextYAlignment.Center, 1)
   
    createImageLabel(1, "rbxasset://textures/ui/TopBar/dropshadow.png", "TopBarShadow", screenGui.Top.Important.SettingsTab.RainbowFrame.SpeedLabel, UDim2.new(0, 0, 1, 0), false, UDim2.new(1, 0, 0, 3), 4)
   
    createTextButton(backColor, mainTrans, 0, Enum.Font.SourceSansBold, "RainbowSet", screenGui.Top.Important.SettingsTab.RainbowFrame, UDim2.new(0, 135, 0, 46), UDim2.new(0, 44, 0, 25), "Set", textColor, 15, 3, function()
        local speed = screenGui.Top.Important.SettingsTab.RainbowFrame.RainbowBox.Text
        if tonumber(speed) and tonumber(speed) >= 1 then
            rainbowCount = tonumber(speed)
            screenGui.Top.Important.SettingsTab.RainbowFrame.SpeedLabel.Text = "Speed: "..tostring(speed)
        end
    end)
   
    createImageLabel(1, "rbxasset://textures/ui/TopBar/dropshadow.png", "TopBarShadow", screenGui.Top.Important.SettingsTab.RainbowFrame.RainbowSet, UDim2.new(0, 0, 1, 0), false, UDim2.new(1, 0, 0, 3), 4)
   
    createTextBox(backColor, mainTrans, 0, Enum.Font.SourceSansBold, "RainbowBox", screenGui.Top.Important.SettingsTab.RainbowFrame, "", UDim2.new(0, 105, 0, 46), UDim2.new(0, 25, 0, 25), tostring(rainbowCount), textColor, 15, false, Enum.TextXAlignment.Center, Enum.TextYAlignment.Center, true)
   
    createImageLabel(1, "rbxasset://textures/ui/TopBar/dropshadow.png", "TopBarShadow", screenGui.Top.Important.SettingsTab.RainbowFrame.RainbowBox, UDim2.new(0, 0, 1, 0), false, UDim2.new(1, 0, 0, 3), 4)
   
    createTextLabel(backColor, mainTrans, 0, Enum.Font.SourceSansBold, "RainbowLabel", screenGui.Top.Important.SettingsTab.RainbowFrame, UDim2.new(0, 10, 0, 10), UDim2.new(0, 170, 0, 31), "Rainbow Background", textColor, 15, false, Enum.TextXAlignment.Center, Enum.TextYAlignment.Center, 1)
   
    createImageLabel(1, "rbxasset://textures/ui/TopBar/dropshadow.png", "TopBarShadow", screenGui.Top.Important.SettingsTab.RainbowFrame.RainbowLabel, UDim2.new(0, 0, 1, 0), false, UDim2.new(1, 0, 0, 3), 4)
   
    createTextButton(backColor, mainTrans, 0, Enum.Font.SourceSansBold, "RainbowOn", screenGui.Top.Important.SettingsTab.RainbowFrame, UDim2.new(0, 10, 0, 76), UDim2.new(0, 83, 0, 25), "Enabled", textColor, 15, 3, function()
        if rainbow == false and colorPickerOpen == false then
            customRainbow = true
            rainbow = true
            rainbowReset = false
        end
    end)
   
    createImageLabel(1, "rbxasset://textures/ui/TopBar/dropshadow.png", "TopBarShadow", screenGui.Top.Important.SettingsTab.RainbowFrame.RainbowOn, UDim2.new(0, 0, 1, 0), false, UDim2.new(1, 0, 0, 3), 4)
   
    createTextButton(backColor, mainTrans, 0, Enum.Font.SourceSansBold, "RainbowOff", screenGui.Top.Important.SettingsTab.RainbowFrame, UDim2.new(0, 98, 0, 76), UDim2.new(0, 83, 0, 25), "Disabled", textColor, 15, 3, function()
        if rainbow == true and colorPickerOpen == false then
            rainbow = false
            rainbowReset = true
        end
    end)
   
    createImageLabel(1, "rbxasset://textures/ui/TopBar/dropshadow.png", "TopBarShadow", screenGui.Top.Important.SettingsTab.RainbowFrame.RainbowOff, UDim2.new(0, 0, 1, 0), false, UDim2.new(1, 0, 0, 3), 4)
   
    createTextLabel(backColor, mainTrans, 0, Enum.Font.SourceSans, "ColorPickerBackgroundChangeLabel", screenGui.Top.Important.SettingsTab, UDim2.new(0, 10,0, 162), UDim2.new(1, -20, 0, 31), "Change Color Picker Background", textColor, 15, false, Enum.TextXAlignment.Center, Enum.TextYAlignment.Center, 1)
   
    createImageLabel(1, "rbxasset://textures/ui/TopBar/dropshadow.png", "TopBarShadow", screenGui.Top.Important.SettingsTab.ColorPickerBackgroundChangeLabel, UDim2.new(0, 0, 1, 0), false, UDim2.new(1, 0, 0, 3), 4)
   
    createTextButton(backColor, mainTrans, 0, Enum.Font.SourceSansBold, "PickerBackgroundOn", screenGui.Top.Important.SettingsTab, UDim2.new(0, 10, 0, 198), UDim2.new(0, 93, 0, 25), "Enabled", textColor, 15, 1, function()
        if changeColorPickerBack == false then
            changeColorPickerBack = true
        end
    end)
   
    createTextButton(backColor, mainTrans, 0, Enum.Font.SourceSansBold, "PickerBackgroundOff", screenGui.Top.Important.SettingsTab, UDim2.new(0, 108, 0, 198), UDim2.new(0, 93, 0, 25), "Disabled", textColor, 15, 1, function()
        if changeColorPickerBack == true then
            changeColorPickerBack = false
        end
    end)
   
    createTextButton(backColor, mainTrans, 0, Enum.Font.SourceSansBold, "SaveSettings", screenGui.Top.Important.SettingsTab, UDim2.new(0, 10, 0, 228), UDim2.new(1, -20, 0, 31), "Save Settings", textColor, 15, 3, function()
        if savingSettings == false then
            savingSettings = true
            if writefile then
                local back = colorPickerBack
                if backDrop then
                    back = backDrop.BackgroundColor3
                end
                saveSetting(savedColor, back, changeColorPickerBack, mainTrans, rainbow, rainbowCount)
                screenGui.Top.Important.SettingsTab.SaveSettings.Text = "Settings Saved!"
                wait(1)
            else
                screenGui.Top.Important.SettingsTab.SaveSettings.Text = "Exploit not Supported :("
                wait(1)
            end
            screenGui.Top.Important.SettingsTab.SaveSettings.Text = "Save Settings"
            savingSettings = false
        end
    end)
   
    createImageLabel(1, "rbxasset://textures/ui/TopBar/dropshadow.png", "TopBarShadow", screenGui.Top.Important.SettingsTab.SaveSettings, UDim2.new(0, 0, 1, 0), false, UDim2.new(1, 0, 0, 3), 4)
   
    --Credits
    createTextLabel(backColor, 1, 1, Enum.Font.Highway, "CreditsTxt", screenGui.Top.Important.CreditsTab, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), [[Humanoid
    Humanoid#1337
   
    Zwolf
    Zwolf#3762
   
    Alex
    Alex the Great#9740
   
    Tom
    tomisapussycat#0409
   
    Moon
    Moon#6245]], textColor, 20, true, Enum.TextXAlignment.Center, Enum.TextYAlignment.Center, 1)
   
    --Script Search
    createTextLabel(backColor, 1, 0, Enum.Font.SourceSansBold, "Sad", screenGui.Top.Important.ScriptSearchTab, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), "Soon to Come", textColor, 15, true, Enum.TextXAlignment.Center, Enum.TextYAlignment.Center, 1)
   
    --Audios Tab
    local volume = 1
    local audioPage = 1
   
    local function stopSounds()
        for _,obj in pairs(lighting:GetChildren()) do
            if obj:IsA("Sound") then
                obj:Destroy()
            end
        end
        for _,obj in pairs(mWorkspace:GetChildren()) do
            if obj:IsA("Sound") then
                obj:Destroy()
            end
        end
    end
   
    local function playSong(id)
        stopSounds()
        local sound = Instance.new("Sound")
        sound.Parent = lighting
        sound.SoundId = "rbxassetid://"..tostring(id)
        sound.Volume = volume
        sound.Name = "RoseHubSound"
        sound.Looped = true
        sound.Playing = true
    end
   
    local audioHolder = createScrollingFrame(backColor, 0.8, 0, "", UDim2.new(0, 0, 0, 0), "", "Holder", screenGui.Top.Important.AudiosTab, UDim2.new(0, 10, 0, 96), 0, 0, false, UDim2.new(1, -20, 0, 145), "", true)
   
    local audioInputBox = createTextBox(backColor, mainTrans, 0, Enum.Font.SourceSans, "audioinput", screenGui.Top.Important.AudiosTab, "Search Audios", UDim2.new(0, 10, 0, 10), UDim2.new(0, 140, 0, 25), "", textColor, 14, false, Enum.TextXAlignment.Center, Enum.TextYAlignment.Center)
    audioInputBox.PlaceholderColor3 = textColor
   
    createImageLabel(1, "rbxasset://textures/ui/TopBar/dropshadow.png", "TopBarShadow", screenGui.Top.Important.AudiosTab.audioinput, UDim2.new(0, 0, 1, 0), false, UDim2.new(1, 0, 0, 3), 4)
   
    createTextButton(backColor, mainTrans, 0, Enum.Font.SourceSansBold, "Stop", screenGui.Top.Important.AudiosTab, UDim2.new(0, 10, 0, 38), UDim2.new(0, 62, 0, 25), "Stop", textColor, 15, 1, function()
        stopSounds()
    end)
   
    createImageLabel(1, "rbxasset://textures/ui/TopBar/dropshadow.png", "TopBarShadow", screenGui.Top.Important.AudiosTab.Stop, UDim2.new(0, 0, 1, 0), false, UDim2.new(1, 0, 0, 3), 4)
   
    local volumeBox = createTextBox(backColor, mainTrans, 0, Enum.Font.SourceSansBold, "VolumeBox", screenGui.Top.Important.AudiosTab, "Volume", UDim2.new(0, 75, 0, 38), UDim2.new(0, 61, 0, 25), "Volume", textColor, 14, false, Enum.TextXAlignment.Center, Enum.TextYAlignment.Center)
   
    createImageLabel(1, "rbxasset://textures/ui/TopBar/dropshadow.png", "TopBarShadow", screenGui.Top.Important.AudiosTab.VolumeBox, UDim2.new(0, 0, 1, 0), false, UDim2.new(1, 0, 0, 3), 4)
   
    createTextButton(backColor, mainTrans, 0, Enum.Font.SourceSansBold, "Set", screenGui.Top.Important.AudiosTab, UDim2.new(0, 139, 0, 38), UDim2.new(0, 62, 0, 25), "Set", textColor, 15, 1, function()
        if tonumber(volumeBox.Text) then
            volume =  tonumber(volumeBox.Text)
            pcall(function()
                lighting.RoseHubSound.Volume = volume
            end)
        end
    end)
   
    createImageLabel(1, "rbxasset://textures/ui/TopBar/dropshadow.png", "TopBarShadow", screenGui.Top.Important.AudiosTab.Set, UDim2.new(0, 0, 1, 0), false, UDim2.new(1, 0, 0, 3), 4)
   
    local currentSong = createTextLabel(backColor, mainTrans, 0, Enum.Font.SourceSans, "CurrentSong", screenGui.Top.Important.AudiosTab, UDim2.new(0, 10, 0, 66), UDim2.new(1, -20, 0, 25), "Current Song", textColor, 14, false, Enum.TextXAlignment.Center, Enum.TextYAlignment.Center, 1)
   
    createImageLabel(1, "rbxasset://textures/ui/TopBar/dropshadow.png", "TopBarShadow", screenGui.Top.Important.AudiosTab.CurrentSong, UDim2.new(0, 0, 1, 0), false, UDim2.new(1, 0, 0, 3), 4)
   
    createTextButton(backColor, mainTrans, 0, Enum.Font.SourceSansBold, "PreviousPage", screenGui.Top.Important.AudiosTab, UDim2.new(0, 10, 0, 246), UDim2.new(0, 94, 0, 25), "Previous Page", textColor, 15, 1, function()
        if audioPage > 1 then
            audioPage = audioPage - 1
            createAudios(audioPage)
        end
    end)
   
    createImageLabel(1, "rbxasset://textures/ui/TopBar/dropshadow.png", "TopBarShadow", screenGui.Top.Important.AudiosTab.PreviousPage, UDim2.new(0, 0, 1, 0), false, UDim2.new(1, 0, 0, 3), 4)
   
    createTextButton(backColor, mainTrans, 0, Enum.Font.SourceSansBold, "NextPage", screenGui.Top.Important.AudiosTab, UDim2.new(0, 107, 0, 246), UDim2.new(0, 94, 0, 25), "Next Page", textColor, 15, 1, function()
        audioPage = audioPage + 1
        createAudios(audioPage)
    end)
   
    createImageLabel(1, "rbxasset://textures/ui/TopBar/dropshadow.png", "TopBarShadow", screenGui.Top.Important.AudiosTab.NextPage, UDim2.new(0, 0, 1, 0), false, UDim2.new(1, 0, 0, 3), 4)
   
    function createAudios(audioPage)
        local audioKeyword = audioInputBox.Text
        local json = "https://search.roblox.com/catalog/json?Category=Audio&Keyword="..audioKeyword.."&ResultsPerPage=25&PageNumber="..tostring(audioPage)
        local gotJson = game:HttpGet(json, true)
        local rawResult = httpService:JSONDecode(gotJson)
        local pos = 5
        for _,button in pairs(audioHolder:GetChildren()) do
            button:Destroy()
        end
        for _,tab in pairs(rawResult) do
            local scale = false
            local button = createTextButton(backColor, mainTrans, 0, Enum.Font.SourceSans, tab.Name, screenGui.Top.Important.AudiosTab.Holder, UDim2.new(0, 5, 0, pos), UDim2.new(0, 181, 0, 20), tab.Name, textColor, 14, 1, function()
                playSong(tab.AssetId)
                currentSong.Text = tab.Name
                currentSong.TextScaled = scale
            end)
            if button.TextBounds.X > button.Size.X.Offset then
                button.TextScaled = true
                scale = true
            end
            pos = pos + 23
        end
        audioHolder.CanvasSize = UDim2.new(0, 0, 0, pos + 2)
    end
   
    createTextButton(backColor, mainTrans, 0, Enum.Font.SourceSansBold, "search", screenGui.Top.Important.AudiosTab, UDim2.new(0, 153, 0, 10), UDim2.new(0, 48, 0, 25), "Search", textColor, 15, 3, function()
        createAudios(1)
    end)
   
    --Remove pcall
    pcall(function()
        createAudios(1)
    end)
   
    createImageLabel(1, "rbxasset://textures/ui/TopBar/dropshadow.png", "TopBarShadow", screenGui.Top.Important.AudiosTab.search, UDim2.new(0, 0, 1, 0), false, UDim2.new(1, 0, 0, 3), 4)
   
    --Decals Tab
    local decalsPage = 1
   
    local decalsHolder = createScrollingFrame(backColor, 0.8, 0, "", UDim2.new(0, 0, 0, 0), "", "Holder", screenGui.Top.Important.DecalsTab, UDim2.new(0, 10, 0, 68), 0, 0, false, UDim2.new(1, -20, 0, 173), "", true)
   
    createTextButton(backColor, mainTrans, 0, Enum.Font.SourceSansBold, "search", screenGui.Top.Important.DecalsTab, UDim2.new(0, 153, 0, 10), UDim2.new(0, 48, 0, 25), "Search", textColor, 15, 3, function()
        createDecals(decalsPage)
    end)
   
    createImageLabel(1, "rbxasset://textures/ui/TopBar/dropshadow.png", "TopBarShadow", screenGui.Top.Important.DecalsTab.search, UDim2.new(0, 0, 1, 0), false, UDim2.new(1, 0, 0, 3), 4)
   
    local decalInput = createTextBox(backColor, mainTrans, 0, Enum.Font.SourceSans, "decalinput", screenGui.Top.Important.DecalsTab, "Search Decals", UDim2.new(0, 10, 0, 10), UDim2.new(0, 140, 0, 25), "", textColor, 14, false, Enum.TextXAlignment.Center, Enum.TextYAlignment.Center)
    decalInput.PlaceholderColor3 = textColor
   
    createImageLabel(1, "rbxasset://textures/ui/TopBar/dropshadow.png", "TopBarShadow", screenGui.Top.Important.DecalsTab.decalinput, UDim2.new(0, 0, 1, 0), false, UDim2.new(1, 0, 0, 3), 4)
   
    local selectedDecal = createTextLabel(backColor, mainTrans, 0, Enum.Font.SourceSans, "SelectedDecal", screenGui.Top.Important.DecalsTab, UDim2.new(0, 10, 0, 38), UDim2.new(1, -20, 0, 25), "Selected Decal", textColor, 14, false, Enum.TextXAlignment.Center, Enum.TextYAlignment.Center, 1)
   
    createImageLabel(1, "rbxasset://textures/ui/TopBar/dropshadow.png", "TopBarShadow", screenGui.Top.Important.DecalsTab.SelectedDecal, UDim2.new(0, 0, 1, 0), false, UDim2.new(1, 0, 0, 3), 4)
   
    createTextButton(backColor, mainTrans, 0, Enum.Font.SourceSansBold, "PreviousPage", screenGui.Top.Important.DecalsTab, UDim2.new(0, 10, 0, 246), UDim2.new(0, 94, 0, 25), "Previous Page", textColor, 15, 1, function()
        if decalsPage > 1 then
            decalsPage = decalsPage - 1
            createDecals(decalsPage)
        end
    end)
   
    createImageLabel(1, "rbxasset://textures/ui/TopBar/dropshadow.png", "TopBarShadow", screenGui.Top.Important.DecalsTab.PreviousPage, UDim2.new(0, 0, 1, 0), false, UDim2.new(1, 0, 0, 3), 4)
   
    createTextButton(backColor, mainTrans, 0, Enum.Font.SourceSansBold, "NextPage", screenGui.Top.Important.DecalsTab, UDim2.new(0, 107, 0, 246), UDim2.new(0, 94, 0, 25), "Next Page", textColor, 15, 1, function()
        decalsPage = decalsPage + 1
        createDecals(decalsPage)
    end)
   
    createImageLabel(1, "rbxasset://textures/ui/TopBar/dropshadow.png", "TopBarShadow", screenGui.Top.Important.DecalsTab.NextPage, UDim2.new(0, 0, 1, 0), false, UDim2.new(1, 0, 0, 3), 4)
   
    function createDecals(decalsPage)
        local decalsKeyword = decalInput.Text
        local json = "https://search.roblox.com/catalog/json?Category=Decals&Keyword="..decalsKeyword.."&ResultsPerPage=50&PageNumber="..tostring(decalsPage)
        local gotJson = game:HttpGet(json, true)
        local rawResult = httpService:JSONDecode(gotJson)
        local xPos = 5
        local yPos = 5
        local ran = 0
        for _,button in pairs(decalsHolder:GetChildren()) do
            button:Destroy()
        end
        for _,tab in pairs(rawResult) do
            local singleImageButton = Instance.new("ImageButton")
            singleImageButton.BackgroundColor3 = backColor
            singleImageButton.BackgroundTransparency = 1
            singleImageButton.BorderSizePixel = 0
            singleImageButton.Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId="..tostring(tab.AssetId)
            singleImageButton.Parent = screenGui.Top.Important.DecalsTab.Holder
            singleImageButton.Position = UDim2.new(0, xPos, 0, yPos)
            singleImageButton.ScaleType = Enum.ScaleType.Fit
            singleImageButton.Size = UDim2.new(0, 89, 0, 89)
            singleImageButton.MouseButton1Down:Connect(function()
                local image = Instance.new("ImageLabel")
                image.Parent = coreGui
                image.Name = "DecalLoader"
                local returnVal = nil
                for i=1, 10 do
                    local test = pcall(function()
                        image.Image = "rbxassetid://"tostring(tab.AssetId)
                    end)
                    if test then
                        returnVal = i
                        break
                    end
                end
                if returnVal ~= nil then
                    selectedDecal.Text = tostring(tab.AssetId - returnVal)
                end
            end)
            ran = ran + 1
            xPos = xPos + 92
            if ran == 2 then
                ran = 0
                xPos = 5
                yPos = yPos + 92
            end
        end
        decalsHolder.CanvasSize = UDim2.new(0, 0, 0, yPos + 2)
    end
   
    pcall(function()
        createDecals(1)
    end)
   
    --Final Stuff
    createImageLabel(1, "rbxasset://textures/ui/TopBar/dropshadow.png", "TopBarShadow", screenGui.Top, UDim2.new(0, 0, 1, 0), false, UDim2.new(1, 0, 0, 3), 4)
   
    createFrame(false, backColor, 0, 0, false, "Frame", screenGui.Top, UDim2.new(0, 155, 0.194, 0), UDim2.new(0, 1, 0, 21))
   
    createFrame(false, backColor, 1, 0, true, "CurrentTab", screenGui.Top, UDim2.new(0, 165, 0, 0), UDim2.new(0, 109, 0, 31))
   
    createTextLabel(backColor, 1, 1, Enum.Font.SourceSansBold, "Label", screenGui.Top.CurrentTab, UDim2.new(0, 0, 0, 0), UDim2.new(0, 109, 0, 31), tabs[1], textColor, 18, true, Enum.TextXAlignment.Left, Enum.TextYAlignment.Center, 1)
   
    updateBack(savedColor)
   
    if enableRainbow == true then
        customRainbow = true
        rainbow = true
    end
   
    gui.Main.Size = UDim2.new(0, 0, 0, 31)
    gui.Open.Position = UDim2.new(0, -75, 0.75, 0)
   
    wait(3)
   
    intro.Intro:TweenSize(UDim2.new(0, 376, 0, 25), "Out", "Quad", 0.5)
    wait(0.5)
    intro.Intro:TweenSize(UDim2.new(0, 0, 0, 25), "Out", "Quad", 0.5)
   
    wait(0.5)
   
    intro:Destroy()
   
    gui.Enabled = true
   
    gui.Open:TweenPosition(UDim2.new(0, 0, 0.75, 0), "Out", "Quad", 0.5)
    wait(0.5)
   
    tweening = false
   
    print("Rose Hub process finished at " .. round(tick()-start) .. " milliseconds.")