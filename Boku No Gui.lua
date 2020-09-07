local BokunoRobloxGUI = Instance.new("ScreenGui")
local TitleFrm = Instance.new("Frame")
local TitleTxt = Instance.new("TextLabel")
local CloseBtn = Instance.new("TextButton")
local MinBtn = Instance.new("TextButton")
local BodyFrm = Instance.new("Frame")
local HeroTxt = Instance.new("TextLabel")
local VillainTxt = Instance.new("TextLabel")
local DivideFrm1 = Instance.new("Frame")
local QuestsTxt = Instance.new("TextLabel")
local DivideFrm2 = Instance.new("Frame")
local DivideFrm3 = Instance.new("Frame")
local SelectVillainBtn = Instance.new("TextButton")
local FarmVillainBtn = Instance.new("TextButton")
local FarmHeroBtn = Instance.new("TextButton")
local SelectHeroBtn = Instance.new("TextButton")
local QuestBtn = Instance.new("TextButton")
local StartQuestBtn = Instance.new("TextButton")
local BHeroFrm = Instance.new("ScrollingFrame")
local CriminalBtn = Instance.new("TextButton")
local WeakVillainBtn = Instance.new("TextButton")
local VillainBtn = Instance.new("TextButton")
local NoumuBtn = Instance.new("TextButton")
local TomuraBtn = Instance.new("TextButton")
local HeroTxt_2 = Instance.new("TextLabel")
local BVillainFrm = Instance.new("ScrollingFrame")
local PoliceBtn = Instance.new("TextButton")
local UAStudentBtn = Instance.new("TextButton")
local HeroBtn = Instance.new("TextButton")
local AllMightBtn = Instance.new("TextButton")
local EndeavorBtn = Instance.new("TextButton")
local SkillsFrm = Instance.new("Frame")
local ZSkillBtn = Instance.new("TextButton")
local XSkillBtn = Instance.new("TextButton")
local CSkillBtn = Instance.new("TextButton")
local VSkillBtn = Instance.new("TextButton")
local FSkillBtn = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local QuestsFrm = Instance.new("ScrollingFrame")
local KillCrimBtn = Instance.new("TextButton")
local KillPolBtn = Instance.new("TextButton")
local KillWVillBtn = Instance.new("TextButton")
local KillHeroBtn = Instance.new("TextButton")
local KillVillBtn = Instance.new("TextButton")
local KillUAStudBtn = Instance.new("TextButton")

function RV()
    local res = ""
    for i = 1, 20 do
        res = res .. string.char(math.random(97, 122))
    end
    return res
end

BokunoRobloxGUI.Name = RV()
BokunoRobloxGUI.Parent = game.CoreGui
BokunoRobloxGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
BokunoRobloxGUI.ResetOnSpawn = false

TitleFrm.Name = RV()
TitleFrm.Parent = BokunoRobloxGUI
TitleFrm.Active = true
TitleFrm.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
TitleFrm.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
TitleFrm.BorderSizePixel = 2
TitleFrm.Position = UDim2.new(0.215018004, 0, 0.385199249, 0)
TitleFrm.Size = UDim2.new(0, 450, 0, 20)
TitleFrm.Draggable = true

TitleTxt.Name = RV()
TitleTxt.Parent = TitleFrm
TitleTxt.BackgroundColor3 = Color3.new(1, 1, 1)
TitleTxt.BackgroundTransparency = 1
TitleTxt.BorderSizePixel = 0
TitleTxt.Size = UDim2.new(0, 121, 0, 20)
TitleTxt.Font = Enum.Font.SourceSansSemibold
TitleTxt.Text = " Boku No Roblox GUI"
TitleTxt.TextColor3 = Color3.new(0.87451, 0.87451, 0.87451)
TitleTxt.TextSize = 15
TitleTxt.TextXAlignment = Enum.TextXAlignment.Left

CloseBtn.Name = RV()
CloseBtn.Parent = TitleFrm
CloseBtn.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
CloseBtn.BorderSizePixel = 0
CloseBtn.Position = UDim2.new(0.955555558, 0, 0, 0)
CloseBtn.Size = UDim2.new(0, 20, 0, 20)
CloseBtn.Font = Enum.Font.SourceSans
CloseBtn.Text = " X"
CloseBtn.TextColor3 = Color3.new(1, 1, 1)
CloseBtn.TextSize = 14

MinBtn.Name = RV()
MinBtn.Parent = TitleFrm
MinBtn.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
MinBtn.BorderSizePixel = 0
MinBtn.Position = UDim2.new(0.910000026, 0, 0, 0)
MinBtn.Size = UDim2.new(0, 20, 0, 20)
MinBtn.Font = Enum.Font.SourceSans
MinBtn.Text = "_"
MinBtn.TextColor3 = Color3.new(1, 1, 1)
MinBtn.TextSize = 14
MinBtn.TextYAlignment = Enum.TextYAlignment.Top

BodyFrm.Name = RV()
BodyFrm.Parent = TitleFrm
BodyFrm.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
BodyFrm.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
BodyFrm.BorderSizePixel = 2
BodyFrm.Position = UDim2.new(0, 0, 1.10000002, 0)
BodyFrm.Size = UDim2.new(0, 450, 0, 100)

HeroTxt.Name = RV()
HeroTxt.Parent = BodyFrm
HeroTxt.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
HeroTxt.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
HeroTxt.BorderSizePixel = 2
HeroTxt.Size = UDim2.new(0, 150, 0, 13)
HeroTxt.Font = Enum.Font.SourceSans
HeroTxt.Text = "BECOME A HERO"
HeroTxt.TextColor3 = Color3.new(0.87451, 0.87451, 0.87451)
HeroTxt.TextSize = 14

VillainTxt.Name = RV()
VillainTxt.Parent = BodyFrm
VillainTxt.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
VillainTxt.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
VillainTxt.BorderSizePixel = 2
VillainTxt.Position = UDim2.new(0.338692814, 0, 0, 0)
VillainTxt.Size = UDim2.new(0, 150, 0, 13)
VillainTxt.Font = Enum.Font.SourceSans
VillainTxt.Text = "BECOME A VILLAIN"
VillainTxt.TextColor3 = Color3.new(0.87451, 0.87451, 0.87451)
VillainTxt.TextSize = 14

DivideFrm1.Name = RV()
DivideFrm1.Parent = BodyFrm
DivideFrm1.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
DivideFrm1.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
DivideFrm1.BorderSizePixel = 0
DivideFrm1.Position = UDim2.new(0.335000008, 0, 0, 0)
DivideFrm1.Size = UDim2.new(0, 2, 0, 82)
DivideFrm1.ZIndex = 3

QuestsTxt.Name = RV()
QuestsTxt.Parent = BodyFrm
QuestsTxt.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
QuestsTxt.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
QuestsTxt.BorderSizePixel = 2
QuestsTxt.Position = UDim2.new(0.674901962, 0, 0, 0)
QuestsTxt.Size = UDim2.new(0, 146, 0, 13)
QuestsTxt.Font = Enum.Font.SourceSans
QuestsTxt.Text = "QUESTS"
QuestsTxt.TextColor3 = Color3.new(0.87451, 0.87451, 0.87451)
QuestsTxt.TextSize = 14

DivideFrm2.Name = RV()
DivideFrm2.Parent = BodyFrm
DivideFrm2.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
DivideFrm2.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
DivideFrm2.BorderSizePixel = 0
DivideFrm2.Position = UDim2.new(0.671999991, 0, 0, 0)
DivideFrm2.Size = UDim2.new(0, 2, 0, 82)

DivideFrm3.Name = RV()
DivideFrm3.Parent = BodyFrm
DivideFrm3.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
DivideFrm3.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
DivideFrm3.BorderSizePixel = 0
DivideFrm3.Position = UDim2.new(0, 0, 0.779999971, 4)
DivideFrm3.Size = UDim2.new(0, 451, 0, 2)

SelectVillainBtn.Name = RV()
SelectVillainBtn.Parent = BodyFrm
SelectVillainBtn.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
SelectVillainBtn.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
SelectVillainBtn.BorderSizePixel = 2
SelectVillainBtn.Position = UDim2.new(0.0133333337, 0, 0, 21)
SelectVillainBtn.Size = UDim2.new(0, 138, 0, 26)
SelectVillainBtn.Font = Enum.Font.SourceSans
SelectVillainBtn.Text = "Select NPC  ⇵"
SelectVillainBtn.TextColor3 = Color3.new(0.87451, 0.87451, 0.87451)
SelectVillainBtn.TextSize = 14

FarmVillainBtn.Name = RV()
FarmVillainBtn.Parent = BodyFrm
FarmVillainBtn.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
FarmVillainBtn.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
FarmVillainBtn.BorderSizePixel = 2
FarmVillainBtn.Position = UDim2.new(0.0133333337, 0, 0.339999914, 21)
FarmVillainBtn.Size = UDim2.new(0, 138, 0, 21)
FarmVillainBtn.Font = Enum.Font.SourceSans
FarmVillainBtn.Text = "START FARMING"
FarmVillainBtn.TextColor3 = Color3.new(0.87451, 0.87451, 0.87451)
FarmVillainBtn.TextSize = 14

FarmHeroBtn.Name = RV()
FarmHeroBtn.Parent = BodyFrm
FarmHeroBtn.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
FarmHeroBtn.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
FarmHeroBtn.BorderSizePixel = 2
FarmHeroBtn.Position = UDim2.new(0.351111084, 0, 0.339999914, 21)
FarmHeroBtn.Size = UDim2.new(0, 138, 0, 21)
FarmHeroBtn.Font = Enum.Font.SourceSans
FarmHeroBtn.Text = "START FARMING"
FarmHeroBtn.TextColor3 = Color3.new(0.87451, 0.87451, 0.87451)
FarmHeroBtn.TextSize = 14

SelectHeroBtn.Name = RV()
SelectHeroBtn.Parent = BodyFrm
SelectHeroBtn.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
SelectHeroBtn.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
SelectHeroBtn.BorderSizePixel = 2
SelectHeroBtn.Position = UDim2.new(0.351111084, 0, 0, 21)
SelectHeroBtn.Size = UDim2.new(0, 138, 0, 26)
SelectHeroBtn.Font = Enum.Font.SourceSans
SelectHeroBtn.Text = "Select NPC  ⇵"
SelectHeroBtn.TextColor3 = Color3.new(0.87451, 0.87451, 0.87451)
SelectHeroBtn.TextSize = 14

QuestBtn.Name = RV()
QuestBtn.Parent = BodyFrm
QuestBtn.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
QuestBtn.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
QuestBtn.BorderSizePixel = 2
QuestBtn.Position = UDim2.new(0.689999998, 0, 0, 21)
QuestBtn.Size = UDim2.new(0, 134, 0, 26)
QuestBtn.Font = Enum.Font.SourceSans
QuestBtn.Text = "Select QUEST  ⇵"
QuestBtn.TextColor3 = Color3.new(0.87451, 0.87451, 0.87451)
QuestBtn.TextSize = 14

StartQuestBtn.Name = RV()
StartQuestBtn.Parent = BodyFrm
StartQuestBtn.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
StartQuestBtn.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
StartQuestBtn.BorderSizePixel = 2
StartQuestBtn.Position = UDim2.new(0.689999998, 0, 0.339999914, 21)
StartQuestBtn.Size = UDim2.new(0, 134, 0, 21)
StartQuestBtn.Font = Enum.Font.SourceSans
StartQuestBtn.Text = "START QUEST"
StartQuestBtn.TextColor3 = Color3.new(0.87451, 0.87451, 0.87451)
StartQuestBtn.TextSize = 14

BHeroFrm.Name = RV()
BHeroFrm.Parent = BodyFrm
BHeroFrm.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
BHeroFrm.BorderColor3 = Color3.new(0.0392157, 0.0392157, 0.0392157)
BHeroFrm.BorderSizePixel = 2
BHeroFrm.Position = UDim2.new(0.0133333337, 0, 0.209999993, 0)
BHeroFrm.Size = UDim2.new(0, 138, 0, 100)
BHeroFrm.Visible = false
BHeroFrm.ZIndex = 2
BHeroFrm.CanvasSize = UDim2.new(0, 0, 0, 125)

CriminalBtn.Name = RV()
CriminalBtn.Parent = BHeroFrm
CriminalBtn.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
CriminalBtn.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
CriminalBtn.BorderSizePixel = 0
CriminalBtn.Position = UDim2.new(-0.00565216504, 0, -0.108999997, 13)
CriminalBtn.Size = UDim2.new(0, 129, 0, 25)
CriminalBtn.Font = Enum.Font.SourceSans
CriminalBtn.Text = "CRIMINAL"
CriminalBtn.TextColor3 = Color3.new(0.87451, 0.87451, 0.87451)
CriminalBtn.TextSize = 14

WeakVillainBtn.Name = RV()
WeakVillainBtn.Parent = BHeroFrm
WeakVillainBtn.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
WeakVillainBtn.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
WeakVillainBtn.BorderSizePixel = 0
WeakVillainBtn.Position = UDim2.new(-0.00565216504, 0, -0.108999997, 38)
WeakVillainBtn.Size = UDim2.new(0, 129, 0, 25)
WeakVillainBtn.Font = Enum.Font.SourceSans
WeakVillainBtn.Text = "WEAK VILLAIN"
WeakVillainBtn.TextColor3 = Color3.new(0.87451, 0.87451, 0.87451)
WeakVillainBtn.TextSize = 14

VillainBtn.Name = RV()
VillainBtn.Parent = BHeroFrm
VillainBtn.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
VillainBtn.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
VillainBtn.BorderSizePixel = 0
VillainBtn.Position = UDim2.new(-0.00565216504, 0, -0.108999997, 63)
VillainBtn.Size = UDim2.new(0, 129, 0, 25)
VillainBtn.Font = Enum.Font.SourceSans
VillainBtn.Text = "VILLAIN"
VillainBtn.TextColor3 = Color3.new(0.87451, 0.87451, 0.87451)
VillainBtn.TextSize = 14

NoumuBtn.Name = RV()
NoumuBtn.Parent = BHeroFrm
NoumuBtn.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
NoumuBtn.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
NoumuBtn.BorderSizePixel = 0
NoumuBtn.Position = UDim2.new(-0.00565216504, 0, -0.108999997, 88)
NoumuBtn.Size = UDim2.new(0, 129, 0, 25)
NoumuBtn.Font = Enum.Font.SourceSans
NoumuBtn.Text = "NOUMU"
NoumuBtn.TextColor3 = Color3.new(0.87451, 0.87451, 0.87451)
NoumuBtn.TextSize = 14

TomuraBtn.Name = RV()
TomuraBtn.Parent = BHeroFrm
TomuraBtn.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
TomuraBtn.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
TomuraBtn.BorderSizePixel = 0
TomuraBtn.Position = UDim2.new(-0.00565216504, 0, -0.108999997, 113)
TomuraBtn.Size = UDim2.new(0, 129, 0, 25)
TomuraBtn.Font = Enum.Font.SourceSans
TomuraBtn.Text = "TOMURA"
TomuraBtn.TextColor3 = Color3.new(0.87451, 0.87451, 0.87451)
TomuraBtn.TextSize = 14

HeroTxt_2.Name = RV()
HeroTxt_2.Parent = BodyFrm
HeroTxt_2.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
HeroTxt_2.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
HeroTxt_2.BorderSizePixel = 2
HeroTxt_2.Position = UDim2.new(0, 0, 0.840000033, 0)
HeroTxt_2.Size = UDim2.new(0, 71, 0, 16)
HeroTxt_2.Font = Enum.Font.SourceSansSemibold
HeroTxt_2.Text = "  USE SKILLS:"
HeroTxt_2.TextColor3 = Color3.new(0.87451, 0.87451, 0.87451)
HeroTxt_2.TextSize = 14
HeroTxt_2.TextXAlignment = Enum.TextXAlignment.Left

BVillainFrm.Name = RV()
BVillainFrm.Parent = BodyFrm
BVillainFrm.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
BVillainFrm.BorderColor3 = Color3.new(0.0392157, 0.0392157, 0.0392157)
BVillainFrm.BorderSizePixel = 2
BVillainFrm.Position = UDim2.new(0.351111084, 0, 0.209999993, 0)
BVillainFrm.Size = UDim2.new(0, 138, 0, 100)
BVillainFrm.Visible = false
BVillainFrm.ZIndex = 2
BVillainFrm.CanvasSize = UDim2.new(0, 0, 0, 125)

PoliceBtn.Name = RV()
PoliceBtn.Parent = BVillainFrm
PoliceBtn.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
PoliceBtn.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
PoliceBtn.BorderSizePixel = 0
PoliceBtn.Position = UDim2.new(-0.00565216504, 0, -0.108999997, 13)
PoliceBtn.Size = UDim2.new(0, 129, 0, 25)
PoliceBtn.Font = Enum.Font.SourceSans
PoliceBtn.Text = "POLICE"
PoliceBtn.TextColor3 = Color3.new(0.87451, 0.87451, 0.87451)
PoliceBtn.TextSize = 14

UAStudentBtn.Name = RV()
UAStudentBtn.Parent = BVillainFrm
UAStudentBtn.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
UAStudentBtn.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
UAStudentBtn.BorderSizePixel = 0
UAStudentBtn.Position = UDim2.new(-0.00565216504, 0, -0.108999997, 38)
UAStudentBtn.Size = UDim2.new(0, 129, 0, 25)
UAStudentBtn.Font = Enum.Font.SourceSans
UAStudentBtn.Text = "UA STUDENT"
UAStudentBtn.TextColor3 = Color3.new(0.87451, 0.87451, 0.87451)
UAStudentBtn.TextSize = 14

HeroBtn.Name = RV()
HeroBtn.Parent = BVillainFrm
HeroBtn.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
HeroBtn.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
HeroBtn.BorderSizePixel = 0
HeroBtn.Position = UDim2.new(-0.00565216504, 0, -0.108999997, 63)
HeroBtn.Size = UDim2.new(0, 129, 0, 25)
HeroBtn.Font = Enum.Font.SourceSans
HeroBtn.Text = "HERO"
HeroBtn.TextColor3 = Color3.new(0.87451, 0.87451, 0.87451)
HeroBtn.TextSize = 14

AllMightBtn.Name = RV()
AllMightBtn.Parent = BVillainFrm
AllMightBtn.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
AllMightBtn.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
AllMightBtn.BorderSizePixel = 0
AllMightBtn.Position = UDim2.new(-0.00565216504, 0, -0.108999997, 88)
AllMightBtn.Size = UDim2.new(0, 129, 0, 25)
AllMightBtn.Font = Enum.Font.SourceSans
AllMightBtn.Text = "ALL MIGHT"
AllMightBtn.TextColor3 = Color3.new(0.87451, 0.87451, 0.87451)
AllMightBtn.TextSize = 14

EndeavorBtn.Name = RV()
EndeavorBtn.Parent = BVillainFrm
EndeavorBtn.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
EndeavorBtn.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
EndeavorBtn.BorderSizePixel = 0
EndeavorBtn.Position = UDim2.new(-0.00565216504, 0, -0.108999997, 113)
EndeavorBtn.Size = UDim2.new(0, 129, 0, 25)
EndeavorBtn.Font = Enum.Font.SourceSans
EndeavorBtn.Text = "ENDEAVOR"
EndeavorBtn.TextColor3 = Color3.new(0.87451, 0.87451, 0.87451)
EndeavorBtn.TextSize = 14

SkillsFrm.Name = RV()
SkillsFrm.Parent = BodyFrm
SkillsFrm.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
SkillsFrm.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
SkillsFrm.BorderSizePixel = 2
SkillsFrm.Position = UDim2.new(0.157777771, 0, 0.839999974, 0)
SkillsFrm.Size = UDim2.new(0, 379, 0, 16)

ZSkillBtn.Name = RV()
ZSkillBtn.Parent = SkillsFrm
ZSkillBtn.BackgroundColor3 = Color3.new(0.705882, 0, 0)
ZSkillBtn.BorderColor3 = Color3.new(0.705882, 0, 0)
ZSkillBtn.BorderSizePixel = 0
ZSkillBtn.Size = UDim2.new(0, 20, 0, 16)
ZSkillBtn.Font = Enum.Font.SourceSans
ZSkillBtn.Text = "Z"
ZSkillBtn.TextColor3 = Color3.new(0.87451, 0.87451, 0.87451)
ZSkillBtn.TextSize = 14

XSkillBtn.Name = RV()
XSkillBtn.Parent = SkillsFrm
XSkillBtn.BackgroundColor3 = Color3.new(0.705882, 0, 0)
XSkillBtn.BorderColor3 = Color3.new(0.705882, 0, 0)
XSkillBtn.BorderSizePixel = 0
XSkillBtn.Position = UDim2.new(0.0524934381, 0, 0, 0)
XSkillBtn.Size = UDim2.new(0, 20, 0, 16)
XSkillBtn.Font = Enum.Font.SourceSans
XSkillBtn.Text = "X"
XSkillBtn.TextColor3 = Color3.new(0.87451, 0.87451, 0.87451)
XSkillBtn.TextSize = 14

CSkillBtn.Name = RV()
CSkillBtn.Parent = SkillsFrm
CSkillBtn.BackgroundColor3 = Color3.new(0.705882, 0, 0)
CSkillBtn.BorderColor3 = Color3.new(0.705882, 0, 0)
CSkillBtn.BorderSizePixel = 0
CSkillBtn.Position = UDim2.new(0.104986876, 0, 0, 0)
CSkillBtn.Size = UDim2.new(0, 20, 0, 16)
CSkillBtn.Font = Enum.Font.SourceSans
CSkillBtn.Text = "C"
CSkillBtn.TextColor3 = Color3.new(0.87451, 0.87451, 0.87451)
CSkillBtn.TextSize = 14

VSkillBtn.Name = RV()
VSkillBtn.Parent = SkillsFrm
VSkillBtn.BackgroundColor3 = Color3.new(0.705882, 0, 0)
VSkillBtn.BorderColor3 = Color3.new(0.705882, 0, 0)
VSkillBtn.BorderSizePixel = 0
VSkillBtn.Position = UDim2.new(0.157480314, 0, 0, 0)
VSkillBtn.Size = UDim2.new(0, 20, 0, 16)
VSkillBtn.Font = Enum.Font.SourceSans
VSkillBtn.Text = "V"
VSkillBtn.TextColor3 = Color3.new(0.87451, 0.87451, 0.87451)
VSkillBtn.TextSize = 14

FSkillBtn.Name = RV()
FSkillBtn.Parent = SkillsFrm
FSkillBtn.BackgroundColor3 = Color3.new(0.705882, 0, 0)
FSkillBtn.BorderColor3 = Color3.new(0.705882, 0, 0)
FSkillBtn.BorderSizePixel = 0
FSkillBtn.Position = UDim2.new(0.157480314, 20, 0, 0)
FSkillBtn.Size = UDim2.new(0, 20, 0, 16)
FSkillBtn.Font = Enum.Font.SourceSans
FSkillBtn.Text = "F"
FSkillBtn.TextColor3 = Color3.new(0.87451, 0.87451, 0.87451)
FSkillBtn.TextSize = 14

TextLabel.Name = RV()
TextLabel.Parent = BodyFrm
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.337777764, 20, 0.839999974, 0)
TextLabel.Size = UDim2.new(0, 278, 0, 16)
TextLabel.Font = Enum.Font.Code
TextLabel.Text = "MADE BY @DANISTY"
TextLabel.TextColor3 = Color3.new(0.611765, 0.611765, 0.611765)
TextLabel.TextSize = 14

QuestsFrm.Name = RV()
QuestsFrm.Parent = BodyFrm
QuestsFrm.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
QuestsFrm.BorderColor3 = Color3.new(0.0392157, 0.0392157, 0.0392157)
QuestsFrm.BorderSizePixel = 2
QuestsFrm.Position = UDim2.new(0.688888907, 0, 0.209999993, 0)
QuestsFrm.Size = UDim2.new(0, 134, 0, 100)
QuestsFrm.Visible = false
QuestsFrm.ZIndex = 2
QuestsFrm.CanvasPosition = Vector2.new(0, 0)
QuestsFrm.CanvasSize = UDim2.new(0, 0, 0, 150)

KillCrimBtn.Name = RV()
KillCrimBtn.Parent = QuestsFrm
KillCrimBtn.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
KillCrimBtn.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
KillCrimBtn.BorderSizePixel = 0
KillCrimBtn.Position = UDim2.new(-0.00565212872, 0, 0, 0)
KillCrimBtn.Size = UDim2.new(0, 122, 0, 25)
KillCrimBtn.Font = Enum.Font.SourceSans
KillCrimBtn.Text = "KILL CRIMINAL"
KillCrimBtn.TextColor3 = Color3.new(0.87451, 0.87451, 0.87451)
KillCrimBtn.TextSize = 14

KillPolBtn.Name = RV()
KillPolBtn.Parent = QuestsFrm
KillPolBtn.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
KillPolBtn.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
KillPolBtn.BorderSizePixel = 0
KillPolBtn.Position = UDim2.new(-0.00565212872, 0, 0.00100000005, 25)
KillPolBtn.Size = UDim2.new(0, 122, 0, 25)
KillPolBtn.Font = Enum.Font.SourceSans
KillPolBtn.Text = "KILL POLICE"
KillPolBtn.TextColor3 = Color3.new(0.87451, 0.87451, 0.87451)
KillPolBtn.TextSize = 14

KillWVillBtn.Name = RV()
KillWVillBtn.Parent = QuestsFrm
KillWVillBtn.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
KillWVillBtn.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
KillWVillBtn.BorderSizePixel = 0
KillWVillBtn.Position = UDim2.new(-0.00565212872, 0, 0.00100000005, 50)
KillWVillBtn.Size = UDim2.new(0, 122, 0, 25)
KillWVillBtn.Font = Enum.Font.SourceSans
KillWVillBtn.Text = "KILL WEAK VILLAIN"
KillWVillBtn.TextColor3 = Color3.new(0.87451, 0.87451, 0.87451)
KillWVillBtn.TextSize = 14

KillHeroBtn.Name = RV()
KillHeroBtn.Parent = QuestsFrm
KillHeroBtn.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
KillHeroBtn.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
KillHeroBtn.BorderSizePixel = 0
KillHeroBtn.Position = UDim2.new(-0.00565212872, 0, 0.00100000005, 100)
KillHeroBtn.Size = UDim2.new(0, 122, 0, 25)
KillHeroBtn.Font = Enum.Font.SourceSans
KillHeroBtn.Text = "KILL HERO"
KillHeroBtn.TextColor3 = Color3.new(0.87451, 0.87451, 0.87451)
KillHeroBtn.TextSize = 14

KillVillBtn.Name = RV()
KillVillBtn.Parent = QuestsFrm
KillVillBtn.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
KillVillBtn.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
KillVillBtn.BorderSizePixel = 0
KillVillBtn.Position = UDim2.new(-0.00565212872, 0, 0.00100000005, 75)
KillVillBtn.Size = UDim2.new(0, 122, 0, 25)
KillVillBtn.Font = Enum.Font.SourceSans
KillVillBtn.Text = "KILL VILLAIN"
KillVillBtn.TextColor3 = Color3.new(0.87451, 0.87451, 0.87451)
KillVillBtn.TextSize = 14

KillUAStudBtn.Name = RV()
KillUAStudBtn.Parent = QuestsFrm
KillUAStudBtn.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
KillUAStudBtn.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
KillUAStudBtn.BorderSizePixel = 0
KillUAStudBtn.Position = UDim2.new(-0.00565212872, 0, 0.00100000005, 125)
KillUAStudBtn.Size = UDim2.new(0, 122, 0, 25)
KillUAStudBtn.Font = Enum.Font.SourceSans
KillUAStudBtn.Text = "KILL UA STUDENT"
KillUAStudBtn.TextColor3 = Color3.new(0.87451, 0.87451, 0.87451)
KillUAStudBtn.TextSize = 14

local plr = game.Players.LocalPlayer
local SZ = false
local SX = false
local SC = false
local SV = false
local SF = false
local CON = Color3.fromRGB(42, 180, 0)
local COFF = Color3.fromRGB(180, 0, 0)
local busy = false
local farming = false
local SQuest = ""
local SQuestNPC = ""
local SHero = ""
local SVillain = ""
local LP = plr.Character.HumanoidRootPart.CFrame
if game.Players.LocalPlayer.PlayerGui.SaveGui:WaitForChild("AntiAutoClick", 1) then
game.Players.LocalPlayer.PlayerGui.SaveGui.AntiAutoClick:Destroy()end

--Rename Students
local function RStud()
	for i,v in pairs(game.Workspace.NPCs:GetChildren())do
		if v.Name == "UA Student 2" or v.Name == "UA Student 3" or v.Name == "UA Student 4" or v.Name == "UA Student 5"then
			v.Name = "UA Student"
		end
	end
end RStud()

local function AQuest(qst, mob)
	RStud()
	local Quest = qst
	local NPC = mob
	game.ReplicatedStorage.Remotes.Quest.AcceptQuest:FireServer(Quest)wait(1)
	local convert = game.Players.LocalPlayer.PlayerGui.QuestGui.QuestObjectives.KilledAmount.Text
	local AValue, divisor, NValue = convert:match('^(.*)(/)(.*)$')
	NValue = tonumber(NValue)

	LP = plr.Character.HumanoidRootPart.CFrame
	local Quirk = ""
	local FarmV = false
	local WP = ""
	local ANPC = ""
	local NeedV = NValue..divisor..NValue
	
	local function FindQ()
	    for i,v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren())do
	        if string.match(v.Name, "Quirk") then
	            Quirk = v.Name
	        end
	    end
		for i,v in pairs(game.Players.LocalPlayer.PlayerGui.Menu.Menu.Inventory.Weapons:GetChildren())do
	        if v.Name == "Dagger" and v:FindFirstChild("ItemName").Text ~= "N/A"then
	            game.ReplicatedStorage.WeaponShop.Equip:FireServer(v.Name)
	            WP = v.Name
	            break
	        elseif v.Name == "Katana" and v:FindFirstChild("ItemName").Text ~= "N/A"then
	            game.ReplicatedStorage.WeaponShop.Equip:FireServer(v.Name)
	            WP = v.Name    
	            break
	        end
    	end
	end
	
	local function UpdV()
		convert = game.Players.LocalPlayer.PlayerGui.QuestGui.QuestObjectives.KilledAmount.Text
	end
	
	local jo = false
	
	FindQ()
	while farming and busy do
	while convert ~= NeedV and busy do
	for i,v in pairs(game.Workspace.NPCs:GetChildren())do
	if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") and game.Workspace[game.Players.LocalPlayer.Name]:WaitForChild(Quirk)--[[and game.Workspace[game.Players.LocalPlayer.Name].RightHand:FindFirstChild(WP)]] then
		if v.Name == NPC and v:WaitForChild("Humanoid").Health > 0 and convert ~= NeedV and busy then
			while v:WaitForChild("Humanoid").Health > 0 and convert ~= NeedV and busy do
				if plr.Character:WaitForChild('Humanoid').Health > 0 and convert ~= NeedV and busy then
					if jo then
						wait(3)
						jo = false
						FindQ()
						RStud()
						UpdV()
					end
					plr.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame + v:FindFirstChild("HumanoidRootPart").CFrame.lookVector * -2 
					if game.Workspace[game.Players.LocalPlayer.Name]:WaitForChild("RightHand"):FindFirstChild(WP)then game.Workspace[game.Players.LocalPlayer.Name].Main.Swing:FireServer(v:FindFirstChild("HumanoidRootPart").CFrame)wait()end
					game.Workspace[game.Players.LocalPlayer.Name][Quirk].E:FireServer()wait()
					if SZ and game.Workspace[game.Players.LocalPlayer.Name][Quirk]:FindFirstChild("Z") then wait(.1)game.Workspace[game.Players.LocalPlayer.Name][Quirk].Z:FireServer()end
					if SX and game.Workspace[game.Players.LocalPlayer.Name][Quirk]:FindFirstChild("X") then wait(.1)game.Workspace[game.Players.LocalPlayer.Name][Quirk].X:FireServer()end
					if SC and game.Workspace[game.Players.LocalPlayer.Name][Quirk]:FindFirstChild("C") then wait(.1)game.Workspace[game.Players.LocalPlayer.Name][Quirk].C:FireServer()end
					if SV and game.Workspace[game.Players.LocalPlayer.Name][Quirk]:FindFirstChild("V") then wait(.1)game.Workspace[game.Players.LocalPlayer.Name][Quirk].V:FireServer()end
					if SF and game.Workspace[game.Players.LocalPlayer.Name][Quirk]:FindFirstChild("F") then wait(.1)game.Workspace[game.Players.LocalPlayer.Name][Quirk].F:FireServer()end
					UpdV()
					RStud()
					wait()
				else
					RStud()
					FindQ()
					jo = true
					wait()
				end
			end
		else
			wait()
		end
	else
		wait()
		FindQ()
	end
	end
	end
	wait()
	game.ReplicatedStorage.Remotes.Quest.CompleteQuest:FireServer(Quest)
	if farming then AQuest(Quest, NPC)end
	end
	wait()
	print'done'
	busy = false
	farming = false
	plr.Character.HumanoidRootPart.CFrame = LP
	StartQuestBtn.Text = "START QUEST"
end

local function KillNPC(mob)
	RStud()
	local NPC = mob
	local Quirk = ""
	local FarmV = false
	local WP = ""
	LP = plr.Character.HumanoidRootPart.CFrame
	
	local function FindQ()
	    for i,v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren())do
	        if string.match(v.Name, "Quirk") then
	            Quirk = v.Name
	        end
	    end
		for i,v in pairs(game.Players.LocalPlayer.PlayerGui.Menu.Menu.Inventory.Weapons:GetChildren())do
	        if v.Name == "Dagger" and v:FindFirstChild("ItemName").Text ~= "N/A"then
	            game.ReplicatedStorage.WeaponShop.Equip:FireServer(v.Name)
	            WP = v.Name
	            break
	        elseif v.Name == "Katana" and v:FindFirstChild("ItemName").Text ~= "N/A"then
	            game.ReplicatedStorage.WeaponShop.Equip:FireServer(v.Name)
	            WP = v.Name    
	            break
	        end
    	end
	end
	
	local jo = false
	
	FindQ()
	while farming and busy do
	for i,v in pairs(game.Workspace.NPCs:GetChildren())do
	if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") and game.Workspace[game.Players.LocalPlayer.Name]:WaitForChild(Quirk) then
		if v.Name == NPC and v:WaitForChild("Humanoid").Health > 0 and farming and busy then
			while v:WaitForChild("Humanoid").Health > 0 and farming and busy do
				if plr.Character:WaitForChild('Humanoid').Health > 0 and farming and busy then
					if jo then
						wait(3)
						jo = false
						FindQ()
						RStud()
					end
					plr.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame + v:FindFirstChild("HumanoidRootPart").CFrame.lookVector * -2 
					if game.Workspace[game.Players.LocalPlayer.Name]:WaitForChild("RightHand"):FindFirstChild(WP)then game.Workspace[game.Players.LocalPlayer.Name].Main.Swing:FireServer(v:FindFirstChild("HumanoidRootPart").CFrame)wait()end
					game.Workspace[game.Players.LocalPlayer.Name][Quirk].E:FireServer()wait()
					if SZ and game.Workspace[game.Players.LocalPlayer.Name][Quirk]:FindFirstChild("Z") then wait(.1)game.Workspace[game.Players.LocalPlayer.Name][Quirk].Z:FireServer()end
					if SX and game.Workspace[game.Players.LocalPlayer.Name][Quirk]:FindFirstChild("X") then wait(.1)game.Workspace[game.Players.LocalPlayer.Name][Quirk].X:FireServer()end
					if SC and game.Workspace[game.Players.LocalPlayer.Name][Quirk]:FindFirstChild("C") then wait(.1)game.Workspace[game.Players.LocalPlayer.Name][Quirk].C:FireServer()end
					if SV and game.Workspace[game.Players.LocalPlayer.Name][Quirk]:FindFirstChild("V") then wait(.1)game.Workspace[game.Players.LocalPlayer.Name][Quirk].V:FireServer()end
					if SF and game.Workspace[game.Players.LocalPlayer.Name][Quirk]:FindFirstChild("F") then wait(.1)game.Workspace[game.Players.LocalPlayer.Name][Quirk].F:FireServer()end
					wait()
					RStud()
				else
					RStud()
					FindQ()
					jo = true
					wait()
				end
			end
		else
			wait()
		end
	else
		wait()
		FindQ()
	end
	end
	end
	wait()
	busy = false
	plr.Character.HumanoidRootPart.CFrame = LP
end

local function Message(title, msg, duration)
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = title;
		Text = msg;
		Duration = duration;
	})
end

local function SelectQuest(btn, sq, sqn, txt)
	if  not busy then
		QuestsFrm.Visible = false
		btn.Text = txt.."  ⇵"
		SQuest = sq
		SQuestNPC = sqn
	else
		QuestsFrm.Visible = false
		btn.Text = txt.."  ⇵"
	end
end

--Settings
CloseBtn.MouseButton1Down:Connect(function()
	BokunoRobloxGUI:Destroy()
end)

MinBtn.MouseButton1Down:Connect(function()
	BodyFrm.Visible = not BodyFrm.Visible
end)

--Quests
QuestBtn.MouseButton1Down:Connect(function()
	QuestsFrm.Visible = true
end)

StartQuestBtn.MouseButton1Down:Connect(function()
	if busy then
		if StartQuestBtn.Text == "STOP QUEST" then
			busy = false
			farming = false
			StartQuestBtn.Text = "START QUEST"
			game.ReplicatedStorage.Remotes.Quest.CancelQuest:FireServer()
			plr.Character.HumanoidRootPart.CFrame = LP
		else
			Message("Error!", "Another process is running!", 5)
		end
	else
		if SQuest == "" then
			Message("Error!", "You need to select a quest", 5)
		else
			busy = true
			farming = true
			StartQuestBtn.Text = "STOP QUEST"
			AQuest(SQuest, SQuestNPC)
		end
	end
end)

KillCrimBtn.MouseButton1Down:Connect(function()
	SelectQuest(QuestBtn, "Kill Criminal", "Criminal", "KILL CRIMINAL")
end)

KillPolBtn.MouseButton1Down:Connect(function()
	SelectQuest(QuestBtn, "Kill Police", "Police", "KILL POLICE")
end)

KillWVillBtn.MouseButton1Down:Connect(function()
	SelectQuest(QuestBtn, "Kill Weak Villain", "Weak Villain", "KILL WEAK VILLAIN")
end)

KillVillBtn.MouseButton1Down:Connect(function()
	SelectQuest(QuestBtn, "Kill Villain", "Villain", "KILL VILLAIN")
end)

KillHeroBtn.MouseButton1Down:Connect(function()
	SelectQuest(QuestBtn, "Kill Hero", "Hero", "KILL HERO")
end)

KillUAStudBtn.MouseButton1Down:Connect(function()
	SelectQuest(QuestBtn, "Kill UA Student", "UA Student", "KILL UA STUDENT")
end)

--Become a Hero
local function SelectNPC(btn, mob, txt, val)
	if  not busy then
		if val == "Hero"then BHeroFrm.Visible = false else BVillainFrm.Visible = false end
		btn.Text = txt.."  ⇵"
		if val == "Hero"then SHero = mob else SVillain = mob end
	else
		if val == "Hero"then BHeroFrm.Visible = false else BVillainFrm.Visible = false end
		btn.Text = txt.."  ⇵"
	end
end

SelectVillainBtn.MouseButton1Down:Connect(function()
	BHeroFrm.Visible = true
end)

FarmVillainBtn.MouseButton1Down:Connect(function()
	if busy then
		if FarmVillainBtn.Text == "STOP FARMING" then
			busy = false
			farming = false
			FarmVillainBtn.Text = "START FARMING"
			plr.Character.HumanoidRootPart.CFrame = LP
		else
			Message("Error!", "Another process is running!", 5)
		end
	else
		if SHero == "" then
			Message("Error!", "You need to select a NPC", 5)
		else
			busy = true
			farming = true
			FarmVillainBtn.Text = "STOP FARMING"
			KillNPC(SHero)
		end
	end
end)

CriminalBtn.MouseButton1Down:Connect(function()
	SelectNPC(SelectVillainBtn, "Criminal", "CRIMINAL", "Hero")
end)

WeakVillainBtn.MouseButton1Down:Connect(function()
	SelectNPC(SelectVillainBtn, "Weak Villain", "WEAK VILLAIN", "Hero")
end)

VillainBtn.MouseButton1Down:Connect(function()
	SelectNPC(SelectVillainBtn, "Villain", "VILLAIN", "Hero")
end)

NoumuBtn.MouseButton1Down:Connect(function()
	SelectNPC(SelectVillainBtn, "Noumu", "NOUMU", "Hero")
end)

TomuraBtn.MouseButton1Down:Connect(function()
	SelectNPC(SelectVillainBtn, "Tomura", "TOMURA", "Hero")
end)

--Become a Villain
SelectHeroBtn.MouseButton1Down:Connect(function()
	BVillainFrm.Visible = true
end)

FarmHeroBtn.MouseButton1Down:Connect(function()
	if busy then
		if FarmHeroBtn.Text == "STOP FARMING" then
			busy = false
			farming = false
			FarmHeroBtn.Text = "START FARMING"
			plr.Character.HumanoidRootPart.CFrame = LP
		else
			Message("Error!", "Another process is running!", 5)
		end
	else
		if SVillain == "" then
			Message("Error!", "You need to select a NPC", 5)
		else
			busy = true
			farming = true
			FarmHeroBtn.Text = "STOP FARMING"
			KillNPC(SVillain)
		end
	end
end)

PoliceBtn.MouseButton1Down:Connect(function()
	SelectNPC(SelectHeroBtn, "Police", "POLICE", "Villain")
end)

UAStudentBtn.MouseButton1Down:Connect(function()
	SelectNPC(SelectHeroBtn, "UA Student", "UA STUDENT", "Villain")
end)

HeroBtn.MouseButton1Down:Connect(function()
	SelectNPC(SelectHeroBtn, "Hero", "HERO", "Villain")
end)

AllMightBtn.MouseButton1Down:Connect(function()
	SelectNPC(SelectHeroBtn, "All Might 1", "ALL MIGHT", "Villain")
end)

EndeavorBtn.MouseButton1Down:Connect(function()
	SelectNPC(SelectHeroBtn, "Endeavor", "ENDEAVOR", "Villain")
end)

--Skills
ZSkillBtn.MouseButton1Down:Connect(function()
	SZ = not SZ
	if SZ then
		ZSkillBtn.BackgroundColor3 = CON
	else
		ZSkillBtn.BackgroundColor3 = COFF
	end
end)

XSkillBtn.MouseButton1Down:Connect(function()
	SX = not SX
	if SX then
		XSkillBtn.BackgroundColor3 = CON
	else
		XSkillBtn.BackgroundColor3 = COFF
	end
end)

CSkillBtn.MouseButton1Down:Connect(function()
	SC = not SC
	if SC then
		CSkillBtn.BackgroundColor3 = CON
	else
		CSkillBtn.BackgroundColor3 = COFF
	end
end)

VSkillBtn.MouseButton1Down:Connect(function()
	SV = not SV
	if SV then
		VSkillBtn.BackgroundColor3 = CON
	else
		VSkillBtn.BackgroundColor3 = COFF
	end
end)

FSkillBtn.MouseButton1Down:Connect(function()
	SF = not SF
	if SF then
		FSkillBtn.BackgroundColor3 = CON
	else
		FSkillBtn.BackgroundColor3 = COFF
	end
end)