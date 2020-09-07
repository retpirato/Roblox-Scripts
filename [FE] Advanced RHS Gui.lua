-- Objects

local RbxhighGUIv2 = Instance.new("ScreenGui")
local topframe = Instance.new("Frame")
local close = Instance.new("TextButton")
local minimize = Instance.new("TextButton")
local creds = Instance.new("TextLabel")
local mainframe = Instance.new("Frame")
local Titan = Instance.new("TextButton")
local GiantTitan = Instance.new("TextButton")
local GiantHead = Instance.new("TextButton")
local MemeCreature = Instance.new("TextButton")
local RainbowChat = Instance.new("TextButton")
local BlackChat = Instance.new("TextButton")
local SizeFrameTab = Instance.new("TextButton")
local MusicPlayerTab = Instance.new("TextButton")
local MusicPlayerTab_2 = Instance.new("TextButton")
local Sizeframe = Instance.new("Frame")
local title = Instance.new("TextLabel")
local HeadScaleBox = Instance.new("TextBox")
local LowerLegHeightBox = Instance.new("TextBox")
local UpperTorsoWidthBox = Instance.new("TextBox")
local LowerTorsoWidthBox = Instance.new("TextBox")
local UpperArmHeightBox = Instance.new("TextBox")
local HandHeightBox = Instance.new("TextBox")
local UpperLegWidthBox = Instance.new("TextBox")
local LowerArmWidthBox = Instance.new("TextBox")
local UpperArmWidthBox = Instance.new("TextBox")
local FootWidthBox = Instance.new("TextBox")
local FootHeightBox = Instance.new("TextBox")
local LowerTorsoHeightBox = Instance.new("TextBox")
local UpperTorsoHeightBox = Instance.new("TextBox")
local UpperLegHeightBox = Instance.new("TextBox")
local HandWidthBox = Instance.new("TextBox")
local LowerArmHeightbox = Instance.new("TextBox")
local LowerLegWidthBox = Instance.new("TextBox")
local HelpBtnSizeFrame = Instance.new("TextButton")
local MorphButton = Instance.new("TextButton")
local DontMess = Instance.new("TextBox")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")
local TextLabel_6 = Instance.new("TextLabel")
local TextLabel_7 = Instance.new("TextLabel")
local TextLabel_8 = Instance.new("TextLabel")
local TextLabel_9 = Instance.new("TextLabel")
local TextLabel_10 = Instance.new("TextLabel")
local TextLabel_11 = Instance.new("TextLabel")
local TextLabel_12 = Instance.new("TextLabel")
local TextLabel_13 = Instance.new("TextLabel")
local TextLabel_14 = Instance.new("TextLabel")
local TextLabel_15 = Instance.new("TextLabel")
local TextLabel_16 = Instance.new("TextLabel")
local TextLabel_17 = Instance.new("TextLabel")
local BodyConfigurationHelpFrame = Instance.new("Frame")
local title_2 = Instance.new("TextLabel")
local info = Instance.new("TextLabel")
local MusicPlayerFrame = Instance.new("Frame")
local TitleMusicPlayer = Instance.new("TextLabel")
local MusicIDbox = Instance.new("TextBox")
local MusicPlayButton = Instance.new("TextButton")
local AllBodyConfigFrame = Instance.new("Frame")
local AllBodyConfigInfo = Instance.new("TextLabel")
local AllBodyConfigBox = Instance.new("TextBox")
local ChangeAll = Instance.new("TextButton")

-- Properties

RbxhighGUIv2.Name = "Rbx-high GUI v2"
RbxhighGUIv2.Parent = game.CoreGui

topframe.Name = "topframe"
topframe.Parent = RbxhighGUIv2
topframe.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
topframe.BorderColor3 = Color3.new(0, 0, 0)
topframe.Position = UDim2.new(0.194001839, 0, 0.58914727, 0)
topframe.Size = UDim2.new(0, 148, 0, 13)
topframe.Active = true
topframe.Draggable = true

close.Name = "close"
close.Parent = topframe
close.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
close.BorderColor3 = Color3.new(0, 0, 0)
close.BorderSizePixel = 0
close.Position = UDim2.new(0.928326011, 0, 0, 0)
close.Size = UDim2.new(0, 12, 0, 8)
close.Font = Enum.Font.SourceSans
close.Text = "X"
close.TextColor3 = Color3.new(1, 1, 1)
close.TextSize = 14
close.MouseButton1Click:Connect(function()

    if topframe.Visible == false then
        topframe.Visible = false
    else
        topframe.Visible = false
    end

end)

close.MouseButton1Click:Connect(function()

    if Sizeframe.Visible == false then
        Sizeframe.Visible = false
    else
        Sizeframe.Visible = false
    end

end)

close.MouseButton1Click:Connect(function()

    if BodyConfigurationHelpFrame.Visible == false then
        BodyConfigurationHelpFrame.Visible = false
    else
        BodyConfigurationHelpFrame.Visible = false
    end

end)

close.MouseButton1Click:Connect(function()

    if AllBodyConfigFrame.Visible == false then
        AllBodyConfigFrame.Visible = false
    else
        AllBodyConfigFrame.Visible = false
    end

end)

minimize.Name = "minimize"
minimize.Parent = topframe
minimize.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
minimize.BorderColor3 = Color3.new(0, 0, 0)
minimize.BorderSizePixel = 0
minimize.Position = UDim2.new(0.843447685, 0, 0, 0)
minimize.Size = UDim2.new(0, 12, 0, 8)
minimize.Font = Enum.Font.SourceSans
minimize.Text = "-"
minimize.TextColor3 = Color3.new(1, 1, 1)
minimize.TextSize = 14
minimize.MouseButton1Click:Connect(function()

    if mainframe.Visible == false then
        mainframe.Visible = true
    else
        mainframe.Visible = false
    end

end)

minimize.MouseButton1Click:Connect(function()

    if Sizeframe.Visible == false then
        Sizeframe.Visible = false
    else
        Sizeframe.Visible = false
    end

end)

minimize.MouseButton1Click:Connect(function()

    if BodyConfigurationHelpFrame.Visible == false then
        BodyConfigurationHelpFrame.Visible = false
    else
        BodyConfigurationHelpFrame.Visible = false
    end

end)

minimize.MouseButton1Click:Connect(function()

    if AllBodyConfigFrame.Visible == false then
        AllBodyConfigFrame.Visible = false
    else
        AllBodyConfigFrame.Visible = false
    end

end)

creds.Name = "creds"
creds.Parent = topframe
creds.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
creds.BorderColor3 = Color3.new(0, 0, 0)
creds.BorderSizePixel = 0
creds.Size = UDim2.new(0, 72, 0, 9)
creds.Font = Enum.Font.SourceSans
creds.Text = "Psykek#3180"
creds.TextColor3 = Color3.new(1, 0.619608, 0.00392157)
creds.TextSize = 14

mainframe.Name = "mainframe"
mainframe.Parent = topframe
mainframe.BackgroundColor3 = Color3.new(0.337255, 0.337255, 0.337255)
mainframe.BorderColor3 = Color3.new(0, 0, 0)
mainframe.Position = UDim2.new(0, 0, 1, 0)
mainframe.Size = UDim2.new(0, 148, 0, 132)

Titan.Name = "Titan"
Titan.Parent = mainframe
Titan.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
Titan.BorderColor3 = Color3.new(0, 0, 0)
Titan.Position = UDim2.new(0.0472972952, 0, 0.0454545468, 0)
Titan.Size = UDim2.new(0, 86, 0, 13)
Titan.Font = Enum.Font.SourceSans
Titan.Text = "Titan"
Titan.TextColor3 = Color3.new(0, 0, 0)
Titan.TextSize = 14
Titan.MouseButton1Click:Connect(function()
	local titan =
{
["assets"] =
{
[1] =
{
["drotation"] =
{
["y"] = 90,
["x"] = 90,
["z"] = 90
},
["dposition"] =
{
["y"] = 200,
["x"] = 200,
["z"] = 200
},
["scale"] =
{
["y"] = 100,
["x"] = 100,
["z"] = 100
},
["dscale"] =
{
["y"] = 500,
["x"] = 500,
["z"] = 500
},
["vscale"] =
{
["y"] = 1,
["x"] = 1,
["z"] = 1
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["assetId"] = 616980142,
["changedFX"] = false,
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["fx"] =
{
[1] = true,
[2] = true,
[3] = true,
[4] = true,
[5] = true
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = -0,
["z"] = -0
}
},
[2] =
{
["drotation"] =
{
["y"] = 90,
["x"] = 90,
["z"] = 90
},
["dposition"] =
{
["y"] = 200,
["x"] = 200,
["z"] = 200
},
["scale"] =
{
["y"] = 100,
["x"] = 100,
["z"] = 100
},
["dscale"] =
{
["y"] = 500,
["x"] = 500,
["z"] = 500
},
["vscale"] =
{
["y"] = 1,
["x"] = 1,
["z"] = 1
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["assetId"] = 602599987,
["changedFX"] = false,
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["fx"] =
{
[1] = true,
[2] = true,
[3] = true,
[4] = true,
[5] = true
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = -0,
["z"] = -0
}
},
[3] =
{
["drotation"] =
{
["y"] = 180,
["x"] = 90,
["z"] = 90
},
["dposition"] =
{
["y"] = 100,
["x"] = 200,
["z"] = 200
},
["scale"] =
{
["y"] = 100,
["x"] = 100,
["z"] = 100
},
["dscale"] =
{
["y"] = 500,
["x"] = 500,
["z"] = 500
},
["vscale"] =
{
["y"] = 1,
["x"] = 1,
["z"] = 1
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["assetId"] = 244159819,
["changedFX"] = false,
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["fx"] =
{
[1] = true,
[2] = true,
[3] = true,
[4] = true,
[5] = true
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = -0,
["z"] = -0
}
},
[4] =
{
["drotation"] =
{
["y"] = 90,
["x"] = 90,
["z"] = 90
},
["dposition"] =
{
["y"] = 200,
["x"] = 200,
["z"] = 200
},
["scale"] =
{
["y"] = 100,
["x"] = 100,
["z"] = 100
},
["dscale"] =
{
["y"] = 500,
["x"] = 500,
["z"] = 500
},
["vscale"] =
{
["y"] = 1,
["x"] = 1,
["z"] = 1
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["assetId"] = 7075502,
["changedFX"] = false,
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["fx"] =
{
[1] = true,
[2] = true,
[3] = true,
[4] = true,
[5] = true
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = -0,
["z"] = -0
}
},
[5] =
{
["drotation"] =
{
["y"] = 90,
["x"] = 90,
["z"] = 90
},
["dposition"] =
{
["y"] = 200,
["x"] = 200,
["z"] = 200
},
["scale"] =
{
["y"] = 100,
["x"] = 100,
["z"] = 100
},
["dscale"] =
{
["y"] = 500,
["x"] = 500,
["z"] = 500
},
["vscale"] =
{
["y"] = 1,
["x"] = 1,
["z"] = 1
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["assetId"] = 916733101,
["changedFX"] = false,
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["fx"] =
{
[1] = true,
[2] = true,
[3] = true,
[4] = true,
[5] = true
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = -0,
["z"] = -0
}
}
},
["description"] = "",
["createdDate"] = 1000,
["lowerDesc"] = "",
["bodyColors"] =
{
["HeadColor"] = Color3.new(1, 0, 0),
["TorsoColor"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
["LeftArmColor"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
["RightLegColor"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
["RightArmColor"] = Color3.new(1, 0, 0),
["LeftLegColor"] = Color3.new(1, 0, 0)
},
["scales"] =
{
["LowerLegHeight"] = 5,
["UpperTorsoWidth"] = 5,
["UpperArmHeight"] = 5,
["HandHeight"] = 5,
["UpperLegWidth"] = 5,
["LowerArmWidth"] = 5,
["FootWidth"] = 5,
["LowerArmHeight"] = 5,
["UpperArmWidth"] = 5,
["FootHeight"] = 5,
["LowerTorsoWidth"] = 5,
["UpperTorsoHeight"] = 5,
["HandWidth"] = 5,
["HeadScale"] = 5,
["UpperLegHeight"] = 5,
["LowerTorsoHeight"] = 5,
["LowerLegWidth"] = 5
},
["name"] = "",
["outfitId"] = 1,
["isOutfit"] = true,
["collageSeed"] = 0,
["lowerName"] = ""
}
local Event = game:GetService("ReplicatedStorage").AvatarEditor.Remote.CommitCharacterAppearance
Event:FireServer(titan)
end)

GiantTitan.Name = "GiantTitan"
GiantTitan.Parent = mainframe
GiantTitan.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
GiantTitan.BorderColor3 = Color3.new(0, 0, 0)
GiantTitan.Position = UDim2.new(0.0472972952, 0, 0.189393938, 0)
GiantTitan.Size = UDim2.new(0, 86, 0, 13)
GiantTitan.Font = Enum.Font.SourceSans
GiantTitan.Text = "Giant Titan"
GiantTitan.TextColor3 = Color3.new(0, 0, 0)
GiantTitan.TextSize = 14
GiantTitan.MouseButton1Click:Connect(function()
	local titan =
{
["assets"] =
{
[1] =
{
["drotation"] =
{
["y"] = 90,
["x"] = 90,
["z"] = 90
},
["dposition"] =
{
["y"] = 200,
["x"] = 200,
["z"] = 200
},
["scale"] =
{
["y"] = 100,
["x"] = 100,
["z"] = 100
},
["dscale"] =
{
["y"] = 500,
["x"] = 500,
["z"] = 500
},
["vscale"] =
{
["y"] = 1,
["x"] = 1,
["z"] = 1
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["assetId"] = 616980142,
["changedFX"] = false,
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["fx"] =
{
[1] = true,
[2] = true,
[3] = true,
[4] = true,
[5] = true
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = -0,
["z"] = -0
}
},
[2] =
{
["drotation"] =
{
["y"] = 90,
["x"] = 90,
["z"] = 90
},
["dposition"] =
{
["y"] = 200,
["x"] = 200,
["z"] = 200
},
["scale"] =
{
["y"] = 100,
["x"] = 100,
["z"] = 100
},
["dscale"] =
{
["y"] = 500,
["x"] = 500,
["z"] = 500
},
["vscale"] =
{
["y"] = 1,
["x"] = 1,
["z"] = 1
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["assetId"] = 602599987,
["changedFX"] = false,
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["fx"] =
{
[1] = true,
[2] = true,
[3] = true,
[4] = true,
[5] = true
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = -0,
["z"] = -0
}
},
[3] =
{
["drotation"] =
{
["y"] = 180,
["x"] = 90,
["z"] = 90
},
["dposition"] =
{
["y"] = 100,
["x"] = 200,
["z"] = 200
},
["scale"] =
{
["y"] = 100,
["x"] = 100,
["z"] = 100
},
["dscale"] =
{
["y"] = 500,
["x"] = 500,
["z"] = 500
},
["vscale"] =
{
["y"] = 1,
["x"] = 1,
["z"] = 1
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["assetId"] = 244159819,
["changedFX"] = false,
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["fx"] =
{
[1] = true,
[2] = true,
[3] = true,
[4] = true,
[5] = true
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = -0,
["z"] = -0
}
},
[4] =
{
["drotation"] =
{
["y"] = 90,
["x"] = 90,
["z"] = 90
},
["dposition"] =
{
["y"] = 200,
["x"] = 200,
["z"] = 200
},
["scale"] =
{
["y"] = 100,
["x"] = 100,
["z"] = 100
},
["dscale"] =
{
["y"] = 500,
["x"] = 500,
["z"] = 500
},
["vscale"] =
{
["y"] = 1,
["x"] = 1,
["z"] = 1
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["assetId"] = 7075502,
["changedFX"] = false,
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["fx"] =
{
[1] = true,
[2] = true,
[3] = true,
[4] = true,
[5] = true
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = -0,
["z"] = -0
}
},
[5] =
{
["drotation"] =
{
["y"] = 90,
["x"] = 90,
["z"] = 90
},
["dposition"] =
{
["y"] = 200,
["x"] = 200,
["z"] = 200
},
["scale"] =
{
["y"] = 100,
["x"] = 100,
["z"] = 100
},
["dscale"] =
{
["y"] = 500,
["x"] = 500,
["z"] = 500
},
["vscale"] =
{
["y"] = 1,
["x"] = 1,
["z"] = 1
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["assetId"] = 916733101,
["changedFX"] = false,
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["fx"] =
{
[1] = true,
[2] = true,
[3] = true,
[4] = true,
[5] = true
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = -0,
["z"] = -0
}
}
},
["description"] = "",
["createdDate"] = 1000,
["lowerDesc"] = "",
["bodyColors"] =
{
["HeadColor"] = Color3.new(1, 0, 0),
["TorsoColor"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
["LeftArmColor"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
["RightLegColor"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
["RightArmColor"] = Color3.new(1, 0, 0),
["LeftLegColor"] = Color3.new(1, 0, 0)
},
["scales"] =
{
["LowerLegHeight"] = 2e9,
["UpperTorsoWidth"] = 2e9,
["UpperArmHeight"] = 2e9,
["HandHeight"] = 2e9,
["UpperLegWidth"] = 2e9,
["LowerArmWidth"] = 2e9,
["FootWidth"] = 2e9,
["LowerArmHeight"] = 2e9,
["UpperArmWidth"] = 2e9,
["FootHeight"] = 2e9,
["LowerTorsoWidth"] = 2e9,
["UpperTorsoHeight"] = 2e9,
["HandWidth"] = 2e9,
["HeadScale"] = 2e9,
["UpperLegHeight"] = 2e9,
["LowerTorsoHeight"] = 2e9,
["LowerLegWidth"] = 2e9
},
["name"] = "",
["outfitId"] = 1,
["isOutfit"] = true,
["collageSeed"] = 0,
["lowerName"] = ""
}
local Event = game:GetService("ReplicatedStorage").AvatarEditor.Remote.CommitCharacterAppearance
Event:FireServer(titan)
end)

GiantHead.Name = "GiantHead"
GiantHead.Parent = mainframe
GiantHead.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
GiantHead.BorderColor3 = Color3.new(0, 0, 0)
GiantHead.Position = UDim2.new(0.0472972952, 0, 0.340909094, 0)
GiantHead.Size = UDim2.new(0, 86, 0, 13)
GiantHead.Font = Enum.Font.SourceSans
GiantHead.Text = "Giant Head"
GiantHead.TextColor3 = Color3.new(0, 0, 0)
GiantHead.TextSize = 14
GiantHead.MouseButton1Click:Connect(function()
	local OOF =
{
["assets"] =
{
[1] =
{
["drotation"] =
{
["y"] = 90,
["x"] = 90,
["z"] = 90
},
["dposition"] =
{
["y"] = 200,
["x"] = 200,
["z"] = 200
},
["scale"] =
{
["y"] = 10000,
["x"] = 10000,
["z"] = 10000
},
["dscale"] =
{
["y"] = 500,
["x"] = 500,
["z"] = 500
},
["vscale"] =
{
["y"] = 1,
["x"] = 1,
["z"] = 1
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["assetId"] = 916733101,
["changedFX"] = false,
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["fx"] =
{
[1] = true,
[2] = true,
[3] = true,
[4] = true,
[5] = true
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = -0,
["z"] = -0
}
},
[2] =
{
["drotation"] =
{
["y"] = 90,
["x"] = 90,
["z"] = 90
},
["dposition"] =
{
["y"] = 20000,
["x"] = 20000,
["z"] = 20000
},
["scale"] =
{
["y"] = 100,
["x"] = 100,
["z"] = 100
},
["dscale"] =
{
["y"] = 500,
["x"] = 500,
["z"] = 500
},
["vscale"] =
{
["y"] = 1,
["x"] = 1,
["z"] = 1
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["assetId"] = 602599987,
["changedFX"] = false,
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["fx"] =
{
[1] = true,
[2] = true,
[3] = true,
[4] = true,
[5] = true
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = -0,
["z"] = -0
}
},
[3] =
{
["drotation"] =
{
["y"] = 90,
["x"] = 90,
["z"] = 90
},
["dposition"] =
{
["y"] = 200,
["x"] = 200,
["z"] = 200
},
["scale"] =
{
["y"] = 10000,
["x"] = 10000,
["z"] = 10000
},
["dscale"] =
{
["y"] = 500,
["x"] = 500,
["z"] = 500
},
["vscale"] =
{
["y"] = 1,
["x"] = 1,
["z"] = 1
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["assetId"] = 616980142,
["changedFX"] = false,
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["fx"] =
{
[1] = true,
[2] = true,
[3] = true,
[4] = true,
[5] = true
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = -0,
["z"] = -0
}
},
[4] =
{
["drotation"] =
{
["y"] = 180,
["x"] = 90,
["z"] = 90
},
["dposition"] =
{
["y"] = 100,
["x"] = 200,
["z"] = 200
},
["scale"] =
{
["y"] = 1250,
["x"] = 1250,
["z"] = 12500
},
["dscale"] =
{
["y"] = 750,
["x"] = 750,
["z"] = 750
},
["vscale"] =
{
["y"] = 1.25,
["x"] = 1.25,
["z"] = 1.25
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["assetId"] = 244159819,
["changedFX"] = false,
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["fx"] =
{
[1] = true,
[2] = true,
[3] = true,
[4] = true,
[5] = true
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = -0,
["z"] = -0
}
},
[5] =
{
["drotation"] =
{
["y"] = 90,
["x"] = 90,
["z"] = 90
},
["dposition"] =
{
["y"] = 200,
["x"] = 200,
["z"] = 200
},
["scale"] =
{
["y"] = 5000,
["x"] = 5000,
["z"] = 5000
},
["dscale"] =
{
["y"] = 5000,
["x"] = 5000,
["z"] = 5000
},
["vscale"] =
{
["y"] = 1,
["x"] = 1,
["z"] = 1
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["assetId"] = 7075502,
["changedFX"] = false,
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["fx"] =
{
[1] = true,
[2] = true,
[3] = true,
[4] = true,
[5] = true
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = -0,
["z"] = -0
}
}
},
["description"] = "",
["createdDate"] = 1000,
["lowerDesc"] = "",
["bodyColors"] =
{
["HeadColor"] = Color3.new(1, 0, 0),
["TorsoColor"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
["LeftArmColor"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
["RightLegColor"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
["RightArmColor"] = Color3.new(1, 0, 0),
["LeftLegColor"] = Color3.new(1, 0, 0)
},
["scales"] =
{
["LowerLegHeight"] = 1,
["UpperTorsoWidth"] = 1,
["UpperArmHeight"] = 1,
["HandHeight"] = 1,
["UpperLegWidth"] = 1,
["LowerArmWidth"] = 1,
["FootWidth"] = 1,
["LowerArmHeight"] = 1,
["UpperArmWidth"] = 1,
["FootHeight"] = 1,
["LowerTorsoWidth"] = 1,
["UpperTorsoHeight"] = 1,
["HandWidth"] = 1,
["HeadScale"] = 500,
["UpperLegHeight"] = 1,
["LowerTorsoHeight"] = 1,
["LowerLegWidth"] = 1
},
["name"] = "GAY",
["outfitId"] = 1,
["isOutfit"] = true,
["collageSeed"] = 0,
["lowerName"] = ""
}
local Event = game:GetService("ReplicatedStorage").AvatarEditor.Remote.CommitCharacterAppearance
Event:FireServer(OOF)
end)

MemeCreature.Name = "MemeCreature"
MemeCreature.Parent = mainframe
MemeCreature.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
MemeCreature.BorderColor3 = Color3.new(0, 0, 0)
MemeCreature.Position = UDim2.new(0.0472972952, 0, 0.5, 0)
MemeCreature.Size = UDim2.new(0, 86, 0, 13)
MemeCreature.Font = Enum.Font.SourceSans
MemeCreature.Text = "Meme Creature"
MemeCreature.TextColor3 = Color3.new(0, 0, 0)
MemeCreature.TextSize = 14
MemeCreature.MouseButton1Click:Connect(function()
	local weird =
{
["assets"] =
{
[1] =
{
["drotation"] =
{
["y"] = 90,
["x"] = 90,
["z"] = 90
},
["dposition"] =
{
["y"] = 200,
["x"] = 200,
["z"] = 200
},
["scale"] =
{
["y"] = 100,
["x"] = 100,
["z"] = 100
},
["dscale"] =
{
["y"] = 500,
["x"] = 500,
["z"] = 500
},
["vscale"] =
{
["y"] = 1,
["x"] = 1,
["z"] = 1
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["assetId"] = 616980142,
["changedFX"] = false,
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["fx"] =
{
[1] = true,
[2] = true,
[3] = true,
[4] = true,
[5] = true
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = -0,
["z"] = -0
}
},
[2] =
{
["drotation"] =
{
["y"] = 90,
["x"] = 90,
["z"] = 90
},
["dposition"] =
{
["y"] = 200,
["x"] = 200,
["z"] = 200
},
["scale"] =
{
["y"] = 100,
["x"] = 100,
["z"] = 100
},
["dscale"] =
{
["y"] = 500,
["x"] = 500,
["z"] = 500
},
["vscale"] =
{
["y"] = 1,
["x"] = 1,
["z"] = 1
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["assetId"] = 602599987,
["changedFX"] = false,
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["fx"] =
{
[1] = true,
[2] = true,
[3] = true,
[4] = true,
[5] = true
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = -0,
["z"] = -0
}
},
[3] =
{
["drotation"] =
{
["y"] = 180,
["x"] = 90,
["z"] = 90
},
["dposition"] =
{
["y"] = 100,
["x"] = 200,
["z"] = 200
},
["scale"] =
{
["y"] = 100,
["x"] = 100,
["z"] = 100
},
["dscale"] =
{
["y"] = 500,
["x"] = 500,
["z"] = 500
},
["vscale"] =
{
["y"] = 1,
["x"] = 1,
["z"] = 1
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["assetId"] = 244159819,
["changedFX"] = false,
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["fx"] =
{
[1] = true,
[2] = true,
[3] = true,
[4] = true,
[5] = true
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = -0,
["z"] = -0
}
},
[4] =
{
["drotation"] =
{
["y"] = 90,
["x"] = 90,
["z"] = 90
},
["dposition"] =
{
["y"] = 200,
["x"] = 200,
["z"] = 200
},
["scale"] =
{
["y"] = 100,
["x"] = 100,
["z"] = 100
},
["dscale"] =
{
["y"] = 500,
["x"] = 500,
["z"] = 500
},
["vscale"] =
{
["y"] = 1,
["x"] = 1,
["z"] = 1
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["assetId"] = 7075502,
["changedFX"] = false,
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["fx"] =
{
[1] = true,
[2] = true,
[3] = true,
[4] = true,
[5] = true
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = -0,
["z"] = -0
}
},
[5] =
{
["drotation"] =
{
["y"] = 90,
["x"] = 90,
["z"] = 90
},
["dposition"] =
{
["y"] = 200,
["x"] = 200,
["z"] = 200
},
["scale"] =
{
["y"] = 100,
["x"] = 100,
["z"] = 100
},
["dscale"] =
{
["y"] = 500,
["x"] = 500,
["z"] = 500
},
["vscale"] =
{
["y"] = 1,
["x"] = 1,
["z"] = 1
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["assetId"] = 916733101,
["changedFX"] = false,
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["fx"] =
{
[1] = true,
[2] = true,
[3] = true,
[4] = true,
[5] = true
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = -0,
["z"] = -0
}
}
},
["description"] = "",
["createdDate"] = 1000,
["lowerDesc"] = "",
["bodyColors"] =
{
["HeadColor"] = Color3.new(1, 0, 0),
["TorsoColor"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
["LeftArmColor"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
["RightLegColor"] = Color3.new(0.0666667, 0.0666667, 0.0666667),
["RightArmColor"] = Color3.new(1, 0, 0),
["LeftLegColor"] = Color3.new(1, 0, 0)
},
["scales"] =
{
["LowerLegHeight"] = 5,
["UpperTorsoWidth"] = 5,
["UpperArmHeight"] = 5,
["HandHeight"] = 5,
["UpperLegWidth"] = -1,
["LowerArmWidth"] = -1,
["FootWidth"] = 5,
["LowerArmHeight"] = -1,
["UpperArmWidth"] = -1,
["FootHeight"] = 5,
["LowerTorsoWidth"] = -1,
["UpperTorsoHeight"] = -1,
["HandWidth"] = -1,
["HeadScale"] = -1,
["UpperLegHeight"] = -1,
["LowerTorsoHeight"] = -1,
["LowerLegWidth"] = -1
},
["name"] = "",
["outfitId"] = 1,
["isOutfit"] = true,
["collageSeed"] = 0,
["lowerName"] = ""
}
local Event = game:GetService("ReplicatedStorage").AvatarEditor.Remote.CommitCharacterAppearance
Event:FireServer(weird)
end)

RainbowChat.Name = "RainbowChat"
RainbowChat.Parent = mainframe
RainbowChat.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
RainbowChat.BorderColor3 = Color3.new(0, 0, 0)
RainbowChat.Position = UDim2.new(0.0472972952, 0, 0.651515126, 0)
RainbowChat.Size = UDim2.new(0, 86, 0, 13)
RainbowChat.Font = Enum.Font.SourceSans
RainbowChat.Text = "Rainbow Chat"
RainbowChat.TextColor3 = Color3.new(0, 0, 0)
RainbowChat.TextSize = 14
RainbowChat.MouseButton1Click:Connect(function()
while true do
wait()
local r = (math.sin(workspace.DistributedGameTime/2)/2)+0.5
local g = (math.sin(workspace.DistributedGameTime)/2)+0.5
local b = (math.sin(workspace.DistributedGameTime*1.5)/2)+0.5
local color = Color3.new(r, g, b)
local Event = game:GetService("ReplicatedStorage").ClientRequests.UpdateChatColorEvent
Event:FireServer(color)
end
end)

BlackChat.Name = "BlackChat"
BlackChat.Parent = mainframe
BlackChat.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
BlackChat.BorderColor3 = Color3.new(0, 0, 0)
BlackChat.Position = UDim2.new(0.0472972952, 0, 0.803030252, 0)
BlackChat.Size = UDim2.new(0, 86, 0, 13)
BlackChat.Font = Enum.Font.SourceSans
BlackChat.Text = "Black Chat"
BlackChat.TextColor3 = Color3.new(0, 0, 0)
BlackChat.TextSize = 14
BlackChat.MouseButton1Click:Connect(function()
	local color = Color3.new(0,0,0) --Color you want here!
local Event = game:GetService("ReplicatedStorage").ClientRequests.UpdateChatColorEvent
Event:FireServer(color)
end)

SizeFrameTab.Name = "SizeFrameTab"
SizeFrameTab.Parent = mainframe
SizeFrameTab.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
SizeFrameTab.BorderColor3 = Color3.new(0, 0, 0)
SizeFrameTab.Position = UDim2.new(0.92567569, 0, 0.0454545468, 0)
SizeFrameTab.Size = UDim2.new(0, 11, 0, 13)
SizeFrameTab.Font = Enum.Font.SourceSans
SizeFrameTab.Text = "1"
SizeFrameTab.TextColor3 = Color3.new(0, 0, 0)
SizeFrameTab.TextSize = 14
SizeFrameTab.MouseButton1Click:Connect(function()
	 if Sizeframe.Visible == false then
        Sizeframe.Visible = true
    else
        Sizeframe.Visible = false
    end
end)

SizeFrameTab.MouseButton1Click:Connect(function()

    if BodyConfigurationHelpFrame.Visible == false then
        BodyConfigurationHelpFrame.Visible = false
    else
        BodyConfigurationHelpFrame.Visible = false
    end

end)


MusicPlayerTab.Name = "MusicPlayerTab"
MusicPlayerTab.Parent = mainframe
MusicPlayerTab.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
MusicPlayerTab.BorderColor3 = Color3.new(0, 0, 0)
MusicPlayerTab.Position = UDim2.new(0.92567569, 0, 0.189393938, 0)
MusicPlayerTab.Size = UDim2.new(0, 11, 0, 13)
MusicPlayerTab.Font = Enum.Font.SourceSans
MusicPlayerTab.Text = "2"
MusicPlayerTab.TextColor3 = Color3.new(0, 0, 0)
MusicPlayerTab.TextSize = 14
MusicPlayerTab.MouseButton1Click:Connect(function()

    if AllBodyConfigFrame.Visible == false then
        AllBodyConfigFrame.Visible = true
    else
        AllBodyConfigFrame.Visible = false
    end

end)

Sizeframe.Name = "Sizeframe"
Sizeframe.Parent = RbxhighGUIv2
Sizeframe.BackgroundColor3 = Color3.new(0.333333, 0.333333, 0.333333)
Sizeframe.BorderColor3 = Color3.new(0, 0, 0)
Sizeframe.Position = UDim2.new(0.61105901, 0, 0.434108555, 0)
Sizeframe.Size = UDim2.new(0, 375, 0, 271)
Sizeframe.Active = true
Sizeframe.Draggable = true
Sizeframe.Visible = false

title.Name = "title"
title.Parent = Sizeframe
title.BackgroundColor3 = Color3.new(0.380392, 0.380392, 0.380392)
title.BorderColor3 = Color3.new(0, 0, 0)
title.Position = UDim2.new(0.207310781, 0, 0, 0)
title.Size = UDim2.new(0, 219, 0, 26)
title.Font = Enum.Font.SourceSans
title.Text = "Custom Body Configuration"
title.TextColor3 = Color3.new(0, 0, 0)
title.TextSize = 16
title.TextWrapped = true

HeadScaleBox.Name = "HeadScaleBox"
HeadScaleBox.Parent = Sizeframe
HeadScaleBox.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
HeadScaleBox.BorderColor3 = Color3.new(0, 0, 0)
HeadScaleBox.Position = UDim2.new(0.042871356, 0, 0.222484708, 0)
HeadScaleBox.Size = UDim2.new(0, 62, 0, 20)
HeadScaleBox.Font = Enum.Font.SourceSans
HeadScaleBox.Text = "INT"
HeadScaleBox.TextColor3 = Color3.new(0, 0, 0)
HeadScaleBox.TextScaled = true
HeadScaleBox.TextSize = 14
HeadScaleBox.TextWrapped = true

LowerLegHeightBox.Name = "LowerLegHeightBox"
LowerLegHeightBox.Parent = Sizeframe
LowerLegHeightBox.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
LowerLegHeightBox.BorderColor3 = Color3.new(0, 0, 0)
LowerLegHeightBox.Position = UDim2.new(0.296204686, 0, 0.221601546, 0)
LowerLegHeightBox.Size = UDim2.new(0, 62, 0, 20)
LowerLegHeightBox.Font = Enum.Font.SourceSans
LowerLegHeightBox.Text = "INT"
LowerLegHeightBox.TextColor3 = Color3.new(0, 0, 0)
LowerLegHeightBox.TextScaled = true
LowerLegHeightBox.TextSize = 14
LowerLegHeightBox.TextWrapped = true

UpperTorsoWidthBox.Name = "UpperTorsoWidthBox"
UpperTorsoWidthBox.Parent = Sizeframe
UpperTorsoWidthBox.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
UpperTorsoWidthBox.BorderColor3 = Color3.new(0, 0, 0)
UpperTorsoWidthBox.Position = UDim2.new(0.549538076, 0, 0.221949041, 0)
UpperTorsoWidthBox.Size = UDim2.new(0, 62, 0, 20)
UpperTorsoWidthBox.Font = Enum.Font.SourceSans
UpperTorsoWidthBox.Text = "INT"
UpperTorsoWidthBox.TextColor3 = Color3.new(0, 0, 0)
UpperTorsoWidthBox.TextScaled = true
UpperTorsoWidthBox.TextSize = 14
UpperTorsoWidthBox.TextWrapped = true

LowerTorsoWidthBox.Name = "LowerTorsoWidthBox"
LowerTorsoWidthBox.Parent = Sizeframe
LowerTorsoWidthBox.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
LowerTorsoWidthBox.BorderColor3 = Color3.new(0, 0, 0)
LowerTorsoWidthBox.Position = UDim2.new(0.790871382, 0, 0.222313806, 0)
LowerTorsoWidthBox.Size = UDim2.new(0, 62, 0, 20)
LowerTorsoWidthBox.Font = Enum.Font.SourceSans
LowerTorsoWidthBox.Text = "INT"
LowerTorsoWidthBox.TextColor3 = Color3.new(0, 0, 0)
LowerTorsoWidthBox.TextScaled = true
LowerTorsoWidthBox.TextSize = 14
LowerTorsoWidthBox.TextWrapped = true

UpperArmHeightBox.Name = "UpperArmHeightBox"
UpperArmHeightBox.Parent = Sizeframe
UpperArmHeightBox.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
UpperArmHeightBox.BorderColor3 = Color3.new(0, 0, 0)
UpperArmHeightBox.Position = UDim2.new(0.296204716, 0, 0.399800479, 0)
UpperArmHeightBox.Size = UDim2.new(0, 62, 0, 20)
UpperArmHeightBox.Font = Enum.Font.SourceSans
UpperArmHeightBox.Text = "INT"
UpperArmHeightBox.TextColor3 = Color3.new(0, 0, 0)
UpperArmHeightBox.TextScaled = true
UpperArmHeightBox.TextSize = 14
UpperArmHeightBox.TextWrapped = true

HandHeightBox.Name = "HandHeightBox"
HandHeightBox.Parent = Sizeframe
HandHeightBox.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
HandHeightBox.BorderColor3 = Color3.new(0, 0, 0)
HandHeightBox.Position = UDim2.new(0.54838872, 0, 0.580418229, 0)
HandHeightBox.Size = UDim2.new(0, 62, 0, 20)
HandHeightBox.Font = Enum.Font.SourceSans
HandHeightBox.Text = "INT"
HandHeightBox.TextColor3 = Color3.new(0, 0, 0)
HandHeightBox.TextScaled = true
HandHeightBox.TextSize = 14
HandHeightBox.TextWrapped = true

UpperLegWidthBox.Name = "UpperLegWidthBox"
UpperLegWidthBox.Parent = Sizeframe
UpperLegWidthBox.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
UpperLegWidthBox.BorderColor3 = Color3.new(0, 0, 0)
UpperLegWidthBox.Position = UDim2.new(0.550472975, 0, 0.398723304, 0)
UpperLegWidthBox.Size = UDim2.new(0, 62, 0, 20)
UpperLegWidthBox.Font = Enum.Font.SourceSans
UpperLegWidthBox.Text = "INT"
UpperLegWidthBox.TextColor3 = Color3.new(0, 0, 0)
UpperLegWidthBox.TextScaled = true
UpperLegWidthBox.TextSize = 14
UpperLegWidthBox.TextWrapped = true

LowerArmWidthBox.Name = "LowerArmWidthBox"
LowerArmWidthBox.Parent = Sizeframe
LowerArmWidthBox.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
LowerArmWidthBox.BorderColor3 = Color3.new(0, 0, 0)
LowerArmWidthBox.Position = UDim2.new(0.787055373, 0, 0.39907074, 0)
LowerArmWidthBox.Size = UDim2.new(0, 62, 0, 20)
LowerArmWidthBox.Font = Enum.Font.SourceSans
LowerArmWidthBox.Text = "INT"
LowerArmWidthBox.TextColor3 = Color3.new(0, 0, 0)
LowerArmWidthBox.TextScaled = true
LowerArmWidthBox.TextSize = 14
LowerArmWidthBox.TextWrapped = true

UpperArmWidthBox.Name = "UpperArmWidthBox"
UpperArmWidthBox.Parent = Sizeframe
UpperArmWidthBox.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
UpperArmWidthBox.BorderColor3 = Color3.new(0, 0, 0)
UpperArmWidthBox.Position = UDim2.new(0.0417220592, 0, 0.580721974, 0)
UpperArmWidthBox.Size = UDim2.new(0, 62, 0, 20)
UpperArmWidthBox.Font = Enum.Font.SourceSans
UpperArmWidthBox.Text = "INT"
UpperArmWidthBox.TextColor3 = Color3.new(0, 0, 0)
UpperArmWidthBox.TextScaled = true
UpperArmWidthBox.TextSize = 14
UpperArmWidthBox.TextWrapped = true

FootWidthBox.Name = "FootWidthBox"
FootWidthBox.Parent = Sizeframe
FootWidthBox.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
FootWidthBox.BorderColor3 = Color3.new(0, 0, 0)
FootWidthBox.Position = UDim2.new(0.297139645, 0, 0.580137789, 0)
FootWidthBox.Size = UDim2.new(0, 62, 0, 20)
FootWidthBox.Font = Enum.Font.SourceSans
FootWidthBox.Text = "INT"
FootWidthBox.TextColor3 = Color3.new(0, 0, 0)
FootWidthBox.TextScaled = true
FootWidthBox.TextSize = 14
FootWidthBox.TextWrapped = true

FootHeightBox.Name = "FootHeightBox"
FootHeightBox.Parent = Sizeframe
FootHeightBox.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
FootHeightBox.BorderColor3 = Color3.new(0, 0, 0)
FootHeightBox.Position = UDim2.new(0.417333335, 0, 0.918819189, 0)
FootHeightBox.Size = UDim2.new(0, 62, 0, 16)
FootHeightBox.Font = Enum.Font.SourceSans
FootHeightBox.Text = "INT"
FootHeightBox.TextColor3 = Color3.new(0, 0, 0)
FootHeightBox.TextScaled = true
FootHeightBox.TextSize = 14
FootHeightBox.TextWrapped = true

LowerTorsoHeightBox.Name = "LowerTorsoHeightBox"
LowerTorsoHeightBox.Parent = Sizeframe
LowerTorsoHeightBox.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
LowerTorsoHeightBox.BorderColor3 = Color3.new(0, 0, 0)
LowerTorsoHeightBox.Position = UDim2.new(0.295821607, 0, 0.754811883, 0)
LowerTorsoHeightBox.Size = UDim2.new(0, 62, 0, 20)
LowerTorsoHeightBox.Font = Enum.Font.SourceSans
LowerTorsoHeightBox.Text = "INT"
LowerTorsoHeightBox.TextColor3 = Color3.new(0, 0, 0)
LowerTorsoHeightBox.TextScaled = true
LowerTorsoHeightBox.TextSize = 14
LowerTorsoHeightBox.TextWrapped = true

UpperTorsoHeightBox.Name = "UpperTorsoHeightBox"
UpperTorsoHeightBox.Parent = Sizeframe
UpperTorsoHeightBox.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
UpperTorsoHeightBox.BorderColor3 = Color3.new(0, 0, 0)
UpperTorsoHeightBox.Position = UDim2.new(0.793154955, 0, 0.755159318, 0)
UpperTorsoHeightBox.Size = UDim2.new(0, 62, 0, 20)
UpperTorsoHeightBox.Font = Enum.Font.SourceSans
UpperTorsoHeightBox.Text = "INT"
UpperTorsoHeightBox.TextColor3 = Color3.new(0, 0, 0)
UpperTorsoHeightBox.TextScaled = true
UpperTorsoHeightBox.TextSize = 14
UpperTorsoHeightBox.TextWrapped = true

UpperLegHeightBox.Name = "UpperLegHeightBox"
UpperLegHeightBox.Parent = Sizeframe
UpperLegHeightBox.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
UpperLegHeightBox.BorderColor3 = Color3.new(0, 0, 0)
UpperLegHeightBox.Position = UDim2.new(0.0438215733, 0, 0.755998671, 0)
UpperLegHeightBox.Size = UDim2.new(0, 62, 0, 20)
UpperLegHeightBox.Font = Enum.Font.SourceSans
UpperLegHeightBox.Text = "INT"
UpperLegHeightBox.TextColor3 = Color3.new(0, 0, 0)
UpperLegHeightBox.TextScaled = true
UpperLegHeightBox.TextSize = 14
UpperLegHeightBox.TextWrapped = true

HandWidthBox.Name = "HandWidthBox"
HandWidthBox.Parent = Sizeframe
HandWidthBox.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
HandWidthBox.BorderColor3 = Color3.new(0, 0, 0)
HandWidthBox.Position = UDim2.new(0.549154937, 0, 0.755414486, 0)
HandWidthBox.Size = UDim2.new(0, 62, 0, 20)
HandWidthBox.Font = Enum.Font.SourceSans
HandWidthBox.Text = "INT"
HandWidthBox.TextColor3 = Color3.new(0, 0, 0)
HandWidthBox.TextScaled = true
HandWidthBox.TextSize = 14
HandWidthBox.TextWrapped = true

LowerArmHeightbox.Name = "LowerArmHeightbox"
LowerArmHeightbox.Parent = Sizeframe
LowerArmHeightbox.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
LowerArmHeightbox.BorderColor3 = Color3.new(0, 0, 0)
LowerArmHeightbox.Position = UDim2.new(0.0415380001, 0, 0.398847759, 0)
LowerArmHeightbox.Size = UDim2.new(0, 62, 0, 20)
LowerArmHeightbox.Font = Enum.Font.SourceSans
LowerArmHeightbox.Text = "INT"
LowerArmHeightbox.TextColor3 = Color3.new(0, 0, 0)
LowerArmHeightbox.TextScaled = true
LowerArmHeightbox.TextSize = 14
LowerArmHeightbox.TextWrapped = true

LowerLegWidthBox.Name = "LowerLegWidthBox"
LowerLegWidthBox.Parent = Sizeframe
LowerLegWidthBox.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
LowerLegWidthBox.BorderColor3 = Color3.new(0, 0, 0)
LowerLegWidthBox.Position = UDim2.new(0.791821599, 0, 0.578968227, 0)
LowerLegWidthBox.Size = UDim2.new(0, 62, 0, 20)
LowerLegWidthBox.Font = Enum.Font.SourceSans
LowerLegWidthBox.Text = "INT"
LowerLegWidthBox.TextColor3 = Color3.new(0, 0, 0)
LowerLegWidthBox.TextScaled = true
LowerLegWidthBox.TextSize = 14
LowerLegWidthBox.TextWrapped = true

HelpBtnSizeFrame.Name = "HelpBtnSizeFrame"
HelpBtnSizeFrame.Parent = Sizeframe
HelpBtnSizeFrame.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
HelpBtnSizeFrame.BorderColor3 = Color3.new(0, 0, 0)
HelpBtnSizeFrame.Position = UDim2.new(0.964319468, 0, 0, 0)
HelpBtnSizeFrame.Size = UDim2.new(0, 13, 0, 12)
HelpBtnSizeFrame.Font = Enum.Font.SourceSans
HelpBtnSizeFrame.Text = "?"
HelpBtnSizeFrame.TextColor3 = Color3.new(0, 0, 0)
HelpBtnSizeFrame.TextSize = 14
HelpBtnSizeFrame.MouseButton1Click:Connect(function()

    if BodyConfigurationHelpFrame.Visible == false then
        BodyConfigurationHelpFrame.Visible = true
    else
        BodyConfigurationHelpFrame.Visible = false
    end

end)

MorphButton.Name = "MorphButton"
MorphButton.Parent = Sizeframe
MorphButton.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
MorphButton.BorderColor3 = Color3.new(1, 1, 1)
MorphButton.Position = UDim2.new(0.759990275, 0, 0.89912641, 0)
MorphButton.Size = UDim2.new(0, 82, 0, 19)
MorphButton.Font = Enum.Font.SourceSans
MorphButton.Text = "Change"
MorphButton.TextColor3 = Color3.new(0, 0, 0)
MorphButton.TextSize = 14
MorphButton.MouseButton1Click:Connect(function()
		local OOF =
{
["assets"] =
{
[1] =
{
["drotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["scale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
}
},
[2] =
{
["drotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["scale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
}
},
[3] =
{
["drotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["scale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
}
},
[4] =
{
["drotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["scale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
}
},
[5] =
{
["drotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["scale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
}
}
},
["description"] = "",
["createdDate"] = 1000,
["lowerDesc"] = "",
["scales"] =
{
["LowerLegHeight"] = (LowerLegHeightBox.Text),
["UpperTorsoWidth"] = (UpperTorsoHeightBox.Text),
["UpperArmHeight"] = (UpperArmHeightBox.Text),
["HandHeight"] = (HandHeightBox.Text),
["UpperLegWidth"] = (UpperLegWidthBox.Text),
["LowerArmWidth"] = (LowerArmWidthBox.Text),
["FootWidth"] = (FootWidthBox.Text),
["LowerArmHeight"] = (LowerArmHeightbox.Text),
["UpperArmWidth"] = (UpperArmWidthBox.Text),
["FootHeight"] = (FootHeightBox.Text),
["LowerTorsoWidth"] = (LowerTorsoWidthBox.Text),
["UpperTorsoHeight"] = (UpperTorsoHeightBox.Text),
["HandWidth"] = (HandWidthBox.Text),
["HeadScale"] = (HeadScaleBox.Text),
["UpperLegHeight"] = (UpperLegHeightBox.Text),
["LowerTorsoHeight"] = (LowerTorsoHeightBox.Text),
["LowerLegWidth"] = (LowerLegWidthBox.Text)
},
["name"] = "",
["outfitId"] = 1,
["isOutfit"] = true,
["collageSeed"] = 0,
["lowerName"] = ""
}
local Event = game:GetService("ReplicatedStorage").AvatarEditor.Remote.CommitCharacterAppearance
Event:FireServer(OOF)
end)

DontMess.Name = "DontMess"
DontMess.Parent = Sizeframe
DontMess.BackgroundColor3 = Color3.new(0.333333, 0.333333, 0.333333)
DontMess.BorderSizePixel = 0
DontMess.Size = UDim2.new(0, 7, 0, 6)
DontMess.Visible = false
DontMess.Font = Enum.Font.SourceSans
DontMess.Text = ""
DontMess.TextSize = 14

TextLabel.Parent = Sizeframe
TextLabel.BackgroundColor3 = Color3.new(0.333333, 0.333333, 0.333333)
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 0, 0.136531368, 0)
TextLabel.Size = UDim2.new(0, 95, 0, 16)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "-- Head Scale --"
TextLabel.TextColor3 = Color3.new(0, 0, 0)
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

TextLabel_2.Parent = Sizeframe
TextLabel_2.BackgroundColor3 = Color3.new(0.333333, 0.333333, 0.333333)
TextLabel_2.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.25333333, 0, 0.136531368, 0)
TextLabel_2.Size = UDim2.new(0, 95, 0, 16)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "-- Low Leg Height --"
TextLabel_2.TextColor3 = Color3.new(0, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14
TextLabel_2.TextWrapped = true

TextLabel_3.Parent = Sizeframe
TextLabel_3.BackgroundColor3 = Color3.new(0.333333, 0.333333, 0.333333)
TextLabel_3.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.50666666, 0, 0.136531368, 0)
TextLabel_3.Size = UDim2.new(0, 95, 0, 16)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "-- Up Torso Width --"
TextLabel_3.TextColor3 = Color3.new(0, 0, 0)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14
TextLabel_3.TextWrapped = true

TextLabel_4.Parent = Sizeframe
TextLabel_4.BackgroundColor3 = Color3.new(0.333333, 0.333333, 0.333333)
TextLabel_4.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(-0.00133333332, 0, 0.317343175, 0)
TextLabel_4.Size = UDim2.new(0, 95, 0, 16)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "-- Low Arm Height --"
TextLabel_4.TextColor3 = Color3.new(0, 0, 0)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14
TextLabel_4.TextWrapped = true

TextLabel_5.Parent = Sizeframe
TextLabel_5.BackgroundColor3 = Color3.new(0.333333, 0.333333, 0.333333)
TextLabel_5.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(0.252000004, 0, 0.317343175, 0)
TextLabel_5.Size = UDim2.new(0, 95, 0, 16)
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.Text = "-- Up Arm Height --"
TextLabel_5.TextColor3 = Color3.new(0, 0, 0)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 14
TextLabel_5.TextWrapped = true

TextLabel_6.Parent = Sizeframe
TextLabel_6.BackgroundColor3 = Color3.new(0.333333, 0.333333, 0.333333)
TextLabel_6.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Position = UDim2.new(0.745333314, 0, 0.136531368, 0)
TextLabel_6.Size = UDim2.new(0, 95, 0, 16)
TextLabel_6.Font = Enum.Font.SourceSans
TextLabel_6.Text = "-- Low Torso Width --"
TextLabel_6.TextColor3 = Color3.new(0, 0, 0)
TextLabel_6.TextScaled = true
TextLabel_6.TextSize = 14
TextLabel_6.TextWrapped = true

TextLabel_7.Parent = Sizeframe
TextLabel_7.BackgroundColor3 = Color3.new(0.333333, 0.333333, 0.333333)
TextLabel_7.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Position = UDim2.new(-0.00133333332, 0, 0.498154998, 0)
TextLabel_7.Size = UDim2.new(0, 95, 0, 16)
TextLabel_7.Font = Enum.Font.SourceSans
TextLabel_7.Text = "-- Up Arm Width --"
TextLabel_7.TextColor3 = Color3.new(0, 0, 0)
TextLabel_7.TextSize = 14
TextLabel_7.TextWrapped = true

TextLabel_8.Parent = Sizeframe
TextLabel_8.BackgroundColor3 = Color3.new(0.333333, 0.333333, 0.333333)
TextLabel_8.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_8.BorderSizePixel = 0
TextLabel_8.Position = UDim2.new(0.742666662, 0, 0.317343175, 0)
TextLabel_8.Size = UDim2.new(0, 95, 0, 16)
TextLabel_8.Font = Enum.Font.SourceSans
TextLabel_8.Text = "-- Low Arm Width --"
TextLabel_8.TextColor3 = Color3.new(0, 0, 0)
TextLabel_8.TextScaled = true
TextLabel_8.TextSize = 14
TextLabel_8.TextWrapped = true

TextLabel_9.Parent = Sizeframe
TextLabel_9.BackgroundColor3 = Color3.new(0.333333, 0.333333, 0.333333)
TextLabel_9.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_9.BorderSizePixel = 0
TextLabel_9.Position = UDim2.new(0.505333304, 0, 0.317343175, 0)
TextLabel_9.Size = UDim2.new(0, 95, 0, 16)
TextLabel_9.Font = Enum.Font.SourceSans
TextLabel_9.Text = "-- Up Leg Width --"
TextLabel_9.TextColor3 = Color3.new(0, 0, 0)
TextLabel_9.TextSize = 14
TextLabel_9.TextWrapped = true

TextLabel_10.Parent = Sizeframe
TextLabel_10.BackgroundColor3 = Color3.new(0.333333, 0.333333, 0.333333)
TextLabel_10.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_10.BorderSizePixel = 0
TextLabel_10.Position = UDim2.new(0.252000004, 0, 0.498154998, 0)
TextLabel_10.Size = UDim2.new(0, 95, 0, 16)
TextLabel_10.Font = Enum.Font.SourceSans
TextLabel_10.Text = "-- Foot Width --"
TextLabel_10.TextColor3 = Color3.new(0, 0, 0)
TextLabel_10.TextSize = 14

TextLabel_11.Parent = Sizeframe
TextLabel_11.BackgroundColor3 = Color3.new(0.333333, 0.333333, 0.333333)
TextLabel_11.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_11.BorderSizePixel = 0
TextLabel_11.Position = UDim2.new(0.505333304, 0, 0.498154998, 0)
TextLabel_11.Size = UDim2.new(0, 95, 0, 16)
TextLabel_11.Font = Enum.Font.SourceSans
TextLabel_11.Text = "-- Hand Height --"
TextLabel_11.TextColor3 = Color3.new(0, 0, 0)
TextLabel_11.TextSize = 14

TextLabel_12.Parent = Sizeframe
TextLabel_12.BackgroundColor3 = Color3.new(0.333333, 0.333333, 0.333333)
TextLabel_12.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_12.BorderSizePixel = 0
TextLabel_12.Position = UDim2.new(0.742666602, 0, 0.498154998, 0)
TextLabel_12.Size = UDim2.new(0, 95, 0, 16)
TextLabel_12.Font = Enum.Font.SourceSans
TextLabel_12.Text = "-- Low Leg Width --"
TextLabel_12.TextColor3 = Color3.new(0, 0, 0)
TextLabel_12.TextSize = 14
TextLabel_12.TextWrapped = true

TextLabel_13.Parent = Sizeframe
TextLabel_13.BackgroundColor3 = Color3.new(0.333333, 0.333333, 0.333333)
TextLabel_13.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_13.BorderSizePixel = 0
TextLabel_13.Position = UDim2.new(-0.00133333332, 0, 0.675276756, 0)
TextLabel_13.Size = UDim2.new(0, 95, 0, 16)
TextLabel_13.Font = Enum.Font.SourceSans
TextLabel_13.Text = "-- Up Leg Width --"
TextLabel_13.TextColor3 = Color3.new(0, 0, 0)
TextLabel_13.TextSize = 14

TextLabel_14.Parent = Sizeframe
TextLabel_14.BackgroundColor3 = Color3.new(0.333333, 0.333333, 0.333333)
TextLabel_14.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_14.BorderSizePixel = 0
TextLabel_14.Position = UDim2.new(0.249333337, 0, 0.675276756, 0)
TextLabel_14.Size = UDim2.new(0, 95, 0, 16)
TextLabel_14.Font = Enum.Font.SourceSans
TextLabel_14.Text = "-- Low Torso Height --"
TextLabel_14.TextColor3 = Color3.new(0, 0, 0)
TextLabel_14.TextScaled = true
TextLabel_14.TextSize = 14
TextLabel_14.TextWrapped = true

TextLabel_15.Parent = Sizeframe
TextLabel_15.BackgroundColor3 = Color3.new(0.333333, 0.333333, 0.333333)
TextLabel_15.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_15.BorderSizePixel = 0
TextLabel_15.Position = UDim2.new(0.374666572, 0, 0.850553513, 0)
TextLabel_15.Size = UDim2.new(0, 95, 0, 13)
TextLabel_15.Font = Enum.Font.SourceSans
TextLabel_15.Text = "-- Foot Height --"
TextLabel_15.TextColor3 = Color3.new(0, 0, 0)
TextLabel_15.TextSize = 14

TextLabel_16.Parent = Sizeframe
TextLabel_16.BackgroundColor3 = Color3.new(0.333333, 0.333333, 0.333333)
TextLabel_16.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_16.BorderSizePixel = 0
TextLabel_16.Position = UDim2.new(0.75999999, 0, 0.675276756, 0)
TextLabel_16.Size = UDim2.new(0, 90, 0, 16)
TextLabel_16.Font = Enum.Font.SourceSans
TextLabel_16.Text = "-- Up Torso Height --"
TextLabel_16.TextColor3 = Color3.new(0, 0, 0)
TextLabel_16.TextScaled = true
TextLabel_16.TextSize = 14
TextLabel_16.TextWrapped = true

TextLabel_17.Parent = Sizeframe
TextLabel_17.BackgroundColor3 = Color3.new(0.333333, 0.333333, 0.333333)
TextLabel_17.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_17.BorderSizePixel = 0
TextLabel_17.Position = UDim2.new(0.50666666, 0, 0.675276756, 0)
TextLabel_17.Size = UDim2.new(0, 95, 0, 16)
TextLabel_17.Font = Enum.Font.SourceSans
TextLabel_17.Text = "-- Hand Width --"
TextLabel_17.TextColor3 = Color3.new(0, 0, 0)
TextLabel_17.TextSize = 14

BodyConfigurationHelpFrame.Name = "BodyConfigurationHelpFrame"
BodyConfigurationHelpFrame.Parent = RbxhighGUIv2
BodyConfigurationHelpFrame.BackgroundColor3 = Color3.new(0.333333, 0.333333, 0.333333)
BodyConfigurationHelpFrame.BorderColor3 = Color3.new(0, 0, 0)
BodyConfigurationHelpFrame.Position = UDim2.new(0.0135895219, 0, 0.326550364, 0)
BodyConfigurationHelpFrame.Size = UDim2.new(0, 179, 0, 193)
BodyConfigurationHelpFrame.Active = true
BodyConfigurationHelpFrame.Draggable = true
BodyConfigurationHelpFrame.Visible = false

title_2.Name = "title"
title_2.Parent = BodyConfigurationHelpFrame
title_2.BackgroundColor3 = Color3.new(0.376471, 0.376471, 0.376471)
title_2.BorderColor3 = Color3.new(0, 0, 0)
title_2.Position = UDim2.new(0.0670391023, 0, 0.0310880821, 0)
title_2.Size = UDim2.new(0, 155, 0, 28)
title_2.Font = Enum.Font.SourceSans
title_2.Text = "~ Help ~"
title_2.TextColor3 = Color3.new(0, 0, 0)
title_2.TextSize = 20

info.Name = "info"
info.Parent = BodyConfigurationHelpFrame
info.BackgroundColor3 = Color3.new(0.376471, 0.376471, 0.376471)
info.BorderColor3 = Color3.new(0, 0, 0)
info.Position = UDim2.new(0.0670391098, 0, 0.259067357, 0)
info.Size = UDim2.new(0, 155, 0, 131)
info.Font = Enum.Font.SourceSans
info.Text = "This part of the GUI allows you to customize the size and width of your body. It's simple! All you have to do is replace what is originally in the text box with a number. Once you hit the button, then the number you put in the box will take effect on your player."
info.TextColor3 = Color3.new(0, 0, 0)
info.TextScaled = true
info.TextSize = 20
info.TextWrapped = true

AllBodyConfigFrame.Name = "AllBodyConfigFrame"
AllBodyConfigFrame.Parent = RbxhighGUIv2
AllBodyConfigFrame.BackgroundColor3 = Color3.new(0.337255, 0.337255, 0.337255)
AllBodyConfigFrame.BorderColor3 = Color3.new(0, 0, 0)
AllBodyConfigFrame.Position = UDim2.new(0.479850024, 0, 0.589147329, 0)
AllBodyConfigFrame.Size = UDim2.new(0, 128, 0, 100)
AllBodyConfigFrame.Active = true
AllBodyConfigFrame.Draggable = true
AllBodyConfigFrame.Visible = false

AllBodyConfigInfo.Name = "AllBodyConfigInfo"
AllBodyConfigInfo.Parent = AllBodyConfigFrame
AllBodyConfigInfo.BackgroundColor3 = Color3.new(0.337255, 0.337255, 0.337255)
AllBodyConfigInfo.BorderColor3 = Color3.new(0, 0, 0)
AllBodyConfigInfo.Position = UDim2.new(0.046875, 0, 0, 0)
AllBodyConfigInfo.Size = UDim2.new(0, 116, 0, 40)
AllBodyConfigInfo.Font = Enum.Font.SourceSans
AllBodyConfigInfo.Text = "Change the size of everything at once instead of one at a time!"
AllBodyConfigInfo.TextColor3 = Color3.new(0, 0, 0)
AllBodyConfigInfo.TextScaled = true
AllBodyConfigInfo.TextSize = 14
AllBodyConfigInfo.TextWrapped = true

AllBodyConfigBox.Name = "AllBodyConfigBox"
AllBodyConfigBox.Parent = AllBodyConfigFrame
AllBodyConfigBox.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
AllBodyConfigBox.BorderColor3 = Color3.new(0, 0, 0)
AllBodyConfigBox.Position = UDim2.new(0.046875, 0, 0.460000008, 0)
AllBodyConfigBox.Size = UDim2.new(0, 116, 0, 21)
AllBodyConfigBox.Font = Enum.Font.SourceSans
AllBodyConfigBox.Text = "INT"
AllBodyConfigBox.TextColor3 = Color3.new(0, 0, 0)
AllBodyConfigBox.TextScaled = true
AllBodyConfigBox.TextSize = 14
AllBodyConfigBox.TextWrapped = true

ChangeAll.Name = "ChangeAll"
ChangeAll.Parent = AllBodyConfigFrame
ChangeAll.BackgroundColor3 = Color3.new(0.545098, 0.545098, 0.545098)
ChangeAll.BorderColor3 = Color3.new(1, 1, 1)
ChangeAll.Position = UDim2.new(0.109375, 0, 0.730000019, 0)
ChangeAll.Size = UDim2.new(0, 100, 0, 18)
ChangeAll.Font = Enum.Font.SourceSans
ChangeAll.Text = "Change"
ChangeAll.TextColor3 = Color3.new(0, 0, 0)
ChangeAll.TextSize = 14
ChangeAll.MouseButton1Click:Connect(function()
		local OOF =
{
["assets"] =
{
[1] =
{
["drotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["scale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
}
},
[2] =
{
["drotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["scale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
}
},
[3] =
{
["drotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["scale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
}
},
[4] =
{
["drotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["scale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
}
},
[5] =
{
["drotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["scale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["dscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vscale"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["rotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["position"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vrotation"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
},
["vposition"] =
{
["y"] = 0,
["x"] = 0,
["z"] = 0
}
}
},
["description"] = "",
["createdDate"] = 1000,
["lowerDesc"] = "",
["scales"] =
{
["LowerLegHeight"] = (AllBodyConfigBox.Text),
["UpperTorsoWidth"] = (AllBodyConfigBox.Text),
["UpperArmHeight"] = (AllBodyConfigBox.Text),
["HandHeight"] = (AllBodyConfigBox.Text),
["UpperLegWidth"] = (AllBodyConfigBox.Text),
["LowerArmWidth"] = (AllBodyConfigBox.Text),
["FootWidth"] = (AllBodyConfigBox.Text),
["LowerArmHeight"] = (AllBodyConfigBox.Text),
["UpperArmWidth"] = (AllBodyConfigBox.Text),
["FootHeight"] = (AllBodyConfigBox.Text),
["LowerTorsoWidth"] = (AllBodyConfigBox.Text),
["UpperTorsoHeight"] = (AllBodyConfigBox.Text),
["HandWidth"] = (AllBodyConfigBox.Text),
["HeadScale"] = (AllBodyConfigBox.Text),
["UpperLegHeight"] = (AllBodyConfigBox.Text),
["LowerTorsoHeight"] = (AllBodyConfigBox.Text),
["LowerLegWidth"] = (AllBodyConfigBox.Text)
},
["name"] = "",
["outfitId"] = 1,
["isOutfit"] = true,
["collageSeed"] = 0,
["lowerName"] = ""
}
local Event = game:GetService("ReplicatedStorage").AvatarEditor.Remote.CommitCharacterAppearance
Event:FireServer(OOF)
end)