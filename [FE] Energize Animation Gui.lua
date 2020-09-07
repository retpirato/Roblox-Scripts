-- Energize by illremember, fe animations
-- DO NOT COPY AND CLAIM AS OWN, if you are using some of the script for your own, credit is highly appreciated!
-- Thank you, and enjoy.

-- Objects

local Energize = Instance.new("ScreenGui") -- The actual GUI
local SideFrame = Instance.new("Frame") -- Visible when GUI is closed
local OpenGUI = Instance.new("TextButton") -- Part of SideFrame
local SideFrameTitle = Instance.new("TextLabel") -- Part of SideFrame
local MainFrame = Instance.new("Frame") -- All of the stuff on the main frame
local GuiBottomFrame = Instance.new("Frame") -- Part of Active Frame
local Credits = Instance.new("TextLabel") -- Credits to illremember, hello there
local ScrollingFrame = Instance.new("ScrollingFrame") -- The scrolling frame of animations
local CheckR = Instance.new("TextLabel") -- Check if R15 or R6
local ScrollingFrameR15 = Instance.new("ScrollingFrame") -- The scrolling frame of R15 animations

local CrazySlash = Instance.new("TextButton")--COMPLETE
local Open = Instance.new("TextButton")--COMPLETE
local R15Spinner = Instance.new("TextButton")--COMPLETE
local ArmsOut = Instance.new("TextButton")--COMPLETE
local FloatSlash = Instance.new("TextButton")--COMPLETE
local WeirdZombie = Instance.new("TextButton")--COMPLETE
local DownSlash = Instance.new("TextButton")--COMPLETE
local Pull = Instance.new("TextButton")--COMPLETE
local CircleArm = Instance.new("TextButton")--COMPLETE
local Bend = Instance.new("TextButton")--COMPLETE
local RotateSlash = Instance.new("TextButton")--COMPLETE
local FlingArms = Instance.new("TextButton")--COMPLETE

local FullSwing = Instance.new("TextButton")--COMPLETE
local GlitchLevitate = Instance.new("TextButton")--COMPLETE
local MoonDance = Instance.new("TextButton")--COMPLETE
local FullPunch = Instance.new("TextButton")--COMPLETE
local Crouch = Instance.new("TextButton")--COMPLETE
local SpinDance = Instance.new("TextButton")--COMPLETE
local FloorFaint = Instance.new("TextButton")--COMPLETE
local JumpingJacks = Instance.new("TextButton")--COMPLETE
local Spinner = Instance.new("TextButton")--COMPLETE
local MegaInsane = Instance.new("TextButton")--COMPLETE
local ArmDetach = Instance.new("TextButton")--COMPLETE
local WeirdMove = Instance.new("TextButton")--COMPLETE
local Faint = Instance.new("TextButton")--COMPLETE
local CloneIllusion = Instance.new("TextButton")--COMPLETE
local Levitate = Instance.new("TextButton")--COMPLETE
local DinoWalk = Instance.new("TextButton")--COMPLETE
local FloorCrawl = Instance.new("TextButton")--COMPLETE
local SwordSlam = Instance.new("TextButton")--COMPLETE
local LoopHead = Instance.new("TextButton")--COMPLETE
local HeroJump = Instance.new("TextButton")--COMPLETE
local Insane = Instance.new("TextButton")--COMPLETE
local FloatingHead = Instance.new("TextButton")--COMPLETE
local HeadThrow = Instance.new("TextButton")--COMPLETE
local MovingDance = Instance.new("TextButton")--COMPLETE
local SuperPunch = Instance.new("TextButton")--COMPLETE
local ArmTurbine = Instance.new("TextButton")--COMPLETE
local Dab = Instance.new("TextButton")--COMPLETE
local FloatSit = Instance.new("TextButton")--COMPLETE
local SuperFaint = Instance.new("TextButton")--COMPLETE
local BarrelRoll = Instance.new("TextButton")--COMPLETE
local Scared = Instance.new("TextButton")--COMPLETE
local InsaneArms = Instance.new("TextButton")--COMPLETE
local SwordSlice = Instance.new("TextButton")--COMPLETE
local SpinDance2 = Instance.new("TextButton")--COMPLETE
local BowDown = Instance.new("TextButton")--COMPLETE
local LoopSlam = Instance.new("TextButton")--COMPLETE

local GuiTopFrame = Instance.new("Frame") -- Top of the main frame
local CloseGUI = Instance.new("TextButton") -- To close the GUI
local Title = Instance.new("TextLabel") -- Actual title of GUI, Energize

-- Properties

Energize.Name = "Energize"
Energize.Parent = game.Players.LocalPlayer.PlayerGui

SideFrame.Name = "SideFrame"
SideFrame.Parent = Energize
SideFrame.Active = true
SideFrame.BackgroundColor3 = Color3.new(1, 0.329412, 0.329412)
SideFrame.Draggable = true
SideFrame.Position = UDim2.new(0, 376, 0, 125)
SideFrame.Size = UDim2.new(0, 460, 0, 32)
SideFrame.Visible = false

OpenGUI.Name = "OpenGUI"
OpenGUI.Parent = SideFrame
OpenGUI.BackgroundColor3 = Color3.new(1, 1, 1)
OpenGUI.BackgroundTransparency = 1
OpenGUI.Position = UDim2.new(0, 426, 0, 0)
OpenGUI.Size = UDim2.new(0, 34, 0, 32)
OpenGUI.Font = Enum.Font.SourceSans
OpenGUI.FontSize = Enum.FontSize.Size48
OpenGUI.Text = "X"
OpenGUI.TextColor3 = Color3.new(0.333333, 0, 0)
OpenGUI.TextSize = 40
OpenGUI.TextWrapped = true

SideFrameTitle.Name = "SideFrameTitle"
SideFrameTitle.Parent = SideFrame
SideFrameTitle.BackgroundColor3 = Color3.new(1, 1, 1)
SideFrameTitle.BackgroundTransparency = 1
SideFrameTitle.Position = UDim2.new(0, 170, 0, 0)
SideFrameTitle.Size = UDim2.new(0, 119, 0, 31)
SideFrameTitle.Font = Enum.Font.Arial
SideFrameTitle.FontSize = Enum.FontSize.Size24
SideFrameTitle.Text = "-Energize-"
SideFrameTitle.TextSize = 21
SideFrameTitle.TextStrokeColor3 = Color3.new(0.27451, 0.92549, 0.905882)
SideFrameTitle.TextStrokeTransparency = 0.69999998807907

MainFrame.Name = "MainFrame"
MainFrame.Parent = Energize
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.new(1, 1, 1)
MainFrame.BackgroundTransparency = 1
MainFrame.Draggable = true
MainFrame.Position = UDim2.new(0, 376, 0, 125)
MainFrame.Size = UDim2.new(0, 444, 0, 280)

GuiBottomFrame.Name = "Gui BottomFrame"
GuiBottomFrame.Parent = MainFrame
GuiBottomFrame.BackgroundColor3 = Color3.new(1, 0.329412, 0.329412)
GuiBottomFrame.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
GuiBottomFrame.Position = UDim2.new(0, 0, 0, 247)
GuiBottomFrame.Size = UDim2.new(0, 460, 0, 32)

Credits.Name = "Credits"
Credits.Parent = GuiBottomFrame
Credits.BackgroundColor3 = Color3.new(1, 1, 1)
Credits.BackgroundTransparency = 1
Credits.Size = UDim2.new(0, 460, 0, 32)
Credits.FontSize = Enum.FontSize.Size14
Credits.Text = "By illremember -FE Animations Gui"
Credits.TextColor3 = Color3.new(0.219608, 0.219608, 0.219608)
Credits.TextSize = 14
Credits.TextStrokeColor3 = Color3.new(0.141176, 0.870588, 0.713726)
Credits.TextStrokeTransparency = 0.69999998807907
Credits.TextWrapped = true

ScrollingFrame.Parent = MainFrame
ScrollingFrame.BackgroundColor3 = Color3.new(1, 0.564706, 0.564706)
ScrollingFrame.Position = UDim2.new(0, 0, 0, 32)
ScrollingFrame.Size = UDim2.new(0, 460, 0, 215)
ScrollingFrame.ScrollBarThickness = 13

FullSwing.Name = "FullSwing"
FullSwing.Parent = ScrollingFrame
FullSwing.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
FullSwing.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
FullSwing.Position = UDim2.new(0, 17, 0, 322)
FullSwing.Size = UDim2.new(0, 119, 0, 34)
FullSwing.Font = Enum.Font.Highway
FullSwing.FontSize = Enum.FontSize.Size24
FullSwing.Text = "Full Swing"
FullSwing.TextSize = 20
FullSwing.TextWrapped = true

GlitchLevitate.Name = "GlitchLevitate"
GlitchLevitate.Parent = ScrollingFrame
GlitchLevitate.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
GlitchLevitate.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
GlitchLevitate.Position = UDim2.new(0, 319, 0, 322)
GlitchLevitate.Size = UDim2.new(0, 119, 0, 34)
GlitchLevitate.Font = Enum.Font.Highway
GlitchLevitate.FontSize = Enum.FontSize.Size24
GlitchLevitate.Text = "Glitch Levitate"
GlitchLevitate.TextSize = 20
GlitchLevitate.TextWrapped = true

MoonDance.Name = "MoonDance"
MoonDance.Parent = ScrollingFrame
MoonDance.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
MoonDance.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
MoonDance.Position = UDim2.new(0, 319, 0, 280)
MoonDance.Size = UDim2.new(0, 119, 0, 34)
MoonDance.Font = Enum.Font.Highway
MoonDance.FontSize = Enum.FontSize.Size24
MoonDance.Text = "Moon Dance"
MoonDance.TextSize = 20
MoonDance.TextWrapped = true

FullPunch.Name = "FullPunch"
FullPunch.Parent = ScrollingFrame
FullPunch.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
FullPunch.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
FullPunch.Position = UDim2.new(0, 17, 0, 280)
FullPunch.Size = UDim2.new(0, 119, 0, 34)
FullPunch.Font = Enum.Font.Highway
FullPunch.FontSize = Enum.FontSize.Size24
FullPunch.Text = "Full Punch"
FullPunch.TextSize = 20
FullPunch.TextWrapped = true

Crouch.Name = "Crouch"
Crouch.Parent = ScrollingFrame
Crouch.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
Crouch.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
Crouch.Position = UDim2.new(0, 168, 0, 280)
Crouch.Size = UDim2.new(0, 119, 0, 34)
Crouch.Font = Enum.Font.Highway
Crouch.FontSize = Enum.FontSize.Size24
Crouch.Text = "Crouch"
Crouch.TextSize = 20
Crouch.TextWrapped = true

SpinDance.Name = "SpinDance"
SpinDance.Parent = ScrollingFrame
SpinDance.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
SpinDance.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
SpinDance.Position = UDim2.new(0, 168, 0, 236)
SpinDance.Size = UDim2.new(0, 119, 0, 34)
SpinDance.Font = Enum.Font.Highway
SpinDance.FontSize = Enum.FontSize.Size24
SpinDance.Text = "Spin Dance"
SpinDance.TextSize = 20
SpinDance.TextWrapped = true

FloorFaint.Name = "FloorFaint"
FloorFaint.Parent = ScrollingFrame
FloorFaint.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
FloorFaint.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
FloorFaint.Position = UDim2.new(0, 17, 0, 236)
FloorFaint.Size = UDim2.new(0, 119, 0, 34)
FloorFaint.Font = Enum.Font.Highway
FloorFaint.FontSize = Enum.FontSize.Size24
FloorFaint.Text = "Floor Faint"
FloorFaint.TextSize = 20
FloorFaint.TextWrapped = true

JumpingJacks.Name = "JumpingJacks"
JumpingJacks.Parent = ScrollingFrame
JumpingJacks.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
JumpingJacks.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
JumpingJacks.Position = UDim2.new(0, 319, 0, 236)
JumpingJacks.Size = UDim2.new(0, 119, 0, 34)
JumpingJacks.Font = Enum.Font.Highway
JumpingJacks.FontSize = Enum.FontSize.Size24
JumpingJacks.Text = "Jumping Jacks"
JumpingJacks.TextSize = 20
JumpingJacks.TextWrapped = true

Spinner.Name = "Spinner"
Spinner.Parent = ScrollingFrame
Spinner.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
Spinner.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
Spinner.Position = UDim2.new(0, 17, 0, 192)
Spinner.Size = UDim2.new(0, 119, 0, 34)
Spinner.Font = Enum.Font.Highway
Spinner.FontSize = Enum.FontSize.Size24
Spinner.Text = "Spinner"
Spinner.TextSize = 20
Spinner.TextWrapped = true

MegaInsane.Name = "MegaInsane"
MegaInsane.Parent = ScrollingFrame
MegaInsane.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
MegaInsane.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
MegaInsane.Position = UDim2.new(0, 168, 0, 192)
MegaInsane.Size = UDim2.new(0, 119, 0, 34)
MegaInsane.Font = Enum.Font.Highway
MegaInsane.FontSize = Enum.FontSize.Size24
MegaInsane.Text = "Mega Insane"
MegaInsane.TextSize = 20
MegaInsane.TextWrapped = true

ArmDetach.Name = "ArmDetach"
ArmDetach.Parent = ScrollingFrame
ArmDetach.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
ArmDetach.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
ArmDetach.Position = UDim2.new(0, 319, 0, 192)
ArmDetach.Size = UDim2.new(0, 119, 0, 34)
ArmDetach.Font = Enum.Font.Highway
ArmDetach.FontSize = Enum.FontSize.Size24
ArmDetach.Text = "Arm Detach"
ArmDetach.TextSize = 20
ArmDetach.TextWrapped = true

WeirdMove.Name = "WeirdMove"
WeirdMove.Parent = ScrollingFrame
WeirdMove.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
WeirdMove.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
WeirdMove.Position = UDim2.new(0, 168, 0, 148)
WeirdMove.Size = UDim2.new(0, 119, 0, 34)
WeirdMove.Font = Enum.Font.Highway
WeirdMove.FontSize = Enum.FontSize.Size24
WeirdMove.Text = "Weird Move"
WeirdMove.TextSize = 20
WeirdMove.TextWrapped = true

Faint.Name = "Faint"
Faint.Parent = ScrollingFrame
Faint.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
Faint.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
Faint.Position = UDim2.new(0, 17, 0, 148)
Faint.Size = UDim2.new(0, 119, 0, 34)
Faint.Font = Enum.Font.Highway
Faint.FontSize = Enum.FontSize.Size24
Faint.Text = "Faint"
Faint.TextSize = 20
Faint.TextWrapped = true

CloneIllusion.Name = "CloneIllusion"
CloneIllusion.Parent = ScrollingFrame
CloneIllusion.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
CloneIllusion.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
CloneIllusion.Position = UDim2.new(0, 319, 0, 148)
CloneIllusion.Size = UDim2.new(0, 119, 0, 34)
CloneIllusion.Font = Enum.Font.Highway
CloneIllusion.FontSize = Enum.FontSize.Size24
CloneIllusion.Text = "Clone Illusion"
CloneIllusion.TextSize = 20
CloneIllusion.TextWrapped = true

Levitate.Name = "Levitate"
Levitate.Parent = ScrollingFrame
Levitate.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
Levitate.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
Levitate.Position = UDim2.new(0, 17, 0, 104)
Levitate.Size = UDim2.new(0, 119, 0, 34)
Levitate.Font = Enum.Font.Highway
Levitate.FontSize = Enum.FontSize.Size24
Levitate.Text = "Levitate"
Levitate.TextSize = 20
Levitate.TextWrapped = true

DinoWalk.Name = "DinoWalk"
DinoWalk.Parent = ScrollingFrame
DinoWalk.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
DinoWalk.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
DinoWalk.Position = UDim2.new(0, 168, 0, 104)
DinoWalk.Size = UDim2.new(0, 119, 0, 34)
DinoWalk.Font = Enum.Font.Highway
DinoWalk.FontSize = Enum.FontSize.Size24
DinoWalk.Text = "Dino Walk"
DinoWalk.TextSize = 20
DinoWalk.TextWrapped = true

FloorCrawl.Name = "FloorCrawl"
FloorCrawl.Parent = ScrollingFrame
FloorCrawl.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
FloorCrawl.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
FloorCrawl.Position = UDim2.new(0, 319, 0, 104)
FloorCrawl.Size = UDim2.new(0, 119, 0, 34)
FloorCrawl.Font = Enum.Font.Highway
FloorCrawl.FontSize = Enum.FontSize.Size24
FloorCrawl.Text = "Floor Crawl"
FloorCrawl.TextSize = 20
FloorCrawl.TextWrapped = true

SwordSlam.Name = "SwordSlam"
SwordSlam.Parent = ScrollingFrame
SwordSlam.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
SwordSlam.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
SwordSlam.Position = UDim2.new(0, 319, 0, 60)
SwordSlam.Size = UDim2.new(0, 119, 0, 34)
SwordSlam.Font = Enum.Font.Highway
SwordSlam.FontSize = Enum.FontSize.Size24
SwordSlam.Text = "Sword Slam"
SwordSlam.TextSize = 20
SwordSlam.TextWrapped = true

LoopHead.Name = "LoopHead"
LoopHead.Parent = ScrollingFrame
LoopHead.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
LoopHead.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
LoopHead.Position = UDim2.new(0, 168, 0, 60)
LoopHead.Size = UDim2.new(0, 119, 0, 34)
LoopHead.Font = Enum.Font.Highway
LoopHead.FontSize = Enum.FontSize.Size24
LoopHead.Text = "Loop Head"
LoopHead.TextSize = 20
LoopHead.TextWrapped = true

HeroJump.Name = "HeroJump"
HeroJump.Parent = ScrollingFrame
HeroJump.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
HeroJump.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
HeroJump.Position = UDim2.new(0, 17, 0, 60)
HeroJump.Size = UDim2.new(0, 119, 0, 34)
HeroJump.Font = Enum.Font.Highway
HeroJump.FontSize = Enum.FontSize.Size24
HeroJump.Text = "Hero Jump"
HeroJump.TextSize = 20
HeroJump.TextWrapped = true

Insane.Name = "Insane"
Insane.Parent = ScrollingFrame
Insane.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
Insane.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
Insane.Position = UDim2.new(0, 319, 0, 16)
Insane.Size = UDim2.new(0, 119, 0, 34)
Insane.Font = Enum.Font.Highway
Insane.FontSize = Enum.FontSize.Size24
Insane.Text = "Insane"
Insane.TextSize = 20
Insane.TextWrapped = true

FloatingHead.Name = "FloatingHead"
FloatingHead.Parent = ScrollingFrame
FloatingHead.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
FloatingHead.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
FloatingHead.Position = UDim2.new(0, 168, 0, 16)
FloatingHead.Size = UDim2.new(0, 119, 0, 34)
FloatingHead.Font = Enum.Font.Highway
FloatingHead.FontSize = Enum.FontSize.Size24
FloatingHead.Text = "Floating Head"
FloatingHead.TextSize = 20
FloatingHead.TextWrapped = true

HeadThrow.Name = "HeadThrow"
HeadThrow.Parent = ScrollingFrame
HeadThrow.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
HeadThrow.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
HeadThrow.Position = UDim2.new(0, 17, 0, 16)
HeadThrow.Size = UDim2.new(0, 119, 0, 34)
HeadThrow.Font = Enum.Font.Highway
HeadThrow.FontSize = Enum.FontSize.Size24
HeadThrow.Text = "Head Throw"
HeadThrow.TextSize = 20
HeadThrow.TextWrapped = true

MovingDance.Name = "MovingDance"
MovingDance.Parent = ScrollingFrame
MovingDance.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
MovingDance.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
MovingDance.Position = UDim2.new(0, 168, 0, 324)
MovingDance.Size = UDim2.new(0, 119, 0, 34)
MovingDance.Font = Enum.Font.Highway
MovingDance.FontSize = Enum.FontSize.Size24
MovingDance.Text = "Moving Dance"
MovingDance.TextSize = 20
MovingDance.TextWrapped = true

SuperPunch.Name = "SuperPunch"
SuperPunch.Parent = ScrollingFrame
SuperPunch.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
SuperPunch.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
SuperPunch.Position = UDim2.new(0, 168, 0, 366)
SuperPunch.Size = UDim2.new(0, 119, 0, 34)
SuperPunch.Font = Enum.Font.Highway
SuperPunch.FontSize = Enum.FontSize.Size24
SuperPunch.Text = "Super Punch"
SuperPunch.TextSize = 20
SuperPunch.TextWrapped = true

ArmTurbine.Name = "ArmTurbine"
ArmTurbine.Parent = ScrollingFrame
ArmTurbine.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
ArmTurbine.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
ArmTurbine.Position = UDim2.new(0, 319, 0, 366)
ArmTurbine.Size = UDim2.new(0, 119, 0, 34)
ArmTurbine.Font = Enum.Font.Highway
ArmTurbine.FontSize = Enum.FontSize.Size24
ArmTurbine.Text = "Arm Turbine"
ArmTurbine.TextSize = 20
ArmTurbine.TextWrapped = true

Dab.Name = "Dab"
Dab.Parent = ScrollingFrame
Dab.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
Dab.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
Dab.Position = UDim2.new(0, 17, 0, 366)
Dab.Size = UDim2.new(0, 119, 0, 34)
Dab.Font = Enum.Font.Highway
Dab.FontSize = Enum.FontSize.Size24
Dab.Text = "Dab"
Dab.TextSize = 20
Dab.TextWrapped = true

FloatSit.Name = "FloatSit"
FloatSit.Parent = ScrollingFrame
FloatSit.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
FloatSit.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
FloatSit.Position = UDim2.new(0, 168, 0, 410)
FloatSit.Size = UDim2.new(0, 119, 0, 34)
FloatSit.Font = Enum.Font.Highway
FloatSit.FontSize = Enum.FontSize.Size24
FloatSit.Text = "Float Sit"
FloatSit.TextSize = 20
FloatSit.TextWrapped = true

SuperFaint.Name = "SuperFaint"
SuperFaint.Parent = ScrollingFrame
SuperFaint.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
SuperFaint.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
SuperFaint.Position = UDim2.new(0, 17, 0, 498)
SuperFaint.Size = UDim2.new(0, 119, 0, 34)
SuperFaint.Font = Enum.Font.Highway
SuperFaint.FontSize = Enum.FontSize.Size24
SuperFaint.Text = "Super Faint"
SuperFaint.TextSize = 20
SuperFaint.TextWrapped = true

BarrelRoll.Name = "BarrelRoll"
BarrelRoll.Parent = ScrollingFrame
BarrelRoll.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
BarrelRoll.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
BarrelRoll.Position = UDim2.new(0, 319, 0, 410)
BarrelRoll.Size = UDim2.new(0, 119, 0, 34)
BarrelRoll.Font = Enum.Font.Highway
BarrelRoll.FontSize = Enum.FontSize.Size24
BarrelRoll.Text = "Barrel Roll"
BarrelRoll.TextSize = 20
BarrelRoll.TextWrapped = true

Scared.Name = "Scared"
Scared.Parent = ScrollingFrame
Scared.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
Scared.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
Scared.Position = UDim2.new(0, 319, 0, 454)
Scared.Size = UDim2.new(0, 119, 0, 34)
Scared.Font = Enum.Font.Highway
Scared.FontSize = Enum.FontSize.Size24
Scared.Text = "Scared"
Scared.TextSize = 20
Scared.TextWrapped = true

InsaneArms.Name = "InsaneArms"
InsaneArms.Parent = ScrollingFrame
InsaneArms.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
InsaneArms.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
InsaneArms.Position = UDim2.new(0, 17, 0, 454)
InsaneArms.Size = UDim2.new(0, 119, 0, 34)
InsaneArms.Font = Enum.Font.Highway
InsaneArms.FontSize = Enum.FontSize.Size24
InsaneArms.Text = "Insane Arms"
InsaneArms.TextSize = 20
InsaneArms.TextWrapped = true

SwordSlice.Name = "SwordSlice"
SwordSlice.Parent = ScrollingFrame
SwordSlice.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
SwordSlice.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
SwordSlice.Position = UDim2.new(0, 168, 0, 454)
SwordSlice.Size = UDim2.new(0, 119, 0, 34)
SwordSlice.Font = Enum.Font.Highway
SwordSlice.FontSize = Enum.FontSize.Size24
SwordSlice.Text = "Sword Slice"
SwordSlice.TextSize = 20
SwordSlice.TextWrapped = true

SpinDance2.Name = "SpinDance2"
SpinDance2.Parent = ScrollingFrame
SpinDance2.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
SpinDance2.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
SpinDance2.Position = UDim2.new(0, 168, 0, 498)
SpinDance2.Size = UDim2.new(0, 119, 0, 34)
SpinDance2.Font = Enum.Font.Highway
SpinDance2.FontSize = Enum.FontSize.Size24
SpinDance2.Text = "Spin Dance 2"
SpinDance2.TextSize = 20
SpinDance2.TextWrapped = true

BowDown.Name = "BowDown"
BowDown.Parent = ScrollingFrame
BowDown.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
BowDown.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
BowDown.Position = UDim2.new(0, 319, 0, 498)
BowDown.Size = UDim2.new(0, 119, 0, 34)
BowDown.Font = Enum.Font.Highway
BowDown.FontSize = Enum.FontSize.Size24
BowDown.Text = "Bow Down"
BowDown.TextSize = 20
BowDown.TextWrapped = true

LoopSlam.Name = "LoopSlam"
LoopSlam.Parent = ScrollingFrame
LoopSlam.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
LoopSlam.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
LoopSlam.Position = UDim2.new(0, 17, 0, 410)
LoopSlam.Size = UDim2.new(0, 119, 0, 34)
LoopSlam.Font = Enum.Font.Highway
LoopSlam.FontSize = Enum.FontSize.Size24
LoopSlam.Text = "Loop Slam"
LoopSlam.TextSize = 20
LoopSlam.TextWrapped = true

GuiTopFrame.Name = "Gui TopFrame"
GuiTopFrame.Parent = MainFrame
GuiTopFrame.BackgroundColor3 = Color3.new(1, 0.329412, 0.329412)
GuiTopFrame.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
GuiTopFrame.Size = UDim2.new(0, 460, 0, 32)

CloseGUI.Name = "CloseGUI"
CloseGUI.Parent = GuiTopFrame
CloseGUI.BackgroundColor3 = Color3.new(1, 1, 1)
CloseGUI.BackgroundTransparency = 1
CloseGUI.Position = UDim2.new(0, 426, 0, 0)
CloseGUI.Size = UDim2.new(0, 34, 0, 32)
CloseGUI.Font = Enum.Font.SourceSans
CloseGUI.FontSize = Enum.FontSize.Size48
CloseGUI.Text = "X"
CloseGUI.TextColor3 = Color3.new(0.333333, 0, 0)
CloseGUI.TextSize = 40
CloseGUI.TextWrapped = true

Title.Name = "Title"
Title.Parent = GuiTopFrame
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(0, 460, 0, 32)
Title.FontSize = Enum.FontSize.Size14
Title.Text = "-Energize-"
Title.TextColor3 = Color3.new(0.164706, 0.164706, 0.164706)
Title.TextSize = 14
Title.TextStrokeColor3 = Color3.new(0.384314, 0.917647, 1)
Title.TextStrokeTransparency = 0.69999998807907
Title.TextWrapped = true

CheckR.Name = "CheckR"
CheckR.Parent = GuiTopFrame
CheckR.BackgroundColor3 = Color3.new(1, 1, 1)
CheckR.BackgroundTransparency = 1
CheckR.Size = UDim2.new(0, 171, 0, 32)
CheckR.Font = Enum.Font.SourceSansBold
CheckR.FontSize = Enum.FontSize.Size14
CheckR.Text = "Text"
CheckR.TextScaled = true
CheckR.TextSize = 14
CheckR.TextWrapped = true

ScrollingFrameR15.Name = "ScrollingFrameR15"
ScrollingFrameR15.Parent = MainFrame
ScrollingFrameR15.BackgroundColor3 = Color3.new(1, 0.564706, 0.564706)
ScrollingFrameR15.Position = UDim2.new(0, 0, 0, 32)
ScrollingFrameR15.Size = UDim2.new(0, 460, 0, 215)
ScrollingFrameR15.Visible = false
ScrollingFrameR15.ScrollBarThickness = 13

CrazySlash.Name = "CrazySlash"
CrazySlash.Parent = ScrollingFrameR15
CrazySlash.BackgroundColor3 = Color3.new(0.682353, 0.701961, 0.792157)
CrazySlash.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
CrazySlash.Position = UDim2.new(0, 17, 0, 16)
CrazySlash.Size = UDim2.new(0, 119, 0, 34)
CrazySlash.Font = Enum.Font.Highway
CrazySlash.FontSize = Enum.FontSize.Size24
CrazySlash.Text = "CrazySlash"
CrazySlash.TextSize = 20
CrazySlash.TextWrapped = true

Open.Name = "Open"
Open.Parent = ScrollingFrameR15
Open.BackgroundColor3 = Color3.new(0.682353, 0.701961, 0.792157)
Open.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
Open.Position = UDim2.new(0, 168, 0, 16)
Open.Size = UDim2.new(0, 119, 0, 34)
Open.Font = Enum.Font.Highway
Open.FontSize = Enum.FontSize.Size24
Open.Text = "Open"
Open.TextSize = 20
Open.TextWrapped = true

R15Spinner.Name = "R15Spinner"
R15Spinner.Parent = ScrollingFrameR15
R15Spinner.BackgroundColor3 = Color3.new(0.682353, 0.701961, 0.792157)
R15Spinner.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
R15Spinner.Position = UDim2.new(0, 17, 0, 60)
R15Spinner.Size = UDim2.new(0, 119, 0, 34)
R15Spinner.Font = Enum.Font.Highway
R15Spinner.FontSize = Enum.FontSize.Size24
R15Spinner.Text = "Spinner"
R15Spinner.TextSize = 20
R15Spinner.TextWrapped = true

ArmsOut.Name = "ArmsOut"
ArmsOut.Parent = ScrollingFrameR15
ArmsOut.BackgroundColor3 = Color3.new(0.682353, 0.701961, 0.792157)
ArmsOut.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
ArmsOut.Position = UDim2.new(0, 319, 0, 16)
ArmsOut.Size = UDim2.new(0, 119, 0, 34)
ArmsOut.Font = Enum.Font.Highway
ArmsOut.FontSize = Enum.FontSize.Size24
ArmsOut.Text = "ArmsOut"
ArmsOut.TextSize = 20
ArmsOut.TextWrapped = true

FloatSlash.Name = "FloatSlash"
FloatSlash.Parent = ScrollingFrameR15
FloatSlash.BackgroundColor3 = Color3.new(0.682353, 0.701961, 0.792157)
FloatSlash.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
FloatSlash.Position = UDim2.new(0, 168, 0, 148)
FloatSlash.Size = UDim2.new(0, 119, 0, 34)
FloatSlash.Font = Enum.Font.Highway
FloatSlash.FontSize = Enum.FontSize.Size24
FloatSlash.Text = "FloatSlash"
FloatSlash.TextSize = 20
FloatSlash.TextWrapped = true

WeirdZombie.Name = "WeirdZombie"
WeirdZombie.Parent = ScrollingFrameR15
WeirdZombie.BackgroundColor3 = Color3.new(0.682353, 0.701961, 0.792157)
WeirdZombie.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
WeirdZombie.Position = UDim2.new(0, 17, 0, 148)
WeirdZombie.Size = UDim2.new(0, 119, 0, 34)
WeirdZombie.Font = Enum.Font.Highway
WeirdZombie.FontSize = Enum.FontSize.Size24
WeirdZombie.Text = "WeirdZombie"
WeirdZombie.TextSize = 20
WeirdZombie.TextWrapped = true

DownSlash.Name = "DownSlash"
DownSlash.Parent = ScrollingFrameR15
DownSlash.BackgroundColor3 = Color3.new(0.682353, 0.701961, 0.792157)
DownSlash.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
DownSlash.Position = UDim2.new(0, 319, 0, 148)
DownSlash.Size = UDim2.new(0, 119, 0, 34)
DownSlash.Font = Enum.Font.Highway
DownSlash.FontSize = Enum.FontSize.Size24
DownSlash.Text = "DownSlash"
DownSlash.TextSize = 20
DownSlash.TextWrapped = true

Pull.Name = "Pull"
Pull.Parent = ScrollingFrameR15
Pull.BackgroundColor3 = Color3.new(0.682353, 0.701961, 0.792157)
Pull.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
Pull.Position = UDim2.new(0, 17, 0, 104)
Pull.Size = UDim2.new(0, 119, 0, 34)
Pull.Font = Enum.Font.Highway
Pull.FontSize = Enum.FontSize.Size24
Pull.Text = "Pull"
Pull.TextSize = 20
Pull.TextWrapped = true

CircleArm.Name = "CircleArm"
CircleArm.Parent = ScrollingFrameR15
CircleArm.BackgroundColor3 = Color3.new(0.682353, 0.701961, 0.792157)
CircleArm.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
CircleArm.Position = UDim2.new(0, 168, 0, 104)
CircleArm.Size = UDim2.new(0, 119, 0, 34)
CircleArm.Font = Enum.Font.Highway
CircleArm.FontSize = Enum.FontSize.Size24
CircleArm.Text = "CircleArm"
CircleArm.TextSize = 20
CircleArm.TextWrapped = true

Bend.Name = "Bend"
Bend.Parent = ScrollingFrameR15
Bend.BackgroundColor3 = Color3.new(0.682353, 0.701961, 0.792157)
Bend.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
Bend.Position = UDim2.new(0, 319, 0, 104)
Bend.Size = UDim2.new(0, 119, 0, 34)
Bend.Font = Enum.Font.Highway
Bend.FontSize = Enum.FontSize.Size24
Bend.Text = "Bend"
Bend.TextSize = 20
Bend.TextWrapped = true

RotateSlash.Name = "RotateSlash"
RotateSlash.Parent = ScrollingFrameR15
RotateSlash.BackgroundColor3 = Color3.new(0.682353, 0.701961, 0.792157)
RotateSlash.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
RotateSlash.Position = UDim2.new(0, 319, 0, 60)
RotateSlash.Size = UDim2.new(0, 119, 0, 34)
RotateSlash.Font = Enum.Font.Highway
RotateSlash.FontSize = Enum.FontSize.Size24
RotateSlash.Text = "RotateSlash"
RotateSlash.TextSize = 20
RotateSlash.TextWrapped = true

FlingArms.Name = "FlingArms"
FlingArms.Parent = ScrollingFrameR15
FlingArms.BackgroundColor3 = Color3.new(0.682353, 0.701961, 0.792157)
FlingArms.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
FlingArms.Position = UDim2.new(0, 168, 0, 60)
FlingArms.Size = UDim2.new(0, 119, 0, 34)
FlingArms.Font = Enum.Font.Highway
FlingArms.FontSize = Enum.FontSize.Size24
FlingArms.Text = "FlingArms"
FlingArms.TextSize = 20
FlingArms.TextWrapped = true

-- Buttons
col = Color3.new(0.886275, 0.776471, 0.368627)
loc = Color3.new(1, 0.906471, 0.568627)
rcol = Color3.new(0.682353, 0.701961, 0.792157)
rloc = Color3.new(0.882353, 0.901961, 0.992157)

CloseGUI.MouseButton1Click:connect(function()
MainFrame.Visible = false
SideFrame.Visible = true
SideFrame.Position = MainFrame.Position
end)

OpenGUI.MouseButton1Click:connect(function()
MainFrame.Visible = true
SideFrame.Visible = false
MainFrame.Position = SideFrame.Position
end)

if (game:GetService"Players".LocalPlayer.Character:WaitForChild("Humanoid").RigType == Enum.HumanoidRigType.R15) then
	ScrollingFrame.Visible = false
	ScrollingFrameR15.Visible = true
	CheckR.Text = "Showing R15 Animations"
else
	ScrollingFrame.Visible = true
	ScrollingFrameR15.Visible = false
	CheckR.Text = "Showing R6 Animations"
end

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://35154961"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local HeadThrowACTIVE = false
HeadThrow.MouseButton1Click:connect(function()
	HeadThrowACTIVE = not HeadThrowACTIVE
	if HeadThrowACTIVE then
		HeadThrow.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if HeadThrowACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		HeadThrow.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://121572214"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local FloatingHeadACTIVE = false
FloatingHead.MouseButton1Click:connect(function()
	FloatingHeadACTIVE = not FloatingHeadACTIVE
	if FloatingHeadACTIVE then
		track:Play(.1, 1, 1)
		FloatingHead.BackgroundColor3 = loc
	else
		track:Stop()
		FloatingHead.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://182724289"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local CrouchACTIVE = false
Crouch.MouseButton1Click:connect(function()
	CrouchACTIVE = not CrouchACTIVE
	if CrouchACTIVE then
		track:Play(.1, 1, 1)
		Crouch.BackgroundColor3 = loc
	else
		track:Stop()
		Crouch.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://282574440"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local FloorCrawlACTIVE = false
FloorCrawl.MouseButton1Click:connect(function()
	FloorCrawlACTIVE = not FloorCrawlACTIVE
	if FloorCrawlACTIVE then
		track:Play(.1, 1, 1)
		FloorCrawl.BackgroundColor3 = loc
	else
		track:Stop()
		FloorCrawl.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://204328711"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local DinoWalkACTIVE = false
DinoWalk.MouseButton1Click:connect(function()
	DinoWalkACTIVE = not DinoWalkACTIVE
	if DinoWalkACTIVE then
		track:Play(.1, 1, 1)
		DinoWalk.BackgroundColor3 = loc
	else
		track:Stop()
		DinoWalk.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://429681631"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local JumpingJacksACTIVE = false
JumpingJacks.MouseButton1Click:connect(function()
	JumpingJacksACTIVE = not JumpingJacksACTIVE
	if JumpingJacksACTIVE then
		track:Play(.1, 1, 1)
		JumpingJacks.BackgroundColor3 = loc
	else
		track:Stop()
		JumpingJacks.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://35154961"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local LoopHeadACTIVE = false
LoopHead.MouseButton1Click:connect(function()
	LoopHeadACTIVE = not LoopHeadACTIVE
	if LoopHeadACTIVE then
		LoopHead.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if LoopHeadACTIVE then
				track:Play(.5, 1, 1e6)
			end
		 end
		end
	else
		track:Stop()
		LoopHead.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://184574340"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local HeroJumpACTIVE = false
HeroJump.MouseButton1Click:connect(function()
	HeroJumpACTIVE = not HeroJumpACTIVE
	if HeroJumpACTIVE then
		HeroJump.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if HeroJumpACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		HeroJump.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://181526230"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local FaintACTIVE = false
Faint.MouseButton1Click:connect(function()
	FaintACTIVE = not FaintACTIVE
	if FaintACTIVE then
		track:Play(.1, 1, 1)
		Faint.BackgroundColor3 = loc
	else
		track:Stop()
		Faint.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://181525546"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local FloorFaintACTIVE = false
FloorFaint.MouseButton1Click:connect(function()
	FloorFaintACTIVE = not FloorFaintACTIVE
	if FloorFaintACTIVE then
		FloorFaint.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if FloorFaintACTIVE then
				track:Play(.1, 1, 2)
			end
		 end
		end
	else
		track:Stop()
		FloorFaint.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://181525546"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local SuperFaintACTIVE = false
SuperFaint.MouseButton1Click:connect(function()
	SuperFaintACTIVE = not SuperFaintACTIVE
	if SuperFaintACTIVE then
		SuperFaint.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if SuperFaintACTIVE then
				track:Play(.1, 0.5, 40)
			end
		 end
		end
	else
		track:Stop()
		SuperFaint.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://313762630"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local LevitateACTIVE = false
Levitate.MouseButton1Click:connect(function()
	LevitateACTIVE = not LevitateACTIVE
	if LevitateACTIVE then
		track:Play(.1, 1, 1)
		Levitate.BackgroundColor3 = loc
	else
		track:Stop()
		Levitate.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://183412246"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local DabACTIVE = false
Dab.MouseButton1Click:connect(function()
	DabACTIVE = not DabACTIVE
	if DabACTIVE then
		Dab.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if DabACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		Dab.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://188632011"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local SpinACTIVE = false
Spinner.MouseButton1Click:connect(function()
	SpinACTIVE = not SpinACTIVE
	if SpinACTIVE then
		Spinner.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if SpinACTIVE then
				track:Play(.1, 1, 2)
			end
		 end
		end
	else
		track:Stop()
		Spinner.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://179224234"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local FloatSitACTIVE = false
FloatSit.MouseButton1Click:connect(function()
	FloatSitACTIVE = not FloatSitACTIVE
	if FloatSitACTIVE then
		track:Play(.1, 1, 1)
		FloatSit.BackgroundColor3 = loc
	else
		track:Stop()
		FloatSit.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://429703734"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local MovingDanceACTIVE = false
MovingDance.MouseButton1Click:connect(function()
	MovingDanceACTIVE = not MovingDanceACTIVE
	if MovingDanceACTIVE then
		MovingDance.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if MovingDanceACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		MovingDance.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://215384594"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local WeirdMoveACTIVE = false
WeirdMove.MouseButton1Click:connect(function()
	WeirdMoveACTIVE = not WeirdMoveACTIVE
	if WeirdMoveACTIVE then
		track:Play(.1, 1, 1)
		WeirdMove.BackgroundColor3 = loc
	else
		track:Stop()
		WeirdMove.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://215384594"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local CloneIllusionACTIVE = false
CloneIllusion.MouseButton1Click:connect(function()
	CloneIllusionACTIVE = not CloneIllusionACTIVE
	if CloneIllusionACTIVE then
		track:Play(.5, 1, 1e7)
		CloneIllusion.BackgroundColor3 = loc
	else
		track:Stop()
		CloneIllusion.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://313762630"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local GlitchLevitateACTIVE = false
GlitchLevitate.MouseButton1Click:connect(function()
	GlitchLevitateACTIVE = not GlitchLevitateACTIVE
	if GlitchLevitateACTIVE then
		track:Play(.5, 1, 1e7)
		GlitchLevitate.BackgroundColor3 = loc
	else
		track:Stop()
		GlitchLevitate.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://429730430"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local SpinDanceACTIVE = false
SpinDance.MouseButton1Click:connect(function()
	SpinDanceACTIVE = not SpinDanceACTIVE
	if SpinDanceACTIVE then
		SpinDance.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if SpinDanceACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		SpinDance.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://45834924"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local MoonDanceACTIVE = false
MoonDance.MouseButton1Click:connect(function()
	MoonDanceACTIVE = not MoonDanceACTIVE
	if MoonDanceACTIVE then
		MoonDance.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if MoonDanceACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		MoonDance.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://204062532"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local FullPunchACTIVE = false
FullPunch.MouseButton1Click:connect(function()
	FullPunchACTIVE = not FullPunchACTIVE
	if FullPunchACTIVE then
		FullPunch.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if FullPunchACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		FullPunch.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://186934910"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local SpinDance2ACTIVE = false
SpinDance2.MouseButton1Click:connect(function()
	SpinDance2ACTIVE = not SpinDance2ACTIVE
	if SpinDance2ACTIVE then
		SpinDance2.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if SpinDance2ACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		SpinDance2.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://204292303"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local BowDownACTIVE = false
BowDown.MouseButton1Click:connect(function()
	BowDownACTIVE = not BowDownACTIVE
	if BowDownACTIVE then
		BowDown.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if BowDownACTIVE then
				track:Play(.1, 1, 3)
			end
		 end
		end
	else
		track:Stop()
		BowDown.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://204295235"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local SwordSlamACTIVE = false
SwordSlam.MouseButton1Click:connect(function()
	SwordSlamACTIVE = not SwordSlamACTIVE
	if SwordSlamACTIVE then
		SwordSlam.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if SwordSlamACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		SwordSlam.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://204295235"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local LoopSlamACTIVE = false
LoopSlam.MouseButton1Click:connect(function()
	LoopSlamACTIVE = not LoopSlamACTIVE
	if LoopSlamACTIVE then
		LoopSlam.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if LoopSlamACTIVE then
				track:Play(.1, 1, 1e4)
			end
		 end
		end
	else
		track:Stop()
		LoopSlam.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://184574340"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local MegaInsaneACTIVE = false
MegaInsane.MouseButton1Click:connect(function()
	MegaInsaneACTIVE = not MegaInsaneACTIVE
	if MegaInsaneACTIVE then
		MegaInsane.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if MegaInsaneACTIVE then
				track:Play(.1, 0.5, 40)
			end
		 end
		end
	else
		track:Stop()
		MegaInsane.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://126753849"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local SuperPunchACTIVE = false
SuperPunch.MouseButton1Click:connect(function()
	SuperPunchACTIVE = not SuperPunchACTIVE
	if SuperPunchACTIVE then
		SuperPunch.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if SuperPunchACTIVE then
				track:Play(.1, 1, 3)
			end
		 end
		end
	else
		track:Stop()
		SuperPunch.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://218504594"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local FullSwingACTIVE = false
FullSwing.MouseButton1Click:connect(function()
	FullSwingACTIVE = not FullSwingACTIVE
	if FullSwingACTIVE then
		FullSwing.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if FullSwingACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		FullSwing.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://259438880"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local ArmTurbineACTIVE = false
ArmTurbine.MouseButton1Click:connect(function()
	ArmTurbineACTIVE = not ArmTurbineACTIVE
	if ArmTurbineACTIVE then
		track:Play(.1, 1, 1e3)
		ArmTurbine.BackgroundColor3 = loc
	else
		track:Stop()
		ArmTurbine.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://136801964"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local BarrelRollACTIVE = false
BarrelRoll.MouseButton1Click:connect(function()
	BarrelRollACTIVE = not BarrelRollACTIVE
	if BarrelRollACTIVE then
		BarrelRoll.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if BarrelRollACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		BarrelRoll.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://180612465"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local ScaredACTIVE = false
Scared.MouseButton1Click:connect(function()
	ScaredACTIVE = not ScaredACTIVE
	if ScaredACTIVE then
		Scared.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if ScaredACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		Scared.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://33796059"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local InsaneACTIVE = false
Insane.MouseButton1Click:connect(function()
	InsaneACTIVE = not InsaneACTIVE
	if InsaneACTIVE then
		track:Play(.1, 1, 1e8)
		Insane.BackgroundColor3 = loc
	else
		track:Stop()
		Insane.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://33169583"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local ArmDetachACTIVE = false
ArmDetach.MouseButton1Click:connect(function()
	ArmDetachACTIVE = not ArmDetachACTIVE
	if ArmDetachACTIVE then
		ArmDetach.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if ArmDetachACTIVE then
				track:Play(.1, 1, 1e6)
			end
		 end
		end
	else
		track:Stop()
		ArmDetach.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://35978879"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local SwordSliceACTIVE = false
SwordSlice.MouseButton1Click:connect(function()
	SwordSliceACTIVE = not SwordSliceACTIVE
	if SwordSliceACTIVE then
		track:Play(.1, 1, 1)
		SwordSlice.BackgroundColor3 = loc
	else
		track:Stop()
		SwordSlice.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://27432691"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local InsaneArmsACTIVE = false
InsaneArms.MouseButton1Click:connect(function()
	InsaneArmsACTIVE = not InsaneArmsACTIVE
	if InsaneArmsACTIVE then
		InsaneArms.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if InsaneArmsACTIVE then
				track:Play(.1, 1, 1e4)
			end
		 end
		end
	else
		track:Stop()
		InsaneArms.BackgroundColor3 = col
	end
end)
-- R15
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://674871189"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local CrazySlashACTIVE = false
CrazySlash.MouseButton1Click:connect(function()
	CrazySlashACTIVE = not CrazySlashACTIVE
	if CrazySlashACTIVE then
		CrazySlash.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if CrazySlashACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		CrazySlash.BackgroundColor3 = rcol
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://582855105"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local OpenACTIVE = false
Open.MouseButton1Click:connect(function()
	OpenACTIVE = not OpenACTIVE
	if OpenACTIVE then
		Open.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if OpenACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		Open.BackgroundColor3 = rcol
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://754658275"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local R15SpinnerACTIVE = false
R15Spinner.MouseButton1Click:connect(function()
	R15SpinnerACTIVE = not R15SpinnerACTIVE
	if R15SpinnerACTIVE then
		R15Spinner.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if R15SpinnerACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		R15Spinner.BackgroundColor3 = rcol
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://582384156"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local ArmsOutACTIVE = false
ArmsOut.MouseButton1Click:connect(function()
	ArmsOutACTIVE = not ArmsOutACTIVE
	if ArmsOutACTIVE then
		ArmsOut.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if ArmsOutACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		ArmsOut.BackgroundColor3 = rcol
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://717879555"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local FloatSlashACTIVE = false
FloatSlash.MouseButton1Click:connect(function()
	FloatSlashACTIVE = not FloatSlashACTIVE
	if FloatSlashACTIVE then
		FloatSlash.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if FloatSlashACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		FloatSlash.BackgroundColor3 = rcol
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://708553116"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
WeirdZombieACTIVE = false
WeirdZombie.MouseButton1Click:connect(function()
	WeirdZombieACTIVE = not WeirdZombieACTIVE
	if WeirdZombieACTIVE then
		WeirdZombie.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if WeirdZombieACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		WeirdZombie.BackgroundColor3 = rcol
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://746398327"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
DownSlashACTIVE = false
DownSlash.MouseButton1Click:connect(function()
	DownSlashACTIVE = not DownSlashACTIVE
	if DownSlashACTIVE then
		DownSlash.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if DownSlashACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		DownSlash.BackgroundColor3 = rcol
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://675025795"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
PullACTIVE = false
Pull.MouseButton1Click:connect(function()
	PullACTIVE = not PullACTIVE
	if PullACTIVE then
		Pull.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if PullACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		Pull.BackgroundColor3 = rcol
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://698251653"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
CircleArmACTIVE = false
CircleArm.MouseButton1Click:connect(function()
	CircleArmACTIVE = not CircleArmACTIVE
	if CircleArmACTIVE then
		CircleArm.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if CircleArmACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		CircleArm.BackgroundColor3 = rcol
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://696096087"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
BendACTIVE = false
Bend.MouseButton1Click:connect(function()
	BendACTIVE = not BendACTIVE
	if BendACTIVE then
		Bend.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if BendACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		Bend.BackgroundColor3 = rcol
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://675025570"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
RotateSlashACTIVE = false
RotateSlash.MouseButton1Click:connect(function()
	RotateSlashACTIVE = not RotateSlashACTIVE
	if RotateSlashACTIVE then
		RotateSlash.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if RotateSlashACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		RotateSlash.BackgroundColor3 = rcol
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://754656200"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
FlingArmsACTIVE = false
FlingArms.MouseButton1Click:connect(function()
	FlingArmsACTIVE = not FlingArmsACTIVE
	if FlingArmsACTIVE then
		FlingArms.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if FlingArmsACTIVE then
				track:Play(.1, 1, 10)
			end
		 end
		end
	else
		track:Stop()
		FlingArms.BackgroundColor3 = rcol
	end
end)

-- Finished update!