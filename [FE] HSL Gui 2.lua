-- Objects

local RbxhighGUI = Instance.new("ScreenGui")
local topframe = Instance.new("Frame")
local mainframe = Instance.new("Frame")
local Titan = Instance.new("TextButton")
local GiantTitan = Instance.new("TextButton")
local MemeCreature = Instance.new("TextButton")
local GiantHead = Instance.new("TextButton")
local Rainbowchat = Instance.new("TextButton")
local Blackchat = Instance.new("TextButton")
local Creds = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local Minimize = Instance.new("TextButton")

-- Properties

RbxhighGUI.Name = "Rbx-high GUI"
RbxhighGUI.Parent = game.CoreGui

topframe.Name = "topframe"
topframe.Parent = RbxhighGUI
topframe.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
topframe.BorderColor3 = Color3.new(0, 0, 0)
topframe.Position = UDim2.new(0.0721649453, 0, 0.288759679, 0)
topframe.Size = UDim2.new(0, 141, 0, 11)
topframe.Active = true
topframe.Draggable = true 

mainframe.Name = "mainframe"
mainframe.Parent = topframe
mainframe.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
mainframe.BorderColor3 = Color3.new(0, 0, 0)
mainframe.Position = UDim2.new(0, 0, 1, 0)
mainframe.Size = UDim2.new(0, 141, 0, 124)

Titan.Name = "Titan"
Titan.Parent = mainframe
Titan.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
Titan.BorderColor3 = Color3.new(0, 0, 0)
Titan.Position = UDim2.new(0.0567375869, 0, 0.0457142889, 0)
Titan.Size = UDim2.new(0, 126, 0, 14)
Titan.Font = Enum.Font.SourceSans
Titan.Text = "Titan"
Titan.TextColor3 = Color3.new(0, 0, 0)
Titan.TextSize = 14
Titan.TextWrapped = true
Titan.MouseButton1Click:Connect(function()
	--Made by N3xul.
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
GiantTitan.Position = UDim2.new(0.0531915426, 0, 0.211283147, 0)
GiantTitan.Size = UDim2.new(0, 126, 0, 14)
GiantTitan.Font = Enum.Font.SourceSans
GiantTitan.Text = "Giant Titan"
GiantTitan.TextColor3 = Color3.new(0, 0, 0)
GiantTitan.TextSize = 14
GiantTitan.TextWrapped = true
GiantTitan.MouseButton1Click:Connect(function()
	--Made by N3xul.
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

MemeCreature.Name = "MemeCreature"
MemeCreature.Parent = mainframe
MemeCreature.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
MemeCreature.BorderColor3 = Color3.new(0, 0, 0)
MemeCreature.Position = UDim2.new(0.0531916618, 0, 0.542909026, 0)
MemeCreature.Size = UDim2.new(0, 126, 0, 14)
MemeCreature.Font = Enum.Font.SourceSans
MemeCreature.Text = "Weird Meme Creature"
MemeCreature.TextColor3 = Color3.new(0, 0, 0)
MemeCreature.TextSize = 14
MemeCreature.TextWrapped = true
MemeCreature.MouseButton1Click:Connect(function()
	--Made by N3xul.
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

GiantHead.Name = "GiantHead"
GiantHead.Parent = mainframe
GiantHead.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
GiantHead.BorderColor3 = Color3.new(0, 0, 0)
GiantHead.Position = UDim2.new(0.0531915426, 0, 0.371106654, 0)
GiantHead.Size = UDim2.new(0, 126, 0, 14)
GiantHead.Font = Enum.Font.SourceSans
GiantHead.Text = "Giant Head"
GiantHead.TextColor3 = Color3.new(0, 0, 0)
GiantHead.TextSize = 14
GiantHead.TextWrapped = true
GiantHead.MouseButton1Click:Connect(function()
	--Brought to you by N3xul.
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

Rainbowchat.Name = "Rainbowchat"
Rainbowchat.Parent = mainframe
Rainbowchat.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
Rainbowchat.BorderColor3 = Color3.new(0, 0, 0)
Rainbowchat.Position = UDim2.new(0.0531915613, 0, 0.702809632, 0)
Rainbowchat.Size = UDim2.new(0, 126, 0, 14)
Rainbowchat.Font = Enum.Font.SourceSans
Rainbowchat.Text = "Rainbow Chat"
Rainbowchat.TextColor3 = Color3.new(0, 0, 0)
Rainbowchat.TextSize = 14
Rainbowchat.TextWrapped = true
Rainbowchat.MouseButton1Click:Connect(function()
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

Blackchat.Name = "Blackchat"
Blackchat.Parent = mainframe
Blackchat.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
Blackchat.BorderColor3 = Color3.new(0, 0, 0)
Blackchat.Position = UDim2.new(0.0567375869, 0, 0.854838729, 0)
Blackchat.Size = UDim2.new(0, 126, 0, 12)
Blackchat.Font = Enum.Font.SourceSans
Blackchat.Text = "Black Chat"
Blackchat.TextColor3 = Color3.new(0, 0, 0)
Blackchat.TextSize = 14
Blackchat.TextWrapped = true
Blackchat.MouseButton1Click:Connect(function()
local color = Color3.new(0,0,0) --Color you want here!
local Event = game:GetService("ReplicatedStorage").ClientRequests.UpdateChatColorEvent
Event:FireServer(color)
end)

Creds.Name = "Creds"
Creds.Parent = topframe
Creds.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
Creds.BorderColor3 = Color3.new(0, 0, 0)
Creds.BorderSizePixel = 0
Creds.Size = UDim2.new(0, 78, 0, 8)
Creds.Font = Enum.Font.SourceSans
Creds.Text = "Psykek#3180"
Creds.TextColor3 = Color3.new(0.729412, 0.396078, 0.0196078)
Creds.TextSize = 12
Creds.TextWrapped = true

Close.Name = "Close"
Close.Parent = topframe
Close.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
Close.BorderColor3 = Color3.new(0, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.929078043, 0, 0, 0)
Close.Size = UDim2.new(0, 10, 0, 8)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.new(0.937255, 0.937255, 0.937255)
Close.TextSize = 14
Close.MouseButton1Click:Connect(function()

    if topframe.Visible == false then
        topframe.Visible = false
    else
        topframe.Visible = false
    end

end)

Minimize.Name = "Minimize"
Minimize.Parent = topframe
Minimize.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
Minimize.BorderColor3 = Color3.new(0, 0, 0)
Minimize.BorderSizePixel = 0
Minimize.Position = UDim2.new(0.858156085, 0, 0, 0)
Minimize.Size = UDim2.new(0, 10, 0, 8)
Minimize.Font = Enum.Font.SourceSans
Minimize.Text = "-"
Minimize.TextColor3 = Color3.new(0.937255, 0.937255, 0.937255)
Minimize.TextSize = 14
Minimize.MouseButton1Click:Connect(function()

    if mainframe.Visible == false then
        mainframe.Visible = true
    else
        mainframe.Visible = false
    end

end)