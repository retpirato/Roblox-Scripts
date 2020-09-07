game:GetService("ReplicatedStorage")["AdminRE"]:ClearAllChildren()
local StrucidV11 = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Frame1 = Instance.new("Frame")
local BackPG1 = Instance.new("TextButton")
local NextPG1 = Instance.new("TextButton")
local PG1_1 = Instance.new("TextButton")
local PG1_2 = Instance.new("TextButton")
local PG1_3 = Instance.new("TextButton")
local PG1_4 = Instance.new("TextButton")
local PG1_5 = Instance.new("TextButton")
local PG1_6 = Instance.new("TextButton")
local PG1_7 = Instance.new("TextButton")
local PG1Credits = Instance.new("TextLabel")
local FrameBottom = Instance.new("Frame")
local Frame2 = Instance.new("Frame")
local BackPG2 = Instance.new("TextButton")
local NextPG2 = Instance.new("TextButton")
local PG2_1 = Instance.new("TextButton")
local PG2_2 = Instance.new("TextButton")
local PG2_3 = Instance.new("TextButton")
local PG2_4 = Instance.new("TextButton")
local PG2_5 = Instance.new("TextButton")
local PG2_6 = Instance.new("TextButton")
local PG2_7 = Instance.new("TextButton")
local PG2Credits = Instance.new("TextLabel")
local Frame3 = Instance.new("Frame")
local BackPG3 = Instance.new("TextButton")
local NextPG3 = Instance.new("TextButton")
local PG3_1 = Instance.new("TextButton")
local PG3_2 = Instance.new("TextButton")
local PG3_3 = Instance.new("TextButton")
local PG3_4 = Instance.new("TextButton")
local PG3_5 = Instance.new("TextButton")
local PG3_6 = Instance.new("TextButton")
local PG3_7 = Instance.new("TextButton")
local PG3Credits = Instance.new("TextLabel")
 
StrucidV11.Name = "StrucidV1.1"
StrucidV11.Parent = game.CoreGui
StrucidV11.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
MainFrame.Name = "MainFrame"
MainFrame.Parent = StrucidV11
MainFrame.BackgroundColor3 = Color3.new(0.666667, 0, 0.498039)
MainFrame.BackgroundTransparency = 0.5
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0, 0, 0.253071249, 0)
MainFrame.Size = UDim2.new(0, 196, 0, 45)
 
Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(0, 196, 0, 45)
Title.Font = Enum.Font.Gotham
Title.Text = "STRUCID V1.1"
Title.TextColor3 = Color3.new(0, 0, 0)
Title.TextScaled = true
Title.TextSize = 14
Title.TextWrapped = true
 
Frame1.Name = "Frame1"
Frame1.Parent = MainFrame
Frame1.BackgroundColor3 = Color3.new(0.956863, 0.470588, 1)
Frame1.BorderSizePixel = 0
Frame1.Position = UDim2.new(0, 0, 1, 0)
Frame1.Size = UDim2.new(0, 186, 0, 362)
 
BackPG1.Name = "BackPG1"
BackPG1.Parent = Frame1
BackPG1.BackgroundColor3 = Color3.new(1, 1, 1)
BackPG1.BackgroundTransparency = 1
BackPG1.BorderColor3 = Color3.new(1, 0, 1)
BackPG1.BorderSizePixel = 0
BackPG1.Position = UDim2.new(-0.00537609775, 0, 1, 0)
BackPG1.Size = UDim2.new(0, 98, 0, 45)
BackPG1.Font = Enum.Font.Gotham
BackPG1.Text = "< Back"
BackPG1.TextColor3 = Color3.new(0.333333, 0.333333, 0.333333)
BackPG1.TextSize = 31
 
NextPG1.Name = "NextPG1"
NextPG1.Parent = Frame1
NextPG1.BackgroundColor3 = Color3.new(1, 1, 1)
NextPG1.BackgroundTransparency = 1
NextPG1.BorderColor3 = Color3.new(1, 0, 1)
NextPG1.BorderSizePixel = 0
NextPG1.Position = UDim2.new(0.525541127, 0, 1, 0)
NextPG1.Size = UDim2.new(0, 98, 0, 45)
NextPG1.Font = Enum.Font.Gotham
NextPG1.Text = "Next >"
NextPG1.TextColor3 = Color3.new(0, 0, 0)
NextPG1.TextSize = 32
NextPG1.MouseButton1Down:connect(function()
Frame1.Visible = false
Frame2.Visible = true
end)
 
PG1_1.Name = "PG1_1"
PG1_1.Parent = Frame1
PG1_1.BackgroundColor3 = Color3.new(0.835294, 0.329412, 1)
PG1_1.Position = UDim2.new(0.03763441, 0, 0.0193370171, 0)
PG1_1.Size = UDim2.new(0, 171, 0, 38)
PG1_1.Font = Enum.Font.Gotham
PG1_1.Text = "Aimbot (Non-FFA)"
PG1_1.TextColor3 = Color3.new(0, 0, 0)
PG1_1.TextScaled = true
PG1_1.TextSize = 14
PG1_1.TextWrapped = true
PG1_1.MouseButton1Down:connect(function()
--made by Avexus#1234 discord from MrStuperd btw and DO NOT PRESS DELETE ;) GUI aimbot_toggled
 
local UIS = game:GetService('UserInputService')
local RS = game:GetService('RunService')
local Players = game:GetService('Players')
local StarterGui = game:GetService('StarterGui')
local Player = Players.LocalPlayer
local Studio = RS:IsStudio()
local PlayerGui = RS:IsStudio() and Player:WaitForChild('PlayerGui') or game.CoreGui
local Mouse = Player:GetMouse()
local old_icon = Mouse.Icon
local Camera = workspace.CurrentCamera
targetpart = 'Head' -- Don't change this.
-- It can be changed with the targetpart_change hotkey ingame.
local target
local target_old
local alert = false
local lockedon = false
local settingkey = false
local upvals = nil
local val = 1
local windows = {}
local function hb() RS.Heartbeat:wait() end
 
local version = 1.25
local Spawn = nil or game.PlaceId == 292439477 and workspace:WaitForChild('Lobby',2):WaitForChild('Spawn1',2)
local spawned = false
 
script.Name = 'GameSense!'
Mouse.TargetFilter = Camera
 
-- hotkey
toggle_aim = Enum.UserInputType.MouseButton2
toggle_aimbot = Enum.KeyCode.Delete
toggle_trigger = Enum.KeyCode.Delete
toggle_esp = Enum.KeyCode.Delete
toggle_gui = Enum.KeyCode.Delete
toggle_bottompos = Enum.KeyCode.Delete
toggle_performance = Enum.KeyCode.Delete
toggle_bones = Enum.KeyCode.Delete
toggle_chams = Enum.KeyCode.Delete
toggle_tracers = Enum.KeyCode.Delete
toggle_boxes = Enum.KeyCode.Delete
toggle_font = Enum.KeyCode.Delete
ffatoggle = Enum.KeyCode.Delete
targetpart_change = Enum.KeyCode.Delete
priority_toggle = Enum.KeyCode.Delete
sethotkey = Enum.KeyCode.Delete
-- aim fov
fov_increase = Enum.KeyCode.KeypadPlus
fov_decrease = Enum.KeyCode.KeypadMinus
-- aim sens (how smooth your crosshair will move)
sens_increase = Enum.KeyCode.RightBracket
sens_decrease = Enum.KeyCode.LeftBracket
 
-- parts
parts = {
    'Head';
    'Torso'
}
 
fonts = {
    Enum.Font.SourceSansBold,
    Enum.Font.Cartoon,
    Enum.Font.Arcade,
    Enum.Font.SciFi,
    Enum.Font.Fantasy,
    Enum.Font.Code,
    Enum.Font.Highway,
    Enum.Font.Bodoni
}
 
textSet = false
 
currentfont = 1
ffa = false
hidden = false
performancemode = false
-- aim
fov = 6
sens = .25
drop = .4
aim_toggled = false
bottompos = true
aim_priority = 2
-- [2] FOV or [1] Distance
aimingcolor = Color3.fromRGB(0,165,255)
aimbot_toggled = true
aim_line = true
locksoundid = 538769304
mouseiconid =  18671553
 
-- trigger
trigger_toggled = false
trigger_delay = 1/20
 
-- esp
esp_toggled = false
esp_bones = false
esp_chams = false
esp_tracers = false
-- item_esp (coming soon)
linesize = 1
showdists = true
textsize = 14
textoffset = 20
visiblecolor = Color3.fromRGB(38,255,99)
hiddencolor = Color3.fromRGB(255,37,40)
headboxsize = 4
headboxaimsize = 6
headboxshape = 'diamond'
-- rectangle or diamond
 
-- box esp
bounding_box = true
-- box_pointsize = 0 [UNUSED]
box_line_size = 1
-- box_line_size_visible = 2 [UNUSED]
 
local GUI = Instance.new('ScreenGui',PlayerGui)
GUI.Name = 'GameSense '..version
GUI.ResetOnSpawn = false
 
ESP = Instance.new('Folder',GUI)
ESP.Name = 'ESP'
local Bottom = Instance.new('Frame',ESP)
Bottom.Name = 'Bottom'
Bottom.BackgroundTransparency = 1
Bottom.Size = UDim2.new(0,1,0,1)
Bottom.Position = UDim2.new(.5,0,1,1)
 
local Status = Instance.new('TextLabel',GUI)
Status.Name = 'Status'
Status.BackgroundTransparency = 1
Status.Size = UDim2.new(0,500,0,50)
Status.Position = UDim2.new(.5,-250,.85,0)
Status.TextSize = 0
Status.Font = Enum.Font.SourceSansBold
Status.TextColor3 = Color3.new(1,1,1)
Status.TextStrokeColor3 = Color3.new(0,0,0)
Status.TextStrokeTransparency = .6
Status.Text = 'On Standby'
Status.ZIndex = 50
 
local Credits = Status:Clone()
Credits.Name = 'Credits'
Credits.Parent = GUI
Credits.Position = UDim2.new(-1000000,-1000000,-1000000,-1000000)
Credits.TextSize = 0
Credits.Text = 'GameSense '..version..' by Avexus!'
 
local FovGui = Instance.new('ImageLabel',GUI)
FovGui.Name = 'FovGui'
FovGui.Image = 'rbxassetid://324848180'
FovGui.Size = UDim2.new(0,(Camera.ViewportSize.X/(90/fov))*2,0,(Camera.ViewportSize.X/(90/fov))*2)
FovGui.Position = UDim2.new(0.5,-FovGui.AbsoluteSize.X/2,0.5,-FovGui.AbsoluteSize.Y/2)
FovGui.BackgroundTransparency = 1
FovGui.ImageTransparency = 0.7
FovGui.ImageColor3 = Color3.new(1,0,0)
 
local Indicator = Instance.new('TextLabel',GUI)
Indicator.Name = 'Indicator'
Indicator.Font = Enum.Font.SourceSans
Indicator.TextSize = 0
Indicator.TextXAlignment = Enum.TextXAlignment.Center
Indicator.TextYAlignment = Enum.TextYAlignment.Center
Indicator.TextStrokeTransparency = 1
Indicator.Text = aim_priority>1 and 'FOV: '..fov or 'Distance'
 
local SensAdjust = Instance.new('TextBox',GUI)
SensAdjust.Name = 'SensAdjust'
SensAdjust.Font = Enum.Font.SourceSans
SensAdjust.BackgroundTransparency = .75
SensAdjust.BackgroundColor3 = Color3.new(0,0,0)
SensAdjust.BorderColor3 = Color3.new(1,1,1)
SensAdjust.Size = UDim2.new(0,50,0,20)
SensAdjust.TextStrokeTransparency = 1
SensAdjust.TextColor3 = Color3.new(1,1,1)
SensAdjust.TextSize = 0
SensAdjust.PlaceholderText = 'Sens'
SensAdjust.Text = tonumber(sens)
SensAdjust.Position = Credits.Position + UDim2.new(0,250,0,75)
 
local SensLabel = Instance.new('TextLabel',SensAdjust)
SensLabel.Name = 'SensLabel'
SensLabel.Font = Enum.Font.SourceSans
SensLabel.Size = UDim2.new(1,0,1,0)
SensLabel.BackgroundTransparency = 1
SensLabel.TextSize = 0
SensLabel.TextColor3 = Color3.new(1,1,1)
SensLabel.TextStrokeColor3 = Color3.new(0,0,0)
SensLabel.TextStrokeTransparency = 1
SensLabel.Text = 'Sens:'
SensLabel.Position = UDim2.new(-1,0,0,0)
SensLabel.TextXAlignment = Enum.TextXAlignment.Left
 
local FovAdjust = SensAdjust:Clone()
FovAdjust.Parent = GUI
FovAdjust.PlaceholderText = 'FOV'
FovAdjust.Name = 'FovAdjust'
FovAdjust.Text = tonumber(fov)
FovAdjust.Position = SensAdjust.Position + UDim2.new(0,0,0,20)
FovAdjust.SensLabel.Name = 'FovLabel'
FovAdjust.FovLabel.Text = 'Fov:'
 
local DropAdjust = SensAdjust:Clone()
DropAdjust.Parent = GUI
DropAdjust.PlaceholderText = 'Drop'
DropAdjust.Name = 'DropAdjust'
DropAdjust.Text = tonumber(drop)
DropAdjust.Position = SensAdjust.Position + UDim2.new(0,0,0,40)
DropAdjust.SensLabel.Name = 'DropLabel'
DropAdjust.DropLabel.Text = 'Drop:'
 
local KeysList = Instance.new('TextLabel',GUI)
KeysList.Name = 'KeysList'
KeysList.Font = Enum.Font.SourceSans
KeysList.TextStrokeTransparency = .6
KeysList.TextSize = 0
KeysList.TextColor3 = Color3.new(1,1,1)
KeysList.Size = UDim2.new(0,0,1,0)
KeysList.Position = UDim2.new(0,5,0,-280)
KeysList.BackgroundTransparency = 1
KeysList.Active = false
 
local n = 0
 
spawn(function()
    while Status do
        Indicator.TextColor3 = Color3.fromHSV(n,.5,1)
        FovGui.ImageColor3 = Indicator.TextColor3
        if not textSet then
        if aim_toggled and target then
            Status.TextColor3 = aimingcolor
            Status.Text = ('Aiming at '..target.Name)
        else
            Status.TextColor3 = Color3.fromHSV(n,.5,1)
            Status.Text = 'On Standby'
        end
        end
        n = (n+.005)%1
        hb()
    end
end)
 
SensAdjust.InputEnded:Connect(function() if SensAdjust.Text~='' then sens = tonumber(SensAdjust.Text)>0 and tonumber(SensAdjust.Text) or sens end end)
FovAdjust.InputEnded:Connect(function() if FovAdjust.Text~='' then fov = tonumber(FovAdjust.Text)>0 and tonumber(FovAdjust.Text) or fov
FovGui:TweenSize(UDim2.new(0,(Camera.ViewportSize.X/(90/fov))*2,0,(Camera.ViewportSize.X/(90/fov))*2),Enum.EasingDirection.InOut,Enum.EasingStyle.Quad,.1,true) end end)
DropAdjust.InputEnded:Connect(function() if DropAdjust.Text~='' then drop = tonumber(DropAdjust.Text)>=0 and tonumber(DropAdjust.Text) or drop end end)
 
local function distfromspawn(x)
    if Spawn then
        return x:DistanceFromCharacter(Spawn.Position)
    else
        return 201
    end
end
 
local function setText(text)
    spawn(function()
    textSet = true
    Status.Text = text
    Status.TextColor3 = Color3.new(1,1,1)
    wait(#text/4)
    textSet = false
    end)
end
 
local function playsound(id)
    local sound = Instance.new('Sound',Camera)
    sound.Volume = 3
    sound:Play()
    game:GetService('Debris'):AddItem(sound,5)
end
 
 
local function DrawLine(Folder,P1,P2,Thickness,Color,LineTransparency,BorderThickness,BorderColor)
    -- Declare variables
    local Point1,Point2 = P1.Position,P2.Position
    if Point1 and Point2 then
    local X,Y = Camera.ViewportSize.X, Camera.ViewportSize.Y
    local X1,X2 = (X * Point1.X.Scale + Point1.X.Offset + P1.Size.X.Offset/2), (X * Point2.X.Scale + Point2.X.Offset + P2.Size.X.Offset/2)
    local Y1,Y2 = (Y * Point1.Y.Scale + Point1.Y.Offset + P1.Size.Y.Offset/2), (Y * Point2.Y.Scale + Point2.Y.Offset + P2.Size.Y.Offset/2)
    local MidX,MidY = (X1+X2)/2, (Y1+Y2)/2
    -- Set defaults to prevent errors
    Thickness = Thickness or 1
    Color = Color or Color3.new(1,1,1)
    LineTransparency =  LineTransparency or 0
    BorderThickness = BorderThickness or 0
    BorderColor = BorderColor or Color3.new(0,0,0)
    -- Draw the line
    local Line = Folder:FindFirstChild(P1.Name..'-'..P2.Name) or Instance.new('Frame',Folder)
    Line.Visible = false
    Line.BackgroundTransparency = LineTransparency
    Line.BorderSizePixel = BorderThickness
    Line.BorderColor3 = BorderColor
    Line.Size = UDim2.new(0,(Vector2.new(X1,Y1) - Vector2.new(X2,Y2)).magnitude-1,0,Thickness)
    Line.Position = UDim2.new(0,MidX-Line.AbsoluteSize.X/2,0,MidY-Line.AbsoluteSize.Y)
    Line.BackgroundColor3 = Color
    Line.Rotation = math.deg(math.atan2((Y2-Y1),(X2-X1)))
    Line.Name = P1.Name..'-'..P2.Name
    Line.Visible = true
    return Line
    else
        return nil
    end
end
 
local function GetNearest(Mode)
    local lowest,nearest,gui = math.huge,nil,nil
    if Mode==1 then
    for _,plr in next,Players:GetPlayers() do
        if plr.Name~=Player.Name and plr.Character~=nil and plr.Character:FindFirstChild(targetpart) then
            local dist = Player:DistanceFromCharacter(plr.Character[targetpart].Position)
            local ray = Ray.new(Player.Character.Head.Position,(plr.Character[targetpart].Position-Player.Character.Head.Position).unit*5000)
            local part,point = workspace:FindPartOnRayWithIgnoreList(ray,{Camera,Player.Character,unpack(windows)})
            local Z = Camera:WorldToScreenPoint(plr.Character[targetpart].Position).Z
            if part and part:IsDescendantOf(plr.Character) and Z>0 and dist < lowest and (ffa or plr.TeamColor~=Player.TeamColor) then lowest = dist nearest = plr.Character end
        end
    end
    elseif Mode==2 then
        for _,plr in next,Players:GetPlayers() do
            if plr.Name~=Player.Name and plr.Character~=nil and plr.Character:FindFirstChild(targetpart) then
                local pos = Camera:WorldToScreenPoint(plr.Character[targetpart].Position)
                local ray = Ray.new(Player.Character[targetpart].Position,(plr.Character[targetpart].Position-Player.Character[targetpart].Position).unit*2048)
                local part,point = workspace:FindPartOnRayWithIgnoreList(ray,{Camera,Player.Character,unpack(windows)})
                local dist = (Vector2.new(Mouse.X,Mouse.Y)-Vector2.new(pos.X,pos.Y)).magnitude
                if part and part:IsDescendantOf(plr.Character) and pos.Z>0 and dist <= Camera.ViewportSize.X/(90/fov) and dist < lowest and (ffa or plr.TeamColor~=Player.TeamColor) then lowest = dist nearest = plr.Character end
            end
        end
    end
    return nearest
end
   
Mouse.Move:Connect(function()
    cursor = ESP:FindFirstChild('Cursor') or Instance.new('Frame',ESP)
    cursor.Name = 'Cursor'
    cursor.BackgroundTransparency = 1
    cursor.Size = UDim2.new(0,1,0,1)
    cursor.Position = UDim2.new(0,Mouse.X,0,Mouse.Y)
end)
 
UIS.InputBegan:Connect(function(Input)
    if Input.KeyCode == toggle_aim or Input.UserInputType == toggle_aim then
        aim_toggled = true
        warn('GS: aim toggled',aim_toggled and 'on' or 'off')
        alert = true
        while aim_toggled and aimbot_toggled do
            target = GetNearest(aim_priority)
            if target then
                local dist = Player:DistanceFromCharacter(target[targetpart].Position)
                local headpos = Camera:WorldToScreenPoint(target[targetpart].Position+Vector3.new(0,dist/(100/drop),0))
                local moveto = Vector2.new((headpos.X-Mouse.X)*sens,(headpos.Y-Mouse.Y)*sens)
                aimpos = GUI:FindFirstChild('AimPos') or Instance.new('Frame',GUI)
                if not GUI:FindFirstChild('AimPos') then
                aimpos.Name = 'AimPos'
                aimpos.BorderSizePixel = 1
                aimpos.BorderColor3 = Color3.new(0,0,0)
                aimpos.BackgroundTransparency = 0
                aimpos.BackgroundColor3 = Color3.new(1,1,1)
                aimpos.Rotation = 45
                aimpos.ZIndex = 4
                aimpos.Size = UDim2.new(0,3,0,3)
                end
                aimpos.Position = UDim2.new(0,headpos.X-aimpos.AbsoluteSize.X/2,0,headpos.Y-aimpos.AbsoluteSize.Y/2)
                aimpos.Visible = true
                mousemoverel(moveto.X,moveto.Y)
                if alert or target~=target_old then
                    playsound(locksoundid)
                    print('GS: locked onto',target.Name)
                    lockedon = true
                    alert = false
                end
            end
            RS.Heartbeat:wait()
            target_old = target
            if aimpos then
                aimpos.Visible = false
            end
        end
        lockedon = false
    elseif Input.KeyCode == toggle_trigger then
        trigger_toggled = not trigger_toggled
        setText('Toggled TriggerBot '..(trigger_toggled and 'On' or 'Off'))
        Notification({Title='TriggerBot';Text='TriggerBot was toggled '..(trigger_toggled and 'On' or 'Off');Duration=2;})
        warn('trigger toggled',trigger_toggled and 'on' or 'off')
        local Box = Instance.new('SelectionBox',PlayerGui)
        Box.Color3 = Color3.new(1,0,0)
        Box.LineThickness = .05
        Box.Adornee = nil
        if trigger_delay>0 then wait(trigger_delay) end
        while trigger_toggled do
        local Target = Mouse.Target
        local plr = Players:FindFirstChild(Target.Parent.Name)
        if Target and Target.Parent and plr~=nil and plr~=Player and ffa or plr~=nil and plr.TeamColor~=Player.TeamColor then
            Box.Adornee = Mouse.Target
            mouse1press()
            wait()
            mouse1release()
        end
        RS.Heartbeat:wait()
        end
        Box:Destroy()
    elseif Input.KeyCode == toggle_esp then
        esp_toggled = not esp_toggled
        Notification({Title='ESP';Text='ESP was toggled '..(esp_toggled and 'On' or 'Off');Duration=2;})
        setText('Toggled ESP '..(esp_toggled and 'On' or 'Off'))
    elseif Input.KeyCode == toggle_aimbot then
        aimbot_toggled = not aimbot_toggled
        Notification({Title='AimBot';Text='AimBot was toggled '..(aimbot_toggled and 'On' or 'Off');Duration=2;})
        setText('Toggled AimBot '..(aimbot_toggled and 'On' or 'Off'))
    elseif Input.KeyCode == fov_increase then
        fov = fov + .5
        FovAdjust.Text = tonumber(fov)
        if FovGui.Visible then
            FovGui:TweenSize(UDim2.new(0,(Camera.ViewportSize.X/(90/fov))*2,0,(Camera.ViewportSize.X/(90/fov))*2),Enum.EasingDirection.InOut,Enum.EasingStyle.Quad,.1,true)
        end
        setText('Aim FOV: '..fov)
    elseif Input.KeyCode == fov_decrease and fov>0 then
        fov = fov - .5
        FovAdjust.Text = tonumber(fov)
        if FovGui.Visible then
            FovGui:TweenSize(UDim2.new(0,(Camera.ViewportSize.X/(90/fov))*2,0,(Camera.ViewportSize.X/(90/fov))*2),Enum.EasingDirection.InOut,Enum.EasingStyle.Quad,.1,true)
        end
        setText('Aim FOV: '..fov)
    elseif Input.KeyCode == sens_increase then
        sens = sens + .05
        SensAdjust.Text = tonumber(sens)
        setText('Sens: '..sens)
    elseif Input.KeyCode == sens_decrease then
        sens = sens - .05
        SensAdjust.Text = tonumber(sens)
        setText('Sens: '..sens)
    elseif Input.KeyCode == targetpart_change then
        val = val+1
        targetpart = val<=#parts and parts[val] or parts[1]
        if parts[1]==targetpart then val = 1 end
        Notification({Title='Target Part';Text='Target part set to '..targetpart;Duration=2;})
        setText('Target Part: '..targetpart)
    elseif Input.KeyCode == ffatoggle then
        ffa = not ffa
        Notification({Title='FFA Mode';Text='FFA Mode is '..(ffa and 'Enabled' or 'Disabled');Duration=2;})
        setText('FFA Mode: '..(ffa and 'Enabled' or 'Disabled'))
    elseif Input.KeyCode == priority_toggle then
        aim_priority = aim_priority+1>2 and 0 or 1
        aim_priority = aim_priority+1
        FovGui.Visible = aim_priority>1
        setText('Aim Priority: '..(aim_priority==1 and 'Distance' or 'FOV'))
    elseif Input.KeyCode == toggle_bones then
        esp_bones = not esp_bones
        if not esp_bones then
        for _,v in next,ESP:GetDescendants() do
            if v:IsA('Frame') and v.Name:match('-') then
                v:Destroy()
            end
        end
        end
        setText('Toggled ESP Bones '..(esp_bones and 'Enabled' or 'Disabled'))
    elseif Input.KeyCode == toggle_gui then
        hidden = not hidden
        for _,gui in next,GUI:GetDescendants() do
            if gui:IsA('GuiObject') and not hidden and not gui.Visible then
                gui.Visible = true
                Mouse.Icon = 'rbxassetid://'..mouseiconid
            elseif gui:IsA('GuiObject') and gui.Visible then
                gui.Visible = false
                esp_toggled = false
                Mouse.Icon = old_icon
            end
            end
        elseif Input.KeyCode == toggle_bottompos then
            bottompos = not bottompos
            if bottompos then
                Bottom.Position = UDim2.new(.5,0,1,1)
            end
        elseif Input.KeyCode == toggle_performance then
            performancemode = not performancemode
            setText('Performance Mode '..(performancemode and 'Enabled' or 'Disabled'))
        elseif Input.KeyCode == toggle_chams then
            esp_chams = not esp_chams
            setText('Chams '..(esp_chams and 'Enabled' or 'Disabled'))
        elseif Input.KeyCode == toggle_tracers then
            esp_tracers = not esp_tracers
            setText('Tracers '..(esp_chams and 'Enabled' or 'Disabled'))
        elseif Input.KeyCode == toggle_boxes then
            bounding_box = not bounding_box
            setText('Bounding Boxes '..(bounding_box and 'Enabled' or 'Disabled'))
        elseif Input.KeyCode == toggle_font then
                currentfont = (currentfont+1)>#fonts and 1 or currentfont+1
                for _,v in next,GUI:GetDescendants() do
                    if v.Name~='KeysList' then
                    if v:IsA('TextLabel') or v:IsA('TextButton') then
                        v.Font = fonts[currentfont]
                    end
                    end
                end
        end
end)
 
UIS.InputEnded:Connect(function(Input)
    if Input.KeyCode == toggle_aim or Input.UserInputType == toggle_aim then
        aim_toggled = false
    end
end)
 
local function checkifspawned(x)
    spawned = false
    while not spawned and game.PlaceId==292439477 do
        spawned = distfromspawn(x)>200 and true or false
        wait(1/5)
    end
    spawned = true
end
 
checkifspawned(Player)
Player.CharacterAdded:Connect(function(c)
    checkifspawned(Player)
   
    for _,v in next,ESP:GetDescendants() do
        if v:IsA('Frame') and v.Name:match('-') then
            v:Destroy()
        end
    end
end)
 
Notification({Title='Aimbot '..version;Text='Loaded successfully.';Icon='rbxassetid://2572157833';Duration=10;})
wait(.5)
 
RS.RenderStepped:Connect(function()
    if cursor then
        FovGui.Position = cursor.Position-UDim2.new(0,FovGui.AbsoluteSize.X/2,0,FovGui.AbsoluteSize.Y/2)
        Indicator.Position = cursor.Position+UDim2.new(0,0,0,40)
    end
end)
 
Mouse.Button1Down:Connect(function()
    spawn(function()
        if FovGui.Visible then
            FovGui:TweenSize(UDim2.new(0,Camera.ViewportSize.X/(90/fov)*2.35,0,Camera.ViewportSize.X/(90/fov)*2.35),Enum.EasingDirection.InOut,Enum.EasingStyle.Quad,.1,true)
            wait(.1)
            FovGui:TweenSize(UDim2.new(0,Camera.ViewportSize.X/(90/fov)*2,0,Camera.ViewportSize.X/(90/fov)*2),Enum.EasingDirection.InOut,Enum.EasingStyle.Quad,.1,true)
        end
    end)
end)
 
while true do
    Indicator.Text = (aim_priority>1 and 'FOV: '..fov or 'Distance') ..'\nSens: '..sens..(aim_toggled and '\nAiming' or '')
    if not bottompos then Bottom.Position = cursor.Position end
    if esp_toggled then
    for _,v in next,ESP:children() do
        if v~=Bottom and not Players:FindFirstChild(v.Name) then
            v:Destroy()
        end
    end
    for _,v in next,Players:GetPlayers() do
        local Char = v.Character
        if Char and spawned and v~=Player and Char:FindFirstChild(targetpart) and distfromspawn(v)>100 then
            if ffa or v.TeamColor~=Player.TeamColor then
            local X = Camera:GetPartsObscuringTarget({Camera.CFrame.p,Char[targetpart].CFrame.p},{v.Character,Char,Camera,unpack(windows)})
            local Dist = Player:DistanceFromCharacter(Char:FindFirstChild(targetpart).Position)
            local Color = hiddencolor
            local Folder = ESP:FindFirstChild(v.Name) or Instance.new('Folder',ESP)
            Folder.Name = v.Name
            -- ESP
            local Head = Folder:FindFirstChild('Head') or Instance.new('Frame',Folder)
            if not Folder:FindFirstChild('Head') then
            Head.Name = 'Head'
            Head.BorderSizePixel = 1
            Head.BorderColor3 = Color3.new(0,0,0)
            Head.BackgroundTransparency = 0
            end
            Head.BackgroundColor3 = #X>0 and hiddencolor or #X==0 and visiblecolor
            Head.Rotation = headboxshape=='diamond' and 45 or 0
            Head.ZIndex = 3
            local HP = Folder:FindFirstChild('HP') or Instance.new('TextLabel',Folder)
            if not Folder:FindFirstChild('HP') then
            HP.Name = 'HP'
            HP.TextTransparency = Head.BackgroundTransparency-.4
            HP.Font = fonts[currentfont]
            HP.TextStrokeTransparency = .6
            HP.BackgroundTransparency = 1
            HP.TextSize = 14
            end
            HP.Text = showdists and Char.Name..'\n'..math.floor(Dist+.5) or Char.Name
            if aim_toggled and target==Char then
                Head.Size = UDim2.new(0,headboxaimsize,0,headboxaimsize)
                Head.BackgroundColor3 = aimingcolor
                HP.Text = showdists and '['..Char.Name..']'..'\n'..math.floor(Dist+.5) or '['..Char.Name..']'
                HP.TextSize = 16
            else
                Head.Size = UDim2.new(0,headboxsize,0,headboxsize)
            end
            HP.TextColor3 = Head.BackgroundColor3
            local toScreen = Camera:WorldToScreenPoint(Char[targetpart].CFrame.p)
            if #X==0 then Color = visiblecolor end
            Head.Position = UDim2.new(0,toScreen.X-Head.Size.X.Offset/2,0,toScreen.Y-Head.Size.Y.Offset/2)
            HP.Position = Head.Position-UDim2.new(0,0,0,textoffset)
            if esp_tracers then
            local Line = DrawLine(Folder,ESP.Bottom,Head,linesize,Head.BackgroundColor3,.75,1,Color3.new(0,0,0))
                Line.Visible = Head.Visible
            else
                local imtired = Folder:FindFirstChild(ESP.Bottom.Name..'-'..Head.Name)
                if imtired then
                    imtired:Destroy()
                end
            end
            if toScreen.Z<=0 then Head.Visible = false else Head.Visible = true end
            HP.Visible = Head.Visible
            if Char:FindFirstChild('Humanoid') and Char.Humanoid.RigType==Enum.HumanoidRigType.R6 then
            local Neck = Folder:FindFirstChild('Neck') or Instance.new('Frame',Folder)
            Neck.Name = 'Neck'
            Neck.ZIndex = 2
            if Char['Torso']~=nil then
            local Pos = (Char.Torso.CFrame*CFrame.new(0,.8,0)).p
            local X,Y,Z = Camera:WorldToScreenPoint(Pos).X,Camera:WorldToScreenPoint(Pos).Y,Camera:WorldToScreenPoint(Pos).Z
            Neck.Position = UDim2.new(0,X,0,Y)
            Neck.BorderSizePixel = 0
            if Z<=0 then Neck.Visible = false else Neck.Visible = true end
            else
                Neck.Visible = false
            end
            --
            local Pelvis = Folder:FindFirstChild('Pelvis') or Instance.new('Frame',Folder)
            Pelvis.Name = 'Pelvis'
            Pelvis.ZIndex = 2
            Pelvis.BorderSizePixel = 0
            if Char['Torso']~=nil then
            local Pos = (Char.Torso.CFrame*CFrame.new(0,-1,0)).p
            local X,Y,Z = Camera:WorldToScreenPoint(Pos).X,Camera:WorldToScreenPoint(Pos).Y,Camera:WorldToScreenPoint(Pos).Z
            Pelvis.Position = UDim2.new(0,X,0,Y)
            if Z<=0 then Pelvis.Visible = false else Pelvis.Visible = true end
            else
                Pelvis.Visible = false
            end
            --
            local RightFoot = Folder:FindFirstChild('Right Foot') or Instance.new('Frame',Folder)
            RightFoot.Name = 'Right Foot'
            RightFoot.ZIndex = 2
            RightFoot.BorderSizePixel = 0
            if Char['Right Leg']~=nil then
            local Pos = (Char['Right Leg'].CFrame*CFrame.new(0,-1,0)).p
            local X,Y,Z = Camera:WorldToScreenPoint(Pos).X,Camera:WorldToScreenPoint(Pos).Y,Camera:WorldToScreenPoint(Pos).Z
            RightFoot.Position = UDim2.new(0,X,0,Y)
            if Z<=0 then RightFoot.Visible = false else RightFoot.Visible = true end
            else
                RightFoot.Visible = false
            end
            --
            local LeftFoot = Folder:FindFirstChild('Left Foot') or Instance.new('Frame',Folder)
            LeftFoot.Name = 'Left Foot'
            if Char['Left Leg']~=nil then
            local Pos = (Char['Left Leg'].CFrame*CFrame.new(0,-1,0)).p
            local X,Y,Z = Camera:WorldToScreenPoint(Pos).X,Camera:WorldToScreenPoint(Pos).Y,Camera:WorldToScreenPoint(Pos).Z
            LeftFoot.Position = UDim2.new(0,X,0,Y)
            LeftFoot.BorderSizePixel = 0
            if Z<=0 then LeftFoot.Visible = false else LeftFoot.Visible = true end
            else
                LeftFoot.Visible = false
            end
            --
            local RightHand = Folder:FindFirstChild('Right Hand') or Instance.new('Frame',Folder)
            RightHand.Name = 'Right Hand'
            RightHand.ZIndex = 2
            RightHand.BorderSizePixel = 0
            if Char['Right Arm']~=nil then
            local Pos = (Char['Right Arm'].CFrame*CFrame.new(0,-1,0)).p
            local X,Y,Z = Camera:WorldToScreenPoint(Pos).X,Camera:WorldToScreenPoint(Pos).Y,Camera:WorldToScreenPoint(Pos).Z
            RightHand.Position = UDim2.new(0,X,0,Y)
            if Z<=0 then RightHand.Visible = false else RightHand.Visible = true end
            else
                RightHand.Visible = false
            end
            --
            local LeftHand = Folder:FindFirstChild('Left Hand') or Instance.new('Frame',Folder)
            LeftHand.Name = 'Left Hand'
            LeftHand.ZIndex = 2
            LeftHand.BorderSizePixel = 0
            if Char['Left Arm']~=nil then
            local Pos = (Char['Left Arm'].CFrame*CFrame.new(0,-1,0)).p
            local X,Y,Z = Camera:WorldToScreenPoint(Pos).X,Camera:WorldToScreenPoint(Pos).Y,Camera:WorldToScreenPoint(Pos).Z
            LeftHand.Position = UDim2.new(0,X,0,Y)
            if Z<=0 then LeftHand.Visible = false else LeftHand.Visible = true end
            else
                LeftHand.Visible = false
            end
            -- draw joints
            if esp_bones then
            if Head.Visible then DrawLine(Folder,Head,Neck,1,Color3.new(1,1,1),Head.BackgroundTransparency) end
            if Neck.Visible then DrawLine(Folder,Neck,Pelvis,1,Color3.new(1,1,1),Head.BackgroundTransparency) end
            if Neck.Visible then DrawLine(Folder,Neck,RightHand,1,Color3.new(1,1,1),Head.BackgroundTransparency) end
            if Neck.Visible then DrawLine(Folder,Neck,LeftHand,1,Color3.new(1,1,1),Head.BackgroundTransparency) end
            if Pelvis.Visible then DrawLine(Folder,Pelvis,RightFoot,1,Color3.new(1,1,1),Head.BackgroundTransparency) end
            if Pelvis.Visible then DrawLine(Folder,Pelvis,LeftFoot,1,Color3.new(1,1,1),Head.BackgroundTransparency) end
            end
            end
           
            if esp_chams then
                for _,Part in next,Char:children() do
                    if Part:IsA('BasePart') and Part.Name~='HumanoidRootPart' then
                        local Adornment = Folder:FindFirstChild(Part.Name..'_Cham') or Instance.new('BoxHandleAdornment',Folder)
                        if not Folder:FindFirstChild(Part.Name..'_Cham') then
                        Adornment.Name = Part.Name..'_Cham'
                        Adornment.Adornee = Part
                        Adornment.AlwaysOnTop = true
                        Adornment.Size = Part.Name=='Head' and Vector3.new(1,1,1) or Part.Size
                        Adornment.ZIndex = 1
                        end
                        Adornment.Color3 = Head.BackgroundColor3
                    end
                end
            else
                for _,v in next,Folder:GetDescendants() do
                    if v.Name:match('Cham') then
                        v:Destroy()
                    end
                end
            end
           
            if bounding_box and Char:FindFirstChild('HumanoidRootPart') then
                local Box = Char:FindFirstChild('Box') or Instance.new('BillboardGui',Char)
                if not Char:FindFirstChild('Box') then
                Box.Name = 'Box'
                Box.Adornee = Char:FindFirstChild('HumanoidRootPart')
                Box.AlwaysOnTop = true
                Box.LightInfluence = 0
                Box.StudsOffset = Vector3.new(0,-Box.Adornee.Size.Y/4,0)
                Box.Size = UDim2.new(4,1,5,1)
                local Top = Instance.new('Frame',Box)
                Top.Size = UDim2.new(1,0,0,box_line_size)
                Top.BorderSizePixel = 0
                local Bot = Top:Clone()
                Bot.Position = UDim2.new(0,0,1,-box_line_size)
                Bot.Parent = Box
                local Left = Top:Clone()
                Left.Size = UDim2.new(0,1,1,0)
                Left.Parent = Box
                local Right = Left:Clone()
                Right.Position = UDim2.new(1,-box_line_size,0,0)
                Right.Parent = Box
                end
                for _,v in next,Box:children() do
                    if v:IsA('Frame') then
                        v.BackgroundColor3 = Head.BackgroundColor3
                    end
                end
            else
                local Box = Char:FindFirstChild('Box')
                if Box then
                    Box:Destroy()
                end
            end
           
            if lockedon and target and aim_line and ESP:FindFirstChild(target.Name) then
                DrawLine(ESP,cursor,ESP:FindFirstChild(target.Name).Head,1,Head.BackgroundColor3,.5)
            end
           
        else
            if ESP:FindFirstChild(v.Name) then
                ESP:FindFirstChild(v.Name):Destroy()
            end
            end
        else
            if ESP:FindFirstChild(v.Name) then
                ESP:FindFirstChild(v.Name):Destroy()
            end
        end
        end
    else
        for _,v in next,ESP:children() do
            if v:IsA('Folder') then
                v:Destroy()
            end
        end
    end
    if performancemode then
        wait(1/(workspace:GetRealPhysicsFPS()*.75))
    else
        RS.Stepped:wait()
    end
end
 
--[[ broken
spawn(function()
while script and game.PlaceId == 292439477 and workspace:FindFirstChild('Map') do
    windows = {}
    for _,v in next,workspace.Map:GetChildren() do
        if v.Name=='Window' then
            table.insert(windows,v)
        end
    end
    wait(2)
end
end)
--]]
end)
 
PG1_2.Name = "PG1_2"
PG1_2.Parent = Frame1
PG1_2.BackgroundColor3 = Color3.new(0.835294, 0.329412, 1)
PG1_2.Position = UDim2.new(0.03763441, 0, 0.149171263, 0)
PG1_2.Size = UDim2.new(0, 171, 0, 38)
PG1_2.Font = Enum.Font.Gotham
PG1_2.Text = "Aimbot (FFA/Gun Game)"
PG1_2.TextColor3 = Color3.new(0, 0, 0)
PG1_2.TextScaled = true
PG1_2.TextSize = 14
PG1_2.TextWrapped = true
PG1_2.MouseButton1Down:connect(function()
--made by Avexus#1234 discord from MrStuperd btw and DO NOT PRESS DELETE ;) GUI aimbot_toggled
 
local UIS = game:GetService('UserInputService')
local RS = game:GetService('RunService')
local Players = game:GetService('Players')
local StarterGui = game:GetService('StarterGui')
local Player = Players.LocalPlayer
local Studio = RS:IsStudio()
local PlayerGui = RS:IsStudio() and Player:WaitForChild('PlayerGui') or game.CoreGui
local Mouse = Player:GetMouse()
local old_icon = Mouse.Icon
local Camera = workspace.CurrentCamera
targetpart = 'Head' -- Don't change this.
-- It can be changed with the targetpart_change hotkey ingame.
local target
local target_old
local alert = false
local lockedon = false
local settingkey = false
local upvals = nil
local val = 1
local windows = {}
local function hb() RS.Heartbeat:wait() end
 
local version = 1.25
local Spawn = nil or game.PlaceId == 292439477 and workspace:WaitForChild('Lobby',2):WaitForChild('Spawn1',2)
local spawned = false
 
script.Name = 'GameSense!'
Mouse.TargetFilter = Camera
 
-- hotkey
toggle_aim = Enum.UserInputType.MouseButton2
toggle_aimbot = Enum.KeyCode.Delete
toggle_trigger = Enum.KeyCode.Delete
toggle_esp = Enum.KeyCode.Delete
toggle_gui = Enum.KeyCode.Delete
toggle_bottompos = Enum.KeyCode.Delete
toggle_performance = Enum.KeyCode.Delete
toggle_bones = Enum.KeyCode.Delete
toggle_chams = Enum.KeyCode.Delete
toggle_tracers = Enum.KeyCode.Delete
toggle_boxes = Enum.KeyCode.Delete
toggle_font = Enum.KeyCode.Delete
ffatoggle = Enum.KeyCode.Delete
targetpart_change = Enum.KeyCode.Delete
priority_toggle = Enum.KeyCode.Delete
sethotkey = Enum.KeyCode.Delete
-- aim fov
fov_increase = Enum.KeyCode.KeypadPlus
fov_decrease = Enum.KeyCode.KeypadMinus
-- aim sens (how smooth your crosshair will move)
sens_increase = Enum.KeyCode.RightBracket
sens_decrease = Enum.KeyCode.LeftBracket
 
-- parts
parts = {
    'Head';
    'Torso'
}
 
fonts = {
    Enum.Font.SourceSansBold,
    Enum.Font.Cartoon,
    Enum.Font.Arcade,
    Enum.Font.SciFi,
    Enum.Font.Fantasy,
    Enum.Font.Code,
    Enum.Font.Highway,
    Enum.Font.Bodoni
}
 
textSet = false
 
currentfont = 1
ffa = true
hidden = false
performancemode = false
-- aim
fov = 6
sens = .25
drop = .4
aim_toggled = false
bottompos = true
aim_priority = 2
-- [2] FOV or [1] Distance
aimingcolor = Color3.fromRGB(0,165,255)
aimbot_toggled = true
aim_line = true
locksoundid = 538769304
mouseiconid =  18671553
 
-- trigger
trigger_toggled = false
trigger_delay = 1/20
 
-- esp
esp_toggled = false
esp_bones = false
esp_chams = false
esp_tracers = false
-- item_esp (coming soon)
linesize = 1
showdists = true
textsize = 14
textoffset = 20
visiblecolor = Color3.fromRGB(38,255,99)
hiddencolor = Color3.fromRGB(255,37,40)
headboxsize = 4
headboxaimsize = 6
headboxshape = 'diamond'
-- rectangle or diamond
 
-- box esp
bounding_box = true
-- box_pointsize = 0 [UNUSED]
box_line_size = 1
-- box_line_size_visible = 2 [UNUSED]
 
local GUI = Instance.new('ScreenGui',PlayerGui)
GUI.Name = 'GameSense '..version
GUI.ResetOnSpawn = false
 
ESP = Instance.new('Folder',GUI)
ESP.Name = 'ESP'
local Bottom = Instance.new('Frame',ESP)
Bottom.Name = 'Bottom'
Bottom.BackgroundTransparency = 1
Bottom.Size = UDim2.new(0,1,0,1)
Bottom.Position = UDim2.new(.5,0,1,1)
 
local Status = Instance.new('TextLabel',GUI)
Status.Name = 'Status'
Status.BackgroundTransparency = 1
Status.Size = UDim2.new(0,500,0,50)
Status.Position = UDim2.new(.5,-250,.85,0)
Status.TextSize = 0
Status.Font = Enum.Font.SourceSansBold
Status.TextColor3 = Color3.new(1,1,1)
Status.TextStrokeColor3 = Color3.new(0,0,0)
Status.TextStrokeTransparency = .6
Status.Text = 'On Standby'
Status.ZIndex = 50
 
local Credits = Status:Clone()
Credits.Name = 'Credits'
Credits.Parent = GUI
Credits.Position = UDim2.new(-1000000,-1000000,-1000000,-1000000)
Credits.TextSize = 0
Credits.Text = 'GameSense '..version..' by Avexus!'
 
local FovGui = Instance.new('ImageLabel',GUI)
FovGui.Name = 'FovGui'
FovGui.Image = 'rbxassetid://324848180'
FovGui.Size = UDim2.new(0,(Camera.ViewportSize.X/(90/fov))*2,0,(Camera.ViewportSize.X/(90/fov))*2)
FovGui.Position = UDim2.new(0.5,-FovGui.AbsoluteSize.X/2,0.5,-FovGui.AbsoluteSize.Y/2)
FovGui.BackgroundTransparency = 1
FovGui.ImageTransparency = 0.7
FovGui.ImageColor3 = Color3.new(1,0,0)
 
local Indicator = Instance.new('TextLabel',GUI)
Indicator.Name = 'Indicator'
Indicator.Font = Enum.Font.SourceSans
Indicator.TextSize = 0
Indicator.TextXAlignment = Enum.TextXAlignment.Center
Indicator.TextYAlignment = Enum.TextYAlignment.Center
Indicator.TextStrokeTransparency = 1
Indicator.Text = aim_priority>1 and 'FOV: '..fov or 'Distance'
 
local SensAdjust = Instance.new('TextBox',GUI)
SensAdjust.Name = 'SensAdjust'
SensAdjust.Font = Enum.Font.SourceSans
SensAdjust.BackgroundTransparency = .75
SensAdjust.BackgroundColor3 = Color3.new(0,0,0)
SensAdjust.BorderColor3 = Color3.new(1,1,1)
SensAdjust.Size = UDim2.new(0,50,0,20)
SensAdjust.TextStrokeTransparency = 1
SensAdjust.TextColor3 = Color3.new(1,1,1)
SensAdjust.TextSize = 0
SensAdjust.PlaceholderText = 'Sens'
SensAdjust.Text = tonumber(sens)
SensAdjust.Position = Credits.Position + UDim2.new(0,250,0,75)
 
local SensLabel = Instance.new('TextLabel',SensAdjust)
SensLabel.Name = 'SensLabel'
SensLabel.Font = Enum.Font.SourceSans
SensLabel.Size = UDim2.new(1,0,1,0)
SensLabel.BackgroundTransparency = 1
SensLabel.TextSize = 0
SensLabel.TextColor3 = Color3.new(1,1,1)
SensLabel.TextStrokeColor3 = Color3.new(0,0,0)
SensLabel.TextStrokeTransparency = 1
SensLabel.Text = 'Sens:'
SensLabel.Position = UDim2.new(-1,0,0,0)
SensLabel.TextXAlignment = Enum.TextXAlignment.Left
 
local FovAdjust = SensAdjust:Clone()
FovAdjust.Parent = GUI
FovAdjust.PlaceholderText = 'FOV'
FovAdjust.Name = 'FovAdjust'
FovAdjust.Text = tonumber(fov)
FovAdjust.Position = SensAdjust.Position + UDim2.new(0,0,0,20)
FovAdjust.SensLabel.Name = 'FovLabel'
FovAdjust.FovLabel.Text = 'Fov:'
 
local DropAdjust = SensAdjust:Clone()
DropAdjust.Parent = GUI
DropAdjust.PlaceholderText = 'Drop'
DropAdjust.Name = 'DropAdjust'
DropAdjust.Text = tonumber(drop)
DropAdjust.Position = SensAdjust.Position + UDim2.new(0,0,0,40)
DropAdjust.SensLabel.Name = 'DropLabel'
DropAdjust.DropLabel.Text = 'Drop:'
 
local KeysList = Instance.new('TextLabel',GUI)
KeysList.Name = 'KeysList'
KeysList.Font = Enum.Font.SourceSans
KeysList.TextStrokeTransparency = .6
KeysList.TextSize = 0
KeysList.TextColor3 = Color3.new(1,1,1)
KeysList.Size = UDim2.new(0,0,1,0)
KeysList.Position = UDim2.new(0,5,0,-280)
KeysList.BackgroundTransparency = 1
KeysList.Active = false
 
local n = 0
 
spawn(function()
    while Status do
        Indicator.TextColor3 = Color3.fromHSV(n,.5,1)
        FovGui.ImageColor3 = Indicator.TextColor3
        if not textSet then
        if aim_toggled and target then
            Status.TextColor3 = aimingcolor
            Status.Text = ('Aiming at '..target.Name)
        else
            Status.TextColor3 = Color3.fromHSV(n,.5,1)
            Status.Text = 'On Standby'
        end
        end
        n = (n+.005)%1
        hb()
    end
end)
 
SensAdjust.InputEnded:Connect(function() if SensAdjust.Text~='' then sens = tonumber(SensAdjust.Text)>0 and tonumber(SensAdjust.Text) or sens end end)
FovAdjust.InputEnded:Connect(function() if FovAdjust.Text~='' then fov = tonumber(FovAdjust.Text)>0 and tonumber(FovAdjust.Text) or fov
FovGui:TweenSize(UDim2.new(0,(Camera.ViewportSize.X/(90/fov))*2,0,(Camera.ViewportSize.X/(90/fov))*2),Enum.EasingDirection.InOut,Enum.EasingStyle.Quad,.1,true) end end)
DropAdjust.InputEnded:Connect(function() if DropAdjust.Text~='' then drop = tonumber(DropAdjust.Text)>=0 and tonumber(DropAdjust.Text) or drop end end)
 
local function distfromspawn(x)
    if Spawn then
        return x:DistanceFromCharacter(Spawn.Position)
    else
        return 201
    end
end
 
local function setText(text)
    spawn(function()
    textSet = true
    Status.Text = text
    Status.TextColor3 = Color3.new(1,1,1)
    wait(#text/4)
    textSet = false
    end)
end
 
local function playsound(id)
    local sound = Instance.new('Sound',Camera)
    sound.Volume = 3
    sound:Play()
    game:GetService('Debris'):AddItem(sound,5)
end
 
 
local function DrawLine(Folder,P1,P2,Thickness,Color,LineTransparency,BorderThickness,BorderColor)
    -- Declare variables
    local Point1,Point2 = P1.Position,P2.Position
    if Point1 and Point2 then
    local X,Y = Camera.ViewportSize.X, Camera.ViewportSize.Y
    local X1,X2 = (X * Point1.X.Scale + Point1.X.Offset + P1.Size.X.Offset/2), (X * Point2.X.Scale + Point2.X.Offset + P2.Size.X.Offset/2)
    local Y1,Y2 = (Y * Point1.Y.Scale + Point1.Y.Offset + P1.Size.Y.Offset/2), (Y * Point2.Y.Scale + Point2.Y.Offset + P2.Size.Y.Offset/2)
    local MidX,MidY = (X1+X2)/2, (Y1+Y2)/2
    -- Set defaults to prevent errors
    Thickness = Thickness or 1
    Color = Color or Color3.new(1,1,1)
    LineTransparency =  LineTransparency or 0
    BorderThickness = BorderThickness or 0
    BorderColor = BorderColor or Color3.new(0,0,0)
    -- Draw the line
    local Line = Folder:FindFirstChild(P1.Name..'-'..P2.Name) or Instance.new('Frame',Folder)
    Line.Visible = false
    Line.BackgroundTransparency = LineTransparency
    Line.BorderSizePixel = BorderThickness
    Line.BorderColor3 = BorderColor
    Line.Size = UDim2.new(0,(Vector2.new(X1,Y1) - Vector2.new(X2,Y2)).magnitude-1,0,Thickness)
    Line.Position = UDim2.new(0,MidX-Line.AbsoluteSize.X/2,0,MidY-Line.AbsoluteSize.Y)
    Line.BackgroundColor3 = Color
    Line.Rotation = math.deg(math.atan2((Y2-Y1),(X2-X1)))
    Line.Name = P1.Name..'-'..P2.Name
    Line.Visible = true
    return Line
    else
        return nil
    end
end
 
local function GetNearest(Mode)
    local lowest,nearest,gui = math.huge,nil,nil
    if Mode==1 then
    for _,plr in next,Players:GetPlayers() do
        if plr.Name~=Player.Name and plr.Character~=nil and plr.Character:FindFirstChild(targetpart) then
            local dist = Player:DistanceFromCharacter(plr.Character[targetpart].Position)
            local ray = Ray.new(Player.Character.Head.Position,(plr.Character[targetpart].Position-Player.Character.Head.Position).unit*5000)
            local part,point = workspace:FindPartOnRayWithIgnoreList(ray,{Camera,Player.Character,unpack(windows)})
            local Z = Camera:WorldToScreenPoint(plr.Character[targetpart].Position).Z
            if part and part:IsDescendantOf(plr.Character) and Z>0 and dist < lowest and (ffa or plr.TeamColor~=Player.TeamColor) then lowest = dist nearest = plr.Character end
        end
    end
    elseif Mode==2 then
        for _,plr in next,Players:GetPlayers() do
            if plr.Name~=Player.Name and plr.Character~=nil and plr.Character:FindFirstChild(targetpart) then
                local pos = Camera:WorldToScreenPoint(plr.Character[targetpart].Position)
                local ray = Ray.new(Player.Character[targetpart].Position,(plr.Character[targetpart].Position-Player.Character[targetpart].Position).unit*2048)
                local part,point = workspace:FindPartOnRayWithIgnoreList(ray,{Camera,Player.Character,unpack(windows)})
                local dist = (Vector2.new(Mouse.X,Mouse.Y)-Vector2.new(pos.X,pos.Y)).magnitude
                if part and part:IsDescendantOf(plr.Character) and pos.Z>0 and dist <= Camera.ViewportSize.X/(90/fov) and dist < lowest and (ffa or plr.TeamColor~=Player.TeamColor) then lowest = dist nearest = plr.Character end
            end
        end
    end
    return nearest
end
   
Mouse.Move:Connect(function()
    cursor = ESP:FindFirstChild('Cursor') or Instance.new('Frame',ESP)
    cursor.Name = 'Cursor'
    cursor.BackgroundTransparency = 1
    cursor.Size = UDim2.new(0,1,0,1)
    cursor.Position = UDim2.new(0,Mouse.X,0,Mouse.Y)
end)
 
UIS.InputBegan:Connect(function(Input)
    if Input.KeyCode == toggle_aim or Input.UserInputType == toggle_aim then
        aim_toggled = true
        warn('GS: aim toggled',aim_toggled and 'on' or 'off')
        alert = true
        while aim_toggled and aimbot_toggled do
            target = GetNearest(aim_priority)
            if target then
                local dist = Player:DistanceFromCharacter(target[targetpart].Position)
                local headpos = Camera:WorldToScreenPoint(target[targetpart].Position+Vector3.new(0,dist/(100/drop),0))
                local moveto = Vector2.new((headpos.X-Mouse.X)*sens,(headpos.Y-Mouse.Y)*sens)
                aimpos = GUI:FindFirstChild('AimPos') or Instance.new('Frame',GUI)
                if not GUI:FindFirstChild('AimPos') then
                aimpos.Name = 'AimPos'
                aimpos.BorderSizePixel = 1
                aimpos.BorderColor3 = Color3.new(0,0,0)
                aimpos.BackgroundTransparency = 0
                aimpos.BackgroundColor3 = Color3.new(1,1,1)
                aimpos.Rotation = 45
                aimpos.ZIndex = 4
                aimpos.Size = UDim2.new(0,3,0,3)
                end
                aimpos.Position = UDim2.new(0,headpos.X-aimpos.AbsoluteSize.X/2,0,headpos.Y-aimpos.AbsoluteSize.Y/2)
                aimpos.Visible = true
                mousemoverel(moveto.X,moveto.Y)
                if alert or target~=target_old then
                    playsound(locksoundid)
                    print('GS: locked onto',target.Name)
                    lockedon = true
                    alert = false
                end
            end
            RS.Heartbeat:wait()
            target_old = target
            if aimpos then
                aimpos.Visible = false
            end
        end
        lockedon = false
    elseif Input.KeyCode == toggle_trigger then
        trigger_toggled = not trigger_toggled
        setText('Toggled TriggerBot '..(trigger_toggled and 'On' or 'Off'))
        Notification({Title='TriggerBot';Text='TriggerBot was toggled '..(trigger_toggled and 'On' or 'Off');Duration=2;})
        warn('trigger toggled',trigger_toggled and 'on' or 'off')
        local Box = Instance.new('SelectionBox',PlayerGui)
        Box.Color3 = Color3.new(1,0,0)
        Box.LineThickness = .05
        Box.Adornee = nil
        if trigger_delay>0 then wait(trigger_delay) end
        while trigger_toggled do
        local Target = Mouse.Target
        local plr = Players:FindFirstChild(Target.Parent.Name)
        if Target and Target.Parent and plr~=nil and plr~=Player and ffa or plr~=nil and plr.TeamColor~=Player.TeamColor then
            Box.Adornee = Mouse.Target
            mouse1press()
            wait()
            mouse1release()
        end
        RS.Heartbeat:wait()
        end
        Box:Destroy()
    elseif Input.KeyCode == toggle_esp then
        esp_toggled = not esp_toggled
        Notification({Title='ESP';Text='ESP was toggled '..(esp_toggled and 'On' or 'Off');Duration=2;})
        setText('Toggled ESP '..(esp_toggled and 'On' or 'Off'))
    elseif Input.KeyCode == toggle_aimbot then
        aimbot_toggled = not aimbot_toggled
        Notification({Title='AimBot';Text='AimBot was toggled '..(aimbot_toggled and 'On' or 'Off');Duration=2;})
        setText('Toggled AimBot '..(aimbot_toggled and 'On' or 'Off'))
    elseif Input.KeyCode == fov_increase then
        fov = fov + .5
        FovAdjust.Text = tonumber(fov)
        if FovGui.Visible then
            FovGui:TweenSize(UDim2.new(0,(Camera.ViewportSize.X/(90/fov))*2,0,(Camera.ViewportSize.X/(90/fov))*2),Enum.EasingDirection.InOut,Enum.EasingStyle.Quad,.1,true)
        end
        setText('Aim FOV: '..fov)
    elseif Input.KeyCode == fov_decrease and fov>0 then
        fov = fov - .5
        FovAdjust.Text = tonumber(fov)
        if FovGui.Visible then
            FovGui:TweenSize(UDim2.new(0,(Camera.ViewportSize.X/(90/fov))*2,0,(Camera.ViewportSize.X/(90/fov))*2),Enum.EasingDirection.InOut,Enum.EasingStyle.Quad,.1,true)
        end
        setText('Aim FOV: '..fov)
    elseif Input.KeyCode == sens_increase then
        sens = sens + .05
        SensAdjust.Text = tonumber(sens)
        setText('Sens: '..sens)
    elseif Input.KeyCode == sens_decrease then
        sens = sens - .05
        SensAdjust.Text = tonumber(sens)
        setText('Sens: '..sens)
    elseif Input.KeyCode == targetpart_change then
        val = val+1
        targetpart = val<=#parts and parts[val] or parts[1]
        if parts[1]==targetpart then val = 1 end
        Notification({Title='Target Part';Text='Target part set to '..targetpart;Duration=2;})
        setText('Target Part: '..targetpart)
    elseif Input.KeyCode == ffatoggle then
        ffa = not ffa
        Notification({Title='FFA Mode';Text='FFA Mode is '..(ffa and 'Enabled' or 'Disabled');Duration=2;})
        setText('FFA Mode: '..(ffa and 'Enabled' or 'Disabled'))
    elseif Input.KeyCode == priority_toggle then
        aim_priority = aim_priority+1>2 and 0 or 1
        aim_priority = aim_priority+1
        FovGui.Visible = aim_priority>1
        setText('Aim Priority: '..(aim_priority==1 and 'Distance' or 'FOV'))
    elseif Input.KeyCode == toggle_bones then
        esp_bones = not esp_bones
        if not esp_bones then
        for _,v in next,ESP:GetDescendants() do
            if v:IsA('Frame') and v.Name:match('-') then
                v:Destroy()
            end
        end
        end
        setText('Toggled ESP Bones '..(esp_bones and 'Enabled' or 'Disabled'))
    elseif Input.KeyCode == toggle_gui then
        hidden = not hidden
        for _,gui in next,GUI:GetDescendants() do
            if gui:IsA('GuiObject') and not hidden and not gui.Visible then
                gui.Visible = true
                Mouse.Icon = 'rbxassetid://'..mouseiconid
            elseif gui:IsA('GuiObject') and gui.Visible then
                gui.Visible = false
                esp_toggled = false
                Mouse.Icon = old_icon
            end
            end
        elseif Input.KeyCode == toggle_bottompos then
            bottompos = not bottompos
            if bottompos then
                Bottom.Position = UDim2.new(.5,0,1,1)
            end
        elseif Input.KeyCode == toggle_performance then
            performancemode = not performancemode
            setText('Performance Mode '..(performancemode and 'Enabled' or 'Disabled'))
        elseif Input.KeyCode == toggle_chams then
            esp_chams = not esp_chams
            setText('Chams '..(esp_chams and 'Enabled' or 'Disabled'))
        elseif Input.KeyCode == toggle_tracers then
            esp_tracers = not esp_tracers
            setText('Tracers '..(esp_chams and 'Enabled' or 'Disabled'))
        elseif Input.KeyCode == toggle_boxes then
            bounding_box = not bounding_box
            setText('Bounding Boxes '..(bounding_box and 'Enabled' or 'Disabled'))
        elseif Input.KeyCode == toggle_font then
                currentfont = (currentfont+1)>#fonts and 1 or currentfont+1
                for _,v in next,GUI:GetDescendants() do
                    if v.Name~='KeysList' then
                    if v:IsA('TextLabel') or v:IsA('TextButton') then
                        v.Font = fonts[currentfont]
                    end
                    end
                end
        end
end)
 
UIS.InputEnded:Connect(function(Input)
    if Input.KeyCode == toggle_aim or Input.UserInputType == toggle_aim then
        aim_toggled = false
    end
end)
 
local function checkifspawned(x)
    spawned = false
    while not spawned and game.PlaceId==292439477 do
        spawned = distfromspawn(x)>200 and true or false
        wait(1/5)
    end
    spawned = true
end
 
checkifspawned(Player)
Player.CharacterAdded:Connect(function(c)
    checkifspawned(Player)
   
    for _,v in next,ESP:GetDescendants() do
        if v:IsA('Frame') and v.Name:match('-') then
            v:Destroy()
        end
    end
end)
 
Notification({Title='Aimbot '..version;Text='Loaded successfully.';Icon='rbxassetid://2572157833';Duration=10;})
wait(.5)
 
RS.RenderStepped:Connect(function()
    if cursor then
        FovGui.Position = cursor.Position-UDim2.new(0,FovGui.AbsoluteSize.X/2,0,FovGui.AbsoluteSize.Y/2)
        Indicator.Position = cursor.Position+UDim2.new(0,0,0,40)
    end
end)
 
Mouse.Button1Down:Connect(function()
    spawn(function()
        if FovGui.Visible then
            FovGui:TweenSize(UDim2.new(0,Camera.ViewportSize.X/(90/fov)*2.35,0,Camera.ViewportSize.X/(90/fov)*2.35),Enum.EasingDirection.InOut,Enum.EasingStyle.Quad,.1,true)
            wait(.1)
            FovGui:TweenSize(UDim2.new(0,Camera.ViewportSize.X/(90/fov)*2,0,Camera.ViewportSize.X/(90/fov)*2),Enum.EasingDirection.InOut,Enum.EasingStyle.Quad,.1,true)
        end
    end)
end)
 
while true do
    Indicator.Text = (aim_priority>1 and 'FOV: '..fov or 'Distance') ..'\nSens: '..sens..(aim_toggled and '\nAiming' or '')
    if not bottompos then Bottom.Position = cursor.Position end
    if esp_toggled then
    for _,v in next,ESP:children() do
        if v~=Bottom and not Players:FindFirstChild(v.Name) then
            v:Destroy()
        end
    end
    for _,v in next,Players:GetPlayers() do
        local Char = v.Character
        if Char and spawned and v~=Player and Char:FindFirstChild(targetpart) and distfromspawn(v)>100 then
            if ffa or v.TeamColor~=Player.TeamColor then
            local X = Camera:GetPartsObscuringTarget({Camera.CFrame.p,Char[targetpart].CFrame.p},{v.Character,Char,Camera,unpack(windows)})
            local Dist = Player:DistanceFromCharacter(Char:FindFirstChild(targetpart).Position)
            local Color = hiddencolor
            local Folder = ESP:FindFirstChild(v.Name) or Instance.new('Folder',ESP)
            Folder.Name = v.Name
            -- ESP
            local Head = Folder:FindFirstChild('Head') or Instance.new('Frame',Folder)
            if not Folder:FindFirstChild('Head') then
            Head.Name = 'Head'
            Head.BorderSizePixel = 1
            Head.BorderColor3 = Color3.new(0,0,0)
            Head.BackgroundTransparency = 0
            end
            Head.BackgroundColor3 = #X>0 and hiddencolor or #X==0 and visiblecolor
            Head.Rotation = headboxshape=='diamond' and 45 or 0
            Head.ZIndex = 3
            local HP = Folder:FindFirstChild('HP') or Instance.new('TextLabel',Folder)
            if not Folder:FindFirstChild('HP') then
            HP.Name = 'HP'
            HP.TextTransparency = Head.BackgroundTransparency-.4
            HP.Font = fonts[currentfont]
            HP.TextStrokeTransparency = .6
            HP.BackgroundTransparency = 1
            HP.TextSize = 14
            end
            HP.Text = showdists and Char.Name..'\n'..math.floor(Dist+.5) or Char.Name
            if aim_toggled and target==Char then
                Head.Size = UDim2.new(0,headboxaimsize,0,headboxaimsize)
                Head.BackgroundColor3 = aimingcolor
                HP.Text = showdists and '['..Char.Name..']'..'\n'..math.floor(Dist+.5) or '['..Char.Name..']'
                HP.TextSize = 16
            else
                Head.Size = UDim2.new(0,headboxsize,0,headboxsize)
            end
            HP.TextColor3 = Head.BackgroundColor3
            local toScreen = Camera:WorldToScreenPoint(Char[targetpart].CFrame.p)
            if #X==0 then Color = visiblecolor end
            Head.Position = UDim2.new(0,toScreen.X-Head.Size.X.Offset/2,0,toScreen.Y-Head.Size.Y.Offset/2)
            HP.Position = Head.Position-UDim2.new(0,0,0,textoffset)
            if esp_tracers then
            local Line = DrawLine(Folder,ESP.Bottom,Head,linesize,Head.BackgroundColor3,.75,1,Color3.new(0,0,0))
                Line.Visible = Head.Visible
            else
                local imtired = Folder:FindFirstChild(ESP.Bottom.Name..'-'..Head.Name)
                if imtired then
                    imtired:Destroy()
                end
            end
            if toScreen.Z<=0 then Head.Visible = false else Head.Visible = true end
            HP.Visible = Head.Visible
            if Char:FindFirstChild('Humanoid') and Char.Humanoid.RigType==Enum.HumanoidRigType.R6 then
            local Neck = Folder:FindFirstChild('Neck') or Instance.new('Frame',Folder)
            Neck.Name = 'Neck'
            Neck.ZIndex = 2
            if Char['Torso']~=nil then
            local Pos = (Char.Torso.CFrame*CFrame.new(0,.8,0)).p
            local X,Y,Z = Camera:WorldToScreenPoint(Pos).X,Camera:WorldToScreenPoint(Pos).Y,Camera:WorldToScreenPoint(Pos).Z
            Neck.Position = UDim2.new(0,X,0,Y)
            Neck.BorderSizePixel = 0
            if Z<=0 then Neck.Visible = false else Neck.Visible = true end
            else
                Neck.Visible = false
            end
            --
            local Pelvis = Folder:FindFirstChild('Pelvis') or Instance.new('Frame',Folder)
            Pelvis.Name = 'Pelvis'
            Pelvis.ZIndex = 2
            Pelvis.BorderSizePixel = 0
            if Char['Torso']~=nil then
            local Pos = (Char.Torso.CFrame*CFrame.new(0,-1,0)).p
            local X,Y,Z = Camera:WorldToScreenPoint(Pos).X,Camera:WorldToScreenPoint(Pos).Y,Camera:WorldToScreenPoint(Pos).Z
            Pelvis.Position = UDim2.new(0,X,0,Y)
            if Z<=0 then Pelvis.Visible = false else Pelvis.Visible = true end
            else
                Pelvis.Visible = false
            end
            --
            local RightFoot = Folder:FindFirstChild('Right Foot') or Instance.new('Frame',Folder)
            RightFoot.Name = 'Right Foot'
            RightFoot.ZIndex = 2
            RightFoot.BorderSizePixel = 0
            if Char['Right Leg']~=nil then
            local Pos = (Char['Right Leg'].CFrame*CFrame.new(0,-1,0)).p
            local X,Y,Z = Camera:WorldToScreenPoint(Pos).X,Camera:WorldToScreenPoint(Pos).Y,Camera:WorldToScreenPoint(Pos).Z
            RightFoot.Position = UDim2.new(0,X,0,Y)
            if Z<=0 then RightFoot.Visible = false else RightFoot.Visible = true end
            else
                RightFoot.Visible = false
            end
            --
            local LeftFoot = Folder:FindFirstChild('Left Foot') or Instance.new('Frame',Folder)
            LeftFoot.Name = 'Left Foot'
            if Char['Left Leg']~=nil then
            local Pos = (Char['Left Leg'].CFrame*CFrame.new(0,-1,0)).p
            local X,Y,Z = Camera:WorldToScreenPoint(Pos).X,Camera:WorldToScreenPoint(Pos).Y,Camera:WorldToScreenPoint(Pos).Z
            LeftFoot.Position = UDim2.new(0,X,0,Y)
            LeftFoot.BorderSizePixel = 0
            if Z<=0 then LeftFoot.Visible = false else LeftFoot.Visible = true end
            else
                LeftFoot.Visible = false
            end
            --
            local RightHand = Folder:FindFirstChild('Right Hand') or Instance.new('Frame',Folder)
            RightHand.Name = 'Right Hand'
            RightHand.ZIndex = 2
            RightHand.BorderSizePixel = 0
            if Char['Right Arm']~=nil then
            local Pos = (Char['Right Arm'].CFrame*CFrame.new(0,-1,0)).p
            local X,Y,Z = Camera:WorldToScreenPoint(Pos).X,Camera:WorldToScreenPoint(Pos).Y,Camera:WorldToScreenPoint(Pos).Z
            RightHand.Position = UDim2.new(0,X,0,Y)
            if Z<=0 then RightHand.Visible = false else RightHand.Visible = true end
            else
                RightHand.Visible = false
            end
            --
            local LeftHand = Folder:FindFirstChild('Left Hand') or Instance.new('Frame',Folder)
            LeftHand.Name = 'Left Hand'
            LeftHand.ZIndex = 2
            LeftHand.BorderSizePixel = 0
            if Char['Left Arm']~=nil then
            local Pos = (Char['Left Arm'].CFrame*CFrame.new(0,-1,0)).p
            local X,Y,Z = Camera:WorldToScreenPoint(Pos).X,Camera:WorldToScreenPoint(Pos).Y,Camera:WorldToScreenPoint(Pos).Z
            LeftHand.Position = UDim2.new(0,X,0,Y)
            if Z<=0 then LeftHand.Visible = false else LeftHand.Visible = true end
            else
                LeftHand.Visible = false
            end
            -- draw joints
            if esp_bones then
            if Head.Visible then DrawLine(Folder,Head,Neck,1,Color3.new(1,1,1),Head.BackgroundTransparency) end
            if Neck.Visible then DrawLine(Folder,Neck,Pelvis,1,Color3.new(1,1,1),Head.BackgroundTransparency) end
            if Neck.Visible then DrawLine(Folder,Neck,RightHand,1,Color3.new(1,1,1),Head.BackgroundTransparency) end
            if Neck.Visible then DrawLine(Folder,Neck,LeftHand,1,Color3.new(1,1,1),Head.BackgroundTransparency) end
            if Pelvis.Visible then DrawLine(Folder,Pelvis,RightFoot,1,Color3.new(1,1,1),Head.BackgroundTransparency) end
            if Pelvis.Visible then DrawLine(Folder,Pelvis,LeftFoot,1,Color3.new(1,1,1),Head.BackgroundTransparency) end
            end
            end
           
            if esp_chams then
                for _,Part in next,Char:children() do
                    if Part:IsA('BasePart') and Part.Name~='HumanoidRootPart' then
                        local Adornment = Folder:FindFirstChild(Part.Name..'_Cham') or Instance.new('BoxHandleAdornment',Folder)
                        if not Folder:FindFirstChild(Part.Name..'_Cham') then
                        Adornment.Name = Part.Name..'_Cham'
                        Adornment.Adornee = Part
                        Adornment.AlwaysOnTop = true
                        Adornment.Size = Part.Name=='Head' and Vector3.new(1,1,1) or Part.Size
                        Adornment.ZIndex = 1
                        end
                        Adornment.Color3 = Head.BackgroundColor3
                    end
                end
            else
                for _,v in next,Folder:GetDescendants() do
                    if v.Name:match('Cham') then
                        v:Destroy()
                    end
                end
            end
           
            if bounding_box and Char:FindFirstChild('HumanoidRootPart') then
                local Box = Char:FindFirstChild('Box') or Instance.new('BillboardGui',Char)
                if not Char:FindFirstChild('Box') then
                Box.Name = 'Box'
                Box.Adornee = Char:FindFirstChild('HumanoidRootPart')
                Box.AlwaysOnTop = true
                Box.LightInfluence = 0
                Box.StudsOffset = Vector3.new(0,-Box.Adornee.Size.Y/4,0)
                Box.Size = UDim2.new(4,1,5,1)
                local Top = Instance.new('Frame',Box)
                Top.Size = UDim2.new(1,0,0,box_line_size)
                Top.BorderSizePixel = 0
                local Bot = Top:Clone()
                Bot.Position = UDim2.new(0,0,1,-box_line_size)
                Bot.Parent = Box
                local Left = Top:Clone()
                Left.Size = UDim2.new(0,1,1,0)
                Left.Parent = Box
                local Right = Left:Clone()
                Right.Position = UDim2.new(1,-box_line_size,0,0)
                Right.Parent = Box
                end
                for _,v in next,Box:children() do
                    if v:IsA('Frame') then
                        v.BackgroundColor3 = Head.BackgroundColor3
                    end
                end
            else
                local Box = Char:FindFirstChild('Box')
                if Box then
                    Box:Destroy()
                end
            end
           
            if lockedon and target and aim_line and ESP:FindFirstChild(target.Name) then
                DrawLine(ESP,cursor,ESP:FindFirstChild(target.Name).Head,1,Head.BackgroundColor3,.5)
            end
           
        else
            if ESP:FindFirstChild(v.Name) then
                ESP:FindFirstChild(v.Name):Destroy()
            end
            end
        else
            if ESP:FindFirstChild(v.Name) then
                ESP:FindFirstChild(v.Name):Destroy()
            end
        end
        end
    else
        for _,v in next,ESP:children() do
            if v:IsA('Folder') then
                v:Destroy()
            end
        end
    end
    if performancemode then
        wait(1/(workspace:GetRealPhysicsFPS()*.75))
    else
        RS.Stepped:wait()
    end
end
 
--[[ broken
spawn(function()
while script and game.PlaceId == 292439477 and workspace:FindFirstChild('Map') do
    windows = {}
    for _,v in next,workspace.Map:GetChildren() do
        if v.Name=='Window' then
            table.insert(windows,v)
        end
    end
    wait(2)
end
end)
--]]
end)
 
PG1_3.Name = "PG1_3"
PG1_3.Parent = Frame1
PG1_3.BackgroundColor3 = Color3.new(0.835294, 0.329412, 1)
PG1_3.Position = UDim2.new(0.03763441, 0, 0.279005527, 0)
PG1_3.Size = UDim2.new(0, 171, 0, 38)
PG1_3.Font = Enum.Font.Gotham
PG1_3.Text = "Trigger Bot"
PG1_3.TextColor3 = Color3.new(0, 0, 0)
PG1_3.TextScaled = true
PG1_3.TextSize = 14
PG1_3.TextWrapped = true
PG1_3.MouseButton1Down:connect(function()
--[[
    Synapse Xen v1.1.1 by Synapse GP
    VM Hash: 339e07e8d0ddc93bc10fdb71bec7fc64c18a2ce33f72de75e91a8461b5df7229
]]
_G.KeyBind = "E" --go to for a list of keycodes, !!they are case sensitive!! https://developer.roblox.com/api-reference/enum/KeyCode
 
local SynapseXen_IiliilliIIill=select;local SynapseXen_lliIllli=string.byte;local SynapseXen_IiIIiIill=string.sub;local SynapseXen_iIiiilIII=string.char;local SynapseXen_liIllIiIIiIiIllil=type;local SynapseXen_liiIiliiIliIIliIli=table.concat;local unpack=unpack;local setmetatable=setmetatable;local pcall=pcall;local SynapseXen_IIllIIIiIllIlIll,SynapseXen_lllllIIilliIlilIIIii,SynapseXen_iiilliIIiIiIIlilI,SynapseXen_illiiIIIlIIil;if bit and bit.bxor then SynapseXen_IIllIIIiIllIlIll=bit.bxor;SynapseXen_lllllIIilliIlilIIIii=function(SynapseXen_iiliiiiIlIIiii,SynapseXen_iliIlll)local SynapseXen_ilIIiilIlilIlliiIIII=SynapseXen_IIllIIIiIllIlIll(SynapseXen_iiliiiiIlIIiii,SynapseXen_iliIlll)if SynapseXen_ilIIiilIlilIlliiIIII<0 then SynapseXen_ilIIiilIlilIlliiIIII=4294967296+SynapseXen_ilIIiilIlilIlliiIIII end;return SynapseXen_ilIIiilIlilIlliiIIII end else SynapseXen_IIllIIIiIllIlIll=function(SynapseXen_iiliiiiIlIIiii,SynapseXen_iliIlll)local SynapseXen_IIliiIIiliIllIi=function(SynapseXen_iIiIIIlliiIiIlllI,SynapseXen_IiiiiIi)return SynapseXen_iIiIIIlliiIiIlllI%(SynapseXen_IiiiiIi*2)>=SynapseXen_IiiiiIi end;local SynapseXen_iliiIilIilliIlililIi=0;for SynapseXen_liIlIllIiIIliIiiIII=0,31 do SynapseXen_iliiIilIilliIlililIi=SynapseXen_iliiIilIilliIlililIi+(SynapseXen_IIliiIIiliIllIi(SynapseXen_iiliiiiIlIIiii,2^SynapseXen_liIlIllIiIIliIiiIII)~=SynapseXen_IIliiIIiliIllIi(SynapseXen_iliIlll,2^SynapseXen_liIlIllIiIIliIiiIII)and 2^SynapseXen_liIlIllIiIIliIiiIII or 0)end;return SynapseXen_iliiIilIilliIlililIi end;SynapseXen_lllllIIilliIlilIIIii=SynapseXen_IIllIIIiIllIlIll end;SynapseXen_iiilliIIiIiIIlilI=function(SynapseXen_lIiIliiIlll,SynapseXen_IllilliilllII,SynapseXen_lillIiiIliIiIiilil)return(SynapseXen_lIiIliiIlll+SynapseXen_IllilliilllII)%SynapseXen_lillIiiIliIiIiilil end;SynapseXen_illiiIIIlIIil=function(SynapseXen_lIiIliiIlll,SynapseXen_IllilliilllII,SynapseXen_lillIiiIliIiIiilil)return(SynapseXen_lIiIliiIlll-SynapseXen_IllilliilllII)%SynapseXen_lillIiiIliIiIiilil end;local function SynapseXen_IIlIIIlIIIIlllIIliI(SynapseXen_ilIIiilIlilIlliiIIII)if SynapseXen_ilIIiilIlilIlliiIIII<0 then SynapseXen_ilIIiilIlilIlliiIIII=4294967296+SynapseXen_ilIIiilIlilIlliiIIII end;return SynapseXen_ilIIiilIlilIlliiIIII end;local getfenv=getfenv;if not getfenv then getfenv=function()return _ENV end end;local SynapseXen_iIIllIiIiIIiiil={}local SynapseXen_IIlililiIlililliI={}local SynapseXen_lIliIiillIIIliiII;local SynapseXen_iilIlii;local SynapseXen_lIIlIil={}local SynapseXen_liilIi={}for SynapseXen_liIlIllIiIIliIiiIII=0,255 do local SynapseXen_illIillIiiiIlI,SynapseXen_iiIiiIIiiiIliII=SynapseXen_iIiiilIII(SynapseXen_liIlIllIiIIliIiiIII),SynapseXen_iIiiilIII(SynapseXen_liIlIllIiIIliIiiIII,0)SynapseXen_lIIlIil[SynapseXen_illIillIiiiIlI]=SynapseXen_iiIiiIIiiiIliII;SynapseXen_liilIi[SynapseXen_iiIiiIIiiiIliII]=SynapseXen_illIillIiiiIlI end;local function SynapseXen_lIIiIiIIiilIilIiIii(SynapseXen_IllIIliiililIII,SynapseXen_lIliiIIli,SynapseXen_lIIillllII,SynapseXen_llIiliIllIlIi)if SynapseXen_lIIillllII>=256 then SynapseXen_lIIillllII,SynapseXen_llIiliIllIlIi=0,SynapseXen_llIiliIllIlIi+1;if SynapseXen_llIiliIllIlIi>=256 then SynapseXen_lIliiIIli={}SynapseXen_llIiliIllIlIi=1 end end;SynapseXen_lIliiIIli[SynapseXen_iIiiilIII(SynapseXen_lIIillllII,SynapseXen_llIiliIllIlIi)]=SynapseXen_IllIIliiililIII;SynapseXen_lIIillllII=SynapseXen_lIIillllII+1;return SynapseXen_lIliiIIli,SynapseXen_lIIillllII,SynapseXen_llIiliIllIlIi end;local function SynapseXen_lIIIIiillllIIlIllli(SynapseXen_llilIlliiliIllli)local function SynapseXen_liiIIiIlIiiI(SynapseXen_llllIl)local SynapseXen_llIiliIllIlIi='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'SynapseXen_llllIl=string.gsub(SynapseXen_llllIl,'[^'..SynapseXen_llIiliIllIlIi..'=]','')return SynapseXen_llllIl:gsub('.',function(SynapseXen_lIiIliiIlll)if SynapseXen_lIiIliiIlll=='='then return''end;local SynapseXen_iIIIiililII,SynapseXen_ilIlllliiIiiiIll='',SynapseXen_llIiliIllIlIi:find(SynapseXen_lIiIliiIlll)-1;for SynapseXen_liIlIllIiIIliIiiIII=6,1,-1 do SynapseXen_iIIIiililII=SynapseXen_iIIIiililII..(SynapseXen_ilIlllliiIiiiIll%2^SynapseXen_liIlIllIiIIliIiiIII-SynapseXen_ilIlllliiIiiiIll%2^(SynapseXen_liIlIllIiIIliIiiIII-1)>0 and'1'or'0')end;return SynapseXen_iIIIiililII end):gsub('%d%d%d?%d?%d?%d?%d?%d?',function(SynapseXen_lIiIliiIlll)if#SynapseXen_lIiIliiIlll~=8 then return''end;local SynapseXen_IIIiIIllllIiIIli=0;for SynapseXen_liIlIllIiIIliIiiIII=1,8 do SynapseXen_IIIiIIllllIiIIli=SynapseXen_IIIiIIllllIiIIli+(SynapseXen_lIiIliiIlll:sub(SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liIlIllIiIIliIiiIII)=='1'and 2^(8-SynapseXen_liIlIllIiIIliIiiIII)or 0)end;return string.char(SynapseXen_IIIiIIllllIiIIli)end)end;SynapseXen_llilIlliiliIllli=SynapseXen_liiIIiIlIiiI(SynapseXen_llilIlliiliIllli)local SynapseXen_IllII=SynapseXen_IiIIiIill(SynapseXen_llilIlliiliIllli,1,1)if SynapseXen_IllII=="u"then return SynapseXen_IiIIiIill(SynapseXen_llilIlliiliIllli,2)elseif SynapseXen_IllII~="c"then error("Synapse Xen - Failed to verify bytecode. Please make sure your Lua implementation supports non-null terminated strings.")end;SynapseXen_llilIlliiliIllli=SynapseXen_IiIIiIill(SynapseXen_llilIlliiliIllli,2)local SynapseXen_lllIIiiliIIliiliiIIl=#SynapseXen_llilIlliiliIllli;local SynapseXen_lIliiIIli={}local SynapseXen_lIIillllII,SynapseXen_llIiliIllIlIi=0,1;local SynapseXen_ilIIIilIlIiIIIi={}local SynapseXen_ilIIiilIlilIlliiIIII=1;local SynapseXen_IillIiliiIlIl=SynapseXen_IiIIiIill(SynapseXen_llilIlliiliIllli,1,2)SynapseXen_ilIIIilIlIiIIIi[SynapseXen_ilIIiilIlilIlliiIIII]=SynapseXen_liilIi[SynapseXen_IillIiliiIlIl]or SynapseXen_lIliiIIli[SynapseXen_IillIiliiIlIl]SynapseXen_ilIIiilIlilIlliiIIII=SynapseXen_ilIIiilIlilIlliiIIII+1;for SynapseXen_liIlIllIiIIliIiiIII=3,SynapseXen_lllIIiiliIIliiliiIIl,2 do local SynapseXen_lIlIliiiilll=SynapseXen_IiIIiIill(SynapseXen_llilIlliiliIllli,SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liIlIllIiIIliIiiIII+1)local SynapseXen_liIIlilIilIlIl=SynapseXen_liilIi[SynapseXen_IillIiliiIlIl]or SynapseXen_lIliiIIli[SynapseXen_IillIiliiIlIl]if not SynapseXen_liIIlilIilIlIl then error("Synapse Xen - Failed to verify bytecode. Please make sure your Lua implementation supports non-null terminated strings.")end;local SynapseXen_lIiIiiI=SynapseXen_liilIi[SynapseXen_lIlIliiiilll]or SynapseXen_lIliiIIli[SynapseXen_lIlIliiiilll]if SynapseXen_lIiIiiI then SynapseXen_ilIIIilIlIiIIIi[SynapseXen_ilIIiilIlilIlliiIIII]=SynapseXen_lIiIiiI;SynapseXen_ilIIiilIlilIlliiIIII=SynapseXen_ilIIiilIlilIlliiIIII+1;SynapseXen_lIliiIIli,SynapseXen_lIIillllII,SynapseXen_llIiliIllIlIi=SynapseXen_lIIiIiIIiilIilIiIii(SynapseXen_liIIlilIilIlIl..SynapseXen_IiIIiIill(SynapseXen_lIiIiiI,1,1),SynapseXen_lIliiIIli,SynapseXen_lIIillllII,SynapseXen_llIiliIllIlIi)else local SynapseXen_iIiiIIliIlIi=SynapseXen_liIIlilIilIlIl..SynapseXen_IiIIiIill(SynapseXen_liIIlilIilIlIl,1,1)SynapseXen_ilIIIilIlIiIIIi[SynapseXen_ilIIiilIlilIlliiIIII]=SynapseXen_iIiiIIliIlIi;SynapseXen_ilIIiilIlilIlliiIIII=SynapseXen_ilIIiilIlilIlliiIIII+1;SynapseXen_lIliiIIli,SynapseXen_lIIillllII,SynapseXen_llIiliIllIlIi=SynapseXen_lIIiIiIIiilIilIiIii(SynapseXen_iIiiIIliIlIi,SynapseXen_lIliiIIli,SynapseXen_lIIillllII,SynapseXen_llIiliIllIlIi)end;SynapseXen_IillIiliiIlIl=SynapseXen_lIlIliiiilll end;return SynapseXen_liiIiliiIliIIliIli(SynapseXen_ilIIIilIlIiIIIi)end;local function SynapseXen_liliiilliIiIi(SynapseXen_iiilililIii,SynapseXen_liIliliilIlIiilI,SynapseXen_liIIlIIiiIIi)if SynapseXen_liIIlIIiiIIi then local SynapseXen_IIlllliiIIillIll=SynapseXen_iiilililIii/2^(SynapseXen_liIliliilIlIiilI-1)%2^(SynapseXen_liIIlIIiiIIi-1-(SynapseXen_liIliliilIlIiilI-1)+1)return SynapseXen_IIlllliiIIillIll-SynapseXen_IIlllliiIIillIll%1 else local SynapseXen_liiilIiIIl=2^(SynapseXen_liIliliilIlIiilI-1)if SynapseXen_iiilililIii%(SynapseXen_liiilIiIIl+SynapseXen_liiilIiIIl)>=SynapseXen_liiilIiIIl then return 1 else return 0 end end end;local function SynapseXen_IIliiiIIiilIIIlIIl()local SynapseXen_iiiIlIlI=SynapseXen_IIllIIIiIllIlIll(428799174,SynapseXen_iilIlii)while true do if SynapseXen_iiiIlIlI==SynapseXen_IIllIIIiIllIlIll(2424423472,SynapseXen_IIlililiIlililliI[3])then SynapseXen_lIliIiillIIIliiII=function(SynapseXen_liiiIIlilI,SynapseXen_iiliiiIiiIiIIIil)return SynapseXen_IIllIIIiIllIlIll(SynapseXen_liiiIIlilI+47091,SynapseXen_iiliiiIiiIiIIIil-6967)+SynapseXen_IIllIIIiIllIlIll(3346434684,SynapseXen_IIlililiIlililliI[2])end;SynapseXen_iiiIlIlI=SynapseXen_iiiIlIlI+SynapseXen_IIllIIIiIllIlIll(2989886816,SynapseXen_IIlililiIlililliI[3])elseif SynapseXen_iiiIlIlI==SynapseXen_IIllIIIiIllIlIll(4088607270,SynapseXen_IIlililiIlililliI[1])then SynapseXen_lIliIiillIIIliiII=function(SynapseXen_liiiIIlilI,SynapseXen_iiliiiIiiIiIIIil)return SynapseXen_IIllIIIiIllIlIll(SynapseXen_liiiIIlilI+45707,SynapseXen_iiliiiIiiIiIIIil+33988)+SynapseXen_IIllIIIiIllIlIll(1901031150,SynapseXen_iilIlii)end;SynapseXen_iiiIlIlI=SynapseXen_iiiIlIlI-SynapseXen_IIllIIIiIllIlIll(1901044028,SynapseXen_iilIlii)elseif SynapseXen_iiiIlIlI==SynapseXen_IIllIIIiIllIlIll(1408778144,SynapseXen_iilIlii)then SynapseXen_lIliIiillIIIliiII=function(SynapseXen_liiiIIlilI,SynapseXen_iiliiiIiiIiIIIil)return SynapseXen_IIllIIIiIllIlIll(SynapseXen_liiiIIlilI+22920,SynapseXen_iiliiiIiiIiIIIil+14493)+SynapseXen_IIllIIIiIllIlIll(1901022511,SynapseXen_iilIlii)end;SynapseXen_iiiIlIlI=SynapseXen_iiiIlIlI+SynapseXen_IIllIIIiIllIlIll(1901065915,SynapseXen_iilIlii)elseif SynapseXen_iiiIlIlI==SynapseXen_IIllIIIiIllIlIll(2481862439,SynapseXen_iilIlii)then return elseif SynapseXen_iiiIlIlI==SynapseXen_IIllIIIiIllIlIll(1897159840,SynapseXen_IIlililiIlililliI[5])then SynapseXen_lIliIiillIIIliiII=function(SynapseXen_liiiIIlilI,SynapseXen_iiliiiIiiIiIIIil)return SynapseXen_IIllIIIiIllIlIll(SynapseXen_liiiIIlilI-9772,SynapseXen_iiliiiIiiIiIIIil+2955)+SynapseXen_IIllIIIiIllIlIll(2989895594,SynapseXen_IIlililiIlililliI[3])end;SynapseXen_iiiIlIlI=SynapseXen_iiiIlIlI-SynapseXen_IIllIIIiIllIlIll(1901055621,SynapseXen_iilIlii)elseif SynapseXen_iiiIlIlI==SynapseXen_IIllIIIiIllIlIll(1408773824,SynapseXen_iilIlii)then SynapseXen_lIliIiillIIIliiII=function(SynapseXen_liiiIIlilI,SynapseXen_iiliiiIiiIiIIIil)return SynapseXen_IIllIIIiIllIlIll(SynapseXen_liiiIIlilI-26859,SynapseXen_iiliiiIiiIiIIIil-49981)-SynapseXen_IIllIIIiIllIlIll(2989891266,SynapseXen_IIlililiIlililliI[3])end;SynapseXen_iiiIlIlI=SynapseXen_iiiIlIlI-SynapseXen_IIllIIIiIllIlIll(1354436567,SynapseXen_IIlililiIlililliI[1])elseif SynapseXen_iiiIlIlI==SynapseXen_IIllIIIiIllIlIll(2946804119,SynapseXen_IIlililiIlililliI[1])then SynapseXen_lIliIiillIIIliiII=function(SynapseXen_liiiIIlilI,SynapseXen_iiliiiIiiIiIIIil)return SynapseXen_IIllIIIiIllIlIll(SynapseXen_liiiIIlilI+2265,SynapseXen_iiliiiIiiIiIIIil+17008)-SynapseXen_IIllIIIiIllIlIll(1233451294,SynapseXen_IIlililiIlililliI[4])end;SynapseXen_iiiIlIlI=SynapseXen_IIllIIIiIllIlIll(SynapseXen_iiiIlIlI,SynapseXen_IIllIIIiIllIlIll(2780458112,SynapseXen_IIlililiIlililliI[6]))elseif SynapseXen_iiiIlIlI==SynapseXen_IIllIIIiIllIlIll(2424406245,SynapseXen_IIlililiIlililliI[3])then SynapseXen_lIliIiillIIIliiII=function(SynapseXen_liiiIIlilI,SynapseXen_iiliiiIiiIiIIIil)return SynapseXen_IIllIIIiIllIlIll(SynapseXen_liiiIIlilI-36731,SynapseXen_iiliiiIiiIiIIIil-10434)-SynapseXen_IIllIIIiIllIlIll(1901067276,SynapseXen_iilIlii)end;SynapseXen_iiiIlIlI=SynapseXen_iiiIlIlI-SynapseXen_IIllIIIiIllIlIll(2989902899,SynapseXen_IIlililiIlililliI[3])elseif SynapseXen_iiiIlIlI==SynapseXen_IIllIIIiIllIlIll(1725143484,SynapseXen_IIlililiIlililliI[4])then SynapseXen_lIliIiillIIIliiII=function(SynapseXen_liiiIIlilI,SynapseXen_iiliiiIiiIiIIIil)return SynapseXen_IIllIIIiIllIlIll(SynapseXen_liiiIIlilI+45219,SynapseXen_iiliiiIiiIiIIIil-11993)-SynapseXen_IIllIIIiIllIlIll(1901043139,SynapseXen_iilIlii)end;SynapseXen_iiiIlIlI=SynapseXen_IIllIIIiIllIlIll(SynapseXen_iiiIlIlI,SynapseXen_IIllIIIiIllIlIll(2701654729,SynapseXen_iilIlii))elseif SynapseXen_iiiIlIlI==SynapseXen_IIllIIIiIllIlIll(428799174,SynapseXen_iilIlii)then SynapseXen_lIliIiillIIIliiII=function(SynapseXen_liiiIIlilI,SynapseXen_iiliiiIiiIiIIIil)return SynapseXen_IIllIIIiIllIlIll(SynapseXen_liiiIIlilI+31353,SynapseXen_iiliiiIiiIiIIIil-41898)+SynapseXen_IIllIIIiIllIlIll(3087507234,SynapseXen_IIlililiIlililliI[6])end;SynapseXen_iiiIlIlI=SynapseXen_IIllIIIiIllIlIll(SynapseXen_iiiIlIlI,SynapseXen_IIllIIIiIllIlIll(3129408680,SynapseXen_iilIlii))elseif SynapseXen_iiiIlIlI==SynapseXen_IIllIIIiIllIlIll(1408768109,SynapseXen_iilIlii)then SynapseXen_lIliIiillIIIliiII=function(SynapseXen_liiiIIlilI,SynapseXen_iiliiiIiiIiIIIil)return SynapseXen_IIllIIIiIllIlIll(SynapseXen_liiiIIlilI-46921,SynapseXen_iiliiiIiiIiIIIil+42220)-SynapseXen_IIllIIIiIllIlIll(1901024469,SynapseXen_iilIlii)end;SynapseXen_iiiIlIlI=SynapseXen_IIllIIIiIllIlIll(SynapseXen_iiiIlIlI,SynapseXen_IIllIIIiIllIlIll(2091863138,SynapseXen_iilIlii))elseif SynapseXen_iiiIlIlI==SynapseXen_IIllIIIiIllIlIll(3527956274,SynapseXen_iilIlii)then SynapseXen_lIliIiillIIIliiII=function(SynapseXen_liiiIIlilI,SynapseXen_iiliiiIiiIiIIIil)return SynapseXen_IIllIIIiIllIlIll(SynapseXen_liiiIIlilI-39964,SynapseXen_iiliiiIiiIiIIIil+39010)+SynapseXen_IIllIIIiIllIlIll(2478193823,SynapseXen_IIlililiIlililliI[5])end;SynapseXen_iiiIlIlI=SynapseXen_IIllIIIiIllIlIll(SynapseXen_iiiIlIlI,SynapseXen_IIllIIIiIllIlIll(4043283656,SynapseXen_iilIlii))elseif SynapseXen_iiiIlIlI==SynapseXen_IIllIIIiIllIlIll(946458440,SynapseXen_IIlililiIlililliI[2])then SynapseXen_lIliIiillIIIliiII=function(SynapseXen_liiiIIlilI,SynapseXen_iiliiiIiiIiIIIil)return SynapseXen_IIllIIIiIllIlIll(SynapseXen_liiiIIlilI-7749,SynapseXen_iiliiiIiiIiIIIil+16307)-SynapseXen_IIllIIIiIllIlIll(1901055640,SynapseXen_iilIlii)end;SynapseXen_iiiIlIlI=SynapseXen_iiiIlIlI+SynapseXen_IIllIIIiIllIlIll(3087512060,SynapseXen_IIlililiIlililliI[6])end end end;local function SynapseXen_illiliIiiilI(SynapseXen_lIilIiIlililil)local SynapseXen_ilIiIIll=1;local SynapseXen_iiIilIlllIIiiIillI;local SynapseXen_iIlIililiIillill;local function SynapseXen_IliIilIiilIlIiIi()local SynapseXen_iiiilllililiI=SynapseXen_lliIllli(SynapseXen_lIilIiIlililil,SynapseXen_ilIiIIll,SynapseXen_ilIiIIll)SynapseXen_ilIiIIll=SynapseXen_ilIiIIll+1;return SynapseXen_iiiilllililiI end;local function SynapseXen_llIiilIiIIiIl()local SynapseXen_ilIlliIlIIi,SynapseXen_liiiIIlilI,SynapseXen_iiliiiIiiIiIIIil,SynapseXen_illiliIlliil=SynapseXen_lliIllli(SynapseXen_lIilIiIlililil,SynapseXen_ilIiIIll,SynapseXen_ilIiIIll+3)SynapseXen_ilIiIIll=SynapseXen_ilIiIIll+4;return SynapseXen_illiliIlliil*16777216+SynapseXen_iiliiiIiiIiIIIil*65536+SynapseXen_liiiIIlilI*256+SynapseXen_ilIlliIlIIi end;local function SynapseXen_liIIIiIIlliilliiIIi()return SynapseXen_llIiilIiIIiIl()*4294967296+SynapseXen_llIiilIiIIiIl()end;local function SynapseXen_IiilIliiIiIII()local SynapseXen_llilIlllIIlIli=SynapseXen_lllllIIilliIlilIIIii(SynapseXen_llIiilIiIIiIl(),SynapseXen_iIIllIiIiIIiiil[3922204368]or(function()local SynapseXen_lIiIliiIlll="double-header fair! this rationalization has a overenthusiastically anticheat! you will get nonpermissible for exploiting!"SynapseXen_iIIllIiIiIIiiil[3922204368]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(2927306718,1484069903),SynapseXen_IIllIIIiIllIlIll(3625670894,SynapseXen_IIlililiIlililliI[6]))-string.len(SynapseXen_lIiIliiIlll)-#{3211363449,1444602210,1221012631,872587946,545423060}return SynapseXen_iIIllIiIiIIiiil[3922204368]end)())local SynapseXen_liiilll=SynapseXen_lllllIIilliIlilIIIii(SynapseXen_llIiilIiIIiIl(),SynapseXen_iIIllIiIiIIiiil[441064925]or(function()local SynapseXen_lIiIliiIlll="wait for someone on devforum to say they are gonna deobfuscate this"SynapseXen_iIIllIiIiIIiiil[441064925]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(152427244,891543519),SynapseXen_IIllIIIiIllIlIll(2404026430,SynapseXen_IIlililiIlililliI[5]))-string.len(SynapseXen_lIiIliiIlll)-#{3580489738}return SynapseXen_iIIllIiIiIIiiil[441064925]end)())local SynapseXen_ilIIiIlIlIIIi=1;local SynapseXen_IiIiiliIIIiiliI=SynapseXen_liliiilliIiIi(SynapseXen_liiilll,1,20)*2^32+SynapseXen_llilIlllIIlIli;local SynapseXen_lIilllllIilli=SynapseXen_liliiilliIiIi(SynapseXen_liiilll,21,31)local SynapseXen_IiIlIilIIllilllii=(-1)^SynapseXen_liliiilliIiIi(SynapseXen_liiilll,32)if SynapseXen_lIilllllIilli==0 then if SynapseXen_IiIiiliIIIiiliI==0 then return SynapseXen_IiIlIilIIllilllii*0 else SynapseXen_lIilllllIilli=1;SynapseXen_ilIIiIlIlIIIi=0 end elseif SynapseXen_lIilllllIilli==2047 then if SynapseXen_IiIiiliIIIiiliI==0 then return SynapseXen_IiIlIilIIllilllii*1/0 else return SynapseXen_IiIlIilIIllilllii*0/0 end end;return math.ldexp(SynapseXen_IiIlIilIIllilllii,SynapseXen_lIilllllIilli-1023)*(SynapseXen_ilIIiIlIlIIIi+SynapseXen_IiIiiliIIIiiliI/2^52)end;local function SynapseXen_lIIiillIlIililliil(SynapseXen_IIIIIIlliilliIiilIii)local SynapseXen_iiiililIIiilI;if SynapseXen_IIIIIIlliilliIiilIii then SynapseXen_iiiililIIiilI=SynapseXen_IiIIiIill(SynapseXen_lIilIiIlililil,SynapseXen_ilIiIIll,SynapseXen_ilIiIIll+SynapseXen_IIIIIIlliilliIiilIii-1)SynapseXen_ilIiIIll=SynapseXen_ilIiIIll+SynapseXen_IIIIIIlliilliIiilIii else SynapseXen_IIIIIIlliilliIiilIii=SynapseXen_iiIilIlllIIiiIillI()if SynapseXen_IIIIIIlliilliIiilIii==0 then return""end;SynapseXen_iiiililIIiilI=SynapseXen_IiIIiIill(SynapseXen_lIilIiIlililil,SynapseXen_ilIiIIll,SynapseXen_ilIiIIll+SynapseXen_IIIIIIlliilliIiilIii-1)SynapseXen_ilIiIIll=SynapseXen_ilIiIIll+SynapseXen_IIIIIIlliilliIiilIii end;return SynapseXen_iiiililIIiilI end;local function SynapseXen_lliIIilIlIIlli(SynapseXen_iiiililIIiilI)local SynapseXen_IIlllliiIIillIll={}for SynapseXen_liIlIllIiIIliIiiIII=1,#SynapseXen_iiiililIIiilI do local SynapseXen_liilIi=SynapseXen_iiiililIIiilI:sub(SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liIlIllIiIIliIiiIII)SynapseXen_IIlllliiIIillIll[#SynapseXen_IIlllliiIIillIll+1]=string.char(SynapseXen_IIllIIIiIllIlIll(string.byte(SynapseXen_liilIi),SynapseXen_iIIllIiIiIIiiil[930351501]or(function()local SynapseXen_lIiIliiIlll="SYNAPSE XEN [FE BYPASS] [BETTER THEN LURAPH] [AMAZING] OMG OMG OMG !!!!!!"SynapseXen_iIIllIiIiIIiiil[930351501]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(3435485925,2804798435),SynapseXen_IIllIIIiIllIlIll(447134648,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{2520551987,538180336,3747917572}return SynapseXen_iIIllIiIiIIiiil[930351501]end)()))end;return table.concat(SynapseXen_IIlllliiIIillIll)end;local function SynapseXen_IilIiIll()local SynapseXen_liilllll={}local SynapseXen_iiIIIlIiliIlIllIii={}local SynapseXen_iIliiiIllI={}local SynapseXen_IillIllillllIiI={[SynapseXen_iIIllIiIiIIiiil[3019502177]or(function()local SynapseXen_lIiIliiIlll="sometimes it be like that"SynapseXen_iIIllIiIiIIiiil[3019502177]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(4040012619,1359645994),SynapseXen_IIllIIIiIllIlIll(4006217184,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{2057373501,1093043668,1098951449,3372861880,3415726055,3157401948,4107063392,2385940607,1768787818}return SynapseXen_iIIllIiIiIIiiil[3019502177]end)()]=SynapseXen_iiIIIlIiliIlIllIii,[SynapseXen_iIIllIiIiIIiiil[1725870933]or(function(...)local SynapseXen_lIiIliiIlll="sponsored by ironbrew, jk xen is better"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(784710283,1248665744)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(933927996,3361071209)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[1725870933]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(430746676,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(94704036,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{269804423,3734459195,3632140636,3991971020,70830757,2575851739,1158008783,2882172693}return SynapseXen_iIIllIiIiIIiiil[1725870933]end)("llIliIi")]=SynapseXen_iIliiiIllI,[SynapseXen_iIIllIiIiIIiiil[2497628056]or(function()local SynapseXen_lIiIliiIlll="hi devforum"SynapseXen_iIIllIiIiIIiiil[2497628056]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(3590836650,1411627976),SynapseXen_IIllIIIiIllIlIll(3231024771,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{1495830614,544140071}return SynapseXen_iIIllIiIiIIiiil[2497628056]end)()]=SynapseXen_liilllll}SynapseXen_IillIllillllIiI[16260543]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IliIilIiilIlIiIi(),SynapseXen_iIIllIiIiIIiiil[3706996977]or(function(...)local SynapseXen_lIiIliiIlll="hi my 2.5mb script doesn't work with xen please help"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(936031445,2435896273)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(562042133,3732944504)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[3706996977]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(2294533476,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(1601593361,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{3689285308,482188221,1939521241}return SynapseXen_iIIllIiIiIIiiil[3706996977]end)("llIi","lillIi",8268,"lIiIIilIiIliIIiiII",543,{},6148,{},{}))SynapseXen_IliIilIiilIlIiIi()SynapseXen_IillIllillllIiI[2027721605]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IliIilIiilIlIiIi(),SynapseXen_iIIllIiIiIIiiil[3141539601]or(function()local SynapseXen_lIiIliiIlll="now comes with a free n word pass"SynapseXen_iIIllIiIiIIiiil[3141539601]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(4227446374,3024123398),SynapseXen_IIllIIIiIllIlIll(1056349256,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{1592806603,720136767,2901106098}return SynapseXen_iIIllIiIiIIiiil[3141539601]end)())SynapseXen_llIiilIiIIiIl()for SynapseXen_IIiliilIIi=1,SynapseXen_IIllIIIiIllIlIll(SynapseXen_iIlIililiIillill(),SynapseXen_iIIllIiIiIIiiil[1298357227]or(function(...)local SynapseXen_lIiIliiIlll="so if you'we nyot awawe of expwoiting by this point, you've pwobabwy been wiving undew a wock that the pionyeews used to wide fow miwes. wobwox is often seen as an expwoit-infested gwound by most fwom the suwface, awthough this isn't the case."local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(981724700,4254950583)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(3556562178,738423684)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[1298357227]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(3675625391,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(2515090462,SynapseXen_IIlililiIlililliI[1]))-string.len(SynapseXen_lIiIliiIlll)-#{1868521607,763419338,2823302068,1766855262,4198561121,3978131292}return SynapseXen_iIIllIiIiIIiiil[1298357227]end)(14197,{},{},{},"IiIIlllilI","lIIl",746))do SynapseXen_IliIilIiilIlIiIi()local SynapseXen_liIllIiIIiIiIllil=SynapseXen_IliIilIiilIlIiIi()SynapseXen_llIiilIiIIiIl()local SynapseXen_ilIiIlilIllIIliIIiI;if SynapseXen_liIllIiIIiIiIllil==(SynapseXen_iIIllIiIiIIiiil[1755098522]or(function()local SynapseXen_lIiIliiIlll="skisploit is the superior obfuscator, clearly."SynapseXen_iIIllIiIiIIiiil[1755098522]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(3882540919,61286931),SynapseXen_IIllIIIiIllIlIll(2508331673,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{1565464945,798775802,3014790863,2237590515}return SynapseXen_iIIllIiIiIIiiil[1755098522]end)())then SynapseXen_ilIiIlilIllIIliIIiI=SynapseXen_IliIilIiilIlIiIi()~=0 elseif SynapseXen_liIllIiIIiIiIllil==(SynapseXen_iIIllIiIiIIiiil[753391155]or(function()local SynapseXen_lIiIliiIlll="yed"SynapseXen_iIIllIiIiIIiiil[753391155]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(1981533234,3463002095),SynapseXen_IIllIIIiIllIlIll(3376193628,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{3825911576,857203731}return SynapseXen_iIIllIiIiIIiiil[753391155]end)())then SynapseXen_ilIiIlilIllIIliIIiI=SynapseXen_IiilIliiIiIII()elseif SynapseXen_liIllIiIIiIiIllil==(SynapseXen_iIIllIiIiIIiiil[2131655648]or(function(...)local SynapseXen_lIiIliiIlll="hi xen doesn't work on sk8r please help"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(1764211396,406461791)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(1822112539,2472855401)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[2131655648]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(2459157013,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(620445690,SynapseXen_IIlililiIlililliI[2]))-string.len(SynapseXen_lIiIliiIlll)-#{821634790,1795496409,3624646286,3563446582,176696419}return SynapseXen_iIIllIiIiIIiiil[2131655648]end)(1408,2427,7160,{},"IIlIiIlIiIIIllIlIIl"))then SynapseXen_ilIiIlilIllIIliIIiI=SynapseXen_IiIIiIill(SynapseXen_lliIIilIlIIlli(SynapseXen_lIIiillIlIililliil()),1,-2)end;SynapseXen_iiIIIlIiliIlIllIii[SynapseXen_IIiliilIIi-1]=SynapseXen_ilIiIlilIllIIliIIiI end;SynapseXen_llIiilIiIIiIl()SynapseXen_llIiilIiIIiIl()for SynapseXen_IIiliilIIi=1,SynapseXen_IIllIIIiIllIlIll(SynapseXen_iIlIililiIillill(),SynapseXen_iIIllIiIiIIiiil[3015579469]or(function(...)local SynapseXen_lIiIliiIlll="wow xen is shit buy luraph ok"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(500702591,2998711066)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(1936397503,2358587039)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[3015579469]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(101645049,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(2706068750,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{3426201701,4134718834}return SynapseXen_iIIllIiIiIIiiil[3015579469]end)({},"lIiiliilillllIlI"))do local SynapseXen_lIIlIliIIlIlIIll=SynapseXen_IIllIIIiIllIlIll(SynapseXen_llIiilIiIIiIl(),SynapseXen_iIIllIiIiIIiiil[3836211975]or(function()local SynapseXen_lIiIliiIlll="inb4 posted on exploit reports section"SynapseXen_iIIllIiIiIIiiil[3836211975]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(3915050000,1774879098),SynapseXen_IIllIIIiIllIlIll(2176146220,SynapseXen_IIlililiIlililliI[1]))-string.len(SynapseXen_lIiIliiIlll)-#{520897813,3256820547,3029084378,1919768935,2828361003,3424129823,100455867,1326933865}return SynapseXen_iIIllIiIiIIiiil[3836211975]end)())local SynapseXen_Iliilll=SynapseXen_IliIilIiilIlIiIi()SynapseXen_IliIilIiilIlIiIi()local SynapseXen_liIllIiIIiIiIllil=SynapseXen_IliIilIiilIlIiIi()SynapseXen_llIiilIiIIiIl()local SynapseXen_IilIlIIi={[578423135]=SynapseXen_lIIlIliIIlIlIIll,[1679441683]=SynapseXen_Iliilll,[1020830612]=SynapseXen_liliiilliIiIi(SynapseXen_lIIlIliIIlIlIIll,1,6),[1256073398]=SynapseXen_liliiilliIiIi(SynapseXen_lIIlIliIIlIlIIll,7,14)}if SynapseXen_liIllIiIIiIiIllil==(SynapseXen_iIIllIiIiIIiiil[1557630205]or(function(...)local SynapseXen_lIiIliiIlll="xen best rerubi paste"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(3253876776,1842403041)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(3346966604,947995247)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[1557630205]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(2557189724,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(2110556238,SynapseXen_IIlililiIlililliI[4]))-string.len(SynapseXen_lIiIliiIlll)-#{2964022233,1277259272,1251785941,498999551,654409498,2823412428,1529152314,2250373372,2533586781,4012271994}return SynapseXen_iIIllIiIiIIiiil[1557630205]end)("iliIiiIliIiIIili","liil",6460,"l",{},{}))then SynapseXen_IilIlIIi[1050581631]=SynapseXen_liliiilliIiIi(SynapseXen_lIIlIliIIlIlIIll,24,32)SynapseXen_IilIlIIi[1674574548]=SynapseXen_liliiilliIiIi(SynapseXen_lIIlIliIIlIlIIll,15,23)elseif SynapseXen_liIllIiIIiIiIllil==(SynapseXen_iIIllIiIiIIiiil[989266837]or(function()local SynapseXen_lIiIliiIlll="my way to go against expwoiting is to have safety measuwes. i 1 wocawscwipt and onwy moduwes. hewe's how it wowks: this scwipt bewow stowes the moduwes in a tabwe fow each moduwe we send the wist with the moduwes and moduwe infowmation and use inyit a function in my moduwe that wiww stowe the info and aftew it has send to aww the moduwes it wiww dewete them. so whenyevew the cwient twies to hack they cant get the moduwes. onwy this peace of wocawscwipt."SynapseXen_iIIllIiIiIIiiil[989266837]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(2598779635,3334222662),SynapseXen_IIllIIIiIllIlIll(3831329426,SynapseXen_IIlililiIlililliI[6]))-string.len(SynapseXen_lIiIliiIlll)-#{2421527813}return SynapseXen_iIIllIiIiIIiiil[989266837]end)())then SynapseXen_IilIlIIi[649503491]=SynapseXen_liliiilliIiIi(SynapseXen_lIIlIliIIlIlIIll,15,32)elseif SynapseXen_liIllIiIIiIiIllil==(SynapseXen_iIIllIiIiIIiiil[799857804]or(function()local SynapseXen_lIiIliiIlll="baby i just fell for uwu,,,,,, i wanna be with uwu!11!!"SynapseXen_iIIllIiIiIIiiil[799857804]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(552046598,355233861),SynapseXen_IIllIIIiIllIlIll(2281520312,SynapseXen_IIlililiIlililliI[3]))-string.len(SynapseXen_lIiIliiIlll)-#{1020995231,290470819,2999552751,609577088}return SynapseXen_iIIllIiIiIIiiil[799857804]end)())then SynapseXen_IilIlIIi[618162604]=SynapseXen_liliiilliIiIi(SynapseXen_lIIlIliIIlIlIIll,15,32)-131071 end;SynapseXen_liilllll[SynapseXen_IIiliilIIi]=SynapseXen_IilIlIIi end;SynapseXen_IliIilIiilIlIiIi()for SynapseXen_IIiliilIIi=1,SynapseXen_IIllIIIiIllIlIll(SynapseXen_iIlIililiIillill(),SynapseXen_iIIllIiIiIIiiil[1639457351]or(function(...)local SynapseXen_lIiIliiIlll="level 1 crook = luraph, level 100 boss = xen"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(2873800884,2152351302)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(2751603316,1543393779)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[1639457351]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(2010760486,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(3452859345,SynapseXen_IIlililiIlililliI[6]))-string.len(SynapseXen_lIiIliiIlll)-#{883125201,2683816002,3679966296,3048391349,2671723009,3384333580,2758557835,1735340154,3670086195,338218902}return SynapseXen_iIIllIiIiIIiiil[1639457351]end)("llIIlillliIliiIiII",168,{},13153,"iiiiliIilii",{},9532,"iiIii","liIIIlIliiiilIIIlI"))do SynapseXen_iIliiiIllI[SynapseXen_IIiliilIIi-1]=SynapseXen_IilIiIll()end;return SynapseXen_IillIllillllIiI end;do assert(SynapseXen_lIIiillIlIililliil(4)=="\27Xen","Synapse Xen - Failed to verify bytecode. Please make sure your Lua implementation supports non-null terminated strings.")SynapseXen_iIlIililiIillill=SynapseXen_llIiilIiIIiIl;SynapseXen_iiIilIlllIIiiIillI=SynapseXen_llIiilIiIIiIl;local SynapseXen_IlIll=SynapseXen_lIIiillIlIililliil()SynapseXen_IliIilIiilIlIiIi()SynapseXen_IliIilIiilIlIiIi()SynapseXen_iilIlii=SynapseXen_IIlIIIlIIIIlllIIliI(SynapseXen_iIlIililiIillill())SynapseXen_IliIilIiilIlIiIi()SynapseXen_llIiilIiIIiIl()local SynapseXen_llilIlIllIIliIIiIIli=0;for SynapseXen_liIlIllIiIIliIiiIII=1,#SynapseXen_IlIll do local SynapseXen_liilIi=SynapseXen_IlIll:sub(SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liIlIllIiIIliIiiIII)SynapseXen_llilIlIllIIliIIiIIli=SynapseXen_llilIlIllIIliIIiIIli+string.byte(SynapseXen_liilIi)end;SynapseXen_llilIlIllIIliIIiIIli=SynapseXen_IIllIIIiIllIlIll(SynapseXen_llilIlIllIIliIIiIIli,SynapseXen_iilIlii)for SynapseXen_IIiliilIIi=1,SynapseXen_IliIilIiilIlIiIi()do SynapseXen_IIlililiIlililliI[SynapseXen_IIiliilIIi]=SynapseXen_lllllIIilliIlilIIIii(SynapseXen_iIlIililiIillill(),SynapseXen_llilIlIllIIliIIiIIli)end;SynapseXen_IIliiiIIiilIIIlIIl()end;return SynapseXen_IilIiIll()end;local function SynapseXen_illIiIlIlil(...)return SynapseXen_IiliilliIIill('#',...),{...}end;local function SynapseXen_liIlIl(SynapseXen_IillIllillllIiI,SynapseXen_liliiiiIIil,SynapseXen_iIiIllillIlIlIllliii)local SynapseXen_liilllll=SynapseXen_IillIllillllIiI[SynapseXen_iIIllIiIiIIiiil[2497628056]or(function()local SynapseXen_lIiIliiIlll="hi devforum"SynapseXen_iIIllIiIiIIiiil[2497628056]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(3590836650,1411627976),SynapseXen_IIllIIIiIllIlIll(3231024771,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{1495830614,544140071}return SynapseXen_iIIllIiIiIIiiil[2497628056]end)()]local SynapseXen_iiIIIlIiliIlIllIii=SynapseXen_IillIllillllIiI[SynapseXen_iIIllIiIiIIiiil[3019502177]or(function()local SynapseXen_lIiIliiIlll="sometimes it be like that"SynapseXen_iIIllIiIiIIiiil[3019502177]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(4040012619,1359645994),SynapseXen_IIllIIIiIllIlIll(4006217184,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{2057373501,1093043668,1098951449,3372861880,3415726055,3157401948,4107063392,2385940607,1768787818}return SynapseXen_iIIllIiIiIIiiil[3019502177]end)()]local SynapseXen_iIliiiIllI=SynapseXen_IillIllillllIiI[SynapseXen_iIIllIiIiIIiiil[1725870933]or(function(...)local SynapseXen_lIiIliiIlll="sponsored by ironbrew, jk xen is better"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(784710283,1248665744)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(933927996,3361071209)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[1725870933]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(430746676,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(94704036,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{269804423,3734459195,3632140636,3991971020,70830757,2575851739,1158008783,2882172693}return SynapseXen_iIIllIiIiIIiiil[1725870933]end)("llIliIi")]return function(...)local SynapseXen_IIilIlIiIIIi,SynapseXen_IIlIIiliIil=1,-1;local SynapseXen_IlllIIIllIii,SynapseXen_lIliI={},SynapseXen_IiliilliIIill('#',...)-1;local SynapseXen_liiiIlilliIIllIl=0;local SynapseXen_lIlIiIIlilII={}local SynapseXen_liilliiiiIiiIi={}local SynapseXen_lliliiiliIiiIIliiI=setmetatable({},{__index=SynapseXen_lIlIiIIlilII,__newindex=function(SynapseXen_llIiliIiIlIlIiiiil,SynapseXen_llliIliiIli,SynapseXen_lilli)if SynapseXen_llliIliiIli>SynapseXen_IIlIIiliIil then SynapseXen_IIlIIiliIil=SynapseXen_llliIliiIli end;SynapseXen_lIlIiIIlilII[SynapseXen_llliIliiIli]=SynapseXen_lilli end})local function SynapseXen_iilIIllilllIIl()local SynapseXen_IilIlIIi,SynapseXen_iiliIiI;while true do SynapseXen_IilIlIIi=SynapseXen_liilllll[SynapseXen_IIilIlIiIIIi]SynapseXen_iiliIiI=SynapseXen_IilIlIIi[1679441683]SynapseXen_IIilIlIiIIIi=SynapseXen_IIilIlIiIIIi+1;if SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[3003320860]or(function()local SynapseXen_lIiIliiIlll="HELP ME PEOPLE ARE CRASHING MY GAME PLZ HELP"SynapseXen_iIIllIiIiIIiiil[3003320860]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(909621377,1746880184),SynapseXen_IIllIIIiIllIlIll(795266705,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{3657473378}return SynapseXen_iIIllIiIiIIiiil[3003320860]end)())then local SynapseXen_iIlliiil=SynapseXen_iIliiiIllI[SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IilIlIIi[649503491],SynapseXen_iIIllIiIiIIiiil[2877679875]or(function()local SynapseXen_lIiIliiIlll="this is a christian obfuscator, no cursing allowed in our scripts"SynapseXen_iIIllIiIiIIiiil[2877679875]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(1019463230,2870944160),SynapseXen_IIllIIIiIllIlIll(3730344133,SynapseXen_IIlililiIlililliI[4]))-SynapseXen_iiliIiI-string.len(SynapseXen_lIiIliiIlll)-#{2786362706,3656237595,4200673345,932987696,450783285}return SynapseXen_iIIllIiIiIIiiil[2877679875]end)(),262144)]local SynapseXen_IIlIllIliIlll=SynapseXen_lliliiiliIiiIIliiI;local SynapseXen_liIiliilliI;local SynapseXen_iliIliIiIl;if SynapseXen_iIlliiil[16260543]~=0 then SynapseXen_liIiliilliI={}SynapseXen_iliIliIiIl=setmetatable({},{__index=function(SynapseXen_llIiliIiIlIlIiiiil,SynapseXen_llliIliiIli)local SynapseXen_iIiIIiiillIIIlIli=SynapseXen_liIiliilliI[SynapseXen_llliIliiIli]return SynapseXen_iIiIIiiillIIIlIli[1][SynapseXen_iIiIIiiillIIIlIli[2]]end,__newindex=function(SynapseXen_llIiliIiIlIlIiiiil,SynapseXen_llliIliiIli,SynapseXen_lilli)local SynapseXen_iIiIIiiillIIIlIli=SynapseXen_liIiliilliI[SynapseXen_llliIliiIli]SynapseXen_iIiIIiiillIIIlIli[1][SynapseXen_iIiIIiiillIIIlIli[2]]=SynapseXen_lilli end})for SynapseXen_IIiliilIIi=1,SynapseXen_iIlliiil[16260543]do local SynapseXen_IlIIIiliiiiIi=SynapseXen_liilllll[SynapseXen_IIilIlIiIIIi]if SynapseXen_IlIIIiliiiiIi[1679441683]==(SynapseXen_iIIllIiIiIIiiil[1086230499]or(function()local SynapseXen_lIiIliiIlll="luraph better then xen bros :pensive:"SynapseXen_iIIllIiIiIIiiil[1086230499]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(683218740,1599446335),SynapseXen_IIllIIIiIllIlIll(659981502,SynapseXen_IIlililiIlililliI[1]))-string.len(SynapseXen_lIiIliiIlll)-#{2045501456,3767546500,47572388,2344193800,3360278877,2085673125,488482437,468572092}return SynapseXen_iIIllIiIiIIiiil[1086230499]end)())then SynapseXen_liIiliilliI[SynapseXen_IIiliilIIi-1]={SynapseXen_IIlIllIliIlll,SynapseXen_IIllIIIiIllIlIll(SynapseXen_IlIIIiliiiiIi[1050581631],SynapseXen_iIIllIiIiIIiiil[2212628897]or(function(...)local SynapseXen_lIiIliiIlll="what are you trying to say? that fucking one dot + dot + dot + many dots is not adding adding 1 dot + dot and then adding all the dots together????"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(1783034939,1847675657)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(3440235622,854749162)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[2212628897]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(4064197554,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(825204243,SynapseXen_IIlililiIlililliI[2]))-string.len(SynapseXen_lIiIliiIlll)-#{699919320,2635247670,4167157097,3109450281,3445036061,2458692030,1182103438,4254100401}return SynapseXen_iIIllIiIiIIiiil[2212628897]end)(1342,6749,12005))}elseif SynapseXen_IlIIIiliiiiIi[1679441683]==(SynapseXen_iIIllIiIiIIiiil[2655647577]or(function(...)local SynapseXen_lIiIliiIlll="now with shitty xor string obfuscation"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(1240997023,2273737871)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(630157632,3664804173)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[2655647577]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(1810871781,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(3570593078,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{3593461914}return SynapseXen_iIIllIiIiIIiiil[2655647577]end)({},9330,{},{},383,"IlliiIlIilIIIl",2902,"IiiiiiiIIliIiIlIIi","Ii"))then SynapseXen_liIiliilliI[SynapseXen_IIiliilIIi-1]={SynapseXen_iIiIllillIlIlIllliii,SynapseXen_IIllIIIiIllIlIll(SynapseXen_IlIIIiliiiiIi[1050581631],SynapseXen_iIIllIiIiIIiiil[816739065]or(function()local SynapseXen_lIiIliiIlll="this is so sad, alexa play ripull.mp4"SynapseXen_iIIllIiIiIIiiil[816739065]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(581143379,851195119),SynapseXen_IIllIIIiIllIlIll(1632657544,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{1689114238,3626398311,2851595389}return SynapseXen_iIIllIiIiIIiiil[816739065]end)())}end;SynapseXen_IIilIlIiIIIi=SynapseXen_IIilIlIiIIIi+1 end;SynapseXen_liilliiiiIiiIi[#SynapseXen_liilliiiiIiiIi+1]=SynapseXen_liIiliilliI end;SynapseXen_IIlIllIliIlll[SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[1734341702]or(function(...)local SynapseXen_lIiIliiIlll="https://twitter.com/Ripull_RBLX/status/1059334518581145603"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(2166806214,617651623)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(3546498207,748464034)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[1734341702]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(3486502076,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(4186951653,SynapseXen_IIlililiIlililliI[5]))-string.len(SynapseXen_lIiIliiIlll)-#{636770287,4104759773,1145053037,2259465,3119475668,1153405783,826322619,2535940931,2956170068,624977999}return SynapseXen_iIIllIiIiIIiiil[1734341702]end)("iIliilIiliIIIiilI",3307,4720),256)]=SynapseXen_liIlIl(SynapseXen_iIlliiil,SynapseXen_liliiiiIIil,SynapseXen_iliIliIiIl)elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[1349505900]or(function()local SynapseXen_lIiIliiIlll="pain exist is gonna connect the dots of xen"SynapseXen_iIIllIiIiIIiiil[1349505900]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(1003488229,2213474977),SynapseXen_IIllIIIiIllIlIll(4054140332,SynapseXen_IIlililiIlililliI[4]))-string.len(SynapseXen_lIiIliiIlll)-#{56584742,1203595119}return SynapseXen_iIIllIiIiIIiiil[1349505900]end)())then local SynapseXen_IIiIiIIllIIiIi=SynapseXen_IIllIIIiIllIlIll(SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IilIlIIi[1050581631],SynapseXen_iIIllIiIiIIiiil[502856226]or(function(...)local SynapseXen_lIiIliiIlll="can we have an f in chat for ripull"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(3837465482,1816612551)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(2232354907,2062634393)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[502856226]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(8945450,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(3253825121,SynapseXen_IIlililiIlililliI[4]))-string.len(SynapseXen_lIiIliiIlll)-SynapseXen_iiliIiI-#{75809155,2980429904,1449371855,2287287179,260756765,4003261998}return SynapseXen_iIIllIiIiIIiiil[502856226]end)("liill",{},"iil","lIIIIiIli","I",{},"iIllili"),512),SynapseXen_liiiIlilliIIllIl)local SynapseXen_liilIi=SynapseXen_iiilliIIiIiIIlilI(SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[1674574548],SynapseXen_iIIllIiIiIIiiil[1078272304]or(function()local SynapseXen_lIiIliiIlll="wally bad bird"SynapseXen_iIIllIiIiIIiiil[1078272304]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(3948972238,3153492816),SynapseXen_IIllIIIiIllIlIll(2913243,SynapseXen_IIlililiIlililliI[1]))-SynapseXen_iiliIiI-string.len(SynapseXen_lIiIliiIlll)-#{1207665276,4061965285,799914040,2206075291,4250714077,2947562738,2076223640,2458615837,3150194740}return SynapseXen_iIIllIiIiIIiiil[1078272304]end)(),512),SynapseXen_liiiIlilliIIllIl,512)local SynapseXen_IIlIllIliIlll=SynapseXen_lliliiiliIiiIIliiI;if SynapseXen_IIiIiIIllIIiIi>255 then SynapseXen_IIiIiIIllIIiIi=SynapseXen_iiIIIlIiliIlIllIii[SynapseXen_IIiIiIIllIIiIi-256]else SynapseXen_IIiIiIIllIIiIi=SynapseXen_IIlIllIliIlll[SynapseXen_IIiIiIIllIIiIi]end;if SynapseXen_liilIi>255 then SynapseXen_liilIi=SynapseXen_iiIIIlIiliIlIllIii[SynapseXen_liilIi-256]else SynapseXen_liilIi=SynapseXen_IIlIllIliIlll[SynapseXen_liilIi]end;SynapseXen_IIlIllIliIlll[SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[2538148455]or(function(...)local SynapseXen_lIiIliiIlll="pain is gonna use the backspace method on xen"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(994542517,146941100)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(640550813,3654434901)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[2538148455]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(520035406,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(1546991047,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{1706553068,2395049186,88523033,3215869367,890620599,3905002297,1946503756,1491820754}return SynapseXen_iIIllIiIiIIiiil[2538148455]end)({}),256)]=SynapseXen_IIiIiIIllIIiIi+SynapseXen_liilIi elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[3069645263]or(function(...)local SynapseXen_lIiIliiIlll="hi xen crashes on my axon paste plz help"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(3009798947,3754853508)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(2839016798,1455945740)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[3069645263]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(1232953115,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(1817361461,SynapseXen_IIlililiIlililliI[4]))-string.len(SynapseXen_lIiIliiIlll)-#{2962698471,3110773660,1420407494,3370156265,3404843153,1633610537,1936991359,1516866808}return SynapseXen_iIIllIiIiIIiiil[3069645263]end)({},{},"IIiIiiiiiliIiIiIiI"))then SynapseXen_liliiiiIIil[SynapseXen_iiIIIlIiliIlIllIii[SynapseXen_IIllIIIiIllIlIll(SynapseXen_IilIlIIi[649503491],SynapseXen_iIIllIiIiIIiiil[1948589825]or(function()local SynapseXen_lIiIliiIlll="print(bytecode)"SynapseXen_iIIllIiIiIIiiil[1948589825]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(2819402407,4004237070),SynapseXen_IIllIIIiIllIlIll(938041812,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{2744240575,1509597958,3574876916,906084273,1332573003,2978586980,3600804150}return SynapseXen_iIIllIiIiIIiiil[1948589825]end)())]]=SynapseXen_lliliiiliIiiIIliiI[SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[3497550705]or(function()local SynapseXen_lIiIliiIlll="SECURE API, IMPOSSIBLE TO BYPASS!"SynapseXen_iIIllIiIiIIiiil[3497550705]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(2558556843,574554733),SynapseXen_IIllIIIiIllIlIll(3421525144,SynapseXen_iilIlii))-SynapseXen_iiliIiI-string.len(SynapseXen_lIiIliiIlll)-#{4277473134,1812830695}return SynapseXen_iIIllIiIiIIiiil[3497550705]end)(),256)]elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[45349739]or(function(...)local SynapseXen_lIiIliiIlll="now comes with a free n word pass"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(841841647,3590247999)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(830101075,3464863951)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[45349739]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(3117083665,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(793844809,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{4175699348,1620026038,52714326,2751669786,1006811330,3785487286}return SynapseXen_iIIllIiIiIIiiil[45349739]end)("I",{},"iIIlil","iIiIIiiIlillilIiIII",{},"iIlillIiIlIiIlllIiI"))then local SynapseXen_IIiIiIIllIIiIi=SynapseXen_IIllIIIiIllIlIll(SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IilIlIIi[1050581631],SynapseXen_iIIllIiIiIIiiil[2817071323]or(function(...)local SynapseXen_lIiIliiIlll="inb4 posted on exploit reports section"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(3809544227,106022987)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(3658547144,636444237)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[2817071323]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(1766902571,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(4250853194,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-SynapseXen_iiliIiI-#{3310532009,1689496827,13444995,1374515328,3045051589,1568994840,1744369585,3665981419}return SynapseXen_iIIllIiIiIIiiil[2817071323]end)({},{},{},{},"iIIIllIIiiilillil",{},"iIiIIliiIIIllIll","lllliIlIIiiilllil","ililllIi"),512),SynapseXen_liiiIlilliIIllIl)local SynapseXen_liilIi=SynapseXen_IIllIIIiIllIlIll(SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[1674574548],SynapseXen_iIIllIiIiIIiiil[1547923894]or(function(...)local SynapseXen_lIiIliiIlll="xen doesn't come with instance caching, sorry superskater"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(3693263179,1456194774)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(2550041571,1744944121)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[1547923894]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(3805300652,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(3658457739,SynapseXen_IIlililiIlililliI[3]))-string.len(SynapseXen_lIiIliiIlll)-SynapseXen_iiliIiI-#{1121855286}return SynapseXen_iIIllIiIiIIiiil[1547923894]end)("IIillIIIiI","ilIllIIliliIllIil","Iliiii",{},"IIll","llIIllIliIiiI"),512),SynapseXen_liiiIlilliIIllIl)local SynapseXen_IIlIllIliIlll=SynapseXen_lliliiiliIiiIIliiI;if SynapseXen_IIiIiIIllIIiIi>255 then SynapseXen_IIiIiIIllIIiIi=SynapseXen_iiIIIlIiliIlIllIii[SynapseXen_IIiIiIIllIIiIi-256]else SynapseXen_IIiIiIIllIIiIi=SynapseXen_IIlIllIliIlll[SynapseXen_IIiIiIIllIIiIi]end;if SynapseXen_liilIi>255 then SynapseXen_liilIi=SynapseXen_iiIIIlIiliIlIllIii[SynapseXen_liilIi-256]else SynapseXen_liilIi=SynapseXen_IIlIllIliIlll[SynapseXen_liilIi]end;SynapseXen_IIlIllIliIlll[SynapseXen_IIllIIIiIllIlIll(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[3359165064]or(function()local SynapseXen_lIiIliiIlll="pain exist is gonna connect the dots of xen"SynapseXen_iIIllIiIiIIiiil[3359165064]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(3413535033,301148865),SynapseXen_IIllIIIiIllIlIll(1652696659,SynapseXen_IIlililiIlililliI[6]))-SynapseXen_iiliIiI-string.len(SynapseXen_lIiIliiIlll)-#{6207578,1164381737,2388561560,4170335275,3376812877,1981698628,3113200018,3901026581,2659322767}return SynapseXen_iIIllIiIiIIiiil[3359165064]end)())]=SynapseXen_IIiIiIIllIIiIi%SynapseXen_liilIi elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[2122881008]or(function(...)local SynapseXen_lIiIliiIlll="wow xen is shit buy luraph ok"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(192986963,3481115067)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(2242652334,2052312062)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[2122881008]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(3552886642,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(1719134487,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{437804465,1413160877,3586038107}return SynapseXen_iIIllIiIiIIiiil[2122881008]end)(14130,{},{},{}))then local SynapseXen_IIiIiIIllIIiIi=SynapseXen_illiiIIIlIIil(SynapseXen_IIllIIIiIllIlIll(SynapseXen_IilIlIIi[1050581631],SynapseXen_iIIllIiIiIIiiil[782579598]or(function()local SynapseXen_lIiIliiIlll="wally bad bird"SynapseXen_iIIllIiIiIIiiil[782579598]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(1158531487,4203373601),SynapseXen_IIllIIIiIllIlIll(3469204433,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{1142042195,3777887133,1589518074,3242328670,1870851800,1601466018,2386105134,446871164,2144334206,3228041133}return SynapseXen_iIIllIiIiIIiiil[782579598]end)()),SynapseXen_liiiIlilliIIllIl,512)local SynapseXen_liilIi=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IilIlIIi[1674574548],SynapseXen_iIIllIiIiIIiiil[2655537275]or(function()local SynapseXen_lIiIliiIlll="hi xen doesn't work on sk8r please help"SynapseXen_iIIllIiIiIIiiil[2655537275]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(301669830,1135183571),SynapseXen_IIllIIIiIllIlIll(589045931,SynapseXen_iilIlii))-SynapseXen_iiliIiI-string.len(SynapseXen_lIiIliiIlll)-#{1126209985,4058893747,2949287801,3495086211,1966121277,2404307154}return SynapseXen_iIIllIiIiIIiiil[2655537275]end)())local SynapseXen_IIlIllIliIlll=SynapseXen_lliliiiliIiiIIliiI;if SynapseXen_IIiIiIIllIIiIi>255 then SynapseXen_IIiIiIIllIIiIi=SynapseXen_iiIIIlIiliIlIllIii[SynapseXen_IIiIiIIllIIiIi-256]else SynapseXen_IIiIiIIllIIiIi=SynapseXen_IIlIllIliIlll[SynapseXen_IIiIiIIllIIiIi]end;if SynapseXen_liilIi>255 then SynapseXen_liilIi=SynapseXen_iiIIIlIiliIlIllIii[SynapseXen_liilIi-256]else SynapseXen_liilIi=SynapseXen_IIlIllIliIlll[SynapseXen_liilIi]end;SynapseXen_IIlIllIliIlll[SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IIllIIIiIllIlIll(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[2838899315]or(function(...)local SynapseXen_lIiIliiIlll="SYNAPSE XEN [FE BYPASS] [BETTER THEN LURAPH] [AMAZING] OMG OMG OMG !!!!!!"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(2694142359,577050705)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(3028899617,1266059576)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[2838899315]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(1815491325,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(1559292166,SynapseXen_IIlililiIlililliI[3]))-string.len(SynapseXen_lIiIliiIlll)-#{1118021390,205972501,1450800127,2322479655,4137576090,517339620,1356592742,4288028100}return SynapseXen_iIIllIiIiIIiiil[2838899315]end)("IlilliIIiIililiiIll",{},{},"lllIiiliiIiil","iiililliilili",{})),SynapseXen_liiiIlilliIIllIl,256)]=SynapseXen_IIiIiIIllIIiIi*SynapseXen_liilIi elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[498011727]or(function()local SynapseXen_lIiIliiIlll="double-header fair! this rationalization has a overenthusiastically anticheat! you will get nonpermissible for exploiting!"SynapseXen_iIIllIiIiIIiiil[498011727]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(3331021409,4251027585),SynapseXen_IIllIIIiIllIlIll(1919928440,SynapseXen_IIlililiIlililliI[4]))-string.len(SynapseXen_lIiIliiIlll)-#{1217374766,3599273647,1530849604,246293010}return SynapseXen_iIIllIiIiIIiiil[498011727]end)())then local SynapseXen_IIlIllIliIlll=SynapseXen_lliliiiliIiiIIliiI;for SynapseXen_IIiliilIIi=SynapseXen_illiiIIIlIIil(SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[4114742822]or(function()local SynapseXen_lIiIliiIlll="now with shitty xor string obfuscation"SynapseXen_iIIllIiIiIIiiil[4114742822]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(3297854111,699327815),SynapseXen_IIllIIIiIllIlIll(3187370502,SynapseXen_IIlililiIlililliI[1]))-SynapseXen_iiliIiI-string.len(SynapseXen_lIiIliiIlll)-#{1176212634,3736762958,2261040186,2490706026,3575368758,1652118955,3523992148,1173705025}return SynapseXen_iIIllIiIiIIiiil[4114742822]end)(),256),SynapseXen_liiiIlilliIIllIl,256),SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[1050581631],SynapseXen_iIIllIiIiIIiiil[4250476282]or(function()local SynapseXen_lIiIliiIlll="hi devforum"SynapseXen_iIIllIiIiIIiiil[4250476282]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(3377721797,2959837325),SynapseXen_IIllIIIiIllIlIll(817629359,SynapseXen_IIlililiIlililliI[4]))-SynapseXen_iiliIiI-string.len(SynapseXen_lIiIliiIlll)-#{500947481,960160903,688174197,4106854384,2965355742,4001512136}return SynapseXen_iIIllIiIiIIiiil[4250476282]end)(),512)do SynapseXen_IIlIllIliIlll[SynapseXen_IIiliilIIi]=nil end elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[552882164]or(function()local SynapseXen_lIiIliiIlll="my way to go against expwoiting is to have safety measuwes. i 1 wocawscwipt and onwy moduwes. hewe's how it wowks: this scwipt bewow stowes the moduwes in a tabwe fow each moduwe we send the wist with the moduwes and moduwe infowmation and use inyit a function in my moduwe that wiww stowe the info and aftew it has send to aww the moduwes it wiww dewete them. so whenyevew the cwient twies to hack they cant get the moduwes. onwy this peace of wocawscwipt."SynapseXen_iIIllIiIiIIiiil[552882164]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(3483888871,525718284),SynapseXen_IIllIIIiIllIlIll(2713556762,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{1734940543,163140159,535558443,1580849851,4261569016,4286786999,1724021689,2281994200}return SynapseXen_iIIllIiIiIIiiil[552882164]end)())then local SynapseXen_liilIi=SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IilIlIIi[1674574548],SynapseXen_iIIllIiIiIIiiil[1508844536]or(function()local SynapseXen_lIiIliiIlll="hi my 2.5mb script doesn't work with xen please help"SynapseXen_iIIllIiIiIIiiil[1508844536]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(1074958264,1440038945),SynapseXen_IIllIIIiIllIlIll(1165802553,SynapseXen_IIlililiIlililliI[1]))-string.len(SynapseXen_lIiIliiIlll)-#{2025401129,2432526147,138216036,3126587960,3988713287,3716478858}return SynapseXen_iIIllIiIiIIiiil[1508844536]end)(),512)local SynapseXen_IIlIllIliIlll=SynapseXen_lliliiiliIiiIIliiI;if SynapseXen_liilIi>255 then SynapseXen_liilIi=SynapseXen_iiIIIlIiliIlIllIii[SynapseXen_liilIi-256]else SynapseXen_liilIi=SynapseXen_IIlIllIliIlll[SynapseXen_liilIi]end;SynapseXen_IIlIllIliIlll[SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[1173008299]or(function()local SynapseXen_lIiIliiIlll="hi xen crashes on my axon paste plz help"SynapseXen_iIIllIiIiIIiiil[1173008299]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(2708825348,1921051037),SynapseXen_IIllIIIiIllIlIll(2730089172,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{3255382963,262622989,3502410973,1703219970,497108551,466848363,2376409674,1563305029,1884452090}return SynapseXen_iIIllIiIiIIiiil[1173008299]end)(),256)]=SynapseXen_IIlIllIliIlll[SynapseXen_iiilliIIiIiIIlilI(SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IilIlIIi[1050581631],SynapseXen_iIIllIiIiIIiiil[3582549714]or(function(...)local SynapseXen_lIiIliiIlll="luraph better then xen bros :pensive:"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(4266508988,3247429983)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(1641599040,2653384567)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[3582549714]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(361242546,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(2558380353,SynapseXen_IIlililiIlililliI[3]))-string.len(SynapseXen_lIiIliiIlll)-#{3682705700,2610615118,2656654227,2252909747,2184208484}return SynapseXen_iIIllIiIiIIiiil[3582549714]end)(12928,"IiliIllIiIiIliIll",5510,3322,{},{}),512),SynapseXen_liiiIlilliIIllIl,512)][SynapseXen_liilIi]elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[451621723]or(function(...)local SynapseXen_lIiIliiIlll="imagine using some lua minifier tool and thinking you are a badass"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(2344960784,92062614)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(4175127860,119832109)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[451621723]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(1956750586,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(2337568266,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{2825600695,1595307079,750540458,3482400269,2176258069,1114652703,4149070101,541218690}return SynapseXen_iIIllIiIiIIiiil[451621723]end)("llIliIllliiii"))then SynapseXen_lliliiiliIiiIIliiI[SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IIllIIIiIllIlIll(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[1936375471]or(function()local SynapseXen_lIiIliiIlll="HELP ME PEOPLE ARE CRASHING MY GAME PLZ HELP"SynapseXen_iIIllIiIiIIiiil[1936375471]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(2995777724,1537455285),SynapseXen_IIllIIIiIllIlIll(2556659183,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{2840320451,470003792,2391373338,2478263158,2874338494,452707789,500258798,4227163408,2768699362}return SynapseXen_iIIllIiIiIIiiil[1936375471]end)()),SynapseXen_liiiIlilliIIllIl,256)]={}elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[2705052338]or(function(...)local SynapseXen_lIiIliiIlll="what are you trying to say? that fucking one dot + dot + dot + many dots is not adding adding 1 dot + dot and then adding all the dots together????"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(343318399,2874636566)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(525924025,3769066245)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[2705052338]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(3615314666,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(4226352848,SynapseXen_IIlililiIlililliI[5]))-string.len(SynapseXen_lIiIliiIlll)-#{2594094889,1051647880}return SynapseXen_iIIllIiIiIIiiil[2705052338]end)({},"iliIllIiiI",13872))then local SynapseXen_IIiIiIIllIIiIi=SynapseXen_lliliiiliIiiIIliiI[SynapseXen_IIllIIIiIllIlIll(SynapseXen_IilIlIIi[1050581631],SynapseXen_iIIllIiIiIIiiil[4119135864]or(function(...)local SynapseXen_lIiIliiIlll="inb4 posted on exploit reports section"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(1647256082,2860638649)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(4079905288,215058512)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[4119135864]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(327071389,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(1675032786,SynapseXen_IIlililiIlililliI[6]))-string.len(SynapseXen_lIiIliiIlll)-#{1995208185,1006747366,785841510}return SynapseXen_iIIllIiIiIIiiil[4119135864]end)("lliillIl","IllIililiIllIiiIiiI",{}))]if not not SynapseXen_IIiIiIIllIIiIi==(SynapseXen_IIllIIIiIllIlIll(SynapseXen_IilIlIIi[1674574548],SynapseXen_iIIllIiIiIIiiil[74231721]or(function()local SynapseXen_lIiIliiIlll="SYNAPSE XEN [FE BYPASS] [BETTER THEN LURAPH] [AMAZING] OMG OMG OMG !!!!!!"SynapseXen_iIIllIiIiIIiiil[74231721]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(1122763320,2754598292),SynapseXen_IIllIIIiIllIlIll(565324507,SynapseXen_IIlililiIlililliI[2]))-string.len(SynapseXen_lIiIliiIlll)-#{738285995,3241924015,4286627973,2096326045,3981173336,1313599167,495167021,1234735176}return SynapseXen_iIIllIiIiIIiiil[74231721]end)())==0)then SynapseXen_IIilIlIiIIIi=SynapseXen_IIilIlIiIIIi+1 else SynapseXen_lliliiiliIiiIIliiI[SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[593041677]or(function(...)local SynapseXen_lIiIliiIlll="hi xen doesn't work on sk8r please help"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(458744852,1167059329)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(3808339321,486647131)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[593041677]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(2641114224,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(2318405583,SynapseXen_IIlililiIlililliI[4]))-string.len(SynapseXen_lIiIliiIlll)-SynapseXen_iiliIiI-#{482598890,2560585873,4001317866,2409255804,1065557658,3016118848,3368818884,2940299426,3157911368}return SynapseXen_iIIllIiIiIIiiil[593041677]end)("illiIlII",5217,{},"IlIIiliIlIlII","iIiIliIiilIiIiiIlIi"),256)]=SynapseXen_IIiIiIIllIIiIi end elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[4233408550]or(function(...)local SynapseXen_lIiIliiIlll="xen detects custom getfenv"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(2752239336,1459701539)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(188358193,4106624148)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[4233408550]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(1849857023,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(3959931579,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{3564037971,2405221680}return SynapseXen_iIIllIiIiIIiiil[4233408550]end)(8361,{},"IIllllIIIi","iilIIiIiiii",321,"IIilillllIililiI",{},"lilliIllIiiiilIilii"))then local SynapseXen_IiIIiIiiiiiIIl=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[2517546796]or(function(...)local SynapseXen_lIiIliiIlll="HELP ME PEOPLE ARE CRASHING MY GAME PLZ HELP"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(1579633889,4239496295)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(4018177712,276799569)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[2517546796]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(1839681057,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(3196036502,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-SynapseXen_iiliIiI-#{3588447414,2675949344,3800913671,2975982920}return SynapseXen_iIIllIiIiIIiiil[2517546796]end)(7360))local SynapseXen_IIiIiIIllIIiIi=SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[1050581631],SynapseXen_iIIllIiIiIIiiil[2376772285]or(function(...)local SynapseXen_lIiIliiIlll="luraph better then xen bros :pensive:"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(2506702268,14970056)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(2683289249,1611674103)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[2376772285]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(4241106330,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(972816596,SynapseXen_IIlililiIlililliI[1]))-string.len(SynapseXen_lIiIliiIlll)-SynapseXen_iiliIiI-#{419816669}return SynapseXen_iIIllIiIiIIiiil[2376772285]end)("liiiilIillIl",8383,{},12638,{},7235,{},9828,"lIlil","i"),512)local SynapseXen_liilIi=SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IilIlIIi[1674574548],SynapseXen_iIIllIiIiIIiiil[258186996]or(function(...)local SynapseXen_lIiIliiIlll="imagine using some lua minifier tool and thinking you are a badass"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(1726527294,562175730)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(211363435,4083590226)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[258186996]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(1364470182,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(1183170278,SynapseXen_IIlililiIlililliI[1]))-string.len(SynapseXen_lIiIliiIlll)-#{3354205575,2584773729}return SynapseXen_iIIllIiIiIIiiil[258186996]end)(9694,14324,{}),512)local SynapseXen_IIlIllIliIlll=SynapseXen_lliliiiliIiiIIliiI;if SynapseXen_liilIi==0 then SynapseXen_IIilIlIiIIIi=SynapseXen_IIilIlIiIIIi+1;SynapseXen_liilIi=SynapseXen_liilllll[SynapseXen_IIilIlIiIIIi][578423135]end;local SynapseXen_lilIIlIIllI=(SynapseXen_liilIi-1)*50;local SynapseXen_ilIlilI=SynapseXen_IIlIllIliIlll[SynapseXen_IiIIiIiiiiiIIl]if SynapseXen_IIiIiIIllIIiIi==0 then SynapseXen_IIiIiIIllIIiIi=SynapseXen_IIlIIiliIil-SynapseXen_IiIIiIiiiiiIIl end;for SynapseXen_IIiliilIIi=1,SynapseXen_IIiIiIIllIIiIi do SynapseXen_ilIlilI[SynapseXen_lilIIlIIllI+SynapseXen_IIiliilIIi]=SynapseXen_IIlIllIliIlll[SynapseXen_IiIIiIiiiiiIIl+SynapseXen_IIiliilIIi]end elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[282701775]or(function()local SynapseXen_lIiIliiIlll="hi devforum"SynapseXen_iIIllIiIiIIiiil[282701775]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(3858201871,2312218933),SynapseXen_IIllIIIiIllIlIll(493399134,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{1961630172,890931481,90506529}return SynapseXen_iIIllIiIiIIiiil[282701775]end)())then SynapseXen_liiiIlilliIIllIl=SynapseXen_lliliiiliIiiIIliiI[SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[4066094730]or(function()local SynapseXen_lIiIliiIlll="level 1 crook = luraph, level 100 boss = xen"SynapseXen_iIIllIiIiIIiiil[4066094730]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(3725452622,264448359),SynapseXen_IIllIIIiIllIlIll(2171980415,SynapseXen_IIlililiIlililliI[1]))-SynapseXen_iiliIiI-string.len(SynapseXen_lIiIliiIlll)-#{2650880251,2491260525,3324437217,3253417059}return SynapseXen_iIIllIiIiIIiiil[4066094730]end)(),256)]elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[2518402670]or(function(...)local SynapseXen_lIiIliiIlll="now with shitty xor string obfuscation"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(1063210244,49977527)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(1386321569,2908656980)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[2518402670]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(4160811709,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(3035334332,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{4185061677,2620897449,2635421353}return SynapseXen_iIIllIiIiIIiiil[2518402670]end)({},9422,{},"iilIiliiIIi",{},14621,5337,{}))then local SynapseXen_IiIIiIiiiiiIIl=SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IIllIIIiIllIlIll(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[3488379505]or(function(...)local SynapseXen_lIiIliiIlll="pain is gonna use the backspace method on xen"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(2910225812,1946856086)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(14343611,4280638043)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[3488379505]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(1258539230,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(1426807734,SynapseXen_IIlililiIlililliI[2]))-string.len(SynapseXen_lIiIliiIlll)-#{399164447,474881312,589486427,3890695624,1814753610,3368547486,1940043331,625178525,2040394741,100441334}return SynapseXen_iIIllIiIiIIiiil[3488379505]end)(11368,"IlIiiIllIIIIi",8058,4180,{},"IiIIiIliIlIliili","IlIlilllllliIIi","lili",{})),SynapseXen_liiiIlilliIIllIl,256)local SynapseXen_IIiIiIIllIIiIi=SynapseXen_iiilliIIiIiIIlilI(SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IilIlIIi[1050581631],SynapseXen_iIIllIiIiIIiiil[2972800530]or(function()local SynapseXen_lIiIliiIlll="print(bytecode)"SynapseXen_iIIllIiIiIIiiil[2972800530]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(2802326953,3918316911),SynapseXen_IIllIIIiIllIlIll(118440138,SynapseXen_IIlililiIlililliI[4]))-SynapseXen_iiliIiI-string.len(SynapseXen_lIiIliiIlll)-#{2519792944,2286096790,542161566,231527045,1093897218,290408562}return SynapseXen_iIIllIiIiIIiiil[2972800530]end)(),512),SynapseXen_liiiIlilliIIllIl,512)local SynapseXen_liilIi=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IilIlIIi[1674574548],SynapseXen_iIIllIiIiIIiiil[2404235962]or(function()local SynapseXen_lIiIliiIlll="hi my 2.5mb script doesn't work with xen please help"SynapseXen_iIIllIiIiIIiiil[2404235962]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(886477860,709432619),SynapseXen_IIllIIIiIllIlIll(1875925087,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{998201500}return SynapseXen_iIIllIiIiIIiiil[2404235962]end)())local SynapseXen_IIlIllIliIlll=SynapseXen_lliliiiliIiiIIliiI;SynapseXen_IIiIiIIllIIiIi=SynapseXen_IIlIllIliIlll[SynapseXen_IIiIiIIllIIiIi]if SynapseXen_liilIi>255 then SynapseXen_liilIi=SynapseXen_iiIIIlIiliIlIllIii[SynapseXen_liilIi-256]else SynapseXen_liilIi=SynapseXen_IIlIllIliIlll[SynapseXen_liilIi]end;SynapseXen_IIlIllIliIlll[SynapseXen_IiIIiIiiiiiIIl+1]=SynapseXen_IIiIiIIllIIiIi;SynapseXen_IIlIllIliIlll[SynapseXen_IiIIiIiiiiiIIl]=SynapseXen_IIiIiIIllIIiIi[SynapseXen_liilIi]elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[401712447]or(function(...)local SynapseXen_lIiIliiIlll="skisploit is the superior obfuscator, clearly."local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(2320778069,508979064)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(2430478180,1864471769)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[401712447]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(372577656,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(4084753083,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{857292004}return SynapseXen_iIIllIiIiIIiiil[401712447]end)(13749,"iIiiiiIlii","IlIiIlIi","llIIII"))then SynapseXen_lliliiiliIiiIIliiI[SynapseXen_IIllIIIiIllIlIll(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[2926120511]or(function()local SynapseXen_lIiIliiIlll="https://twitter.com/Ripull_RBLX/status/1059334518581145603"SynapseXen_iIIllIiIiIIiiil[2926120511]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(1065223749,4053786055),SynapseXen_IIllIIIiIllIlIll(160753150,SynapseXen_IIlililiIlililliI[2]))-string.len(SynapseXen_lIiIliiIlll)-#{1614293017,2649457129}return SynapseXen_iIIllIiIiIIiiil[2926120511]end)())]=SynapseXen_iIiIllillIlIlIllliii[SynapseXen_IIllIIIiIllIlIll(SynapseXen_IilIlIIi[1050581631],SynapseXen_iIIllIiIiIIiiil[4063441267]or(function(...)local SynapseXen_lIiIliiIlll="yed"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(333207924,4023197490)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(3914691469,380301563)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[4063441267]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(60599861,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(955998520,SynapseXen_IIlililiIlililliI[2]))-string.len(SynapseXen_lIiIliiIlll)-SynapseXen_iiliIiI-#{3724211679,1513437858,1504450104,298616224,3984588301,2922797900,1823046507,80010881}return SynapseXen_iIIllIiIiIIiiil[4063441267]end)("IilliiIIlIllIIiII",{},2729,3508,"iIIIIIl",2543))]elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[258388637]or(function()local SynapseXen_lIiIliiIlll="SYNAPSE XEN [FE BYPASS] [BETTER THEN LURAPH] [AMAZING] OMG OMG OMG !!!!!!"SynapseXen_iIIllIiIiIIiiil[258388637]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(979657441,854811470),SynapseXen_IIllIIIiIllIlIll(2044222787,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{4199877525,875129756,3508255452,3102573518,1983616033,4196146589,3544597313,2022071516,4157029214}return SynapseXen_iIIllIiIiIIiiil[258388637]end)())then local SynapseXen_IiIIiIiiiiiIIl=SynapseXen_illiiIIIlIIil(SynapseXen_IIllIIIiIllIlIll(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[1472261373]or(function()local SynapseXen_lIiIliiIlll="double-header fair! this rationalization has a overenthusiastically anticheat! you will get nonpermissible for exploiting!"SynapseXen_iIIllIiIiIIiiil[1472261373]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(1562778314,838086810),SynapseXen_IIllIIIiIllIlIll(2879694846,SynapseXen_IIlililiIlililliI[2]))-SynapseXen_iiliIiI-string.len(SynapseXen_lIiIliiIlll)-#{4186480978,2495220613,945761824,1152085844,3822552546,4057646949,201601150,1605750796,4102686355}return SynapseXen_iIIllIiIiIIiiil[1472261373]end)()),SynapseXen_liiiIlilliIIllIl,256)local SynapseXen_IIiIiIIllIIiIi=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IilIlIIi[1050581631],SynapseXen_iIIllIiIiIIiiil[2516464528]or(function()local SynapseXen_lIiIliiIlll="hi my 2.5mb script doesn't work with xen please help"SynapseXen_iIIllIiIiIIiiil[2516464528]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(2687991127,3590453832),SynapseXen_IIllIIIiIllIlIll(125459921,SynapseXen_iilIlii))-SynapseXen_iiliIiI-string.len(SynapseXen_lIiIliiIlll)-#{2908640457,3583415936,2677752850,1190171522,192813116,3435721479}return SynapseXen_iIIllIiIiIIiiil[2516464528]end)())local SynapseXen_IIlIllIliIlll,SynapseXen_lllIillIliIi=SynapseXen_lliliiiliIiiIIliiI,SynapseXen_IlllIIIllIii;SynapseXen_IIlIIiliIil=SynapseXen_IiIIiIiiiiiIIl-1;for SynapseXen_IIiliilIIi=SynapseXen_IiIIiIiiiiiIIl,SynapseXen_IiIIiIiiiiiIIl+(SynapseXen_IIiIiIIllIIiIi>0 and SynapseXen_IIiIiIIllIIiIi-1 or SynapseXen_lIliI)do SynapseXen_IIlIllIliIlll[SynapseXen_IIiliilIIi]=SynapseXen_lllIillIliIi[SynapseXen_IIiliilIIi-SynapseXen_IiIIiIiiiiiIIl]end elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[2614929407]or(function(...)local SynapseXen_lIiIliiIlll="https://twitter.com/Ripull_RBLX/status/1059334518581145603"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(2880598646,1421401664)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(1865943681,2429047858)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[2614929407]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(3481990636,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(1104147720,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{181155919,3721068424,3389513117,2310953127,967775559,301350841,2883168459,3032514493}return SynapseXen_iIIllIiIiIIiiil[2614929407]end)(8224))then local SynapseXen_IiIIiIiiiiiIIl=SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[680756822]or(function(...)local SynapseXen_lIiIliiIlll="sometimes it be like that"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(3560692646,3540995372)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(4168297788,126656680)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[680756822]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(1177912182,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(4080481006,SynapseXen_IIlililiIlililliI[3]))-string.len(SynapseXen_lIiIliiIlll)-#{3733347418,3873678546,2528695888,3874643832,3961150368,1194546587,1038547686,1637823425,3528323377,2629774967}return SynapseXen_iIIllIiIiIIiiil[680756822]end)("illiIIIIiiIiii",{},"Ill",14495,"liIiiIiliI","liiilIIiIllil",{}),256)local SynapseXen_liilIi=SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[1674574548],SynapseXen_iIIllIiIiIIiiil[2196887207]or(function()local SynapseXen_lIiIliiIlll="thats how mafia works"SynapseXen_iIIllIiIiIIiiil[2196887207]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(3078768543,3578364181),SynapseXen_IIllIIIiIllIlIll(846670279,SynapseXen_IIlililiIlililliI[1]))-SynapseXen_iiliIiI-string.len(SynapseXen_lIiIliiIlll)-#{4088233517,3910313427}return SynapseXen_iIIllIiIiIIiiil[2196887207]end)(),512)local SynapseXen_IIlIllIliIlll=SynapseXen_lliliiiliIiiIIliiI;local SynapseXen_lilIIlIIllI=SynapseXen_IiIIiIiiiiiIIl+2;local SynapseXen_illlIIIIlIi={SynapseXen_IIlIllIliIlll[SynapseXen_IiIIiIiiiiiIIl](SynapseXen_IIlIllIliIlll[SynapseXen_IiIIiIiiiiiIIl+1],SynapseXen_IIlIllIliIlll[SynapseXen_IiIIiIiiiiiIIl+2])}for SynapseXen_IIiliilIIi=1,SynapseXen_liilIi do SynapseXen_lliliiiliIiiIIliiI[SynapseXen_lilIIlIIllI+SynapseXen_IIiliilIIi]=SynapseXen_illlIIIIlIi[SynapseXen_IIiliilIIi]end;if SynapseXen_IIlIllIliIlll[SynapseXen_IiIIiIiiiiiIIl+3]~=nil then SynapseXen_IIlIllIliIlll[SynapseXen_IiIIiIiiiiiIIl+2]=SynapseXen_IIlIllIliIlll[SynapseXen_IiIIiIiiiiiIIl+3]else SynapseXen_IIilIlIiIIIi=SynapseXen_IIilIlIiIIIi+1 end elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[577434142]or(function()local SynapseXen_lIiIliiIlll="HELP ME PEOPLE ARE CRASHING MY GAME PLZ HELP"SynapseXen_iIIllIiIiIIiiil[577434142]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(3452004623,1968357199),SynapseXen_IIllIIIiIllIlIll(4044824973,SynapseXen_IIlililiIlililliI[4]))-string.len(SynapseXen_lIiIliiIlll)-#{2539668727,4203872426,2555191155,183945352,2322802044,2805763263,3060663596,3055734565,659975151,1715408716}return SynapseXen_iIIllIiIiIIiiil[577434142]end)())then local SynapseXen_IiIIiIiiiiiIIl=SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[1772678999]or(function(...)local SynapseXen_lIiIliiIlll="pain exist is gonna connect the dots of xen"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(728771714,2793891622)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(2618781467,1676182411)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[1772678999]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(1741305106,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(2608681920,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{746715238,543089498,4128504779,3830668757,1830084941,615266437,3297139070,781361994,3715563619}return SynapseXen_iIIllIiIiIIiiil[1772678999]end)(8523,"iiiIlIIi","IIlIlllIIIIllIIlI",14416,{},{}),256)local SynapseXen_IIlliIliIiiililiiII={}for SynapseXen_IIiliilIIi=1,#SynapseXen_liilliiiiIiiIi do local SynapseXen_IIIiIIIliliIil=SynapseXen_liilliiiiIiiIi[SynapseXen_IIiliilIIi]for SynapseXen_iIIIIiIlIIIlIlI=0,#SynapseXen_IIIiIIIliliIil do local SynapseXen_ilIliiliIiililli=SynapseXen_IIIiIIIliliIil[SynapseXen_iIIIIiIlIIIlIlI]local SynapseXen_IIlIllIliIlll=SynapseXen_ilIliiliIiililli[1]local SynapseXen_ilIiIIll=SynapseXen_ilIliiliIiililli[2]if SynapseXen_IIlIllIliIlll==SynapseXen_lliliiiliIiiIIliiI and SynapseXen_ilIiIIll>=SynapseXen_IiIIiIiiiiiIIl then SynapseXen_IIlliIliIiiililiiII[SynapseXen_ilIiIIll]=SynapseXen_IIlIllIliIlll[SynapseXen_ilIiIIll]SynapseXen_ilIliiliIiililli[1]=SynapseXen_IIlliIliIiiililiiII end end end elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[4177911442]or(function(...)local SynapseXen_lIiIliiIlll="print(bytecode)"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(2276708562,2188381137)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(3926150477,368808160)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[4177911442]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(1297587549,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(970706242,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{3251006392,2824459415,2536095393,2283217230,3053700180,700819405,455462318}return SynapseXen_iIIllIiIiIIiiil[4177911442]end)("IlIilIillI","I",{},{},"lil",2157,{}))then SynapseXen_iIiIllillIlIlIllliii[SynapseXen_iiilliIIiIiIIlilI(SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[1050581631],SynapseXen_iIIllIiIiIIiiil[2814580807]or(function(...)local SynapseXen_lIiIliiIlll="this is so sad, alexa play ripull.mp4"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(2840003781,431863920)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(2129785485,2165178848)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[2814580807]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(3808705520,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(3226040564,SynapseXen_IIlililiIlililliI[5]))-string.len(SynapseXen_lIiIliiIlll)-SynapseXen_iiliIiI-#{4038183136,51040033,1513094867,2542247740,2873509546,3431079501}return SynapseXen_iIIllIiIiIIiiil[2814580807]end)(6250,{},{}),512),SynapseXen_liiiIlilliIIllIl,512)]=SynapseXen_lliliiiliIiiIIliiI[SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[823967199]or(function(...)local SynapseXen_lIiIliiIlll="this is a christian obfuscator, no cursing allowed in our scripts"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(3093721873,974135385)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(128605015,4166379724)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[823967199]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(513736388,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(257839702,SynapseXen_IIlililiIlililliI[5]))-string.len(SynapseXen_lIiIliiIlll)-#{3263829209,2044134291,836055710,1438052600,3735126138,4217841384,271779769,2508634749,2277820991}return SynapseXen_iIIllIiIiIIiiil[823967199]end)({},"II"),256)]elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[2562655903]or(function()local SynapseXen_lIiIliiIlll="level 1 crook = luraph, level 100 boss = xen"SynapseXen_iIIllIiIiIIiiil[2562655903]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(3961993920,1131916314),SynapseXen_IIllIIIiIllIlIll(3726568889,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{3049654594,2045861820,1039042604,317593565,3635723185,1678797710,4142555209,4170166847}return SynapseXen_iIIllIiIiIIiiil[2562655903]end)())then local SynapseXen_IiIIiIiiiiiIIl=SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IIllIIIiIllIlIll(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[357887331]or(function(...)local SynapseXen_lIiIliiIlll="pain is gonna use the backspace method on xen"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(3048990069,453795734)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(3239582614,1055406521)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[357887331]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(2101072656,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(2731298146,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-SynapseXen_iiliIiI-#{477413118,3408232299,2797127938,793822207,3714747818,1022530210}return SynapseXen_iIIllIiIiIIiiil[357887331]end)(4579,{},{},"il","iIill","iiIII")),SynapseXen_liiiIlilliIIllIl,256)~=0;local SynapseXen_IIiIiIIllIIiIi=SynapseXen_iiilliIIiIiIIlilI(SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[1050581631],SynapseXen_iIIllIiIiIIiiil[2062815778]or(function()local SynapseXen_lIiIliiIlll="baby i just fell for uwu,,,,,, i wanna be with uwu!11!!"SynapseXen_iIIllIiIiIIiiil[2062815778]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(3332090258,1914221294),SynapseXen_IIllIIIiIllIlIll(210001830,SynapseXen_IIlililiIlililliI[6]))-string.len(SynapseXen_lIiIliiIlll)-#{4115948507,2711263278}return SynapseXen_iIIllIiIiIIiiil[2062815778]end)(),512),SynapseXen_liiiIlilliIIllIl,512)local SynapseXen_liilIi=SynapseXen_illiiIIIlIIil(SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IilIlIIi[1674574548],SynapseXen_iIIllIiIiIIiiil[1286734369]or(function(...)local SynapseXen_lIiIliiIlll="i'm intercommunication about the most nonecclesiastical dll exploits for esp. they only characterization objects with a antepatriarchal in the geistesgeschichte for the esp."local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(1983722895,2694700067)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(1034725296,3260233961)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[1286734369]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(417944385,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(3204912188,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{3434063251,1798650830,2586474757,3091392634,4136663464,1605891137,2849072040,184158681,475928212,1519045549}return SynapseXen_iIIllIiIiIIiiil[1286734369]end)(13539,"IIi",4161,6910,"l"),512),SynapseXen_liiiIlilliIIllIl,512)local SynapseXen_IIlIllIliIlll=SynapseXen_lliliiiliIiiIIliiI;if SynapseXen_IIiIiIIllIIiIi>255 then SynapseXen_IIiIiIIllIIiIi=SynapseXen_iiIIIlIiliIlIllIii[SynapseXen_IIiIiIIllIIiIi-256]else SynapseXen_IIiIiIIllIIiIi=SynapseXen_IIlIllIliIlll[SynapseXen_IIiIiIIllIIiIi]end;if SynapseXen_liilIi>255 then SynapseXen_liilIi=SynapseXen_iiIIIlIiliIlIllIii[SynapseXen_liilIi-256]else SynapseXen_liilIi=SynapseXen_IIlIllIliIlll[SynapseXen_liilIi]end;if SynapseXen_IIiIiIIllIIiIi<=SynapseXen_liilIi~=SynapseXen_IiIIiIiiiiiIIl then SynapseXen_IIilIlIiIIIi=SynapseXen_IIilIlIiIIIi+1 end elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[35913250]or(function()local SynapseXen_lIiIliiIlll="hi xen doesn't work on sk8r please help"SynapseXen_iIIllIiIiIIiiil[35913250]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(1335763090,3606186271),SynapseXen_IIllIIIiIllIlIll(3896490143,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{2904642565,3552906687}return SynapseXen_iIIllIiIiIIiiil[35913250]end)())then local SynapseXen_IiIIiIiiiiiIIl=SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[75215122]or(function()local SynapseXen_lIiIliiIlll="this is a christian obfuscator, no cursing allowed in our scripts"SynapseXen_iIIllIiIiIIiiil[75215122]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(2450581610,1478347436),SynapseXen_IIllIIIiIllIlIll(2206840160,SynapseXen_IIlililiIlililliI[4]))-string.len(SynapseXen_lIiIliiIlll)-#{1699082430,1826812470}return SynapseXen_iIIllIiIiIIiiil[75215122]end)(),256)local SynapseXen_IIiIiIIllIIiIi=SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IilIlIIi[1050581631],SynapseXen_iIIllIiIiIIiiil[2446960618]or(function()local SynapseXen_lIiIliiIlll="so if you'we nyot awawe of expwoiting by this point, you've pwobabwy been wiving undew a wock that the pionyeews used to wide fow miwes. wobwox is often seen as an expwoit-infested gwound by most fwom the suwface, awthough this isn't the case."SynapseXen_iIIllIiIiIIiiil[2446960618]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(124299730,1573232602),SynapseXen_IIllIIIiIllIlIll(3374043538,SynapseXen_IIlililiIlililliI[5]))-SynapseXen_iiliIiI-string.len(SynapseXen_lIiIliiIlll)-#{1074165553,3559742410,2965910695,2233211003,2902713140,172678362,3412762604,1140257608,1306791643,1143875314}return SynapseXen_iIIllIiIiIIiiil[2446960618]end)(),512)local SynapseXen_IIlIllIliIlll=SynapseXen_lliliiiliIiiIIliiI;local SynapseXen_IilIiIIIliiIIliIi,SynapseXen_IlIIiIliiI;local SynapseXen_IIIliiiIiiIIllliIii;local SynapseXen_iIilIiiiliiiiIIlii=0;SynapseXen_IilIiIIIliiIIliIi={}if SynapseXen_IIiIiIIllIIiIi~=1 then if SynapseXen_IIiIiIIllIIiIi~=0 then SynapseXen_IIIliiiIiiIIllliIii=SynapseXen_IiIIiIiiiiiIIl+SynapseXen_IIiIiIIllIIiIi-1 else SynapseXen_IIIliiiIiiIIllliIii=SynapseXen_IIlIIiliIil end;for SynapseXen_IIiliilIIi=SynapseXen_IiIIiIiiiiiIIl+1,SynapseXen_IIIliiiIiiIIllliIii do SynapseXen_IilIiIIIliiIIliIi[#SynapseXen_IilIiIIIliiIIliIi+1]=SynapseXen_IIlIllIliIlll[SynapseXen_IIiliilIIi]end;SynapseXen_IlIIiIliiI={SynapseXen_IIlIllIliIlll[SynapseXen_IiIIiIiiiiiIIl](unpack(SynapseXen_IilIiIIIliiIIliIi,1,SynapseXen_IIIliiiIiiIIllliIii-SynapseXen_IiIIiIiiiiiIIl))}else SynapseXen_IlIIiIliiI={SynapseXen_IIlIllIliIlll[SynapseXen_IiIIiIiiiiiIIl]()}end;for SynapseXen_IIlIiIlIIIiIiiil in next,SynapseXen_IlIIiIliiI do if SynapseXen_IIlIiIlIIIiIiiil>SynapseXen_iIilIiiiliiiiIIlii then SynapseXen_iIilIiiiliiiiIIlii=SynapseXen_IIlIiIlIIIiIiiil end end;return SynapseXen_IlIIiIliiI,SynapseXen_iIilIiiiliiiiIIlii elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[1490717928]or(function()local SynapseXen_lIiIliiIlll="aspect network better obfuscator"SynapseXen_iIIllIiIiIIiiil[1490717928]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(2089678033,1171357576),SynapseXen_IIllIIIiIllIlIll(4264173953,SynapseXen_IIlililiIlililliI[2]))-string.len(SynapseXen_lIiIliiIlll)-#{1088047719,4016936365,949979191,3612835063,1630263768}return SynapseXen_iIIllIiIiIIiiil[1490717928]end)())then local SynapseXen_IiIIiIiiiiiIIl=SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[113652522]or(function(...)local SynapseXen_lIiIliiIlll="now comes with a free n word pass"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(4128696620,2308995036)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(3549560410,745433866)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[113652522]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(2605918245,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(1558321737,SynapseXen_IIlililiIlililliI[6]))-string.len(SynapseXen_lIiIliiIlll)-SynapseXen_iiliIiI-#{2835236388,601404808,557080767,138775509,3607448745,3226230769,3269585646,872381413}return SynapseXen_iIIllIiIiIIiiil[113652522]end)("illIiIIIiiIl","Ilii","IiiliIIllIlIlIIIII","iiiiiIIllil","IIllIiIl","IilIillIlllIiil",{},{},"IllilIiIlii","ililIii"),256)local SynapseXen_IIlIllIliIlll=SynapseXen_lliliiiliIiiIIliiI;SynapseXen_IIlIllIliIlll[SynapseXen_IiIIiIiiiiiIIl]=assert(tonumber(SynapseXen_IIlIllIliIlll[SynapseXen_IiIIiIiiiiiIIl]),'`for` initial value must be a number')SynapseXen_IIlIllIliIlll[SynapseXen_IiIIiIiiiiiIIl+1]=assert(tonumber(SynapseXen_IIlIllIliIlll[SynapseXen_IiIIiIiiiiiIIl+1]),'`for` limit must be a number')SynapseXen_IIlIllIliIlll[SynapseXen_IiIIiIiiiiiIIl+2]=assert(tonumber(SynapseXen_IIlIllIliIlll[SynapseXen_IiIIiIiiiiiIIl+2]),'`for` step must be a number')SynapseXen_IIlIllIliIlll[SynapseXen_IiIIiIiiiiiIIl]=SynapseXen_IIlIllIliIlll[SynapseXen_IiIIiIiiiiiIIl]-SynapseXen_IIlIllIliIlll[SynapseXen_IiIIiIiiiiiIIl+2]SynapseXen_IIilIlIiIIIi=SynapseXen_IIilIlIiIIIi+SynapseXen_IilIlIIi[618162604]elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[634998035]or(function()local SynapseXen_lIiIliiIlll="my way to go against expwoiting is to have safety measuwes. i 1 wocawscwipt and onwy moduwes. hewe's how it wowks: this scwipt bewow stowes the moduwes in a tabwe fow each moduwe we send the wist with the moduwes and moduwe infowmation and use inyit a function in my moduwe that wiww stowe the info and aftew it has send to aww the moduwes it wiww dewete them. so whenyevew the cwient twies to hack they cant get the moduwes. onwy this peace of wocawscwipt."SynapseXen_iIIllIiIiIIiiil[634998035]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(3347221834,1667008538),SynapseXen_IIllIIIiIllIlIll(3583029517,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{326270610,560726903,1550627640,4213271560,1805380429,3220752785,3910114703,3245768962}return SynapseXen_iIIllIiIiIIiiil[634998035]end)())then local SynapseXen_IIiIiIIllIIiIi=SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[1050581631],SynapseXen_iIIllIiIiIIiiil[4160452823]or(function()local SynapseXen_lIiIliiIlll="imagine using some lua minifier tool and thinking you are a badass"SynapseXen_iIIllIiIiIIiiil[4160452823]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(4155883378,797900553),SynapseXen_IIllIIIiIllIlIll(2843021832,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{3523942673,2650643080,2855434473,817077592,2984148890,1077771429,3617451961,4032948346}return SynapseXen_iIIllIiIiIIiiil[4160452823]end)(),512)local SynapseXen_liilIi=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IilIlIIi[1674574548],SynapseXen_iIIllIiIiIIiiil[150603190]or(function(...)local SynapseXen_lIiIliiIlll="can we have an f in chat for ripull"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(2310538674,1300748261)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(2413395030,1881593708)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[150603190]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(1087732031,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(4121565174,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{2973489449,1973117207,1246075733,2067862767}return SynapseXen_iIIllIiIiIIiiil[150603190]end)(4325,3099))local SynapseXen_IIlIllIliIlll=SynapseXen_lliliiiliIiiIIliiI;if SynapseXen_IIiIiIIllIIiIi>255 then SynapseXen_IIiIiIIllIIiIi=SynapseXen_iiIIIlIiliIlIllIii[SynapseXen_IIiIiIIllIIiIi-256]else SynapseXen_IIiIiIIllIIiIi=SynapseXen_IIlIllIliIlll[SynapseXen_IIiIiIIllIIiIi]end;if SynapseXen_liilIi>255 then SynapseXen_liilIi=SynapseXen_iiIIIlIiliIlIllIii[SynapseXen_liilIi-256]else SynapseXen_liilIi=SynapseXen_IIlIllIliIlll[SynapseXen_liilIi]end;SynapseXen_IIlIllIliIlll[SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[2277550427]or(function(...)local SynapseXen_lIiIliiIlll="i'm intercommunication about the most nonecclesiastical dll exploits for esp. they only characterization objects with a antepatriarchal in the geistesgeschichte for the esp."local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(4177542141,2905566829)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(3652023960,642964701)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[2277550427]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(1532586812,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(2117672429,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{1048920460,4191025685,3172217469,4133987930,1124370988,1114580568,2616809794,2068941956}return SynapseXen_iIIllIiIiIIiiil[2277550427]end)("IliIliIIilill",13025),256)]=SynapseXen_IIiIiIIllIIiIi-SynapseXen_liilIi elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[921376961]or(function()local SynapseXen_lIiIliiIlll="i put more time into this shitty list of dead memes then i did into the obfuscator itself"SynapseXen_iIIllIiIiIIiiil[921376961]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(1513173646,1281087353),SynapseXen_IIllIIIiIllIlIll(2245855692,SynapseXen_IIlililiIlililliI[5]))-string.len(SynapseXen_lIiIliiIlll)-#{2186282622}return SynapseXen_iIIllIiIiIIiiil[921376961]end)())then local SynapseXen_IiIIiIiiiiiIIl=SynapseXen_iiilliIIiIiIIlilI(SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[3883658529]or(function()local SynapseXen_lIiIliiIlll="skisploit is the superior obfuscator, clearly."SynapseXen_iIIllIiIiIIiiil[3883658529]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(1214214299,755413191),SynapseXen_IIllIIIiIllIlIll(903963063,SynapseXen_IIlililiIlililliI[1]))-SynapseXen_iiliIiI-string.len(SynapseXen_lIiIliiIlll)-#{2718373746,458031057,801265222,2590350684,3741636625}return SynapseXen_iIIllIiIiIIiiil[3883658529]end)(),256),SynapseXen_liiiIlilliIIllIl,256)local SynapseXen_IIiIiIIllIIiIi=SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[1050581631],SynapseXen_iIIllIiIiIIiiil[3003857208]or(function()local SynapseXen_lIiIliiIlll="inb4 posted on exploit reports section"SynapseXen_iIIllIiIiIIiiil[3003857208]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(2077686750,2325894983),SynapseXen_IIllIIIiIllIlIll(1128486863,SynapseXen_IIlililiIlililliI[3]))-SynapseXen_iiliIiI-string.len(SynapseXen_lIiIliiIlll)-#{606536861}return SynapseXen_iIIllIiIiIIiiil[3003857208]end)(),512)local SynapseXen_IIlIllIliIlll=SynapseXen_lliliiiliIiiIIliiI;local SynapseXen_IiIliIiIlliI,SynapseXen_lliliIiIiIIiIIiiIiI;local SynapseXen_IIIliiiIiiIIllliIii;if SynapseXen_IIiIiIIllIIiIi==1 then return elseif SynapseXen_IIiIiIIllIIiIi==0 then SynapseXen_IIIliiiIiiIIllliIii=SynapseXen_IIlIIiliIil else SynapseXen_IIIliiiIiiIIllliIii=SynapseXen_IiIIiIiiiiiIIl+SynapseXen_IIiIiIIllIIiIi-2 end;SynapseXen_lliliIiIiIIiIIiiIiI={}SynapseXen_IiIliIiIlliI=0;for SynapseXen_IIiliilIIi=SynapseXen_IiIIiIiiiiiIIl,SynapseXen_IIIliiiIiiIIllliIii do SynapseXen_IiIliIiIlliI=SynapseXen_IiIliIiIlliI+1;SynapseXen_lliliIiIiIIiIIiiIiI[SynapseXen_IiIliIiIlliI]=SynapseXen_IIlIllIliIlll[SynapseXen_IIiliilIIi]end;return SynapseXen_lliliIiIiIIiIIiiIiI,SynapseXen_IiIliIiIlliI elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[4268976856]or(function(...)local SynapseXen_lIiIliiIlll="what are you trying to say? that fucking one dot + dot + dot + many dots is not adding adding 1 dot + dot and then adding all the dots together????"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(3734331252,1678917553)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(4113048484,181949666)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[4268976856]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(2159316640,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(2282041633,SynapseXen_IIlililiIlililliI[3]))-string.len(SynapseXen_lIiIliiIlll)-#{2510103460,1733417163,2016807833,2054953436,2818786803,2792104922,4222004350}return SynapseXen_iIIllIiIiIIiiil[4268976856]end)({},6931,{},"IIIIlIIlI","iiilliIIiIIlI"))then if SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[649503491],SynapseXen_iIIllIiIiIIiiil[3121467968]or(function(...)local SynapseXen_lIiIliiIlll="thats how mafia works"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(3834206522,2961770485)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(1563954015,2731032504)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[3121467968]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(3245131585,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(3706194079,SynapseXen_IIlililiIlililliI[4]))-string.len(SynapseXen_lIiIliiIlll)-SynapseXen_iiliIiI-#{508583070,1337501913,3023032016,4065370862,2267874889,1609549720,316920936}return SynapseXen_iIIllIiIiIIiiil[3121467968]end)(8129),262144)==(SynapseXen_iIIllIiIiIIiiil[4130335778]or(function()local SynapseXen_lIiIliiIlll="now with shitty xor string obfuscation"SynapseXen_iIIllIiIiIIiiil[4130335778]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(580675046,2444947063),SynapseXen_IIllIIIiIllIlIll(3261653277,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{3453702648,1866489233,1486464070}return SynapseXen_iIIllIiIiIIiiil[4130335778]end)())then SynapseXen_lliliiiliIiiIIliiI[SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[687258963]or(function(...)local SynapseXen_lIiIliiIlll="wow xen is shit buy luraph ok"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(1624763234,3950257257)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(3445279434,849678240)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[687258963]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(1023800363,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(77047184,SynapseXen_IIlililiIlililliI[3]))-string.len(SynapseXen_lIiIliiIlll)-#{2249538935,1926678961,562032233,1204643245,4184970617}return SynapseXen_iIIllIiIiIIiiil[687258963]end)({},4315,"illlliiIII"),256)]=SynapseXen_iilIlii else SynapseXen_lliliiiliIiiIIliiI[SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[687258963]or(function(...)local SynapseXen_lIiIliiIlll="wow xen is shit buy luraph ok"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(1624763234,3950257257)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(3445279434,849678240)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[687258963]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(1023800363,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(77047184,SynapseXen_IIlililiIlililliI[3]))-string.len(SynapseXen_lIiIliiIlll)-#{2249538935,1926678961,562032233,1204643245,4184970617}return SynapseXen_iIIllIiIiIIiiil[687258963]end)({},4315,"illlliiIII"),256)]=SynapseXen_IIlililiIlililliI[SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[649503491],SynapseXen_iIIllIiIiIIiiil[3121467968]or(function(...)local SynapseXen_lIiIliiIlll="thats how mafia works"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(3834206522,2961770485)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(1563954015,2731032504)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[3121467968]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(3245131585,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(3706194079,SynapseXen_IIlililiIlililliI[4]))-string.len(SynapseXen_lIiIliiIlll)-SynapseXen_iiliIiI-#{508583070,1337501913,3023032016,4065370862,2267874889,1609549720,316920936}return SynapseXen_iIIllIiIiIIiiil[3121467968]end)(8129),262144)]end elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[1985894357]or(function()local SynapseXen_lIiIliiIlll="HELP ME PEOPLE ARE CRASHING MY GAME PLZ HELP"SynapseXen_iIIllIiIiIIiiil[1985894357]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(897418454,4095032466),SynapseXen_IIllIIIiIllIlIll(2446541130,SynapseXen_IIlililiIlililliI[1]))-string.len(SynapseXen_lIiIliiIlll)-#{1040277791,3286566555,2821321099,2298766508,4000372291,4111890789,3071819544,4140895290,3876210743,1893593801}return SynapseXen_iIIllIiIiIIiiil[1985894357]end)())then local SynapseXen_IiIIiIiiiiiIIl=SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[3003893527]or(function()local SynapseXen_lIiIliiIlll="thats how mafia works"SynapseXen_iIIllIiIiIIiiil[3003893527]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(3895234147,3248439931),SynapseXen_IIllIIIiIllIlIll(1492934812,SynapseXen_iilIlii))-SynapseXen_iiliIiI-string.len(SynapseXen_lIiIliiIlll)-#{2604935493,584775834,1302724598,4252969705,3615996327,1354387282,4159614612,3024119851}return SynapseXen_iIIllIiIiIIiiil[3003893527]end)(),256)local SynapseXen_IIiIiIIllIIiIi=SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IilIlIIi[1050581631],SynapseXen_iIIllIiIiIIiiil[1688416775]or(function()local SynapseXen_lIiIliiIlll="xen best rerubi paste"SynapseXen_iIIllIiIiIIiiil[1688416775]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(28640880,3678878417),SynapseXen_IIllIIIiIllIlIll(2881216662,SynapseXen_iilIlii))-SynapseXen_iiliIiI-string.len(SynapseXen_lIiIliiIlll)-#{4021439118,2238312150,3648624040,456447191}return SynapseXen_iIIllIiIiIIiiil[1688416775]end)(),512)local SynapseXen_liilIi=SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IilIlIIi[1674574548],SynapseXen_iIIllIiIiIIiiil[163954242]or(function(...)local SynapseXen_lIiIliiIlll="pain exist is gonna connect the dots of xen"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(2046104863,2757054156)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(3081135791,1213847749)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[163954242]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(2954781878,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(485513444,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{2246099821,240966555,3782622742,945025020,2015756016}return SynapseXen_iIIllIiIiIIiiil[163954242]end)("IlilIlIi","IiililllliIillIli","iIIlIiiillliiIli",12324,"IlIiIiiiiiilIlIiI","lIIiilllli",4833),512)local SynapseXen_IIlIllIliIlll=SynapseXen_lliliiiliIiiIIliiI;local SynapseXen_IilIiIIIliiIIliIi,SynapseXen_IlIIiIliiI;local SynapseXen_IIIliiiIiiIIllliIii,SynapseXen_IiIliIiIlliI;SynapseXen_IilIiIIIliiIIliIi={}if SynapseXen_IIiIiIIllIIiIi~=1 then if SynapseXen_IIiIiIIllIIiIi~=0 then SynapseXen_IIIliiiIiiIIllliIii=SynapseXen_IiIIiIiiiiiIIl+SynapseXen_IIiIiIIllIIiIi-1 else SynapseXen_IIIliiiIiiIIllliIii=SynapseXen_IIlIIiliIil end;SynapseXen_IiIliIiIlliI=0;for SynapseXen_IIiliilIIi=SynapseXen_IiIIiIiiiiiIIl+1,SynapseXen_IIIliiiIiiIIllliIii do SynapseXen_IiIliIiIlliI=SynapseXen_IiIliIiIlliI+1;SynapseXen_IilIiIIIliiIIliIi[SynapseXen_IiIliIiIlliI]=SynapseXen_IIlIllIliIlll[SynapseXen_IIiliilIIi]end;SynapseXen_IIIliiiIiiIIllliIii,SynapseXen_IlIIiIliiI=SynapseXen_illIiIlIlil(SynapseXen_IIlIllIliIlll[SynapseXen_IiIIiIiiiiiIIl](unpack(SynapseXen_IilIiIIIliiIIliIi,1,SynapseXen_IIIliiiIiiIIllliIii-SynapseXen_IiIIiIiiiiiIIl)))else SynapseXen_IIIliiiIiiIIllliIii,SynapseXen_IlIIiIliiI=SynapseXen_illIiIlIlil(SynapseXen_IIlIllIliIlll[SynapseXen_IiIIiIiiiiiIIl]())end;SynapseXen_IIlIIiliIil=SynapseXen_IiIIiIiiiiiIIl-1;if SynapseXen_liilIi~=1 then if SynapseXen_liilIi~=0 then SynapseXen_IIIliiiIiiIIllliIii=SynapseXen_IiIIiIiiiiiIIl+SynapseXen_liilIi-2 else SynapseXen_IIIliiiIiiIIllliIii=SynapseXen_IIIliiiIiiIIllliIii+SynapseXen_IiIIiIiiiiiIIl-1 end;SynapseXen_IiIliIiIlliI=0;for SynapseXen_IIiliilIIi=SynapseXen_IiIIiIiiiiiIIl,SynapseXen_IIIliiiIiiIIllliIii do SynapseXen_IiIliIiIlliI=SynapseXen_IiIliIiIlliI+1;SynapseXen_IIlIllIliIlll[SynapseXen_IIiliilIIi]=SynapseXen_IlIIiIliiI[SynapseXen_IiIliIiIlliI]end end elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[3553045883]or(function()local SynapseXen_lIiIliiIlll="https://twitter.com/Ripull_RBLX/status/1059334518581145603"SynapseXen_iIIllIiIiIIiiil[3553045883]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(2403454291,2525039802),SynapseXen_IIllIIIiIllIlIll(1346759163,SynapseXen_IIlililiIlililliI[4]))-string.len(SynapseXen_lIiIliiIlll)-#{1363383705,3618433290,3456298976,3124594760}return SynapseXen_iIIllIiIiIIiiil[3553045883]end)())then if not not SynapseXen_lliliiiliIiiIIliiI[SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[3236015545]or(function()local SynapseXen_lIiIliiIlll="yed"SynapseXen_iIIllIiIiIIiiil[3236015545]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(3488270815,1862682676),SynapseXen_IIllIIIiIllIlIll(3916012017,SynapseXen_IIlililiIlililliI[4]))-SynapseXen_iiliIiI-string.len(SynapseXen_lIiIliiIlll)-#{466186537,1395197810,2491314494,2566521263,3548040940,2233492608,1176414688,2666471727}return SynapseXen_iIIllIiIiIIiiil[3236015545]end)(),256)]==(SynapseXen_illiiIIIlIIil(SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[1674574548],SynapseXen_iIIllIiIiIIiiil[433154883]or(function()local SynapseXen_lIiIliiIlll="hi xen doesn't work on sk8r please help"SynapseXen_iIIllIiIiIIiiil[433154883]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(3598076547,2351282569),SynapseXen_IIllIIIiIllIlIll(332433648,SynapseXen_IIlililiIlililliI[4]))-SynapseXen_iiliIiI-string.len(SynapseXen_lIiIliiIlll)-#{1704513512,4209109138,3236888427,731867538,1737031969,2511102657}return SynapseXen_iIIllIiIiIIiiil[433154883]end)(),512),SynapseXen_liiiIlilliIIllIl,512)==0)then SynapseXen_IIilIlIiIIIi=SynapseXen_IIilIlIiIIIi+1 end elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[2079269171]or(function(...)local SynapseXen_lIiIliiIlll="i'm intercommunication about the most nonecclesiastical dll exploits for esp. they only characterization objects with a antepatriarchal in the geistesgeschichte for the esp."local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(1303964736,3142417955)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(2625959078,1669030069)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[2079269171]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(730005879,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(2889463701,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{4005977029,4238414631,1694544882,1411841751,870913488,1525711661}return SynapseXen_iIIllIiIiIIiiil[2079269171]end)("IiillillIliliiIil",2987,{},2035,12555,"lliiIiiI",1031,{},"iIlIiIilIilIiI","iiiilIiIiII"))then SynapseXen_lliliiiliIiiIIliiI[SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[1026453171]or(function()local SynapseXen_lIiIliiIlll="this is so sad, alexa play ripull.mp4"SynapseXen_iIIllIiIiIIiiil[1026453171]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(1334153338,1615786554),SynapseXen_IIllIIIiIllIlIll(2138097404,SynapseXen_IIlililiIlililliI[1]))-SynapseXen_iiliIiI-string.len(SynapseXen_lIiIliiIlll)-#{834421589,1334306102,889252784,4171651051}return SynapseXen_iIIllIiIiIIiiil[1026453171]end)(),256)]=SynapseXen_liliiiiIIil[SynapseXen_iiIIIlIiliIlIllIii[SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[649503491],SynapseXen_iIIllIiIiIIiiil[2633729291]or(function(...)local SynapseXen_lIiIliiIlll="can we have an f in chat for ripull"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(1348308472,468599786)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(1541088188,2753899237)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[2633729291]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(2542009184,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(2910734211,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-SynapseXen_iiliIiI-#{2750696785,821983507,1976068748}return SynapseXen_iIIllIiIiIIiiil[2633729291]end)(7191,"i",{},"iIlilllIlIllii",575,14588,6886,{}),262144)]]elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[3023877148]or(function(...)local SynapseXen_lIiIliiIlll="now with shitty xor string obfuscation"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(2139522459,2275985446)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(1428276696,2866686965)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[3023877148]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(585879452,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(1232291208,SynapseXen_IIlililiIlililliI[5]))-string.len(SynapseXen_lIiIliiIlll)-#{2103620817,3230464294,186345738,4027948890,1284087847,1773271479,169366035,3633682781,500527262}return SynapseXen_iIIllIiIiIIiiil[3023877148]end)({},{},"IlilII"))then local SynapseXen_IIiIiIIllIIiIi=SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[1050581631],SynapseXen_iIIllIiIiIIiiil[1262771654]or(function(...)local SynapseXen_lIiIliiIlll="my way to go against expwoiting is to have safety measuwes. i 1 wocawscwipt and onwy moduwes. hewe's how it wowks: this scwipt bewow stowes the moduwes in a tabwe fow each moduwe we send the wist with the moduwes and moduwe infowmation and use inyit a function in my moduwe that wiww stowe the info and aftew it has send to aww the moduwes it wiww dewete them. so whenyevew the cwient twies to hack they cant get the moduwes. onwy this peace of wocawscwipt."local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(668798171,492223182)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(780690056,3514275320)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[1262771654]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(2672920506,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(501019612,SynapseXen_IIlililiIlililliI[6]))-string.len(SynapseXen_lIiIliiIlll)-SynapseXen_iiliIiI-#{186444922,4003020203,1626411325,157069186,2777766743,1976670776,1076477441,1755815366}return SynapseXen_iIIllIiIiIIiiil[1262771654]end)("liiilIIlliIilIlilI",{}),512)local SynapseXen_liilIi=SynapseXen_IIllIIIiIllIlIll(SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IilIlIIi[1674574548],SynapseXen_iIIllIiIiIIiiil[1930441473]or(function()local SynapseXen_lIiIliiIlll="this is a christian obfuscator, no cursing allowed in our scripts"SynapseXen_iIIllIiIiIIiiil[1930441473]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(1243023578,132799438),SynapseXen_IIllIIIiIllIlIll(1018364355,SynapseXen_iilIlii))-SynapseXen_iiliIiI-string.len(SynapseXen_lIiIliiIlll)-#{239307892,1611364745,2933538106,1955807337,1887669794,178618642,552828935,1518794008,2650260608}return SynapseXen_iIIllIiIiIIiiil[1930441473]end)(),512),SynapseXen_liiiIlilliIIllIl)local SynapseXen_IIlIllIliIlll=SynapseXen_lliliiiliIiiIIliiI;if SynapseXen_IIiIiIIllIIiIi>255 then SynapseXen_IIiIiIIllIIiIi=SynapseXen_iiIIIlIiliIlIllIii[SynapseXen_IIiIiIIllIIiIi-256]else SynapseXen_IIiIiIIllIIiIi=SynapseXen_IIlIllIliIlll[SynapseXen_IIiIiIIllIIiIi]end;if SynapseXen_liilIi>255 then SynapseXen_liilIi=SynapseXen_iiIIIlIiliIlIllIii[SynapseXen_liilIi-256]else SynapseXen_liilIi=SynapseXen_IIlIllIliIlll[SynapseXen_liilIi]end;SynapseXen_IIlIllIliIlll[SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[407977551]or(function(...)local SynapseXen_lIiIliiIlll="hi devforum"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(2892965093,764055664)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(2150910829,2144040335)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[407977551]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(2818384894,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(3782142046,SynapseXen_IIlililiIlililliI[2]))-string.len(SynapseXen_lIiIliiIlll)-#{799805994,2323332567,836071738,2443158981,3276901700,2704312893,4173248421,3762030055,1445090184}return SynapseXen_iIIllIiIiIIiiil[407977551]end)("iillIlIllIIl",{},"iiIiIIlil",{},9139,{},14089,29),256)]=SynapseXen_IIiIiIIllIIiIi/SynapseXen_liilIi elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[1858918786]or(function()local SynapseXen_lIiIliiIlll="wow xen is shit buy luraph ok"SynapseXen_iIIllIiIiIIiiil[1858918786]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(3943048274,1695974794),SynapseXen_IIllIIIiIllIlIll(3735611788,SynapseXen_IIlililiIlililliI[1]))-string.len(SynapseXen_lIiIliiIlll)-#{321452806}return SynapseXen_iIIllIiIiIIiiil[1858918786]end)())then local SynapseXen_IiIIiIiiiiiIIl=SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[1062465886]or(function()local SynapseXen_lIiIliiIlll="wally bad bird"SynapseXen_iIIllIiIiIIiiil[1062465886]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(3640573800,231762888),SynapseXen_IIllIIIiIllIlIll(2757802243,SynapseXen_iilIlii))-SynapseXen_iiliIiI-string.len(SynapseXen_lIiIliiIlll)-#{3062578568,2568555538,2171391110,228072068,2851240933,1894878038,3565573812}return SynapseXen_iIIllIiIiIIiiil[1062465886]end)(),256)~=0;local SynapseXen_IIiIiIIllIIiIi=SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[1050581631],SynapseXen_iIIllIiIiIIiiil[1749218213]or(function(...)local SynapseXen_lIiIliiIlll="so if you'we nyot awawe of expwoiting by this point, you've pwobabwy been wiving undew a wock that the pionyeews used to wide fow miwes. wobwox is often seen as an expwoit-infested gwound by most fwom the suwface, awthough this isn't the case."local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(2537507764,2976572247)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(1562047652,2732921822)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[1749218213]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(3366597991,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(2679328139,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{477990040,4191970946,3753537523}return SynapseXen_iIIllIiIiIIiiil[1749218213]end)("lIIiliIllilIll",{},"il",6616,5115,"iIilIlIIilIlIillili","lIliIlIIliIiIillii"),512)local SynapseXen_liilIi=SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[1674574548],SynapseXen_iIIllIiIiIIiiil[1920291047]or(function()local SynapseXen_lIiIliiIlll="xen detects custom getfenv"SynapseXen_iIIllIiIiIIiiil[1920291047]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(259469637,126642444),SynapseXen_IIllIIIiIllIlIll(1098852725,SynapseXen_IIlililiIlililliI[4]))-SynapseXen_iiliIiI-string.len(SynapseXen_lIiIliiIlll)-#{3572133837,316239928,4008780902,1696334377,1914849079,3656472480}return SynapseXen_iIIllIiIiIIiiil[1920291047]end)(),512)local SynapseXen_IIlIllIliIlll=SynapseXen_lliliiiliIiiIIliiI;if SynapseXen_IIiIiIIllIIiIi>255 then SynapseXen_IIiIiIIllIIiIi=SynapseXen_iiIIIlIiliIlIllIii[SynapseXen_IIiIiIIllIIiIi-256]else SynapseXen_IIiIiIIllIIiIi=SynapseXen_IIlIllIliIlll[SynapseXen_IIiIiIIllIIiIi]end;if SynapseXen_liilIi>255 then SynapseXen_liilIi=SynapseXen_iiIIIlIiliIlIllIii[SynapseXen_liilIi-256]else SynapseXen_liilIi=SynapseXen_IIlIllIliIlll[SynapseXen_liilIi]end;if SynapseXen_IIiIiIIllIIiIi<SynapseXen_liilIi~=SynapseXen_IiIIiIiiiiiIIl then SynapseXen_IIilIlIiIIIi=SynapseXen_IIilIlIiIIIi+1 end elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[1087778022]or(function()local SynapseXen_lIiIliiIlll="hi xen crashes on my axon paste plz help"SynapseXen_iIIllIiIiIIiiil[1087778022]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(161651720,89999974),SynapseXen_IIllIIIiIllIlIll(2108714639,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{2197167621,2554722196,144618049,2231903742,2925089209,68006695,3174152614}return SynapseXen_iIIllIiIiIIiiil[1087778022]end)())then SynapseXen_lliliiiliIiiIIliiI[SynapseXen_IIllIIIiIllIlIll(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[820011405]or(function()local SynapseXen_lIiIliiIlll="xen doesn't come with instance caching, sorry superskater"SynapseXen_iIIllIiIiIIiiil[820011405]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(2237585136,3151531778),SynapseXen_IIllIIIiIllIlIll(4193256766,SynapseXen_IIlililiIlililliI[2]))-string.len(SynapseXen_lIiIliiIlll)-#{1299670009,350876306,2917839991,942883214,599582500,92043032}return SynapseXen_iIIllIiIiIIiiil[820011405]end)())]=not SynapseXen_lliliiiliIiiIIliiI[SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[1050581631],SynapseXen_iIIllIiIiIIiiil[3642658263]or(function()local SynapseXen_lIiIliiIlll="hi xen doesn't work on sk8r please help"SynapseXen_iIIllIiIiIIiiil[3642658263]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(2629536525,939621812),SynapseXen_IIllIIIiIllIlIll(3589584929,SynapseXen_iilIlii))-SynapseXen_iiliIiI-string.len(SynapseXen_lIiIliiIlll)-#{2162454264}return SynapseXen_iIIllIiIiIIiiil[3642658263]end)(),512)]elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[1865220192]or(function()local SynapseXen_lIiIliiIlll="wait for someone on devforum to say they are gonna deobfuscate this"SynapseXen_iIIllIiIiIIiiil[1865220192]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(2786752619,2810480567),SynapseXen_IIllIIIiIllIlIll(3113802220,SynapseXen_IIlililiIlililliI[6]))-string.len(SynapseXen_lIiIliiIlll)-#{1795639827,3438555908,1735050909,2480989853}return SynapseXen_iIIllIiIiIIiiil[1865220192]end)())then local SynapseXen_IiIIiIiiiiiIIl=SynapseXen_IIllIIIiIllIlIll(SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[1154343950]or(function()local SynapseXen_lIiIliiIlll="baby i just fell for uwu,,,,,, i wanna be with uwu!11!!"SynapseXen_iIIllIiIiIIiiil[1154343950]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(189884552,1249807768),SynapseXen_IIllIIIiIllIlIll(4077259597,SynapseXen_IIlililiIlililliI[3]))-string.len(SynapseXen_lIiIliiIlll)-#{3152291679,846589394}return SynapseXen_iIIllIiIiIIiiil[1154343950]end)(),256),SynapseXen_liiiIlilliIIllIl)local SynapseXen_IIlIllIliIlll=SynapseXen_lliliiiliIiiIIliiI;local SynapseXen_IIIlliIiIlilliiilli=SynapseXen_IIlIllIliIlll[SynapseXen_IiIIiIiiiiiIIl+2]local SynapseXen_IIlIiIlIIIiIiiil=SynapseXen_IIlIllIliIlll[SynapseXen_IiIIiIiiiiiIIl]+SynapseXen_IIIlliIiIlilliiilli;SynapseXen_IIlIllIliIlll[SynapseXen_IiIIiIiiiiiIIl]=SynapseXen_IIlIiIlIIIiIiiil;if SynapseXen_IIIlliIiIlilliiilli>0 then if SynapseXen_IIlIiIlIIIiIiiil<=SynapseXen_IIlIllIliIlll[SynapseXen_IiIIiIiiiiiIIl+1]then SynapseXen_IIilIlIiIIIi=SynapseXen_IIilIlIiIIIi+SynapseXen_IilIlIIi[618162604]SynapseXen_IIlIllIliIlll[SynapseXen_IiIIiIiiiiiIIl+3]=SynapseXen_IIlIiIlIIIiIiiil end else if SynapseXen_IIlIiIlIIIiIiiil>=SynapseXen_IIlIllIliIlll[SynapseXen_IiIIiIiiiiiIIl+1]then SynapseXen_IIilIlIiIIIi=SynapseXen_IIilIlIiIIIi+SynapseXen_IilIlIIi[618162604]SynapseXen_IIlIllIliIlll[SynapseXen_IiIIiIiiiiiIIl+3]=SynapseXen_IIlIiIlIIIiIiiil end end elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[486960211]or(function()local SynapseXen_lIiIliiIlll="level 1 crook = luraph, level 100 boss = xen"SynapseXen_iIIllIiIiIIiiil[486960211]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(3527372623,894387369),SynapseXen_IIllIIIiIllIlIll(2520749973,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{824441093,649387391,482740677,2799763047,3785337642,1325258664,3551188847,1901535288,2811801798}return SynapseXen_iIIllIiIiIIiiil[486960211]end)())then SynapseXen_lliliiiliIiiIIliiI[SynapseXen_iiilliIIiIiIIlilI(SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[2944455615]or(function(...)local SynapseXen_lIiIliiIlll="hi devforum"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(3393475622,2021141060)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(3226698193,1068271804)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[2944455615]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(3119042814,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(2057020723,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{1851240814,3265774824,1898974519,3264630024,9232287,1040476228,3544955592,689022947,3309630460}return SynapseXen_iIIllIiIiIIiiil[2944455615]end)(8937,"illiII","iiiiilIIllllillilII"),256),SynapseXen_liiiIlilliIIllIl,256)]=SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[1050581631],SynapseXen_iIIllIiIiIIiiil[3455975403]or(function()local SynapseXen_lIiIliiIlll="i'm intercommunication about the most nonecclesiastical dll exploits for esp. they only characterization objects with a antepatriarchal in the geistesgeschichte for the esp."SynapseXen_iIIllIiIiIIiiil[3455975403]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(1737371878,534022605),SynapseXen_IIllIIIiIllIlIll(836749772,SynapseXen_IIlililiIlililliI[4]))-SynapseXen_iiliIiI-string.len(SynapseXen_lIiIliiIlll)-#{72637077}return SynapseXen_iIIllIiIiIIiiil[3455975403]end)(),512)~=0;if SynapseXen_illiiIIIlIIil(SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[1674574548],SynapseXen_iIIllIiIiIIiiil[1548562093]or(function(...)local SynapseXen_lIiIliiIlll="sponsored by ironbrew, jk xen is better"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(4052103792,478898775)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(3269120554,1025859152)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[1548562093]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(1243561911,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(3596434401,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{2028195293,8047977,4143925290,2346299931,588142614}return SynapseXen_iIIllIiIiIIiiil[1548562093]end)(4036),512),SynapseXen_liiiIlilliIIllIl,512)~=0 then SynapseXen_IIilIlIiIIIi=SynapseXen_IIilIlIiIIIi+1 end elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[660672141]or(function(...)local SynapseXen_lIiIliiIlll="now comes with a free n word pass"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(443602475,3319299730)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(711372499,3583580074)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[660672141]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(1909571493,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(3892181093,SynapseXen_IIlililiIlililliI[4]))-string.len(SynapseXen_lIiIliiIlll)-#{2321099037}return SynapseXen_iIIllIiIiIIiiil[660672141]end)("lIiIiiIllliI"))then SynapseXen_lliliiiliIiiIIliiI[SynapseXen_iiilliIIiIiIIlilI(SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[2376404849]or(function(...)local SynapseXen_lIiIliiIlll="so if you'we nyot awawe of expwoiting by this point, you've pwobabwy been wiving undew a wock that the pionyeews used to wide fow miwes. wobwox is often seen as an expwoit-infested gwound by most fwom the suwface, awthough this isn't the case."local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(4254043038,2021680796)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(3066653439,1228307837)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[2376404849]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(3256301049,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(911722700,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-SynapseXen_iiliIiI-#{1555120501,173607089,2728804092,2438936437}return SynapseXen_iIIllIiIiIIiiil[2376404849]end)("iliiiIIIIillI",{},{}),256),SynapseXen_liiiIlilliIIllIl,256)]=-SynapseXen_lliliiiliIiiIIliiI[SynapseXen_illiiIIIlIIil(SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IilIlIIi[1050581631],SynapseXen_iIIllIiIiIIiiil[4275568405]or(function()local SynapseXen_lIiIliiIlll="now with shitty xor string obfuscation"SynapseXen_iIIllIiIiIIiiil[4275568405]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(3021953947,283559345),SynapseXen_IIllIIIiIllIlIll(3585450806,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{2345371754,947793256,2964416481,1862425482,1929708298,3875567302,3201865962,3505638657}return SynapseXen_iIIllIiIiIIiiil[4275568405]end)(),512),SynapseXen_liiiIlilliIIllIl,512)]elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[2161235472]or(function()local SynapseXen_lIiIliiIlll="my way to go against expwoiting is to have safety measuwes. i 1 wocawscwipt and onwy moduwes. hewe's how it wowks: this scwipt bewow stowes the moduwes in a tabwe fow each moduwe we send the wist with the moduwes and moduwe infowmation and use inyit a function in my moduwe that wiww stowe the info and aftew it has send to aww the moduwes it wiww dewete them. so whenyevew the cwient twies to hack they cant get the moduwes. onwy this peace of wocawscwipt."SynapseXen_iIIllIiIiIIiiil[2161235472]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(2638164404,180839176),SynapseXen_IIllIIIiIllIlIll(3870761466,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{2767361257,673785549,2291164137,545154564,4262903473,2209582623,2742851156}return SynapseXen_iIIllIiIiIIiiil[2161235472]end)())then SynapseXen_lliliiiliIiiIIliiI[SynapseXen_IIllIIIiIllIlIll(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[3629416679]or(function(...)local SynapseXen_lIiIliiIlll="this is so sad, alexa play ripull.mp4"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(517786329,2157424761)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(3403108452,891844817)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[3629416679]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(3116906091,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(1456287593,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-SynapseXen_iiliIiI-#{4084863271,1204074961,2997212550,3840304629,2919420102,3016047905,2123776967,2287621218,1396982717}return SynapseXen_iIIllIiIiIIiiil[3629416679]end)(4872,10588,3569,6382,{},{}))]=SynapseXen_lliliiiliIiiIIliiI[SynapseXen_IIllIIIiIllIlIll(SynapseXen_IilIlIIi[1050581631],SynapseXen_iIIllIiIiIIiiil[3836237105]or(function()local SynapseXen_lIiIliiIlll="can we have an f in chat for ripull"SynapseXen_iIIllIiIiIIiiil[3836237105]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(1916368080,3938871730),SynapseXen_IIllIIIiIllIlIll(3920644666,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{3467054343}return SynapseXen_iIIllIiIiIIiiil[3836237105]end)())]elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[3092344596]or(function()local SynapseXen_lIiIliiIlll="double-header fair! this rationalization has a overenthusiastically anticheat! you will get nonpermissible for exploiting!"SynapseXen_iIIllIiIiIIiiil[3092344596]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(583360333,1454896880),SynapseXen_IIllIIIiIllIlIll(3003853656,SynapseXen_IIlililiIlililliI[2]))-string.len(SynapseXen_lIiIliiIlll)-#{62108588,2256385094,1683288231,167736029,3325501367}return SynapseXen_iIIllIiIiIIiiil[3092344596]end)())then local SynapseXen_IiIIiIiiiiiIIl=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[571939577]or(function()local SynapseXen_lIiIliiIlll="hi my 2.5mb script doesn't work with xen please help"SynapseXen_iIIllIiIiIIiiil[571939577]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(2492297345,1476952747),SynapseXen_IIllIIIiIllIlIll(1954666422,SynapseXen_IIlililiIlililliI[6]))-string.len(SynapseXen_lIiIliiIlll)-#{332307166,2908392009}return SynapseXen_iIIllIiIiIIiiil[571939577]end)())~=0;local SynapseXen_IIiIiIIllIIiIi=SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[1050581631],SynapseXen_iIIllIiIiIIiiil[2351832694]or(function()local SynapseXen_lIiIliiIlll="SYNAPSE XEN [FE BYPASS] [BETTER THEN LURAPH] [AMAZING] OMG OMG OMG !!!!!!"SynapseXen_iIIllIiIiIIiiil[2351832694]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(506360130,3031960196),SynapseXen_IIllIIIiIllIlIll(3688442728,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{870251294,219194330}return SynapseXen_iIIllIiIiIIiiil[2351832694]end)(),512)local SynapseXen_liilIi=SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IilIlIIi[1674574548],SynapseXen_iIIllIiIiIIiiil[59268440]or(function()local SynapseXen_lIiIliiIlll="HELP ME PEOPLE ARE CRASHING MY GAME PLZ HELP"SynapseXen_iIIllIiIiIIiiil[59268440]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(2206784523,2483210932),SynapseXen_IIllIIIiIllIlIll(1724195542,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{3273022991,1132496385}return SynapseXen_iIIllIiIiIIiiil[59268440]end)(),512)local SynapseXen_IIlIllIliIlll=SynapseXen_lliliiiliIiiIIliiI;if SynapseXen_IIiIiIIllIIiIi>255 then SynapseXen_IIiIiIIllIIiIi=SynapseXen_iiIIIlIiliIlIllIii[SynapseXen_IIiIiIIllIIiIi-256]else SynapseXen_IIiIiIIllIIiIi=SynapseXen_IIlIllIliIlll[SynapseXen_IIiIiIIllIIiIi]end;if SynapseXen_liilIi>255 then SynapseXen_liilIi=SynapseXen_iiIIIlIiliIlIllIii[SynapseXen_liilIi-256]else SynapseXen_liilIi=SynapseXen_IIlIllIliIlll[SynapseXen_liilIi]end;if SynapseXen_IIiIiIIllIIiIi==SynapseXen_liilIi~=SynapseXen_IiIIiIiiiiiIIl then SynapseXen_IIilIlIiIIIi=SynapseXen_IIilIlIiIIIi+1 end elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[309217022]or(function()local SynapseXen_lIiIliiIlll="i put more time into this shitty list of dead memes then i did into the obfuscator itself"SynapseXen_iIIllIiIiIIiiil[309217022]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(2076502948,2780458151),SynapseXen_IIllIIIiIllIlIll(2939210550,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{3852777895,2858751188,568776032,1907050267}return SynapseXen_iIIllIiIiIIiiil[309217022]end)())then SynapseXen_IIilIlIiIIIi=SynapseXen_IIilIlIiIIIi+SynapseXen_IilIlIIi[618162604]elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[950157261]or(function(...)local SynapseXen_lIiIliiIlll="https://twitter.com/Ripull_RBLX/status/1059334518581145603"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(341651104,1811889430)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(3802472048,492510729)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[950157261]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(864831304,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(3751349385,SynapseXen_IIlililiIlililliI[5]))-string.len(SynapseXen_lIiIliiIlll)-#{701691385,327339724,3547497488,652413593,247052791,1513640663,4266467743}return SynapseXen_iIIllIiIiIIiiil[950157261]end)("ilIiiiIliIlliilill","iiiIiiiiiIlliiiiI",14631,{},342))then SynapseXen_lliliiiliIiiIIliiI[SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[1996784722]or(function()local SynapseXen_lIiIliiIlll="level 1 crook = luraph, level 100 boss = xen"SynapseXen_iIIllIiIiIIiiil[1996784722]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(236228826,1623988076),SynapseXen_IIllIIIiIllIlIll(4251906152,SynapseXen_IIlililiIlililliI[5]))-string.len(SynapseXen_lIiIliiIlll)-#{1805223191,479619753,3722453655,1477562357,1112495052,2816399018,25927649,97091065}return SynapseXen_iIIllIiIiIIiiil[1996784722]end)(),256)]=SynapseXen_iiIIIlIiliIlIllIii[SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IilIlIIi[649503491],SynapseXen_iIIllIiIiIIiiil[725951062]or(function()local SynapseXen_lIiIliiIlll="imagine using some lua minifier tool and thinking you are a badass"SynapseXen_iIIllIiIiIIiiil[725951062]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(1087778318,2934874615),SynapseXen_IIllIIIiIllIlIll(2106521273,SynapseXen_IIlililiIlililliI[5]))-SynapseXen_iiliIiI-string.len(SynapseXen_lIiIliiIlll)-#{3231203950}return SynapseXen_iIIllIiIiIIiiil[725951062]end)(),262144)]elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[3513205970]or(function()local SynapseXen_lIiIliiIlll="SECURE API, IMPOSSIBLE TO BYPASS!"SynapseXen_iIIllIiIiIIiiil[3513205970]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(461520057,2896952057),SynapseXen_IIllIIIiIllIlIll(3328286609,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{3603534046,1592876143,3464165088}return SynapseXen_iIIllIiIiIIiiil[3513205970]end)())then SynapseXen_lliliiiliIiiIIliiI[SynapseXen_IIllIIIiIllIlIll(SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[1847258351]or(function(...)local SynapseXen_lIiIliiIlll="wow xen is shit buy luraph ok"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(1626798529,2011355341)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(2217624175,2077345624)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[1847258351]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(1618614796,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(103161689,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{1762130429,1883887226,102975152,1152601576,242756107}return SynapseXen_iIIllIiIiIIiiil[1847258351]end)({},9797,587,{},"iIIlllliliIlllI",7632),256),SynapseXen_liiiIlilliIIllIl)]=#SynapseXen_lliliiiliIiiIIliiI[SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[1050581631],SynapseXen_iIIllIiIiIIiiil[3294660226]or(function(...)local SynapseXen_lIiIliiIlll="wally bad bird"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(1199056125,666204892)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(3536862275,758097288)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[3294660226]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(134296862,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(428728542,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-SynapseXen_iiliIiI-#{1130468710,3295527957,2823907638,1472917299,4239365658,2480443463,3474087668,237881044,41171813}return SynapseXen_iIIllIiIiIIiiil[3294660226]end)({},{},"iIiIilliliIliilIiI",{},8808,1119,{},"iIilllli","lIIIliIIIIlIIII",{}),512)]elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[354308519]or(function(...)local SynapseXen_lIiIliiIlll="i'm intercommunication about the most nonecclesiastical dll exploits for esp. they only characterization objects with a antepatriarchal in the geistesgeschichte for the esp."local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(1671054994,2009402972)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(2062000679,2232984346)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[354308519]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(2519743267,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(4079038547,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{2325446712,2860349197,1712681713,3390363452,2528760019,1185935694,1431617827,3066999966}return SynapseXen_iIIllIiIiIIiiil[354308519]end)({},6536,10935,"iiIiIIIlIIlIlIiIi","IllillliIIIlllIlI","Iil","IllliIIlliii",{},1341))then local SynapseXen_IIlIllIliIlll=SynapseXen_lliliiiliIiiIIliiI;local SynapseXen_IIiIiIIllIIiIi=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IilIlIIi[1050581631],SynapseXen_iIIllIiIiIIiiil[710131756]or(function(...)local SynapseXen_lIiIliiIlll="xen doesn't come with instance caching, sorry superskater"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(2635295421,3410890749)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(1255296773,3039685759)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[710131756]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(862888997,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(343720753,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{3987555152,926067334,1949259118}return SynapseXen_iIIllIiIiIIiiil[710131756]end)(13951))local SynapseXen_IiIIllIIilii=SynapseXen_IIlIllIliIlll[SynapseXen_IIiIiIIllIIiIi]for SynapseXen_IIiliilIIi=SynapseXen_IIiIiIIllIIiIi+1,SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[1674574548],SynapseXen_iIIllIiIiIIiiil[2906136343]or(function(...)local SynapseXen_lIiIliiIlll="sponsored by ironbrew, jk xen is better"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(2988830600,3474966185)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(102724199,4192244661)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[2906136343]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(717964855,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(2424594610,SynapseXen_IIlililiIlililliI[2]))-string.len(SynapseXen_lIiIliiIlll)-SynapseXen_iiliIiI-#{3136087184,3094774611,2952765415,3263437962,4207933138,2354800260}return SynapseXen_iIIllIiIiIIiiil[2906136343]end)(10716,{},{},{}),512)do SynapseXen_IiIIllIIilii=SynapseXen_IiIIllIIilii..SynapseXen_IIlIllIliIlll[SynapseXen_IIiliilIIi]end;SynapseXen_lliliiiliIiiIIliiI[SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[2412770562]or(function()local SynapseXen_lIiIliiIlll="this is a christian obfuscator, no cursing allowed in our scripts"SynapseXen_iIIllIiIiIIiiil[2412770562]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(2215996176,2112180026),SynapseXen_IIllIIIiIllIlIll(2294245380,SynapseXen_iilIlii))-SynapseXen_iiliIiI-string.len(SynapseXen_lIiIliiIlll)-#{3535390058,2830466861,3158571574,2649428011}return SynapseXen_iIIllIiIiIIiiil[2412770562]end)(),256)]=SynapseXen_IiIIllIIilii elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[2343561952]or(function(...)local SynapseXen_lIiIliiIlll="my way to go against expwoiting is to have safety measuwes. i 1 wocawscwipt and onwy moduwes. hewe's how it wowks: this scwipt bewow stowes the moduwes in a tabwe fow each moduwe we send the wist with the moduwes and moduwe infowmation and use inyit a function in my moduwe that wiww stowe the info and aftew it has send to aww the moduwes it wiww dewete them. so whenyevew the cwient twies to hack they cant get the moduwes. onwy this peace of wocawscwipt."local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(2344178353,3824180914)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(3654062964,640924792)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[2343561952]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(1298249072,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(3063896328,SynapseXen_IIlililiIlililliI[5]))-string.len(SynapseXen_lIiIliiIlll)-#{130161987,2494950700,1742170692}return SynapseXen_iIIllIiIiIIiiil[2343561952]end)({},12279,14344,5814,2748,12371,{},8895,1806))then local SynapseXen_IIiIiIIllIIiIi=SynapseXen_IIllIIIiIllIlIll(SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[1050581631],SynapseXen_iIIllIiIiIIiiil[4112243928]or(function(...)local SynapseXen_lIiIliiIlll="so if you'we nyot awawe of expwoiting by this point, you've pwobabwy been wiving undew a wock that the pionyeews used to wide fow miwes. wobwox is often seen as an expwoit-infested gwound by most fwom the suwface, awthough this isn't the case."local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(254813900,3303920498)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(4122464468,172494197)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[4112243928]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(175304609,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(2967722641,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{1018340913,952932511,350138312}return SynapseXen_iIIllIiIiIIiiil[4112243928]end)({},{},8131,"II",14917,"lilIli","iiiliiiliIlII",4141),512),SynapseXen_liiiIlilliIIllIl)local SynapseXen_liilIi=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IilIlIIi[1674574548],SynapseXen_iIIllIiIiIIiiil[3627242798]or(function(...)local SynapseXen_lIiIliiIlll="thats how mafia works"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(399070765,2075972384)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(523676291,3771278712)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[3627242798]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(3726779561,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(4224751214,SynapseXen_IIlililiIlililliI[4]))-string.len(SynapseXen_lIiIliiIlll)-#{1656231251,1974498883,3984918484,3822470001,2188493917}return SynapseXen_iIIllIiIiIIiiil[3627242798]end)(11170))local SynapseXen_IIlIllIliIlll=SynapseXen_lliliiiliIiiIIliiI;if SynapseXen_IIiIiIIllIIiIi>255 then SynapseXen_IIiIiIIllIIiIi=SynapseXen_iiIIIlIiliIlIllIii[SynapseXen_IIiIiIIllIIiIi-256]else SynapseXen_IIiIiIIllIIiIi=SynapseXen_IIlIllIliIlll[SynapseXen_IIiIiIIllIIiIi]end;if SynapseXen_liilIi>255 then SynapseXen_liilIi=SynapseXen_iiIIIlIiliIlIllIii[SynapseXen_liilIi-256]else SynapseXen_liilIi=SynapseXen_IIlIllIliIlll[SynapseXen_liilIi]end;SynapseXen_IIlIllIliIlll[SynapseXen_IIllIIIiIllIlIll(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[899865389]or(function()local SynapseXen_lIiIliiIlll="print(bytecode)"SynapseXen_iIIllIiIiIIiiil[899865389]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(412671370,1731815669),SynapseXen_IIllIIIiIllIlIll(250463192,SynapseXen_iilIlii))-SynapseXen_iiliIiI-string.len(SynapseXen_lIiIliiIlll)-#{2645086023,1340443566,108875024,1447665993,1980326135,3016877873,197700891,1279919788,1281525475,3139165608}return SynapseXen_iIIllIiIiIIiiil[899865389]end)())]=SynapseXen_IIiIiIIllIIiIi^SynapseXen_liilIi elseif SynapseXen_iiliIiI==(SynapseXen_iIIllIiIiIIiiil[376764267]or(function()local SynapseXen_lIiIliiIlll="pain exist is gonna connect the dots of xen"SynapseXen_iIIllIiIiIIiiil[376764267]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_lIliIiillIIIliiII(3693672844,844124723),SynapseXen_IIllIIIiIllIlIll(2671188335,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-#{1356852545}return SynapseXen_iIIllIiIiIIiiil[376764267]end)())then local SynapseXen_IIiIiIIllIIiIi,SynapseXen_liilIi=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IilIlIIi[1050581631],SynapseXen_iIIllIiIiIIiiil[774724980]or(function(...)local SynapseXen_lIiIliiIlll="luraph better then xen bros :pensive:"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(2088846155,2979809309)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(462020715,3832937188)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii-SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[774724980]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(3435270253,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(1888561910,SynapseXen_iilIlii))-string.len(SynapseXen_lIiIliiIlll)-SynapseXen_iiliIiI-#{3236201586,1265065864,4275995301}return SynapseXen_iIIllIiIiIIiiil[774724980]end)("iiiIi","iliiIIIIIilI",11001,14310,14965,{},9035)),SynapseXen_iiilliIIiIiIIlilI(SynapseXen_IilIlIIi[1674574548],SynapseXen_iIIllIiIiIIiiil[3239465581]or(function(...)local SynapseXen_lIiIliiIlll="hi xen crashes on my axon paste plz help"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(3069082106,4278857219)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(1043169864,3251802274)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[3239465581]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(1667916449,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(2562281140,SynapseXen_IIlililiIlililliI[3]))-string.len(SynapseXen_lIiIliiIlll)-#{3783538820}return SynapseXen_iIIllIiIiIIiiil[3239465581]end)(7399,"liii","lIIiIiliIiIIlliIlI","ilIIillIIIliIiil",{},"illIlililiill",{},"IliliiiIiiliilIii",12703,"liIlIIlililIl"),512)local SynapseXen_IIlIllIliIlll=SynapseXen_lliliiiliIiiIIliiI;if SynapseXen_IIiIiIIllIIiIi>255 then SynapseXen_IIiIiIIllIIiIi=SynapseXen_iiIIIlIiliIlIllIii[SynapseXen_IIiIiIIllIIiIi-256]else SynapseXen_IIiIiIIllIIiIi=SynapseXen_IIlIllIliIlll[SynapseXen_IIiIiIIllIIiIi]end;if SynapseXen_liilIi>255 then SynapseXen_liilIi=SynapseXen_iiIIIlIiliIlIllIii[SynapseXen_liilIi-256]else SynapseXen_liilIi=SynapseXen_IIlIllIliIlll[SynapseXen_liilIi]end;SynapseXen_IIlIllIliIlll[SynapseXen_illiiIIIlIIil(SynapseXen_IilIlIIi[1256073398],SynapseXen_iIIllIiIiIIiiil[4146817024]or(function(...)local SynapseXen_lIiIliiIlll="this is a christian obfuscator, no cursing allowed in our scripts"local SynapseXen_liIIIiIiIilIilii=SynapseXen_lIliIiillIIIliiII(3197596476,3431506319)local SynapseXen_lililli={...}for SynapseXen_liIlIllIiIIliIiiIII,SynapseXen_liliIIIlililIil in pairs(SynapseXen_lililli)do local SynapseXen_lIIIilillI;local SynapseXen_lilIiiIIli=type(SynapseXen_liliIIIlililIil)if SynapseXen_lilIiiIIli=="number"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil elseif SynapseXen_lilIiiIIli=="string"then SynapseXen_lIIIilillI=SynapseXen_liliIIIlililIil:len()elseif SynapseXen_lilIiiIIli=="table"then SynapseXen_lIIIilillI=SynapseXen_lIliIiillIIIliiII(277210306,4017774967)end;SynapseXen_liIIIiIiIilIilii=SynapseXen_liIIIiIiIilIilii+SynapseXen_lIIIilillI end;SynapseXen_iIIllIiIiIIiiil[4146817024]=SynapseXen_IIllIIIiIllIlIll(SynapseXen_IIllIIIiIllIlIll(4100725550,SynapseXen_liIIIiIiIilIilii),SynapseXen_IIllIIIiIllIlIll(1094329694,SynapseXen_IIlililiIlililliI[2]))-string.len(SynapseXen_lIiIliiIlll)-#{2104630742,274980608,2486230523,1511534170}return SynapseXen_iIIllIiIiIIiiil[4146817024]end)({},"lIIllIiIilIl",{},"liIii"),256)][SynapseXen_IIiIiIIllIIiIi]=SynapseXen_liilIi end end end;local SynapseXen_IilIiIIIliiIIliIi={...}for SynapseXen_IIiliilIIi=0,SynapseXen_lIliI do if SynapseXen_IIiliilIIi>=SynapseXen_IillIllillllIiI[2027721605]then SynapseXen_IlllIIIllIii[SynapseXen_IIiliilIIi-SynapseXen_IillIllillllIiI[2027721605]]=SynapseXen_IilIiIIIliiIIliIi[SynapseXen_IIiliilIIi+1]else SynapseXen_lliliiiliIiiIIliiI[SynapseXen_IIiliilIIi]=SynapseXen_IilIiIIIliiIIliIi[SynapseXen_IIiliilIIi+1]end end;local SynapseXen_IIiIiIIllIIiIi,SynapseXen_liilIi=SynapseXen_iilIIllilllIIl()if SynapseXen_IIiIiIIllIIiIi and SynapseXen_liilIi>0 then return unpack(SynapseXen_IIiIiIIllIIiIi,1,SynapseXen_liilIi)end;return end end;local function SynapseXen_llIli(SynapseXen_iiIlIIiiIlIlillI,SynapseXen_liliiiiIIil)local SynapseXen_iIllIiIili=SynapseXen_illiliIiiilI(SynapseXen_iiIlIIiiIlIlillI)return SynapseXen_liIlIl(SynapseXen_iIllIiIili,SynapseXen_liliiiiIIil or getfenv(0)),SynapseXen_iIllIiIili end;return SynapseXen_llIli(SynapseXen_lIIIIiillllIIlIllli("dRtYZW4RAAAASTBCUlBQWVdGUTdaT0Y4NAADUQ7qT3Evll2/bgfA1PQhCGU5tpelecM7I8s4nLP54mMQSMmEo9D8AjcC1Fc8LL1qWNllZjEQjQkIAAAAiYuaiIuAmAAoZp8QhAMUAAAAvryhuqG9o6+9pqu8saKhr6qrqgALZiJFkUIIAAAAiYuanIuAmAALZmilcwMHAAAA7oqLjJuJACJm1a3CPQQAAACdm4wAXF4aSSlPWSwSljERymBYZkMoEhgLAAAA7pqcj42LjI+NhQBvZoaog1EFAAAAiIeAigBQZtE8o20HAAAA7qKHgIvOAD9mcQ4IEQcAAADu1MuKxdQAIGZVzs81CgAAAO6ih4CLzsuKxQBdZu1Spk4HAAAAiYOPmo2GAAJmf69nAAUAAACJj4OLAD5mp8f3SggAAAC+go+Xi5ydADlm1WbEDwwAAACigY2Pgr6Cj5eLnAAWZif0tH8JAAAAqYuao4GbnYsADmYCUoh6CwAAAL2aj5yai5ypm4cAQGbRDF8+CAAAAL2Lmq2BnIsAcWbGPe8BEQAAAL2LgIqggZqHiIeNj5qHgYAASmY8Mp4aBgAAALqHmoKLAFhmzS7BTAsAAAC6nIeJiYucjIGaAFpmneyECAUAAAC6i5aaAFFmmdEOXhsAAAC6nIeJiYucjIGazp2aj5yai4rCzp6ci52dzgBKZrKdBjIJAAAAmoGdmpyHgIkAXmYGOi0yAwAAALGpAAFm8bWXQQgAAACli5esh4CKAC9m6yGzJhMAAADOmoHOmoGJiYKLzpqGi86MgZoAC2ZVFFQvCQAAAKqbnI+ah4GAACxmYtE0WhQAAACtnIuPmouKzoyXzoGDl83b2tvZAAFmT9jjCgsAAACBgKWLl76ci52dAARmijqxQAsAAACpi5q9i5yYh42LAElmApjWEgsAAAC8m4C9i5yYh42LACZmIBKJXA4AAAC8i4CKi5y9mouenouKAEFmWV4SXggAAACNgYCAi42aAFdmtcHVMBEAAAC7nYucp4Cem5q9i5yYh42LAGBmtFIGTwsAAACngJ6bmqyLiY+AACNeoL3KJFksEoYvfWVhOF6LzOpTWSwSljEWdWBbXk6v/VRZLBKU0XplYX1eygE7JFksEpYxrnlgNl5MhmwMWSwS99htLmFsXunsYAdZLNJyV1ATYQ5ex4QrVVksEpYx93JgUF4tvHJnWSwSljGxeWBuXhVv9RBZLHKeFzIpYRJesSkIF1ksEpYxjVBgAF7hADo/WSzSzYLmGmEWXlQudxdZLBKWMalnYAJed7l3R1ksEpYxUVFgYV5RSL90WSwSljF4CWAdXnlqUGxZLFKLvG8XYdn4PVqT2qMtb61heY5+CGqQUegxA/sxD1qFVSEe9hqwiwrdYp7Ram3d74+lN+eTa4MnU+j2xAxX3eKe0Wpc3XA7/1wOPwdqkFTo15qxd04+CGqQVOiPkYRCz5uFVSEE9lTu01HdIp7Ragzd066QWU7+CWqQb+jDNdNG5UVnrzge9sGDPknPW4VVIU72v2JLZN0intFqDt0+d2ghdFWPeFRR9mTDCRTlRWevOHP2KbCeCCRP3u5YB/YxfLRJ3aKe0Woy3ctQ2j7ZPm/HOTXovQ3IXN3intFqN91T1tJFRJ6QA0p56JhlUjc0VI96VD32ldNHOxOJ2I3iOvYaxbUj3eKe0Wpq3UB2zh7En5YDSkPoxR5XQFm+bMc5Q+gsi7EPpUVnrjho9sS3ekPQ4nmrJH32FsNqE1n8ZMc5D+jSCKgIGbxkxzlj6JDvxjl07Q9Konz2GgVrTCQPX39YZvYV1Mg/3aKe0Wpj3b4oOFSZfmzHOVXocnUqC92intFqRd1gvlgV7w6CYnoN9lV5SyeEnZsDShroX7VXRjRUj3pUX/Y5A8g3U4lYjeIJ9pNVOWPdop7Rag/dD42bKoQelQNKeehHNnxv7w4CY3pe9nH9txAZvmzHOVDooarGY2VFZ644IPZt47RD0KL5qiRM9lzKwx5PHnVtpy/2g1fSLDRWj3lUefbmQlJ9JUVnrzhJ9ro6NC1HN5hdIlD2hQNafRNK2IziV/YKKPll3eKe0WpN3cuZMF+OuQFqkFnoyGDrLVn/bcc5M+gPuRgck4vYjuJ09j8HPSLZuGzHOWPobv5tRSXGZ644CfbWW+krpUbnrzh59vgjDjmPlIVVIT/2Ss3EDN3intFqbt1Hdt5VRzcYXSJv9obkzX+PH/VvpzT20bwaEs9UhVUhPvYJQ78m3eKd0Wpl3bbZN2AkDyfgWC729nhoHd2intFqfN1ENL0ymb9txzln6KJaVgzd4p7Ragvd7QoUKe8OAmd6XPa2ub8aNFSPelQW9k33ODBTiliP4l328NeMNBm/bMc5buhK7Mx9ZUZnrjhg9ht8EAe0Vg9/VBX2i0POA90indFqM929OBBAJM+g61g99ncFzTzdop7Raj7dl3vdepl/bcc5DujlX+VX3aKe0Wox3QpoyzuOfwdqkCDo0SWMMk55BWqQSOjUExVTNFSPelRt9lhWjldTiliP4iX2gRTMMCSPIOtYXvZLCmR93aKe0Wog3ezKhlAZv2zHOVzoWOIWJd3intFqdt23tQ0+2Xlrxzl46CVrljo0VI96VBD26UhhNmVGZ644MfbNfps3tFYPf1QR9nPb0mFTStuM4i324eMcbnRXj39UX/Ym3fg/ZcZkrjhz9sGVLmzdYp7Ran7dQbGgM09bhVUhd/YpAOog3eKe0Wp63ZunpGP0VY99VGf2EfxVCkQkE2m6Rvb6hEEX3WJgLmpY3SaGXy8nbGuDJyjoIlulFzRUj3lUY/a8trBiNFcPf1Rj9oDEZBglRmevOEb2/tffANNL247iAvZKVaBT9FePf1RG9uypaXvlx2SuOAn2FSDpaN1intFqIN1VZndmZM9kZ1gm9o24zn/d4p7Ranfdekd+Zd1iYS5qPN1SVzNyxCUTabp/9m2ZwmzdYmAualndm7tuO/NciG6aKvZBWO8SJA9f4FhW9lBqHW7d4p7RanPdOYS8eQQDlwNKXugDnI8Cjn4HapAO6HiCEHpQIbarJH72UKFPSlDht6skCvadDYhHk0naiuJ59pDO73IlROeuOGn250R/Kkc2mF0ibPYpbt97Dn4HapAX6L36URHQYreqJEL2Lk93ARPJ3Y3iZPbygtJGVulvYN4f6C6A13IZPGTHOXLoszd7NrQRAZEoGPZtX6h2JI9cf1gJ9l3BSCjd4p7Ram3dWa1JMwTDlANKKujlqkwUWX5rxzlf6HfSKk1qBRVKLx323qlMB0EZNMLGWfa9xcUm2X9oxzlo6HYaxVvOuAJqkHXonXYZMI54AmqQa+hhnwxKWbxlxzkI6DIrxVQZfGXHOQDoq0ReXXTtD0qiJPbIzIkZGTxlxzlQ6AWxp1R07Q9Kogn2sqwiLSSPXX9YWvYQATRr3aKe0WoQ3RO4cVjEH5cDSmHoKoO/B8QdmgNKQOiLpRxiUCO1ryRZ9jIqdkZlRueuOEj2ptV3VVl/acc5SugYiI4fCjoUWGhe9moQwQ8kj97nWDf2qJkIHN2intFqGd3TJXwIzn4/apBR6CGKhm8EXZsDSgfo0nhWKEGZdsHGLvbVv5tDVulvYN526Du/FCwZvGLHOQPoMjD/U3TtD0qiY/bEJhlWJA9df1gK9vN4iDLdop7RanPdnCcqMgQekANKd+g7eIoB7w6CYXpF9pMAUGBB2TnGxhr2GaxME6WF51E4Vva8RUgl3eKe0WoB3SAB9zLE3pQDSgnoxbZ6YA5+B2qQfujp8J8UJI8n4Vhi9jNfGDTdop7RajvdNARgAdBit6okW/ZY+ZVq3aKe0Wpk3fwK1mcZP2XHOSrom9cTHs5/BmqQEegu3scUNFSPelRe9nDg/wUTyd2N4mP2AdAVcll+a8c5S+hOpksYagUVSi8s9uAdVyxBGTTCxhj2M1LLNUEZMsHGVvbcyhc5Qdk5xsZt9jSFHD6lhedROBn2g8rQYWcTa4MnJujLXxV7NFQPeFQ59sppJBYEXJQDSi3oIM9HbyTPX5NYcfZKVRAv3aKe0Woa3ap8EAkOOAlqkFbopFV4CATekQNKTugSG0oPDn4HapBX6LFWAicTCd6N4k/2354gBlk+Zsc5NeiKhRpQpUVnrjhB9pnYxw/QYrOqJGf2omWlcRPJ0Y3iM/ZO4YVS5+xogyd76CawaCw0VA94VF32uRooAjRUj3hUE/Yw9pwdpYVnrjhR9k0mSgJW6W9g3kHoW/dPLxk8Ysc5ZOjP+Pt6dO0PSqJn9mAW7W4Z/GPHORToaiA9NLQRAZEoV/Ye2PZBGbxjxzlB6HfjByS0EQGRKF72Sc9WCSQPWn9YXvaqFPAv3aKe0Wpp3eYJc2fvDoJjegn2nJ5RSYRdlgNKH+ie97AWDn4HapAT6EFOBUgTCd6N4mL2vd6xWt3intFqc92yfWJF7w4CZHpR9nYmsRhZfmfHOXXoXgcyOaVFZ644N/Z+EMVL0KKwqiRN9rgp1ScTydGN4kL2KaUzVN2intFqHt02sCpGjn0DapA76J2vvQ3vDoJgejj2OdT4JY4/A2qQMOgzmvIPpYVnrjh09kQ3qHI1aO9KaU32Ld81LRhpihApAiwCkzeYFIhqWNkHZtArdGIFAAAAsauguAAqXudDKhxZLNKeA0EYYRxesAzSGFksEpYxVH1gDF7NTaR7WSwSljGOe2BOXve+UmJZLBKWMflkYD5e4rayTFks0iMHcSxhYaFKCARjuWy/rWF5WbxvxzkS6PzuaTsZfG/HOTbor+FWbbQRAZEoFfYpieJIGTxvxzlC6KnLaw107Q9KohL2160lXhn8bMc5behekdwXtBEBkShS9oPkc2YkTyd/WAD2q/6fd92intFqJN2gOHEA7w6CZnpI9svPmSQO/QlqkC/oreRQaY5+CGqQI+jR5aoLNWhvSmkm9nmYYTs1aO9KaRH2aGKGSm1tihApAysCaeH/eY1qWNlZXoIb3idZLBKWMcp/YCNeoyO7YVksEpYxK2hgN16fd/EWWSwSljHRkWB9/d4/HWaLArytYXnW6m9g3mPoLCm+UZn9b8c5eujx4FtQNJE+kChM9qxk/S6ZvW/HOQTow7qaRjSRPpAoJvZ/vAN7VwbMgfJX9rI8nj3d4p7Raj7dLufHA84+CGqQY+gnGUM9bw4CZ3op9tdRKRhq3YFnsCv2KoQhR3UHGqLnWvbQRzA3NWxvS2l49potWCA1bO9KaWb2bcwlZBNtihApA28Avhr+Lq5qWNkEZgVJYkkIAAAApYuXrYGKiwBgZseE1WQFAAAAq4CbgwB9ZlYHdGUDAAAAsakAUmbx3gk1CAAAAKWLl6yHgIoAGOvVB7pWAFxmbhmuIQYAAACenIeAmgB0ZnjmR2sTAAAAupyHiYmLnIyBms6LgI+MgouKAE9m1mfhFQUAAACJj4OLAG1mrbHlOwsAAAC9mo+cmoucqZuHAFVm7EktRAgAAAC9i5qtgZyLAGVmuzGJOBEAAAC9i4CKoIGah4iHjY+ah4GAAB9mCFbLawYAAAC6h5qCiwB4Zt12OCgLAAAAupyHiYmLnIyBmgAsZi59alkFAAAAuouWmgBaZreGrmkUAAAAupyHiYmLnIyBms6LgI+MgouKwABoZsiiFhsJAAAAqpucj5qHgYAAFF4FoJwXWSwSljERymAh63pzoTEBdmbqt8hYFAAAALqch4mJi5yMgZrOioedj4yCi4oAQGbX31MeFQAAALqch4mJi5yMgZrOioedj4yCi4rAABBeNjo5CFksEpYx8UFgEF4BSm9BWSwSljHndmBOXrxqcyVZLBJ0MUUWYWVeV2HoS1ksEpaxLgpgKF7ExXYKWSwSljEnamB4XsAaQChZLNLK/f8iYT5e7yvRK1ksEpYxnVxgSV4kjy9MWSwSljGRfmAqXgMx43RZLHIC/v8iYWxepVutVVksUs7hOxVhOV5vKXF5WSwSljGReGBaXgR9Ri9ZLJIW2tskYfM+WW5c3pZBNK1heSQPp+FYDfawPSpd3aKe0WpJ3W4y4R3vDoJleh/2CPwDFY4/CGqQe+hRVio30GK7qSQz9tDjvF3dop7Raijdb6ylXc5/B2qQHeiWDkpThJyRA0pC6DUfXmDOPwhqkDDojXedT5BiO6okcPYhriBA3aKe0Wpc3Uuit2iZvmvHOU7o2wqCVe8OAmN6B/YofqABjv8JapBs6JMBh2okj6fhWGX2hwFkF92intFqLd0ncfZgBEORA0pT6BXC4QxEHZcDShjo2dNhCFCiuK0kAvan0+8KJI8n4Vhr9j6q3GPdop7RaizdajU+B5BieaokePbmGEtr3aKe0Woj3SSmp0zvDgJjelf23vzNGO8OAmN6E/aTZ89YNFSPelRI9hIqWAskz2RgWD720pA4Lt0ih9FqZN3nqG0k6t2BZ7AO9pxBFHQkjydgWBb2gjq9Hd3ikdFqKN3gUioRBzYYXSJS9m4d9BsrBoVTEDD2Z9JVRyTPI+NYCvaC83AQ3aKe0Wo63XqRSjpZPmrHOV7ocqOpJUQckQNKZOgyNvEMDj4JapAT6KLhb1XW6m9g3nDoZopJY5n9aMc5MejBeqw69G4PTaIq9pev4lOZvWjHOVfoevFWDDSRPpAoTvaEbushJA8jflgi9jt63STdop7RaifdoXbgc5l+bMc5eehC0z0O3aKe0Wp03ZfSW02O/gVqkDvobHNkG1m8a8c5NeiL74RcNFSPelQ69i15jVylheeuOEL26ocfRySPJ/9YXfbXZLZY3aKe0Wp63eQOLiOE3ZIDSiboYWaHMc6+CWqQGuit5XgPDr4GapA06PwPTCvQYrmqJEL2xpbgWxPJ243ic/b6n3BU1qoCeN456MkLrUWZPWjHOU3ottyNDvRuD02iJPYmJ7Jlmf1pxzlo6Gt4G0f0bg9NokD2FDfOTyRPIH5YMfbclygX3aKe0WpR3Wh0LXhZfm3HOSDoxqW5E93intFqKN0YRhFVDv0EapB46NB68GI0VI96VHb2aabPfmoFFUovEfZMQF4rJE+g/lh79jJu9nDd4p7RagrdGBWAGE7/BGqQP+h5KYBOQRk2zsZL9lgrghjWqgJ43lnosboYZ5l9acc5YehcLI1vNJE+kCgP9vbwQyyZPWnHOTfom91lXPRuD02iXvZllbYWJI8hflgY9igm9Srdop7RanHdwierD0GZN83GYPaUNHki3aKe0Wpv3c9tdSAZPGvHOQLoPTxkbe8OAmV6Y/b2vLwQNFSPelRe9jSh1DokTybpWDT28Y0JIt3intFqE92gj+Ezjv8HapBb6KTj909BGTfMxgf2ii7+caWF51E4BPb7tcQY3SKX0Wo93dMgT2rq3YFnsBb2H32oMCRPImBYBPbDyzN83eKX0Wod3WOYLhwHNphdIgT2YQxaXysGhVMQZvYUbp5mJI8h7Vg59iOHbGvdop7RahDdqZy9Zw4+CWqQKeg99Tsf3aKe0WpL3a0UZF7EHZEDSjXo2t3xSO8OAmV6CPaZiusmNFSPelQ79lyTE23ZvWbHORjouuvTA5l9Zsc5AOiJq68ONJE+kCgP9kjeOSYkz15+WCb2lXciWd3intFqUt0HatB1hN2UA0oM6BG/mj6ZfmvHORvofoegBqWF5644UPZkiB1HJA+i4VgM9tHxBX/dop7RalTddwl7TVk8acc5aOispgkoxNyRA0oj6D65vXMOvgZqkCboISAuaNBiuaokJvZ70aElE8nbjeJj9jAfiHQkz6ToWGH2Ab6Bb93intFqdd0b8YgXjr8FapBj6ATfhxlZfm3HORvoGUCZdWoFFUovUPZOu11AQRk2zsY/9iWbVGBBWTTNxhn2T3kGGyTPXuZYW/bVGaJq3aKe0WoD3blOC0WZPm3HOQ7oK4IYbtl+aMc5POisyrIJQRk3zMZS9lir+G2lhedROAT2eRzEcDVv70ppYPZ0ziwNZ22KECkAJwL0hed/kmpY2QFmKsyTdQcAAAC6j5yJi5oAXWayBToUBQAAAImPg4sAHGbC9mVJCwAAAKmLmr2LnJiHjYsABGbgfjojCAAAAL6Cj5eLnJ0ANma0d9krFwAAAKmLmr6Cj5eLnKicgYOtho+cj42ai5wAFmZ2ZfguBwAAAL6PnIuAmgATZmLbyw0MAAAAooGNj4K+go+Xi5wACGY/Ss4OCgAAAK2Gj5yPjZqLnAAIZo4IDBgJAAAAppuDj4CBh4oAPGY7FMtkBwAAAKaLj4KahgBhXk0uRhdZLBKWMRHKIHVmqRIKOAwAAACDgZudi9+NgoeNhQBXXgY70xxZLJKL9EodYQde9NgHE1ksEpYxHXdgcl6Tn744WSySHEIxE2EOXk6fpA1ZLPITrqsqYSheWTV2QFksEpYxvWlgPl76zsBqWSwSljF3f2A7Xp1zzAZZLHIIqqsqYT9eEyM8IVks0vcROR9hf17Zz9AhWSwSljHRlmBXXncKP0JZLBKWMSllYCVeNWW6WlksEpYxW21gPl72zyxgWSwSljERk2B8XjrS9WFZLBKWMVN7YFhe5cUgdVksEpaxUglgK16oS1NCWSwSljHNXmAeXjZAB2pZLJLWfPcLYeyiHQDc+J4l/61hedk9a8c5POjw8rZ/mf1oxzlC6EcfSHE0kT6QKDD25/LBfZm9aMc5Hejr8TUJ9G4PTaIG9vUWaVOZfWjHOU/oFRF9HfRuD02iU/ZdvzcBV8bGgfJY9tTN3BpW6W9g3mXowDl2Pxn8acc5P+jHHjcztBEBkSgS9nM0KX0ZvGnHOV7o/0wPJ3TtD0qiFvbpGawQGXxpxzlf6FZ89hi0EQGRKGH2zuCbZiTPIX9YIfZaf1pU3aKe0Wpq3QtY8xXvDoJnekr2yI9wP9n+a8c5X+hi9MoNbw4CZ3px9sodGVpq3YFnsCT2Y4ltHA9aBVIhVPa2H2Zr3aKT0WoQ3QEnxl5q3QFnsA72GU2NV1n8asc5HOgQ4v4QGbxqxzlc6JpCKl+0UYGQKCr2JITmTCQPJX9YE/aUNy0/3eKe0Woh3c2MGhtEg5MDSlro03jsH1BhO6gkHfYiucsED1oFUiEn9jBYbR/dIpTRajHddZwPe44+CGqQMuhMoUg9UwhZi+I29gz2cxnZPm/HOTvoLwztVyVEZ644TvbP/1FlU4hYi+IO9vcN+XXq3QFnsCj2ouSdctBiO6skFvbbef43WTxqxzkB6ANGbAgZ/GvHOXzoWQ3KUHTtD0qiCvZjdqtCGbxrxzkp6OqnvB107Q9KogL2ANBICyQPIn9YHfZ5vPdD3aKe0Woz3UnES1HQIjirJDz23RuxH92intFqdd0G1EM1xByRA0o56LAXsxXvDgJneiv2ljdxUTRUj3pUIPYFSsgCJURnrjhV9uc+rgQPWgVSIRD2zCJKRd2im9FqPt2JUz8dTj4IapAW6PQJFS+TCdmK4gT2jwSFIpk+b8c5HejIGVwV5UVnrjgI9if1olYQ4bmrJBX2k+fnbmRPZ2FYUfYcPR0V3WKd0Wo63cjneCsQoTmoJHv2E8jSdySPJeVYJPZZOPJ83aKe0Wop3eotCW8QYbmrJAD2NjQ0c93intFqON0pgZkAhAOSA0oM6G8JgTA0VI96VGf2P/LxeRAhuaske/bRVlIFes0JwA4x9vE5dGTd4p/Ral/dAKN7Zd2intFqdN08l6hu7w4CZHo/9mhxwhAZfWrHOTPoN6T0Jk6+B2qQF+i6kV0e5YVnrzgf9iva6kp1aO9KaUT23wTPFhZtihAp"),getfenv())()
 
end)
 
PG1_4.Name = "PG1_4"
PG1_4.Parent = Frame1
PG1_4.BackgroundColor3 = Color3.new(0.835294, 0.329412, 1)
PG1_4.Position = UDim2.new(0.03763441, 0, 0.408839762, 0)
PG1_4.Size = UDim2.new(0, 171, 0, 38)
PG1_4.Font = Enum.Font.Gotham
PG1_4.Text = "Faster Shooting Guns"
PG1_4.TextColor3 = Color3.new(0, 0, 0)
PG1_4.TextScaled = true
PG1_4.TextSize = 14
PG1_4.TextWrapped = true
PG1_4.MouseButton1Down:connect(function()
local ModTac = require(game.ReplicatedStorage.Weapons.Modules["Tac Shotgun"]);
local ModSupAR = require(game.ReplicatedStorage.Weapons.Modules["Suppressed AR"]);
local ModPistol = require(game.ReplicatedStorage.Weapons.Modules["Machine Pistol"]);
local ModSniper = require(game.ReplicatedStorage.Weapons.Modules["Semi-Auto Sniper"]);
local ModRPG = require(game.ReplicatedStorage.Weapons.Modules["RPG"]);
local ModPick = require(game.ReplicatedStorage.Weapons.Modules["Pickaxe"]);
local ModAR = require(game.ReplicatedStorage.Weapons.Modules["AR"]);
local ModDrum = require(game.ReplicatedStorage.Weapons.Modules["Drum Gun"]);
local ModSMG = require(game.ReplicatedStorage.Weapons.Modules["SMG 101"]);
local ModHawk = require(game.ReplicatedStorage.Weapons.Modules["Desert Hawk"]);
 
    ModTac["Debounce"] = 0.06;
    ModHawk["Debounce"] = 0.06;
    ModSMG["Debounce"] = 0.06;
    ModSniper["Debounce"] = 0.06;
    ModAR["Debounce"] = 0.06;
    ModSupAR["Debounce"] = 0.06;
    ModPistol["Debounce"] = 0.06;
    ModDrum["Debounce"] = 0.06;
    ModRPG["Debounce"] = 0.06;
end)
 
PG1_5.Name = "PG1_5"
PG1_5.Parent = Frame1
PG1_5.BackgroundColor3 = Color3.new(0.835294, 0.329412, 1)
PG1_5.Position = UDim2.new(0.03763441, 0, 0.53591156, 0)
PG1_5.Size = UDim2.new(0, 171, 0, 38)
PG1_5.Font = Enum.Font.Gotham
PG1_5.Text = "Inf Range/Best Accuracy"
PG1_5.TextColor3 = Color3.new(0, 0, 0)
PG1_5.TextScaled = true
PG1_5.TextSize = 14
PG1_5.TextWrapped = true
PG1_5.MouseButton1Down:connect(function()
local ModTac = require(game.ReplicatedStorage.Weapons.Modules["Tac Shotgun"]);
local ModSupAR = require(game.ReplicatedStorage.Weapons.Modules["Suppressed AR"]);
local ModPistol = require(game.ReplicatedStorage.Weapons.Modules["Machine Pistol"]);
local ModSniper = require(game.ReplicatedStorage.Weapons.Modules["Semi-Auto Sniper"]);
local ModRPG = require(game.ReplicatedStorage.Weapons.Modules["RPG"]);
local ModPick = require(game.ReplicatedStorage.Weapons.Modules["Pickaxe"]);
local ModAR = require(game.ReplicatedStorage.Weapons.Modules["AR"]);
local ModDrum = require(game.ReplicatedStorage.Weapons.Modules["Drum Gun"]);
local ModSMG = require(game.ReplicatedStorage.Weapons.Modules["SMG 101"]);
local ModHawk = require(game.ReplicatedStorage.Weapons.Modules["Desert Hawk"]);
 
    ModTac["Inaccuracy"] = 0.1;
    ModHawk["Inaccuracy"] = 0.1;
    ModSMG["Inaccuracy"] = 0.1;
    ModSniper["Inaccuracy"] = 0.1;
    ModAR["Inaccuracy"] = 0.1;
    ModSupAR["Inaccuracy"] = 0.1;
    ModPistol["Inaccuracy"] = 0.1;
    ModDrum["Inaccuracy"] = 0.1;
    ModRPG["Inaccuracy"] = 0.1;
end)
 
PG1_6.Name = "PG1_6"
PG1_6.Parent = Frame1
PG1_6.BackgroundColor3 = Color3.new(0.835294, 0.329412, 1)
PG1_6.Position = UDim2.new(0.03763441, 0, 0.665745854, 0)
PG1_6.Size = UDim2.new(0, 171, 0, 38)
PG1_6.Font = Enum.Font.Gotham
PG1_6.Text = "No Recoil"
PG1_6.TextColor3 = Color3.new(0, 0, 0)
PG1_6.TextScaled = true
PG1_6.TextSize = 14
PG1_6.TextWrapped = true
PG1_6.MouseButton1Down:connect(function()
local ModTac = require(game.ReplicatedStorage.Weapons.Modules["Tac Shotgun"]);
local ModSupAR = require(game.ReplicatedStorage.Weapons.Modules["Suppressed AR"]);
local ModPistol = require(game.ReplicatedStorage.Weapons.Modules["Machine Pistol"]);
local ModSniper = require(game.ReplicatedStorage.Weapons.Modules["Semi-Auto Sniper"]);
local ModRPG = require(game.ReplicatedStorage.Weapons.Modules["RPG"]);
local ModPick = require(game.ReplicatedStorage.Weapons.Modules["Pickaxe"]);
local ModAR = require(game.ReplicatedStorage.Weapons.Modules["AR"]);
local ModDrum = require(game.ReplicatedStorage.Weapons.Modules["Drum Gun"]);
local ModSMG = require(game.ReplicatedStorage.Weapons.Modules["SMG 101"]);
local ModHawk = require(game.ReplicatedStorage.Weapons.Modules["Desert Hawk"]);
 
    ModTac["Recoil"] = 0.1;
    ModHawk["Recoil"] = 0.1;
    ModSMG["Recoil"] = 0.1;
    ModSniper["Recoil"] = 0.1;
    ModAR["Recoil"] = 0.1;
    ModSupAR["Recoil"] = 0.1;
    ModPistol["Recoil"] = 0.1;
    ModDrum["Recoil"] = 0.1;
    ModRPG["Recoil"] = 0.1;
end)
 
PG1_7.Name = "PG1_7"
PG1_7.Parent = Frame1
PG1_7.BackgroundColor3 = Color3.new(0.835294, 0.329412, 1)
PG1_7.Position = UDim2.new(0.03763441, 0, 0.795580089, 0)
PG1_7.Size = UDim2.new(0, 171, 0, 38)
PG1_7.Font = Enum.Font.Gotham
PG1_7.Text = "Destroy New Map"
PG1_7.TextColor3 = Color3.new(0, 0, 0)
PG1_7.TextScaled = true
PG1_7.TextSize = 14
PG1_7.TextWrapped = true
PG1_7.MouseButton1Down:connect(function()
while wait() do
for a,z in pairs(game:GetService("Workspace")["BuildStuff"]:GetDescendants()) do
z:Destroy()
end
end
end)
 
PG1Credits.Name = "PG1Credits"
PG1Credits.Parent = Frame1
PG1Credits.BackgroundColor3 = Color3.new(1, 1, 1)
PG1Credits.BackgroundTransparency = 1
PG1Credits.BorderSizePixel = 0
PG1Credits.Position = UDim2.new(0.03763441, 0, 0.917127073, 0)
PG1Credits.Size = UDim2.new(0, 171, 0, 21)
PG1Credits.Font = Enum.Font.Gotham
PG1Credits.Text = "Made By: Mr.Stuperd"
PG1Credits.TextColor3 = Color3.new(0, 0, 0)
PG1Credits.TextScaled = true
PG1Credits.TextSize = 14
PG1Credits.TextWrapped = true
 
FrameBottom.Name = "FrameBottom"
FrameBottom.Parent = MainFrame
FrameBottom.BackgroundColor3 = Color3.new(0.666667, 0, 0.498039)
FrameBottom.BackgroundTransparency = 0.5
FrameBottom.BorderSizePixel = 0
FrameBottom.Position = UDim2.new(0, 0, 9.04444408, 0)
FrameBottom.Size = UDim2.new(0, 196, 0, 45)
 
Frame2.Name = "Frame2"
Frame2.Parent = MainFrame
Frame2.BackgroundColor3 = Color3.new(0.956863, 0.470588, 1)
Frame2.BorderSizePixel = 0
Frame2.Position = UDim2.new(0, 0, 1, 0)
Frame2.Size = UDim2.new(0, 186, 0, 362)
Frame2.Visible = false
 
BackPG2.Name = "BackPG2"
BackPG2.Parent = Frame2
BackPG2.BackgroundColor3 = Color3.new(1, 1, 1)
BackPG2.BackgroundTransparency = 1
BackPG2.BorderColor3 = Color3.new(1, 0, 1)
BackPG2.BorderSizePixel = 0
BackPG2.Position = UDim2.new(-0.00537609775, 0, 1, 0)
BackPG2.Size = UDim2.new(0, 98, 0, 45)
BackPG2.Font = Enum.Font.Gotham
BackPG2.Text = "< Back"
BackPG2.TextColor3 = Color3.new(0, 0, 0)
BackPG2.TextSize = 31
BackPG2.MouseButton1Down:connect(function()
Frame1.Visible = true
Frame2.Visible = false
end)
 
NextPG2.Name = "NextPG2"
NextPG2.Parent = Frame2
NextPG2.BackgroundColor3 = Color3.new(1, 1, 1)
NextPG2.BackgroundTransparency = 1
NextPG2.BorderColor3 = Color3.new(1, 0, 1)
NextPG2.BorderSizePixel = 0
NextPG2.Position = UDim2.new(0.525541127, 0, 1, 0)
NextPG2.Size = UDim2.new(0, 98, 0, 45)
NextPG2.Font = Enum.Font.Gotham
NextPG2.Text = "Next >"
NextPG2.TextColor3 = Color3.new(0, 0, 0)
NextPG2.TextSize = 32
NextPG2.MouseButton1Down:connect(function()
Frame2.Visible = false
Frame3.Visible = true
end)
 
PG2_1.Name = "PG2_1"
PG2_1.Parent = Frame2
PG2_1.BackgroundColor3 = Color3.new(0.835294, 0.329412, 1)
PG2_1.Position = UDim2.new(0.03763441, 0, 0.0193370171, 0)
PG2_1.Size = UDim2.new(0, 171, 0, 38)
PG2_1.Font = Enum.Font.Gotham
PG2_1.Text = "Anti-Ban (Not Anti-Kick)"
PG2_1.TextColor3 = Color3.new(0, 0, 0)
PG2_1.TextScaled = true
PG2_1.TextSize = 14
PG2_1.TextWrapped = true
PG2_1.MouseButton1Down:connect(function()
game:GetService("ReplicatedStorage")["AdminRE"]:ClearAllChildren()
end)
 
PG2_2.Name = "PG2_2"
PG2_2.Parent = Frame2
PG2_2.BackgroundColor3 = Color3.new(0.835294, 0.329412, 1)
PG2_2.Position = UDim2.new(0.03763441, 0, 0.149171263, 0)
PG2_2.Size = UDim2.new(0, 171, 0, 38)
PG2_2.Font = Enum.Font.Gotham
PG2_2.Text = "ESP"
PG2_2.TextColor3 = Color3.new(0, 0, 0)
PG2_2.TextScaled = true
PG2_2.TextSize = 14
PG2_2.TextWrapped = true
PG2_2.MouseButton1Down:connect(function()
-- Created By Ic3W0lf
assert(Drawing, 'exploit not supported')
 
local UserInputService = game:GetService'UserInputService';
local HttpService = game:GetService'HttpService';
local GUIService = game:GetService'GuiService';
local RunService = game:GetService'RunService';
local Players = game:GetService'Players';
local LocalPlayer = Players.LocalPlayer;
local Camera = workspace.CurrentCamera
local Mouse = LocalPlayer:GetMouse();
local Menu = {};
local MouseHeld = false;
local LastRefresh = 0;
local OptionsFile = 'IC3_ESP_SETTINGS.dat';
local Binding = false;
local BindedKey = nil;
local OIndex = 0;
local LineBox = {};
local UIButtons = {};
local Sliders = {};
local Dragging = false;
local DraggingUI = false;
local DragOffset = Vector2.new();
local DraggingWhat = nil;
local OldData = {};
local IgnoreList = {};
local Red = Color3.new(1, 0, 0);
local Green = Color3.new(0, 1, 0);
local MenuLoaded = false;
 
shared.MenuDrawingData = shared.MenuDrawingData or { Instances = {} };
shared.PlayerData = shared.PlayerData or {};
shared.RSName = shared.RSName or ('UnnamedESP_by_ic3-' .. HttpService:GenerateGUID(false));
 
local GetDataName = shared.RSName .. '-GetData';
local UpdateName = shared.RSName .. '-Update';
 
local Debounce = setmetatable({}, {
__index = function(t, i)
return rawget(t, i) or false
end;
});
 
pcall(function() shared.InputBeganCon:disconnect() end);
pcall(function() shared.InputEndedCon:disconnect() end);
 
function GetMouseLocation()
return UserInputService:GetMouseLocation();
end
 
function MouseHoveringOver(Values)
local X1, Y1, X2, Y2 = Values[1], Values[2], Values[3], Values[4]
local MLocation = GetMouseLocation();
return (MLocation.x >= X1 and MLocation.x <= (X1 + (X2 - X1))) and (MLocation.y >= Y1 and MLocation.y <= (Y1 + (Y2 - Y1)));
end
 
function GetTableData(t) -- basically table.foreach i dont even know why i made this
if typeof(t) ~= 'table' then return end
return setmetatable(t, {
__call = function(t, func)
if typeof(func) ~= 'function' then return end;
for i, v in pairs(t) do
pcall(func, i, v);
end
end;
});
end
local function Format(format, ...)
return string.format(format, ...);
end
function CalculateValue(Min, Max, Percent)
return Min + math.floor(((Max - Min) * Percent) + .5);
end
 
local Options = setmetatable({}, {
__call = function(t, ...)
local Arguments = {...};
local Name = Arguments[1];
OIndex = OIndex + 1; -- (typeof(Arguments[3]) == 'boolean' and 1 or 0);
rawset(t, Name, setmetatable({
Name = Arguments[1];
Text = Arguments[2];
Value = Arguments[3];
DefaultValue = Arguments[3];
AllArgs = Arguments;
Index = OIndex;
}, {
__call = function(t, v)
if typeof(t.Value) == 'function' then
t.Value();
elseif typeof(t.Value) == 'EnumItem' then
local BT = Menu:GetInstance(Format('%s_BindText', t.Name));
Binding = true;
local Val = 0
while Binding do
wait();
Val = (Val + 1) % 17;
BT.Text = Val <= 8 and '|' or '';
end
t.Value = BindedKey;
BT.Text = tostring(t.Value):match'%w+%.%w+%.(.+)';
BT.Position = t.BasePosition + Vector2.new(t.BaseSize.X - BT.TextBounds.X - 20, -10);
else
local NewValue = v;
if NewValue == nil then NewValue = not t.Value; end
rawset(t, 'Value', NewValue);
if Arguments[2] ~= nil then
if typeof(Arguments[3]) == 'number' then
local AMT = Menu:GetInstance(Format('%s_AmountText', t.Name));
AMT.Text = tostring(t.Value);
AMT.Position = t.BasePosition + Vector2.new(t.BaseSize.X - AMT.TextBounds.X - 10, -10);
else
local Inner = Menu:GetInstance(Format('%s_InnerCircle', t.Name));
Inner.Visible = t.Value;
end
end
end
end;
}));
end;
})
 
function Load()
local _, Result = pcall(readfile, OptionsFile);
if _ then -- extremely ugly code yea i know but i dont care p.s. i hate pcall
local _, Table = pcall(HttpService.JSONDecode, HttpService, Result);
if _ then
for i, v in pairs(Table) do
if Options[i] ~= nil and Options[i].Value ~= nil and (typeof(Options[i].Value) == 'boolean' or typeof(Options[i].Value) == 'number') then
Options[i].Value = v.Value;
pcall(Options[i], v.Value);
end
end
end
end
end
 
Options('Enabled', 'ESP Enabled', true);
Options('ShowTeam', 'Show Team', false);
Options('ShowName', 'Show Names', true);
Options('ShowDistance', 'Show Distance', true);
Options('ShowHealth', 'Show Health', true);
Options('ShowBoxes', 'Show Boxes', true);
Options('ShowTracers', 'Show Tracers', true);
Options('ShowDot', 'Show Head Dot', false);
Options('VisCheck', 'Visibility Check', false);
Options('Crosshair', 'Crosshair', false);
Options('TextOutline', 'Text Outline', true);
Options('TextSize', 'Text Size', syn and 18 or 14, 10, 24); -- cuz synapse fonts look weird???
Options('MaxDistance', 'Max Distance', 2500, 100, 5000);
Options('RefreshRate', 'Refresh Rate (ms)', 5, 1, 200);
Options('MenuKey', 'Menu Key', Enum.KeyCode.F4, 1);
Options('ResetSettings', 'Reset Settings', function()
for i, v in pairs(Options) do
if Options[i] ~= nil and Options[i].Value ~= nil and Options[i].Text ~= nil and (typeof(Options[i].Value) == 'boolean' or typeof(Options[i].Value) == 'number') then
Options[i](Options[i].DefaultValue);
end
end
end, 4);
Options('LoadSettings', 'Load Settings', Load, 3);
Options('SaveSettings', 'Save Settings', function()
writefile(OptionsFile, HttpService:JSONEncode(Options));
end, 2)
-- Options.SaveSettings.Value();
 
Load();
 
Options('MenuOpen', nil, true);
 
local function Set(t, i, v)
t[i] = v;
end
local function Combine(...)
local Output = {};
for i, v in pairs{...} do
if typeof(v) == 'table' then
table.foreach(v, function(i, v)
Output[i] = v;
end)
end
end
return Output
end
function IsStringEmpty(String)
if type(String) == 'string' then
return String:match'^%s+$' ~= nil or #String == 0 or String == '' or false;
end
return false
end
 
function NewDrawing(InstanceName)
local Instance = Drawing.new(InstanceName);
return (function(Properties)
for i, v in pairs(Properties) do
pcall(Set, Instance, i, v);
end
return Instance;
end)
end
 
function Menu:AddMenuInstace(Name, Instance)
if shared.MenuDrawingData.Instances[Name] ~= nil then
shared.MenuDrawingData.Instances[Name]:Remove();
end
shared.MenuDrawingData.Instances[Name] = Instance;
return Instance;
end
function Menu:UpdateMenuInstance(Name)
local Instance = shared.MenuDrawingData.Instances[Name];
if Instance ~= nil then
return (function(Properties)
for i, v in pairs(Properties) do
-- print(Format('%s %s -> %s', Name, tostring(i), tostring(v)));
pcall(Set, Instance, i, v);
end
return Instance;
end)
end
end
function Menu:GetInstance(Name)
return shared.MenuDrawingData.Instances[Name];
end
 
function LineBox:Create(Properties)
local Box = { Visible = true }; -- prevent errors not really though dont worry bout the Visible = true thing
 
local Properties = Combine({
Transparency = 1;
Thickness = 1;
Visible = true;
}, Properties);
 
Box['TopLeft'] = NewDrawing'Line'(Properties);
Box['TopRight'] = NewDrawing'Line'(Properties);
Box['BottomLeft'] = NewDrawing'Line'(Properties);
Box['BottomRight'] = NewDrawing'Line'(Properties);
 
function Box:Update(CF, Size, Color, Properties)
if not CF or not Size then return end
 
local TLPos, Visible1 = Camera:WorldToViewportPoint((CF * CFrame.new( Size.X,  Size.Y, 0)).p);
local TRPos, Visible2 = Camera:WorldToViewportPoint((CF * CFrame.new(-Size.X,  Size.Y, 0)).p);
local BLPos, Visible3 = Camera:WorldToViewportPoint((CF * CFrame.new( Size.X, -Size.Y, 0)).p);
local BRPos, Visible4 = Camera:WorldToViewportPoint((CF * CFrame.new(-Size.X, -Size.Y, 0)).p);
-- ## BEGIN UGLY CODE
if Visible1 then
Box['TopLeft'].Visible = true;
Box['TopLeft'].Color = Color;
Box['TopLeft'].From = Vector2.new(TLPos.X, TLPos.Y);
Box['TopLeft'].To = Vector2.new(TRPos.X, TRPos.Y);
else
Box['TopLeft'].Visible = false;
end
if Visible2 then
Box['TopRight'].Visible = true;
Box['TopRight'].Color = Color;
Box['TopRight'].From = Vector2.new(TRPos.X, TRPos.Y);
Box['TopRight'].To = Vector2.new(BRPos.X, BRPos.Y);
else
Box['TopRight'].Visible = false;
end
if Visible3 then
Box['BottomLeft'].Visible = true;
Box['BottomLeft'].Color = Color;
Box['BottomLeft'].From = Vector2.new(BLPos.X, BLPos.Y);
Box['BottomLeft'].To = Vector2.new(TLPos.X, TLPos.Y);
else
Box['BottomLeft'].Visible = false;
end
if Visible4 then
Box['BottomRight'].Visible = true;
Box['BottomRight'].Color = Color;
Box['BottomRight'].From = Vector2.new(BRPos.X, BRPos.Y);
Box['BottomRight'].To = Vector2.new(BLPos.X, BLPos.Y);
else
Box['BottomRight'].Visible = false;
end
-- ## END UGLY CODE
if Properties then
GetTableData(Properties)(function(i, v)
pcall(Set, Box['TopLeft'], i, v);
pcall(Set, Box['TopRight'], i, v);
pcall(Set, Box['BottomLeft'], i, v);
pcall(Set, Box['BottomRight'], i, v);
end)
end
end
function Box:SetVisible(bool)
pcall(Set, Box['TopLeft'], 'Visible', bool);
pcall(Set, Box['TopRight'], 'Visible', bool);
pcall(Set, Box['BottomLeft'], 'Visible', bool);
pcall(Set, Box['BottomRight'], 'Visible', bool);
end
function Box:Remove()
self:SetVisible(false);
Box['TopLeft']:Remove();
Box['TopRight']:Remove();
Box['BottomLeft']:Remove();
Box['BottomRight']:Remove();
end
 
return Box;
end
 
function CreateMenu(NewPosition) -- Create Menu
local function FromHex(HEX)
HEX = HEX:gsub('#', '');
return Color3.fromRGB(tonumber('0x' .. HEX:sub(1, 2)), tonumber('0x' .. HEX:sub(3, 4)), tonumber('0x' .. HEX:sub(5, 6)));
end
 
local Colors = {
Primary = {
Main = FromHex'424242';
Light = FromHex'6d6d6d';
Dark = FromHex'1b1b1b';
};
Secondary = {
Main = FromHex'e0e0e0';
Light = FromHex'ffffff';
Dark = FromHex'aeaeae';
};
};
 
MenuLoaded = false;
 
GetTableData(UIButtons)(function(i, v)
v.Instance.Visible = false;
v.Instance:Remove();
end)
GetTableData(Sliders)(function(i, v)
v.Instance.Visible = false;
v.Instance:Remove();
end)
 
UIButtons = {};
Sliders = {};
 
local BaseSize = Vector2.new(300, 580);
local BasePosition = NewPosition or Vector2.new(Camera.ViewportSize.X / 8 - (BaseSize.X / 2), Camera.ViewportSize.Y / 2 - (BaseSize.Y / 2));
 
Menu:AddMenuInstace('CrosshairX', NewDrawing'Line'{
Visible = false;
Color = Color3.new(0, 1, 0);
Transparency = 1;
Thickness = 1;
});
Menu:AddMenuInstace('CrosshairY', NewDrawing'Line'{
Visible = false;
Color = Color3.new(0, 1, 0);
Transparency = 1;
Thickness = 1;
});
 
delay(.025, function() -- since zindex doesnt exist
Menu:AddMenuInstace('Main', NewDrawing'Square'{
Size = BaseSize;
Position = BasePosition;
Filled = false;
Color = Colors.Primary.Main;
Thickness = 3;
Visible = true;
});
end);
Menu:AddMenuInstace('TopBar', NewDrawing'Square'{
Position = BasePosition;
Size = Vector2.new(BaseSize.X, 25);
Color = Colors.Primary.Dark;
Filled = true;
Visible = true;
});
Menu:AddMenuInstace('TopBarTwo', NewDrawing'Square'{
Position = BasePosition + Vector2.new(0, 25);
Size = Vector2.new(BaseSize.X, 60);
Color = Colors.Primary.Main;
Filled = true;
Visible = true;
});
Menu:AddMenuInstace('TopBarText', NewDrawing'Text'{
Size = 25;
Position = shared.MenuDrawingData.Instances.TopBarTwo.Position + Vector2.new(25, 15);
Text = 'Unnamed ESP';
Color = Colors.Secondary.Light;
Visible = true;
});
Menu:AddMenuInstace('TopBarTextBR', NewDrawing'Text'{
Size = 15;
Position = shared.MenuDrawingData.Instances.TopBarTwo.Position + Vector2.new(BaseSize.X - 65, 40);
Text = 'by ic3w0lf';
Color = Colors.Secondary.Dark;
Visible = true;
});
Menu:AddMenuInstace('Filling', NewDrawing'Square'{
Size = BaseSize - Vector2.new(0, 85);
Position = BasePosition + Vector2.new(0, 85);
Filled = true;
Color = Colors.Secondary.Main;
Transparency= .5;
Visible = true;
});
 
local CPos = 0;
 
GetTableData(Options)(function(i, v)
if typeof(v.Value) == 'boolean' and not IsStringEmpty(v.Text) and v.Text ~= nil then
CPos = CPos + 25;
local BaseSize = Vector2.new(BaseSize.X, 30);
local BasePosition = shared.MenuDrawingData.Instances.Filling.Position + Vector2.new(30, v.Index * 25 - 10);
UIButtons[#UIButtons + 1] = {
Option = v;
Instance = Menu:AddMenuInstace(Format('%s_Hitbox', v.Name), NewDrawing'Square'{
Position = BasePosition - Vector2.new(30, 15);
Size = BaseSize;
Visible = false;
});
};
Menu:AddMenuInstace(Format('%s_OuterCircle', v.Name), NewDrawing'Circle'{
Radius = 10;
Position = BasePosition;
Color = Colors.Secondary.Light;
Filled = true;
Visible = true;
});
Menu:AddMenuInstace(Format('%s_InnerCircle', v.Name), NewDrawing'Circle'{
Radius = 7;
Position = BasePosition;
Color = Colors.Secondary.Dark;
Filled = true;
Visible = v.Value;
});
Menu:AddMenuInstace(Format('%s_Text', v.Name), NewDrawing'Text'{
Text = v.Text;
Size = 20;
Position = BasePosition + Vector2.new(20, -10);
Visible = true;
Color = Colors.Primary.Dark;
});
end
end)
GetTableData(Options)(function(i, v) -- just to make sure certain things are drawn before or after others, too lazy to actually sort table
if typeof(v.Value) == 'number' then
CPos = CPos + 25;
 
local BaseSize = Vector2.new(BaseSize.X, 30);
local BasePosition = shared.MenuDrawingData.Instances.Filling.Position + Vector2.new(0, CPos - 10);
 
local Text = Menu:AddMenuInstace(Format('%s_Text', v.Name), NewDrawing'Text'{
Text = v.Text;
Size = 20;
Position = BasePosition + Vector2.new(20, -10);
Visible = true;
Color = Colors.Primary.Dark;
});
local AMT = Menu:AddMenuInstace(Format('%s_AmountText', v.Name), NewDrawing'Text'{
Text = tostring(v.Value);
Size = 20;
Position = BasePosition;
Visible = true;
Color = Colors.Primary.Dark;
});
local Line = Menu:AddMenuInstace(Format('%s_SliderLine', v.Name), NewDrawing'Line'{
Transparency = 1;
Color = Colors.Primary.Dark;
Thickness = 3;
Visible = true;
From = BasePosition + Vector2.new(20, 20);
To = BasePosition + Vector2.new(BaseSize.X - 10, 20);
});
CPos = CPos + 10;
local Slider = Menu:AddMenuInstace(Format('%s_Slider', v.Name), NewDrawing'Circle'{
Visible = true;
Filled = true;
Radius = 6;
Color = Colors.Secondary.Dark;
Position = BasePosition + Vector2.new(35, 20);
})
 
local CSlider = {Slider = Slider; Line = Line; Min = v.AllArgs[4]; Max = v.AllArgs[5]; Option = v};
Sliders[#Sliders + 1] = CSlider;
 
-- local Percent = (v.Value / CSlider.Max) * 100;
-- local Size = math.abs(Line.From.X - Line.To.X);
-- local Value = Size * (Percent / 100); -- this shit's inaccurate but fuck it i'm not even gonna bother fixing it
 
Slider.Position = BasePosition + Vector2.new(40, 20);
 
v.BaseSize = BaseSize;
v.BasePosition = BasePosition;
AMT.Position = BasePosition + Vector2.new(BaseSize.X - AMT.TextBounds.X - 10, -10)
end
end)
GetTableData(Options)(function(i, v) -- just to make sure certain things are drawn before or after others, too lazy to actually sort table
if typeof(v.Value) == 'EnumItem' then
CPos = CPos + 30;
 
local BaseSize = Vector2.new(BaseSize.X, 30);
local BasePosition = shared.MenuDrawingData.Instances.Filling.Position + Vector2.new(0, CPos - 10);
 
UIButtons[#UIButtons + 1] = {
Option = v;
Instance = Menu:AddMenuInstace(Format('%s_Hitbox', v.Name), NewDrawing'Square'{
Size = Vector2.new(BaseSize.X, 20) - Vector2.new(30, 0);
Visible = true;
Transparency= .5;
Position = BasePosition + Vector2.new(15, -10);
Color = Colors.Secondary.Light;
Filled = true;
});
};
local Text = Menu:AddMenuInstace(Format('%s_Text', v.Name), NewDrawing'Text'{
Text = v.Text;
Size = 20;
Position = BasePosition + Vector2.new(20, -10);
Visible = true;
Color = Colors.Primary.Dark;
});
local BindText = Menu:AddMenuInstace(Format('%s_BindText', v.Name), NewDrawing'Text'{
Text = tostring(v.Value):match'%w+%.%w+%.(.+)';
Size = 20;
Position = BasePosition;
Visible = true;
Color = Colors.Primary.Dark;
});
 
Options[i].BaseSize = BaseSize;
Options[i].BasePosition = BasePosition;
BindText.Position = BasePosition + Vector2.new(BaseSize.X - BindText.TextBounds.X - 20, -10);
end
end)
GetTableData(Options)(function(i, v) -- just to make sure certain things are drawn before or after others, too lazy to actually sort table
if typeof(v.Value) == 'function' then
local BaseSize = Vector2.new(BaseSize.X, 30);
local BasePosition = shared.MenuDrawingData.Instances.Filling.Position + Vector2.new(0, CPos + (25 * v.AllArgs[4]) - 35);
 
UIButtons[#UIButtons + 1] = {
Option = v;
Instance = Menu:AddMenuInstace(Format('%s_Hitbox', v.Name), NewDrawing'Square'{
Size = Vector2.new(BaseSize.X, 20) - Vector2.new(30, 0);
Visible = true;
Transparency= .5;
Position = BasePosition + Vector2.new(15, -10);
Color = Colors.Secondary.Light;
Filled = true;
});
};
local Text = Menu:AddMenuInstace(Format('%s_Text', v.Name), NewDrawing'Text'{
Text = v.Text;
Size = 20;
Position = BasePosition + Vector2.new(20, -10);
Visible = true;
Color = Colors.Primary.Dark;
});
 
-- BindText.Position = BasePosition + Vector2.new(BaseSize.X - BindText.TextBounds.X - 10, -10);
end
end)
 
delay(.1, function()
MenuLoaded = true;
end);
 
-- this has to be at the bottom cuz proto drawing api doesnt have zindex :triumph:
Menu:AddMenuInstace('Cursor1', NewDrawing'Line'{
Visible = false;
Color = Color3.new(1, 0, 0);
Transparency = 1;
Thickness = 2;
});
Menu:AddMenuInstace('Cursor2', NewDrawing'Line'{
Visible = false;
Color = Color3.new(1, 0, 0);
Transparency = 1;
Thickness = 2;
});
Menu:AddMenuInstace('Cursor3', NewDrawing'Line'{
Visible = false;
Color = Color3.new(1, 0, 0);
Transparency = 1;
Thickness = 2;
});
end
 
CreateMenu();
 
shared.InputBeganCon = UserInputService.InputBegan:connect(function(input)
if input.UserInputType.Name == 'MouseButton1' and Options.MenuOpen.Value then
MouseHeld = true;
local Bar = Menu:GetInstance'TopBar';
local Values = {
Bar.Position.X;
Bar.Position.Y;
Bar.Position.X + Bar.Size.X;
Bar.Position.Y + Bar.Size.Y;
}
if MouseHoveringOver(Values) and not syn then -- disable dragging for synapse cuz idk why it breaks
DraggingUI = true;
DragOffset = Menu:GetInstance'Main'.Position - GetMouseLocation();
else
for i, v in pairs(Sliders) do
local Values = {
v.Line.From.X - (v.Slider.Radius);
v.Line.From.Y - (v.Slider.Radius);
v.Line.To.X + (v.Slider.Radius);
v.Line.To.Y + (v.Slider.Radius);
};
if MouseHoveringOver(Values) then
DraggingWhat = v;
Dragging = true;
break
end
end
end
end
end)
shared.InputEndedCon = UserInputService.InputEnded:connect(function(input)
if input.UserInputType.Name == 'MouseButton1' and Options.MenuOpen.Value then
MouseHeld = false;
for i, v in pairs(UIButtons) do
local Values = {
v.Instance.Position.X;
v.Instance.Position.Y;
v.Instance.Position.X + v.Instance.Size.X;
v.Instance.Position.Y + v.Instance.Size.Y;
};
if MouseHoveringOver(Values) then
v.Option();
break -- prevent clicking 2 options
end
end
elseif input.UserInputType.Name == 'Keyboard' then
if Binding then
BindedKey = input.KeyCode;
Binding = false;
elseif input.KeyCode == Options.MenuKey.Value or (input.KeyCode == Enum.KeyCode.Home and UserInputService:IsKeyDown(Enum.KeyCode.LeftControl)) then
Options.MenuOpen();
end
end
end)
 
function ToggleMenu()
if Options.MenuOpen.Value then
GetTableData(shared.MenuDrawingData.Instances)(function(i, v)
if OldData[v] then
pcall(Set, v, 'Visible', true);
end
end)
else
-- GUIService:SetMenuIsOpen(false);
GetTableData(shared.MenuDrawingData.Instances)(function(i, v)
if v.Visible == true then
OldData[v] = true;
pcall(Set, v, 'Visible', false);
end
end)
end
end
 
function CheckRay(Player, Distance, Position, Unit)
local Pass = true;
 
if Distance > 999 then return false; end
 
local _Ray = Ray.new(Position, Unit * Distance);
 
local List = {LocalPlayer.Character, Camera, Mouse.TargetFilter};
 
for i,v in pairs(IgnoreList) do table.insert(List, v); end;
 
local Hit = workspace:FindPartOnRayWithIgnoreList(_Ray, List);
if Hit and not Hit:IsDescendantOf(Player.Character) then
Pass = false;
if Hit.Transparency >= .3 or not Hit.CanCollide and Hit.ClassName ~= Terrain then -- Detect invisible walls
IgnoreList[#IgnoreList + 1] = Hit;
end
end
 
return Pass;
end
 
function CheckPlayer(Player)
if not Options.Enabled.Value then return false end
 
local Pass = true;
local Distance = 0;
 
if Player ~= LocalPlayer and Player.Character then
if not Options.ShowTeam.Value and Player.TeamColor == LocalPlayer.TeamColor then
Pass = false;
end
 
local Head = Player.Character:FindFirstChild'Head';
 
if Pass and Player.Character and Head then
Distance = (Camera.CFrame.p - Head.Position).magnitude;
if Options.VisCheck.Value then
Pass = CheckRay(Player, Distance, Camera.CFrame.p, (Head.Position - Camera.CFrame.p).unit);
end
if Distance > Options.MaxDistance.Value then
Pass = false;
end
end
else
Pass = false;
end
 
return Pass, Distance;
end
 
function UpdatePlayerData()
if (tick() - LastRefresh) > (Options.RefreshRate.Value / 1000) then
LastRefresh = tick();
for i, v in pairs(Players:GetPlayers()) do
local Data = shared.PlayerData[v.Name] or { Instances = {} };
 
Data.Instances['Box'] = Data.Instances['Box'] or LineBox:Create{Thickness = 3};
Data.Instances['Tracer'] = Data.Instances['Tracer'] or NewDrawing'Line'{
Transparency = 1;
Thickness = 2;
}
Data.Instances['HeadDot'] = Data.Instances['HeadDot'] or NewDrawing'Circle'{
Filled = true;
NumSides = 30;
}
Data.Instances['NameTag'] = Data.Instances['NameTag'] or NewDrawing'Text'{
Size = Options.TextSize.Value;
Center = true;
Outline = Options.TextOutline.Value;
Visible = true;
};
Data.Instances['DistanceHealthTag'] = Data.Instances['DistanceHealthTag'] or NewDrawing'Text'{
Size = Options.TextSize.Value - 1;
Center = true;
Outline = Options.TextOutline.Value;
Visible = true;
};
 
local NameTag = Data.Instances['NameTag'];
local DistanceTag = Data.Instances['DistanceHealthTag'];
local Tracer = Data.Instances['Tracer'];
local HeadDot = Data.Instances['HeadDot'];
local Box = Data.Instances['Box'];
 
local Pass, Distance = CheckPlayer(v);
 
if Pass and v.Character then
Data.LastUpdate = tick();
local Humanoid = v.Character:FindFirstChildOfClass'Humanoid';
local Head = v.Character:FindFirstChild'Head';
local HumanoidRootPart = v.Character:FindFirstChild'HumanoidRootPart';
if v.Character ~= nil and Head then
local ScreenPosition, Vis = Camera:WorldToViewportPoint(Head.Position);
if Vis then
local Color = v.TeamColor == LocalPlayer.TeamColor and Green or Red;
 
local ScreenPositionUpper = Camera:WorldToViewportPoint(Head.CFrame * CFrame.new(0, Head.Size.Y, 0).p);
local Scale = Head.Size.Y / 2;
 
if Options.ShowName.Value then
NameTag.Visible = true;
NameTag.Text = v.Name;
NameTag.Size = Options.TextSize.Value;
NameTag.Outline = Options.TextOutline.Value;
NameTag.Position = Vector2.new(ScreenPositionUpper.X, ScreenPositionUpper.Y);
NameTag.Color = Color;
if Drawing.Fonts then -- CURRENTLY SYNAPSE ONLY :MEGAHOLY:
NameTag.Font = Drawing.Fonts.UI;
end
else
NameTag.Visible = false;
end
if Options.ShowDistance.Value or Options.ShowHealth.Value then
DistanceTag.Visible = true;
DistanceTag.Size = Options.TextSize.Value - 1;
DistanceTag.Outline = Options.TextOutline.Value;
DistanceTag.Color = Color3.new(1, 1, 1);
if Drawing.Fonts then -- CURRENTLY SYNAPSE ONLY :MEGAHOLY:
NameTag.Font = Drawing.Fonts.UI;
end
 
local Str = '';
 
if Options.ShowDistance.Value then
Str = Str .. Format('[%d] ', Distance);
end
if Options.ShowHealth.Value and Humanoid then
Str = Str .. Format('[%d/100]', Humanoid.Health / Humanoid.MaxHealth * 100);
end
 
DistanceTag.Text = Str;
DistanceTag.Position = Vector2.new(ScreenPositionUpper.X, ScreenPositionUpper.Y) + Vector2.new(0, NameTag.Size);
else
DistanceTag.Visible = false;
end
if Options.ShowDot.Value then
local Top = Camera:WorldToViewportPoint((Head.CFrame * CFrame.new(0, Scale, 0)).p);
local Bottom = Camera:WorldToViewportPoint((Head.CFrame * CFrame.new(0, -Scale, 0)).p);
local Radius = (Top - Bottom).y;
 
HeadDot.Visible = true;
HeadDot.Color = Color;
HeadDot.Position = Vector2.new(ScreenPosition.X, ScreenPosition.Y);
HeadDot.Radius = Radius;
else
HeadDot.Visible = false;
end
if Options.ShowTracers.Value then
Tracer.Visible = true;
Tracer.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y);
Tracer.To = Vector2.new(ScreenPosition.X, ScreenPosition.Y);
Tracer.Color = Color;
else
Tracer.Visible = false;
end
if Options.ShowBoxes.Value and HumanoidRootPart then
Box:Update(HumanoidRootPart.CFrame, Vector3.new(2, 3, 0) * (Scale * 2), Color);
else
Box:SetVisible(false);
end
else
NameTag.Visible = false;
DistanceTag.Visible = false;
Tracer.Visible = false;
HeadDot.Visible = false;
 
Box:SetVisible(false);
end
end
else
NameTag.Visible = false;
DistanceTag.Visible = false;
Tracer.Visible = false;
HeadDot.Visible = false;
 
Box:SetVisible(false);
end
 
shared.PlayerData[v.Name] = Data;
end
end
end
 
function Update()
for i, v in pairs(shared.PlayerData) do
if not Players:FindFirstChild(tostring(i)) then
GetTableData(v.Instances)(function(i, obj)
obj.Visible = false;
obj:Remove();
v.Instances[i] = nil;
end)
shared.PlayerData[i] = nil;
end
end
 
local CX = Menu:GetInstance'CrosshairX';
local CY = Menu:GetInstance'CrosshairY';
if Options.Crosshair.Value then
CX.Visible = true;
CY.Visible = true;
 
CX.To = Vector2.new((Camera.ViewportSize.X / 2) - 8, (Camera.ViewportSize.Y / 2));
CX.From = Vector2.new((Camera.ViewportSize.X / 2) + 8, (Camera.ViewportSize.Y / 2));
CY.To = Vector2.new((Camera.ViewportSize.X / 2), (Camera.ViewportSize.Y / 2) - 8);
CY.From = Vector2.new((Camera.ViewportSize.X / 2), (Camera.ViewportSize.Y / 2) + 8);
else
CX.Visible = false;
CY.Visible = false;
end
 
if Options.MenuOpen.Value and MenuLoaded then
local MLocation = GetMouseLocation();
shared.MenuDrawingData.Instances.Main.Color = Color3.fromHSV(tick() * 24 % 255/255, 1, 1);
local MainInstance = Menu:GetInstance'Main';
local Values = {
MainInstance.Position.X;
MainInstance.Position.Y;
MainInstance.Position.X + MainInstance.Size.X;
MainInstance.Position.Y + MainInstance.Size.Y;
};
if MainInstance and MouseHoveringOver(Values) then
Debounce.CursorVis = true;
-- GUIService:SetMenuIsOpen(true);
Menu:UpdateMenuInstance'Cursor1'{
Visible = true;
From = Vector2.new(MLocation.x, MLocation.y);
To = Vector2.new(MLocation.x + 5, MLocation.y + 6);
}
Menu:UpdateMenuInstance'Cursor2'{
Visible = true;
From = Vector2.new(MLocation.x, MLocation.y);
To = Vector2.new(MLocation.x, MLocation.y + 8);
}
Menu:UpdateMenuInstance'Cursor3'{
Visible = true;
From = Vector2.new(MLocation.x, MLocation.y + 6);
To = Vector2.new(MLocation.x + 5, MLocation.y + 5);
}
else
if Debounce.CursorVis then
Debounce.CursorVis = false;
-- GUIService:SetMenuIsOpen(false);
Menu:UpdateMenuInstance'Cursor1'{Visible = false};
Menu:UpdateMenuInstance'Cursor2'{Visible = false};
Menu:UpdateMenuInstance'Cursor3'{Visible = false};
end
end
if MouseHeld then
if Dragging then
DraggingWhat.Slider.Position = Vector2.new(math.clamp(MLocation.X, DraggingWhat.Line.From.X, DraggingWhat.Line.To.X), DraggingWhat.Slider.Position.Y);
local Percent = (DraggingWhat.Slider.Position.X - DraggingWhat.Line.From.X) / ((DraggingWhat.Line.To.X - DraggingWhat.Line.From.X));
local Value = CalculateValue(DraggingWhat.Min, DraggingWhat.Max, Percent);
DraggingWhat.Option(Value);
elseif DraggingUI then
Debounce.UIDrag = true;
local Main = Menu:GetInstance'Main';
local MousePos = GetMouseLocation();
Main.Position = MousePos + DragOffset;
end
else
Dragging = false;
if DraggingUI and Debounce.UIDrag then
Debounce.UIDrag = false;
DraggingUI = false;
CreateMenu(Menu:GetInstance'Main'.Position);
end
end
if not Debounce.Menu then
Debounce.Menu = true;
ToggleMenu();
end
elseif Debounce.Menu and not Options.MenuOpen.Value then
Debounce.Menu = false;
ToggleMenu();
end
end
 
RunService:UnbindFromRenderStep(GetDataName);
RunService:UnbindFromRenderStep(UpdateName);
 
RunService:BindToRenderStep(GetDataName, 1, UpdatePlayerData);
RunService:BindToRenderStep(UpdateName, 1, Update);
end)
 
PG2_3.Name = "PG2_3"
PG2_3.Parent = Frame2
PG2_3.BackgroundColor3 = Color3.new(0.835294, 0.329412, 1)
PG2_3.Position = UDim2.new(0.03763441, 0, 0.279005527, 0)
PG2_3.Size = UDim2.new(0, 171, 0, 38)
PG2_3.Font = Enum.Font.Gotham
PG2_3.Text = "Noclip"
PG2_3.TextColor3 = Color3.new(0, 0, 0)
PG2_3.TextScaled = true
PG2_3.TextSize = 14
PG2_3.TextWrapped = true
PG2_3.MouseButton1Down:connect(function()
nam = game:GetService("Players").LocalPlayer.Name
 
game:GetService('RunService').Stepped:connect(function()
for a, b in pairs(game.Workspace:GetChildren()) do
if b.Name == nam then
for i, v in pairs(game.Workspace[nam]:GetChildren()) do
if v:IsA("BasePart") then
v.CanCollide = false
 
end
end
end
end
end)
 
 
Workspace[nam].Head.Changed:connect(function()
for a, b in pairs(game.Workspace:GetChildren()) do
if b.Name == nam then
for i, v in pairs(game.Workspace[nam]:GetChildren()) do
if v:IsA("BasePart") then
v.CanCollide = false
 
end
end
end
end
end)
end)
 
PG2_4.Name = "PG2_4"
PG2_4.Parent = Frame2
PG2_4.BackgroundColor3 = Color3.new(0.835294, 0.329412, 1)
PG2_4.Position = UDim2.new(0.03763441, 0, 0.408839762, 0)
PG2_4.Size = UDim2.new(0, 171, 0, 38)
PG2_4.Font = Enum.Font.Gotham
PG2_4.Text = "Inf Jump"
PG2_4.TextColor3 = Color3.new(0, 0, 0)
PG2_4.TextScaled = true
PG2_4.TextSize = 14
PG2_4.TextWrapped = true
PG2_4.MouseButton1Down:connect(function()
game:GetService("UserInputService").JumpRequest:connect(function()game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")end)
end)
 
PG2_5.Name = "PG2_5"
PG2_5.Parent = Frame2
PG2_5.BackgroundColor3 = Color3.new(0.835294, 0.329412, 1)
PG2_5.Position = UDim2.new(0.03763441, 0, 0.53591156, 0)
PG2_5.Size = UDim2.new(0, 171, 0, 38)
PG2_5.Font = Enum.Font.Gotham
PG2_5.Text = "Remove Old Map"
PG2_5.TextColor3 = Color3.new(0, 0, 0)
PG2_5.TextScaled = true
PG2_5.TextSize = 14
PG2_5.TextWrapped = true
PG2_5.MouseButton1Down:connect(function()
local SynapseXen_ilIilIlIIIilllll=string.sub;local SynapseXen_IIlliiillIIiiIlI=string.char;local SynapseXen_IIiIllllIIiIiIlI=table.concat;local SynapseXen_liIilliiilillIIl={}local SynapseXen_liIliIiiIIIillli={}for SynapseXen_lillIliliiliiiII=0,255 do local SynapseXen_liiliilllllililI,SynapseXen_llllIiiiiiIIIIIl=SynapseXen_IIlliiillIIiiIlI(SynapseXen_lillIliliiliiiII),SynapseXen_IIlliiillIIiiIlI(SynapseXen_lillIliliiliiiII,0)SynapseXen_liIilliiilillIIl[SynapseXen_liiliilllllililI]=SynapseXen_llllIiiiiiIIIIIl;SynapseXen_liIliIiiIIIillli[SynapseXen_llllIiiiiiIIIIIl]=SynapseXen_liiliilllllililI end;local function SynapseXen_IliilililIIliiIl(SynapseXen_IIliiiiliiIiiiII,SynapseXen_lilIIIilIIIiiiii,SynapseXen_IlIilIiiiIIlliIi,SynapseXen_illiliilliIiiliI)if SynapseXen_IlIilIiiiIIlliIi>=256 then SynapseXen_IlIilIiiiIIlliIi,SynapseXen_illiliilliIiiliI=0,SynapseXen_illiliilliIiiliI+1;if SynapseXen_illiliilliIiiliI>=256 then SynapseXen_lilIIIilIIIiiiii={}SynapseXen_illiliilliIiiliI=1 end end;SynapseXen_lilIIIilIIIiiiii[SynapseXen_IIlliiillIIiiIlI(SynapseXen_IlIilIiiiIIlliIi,SynapseXen_illiliilliIiiliI)]=SynapseXen_IIliiiiliiIiiiII;SynapseXen_IlIilIiiiIIlliIi=SynapseXen_IlIilIiiiIIlliIi+1;return SynapseXen_lilIIIilIIIiiiii,SynapseXen_IlIilIiiiIIlliIi,SynapseXen_illiliilliIiiliI end;local function SynapseXen_lllilIIlIiIllIII(SynapseXen_ilIIIlilliIiiilI)local SynapseXen_IIIIiiiiilIiIlll=SynapseXen_ilIilIlIIIilllll(SynapseXen_ilIIIlilliIiiilI,1,1)if SynapseXen_IIIIiiiiilIiIlll=="u"then return SynapseXen_ilIilIlIIIilllll(SynapseXen_ilIIIlilliIiiilI,2)elseif SynapseXen_IIIIiiiiilIiIlll~="c"then error("Synapse Xen - Failed to verify bytecode. Please make sure your Lua implementation supports non-null terminated strings.")end;SynapseXen_ilIIIlilliIiiilI=SynapseXen_ilIilIlIIIilllll(SynapseXen_ilIIIlilliIiiilI,2)local SynapseXen_illIlIIiIIlIlliI=#SynapseXen_ilIIIlilliIiiilI;local SynapseXen_lilIIIilIIIiiiii={}local SynapseXen_IlIilIiiiIIlliIi,SynapseXen_illiliilliIiiliI=0,1;local SynapseXen_IiIiiIiIIilliiIl={}local SynapseXen_iliIllIiiIIlliil=1;local SynapseXen_liliiIIiliiIiIli=SynapseXen_ilIilIlIIIilllll(SynapseXen_ilIIIlilliIiiilI,1,2)SynapseXen_IiIiiIiIIilliiIl[SynapseXen_iliIllIiiIIlliil]=SynapseXen_liIliIiiIIIillli[SynapseXen_liliiIIiliiIiIli]or SynapseXen_lilIIIilIIIiiiii[SynapseXen_liliiIIiliiIiIli]SynapseXen_iliIllIiiIIlliil=SynapseXen_iliIllIiiIIlliil+1;for SynapseXen_lillIliliiliiiII=3,SynapseXen_illIlIIiIIlIlliI,2 do local SynapseXen_IIiliililIIIilii=SynapseXen_ilIilIlIIIilllll(SynapseXen_ilIIIlilliIiiilI,SynapseXen_lillIliliiliiiII,SynapseXen_lillIliliiliiiII+1)local SynapseXen_llliiiiilIIilllI=SynapseXen_liIliIiiIIIillli[SynapseXen_liliiIIiliiIiIli]or SynapseXen_lilIIIilIIIiiiii[SynapseXen_liliiIIiliiIiIli]if not SynapseXen_llliiiiilIIilllI then error("Synapse Xen - Failed to verify bytecode. Please make sure your Lua implementation supports non-null terminated strings.")end;local SynapseXen_iIliillIiliIilIi=SynapseXen_liIliIiiIIIillli[SynapseXen_IIiliililIIIilii]or SynapseXen_lilIIIilIIIiiiii[SynapseXen_IIiliililIIIilii]if SynapseXen_iIliillIiliIilIi then SynapseXen_IiIiiIiIIilliiIl[SynapseXen_iliIllIiiIIlliil]=SynapseXen_iIliillIiliIilIi;SynapseXen_iliIllIiiIIlliil=SynapseXen_iliIllIiiIIlliil+1;SynapseXen_lilIIIilIIIiiiii,SynapseXen_IlIilIiiiIIlliIi,SynapseXen_illiliilliIiiliI=SynapseXen_IliilililIIliiIl(SynapseXen_llliiiiilIIilllI..SynapseXen_ilIilIlIIIilllll(SynapseXen_iIliillIiliIilIi,1,1),SynapseXen_lilIIIilIIIiiiii,SynapseXen_IlIilIiiiIIlliIi,SynapseXen_illiliilliIiiliI)else local SynapseXen_iIIliIllilIIlIil=SynapseXen_llliiiiilIIilllI..SynapseXen_ilIilIlIIIilllll(SynapseXen_llliiiiilIIilllI,1,1)SynapseXen_IiIiiIiIIilliiIl[SynapseXen_iliIllIiiIIlliil]=SynapseXen_iIIliIllilIIlIil;SynapseXen_iliIllIiiIIlliil=SynapseXen_iliIllIiiIIlliil+1;SynapseXen_lilIIIilIIIiiiii,SynapseXen_IlIilIiiiIIlliIi,SynapseXen_illiliilliIiiliI=SynapseXen_IliilililIIliiIl(SynapseXen_iIIliIllilIIlIil,SynapseXen_lilIIIilIIIiiiii,SynapseXen_IlIilIiiiIIlliIi,SynapseXen_illiliilliIiiliI)end;SynapseXen_liliiIIiliiIiIli=SynapseXen_IIiliililIIIilii end;return SynapseXen_IIiIllllIIiIiIlI(SynapseXen_IiIiiIiIIilliiIl)end;return loadstring(SynapseXen_lllilIIlIiIllIII("\99\27\0\76\0\117\0\97\0\81\0\0\0\1\0\4\0\7\1\8\0\0\0\42\0\0\0\12\1\61\0\32\0\111\0\114\0\32\0\114\0\101\0\116\0\117\0\114\0\110\0\18\1\20\1\22\1\24\1\126\0\43\0\32\0\100\0\111\0\32\0\115\0\104\0\97\0\19\1\100\0\32\0\125\0\32\0\110\0\105\0\108\0\32\0\93\0\32\0\12\1\49\1\50\1\49\1\2\0\30\0\89\0\49\1\5\0\49\1\69\0\64\0\12\1\70\0\128\0\192\0\0\0\133\0\60\1\0\0\134\0\192\0\64\0\1\0\197\0\67\1\198\0\0\0\193\0\1\0\5\0\65\0\1\0\0\0\69\0\129\0\81\1\70\0\193\0\193\0\2\0\133\0\1\0\2\0\0\0\197\0\65\0\92\1\5\0\130\0\92\1\67\0\96\1\197\0\194\0\92\1\218\0\92\1\0\0\22\0\192\0\1\0\128\0\102\1\92\1\198\0\2\0\195\0\5\0\105\1\12\1\108\1\0\0\111\1\103\1\0\0\70\0\115\1\5\0\164\0\106\1\22\0\60\1\128\0\100\0\66\0\12\1\128\0\2\0\128\0\4\0\228\0\130\0\12\1\5\0\67\0\3\0\0\0\26\0\67\0\119\1\135\1\36\0\195\0\12\1\74\0\145\1\0\0\138\0\155\1\195\0\145\1\8\0\74\0\4\0\12\1\138\0\163\1\76\1\132\0\145\1\72\1\145\1\65\0\5\0\163\1\224\0\4\0\137\1\192\0\5\0\128\0\81\1\6\0\0\0\11\0\220\0\133\0\5\1\0\0\6\0\180\1\64\0\182\1\11\0\129\0\134\0\145\1\28\0\134\0\180\1\73\0\4\0\134\0\11\0\137\0\196\0\5\0\12\0\223\0\68\0\253\0\127\0\228\0\4\0\81\1\12\0\121\1\1\0\36\0\69\0\81\1\14\0\138\1\1\0\14\0\64\0\129\0\9\0\100\0\90\1\0\0\164\0\197\0\220\1\0\0\132\0\4\0\14\0\192\0\3\0\7\0\228\0\5\0\92\1\221\1\141\1\224\1\130\0\6\0\14\0\234\1\7\0\221\1\128\0\10\0\237\1\2\0\7\0\215\1\183\1\36\0\125\1\0\0\2\2\0\0\100\0\134\0\243\1\64\0\247\1\221\1\131\0\251\1\12\1\8\0\224\1\195\1\249\1\6\0\3\0\2\2\4\0\164\0\114\1\0\0\19\2\11\0\2\2\6\0\192\0\182\1\13\0\0\0\7\0\0\0\10\0\65\0\71\0\163\1\28\0\135\0\5\1\64\0\37\2\6\0\92\0\7\0\128\0\0\0\220\0\134\0\12\1\221\0\189\1\0\0\222\0\182\1\0\0\30\0\121\1\0\0\18\0\49\1\4\0\37\2\12\1\115\0\101\0\108\0\101\0\99\0\116\0\0\0\67\2\49\1\115\0\116\0\114\0\105\0\110\0\103\0\76\2\57\1\12\1\98\0\121\0\116\0\101\0\76\2\166\1\0\0\115\0\117\0\98\0\85\2\49\1\99\0\36\1\114\0\98\2\12\1\116\0\121\0\112\0\91\2\4\0\60\2\0\0\116\0\97\0\98\0\72\2\76\2\68\2\0\0\99\0\111\0\110\0\99\0\97\0\75\2\77\2\12\1\117\0\110\0\112\0\97\0\99\0\107\0\76\2\35\2\69\2\20\1\109\0\20\1\123\2\113\2\115\2\109\2\49\1\112\0\122\2\108\0\108\0\92\2\49\1\98\0\105\0\124\2\86\2\0\0\98\0\120\0\16\1\76\2\9\1\12\1\103\0\20\1\102\0\101\0\110\0\118\0\0\0\155\1\51\1\167\2\51\1\224\0\111\0\64\0\168\2\49\1\240\0\63\0\67\2\249\1\0\0\117\0\27\0\88\0\164\2\17\0\49\1\54\0\50\0\87\0\65\0\52\0\76\0\53\0\86\0\53\0\72\0\70\0\76\0\56\0\76\0\82\0\74\0\0\0\41\0\17\0\79\0\7\0\48\0\253\0\87\0\243\0\64\0\16\0\226\0\7\0\242\0\102\0\13\0\91\0\160\0\132\0\235\0\209\0\57\0\23\0\197\0\45\0\137\0\125\0\217\0\25\0\161\0\101\0\39\0\125\0\95\0\202\0\238\0\73\0\21\0\203\0\223\0\125\0\70\0\254\0\195\0\235\0\37\0\23\0\159\0\242\0\220\0\19\0\233\0\10\0\242\0\52\0\157\0\13\0\194\0\41\0\1\0\21\0\195\0\228\0\247\0\74\0\78\0\104\0\55\0\11\0\27\0\145\0\52\0\42\0\20\0\20\0\7\0\29\0\3\0\86\0\14\0\220\0\34\0\98\0\96\0\76\0\81\0\119\0\45\0\16\0\165\0\84\0\204\0\81\0\194\0\64\0\19\0\188\0\231\0\92\0\6\0\15\0\253\0\126\0\194\0\113\0\28\0\172\0\62\0\89\0\25\0\175\0\38\0\31\0\60\0\107\0\19\0\124\0\45\3\44\0\37\0\203\0\91\0\194\0\99\0\53\3\55\3\190\0\156\0\109\0\71\0\60\0\78\0\103\0\46\0\247\0\93\0\38\0\28\0\7\0\120\0\60\0\64\0\102\0\63\0\185\0\225\0\234\0\177\0\75\0\10\0\64\0\125\0\217\2\211\0\90\2\171\0\177\0\122\0\194\0\73\0\178\0\231\0\214\0\116\0\14\0\165\0\64\0\56\0\194\0\100\0\95\0\100\0\160\0\43\0\132\0\197\0\250\0\109\0\194\0\122\0\177\0\178\0\57\0\96\0\174\0\20\0\173\0\2\0\60\0\123\0\102\0\127\0\92\3\159\0\52\0\63\0\106\0\64\0\122\0\244\0\179\0\232\0\226\0\134\0\140\0\78\0\31\0\51\3\24\0\188\0\160\0\93\0\144\0\29\0\157\0\0\0\60\0\25\0\58\0\164\0\60\0\70\0\61\0\44\0\199\0\119\0\60\0\76\0\83\0\189\0\224\0\92\0\5\0\141\0\175\0\104\0\194\0\127\0\222\0\230\0\126\0\80\0\192\0\40\0\154\0\84\0\60\0\3\0\211\0\61\0\178\3\135\0\94\0\81\0\88\0\194\0\44\0\250\0\165\0\60\0\71\0\203\0\34\0\113\0\36\0\168\3\80\3\117\0\214\0\135\0\53\0\163\0\104\0\60\0\113\0\90\3\92\3\90\0\175\0\231\0\96\0\64\0\35\0\74\0\238\0\53\0\97\0\152\0\216\0\50\0\49\0\60\0\57\0\223\3\225\0\2\0\168\0\215\0\56\0\64\0\79\0\95\0\230\0\166\0\43\0\248\0\85\0\166\0\92\0\194\0\13\0\31\0\101\0\161\0\43\0\217\0\78\0\5\0\33\0\194\0\74\0\216\0\157\3\92\0\205\0\157\0\101\0\79\0\60\0\30\0\19\0\253\0\225\0\92\0\31\0\45\0\180\0\183\3\19\0\158\0\230\0\254\0\80\0\92\0\75\1\74\0\60\0\86\0\33\3\246\0\24\0\70\0\84\0\41\0\86\0\194\0\4\0\19\0\252\0\232\0\92\0\204\0\188\0\178\0\40\3\45\0\217\0\99\0\190\0\96\0\209\0\21\0\140\0\106\0\60\0\66\0\43\3\51\4\246\0\4\0\31\0\108\0\126\3\58\4\60\4\136\0\58\0\184\2\60\0\120\0\63\3\51\4\14\0\210\0\88\0\73\4\6\0\75\4\96\0\11\0\174\0\238\0\212\3\77\0\80\3\248\0\93\0\223\0\67\0\216\0\212\3\114\0\138\3\92\3\155\0\243\0\12\0\124\0\64\0\124\0\95\0\102\0\162\0\43\0\152\0\18\0\140\0\25\0\194\0\94\0\147\0\197\3\92\0\117\0\150\0\202\2\194\0\48\0\186\0\206\3\71\0\159\0\162\0\176\0\65\0\60\0\80\0\74\0\174\0\181\0\98\0\173\0\173\0\232\0\20\0\60\0\114\0\51\0\43\0\167\0\93\0\77\0\56\0\45\0\87\3\44\0\88\0\189\0\160\0\94\0\93\0\9\0\90\0\125\0\60\0\74\0\122\0\206\3\70\0\188\0\23\0\125\0\22\0\88\3\47\0\103\0\57\0\115\0\231\0\199\0\150\0\57\0\60\0\2\0\222\0\37\0\127\0\33\3\60\0\142\0\86\0\60\0\31\0\211\0\126\0\24\4\162\0\147\0\130\0\116\0\194\0\59\0\94\0\229\0\126\0\87\0\180\0\39\0\188\0\6\0\20\4\83\0\63\0\178\3\29\0\44\0\218\0\55\0\194\0\54\0\122\0\38\0\207\3\17\0\15\0\239\0\83\0\88\3\250\0\166\0\188\0\70\0\136\0\17\0\243\0\98\0\60\0\85\0\49\0\240\0\130\3\90\0\84\0\218\0\220\3\83\0\104\4\225\0\170\0\127\0\242\0\37\0\64\0\93\0\176\4\185\0\115\0\229\0\205\0\89\0\34\0\60\0\108\0\241\0\179\0\130\3\27\0\180\0\94\0\122\0\61\3\102\0\191\0\188\0\225\0\34\0\79\0\244\0\11\0\64\0\37\0\222\0\165\0\188\4\197\0\33\0\196\0\66\0\60\0\1\0\40\4\24\0\198\0\253\0\174\0\24\0\194\0\119\0\49\4\233\0\92\0\183\0\101\0\107\0\74\0\194\0\63\0\89\4\52\0\236\0\83\0\165\4\27\0\43\3\45\5\142\0\191\0\88\0\98\0\194\0\43\0\72\3\89\0\190\0\91\0\29\0\77\0\60\0\34\0\63\3\45\5\47\0\222\0\107\0\119\0\47\4\89\4\251\0\192\0\136\0\165\4\65\0\80\3\249\0\93\0\74\0\96\0\246\0\117\0\136\3\241\3\124\0\183\0\217\0\38\0\42\3\211\0\254\0\226\0\92\0\243\0\219\0\8\0\93\0\194\0\1\0\248\4\101\0\151\0\15\0\109\0\64\0\62\0\50\0\166\0\212\0\116\0\207\0\198\0\249\0\9\0\194\0\37\0\13\4\160\0\92\0\10\0\233\0\9\0\7\0\193\4\204\4\206\4\159\0\253\0\238\0\39\0\60\0\42\0\213\4\178\3\240\0\173\0\80\0\70\0\194\0\78\0\222\4\207\3\205\0\41\0\22\0\118\0\60\0\49\0\250\0\38\0\189\0\70\0\160\0\60\0\56\0\93\0\147\4\102\0\255\0\92\3\78\0\140\0\92\0\34\0\64\0\15\0\113\0\10\5\96\0\157\0\171\0\227\0\228\4\120\0\248\4\208\0\246\0\48\0\57\0\114\3\152\0\189\0\32\0\89\0\40\0\17\0\169\0\168\5\55\0\14\0\111\0\43\0\117\0\148\0\214\0\212\0\8\0\60\0\69\0\170\5\71\0\30\0\1\0\86\0\159\0\91\0\64\0\33\0\116\0\241\0\149\3\50\0\136\0\209\0\95\0\194\0\97\0\129\5\94\0\213\0\68\0\11\0\158\5\127\0\152\0\190\0\160\0\88\0\70\0\43\0\115\0\68\0\80\4\186\0\166\0\168\3\77\0\141\0\40\0\72\0\60\0\65\0\9\5\130\3\120\0\124\0\160\0\146\4\89\0\138\3\186\0\225\0\216\0\51\0\190\0\116\5\37\0\94\0\165\0\255\0\86\0\56\0\179\0\24\0\56\0\60\0\93\0\83\0\255\0\104\5\100\0\113\0\34\1\194\0\55\0\222\0\228\0\126\0\84\0\17\0\194\0\79\4\126\0\211\0\214\4\92\0\77\0\11\0\206\0\44\0\194\0\70\0\250\0\142\5\71\0\216\0\168\0\163\0\142\5\10\0\222\4\163\5\57\0\221\0\164\0\30\0\60\0\102\0\170\5\92\3\165\0\85\0\89\0\39\0\64\0\46\0\39\0\174\0\49\0\91\0\159\0\188\0\156\0\90\0\60\0\36\0\248\4\191\0\178\1\36\0\64\0\53\0\170\5\70\0\30\0\198\0\164\0\33\0\54\0\64\0\68\0\142\0\203\5\117\0\26\0\174\0\130\0\73\0\60\0\101\0\212\5\30\0\252\0\55\0\46\0\64\0\64\0\70\0\65\6\225\0\227\2\112\0\52\0\64\0\71\0\73\6\178\0\94\0\222\0\185\0\214\0\9\0\60\0\125\0\248\4\232\0\69\0\52\0\105\0\64\0\28\0\89\6\30\0\76\0\3\0\50\0\94\0\64\0\72\0\189\0\165\0\255\3\51\0\249\0\69\0\33\0\60\0\46\0\83\0\252\0\234\0\92\0\162\0\220\0\158\0\64\0\194\0\91\0\43\3\157\6\168\0\46\0\191\0\69\0\127\5\89\4\116\0\223\0\240\0\81\0\60\0\10\0\63\3\157\6\242\0\19\0\40\0\119\4\21\0\89\4\88\0\241\0\114\0\121\0\238\4\19\0\60\0\157\6\36\0\135\0\179\0\66\0\194\0\15\0\67\5\51\0\93\0\200\0\87\0\60\0\22\0\103\0\238\0\251\0\93\0\18\0\223\0\137\0\29\0\60\0\35\0\241\3\30\0\143\0\15\0\29\0\64\0\94\0\95\0\36\0\114\4\165\0\221\0\150\0\35\0\5\3\241\3\128\0\179\0\198\0\218\5\82\0\83\0\62\0\104\5\9\0\244\0\37\0\29\0\203\3\178\0\36\0\101\3\46\0\31\0\109\0\3\0\194\0\30\0\129\5\92\0\187\0\188\0\252\0\116\0\153\6\248\4\16\0\197\0\218\0\92\0\64\0\11\0\19\0\63\0\157\6\234\0\61\0\132\0\46\6\86\0\147\0\124\0\104\5\11\0\58\0\172\0\170\6\120\0\122\0\100\0\188\0\71\0\254\0\74\0\131\0\109\0\60\0\126\0\95\0\164\0\114\4\61\0\13\0\106\0\94\0\194\0\126\0\208\6\241\0\216\0\106\0\22\0\213\0\99\0\60\0\44\0\248\4\157\0\147\0\219\0\42\0\64\0\51\0\178\0\229\0\215\0\116\0\127\0\93\0\128\0\73\4\107\0\31\0\100\0\163\0\43\0\29\0\18\0\227\0\253\6\37\0\241\3\227\0\157\0\102\0\173\2\115\0\211\0\62\0\229\0\92\0\9\0\175\0\101\0\96\0\194\0\69\0\223\0\102\0\171\0\43\0\164\0\93\0\19\0\127\0\184\3\138\0\175\0\119\0\97\0\170\3\13\0\37\0\60\0\119\0\241\3\129\0\150\0\211\0\82\0\64\0\110\0\83\0\191\0\51\4\193\0\214\0\182\0\62\0\194\0\25\0\83\0\253\0\45\5\7\0\165\0\94\0\34\0\194\0\51\0\138\0\111\0\110\7\62\0\163\0\4\0\21\0\60\0\106\0\30\0\167\0\253\0\83\0\247\0\133\0\181\0\21\6\109\0\58\0\36\0\32\7\17\0\9\0\151\0\40\0\7\5\122\0\36\0\163\5\139\0\215\0\108\0\104\6\112\4\18\5\225\0\166\0\184\0\205\0\40\0\64\0\30\0\83\0\188\0\235\0\92\0\41\0\68\0\149\0\170\6\21\4\124\0\186\7\45\0\112\0\5\0\123\0\42\5\89\4\171\0\248\0\222\0\126\0\60\0\39\0\192\6\186\7\223\0\6\0\165\0\101\0\194\0\50\0\67\5\6\0\198\0\166\0\166\7\94\0\208\6\252\0\93\0\22\0\41\0\195\0\46\0\34\5\241\3\39\0\206\0\120\0\78\0\64\0\23\0\138\0\238\0\240\0\99\0\112\0\94\0\109\0\12\0\60\0\45\0\248\4\25\0\167\0\243\0\48\0\64\0\78\0\22\4\51\4\33\0\117\0\248\2\184\3\0\7\19\0\27\0\9\0\64\0\210\5\73\6\116\0\94\0\130\0\87\0\219\0\91\0\60\0\48\0\138\3\187\0\225\0\142\0\161\0\27\0\23\0\112\6\236\7\238\7\26\0\221\0\136\3\38\7\39\0\110\0\10\8\239\0\231\0\123\0\33\5\23\0\90\3\184\0\225\0\162\0\68\0\234\0\218\5\16\0\26\8\99\0\146\0\253\0\183\0\37\4\65\0\39\0\46\0\10\8\87\0\176\0\159\0\127\0\60\0\96\0\115\6\134\0\12\0\82\0\4\0\64\0\45\0\48\8\61\0\116\0\172\0\87\3\42\0\208\6\117\0\94\0\99\0\113\0\208\5\60\0\12\0\241\3\126\0\144\0\142\0\112\0\96\6\30\0\38\0\123\0\81\0\100\0\239\0\3\0\5\0\60\0\19\0\58\0\101\0\32\7\153\0\200\0\208\0\27\0\60\0\33\0\142\0\173\0\204\5\211\0\214\0\132\0\97\0\95\5\127\0\66\0\30\0\180\0\12\0\191\0\59\0\64\0\123\0\95\0\228\0\165\0\43\0\111\0\220\0\29\0\57\0\5\3\81\0\247\0\245\0\24\0\41\0\210\0\192\0\46\7\0\0\43\3\236\0\92\0\17\0\59\0\250\0\198\6\74\0\67\5\74\0\247\0\90\0\96\0\60\0\62\0\63\3\146\8\83\0\115\0\151\0\46\6\103\0\67\5\24\0\27\0\151\0\111\0\60\0\17\0\192\6\146\8\93\0\190\0\43\0\2\0\254\6\67\5\240\0\8\0\191\0\54\0\83\8\208\6\253\0\93\0\55\0\32\0\6\0\24\0\56\7\241\3\176\0\180\0\218\0\181\7\3\0\159\0\102\0\168\0\43\0\227\0\88\0\116\0\85\0\126\3\99\7\101\7\88\0\97\0\53\0\118\0\140\7\56\0\224\0\102\0\203\0\57\0\38\0\166\0\193\3\23\0\184\7\237\0\92\0\140\0\14\0\10\0\43\0\194\0\3\0\63\3\227\8\67\0\52\0\193\0\36\0\194\0\90\0\67\5\104\0\81\0\9\0\215\6\71\0\192\6\227\8\154\0\81\0\113\0\69\3\96\0\89\4\227\0\111\0\63\0\205\6\32\0\49\4\238\0\158\6\239\0\218\0\64\5\127\0\67\5\255\0\143\0\67\0\215\6\57\0\103\0\174\0\254\0\93\0\25\0\156\0\59\0\72\5\58\0\241\3\191\0\210\0\103\0\126\0\219\5\50\0\39\0\218\0\116\0\160\0\184\0\12\0\245\6\95\0\242\0\229\0\210\0\116\0\170\0\227\0\28\0\198\6\102\0\127\8\129\8\202\0\147\0\206\0\0\4\14\0\83\0\124\0\7\9\49\0\149\0\9\0\126\5\53\0\192\6\7\9\42\0\147\0\143\0\82\0\194\0\56\0\89\4\134\0\177\0\215\0\114\7\159\8\252\0\239\0\92\0\145\0\132\0\142\0\51\0\65\5\67\5\55\0\103\0\186\0\43\0\60\0\43\0\19\9\255\0\93\0\177\0\99\0\237\0\60\3\92\0\248\4\140\0\199\0\139\0\25\0\64\0\82\0\95\0\38\0\101\7\59\0\141\0\13\0\50\5\40\0\202\0\47\0\241\0\97\0\28\0\22\0\5\0\185\8\33\0\177\0\242\0\130\3\223\0\108\0\38\0\77\3\21\0\170\5\191\0\225\0\184\0\28\0\2\0\62\7\24\0\59\9\82\9\96\0\3\0\236\0\14\0\194\0\111\0\192\6\82\9\155\0\119\0\94\6\194\0\27\0\89\4\77\0\92\0\132\0\124\0\60\0\84\0\49\4\240\0\92\0\186\0\142\0\88\0\22\0\194\0\117\0\89\4\208\0\209\0\117\0\85\0\60\0\68\0\19\9\224\0\93\0\8\0\113\0\191\0\223\4\135\9\91\3\225\0\129\0\146\0\35\0\81\0\64\0\103\0\225\6\251\3\233\0\12\0\200\4\194\0\217\6\190\9\178\0\136\0\198\0\58\0\64\0\25\0\147\0\191\0\227\8\22\0\147\0\101\0\125\3\55\0\159\0\100\0\5\4\175\0\187\0\132\0\83\0\51\3\0\7\151\0\54\0\109\0\25\0\60\0\112\0\30\7\168\3\226\0\176\0\211\0\32\0\94\9\118\3\76\7\131\0\5\0\176\0\87\0\194\0\116\0\202\0\111\0\242\0\97\0\171\0\18\0\19\0\41\0\60\0\32\0\59\9\167\9\193\0\165\0\119\0\154\3\248\8\60\0\167\9\133\0\159\0\241\0\100\0\194\0\112\0\67\5\20\0\64\0\105\0\223\4\99\0\208\6\225\0\93\0\100\0\129\0\64\0\135\3\10\0\241\3\19\0\81\0\173\0\65\0\64\0\237\2\47\0\252\9\21\0\252\0\2\0\148\7\54\0\248\4\197\0\179\0\241\0\85\0\64\0\76\6\100\0\129\8\111\0\129\0\13\0\54\0\233\8\0\7\31\0\185\0\70\0\1\0\60\0\98\0\220\7\121\0\83\0\26\0\110\0\3\0\52\0\60\0\18\0\30\7\32\7\113\0\251\0\198\0\102\0\6\7\127\0\79\0\30\0\49\0\94\0\101\0\181\7\114\0\148\0\163\0\185\0\67\0\160\0\65\0\66\0\69\0\60\0\29\0\208\0\227\0\18\0\86\0\250\0\240\0\247\0\16\0\24\0\249\0\205\0\178\0\69\0\159\2\0\0\208\0\210\0\195\0\209\0\210\0\217\0\193\0\0\0\24\0\146\0\47\0\65\0\122\0\117\2\183\0\211\0\210\0\213\0\194\0\208\0\124\10\46\0\213\0\134\0\80\0\93\2\196\0\194\0\213\0\0\0\143\0\21\0\201\0\199\0\124\0\198\0\53\0\245\0\56\0\122\0\236\0\18\0\150\0\24\0\30\0\81\0\209\0\33\0\11\0\49\1\183\0\195\0\197\0\207\5\133\10\207\5\220\0\124\10\198\0\234\0\122\0\76\0\153\2\209\0\222\0\217\0\211\0\124\10\74\0\114\0\230\0\52\0\130\10\251\0\181\10\210\0\151\0\124\10\42\0\86\0\244\0\36\0\117\2\208\0\218\0\214\0\195\0\212\0\223\0\124\10\133\0\206\0\187\0\95\0\130\10\141\0\146\0\211\0\156\0\141\0\124\10\127\0\216\0\219\0\48\0\110\2\199\0\197\0\181\10\152\1\24\0\160\0\250\0\224\0\96\0\55\0\49\1\255\0\172\10\196\0\151\0\228\0\194\0\212\0\212\0\210\0\196\0\209\0\194\0\219\0\219\0\206\0\151\0\251\0\216\0\214\0\132\10\211\0\150\0\189\0\228\0\212\0\224\10\199\0\195\0\151\0\2\11\210\0\202\10\210\0\211\0\151\0\213\0\248\10\246\0\224\10\219\0\222\0\196\0\243\0\210\0\193\0\150\0\124\10\223\0\205\0\74\0\65\0\222\10\214\0\222\0\197\0\196\0\124\10\39\0\148\0\114\0\17\0\153\2\208\0\214\0\218\0\210\0\124\10\55\0\215\0\206\0\32\0\10\0\49\1\224\0\216\0\197\0\220\0\196\0\199\0\170\10\124\10\161\0\183\0\3\0\48\0\93\2\250\0\214\0\199\0\124\10\110\0\113\0\96\0\87\0\15\0\176\2\118\10\20\11\196\0\241\10\182\10\214\0\217\0\195\0\33\11\24\0\31\0\221\0\78\0\14\0\153\2\249\0\41\11\43\11\24\0\190\0\104\0\124\0\34\0\153\2\245\0\194\0\196\0\205\10\24\0\234\0\201\3\29\0\153\2\227\0\197\0\210\0\91\11\163\0\86\0\234\0\27\0\153\2\229\0\216\0\212\0\173\10\24\0\209\0\206\0\235\0\61\0\93\2\250\10\136\10\24\0\50\0\40\0\97\0\58\0\115\10\75\11\168\10\216\0\206\0\124\10\91\0\97\0\21\0\24\3\49\1\232\0\240\0\124\10\0\0\206\0\182\0\42\0\16\0\49\1\20\11\219\0\118\10\210\0\98\11\222\0\219\0\211\0\181\10\208\0\33\11\236\0\59\0\134\0\86\0\117\0\1\0\24\0\129\0\207\0\131\0\64\0\153\2\192\0\30\11\226\10\42\0\85\0\29\0\22\0\49\11\12\1\192\0\52\11\54\11\56\11\241\10\124\10\20\0\100\0\200\0\57\0\165\10\12\1\157\11\159\11\228\0\195\0\194\0\209\0\209\0\124\10\99\0\251\0\94\0\113\0\186\2\12\1\244\0\154\11\214\0\197\0\246\0\246\10\244\0\223\0\158\11\211\0\108\11\217\0\146\10\81\0\68\0\158\0\91\6\153\10\155\10\58\0\160\0\150\0\143\0\160\0\231\0\110\0\114\0\152\10\154\10\122\0\92\0\254\10\143\0\64\0\86\0\0\0\43\0\152\10\149\0\35\0\156\0\38\0\244\0\151\0\143\0\29\0\71\0\89\0\9\0\238\11\155\10\228\8\232\11\242\0\148\0\252\0\12\0\4\12\122\0\20\0\178\0\232\11\106\0\179\0\141\0\60\0\12\12\57\3\232\11\126\0\161\0\129\0\16\0\152\10\53\0\187\0\121\0\243\0\198\0\254\11\228\0\123\0\38\0\113\0\12\12\237\0\164\0\232\11\225\0\236\0\78\0\98\0\12\12\204\0\189\0\232\11\246\0\170\0\49\0\115\0\4\12\250\0\26\0\210\0\232\11\254\0\126\0\177\0\105\0\248\11\125\0\131\0\84\0\249\0\254\11\123\0\65\0\11\0\33\0\152\10\21\0\51\0\142\0\183\0\248\0\254\11\155\0\17\0\141\0\54\0\12\12\31\0\172\0\232\11\233\0\55\4\86\0\12\12\148\0\15\12\143\0\7\0\119\0\226\0\82\0\55\12\240\0\208\0\23\12\190\0\101\0\32\0\152\10\85\0\82\0\77\12\79\12\143\0\104\0\177\0\14\0\73\12\153\10\82\0\12\0\141\0\163\0\254\11\243\0\217\0\144\0\34\0\12\12\196\0\136\0\232\11\73\0\230\0\38\0\237\11\228\11\156\10\118\7\143\0\208\0\67\0\195\0\84\12\153\10\12\0\2\0\120\12\254\11\238\0\56\0\184\0\91\12\135\12\172\0\104\0\232\11\18\0\129\0\22\0\26\0\12\12\120\0\179\0\232\11\38\0\79\0\6\0\80\0\12\12\105\0\242\11\182\0\239\0\233\0\39\0\152\10\181\0\103\0\76\0\164\0\68\12\143\0\84\0\162\0\37\0\1\0\238\11\192\0\209\0\121\0\5\11\143\0\255\0\20\0\39\0\37\5\135\12\128\0\162\0\232\11\199\0\165\0\81\0\11\0\12\12\78\0\166\0\232\11\55\0\206\0\43\0\93\0\12\12\171\0\175\0\232\11\46\0\7\0\208\0\37\0\152\10\213\0\80\0\100\0\91\0\245\0\254\11\218\0\66\0\113\0\7\0\238\11\136\0\46\0\3\0\243\0\254\11\156\0\129\0\77\0\97\0\47\12\105\0\232\11\156\0\149\0\93\0\142\12\239\11\6\0\58\12\143\0\53\0\14\0\30\0\123\0\238\11\128\0\65\0\157\0\246\0\254\11\198\0\90\0\149\0\51\0\238\11\114\0\220\0\241\0\222\0\254\11\52\0\138\0\29\0\65\0\12\12\185\0\250\12\222\0\240\0\108\0\62\0\12\12\85\0\231\11\143\0\96\0\164\0\224\0\53\0\152\10\117\0\168\10\13\13\254\11\194\0\134\0\241\0\55\0\35\13\145\0\93\0\105\0\202\0\254\11\53\0\255\0\117\0\4\0\55\12\67\0\102\12\143\0\204\0\35\0\65\0\100\0\28\12\105\0\100\0\47\13\151\0\35\0\22\0\130\0\31\0\63\0\3\0\149\0\207\0\102\0\43\0\145\0\199\0\189\0\74\0\47\0\51\0\29\0\129\10\100\0\59\0\29\3\96\0\74\0\118\3\120\3\130\0\15\0\81\0\10\0\194\0\84\0\92\10\57\0\66\0\142\0\245\0\242\0\215\6\35\0\92\10\94\10\68\0\32\0\5\0\3\0\60\0\26\0\63\0\195\0\135\0\4\0\190\0\107\10\109\10\122\0\152\0\104\0\96\11\143\11\242\0\249\0\225\0\156\1\102\0\22\0\3\0\61\0\72\13\207\0\8\0\116\0\144\0\163\0\13\0\159\5\82\13\75\0\90\0\17\0\73\5\30\3\51\0\151\0\190\0\62\0\84\0\69\0\51\0\237\0\114\7\2\0\203\0\51\0\185\0\116\0\181\0\40\0\52\0\148\7\20\0\98\13\16\9\26\0\133\0\65\4\105\0\106\13\67\0\190\0\218\0\26\0\62\6\13\0\173\0\45\0\65\0\23\0\191\0\119\13\100\0\67\0\126\0\112\0\133\13\73\13\12\1\7\2\34\0\49\1\105\0\102\0\32\0\61\0\14\1\102\0\127\2\74\2\105\0\120\2\32\0\116\0\104\0\164\2\32\0\196\13\240\9\206\13\208\13\24\1\34\0\48\1\187\1\12\1\81\1\52\1\0\0\5\0\183\11\65\1\49\1\134\0\112\6\1\0\64\1\49\1\110\1\0\0\156\0\128\0\180\1\24\0\128\0\71\1\22\0\135\1\140\0\235\13\129\0\158\0\219\13\62\2\51\2\93\2\7\1\149\2\151\2\103\2\154\2\156\2\102\2\175\2\50\1\1\14\0\0\240\0\65\0\50\1\224\13\220\13\218\13\10\14\9\14\12\14\231\13\14\14\219\13\15\14\170\2\12\1\38\0\49\1\2\10\86\7\17\1\29\1\32\0\23\14\32\0\71\2\70\2\32\0\40\0\15\1\17\1\207\13\209\13\42\0\26\14\97\0\108\0\30\14\12\1\123\0\67\0\110\0\74\0\22\0\56\0\235\0\6\0\26\0\49\1\199\13\32\0\46\0\46\0\32\0\47\0\32\0\25\14\98\0\19\1\97\0\107\0\32\0\44\0\32\0\216\13\82\2\217\13\104\0\33\0\6\0\91\0\103\0\143\0\178\0\50\0\194\13\12\1\91\0\213\13\209\13\19\1\107\2\123\2\54\14\56\14\69\14\29\14\105\12\58\0\240\9\14\1\123\0\217\13\245\0\4\0\119\0\77\0\58\0\110\0\127\0\134\2\12\1\46\0\21\14\14\1\110\0\111\0\116\0\32\0\97\0\110\0\39\1\47\1\81\14\62\0\32\0\37\14\108\0\111\0\145\2\32\0\62\0\200\13\16\1\32\0\61\14\101\0\63\14\32\0\127\2\116\0\44\1\217\13\13\14\221\13\12\0\24\0\49\1\164\0\49\1\123\10\219\13\220\13\65\0\6\14\0\0\129\0\129\0\12\1\32\0\129\0\3\0\51\2\92\1\1\0\30\10\12\1\145\0\194\0\150\14\28\0\130\0\190\1\157\14\136\1\51\2\244\10\150\14\92\0\165\14\1\0\87\0\30\10\4\0\22\0\51\2\128\0\36\6\150\14\26\0\134\1\107\1\135\1\91\1\12\1\204\0\0\0\130\0\1\0\31\0\193\0\251\0\185\3\246\13\63\2\93\2\3\14\12\1\3\14\63\0\174\2\169\2\177\2\200\14\71\1\49\1\106\14\12\1\45\0\28\14\114\14\26\14\127\14\35\14\24\1\94\0\32\0\121\14\123\14\95\14\164\2\39\1\35\1\37\1\101\0\39\1\25\14\32\1\32\0\59\0\136\14\17\14\0\0\92\1\3\0\115\10\142\0\0\0\64\1\144\0\51\2\0\0\89\0\235\13\185\14\121\1\130\0\67\1\141\1\51\2\245\13\5\1\247\13\10\14\207\14\50\1\115\10\137\14\11\14\17\14\5\15\9\14\106\1\0\0\31\0\49\1\95\0\71\0\119\14\38\14\40\14\105\12\95\14\216\13\19\1\21\1\23\1\198\13\232\14\198\13\14\1\12\1\102\0\51\0\109\0\79\0\196\0\232\0\68\0\117\0\28\0\49\1\224\14\46\1\16\15\217\14\27\15\57\14\112\14\214\14\233\14\216\13\12\1\67\0\251\0\7\0\28\0\91\0\54\0\249\0\73\0\50\1\140\14\16\14\61\15\6\15\62\15\8\15\7\15\66\15\64\15\67\15\63\15\70\15\65\15\62\15\115\10\51\14\12\1\221\14\39\14\45\15\35\0\59\14\30\1\27\14\22\15\27\1\217\13\0\0\209\0\39\0\98\0\59\0\61\0\159\0\104\0\35\0\49\1\133\14\135\14\127\14\43\1\45\1\97\15\45\1\102\0\39\14\30\14\89\14\18\15\217\13\253\0\115\0\209\0\13\0\163\0\100\0\148\0\123\0\36\0\209\14\32\0\41\0\16\15\121\15\37\14\43\15\84\15\24\15\55\14\32\0\92\14\90\14\211\13\12\1\75\0\234\0\201\0\143\1\144\0\115\0\74\0\62\2\12\1\80\15\41\1\128\15\81\14\226\14\38\1\31\1\33\1\14\1\80\2\117\0\105\12\37\0\217\13\8\0\146\0\174\0\6\0\63\0\28\0\143\0\79\0\11\1\12\1\25\14\40\15\152\15\105\12\41\1\155\15\25\14\100\15\81\15\132\14\33\8\135\14\47\1\104\15\108\15\12\1\118\0\136\0\3\0\27\0\230\0\223\0\176\4\20\0\49\1\84\14\130\14\111\14\80\15\30\1\43\15\66\14\12\1\177\0\96\0\133\0\78\0\88\0\51\0\175\0\98\0\51\0\52\14\128\14\62\14\64\14\174\15\147\15\228\14\210\13\24\1\231\14\41\1\102\15\210\15\130\14\64\14\219\14\118\14\77\15\45\1\12\1\7\0\176\0\104\0\20\0\134\0\166\0\165\0\77\0\27\0\195\13\24\1\180\15\30\14\129\14\131\14\2\10\128\15\43\15\160\14\104\0\84\0\111\0\209\0\231\0\149\0\147\2\49\1\20\14\12\1\92\14\192\15\86\14\125\14\28\14\108\15\231\14\214\15\39\1\201\13\121\2\134\14\205\13\68\15\14\14\2\0\153\2\140\14\60\1\240\13\121\1\215\1\235\13\141\15\1\0\0\15\10\15\200\14\18\14\50\1\5\14\50\1\153\2\72\15\71\15\49\1\141\15\0\0\119\0\104\0\44\1\105\12\25\14\27\14\47\1\40\15\109\14\111\14\246\15\0\0\186\0\220\0\135\0\14\0\104\0\164\0\217\0\124\0\50\1\29\0\209\15\126\15\24\1\43\15\216\13\113\14\39\1\2\10\50\16\5\15\52\1\168\2\153\2\25\16\0\15\9\14\4\0\153\2\95\0\69\0\78\0\245\11\2\14\69\15\9\14\169\2\12\1\61\16\12\1\32\14\127\14\90\14\42\1\135\14\80\15\231\14\212\14\27\14\80\15\15\16\5\1\163\1\7\0\21\0\49\1\25\0\179\14\108\1\110\1\1\0\148\14\204\0\63\1\232\13\236\14\25\0\64\1\128\0\178\14\121\1\10\0\220\13\67\1\2\0\193\0\244\14\213\1\12\1\208\14\110\16\180\1\28\0\129\0\199\1\12\1\2\0\242\13\130\16\51\2\139\16\110\16\214\5\236\14\0\15\168\2\3\14\89\8\29\16\3\14\177\2\50\1\105\16\101\16\35\16\155\16\85\16\157\16\154\16\158\16\76\2\49\1\118\15\104\2\214\13\82\14\24\1\95\14\212\14\40\16\42\16\94\16\45\1\127\14\2\10\95\14\25\14\12\1\226\0\88\0\251\0\114\0\151\0\87\0\26\0\16\0\23\0\209\15\69\14\212\14\32\14\66\14\93\16\216\13\128\15\12\1\119\0\244\10\9\0\208\0\224\0\236\0\58\0\49\0\21\14\44\15\80\15\43\15\226\15\67\14\32\0\14\15\32\0\30\1\131\15\197\13\53\14\95\14\9\16\93\14\217\13\203\0\11\0\126\0\67\0\151\0\235\0\111\0\67\0\86\15\212\14\14\1\5\16\69\14\211\13\56\14\67\16\41\15\92\14\216\13\169\15\217\13\51\0\188\0\139\0\120\0\20\0\165\0\54\0\95\0\9\14\89\16\246\11\220\14\122\14\78\15\53\14\66\14\66\14\92\14\95\14\80\15\118\14\216\13\155\15\12\1\44\0\149\2\211\15\32\0\219\14\93\16\244\15\40\1\18\17\95\14\127\14\14\1\63\16\166\16\18\17\101\16\128\16\22\0\110\0\49\1\68\0\49\1\244\14\76\1\231\13\220\13\92\0\156\14\24\8\64\1\130\1\110\1\132\0\49\1\230\13\5\1\151\14\0\0\162\3\180\1\254\14\185\14\110\1\87\0\192\0\40\17\179\14\186\1\81\1\193\0\208\14\156\0\60\1\1\0\43\17\184\11\231\13\47\17\234\13\180\1\231\13\148\0\49\1\202\0\67\17\81\1\80\1\164\1\220\13\77\1\12\1\176\1\129\16\106\1\129\0\106\1\193\0\141\1\0\0\164\14\236\14\68\0\137\1\124\1\2\0\130\0\4\0\90\0\184\14\21\16\128\0\125\1\191\14\137\0\65\0\130\0\3\0\204\0\229\13\3\0\65\0\110\5\121\1\157\14\87\17\12\1\96\0\130\0\221\1\68\0\155\1\128\0\155\1\238\1\188\1\12\0\68\8\48\2\131\0\236\14\168\1\51\2\195\1\0\2\154\0\148\1\248\14\128\0\195\1\191\14\135\17\119\1\179\14\197\0\3\0\81\1\1\0\68\0\81\1\220\0\148\1\1\0\196\0\155\14\0\0\198\0\67\0\15\2\218\0\136\17\100\17\156\17\131\0\1\0\218\0\155\1\130\1\4\0\128\0\137\0\193\0\131\0\107\17\109\17\250\13\158\14\103\16\235\1\184\11\168\17\7\0\78\1\12\1\172\1\12\1\156\0\43\17\2\0\85\0\132\0\132\0\8\0\138\1\180\1\192\0\163\1\96\1\136\1\28\0\4\0\85\17\208\14\9\0\5\1\128\0\8\0\230\13\8\0\167\17\248\13\36\2\68\0\166\1\138\1\36\2\193\0\166\1\182\17\0\0\161\9\236\14\21\0\212\17\8\0\137\0\64\17\173\17\238\1\212\17\204\17\163\1\206\17\168\17\81\1\57\1\2\0\174\11\136\1\92\0\200\17\236\17\110\1\203\17\81\1\9\0\118\16\9\1\137\1\6\0\227\5\240\0\127\0\92\17\180\1\136\1\167\2\93\0\157\14\94\0\106\1\0\15\115\10\150\16\178\2\10\15\117\0\30\16\50\1\64\0\82\17\12\1\99\0\76\2\110\2\101\0\114\0\114\0\157\2\4\0\120\0\49\1\83\0\121\0\110\0\97\0\112\0\30\14\184\2\24\1\212\14\70\0\97\0\42\16\39\1\116\0\33\1\118\0\19\18\196\13\121\0\128\14\89\2\73\2\111\0\100\0\101\0\56\14\80\0\72\2\97\0\30\14\109\0\63\14\105\12\95\2\19\1\32\0\121\0\111\0\22\1\32\0\1\1\97\0\210\13\109\0\112\0\72\2\137\2\33\8\123\2\204\13\24\1\95\2\112\0\112\0\16\1\116\0\115\0\42\1\120\2\45\0\110\0\117\0\146\2\206\13\19\18\109\0\82\2\123\2\215\15\79\2\81\2\83\2\115\0\106\14\149\16\169\2\8\0\67\1\12\1\29\17\159\16\106\18\36\16\107\18\156\16\109\18\160\16\110\18\108\18\114\18\113\18\116\18\112\18\118\18\111\18\120\18\115\18\119\18\122\18\121\18\117\18\125\18\123\18\126\18\124\18\130\18\129\18\113\18\209\11\0\0\39\0\52\14\14\1\151\15\114\0\153\15\254\16\123\14\5\16\155\15\216\13\233\14\237\16\233\14\40\15\32\14\12\1\181\0\95\0\191\0\149\4\109\0\67\0\99\0\40\0\49\1\212\14\48\16\26\15\118\14\212\14\124\15\140\18\91\14\215\14\17\1\163\18\30\1\231\16\220\16\12\1\101\0\48\0\215\0\17\0\191\0\93\0\204\0\16\0\79\14\0\0\107\15\70\2\211\13\194\16\56\14\5\16\93\16\211\13\5\17\16\15\12\1\31\0\38\0\175\0\51\0\115\0\100\0\202\0\11\0\0\16\0\0\27\14\192\18\18\15\194\18\54\14\6\16\188\18\197\13\56\14\60\0\14\1\170\16\72\2\217\13\101\0\135\0\152\0\89\0\85\0\209\0\61\0\7\0\58\0\96\15\177\15\45\1\240\16\165\16\27\14\219\18\105\12\220\15\80\15\121\15\81\14\53\14\11\16\203\13\205\13\209\16\195\16\0\0\239\0\254\0\251\0\29\0\202\0\156\0\252\0\40\0\185\18\3\17\46\15\39\1\80\15\47\1\80\15\211\18\43\15\216\18\172\16\217\13\167\0\21\0\85\0\107\0\11\0\224\7\131\11\49\1\95\14\217\18\216\15\24\17\3\16\111\14\92\14\118\14\40\15\219\16\244\18\13\16\24\1\212\16\80\15\26\19\217\13\166\0\67\0\254\9\36\0\226\0\249\0\109\0\53\0\195\13\197\13\219\16\163\18\118\14\174\15\220\15\244\15\56\14\53\14\46\16\108\15\53\14\219\16\12\1\164\10\118\0\74\0\159\0\184\0\129\0\116\0\45\0\49\1\216\13\14\1\219\16\23\17\41\1\242\15\64\14\240\15\105\12\81\14\43\15\58\14\2\10\12\1\218\0\127\0\6\0\65\0\15\0\108\0\30\0\31\0\165\15\163\3\14\1\220\15\58\14\211\13\80\15\27\14\128\15\69\14\37\14\155\15\56\14\163\18\95\14\58\14\12\1\250\9\62\17\157\0\177\0\150\0\76\0\180\2\204\2\32\0\81\14\80\15\53\14\5\16\12\1\155\0\80\0\117\0\65\0\223\0\14\0\177\0\12\0\134\18\118\14\128\15\78\19\32\0\212\14\121\15\12\1\11\0\2\0\22\0\37\0\238\0\133\0\47\0\56\0\95\15\13\1\151\15\165\16\163\18\32\19\75\18\33\14\129\15\83\18\111\14\23\19\13\1\178\0\160\0\66\0\198\0\109\0\70\0\27\0\185\18\212\14\23\19\155\15\32\14\174\15\211\13\30\1\92\14\25\14\216\13\40\15\248\18\191\0\24\0\138\0\109\0\0\0\51\0\127\0\26\0\116\19\47\1\211\13\25\14\120\19\217\13\83\0\192\0\103\0\119\0\73\0\34\0\250\0\12\0\163\16\0\0\99\15\135\14\135\19\237\16\47\1\233\14\5\16\66\14\32\14\30\1\155\15\92\14\142\1\63\0\80\0\7\0\202\0\123\0\149\0\94\0\75\15\0\0\178\19\108\15\219\16\80\15\155\15\76\19\217\13\149\0\118\0\130\0\45\0\125\0\205\0\254\0\18\0\93\2\86\15\220\15\237\18\210\16\211\13\231\14\215\16\149\15\217\13\12\15\164\16\209\13\25\14\121\15\233\14\232\19\37\19\237\16\12\1\190\15\149\19\250\19\128\15\249\19\219\14\61\19\49\1\174\15\127\14\118\14\118\14\92\14\23\19\43\15\20\20\165\16\12\1\237\15\87\2\13\17\92\14\211\13\153\19\205\13\231\14\28\15\70\15\170\2\6\0\24\20\0\0\154\0\49\1\240\13\155\14\205\0\241\14\87\15\192\0\235\13\207\0\230\13\13\0\158\14\1\0\77\0\229\13\0\0\13\0\80\1\2\0\12\0\158\14\2\0\17\0\1\0\134\16\136\10\84\1\16\0\229\13\1\0\49\20\84\1\143\16\1\0\178\14\137\1\42\20\64\1\209\0\45\20\128\0\12\0\126\16\1\0\66\20\81\1\25\0\149\14\72\20\179\14\1\0\220\13\71\20\130\1\216\1\47\17\71\20\145\16\49\1\7\18\207\14\29\16\50\1\36\20\132\18\128\18\104\20\127\18\106\20\10\14\153\2\69\19\12\1\37\14\231\14\27\20\24\1\23\17\14\1\32\14\245\15\168\18\220\16\155\15\219\14\174\15\122\19\0\0\35\0\52\0\44\0\109\0\118\11\94\0\80\0\59\0\12\17\222\15\34\1\101\2\215\15\209\16\40\15\231\14\237\16\43\15\195\15\25\1\23\15\64\16\120\20\66\14\27\14\104\18\41\0\201\0\95\0\96\0\183\0\186\0\113\0\48\0\238\15\213\18\101\0\211\13\23\17\37\19\249\19\245\19\128\15\209\16\12\1\190\0\197\0\232\0\111\0\93\0\34\0\161\0\23\0\160\18\12\1\233\14\155\15\231\14\220\15\14\20\17\1\185\20\135\14\58\14\30\1\37\14\30\1\199\15\210\0\186\0\88\0\218\0\235\0\38\0\98\18\70\19\137\20\227\14\38\18\165\16\249\19\220\15\223\14\214\14\212\16\43\15\53\14\116\17\171\0\145\0\3\0\153\0\202\0\199\0\91\0\60\16\49\1\43\15\32\14\209\16\135\19\216\13\23\19\69\14\26\17\12\1\6\0\186\0\66\2\49\1\148\14\234\1\63\2\28\0\235\13\147\17\49\1\29\10\12\1\33\11\5\1\198\0\114\16\37\17\180\1\24\8\119\1\192\0\137\1\100\0\49\1\15\0\67\1\72\0\216\1\31\17\135\1\49\1\246\20\5\1\144\14\148\17\51\2\173\10\180\1\37\17\50\1\51\2\240\13\195\14\6\21\149\14\187\1\246\20\185\12\64\0\77\1\250\20\1\0\252\20\107\1\30\10\132\1\67\1\15\0\244\14\4\21\180\1\21\21\134\16\81\1\24\21\198\0\192\0\27\21\241\20\13\0\67\1\108\1\246\0\252\17\243\20\236\14\0\0\42\21\162\6\1\0\28\21\30\21\240\13\255\20\244\14\35\21\12\1\37\21\242\20\12\1\134\16\92\1\33\11\51\2\28\21\12\0\48\21\192\0\242\0\51\21\67\21\254\20\54\21\63\2\58\21\48\21\167\2\132\1\230\13\63\21\0\0\65\21\21\21\33\17\9\21\89\20\145\1\148\17\5\1\70\0\65\0\195\0\2\0\14\21\57\21\33\17\63\2\240\13\238\0\77\21\149\14\122\17\80\21\247\20\192\0\195\0\102\21\251\20\48\21\32\21\0\21\81\1\87\21\89\21\52\21\163\1\55\21\196\0\114\21\68\20\74\21\233\0\107\21\134\16\123\21\219\13\43\21\125\21\82\21\149\1\155\14\100\0\208\14\120\21\5\21\32\17\8\21\35\17\57\1\95\21\1\0\97\21\103\1\101\21\16\21\143\21\108\1\228\0\130\21\174\11\80\21\71\21\241\20\59\21\131\1\0\15\108\1\226\0\130\21\128\0\57\1\70\21\219\17\160\21\116\21\61\21\119\21\36\21\142\21\78\21\168\21\133\21\155\17\126\21\47\21\253\20\222\0\156\21\182\1\42\21\128\0\198\0\126\21\161\21\255\20\109\1\0\0\2\21\64\21\176\21\149\14\33\2\110\21\185\12\112\21\126\21\73\21\142\17\85\19\39\21\36\2\200\21\248\20\189\21\136\21\185\14\255\20\53\21\195\21\88\21\197\21\29\10\37\2\169\21\72\21\48\21\128\0\214\0\166\21\220\21\133\21\64\0\135\21\171\21\253\20\212\0\127\0\139\21\92\1\141\21\38\21\243\20\192\0\227\21\159\21\180\1\204\21\107\1\128\0\210\0\127\0\0\15\86\15\168\2\214\0\125\0\81\0\94\1\123\17\244\0\118\0\215\0\226\0\65\0\3\14\86\6\121\17\61\0\2\0\124\0\215\0\5\22\129\16\156\0\244\0\8\0\239\0\13\22\51\1\20\10\155\1\32\0\210\0\244\0\110\0\229\0\19\22\31\16\71\13\12\1\224\0\234\0\90\0\51\0\225\0\28\22\49\1\32\0\204\14\121\1\105\0\199\0\60\0\208\0\28\22\43\0\188\0\141\0\182\0\19\22\224\0\206\5\214\0\224\0\37\22\12\1\16\0\40\22\64\0\98\0\124\0\174\0\234\0\56\22\89\17\59\22\208\0\251\0\226\0\230\0\65\22\199\8\135\1\205\0\158\0\197\0\255\21\169\2\100\5\123\17\130\0\57\0\217\0\18\22\155\1\64\0\47\0\188\0\245\0\238\0\28\22\157\0\30\0\140\0\50\22\155\1\160\0\177\0\107\8\27\22\3\14\176\5\121\17\220\0\99\0\93\0\201\0\65\22\0\0\59\22\172\0\163\0\97\0\55\22\97\22\43\0\71\0\115\0\64\22\86\22\10\0\29\8\45\22\97\22\249\0\244\7\236\0\19\22\64\0\104\0\223\0\44\22\65\0\224\13\52\0\137\18\206\13\120\20\231\14\23\17\245\19\121\15\2\10\25\14\53\14\233\14\128\15\232\19\241\16\101\16\2\0\92\1\6\0\195\11\238\20\188\14\110\22\54\20\65\0\64\1\69\17\152\17\67\17\12\1\12\21\52\2\241\20\141\0\64\1\1\0\254\14\26\16\63\2\146\16\51\1\142\0\229\0\40\22\49\1\92\0\207\0\40\22\192\0\76\0\202\0\133\22\50\1\155\22\103\20\107\20\10\15\180\20\204\19\17\1\53\14\241\16\71\19\175\15\152\19\105\15\105\12\212\16\5\16\32\14\216\19\0\0\27\0\229\0\233\0\51\0\55\0\130\0\130\0\46\0\60\15\8\2\33\1\43\15\174\15\123\20\110\14\32\0\95\14\233\14\12\1\15\0\39\6\26\0\88\0\155\0\204\0\69\0\10\15\37\0\49\1\80\15\95\14\57\19\30\14\80\15\174\15\237\16\128\15\174\15\249\19\12\1\160\20\12\1\47\1\220\15\93\16\245\19\69\14\68\14\24\1\2\10\127\14\58\14\231\14\121\15\37\19\57\22\107\14\212\18\163\18\128\15\41\1\151\22\153\22\7\2\65\17\0\0\42\20\60\1\12\0\160\22\233\13\241\20\92\21\47\17\166\22\86\1\254\20\220\0\241\20\140\0\170\22\172\22\0\15\199\14\50\1\96\0\138\0\178\22\1\14\241\0\41\3\155\1\31\3\130\0\188\0\115\22\87\16\103\18\6\2\105\20\131\18\69\15\10\15\225\19\27\14\1\23\17\1\233\14\245\19\145\18\211\16\15\15\12\1\182\0\249\0\210\0\24\0\75\0\234\15\120\0\136\18\176\18\214\14\5\16\216\13\80\15\56\14\43\15\219\14\231\14\211\13\75\23\14\17\4\19\217\13\124\0\112\0\81\0\91\0\87\0\108\0\94\6\10\15\252\16\241\16\56\14\232\19\41\1\237\16\37\14\81\14\92\14\108\19\0\0\6\20\163\3\170\18\176\15\134\14\45\1\14\1\155\15\83\19\0\0\50\0\49\1\119\19\65\14\108\23\16\17\108\14\135\14\220\15\95\19\232\18\157\19\18\17\99\19\127\14\13\23\125\17\49\1\16\23\189\14\19\23\21\23\162\22\24\23\165\22\232\13\27\23\100\21\168\22\32\23\197\14\210\17\201\14\12\18\159\0\224\0\179\22\192\13\168\0\40\22\120\15\37\0\199\0\101\22\169\2\20\10\50\1\7\2\190\22\52\23\62\15\10\15\2\19\32\0\80\15\219\14\37\19\5\16\92\14\237\16\23\17\230\20\76\2\129\0\33\0\15\0\224\0\125\4\24\0\210\14\226\19\118\19\24\17\232\19\225\20\255\16\45\1\134\19\205\19\45\1\92\14\212\16\231\14\100\16\0\0\179\0\38\0\157\0\107\0\187\0\214\0\193\0\114\0\54\23\78\2\138\20\39\1\5\16\27\14\150\20\127\14\219\14\47\1\12\1\72\23\0\0\95\14\88\14\197\13\30\1\209\16\2\10\66\14\80\15\212\16\41\1\43\15\135\19\247\22\39\15\214\14\2\10\37\19\102\23\142\18\78\15\69\14\29\20\217\15\33\1\174\15\155\15\12\23\70\15\152\22\132\23\12\1\134\23\158\22\55\20\161\22\23\23\164\22\0\0\26\23\193\0\28\23\144\23\5\1\33\23\198\14\97\20\51\1\8\6\152\23\224\0\79\0\231\0\40\22\128\0\101\0\25\22\159\23\51\1\151\16\49\1\163\23\51\23\164\23\167\23\135\20\131\14\127\14\32\14\241\16\237\16\92\16\210\18\197\13\212\14\12\1\253\0\139\0\193\0\54\0\55\0\246\0\19\0\77\0\106\23\212\16\69\14\138\18\22\17\101\0\85\14\111\14\252\23\205\0\172\0\35\0\196\0\97\0\188\0\34\0\10\15\252\19\0\0\212\16\212\14\66\14\216\13\44\16\99\15\222\22\212\20\212\13\234\23\142\15\45\15\25\14\2\10\98\19\109\23\206\19\202\13\33\19\108\23\209\16\241\16\9\17\61\2\223\20\165\16\209\16\219\14\92\14\47\1\216\13\245\22\181\15\249\23\14\23\133\23\49\1\18\23\159\22\0\24\180\1\139\23\3\24\141\23\5\24\143\23\180\1\169\22\8\24\146\23\161\16\148\23\49\1\60\1\230\0\152\23\128\0\52\0\215\0\179\22\82\0\2\0\231\0\227\0\65\22\24\0\49\23\26\24\107\20\28\24\37\16\49\1\66\14\23\19\135\19\14\1\69\14\80\15\81\14\212\16\30\1\212\16\12\1\154\0\138\0\147\0\117\0\178\0\61\0\63\0\124\0\203\19\49\19\222\22\37\14\212\14\58\14\174\15\10\19\119\23\80\15\151\18\0\0\25\0\158\0\73\0\114\0\40\0\73\0\76\0\92\0\10\15\203\19\30\1\60\23\25\15\245\22\74\23\14\1\219\14\243\23\217\13\103\18\37\19\147\24\212\18\23\17\219\16\231\14\188\24\249\19\241\16\37\19\248\18\148\19\107\23\74\19\41\15\155\15\37\14\80\15\216\13\27\14\58\14\245\19\131\23\6\0\15\23\49\1\135\23\106\24\22\23\108\24\2\24\4\24\6\24\180\1\31\23\116\24\255\14\10\24\119\24\129\16\172\0\39\23\17\21\73\0\227\0\179\22\229\0\235\0\26\22\65\22\24\24\192\13\27\24\243\24\136\16\49\1\153\16\10\1\24\19\92\14\43\15\102\19\136\19\217\13\106\0\130\0\75\0\81\0\208\0\81\0\3\0\44\0\151\11\12\1\219\14\233\14\209\16\92\14\81\14\12\1\131\0\181\0\97\4\32\0\172\0\106\0\32\0\10\15\11\17\12\1\23\17\249\19\212\14\25\14\47\1\219\16\192\20\24\19\246\22\0\0\86\15\209\20\68\16\83\24\103\15\201\22\24\19\97\16\212\18\12\1\38\15\12\1\211\13\219\16\251\24\215\18\78\23\22\20\101\24\251\23\156\22\0\0\217\24\255\23\219\24\163\22\219\13\25\23\111\24\223\24\1\0\225\24\171\22\117\24\35\23\120\24\253\0\214\0\152\23\96\0\197\0\17\24\121\17\13\0\208\0\49\0\131\24\3\14\102\18\162\23\244\24\165\23\10\14\10\15\116\23\25\20\136\20\5\16\209\16\98\16\85\24\154\19\127\14\82\23\14\1\93\16\239\18\217\13\215\6\52\0\102\0\178\0\20\0\29\0\36\0\106\23\249\19\192\18\214\14\37\14\95\14\12\1\107\0\229\0\223\0\233\3\51\0\227\0\9\0\10\15\36\20\143\24\24\1\93\16\233\14\37\19\174\15\32\20\21\16\0\0\58\14\233\14\188\24\118\14\50\16\86\15\23\19\143\22\14\1\242\18\14\1\231\14\125\15\54\24\193\15\169\23\234\14\166\23\153\22\155\22\253\23\136\23\107\24\60\25\46\17\140\23\13\21\7\24\67\25\227\24\51\2\175\22\120\24\0\0\76\25\51\1\85\0\186\0\183\22\67\0\126\22\45\22\188\22\85\25\129\18\88\25\49\1\184\20\126\23\232\19\93\16\80\15\23\19\216\13\231\14\66\14\212\16\219\16\212\24\93\1\144\0\46\0\36\0\53\0\152\0\14\0\44\0\23\25\0\0\249\19\93\25\240\23\45\1\233\14\212\20\99\25\108\15\193\25\190\0\153\0\12\0\242\6\155\13\3\18\246\24\161\18\156\19\32\14\249\19\233\23\0\0\235\22\46\25\197\13\58\14\118\14\135\19\37\14\229\20\76\18\211\23\162\20\124\14\217\13\106\23\37\14\93\16\214\16\108\15\0\20\151\25\87\25\153\25\103\24\12\1\105\24\20\23\157\25\109\24\166\22\29\23\114\24\145\23\164\25\30\16\1\14\20\0\171\0\152\23\126\20\202\0\18\24\252\0\193\0\187\22\49\1\189\22\178\25\160\16\124\25\47\19\24\19\23\17\242\25\30\14\41\1\177\23\216\0\94\0\150\0\75\0\172\24\13\12\185\23\220\15\128\15\219\14\108\14\222\22\5\16\99\24\30\14\130\15\214\14\143\20\52\25\148\0\93\0\112\0\48\0\241\0\92\0\120\0\140\19\49\1\47\0\49\1\209\16\237\16\188\24\216\13\32\14\6\17\250\19\163\18\233\14\231\14\232\19\12\1\54\0\49\1\188\24\220\15\140\24\16\15\150\19\254\19\30\1\30\1\71\26\175\15\135\19\114\23\41\0\191\15\26\1\24\15\5\16\121\15\219\16\1\20\13\17\241\16\196\15\120\20\213\24\215\24\157\22\60\1\58\25\138\23\221\24\63\25\113\24\1\0\115\24\163\25\173\22\147\23\11\18\225\25\187\0\7\26\103\0\176\0\18\24\199\0\181\0\229\0\217\0\65\22\58\22\84\25\136\24\85\25\192\22\235\23\39\1\210\25\214\18\108\23\155\15\40\15\127\14\8\19\224\23\155\19\248\23\34\0\185\0\105\0\106\0\175\0\68\0\78\0\48\0\216\22\255\19\127\23\135\19\6\23\0\0\223\0\10\0\209\0\31\0\226\0\232\0\75\0\250\23\19\14\210\23\204\20\45\15\30\1\211\13\14\1\212\14\219\14\32\14\14\1\80\15\10\25\191\23\210\16\12\1\204\16\1\16\24\17\209\16\213\15\235\25\234\16\197\13\227\20\213\16\212\18\231\14\218\23\51\16\16\26\122\26\190\26\86\25\164\23\193\26\189\26\192\26\195\26\194\26\191\26\198\26\196\26\199\26\197\26\203\26\202\26\205\26\201\26\207\26\200\26\209\26\204\26\208\26\211\26\210\26\206\26\5\15\247\24\141\22\41\16\220\18\191\18\187\23\12\1\92\0\195\0\167\0\28\0\84\0\11\0\134\0\39\0\93\2\66\24\53\14\118\23\155\15\172\23\253\24\203\22\232\16\32\20\43\0\8\23\128\15\212\14\241\16\195\18\27\14\53\24\147\20\24\17\220\15\88\16\117\23\213\14\39\1\223\14\108\15\212\14\212\14\42\25\150\22\34\25\160\26\148\15\127\26\105\12\129\23\17\1\117\14\32\0\193\25\145\26\30\1\92\25\172\26\30\1\66\14\179\15\130\23\70\15\11\0\81\1\21\0\0\21\183\17\49\1\129\17\180\1\36\0\220\13\104\14\224\1\12\1\100\0\148\14\36\27\67\1\164\0\47\17\23\16\2\0\228\0\144\14\35\2\51\2\45\27\15\0\170\22\2\21\91\1\134\2\3\0\36\0\2\0\81\1\49\27\3\0\37\27\50\23\5\1\133\1\174\21\180\1\54\27\2\0\164\0\191\14\194\21\53\27\71\1\2\0\134\2\236\1\75\27\23\16\68\20\201\14\23\16\3\0\61\27\249\1\96\17\2\2\5\0\197\0\184\14\170\2\4\0\65\0\129\17\89\17\129\17\174\14\70\1\6\0\100\17\2\0\136\17\2\0\154\17\5\22\149\17\66\0\194\17\113\17\179\14\2\0\79\21\4\0\220\0\165\14\201\14\198\17\67\0\244\14\145\1\2\0\28\0\119\27\76\2\155\14\68\8\155\14\57\21\154\17\28\0\95\27\8\0\155\14\237\14\236\14\123\27\120\27\118\27\51\2\1\0\67\0\76\17\155\1\148\0\155\14\5\0\193\0\43\23\3\0\137\1\75\0\132\0\193\0\5\0\195\17\0\0\9\1\57\1\8\0\220\17\89\1\125\21\68\1\4\0\66\0\245\17\168\17\8\0\186\17\5\1\12\0\131\0\109\2\95\0\67\0\210\1\120\17\254\17\145\1\6\0\153\17\238\17\131\0\70\17\155\14\87\19\121\17\121\27\156\0\184\27\76\1\43\23\163\17\128\0\229\17\4\0\235\1\51\2\195\17\180\1\220\0\132\0\244\14\57\1\6\0\186\17\199\1\235\1\8\0\95\0\195\0\177\27\145\1\5\0\92\0\124\27\79\21\5\0\221\0\93\17\222\0\4\18\63\2\203\17\229\24\176\2\178\2\117\2\54\18\70\2\114\0\75\2\3\14\58\22\78\16\49\1\183\2\164\2\76\2\24\18\12\1\26\18\28\18\30\18\105\12\32\18\253\24\35\18\37\18\206\13\40\18\42\18\102\0\44\18\88\2\90\2\119\2\49\18\51\18\53\18\55\18\57\18\34\1\22\1\105\12\62\18\64\18\66\18\68\18\70\18\217\9\164\2\112\2\86\24\77\18\79\18\232\27\82\18\109\14\110\0\85\18\87\18\45\1\90\2\114\0\91\18\28\18\90\2\225\14\80\2\82\2\103\0\201\20\29\16\250\13\69\2\96\2\116\2\78\2\35\28\83\2\253\13\0\28\91\2\117\2\133\25\43\15\212\16\23\19\95\14\69\14\163\18\101\16\155\1\4\0\224\13\93\2\31\17\51\2\65\17\60\25\1\0\240\20\91\17\219\13\76\0\43\20\4\21\227\24\2\26\9\14\7\18\7\14\213\26\69\15\106\23\58\14\58\14\232\19\53\14\25\14\90\24\93\0\0\0\179\9\124\0\101\0\174\0\27\0\168\2\38\16\219\14\155\15\237\16\203\22\187\23\121\15\232\19\114\20\217\13\38\16\77\23\191\18\138\18\16\15\88\26\45\15\1\17\217\13\56\0\55\26\172\26\107\19\250\19\212\16\237\16\14\1\212\16\37\14\188\24\23\17\27\14\196\24\24\27\89\25\39\16\219\26\105\12\93\16\171\23\84\26\34\19\15\15\147\18\214\14\145\24\15\27\132\28\25\1\55\24\223\22\245\25\76\28\232\20\134\18\62\28\63\2\65\28\24\21\189\14\109\1\28\0\75\27\128\16\1\0\20\23\30\10\8\0\146\17\14\0\129\0\109\1\78\0\60\17\160\28\56\20\78\0\1\0\123\10\20\23\91\1\58\20\144\16\146\17\0\15\153\2\82\25\7\26\0\0\58\22\147\16\240\24\183\28\89\8\50\1\134\18\214\26\212\26\231\20\12\1\226\25\186\18\215\18\220\16\25\14\37\19\174\16\212\13\219\14\121\15\25\14\177\16\0\0\56\0\246\0\166\0\2\0\237\0\91\0\139\0\13\0\247\24\18\20\14\1\23\19\29\19\37\24\184\26\12\1\180\0\200\0\234\0\75\0\165\0\103\9\59\0\193\22\204\25\172\26\43\15\86\26\18\17\15\20\127\23\121\15\49\15\0\0\36\0\4\0\115\0\121\0\180\0\203\0\209\0\18\0\36\20\192\19\16\15\5\16\237\16\5\16\80\15\193\25\166\0\175\0\91\22\39\0\28\0\193\0\49\0\168\2\220\23\69\14\2\10\174\15\32\14\69\14\31\19\127\14\245\19\170\20\0\0\202\25\237\16\80\15\219\16\128\15\237\16\66\14\186\24\119\23\30\1\5\23\136\28\44\15\219\23\8\27\215\15\81\23\33\18\120\15\193\24\33\29\249\19\121\15\118\14\253\26\12\1\21\15\148\25\86\14\27\14\249\19\149\26\72\15\2\0\115\10\93\2\240\20\51\2\249\1\60\1\21\21\250\20\6\2\67\1\75\16\63\2\148\28\23\24\237\20\157\27\211\26\50\1\9\14\65\2\12\1\58\14\41\1\2\10\40\15\122\23\227\15\135\18\220\25\32\14\245\19\188\24\23\19\60\26\220\16\27\14\41\1\193\20\70\15\68\2\9\0\58\15\81\17\30\17\81\21\247\14\65\28\54\2\71\1\154\0\74\21\121\1\142\14\226\22\74\27\91\1\69\17\89\17\241\20\21\21\43\17\51\2\112\29\55\21\109\1\218\0\106\29\128\0\228\0\34\21\110\29\113\24\170\21\180\1\134\16\245\20\148\23\232\13\65\0\47\17\129\0\144\14\29\23\236\14\137\11\77\1\189\14\180\1\128\16\3\0\71\1\51\2\129\0\77\17\193\0\84\1\89\17\151\14\2\0\95\21\128\27\51\2\87\1\81\1\92\0\40\21\81\0\80\1\132\0\24\8\66\0\141\19\109\1\128\0\24\8\110\5\120\16\128\0\142\0\111\17\2\0\158\0\146\17\130\1\128\27\135\29\159\14\73\20\169\29\128\0\166\29\60\21\169\29\56\21\120\1\173\29\166\28\2\0\143\0\97\10\3\0\177\29\5\1\172\29\174\29\103\1\194\29\66\0\196\29\146\17\133\0\88\1\68\1\141\27\3\0\168\29\76\27\66\0\100\1\237\12\180\1\207\0\129\0\113\21\204\0\77\1\1\0\142\0\77\1\204\29\2\26\72\11\229\24\30\0\45\9\196\0\28\22\127\0\49\0\203\0\181\0\240\24\30\22\51\1\119\6\150\16\65\22\53\0\183\28\203\14\3\14\112\6\150\16\191\0\100\18\50\1\252\0\159\0\13\18\153\2\56\18\207\13\17\18\55\26\49\18\120\0\112\0\108\26\248\0\243\11\3\14\48\0\100\1\49\1\208\15\24\25\33\29\197\24\236\23\187\23\31\19\95\25\205\13\240\25\214\14\24\27\5\15\166\1\13\0\202\24\9\14\115\29\63\2\24\21\62\20\183\17\137\29\241\20\213\1\51\2\80\1\81\1\132\0\110\16\28\0\110\16\234\13\12\1\73\1\81\1\248\20\80\17\220\13\138\29\103\26\170\22\74\17\222\1\80\17\56\20\149\14\95\1\76\1\85\17\5\1\123\1\95\1\145\1\129\0\203\29\76\1\106\17\5\1\159\1\0\0\226\0\64\0\138\1\212\0\216\1\104\26\73\0\235\13\195\27\49\1\70\0\64\0\64\1\94\0\117\24\7\25\76\2\185\23\129\2\234\16\82\18\103\0\120\2\28\18\132\14\30\14\35\14\128\14\130\2\107\0\115\0\129\2\99\0\105\12\137\2\207\13\48\18\15\1\24\1\120\0\239\27\95\28\230\29\19\22\192\0\151\0\97\0\25\0\212\0\118\30\202\0\106\0\65\0\231\0\19\22\232\14\95\0\77\0\4\22\125\2\94\2\45\28\84\2\40\28\0\0\72\2\29\17\121\17\204\0\183\0\96\0\192\0\118\30\85\0\231\0\174\0\211\0\129\22\228\0\232\0\15\0\81\25\31\22\122\0\185\0\107\0\233\0\129\22\82\0\61\0\39\0\12\22\43\23\217\0\153\0\115\0\232\0\28\22\84\0\54\0\76\0\161\0\129\22\144\13\176\0\218\0\51\22\253\0\146\0\139\0\4\22\50\1\29\30\79\28\215\26\188\30\193\28\70\15\46\19\12\1\5\16\48\15\237\25\245\19\10\19\56\14\25\14\127\14\17\30\39\1\56\14\250\24\93\26\207\18\164\0\157\0\119\0\37\0\99\0\171\0\34\0\93\2\185\23\118\14\164\20\49\29\111\14\231\14\149\18\222\28\65\16\138\22\141\18\19\20\207\30\19\0\69\26\73\24\158\19\24\19\151\20\146\1\69\26\21\30\24\1\66\14\244\26\127\23\92\14\93\29\45\25\0\0\146\24\15\15\237\16\121\28\119\23\227\19\30\14\115\25\170\24\49\1\205\22\221\15\131\14\92\14\220\15\218\28\147\28\235\20\157\27\38\16\30\30\103\24\51\2\33\30\47\17\65\0\36\30\143\29\133\29\89\20\234\1\43\30\45\30\244\14\48\30\155\17\128\0\51\30\12\1\53\30\104\26\74\17\236\14\173\28\76\17\187\14\148\29\92\1\150\29\92\1\75\30\236\14\78\30\0\26\5\1\81\30\235\13\21\21\85\30\87\30\117\24\155\22\138\30\121\0\228\14\30\16\233\29\235\29\118\30\81\30\244\0\213\0\28\22\181\0\211\0\104\0\228\0\19\22\128\0\39\0\184\0\156\0\216\0\65\0\134\30\95\18\36\28\148\2\76\15\115\30\236\22\208\0\206\0\198\0\129\30\22\0\251\0\56\0\156\30\121\1\156\0\78\0\52\4\28\22\155\0\178\0\92\0\67\31\50\1\10\31\190\30\192\28\102\31\123\18\85\20\181\20\184\26\30\1\56\14\219\16\118\14\36\25\217\13\100\0\212\0\15\0\8\0\107\0\94\6\119\0\93\2\175\26\111\2\165\16\66\14\163\24\2\31\64\14\127\14\127\14\216\13\219\16\192\16\214\14\188\24\90\16\13\20\135\14\166\20\214\14\163\18\41\1\15\20\126\14\17\1\24\26\197\13\241\28\187\16\8\25\255\26\40\29\111\25\85\23\12\1\149\31\126\20\124\14\29\29\174\15\245\19\174\15\12\1\97\29\191\30\103\31\189\30\167\31\165\31\101\31\170\31\168\31\129\18\110\2\33\0\92\24\209\13\219\22\135\14\11\23\45\15\64\26\33\1\18\27\32\20\76\0\11\0\114\0\13\0\223\0\165\19\20\0\245\30\245\19\113\28\209\16\232\25\14\1\30\1\241\28\25\0\141\0\155\0\68\0\125\0\221\0\211\0\64\0\36\20\232\19\81\23\197\13\93\16\66\14\97\28\43\25\241\14\148\0\254\0\2\0\120\0\128\4\89\0\75\29\0\0\53\14\40\15\213\31\146\28\12\1\18\0\83\0\6\0\35\0\91\6\107\0\69\0\252\16\82\28\127\23\184\25\214\14\231\14\20\29\252\0\60\0\233\0\225\6\190\0\203\0\63\0\202\24\170\19\144\28\149\25\212\14\34\26\146\28\147\25\250\26\46\25\15\0\86\0\89\0\101\0\236\0\11\0\129\10\49\1\134\18\27\20\197\13\219\14\220\15\248\23\90\30\237\16\58\14\29\29\47\1\32\20\86\15\14\1\209\16\95\14\209\25\25\15\189\23\26\15\159\26\111\20\150\25\128\15\229\20\197\13\232\19\55\28\24\1\174\15\212\16\93\16\23\20\176\31\24\1\128\15\66\14\58\14\43\15\237\16\219\14\56\14\197\18\49\1\215\19\108\23\112\25\39\1\140\20\140\31\222\22\77\24\207\18\238\30\226\30\105\12\237\16\82\15\21\17\14\1\47\1\175\19\127\23\66\14\23\17\67\26\49\1\221\28\128\26\41\26\61\32\172\26\58\14\212\16\220\15\187\18\163\20\16\32\210\13\197\13\92\14\213\20\70\15\128\16\6\0\185\18\225\19\108\1\137\1\16\23\169\21\159\28\147\21\76\0\110\1\2\0\52\20\254\20\46\30\236\17\219\13\65\28\140\0\219\13\136\0\219\13\209\17\116\29\1\0\112\29\231\13\24\8\20\16\131\1\130\29\0\0\172\22\103\32\198\14\146\17\106\32\108\32\110\32\2\0\112\32\67\1\64\17\219\13\116\32\5\1\118\32\5\1\88\30\2\26\166\25\29\22\39\28\86\16\50\1\185\18\166\31\169\31\172\31\211\26\209\23\42\14\253\24\37\19\121\15\41\1\93\16\56\14\90\24\33\5\84\0\86\0\189\0\58\0\25\0\82\0\220\23\128\15\200\13\67\32\211\18\81\14\23\17\25\14\20\29\187\0\146\0\21\0\116\0\174\0\216\0\162\0\32\0\93\2\203\19\128\15\238\23\151\31\220\15\138\25\165\16\133\26\105\28\139\24\162\20\211\13\43\15\37\14\118\14\66\14\127\14\233\14\207\28\193\30\221\23\38\25\68\32\31\14\62\23\151\31\56\14\30\1\219\16\249\19\163\18\231\14\21\27\217\13\82\26\29\15\67\32\236\26\220\30\150\25\23\19\108\31\40\29\32\14\58\14\103\23\32\0\90\24\133\25\209\32\214\19\210\16\127\14\25\14\218\30\24\1\26\17\119\21\220\23\203\2\67\21\49\1\78\30\145\14\12\1\160\0\128\0\189\1\139\0\37\10\136\16\136\1\32\21\137\32\153\29\212\0\232\13\108\17\238\1\97\1\232\20\41\3\4\0\92\17\12\1\133\0\88\17\10\2\172\1\79\21\3\0\156\0\141\1\152\17\93\17\198\0\66\0\154\27\227\12\142\17\110\1\228\0\106\1\195\21\1\0\52\27\219\13\163\17\0\0\154\1\164\1\155\1\115\27\236\14\178\24\132\16\88\17\58\15\106\17\159\0\192\0\248\0\127\0\133\0\193\21\54\2\66\0\53\20\51\2\162\3\226\24\91\24\51\2\225\27\108\26\4\14\178\2\93\2\95\2\97\2\75\31\136\30\253\13\100\2\37\1\47\28\46\18\11\18\209\0\7\0\59\0\74\31\224\13\73\0\105\0\105\0\73\0\89\33\73\0\173\7\2\30\104\2\140\2\108\2\117\2\119\2\121\2\123\2\10\14\68\26\12\1\212\16\163\18\40\15\253\22\197\13\155\15\91\29\156\19\220\15\179\15\40\25\41\1\193\25\26\30\236\14\13\0\63\0\17\14\39\21\67\1\126\16\223\26\241\20\138\0\49\1\229\0\49\1\162\0\67\1\197\0\45\17\146\17\173\10\89\20\130\1\179\1\150\27\76\2\233\22\81\1\168\14\3\0\172\14\5\1\24\8\216\17\92\20\156\14\122\17\40\20\184\29\152\33\118\16\139\0\194\0\148\27\27\33\187\1\96\1\178\14\110\1\187\16\47\4\240\13\42\17\86\17\166\29\5\1\131\0\92\1\27\33\70\17\96\1\71\28\141\1\225\0\244\14\108\1\249\0\127\0\104\32\133\32\146\17\84\1\145\1\168\29\219\17\40\21\42\30\10\21\13\22\176\1\180\1\156\0\43\30\47\17\83\1\85\1\87\1\137\1\36\17\151\14\68\20\56\20\74\0\189\33\154\14\76\1\148\27\154\2\6\14\1\0\84\0\108\32\55\20\91\1\201\0\149\14\133\0\169\21\43\21\110\5\222\0\89\30\66\2\211\32\41\16\32\0\109\0\44\18\50\0\46\0\53\0\109\0\98\0\34\1\99\0\81\2\112\0\221\30\111\0\101\0\115\0\110\0\39\0\111\14\119\0\16\1\64\14\119\0\151\2\104\0\32\0\114\30\24\1\15\28\54\18\105\12\208\13\108\0\6\30\86\22\80\5\222\0\73\31\43\23\61\0\22\0\33\0\64\22\142\2\12\1\93\30\114\0\115\0\253\13\105\2\107\2\43\28\104\18\117\0\240\33\19\18\29\34\135\30\96\18\137\30\93\2\140\30\96\33\111\2\98\33\18\14\128\0\50\0\148\0\234\0\15\34\135\1\129\0\234\0\47\34\37\22\84\33\86\33\123\17\19\0\181\0\125\24\51\22\171\0\97\0\202\0\22\24\96\0\2\0\234\0\163\0\91\22\86\22\234\4\243\0\214\0\70\29\123\33\156\32\76\34\155\32\78\34\154\32\80\34\171\31\38\2\0\31\202\20\219\16\92\14\32\32\113\23\99\25\113\25\119\23\66\26\116\10\158\0\75\0\79\0\82\0\71\0\35\0\31\0\136\22\227\32\12\16\154\19\23\17\29\32\165\16\230\25\32\24\210\16\81\14\241\18\84\23\37\14\78\32\0\0\66\0\171\0\107\0\65\0\171\0\197\0\207\0\5\0\105\31\0\0\236\16\214\14\118\23\211\13\92\14\31\25\219\14\114\23\143\0\126\0\127\0\158\5\91\0\205\0\7\0\196\28\5\16\241\16\250\22\126\23\32\14\47\1\237\16\222\30\127\23\225\22\0\0\65\0\58\0\71\0\113\0\80\0\32\0\203\0\73\0\66\24\58\14\36\24\128\26\21\20\83\14\33\29\12\1\214\0\225\0\69\0\127\0\71\0\133\0\27\0\56\0\86\15\92\16\214\14\128\15\155\15\110\31\32\25\47\15\217\13\252\0\155\0\179\0\46\0\216\0\105\0\208\0\55\0\38\16\232\25\203\20\148\15\209\18\128\26\33\25\135\0\254\0\92\0\53\0\204\7\234\0\25\0\130\28\55\19\219\28\14\1\240\28\198\34\215\15\162\24\24\17\188\24\212\16\245\19\254\30\237\0\127\0\115\0\67\0\222\0\221\0\69\0\6\0\122\31\219\16\69\16\120\20\32\14\20\15\238\32\213\32\249\30\214\14\23\17\32\14\39\24\0\0\54\0\149\0\221\0\86\0\207\0\43\0\79\0\110\0\115\28\90\25\243\15\125\23\110\23\25\15\219\16\121\15\199\24\230\32\141\28\20\20\149\20\217\13\67\0\86\33\49\0\142\0\217\0\14\0\54\0\93\2\253\34\0\0\118\14\140\22\230\32\233\14\32\14\135\19\43\15\219\16\243\22\202\32\197\13\224\20\217\13\102\34\0\0\41\1\32\14\237\16\249\19\19\20\165\16\47\1\88\24\165\16\211\13\3\27\236\25\153\34\245\30\56\14\211\24\143\28\241\16\163\18\60\19\0\0\193\22\174\15\120\19\176\32\104\34\205\13\243\18\67\32\25\14\53\28\217\13\220\23\81\34\77\34\69\35\79\34\17\14\117\2\34\35\118\20\56\14\135\19\223\25\40\25\92\14\155\15\53\28\14\1\167\15\214\14\32\14\55\35\216\0\66\0\199\0\10\0\42\0\59\0\56\0\13\0\57\0\47\32\16\15\188\20\45\1\75\19\13\17\211\13\93\16\134\28\250\19\241\16\55\35\138\10\240\0\124\0\144\0\41\0\234\0\108\8\69\26\40\25\14\1\233\14\37\14\53\14\53\24\145\28\173\15\135\14\12\1\149\0\113\0\104\0\14\0\172\0\253\0\226\0\121\0\242\26\211\14\41\15\28\35\18\30\87\26\235\25\217\23\25\15\65\26\13\17\12\1\147\0\185\0\77\0\35\0\43\0\85\0\33\0\114\0\66\24\118\14\47\1\212\16\8\17\158\31\26\15\204\32\108\23\55\32\0\0\163\0\139\0\14\0\108\0\190\0\230\0\198\0\117\0\106\23\98\28\214\14\190\20\127\31\33\32\0\0\86\0\23\0\77\7\104\0\198\0\149\0\89\0\227\29\0\0\219\14\30\1\95\14\131\25\32\20\162\0\61\0\169\0\68\0\201\0\38\0\66\0\40\0\93\2\226\32\20\35\253\24\5\16\22\14\67\32\2\10\25\35\127\14\31\19\40\25\230\31\137\22\37\19\14\1\56\14\169\24\193\22\191\35\215\34\126\26\146\20\85\15\208\25\165\16\211\31\236\25\35\29\12\1\23\19\174\18\43\32\138\28\146\28\155\15\245\19\207\24\236\25\254\30\22\29\134\31\40\25\143\15\187\23\232\19\25\14\199\31\237\34\219\14\241\16\40\15\101\16\180\2\23\0\71\0\220\13\224\13\251\32\156\1\73\17\230\13\128\16\188\1\59\20\26\0\148\14\190\29\34\27\226\22\125\29\5\1\133\16\51\2\223\33\236\14\10\36\87\19\30\10\13\36\253\20\121\1\36\0\148\14\216\21\72\11\89\20\20\36\0\0\201\0\156\14\24\36\29\10\2\0\27\36\107\1\118\16\36\0\47\17\32\36\5\1\67\28\130\29\201\0\60\1\2\0\38\30\122\27\65\0\248\13\108\32\28\0\56\36\76\2\232\13\12\21\2\0\160\29\64\28\220\13\134\0\111\16\3\0\154\0\14\36\146\29\164\0\144\14\227\29\40\33\45\20\0\0\202\0\220\13\1\0\62\33\233\13\40\21\20\36\1\0\223\33\150\14\144\29\59\36\57\36\198\17\60\36\38\30\110\24\238\17\130\29\195\33\68\1\193\0\5\22\71\36\28\36\128\0\164\0\20\31\47\36\89\20\215\29\152\29\180\1\223\33\1\0\173\27\58\36\94\36\116\36\92\36\55\36\140\27\187\14\166\22\42\30\122\17\110\36\163\27\155\17\111\17\3\0\180\30\119\1\174\2\123\29\77\17\76\36\52\27\51\2\10\0\106\1\105\17\92\1\129\0\123\1\88\1\169\1\144\1\154\34\172\17\149\14\73\30\148\27\163\1\147\17\163\1\65\0\178\17\220\0\134\16\215\27\40\21\84\1\92\1\32\0\193\0\26\0\138\1\137\1\122\27\108\27\76\2\93\17\19\33\148\33\116\27\132\0\106\1\134\0\194\0\68\0\5\0\154\0\99\17\254\20\105\36\72\27\136\36\22\21\88\1\57\1\10\0\155\1\45\33\149\14\67\0\57\1\202\0\155\1\64\17\57\1\162\1\67\21\205\1\233\13\165\14\4\0\164\14\38\21\92\1\168\17\209\36\88\1\157\14\3\0\182\1\149\33\2\0\176\36\167\2\156\0\170\36\176\36\136\1\177\33\79\36\194\0\12\1\201\0\95\17\140\0\201\0\166\29\141\0\4\0\145\1\127\27\178\23\239\1\76\1\67\0\37\2\131\27\236\14\228\36\131\0\233\36\155\1\6\0\131\0\71\0\50\14\160\17\44\36\113\21\194\21\18\36\67\28\191\27\187\16\97\8\156\33\234\36\76\2\204\14\200\17\238\14\239\36\9\1\242\36\2\0\244\36\143\0\6\37\236\36\200\17\195\0\9\1\148\27\203\17\13\37\228\36\3\0\145\0\108\1\10\0\138\1\247\36\67\0\73\0\251\36\132\36\155\14\36\0\143\33\136\36\78\36\94\27\203\17\218\29\203\17\197\36\219\13\60\28\154\34\68\0\49\11\129\0\132\0\49\11\193\0\196\0\49\11\78\1\165\10\65\0\69\0\165\10\138\0\86\2\131\27\167\21\3\37\5\0\166\33\30\37\7\37\235\36\218\29\21\37\67\0\12\37\129\17\14\37\104\27\151\0\240\13\168\17\6\37\188\1\195\0\75\0\34\37\43\36\29\36\12\30\108\36\1\37\51\2\66\37\68\37\17\37\8\37\72\37\11\37\96\27\121\33\67\0\76\0\6\0\25\37\152\0\245\17\106\17\31\0\129\0\155\21\54\36\91\36\61\36\167\2\112\37\89\20\92\1\123\36\110\1\26\33\130\29\127\36\198\0\129\0\204\0\130\36\14\36\204\17\228\0\63\30\187\36\208\33\194\0\215\1\158\36\5\1\65\36\62\20\187\14\32\0\65\0\17\0\167\36\198\17\116\27\173\36\92\0\170\36\100\1\138\1\218\36\68\1\109\32\181\36\99\17\254\17\164\0\123\1\131\37\79\36\106\1\141\27\35\2\94\27\35\2\163\33\2\0\23\0\136\1\177\14\254\17\222\36\137\32\116\27\23\0\192\0\77\0\67\37\135\1\66\0\184\14\166\29\18\21\253\1\128\0\151\37\10\2\8\4\182\36\149\1\137\1\128\1\145\1\39\37\157\29\66\0\249\1\114\36\249\1\193\36\218\29\249\1\45\37\204\36\167\2\168\37\53\36\190\29\222\36\4\0\224\36\159\14\67\37\178\1\185\37\177\36\2\0\79\0\154\37\190\37\105\36\69\30\159\37\202\0\161\37\67\0\72\11\200\37\131\0\72\11\193\0\195\0\72\11\163\33\3\0\206\37\177\14\236\14\215\37\222\13\196\0\137\1\173\1\180\27\28\0\154\17\48\33\5\1\143\33\5\22\151\11\166\37\212\37\141\0\179\8\3\0\137\0\30\10\5\0\31\0\1\0\106\21\90\36\60\36\116\37\96\36\21\31\125\36\121\37\220\13\84\31\208\0\126\37\220\37\129\37\193\37\219\13\72\11\151\14\139\36\153\1\84\17\130\0\151\11\193\0\194\0\151\11\191\36\29\31\151\14\148\33\161\36\139\37\123\10\128\0\13\0\255\37\253\17\48\2\116\27\73\0\176\14\108\37\254\0\196\14\2\26\21\21\86\22\165\0\237\0\125\0\73\34\43\23\9\0\197\0\143\0\237\0\51\22\79\5\184\30\129\22\29\0\42\0\135\0\166\30\49\1\150\0\150\0\79\0\71\22\4\0\90\30\94\33\173\7\78\38\91\33\91\33\108\0\81\38\18\14\64\0\198\0\54\0\171\0\69\38\0\0\96\0\253\0\25\0\11\0\161\30\98\20\49\1\121\0\185\0\242\0\108\22\75\38\49\1\94\33\104\38\44\1\104\38\92\33\108\38\11\18\128\0\133\0\199\0\13\18\69\33\89\33\173\7\80\38\105\0\110\38\124\0\9\26\4\0\69\33\44\1\90\33\116\38\58\15\1\14\245\0\70\1\236\27\163\31\92\33\119\38\175\2\128\0\87\0\204\0\7\26\134\0\6\26\121\17\125\0\55\16\210\0\56\22\64\0\174\0\123\24\90\0\42\23\17\21\157\0\51\36\1\14\32\0\110\26\3\14\133\24\86\22\209\0\106\0\184\0\221\0\28\22\183\0\223\0\136\0\207\0\129\22\174\29\204\0\118\26\3\14\157\28\3\14\44\0\40\22\224\0\59\0\149\0\106\0\71\22\86\22\125\0\184\0\184\0\220\0\65\22\246\3\246\29\179\22\200\0\90\0\132\0\209\0\65\22\111\6\3\14\55\0\40\22\96\0\41\0\6\0\143\0\128\30\48\4\55\26\81\38\90\33\125\38\92\33\146\2\210\38\58\15\138\30\146\2\147\2\236\1\195\13\108\38\126\38\82\38\134\38\128\38\17\21\21\11\13\18\104\14\218\38\81\38\134\38\211\38\40\34\117\38\90\33\76\2\116\19\90\33\224\38\241\38\218\38\219\38\106\23\106\38\240\38\44\1\214\38\93\33\91\33\134\38\43\34\230\0\21\0\134\10\68\31\33\0\109\0\230\0\78\22\121\1\126\0\153\0\25\0\124\22\31\16\255\0\255\0\202\38\242\0\32\13\20\34\110\2\231\38\135\38\135\1\245\0\117\0\122\0\27\22\4\0\155\22\127\38\93\33\78\38\108\26\147\0\188\0\183\28\119\24\32\0\154\0\18\0\193\0\171\30\138\30\125\38\108\26\172\0\154\23\4\0\189\35\77\38\211\38\232\38\224\38\20\39\121\1\120\0\202\0\210\0\206\0\74\31\117\2\19\39\226\38\50\1\144\0\110\26\4\0\7\2\104\38\214\38\212\38\147\2\200\14\124\17\241\14\201\0\133\0\58\0\40\39\18\39\49\39\253\13\82\38\146\2\194\21\209\14\236\22\218\34\40\25\193\32\230\32\245\26\108\34\165\26\18\17\53\29\17\14\166\1\14\0\203\19\11\31\252\23\32\30\145\14\15\31\17\31\6\1\19\31\41\30\22\31\199\33\24\31\208\14\50\30\146\17\29\31\140\27\31\31\142\1\34\31\154\34\36\31\61\30\39\31\64\30\92\1\66\30\149\14\69\30\87\17\169\1\73\30\5\22\163\1\41\31\5\0\43\31\54\30\45\31\82\30\48\31\86\30\190\35\117\24\150\28\11\29\110\0\98\0\52\0\32\0\79\18\79\2\215\15\205\13\101\0\5\30\121\14\151\2\144\28\80\18\82\18\70\2\245\18\141\30\129\16\53\38\55\38\28\22\136\0\220\0\39\0\223\0\28\22\130\0\147\0\187\0\200\0\28\22\113\0\206\0\10\11\58\39\44\28\36\34\78\31\139\30\80\31\110\22\33\0\55\0\153\0\235\0\68\31\190\0\107\0\148\0\194\0\129\30\12\0\103\0\158\0\190\39\43\23\217\18\90\0\171\30\22\22\199\0\94\0\9\3\118\30\228\0\33\0\39\0\95\38\135\1\82\0\154\0\166\0\189\38\123\17\64\0\253\0\201\0\4\22\97\22\69\0\105\0\34\0\36\22\168\2\100\0\51\0\85\0\94\1\50\1\98\39\82\34\71\35\237\39\51\23\36\20\80\15\58\14\66\14\95\14\119\35\240\31\13\17\125\20\148\0\206\0\118\4\114\0\187\0\6\0\45\0\93\2\206\18\66\14\41\1\23\17\75\24\27\14\1\27\30\14\93\16\13\25\204\2\80\32\17\15\30\14\163\18\124\20\14\1\92\14\194\31\212\34\79\15\84\23\105\14\181\25\33\1\168\26\112\23\212\18\129\25\33\29\32\35\121\15\198\23\250\19\193\25\34\35\3\20\42\26\214\14\121\15\30\1\2\10\47\1\75\24\25\25\222\28\216\13\212\19\217\13\133\25\209\24\40\25\96\19\127\23\194\28\53\15\124\33\12\31\200\21\34\30\154\34\104\39\95\36\40\30\11\38\1\0\134\0\147\14\3\0\44\30\109\39\47\30\70\17\43\21\28\31\167\22\5\1\116\39\121\36\40\31\76\30\0\0\135\39\80\30\138\39\84\30\140\39\146\32\106\26\0\0\69\33\18\33\49\1\110\7\156\39\27\14\115\0\111\0\137\2\120\2\105\12\30\20\101\0\118\0\23\14\31\34\251\27\34\1\97\0\44\18\35\14\44\18\227\14\32\0\96\30\110\0\98\30\49\18\111\0\98\0\201\13\115\0\122\2\90\2\213\13\105\0\25\34\57\38\59\38\61\38\121\17\54\0\9\0\10\0\184\38\116\17\115\0\201\0\131\0\213\39\0\0\224\0\134\0\187\0\39\0\128\30\6\22\13\18\117\2\76\31\46\28\217\38\185\39\224\0\54\0\238\0\196\0\185\30\49\1\245\30\238\39\70\35\211\26\245\30\163\35\232\19\108\31\50\35\206\25\217\13\66\0\215\0\154\0\124\0\104\0\174\0\42\0\57\0\216\30\49\1\80\24\139\18\141\18\174\16\14\1\37\14\41\1\70\26\126\23\163\18\155\15\187\26\14\32\156\19\124\15\165\16\94\14\217\13\203\19\40\15\71\32\17\1\56\14\59\26\45\15\110\33\24\17\153\34\136\35\157\31\118\14\149\22\120\20\170\23\12\19\43\15\212\14\88\24\207\30\110\25\108\15\155\15\209\16\22\32\32\20\120\33\36\2\252\16\99\39\238\20\13\31\102\39\35\30\114\39\18\31\39\30\20\31\124\36\66\40\68\40\70\40\122\32\24\31\73\40\44\21\113\39\76\40\136\39\1\0\32\31\89\20\187\14\147\14\80\40\5\1\83\40\170\22\46\31\83\30\61\1\87\40\117\24\61\28\174\0\195\13\39\0\109\0\216\15\29\28\119\2\109\0\109\0\127\2\105\0\123\40\154\19\113\2\63\18\49\16\208\13\234\33\111\0\79\2\83\18\110\0\73\2\99\0\72\2\115\0\105\0\54\18\134\14\123\14\100\0\88\18\153\39\70\18\111\0\151\2\82\18\51\29\105\30\51\25\101\0\44\18\120\2\108\0\44\18\79\33\114\0\130\2\29\28\105\0\122\0\74\18\205\13\119\40\106\0\73\2\81\18\15\27\1\34\112\14\46\15\90\2\129\2\35\28\37\1\79\33\45\1\69\14\101\30\161\2\126\40\90\2\115\0\161\2\122\40\41\16\100\2\124\40\27\14\101\30\248\33\112\0\99\18\31\22\63\38\223\39\66\2\139\0\241\10\19\22\160\4\219\0\214\0\200\39\116\17\102\0\184\0\208\0\130\40\79\22\148\40\181\39\77\31\152\40\162\39\241\14\182\0\171\0\127\0\89\38\141\40\241\0\21\0\152\0\70\29\228\40\236\39\124\41\206\26\225\19\197\32\209\13\47\16\222\22\241\22\98\15\17\1\12\1\228\0\152\3\109\0\119\0\32\0\109\13\93\2\110\20\127\34\165\32\87\14\85\23\212\16\233\14\212\16\232\19\166\26\156\19\239\22\133\28\214\14\56\32\126\2\189\40\222\22\249\19\58\14\218\35\32\20\230\30\78\24\161\31\222\22\23\19\198\15\89\17\137\31\101\15\126\23\2\10\150\41\90\26\52\25\193\22\66\14\163\18\241\16\92\39\219\16\10\27\104\35\222\28\231\20\76\27\62\0\57\40\67\21\126\33\244\14\28\21\130\33\12\1\132\33\12\1\134\33\47\30\137\33\5\1\139\33\72\20\237\17\143\33\4\0\145\33\110\27\174\36\150\33\26\21\177\14\131\1\238\37\3\0\156\33\168\37\158\33\121\1\160\33\162\33\28\33\53\21\67\37\254\17\168\33\237\37\171\33\12\1\193\0\173\33\114\36\176\33\173\14\225\41\180\33\0\0\182\33\253\20\185\33\187\33\5\1\147\21\190\33\241\14\232\13\137\37\195\33\173\28\197\33\206\33\200\33\132\16\202\33\151\29\86\1\88\1\70\17\193\33\5\1\221\33\2\0\211\33\147\29\213\33\98\0\60\36\219\33\136\1\7\42\88\36\225\33\63\2\227\33\1\0\229\33\226\29\66\2\90\30\112\0\96\18\116\0\40\0\48\28\2\28\101\0\82\26\121\17\153\0\142\0\105\0\205\0\51\22\151\2\235\0\74\38\110\2\23\34\25\34\132\38\111\2\106\2\99\33\13\20\31\34\98\0\33\34\76\33\182\39\111\41\40\34\112\2\114\2\91\2\43\23\28\0\95\0\23\0\22\24\224\0\175\0\94\0\64\42\28\22\71\38\73\38\28\22\50\0\83\0\122\0\48\34\34\25\79\0\187\0\147\0\22\24\32\0\70\0\93\0\12\0\128\30\50\1\190\41\162\40\90\42\72\35\91\42\161\40\92\42\114\18\224\13\196\28\40\15\212\16\209\16\216\13\58\14\95\14\32\14\212\16\128\15\11\19\41\1\11\20\0\0\178\0\204\8\119\0\71\0\225\0\94\0\22\0\189\35\148\41\175\15\167\40\217\13\117\0\182\0\252\0\122\0\178\0\27\0\36\0\16\0\134\18\43\40\139\22\33\1\69\14\187\26\244\0\153\0\124\0\114\0\68\0\179\0\171\0\31\0\185\18\208\19\237\34\43\40\165\16\167\41\111\14\116\34\81\0\24\0\175\0\122\0\1\0\217\0\209\0\73\0\174\32\47\41\115\20\33\29\223\40\127\23\118\14\190\23\123\14\165\22\30\0\220\0\77\0\151\14\189\0\20\0\105\33\0\0\23\17\230\35\211\13\220\15\32\14\167\15\108\15\237\16\232\19\98\23\237\25\12\1\90\0\181\0\66\0\36\0\160\0\91\0\225\0\88\0\205\35\231\14\57\23\41\15\95\14\232\19\212\16\15\17\108\15\172\18\212\18\177\23\247\0\164\0\96\0\50\0\41\24\189\0\31\0\216\22\241\16\196\24\67\32\81\14\132\15\146\10\28\0\196\0\23\0\59\0\105\0\93\0\53\0\196\28\55\19\184\26\207\42\128\26\185\42\30\14\209\16\2\17\190\42\0\0\188\0\185\0\144\0\15\0\124\0\194\42\118\0\93\19\128\28\195\22\253\24\22\14\127\14\66\35\219\16\144\15\56\14\40\15\243\34\82\0\7\0\146\0\56\0\83\0\227\0\140\0\11\0\93\2\193\22\241\16\232\19\173\23\40\29\75\32\249\19\6\31\121\35\217\13\202\25\135\19\146\25\165\16\199\30\212\18\251\35\237\16\211\13\236\42\105\12\12\1\14\30\179\42\230\32\245\19\180\32\30\1\121\19\126\25\212\13\81\14\37\14\18\32\175\15\12\1\205\35\92\14\169\20\172\26\58\26\212\18\135\19\140\24\144\31\67\35\202\20\93\16\201\42\224\35\65\43\188\24\243\34\226\40\56\40\62\15\31\30\231\40\48\36\103\39\234\40\105\39\236\40\107\39\180\1\67\40\5\22\241\40\46\30\93\1\244\40\75\40\30\31\55\30\67\29\187\14\75\30\51\2\0\41\137\39\47\31\86\40\50\31\2\26\91\40\136\17\186\18\56\18\103\0\82\2\238\18\33\41\83\2\34\1\98\40\105\12\108\0\2\1\234\33\82\2\196\13\105\0\19\18\251\27\111\0\45\1\43\26\82\2\107\0\36\28\61\18\63\18\112\14\60\18\67\18\98\0\97\0\100\0\230\27\18\14\91\38\93\38\140\40\224\0\33\0\189\0\67\0\67\31\168\2\166\0\162\0\102\11\118\30\11\0\165\0\53\0\101\41\23\24\228\27\109\41\151\40\38\34\153\40\247\0\8\0\241\0\161\30\50\1\160\40\125\41\95\42\192\28\175\31\150\31\197\23\33\1\41\1\53\14\223\32\184\26\71\19\200\13\215\35\190\14\62\0\199\0\121\0\129\0\156\0\162\4\93\2\156\31\80\23\33\1\81\14\33\40\216\40\223\28\127\34\30\24\64\14\212\16\65\35\15\15\188\24\237\16\239\35\143\28\75\41\207\30\60\0\49\1\37\14\245\19\232\19\223\30\128\26\226\20\40\25\241\16\219\22\222\22\135\31\244\34\8\23\86\41\91\39\254\31\86\14\192\24\221\43\209\13\187\24\67\32\50\16\248\22\154\2\13\17\239\31\113\20\142\28\171\16\80\19\120\20\53\14\41\1\174\15\25\14\107\42\165\35\120\33\212\29\191\41\149\14\193\41\128\33\180\1\196\41\0\0\198\41\0\0\200\41\93\1\202\41\1\0\204\41\141\33\122\17\209\36\209\41\147\33\149\33\29\21\213\41\153\33\216\41\218\41\27\31\177\14\159\33\161\33\26\33\224\41\165\33\227\41\0\0\169\33\204\17\151\37\232\41\157\14\175\33\204\36\178\33\222\13\238\41\240\41\43\36\242\41\132\32\244\41\189\33\1\0\191\33\248\41\194\33\146\17\101\36\235\36\253\41\201\33\12\1\203\33\124\1\205\33\4\42\160\29\6\42\210\33\108\32\150\14\145\1\87\1\169\1\53\36\154\34\66\0\163\1\129\0\96\17\216\33\136\1\14\42\76\27\56\20\17\42\226\33\192\0\228\33\117\24\165\41\76\2\36\20\4\34\31\1\20\1\63\41\82\18\99\0\117\0\79\2\98\40\114\40\162\2\164\2\166\2\123\17\205\0\230\0\217\0\170\39\22\22\232\0\157\0\54\0\77\39\143\2\36\18\24\34\26\34\48\42\34\34\86\18\32\34\102\2\54\42\110\41\157\43\29\17\21\34\41\34\59\42\18\14\192\0\100\0\43\0\215\0\89\31\96\0\121\0\88\0\126\44\28\22\98\38\100\38\129\30\185\0\178\0\128\0\228\39\49\1\53\0\110\0\107\3\118\30\232\0\31\34\22\24\192\0\26\0\101\0\62\0\180\30\97\22\233\0\148\3\143\43\49\1\228\0\166\4\203\0\68\31\188\0\212\0\48\0\146\30\50\1\91\27\94\42\168\44\165\43\169\44\93\42\190\30\224\13\225\19\248\19\228\19\235\25\212\14\234\18\209\13\150\24\116\0\15\0\60\0\221\0\82\0\97\0\200\6\209\14\200\30\181\24\143\28\245\19\66\14\20\29\6\0\81\0\172\0\81\0\95\0\5\0\250\0\40\0\54\26\150\31\87\35\235\25\236\32\213\32\43\15\182\25\1\35\186\41\128\26\12\1\25\0\228\0\245\0\22\0\67\0\221\0\64\0\37\11\119\15\245\19\82\19\17\40\217\13\105\0\30\0\101\0\58\0\81\0\121\29\37\0\202\24\18\20\215\32\48\25\206\20\222\28\210\43\217\13\32\0\217\0\184\0\62\0\184\0\128\0\194\0\52\0\224\31\135\19\47\1\174\15\243\30\217\13\159\10\26\0\23\0\80\0\25\0\110\0\59\0\116\19\203\40\16\15\239\26\251\19\84\0\21\0\63\0\5\0\166\0\34\0\8\0\146\42\214\14\200\40\216\32\100\25\126\23\245\19\187\26\25\0\178\0\32\0\87\0\237\0\19\0\103\0\80\0\93\19\38\35\108\15\44\16\40\25\66\14\130\26\181\34\88\14\24\1\99\19\178\43\202\0\34\0\92\0\74\0\219\0\184\32\230\39\98\35\43\15\40\15\2\20\230\32\99\16\84\23\90\34\39\1\205\32\14\1\24\27\156\0\152\0\27\0\191\36\93\0\23\8\93\2\34\35\188\24\53\14\126\28\40\25\5\16\154\41\191\19\92\26\141\18\25\14\110\42\202\25\241\16\2\10\41\40\220\16\48\25\120\20\200\24\220\35\26\15\93\29\133\25\2\10\22\35\145\28\23\19\212\16\254\30\209\31\13\17\42\40\253\24\69\14\187\42\146\35\248\14\117\19\121\15\226\23\40\29\168\42\180\35\246\43\15\0\71\0\248\43\244\20\76\1\194\41\129\33\131\33\133\33\135\33\3\44\5\44\206\41\8\44\59\27\210\41\11\44\151\33\214\41\63\2\137\1\217\41\84\21\219\41\18\44\221\41\20\44\163\33\81\1\23\44\167\33\25\44\229\41\239\37\76\1\233\41\31\44\177\33\149\45\222\13\77\0\190\14\239\41\183\33\192\0\38\44\57\36\40\44\46\17\42\44\247\41\71\21\45\44\196\33\48\44\180\1\6\0\130\0\67\0\210\37\50\44\82\1\1\42\54\44\207\33\57\44\91\1\9\42\200\17\215\33\77\1\153\36\66\44\154\34\69\44\143\36\163\1\189\36\5\1\195\36\148\36\57\1\218\29\57\1\12\42\138\1\72\44\16\42\224\33\76\44\78\44\2\26\216\22\4\0\6\36\83\0\89\0\78\0\65\0\80\0\83\0\69\0\32\0\88\0\81\16\118\19\70\0\222\45\66\0\89\0\80\0\65\0\83\0\83\0\116\14\98\10\84\0\152\13\82\0\32\0\84\0\72\0\225\45\76\0\108\12\219\45\72\0\116\14\65\0\77\0\65\0\90\0\73\0\78\0\71\0\47\1\79\0\77\0\15\15\1\46\3\46\2\46\32\0\33\0\8\46\9\46\43\34\162\0\219\0\11\43\118\30\183\0\87\0\148\0\197\38\119\44\44\42\109\44\28\34\134\30\112\44\52\42\114\44\149\40\77\33\56\42\119\44\58\42\115\2\123\17\55\0\24\0\227\0\123\30\123\17\53\0\120\0\37\46\68\31\144\38\104\0\146\38\86\22\80\0\223\0\129\0\82\42\60\0\77\0\232\0\146\40\160\23\40\22\160\0\87\0\149\0\240\0\106\41\241\14\250\0\120\0\69\0\93\41\110\22\77\0\153\0\101\0\69\34\129\16\69\0\86\0\153\0\140\40\192\0\245\0\173\0\176\0\120\22\129\16\59\14\213\0\165\38\86\22\192\0\132\14\77\42\27\31\213\0\156\0\204\39\49\1\177\0\155\0\187\0\98\31\49\1\122\45\172\44\102\46\166\43\170\44\105\46\103\46\113\18\224\13\205\35\220\15\84\28\212\13\182\41\146\41\163\18\216\13\41\1\107\28\229\44\228\0\74\0\12\0\27\0\146\0\53\0\237\37\104\2\213\40\187\23\160\35\23\19\239\16\217\13\138\0\218\0\188\0\4\0\53\0\149\0\167\0\107\0\206\18\163\18\237\23\230\32\66\14\242\23\118\35\14\1\58\14\155\15\81\14\207\28\88\0\27\0\131\0\82\0\204\0\227\39\20\0\211\32\209\16\102\35\136\20\23\17\141\31\92\32\41\15\166\20\208\42\222\22\231\14\142\1\31\0\88\0\127\0\179\0\216\0\98\0\70\0\247\24\17\43\103\35\228\25\161\35\12\1\215\0\104\0\30\0\14\0\186\0\153\0\167\0\58\0\134\20\176\18\222\28\2\10\214\35\108\15\23\17\68\24\220\16\207\16\120\20\220\15\149\26\129\0\108\0\131\0\72\0\27\0\99\0\26\0\151\35\83\26\250\26\135\19\245\26\120\20\170\43\215\32\182\42\159\41\56\24\0\0\170\0\29\0\133\0\107\0\84\0\95\0\43\14\202\24\195\40\209\13\81\14\127\14\179\15\67\32\135\19\32\14\153\34\149\0\176\0\247\0\65\0\182\0\130\0\210\0\140\41\49\1\28\19\45\15\118\14\182\31\24\17\244\25\196\22\52\25\151\0\100\0\157\0\62\0\16\0\29\0\162\0\81\0\19\35\199\46\142\35\30\35\169\40\26\29\134\31\97\25\42\32\74\24\229\35\33\1\22\32\170\40\44\0\152\0\23\0\114\0\56\0\195\0\33\0\93\2\132\19\237\34\81\14\47\1\60\32\217\13\196\28\58\45\245\35\108\15\218\40\141\18\23\17\104\23\32\26\174\41\14\1\66\14\149\18\23\45\222\28\127\14\187\40\40\25\23\19\219\14\81\14\110\42\185\18\219\16\74\32\24\17\219\14\226\20\180\34\39\1\152\14\57\32\44\15\37\19\226\43\24\1\118\14\237\16\207\28\226\40\10\0\86\15\229\40\116\29\59\40\75\43\167\22\235\40\119\39\79\43\67\28\23\31\47\30\111\39\27\31\246\40\88\43\5\1\32\31\145\17\58\30\120\39\38\31\63\30\1\0\65\30\104\27\74\30\60\1\3\0\94\43\1\0\2\41\139\39\98\43\89\40\104\14\4\0\19\35\131\43\88\2\210\13\32\0\106\0\89\44\111\14\163\2\88\18\27\14\117\0\119\0\117\0\201\25\134\47\147\46\15\27\113\14\98\30\52\42\65\41\207\13\132\14\132\47\33\0\49\0\49\0\8\46\18\14\180\38\182\38\135\40\110\22\224\0\68\0\49\0\197\38\168\2\145\27\70\0\160\44\168\2\196\0\55\0\107\22\180\39\69\2\29\46\117\44\43\34\228\0\201\0\177\0\72\46\12\1\63\0\201\0\237\0\195\0\68\31\194\0\229\0\36\0\199\0\68\31\172\0\169\0\88\0\202\0\118\30\127\7\207\0\139\44\110\22\157\0\207\0\223\0\190\39\50\1\83\47\106\46\104\46\91\42\86\15\48\40\188\24\60\14\13\17\166\42\171\20\173\0\180\0\69\0\115\26\175\14\142\41\220\25\97\25\38\24\161\35\187\40\67\32\42\43\41\15\154\41\242\16\49\1\255\44\135\14\109\33\143\28\70\24\146\41\203\32\134\42\17\47\184\24\71\47\0\0\168\43\0\0\137\19\18\17\198\24\198\32\13\40\79\19\168\46\195\28\161\20\218\18\203\43\137\28\151\31\142\25\26\14\67\32\111\20\39\15\222\28\16\17\236\25\208\16\172\26\35\26\74\26\247\32\96\32\100\37\123\45\250\43\128\29\1\0\253\43\255\43\1\44\136\33\14\14\4\44\48\36\6\44\207\41\9\44\141\45\137\45\13\44\215\41\141\45\16\44\220\41\128\0\222\41\21\44\164\33\222\13\68\37\228\41\170\33\154\45\29\44\174\33\235\41\33\44\5\0\35\44\164\45\166\45\113\37\147\17\41\44\43\44\172\45\180\1\250\41\47\44\171\36\199\33\181\45\52\44\2\42\206\33\223\26\208\33\7\42\211\33\167\2\60\44\214\33\63\44\155\36\193\45\68\44\197\45\47\4\216\33\167\2\207\45\74\44\209\45\19\42\77\44\21\42\117\24\106\23\4\0\205\44\94\2\124\43\105\30\155\39\111\14\126\40\82\14\8\28\107\2\81\2\129\31\120\40\89\44\123\40\16\1\66\14\31\41\130\14\114\0\51\41\90\41\121\1\225\0\84\0\212\0\82\46\241\14\11\4\139\0\25\39\43\42\107\44\45\42\153\2\27\34\49\42\30\34\113\44\34\34\150\40\37\34\55\26\239\27\31\46\42\34\168\2\67\0\148\0\137\0\236\29\168\2\86\0\114\0\138\0\140\48\116\17\204\38\206\38\129\30\35\0\71\0\127\8\129\30\78\0\58\0\30\0\89\31\32\0\231\0\235\0\195\0\94\46\34\25\239\0\96\0\216\0\127\44\200\19\231\0\128\22\168\2\146\0\119\5\22\24\128\0\158\0\170\0\224\0\89\38\160\0\70\0\137\0\62\0\162\43\49\1\101\43\171\44\202\47\188\48\187\48\190\48\82\34\224\13\247\24\135\19\246\23\161\35\95\14\254\30\177\0\209\0\119\41\54\3\100\0\6\0\240\47\231\14\245\19\104\28\21\17\18\17\81\14\66\14\252\26\0\0\83\0\92\10\53\0\181\0\6\1\102\0\89\42\203\25\108\15\188\24\83\15\6\35\65\43\237\16\2\10\53\14\4\43\108\15\9\20\108\15\153\34\126\0\131\0\42\0\48\0\18\0\112\0\212\14\196\28\216\13\198\30\120\20\92\14\231\14\106\19\216\32\44\32\100\24\129\0\113\0\107\0\70\0\175\0\206\0\77\0\74\0\80\44\59\43\156\19\40\15\66\14\30\1\199\23\125\0\114\0\173\0\96\0\228\26\200\0\99\0\126\34\235\34\179\35\219\16\30\1\57\28\203\25\52\0\163\0\49\0\154\0\222\0\1\0\215\46\13\15\15\15\232\19\253\22\48\32\17\47\93\34\106\0\92\0\249\0\98\0\15\0\161\0\226\0\108\0\156\31\254\44\216\32\133\31\39\1\4\20\118\2\78\0\108\0\118\0\253\0\158\0\28\0\32\0\134\18\77\35\127\14\244\22\222\22\169\24\13\39\248\0\94\0\110\0\133\0\126\0\7\0\106\23\28\25\246\47\168\46\242\32\105\14\211\7\16\0\75\0\125\0\252\0\193\45\46\32\137\35\233\14\23\19\58\14\77\35\40\25\239\31\255\35\207\22\227\47\236\43\220\18\212\14\139\28\225\14\235\25\32\20\245\30\0\47\24\17\215\43\165\16\116\34\230\18\15\30\145\28\234\42\249\19\66\14\231\14\238\43\141\18\121\15\93\16\79\45\108\15\218\47\41\47\3\48\30\14\152\41\3\19\149\34\214\14\30\32\219\14\219\14\54\49\226\40\8\0\66\24\84\47\101\39\74\43\233\40\88\47\77\43\90\47\65\40\81\43\69\40\93\47\85\43\49\30\245\40\218\13\98\47\249\40\136\16\9\38\253\40\149\14\63\30\205\33\109\47\42\31\79\30\1\41\85\40\4\41\116\47\0\15\7\2\4\0\202\25\93\30\127\25\120\0\78\41\210\13\95\30\97\30\67\18\101\33\29\41\74\2\97\48\32\1\64\41\111\0\197\13\4\34\43\34\2\39\4\39\28\22\148\9\43\0\184\0\118\30\225\0\28\0\70\0\170\48\135\1\184\0\159\0\255\0\100\44\48\23\115\44\156\43\132\48\112\41\0\0\120\0\240\0\71\0\174\29\97\22\243\0\16\31\202\49\241\14\90\0\11\0\123\0\152\44\31\22\129\9\188\0\128\22\50\1\139\49\201\47\191\48\191\26\156\31\43\15\23\19\127\14\206\24\151\31\254\30\89\0\109\0\127\0\111\7\150\5\85\0\93\2\42\47\29\43\165\16\29\35\118\14\48\47\212\18\58\14\54\49\134\18\91\45\15\47\161\26\90\24\126\34\93\16\218\30\31\35\151\19\135\14\54\49\189\35\53\14\37\14\127\14\121\15\177\23\193\22\155\15\220\22\85\23\116\45\233\14\190\25\15\15\60\35\161\39\7\31\98\29\76\27\103\18\229\40\124\45\127\33\16\48\18\48\129\45\201\41\22\48\132\45\142\33\134\45\146\33\28\48\28\33\138\45\14\44\32\48\143\45\17\44\190\29\36\48\148\45\225\41\40\48\152\45\42\48\28\44\156\45\46\48\159\45\5\0\161\45\181\33\50\48\186\33\39\44\53\48\169\45\55\48\193\33\57\48\46\44\252\41\176\45\178\45\180\45\255\41\51\44\183\45\3\42\185\45\209\33\187\45\189\33\190\45\6\1\79\48\218\33\220\33\82\48\129\0\18\42\51\2\20\42\22\42\89\40\150\28\206\18\112\43\54\41\112\0\2\34\52\42\116\0\29\28\24\17\83\44\61\14\26\41\129\15\107\2\110\0\33\41\41\18\230\18\43\23\2\0\34\0\106\0\67\46\128\0\114\0\134\8\146\30\20\46\122\48\22\46\126\48\0\0\25\46\53\42\28\46\55\42\169\47\134\48\121\44\121\17\203\0\186\0\139\0\89\31\128\0\153\0\198\0\144\50\19\22\96\0\15\39\32\22\68\31\195\0\56\0\72\0\89\31\0\0\135\0\21\0\253\0\117\41\49\1\185\28\184\11\89\0\163\0\213\0\151\30\155\1\224\0\40\0\128\0\63\0\91\22\12\18\233\49\178\50\107\46\179\50\189\48\69\15\224\13\224\31\36\26\111\14\58\14\212\14\93\34\9\0\31\0\9\0\83\0\184\0\119\0\48\0\3\0\252\16\245\32\185\41\182\26\67\32\127\14\170\41\133\0\120\0\5\0\81\0\117\0\176\8\56\0\156\31\197\40\77\32\230\32\132\46\186\46\254\43\122\0\86\0\39\0\122\0\55\0\35\0\25\0\185\23\127\14\101\42\250\19\29\32\120\20\57\26\40\25\23\17\128\15\125\20\79\0\61\0\205\0\69\0\249\0\52\0\85\0\72\0\51\28\165\16\2\10\53\43\17\47\37\14\142\15\13\0\96\0\51\0\217\0\118\0\175\14\225\19\166\46\135\14\221\47\61\35\24\1\90\24\195\0\32\0\7\0\123\0\54\0\155\0\153\0\79\0\185\23\180\31\128\15\168\20\216\18\84\35\192\44\171\16\121\15\132\26\187\23\214\48\206\0\137\0\228\26\121\0\45\0\219\0\34\0\225\19\14\1\190\18\85\23\198\31\17\47\114\23\100\0\154\0\9\0\74\0\230\0\195\0\203\5\143\34\219\35\56\14\220\15\43\15\245\19\125\49\118\14\155\15\104\23\159\0\252\0\133\0\72\0\152\0\8\0\155\0\7\0\216\22\245\19\5\16\212\16\78\35\156\41\0\0\207\0\1\0\252\0\118\0\189\0\64\0\165\0\124\11\207\43\254\26\102\49\16\15\23\50\69\14\50\24\197\13\23\17\121\15\193\25\196\28\92\14\247\18\65\43\155\15\81\29\175\15\211\13\81\14\169\24\202\24\168\16\119\23\60\43\237\49\12\19\26\51\17\1\6\17\32\20\203\19\116\14\168\46\66\14\237\16\245\19\207\44\161\26\193\25\209\40\233\14\219\16\232\19\2\10\135\49\214\14\51\24\17\47\214\48\246\43\13\0\167\44\99\29\192\41\231\41\126\45\252\43\128\45\199\41\130\45\42\50\24\48\133\45\144\33\135\45\10\44\48\50\30\48\140\45\155\33\52\50\34\48\55\50\22\44\39\48\24\44\26\44\230\41\155\45\30\44\63\50\225\41\66\50\163\45\241\41\69\50\167\45\71\50\138\37\73\50\249\41\76\50\175\45\1\0\177\45\179\45\254\41\49\36\82\50\204\33\84\50\66\48\186\45\8\42\149\45\136\29\61\44\90\50\82\36\155\36\69\44\12\42\236\14\81\48\222\33\83\48\97\50\85\48\99\50\0\15\80\44\65\39\49\1\233\33\49\18\104\40\16\1\31\34\135\43\50\0\107\0\165\0\85\22\152\14\251\0\184\0\83\0\67\31\129\50\105\0\108\44\46\42\125\48\111\44\51\42\135\50\155\43\131\48\79\31\118\44\110\2\32\46\60\42\186\14\68\0\68\0\157\47\49\1\222\0\58\0\240\51\68\31\22\39\24\39\129\22\223\0\215\0\15\0\152\47\128\0\226\0\9\0\54\0\56\38\169\2\73\22\121\1\93\0\114\0\39\0\204\0\129\30\192\0\53\0\63\0\140\40\32\0\184\0\172\0\201\0\140\40\128\0\171\0\62\0\31\0\108\22\166\44\181\50\234\49\182\50\180\50\29\52\86\25\224\13\164\40\165\16\212\14\249\19\72\51\1\48\0\0\145\0\149\0\239\12\114\0\226\0\43\8\206\18\86\32\15\15\117\14\245\39\196\32\168\46\219\14\48\29\250\26\90\24\226\0\44\0\94\0\115\0\207\0\99\0\14\0\115\0\185\18\232\32\168\46\174\15\40\35\209\13\162\41\33\29\159\19\0\0\146\0\88\0\90\0\119\0\91\0\234\0\250\0\4\0\38\43\164\32\11\45\5\16\232\19\174\15\81\14\27\43\25\47\250\19\211\35\179\35\12\1\137\0\171\5\42\0\190\0\192\0\253\0\97\0\196\28\25\29\56\14\178\26\160\41\242\44\13\17\169\24\130\0\141\0\74\42\178\0\52\0\11\35\225\19\159\35\146\28\15\40\135\14\148\46\100\24\76\0\43\0\140\0\124\0\242\0\124\19\71\0\178\42\20\30\7\51\213\32\56\23\223\43\95\48\91\51\42\29\221\40\217\13\188\0\5\0\53\0\42\0\21\0\176\0\18\0\18\0\133\25\111\46\13\17\40\15\193\19\196\16\202\0\140\0\35\0\216\0\221\0\17\8\36\20\118\14\146\31\84\23\135\19\251\22\74\51\140\0\218\0\38\0\45\0\187\0\108\0\242\0\162\34\127\49\90\32\253\24\47\1\56\14\238\28\76\47\150\25\133\15\113\0\129\0\85\0\119\0\179\0\252\0\200\1\106\16\223\20\120\20\104\19\56\14\56\14\23\17\81\35\225\32\202\20\152\41\182\34\151\31\202\43\171\16\69\14\30\1\149\22\52\25\38\43\95\14\24\26\64\16\165\16\219\16\220\15\219\16\244\32\191\20\65\43\45\29\239\47\201\32\209\16\81\14\209\16\69\14\37\19\86\45\201\52\29\15\127\14\89\52\67\32\218\32\151\31\228\23\165\52\127\14\93\34\134\51\186\48\137\51\249\43\139\51\251\43\17\48\142\51\0\44\144\51\16\14\23\48\140\33\147\51\208\41\149\51\47\50\212\41\152\33\31\48\154\51\155\14\144\45\54\50\147\45\158\51\226\41\151\45\161\51\43\48\62\50\32\44\64\50\49\48\169\51\243\41\172\51\246\41\192\33\175\51\174\45\60\48\122\32\62\48\83\50\65\48\5\42\86\50\188\51\70\48\213\33\62\44\5\1\64\44\97\10\67\44\69\44\29\38\163\1\196\51\3\0\198\51\14\37\200\51\155\17\202\51\87\48\66\2\220\23\109\14\139\41\0\34\142\47\35\1\151\2\105\2\3\34\213\35\136\30\15\1\102\48\122\40\59\41\112\41\224\0\191\0\15\0\65\0\140\40\160\0\143\0\85\0\202\0\207\38\121\48\224\51\123\48\223\20\110\44\24\46\229\51\27\46\231\51\183\39\39\34\139\50\33\46\50\1\246\0\195\0\36\10\168\2\164\0\177\0\196\0\97\53\152\14\37\39\39\39\28\22\229\37\163\0\241\51\12\1\121\0\0\38\218\39\152\14\116\0\16\0\194\0\217\51\110\22\132\0\91\0\65\0\10\39\121\1\78\0\17\0\108\0\116\48\192\0\142\0\117\0\10\0\226\49\12\1\150\0\39\0\65\0\162\48\192\0\98\0\118\8\131\24\50\1\244\52\30\52\27\52\146\53\26\52\181\50\224\13\130\28\14\27\50\19\72\19\16\47\174\15\240\16\206\46\27\45\52\35\52\25\192\0\25\0\25\0\66\0\34\0\243\0\242\0\63\0\143\41\179\19\237\34\163\18\211\13\121\51\148\15\56\28\135\14\17\20\216\32\231\14\165\35\217\0\206\5\53\0\40\0\186\0\167\0\51\0\19\35\37\19\37\40\39\1\164\32\237\25\242\22\44\47\30\14\188\24\58\14\10\40\250\0\206\0\95\0\26\0\205\0\124\0\149\0\43\0\122\31\37\14\25\14\88\32\197\13\241\43\135\14\232\19\128\15\58\14\219\14\144\15\151\31\224\25\162\0\132\0\231\0\224\45\218\0\61\0\178\37\106\31\211\44\33\1\111\45\136\20\12\1\168\0\102\0\90\0\40\0\114\0\26\0\175\1\66\24\220\15\209\16\44\29\232\16\65\43\207\28\81\0\193\0\240\0\69\0\7\0\225\0\9\0\53\0\211\32\127\51\0\48\133\52\90\39\129\41\224\30\251\49\209\13\164\52\121\15\248\18\81\0\190\0\75\0\88\0\104\0\65\0\215\0\124\0\182\46\165\16\56\14\245\19\29\35\12\1\227\0\106\0\54\0\59\46\120\0\99\21\185\23\233\14\80\15\216\23\65\43\231\50\183\40\17\1\252\48\30\14\219\14\150\20\178\43\191\0\190\0\111\0\18\0\47\0\250\0\126\0\131\19\202\20\242\39\237\25\55\35\254\0\121\0\26\0\1\0\95\0\60\0\92\0\49\0\93\2\93\19\41\43\33\29\26\40\65\43\39\26\105\12\23\19\173\46\0\0\206\18\111\28\127\14\18\40\160\53\209\13\163\18\25\14\69\24\226\47\195\28\5\54\30\50\137\25\24\17\155\15\220\15\145\35\136\20\50\16\126\34\7\54\42\32\178\53\18\17\25\14\37\14\248\18\231\43\15\17\38\40\229\14\30\1\37\19\95\14\30\1\235\32\22\49\235\25\70\16\95\39\236\14\16\0\73\28\10\14\125\33\247\52\38\50\250\52\20\48\131\45\146\51\44\50\148\51\46\50\122\17\29\48\5\53\153\51\142\45\8\53\53\50\19\44\223\41\38\48\13\53\169\29\59\50\27\44\172\33\164\51\18\53\237\41\162\45\36\44\184\33\170\51\52\48\245\41\170\45\25\53\173\45\251\41\177\51\179\51\80\50\182\51\182\45\184\51\32\53\56\44\34\53\69\48\5\0\190\51\76\1\192\51\193\45\105\17\67\44\78\48\198\45\141\27\57\1\94\27\202\45\116\1\192\27\182\1\196\51\5\0\48\53\75\44\84\48\211\45\89\40\126\34\4\0\193\22\105\30\120\2\97\40\148\15\122\47\224\51\120\2\129\14\119\0\66\14\106\0\64\14\83\44\96\48\107\50\29\28\43\34\21\0\49\0\135\0\2\52\121\1\244\0\154\0\198\0\161\30\223\51\225\51\124\48\85\53\117\2\134\50\88\53\167\47\137\50\211\49\57\42\135\48\129\16\1\0\148\0\23\0\86\46\129\16\113\0\237\0\239\54\68\31\54\39\56\39\97\41\93\0\248\0\150\23\118\30\51\0\56\8\55\46\153\43\121\17\15\0\67\0\166\0\175\39\168\2\218\0\242\0\190\0\179\0\129\30\65\0\255\0\154\0\174\47\160\0\137\0\203\0\109\0\47\23\241\14\197\0\206\0\238\0\255\54\0\0\242\0\238\0\147\0\162\0\68\31\244\0\114\0\161\0\5\39\56\33\86\3\222\0\118\30\115\0\142\0\170\0\118\53\0\0\80\0\93\0\196\0\113\0\70\29\122\54\147\53\145\53\148\53\52\55\54\55\31\52\255\15\195\43\220\16\12\25\40\29\220\52\44\15\40\15\87\34\112\45\17\0\207\0\254\0\106\14\246\0\227\0\118\0\206\18\80\15\212\14\211\13\58\14\240\42\155\19\183\52\55\35\246\0\191\0\65\0\95\0\221\12\252\0\69\0\93\19\23\17\27\29\169\40\196\31\90\29\40\25\25\49\236\0\114\0\154\0\80\0\185\0\193\11\10\0\106\23\45\54\237\25\245\32\17\47\199\41\169\0\180\0\93\0\158\0\91\0\38\0\171\9\119\15\255\44\168\41\10\48\210\16\93\29\252\0\153\0\10\0\9\0\124\0\83\0\171\0\119\0\93\19\109\51\51\19\222\22\4\47\209\13\0\35\123\23\126\23\47\1\24\27\103\0\185\0\203\0\41\0\251\0\157\0\22\8\206\18\40\15\61\23\45\40\30\14\118\14\226\44\169\40\46\25\239\0\163\0\55\0\75\0\51\0\250\0\99\0\134\18\41\51\56\14\17\50\17\1\54\49\193\0\121\0\65\0\27\0\57\0\153\0\180\0\68\0\206\18\23\17\24\32\90\54\86\24\30\43\95\14\89\52\24\27\74\0\52\0\37\0\122\0\18\0\226\0\212\0\13\0\133\25\154\53\161\26\25\14\239\34\238\47\46\0\70\0\143\0\100\27\244\0\60\17\93\2\209\40\214\16\214\14\25\14\188\50\175\15\212\14\71\51\15\15\232\34\220\16\127\14\93\29\90\48\56\14\90\49\99\49\155\41\205\20\209\13\32\14\37\19\209\35\133\52\25\49\156\31\142\20\132\49\216\52\235\25\251\50\171\41\103\34\30\50\23\17\163\52\156\19\162\31\113\45\219\14\169\19\253\24\209\16\242\52\119\54\33\50\14\48\125\54\195\41\127\54\252\52\187\1\254\52\205\41\131\54\1\53\133\54\211\41\12\44\136\54\154\33\138\54\157\33\145\45\35\48\11\53\143\54\58\50\15\53\61\50\149\54\158\45\166\51\152\54\68\50\22\53\157\54\174\51\160\54\59\48\198\33\178\51\79\50\181\51\133\16\183\51\53\44\185\51\33\53\68\48\88\50\191\51\45\53\217\33\190\54\50\53\98\50\142\39\66\2\90\0\195\13\148\39\117\0\111\14\109\0\16\1\105\12\134\14\137\2\12\41\218\22\41\16\159\39\41\16\108\50\44\18\82\38\27\41\188\49\84\44\132\43\234\33\16\28\82\18\251\24\31\1\63\13\63\56\97\48\119\40\121\40\104\48\17\1\43\41\71\2\102\0\30\16\64\0\237\0\143\0\121\53\22\22\144\0\51\0\72\0\222\51\81\53\225\54\84\53\23\46\228\54\87\53\129\48\168\47\233\54\92\53\237\51\110\22\35\48\56\0\38\55\123\17\81\0\142\0\113\56\118\30\74\39\76\39\68\31\127\0\9\0\230\0\82\42\254\0\43\0\106\0\20\55\50\1\80\22\227\49\10\0\147\0\255\54\32\0\146\4\90\0\142\53\167\25\55\55\51\55\28\52\144\56\143\56\9\14\174\44\49\1\102\28\13\17\234\42\44\43\237\25\241\42\12\1\10\0\193\0\234\0\109\0\248\0\56\0\144\1\185\23\23\17\23\19\249\19\216\13\221\55\183\55\20\41\214\14\147\46\215\13\217\13\112\0\34\0\30\0\61\0\50\0\10\0\169\0\44\0\193\22\213\23\204\50\237\34\144\34\232\50\140\28\24\17\215\53\45\1\169\24\75\0\121\0\241\0\43\0\226\16\133\0\17\0\203\19\244\25\192\53\184\26\69\14\153\46\221\52\128\15\233\14\32\20\175\31\42\0\69\0\182\0\83\0\165\0\34\9\177\52\84\23\141\28\229\48\14\1\38\35\39\40\17\47\199\23\200\0\25\0\144\0\1\0\225\0\227\0\145\0\61\0\252\16\226\31\233\48\212\13\100\42\172\26\214\48\50\0\6\0\239\0\108\0\158\0\229\46\58\0\252\31\143\25\236\25\185\25\146\28\58\14\255\22\45\15\45\32\61\2\20\0\198\0\69\0\100\0\146\0\233\0\42\0\90\48\232\19\188\24\121\15\27\25\122\42\149\41\35\49\13\17\37\19\153\34\226\0\194\0\164\0\97\0\55\0\181\0\38\0\19\0\106\23\100\51\37\19\158\35\63\23\0\0\217\0\178\6\70\0\165\0\176\0\215\0\118\0\80\44\245\19\168\24\146\41\212\14\199\23\36\42\86\0\125\0\24\0\225\0\198\0\24\0\191\32\253\46\146\28\33\57\216\32\241\16\194\23\237\25\54\47\225\35\72\47\15\30\250\26\216\13\35\52\222\28\233\14\24\51\220\18\138\19\105\23\53\26\253\24\209\42\49\43\44\25\209\15\144\34\238\55\161\26\71\52\4\32\0\0\3\36\142\56\53\55\145\56\91\57\146\56\93\57\95\57\90\57\97\57\92\57\98\57\94\57\100\57\96\57\99\57\104\57\101\57\105\57\103\57\106\57\109\57\108\57\103\57\133\25\245\30\242\23\165\34\105\12\19\50\47\45\220\16\96\49\8\0\159\0\168\0\3\4\243\10\37\15\49\1\219\14\104\42\78\57\107\52\30\14\234\35\108\23\12\1\198\0\125\0\106\0\53\0\10\18\78\0\50\0\224\31\209\16\247\35\144\46\221\16\57\0\48\0\37\0\183\0\236\0\48\0\41\0\216\22\130\41\49\16\120\20\1\32\47\1\170\41\246\0\121\0\242\0\108\0\90\0\83\0\250\0\3\0\232\10\158\41\1\35\191\53\33\29\234\48\128\26\69\52\239\15\127\14\37\19\238\44\12\1\170\0\249\5\91\0\127\0\200\0\68\0\51\0\80\44\222\23\56\14\107\33\74\24\207\30\136\0\112\0\132\0\95\0\30\0\226\0\181\0\107\0\209\40\87\52\132\57\178\52\37\19\242\47\92\14\23\49\216\31\58\0\48\0\151\0\55\0\49\4\203\0\192\55\57\57\53\14\239\49\157\55\29\15\223\0\12\0\107\0\133\0\231\0\53\0\185\18\45\35\44\15\135\19\160\24\111\14\53\14\154\52\0\0\148\0\157\0\195\0\122\0\90\0\48\0\217\0\82\0\185\23\100\45\218\22\247\48\44\15\163\18\37\19\228\52\164\42\145\28\169\24\39\0\166\0\151\0\52\0\68\0\152\0\173\0\123\0\21\21\92\14\135\19\27\14\68\47\172\26\4\40\120\20\211\13\197\43\111\54\61\45\67\32\124\23\32\20\136\0\10\0\165\0\82\0\179\0\92\0\206\0\53\0\209\40\97\19\77\47\151\31\116\33\177\44\161\26\232\47\31\25\55\35\73\0\28\0\126\0\37\0\234\0\13\0\168\0\88\0\34\35\206\30\141\18\245\19\30\25\169\40\192\24\232\19\167\26\121\42\196\18\51\44\10\0\88\0\210\0\20\0\213\0\96\0\209\40\109\51\192\43\5\16\188\43\85\23\205\28\225\23\172\26\2\40\217\13\38\0\61\0\73\0\120\0\107\0\172\0\250\0\100\0\178\42\201\28\17\1\83\32\85\23\190\40\216\32\41\45\108\15\25\35\210\35\32\20\80\0\3\0\70\0\105\0\88\0\254\0\32\0\74\0\104\14\52\24\18\17\216\13\240\55\138\0\249\46\102\0\8\0\171\0\133\0\52\0\143\41\27\35\235\25\118\14\163\26\185\46\171\19\155\19\222\25\222\28\224\25\26\0\249\0\172\0\60\0\166\0\69\0\126\0\26\0\130\28\219\16\97\51\46\16\214\14\41\1\46\54\108\15\245\48\203\43\197\13\129\31\134\41\203\25\231\0\16\0\4\0\167\0\231\0\27\0\53\0\240\47\128\15\168\56\17\1\209\16\254\49\61\45\232\30\217\13\202\0\33\54\125\0\46\0\90\0\172\0\76\0\206\18\92\14\94\32\108\23\196\24\40\25\115\54\109\42\150\25\81\14\17\57\156\15\254\0\125\0\11\0\237\0\95\0\196\0\98\0\36\20\224\56\193\53\225\56\35\43\135\57\0\0\252\0\149\0\237\0\121\0\139\0\69\0\200\0\95\0\80\44\206\56\108\23\32\14\32\14\220\53\217\13\215\0\210\29\44\0\48\26\168\0\107\0\116\19\156\31\26\45\1\35\152\19\234\52\217\13\202\24\37\19\168\26\12\19\46\47\105\12\47\1\32\14\73\52\90\48\166\58\6\48\235\18\40\25\216\55\248\53\202\30\72\32\212\13\169\24\185\23\118\33\143\28\167\20\143\28\217\34\214\23\253\24\4\43\145\58\50\43\241\47\98\35\37\14\241\31\39\1\163\18\35\19\17\47\249\58\248\50\102\25\98\35\233\14\121\15\143\22\210\16\168\55\26\15\193\25\143\41\245\53\172\26\118\14\54\51\110\49\33\29\92\29\187\23\241\30\142\15\80\32\122\28\15\15\31\25\110\34\226\48\145\28\58\14\119\46\51\43\24\40\237\25\209\16\25\14\78\29\80\55\40\25\219\16\15\29\11\48\90\30\9\59\13\17\41\1\118\14\75\57\38\16\15\58\119\23\86\29\67\32\169\55\217\13\240\47\109\28\213\52\170\56\62\35\67\45\86\56\151\58\17\1\244\30\49\1\184\40\169\40\91\16\17\1\9\49\24\19\12\20\105\14\56\14\95\14\180\41\135\14\243\18\94\49\151\31\204\22\113\31\111\57\102\57\99\59\107\57\100\59\110\57\91\42\133\25\90\48\41\1\62\47\243\47\214\14\133\42\227\30\251\47\171\16\163\18\216\14\196\40\197\40\47\30\53\0\146\0\25\0\16\0\45\5\71\0\19\35\168\40\237\16\116\45\59\19\180\26\212\31\222\28\23\17\210\52\181\44\0\0\241\0\40\0\90\0\5\0\217\0\109\0\84\0\38\0\196\28\233\14\127\14\115\34\230\32\47\52\210\42\77\59\216\32\247\53\217\13\133\0\171\0\206\0\16\0\230\0\183\0\39\0\97\0\49\49\214\43\117\59\108\23\177\23\36\0\62\0\167\0\13\0\246\0\32\10\58\0\75\34\197\28\213\32\184\34\254\35\108\15\215\50\250\26\229\52\230\32\84\45\105\12\149\26\145\55\205\0\82\0\129\10\72\0\34\57\248\24\180\44\167\16\26\15\240\30\155\19\177\19\24\19\170\41\183\0\32\0\183\0\34\0\13\0\218\0\171\0\77\0\83\52\131\58\40\25\60\45\145\28\55\51\143\28\224\40\239\56\15\15\254\30\171\0\67\0\46\51\12\0\132\0\156\0\7\0\203\19\209\16\243\18\230\58\233\14\36\58\24\17\52\47\155\19\12\1\216\0\113\0\160\0\84\0\203\0\116\0\192\0\74\5\117\35\108\15\118\52\136\25\24\27\122\0\192\0\241\0\35\0\10\0\213\0\111\0\12\0\231\43\249\19\81\14\166\40\115\46\102\54\58\14\27\14\83\35\237\34\35\52\74\51\198\0\92\0\134\0\100\0\167\0\83\1\54\0\205\35\46\35\108\59\43\15\78\26\209\42\5\35\145\28\196\11\124\0\90\0\9\0\12\0\44\0\122\0\10\0\193\22\30\1\169\58\155\15\167\34\24\1\232\19\128\58\116\34\79\0\141\0\205\0\34\0\143\0\52\0\200\0\250\42\85\39\37\14\92\49\155\19\92\14\2\23\216\32\231\19\13\17\219\14\36\19\169\34\0\0\81\0\212\59\24\0\189\0\88\0\129\0\109\0\225\19\108\35\235\25\226\23\75\59\217\13\137\0\36\0\5\0\42\0\36\0\161\0\44\0\63\0\34\35\144\25\65\43\234\42\184\25\108\15\48\45\224\48\149\46\119\23\247\55\154\0\135\0\218\0\47\0\217\0\49\0\193\0\44\0\93\19\244\47\137\55\213\34\146\41\208\24\108\23\135\52\163\18\206\22\205\0\250\0\110\0\30\0\222\0\105\22\72\6\116\28\123\14\228\50\55\43\53\59\235\25\92\14\80\15\68\59\12\1\243\0\104\6\91\0\129\42\215\0\31\0\36\20\166\58\150\46\161\35\27\14\130\15\100\24\181\0\43\0\171\0\125\0\140\0\44\0\111\0\126\0\205\35\247\23\226\55\44\15\43\15\47\1\212\44\135\14\30\1\252\59\58\23\96\14\111\9\79\0\226\26\186\0\124\0\38\16\136\25\67\32\231\23\247\50\123\35\149\25\240\59\39\0\200\0\61\0\154\0\168\0\159\0\224\19\254\26\5\43\250\19\189\18\214\32\95\32\244\0\231\0\46\0\102\0\45\0\176\0\171\0\126\0\76\45\40\25\206\47\184\31\25\15\0\32\237\52\188\24\218\59\171\16\174\26\151\0\189\0\57\0\150\0\71\0\155\0\51\0\155\22\126\34\113\54\127\23\171\15\127\23\55\35\247\24\32\14\221\53\113\34\156\53\86\59\56\35\128\57\108\49\235\18\125\49\47\1\95\14\255\57\172\26\114\23\66\24\18\58\141\18\177\60\133\52\241\22\64\32\7\59\35\32\195\44\28\59\177\26\55\43\222\42\109\45\24\1\81\14\10\40\80\44\212\14\81\14\69\57\215\32\41\32\76\24\194\43\104\18\216\53\19\57\230\32\176\23\5\61\24\17\66\14\238\46\17\1\73\52\202\25\23\17\62\57\97\24\65\43\149\58\171\16\40\15\74\58\244\44\194\52\85\45\43\43\177\43\108\15\212\40\120\49\217\13\134\18\146\18\63\45\65\43\12\1\171\57\217\22\161\60\47\60\65\43\23\19\163\18\201\50\220\16\85\28\31\29\253\24\249\47\12\1\237\16\219\16\145\22\45\15\228\20\146\41\233\14\208\20\31\50\164\33\3\0\91\40\236\20\49\1\165\0\159\40\244\14\6\36\78\61\87\2\65\29\216\1\76\16\66\2\10\15\202\24\12\1\69\33\154\32\73\29\49\1\19\35\37\52\133\52\232\55\30\50\198\58\119\23\93\51\254\58\134\31\38\52\209\40\51\29\63\32\111\14\245\15\165\16\2\16\32\59\210\16\192\60\169\24\5\15\11\0\160\1\209\40\9\21\75\1\120\29\122\29\228\0\1\21\0\37\255\25\51\53\81\17\220\13\25\36\41\36\14\36\44\36\31\36\34\21\48\36\35\36\6\0\20\31\95\21\124\1\192\29\90\0\134\61\121\1\28\10\17\36\109\29\136\37\130\29\97\21\81\1\74\36\135\41\107\36\128\0\85\17\2\2\76\27\63\2\237\1\136\1\2\2\81\27\122\17\23\16\83\39\6\1\2\21\191\14\7\2\134\2\206\1\201\14\31\49\147\32\11\24\141\40\92\41\129\22\164\39\218\54\96\0\58\38\60\38\184\17\216\44\49\1\41\1\216\13\43\54\178\52\122\52\41\14\12\48\227\40\248\43\85\47\14\31\143\49\255\25\145\49\64\40\238\40\148\49\83\43\243\40\152\49\87\43\115\39\89\43\48\36\252\40\61\30\41\31\1\0\112\47\114\47\97\43\141\39\2\26\7\41\9\41\11\41\82\2\13\41\98\40\16\41\43\1\19\41\205\13\21\41\56\56\97\48\58\56\27\41\24\28\30\41\32\41\34\41\79\2\18\41\78\15\38\41\45\1\40\41\94\48\44\41\92\16\46\41\82\14\49\41\110\0\51\41\32\0\53\41\55\41\42\18\58\41\86\24\61\41\86\44\141\47\2\34\67\18\113\14\69\41\123\2\81\2\72\41\36\1\74\41\215\52\105\12\77\41\150\39\80\41\248\33\100\2\18\41\104\0\85\41\116\59\133\28\46\41\149\47\181\61\168\2\4\0\95\41\46\46\0\33\94\0\99\41\152\43\63\8\104\41\62\46\131\56\108\41\231\54\116\44\233\54\123\17\114\41\116\41\28\22\224\0\119\41\121\41\222\20\102\59\91\57\225\19\47\1\47\1\227\23\18\17\19\43\93\16\25\49\57\0\95\0\11\0\56\0\29\0\177\0\185\0\90\0\93\2\130\28\197\31\147\26\40\25\183\20\251\57\141\18\249\19\69\14\35\61\83\57\136\59\106\23\54\19\73\59\198\59\240\55\178\42\29\19\240\34\146\46\212\13\17\29\17\1\230\25\67\32\118\14\141\25\233\47\197\13\88\49\39\43\250\26\181\40\161\35\237\16\95\14\149\24\236\30\38\27\33\1\147\59\25\61\20\40\115\33\184\52\197\61\97\39\199\61\141\49\89\20\87\47\203\61\63\40\237\40\108\39\242\40\94\47\49\30\96\47\154\49\212\61\99\47\117\39\102\47\142\36\121\39\105\47\107\47\67\30\127\39\71\30\1\0\130\39\3\0\132\39\60\1\134\39\165\49\95\43\3\41\124\1\5\41\2\26\143\39\238\15\146\39\148\39\26\41\33\28\112\30\28\14\154\39\42\41\152\42\54\24\158\39\34\1\63\41\75\18\84\38\183\61\166\39\168\39\207\49\12\1\172\39\174\39\176\39\178\39\151\30\209\49\232\51\184\39\112\41\219\5\188\39\152\43\128\0\192\39\194\39\196\39\198\39\41\62\202\39\162\48\32\0\206\39\208\39\123\17\210\39\212\39\68\31\215\39\217\39\118\30\220\39\222\39\97\41\225\39\227\39\28\22\230\39\232\39\70\29\235\39\58\62\223\62\130\18\86\15\69\14\209\16\245\19\101\25\55\35\137\0\152\0\118\12\182\0\87\0\165\0\112\0\18\35\237\60\176\57\69\32\214\14\22\19\91\62\18\17\54\51\120\20\193\18\219\47\25\49\206\18\51\29\108\15\249\19\241\35\9\60\251\24\11\48\231\43\4\17\210\16\130\47\126\23\75\47\241\52\152\52\222\28\214\48\106\23\86\51\27\14\242\32\191\61\61\43\12\1\65\49\4\59\39\1\228\20\60\43\241\43\217\43\100\58\72\61\166\1\70\43\123\54\58\40\201\61\61\40\76\43\130\62\91\47\207\61\150\49\197\0\86\43\97\47\138\62\156\49\79\40\109\47\93\43\155\62\113\47\167\49\158\62\169\49\224\27\66\2\21\21\94\40\127\47\213\35\110\43\100\40\167\62\209\51\105\40\11\41\39\18\108\40\110\40\208\13\112\40\60\18\115\40\117\40\101\0\83\56\103\48\93\18\125\40\127\40\116\17\186\61\62\46\128\0\132\40\134\40\150\50\137\40\139\40\51\22\143\40\145\40\65\22\86\6\188\62\90\53\153\40\155\40\157\40\70\29\164\43\224\62\187\48\93\19\240\44\209\13\179\58\168\46\37\35\110\59\12\19\128\41\38\49\64\21\113\0\126\0\72\0\20\0\147\39\126\17\49\1\225\19\108\33\233\48\56\14\176\44\128\26\90\24\140\25\238\59\219\14\114\25\214\32\216\13\205\42\15\15\248\18\205\35\163\26\24\1\241\35\22\50\222\22\135\28\250\26\249\19\37\32\251\56\66\57\21\29\17\47\101\49\136\52\155\19\33\25\202\25\216\13\228\43\233\55\135\14\8\60\13\17\188\24\95\14\121\15\80\15\199\23\71\16\92\1\9\0\104\14\47\17\93\1\67\1\172\54\232\20\60\17\2\0\64\40\70\17\72\1\77\17\53\21\52\2\146\17\38\56\154\34\151\29\220\0\76\30\89\40\117\2\208\38\242\27\27\18\29\18\31\18\209\13\83\0\243\33\105\0\245\33\40\34\19\18\21\18\230\54\35\34\110\41\117\2\23\14\0\30\34\34\37\0\115\0\81\35\45\42\69\33\39\18\130\48\70\33\169\2\104\14\27\52\168\2\143\41\172\43\27\40\41\1\107\34\209\13\155\15\166\18\6\63\241\46\246\35\215\32\12\1\178\0\241\0\215\0\77\5\251\34\127\0\76\45\81\54\245\62\30\1\51\32\150\42\143\28\93\52\41\40\38\59\222\53\24\27\168\0\37\0\139\0\74\63\22\54\11\0\177\59\43\15\136\25\40\25\108\54\5\19\17\47\126\28\202\30\67\32\203\46\121\15\224\25\94\0\191\9\60\0\158\0\58\0\54\0\240\47\184\28\205\16\16\50\207\40\72\61\151\11\2\0\16\0\6\36\9\14\5\33\7\36\131\29\61\25\176\18\52\30\244\14\75\20\1\0\122\16\153\1\220\13\124\36\79\36\4\36\88\17\123\25\150\14\100\0\106\1\249\1\151\14\9\0\166\29\130\0\215\29\1\0\99\46\134\2\223\1\70\17\22\38\40\33\76\30\161\61\167\2\51\27\190\14\62\27\63\17\80\27\35\21\96\17\72\11\244\9\24\38\203\25\106\1\34\0\184\14\97\10\133\54\173\28\106\1\96\0\203\29\195\27\186\27\70\0\131\0\193\0\6\0\85\20\131\0\100\27\254\17\178\27\6\0\93\64\95\64\77\0\144\1\6\0\140\0\145\29\6\0\134\0\172\17\4\0\137\0\128\0\98\64\172\29\140\6\191\1\70\0\144\1\113\64\5\22\249\17\2\0\252\0\252\17\92\1\50\2\28\48\59\27\1\0\90\0\129\1\184\36\154\0\134\64\110\1\24\0\192\0\213\22\41\17\30\37\138\1\204\14\172\54\123\17\146\27\142\11\53\1\155\1\163\21\118\16\234\36\128\0\7\0\145\64\141\0\145\29\89\17\119\27\190\63\179\61\149\32\205\14\191\0\14\18\126\20\158\2\13\15\95\0\82\2\4\30\76\2\155\22\95\0\95\0\29\41\0\34\114\14\153\39\219\63\84\38\86\38\88\38\61\30\233\35\128\60\241\23\164\42\250\26\228\44\88\39\145\28\157\63\91\54\148\59\24\17\234\16\11\48\5\15\108\47\134\30\9\21\133\24\180\1\100\17\122\54\169\21\37\36\51\2\0\15\87\16\208\21\206\26\168\2\126\34\19\50\197\13\47\1\100\54\169\40\77\54\204\38\57\0\24\6\240\0\119\0\107\0\185\23\85\29\143\28\84\28\223\56\190\56\231\14\157\53\248\60\24\17\216\58\156\59\220\0\33\0\104\0\134\0\3\4\71\6\12\40\231\14\112\33\110\34\220\32\108\61\108\23\16\40\24\17\12\1\188\0\111\0\39\0\74\0\84\0\63\0\26\0\44\0\10\15\34\35\48\29\114\49\236\25\81\60\12\19\69\16\34\52\84\23\211\13\177\53\82\29\21\21\121\15\237\16\212\14\142\58\20\27\236\25\119\51\143\28\170\46\128\26\23\17\228\35\136\59\203\19\25\14\43\45\108\23\109\49\209\13\162\18\135\14\43\15\206\22\5\15\75\29\17\0\176\0\166\1\131\32\51\2\32\2\96\21\158\22\85\47\140\0\228\13\118\32\92\37\63\1\43\36\179\1\153\28\216\1\6\0\60\17\146\49\203\61\67\65\5\1\76\0\160\22\64\17\110\16\84\31\217\33\72\27\60\64\101\36\116\17\151\14\238\13\92\1\2\0\10\2\59\27\21\0\76\48\95\0\193\0\48\38\147\21\238\40\198\0\81\65\91\1\176\33\40\21\73\0\93\21\178\14\247\0\127\0\170\29\31\21\155\14\65\65\176\45\81\65\134\29\92\1\129\62\188\33\80\43\68\65\162\49\137\37\87\19\91\1\19\0\149\45\137\0\86\20\178\14\243\0\105\65\0\0\152\1\130\1\50\2\121\32\43\21\63\17\13\22\99\26\176\45\147\14\186\63\145\1\114\65\5\1\237\13\128\0\135\0\190\29\95\21\145\12\53\48\198\1\85\17\100\17\198\1\236\14\139\64\145\65\147\65\149\45\141\0\152\17\185\12\158\61\141\19\135\1\43\21\91\17\110\16\134\0\81\65\101\36\163\1\137\37\223\29\5\1\9\0\150\14\141\19\128\0\235\0\105\65\128\0\33\11\108\1\64\65\219\13\70\21\178\51\111\65\216\17\144\49\38\30\148\21\68\65\84\1\57\1\86\36\24\8\233\22\101\27\148\14\59\27\51\2\124\65\84\1\133\65\64\0\217\33\184\17\162\22\175\14\219\1\240\13\230\0\127\0\57\65\59\65\104\21\254\43\128\65\197\0\31\21\189\1\133\65\165\44\62\20\57\1\137\65\188\65\60\1\16\31\57\1\114\65\180\1\97\21\6\14\84\1\182\1\86\36\147\21\43\21\136\1\140\14\129\0\146\65\118\16\195\33\2\0\205\0\147\17\2\0\67\65\42\44\100\17\140\61\85\17\140\0\37\10\113\47\123\10\3\0\68\36\84\1\73\0\84\1\72\20\58\2\105\65\85\38\31\21\185\65\5\1\187\65\67\65\6\14\231\65\144\49\69\1\5\1\147\0\219\13\24\66\16\66\66\65\139\65\134\29\182\1\203\61\175\14\232\1\100\17\41\3\12\1\226\36\92\37\170\22\240\13\217\0\215\65\63\2\58\65\71\1\60\65\185\14\216\0\105\65\192\0\75\1\130\1\19\0\185\37\113\17\17\66\1\0\122\45\147\14\37\2\203\61\22\66\66\28\145\17\136\1\134\0\129\0\3\36\211\65\217\41\64\0\13\0\128\0\138\0\13\14\3\0\195\33\3\0\80\36\156\56\88\17\53\64\242\24\236\14\57\64\130\0\143\0\133\1\84\66\2\0\57\64\2\0\144\0\60\64\208\14\3\0\148\29\136\57\68\66\89\20\184\14\160\0\129\0\132\65\106\1\241\37\132\17\103\1\5\0\114\1\174\11\24\8\200\0\67\37\32\21\205\0\66\0\195\17\191\36\140\16\128\27\131\17\185\12\195\0\174\11\64\17\9\1\156\0\128\27\34\0\136\17\9\0\114\36\213\37\137\1\111\66\5\0\175\37\114\66\187\29\117\66\119\66\154\17\178\27\77\66\128\27\198\0\125\66\5\0\6\1\203\17\129\66\180\1\131\66\90\61\134\66\107\66\56\25\118\66\5\0\200\0\93\17\159\0\193\0\104\65\195\33\4\0\163\27\4\0\11\33\122\17\9\52\238\1\225\17\154\14\95\65\97\65\166\27\84\36\108\24\110\1\196\17\244\41\197\17\168\36\135\37\14\37\109\1\3\0\163\0\49\1\191\66\149\1\196\0\181\65\223\33\131\65\55\66\180\1\134\65\10\21\152\66\1\24\138\65\19\66\182\17\142\65\169\11\235\13\245\65\121\1\148\65\160\65\148\17\151\65\164\65\121\1\154\65\2\0\156\65\211\66\195\27\159\65\161\65\248\20\152\65\165\65\64\1\154\29\168\65\170\65\43\64\74\50\1\0\144\0\123\10\1\0\176\65\227\66\188\0\12\66\74\17\198\66\224\65\217\33\129\0\49\11\162\22\32\31\5\1\148\14\95\21\4\0\72\44\98\66\34\25\74\31\167\36\17\18\110\5\93\27\66\0\57\1\148\0\211\36\184\14\117\17\137\1\70\0\3\0\151\62\134\0\67\0\33\2\198\0\131\0\198\0\6\0\175\17\187\16\67\2\42\48\117\16\145\17\172\29\181\27\239\1\223\33\132\0\7\0\73\0\195\0\235\13\227\5\126\64\4\38\195\14\240\13\180\0\50\66\243\66\46\2\199\66\201\21\63\17\1\0\165\10\228\65\87\19\19\66\71\12\191\65\146\17\144\65\222\66\213\66\150\65\163\65\153\65\156\14\221\66\158\65\236\14\160\65\125\21\226\66\217\66\188\21\229\66\12\21\66\40\170\65\129\0\165\10\137\37\145\0\237\66\239\66\164\65\172\0\50\66\203\0\43\36\42\17\186\65\66\65\111\65\160\28\144\49\44\64\0\0\204\65\87\20\169\0\12\66\200\0\185\14\108\65\90\67\110\65\55\67\134\37\37\30\115\65\76\67\60\1\150\29\9\1\119\65\56\20\97\67\108\1\28\5\168\37\226\36\156\33\109\65\188\65\19\66\129\0\107\67\18\31\167\65\80\43\58\66\214\33\215\1\114\67\91\1\116\67\0\44\128\65\42\20\240\13\132\65\104\67\229\65\119\39\232\65\241\20\63\66\183\10\5\1\183\10\235\40\148\21\139\65\150\14\165\10\86\36\211\65\72\67\177\63\157\49\92\37\125\65\118\16\169\21\139\38\109\1\101\67\18\21\233\13\69\50\102\16\110\16\86\1\236\65\193\0\49\11\86\36\37\36\236\14\130\1\154\0\12\66\138\67\2\33\48\67\43\21\217\33\238\66\59\25\17\66\68\65\16\31\203\17\208\66\12\21\180\3\2\66\136\0\181\1\179\63\156\65\138\0\172\29\38\42\120\29\127\37\121\1\125\21\2\33\220\29\251\40\102\66\83\65\141\0\205\36\134\0\213\22\91\66\76\48\164\66\48\38\240\13\147\0\181\65\138\67\133\36\122\67\18\66\119\39\49\11\193\67\231\66\111\67\47\17\133\67\2\0\20\0\123\65\125\65\146\10\50\66\224\67\140\67\200\66\70\1\48\36\249\1\53\67\29\66\65\0\249\1\208\66\59\67\67\67\149\65\215\66\63\67\135\1\219\66\66\67\118\16\61\67\70\67\0\68\121\1\166\65\230\66\116\65\6\14\150\29\249\1\137\37\153\61\2\0\73\0\237\66\240\13\135\0\181\65\221\65\178\14\221\1\245\66\251\66\203\66\220\24\110\65\230\65\193\0\250\67\108\67\199\45\119\37\82\36\200\36\106\1\146\29\4\0\175\14\109\1\130\1\189\1\33\66\87\20\121\1\76\0\226\36\1\0\203\67\127\46\182\65\181\1\76\0\66\0\146\29\141\45\232\41\116\17\38\66\84\0\134\27\76\0\18\67\110\64\15\67\17\68\129\0\98\64\95\0\130\0\48\38\74\0\177\36\141\1\2\0\241\37\208\21\134\27\65\0\136\17\141\0\184\27\3\0\220\0\85\65\156\0\106\1\98\0\184\14\254\17\153\45\75\68\12\1\215\67\236\14\89\68\51\2\91\68\186\14\138\1\233\22\72\11\255\17\3\0\99\21\167\21\172\29\140\14\151\62\100\17\53\21\6\0\97\0\155\37\48\38\159\14\134\27\76\2\3\18\206\64\192\0\119\0\12\66\207\0\63\65\184\67\207\65\46\17\233\37\1\24\143\65\210\66\190\29\128\16\109\32\150\65\75\27\64\67\150\67\172\67\149\14\174\67\111\36\53\48\116\65\232\67\215\36\40\21\97\21\84\1\70\0\68\21\51\36\91\1\130\1\113\0\50\66\127\68\121\67\121\1\3\0\189\67\230\65\82\20\57\67\40\44\11\68\76\1\65\0\151\11\234\67\116\67\128\0\244\49\187\16\52\66\38\2\184\67\225\65\65\0\165\37\171\21\212\65\135\1\250\14\182\62\101\39\30\68\186\63\151\11\233\65\151\67\173\67\151\11\239\65\58\67\45\20\222\66\247\65\249\65\70\67\189\66\161\17\45\20\220\66\149\14\201\68\149\45\249\65\92\17\252\65\142\45\121\1\255\65\2\0\87\0\238\67\249\14\148\14\191\14\51\2\87\0\165\25\108\1\99\0\215\65\232\13\1\66\174\2\197\67\18\21\139\53\181\65\130\65\183\67\133\65\88\57\48\36\186\2\162\22\24\8\81\0\72\20\168\29\226\67\111\65\172\68\57\67\155\64\116\67\142\8\43\66\27\66\105\67\154\34\250\68\142\65\8\0\75\67\68\36\122\45\77\1\186\2\174\68\125\65\128\0\186\57\168\37\203\11\108\1\9\0\181\68\217\33\193\0\242\68\133\68\78\1\1\0\65\2\69\0\65\0\65\2\67\66\15\21\208\33\150\14\65\2\176\67\48\36\161\28\1\0\219\1\65\2\133\0\28\69\56\25\2\66\96\65\84\1\237\12\10\21\193\0\65\2\137\37\156\68\57\20\129\0\64\10\39\69\65\1\42\69\204\0\54\69\185\12\150\29\122\32\208\33\77\1\230\30\51\69\75\27\6\0\40\21\76\0\60\69\152\68\34\53\113\36\145\49\97\21\83\0\6\2\56\20\163\28\167\67\81\0\181\65\183\10\178\14\103\67\0\69\123\67\186\63\192\67\34\68\5\0\148\65\95\65\130\67\106\47\230\30\60\64\154\68\85\17\120\65\2\0\253\68\76\0\128\65\78\30\179\29\55\66\88\69\227\67\147\14\229\67\108\67\234\65\194\65\65\0\190\15\86\36\139\65\141\40\135\1\114\64\63\68\223\0\64\0\255\0\127\0\108\1\72\0\12\66\40\17\192\0\142\37\26\68\62\20\28\68\163\22\191\68\16\31\190\15\194\68\235\65\86\20\105\16\198\68\174\33\182\66\138\0\106\1\70\17\5\0\42\68\87\20\45\68\64\0\34\66\179\14\140\0\50\68\135\51\174\11\100\17\82\17\87\19\7\67\0\0\140\0\57\68\229\13\209\36\141\27\0\33\252\14\56\68\195\17\17\67\175\33\137\0\70\68\4\0\159\0\194\0\48\38\222\36\8\0\198\0\165\14\53\36\145\1\156\64\145\1\97\66\136\17\205\0\129\17\206\36\121\27\87\68\185\17\226\36\171\45\235\17\39\48\146\29\185\69\187\69\136\1\87\68\117\29\201\69\168\29\203\69\180\3\169\69\136\0\153\22\175\14\30\10\178\14\58\0\127\0\156\67\172\29\140\0\131\64\13\0\130\0\70\0\115\66\121\1\140\0\141\1\4\0\161\69\79\1\166\69\255\17\170\69\61\36\136\17\160\0\174\69\118\66\201\1\67\0\106\17\8\66\98\64\182\69\220\67\64\0\54\0\50\66\136\10\244\66\216\1\201\66\111\16\184\68\29\68\178\51\248\67\105\16\251\67\135\68\4\68\224\66\255\67\227\66\218\66\65\67\200\68\253\67\69\67\162\65\14\70\73\67\128\67\76\67\12\68\249\67\234\66\143\0\82\67\177\65\130\1\46\0\181\65\145\10\0\70\243\67\63\17\78\67\188\67\28\66\19\66\193\0\8\70\34\68\209\66\157\65\11\70\68\67\62\67\21\70\2\68\17\70\47\70\149\65\6\68\21\70\9\68\6\69\232\66\240\13\137\37\141\0\29\70\152\65\64\0\38\0\12\66\214\0\245\21\18\69\135\69\226\1\39\70\139\69\7\3\251\68\195\68\160\49\240\13\146\69\12\44\199\65\171\37\230\68\37\10\3\0\233\68\21\31\245\20\232\13\169\65\42\44\67\65\86\0\3\0\141\0\37\10\2\0\142\0\174\14\3\0\123\37\136\1\24\8\34\66\131\1\164\69\205\0\57\36\184\14\32\21\62\20\184\14\32\0\38\66\12\0\99\21\3\0\76\0\99\21\148\21\157\17\14\37\123\64\31\0\73\68\128\69\89\17\12\66\215\0\245\21\87\69\5\0\246\20\53\36\171\67\130\67\150\14\187\16\86\36\75\1\84\1\105\32\231\66\12\68\247\66\234\66\102\69\253\68\23\0\128\65\87\67\35\70\49\67\46\17\182\1\247\67\41\70\187\16\9\70\46\70\212\66\12\70\66\40\7\68\138\17\16\70\161\70\223\66\48\70\55\70\72\67\57\70\144\70\214\33\10\69\40\21\140\0\63\70\167\29\15\0\128\65\216\0\245\21\192\17\135\69\65\0\128\66\204\66\142\67\147\14\140\14\208\66\142\27\122\17\39\17\205\41\121\1\163\21\146\29\104\70\197\70\54\68\188\1\153\33\12\0\50\68\205\0\54\69\60\28\150\69\81\1\93\27\188\61\157\14\32\21\97\66\113\70\174\69\160\22\251\65\99\21\103\69\234\41\154\3\48\38\53\21\145\29\168\36\30\0\206\33\178\14\6\0\50\66\130\70\60\50\19\42\64\0\78\69\66\25\47\66\108\1\4\0\181\65\183\70\130\1\185\70\1\70\225\65\193\0\140\14\99\26\171\27\60\69\255\65\148\21\70\69\62\20\14\37\71\1\169\11\149\14\201\67\168\14\231\68\66\40\150\14\1\0\107\16\64\70\0\0\229\68\97\50\232\45\167\69\224\29\87\70\178\70\52\20\156\68\217\41\128\0\60\12\9\71\67\66\84\1\108\9\253\65\128\0\49\3\47\64\84\31\239\70\20\71\230\68\193\0\23\71\71\1\217\41\192\0\251\0\126\0\168\37\243\66\180\68\135\69\12\71\59\25\198\65\10\66\249\14\251\14\190\68\190\70\65\0\85\20\142\69\152\67\129\0\85\20\80\70\3\68\121\1\202\68\225\66\205\68\228\66\242\65\209\68\208\37\211\68\250\65\214\68\254\65\2\71\88\0\220\68\128\0\130\0\222\68\232\13\225\68\167\2\240\13\242\0\126\0\47\64\231\68\86\70\232\13\240\13\241\0\46\71\192\0\222\11\108\69\248\68\206\66\51\14\230\67\148\68\174\54\14\68\40\21\102\69\18\0\237\67\84\1\240\13\237\0\97\71\101\67\162\68\110\69\189\65\113\65\114\69\3\0\58\70\111\67\187\67\11\69\112\71\64\0\233\0\46\71\56\25\43\36\70\70\248\70\208\65\51\14\157\70\69\65\44\70\71\69\64\10\75\66\99\66\236\14\12\0\169\69\6\0\152\22\2\0\76\0\228\69\148\21\166\29\100\21\110\16\30\55\231\41\237\20\206\33\97\10\31\22\38\38\79\68\160\28\131\0\98\1\93\64\104\27\231\36\214\36\49\46\48\38\220\29\52\20\96\65\91\1\225\68\212\0\142\45\110\1\59\69\64\10\206\70\52\20\147\71\152\22\133\66\106\17\108\1\223\0\126\0\207\67\43\69\238\1\200\0\94\71\192\0\203\7\175\37\137\11\130\1\203\7\71\70\136\71\185\68\54\71\82\71\56\71\231\40\139\69\165\36\76\70\143\69\148\29\79\70\40\21\147\21\66\71\185\37\75\71\204\68\253\65\71\71\208\68\244\65\74\71\236\14\212\68\251\65\224\29\78\71\85\17\55\1\112\71\187\68\84\71\224\68\226\68\0\0\213\0\90\71\84\70\232\68\94\71\82\40\126\0\0\15\254\15\30\16\167\38\169\38\237\29\3\14\76\0\59\22\186\38\188\38\147\38\121\7\168\2\194\38\196\38\65\22\250\7\86\22\172\38\174\38\51\1\192\0\11\7\1\14\128\0\233\7\3\14\68\0\7\26\192\0\51\10\3\14\209\9\15\72\254\71\3\14\59\1\1\14\172\2\188\28\7\26\128\0\3\72\169\2\240\29\169\2\74\0\32\72\57\68\250\29\50\1\72\0\20\72\89\0\183\28\88\3\147\40\99\20\169\2\199\38\135\1\254\38\0\39\175\2\56\0\106\0\154\34\86\22\66\38\68\38\74\31\115\10\176\64\172\64\181\64\26\39\170\64\178\64\65\72\24\18\15\72\85\70\51\1\128\0\143\6\3\14\85\30\1\14\192\0\90\0\32\72\88\0\183\28\17\72\74\72\22\72\74\72\84\0\183\28\160\38\74\72\77\0\183\28\50\0\183\28\73\72\17\21\95\0\7\26\64\0\14\72\74\72\75\0\32\72\38\72\3\14\175\14\15\72\108\72\50\1\192\0\172\0\238\0\183\28\49\0\183\28\95\6\175\38\183\28\102\18\15\72\80\0\32\72\45\72\15\72\78\72\74\72\59\1\46\42\29\41\120\0\233\27\74\72\43\72\3\14\104\72\15\72\79\0\183\28\87\72\17\21\102\72\51\1\76\72\169\2\67\0\73\25\83\0\254\0\7\26\179\0\60\17\177\38\183\28\112\6\134\30\230\27\19\18\124\2\216\63\120\2\105\56\4\0\196\28\63\8\16\1\96\0\216\15\151\2\34\41\45\1\118\0\39\14\141\18\16\41\27\41\140\47\67\18\229\54\76\2\252\16\166\72\114\0\168\72\82\38\91\18\57\56\126\47\128\14\69\32\42\1\163\72\245\30\183\72\168\72\150\39\112\0\234\33\189\72\178\72\192\72\128\48\121\17\7\39\9\39\65\22\40\72\12\18\134\0\242\0\183\28\39\22\1\14\38\10\110\47\74\72\83\0\183\28\243\29\3\14\139\72\15\72\147\72\3\14\62\0\244\29\183\28\165\50\51\1\191\5\161\38\163\38\240\54\51\1\45\38\102\22\123\24\105\0\213\0\183\28\61\0\32\72\71\0\100\72\195\9\200\38\100\72\89\72\79\72\246\72\51\1\64\0\141\72\32\17\86\0\183\28\191\38\74\72\93\0\183\28\124\8\15\72\251\72\51\1\218\5\124\26\172\57\135\14\187\25\45\15\115\59\17\1\217\34\2\63\152\34\72\61\187\14\5\0\117\2\16\23\227\13\247\20\110\22\6\70\71\1\141\70\86\48\2\26\28\16\205\14\238\29\252\72\50\1\117\2\200\26\223\63\98\49\47\1\245\19\17\32\126\23\122\20\155\19\181\60\86\14\23\19\193\25\213\0\202\0\29\0\54\0\159\69\39\0\5\0\220\23\179\32\230\32\40\61\30\14\214\34\252\64\126\26\92\39\228\15\21\0\179\0\116\0\73\0\117\26\60\0\130\28\58\14\153\31\40\15\188\24\2\43\250\19\249\19\130\31\217\13\192\0\227\0\9\57\176\0\226\4\106\0\9\14\30\57\41\51\88\32\39\29\170\41\209\40\201\42\198\55\199\34\234\30\67\32\70\51\15\60\122\62\8\15\180\27\110\2\121\61\189\63\140\61\109\1\97\21\109\1\176\65\136\1\27\16\163\64\227\27\2\15\49\1\110\2\164\23\209\55\57\57\80\24\161\35\27\65\123\14\59\61\253\24\102\61\171\16\32\20\14\0\202\0\251\0\8\0\199\0\178\0\30\18\252\62\127\14\95\73\84\23\175\16\85\23\246\48\141\18\110\42\30\0\88\0\125\0\21\0\72\0\172\0\59\0\21\0\202\25\203\46\37\19\28\20\67\32\9\50\187\23\149\59\32\60\0\0\180\0\169\0\79\0\234\31\185\0\47\0\109\0\231\43\206\57\111\14\76\26\179\35\215\23\187\20\126\23\212\14\192\24\42\60\17\1\170\41\160\0\104\0\139\0\26\0\130\6\35\0\99\0\9\14\91\27\188\42\161\63\67\32\143\20\120\20\27\14\232\19\100\61\69\14\66\61\237\49\32\20\50\65\101\63\98\59\101\59\214\73\103\59\215\73\213\73\216\73\219\73\218\73\221\73\212\73\223\73\217\73\224\73\220\73\226\73\222\73\225\73\230\73\227\73\231\73\229\73\232\73\235\73\234\73\237\73\228\73\239\73\233\73\240\73\236\73\242\73\238\73\241\73\246\73\243\73\247\73\245\73\248\73\251\73\250\73\253\73\244\73\255\73\249\73\0\74\252\73\2\74\254\73\1\74\6\74\3\74\7\74\5\74\8\74\11\74\10\74\13\74\4\74\15\74\9\74\16\74\12\74\18\74\14\74\17\74\22\74\27\52\193\10\12\1\225\19\210\60\146\41\38\65\236\25\93\34\177\13\232\0\127\0\250\0\177\0\227\0\217\1\36\29\39\1\37\19\135\28\145\28\83\23\211\13\24\27\250\0\17\10\8\0\245\0\157\0\70\0\108\0\122\31\81\14\23\19\124\28\116\57\233\57\21\58\108\23\232\19\209\16\126\58\242\16\29\0\224\2\41\0\3\0\100\0\62\0\252\16\93\16\178\35\33\59\95\14\37\14\184\41\101\58\22\0\245\0\61\0\144\10\231\57\185\23\47\16\13\73\45\15\58\59\136\20\25\14\31\60\149\25\155\15\233\14\15\32\217\13\26\0\2\34\93\0\169\0\58\0\107\0\167\37\161\20\198\52\175\57\152\63\12\1\242\0\195\0\231\0\52\0\165\0\58\4\99\0\211\32\128\15\238\42\133\28\222\28\69\14\70\54\217\59\120\20\22\58\250\26\114\62\186\0\231\0\125\0\65\0\42\0\116\0\138\0\89\0\38\16\221\26\3\43\250\19\41\1\231\52\109\34\17\1\77\54\201\0\9\0\22\0\93\0\191\0\172\0\142\0\85\0\203\19\72\51\10\63\136\20\47\1\72\24\17\1\143\35\76\23\54\40\105\23\95\0\97\10\148\0\121\0\86\0\19\0\90\55\230\32\25\14\89\32\211\13\174\15\37\14\216\13\246\32\226\35\24\15\12\1\175\0\210\0\137\0\155\42\124\0\115\0\19\0\247\24\103\28\12\19\121\28\32\20\49\8\231\0\185\44\198\0\39\0\198\72\219\56\197\24\224\48\67\32\199\23\120\43\198\0\11\0\251\0\235\0\164\0\94\0\231\43\43\15\113\34\166\56\222\28\152\19\67\32\232\47\56\61\240\26\217\13\102\0\128\0\112\0\3\0\164\0\10\0\125\5\50\61\32\32\112\60\38\49\238\57\45\15\203\74\30\14\37\14\201\43\242\42\24\0\230\0\119\0\67\0\16\0\180\0\65\0\121\0\252\16\133\46\6\31\136\55\38\49\80\57\0\0\242\7\122\0\123\0\9\0\114\0\81\0\94\0\205\35\153\55\178\52\212\14\166\46\172\46\82\62\105\12\77\29\217\13\199\0\180\0\49\0\53\0\71\45\182\0\2\0\185\23\194\31\161\60\217\40\172\26\236\46\244\23\152\63\69\14\169\24\31\0\224\0\121\0\15\0\193\0\82\0\16\0\13\0\245\30\27\40\56\43\69\14\220\15\110\42\114\0\89\0\142\0\67\0\117\0\224\0\201\0\206\36\49\1\21\32\179\35\144\22\24\49\120\55\40\29\12\1\124\0\2\0\72\0\12\0\56\0\232\0\37\0\81\0\220\23\147\22\152\63\86\41\120\20\225\30\233\50\100\24\228\0\83\22\114\0\35\0\3\0\133\0\59\3\201\32\212\16\249\26\85\15\10\61\26\15\243\31\172\26\12\1\135\0\154\0\120\0\34\0\219\0\209\0\53\54\240\47\8\19\39\29\230\47\171\16\225\30\121\19\229\31\134\25\52\0\35\0\14\0\221\0\13\0\59\0\126\50\57\57\99\23\214\14\195\64\19\28\235\25\188\24\230\35\165\20\230\32\67\21\16\0\86\0\111\0\231\0\100\38\78\0\209\40\95\14\99\28\15\15\212\16\130\58\128\26\66\14\216\43\233\30\122\35\180\35\202\0\109\0\233\0\113\0\207\0\159\0\214\0\91\0\193\22\211\13\63\74\172\26\121\15\180\41\222\22\149\42\209\13\6\40\64\75\35\35\223\0\217\0\36\0\78\0\113\10\46\0\193\22\16\63\73\26\82\60\68\60\250\26\12\60\228\32\242\42\114\0\197\0\165\5\109\0\236\0\119\6\162\42\78\49\93\16\22\19\49\73\111\14\74\54\224\42\10\0\51\0\116\0\59\0\42\0\213\0\244\0\82\0\211\32\53\14\163\46\155\19\20\51\31\65\108\74\15\57\24\19\213\60\220\18\12\1\255\0\5\0\220\0\95\0\193\9\122\0\100\6\73\47\89\24\108\23\23\17\103\19\141\52\28\0\191\0\35\2\84\0\190\0\200\57\202\20\95\14\212\60\235\47\118\14\111\75\12\1\165\0\175\0\77\0\61\0\85\0\66\0\85\55\203\19\173\19\148\20\141\18\203\46\12\29\14\1\164\52\147\57\22\34\103\0\178\0\70\0\119\0\247\0\138\0\59\0\205\35\134\55\111\14\61\73\145\28\34\43\215\40\165\16\82\35\15\15\77\49\160\14\139\11\117\0\130\38\68\0\24\0\252\16\249\55\45\15\229\19\24\17\12\59\34\57\130\0\126\0\220\0\25\0\27\0\238\0\121\0\78\0\252\16\241\32\44\15\218\52\235\25\233\14\233\14\243\34\47\0\228\0\176\4\5\0\234\0\174\0\33\51\37\61\60\56\165\16\188\58\200\52\33\40\30\74\52\29\130\75\0\0\90\0\176\56\37\0\226\0\254\0\171\0\72\0\90\30\53\14\134\49\237\34\1\47\12\1\185\0\151\0\68\0\66\0\182\0\100\8\83\0\196\28\147\73\183\26\76\35\147\60\117\33\2\32\52\25\174\0\94\0\94\0\61\0\28\0\206\0\163\6\203\19\241\16\1\29\143\28\216\14\78\75\165\16\81\14\214\48\18\64\155\0\13\0\89\0\253\0\106\0\51\0\133\25\149\73\105\12\66\14\103\62\248\53\12\1\231\0\201\0\171\0\14\0\212\0\66\0\144\0\74\0\66\24\112\33\24\58\126\23\7\60\175\18\186\18\187\0\164\0\193\34\5\0\174\0\93\0\202\25\145\46\145\28\207\20\159\53\171\16\106\42\175\15\81\14\25\49\81\0\185\0\221\0\31\0\183\0\155\0\164\47\140\25\25\15\81\14\169\19\109\28\16\58\123\14\218\43\155\0\140\0\15\0\34\0\58\13\240\0\106\0\70\59\213\32\168\15\244\58\58\19\121\55\12\1\176\0\238\12\49\0\141\0\219\0\237\0\47\0\193\22\226\20\67\32\125\63\178\52\25\14\32\14\151\34\207\28\201\0\17\0\106\0\15\0\85\0\6\0\208\0\79\0\134\18\24\45\62\57\241\28\53\0\121\0\158\0\158\73\106\0\70\0\46\0\202\24\80\15\39\35\145\25\33\1\70\57\128\26\253\35\18\65\8\25\248\0\12\0\63\0\8\0\66\0\214\0\16\0\193\22\146\15\235\25\193\19\116\20\143\24\214\53\24\19\238\28\206\22\9\0\141\0\137\0\69\0\107\0\4\0\132\11\202\25\86\51\176\43\212\13\164\58\40\29\125\28\230\32\102\42\22\40\0\0\97\0\5\0\238\0\107\0\208\0\223\0\24\0\85\0\196\28\214\44\43\16\77\26\126\23\188\24\165\75\24\1\187\26\13\46\5\0\24\0\250\0\33\0\92\33\185\18\93\74\86\14\114\46\57\47\24\17\125\20\169\0\143\0\174\0\47\0\200\0\41\0\167\0\49\0\185\23\124\20\220\16\173\18\78\49\82\15\67\32\231\16\27\40\244\39\68\73\8\2\233\0\221\0\56\0\138\0\6\0\141\0\66\0\206\18\241\74\20\58\199\43\80\45\73\32\151\31\239\58\197\40\114\23\80\0\180\13\25\0\236\0\202\0\254\0\54\0\106\23\141\55\84\59\222\28\39\65\110\42\141\0\214\0\124\0\48\0\238\0\12\0\97\0\63\0\38\16\65\47\58\61\44\15\5\16\245\19\241\28\90\0\22\0\25\75\130\0\216\0\85\0\15\0\205\35\225\47\230\14\33\1\249\19\13\61\23\51\220\16\93\34\156\0\237\0\75\0\52\0\4\0\110\0\106\0\59\0\174\32\152\63\202\46\15\15\42\35\172\26\92\74\108\34\217\13\50\0\48\0\211\0\16\0\214\0\168\0\108\0\18\0\126\34\131\51\7\77\145\28\248\23\26\13\144\0\59\16\67\0\202\0\56\0\90\48\198\30\165\16\1\50\109\63\91\75\24\15\180\75\85\15\179\53\185\40\198\40\110\66\37\0\136\0\104\0\18\0\225\75\51\43\212\13\167\18\141\18\101\45\149\25\73\52\78\0\141\0\55\0\40\0\178\0\122\0\112\0\86\0\99\45\14\1\127\51\138\55\45\1\10\40\12\0\242\0\133\0\86\0\143\0\203\0\133\0\75\0\240\47\169\56\35\65\46\60\184\46\161\35\33\25\121\0\59\0\5\0\11\0\169\0\199\0\192\0\27\0\189\35\5\16\192\35\108\23\248\23\126\3\127\0\124\0\157\0\208\0\160\0\21\29\85\39\121\15\163\63\169\46\230\32\235\52\133\52\100\19\161\60\187\26\143\0\35\0\233\44\253\0\189\6\14\0\114\57\24\1\70\47\215\40\94\45\68\76\52\0\224\0\186\18\45\0\43\0\195\0\67\0\216\22\23\19\170\26\16\15\111\59\247\47\224\15\170\58\242\0\0\0\79\0\70\0\216\0\43\0\126\0\199\40\18\30\150\34\91\52\33\40\92\54\177\23\152\0\35\0\202\75\189\1\29\0\153\3\37\59\162\35\84\57\148\15\16\64\40\25\216\13\254\30\92\0\202\0\137\0\31\0\252\0\36\0\131\0\21\0\235\46\78\49\5\40\28\63\20\29\169\38\62\0\45\0\91\0\93\0\28\0\14\0\196\28\213\19\252\77\141\18\32\14\205\73\186\34\118\14\77\73\74\51\156\0\188\0\197\0\62\0\112\9\165\0\117\0\246\60\230\32\232\19\132\31\40\51\32\20\105\0\86\0\188\0\92\0\221\0\187\0\136\0\28\0\181\76\196\15\165\16\186\55\85\23\27\14\198\22\193\25\51\0\106\0\207\0\94\0\215\0\219\0\254\0\1\0\36\20\188\24\128\15\189\25\210\16\134\60\237\34\26\74\236\0\167\0\83\0\87\0\21\67\117\0\216\22\182\58\108\15\79\29\237\55\209\13\93\29\8\0\55\0\22\0\115\0\65\0\84\0\33\0\103\0\203\19\36\54\18\17\219\53\169\40\90\49\27\40\166\77\24\15\90\24\57\33\42\0\38\0\33\77\108\50\78\60\252\57\248\26\2\76\236\25\77\54\225\9\196\0\33\0\71\0\21\75\5\0\247\24\123\15\222\52\117\20\216\32\135\1\120\0\73\0\109\0\188\0\214\0\56\0\88\0\99\54\184\26\209\16\4\51\101\35\217\13\220\0\249\0\178\0\121\0\248\0\162\0\51\0\204\53\40\74\78\49\37\14\175\53\215\15\63\61\254\0\9\0\4\0\15\6\82\0\120\0\196\28\231\55\29\50\86\24\88\52\25\15\75\41\52\25\240\0\168\0\48\0\53\0\205\15\232\0\59\73\190\44\40\29\177\74\18\17\188\24\37\14\121\15\254\57\68\76\246\0\89\0\57\7\20\0\190\78\79\0\122\31\180\42\33\1\22\50\135\14\176\35\39\1\28\45\175\15\43\15\241\76\161\26\64\23\189\0\168\0\91\0\191\0\105\0\228\0\102\0\203\19\226\76\250\19\247\63\177\31\24\54\163\42\212\18\244\62\38\27\184\0\97\0\44\4\35\0\36\0\150\7\49\1\50\76\46\43\65\43\233\14\142\31\17\1\148\34\168\75\101\0\31\0\231\0\86\0\144\0\223\31\96\0\252\75\166\60\213\32\35\76\41\15\233\28\170\42\150\26\121\0\10\57\200\0\14\0\218\0\90\0\86\15\174\15\223\77\241\39\41\15\219\46\161\60\169\24\144\0\102\0\155\0\50\0\58\0\84\0\207\0\192\31\125\26\212\18\227\60\151\42\215\32\14\27\142\15\105\0\215\0\72\0\40\0\252\0\197\0\17\0\216\22\59\51\236\25\47\1\99\51\184\26\151\59\219\13\141\0\113\0\81\0\174\0\200\0\243\0\110\0\175\35\24\17\43\26\209\13\187\26\12\0\239\0\68\0\120\0\156\0\27\0\150\0\49\0\202\25\174\15\235\77\181\59\128\26\167\60\213\32\112\46\6\19\217\13\109\0\253\0\182\0\57\0\228\16\81\0\162\78\249\59\40\26\103\77\255\78\64\59\226\78\43\59\146\28\188\25\245\23\252\60\125\0\244\0\30\12\52\0\106\0\180\0\19\0\240\47\27\14\225\48\67\32\234\58\211\18\44\25\18\0\76\0\41\0\69\3\255\0\124\0\202\24\205\25\231\25\228\75\230\32\214\48\203\0\221\0\46\0\165\10\217\0\5\0\109\0\106\23\32\14\66\45\215\32\85\35\65\57\0\0\169\0\248\0\6\0\87\0\152\0\122\0\231\0\67\0\185\23\138\79\41\59\40\25\113\34\234\74\237\34\198\48\84\23\25\49\165\71\205\0\31\0\8\0\123\0\203\14\252\16\247\19\150\15\237\34\40\40\117\45\253\24\77\73\100\24\197\0\114\0\7\0\105\0\170\0\92\0\247\0\56\0\245\30\196\48\53\52\80\55\67\32\38\51\86\23\31\0\48\0\43\0\125\0\3\0\251\0\15\0\240\47\33\43\197\13\150\76\149\25\120\52\45\1\10\78\86\15\178\0\42\0\95\0\229\0\37\0\125\0\26\0\90\48\0\32\108\23\219\14\222\46\219\15\126\23\109\51\212\60\52\25\253\0\142\0\82\0\127\0\67\0\210\0\118\0\33\0\134\18\249\58\40\15\233\14\177\23\44\0\205\0\51\0\60\0\145\0\152\0\123\0\30\0\216\22\222\25\20\47\34\14\120\20\186\20\217\13\82\0\145\0\197\0\36\0\159\0\232\0\182\0\68\0\224\31\82\24\27\14\30\74\110\42\152\0\240\0\193\0\67\0\174\0\114\0\179\0\2\0\8\61\25\15\30\74\82\54\214\60\236\14\199\0\205\0\64\6\66\0\88\0\91\0\38\16\168\20\245\62\210\78\209\13\248\18\160\0\247\0\67\23\243\0\109\0\193\0\19\0\66\24\235\28\181\74\127\25\89\77\161\35\248\18\180\0\176\0\154\20\22\0\51\0\135\0\36\0\133\25\108\75\220\18\249\64\210\75\221\18\244\0\243\0\10\0\84\0\131\0\118\0\109\0\60\73\71\80\18\17\46\74\145\74\33\1\99\62\8\20\165\35\28\0\34\0\132\0\213\30\179\46\100\0\202\25\207\47\136\20\116\60\5\16\204\24\197\52\146\28\210\31\33\1\75\57\46\0\131\0\66\0\22\0\25\0\72\0\79\20\86\15\92\14\144\46\82\60\147\25\44\74\151\31\12\1\249\0\149\0\82\0\117\0\131\0\44\0\192\73\77\76\111\58\147\46\197\13\125\20\241\0\149\0\110\0\79\0\74\0\223\0\75\0\35\0\143\41\243\43\24\17\211\20\159\57\84\23\46\76\75\47\38\52\35\35\105\37\163\0\156\0\123\0\60\0\116\19\38\32\40\29\212\14\206\22\225\0\249\0\95\0\52\0\80\0\122\0\96\0\13\0\26\59\139\76\55\47\100\30\165\16\202\30\40\25\64\43\17\17\6\27\15\0\84\0\87\0\88\0\238\0\185\0\97\0\27\0\245\30\16\59\52\19\126\23\135\60\108\23\66\14\240\55\18\0\17\0\199\0\38\0\117\0\239\0\49\0\72\0\162\58\2\32\20\80\222\22\163\18\150\56\136\20\179\74\25\17\0\0\104\0\237\24\110\0\57\0\249\0\21\0\117\0\122\31\212\16\180\52\48\59\2\61\133\52\106\51\245\19\128\25\224\57\92\0\69\0\134\0\108\0\227\0\190\0\150\75\220\23\183\34\235\25\41\1\58\14\121\35\64\45\188\23\13\17\224\78\217\13\195\0\188\5\87\0\174\0\8\0\100\0\9\0\13\76\74\77\177\75\181\78\101\51\19\62\209\77\235\53\0\0\80\51\247\0\5\78\70\0\157\0\115\0\36\20\79\29\201\46\230\32\175\23\69\60\216\0\116\0\167\0\98\0\252\0\143\0\124\0\14\0\220\23\204\56\200\46\106\15\24\1\143\78\45\15\24\27\229\0\63\0\80\72\118\0\142\0\253\8\34\35\168\40\131\63\212\53\174\41\107\35\235\18\229\43\165\16\32\29\168\73\86\0\14\12\45\0\210\0\47\0\77\0\72\0\223\55\23\59\241\16\19\79\127\23\237\80\215\32\200\22\32\81\68\57\217\13\84\0\53\64\77\0\111\0\134\0\44\0\86\0\95\23\10\54\239\15\67\32\209\16\28\77\40\0\26\0\73\0\112\0\61\46\1\0\80\44\179\74\219\35\12\19\230\63\180\35\166\0\108\0\244\0\77\0\210\0\93\4\46\0\130\28\134\34\57\61\219\28\239\44\235\25\217\74\106\79\24\59\143\28\77\54\231\0\17\0\120\64\176\0\124\0\140\60\252\16\44\60\18\65\87\54\157\57\224\77\217\13\254\0\71\0\33\0\113\0\244\0\35\0\4\75\19\35\241\16\245\19\104\45\161\60\254\22\12\19\54\52\85\15\220\46\141\18\26\77\217\13\228\0\163\0\149\0\64\0\149\0\203\0\94\0\27\0\252\16\118\14\160\74\216\32\97\51\254\28\74\51\116\0\25\0\168\0\71\0\150\0\155\0\163\0\112\0\156\31\179\44\156\19\43\15\44\45\11\59\126\35\139\30\96\0\31\0\89\0\63\0\253\0\104\0\119\0\45\61\26\15\210\19\109\74\88\21\56\0\243\0\101\0\57\0\54\0\49\0\26\0\251\28\91\45\218\16\124\81\245\62\116\17\188\0\69\0\14\0\117\0\128\0\222\0\69\6\188\64\28\28\120\20\204\28\45\15\32\35\122\75\39\1\51\32\207\30\143\0\180\0\144\0\109\0\217\0\212\0\114\0\18\0\205\35\76\77\216\32\242\75\127\23\229\25\112\58\243\47\12\63\126\23\12\1\225\0\112\0\29\0\62\24\22\0\124\8\224\60\12\19\165\73\43\15\39\61\217\13\10\11\18\0\54\0\35\0\253\0\235\0\28\0\185\23\69\14\211\43\16\75\236\25\243\60\123\14\190\43\33\1\68\60\168\73\230\0\90\0\50\0\37\0\61\0\77\0\187\0\56\0\178\79\164\73\108\15\30\1\54\32\56\14\28\74\58\35\237\25\133\19\12\19\169\24\225\0\49\0\16\0\46\0\187\0\89\71\43\75\85\34\235\25\249\19\249\19\207\28\171\80\227\0\82\0\151\0\244\0\141\0\156\80\219\56\65\55\136\20\233\64\187\23\216\75\61\76\113\60\70\14\243\0\202\0\40\0\126\0\63\0\196\0\34\0\134\18\58\43\212\13\121\15\114\62\101\0\18\0\218\0\102\0\181\0\179\0\161\0\236\60\242\55\86\24\131\26\253\42\1\79\179\57\88\77\144\75\217\13\200\0\120\9\87\0\181\0\151\0\237\0\174\77\58\75\214\14\155\15\214\40\11\45\153\34\151\0\229\0\225\0\55\0\203\0\241\0\170\0\11\0\34\35\213\58\222\46\125\35\45\1\160\31\232\64\13\17\254\74\215\75\207\30\117\16\119\0\36\0\84\0\6\0\160\0\239\53\231\30\103\82\105\12\232\19\127\14\212\14\202\28\32\40\25\40\78\49\12\1\206\0\47\0\120\0\68\0\90\0\188\0\36\0\24\0\156\31\77\74\25\15\144\73\189\40\31\79\228\15\197\0\5\0\16\0\14\0\26\0\29\54\231\43\2\10\200\34\178\52\75\24\43\73\143\28\253\62\198\53\42\45\193\43\166\0\235\0\120\64\8\0\233\0\15\10\219\80\185\59\250\26\148\18\63\81\8\54\196\61\248\0\117\0\226\0\114\0\190\0\74\0\96\10\3\54\103\35\254\75\170\15\24\19\44\59\52\77\18\17\228\62\128\81\33\1\20\29\175\0\158\12\13\0\81\0\139\0\250\0\105\0\122\31\43\65\39\25\185\76\213\32\215\81\161\26\220\15\100\23\156\19\125\20\203\23\150\8\144\0\229\0\147\0\34\0\90\48\234\26\97\80\34\75\237\34\157\74\131\14\146\34\1\35\231\14\58\14\121\15\29\45\213\2\63\0\137\0\120\0\123\13\216\22\41\51\180\58\185\73\15\15\181\41\207\30\211\0\29\0\21\0\56\0\39\0\177\0\30\0\108\0\134\18\229\48\210\16\160\35\24\27\89\0\107\0\243\0\1\0\223\0\122\0\222\0\78\0\38\43\151\41\169\40\96\23\4\79\93\16\73\82\184\26\247\55\149\0\79\0\135\0\79\0\78\0\231\0\108\0\25\0\224\31\128\63\16\15\221\74\44\65\44\35\8\51\214\32\254\30\58\81\120\23\214\14\209\16\95\54\33\1\163\74\229\62\126\23\247\18\165\35\66\24\135\19\61\58\249\19\180\52\232\48\215\44\242\28\34\49\15\73\135\14\122\63\128\26\197\59\122\55\34\29\224\52\206\44\24\17\44\57\65\43\169\58\46\29\0\0\249\60\91\54\40\25\230\75\208\35\32\20\164\56\168\58\100\62\63\73\105\12\195\77\220\16\4\27\65\83\155\19\77\54\185\18\45\57\45\57\24\45\21\65\127\23\20\40\75\57\38\43\201\30\183\73\1\35\95\14\123\20\206\19\166\59\70\52\152\63\76\83\178\52\2\48\35\32\205\32\84\23\34\24\130\51\24\1\148\24\72\77\108\15\247\81\50\16\225\19\240\25\250\59\15\15\136\83\233\81\146\41\65\32\219\32\117\54\165\16\189\42\22\14\40\25\79\35\125\78\32\20\206\18\105\54\150\25\230\19\24\17\23\19\25\14\66\73\41\15\93\29\156\31\232\19\69\14\95\14\8\16\235\25\149\1\10\17\184\26\238\80\183\79\36\59\176\26\124\79\149\25\43\35\209\13\209\24\127\14\77\54\86\15\212\16\66\14\155\59\228\47\207\25\220\16\144\20\168\75\216\22\255\28\245\39\241\16\32\14\214\48\33\64\21\74\19\74\23\74\103\57\90\30\36\20\241\16\175\74\198\28\47\80\217\75\239\47\216\0\60\3\219\0\252\0\255\0\36\0\178\79\62\55\209\44\193\77\107\45\214\32\249\19\34\81\87\57\189\0\132\0\107\0\20\0\73\0\41\0\176\0\118\0\156\31\216\13\49\59\242\32\118\14\240\74\74\51\115\0\200\0\143\0\45\0\167\0\162\0\158\0\165\4\205\16\28\43\166\75\40\25\181\32\241\56\126\23\130\80\63\75\23\82\78\15\218\64\33\35\169\0\126\0\46\0\142\0\230\18\63\0\50\61\226\52\24\17\72\59\85\82\118\77\246\81\195\75\94\52\0\0\153\0\208\0\235\33\111\0\138\0\31\0\32\0\247\24\135\82\206\32\151\31\207\28\9\0\127\0\128\0\75\0\94\0\246\0\171\0\91\0\185\18\109\76\65\78\187\23\40\15\213\82\244\55\74\77\254\81\191\0\121\0\115\0\222\0\244\0\183\0\100\0\90\30\210\19\169\77\212\16\187\58\218\58\3\0\146\0\65\0\247\0\202\0\165\0\4\0\122\31\135\52\243\83\172\26\208\77\78\49\21\26\212\18\23\19\214\48\6\0\68\0\199\0\68\0\62\0\121\0\37\4\126\34\133\80\182\77\164\35\218\50\232\0\205\0\18\0\81\0\215\0\26\0\199\0\173\22\137\35\90\52\179\35\162\63\217\13\236\0\221\0\254\0\91\0\135\0\242\0\25\0\26\0\66\24\227\58\229\47\222\28\112\76\126\23\207\28\250\3\176\36\216\0\176\0\240\0\31\0\252\16\53\61\5\80\161\60\40\47\166\15\120\0\126\0\50\0\31\0\51\0\231\0\19\0\156\31\23\17\98\16\62\57\151\63\55\2\197\0\133\5\14\0\239\0\203\0\164\13\201\32\40\15\169\41\236\25\177\23\224\17\202\0\80\0\38\0\214\0\146\0\72\0\211\79\55\83\199\82\178\52\236\28\50\16\102\55\119\0\27\0\53\36\201\0\99\0\90\30\37\65\43\43\234\57\67\32\196\53\53\49\187\80\36\43\15\61\117\19\125\83\231\79\16\15\1\32\249\79\209\13\121\62\230\48\160\83\209\15\235\43\100\28\49\25\215\32\118\14\96\16\33\1\190\19\174\56\157\41\35\35\246\55\135\14\96\61\30\50\27\64\47\1\206\22\202\24\232\19\119\46\23\17\47\73\53\14\237\16\255\82\217\13\23\54\137\55\91\83\100\62\217\13\104\14\39\47\187\23\23\19\248\23\205\35\224\76\132\49\120\20\12\75\150\59\214\32\185\20\222\22\241\28\19\35\23\50\236\58\222\64\33\1\232\19\195\83\168\46\37\19\32\74\145\82\254\64\92\59\20\40\20\29\134\18\235\59\85\23\40\15\224\42\203\19\188\24\29\62\190\64\85\15\25\14\83\84\84\66\149\63\214\40\2\10\114\23\88\45\95\78\107\31\127\23\101\19\1\58\229\79\173\84\77\47\146\60\23\85\89\59\40\29\128\58\107\62\26\50\24\17\93\16\47\1\255\49\12\1\209\40\208\83\50\85\69\15\117\2\203\19\7\40\105\12\67\60\119\23\5\16\239\31\127\75\33\1\110\42\33\45\207\0\28\0\38\0\87\0\98\0\95\0\86\15\38\26\135\14\121\83\41\15\238\49\17\1\95\14\118\45\248\18\146\19\34\0\57\0\36\0\213\0\163\0\117\0\185\18\233\14\106\55\59\57\173\80\194\77\183\24\252\60\29\0\196\0\219\0\98\0\44\0\167\0\29\0\124\0\26\43\65\49\150\25\255\49\51\84\105\12\118\49\186\79\206\19\149\82\254\24\13\0\241\0\11\0\25\9\135\0\66\0\38\43\53\14\147\57\56\74\41\51\92\54\163\18\240\35\54\61\32\20\193\0\70\0\58\0\126\0\188\0\182\0\150\12\231\43\252\55\247\39\40\29\205\25\183\42\179\35\238\84\247\55\243\0\87\0\137\0\113\0\147\0\79\0\85\0\3\0\31\80\0\23\187\23\155\81\96\49\75\13\17\0\66\0\187\0\55\0\216\0\24\0\155\22\202\25\94\24\187\23\125\51\235\25\232\34\234\64\191\81\192\23\145\41\47\29\201\32\211\13\245\19\49\81\69\14\200\59\106\34\217\13\231\43\121\55\209\24\67\32\60\58\146\28\201\76\117\77\39\82\161\60\93\83\27\50\22\61\245\62\93\34\66\24\32\14\13\54\25\45\71\57\146\28\84\73\235\30\205\35\62\57\55\28\147\80\182\40\74\82\234\25\161\26\149\26\71\58\165\16\37\14\184\83\86\14\240\46\133\52\241\62\156\19\241\28\76\45\67\32\139\35\204\30\193\57\15\15\31\81\128\26\190\16\44\15\93\76\248\18\224\31\130\80\5\51\84\23\254\46\59\83\219\78\206\52\74\57\18\17\223\80\101\28\245\62\27\14\155\15\21\77\224\42\38\43\140\20\108\15\171\76\78\15\184\42\75\32\37\19\155\15\130\60\123\14\175\32\200\32\177\77\243\39\237\25\9\40\215\32\179\60\84\54\192\81\5\15\143\33\16\2\100\39\66\17\185\17\140\27\169\21\5\56\121\53\183\37\162\70\169\45\186\51\4\44\241\20\5\56\229\33\180\1\86\61\226\27\213\64\116\19\143\56\41\73\12\73\192\23\44\15\1\45\228\63\24\1\195\61\101\40\17\1\199\52\217\13\118\0\219\0\123\0\99\0\176\0\37\0\130\0\20\3\172\41\195\53\135\55\146\60\248\18\137\0\93\0\186\1\53\2\132\0\20\0\204\78\33\29\145\83\128\26\53\14\135\25\220\16\24\43\53\14\169\24\38\0\204\0\250\0\60\0\152\0\153\0\159\0\72\0\168\2\180\24\25\15\90\75\121\55\135\59\37\58\224\25\86\74\141\83\111\58\180\73\163\18\209\16\215\58\215\32\217\53\0\65\232\77\90\16\18\17\230\76\36\14\9\23\160\41\214\14\4\54\81\14\128\15\174\23\74\51\55\1\20\74\128\86\209\83\129\86\167\43\49\1\202\85\65\43\121\15\92\14\213\79\137\25\32\20\103\0\216\0\92\0\82\0\88\0\54\0\82\13\80\44\127\28\117\77\253\64\170\41\18\0\242\0\98\0\158\60\117\0\177\0\118\0\83\80\137\83\215\32\206\40\114\23\125\0\125\0\247\0\106\0\46\0\200\0\12\0\38\0\93\19\143\75\199\76\22\26\121\74\30\14\93\75\137\76\133\52\125\20\163\0\165\0\110\0\123\0\159\0\245\0\145\86\66\24\36\35\161\60\58\45\230\82\173\80\12\1\232\0\116\0\171\32\193\0\52\0\134\0\104\0\44\81\33\29\182\82\171\16\23\78\197\83\167\59\155\15\90\24\140\0\69\0\176\0\90\2\168\0\161\6\133\25\120\81\127\23\153\52\98\80\11\48\50\0\52\0\228\0\116\0\229\0\184\0\53\0\119\0\156\31\231\85\210\16\92\74\207\30\70\0\83\0\210\0\12\0\47\0\180\0\128\0\46\0\126\34\47\1\12\60\105\85\213\82\113\58\231\35\0\44\69\0\154\0\42\0\48\54\35\0\97\0\80\44\136\86\250\81\14\27\50\16\19\0\255\76\62\0\131\0\210\0\140\0\73\0\110\25\96\62\184\59\197\13\123\86\217\13\93\0\181\0\121\0\37\0\191\34\167\0\7\65\57\57\219\16\95\14\3\86\77\83\135\0\29\0\165\10\76\3\26\0\78\84\19\26\65\60\136\20\238\74\22\77\16\15\224\46\1\35\140\81\12\1\30\0\40\0\167\0\48\0\5\58\22\9\252\16\46\85\33\29\92\14\83\59\186\58\212\13\202\59\230\31\104\0\218\0\1\0\174\0\115\0\249\0\101\0\79\54\153\83\75\82\161\81\4\35\167\59\96\74\86\81\40\0\18\0\64\0\40\0\211\0\119\0\49\0\223\55\210\16\53\14\160\60\237\16\100\35\236\25\135\19\152\81\34\57\9\0\43\0\153\0\52\0\246\0\12\0\204\0\85\0\170\53\108\15\69\82\131\14\75\58\236\18\249\63\29\29\250\55\214\48\81\0\133\0\61\0\25\0\131\0\174\0\81\0\254\71\77\57\65\74\223\47\224\85\91\54\97\81\28\65\63\83\140\55\248\47\169\73\24\0\239\0\74\0\42\0\189\0\142\0\119\0\245\30\180\57\154\79\126\23\241\30\142\74\93\29\116\0\55\0\87\0\49\0\134\0\234\0\211\0\75\0\86\15\198\76\20\65\197\13\77\58\252\56\243\25\217\13\75\0\5\0\61\0\82\0\57\0\92\0\188\0\144\82\105\14\119\23\135\19\246\79\213\44\219\64\53\84\177\35\199\85\12\1\207\0\238\0\8\0\96\0\207\0\27\7\21\0\225\19\250\57\42\51\164\77\24\1\248\23\8\75\103\0\59\0\174\0\151\0\151\0\5\0\80\44\157\87\213\85\253\24\254\30\173\0\157\23\120\0\55\0\86\0\9\0\69\0\193\22\37\19\208\43\143\28\107\79\209\16\100\28\203\85\12\19\88\16\124\0\69\0\59\0\79\0\209\59\205\2\180\40\186\84\91\45\34\61\229\44\225\0\113\0\98\0\143\0\25\0\22\0\106\0\34\35\234\53\131\14\3\35\153\63\254\62\242\31\33\1\4\31\46\73\184\26\39\85\29\15\248\0\238\0\9\0\92\0\193\0\206\0\89\0\143\41\118\20\161\35\33\40\33\24\111\61\236\25\124\63\135\42\202\50\133\52\97\75\238\0\203\0\85\0\241\0\104\0\111\82\50\61\107\76\207\52\197\13\132\41\103\15\229\43\248\62\58\19\152\63\216\87\48\80\143\0\17\77\76\0\62\0\80\0\14\15\185\23\224\22\252\87\24\19\197\82\224\84\108\23\19\59\86\39\100\24\15\0\129\0\188\0\81\0\48\0\213\0\44\0\90\0\205\35\237\16\25\35\94\59\137\81\128\83\5\16\130\59\161\26\114\62\85\0\168\0\224\0\118\0\112\0\129\0\170\0\104\0\211\32\13\45\91\87\126\23\101\25\78\45\216\50\237\25\81\14\246\63\97\80\191\42\168\0\151\0\20\0\26\0\162\0\125\0\29\0\134\18\225\63\156\19\241\78\247\22\40\0\137\0\37\0\90\0\183\19\110\0\126\34\23\19\25\54\217\87\237\25\80\15\214\48\161\0\198\0\221\58\42\70\97\0\122\31\0\0\0"))()
end)
 
PG2_6.Name = "PG2_6"
PG2_6.Parent = Frame2
PG2_6.BackgroundColor3 = Color3.new(0.835294, 0.329412, 1)
PG2_6.Position = UDim2.new(0.03763441, 0, 0.665745854, 0)
PG2_6.Size = UDim2.new(0, 171, 0, 38)
PG2_6.Font = Enum.Font.Gotham
PG2_6.Text = "CTRL Click TP (Some Servers)"
PG2_6.TextColor3 = Color3.new(0, 0, 0)
PG2_6.TextScaled = true
PG2_6.TextSize = 14
PG2_6.TextWrapped = true
PG2_6.MouseButton1Down:connect(function()
loadstring(game:GetObjects("rbxassetid://509249639")[1].Source)()
end)
 
PG2_7.Name = "PG2_7"
PG2_7.Parent = Frame2
PG2_7.BackgroundColor3 = Color3.new(0.835294, 0.329412, 1)
PG2_7.Position = UDim2.new(0.03763441, 0, 0.795580089, 0)
PG2_7.Size = UDim2.new(0, 171, 0, 38)
PG2_7.Font = Enum.Font.Gotham
PG2_7.Text = "Click Delete (Left Side Of Screen)"
PG2_7.TextColor3 = Color3.new(0, 0, 0)
PG2_7.TextScaled = true
PG2_7.TextSize = 14
PG2_7.TextWrapped = true
PG2_7.MouseButton1Down:connect(function()
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
 
 -- Objects
 
local ScreenGui = Instance.new("ScreenGui")
local TextButton = Instance.new("TextButton")
local On = Instance.new("StringValue")
 
-- Properties
 
ScreenGui.Parent = player.PlayerGui
 
TextButton.Parent = ScreenGui
TextButton.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0, 0, 0.455743879, 0)
TextButton.Size = UDim2.new(0, 186, 0, 35)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "CLICK DEL (Off)"
TextButton.TextColor3 = Color3.new(0.27451, 0.27451, 0.27451)
TextButton.TextScaled = true
TextButton.TextSize = 14
TextButton.TextWrapped = true
 
 
On.Parent = TextButton
On.Value = "Off"
 
-- Scripts
 
TextButton.MouseButton1Up:Connect(function()
    if On.Value == "Off" then
        On.Value = "On"
        TextButton.Text = "CLICK DEL (On)"
    else
        On.Value = "Off"
        TextButton.Text = "CLICK DEL (Off)"
    end
end)
 
mouse.Button1Up:Connect(function()
    if On.Value == "Off" then
        print('CLICK DEL off')
    else
        if mouse.Target.Locked == true then
            mouse.Target:Destroy()
        else
            mouse.Target:Destroy()
        end
    end
end)
end)
 
PG2Credits.Name = "PG2Credits"
PG2Credits.Parent = Frame2
PG2Credits.BackgroundColor3 = Color3.new(1, 1, 1)
PG2Credits.BackgroundTransparency = 1
PG2Credits.BorderSizePixel = 0
PG2Credits.Position = UDim2.new(0.03763441, 0, 0.917127073, 0)
PG2Credits.Size = UDim2.new(0, 171, 0, 21)
PG2Credits.Font = Enum.Font.Gotham
PG2Credits.Text = "Made By: Mr.Stuperd"
PG2Credits.TextColor3 = Color3.new(0, 0, 0)
PG2Credits.TextScaled = true
PG2Credits.TextSize = 14
PG2Credits.TextWrapped = true
 
Frame3.Name = "Frame3"
Frame3.Parent = MainFrame
Frame3.BackgroundColor3 = Color3.new(0.956863, 0.470588, 1)
Frame3.BorderSizePixel = 0
Frame3.Position = UDim2.new(0, 0, 1, 0)
Frame3.Size = UDim2.new(0, 186, 0, 362)
Frame3.Visible = false
 
BackPG3.Name = "BackPG3"
BackPG3.Parent = Frame3
BackPG3.BackgroundColor3 = Color3.new(1, 1, 1)
BackPG3.BackgroundTransparency = 1
BackPG3.BorderColor3 = Color3.new(1, 0, 1)
BackPG3.BorderSizePixel = 0
BackPG3.Position = UDim2.new(-0.00537609775, 0, 1, 0)
BackPG3.Size = UDim2.new(0, 98, 0, 45)
BackPG3.Font = Enum.Font.Gotham
BackPG3.Text = "< Back"
BackPG3.TextColor3 = Color3.new(0, 0, 0)
BackPG3.TextSize = 31
BackPG3.MouseButton1Down:connect(function()
Frame3.Visible = false
Frame2.Visible = true
end)
 
NextPG3.Name = "NextPG3"
NextPG3.Parent = Frame3
NextPG3.BackgroundColor3 = Color3.new(1, 1, 1)
NextPG3.BackgroundTransparency = 1
NextPG3.BorderColor3 = Color3.new(1, 0, 1)
NextPG3.BorderSizePixel = 0
NextPG3.Position = UDim2.new(0.525541127, 0, 1, 0)
NextPG3.Size = UDim2.new(0, 98, 0, 45)
NextPG3.Font = Enum.Font.Gotham
NextPG3.Text = "Next >"
NextPG3.TextColor3 = Color3.new(0.333333, 0.333333, 0.333333)
NextPG3.TextSize = 32
 
PG3_1.Name = "PG3_1"
PG3_1.Parent = Frame3
PG3_1.BackgroundColor3 = Color3.new(0.835294, 0.329412, 1)
PG3_1.Position = UDim2.new(0.03763441, 0, 0.0193370171, 0)
PG3_1.Size = UDim2.new(0, 171, 0, 38)
PG3_1.Font = Enum.Font.Gotham
PG3_1.Text = "Coming Soon!"
PG3_1.TextColor3 = Color3.new(0, 0, 0)
PG3_1.TextScaled = true
PG3_1.TextSize = 14
PG3_1.TextWrapped = true
 
PG3_2.Name = "PG3_2"
PG3_2.Parent = Frame3
PG3_2.BackgroundColor3 = Color3.new(0.835294, 0.329412, 1)
PG3_2.Position = UDim2.new(0.03763441, 0, 0.149171263, 0)
PG3_2.Size = UDim2.new(0, 171, 0, 38)
PG3_2.Font = Enum.Font.Gotham
PG3_2.Text = "Coming Soon!"
PG3_2.TextColor3 = Color3.new(0, 0, 0)
PG3_2.TextScaled = true
PG3_2.TextSize = 14
PG3_2.TextWrapped = true
 
PG3_3.Name = "PG3_3"
PG3_3.Parent = Frame3
PG3_3.BackgroundColor3 = Color3.new(0.835294, 0.329412, 1)
PG3_3.Position = UDim2.new(0.03763441, 0, 0.279005527, 0)
PG3_3.Size = UDim2.new(0, 171, 0, 38)
PG3_3.Font = Enum.Font.Gotham
PG3_3.Text = "Coming Soon!"
PG3_3.TextColor3 = Color3.new(0, 0, 0)
PG3_3.TextScaled = true
PG3_3.TextSize = 14
PG3_3.TextWrapped = true
 
PG3_4.Name = "PG3_4"
PG3_4.Parent = Frame3
PG3_4.BackgroundColor3 = Color3.new(0.835294, 0.329412, 1)
PG3_4.Position = UDim2.new(0.03763441, 0, 0.408839762, 0)
PG3_4.Size = UDim2.new(0, 171, 0, 38)
PG3_4.Font = Enum.Font.Gotham
PG3_4.Text = "Coming Soon!"
PG3_4.TextColor3 = Color3.new(0, 0, 0)
PG3_4.TextScaled = true
PG3_4.TextSize = 14
PG3_4.TextWrapped = true
 
PG3_5.Name = "PG3_5"
PG3_5.Parent = Frame3
PG3_5.BackgroundColor3 = Color3.new(0.835294, 0.329412, 1)
PG3_5.Position = UDim2.new(0.03763441, 0, 0.53591156, 0)
PG3_5.Size = UDim2.new(0, 171, 0, 38)
PG3_5.Font = Enum.Font.Gotham
PG3_5.Text = "Coming Soon!"
PG3_5.TextColor3 = Color3.new(0, 0, 0)
PG3_5.TextScaled = true
PG3_5.TextSize = 14
PG3_5.TextWrapped = true
 
PG3_6.Name = "PG3_6"
PG3_6.Parent = Frame3
PG3_6.BackgroundColor3 = Color3.new(0.835294, 0.329412, 1)
PG3_6.Position = UDim2.new(0.03763441, 0, 0.665745854, 0)
PG3_6.Size = UDim2.new(0, 171, 0, 38)
PG3_6.Font = Enum.Font.Gotham
PG3_6.Text = "Coming Soon!"
PG3_6.TextColor3 = Color3.new(0, 0, 0)
PG3_6.TextScaled = true
PG3_6.TextSize = 14
PG3_6.TextWrapped = true
 
PG3_7.Name = "PG3_7"
PG3_7.Parent = Frame3
PG3_7.BackgroundColor3 = Color3.new(0.835294, 0.329412, 1)
PG3_7.Position = UDim2.new(0.03763441, 0, 0.795580089, 0)
PG3_7.Size = UDim2.new(0, 171, 0, 38)
PG3_7.Font = Enum.Font.Gotham
PG3_7.Text = "Coming Soon!"
PG3_7.TextColor3 = Color3.new(0, 0, 0)
PG3_7.TextScaled = true
PG3_7.TextSize = 14
PG3_7.TextWrapped = true
 
PG3Credits.Name = "PG3Credits"
PG3Credits.Parent = Frame3
PG3Credits.BackgroundColor3 = Color3.new(1, 1, 1)
PG3Credits.BackgroundTransparency = 1
PG3Credits.BorderSizePixel = 0
PG3Credits.Position = UDim2.new(0.03763441, 0, 0.917127073, 0)
PG3Credits.Size = UDim2.new(0, 171, 0, 21)
PG3Credits.Font = Enum.Font.Gotham
PG3Credits.Text = "Made By: qNemesis"
PG3Credits.TextColor3 = Color3.new(0, 0, 0)
PG3Credits.TextScaled = true
PG3Credits.TextSize = 14
PG3Credits.TextWrapped = true