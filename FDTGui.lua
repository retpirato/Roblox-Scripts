-- Objects

local FDTGui = Instance.new("ScreenGui")
local GUI = Instance.new("Frame")
local Welcome = Instance.new("TextLabel")
local VanGUI = Instance.new("TextButton")
local Bomber = Instance.new("TextButton")
local Toadroast = Instance.new("TextButton")
local WildRevolvers = Instance.new("TextButton")
local Remove = Instance.new("TextButton")

-- Properties

FDTGui.Name = "FDTGui"
FDTGui.Parent = game.CoreGui

GUI.Name = "GUI"
GUI.Parent = FDTGui
GUI.Active = true
GUI.BackgroundColor3 = Color3.new(1, 1, 1)
GUI.BackgroundTransparency = 0.80000001192093
GUI.BorderColor3 = Color3.new(0, 0, 0)
GUI.Draggable = true
GUI.Position = UDim2.new(0.500797451, -125, 0.5, -135)
GUI.Size = UDim2.new(0, 250, 0, 210)

Welcome.Name = "Welcome"
Welcome.Parent = GUI
Welcome.BackgroundColor3 = Color3.new(1, 1, 1)
Welcome.BackgroundTransparency = 1
Welcome.BorderColor3 = Color3.new(0, 0, 0)
Welcome.Position = UDim2.new(0.5, -125, 0, 0)
Welcome.Size = UDim2.new(0, 250, 0, 40)
Welcome.Font = Enum.Font.SciFi
Welcome.Text = "Welcome! Have fun using FDTGui!"
Welcome.TextColor3 = Color3.new(0, 0, 0)
Welcome.TextSize = 16

VanGUI.Name = "VanGUI"
VanGUI.Parent = GUI
VanGUI.BackgroundColor3 = Color3.new(1, 1, 1)
VanGUI.BackgroundTransparency = 0.60000002384186
VanGUI.BorderColor3 = Color3.new(0, 0, 0)
VanGUI.Position = UDim2.new(0.5, -112, 0.188896, 0)
VanGUI.Size = UDim2.new(0, 225, 0, 33)
VanGUI.Font = Enum.Font.SourceSansSemibold
VanGUI.Text = "Van GUI"
VanGUI.TextColor3 = Color3.new(0, 0, 0)
VanGUI.TextSize = 18

VanGUI.MouseButton1Click:connect(function()
-- Objects

local VanGui = Instance.new("ScreenGui")
local Opener = Instance.new("Frame")
local Open = Instance.new("TextButton")
local DaGui = Instance.new("Frame")
local Frame = Instance.new("Frame")
local Close = Instance.new("TextButton")
local Username = Instance.new("TextBox")
local VanDaPlayer = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")

-- Properties

VanGui.Name = "VanGui"
VanGui.Parent = game.CoreGui

Opener.Name = "Opener"
Opener.Parent = VanGui
Opener.BackgroundColor3 = Color3.new(0, 0, 0)
Opener.BackgroundTransparency = 0.5
Opener.Position = UDim2.new(0, 19, 0, 564)
Opener.Size = UDim2.new(0, 224, 0, 40)

Open.Name = "Open"
Open.Parent = Opener
Open.BackgroundColor3 = Color3.new(0, 0, 0)
Open.BackgroundTransparency = 0.5
Open.Size = UDim2.new(0, 224, 0, 40)
Open.Font = Enum.Font.SciFi
Open.FontSize = Enum.FontSize.Size42
Open.Text = "Open"
Open.TextColor3 = Color3.new(0, 1, 1)
Open.TextSize = 42

DaGui.Name = "DaGui"
DaGui.Parent = VanGui
DaGui.BackgroundColor3 = Color3.new(0, 0, 0)
DaGui.BackgroundTransparency = 0.5
DaGui.Draggable = true
DaGui.Position = UDim2.new(0, 0, 0, 311)
DaGui.Size = UDim2.new(0, 343, 0, 197)
DaGui.Visible = false

Frame.Parent = DaGui
Frame.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
Frame.Position = UDim2.new(0, 313, 0, 0)
Frame.Size = UDim2.new(0, 30, 0, 26)

Close.Name = "Close"
Close.Parent = Frame
Close.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
Close.Size = UDim2.new(0, 30, 0, 26)
Close.Font = Enum.Font.SciFi
Close.FontSize = Enum.FontSize.Size14
Close.Text = "X"
Close.TextColor3 = Color3.new(1, 1, 1)
Close.TextSize = 14
Close.TextStrokeTransparency = 5

Username.Name = "Username"
Username.Parent = DaGui
Username.BackgroundColor3 = Color3.new(0, 0, 0)
Username.BackgroundTransparency = 0.5
Username.Position = UDim2.new(0, 72, 0, 76)
Username.Size = UDim2.new(0, 200, 0.0999999866, 24)
Username.Font = Enum.Font.SciFi
Username.FontSize = Enum.FontSize.Size18
Username.Text = "Username"
Username.TextColor3 = Color3.new(0, 1, 1)
Username.TextSize = 18

VanDaPlayer.Name = "VanDaPlayer"
VanDaPlayer.Parent = DaGui
VanDaPlayer.BackgroundColor3 = Color3.new(0, 0, 0)
VanDaPlayer.BackgroundTransparency = 0.5
VanDaPlayer.Position = UDim2.new(0.0199999996, 90, 0.00999999978, 138)
VanDaPlayer.Size = UDim2.new(0, 150, 0, 26)
VanDaPlayer.Font = Enum.Font.SciFi
VanDaPlayer.FontSize = Enum.FontSize.Size14
VanDaPlayer.Text = "Van Player"
VanDaPlayer.TextColor3 = Color3.new(0, 1, 1)
VanDaPlayer.TextSize = 14

TextLabel.Parent = DaGui
TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel.BackgroundTransparency = 0.5
TextLabel.Position = UDim2.new(0, 48, 0, 22)
TextLabel.Size = UDim2.new(0, 246, 0, 19)
TextLabel.Font = Enum.Font.SciFi
TextLabel.FontSize = Enum.FontSize.Size18
TextLabel.Text = "Van Player Gui by 345678 (Talha)"
TextLabel.TextColor3 = Color3.new(0, 1, 1)
TextLabel.TextSize = 17

Open.MouseButton1Down:connect(function()
		game.CoreGui.VanGui.DaGui.Visible = true
	game.CoreGui.VanGui.Opener.Visible = false

end)

Close.MouseButton1Down:connect(function()
	game.CoreGui.VanGui.DaGui.Visible = false
	game.CoreGui.VanGui.Opener.Visible = true
end)

VanDaPlayer.MouseButton1Down:connect(function()
 	Victim = Username.Text
o1 = Instance.new("Model")
o2 = Instance.new("Part")
o3 = Instance.new("CylinderMesh")
o4 = Instance.new("Part")
o5 = Instance.new("SpecialMesh")
o6 = Instance.new("Part")
o7 = Instance.new("SpecialMesh")
o8 = Instance.new("Part")
o9 = Instance.new("BlockMesh")
o10 = Instance.new("Part")
o11 = Instance.new("BlockMesh")
o12 = Instance.new("Part")
o13 = Instance.new("Part")
o14 = Instance.new("BlockMesh")
o15 = Instance.new("Part")
o16 = Instance.new("SpecialMesh")
o17 = Instance.new("Part")
o18 = Instance.new("SpecialMesh")
o19 = Instance.new("Part")
o20 = Instance.new("SpecialMesh")
o21 = Instance.new("Sound")
o22 = Instance.new("Part")
o23 = Instance.new("BlockMesh")
o24 = Instance.new("Part")
o25 = Instance.new("SpecialMesh")
o26 = Instance.new("Part")
o27 = Instance.new("BlockMesh")
o28 = Instance.new("Part")
o29 = Instance.new("SpecialMesh")
o30 = Instance.new("Part")
o31 = Instance.new("BlockMesh")
o32 = Instance.new("Part")
o33 = Instance.new("BlockMesh")
o34 = Instance.new("Part")
o35 = Instance.new("BlockMesh")
o36 = Instance.new("Part")
o37 = Instance.new("BlockMesh")
o38 = Instance.new("Part")
o39 = Instance.new("Part")
o40 = Instance.new("BlockMesh")
o41 = Instance.new("Part")
o42 = Instance.new("BlockMesh")
o43 = Instance.new("Part")
o44 = Instance.new("BlockMesh")
o45 = Instance.new("Part")
o46 = Instance.new("SpecialMesh")
o47 = Instance.new("Part")
o48 = Instance.new("BlockMesh")
o49 = Instance.new("Part")
o50 = Instance.new("BlockMesh")
o51 = Instance.new("Part")
o52 = Instance.new("BlockMesh")
o53 = Instance.new("Part")
o54 = Instance.new("SpecialMesh")
o55 = Instance.new("Part")
o56 = Instance.new("SpecialMesh")
o57 = Instance.new("Part")
o58 = Instance.new("BlockMesh")
o59 = Instance.new("Part")
o60 = Instance.new("BlockMesh")
o61 = Instance.new("Part")
o62 = Instance.new("BlockMesh")
o63 = Instance.new("Part")
o64 = Instance.new("Part")
o65 = Instance.new("Part")
o66 = Instance.new("BlockMesh")
o67 = Instance.new("Part")
o68 = Instance.new("BlockMesh")
o69 = Instance.new("Part")
o70 = Instance.new("BlockMesh")
o71 = Instance.new("Part")
o72 = Instance.new("BlockMesh")
o73 = Instance.new("Part")
o74 = Instance.new("SpecialMesh")
o75 = Instance.new("Decal")
o76 = Instance.new("Part")
o77 = Instance.new("Part")
o78 = Instance.new("BlockMesh")
o79 = Instance.new("Part")
o80 = Instance.new("SpecialMesh")
o81 = Instance.new("Decal")
o82 = Instance.new("Part")
o83 = Instance.new("SpecialMesh")
o84 = Instance.new("Humanoid")
o85 = Instance.new("Part")
o86 = Instance.new("Part")
o87 = Instance.new("Part")
o88 = Instance.new("Decal")
o89 = Instance.new("Motor6D")
o90 = Instance.new("Motor6D")
o91 = Instance.new("Motor6D")
o92 = Instance.new("Motor6D")
o93 = Instance.new("Motor6D")
o94 = Instance.new("Part")
o95 = Instance.new("Part")
o96 = Instance.new("Part")
o97 = Instance.new("Part")
o98 = Instance.new("Part")
o99 = Instance.new("Decal")
o100 = Instance.new("Motor6D")
o101 = Instance.new("Motor6D")
o102 = Instance.new("Motor6D")
o103 = Instance.new("Part")
o104 = Instance.new("Part")
o105 = Instance.new("Part")
o106 = Instance.new("Part")
o107 = Instance.new("Part")
o108 = Instance.new("CylinderMesh")
o109 = Instance.new("Part")
o110 = Instance.new("CylinderMesh")
o111 = Instance.new("Part")
o112 = Instance.new("CylinderMesh")
o113 = Instance.new("Part")
o114 = Instance.new("CylinderMesh")
o115 = Instance.new("Part")
o116 = Instance.new("CylinderMesh")
o117 = Instance.new("Part")
o118 = Instance.new("CylinderMesh")
o119 = Instance.new("Part")
o120 = Instance.new("CylinderMesh")
o121 = Instance.new("Part")
o122 = Instance.new("SpecialMesh")
o123 = Instance.new("Part")
o124 = Instance.new("Decal")
o1.Name = " "
o1.Parent = workspace
o2.Parent = o1
o2.Position = Vector3.new(95.3486252, 1.50001001, 18.4564877)
o2.Rotation = Vector3.new(-90, 1.20620803e-006, -180)
o2.Anchored = true
o2.FormFactor = Enum.FormFactor.Symmetric
o2.Size = Vector3.new(2.39999986, 1.31000006, 2.39999986)
o2.CFrame = CFrame.new(95.3486252, 1.50001001, 18.4564877, -1, 2.98044895e-008, 2.10523012e-008, 2.10523012e-008, 7.54615499e-008, 1, 2.9804486e-008, 1, -7.54615499e-008)
o3.Parent = o2
o4.Parent = o1
o4.BrickColor = BrickColor.new("Institutional white")
o4.Position = Vector3.new(96.3181839, 7.00000668, 9.31151104)
o4.Rotation = Vector3.new(90, 89.9314728, -90)
o4.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o4.Velocity = Vector3.new(-0.000346515269, 0.00201798417, -0.00195027643)
o4.Anchored = true
o4.FormFactor = Enum.FormFactor.Plate
o4.Size = Vector3.new(1, 2.4000001, 2)
o4.CFrame = CFrame.new(96.3181839, 7.00000668, 9.31151104, 0, 3.96052044e-008, 0.999999285, 0, 1, -3.97634246e-008, -1, 0, 0)
o4.BackSurface = Enum.SurfaceType.Weld
o4.BottomSurface = Enum.SurfaceType.Weld
o4.LeftSurface = Enum.SurfaceType.Weld
o4.TopSurface = Enum.SurfaceType.Weld
o4.Color = Color3.new(0.972549, 0.972549, 0.972549)
o5.Parent = o4
o5.MeshType = Enum.MeshType.Wedge
o6.Parent = o1
o6.Material = Enum.Material.SmoothPlastic
o6.BrickColor = BrickColor.new("Really black")
o6.Transparency = 0.5
o6.Position = Vector3.new(96.3181839, 7.00000668, 13.8115101)
o6.Rotation = Vector3.new(90, 89.9440536, -90)
o6.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o6.Velocity = Vector3.new(0.000965324172, 0.00135755131, -0.00195027643)
o6.Anchored = true
o6.FormFactor = Enum.FormFactor.Plate
o6.Size = Vector3.new(8, 2.4000001, 1.99999976)
o6.CFrame = CFrame.new(96.3181839, 7.00000668, 13.8115101, 0, 3.96315798e-008, 0.999999523, 0, 1, -3.97370599e-008, -1, 0, 0)
o6.BackSurface = Enum.SurfaceType.Weld
o6.BottomSurface = Enum.SurfaceType.Weld
o6.LeftSurface = Enum.SurfaceType.Weld
o6.RightSurface = Enum.SurfaceType.Weld
o6.TopSurface = Enum.SurfaceType.Weld
o6.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o7.Parent = o6
o7.MeshType = Enum.MeshType.Wedge
o8.Parent = o1
o8.BrickColor = BrickColor.new("Br. yellowish orange")
o8.Position = Vector3.new(92.2182083, 4.00000715, 9.61151409)
o8.Rotation = Vector3.new(-0, 0, -2.26619136e-006)
o8.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o8.Velocity = Vector3.new(-0.000475873821, 0.00227026758, -0.00119533995)
o8.Anchored = true
o8.FormFactor = Enum.FormFactor.Custom
o8.Size = Vector3.new(0.200000003, 0.800000012, 0.799999714)
o8.CFrame = CFrame.new(92.2182083, 4.00000715, 9.61151409, 0.999998808, 3.95524538e-008, 0, -3.98161575e-008, 1, 0, 0, 0, 1)
o8.BackSurface = Enum.SurfaceType.Weld
o8.BottomSurface = Enum.SurfaceType.Weld
o8.FrontSurface = Enum.SurfaceType.Weld
o8.LeftSurface = Enum.SurfaceType.Weld
o8.RightSurface = Enum.SurfaceType.Weld
o8.TopSurface = Enum.SurfaceType.Weld
o8.Color = Color3.new(0.886275, 0.607843, 0.25098)
o9.Parent = o8
o10.Parent = o1
o10.BrickColor = BrickColor.new("Institutional white")
o10.Position = Vector3.new(105.317894, 8.40004158, 9.31151295)
o10.Rotation = Vector3.new(-0, 0, -2.21330401e-006)
o10.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o10.Velocity = Vector3.new(-0.000245332019, 0.00136755884, -0.00436839834)
o10.Anchored = true
o10.CanCollide = false
game.Players[Victim].Character.Humanoid.WalkSpeed = 0
game.Players[Victim].Character.Humanoid.JumpPower = 0
o10.FormFactor = Enum.FormFactor.Plate
o10.Size = Vector3.new(14, 0.400000006, 1)
o10.CFrame = CFrame.new(105.317894, 8.40004158, 9.31151295, 0.999999762, 3.86294303e-008, 0, -3.86821704e-008, 1, 0, 0, 0, 1)
o10.BackSurface = Enum.SurfaceType.Weld
o10.BottomSurface = Enum.SurfaceType.Weld
o10.FrontSurface = Enum.SurfaceType.Weld
o10.LeftSurface = Enum.SurfaceType.Weld
o10.RightSurface = Enum.SurfaceType.Weld
o10.TopSurface = Enum.SurfaceType.Weld
o10.Color = Color3.new(0.972549, 0.972549, 0.972549)
o11.Parent = o10
o12.Name = "DOOR"
o12.Parent = o1
o12.BrickColor = BrickColor.new("Institutional white")
o12.Position = Vector3.new(103.708466, 5.81500626, 9.31151104)
o12.Rotation = Vector3.new(-0, 0, -4.43210411e-006)
o12.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o12.Velocity = Vector3.new(-0.000432157307, 0.00148387556, -0.00427860441)
o12.Anchored = true
o12.CanCollide = false
o12.FormFactor = Enum.FormFactor.Plate
o12.Size = Vector3.new(5.22000027, 4.82999992, 1)
o12.CFrame = CFrame.new(103.708466, 5.81500626, 9.31151104, 1, 7.73548052e-008, 0, -7.73548052e-008, 1, 0, 0, 0, 1)
o12.BottomSurface = Enum.SurfaceType.Weld
o12.LeftSurface = Enum.SurfaceType.Weld
o12.RightSurface = Enum.SurfaceType.Weld
o12.TopSurface = Enum.SurfaceType.Weld
o12.Color = Color3.new(0.972549, 0.972549, 0.972549)
o13.Parent = o1
o13.BrickColor = BrickColor.new("White")
o13.Position = Vector3.new(109.818169, 5.80000877, 9.31151104)
o13.Rotation = Vector3.new(-0, 0, -2.25410599e-006)
o13.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o13.Velocity = Vector3.new(-0.00043324125, 0.00104231632, -0.006061906)
o13.Anchored = true
o13.FormFactor = Enum.FormFactor.Plate
o13.Size = Vector3.new(7, 4.80000019, 1)
o13.CFrame = CFrame.new(109.818169, 5.80000877, 9.31151104, 0.999996901, 3.9341451e-008, 0, -4.00270856e-008, 1, 0, 0, 0, 1)
o13.BackSurface = Enum.SurfaceType.Weld
o13.BottomSurface = Enum.SurfaceType.Weld
o13.FrontSurface = Enum.SurfaceType.Weld
o13.LeftSurface = Enum.SurfaceType.Weld
o13.RightSurface = Enum.SurfaceType.Weld
o13.TopSurface = Enum.SurfaceType.Weld
o13.Color = Color3.new(0.94902, 0.952941, 0.952941)
o14.Parent = o13
o15.Parent = o1
o15.BrickColor = BrickColor.new("Institutional white")
o15.Position = Vector3.new(97.817894, 8.40000725, 13.8115139)
o15.Rotation = Vector3.new(90, 89.960434, -90)
o15.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o15.Velocity = Vector3.new(0.00106650498, 0.00124916411, -0.00218200427)
o15.Anchored = true
o15.CanCollide = false
o15.FormFactor = Enum.FormFactor.Plate
o15.Size = Vector3.new(10, 0.400000006, 1)
o15.CFrame = CFrame.new(97.817894, 8.40000725, 13.8115139, 0, 3.86294303e-008, 0.999999762, 0, 1, -3.86821704e-008, -1, 0, 0)
o15.BackSurface = Enum.SurfaceType.Weld
o15.BottomSurface = Enum.SurfaceType.Weld
o15.TopSurface = Enum.SurfaceType.Weld
o15.Color = Color3.new(0.972549, 0.972549, 0.972549)
o16.Parent = o15
o16.MeshType = Enum.MeshType.Wedge
o17.Parent = o1
o17.BrickColor = BrickColor.new("Institutional white")
o17.Position = Vector3.new(96.3181839, 7.00000668, 18.3115101)
o17.Rotation = Vector3.new(90, 89.9314728, -90)
o17.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o17.Velocity = Vector3.new(0.00227716356, 0.000697118347, -0.00195027643)
o17.Anchored = true
o17.FormFactor = Enum.FormFactor.Plate
o17.Size = Vector3.new(1, 2.4000001, 2)
o17.CFrame = CFrame.new(96.3181839, 7.00000668, 18.3115101, 0, 3.96052044e-008, 0.999999285, 0, 1, -3.97634246e-008, -1, 0, 0)
o17.BackSurface = Enum.SurfaceType.Weld
o17.BottomSurface = Enum.SurfaceType.Weld
o17.RightSurface = Enum.SurfaceType.Weld
o17.TopSurface = Enum.SurfaceType.Weld
o17.Color = Color3.new(0.972549, 0.972549, 0.972549)
o18.Parent = o17
o18.MeshType = Enum.MeshType.Wedge
o19.Parent = o1
o19.BrickColor = BrickColor.new("Institutional white")
o19.Position = Vector3.new(93.8181839, 5.20000744, 13.8115101)
o19.Rotation = Vector3.new(90, 89.8573456, -90)
o19.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o19.Velocity = Vector3.new(0.000835234998, 0.00153823046, -0.00148565089)
o19.Anchored = true
o19.FormFactor = Enum.FormFactor.Plate
o19.Size = Vector3.new(10, 1.20000005, 3)
o19.CFrame = CFrame.new(93.8181839, 5.20000744, 13.8115101, 0, 3.77325726e-008, 0.999996901, 0, 1, -3.84182002e-008, -1, 0, 0)
o19.BackSurface = Enum.SurfaceType.Weld
o19.BottomSurface = Enum.SurfaceType.Weld
o19.TopSurface = Enum.SurfaceType.Weld
o19.Color = Color3.new(0.972549, 0.972549, 0.972549)
o20.Parent = o19
o20.MeshType = Enum.MeshType.Wedge
o21.Parent = o19
o21.SoundId = "rbxassetid://532147820"
o21.Looped = true
o22.Parent = o1
o22.BrickColor = BrickColor.new("Institutional white")
o22.Position = Vector3.new(96.3182907, 4.60000753, 9.31151104)
o22.Rotation = Vector3.new(-0, 0, -2.23446773e-006)
o22.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o22.Velocity = Vector3.new(-0.000519967522, 0.00201797695, -0.00230253674)
o22.Anchored = true
o22.FormFactor = Enum.FormFactor.Plate
o22.Size = Vector3.new(2, 2.4000001, 1)
o22.CFrame = CFrame.new(96.3182907, 4.60000753, 9.31151104, 0.999993801, 3.8998575e-008, 0, -4.03698408e-008, 1, 0, 0, 0, 1)
o22.BackSurface = Enum.SurfaceType.Weld
o22.BottomSurface = Enum.SurfaceType.Weld
o22.FrontSurface = Enum.SurfaceType.Weld
o22.LeftSurface = Enum.SurfaceType.Weld
o22.RightSurface = Enum.SurfaceType.Weld
o22.TopSurface = Enum.SurfaceType.Weld
o22.Color = Color3.new(0.972549, 0.972549, 0.972549)
o23.Parent = o22
o24.Parent = o1
o24.BrickColor = BrickColor.new("Institutional white")
o24.Position = Vector3.new(113.817245, 6.80000734, 18.3115101)
o24.Rotation = Vector3.new(-0, -90, 0)
o24.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o24.Velocity = Vector3.new(0.00226270943, -0.000567569688, -0.00708095264)
o24.Anchored = true
o24.FormFactor = Enum.FormFactor.Plate
o24.Size = Vector3.new(1, 2.79999995, 1)
o24.CFrame = CFrame.new(113.817245, 6.80000734, 18.3115101, 0, 5.54578605e-008, -1, 0, 1, 5.54578605e-008, 1, 0, 0)
o24.BackSurface = Enum.SurfaceType.Weld
o24.BottomSurface = Enum.SurfaceType.Weld
o24.TopSurface = Enum.SurfaceType.Weld
o24.Color = Color3.new(0.972549, 0.972549, 0.972549)
o25.Parent = o24
o25.MeshType = Enum.MeshType.Wedge
o26.Parent = o1
o26.BrickColor = BrickColor.new("Institutional white")
o26.Position = Vector3.new(93.0181885, 2.60000825, 13.8115101)
o26.Rotation = Vector3.new(-0, 0, -2.27223404e-006)
o26.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o26.Velocity = Vector3.new(0.000647328445, 0.00159604801, -0.00163401756)
o26.Anchored = true
o26.FormFactor = Enum.FormFactor.Plate
o26.Size = Vector3.new(1.39999998, 1.60000002, 10)
o26.CFrame = CFrame.new(93.0181885, 2.60000825, 13.8115101, 0.999999762, 3.96579551e-008, 0, -3.97106952e-008, 1, 0, 0, 0, 1)
o26.BackSurface = Enum.SurfaceType.Weld
o26.BottomSurface = Enum.SurfaceType.Weld
o26.FrontSurface = Enum.SurfaceType.Weld
o26.LeftSurface = Enum.SurfaceType.Weld
o26.RightSurface = Enum.SurfaceType.Weld
o26.TopSurface = Enum.SurfaceType.Weld
o26.Color = Color3.new(0.972549, 0.972549, 0.972549)
o27.Parent = o26
o28.Parent = o1
o28.BrickColor = BrickColor.new("Institutional white")
o28.Position = Vector3.new(113.818176, 6.80000877, 9.31151104)
o28.Rotation = Vector3.new(-90, -89.7982635, -90)
o28.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o28.Velocity = Vector3.new(-0.000360969483, 0.000753228669, -0.00708122458)
o28.Anchored = true
o28.FormFactor = Enum.FormFactor.Plate
o28.Size = Vector3.new(1, 2.79999995, 1)
o28.CFrame = CFrame.new(113.818176, 6.80000877, 9.31151104, 0, 3.89985715e-008, -0.999993801, 0, 1, 4.03698408e-008, 1, 0, 0)
o28.BackSurface = Enum.SurfaceType.Weld
o28.BottomSurface = Enum.SurfaceType.Weld
o28.TopSurface = Enum.SurfaceType.Weld
o28.Color = Color3.new(0.972549, 0.972549, 0.972549)
o29.Parent = o28
o29.MeshType = Enum.MeshType.Wedge
o30.Parent = o1
o30.BrickColor = BrickColor.new("Institutional white")
o30.Position = Vector3.new(96.3181992, 4.60000753, 18.3115101)
o30.Rotation = Vector3.new(-0, 0, -2.26770203e-006)
o30.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o30.Velocity = Vector3.new(0.00210371148, 0.000697117415, -0.0023025109)
o30.Anchored = true
o30.FormFactor = Enum.FormFactor.Plate
o30.Size = Vector3.new(2, 2.4000001, 1)
o30.CFrame = CFrame.new(96.3181992, 4.60000753, 18.3115101, 0.999999046, 3.95788291e-008, 0, -3.97897928e-008, 1, 0, 0, 0, 1)
o30.BackSurface = Enum.SurfaceType.Weld
o30.BottomSurface = Enum.SurfaceType.Weld
o30.FrontSurface = Enum.SurfaceType.Weld
o30.LeftSurface = Enum.SurfaceType.Weld
o30.RightSurface = Enum.SurfaceType.Weld
o30.TopSurface = Enum.SurfaceType.Weld
o30.Color = Color3.new(0.972549, 0.972549, 0.972549)
o31.Parent = o30
o32.Parent = o1
o32.BrickColor = BrickColor.new("Dark stone grey")
o32.Position = Vector3.new(95.8181839, 4.60000753, 13.8115101)
o32.Rotation = Vector3.new(90, 89.960434, -90)
o32.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o32.Velocity = Vector3.new(0.000791871978, 0.00139368721, -0.00215674727)
o32.Anchored = true
o32.FormFactor = Enum.FormFactor.Plate
o32.Size = Vector3.new(8, 2.4000001, 1)
o32.CFrame = CFrame.new(95.8181839, 4.60000753, 13.8115101, 0, 3.96579551e-008, 0.999999762, 0, 1, -3.97106952e-008, -1, 0, 0)
o32.BottomSurface = Enum.SurfaceType.Weld
o32.TopSurface = Enum.SurfaceType.Weld
o32.Color = Color3.new(0.388235, 0.372549, 0.384314)
o33.Parent = o32
o33.Offset = Vector3.new(0, 0, 0.5)
o33.Scale = Vector3.new(1, 1, 2)
o34.Parent = o1
o34.BrickColor = BrickColor.new("Institutional white")
o34.Position = Vector3.new(93.8181992, 4.00000715, 13.8115101)
o34.Rotation = Vector3.new(-0, 0, -2.26770203e-006)
o34.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o34.Velocity = Vector3.new(0.000748508843, 0.00153822941, -0.00166177051)
o34.Anchored = true
o34.FormFactor = Enum.FormFactor.Plate
o34.Size = Vector3.new(3, 1.20000005, 10)
o34.CFrame = CFrame.new(93.8181992, 4.00000715, 13.8115101, 0.999999046, 3.95788291e-008, 0, -3.97897928e-008, 1, 0, 0, 0, 1)
o34.BackSurface = Enum.SurfaceType.Weld
o34.BottomSurface = Enum.SurfaceType.Weld
o34.FrontSurface = Enum.SurfaceType.Weld
o34.LeftSurface = Enum.SurfaceType.Weld
o34.RightSurface = Enum.SurfaceType.Weld
o34.TopSurface = Enum.SurfaceType.Weld
o34.Color = Color3.new(0.972549, 0.972549, 0.972549)
o35.Parent = o34
o36.Parent = o1
o36.BrickColor = BrickColor.new("Br. yellowish orange")
o36.Position = Vector3.new(92.2181854, 4.00000715, 18.211504)
o36.Rotation = Vector3.new(-0, 0, -2.2601489e-006)
o36.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o36.Velocity = Vector3.new(0.00203119451, 0.00100810977, -0.00119533355)
o36.Anchored = true
o36.FormFactor = Enum.FormFactor.Custom
o36.Size = Vector3.new(0.200000003, 0.800000012, 0.799999714)
o36.CFrame = CFrame.new(92.2181854, 4.00000715, 18.211504, 0.999997854, 3.94469524e-008, 0, -3.99216233e-008, 1, 0, 0, 0, 1)
o36.BackSurface = Enum.SurfaceType.Weld
o36.BottomSurface = Enum.SurfaceType.Weld
o36.FrontSurface = Enum.SurfaceType.Weld
o36.LeftSurface = Enum.SurfaceType.Weld
o36.RightSurface = Enum.SurfaceType.Weld
o36.TopSurface = Enum.SurfaceType.Weld
o36.Color = Color3.new(0.886275, 0.607843, 0.25098)
o37.Parent = o36
o38.Parent = o1
o38.BrickColor = BrickColor.new("Institutional white")
o38.Position = Vector3.new(99.0602112, 4.60000706, 18.3115101)
o38.Rotation = Vector3.new(-0, 0, -4.84935117e-006)
o38.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o38.Velocity = Vector3.new(0.00210371148, 0.000498947338, -0.0031018618)
o38.Anchored = true
o38.CanCollide = false
o38.FormFactor = Enum.FormFactor.Plate
o38.Size = Vector3.new(3.48000026, 2.4000001, 1)
o38.CFrame = CFrame.new(99.0602112, 4.60000706, 18.3115101, 1, 8.46371435e-008, 0, -8.46371435e-008, 1, 0, 0, 0, 1)
o38.BottomSurface = Enum.SurfaceType.Weld
o38.LeftSurface = Enum.SurfaceType.Weld
o38.RightSurface = Enum.SurfaceType.Weld
o38.TopSurface = Enum.SurfaceType.Weld
o38.Color = Color3.new(0.972549, 0.972549, 0.972549)
o39.Parent = o1
o39.BrickColor = BrickColor.new("Really red")
o39.Position = Vector3.new(113.818176, 4.80000877, 9.31151104)
o39.Rotation = Vector3.new(-0, 0, -2.2344675e-006)
o39.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o39.Velocity = Vector3.new(-0.000505513046, 0.000753228669, -0.00737475045)
o39.Anchored = true
o39.FormFactor = Enum.FormFactor.Plate
o39.Size = Vector3.new(1, 1.20000005, 1)
o39.CFrame = CFrame.new(113.818176, 4.80000877, 9.31151104, 0.999993801, 3.89985715e-008, 0, -4.03698408e-008, 1, 0, 0, 0, 1)
o39.BackSurface = Enum.SurfaceType.Weld
o39.BottomSurface = Enum.SurfaceType.Weld
o39.FrontSurface = Enum.SurfaceType.Weld
o39.LeftSurface = Enum.SurfaceType.Weld
o39.RightSurface = Enum.SurfaceType.Weld
o39.TopSurface = Enum.SurfaceType.Weld
o39.Color = Color3.new(1, 0, 0)
o40.Parent = o39
o41.Parent = o1
o41.BrickColor = BrickColor.new("Institutional white")
o41.Position = Vector3.new(113.818054, 3.80000734, 9.31151104)
o41.Rotation = Vector3.new(-0, 0, -2.23295706e-006)
o41.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o41.Velocity = Vector3.new(-0.000577784958, 0.000753237749, -0.00752147706)
o41.Anchored = true
o41.FormFactor = Enum.FormFactor.Plate
o41.Size = Vector3.new(1, 0.800000012, 1)
o41.CFrame = CFrame.new(113.818054, 3.80000734, 9.31151104, 0.999993563, 3.89721997e-008, 0, -4.03962055e-008, 1, 0, 0, 0, 1)
o41.BackSurface = Enum.SurfaceType.Weld
o41.BottomSurface = Enum.SurfaceType.Weld
o41.FrontSurface = Enum.SurfaceType.Weld
o41.LeftSurface = Enum.SurfaceType.Weld
o41.RightSurface = Enum.SurfaceType.Weld
o41.TopSurface = Enum.SurfaceType.Weld
o41.Color = Color3.new(0.972549, 0.972549, 0.972549)
o42.Parent = o41
o43.Parent = o1
o43.BrickColor = BrickColor.new("Institutional white")
o43.Position = Vector3.new(105.317894, 8.40000725, 13.8115139)
o43.Rotation = Vector3.new(-0, 0, -2.21481446e-006)
o43.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o43.Velocity = Vector3.new(0.00106650498, 0.000707125873, -0.00436840346)
o43.Anchored = true
o43.CanCollide = false
o43.FormFactor = Enum.FormFactor.Plate
o43.Size = Vector3.new(14, 0.400000006, 8)
o43.CFrame = CFrame.new(105.317894, 8.40000725, 13.8115139, 1, 3.86558057e-008, 0, -3.86558057e-008, 1, 0, 0, 0, 1)
o43.BackSurface = Enum.SurfaceType.Weld
o43.BottomSurface = Enum.SurfaceType.Weld
o43.FrontSurface = Enum.SurfaceType.Weld
o43.LeftSurface = Enum.SurfaceType.Weld
o43.RightSurface = Enum.SurfaceType.Weld
o43.TopSurface = Enum.SurfaceType.Weld
o43.Color = Color3.new(0.972549, 0.972549, 0.972549)
o44.Parent = o43
o45.Parent = o1
o45.BrickColor = BrickColor.new("Really black")
o45.Position = Vector3.new(113.818176, 6.80000782, 11.311511)
o45.Rotation = Vector3.new(-90, -89.9314728, -90)
o45.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o45.Velocity = Vector3.new(0.000222070201, 0.000459702482, -0.00708122645)
o45.Anchored = true
o45.CanCollide = false
o45.FormFactor = Enum.FormFactor.Plate
o45.Size = Vector3.new(3, 2.79999995, 1)
o45.CFrame = CFrame.new(113.818176, 6.80000782, 11.311511, 0, 3.96052044e-008, -0.999999285, 0, 1, 3.97634281e-008, 1, 0, 0)
o45.BackSurface = Enum.SurfaceType.Weld
o45.BottomSurface = Enum.SurfaceType.Weld
o45.TopSurface = Enum.SurfaceType.Weld
o45.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o46.Parent = o45
o46.MeshType = Enum.MeshType.Wedge
o47.Parent = o1
o47.BrickColor = BrickColor.new("Institutional white")
o47.Position = Vector3.new(103.118179, 2.40000772, 13.8115101)
o47.Rotation = Vector3.new(-0, 0, -2.27223404e-006)
o47.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o47.Velocity = Vector3.new(0.000632874086, 0.000866103393, -0.0046077203)
o47.Anchored = true
o47.FormFactor = Enum.FormFactor.Plate
o47.Size = Vector3.new(12.3999996, 1.20000005, 10)
o47.CFrame = CFrame.new(103.118179, 2.40000772, 13.8115101, 0.999999762, 3.96579551e-008, 0, -3.97106952e-008, 1, 0, 0, 0, 1)
o47.BackSurface = Enum.SurfaceType.Weld
o47.BottomSurface = Enum.SurfaceType.Weld
o47.FrontSurface = Enum.SurfaceType.Weld
o47.LeftSurface = Enum.SurfaceType.Weld
o47.RightSurface = Enum.SurfaceType.Weld
o47.TopSurface = Enum.SurfaceType.Weld
o47.Color = Color3.new(0.972549, 0.972549, 0.972549)
o48.Parent = o47
o49.Parent = o1
o49.BrickColor = BrickColor.new("White")
o49.Position = Vector3.new(104.018181, 3.20000815, 13.8115101)
o49.Rotation = Vector3.new(-0, 0, -2.27374471e-006)
o49.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o49.Velocity = Vector3.new(0.000690691522, 0.000801058719, -0.00475267787)
o49.Anchored = true
o49.FormFactor = Enum.FormFactor.Plate
o49.Size = Vector3.new(20.6000004, 0.400000006, 10)
o49.CFrame = CFrame.new(104.018181, 3.20000815, 13.8115101, 1, 3.96843305e-008, 0, -3.96843305e-008, 1, 0, 0, 0, 1)
o49.BackSurface = Enum.SurfaceType.Weld
o49.BottomSurface = Enum.SurfaceType.Weld
o49.FrontSurface = Enum.SurfaceType.Weld
o49.LeftSurface = Enum.SurfaceType.Weld
o49.RightSurface = Enum.SurfaceType.Weld
o49.TopSurface = Enum.SurfaceType.Weld
o49.Color = Color3.new(0.94902, 0.952941, 0.952941)
o50.Parent = o49
o51.Parent = o1
o51.BrickColor = BrickColor.new("Institutional white")
o51.Position = Vector3.new(107.167747, 5.80000782, 18.3115101)
o51.Rotation = Vector3.new(-0, 0, -3.14727777e-006)
o51.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o51.Velocity = Vector3.new(0.00219043763, -8.69987416e-005, -0.00528925471)
o51.Anchored = true
o51.FormFactor = Enum.FormFactor.Plate
o51.Size = Vector3.new(12.3000002, 4.80000019, 1)
o51.CFrame = CFrame.new(107.167747, 5.80000782, 18.3115101, 1, 5.49303607e-008, 0, -5.49303607e-008, 1, 0, 0, 0, 1)
o51.BackSurface = Enum.SurfaceType.Weld
o51.BottomSurface = Enum.SurfaceType.Weld
o51.FrontSurface = Enum.SurfaceType.Weld
o51.LeftSurface = Enum.SurfaceType.Weld
o51.RightSurface = Enum.SurfaceType.Weld
o51.TopSurface = Enum.SurfaceType.Weld
o51.Color = Color3.new(0.972549, 0.972549, 0.972549)
o52.Parent = o51
o53.Parent = o1
o53.BrickColor = BrickColor.new("Institutional white")
o53.Position = Vector3.new(113.818176, 6.80000782, 13.8115101)
o53.Rotation = Vector3.new(-90, -89.9314728, -90)
o53.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o53.Velocity = Vector3.new(0.000950869871, 9.27953006e-005, -0.00708122645)
o53.Anchored = true
o53.CanCollide = false
o53.FormFactor = Enum.FormFactor.Plate
o53.Size = Vector3.new(2, 2.79999995, 1)
o53.CFrame = CFrame.new(113.818176, 6.80000782, 13.8115101, 0, 3.96052044e-008, -0.999999285, 0, 1, 3.97634281e-008, 1, 0, 0)
o53.BackSurface = Enum.SurfaceType.Weld
o53.BottomSurface = Enum.SurfaceType.Weld
o53.TopSurface = Enum.SurfaceType.Weld
o53.Color = Color3.new(0.972549, 0.972549, 0.972549)
o54.Parent = o53
o54.MeshType = Enum.MeshType.Wedge
o55.Parent = o1
o55.BrickColor = BrickColor.new("Really black")
o55.Position = Vector3.new(113.818176, 6.80000782, 16.3115101)
o55.Rotation = Vector3.new(-90, -89.9314728, -90)
o55.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o55.Velocity = Vector3.new(0.0016796696, -0.000274111895, -0.00708122645)
o55.Anchored = true
o55.CanCollide = false
o55.FormFactor = Enum.FormFactor.Plate
o55.Size = Vector3.new(3, 2.79999995, 1)
o55.CFrame = CFrame.new(113.818176, 6.80000782, 16.3115101, 0, 3.96052044e-008, -0.999999285, 0, 1, 3.97634281e-008, 1, 0, 0)
o55.BackSurface = Enum.SurfaceType.Weld
o55.BottomSurface = Enum.SurfaceType.Weld
o55.TopSurface = Enum.SurfaceType.Weld
o55.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o56.Parent = o55
o56.MeshType = Enum.MeshType.Wedge
o57.Parent = o1
o57.BrickColor = BrickColor.new("Institutional white")
o57.Position = Vector3.new(113.818176, 4.40000582, 13.8115101)
o57.Rotation = Vector3.new(-0, 0, -2.27223404e-006)
o57.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o57.Velocity = Vector3.new(0.000777417503, 9.27956426e-005, -0.00743345637)
o57.Anchored = true
o57.CanCollide = false
o57.FormFactor = Enum.FormFactor.Plate
o57.Size = Vector3.new(1, 2, 8)
o57.CFrame = CFrame.new(113.818176, 4.40000582, 13.8115101, 0.999999762, 3.96579551e-008, 0, -3.97106952e-008, 1, 0, 0, 0, 1)
o57.BackSurface = Enum.SurfaceType.Weld
o57.BottomSurface = Enum.SurfaceType.Weld
o57.FrontSurface = Enum.SurfaceType.Weld
o57.LeftSurface = Enum.SurfaceType.Weld
o57.RightSurface = Enum.SurfaceType.Weld
o57.TopSurface = Enum.SurfaceType.Weld
o57.Color = Color3.new(0.972549, 0.972549, 0.972549)
o58.Parent = o57
o59.Parent = o1
o59.BrickColor = BrickColor.new("Institutional white")
o59.Position = Vector3.new(113.818176, 3.80000734, 18.3115101)
o59.Rotation = Vector3.new(-0, 0, -2.27223404e-006)
o59.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o59.Velocity = Vector3.new(0.00204589404, -0.000567637384, -0.00752151385)
o59.Anchored = true
o59.FormFactor = Enum.FormFactor.Plate
o59.Size = Vector3.new(1, 0.800000012, 1)
o59.CFrame = CFrame.new(113.818176, 3.80000734, 18.3115101, 0.999999762, 3.96579551e-008, 0, -3.97106952e-008, 1, 0, 0, 0, 1)
o59.BackSurface = Enum.SurfaceType.Weld
o59.BottomSurface = Enum.SurfaceType.Weld
o59.FrontSurface = Enum.SurfaceType.Weld
o59.LeftSurface = Enum.SurfaceType.Weld
o59.RightSurface = Enum.SurfaceType.Weld
o59.TopSurface = Enum.SurfaceType.Weld
o59.Color = Color3.new(0.972549, 0.972549, 0.972549)
o60.Parent = o59
o61.Parent = o1
o61.BrickColor = BrickColor.new("Institutional white")
o61.Position = Vector3.new(105.317894, 8.40000725, 18.3115101)
o61.Rotation = Vector3.new(-0, 0, -2.21330401e-006)
o61.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o61.Velocity = Vector3.new(0.00237834454, 4.6692905e-005, -0.00436840346)
o61.Anchored = true
o61.CanCollide = false
o61.FormFactor = Enum.FormFactor.Plate
o61.Size = Vector3.new(14, 0.400000006, 1)
o61.CFrame = CFrame.new(105.317894, 8.40000725, 18.3115101, 0.999999762, 3.86294303e-008, 0, -3.86821704e-008, 1, 0, 0, 0, 1)
o61.BackSurface = Enum.SurfaceType.Weld
o61.BottomSurface = Enum.SurfaceType.Weld
o61.FrontSurface = Enum.SurfaceType.Weld
o61.LeftSurface = Enum.SurfaceType.Weld
o61.RightSurface = Enum.SurfaceType.Weld
o61.TopSurface = Enum.SurfaceType.Weld
o61.Color = Color3.new(0.972549, 0.972549, 0.972549)
o62.Parent = o61
o63.Parent = o1
o63.BrickColor = BrickColor.new("Institutional white")
o63.Position = Vector3.new(97.8181839, 5.79500866, 9.31151104)
o63.Rotation = Vector3.new(-0, 0, -2.36894834e-006)
o63.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o63.Velocity = Vector3.new(-0.000433602603, 0.00190957636, -0.00256440602)
o63.Anchored = true
o63.CanCollide = false
o63.FormFactor = Enum.FormFactor.Plate
o63.Size = Vector3.new(1, 4.80999994, 1)
o63.CFrame = CFrame.new(97.8181839, 5.79500866, 9.31151104, 1, 4.13459489e-008, 0, -4.13459489e-008, 1, 0, 0, 0, 1)
o63.BottomSurface = Enum.SurfaceType.Weld
o63.LeftSurface = Enum.SurfaceType.Weld
o63.RightSurface = Enum.SurfaceType.Weld
o63.TopSurface = Enum.SurfaceType.Weld
o63.Color = Color3.new(0.972549, 0.972549, 0.972549)
o64.Parent = o1
o64.BrickColor = BrickColor.new("Institutional white")
o64.Position = Vector3.new(97.8178101, 7.00000858, 18.3115101)
o64.Rotation = Vector3.new(-0, 0, -2.14529973e-006)
o64.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o64.Velocity = Vector3.new(0.00227716402, 0.00058873737, -0.00238744705)
o64.Anchored = true
o64.CanCollide = false
o64.FormFactor = Enum.FormFactor.Plate
o64.Size = Vector3.new(1, 2.4000001, 1)
o64.CFrame = CFrame.new(97.8178101, 7.00000858, 18.3115101, 0.999999762, 3.74425326e-008, 0, -3.74952727e-008, 1, 0, 0, 0, 1)
o64.BottomSurface = Enum.SurfaceType.Weld
o64.LeftSurface = Enum.SurfaceType.Weld
o64.RightSurface = Enum.SurfaceType.Weld
o64.TopSurface = Enum.SurfaceType.Weld
o64.Color = Color3.new(0.972549, 0.972549, 0.972549)
o65.Parent = o1
o65.BrickColor = BrickColor.new("Institutional white")
o65.Position = Vector3.new(113.418167, 2.40000749, 13.8115101)
o65.Rotation = Vector3.new(-0, 0, -2.27223404e-006)
o65.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o65.Velocity = Vector3.new(0.000632874086, 0.000121704477, -0.0076103732)
o65.Anchored = true
o65.FormFactor = Enum.FormFactor.Plate
o65.Size = Vector3.new(1.80000007, 1.20000005, 10)
o65.CFrame = CFrame.new(113.418167, 2.40000749, 13.8115101, 0.999999762, 3.96579551e-008, 0, -3.97106952e-008, 1, 0, 0, 0, 1)
o65.BackSurface = Enum.SurfaceType.Weld
o65.BottomSurface = Enum.SurfaceType.Weld
o65.FrontSurface = Enum.SurfaceType.Weld
o65.LeftSurface = Enum.SurfaceType.Weld
o65.RightSurface = Enum.SurfaceType.Weld
o65.TopSurface = Enum.SurfaceType.Weld
o65.Color = Color3.new(0.972549, 0.972549, 0.972549)
o66.Parent = o65
o67.Parent = o1
o67.BrickColor = BrickColor.new("Really red")
o67.Position = Vector3.new(113.817245, 4.80000687, 18.3115101)
o67.Rotation = Vector3.new(-0, 0, -3.17145691e-006)
o67.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o67.Velocity = Vector3.new(0.00211816584, -0.000567570096, -0.0073744799)
o67.Anchored = true
o67.FormFactor = Enum.FormFactor.Plate
o67.Size = Vector3.new(1, 1.20000005, 1)
o67.CFrame = CFrame.new(113.817245, 4.80000687, 18.3115101, 1, 5.53523627e-008, 0, -5.53523627e-008, 1, 0, 0, 0, 1)
o67.BackSurface = Enum.SurfaceType.Weld
o67.BottomSurface = Enum.SurfaceType.Weld
o67.FrontSurface = Enum.SurfaceType.Weld
o67.LeftSurface = Enum.SurfaceType.Weld
o67.RightSurface = Enum.SurfaceType.Weld
o67.TopSurface = Enum.SurfaceType.Weld
o67.Color = Color3.new(1, 0, 0)
o68.Parent = o67
o69.Parent = o1
o69.BrickColor = BrickColor.new("Institutional white")
o69.Position = Vector3.new(112.817894, 8.40000725, 13.8115139)
o69.Rotation = Vector3.new(-0, 0, -2.21330401e-006)
o69.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o69.Velocity = Vector3.new(0.00106650498, 0.000165087578, -0.00655480288)
o69.Anchored = true
o69.CanCollide = false
o69.FormFactor = Enum.FormFactor.Plate
o69.Size = Vector3.new(1, 0.400000006, 10)
o69.CFrame = CFrame.new(112.817894, 8.40000725, 13.8115139, 0.999999762, 3.86294303e-008, 0, -3.86821704e-008, 1, 0, 0, 0, 1)
o69.BackSurface = Enum.SurfaceType.Weld
o69.BottomSurface = Enum.SurfaceType.Weld
o69.FrontSurface = Enum.SurfaceType.Weld
o69.LeftSurface = Enum.SurfaceType.Weld
o69.RightSurface = Enum.SurfaceType.Weld
o69.TopSurface = Enum.SurfaceType.Weld
o69.Color = Color3.new(0.972549, 0.972549, 0.972549)
o70.Parent = o69
o71.Parent = o1
o71.BrickColor = BrickColor.new("Really black")
o71.Position = Vector3.new(92.2181854, 3.8000083, 13.8115101)
o71.Rotation = Vector3.new(-0, 0, -2.2601489e-006)
o71.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o71.Velocity = Vector3.new(0.0007340546, 0.00165386556, -0.00122468593)
o71.Anchored = true
o71.FormFactor = Enum.FormFactor.Custom
o71.Size = Vector3.new(0.200000003, 0.800000012, 6)
o71.CFrame = CFrame.new(92.2181854, 3.8000083, 13.8115101, 0.999997854, 3.94469524e-008, 0, -3.99216233e-008, 1, 0, 0, 0, 1)
o71.BackSurface = Enum.SurfaceType.Weld
o71.BottomSurface = Enum.SurfaceType.Weld
o71.FrontSurface = Enum.SurfaceType.Weld
o71.LeftSurface = Enum.SurfaceType.Weld
o71.RightSurface = Enum.SurfaceType.Weld
o71.TopSurface = Enum.SurfaceType.Weld
o71.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o72.Parent = o71
o73.Name = "Head"
o73.Parent = o1
o73.Material = Enum.Material.SmoothPlastic
o73.BrickColor = BrickColor.new("Institutional white")
o73.Position = Vector3.new(99.207077, 7.026577, 15.2047167)
o73.Rotation = Vector3.new(5.49961514e-005, 89.0444794, -5.50190998e-005)
o73.Anchored = true
o73.FormFactor = Enum.FormFactor.Symmetric
o73.Size = Vector3.new(2, 1, 1)
o73.CFrame = CFrame.new(99.207077, 7.026577, 15.2047167, 0.0166787934, 1.60160507e-008, 0.999860942, -5.34079281e-010, 1, -1.60093698e-008, -0.999861002, -2.66988043e-010, 0.0166787915)
o73.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o73.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o73.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o73.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o73.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o73.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o73.Color = Color3.new(0.972549, 0.972549, 0.972549)
o74.Parent = o73
o74.Scale = Vector3.new(1.25, 1.25, 1.25)
o75.Name = "face"
o75.Parent = o73
o75.Texture = "rbxasset://textures/face.png"
o76.Parent = o1
o76.BrickColor = BrickColor.new("Institutional white")
o76.Position = Vector3.new(99.6954269, 5.81500673, 9.31151104)
o76.Rotation = Vector3.new(-0, 0, -8.82515178e-006)
o76.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o76.Velocity = Vector3.new(-0.000432157307, 0.00177390513, -0.00310872309)
o76.Anchored = true
o76.CanCollide = false
o76.FormFactor = Enum.FormFactor.Plate
o76.Size = Vector3.new(2.76000023, 4.82999992, 1)
o76.CFrame = CFrame.new(99.6954269, 5.81500673, 9.31151104, 1, 1.54027958e-007, 0, -1.54027958e-007, 1, 0, 0, 0, 1)
o76.BottomSurface = Enum.SurfaceType.Weld
o76.LeftSurface = Enum.SurfaceType.Weld
o76.RightSurface = Enum.SurfaceType.Weld
o76.TopSurface = Enum.SurfaceType.Weld
o76.Color = Color3.new(0.972549, 0.972549, 0.972549)
o77.Parent = o1
o77.BrickColor = BrickColor.new("Institutional white")
o77.Position = Vector3.new(100.909996, 5.80000877, 14.2915134)
o77.Rotation = Vector3.new(-0, 0, -7.89941078e-006)
o77.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o77.Velocity = Vector3.new(0.0010185279, 0.000955246738, -0.00346499542)
o77.Anchored = true
o77.FormFactor = Enum.FormFactor.Plate
o77.Size = Vector3.new(0.200000003, 4.80000019, 9.0199995)
o77.CFrame = CFrame.new(100.909996, 5.80000877, 14.2915134, 1, 1.37870728e-007, 0, -1.37870728e-007, 1, 0, 0, 0, 1)
o77.BackSurface = Enum.SurfaceType.Weld
o77.BottomSurface = Enum.SurfaceType.Weld
o77.FrontSurface = Enum.SurfaceType.Weld
o77.LeftSurface = Enum.SurfaceType.Weld
o77.RightSurface = Enum.SurfaceType.Weld
o77.TopSurface = Enum.SurfaceType.Weld
o77.Color = Color3.new(0.972549, 0.972549, 0.972549)
o78.Parent = o77
o79.Name = "Head"
o79.Parent = o1
o79.Material = Enum.Material.SmoothPlastic
o79.BrickColor = BrickColor.new("Institutional white")
o79.Position = Vector3.new(103.10894, 7.49666739, 15.2047167)
o79.Rotation = Vector3.new(-1.53054156e-008, -0.95580709, -1.83469444e-006)
o79.Anchored = true
o79.FormFactor = Enum.FormFactor.Symmetric
o79.Size = Vector3.new(2, 1, 1)
o79.CFrame = CFrame.new(103.10894, 7.49666739, 15.2047167, 0.999860883, 3.20170024e-008, -0.0166812073, -3.20170024e-008, 1, 2.67092765e-010, 0.0166812055, 2.67026595e-010, 0.999860942)
o79.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o79.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o79.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o79.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o79.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o79.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o79.Color = Color3.new(0.972549, 0.972549, 0.972549)
o80.Parent = o79
o80.Scale = Vector3.new(1.25, 1.25, 1.25)
o81.Name = "face"
o81.Parent = o79
o81.Texture = "rbxasset://textures/face.png"
o82.Name = "Handle"
o82.Parent = o1
o82.Material = Enum.Material.SmoothPlastic
o82.Position = Vector3.new(103.10894, 7.34666729, 15.2047167)
o82.Rotation = Vector3.new(-1.53054156e-008, -0.95580709, -1.83469444e-006)
o82.Anchored = true
o82.CanCollide = false
o82.FormFactor = Enum.FormFactor.Symmetric
o82.Size = Vector3.new(2, 2, 2)
o82.CFrame = CFrame.new(103.10894, 7.34666729, 15.2047167, 0.999860883, 3.20170024e-008, -0.0166812073, -3.20170024e-008, 1, 2.67092765e-010, 0.0166812055, 2.67026595e-010, 0.999860942)
o82.BottomSurface = Enum.SurfaceType.Smooth
o82.TopSurface = Enum.SurfaceType.Smooth
o83.Parent = o82
o83.MeshId = "http://www.roblox.com/asset/?id=15393031"
o83.TextureId = "http://www.roblox.com/asset/?id=15393013"
o83.MeshType = Enum.MeshType.FileMesh
o84.Parent = o1
o84.NameOcclusion = Enum.NameOcclusion.NoOcclusion
o84.RightLeg = o94
o84.LeftLeg = o96
o84.Torso = o87
o84.Health = 0
o84.MaxHealth = 0
o85.Name = "TPPART"
o85.Parent = o1
o85.Transparency = 1
o85.Position = Vector3.new(104.155182, 4.24109221, 12.6003485)
o85.Rotation = Vector3.new(-0, 0, -3.5910773e-006)
o85.Anchored = true
o85.CanCollide = false
o85.Size = Vector3.new(4, 1, 2)
o85.CFrame = CFrame.new(104.155182, 4.24109221, 12.6003485, 1, 6.26761221e-008, 0, -6.26761221e-008, 1, 0, 0, 0, 1)
o86.Name = "TPPART2"
o86.Parent = o1
o86.Transparency = 1
o86.Position = Vector3.new(104.155182, 5.40188599, 6.32408237)
o86.Rotation = Vector3.new(-0, 0, -3.5910773e-006)
o86.Anchored = true
o86.CanCollide = false
o86.Size = Vector3.new(4, 1, 2)
o86.CFrame = CFrame.new(104.155182, 5.40188599, 6.32408237, 1, 6.26761221e-008, 0, -6.26761221e-008, 1, 0, 0, 0, 1)
o87.Name = "Torso"
o87.Parent = o1
o87.Material = Enum.Material.SmoothPlastic
o87.BrickColor = BrickColor.new("Navy blue")
o87.Position = Vector3.new(99.207077, 5.526577, 15.2047167)
o87.Rotation = Vector3.new(5.49961514e-005, 89.0444794, -5.50190998e-005)
o87.Anchored = true
o87.FormFactor = Enum.FormFactor.Symmetric
o87.Size = Vector3.new(2, 2, 1)
o87.CFrame = CFrame.new(99.207077, 5.526577, 15.2047167, 0.0166787934, 1.60160507e-008, 0.999860942, -5.34079281e-010, 1, -1.60093698e-008, -0.999861002, -2.66988043e-010, 0.0166787915)
o87.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o87.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o87.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o87.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o87.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o87.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o87.Color = Color3.new(0, 0.12549, 0.376471)
o88.Name = "roblox"
o88.Parent = o87
o89.Name = "Right Shoulder"
o89.Parent = o87
o89.C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
o89.C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
o89.Part0 = o87
o89.Part1 = o95
o89.DesiredAngle = -0.062025275081396
o89.MaxVelocity = 0.15000000596046
o90.Name = "Left Shoulder"
o90.Parent = o87
o90.C0 = CFrame.new(-1, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
o90.C1 = CFrame.new(0.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
o90.Part0 = o87
o90.Part1 = o97
o90.DesiredAngle = -0.062025275081396
o90.MaxVelocity = 0.15000000596046
o91.Name = "Right Hip"
o91.Parent = o87
o91.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
o91.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
o91.Part0 = o87
o91.Part1 = o94
o91.DesiredAngle = 0.062025275081396
o91.MaxVelocity = 0.10000000149012
o92.Name = "Left Hip"
o92.Parent = o87
o92.C0 = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
o92.C1 = CFrame.new(-0.5, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
o92.Part0 = o87
o92.Part1 = o96
o92.DesiredAngle = 0.062025275081396
o92.MaxVelocity = 0.10000000149012
o93.Name = "Neck"
o93.Parent = o87
o93.C0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
o93.C1 = CFrame.new(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
o93.Part0 = o87
o93.Part1 = o73
o93.MaxVelocity = 0.10000000149012
o94.Name = "Right Leg"
o94.Parent = o1
o94.Material = Enum.Material.SmoothPlastic
o94.BrickColor = BrickColor.new("Navy blue")
o94.Position = Vector3.new(99.215416, 3.526577, 14.7047863)
o94.Rotation = Vector3.new(5.49961514e-005, 89.0444794, -5.50190998e-005)
o94.Anchored = true
o94.CanCollide = false
o94.FormFactor = Enum.FormFactor.Symmetric
o94.Size = Vector3.new(1, 2, 1)
o94.CFrame = CFrame.new(99.215416, 3.526577, 14.7047863, 0.0166787934, 1.60160507e-008, 0.999860942, -5.34079281e-010, 1, -1.60093698e-008, -0.999861002, -2.66988043e-010, 0.0166787915)
o94.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o94.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o94.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o94.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o94.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o94.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o94.Color = Color3.new(0, 0.12549, 0.376471)
o95.Name = "Right Arm"
o95.Parent = o1
o95.Material = Enum.Material.SmoothPlastic
o95.BrickColor = BrickColor.new("Maroon")
o95.Position = Vector3.new(99.2321014, 5.526577, 13.7049236)
o95.Rotation = Vector3.new(5.49961514e-005, 89.0444794, -5.50190998e-005)
o95.Anchored = true
o95.CanCollide = false
o95.FormFactor = Enum.FormFactor.Symmetric
o95.Size = Vector3.new(1, 2, 1)
o95.CFrame = CFrame.new(99.2321014, 5.526577, 13.7049236, 0.0166787934, 1.60160507e-008, 0.999860942, -5.34079281e-010, 1, -1.60093698e-008, -0.999861002, -2.66988043e-010, 0.0166787915)
o95.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o95.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o95.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o95.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o95.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o95.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o95.Color = Color3.new(0.458824, 0, 0)
o96.Name = "Left Leg"
o96.Parent = o1
o96.Material = Enum.Material.SmoothPlastic
o96.BrickColor = BrickColor.new("Navy blue")
o96.Position = Vector3.new(99.1987381, 3.526577, 15.7046452)
o96.Rotation = Vector3.new(5.49961514e-005, 89.0444794, -5.50190998e-005)
o96.Anchored = true
o96.CanCollide = false
o96.FormFactor = Enum.FormFactor.Symmetric
o96.Size = Vector3.new(1, 2, 1)
o96.CFrame = CFrame.new(99.1987381, 3.526577, 15.7046452, 0.0166787934, 1.60160507e-008, 0.999860942, -5.34079281e-010, 1, -1.60093698e-008, -0.999861002, -2.66988043e-010, 0.0166787915)
o96.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o96.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o96.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o96.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o96.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o96.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o96.Color = Color3.new(0, 0.12549, 0.376471)
o97.Name = "Left Arm"
o97.Parent = o1
o97.Material = Enum.Material.SmoothPlastic
o97.BrickColor = BrickColor.new("Maroon")
o97.Position = Vector3.new(99.1820602, 5.526577, 16.7045078)
o97.Rotation = Vector3.new(5.49961514e-005, 89.0444794, -5.50190998e-005)
o97.Anchored = true
o97.CanCollide = false
o97.FormFactor = Enum.FormFactor.Symmetric
o97.Size = Vector3.new(1, 2, 1)
o97.CFrame = CFrame.new(99.1820602, 5.526577, 16.7045078, 0.0166787934, 1.60160507e-008, 0.999860942, -5.34079281e-010, 1, -1.60093698e-008, -0.999861002, -2.66988043e-010, 0.0166787915)
o97.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o97.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o97.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o97.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o97.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o97.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o97.Color = Color3.new(0.458824, 0, 0)
o98.Name = "Torso"
o98.Parent = o1
o98.Material = Enum.Material.SmoothPlastic
o98.BrickColor = BrickColor.new("Navy blue")
o98.Position = Vector3.new(103.10894, 5.99666739, 15.2047167)
o98.Rotation = Vector3.new(-1.53054156e-008, -0.95580709, -1.83469444e-006)
o98.Anchored = true
o98.FormFactor = Enum.FormFactor.Symmetric
o98.Size = Vector3.new(2, 2, 1)
o98.CFrame = CFrame.new(103.10894, 5.99666739, 15.2047167, 0.999860883, 3.20170024e-008, -0.0166812073, -3.20170024e-008, 1, 2.67092765e-010, 0.0166812055, 2.67026595e-010, 0.999860942)
o98.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o98.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o98.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o98.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o98.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o98.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o98.Color = Color3.new(0, 0.12549, 0.376471)
o99.Name = "roblox"
o99.Parent = o98
o100.Name = "Right Hip"
o100.Parent = o98
o100.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
o100.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
o100.Part0 = o98
o100.Part1 = o103
o100.DesiredAngle = 0.062025275081396
o100.MaxVelocity = 0.10000000149012
o101.Name = "Left Hip"
o101.Parent = o98
o101.C0 = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
o101.C1 = CFrame.new(-0.5, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
o101.Part0 = o98
o101.Part1 = o105
o101.DesiredAngle = 0.062025275081396
o101.MaxVelocity = 0.10000000149012
o102.Name = "Neck"
o102.Parent = o98
o102.C0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
o102.C1 = CFrame.new(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
o102.Part0 = o98
o102.Part1 = o79
o102.MaxVelocity = 0.10000000149012
o103.Name = "Right Leg"
o103.Parent = o1
o103.Material = Enum.Material.SmoothPlastic
o103.BrickColor = BrickColor.new("Really black")
o103.Position = Vector3.new(103.608864, 3.99666739, 15.2130556)
o103.Rotation = Vector3.new(-1.53054156e-008, -0.95580709, -1.83469444e-006)
o103.Anchored = true
o103.CanCollide = false
o103.FormFactor = Enum.FormFactor.Symmetric
o103.Size = Vector3.new(1, 2, 1)
o103.CFrame = CFrame.new(103.608864, 3.99666739, 15.2130556, 0.999860883, 3.20170024e-008, -0.0166812073, -3.20170024e-008, 1, 2.67092765e-010, 0.0166812055, 2.67026595e-010, 0.999860942)
o103.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o103.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o103.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o103.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o103.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o103.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o103.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o104.Name = "Right Arm"
o104.Parent = o1
o104.Material = Enum.Material.SmoothPlastic
o104.BrickColor = BrickColor.new("Maroon")
o104.Position = Vector3.new(104.615349, 5.89646101, 14.8330393)
o104.Rotation = Vector3.new(45.0039597, -0.675833881, 0.675880313)
o104.Anchored = true
o104.CanCollide = false
o104.FormFactor = Enum.FormFactor.Symmetric
o104.Size = Vector3.new(1, 2, 1)
o104.CFrame = CFrame.new(104.615349, 5.89646101, 14.8330393, 0.999860883, -0.0117952423, -0.0117952526, 0, 0.707107067, -0.707106411, 0.0166809987, 0.707008064, 0.707008719)
o104.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o104.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o104.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o104.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o104.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o104.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o104.Color = Color3.new(0.458824, 0, 0)
o105.Name = "Left Leg"
o105.Parent = o1
o105.Material = Enum.Material.SmoothPlastic
o105.BrickColor = BrickColor.new("Really black")
o105.Position = Vector3.new(102.609009, 3.99666739, 15.1963739)
o105.Rotation = Vector3.new(-1.53054156e-008, -0.95580709, -1.83469444e-006)
o105.Anchored = true
o105.CanCollide = false
o105.FormFactor = Enum.FormFactor.Symmetric
o105.Size = Vector3.new(1, 2, 1)
o105.CFrame = CFrame.new(102.609009, 3.99666739, 15.1963739, 0.999860883, 3.20170024e-008, -0.0166812073, -3.20170024e-008, 1, 2.67092765e-010, 0.0166812055, 2.67026595e-010, 0.999860942)
o105.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o105.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o105.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o105.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o105.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o105.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o105.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o106.Name = "Left Arm"
o106.Parent = o1
o106.Material = Enum.Material.SmoothPlastic
o106.BrickColor = BrickColor.new("Maroon")
o106.Position = Vector3.new(101.617271, 5.96075201, 14.6924496)
o106.Rotation = Vector3.new(45.0039597, -0.675833881, 0.675880313)
o106.Anchored = true
o106.CanCollide = false
o106.FormFactor = Enum.FormFactor.Symmetric
o106.Size = Vector3.new(1, 2, 1)
o106.CFrame = CFrame.new(101.617271, 5.96075201, 14.6924496, 0.999860883, -0.0117952423, -0.0117952526, 0, 0.707107067, -0.707106411, 0.0166809987, 0.707008064, 0.707008719)
o106.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o106.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o106.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o106.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o106.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o106.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o106.Color = Color3.new(0.458824, 0, 0)
o107.Parent = o1
o107.Position = Vector3.new(110.917458, 1.50000954, 18.4564953)
o107.Rotation = Vector3.new(-90, 1.20620803e-006, -180)
o107.Anchored = true
o107.FormFactor = Enum.FormFactor.Symmetric
o107.Size = Vector3.new(2.39999986, 1.31000006, 2.39999986)
o107.CFrame = CFrame.new(110.917458, 1.50000954, 18.4564953, -1, 2.98044895e-008, 2.10523012e-008, 2.10523012e-008, 7.54615499e-008, 1, 2.9804486e-008, 1, -7.54615499e-008)
o108.Parent = o107
o109.Parent = o1
o109.BrickColor = BrickColor.new("Really black")
o109.Position = Vector3.new(110.917442, 1.50002527, 9.1665411)
o109.Rotation = Vector3.new(-90, 6.45824184e-006, 2.56150702e-006)
o109.Anchored = true
o109.FormFactor = Enum.FormFactor.Symmetric
o109.Size = Vector3.new(3, 1.20000005, 3)
o109.CFrame = CFrame.new(110.917442, 1.50002527, 9.1665411, 1, -4.47067308e-008, 1.12717586e-007, -1.12717586e-007, -5.51334445e-009, 1, -4.47067308e-008, -1, -5.51334933e-009)
o109.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o110.Parent = o109
o111.Parent = o1
o111.BrickColor = BrickColor.new("Really black")
o111.Position = Vector3.new(110.917458, 1.50000954, 18.4564953)
o111.Rotation = Vector3.new(-90, 1.20620803e-006, -180)
o111.Anchored = true
o111.FormFactor = Enum.FormFactor.Symmetric
o111.Size = Vector3.new(3, 1.20000005, 3)
o111.CFrame = CFrame.new(110.917458, 1.50000954, 18.4564953, -1, 2.98044895e-008, 2.10523012e-008, 2.10523012e-008, 7.54615499e-008, 1, 2.9804486e-008, 1, -7.54615499e-008)
o111.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o112.Parent = o111
o113.Parent = o1
o113.Position = Vector3.new(95.3486252, 1.50002623, 9.1665411)
o113.Rotation = Vector3.new(-90, 6.45824184e-006, 2.56150702e-006)
o113.Anchored = true
o113.FormFactor = Enum.FormFactor.Symmetric
o113.Size = Vector3.new(2.39999986, 1.31000006, 2.39999986)
o113.CFrame = CFrame.new(95.3486252, 1.50002623, 9.1665411, 1, -4.47067308e-008, 1.12717586e-007, -1.12717586e-007, -5.51334445e-009, 1, -4.47067308e-008, -1, -5.51334933e-009)
o114.Parent = o113
o115.Parent = o1
o115.BrickColor = BrickColor.new("Really black")
o115.Position = Vector3.new(95.3486252, 1.50002623, 9.1665411)
o115.Rotation = Vector3.new(-90, 6.45824184e-006, 2.56150702e-006)
o115.Anchored = true
o115.FormFactor = Enum.FormFactor.Symmetric
o115.Size = Vector3.new(3, 1.20000005, 3)
o115.CFrame = CFrame.new(95.3486252, 1.50002623, 9.1665411, 1, -4.47067308e-008, 1.12717586e-007, -1.12717586e-007, -5.51334445e-009, 1, -4.47067308e-008, -1, -5.51334933e-009)
o115.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o116.Parent = o115
o117.Parent = o1
o117.BrickColor = BrickColor.new("Really black")
o117.Position = Vector3.new(95.3486252, 1.50001001, 18.4564877)
o117.Rotation = Vector3.new(-90, 1.20620803e-006, -180)
o117.Anchored = true
o117.FormFactor = Enum.FormFactor.Symmetric
o117.Size = Vector3.new(3, 1.20000005, 3)
o117.CFrame = CFrame.new(95.3486252, 1.50001001, 18.4564877, -1, 2.98044895e-008, 2.10523012e-008, 2.10523012e-008, 7.54615499e-008, 1, 2.9804486e-008, 1, -7.54615499e-008)
o117.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o118.Parent = o117
o119.Parent = o1
o119.Position = Vector3.new(110.917442, 1.50002527, 9.1665411)
o119.Rotation = Vector3.new(-90, 6.45824184e-006, 2.56150702e-006)
o119.Anchored = true
o119.FormFactor = Enum.FormFactor.Symmetric
o119.Size = Vector3.new(2.39999986, 1.31000006, 2.39999986)
o119.CFrame = CFrame.new(110.917442, 1.50002527, 9.1665411, 1, -4.47067308e-008, 1.12717586e-007, -1.12717586e-007, -5.51334445e-009, 1, -4.47067308e-008, -1, -5.51334933e-009)
o120.Parent = o119
o121.Name = "Handle"
o121.Parent = o1
o121.Material = Enum.Material.SmoothPlastic
o121.Position = Vector3.new(99.207077, 6.8765769, 15.2047167)
o121.Rotation = Vector3.new(5.49961514e-005, 89.0444794, -5.50190998e-005)
o121.Anchored = true
o121.CanCollide = false
o121.FormFactor = Enum.FormFactor.Symmetric
o121.Size = Vector3.new(2, 2, 2)
o121.CFrame = CFrame.new(99.207077, 6.8765769, 15.2047167, 0.0166787934, 1.60160507e-008, 0.999860942, -5.34079281e-010, 1, -1.60093698e-008, -0.999861002, -2.66988043e-010, 0.0166787915)
o121.BottomSurface = Enum.SurfaceType.Smooth
o121.TopSurface = Enum.SurfaceType.Smooth
o122.Parent = o121
o122.MeshId = "http://www.roblox.com/asset/?id=15393031"
o122.TextureId = "http://www.roblox.com/asset/?id=15393013"
o122.MeshType = Enum.MeshType.FileMesh
o123.Name = "RPPART"
o123.Parent = o1
o123.Transparency = 1
o123.Position = Vector3.new(103.454132, 5.33460093, 13.0707426)
o123.Rotation = Vector3.new(-90, 0, -0)
o123.Anchored = true
o123.CanCollide = false
o123.Size = Vector3.new(4, 1, 2)
o123.CFrame = CFrame.new(103.454132, 5.33460093, 13.0707426, 1, 0, 0, 0, 0, 1, 0, -1, 0)
o124.Parent = o12
o124.Texture = "http://roblox.com/asset/?id=112031763"
function MoveY(model, Position)
	for _,part in pairs (model:GetChildren()) do
		if part.ClassName == "Part" then
			part.CFrame = part.CFrame + Vector3.new(0,Position,0)
		end
	end
end
function MoveX(model, Position)
	for _,part in pairs (model:GetChildren()) do
		if part.ClassName == "Part" then
			part.CFrame = part.CFrame + Vector3.new(Position,0,0)
		end
	end
end
function MoveSpawn(model, PLAYERPOS)
	for _,part in pairs (model:GetChildren()) do
		if part.ClassName == "Part" then
			part.CFrame = part.CFrame + PLAYERPOS + Vector3.new(50,-2.7,-5)
		end
	end
end
function MoveZ(model, Position)
	for _,part in pairs (model:GetChildren()) do
		if part.ClassName == "Part" then
			part.CFrame = part.CFrame + Vector3.new(0,0,Position)
		end
	end
end
function MoveZPart(Part, Position)
			Part.CFrame = Part.CFrame + Vector3.new(0,0,Position)
end
function MoveXPart(Part, Position)
			Part.CFrame = Part.CFrame + Vector3.new(Position,0,0)
end
game.Players[Victim].Character.HumanoidRootPart.Anchored = true
for i,v in pairs (o1:GetChildren()) do
	if v:IsA("Part") then
		v.Material = "SmoothPlastic"
		v.BackSurface = "SmoothNoOutlines"
		v.FrontSurface = "SmoothNoOutlines"
		v.BottomSurface = "SmoothNoOutlines"
		v.LeftSurface = "SmoothNoOutlines"
		v.RightSurface = "SmoothNoOutlines"
		v.TopSurface = "SmoothNoOutlines"
	end
end
	MoveSpawn(o1,game.Players[Victim].Character.HumanoidRootPart.Position)
for i=1,51 do
MoveX(o1,-3)
wait(.05)
end
wait(.5)
	MoveZPart(o12,-1)
	wait(.2)
for i=1,6 do
	MoveXPart(o12,1)
	wait(.1)
end
wait(.5)
game.Players[Victim].Character.HumanoidRootPart.CFrame = o86.CFrame
wait(.5)
game.Players[Victim].Character.HumanoidRootPart.CFrame = o85.CFrame
wait(.5)
	MoveZPart(o12,1)
	wait(.2)

for i=1,6 do
	MoveXPart(o12,-1)
	wait(.1)
end
for i=1,50 do
MoveX(o1,-3)
game.Players[Victim].Character.HumanoidRootPart.CFrame = o85.CFrame
wait(.05)
end
game.Players[Victim].Character.Head.face.Texture = "rbxassetid://629925029"
game.Players[Victim].Character.HumanoidRootPart.CFrame = o123.CFrame
SCREAM = Instance.new("Sound")
SCREAM.Parent = game.Players[Victim].Character.Head
SCREAM.SoundId = "rbxassetid://138167455"
SCREAM:Play()
wait(2.5)
game.Players[Victim].Character.Head.BrickColor = BrickColor.new("Maroon")
	MoveZPart(o12,-1)
	wait(.2)
for i=1,6 do
	MoveXPart(o12,1)
	wait(.1)
end
wait(.5)
game.Players[Victim].Character.HumanoidRootPart.CFrame = o86.CFrame
wait(.5)
	MoveZPart(o12,1)
	wait(.2)
for i=1,6 do
	MoveXPart(o12,-1)
	wait(.1)
end
game.Players[Victim].Character.Humanoid.Health = 0
player = game.Players[Victim]
char = player.Character
			char.Archivable = true
			local rg = char:Clone()
			rg.HumanoidRootPart:Destroy()
			rg.Name = ""
			rg.Humanoid.MaxHealth = 0
			for i, v in pairs(rg.Torso:GetChildren()) do
				if v:IsA("Motor6D") then
					v:Destroy()
				end
			end
			
			local n = Instance.new("Glue", rg.Torso)
			n.Name = "Neck"
			n.Part0 = rg.Torso
			n.Part1 = rg.Head
			n.C0 = CFrame.new(0, 1, 0)
			n.C1 = CFrame.new(0, -0.5, 0)
			
			local rs = Instance.new("Glue", rg.Torso)
			rs.Name = "Right Shoulder"
			rs.Part0 = rg.Torso
			rs.Part1 = rg["Right Arm"]
			rs.C0 = CFrame.new(1.5, 0.5, 0)
			rs.C1 = CFrame.new(0, 0.5, 0)
			local ls = Instance.new("Glue", rg.Torso)
			ls.Name = "Left Shoulder"
			ls.Part0 = rg.Torso
			ls.Part1 = rg["Left Arm"]
			ls.C0 = CFrame.new(-1.5, 0.5, 0)
			ls.C1 = CFrame.new(0, 0.5, 0)
			
			local rh = Instance.new("Glue", rg.Torso)
			rh.Name = "Right Hip"
			rh.Part0 = rg.Torso
			rh.Part1 = rg["Right Leg"]
			rh.C0 = CFrame.new(0.5, -1, 0)
			rh.C1 = CFrame.new(0, 1, 0)
			local lh = Instance.new("Glue", rg.Torso)
			lh.Name = "Left Hip"
			lh.Part0 = rg.Torso
			lh.Part1 = rg["Left Leg"]
			lh.C0 = CFrame.new(-0.5, -1, 0)
			lh.C1 = CFrame.new(0, 1, 0)
			char.Torso:Destroy()
			char.Head:Destroy()
			char["Left Leg"]:Destroy()
			char["Left Arm"]:Destroy()
			char["Right Leg"]:Destroy()
			char["Right Arm"]:Destroy()
			rg.Parent = game.Workspace
			rg.Head.BrickColor = BrickColor.new("Maroon")
function DEATH ()
OHHNELLY = Instance.new("Part")
OHHNELLY.Parent = workspace
OHHNELLY.Anchored = false
OHHNELLY.Material = Enum.Material.SmoothPlastic
OHHNELLY.BrickColor = BrickColor.new("Maroon")
OHHNELLY.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
OHHNELLY.Position = rg.Head.Position
OHHNELLY.Color = Color3.new(0.458824, 0, 0)
OHHNELLY.BackSurface = Enum.SurfaceType.SmoothNoOutlines
OHHNELLY.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
OHHNELLY.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
OHHNELLY.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
OHHNELLY.RightSurface = Enum.SurfaceType.SmoothNoOutlines
OHHNELLY.TopSurface = Enum.SurfaceType.SmoothNoOutlines
end
for i=1,20 do
DEATH()
MoveX(o1,-3)
wait(.05)
end
o1:Destroy()
end)
end)

Bomber.Name = "Bomber"
Bomber.Parent = GUI
Bomber.BackgroundColor3 = Color3.new(1, 1, 1)
Bomber.BackgroundTransparency = 0.60000002384186
Bomber.BorderColor3 = Color3.new(0, 0, 0)
Bomber.Position = UDim2.new(0.5, -112, 0.361999989, 0)
Bomber.Size = UDim2.new(0, 225, 0, 33)
Bomber.Font = Enum.Font.SourceSansSemibold
Bomber.Text = "Suicide Bomber"
Bomber.TextColor3 = Color3.new(0, 0, 0)
Bomber.TextSize = 18

Bomber.MouseButton1Click:connect(function()
Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
m=Instance.new('Model',Character)
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Face = Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
attackdebounce = false 
deb=false
equipped=true
hand=false
MMouse=nil
combo=0
mana=0
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
player=nil 
mana=0

mouse=Player:GetMouse()
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
player=Player 
ch=Character
RSH=ch.Torso["Right Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
RSH.Parent=nil 
LSH.Parent=nil 
-- 
RW.Name="Right Shoulder"
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Right Arm"] 
RW.Parent=ch.Torso 
-- 
LW.Name="Left Shoulder"
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=ch.Torso 

       Player=game:GetService('Players').LocalPlayer
       Character=Player.Character
       Mouse=Player:GetMouse()
       m=Instance.new('Model',Character)


       local function weldBetween(a, b)
           local weldd = Instance.new("ManualWeld")
           weldd.Part0 = a
           weldd.Part1 = b
           weldd.C0 = CFrame.new()
           weldd.C1 = b.CFrame:inverse() * a.CFrame
           weldd.Parent = a
           return weldd
       end
       
       function swait(num)
   if num==0 or num==nil then
   game:service'RunService'.Stepped:wait(0)
   else
   for i=0,num do
   game:service'RunService'.Stepped:wait(0)
   end
   end
           end
       
       function nooutline(part)
               part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
       end
       
       function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
               local fp=it("Part")
               fp.formFactor=formfactor
               fp.Parent=parent
               fp.Reflectance=reflectance
               fp.Transparency=transparency
               fp.CanCollide=false
               fp.Locked=true
               fp.BrickColor=BrickColor.new(tostring(brickcolor))
               fp.Name=name
               fp.Size=size
               fp.Position=Character.Torso.Position
               nooutline(fp)
               fp.Material=material
               fp:BreakJoints()
               return fp
       end
       
       function mesh(Mesh,part,meshtype,meshid,offset,scale)
               local mesh=it(Mesh)
               mesh.Parent=part
               if Mesh=="SpecialMesh" then
                       mesh.MeshType=meshtype
                       mesh.MeshId=meshid
               end
               mesh.Offset=offset
               mesh.Scale=scale
               return mesh
       end
       
       function weld(parent,part0,part1,c0,c1)
               local weld=it("Weld")
               weld.Parent=parent
               weld.Part0=part0
               weld.Part1=part1
               weld.C0=c0
               weld.C1=c1
               return weld
       end
       
       
local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else
assert(false, "unreachable")
end

local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude

local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)

local list = {}

local TrailColor = ("Dark grey")

if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new(TrailColor)
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "SmoothPlastic"
w1.CanCollide = false
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Instance.new("SpecialMesh",w1)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
w1:BreakJoints()
w1.Anchored = true
w1.Parent = workspace
w1.Transparency = 0.7
table.insert(Effects,{w1,"Disappear",.01})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end

if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new(TrailColor)
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "SmoothPlastic"
w2.CanCollide = false
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Instance.new("SpecialMesh",w2)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
w2:BreakJoints()
w2.Anchored = true
w2.Parent = workspace
w2.Transparency = 0.7
table.insert(Effects,{w2,"Disappear",.01})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end
       
       
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end

function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 

function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end

function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end

function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

--Example: Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)


function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
       if hit.Parent==nil then
               return
       end
       h=hit.Parent:FindFirstChild("Humanoid")
       for _,v in pairs(hit.Parent:children()) do
       if v:IsA("Humanoid") then
       h=v
       end
       end
       if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
       h=hit.Parent.Parent:FindFirstChild("Humanoid")
       end
       if hit.Parent.className=="Hat" then
       hit=hit.Parent.Parent:findFirstChild("Head")
       end
       if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
       if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
       --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                       return
               end]]
--                        hs(hit,1.2) 
                       c=Instance.new("ObjectValue")
                       c.Name="creator"
                       c.Value=game:service("Players").LocalPlayer
                       c.Parent=h
                       game:GetService("Debris"):AddItem(c,.5)
               Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
               blocked=false
               block=hit.Parent:findFirstChild("Block")
               if block~=nil then
               print(block.className)
               if block.className=="NumberValue" then
               if block.Value>0 then
               blocked=true
               if decreaseblock==nil then
               block.Value=block.Value-1
               end
               end
               end
               if block.className=="IntValue" then
               if block.Value>0 then
               blocked=true
               if decreaseblock~=nil then
               block.Value=block.Value-1
               end
               end
               end
               end
               if blocked==false then
--                h:TakeDamage(Damage)
               h.Health=h.Health-Damage
               showDamage(hit.Parent,Damage,.5,BrickColor.new("New Yeller"))
               else
               h.Health=h.Health-(Damage/2)
               showDamage(hit.Parent,Damage/2,.5,BrickColor.new("Bright blue"))
               end
               if Type=="Knockdown" then
               hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
swait(1)
HHumanoid.PlatformStand=false
end),hum)
               local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
               elseif Type=="Normal" then
               vp=Instance.new("BodyVelocity")
               vp.P=500
               vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
               if KnockbackType==1 then
               vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
               elseif KnockbackType==2 then
               vp.velocity=Property.CFrame.lookVector*knockback
               end
               if knockback>0 then
                       vp.Parent=hit.Parent.Torso
               end
               game:GetService("Debris"):AddItem(vp,.5)
               elseif Type=="Up" then
               local bodyVelocity=Instance.new("BodyVelocity")
               bodyVelocity.velocity=vt(0,60,0)
               bodyVelocity.P=5000
               bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
               bodyVelocity.Parent=hit
               game:GetService("Debris"):AddItem(bodyVelocity,1)
               rl=Instance.new("BodyAngularVelocity")
               rl.P=3000
               rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
               rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
               rl.Parent=hit
               game:GetService("Debris"):AddItem(rl,.5)
               elseif Type=="Snare" then
               bp=Instance.new("BodyPosition")
               bp.P=2000
               bp.D=100
               bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
               bp.position=hit.Parent.Torso.Position
               bp.Parent=hit.Parent.Torso
               game:GetService("Debris"):AddItem(bp,1)
               elseif Type=="Target" then
               if Targetting==false then
               ZTarget=hit.Parent.Torso
               coroutine.resume(coroutine.create(function(Part) 
               so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
               swait(5)
               so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
               end),ZTarget)
               TargHum=ZTarget.Parent:findFirstChild("Humanoid")
               targetgui=Instance.new("BillboardGui")
               targetgui.Parent=ZTarget
               targetgui.Size=UDim2.new(10,100,10,100)
               targ=Instance.new("ImageLabel")
               targ.Parent=targetgui
               targ.BackgroundTransparency=1
               targ.Image="rbxassetid://4834067"
               targ.Size=UDim2.new(1,0,1,0)
               cam.CameraType="Scriptable"
               cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
               dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
               workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
               Targetting=true
               RocketTarget=ZTarget
               for i=1,Property do
               --while Targetting==true and Humanoid.Health>0 and Character.Parent~=nil do
               if Humanoid.Health>0 and Character.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
               swait()
               end
               --workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,Head.CFrame.p+rmdir*100)
               cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
               dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
               cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)*cf(0,5,10)*euler(-0.3,0,0)
               end
               Targetting=false
               RocketTarget=nil
               targetgui.Parent=nil
               cam.CameraType="Custom"
               end
               end
                       debounce=Instance.new("BoolValue")
                       debounce.Name="DebounceHit"
                       debounce.Parent=hit.Parent
                       debounce.Value=true
                       game:GetService("Debris"):AddItem(debounce,Delay)
                       c=Instance.new("ObjectValue")
                       c.Name="creator"
                       c.Value=Player
                       c.Parent=h
                       game:GetService("Debris"):AddItem(c,.5)
               CRIT=false
               hitDeb=true
               AttackPos=6
       end
end

showDamage=function(Char,Dealt,du,Color)
       m=Instance.new("Model")
       m.Name=tostring(Dealt)
       h=Instance.new("Humanoid")
       h.Health=0
       h.MaxHealth=0
       h.Parent=m
       c=Instance.new("Part")
       c.Transparency=0
       c.BrickColor=Color
       c.Name="Head"
       c.TopSurface=0
       c.BottomSurface=0
       c.formFactor="Plate"
       c.Size=Vector3.new(1,.4,1)
       ms=Instance.new("CylinderMesh")
       ms.Scale=Vector3.new(.8,.8,.8)
       if CRIT==true then
               ms.Scale=Vector3.new(1,1.25,1)
       end
       ms.Parent=c
       c.Reflectance=0
       Instance.new("BodyGyro").Parent=c
       c.Parent=m
       if Char:findFirstChild("Head")~=nil then
       c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
       elseif Char.Parent:findFirstChild("Head")~=nil then
       c.CFrame=CFrame.new(Char.Parent["Head"].CFrame.p+Vector3.new(0,1.5,0))
       end
       f=Instance.new("BodyPosition")
       f.P=2000
       f.D=100
       f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
       f.position=c.Position+Vector3.new(0,3,0)
       f.Parent=c
       game:GetService("Debris"):AddItem(m,.5+du)
       c.CanCollide=false
       m.Parent=workspace
       c.CanCollide=false
end

VestHandle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(2.01999998, 1.39999998, 1.01999998))
handleweld=weld(m,Character["Torso"],VestHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-005, 0.300115585, 3.05175781e-005, 0.999999642, 0, 0, 0, 1, 0, 0, 0, 0.999999642))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"White","Part",Vector3.new(1, 0.76000005, 0.600000024))
Partweld=weld(m,VestHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.509597778, -0.490081787, 0.200000286, -0.999999642, 0, 0, 0, 0, 0.999999642, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=104516854",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.01999998, 0.600000024, 0.800000012))
Partweld=weld(m,VestHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000152587891, -0.999994516, -0.200134277, -4.47035475e-008, 0, 0.999999642, 0, 1, 0, -0.999999642, 0, -4.4703544e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.620000005, 1.01999998))
Partweld=weld(m,VestHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700012207, -1.00999117, 1.52587891e-005, 0.999999046, 0, 0, 0, 1, 0, 0, 0, 0.999999046))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.620000005, 1.01999998))
Partweld=weld(m,VestHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699127197, -1.00999379, 0.000549316406, 0.999997914, 6.38506317e-005, -2.78951497e-015, -6.38804122e-005, 1.00000012, 2.10474918e-015, 2.78942159e-015, 1.39239913e-015, 0.999997854))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.200000003, 0.400000036, 1.19999993))
Partweld=weld(m,VestHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.609390259, 0.811340332, -0.0999908447, 3.08029073e-018, -2.69585922e-014, -0.999999642, -0.999999642, -6.39334685e-005, -1.35697087e-018, -6.39334467e-005, 1, -2.6958582e-014))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=12891705",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.200000003, 0.400000036, 1.19999993))
Partweld=weld(m,VestHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.609359741, -0.788131714, -0.0999910831, 3.06354694e-018, -2.34616979e-014, -0.999999642, -0.999999642, -6.39629943e-005, -1.56279636e-018, -6.39629725e-005, 1, -2.34616895e-014))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=12891705",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.200000003, 0.400000036, 1.19999993))
Partweld=weld(m,VestHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.609375, 0.0116882324, -0.0999908447, 3.06355067e-018, -2.34617301e-014, -0.999999642, -0.999999642, -6.39631544e-005, -1.56279822e-018, -6.39631326e-005, 1, -2.34617217e-014))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=12891705",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.200000003, 0.400000036, 1.19999993))
Partweld=weld(m,VestHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.609313965, -0.388046265, -0.0999908447, 3.0635486e-018, -2.34617301e-014, -0.999998927, -0.999998927, -6.39631544e-005, -1.56279719e-018, -6.39630889e-005, 1, -2.34617047e-014))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=12891705",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.200000003, 0.400000036, 1.19999993))
Partweld=weld(m,VestHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.609329224, 0.411483765, -0.0999908447, 3.08028867e-018, -2.69585922e-014, -0.999998927, -0.999998927, -6.39334685e-005, -1.35696984e-018, -6.3933403e-005, 1, -2.69585617e-014))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=12891705",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld=weld(m,VestHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000305175781, -0.800010204, 0.89906311, -4.47035724e-008, 6.26018334e-015, 0.999997854, -8.34552054e-008, 1.00000012, -5.15634779e-015, -0.999997914, -5.35364961e-008, -4.47035653e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.01999998, 0.600000024, 0.800000012))
Partweld=weld(m,VestHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000228881836, -0.99998498, -0.199783325, -4.47038211e-008, -2.85946115e-012, -0.999997854, -6.3955762e-005, 1.00000012, 1.77753083e-015, 0.999997914, 6.39259815e-005, -4.47038175e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.400000006, 3.79999971, 0.200000003))
Partweld=weld(m,VestHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.356018066, -0.311279297, -0.609542847, 0.865768671, 0.500441432, 0, -0.5004403, 0.865770638, 3.55271241e-015, 3.55271241e-015, 3.02253882e-015, 0.999997854))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.01999998, 0.200000003, 0.200000003))
Partweld=weld(m,VestHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000122070313, -0.799995899, 0.900177002, 1.49011559e-008, 0, -0.999995232, 0, 1, 0, 0.999995232, 0, 1.49011559e-008))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
FlagLogo=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","FlagLogo",Vector3.new(3, 1.99999988, 0.200000003))
FlagLogoweld=weld(m,VestHandle,FlagLogo,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.14234924, -3.41108704, -0.610244751, 0.865850091, 0.500302911, -3.55240239e-015, -0.500302792, 0.865850449, 9.79956736e-019, 3.07633938e-015, 1.77642947e-015, 0.999999642))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld=weld(m,VestHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.356628418, -2.31108093, -0.620269775, 0.865850091, 0.500302911, 7.10581953e-015, -0.500302792, 0.865850449, 9.79956736e-019, 6.15238443e-015, 3.55382075e-015, 0.999999642))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.400000036, 0.200000003, 0.400000036))
Partweld=weld(m,VestHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.354736328, -4.51108551, -0.620117188, 0.865849495, 0.500302911, 1.77640292e-014, -0.500302434, 0.865850449, 9.79956115e-019, 9.22842142e-015, 5.33121097e-015, 0.999998927))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.400000006, 1.99999964, 0.200000003))
Partweld=weld(m,VestHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.356216431, -3.41107178, -0.610137939, 0.865848899, 0.500302911, 1.77639292e-014, -0.500302076, 0.865850449, 9.79955495e-019, 1.53807173e-014, 8.88612016e-015, 0.999998212))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Mid gray","Part",Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld=weld(m,VestHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.356292725, 1.6887207, -0.619628906, 0.865768075, 0.500441432, 0, -0.500439942, 0.865770638, 3.55270987e-015, 3.55270987e-015, 3.02253882e-015, 0.999997139))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Bright red","Part",Vector3.new(0.200000003, 0.400000036, 1.19999993))
Partweld=weld(m,VestHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.589828491, 0.808547974, -0.0999956131, -3.90798369e-014, 8.06646416e-017, -0.999997854, -0.999997914, -6.36497934e-005, 3.90798369e-014, -6.36795739e-005, 1.00000012, 3.58011901e-015))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=12891705",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 0.200000003, 0.200000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"White","Part",Vector3.new(1, 0.76000005, 0.600000024))
Partweld=weld(m,VestHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.509597778, -0.490081787, -0.399998188, -0.999999642, 0, 0, 0, 0, 0.999999642, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=104516854",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(0.200000003, 0.200000003, 1.4000001))
handleweld=weld(m,Character["Right Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.05175781e-005, -1.10011411, -1.52587891e-005, 0.999999404, -4.47034765e-008, 0, -4.47034836e-008, -0.999999285, 0, 0, 0, -1))
mesh("SpecialMesh",handle,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=74322546",Vector3.new(0, 0, 0),Vector3.new(1.5, 1.5, 1.5))
local Decal1 = Instance.new("Decal",FlagLogo)
Decal1.Texture = "http://www.roblox.com/asset/?id=147337085"
Decal1.Face = "Front"
local Decal2 = Instance.new("Decal",FlagLogo)
Decal2.Texture = "http://www.roblox.com/asset/?id=147337085"
Decal2.Face = "Back"
Humanoid.WalkSpeed = 50

function ALLAHUAKBAR()
attack = true
local speak = {"ALLAHUAKBAR"}
local colors = {"Red","Red","Red"} -- The only 3 colors, adding more will error.
local chat = game:GetService("Chat")
chat:Chat(Head,speak[math.random(1,#speak)], colors[math.random(1,3)] )
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(50)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
end
for i = 0,1,0.05 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(80), math.rad(0), math.rad(50)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
end
for i = 1,20 do
--so("http://roblox.com/asset/?id=197815953",workspace,1,1) 
so("rbxassetid://134854740",Torso,1,1.3) 
so("rbxassetid://247893371",workspace,1,1)
so("rbxassetid://137994058",Torso,1,1) 
so("rbxassetid://165969964",Torso,1,1) 
local S = Instance.new("Explosion",workspace)
S.Position = Torso.Position
S.BlastPressure = 5
S.BlastRadius = 50
S.ExplosionType = 2
end
attack = false
end

mouse.Button1Down:connect(function()
ALLAHUAKBAR()
end)

mouse.KeyDown:connect(function(k)
       k=k:lower()
       
end)


local sine = 0
local change = 1
local val = 0

while true do
swait()
sine = sine + change
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if equipped==true or equipped==false then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
--Sheath()
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2),math.rad(0),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(10)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-10)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50*math.cos(sine/20)), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-50*math.cos(sine/20)), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
end
end
if #Effects>0 then
--table.insert(Effects,{prt,"Block1",delay})
for e=1,#Effects do
if Effects[e]~=nil then
--for j=1,#Effects[e] do
local Thing=Effects[e]
if Thing~=nil then
local Part=Thing[1]
local Mode=Thing[2]
local Delay=Thing[3]
local IncX=Thing[4]
local IncY=Thing[5]
local IncZ=Thing[6]
if Thing[1].Transparency<=1 then
if Thing[2]=="Block1" then
Thing[1].CFrame=Thing[1].CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Cylinder" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Blood" then
Mesh=Thing[7]
Thing[1].CFrame=Thing[1].CFrame*cf(0,.5,0)
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Elec" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[7],Thing[8],Thing[9])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Disappear" then
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
end
else
Part.Parent=nil
table.remove(Effects,e)
end
end
--end
end
end
end
end
end)

Toadroast.Name = "Toadroast"
Toadroast.Parent = GUI
Toadroast.BackgroundColor3 = Color3.new(1, 1, 1)
Toadroast.BackgroundTransparency = 0.60000002384186
Toadroast.BorderColor3 = Color3.new(0, 0, 0)
Toadroast.Position = UDim2.new(0.5, -112, 0.535000026, 0)
Toadroast.Size = UDim2.new(0, 225, 0, 33)
Toadroast.Font = Enum.Font.SourceSansSemibold
Toadroast.Text = "Toadroast"
Toadroast.TextColor3 = Color3.new(0, 0, 0)
Toadroast.TextSize = 18

Toadroast.MouseButton1Click:connect(function()
wait(1)
math.randomseed(tick() % 1 * 1e6)
sky = coroutine.create(function()
	while wait(0.3) do
		s = Instance.new("Sky",game.Lighting)
		s.SkyboxBk,s.SkyboxDn,s.SkyboxFt,s.SkyboxLf,s.SkyboxRt,s.SkyboxUp = "rbxassetid://201208408","rbxassetid://201208408","rbxassetid://201208408","rbxassetid://201208408","rbxassetid://201208408","rbxassetid://201208408"
		s.CelestialBodiesShown = false
	end
end)


del = coroutine.create(function()
	while wait(0.3) do
		for i,v in pairs(workspace:GetChildren()) do
			if v:IsA("Model") then
				v:Destroy()
			end
		end
	end
end)



for i,v in pairs(game.Players:GetChildren()) do
	v.Character.Archivable = true
end

noises = {'rbxassetid://230287740','rbxassetid://271787597','rbxassetid://153752123','rbxassetid://271787503'}

sound = coroutine.create(function()
	a = Instance.new("Sound",workspace)
	a.SoundId = "rbxassetid://141509625"
	a.Name = "RAINING MEN"
	a.Volume = 58359
	a.Looped = true
	a:Play()
	while wait(0.2) do
		rainin = workspace:FindFirstChild("RAINING MEN")
		if not rainin then
			a = Instance.new("Sound",workspace)
			a.SoundId = "rbxassetid://141509625"
			a.Name = "RAINING MEN"
			a.Volume = 58359
			a.Looped = true
			a:Play()
		end
	end
end)

msg = coroutine.create(function()
	while wait(0.4) do
		msg = Instance.new("Message",workspace)
		msg.Text = "Get toadroasted you bacon-haired bozos"
		wait(0.4)
		msg:Destroy()
	end
end) 


rain = coroutine.create(function()
	while wait(10 % 1 * 1e2) do
		part = Instance.new("Part",workspace)
		part.Name = "Toad"
		
		mesh = Instance.new("SpecialMesh",part)
		
		sound = Instance.new("Sound",workspace)
		
		part.CanCollide = false
		part.Size = Vector3.new(440,530,380)
		part.Position = Vector3.new(math.random(-3000,1000),math.random(1,3000),math.random(-3000,3000))
	
		sound.SoundId = noises[math.random(1,#noises)]
		sound:Play()
		sound.Ended:connect(function()
			sound:Destroy()
		end)
		
		
		mesh.MeshType = "FileMesh"
		mesh.MeshId = "rbxassetid://430210147"
		mesh.TextureId = "rbxassetid://430210159"
	end
end)
coroutine.resume(sky)
coroutine.resume(del)
coroutine.resume(sound)
coroutine.resume(msg)
coroutine.resume(rain)
end)

WildRevolvers.Name = "WildRevolvers"
WildRevolvers.Parent = GUI
WildRevolvers.BackgroundColor3 = Color3.new(1, 1, 1)
WildRevolvers.BackgroundTransparency = 0.60000002384186
WildRevolvers.BorderColor3 = Color3.new(0, 0, 0)
WildRevolvers.Position = UDim2.new(0.5, -112, 0.800282836, 0)
WildRevolvers.Size = UDim2.new(0, 131, 0, 33)
WildRevolvers.Font = Enum.Font.SourceSansSemibold
WildRevolvers.Text = "Wild Revolvers"
WildRevolvers.TextColor3 = Color3.new(0, 0, 0)
WildRevolvers.TextSize = 18

WildRevolvers.MouseButton1Click:connect(function()
local Player = game.Players.LocalPlayer;
local Mouse = Player:GetMouse();
local MaxRange = 300;
local Hotkey = Enum.KeyCode.X;
local UIS = game:GetService'UserInputService';
local auto = true;

function Shoot()
	local MyHMR = Player.Character and Player.Character.PrimaryPart;
	local MyData = workspace.PlayerData:FindFirstChild(Player.Name);
	local IsSameTeam = (MyHMR and MyHMR.Parent:FindFirstChild'CowboyHat' and true) or false;
	if MyHMR and MyData then
		for i,v in pairs(game.Players:GetPlayers()) do
			local HMR = v and v.Character and v.Character.PrimaryPart;
			local Data = workspace.PlayerData:FindFirstChild(v.Name);
			local Hum = HMR and v.Character:FindFirstChild'Humanoid';
			local Head = Hum and v.Character:FindFirstChild'Head';
			
			if Head and Hum.Health > 0 and not (((HMR.Parent:FindFirstChild'CowboyHat' and true) or false) == IsSameTeam) then
				local Found = false;
				for ii,targ in pairs({HMR, Head}) do
					if not Found then
						local R = Ray.new(MyHMR.Position, (targ.Position-MyHMR.Position).unit*MaxRange);
						local P, Pos = workspace:FindPartOnRay(R, Player.Character);
						local p = Instance.new('Part', Player.Character);
						p.Anchored = true;
						p.Material = Enum.Material.Neon;
						p.CanCollide = false;
						p.Transparency = .5;
						local dist = (MyHMR.Position-Pos).magnitude;
						p.Size = Vector3.new(.1,.1,dist);
						p.CFrame = CFrame.new(MyHMR.Position, Pos)*CFrame.new(0,0,-dist/2);
						game:GetService('Debris'):AddItem(p, .1)
						if P and P:isDescendantOf(HMR.Parent) then
							Hum.Health = 0;
							local Info = {};
							Info.Start = MyHMR.Position;
							Info.HitPart = targ;
							Info.HitPosition = targ.Position;
							game.ReplicatedStorage.Events.GunFired:FireServer(Info);
							warn('Hit '..v.Name);
							Found = true;
							delay(1, function()
								if Hum and Hum.Parent then
									Hum.Health = 100
								end
							end)
							p.Color = Color3.new(0,1,0);
						else
							p.Color = Color3.new(1,0,0);
						end
					end
				end
			end
		end
	end
end
UIS.InputBegan:Connect(function(Key, GPE)
	if Key.KeyCode == Hotkey then
		Shoot();
	end
end)
spawn(function()
	while auto and wait(.1) do
		print'Shooting..';
		Shoot();
	end
end)
warn'Loaded!';
end)

Remove.Name = "Remove"
Remove.Parent = GUI
Remove.BackgroundColor3 = Color3.new(1, 1, 1)
Remove.BackgroundTransparency = 0.60000002384186
Remove.BorderColor3 = Color3.new(0, 0, 0)
Remove.Position = UDim2.new(0.779999971, -43, 0.800000012, 0)
Remove.Size = UDim2.new(0, 86, 0, 33)
Remove.Font = Enum.Font.SourceSansSemibold
Remove.Text = "Remove GUI"
Remove.TextColor3 = Color3.new(0, 0, 0)
Remove.TextSize = 14

Remove.MouseButton1Click:connect(function()
FDTGui:Remove()
end)