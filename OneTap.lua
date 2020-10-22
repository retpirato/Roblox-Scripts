
_G['bloxtapusername'] = 'poop free'
for i,v in pairs(game:GetService("CoreGui"):GetChildren()) do
	if v.Name == "bloxtap" then
		v:Destroy()
	end
end
local CC = Instance.new('ColorCorrectionEffect',game.Lighting)
local lplr = game:GetService("Players").LocalPlayer
local m = lplr:GetMouse()
local bloxtap = Instance.new("ScreenGui")
bloxtap.IgnoreGuiInset = true
local fovview = Instance.new("ImageLabel")
fovview.Name = "fovview"
fovview.Parent = bloxtap
fovview.AnchorPoint = Vector2.new(0.5, 0.5)
fovview.BackgroundColor3 = Color3.new(1, 1, 1)
fovview.BackgroundTransparency = 1
fovview.Position = UDim2.new(0.5, 0, 0.5, 0)
fovview.Size = UDim2.new(0, 25, 0, 25)
fovview.Image = "http://www.roblox.com/asset/?id=282305376"
fovview.ImageTransparency = 0.5

local main = Instance.new("ImageLabel")
local body = Instance.new("ImageLabel")
local hackname = Instance.new("TextLabel")
local legit = Instance.new("TextButton")
local rage = Instance.new("TextButton")
local antiaim = Instance.new("TextButton")
local misc = Instance.new("TextButton")
local selection = Instance.new("ImageLabel")
local tabs = Instance.new("Frame")
local legittab = Instance.new("Frame")
local FIRST_legit = Instance.new("Frame")
local antiaimtab = Instance.new("Frame")
local FIRST_antiaim = Instance.new("Frame")
local ragetab = Instance.new("Frame")
local FIRST_rage = Instance.new("Frame")
local misctab = Instance.new("Frame")
local FIRST_misc = Instance.new("Frame")

local visualtab = Instance.new("Frame")
local FIRST_visual = Instance.new("Frame")
local selection_visualtab = Instance.new("ImageLabel")
local SELF = Instance.new("TextButton")
local FRIENDLIES = Instance.new("TextButton")
local ENEMIES = Instance.new("TextButton")
local WORLD = Instance.new("TextButton")
local ICON_FRIENDLIES = Instance.new("ImageLabel")
local ICON_SELF = Instance.new("ImageLabel")
local ICON_WORLD = Instance.new("ImageLabel")
local ICON_ENEMIES = Instance.new("ImageLabel")
local config = Instance.new("ImageButton")
local username = Instance.new("TextLabel")
local visual = Instance.new("TextButton")
local configmain = Instance.new("ImageLabel")
local configbody = Instance.new("ImageLabel")
local title = Instance.new("TextLabel")
local configlist = Instance.new("ScrollingFrame")
local listthing = Instance.new("UIListLayout")
local createconfig = Instance.new("TextButton")
local saveconfig = Instance.new("TextButton")
local loadconfig = Instance.new("TextButton")
local deleteconfig = Instance.new("TextButton")
local filename = Instance.new("TextBox")
local lines = Instance.new("Folder")

bloxtap.Name = "bloxtap"
bloxtap.Parent = game:GetService("CoreGui")
bloxtap.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
bloxtap.DisplayOrder = 1000000

main.Name = "main"
main.Parent = bloxtap
main.BackgroundColor3 = Color3.new(1, 1, 1)
main.BackgroundTransparency = 1
main.Position = UDim2.new(0.0545474887, 0, 0.0830281898, 0)
main.Selectable = true
main.Size = UDim2.new(0, 490, 0, 200)
main.ZIndex = 2
main.Image = "rbxassetid://2260429633"
main.ImageColor3 = Color3.new(1, 0.784314, 0.403922)
main.ScaleType = Enum.ScaleType.Slice
main.SliceCenter = Rect.new(12, 12, 13, 13)

body.Name = "body"
body.Parent = main
body.BackgroundColor3 = Color3.new(1, 1, 1)
body.BackgroundTransparency = 1
body.ClipsDescendants = true
body.Position = UDim2.new(0, 0, 0, 7)
body.Selectable = true
body.Size = UDim2.new(1, 0, 0, 600)
body.Image = "rbxassetid://760929926"
body.ImageColor3 = Color3.new(0.176471, 0.188235, 0.231373)
body.ScaleType = Enum.ScaleType.Slice
body.SliceCenter = Rect.new(5, 5, 5, 5)

main.Size = UDim2.new(0, 490, 0, body.Size.Y.Offset)

lines.Name = "lines"
lines.Parent = body

hackname.Name = "hackname"
hackname.Parent = body
hackname.BackgroundColor3 = Color3.new(1, 1, 1)
hackname.BackgroundTransparency = 1
hackname.Selectable = true
hackname.Size = UDim2.new(0, 75, 0, 39)
hackname.Font = Enum.Font.GothamBold
hackname.Text = "bloxtap"
hackname.TextColor3 = Color3.new(1, 1, 1)
hackname.TextSize = 17
hackname.TextStrokeTransparency = 0.94999998807907
hackname.TextXAlignment = Enum.TextXAlignment.Right

legit.Name = "legit"
legit.Parent = body
legit.BackgroundColor3 = Color3.new(1, 1, 1)
legit.BackgroundTransparency = 1
legit.Position = UDim2.new(0, 93, 0, 3)
legit.Size = UDim2.new(0, 66, 0, 32)
legit.ZIndex = 1231231
legit.Font = Enum.Font.GothamBold
legit.Text = "Legit"
legit.TextColor3 = Color3.new(1, 1, 1)
legit.TextSize = 10

rage.Name = "rage"
rage.Parent = body
rage.BackgroundColor3 = Color3.new(1, 1, 1)
rage.BackgroundTransparency = 1
rage.Position = UDim2.new(0, 168, 0, 3)
rage.Size = UDim2.new(0, 67, 0, 32)
rage.ZIndex = 1231231
rage.Selected = true
rage.Font = Enum.Font.GothamBold
rage.Text = "Rage"
rage.TextColor3 = Color3.new(1, 1, 1)
rage.TextSize = 10

antiaim.Name = "antiaim"
antiaim.Parent = body
antiaim.BackgroundColor3 = Color3.new(1, 1, 1)
antiaim.BackgroundTransparency = 1
antiaim.Position = UDim2.new(0, 245, 0, 3)
antiaim.Size = UDim2.new(0, 77, 0, 32)
antiaim.ZIndex = 1231231
antiaim.Selected = true
antiaim.Font = Enum.Font.GothamBold
antiaim.Text = "Anti-Aim"
antiaim.TextColor3 = Color3.new(1, 1, 1)
antiaim.TextSize = 10

misc.Name = "misc"
misc.Parent = body
misc.BackgroundColor3 = Color3.new(1, 1, 1)
misc.BackgroundTransparency = 1
misc.Position = UDim2.new(0, 410, 0, 3)
misc.Size = UDim2.new(0, 65, 0, 32)
misc.ZIndex = 1231231
misc.Selected = true
misc.Font = Enum.Font.GothamBold
misc.Text = "Misc"
misc.TextColor3 = Color3.new(1, 1, 1)
misc.TextSize = 10

selection.Name = "selection"
selection.Parent = body
selection.BackgroundColor3 = Color3.new(1, 1, 1)
selection.BackgroundTransparency = 1
selection.Position = UDim2.new(0, 98, 0, 10)
selection.Selectable = true
selection.Size = UDim2.new(0, 60, 0, 19)
selection.ZIndex = 612
selection.Image = "rbxassetid://760929926"
selection.ImageColor3 = Color3.new(0.14902, 0.156863, 0.196078)
selection.ScaleType = Enum.ScaleType.Slice
selection.SliceCenter = Rect.new(5, 5, 5, 5)

tabs.Name = "tabs"
tabs.Parent = body
tabs.BackgroundColor3 = Color3.new(1, 1, 1)
tabs.BackgroundTransparency = 1
tabs.Position = UDim2.new(0, 0, 0, 40)
tabs.Size = UDim2.new(4, 0, 1, -70)

legittab.Name = "legittab"
legittab.Parent = tabs
legittab.BackgroundColor3 = Color3.new(1, 1, 1)
legittab.BackgroundTransparency = 1
legittab.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
legittab.Size = UDim2.new(0.25, 0, 1, 0)

FIRST_legit.Name = "FIRST_legit"
FIRST_legit.Parent = legittab
FIRST_legit.BackgroundColor3 = Color3.new(1, 1, 1)
FIRST_legit.BackgroundTransparency = 1
FIRST_legit.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
FIRST_legit.Size = UDim2.new(1, 0, 1, 0)

antiaimtab.Name = "antiaimtab"
antiaimtab.Parent = tabs
antiaimtab.BackgroundColor3 = Color3.new(1, 1, 1)
antiaimtab.BackgroundTransparency = 1
antiaimtab.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
antiaimtab.Size = UDim2.new(0.25, 0, 1, 0)
antiaimtab.Visible = false

FIRST_antiaim.Name = "FIRST_antiaim"
FIRST_antiaim.Parent = antiaimtab
FIRST_antiaim.BackgroundColor3 = Color3.new(1, 1, 1)
FIRST_antiaim.BackgroundTransparency = 1
FIRST_antiaim.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
FIRST_antiaim.Size = UDim2.new(1, 0, 1, 0)

ragetab.Name = "ragetab"
ragetab.Parent = tabs
ragetab.BackgroundColor3 = Color3.new(1, 1, 1)
ragetab.BackgroundTransparency = 1
ragetab.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
ragetab.Size = UDim2.new(0.25, 0, 1, 0)
ragetab.Visible = false

FIRST_rage.Name = "FIRST_rage"
FIRST_rage.Parent = ragetab
FIRST_rage.BackgroundColor3 = Color3.new(1, 1, 1)
FIRST_rage.BackgroundTransparency = 1
FIRST_rage.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
FIRST_rage.Size = UDim2.new(1, 0, 1, 0)

misctab.Name = "misctab"
misctab.Parent = tabs
misctab.BackgroundColor3 = Color3.new(1, 1, 1)
misctab.BackgroundTransparency = 1
misctab.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
misctab.Size = UDim2.new(0.25, 0, 1, 0)
misctab.Visible = false

local GENERAL = Instance.new("TextButton")
local SKINS = Instance.new("TextButton")
local PERFORMANCE = Instance.new("TextButton")
local SCRIPT = Instance.new("TextButton")
local ICON_SKINS = Instance.new("ImageLabel")
local ICON_GENERAL = Instance.new("ImageLabel")
local ICON_SCRIPT = Instance.new("ImageLabel")
local ICON_PERFORMANCE = Instance.new("ImageLabel")
local FIRST_misc = Instance.new("Frame")
local misc_1 = Instance.new("Frame")
local misc_2 = Instance.new("Frame")
local misc_3 = Instance.new("Frame")
local misc_4 = Instance.new("Frame")
local selection_misctab = Instance.new("ImageLabel")

selection_misctab.Name = "selection_misctab"
selection_misctab.Parent = misctab
selection_misctab.BackgroundColor3 = Color3.new(1, 1, 1)
selection_misctab.BackgroundTransparency = 1
selection_misctab.ClipsDescendants = true
selection_misctab.Position = UDim2.new(0, 15, 0, 10)
selection_misctab.Selectable = true
selection_misctab.Size = UDim2.new(1, -30, 0, 60)
selection_misctab.Image = "rbxassetid://760929926"
selection_misctab.ImageColor3 = Color3.new(0.14902, 0.156863, 0.196078)
selection_misctab.ScaleType = Enum.ScaleType.Slice
selection_misctab.SliceCenter = Rect.new(5, 5, 5, 5)

GENERAL.Name = "GENERAL"
GENERAL.Parent = selection_misctab
GENERAL.BackgroundColor3 = Color3.new(1, 1, 1)
GENERAL.BackgroundTransparency = 1
GENERAL.Position = UDim2.new(0, 30, 0, 0)
GENERAL.Size = UDim2.new(0, 70, 1, -10)
GENERAL.Font = Enum.Font.GothamBold
GENERAL.Text = "GENERAL"
GENERAL.TextColor3 = Color3.new(0.980392, 0.980392, 0.980392)
GENERAL.TextSize = 10
GENERAL.TextYAlignment = Enum.TextYAlignment.Bottom

SKINS.Name = "SKINS"
SKINS.Parent = selection_misctab
SKINS.BackgroundColor3 = Color3.new(1, 1, 1)
SKINS.BackgroundTransparency = 1
SKINS.Position = UDim2.new(0, 255, 0, 0)
SKINS.Size = UDim2.new(0, 70, 1, -10)
SKINS.Font = Enum.Font.GothamBold
SKINS.Text = "SKINS"
SKINS.TextColor3 = Color3.new(0.980392, 0.980392, 0.980392)
SKINS.TextSize = 10
SKINS.TextYAlignment = Enum.TextYAlignment.Bottom

PERFORMANCE.Name = "PERFORMANCE"
PERFORMANCE.Parent = selection_misctab
PERFORMANCE.BackgroundColor3 = Color3.new(1, 1, 1)
PERFORMANCE.BackgroundTransparency = 1
PERFORMANCE.Position = UDim2.new(0, 135, 0, 0)
PERFORMANCE.Size = UDim2.new(0, 70, 1, -10)
PERFORMANCE.Font = Enum.Font.GothamBold
PERFORMANCE.Text = "PERFORMANCE"
PERFORMANCE.TextColor3 = Color3.new(0.980392, 0.980392, 0.980392)
PERFORMANCE.TextSize = 10
PERFORMANCE.TextYAlignment = Enum.TextYAlignment.Bottom

SCRIPT.Name = "SCRIPT"
SCRIPT.Parent = selection_misctab
SCRIPT.BackgroundColor3 = Color3.new(1, 1, 1)
SCRIPT.BackgroundTransparency = 1
SCRIPT.Position = UDim2.new(0, 360, 0, 0)
SCRIPT.Size = UDim2.new(0, 70, 1, -10)
SCRIPT.Font = Enum.Font.GothamBold
SCRIPT.Text = "SCRIPT"
SCRIPT.TextColor3 = Color3.new(0.980392, 0.980392, 0.980392)
SCRIPT.TextSize = 10
SCRIPT.TextYAlignment = Enum.TextYAlignment.Bottom

ICON_SKINS.Name = "ICON_SKINS"
ICON_SKINS.Parent = selection_misctab
ICON_SKINS.BackgroundColor3 = Color3.new(1, 1, 1)
ICON_SKINS.BackgroundTransparency = 1
ICON_SKINS.Position = UDim2.new(0, 278, 0, 8)
ICON_SKINS.Size = UDim2.new(0, 23, 0, 23)
ICON_SKINS.Image = "http://www.roblox.com/asset/?id=2992801749"

ICON_GENERAL.Name = "ICON_GENERAL"
ICON_GENERAL.Parent = selection_misctab
ICON_GENERAL.BackgroundColor3 = Color3.new(1, 1, 1)
ICON_GENERAL.BackgroundTransparency = 1
ICON_GENERAL.Position = UDim2.new(0, 55, 0, 8)
ICON_GENERAL.Size = UDim2.new(0, 23, 0, 23)
ICON_GENERAL.Image = "rbxassetid://183390139"

ICON_SCRIPT.Name = "ICON_SCRIPT"
ICON_SCRIPT.Parent = selection_misctab
ICON_SCRIPT.BackgroundColor3 = Color3.new(1, 1, 1)
ICON_SCRIPT.BackgroundTransparency = 1
ICON_SCRIPT.Position = UDim2.new(0, 383, 0, 8)
ICON_SCRIPT.Size = UDim2.new(0, 23, 0, 23)
ICON_SCRIPT.Image = "http://www.roblox.com/asset/?id=4529595292"

ICON_PERFORMANCE.Name = "ICON_PERFORMANCE"
ICON_PERFORMANCE.Parent = selection_misctab
ICON_PERFORMANCE.BackgroundColor3 = Color3.new(1, 1, 1)
ICON_PERFORMANCE.BackgroundTransparency = 1
ICON_PERFORMANCE.Position = UDim2.new(0, 158, 0, 8)
ICON_PERFORMANCE.Size = UDim2.new(0, 23, 0, 23)
ICON_PERFORMANCE.Image = "http://www.roblox.com/asset/?id=4529590010"
ICON_PERFORMANCE.ScaleType = Enum.ScaleType.Slice

FIRST_misc.Name = "FIRST_misc"
FIRST_misc.Parent = misctab
FIRST_misc.BackgroundColor3 = Color3.new(1, 1, 1)
FIRST_misc.BackgroundTransparency = 1
FIRST_misc.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
FIRST_misc.Position = UDim2.new(0, 0, 0, 70)
FIRST_misc.Size = UDim2.new(1, 0, 1, -70)

misc_1.Name = "misc_1"
misc_1.Parent = FIRST_misc
misc_1.BackgroundColor3 = Color3.new(1, 1, 1)
misc_1.BackgroundTransparency = 1
misc_1.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
misc_1.Size = UDim2.new(1, 0, 1, 0)

misc_2.Name = "misc_2"
misc_2.Parent = FIRST_misc
misc_2.BackgroundColor3 = Color3.new(1, 1, 1)
misc_2.BackgroundTransparency = 1
misc_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
misc_2.Size = UDim2.new(1, 0, 1, 0)
misc_2.Visible = false
misc_3.Name = "misc_3"
misc_3.Parent = FIRST_misc
misc_3.BackgroundColor3 = Color3.new(1, 1, 1)
misc_3.BackgroundTransparency = 1
misc_3.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
misc_3.Size = UDim2.new(1, 0, 1, 0)
misc_3.Visible = false

misc_4.Name = "misc_4"
misc_4.Parent = FIRST_misc
misc_4.BackgroundColor3 = Color3.new(1, 1, 1)
misc_4.BackgroundTransparency = 1
misc_4.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
misc_4.Size = UDim2.new(1, 0, 1, 0)
misc_4.Visible = false
FIRST_misc.Name = "FIRST_misc"
FIRST_misc.Parent = misctab
FIRST_misc.BackgroundColor3 = Color3.new(1, 1, 1)
FIRST_misc.BackgroundTransparency = 1
FIRST_misc.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
FIRST_misc.Size = UDim2.new(1, 0, 1, 0)

visualtab.Name = "visualtab"
visualtab.Parent = tabs
visualtab.BackgroundColor3 = Color3.new(1, 1, 1)
visualtab.BackgroundTransparency = 1
visualtab.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
visualtab.Size = UDim2.new(0.25, 0, 1, 0)
visualtab.Visible = false

FIRST_visual.Name = "FIRST_visual"
FIRST_visual.Parent = visualtab
FIRST_visual.BackgroundColor3 = Color3.new(1, 1, 1)
FIRST_visual.BackgroundTransparency = 1
FIRST_visual.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
FIRST_visual.Position = UDim2.new(0, 0, 0, 70)
FIRST_visual.Size = UDim2.new(1, 0, 1, -70)

local visual_1 = Instance.new("Frame")
local visual_2 = Instance.new("Frame")
local visual_3 = Instance.new("Frame")
local visual_4 = Instance.new("Frame")

visual_1.Name = "visual_1"
visual_1.Parent = FIRST_visual
visual_1.BackgroundColor3 = Color3.new(1, 1, 1)
visual_1.BackgroundTransparency = 1
visual_1.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
visual_1.Size = UDim2.new(1, 0, 1, 0)
visual_1.Visible = true

visual_2.Name = "visual_2"
visual_2.Parent = FIRST_visual
visual_2.BackgroundColor3 = Color3.new(1, 1, 1)
visual_2.BackgroundTransparency = 1
visual_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
visual_2.Size = UDim2.new(1, 0, 1, 0)
visual_2.Visible = false

visual_3.Name = "visual_3"
visual_3.Parent = FIRST_visual
visual_3.BackgroundColor3 = Color3.new(1, 1, 1)
visual_3.BackgroundTransparency = 1
visual_3.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
visual_3.Size = UDim2.new(1, 0, 1, 0)
visual_3.Visible = false

visual_4.Name = "visual_4"
visual_4.Parent = FIRST_visual
visual_4.BackgroundColor3 = Color3.new(1, 1, 1)
visual_4.BackgroundTransparency = 1
visual_4.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
visual_4.Size = UDim2.new(1, 0, 1, 0)
visual_4.Visible = false

selection_visualtab.Name = "selection_visualtab"
selection_visualtab.Parent = visualtab
selection_visualtab.BackgroundColor3 = Color3.new(1, 1, 1)
selection_visualtab.BackgroundTransparency = 1
selection_visualtab.ClipsDescendants = true
selection_visualtab.Position = UDim2.new(0, 15, 0, 10)
selection_visualtab.Selectable = true
selection_visualtab.Size = UDim2.new(1, -30, 0, 60)
selection_visualtab.Image = "rbxassetid://760929926"
selection_visualtab.ImageColor3 = Color3.new(0.14902, 0.156863, 0.196078)
selection_visualtab.ScaleType = Enum.ScaleType.Slice
selection_visualtab.SliceCenter = Rect.new(5, 5, 5, 5)

SELF.Name = "SELF"
SELF.Parent = selection_visualtab
SELF.BackgroundColor3 = Color3.new(1, 1, 1)
SELF.BackgroundTransparency = 1
SELF.Position = UDim2.new(0, 30, 0, 0)
SELF.Size = UDim2.new(0, 70, 1, -10)
SELF.Font = Enum.Font.GothamBold
SELF.Text = "SELF"
SELF.TextColor3 = Color3.new(0.980392, 0.980392, 0.980392)
SELF.TextSize = 10
SELF.TextYAlignment = Enum.TextYAlignment.Bottom

FRIENDLIES.Name = "FRIENDLIES"
FRIENDLIES.Parent = selection_visualtab
FRIENDLIES.BackgroundColor3 = Color3.new(1, 1, 1)
FRIENDLIES.BackgroundTransparency = 1
FRIENDLIES.Position = UDim2.new(0, 255, 0, 0)
FRIENDLIES.Size = UDim2.new(0, 70, 1, -10)
FRIENDLIES.Font = Enum.Font.GothamBold
FRIENDLIES.Text = "FRIENDLIES"
FRIENDLIES.TextColor3 = Color3.new(0.980392, 0.980392, 0.980392)
FRIENDLIES.TextSize = 10
FRIENDLIES.TextYAlignment = Enum.TextYAlignment.Bottom

ENEMIES.Name = "ENEMIES"
ENEMIES.Parent = selection_visualtab
ENEMIES.BackgroundColor3 = Color3.new(1, 1, 1)
ENEMIES.BackgroundTransparency = 1
ENEMIES.Position = UDim2.new(0, 135, 0, 0)
ENEMIES.Size = UDim2.new(0, 70, 1, -10)
ENEMIES.Font = Enum.Font.GothamBold
ENEMIES.Text = "ENEMIES"
ENEMIES.TextColor3 = Color3.new(0.980392, 0.980392, 0.980392)
ENEMIES.TextSize = 10
ENEMIES.TextYAlignment = Enum.TextYAlignment.Bottom

WORLD.Name = "WORLD"
WORLD.Parent = selection_visualtab
WORLD.BackgroundColor3 = Color3.new(1, 1, 1)
WORLD.BackgroundTransparency = 1
WORLD.Position = UDim2.new(0, 360, 0, 0)
WORLD.Size = UDim2.new(0, 70, 1, -10)
WORLD.Font = Enum.Font.GothamBold
WORLD.Text = "WORLD"
WORLD.TextColor3 = Color3.new(0.980392, 0.980392, 0.980392)
WORLD.TextSize = 10
WORLD.TextYAlignment = Enum.TextYAlignment.Bottom

ICON_FRIENDLIES.Name = "ICON_FRIENDLIES"
ICON_FRIENDLIES.Parent = selection_visualtab
ICON_FRIENDLIES.BackgroundColor3 = Color3.new(1, 1, 1)
ICON_FRIENDLIES.BackgroundTransparency = 1
ICON_FRIENDLIES.Position = UDim2.new(0, 278, 0, 8)
ICON_FRIENDLIES.Size = UDim2.new(0, 23, 0, 23)
ICON_FRIENDLIES.Image = "http://www.roblox.com/asset/?id=2484564290"

ICON_SELF.Name = "ICON_SELF"
ICON_SELF.Parent = selection_visualtab
ICON_SELF.BackgroundColor3 = Color3.new(1, 1, 1)
ICON_SELF.BackgroundTransparency = 1
ICON_SELF.Position = UDim2.new(0, 55, 0, 8)
ICON_SELF.Size = UDim2.new(0, 23, 0, 23)
ICON_SELF.Image = "rbxassetid://4529558639"

ICON_WORLD.Name = "ICON_WORLD"
ICON_WORLD.Parent = selection_visualtab
ICON_WORLD.BackgroundColor3 = Color3.new(1, 1, 1)
ICON_WORLD.BackgroundTransparency = 1
ICON_WORLD.Position = UDim2.new(0, 383, 0, 8)
ICON_WORLD.Size = UDim2.new(0, 23, 0, 23)
ICON_WORLD.Image = "http://www.roblox.com/asset/?id=524302408"

ICON_ENEMIES.Name = "ICON_ENEMIES"
ICON_ENEMIES.Parent = selection_visualtab
ICON_ENEMIES.BackgroundColor3 = Color3.new(1, 1, 1)
ICON_ENEMIES.BackgroundTransparency = 1
ICON_ENEMIES.Position = UDim2.new(0, 158, 0, 8)
ICON_ENEMIES.Size = UDim2.new(0, 23, 0, 23)
ICON_ENEMIES.Image = "http://www.roblox.com/asset/?id=4476927981"
ICON_ENEMIES.ScaleType = Enum.ScaleType.Slice

config.Name = "config"
config.Parent = body
config.BackgroundColor3 = Color3.new(1, 1, 1)
config.BackgroundTransparency = 1
config.Position = UDim2.new(1, -35, 1, -25)
config.Size = UDim2.new(0, 25, 0, 25)
config.ZIndex = 10000
config.Image = "http://www.roblox.com/asset/?id=193272460"

username.Name = "username"
username.Parent = body
username.BackgroundColor3 = Color3.new(1, 1, 1)
username.BackgroundTransparency = 1
username.Position = UDim2.new(0, 10, 1, -20)
username.Size = UDim2.new(0, 80, 0, 15)
username.ZIndex = 10000
username.Font = Enum.Font.GothamSemibold
username.Text = "username"
username.TextColor3 = Color3.new(1, 1, 1)
username.TextSize = 12
username.TextStrokeTransparency = 0.94999998807907
username.TextXAlignment = Enum.TextXAlignment.Left

visual.Name = "visual"
visual.Parent = body
visual.BackgroundColor3 = Color3.new(1, 1, 1)
visual.BackgroundTransparency = 1
visual.Position = UDim2.new(0, 333, 0, 3)
visual.Size = UDim2.new(0, 65, 0, 32)
visual.ZIndex = 1231231
visual.Selected = true
visual.Font = Enum.Font.GothamBold
visual.Text = "Visual"
visual.TextColor3 = Color3.new(1, 1, 1)
visual.TextSize = 10

configmain.Name = "configmain"
configmain.Parent = bloxtap
configmain.BackgroundColor3 = Color3.new(1, 1, 1)
configmain.BackgroundTransparency = 1
configmain.Position = UDim2.new(0.5, 109, 0.5, 10)
configmain.Selectable = true
configmain.Size = UDim2.new(0, 218, 0, 20)
configmain.Visible = false
configmain.ZIndex = 1000000
configmain.Image = "rbxassetid://2260429633"
configmain.ImageColor3 = Color3.new(1, 0.784314, 0.403922)
configmain.ScaleType = Enum.ScaleType.Slice
configmain.SliceCenter = Rect.new(12, 12, 13, 13)

configbody.Name = "configbody"
configbody.Parent = configmain
configbody.BackgroundColor3 = Color3.new(1, 1, 1)
configbody.BackgroundTransparency = 1
configbody.ClipsDescendants = true
configbody.Position = UDim2.new(0, 0, 0, 4)
configbody.Selectable = true
configbody.Size = UDim2.new(1, 0, 5.3499999, 100)
configbody.Image = "rbxassetid://760929926"
configbody.ImageColor3 = Color3.new(0.176471, 0.188235, 0.231373)
configbody.ScaleType = Enum.ScaleType.Slice
configbody.SliceCenter = Rect.new(5, 5, 5, 5)

title.Name = "title"
title.Parent = configbody
title.BackgroundColor3 = Color3.new(1, 1, 1)
title.BackgroundTransparency = 1
title.BorderSizePixel = 0
title.Size = UDim2.new(1, 0, 0, 25)
title.Font = Enum.Font.GothamSemibold
title.Text = "Configuration"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextSize = 11

configlist.Name = "configlist"
configlist.Parent = configbody
configlist.BackgroundColor3 = Color3.new(0.2, 0.207843, 0.247059)
configlist.BorderSizePixel = 0
configlist.Position = UDim2.new(0, 10, 0, 30)
configlist.Size = UDim2.new(1, -20, -0.0606060661, 100)
configlist.ScrollBarThickness = 0

listthing.Name = "listthing"
listthing.Parent = configlist
listthing.SortOrder = Enum.SortOrder.LayoutOrder
listthing.Padding = UDim.new(0,1)

createconfig.Name = "createconfig"
createconfig.Parent = configbody
createconfig.BackgroundColor3 = Color3.new(0.14902, 0.156863, 0.196078)
createconfig.BorderSizePixel = 0
createconfig.Position = UDim2.new(0, 10, 0, 180)
createconfig.Size = UDim2.new(1, -20, 0, 20)
createconfig.Font = Enum.Font.GothamSemibold
createconfig.Text = "Create"
createconfig.TextColor3 = Color3.new(1, 1, 1)
createconfig.TextSize = 11
createconfig.TextWrapped = true

saveconfig.Name = "saveconfig"
saveconfig.Parent = configbody
saveconfig.BackgroundColor3 = Color3.new(0.14902, 0.156863, 0.196078)
saveconfig.BorderSizePixel = 0
saveconfig.Position = UDim2.new(0, 10, 0, 127)
saveconfig.Size = UDim2.new(0, 60, 0, 20)
saveconfig.Font = Enum.Font.GothamSemibold
saveconfig.Text = "Save"
saveconfig.TextColor3 = Color3.new(1, 1, 1)
saveconfig.TextSize = 11
saveconfig.TextWrapped = true

loadconfig.Name = "loadconfig"
loadconfig.Parent = configbody
loadconfig.BackgroundColor3 = Color3.new(0.14902, 0.156863, 0.196078)
loadconfig.BorderSizePixel = 0
loadconfig.Position = UDim2.new(0, 79, 0, 127)
loadconfig.Size = UDim2.new(0, 60, 0, 20)
loadconfig.Font = Enum.Font.GothamSemibold
loadconfig.Text = "Load"
loadconfig.TextColor3 = Color3.new(1, 1, 1)
loadconfig.TextSize = 11
loadconfig.TextWrapped = true

deleteconfig.Name = "deleteconfig"
deleteconfig.Parent = configbody
deleteconfig.BackgroundColor3 = Color3.new(0.14902, 0.156863, 0.196078)
deleteconfig.BorderSizePixel = 0
deleteconfig.Position = UDim2.new(0, 148, 0, 127)
deleteconfig.Size = UDim2.new(0, 60, 0, 20)
deleteconfig.Font = Enum.Font.GothamSemibold
deleteconfig.Text = "Delete"
deleteconfig.TextColor3 = Color3.new(1, 1, 1)
deleteconfig.TextSize = 11
deleteconfig.TextWrapped = true

filename.Name = "filename"
filename.Parent = configbody
filename.BackgroundColor3 = Color3.new(0.14902, 0.156863, 0.196078)
filename.BorderSizePixel = 0
filename.Position = UDim2.new(0, 10, 0, 153)
filename.Size = UDim2.new(1, -20, 0, 20)
filename.Font = Enum.Font.GothamSemibold
filename.PlaceholderColor3 = Color3.new(0.545098, 0.545098, 0.545098)
filename.PlaceholderText = "File Name"
filename.Text = ""
filename.TextColor3 = Color3.new(1, 1, 1)
filename.TextSize = 11

local line3 = Instance.new("Frame")
local line2 = Instance.new("Frame")
local line1 = Instance.new("Frame")
local line = Instance.new("Frame")

line3.Name = "line3"
line3.Parent = lines
line3.BackgroundColor3 = Color3.new(0.211765, 0.231373, 0.247059)
line3.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
line3.BorderSizePixel = 0
line3.Position = UDim2.new(0, 80, 0, 6)
line3.Size = UDim2.new(0, 1, 0, 28)
line3.ZIndex = 123131

line2.Name = "line2"
line2.Parent = lines
line2.BackgroundColor3 = Color3.new(0.211765, 0.231373, 0.247059)
line2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
line2.BorderSizePixel = 0
line2.Position = UDim2.new(0, 10, 1, -27)
line2.Selectable = true
line2.Size = UDim2.new(1, -20, 0, 1)
line2.ZIndex = 123131

line1.Name = "line1"
line1.Parent = lines
line1.BackgroundColor3 = Color3.new(0.211765, 0.231373, 0.247059)
line1.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
line1.BorderSizePixel = 0
line1.Position = UDim2.new(0, 10, 0, 40)
line1.Size = UDim2.new(1, -20, 0, 1)
line1.ZIndex = 123131

line.Name = "line"
line.Parent = body
line.BackgroundColor3 = Color3.new(0.176471, 0.188235, 0.231373)
line.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
line.BorderSizePixel = 0
line.Position = UDim2.new(0, 10, 1, -26)
line.Selectable = true
line.Size = UDim2.new(1, -20, 0, 26)
line.ZIndex = 100

local configfolder = Instance.new("Folder",bloxtap)
configfolder.Name = "configfolder"

get = function(str)
	local r = loadstring(game:HttpGet("http://rustedstyle.com/bloxtap_assets/"..str..'.lua',true))()
	return r
end

antiaim.MouseButton1Click:connect(function()
	selection:TweenPosition(UDim2.new(0,antiaim.Position.X.Offset+7,0,10),"Out","Quad",0.1,true,nil)
	for i,v in pairs(tabs:GetChildren()) do if v == antiaimtab then v.Visible = true else v.Visible = false end end
end)
legit.MouseButton1Click:connect(function()
	selection:TweenPosition(UDim2.new(0,legit.Position.X.Offset+4,0,10),"Out","Quad",0.1,true,nil)
	for i,v in pairs(tabs:GetChildren()) do if v == legittab then v.Visible = true else v.Visible = false end end
end)
misc.MouseButton1Click:connect(function()
	selection:TweenPosition(UDim2.new(0,misc.Position.X.Offset+4,0,10),"Out","Quad",0.1,true,nil)
	for i,v in pairs(tabs:GetChildren()) do if v == misctab then v.Visible = true else v.Visible = false end end
end)
rage.MouseButton1Click:connect(function()
	selection:TweenPosition(UDim2.new(0,rage.Position.X.Offset+4,0,10),"Out","Quad",0.1,true,nil)
	for i,v in pairs(tabs:GetChildren()) do if v == ragetab then v.Visible = true else v.Visible = false end end
end)
visual.MouseButton1Click:connect(function()
	selection:TweenPosition(UDim2.new(0,visual.Position.X.Offset,0,10),"Out","Quad",0.1,true,nil)
	for i,v in pairs(tabs:GetChildren()) do if v == visualtab then v.Visible = true else v.Visible = false end end
end)

body.Changed:Connect(function()
	main.Size = UDim2.new(0, 490, 0, body.Size.Y.Offset)
end)

config.MouseButton1Click:connect(function()
	configmain.Visible = (not configmain.Visible)
end)

function addcategory(info)
	local category = Instance.new("Frame")
	local scrolldesign = Instance.new("ImageLabel")
	local top = Instance.new("Frame")
	local title = Instance.new("TextLabel")
	local content = Instance.new("ScrollingFrame")
	local sizefixer = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	
	category.Name = "category"
	category.BackgroundColor3 = Color3.new(0.176471, 0.188235, 0.231373)
	category.BorderColor3 = Color3.new(0.211765, 0.231373, 0.247059)
	category.Size = UDim2.new(0, 225, 0, info['lenght'])
	
	local postoday; 
	if #info["parent"]:GetChildren() == 0 then
		postoday = UDim2.new(0,10,0,10)
	else
		if (info["parent"]:GetChildren()[#info["parent"]:GetChildren()].Size.Y.Offset - info["parent"]:GetChildren()[#info["parent"]:GetChildren()].Position.Y.Offset) <= 150 then
			if info["parent"]:GetChildren()[#info["parent"]:GetChildren()].Position.Y.Offset == 10 then
				postoday = UDim2.new(0, info["parent"]:GetChildren()[#info["parent"]:GetChildren()].Position.X.Offset, 0, info["parent"]:GetChildren()[#info["parent"]:GetChildren()].Size.Y.Offset + 20)
			else
				postoday = UDim2.new(0, info["parent"]:GetChildren()[#info["parent"]:GetChildren()].Size.X.Offset + 25, 0, 10)
			end
		else
			postoday = UDim2.new(0, info["parent"]:GetChildren()[#info["parent"]:GetChildren()].Size.X.Offset + 25, 0, 10)
		end
	end
	category.Position = postoday
	category.Parent = info['parent']
	
	scrolldesign.Name = "scrolldesign"
	scrolldesign.Parent = category
	scrolldesign.BackgroundColor3 = Color3.new(1, 1, 1)
	scrolldesign.BackgroundTransparency = 1
	scrolldesign.Position = UDim2.new(1, -5, 0, 5)
	scrolldesign.Size = UDim2.new(0, 5, 1, -18)
	scrolldesign.ZIndex = -2
	scrolldesign.Image = "rbxassetid://2260429633"
	scrolldesign.ImageColor3 = Color3.new(0.121569, 0.129412, 0.156863)
	scrolldesign.ScaleType = Enum.ScaleType.Slice
	scrolldesign.SliceCenter = Rect.new(12, 12, 13, 13)
	
	top.Name = "top"
	top.Parent = category
	top.BackgroundColor3 = Color3.new(1, 0.784314, 0.403922)
	top.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
	top.BorderSizePixel = 0
	top.Size = UDim2.new(1, 0, 0, 1)
	top.ZIndex = 10000
	
	title.Name = "title"
	title.Parent = top
	title.AnchorPoint = Vector2.new(0.5, 0.5)
	title.BackgroundColor3 = Color3.new(0.176471, 0.188235, 0.231373)
	title.BorderSizePixel = 0
	title.Position = UDim2.new(0.5, 0, 0, 0)
	title.Font = Enum.Font.GothamSemibold
	title.Text = info['title']
	title.Size = UDim2.new(0, title.TextBounds.X+20, 0, 10)
	title.TextColor3 = Color3.new(1, 1, 1)
	title.TextSize = 11
	title.TextStrokeTransparency = 0.94999998807907
	
	content.Name = "content"
	content.Parent = category
	content.BackgroundColor3 = Color3.new(1, 1, 1)
	content.BackgroundTransparency = 1
	content.BorderSizePixel = 0
	content.Size = UDim2.new(1, 0, 1, 0)
	content.BottomImage = ""
	content.MidImage = "http://www.roblox.com/asset/?id=1080024588"
	content.ScrollBarThickness = 5
	content.TopImage = ""
	content.CanvasSize = UDim2.new(0, 0, 5, 0)
	
	sizefixer.Name = "sizefixer"
	sizefixer.Parent = content
	sizefixer.BackgroundColor3 = Color3.new(1, 1, 1)
	sizefixer.BackgroundTransparency = 1
	sizefixer.Size = UDim2.new(1, 0, 0, 10)
	
	UIListLayout.Parent = content
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	
	return content
end
function addbutton(info,callback)
	callback = callback or function() end
	local button = Instance.new("Frame")
	local real = Instance.new("TextButton")
	
	button.Name = "button"
	button.Parent = info['parent']
	button.BackgroundColor3 = Color3.new(1, 1, 1)
	button.BackgroundTransparency = 1
	button.Size = UDim2.new(0, 6, 0, 23)
	
	real.Name = "real"
	real.Parent = button
	real.BackgroundColor3 = Color3.new(0.121569, 0.12549, 0.156863)
	real.BorderSizePixel = 0
	real.Position = UDim2.new(1, 21, 0, 0)
	real.Size = UDim2.new(0, 151, 0, 18)
	real.Font = Enum.Font.GothamSemibold
	real.Text = info['text']
	real.TextSize = 11
	
	real.TextColor3 = Color3.fromRGB(250, 250, 250)
	real.MouseButton1Click:connect(callback)
	
	real.MouseEnter:connect(function() real.TextColor3 = Color3.fromRGB(255, 200, 103) end)
	real.MouseLeave:connect(function() real.TextColor3 = Color3.new(0.980392, 0.980392, 0.980392) end)
end

function addtoggle(info,callback)
	callback = callback or function() end
	
	local toggle = Instance.new("Frame")
	local title = Instance.new("TextLabel")
	local border = Instance.new("ImageLabel")
	local button = Instance.new("ImageButton")
	
	toggle.Name = "toggle"
	toggle.Parent = info['parent']
	toggle.BackgroundColor3 = Color3.new(1, 1, 1)
	toggle.BackgroundTransparency = 1
	toggle.Size = UDim2.new(0, 6, 0, 21)
	
	title.Name = "title"
	title.Parent = toggle
	title.BackgroundColor3 = Color3.new(1, 1, 1)
	title.BorderSizePixel = 0
	title.Position = UDim2.new(1, 21, 0, -4)
	title.Size = UDim2.new(0, 0, 1, 0)
	title.Font = Enum.Font.GothamSemibold
	title.Text = info['title']
	title.TextColor3 = Color3.new(1, 1, 1)
	title.TextSize = 11
	title.TextXAlignment = Enum.TextXAlignment.Left
	
	border.Name = "border"
	border.Parent = toggle
	border.BackgroundColor3 = Color3.new(1, 1, 1)
	border.BackgroundTransparency = 1
	border.Position = UDim2.new(1, 0, 0, 0)
	border.Size = UDim2.new(0, 14, 0, 14)
	border.Image = "rbxassetid://2260429633"
	border.ImageColor3 = Color3.new(0.211765, 0.231373, 0.247059)
	
	border.MouseEnter:connect(function() border.ImageColor3 = Color3.fromRGB(255, 200, 103) end)
	border.MouseLeave:connect(function() border.ImageColor3 = Color3.new(0.211765, 0.231373, 0.247059) end)
	
	button.Name = "button"
	button.Parent = border
	button.BackgroundColor3 = Color3.new(0.121569, 0.12549, 0.156863)
	button.BackgroundTransparency = 1
	button.BorderColor3 = Color3.new(0.211765, 0.223529, 0.25098)
	button.Position = UDim2.new(0, 1, 0, 1)
	button.Size = UDim2.new(1, -2, 1, -2)
	button.ZIndex = 2
	button.AutoButtonColor = false
	button.Image = "rbxassetid://2260429633"
	button.ImageColor3 = Color3.new(0.121569, 0.12549, 0.156863)
	button.ScaleType = Enum.ScaleType.Slice
	button.SliceCenter = Rect.new(12, 12, 13, 13)

	local fap = Instance.new("BoolValue",configfolder)
	fap.Name = info['valuename']
	fap.Value = info['value'] or false
	
	fap.Changed:connect(function(c)
		button.ImageColor3 = (fap.Value and Color3.fromRGB(255, 200, 103) or Color3.fromRGB(31, 32, 40))
		callback(fap.Value)
	end)
	
	button.MouseButton1Click:connect(function()
		fap.Value = (not fap.Value)
	end)
end

function adddropdown(info,callback)
	callback = callback or function() end
	local dropdown = Instance.new("Frame")
	local body = Instance.new("Frame")
	local click = Instance.new("ImageButton")
	local title = Instance.new("TextLabel")
	local drop = Instance.new("Frame")
	local listthing = Instance.new("UIListLayout")
	
	
	
	local fap = Instance.new("StringValue",configfolder)
	fap.Name = info['valuename']
	fap.Value = tostring(info['list'][1])
	
	dropdown.Name = "dropdown"
	dropdown.Parent = info['parent']
	dropdown.BackgroundColor3 = Color3.new(1, 1, 1)
	dropdown.BackgroundTransparency = 1
	dropdown.Position = UDim2.new(0, 0, 0.589999974, 0)
	dropdown.Size = UDim2.new(0, 27, 0, 24)
	dropdown.ZIndex = 100000000000000
	
	body.Name = "body"
	body.Parent = dropdown
	body.BackgroundColor3 = Color3.new(0.121569, 0.12549, 0.156863)
	body.BorderColor3 = Color3.new(0.211765, 0.223529, 0.25098)
	body.Position = UDim2.new(1, 0, 0, 0)
	body.Size = UDim2.new(0, 130, 0, 18)
	
	click.Parent = body
	click.BackgroundColor3 = Color3.new(1, 1, 1)
	click.BackgroundTransparency = 1
	click.Position = UDim2.new(1, -15, 0, 5)
	click.Size = UDim2.new(0, 9, 0, 9)
	click.Image = "http://www.roblox.com/asset/?id=1248849582"
	
	click.MouseEnter:connect(function() click.ImageColor3 = Color3.fromRGB(255, 200, 103) end)
	click.MouseLeave:connect(function() click.ImageColor3 = Color3.fromRGB(255,255,255) end)
	
	title.Name = "title"
	title.Parent = body
	title.BackgroundColor3 = Color3.new(1, 1, 1)
	title.BackgroundTransparency = 1
	title.BorderSizePixel = 0
	title.Position = UDim2.new(0, 7, 0, 0)
	title.Size = UDim2.new(1, 0, 1, 0)
	title.Font = Enum.Font.GothamSemibold
	title.Text = tostring(info['list'][1])
	title.TextColor3 = Color3.new(1, 1, 1)
	title.TextSize = 11
	title.TextXAlignment = Enum.TextXAlignment.Left
	
	drop.Name = "drop"
	drop.Parent = body
	drop.BackgroundColor3 = Color3.new(0.121569, 0.12549, 0.156863)
	drop.BorderColor3 = Color3.new(0.211765, 0.223529, 0.25098)
	drop.BorderSizePixel = 0
	drop.ClipsDescendants = true
	drop.Position = UDim2.new(0, 0, 1, 1)
	drop.Size = UDim2.new(0, 130, 0, #info['list']*18)
	drop.Visible = false
	drop.ZIndex = 100000000
	
	listthing.Name = "listthing"
	listthing.Parent = drop
	listthing.SortOrder = Enum.SortOrder.LayoutOrder
	
	for _,name in pairs(info['list']) do
		local dropbutton = Instance.new("TextButton")
		
		dropbutton.Name = "dropbutton"
		dropbutton.Parent = drop
		dropbutton.BackgroundColor3 = Color3.new(1, 1, 1)
		dropbutton.BackgroundTransparency = 1
		dropbutton.Size = UDim2.new(1, 0, 0, 18)
		dropbutton.Font = Enum.Font.GothamSemibold
		dropbutton.Text = tostring(name)
		dropbutton.TextColor3 = Color3.new(0.980392, 0.980392, 0.980392)
		dropbutton.TextSize = 11
		
		dropbutton.MouseEnter:connect(function() dropbutton.TextColor3 = Color3.fromRGB(255, 200, 103) end)
		dropbutton.MouseLeave:connect(function() dropbutton.TextColor3 = Color3.new(0.980392, 0.980392, 0.980392) end)
		dropbutton.MouseButton1Click:Connect(function()
			fap.Value = tostring(name)
		end)
	end
	
	fap.Changed:connect(function()
		drop.Visible = false
		click.Rotation = 0
		title.Text = fap.Value
		body.BorderColor3 = Color3.fromRGB(54, 57, 64)
		callback(fap.Value)
	end)
	
	click.MouseButton1Click:connect(function()
		if click.Rotation == 0 then click.Rotation = -180;body.BorderColor3 = Color3.fromRGB(255, 200, 103); drop.Visible = true else click.Rotation = 0; drop.Visible = false;body.BorderColor3 = Color3.fromRGB(54, 57, 64) end
	end)
end
local indicator = Instance.new("Frame")
local value = Instance.new("TextLabel")

indicator.Name = "indicator"
indicator.Parent = game
indicator.BackgroundColor3 = Color3.new(0.141176, 0.14902, 0.188235)
indicator.BorderColor3 = Color3.new(0.168627, 0.184314, 0.196078)
indicator.Size = UDim2.new(0, 20, 0, 20)
indicator.ZIndex = 1000000000000000000000
indicator.Position = UDim2.new(1, -30, 1, 1)

value.Name = "value"
value.Parent = indicator
value.BackgroundColor3 = Color3.new(1, 1, 1)
value.BackgroundTransparency = 1
value.BorderSizePixel = 0
value.Position = UDim2.new(0, 1, 0, 0)
value.Size = UDim2.new(1, 0, 1, 0)
value.Font = Enum.Font.GothamSemibold
value.Text = "69"
value.TextColor3 = Color3.new(1, 1, 1)
value.TextSize = 11
local scrollon = nil
function addscroll(info,callback)
	callback = callback or function() end
	local scrolling = Instance.new("Frame")
	local title = Instance.new("TextLabel")
	local max = Instance.new("ImageLabel")
	local scroll = Instance.new("ImageLabel")
	
	local fap = Instance.new("NumberValue",configfolder)
	fap.Name = info['valuename']
	fap.Value = info['value'] or 0
	
	fap.Changed:connect(function(c)
		callback(fap.Value)
		scroll:TweenSize(UDim2.new(fap.value/info['maxed'], 5, 0, 4), 'Out', 'Quad', 0.2, true);
	end)
	
	scrolling.Name = "scrolling"
	scrolling.Parent = info['parent']
	scrolling.BackgroundColor3 = Color3.new(1, 1, 1)
	scrolling.BackgroundTransparency = 1
	scrolling.Position = UDim2.new(0, 0, 0.300000012, 0)
	scrolling.Size = UDim2.new(0, 18, 0, 25)
	
	title.Name = "title"
	title.Parent = scrolling
	title.BackgroundColor3 = Color3.new(1, 1, 1)
	title.BorderSizePixel = 0
	title.Position = UDim2.new(1, 10, 0, -2)
	title.Size = UDim2.new(0, 0, 1, 0)
	title.Font = Enum.Font.GothamSemibold
	title.Text = info['title']
	title.TextColor3 = Color3.new(1, 1, 1)
	title.TextSize = 11
	title.TextXAlignment = Enum.TextXAlignment.Left
	title.TextYAlignment = Enum.TextYAlignment.Top
	
	max.Name = "max"
	max.Parent = scrolling
	max.BackgroundColor3 = Color3.new(1, 1, 1)
	max.BackgroundTransparency = 1
	max.Position = UDim2.new(0, 28, 0, 14)
	max.Size = UDim2.new(0, 150, 0, 4)
	max.Image = "rbxassetid://2260429633"
	max.ImageColor3 = Color3.new(0.141176, 0.14902, 0.188235)
	max.ScaleType = Enum.ScaleType.Slice
	max.SliceCenter = Rect.new(12, 12, 13, 13)
	
	scroll.Name = "scroll"
	scroll.Parent = max
	scroll.BackgroundColor3 = Color3.new(1, 1, 1)
	scroll.BackgroundTransparency = 1
	scroll.Size = UDim2.new(0.689999998, 0, 0, 4)
	scroll.Image = "rbxassetid://2260429633"
	scroll.ImageColor3 = Color3.new(1, 0.784314, 0.403922)
	scroll.ScaleType = Enum.ScaleType.Slice
	scroll.SliceCenter = Rect.new(12, 12, 13, 13)
	
	scroll:TweenSize(UDim2.new((info['value']/info['maxed'])/info['maxed'], 5, 0, 4), 'Out', 'Quad', 0.2, true);

	local mouse = game:GetService("Players").LocalPlayer:GetMouse();
	--[[mouse.Button1Down:connect(function()
		down = true
	end)
	mouse.Button1Up:connect(function()
		down = false
		scrollon = false
	end)--]]
	local inputService = game:GetService('UserInputService');
	local heartbeat = game:GetService("RunService").Heartbeat;
	local s, event = pcall(function()
		return scroll.MouseEnter
	end)

	    if s then
	    	scroll.Active = true;

	    	event:connect(function()
	    		local input = scroll.InputBegan:connect(function(key)
	    			if key.UserInputType == Enum.UserInputType.MouseButton1 then
	    				local objectPosition = Vector2.new(mouse.X - scroll.AbsoluteSize.X, mouse.Y - scroll.AbsoluteSize.Y);
	    				while heartbeat:wait() and inputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
	    					local yes = mouse.X - objectPosition.X + (scroll.Size.X.Offset * scroll.AnchorPoint.X)
							scrollon = scroll
							indicator.Parent = scroll
							if -1 > yes then
								value.Text = '0'
								fap.Value = 0
								--scroll:TweenSize(UDim2.new(0, 0, 0, 4), 'Out', 'Quad', 0.1, true);
							elseif 151 >= yes then
								fap.Value = math.floor((yes/150)*info['maxed'])
								value.Text = math.floor((yes/150)*info['maxed'])
								--scroll:TweenSize(UDim2.new(0, yes, 0, 4), 'Out', 'Quad', 0.1, true);
							else
								fap.Value = info['maxed']
								value.Text = info['maxed']
								--scroll:TweenSize(UDim2.new(0, 150, 0, 4), 'Out', 'Quad', 0.1, true);
							end
							indicator.Size = UDim2.new(0, value.TextBounds.X+10, 0, 20)
						end
						indicator.Parent = game
						scrollon = nil
	    			end
	    		end)

	    		local leave;
	    		leave = scroll.MouseLeave:connect(function()
	    			input:disconnect();
	    			leave:disconnect();
	    		end)
	    	end)
	    end
end

local CharacterRage = addcategory({parent=FIRST_rage,title='Character',lenght=100})

addtoggle({parent=CharacterRage,title='Fire Damage Bypass',valuename='antifire'}, function(bruh) end)

addtoggle({parent=CharacterRage,title='Fall Damage Bypass',valuename='nofalldamage'}, function(bruh) end)

for i,v in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do 
	if v.Name == "WalkSpeed" then 
		Instance.new('Sky',v).Name = v.Value
	end
end

addtoggle({parent=CharacterRage,title='Bunny Hop',valuename='bhop'}, function(bruh) 
	for i,v in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do 
		if v.Name == "WalkSpeed" then 
			if bruh == true then
				v.Value = 6969
			else
				v.Value = tonumber(v:GetChildren()[1].Name)
			end
		end
	end
end)

addtoggle({parent=CharacterRage,title='Auto Hop',valuename='autohop'}, function(bruh) 
	
end)

--[[ OP P100000000000 ANTI AIM
	while wait() do 
	game.Players.LocalPlayer.Character.HumanoidRootPart.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,1000,0)
	game.Players.LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0,-1000,0)
	wait() 
	game.Players.LocalPlayer.Character.HumanoidRootPart.Position = game.Players.LocalPlayer.Character.Head.Position + Vector3.new(0,-1.5,0)
	game.Players.LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0,0,0)
end
	--]]

local EnvironmentRage = addcategory({parent=FIRST_rage,title='Environment',lenght=100})

local GunModRage = addcategory({parent=FIRST_rage,title='Gun Mods',lenght=140})

addtoggle({parent=GunModRage,title='Ammo',valuename='infammo'}, function(bruh)
	weaponMOD(bruh,'Ammo',999999999999999999)
end)

addtoggle({parent=GunModRage,title='Recoil',valuename='recoil'}, function(bruh)
	weaponMOD(bruh,'AngleY',0)
	weaponMOD(bruh,'AngleX',0)
end)

addtoggle({parent=GunModRage,title='Automatic',valuename='automatic'}, function(bruh)
	weaponMOD(bruh,'Auto',true)
end)
addtoggle({parent=GunModRage,title='Penetration',valuename='wallpenetration'}, function(bruh)
	weaponMOD(bruh,'Penetration',999999999999999999)
end)
addtoggle({parent=GunModRage,title='Reload',valuename='fastreload'}, function(bruh)
	weaponMOD(bruh,'ReloadTime',0.0055)
end)
addtoggle({parent=GunModRage,title='Fire rate',valuename='firerate'}, function(bruh)
	weaponMOD(bruh,'FireRate',0.0055)
end)
addtoggle({parent=GunModRage,title='Instant Kill',valuename='instantkill'}, function(bruh)
end)

local TrollRage = addcategory({parent=FIRST_rage,title='Troll',lenght=100})


--addtoggle({parent=TrollRage,title='Speed Hack',valuename='speedhack'}, function(bruh) end)


adddropdown({parent=TrollRage,valuename='chattype',list={'Select Chat Type','Alive','Dead'}},function(y)
	
end)



addtoggle({parent=TrollRage,title='Grenade Walk',valuename='grenadewalk'}, function(bruh) end)

adddropdown({parent=TrollRage,valuename='grenadewalktype',list={'Molotov','HE Grenade','Smoke Grenade','Decoy Grenade','Flashbang'}},function(y)
	
end)
addtoggle({parent=EnvironmentRage,title='Auto Rejoin',valuename='autorejoin'}, function(bruh) 
	
end)

addbutton({parent=EnvironmentRage,text='Plant C4'},function()
	if game:GetService("Players").LocalPlayer.Character then
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(game:GetService("Workspace").Map.SpawnPoints.C4Plant.CFrame)
		game.Players.LocalPlayer.Character.Head.Anchored = true
		delay(0.3, function()
			if 4 > (game:GetService("Players").LocalPlayer.Character.Head.CFrame.p - game:GetService("Workspace").Map.SpawnPoints.C4Plant.CFrame.p).Magnitude then
				local oh1 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				game:GetService("ReplicatedStorage").Events.PlantC4:FireServer(oh1, 'A')
				game:GetService("ReplicatedStorage").Events.PlantC4:FireServer(oh1, 'B')
				wait(0.3)
				game.Players.LocalPlayer.Character.Head.Anchored = false
			end
		end)
	end
end)
local C4_ = game:GetService("ReplicatedStorage").Weapons['C4']
local Karambit_ = game:GetService("ReplicatedStorage").Weapons['Karambit']
local a = 10
local b = 90
local c = false
local d = game:GetService("Players").LocalPlayer
local e = false
local f = false
addbutton({parent=EnvironmentRage,text='Crash Server'},function()
	if lplr.Character then
		game:GetService("RunService").RenderStepped:Connect(function()
			local oh3 = 25
			local oh4 = 35
			local oh6 = ""
			local oh7 = ""
			game:GetService("ReplicatedStorage").Events.ThrowGrenade:FireServer(game:GetService("ReplicatedStorage").Weapons["Molotov"].Model, nil, oh3, oh4, Vector3.new(0,-100,0), oh6, oh7)
			game:GetService("ReplicatedStorage").Events.ThrowGrenade:FireServer(game:GetService("ReplicatedStorage").Weapons["HE Grenade"].Model, nil, oh3, oh4, Vector3.new(0,-100,0), oh6, oh7)
			game:GetService("ReplicatedStorage").Events.ThrowGrenade:FireServer(game:GetService("ReplicatedStorage").Weapons["Decoy Grenade"].Model, nil, oh3, oh4, Vector3.new(0,-100,0), oh6, oh7)
		end)
	end
end)
addbutton({parent=TrollRage,text='Kill All'},function()
	for i,v in pairs(game.Players:GetPlayers()) do 
		if v.Character and v ~= game.Players.LocalPlayer and v.TeamColor ~= game.Players.LocalPlayer.TeamColor then
			local oh1 = v.Character.Head
			local oh2 = v.Character.Head.CFrame.p
			local oh3 = "AWP"
			local oh4 = 4096
			local oh5 = game.Players.LocalPlayer.Character.Gun
			local oh8 = 15
			local oh9 = false
			local oh10 = false
			local oh11 = Vector3.new(-126.878326, 353.474854, 49.3892708)
			local oh12 = 16868
			local oh13 = Vector3.new(0, 0, -1)
			game:GetService("ReplicatedStorage").Events.HitPart:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13)
		end
	end
end)
addbutton({parent=TrollRage,text='Spawn C4'},function()
	if game:GetService("Players").LocalPlayer.Character then
		local oh2 = CFrame.new(workspace.CurrentCamera.CFrame.p,game:GetService("Players").LocalPlayer.Character.Head.CFrame.p + Vector3.new(0, 1.69, 0))
		game:GetService("ReplicatedStorage").Events.Drop:FireServer(C4_, oh2, a, b, c, d, e, f)
	else
		local oh2 = CFrame.new(workspace.CurrentCamera.CFrame.p, workspace.CurrentCamera.CFrame.p + Vector3.new(0, 1.69, 0))
		game:GetService("ReplicatedStorage").Events.Drop:FireServer(C4_, oh2, a, b, c, d, e, f)
	end
end)

local EffectsLegit = addcategory({parent=FIRST_legit,title='Effects',lenght=100})

addtoggle({parent=EffectsLegit,title='Hitmark Sound',valuename='hitsound'}, function(bruh) end)



local AimbotLegit = addcategory({parent=FIRST_legit,title='Aimbot',lenght=100})

addtoggle({parent=AimbotLegit,title='Triggerbot',valuename='triggerbot'}, function(bruh) end)

addtoggle({parent=AimbotLegit,title='No Team Check',valuename='noteamcheck'}, function(bruh) end)

local SilentAimLegit = addcategory({parent=FIRST_legit,title='Backtracking',lenght=90})

addtoggle({parent=SilentAimLegit,title='Backtrack',valuename='backtrack'}, function(bruh) end)

local SilentAimLegit = addcategory({parent=FIRST_legit,title='Silent Aim',lenght=100})

addtoggle({parent=SilentAimLegit,title='Silent Aimbot',valuename='silentaim'}, function(bruh) end)

addscroll({parent=SilentAimLegit,valuename='silentaimfov',title='FOV',maxed=500,value=0},function(y)
	fovview.Size = UDim2.new(0, y*2, 0, y*2)
end)
addscroll({parent=SilentAimLegit,valuename='headshothitchance',title='Headshot Hit Chance',maxed=100,value=0},function(y)
end)
addscroll({parent=SilentAimLegit,valuename='bodyhitchance',title='Body Hit Chance',maxed=100,value=0},function(y)
end)

local ConfigurationAntiAim = addcategory({parent=FIRST_antiaim,title='Configuration',lenght=90})

addscroll({parent=ConfigurationAntiAim,valuename='aasmooth',title='Turn Smoothness',maxed=10000,value=0},function(y)	end)

addscroll({parent=ConfigurationAntiAim,valuename='aaspeed',title='Spin Speed',maxed=100000,value=0},function(y)	end)

addscroll({parent=ConfigurationAntiAim,valuename='downscale',title='Down Scale',maxed=100,value=0},function(y)
	game.ReplicatedStorage.Events.ControlTurn:FireServer(-((y*0.05) + 0.96247750520706))
end)

local CharacterAntiAim = addcategory({parent=FIRST_antiaim,title='General',lenght=140})

addbutton({parent=TrollRage,text='Invisible'},function()
	InitiateAA()
end)

--[[addbutton({parent=TrollRage,text='Unhittable (buggy)'},function()
	if lplr.Character and not lplr:FindFirstChild('XDDLA') then
		Instance.new('Sky',lplr.Character).Name = 'XDDLA'
		local baby = lplr.Character
		while baby.Parent == workspace do 
			delay(0,function()
				game.Players.LocalPlayer.Character.HumanoidRootPart.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,1000,0)
				cameraoffset = true
			end)
			wait()
			delay(0,function()
				game.Players.LocalPlayer.Character.HumanoidRootPart.Position = game.Players.LocalPlayer.Character.Head.Position + Vector3.new(0,-1.5,0)
				cameraoffset = false
			end)
			wait()
		end
	end
end)--]]

addtoggle({parent=CharacterAntiAim,title='Down',valuename='down'}, function(bruh) end)

addtoggle({parent=CharacterAntiAim,title='Yaw',valuename='yaw'}, function(bruh) end)

adddropdown({parent=CharacterAntiAim,valuename='yawtype',list={'Keybind','Jitter','Reversed','Manual','Spin'}},function(y)
	
end)

addscroll({parent=CharacterAntiAim,valuename='yawmanual',title='Yaw',maxed=300,value=0},function(y)
end)

local WorldVisuals = addcategory({parent=visual_4,title='Environment',lenght=100})

addtoggle({parent=CharacterAntiAim,title='Global Shadows',valuename='globalshadows'}, function(bruh) 
	game.Lighting.GlobalShadows = bruh
end)

local MiscellaneousAntiAim = addcategory({parent=FIRST_antiaim,title='Miscellaneous',lenght=120})

addtoggle({parent=MiscellaneousAntiAim,title='No Animations',valuename='noanimations'}, function(bruh) end)

addtoggle({parent=MiscellaneousAntiAim,title='Anti Headshot',valuename='antiheadshot'}, function(bruh) end)


addtoggle({parent=MiscellaneousAntiAim,title='No Accessories',valuename='noaccessories'}, function(bruh)
end)
addtoggle({parent=MiscellaneousAntiAim,title='No Cloth',valuename='nocloth'}, function(bruh)
end)
local oldbrightness = game:GetService("Lighting").Brightness
local oldtime = game:GetService("Lighting").TimeOfDay

addtoggle({parent=WorldVisuals,title='Nightmode',valuename='nightmode'},function(callback)
	if callback == true then
		game:GetService("Lighting").Brightness = 0
		game:GetService("Lighting").TimeOfDay = 0
		spawn(function()
			wait(1)
			while _G['property_nightmode'] == true do
				game:GetService("Lighting").Brightness = 0
				game:GetService("Lighting").TimeOfDay = 0
				wait(1)
			end
		end)
	else
		game:GetService("Lighting").Brightness = oldbrightness
		game:GetService("Lighting").TimeOfDay = oldtime
	end
end)
addscroll({parent=WorldVisuals,valuename='brightness',title='Brightness',maxed=100,value=0},function(y)
	CC.Brightness = y/100
end)
addscroll({parent=WorldVisuals,valuename='contrast',title='Contrast',maxed=100,value=0},function(y)
	CC.Contrast = y/100
end)
addscroll({parent=WorldVisuals,valuename='saturation',title='Saturation',maxed=100,value=0},function(y)
	CC.Saturation = y/100
end)

SELF.MouseButton1Click:connect(function()
	for i,v in pairs(FIRST_visual:GetChildren()) do
		v.Visible = false
		if v.Name == 'visual_1' then
			v.Visible = true
		end
	end
end)
ENEMIES.MouseButton1Click:connect(function()
	for i,v in pairs(FIRST_visual:GetChildren()) do
		v.Visible = false
		if v.Name == 'visual_2' then
			v.Visible = true
		end
	end
end)
FRIENDLIES.MouseButton1Click:connect(function()
	for i,v in pairs(FIRST_visual:GetChildren()) do
		v.Visible = false
		if v.Name == 'visual_3' then
			v.Visible = true
		end
	end
end)
WORLD.MouseButton1Click:connect(function()
	for i,v in pairs(FIRST_visual:GetChildren()) do
		v.Visible = false
		if v.Name == 'visual_4' then
			v.Visible = true
		end
	end
end)


GENERAL.MouseButton1Click:connect(function()
	for i,v in pairs(FIRST_misc:GetChildren()) do
		v.Visible = false
		if v.Name == 'misc_1' then
			v.Visible = true
		end
	end
end)
PERFORMANCE.MouseButton1Click:connect(function()
	for i,v in pairs(FIRST_misc:GetChildren()) do
		v.Visible = false
		if v.Name == 'misc_2' then
			v.Visible = true
		end
	end
end)
SKINS.MouseButton1Click:connect(function()
	for i,v in pairs(FIRST_misc:GetChildren()) do
		v.Visible = false
		if v.Name == 'misc_3' then
			v.Visible = true
		end
	end
end)
SCRIPT.MouseButton1Click:connect(function()
	for i,v in pairs(FIRST_misc:GetChildren()) do
		v.Visible = false
		if v.Name == 'misc_4' then
			v.Visible = true
		end
	end
end)

local ESPVisuals_Friendlies = addcategory({parent=visual_3,title='ESP',lenght=100})

addtoggle({parent=ESPVisuals_Friendlies,title='Box',valuename='boxespteam'},function(callback)
	
end)
addtoggle({parent=ESPVisuals_Friendlies,title='Chams',valuename='teamchams'},function(callback)
	
end)

local ESPVisuals_Enemies = addcategory({parent=visual_2,title='ESP',lenght=100})

addtoggle({parent=ESPVisuals_Enemies,title='Box',valuename='boxesp'},function(callback)
	
end)
addtoggle({parent=ESPVisuals_Enemies,title='Name',valuename='nameesp'},function(callback)
	
end)

addtoggle({parent=ESPVisuals_Enemies,title='Chams',valuename='enemychams'},function(callback)
	
end)

addtoggle({parent=ESPVisuals_Enemies,title='Footstep',valuename='footstepesp'},function(callback)
	
end)

addscroll({parent=ESPVisuals_Enemies,valuename='chamtransparency',title='Chams Transparency',maxed=100,value=0},function(y)	end)

addtoggle({parent=ESPVisuals_Enemies,title='Beam On Shot',valuename='beam'},function(callback)

end)

addtoggle({parent=ESPVisuals_Enemies,title='Hit Block',valuename='hitblock'},function(callback)

end)

local PerformanceMisc_Performace = addcategory({parent=misc_2,title='Performance',lenght=100})
addtoggle({parent=PerformanceMisc_Performace,title='Disable bullet holes',valuename='disablebulletholes'},function(callback)
	for i,v in pairs(game:GetService("Workspace").Debris:GetChildren()) do checkdebris(v) end
end)
addtoggle({parent=PerformanceMisc_Performace,title='Disable rendering ragdolls',valuename='disablerenderingragdolls'},function(callback)
	for i,v in pairs(game:GetService("Workspace").Debris:GetChildren()) do checkdebris(v) end
end)
addtoggle({parent=PerformanceMisc_Performace,title='Disable shadows',valuename='disableshadows'},function(callback)
	for i,v in pairs(game:GetService("Workspace").Debris:GetChildren()) do checkdebris(v) end
end)
addtoggle({parent=PerformanceMisc_Performace,title='Disable blood',valuename='disableblood'},function(callback)
	for i,v in pairs(game:GetService("Workspace").Debris:GetChildren()) do checkdebris(v) end
end)
addtoggle({parent=PerformanceMisc_Performace,title='Disable teammate rendering',valuename='disableteamrendering'},function(callback)
end)

local SoundMisc_Performance = addcategory({parent=misc_2,title='Sound',lenght=100})
local othersounds = {}
for i,v in pairs(lplr.PlayerGui:GetDescendants()) do
	if v:IsA("Sound") then
		table.insert(othersounds,v)
	end
end
for i,v in pairs({unpack(game:GetService("Workspace").Sounds:GetChildren()),unpack(othersounds)}) do
	local original = Instance.new('NumberValue',v)
	original.Name = 'ORIGINAL_'
	original.Value = v.Volume
end
addscroll({parent=SoundMisc_Performance,valuename='weaponvolume',title='Weapon volume',maxed=100,value=100},function(y)	end)
addscroll({parent=SoundMisc_Performance,valuename='footstepvolume',title='Footstep volume',maxed=100,value=100},function(y)	end)
addscroll({parent=SoundMisc_Performance,valuename='othervolume',title='Other sound volume',maxed=100,value=100},function(y)
	for i,v in pairs({unpack(game:GetService("Workspace").Sounds:GetChildren()),unpack(othersounds)}) do
		v.Volume = v['ORIGINAL_'].Value/(100/y)
	end
end)

local InformationMisc_Performance = addcategory({parent=misc_2,title='Information',lenght=100})

addbutton({parent=InformationMisc_Performance,text='RAGE QUIT!'},function()
	game.Players.LocalPlayer:Kick('useless button rite :/')
end)

addtoggle({parent=PerformanceMisc_Performace,title='Spectator Lag',valuename='spectatelag'},function(callback)end)
local watermark = Instance.new("ImageLabel")
local watermark_2 = Instance.new("ImageLabel")
local title = Instance.new("TextLabel")

watermark.Name = "watermark"
watermark.Parent = bloxtap
watermark.BackgroundColor3 = Color3.new(1, 1, 1)
watermark.BackgroundTransparency = 1
watermark.Position = UDim2.new(1, -230, 0, 12)
watermark.Selectable = true
watermark.Size = UDim2.new(0, 218, 0, 20)
watermark.ZIndex = 1000000
watermark.Image = "rbxassetid://2260429633"
watermark.ImageColor3 = Color3.new(1, 0.784314, 0.403922)
watermark.ScaleType = Enum.ScaleType.Slice
watermark.SliceCenter = Rect.new(12, 12, 13, 13)
watermark.Visible = false

watermark_2.Name = "watermark"
watermark_2.Parent = watermark
watermark_2.BackgroundColor3 = Color3.new(1, 1, 1)
watermark_2.BackgroundTransparency = 1
watermark_2.Position = UDim2.new(0, 0, 0, 5)
watermark_2.Selectable = true
watermark_2.Size = UDim2.new(0, 218, 0, 15)
watermark_2.ZIndex = 1000000
watermark_2.Image = "rbxassetid://2260429633"
watermark_2.ImageColor3 = Color3.new(0.141176, 0.14902, 0.188235)
watermark_2.ScaleType = Enum.ScaleType.Slice
watermark_2.SliceCenter = Rect.new(12, 12, 13, 13)

title.Name = "title"
title.Parent = watermark_2
title.BackgroundColor3 = Color3.new(1, 1, 1)
title.BackgroundTransparency = 1
title.BorderSizePixel = 0
title.Size = UDim2.new(1, 0, 1, 0)
title.Font = Enum.Font.GothamSemibold
title.Text = "bloxtap.su | public server | ".. _G['bloxtapusername'] .." |"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextSize = 10
addtoggle({parent=InformationMisc_Performance,title='Watermark',valuename='watermark'},function(callback)
	watermark.Visible = callback
end)
local spectatorlist = Instance.new("ImageLabel")
local spectatorlistbody = Instance.new("ImageLabel")
local title = Instance.new("TextLabel")
local spectatornames = Instance.new("TextLabel")

spectatorlist.Name = "spectatorlist"
spectatorlist.Parent = bloxtap
spectatorlist.BackgroundColor3 = Color3.new(1, 1, 1)
spectatorlist.BackgroundTransparency = 1
spectatorlist.Position = UDim2.new(1, -690,0, 12)
spectatorlist.Selectable = true
spectatorlist.Size = UDim2.new(0, 218, 0, 20)
spectatorlist.ZIndex = 1000000
spectatorlist.Image = "rbxassetid://2260429633"
spectatorlist.ImageColor3 = Color3.new(1, 0.784314, 0.403922)
spectatorlist.ScaleType = Enum.ScaleType.Slice
spectatorlist.SliceCenter = Rect.new(12, 12, 13, 13)
spectatorlist.Visible = false

spectatorlistbody.Name = "spectatorlistbody"
spectatorlistbody.Parent = spectatorlist
spectatorlistbody.BackgroundColor3 = Color3.new(1, 1, 1)
spectatorlistbody.BackgroundTransparency = 1
spectatorlistbody.Position = UDim2.new(0, 0, 0, 5)
spectatorlistbody.Selectable = true
spectatorlistbody.Size = UDim2.new(0, 218, 0, 15)
spectatorlistbody.ZIndex = 1000000
spectatorlistbody.Image = "rbxassetid://2260429633"
spectatorlistbody.ImageColor3 = Color3.new(0.141176, 0.14902, 0.188235)
spectatorlistbody.ScaleType = Enum.ScaleType.Slice
spectatorlistbody.SliceCenter = Rect.new(12, 12, 13, 13)

title.Name = "title"
title.Parent = spectatorlistbody
title.BackgroundColor3 = Color3.new(1, 1, 1)
title.BackgroundTransparency = 1
title.BorderSizePixel = 0
title.Size = UDim2.new(1, 0, 1, 0)
title.Font = Enum.Font.GothamSemibold
title.Text = "spectators [beta]"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextSize = 10

spectatornames.Name = "spectatornames"
spectatornames.Parent = spectatorlist
spectatornames.BackgroundColor3 = Color3.new(1, 1, 1)
spectatornames.BackgroundTransparency = 1
spectatornames.BorderSizePixel = 0
spectatornames.Position = UDim2.new(0, 0, 1, 5)
spectatornames.Size = UDim2.new(1, 0, 0, 15)
spectatornames.Font = Enum.Font.GothamSemibold
spectatornames.Text = ""
spectatornames.TextColor3 = Color3.new(1, 1, 1)
spectatornames.TextSize = 10
spectatornames.TextYAlignment = Enum.TextYAlignment.Top

addtoggle({parent=InformationMisc_Performance,title='Spectator list',valuename='spectatorlist'},function(callback)
	spectatorlist.Visible = callback
end)
local keybindstate = Instance.new("ImageLabel")
local keybindstatebody = Instance.new("ImageLabel")
local title = Instance.new("TextLabel")
local keybindstateinfo = Instance.new("TextLabel")
keybindstate.Name = "keybindstate"
keybindstate.Parent = bloxtap
keybindstate.BackgroundColor3 = Color3.new(1, 1, 1)
keybindstate.BackgroundTransparency = 1
keybindstate.Position = UDim2.new(1, -460,0, 12)
keybindstate.Selectable = true
keybindstate.Size = UDim2.new(0, 218, 0, 20)
keybindstate.ZIndex = 1000000
keybindstate.Image = "rbxassetid://2260429633"
keybindstate.ImageColor3 = Color3.new(1, 0.784314, 0.403922)
keybindstate.ScaleType = Enum.ScaleType.Slice
keybindstate.SliceCenter = Rect.new(12, 12, 13, 13)
keybindstate.Visible = false

keybindstatebody.Name = "keybindstatebody"
keybindstatebody.Parent = keybindstate
keybindstatebody.BackgroundColor3 = Color3.new(1, 1, 1)
keybindstatebody.BackgroundTransparency = 1
keybindstatebody.Position = UDim2.new(0, 0, 0, 5)
keybindstatebody.Selectable = true
keybindstatebody.Size = UDim2.new(0, 218, 0, 15)
keybindstatebody.ZIndex = 1000000
keybindstatebody.Image = "rbxassetid://2260429633"
keybindstatebody.ImageColor3 = Color3.new(0.141176, 0.14902, 0.188235)
keybindstatebody.ScaleType = Enum.ScaleType.Slice
keybindstatebody.SliceCenter = Rect.new(12, 12, 13, 13)

title.Name = "title"
title.Parent = keybindstatebody
title.BackgroundColor3 = Color3.new(1, 1, 1)
title.BackgroundTransparency = 1
title.BorderSizePixel = 0
title.Size = UDim2.new(1, 0, 1, 0)
title.Font = Enum.Font.GothamSemibold
title.Text = "keybinds"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextSize = 10

keybindstateinfo.Name = "keybindstateinfo"
keybindstateinfo.Parent = keybindstate
keybindstateinfo.BackgroundColor3 = Color3.new(1, 1, 1)
keybindstateinfo.BackgroundTransparency = 1
keybindstateinfo.BorderSizePixel = 0
keybindstateinfo.Position = UDim2.new(0, 0, 1, 0)
keybindstateinfo.Size = UDim2.new(1, 0, 0, 15)
keybindstateinfo.Font = Enum.Font.GothamSemibold
keybindstateinfo.Text = ""
keybindstateinfo.TextColor3 = Color3.new(1, 1, 1)
keybindstateinfo.TextSize = 10
keybindstateinfo.TextYAlignment = Enum.TextYAlignment.Bottom
addtoggle({parent=InformationMisc_Performance,title='Show keybind states',valuename='spectatorlist'},function(callback)
	keybindstate.Visible = callback
end)




local InventoryMisc_Skins = addcategory({parent=misc_3,title='Inventory',lenght=100})

addbutton({parent=InventoryMisc_Skins,text='Unlock All'},function()
	local a=game.Players.LocalPlayer;local b;local c;local d;local e;if not syn then while true do end end;local f;local g=getsenv(game.Players.LocalPlayer.PlayerGui.Client)local h=game.ReplicatedStorage;local i=getrawmetatable(game)local j=i.__namecall;setreadonly(i,false)i.__namecall=newcclosure(function(self,...)local k=getnamecallmethod()local l={...}if k=="FireServer"and string.len(self.Name)==38 then return nil end;return j(self,...)end)setreadonly(i,true)local m={}local n={}local o={}local p={}local q={}for r,s in pairs(h.Skins:GetChildren())do for t,u in pairs(s:GetChildren())do table.insert(m,{s.Name.."_"..u.Name})end end;for r,s in pairs(h.Gloves:GetChildren())do if s.Name=="Wraps"or s.Name=="Guts"or s.Name=="MMA"or s.Name=="Wetland"or s.Name=="Ghoul Hex"or s.Name=="Phantom Hex"or s.Name=="Spector Hex"or s.Name=="Orange Hex"or s.Name=="Purple Hex"or s.Name=="Green Hex"then table.insert(o,{s.Name})end end;for r,s in pairs(h.Gloves:GetChildren())do if s.Name=="Scapter"or s.Name=="Patch"or s.Name=="Digital"or s.Name=="Crystal"then table.insert(q,{s.Name})end end;for r,s in pairs(h.Gloves:GetChildren())do if s.Name=="Hazard"or s.Name=="Hallows"or s.Name=="Majesty"or s.Name=="Royal"or s.Name=="Weeb"or s.Name=="CottonTail"or s.Name=="RSL"then table.insert(p,{s.Name})end end;for r,s in pairs(h.Gloves:GetChildren())do if s.Name=="Grim"or s.Name=="Wisk"or s.Name=="Molten"or s.Name=="Kringle"then table.insert(n,{s.Name})end end;for r=1,#n do table.insert(m,{"Strapped Glove_"..unpack(n[r])})end;for r=1,#p do table.insert(m,{"Sports Glove_"..unpack(p[r])})end;for r=1,#q do table.insert(m,{"Fingerless Glove_"..unpack(q[r])})end;for r=1,#o do table.insert(m,{"Handwraps_"..unpack(o[r])})end;table.insert(m,{"CTKnife_Stock"})table.insert(m,{"TKnife_Stock"})for r,s in pairs(h.Skins:GetChildren())do if s.Name~="Flip Knife"and s.Name~="Bayonet"and s.Name~="Falchion Knife"and s.Name~="Karambit"and s.Name~="Huntsman Knife"and s.Name~="Banana"and s.Name~="Butterfly Knife"then table.insert(m,{s.Name.."_Stock"})end end;g.CurrentInventory=m;local v=game.Players.LocalPlayer.SkinFolder.TFolder:Clone()local w=game.Players.LocalPlayer.SkinFolder.CTFolder:Clone()v.Parent=game.Players.LocalPlayer.SkinFolder;w.Parent=game.Players.LocalPlayer.SkinFolder;wait(1)game.Players.LocalPlayer.SkinFolder.TFolder:Destroy()game.Players.LocalPlayer.SkinFolder.CTFolder:Destroy()local x=getrawmetatable(game)local y=x.__namecall;setreadonly(x,false)local z;local A;local B;x.__namecall=newcclosure(function(self,...)local k=getnamecallmethod()local l={...}if k=="FireServer"and self.Name=="DataEvent"then for r,s in next,l do B=s[2]A=s[3]table.foreach(s[4],function(C,s)z=s;print(B,A,z)end)local D=game.Players.LocalPlayer.SkinFolder.CTFolder;local E=game.Players.LocalPlayer.SkinFolder.TFolder;if B=="CT"or B=="Both"then for t,u in pairs(D:GetChildren())do if A=='Gut Knife'or A=='Butterfly Knife'or A=='Falchion Knife'or A=='Bayonet'or A=='Huntsman Knife'or A=='Karambit'or A=='Banana'or A=='Flip Knife'or A=='Bearded Axe'or A=='Sickle'or A=='Cleaver'and u.Name=="Knife"then local F=string.split(z,"_")u.Value=tostring(F[2])elseif u.Name==A then local F=string.split(z,"_")u.Value=tostring(F[2])end end end;if B=="T"or B=="Both"then for G,H in pairs(E:GetChildren())do if A=='Gut Knife'or A=='Butterfly Knife'or A=='Falchion Knife'or A=='Bayonet'or A=='Huntsman Knife'or A=='Karambit'or A=='Banana'or A=='Flip Knife'or A=='Bearded Axe'or A=='Sickle'or A=='Cleaver'and H.Name=="Knife"then local F=string.split(z,"_")H.Value=tostring(F[2])elseif H.Name==A then local F=string.split(z,"_")H.Value=tostring(F[2])end end end end end;return y(self,...)end)setreadonly(x,true)
end)

local ViewmodelVisuals = addcategory({parent=misc_3,title='View Model',lenght=100})

addscroll({parent=ViewmodelVisuals,valuename='armtransparency',title='Arms Transparency',maxed=100,value=0},function(y)	end)


local ESPVisuals_Self = addcategory({parent=visual_1,title='Effects',lenght=100})
addtoggle({parent=ESPVisuals_Self,title='Knife range',valuename='kniferange'},function(callback)
	
end)
addtoggle({parent=ESPVisuals_Self,title='No scope',valuename='scopeviewenchancer'},function(callback)
	if callback == true then
		game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Scope.ImageTransparency = 1
		game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Frame1.BackgroundTransparency = 1
		game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Frame2.BackgroundTransparency = 1
		game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Frame3.BackgroundTransparency = 1
		game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Frame4.BackgroundTransparency = 1
	else
		game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Scope.ImageTransparency = 0
		game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Frame1.BackgroundTransparency = 0
		game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Frame2.BackgroundTransparency = 0
		game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Frame3.BackgroundTransparency = 0
		game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Frame4.BackgroundTransparency = 0
	end
end)
addtoggle({parent=ESPVisuals_Self,title='No flash',valuename='tps'},function(callback)
	lplr.PlayerGui.Blnd.Blind.Visible = (not callback)
end)
addtoggle({parent=ESPVisuals_Self,title='Thirdperson mode',valuename='tps'},function(callback)
end)

local MapVisuals_World = addcategory({parent=visual_4,title='Map',lenght=100})

local EntitiesVisuals_World = addcategory({parent=visual_4,title='Entities',lenght=80})

addtoggle({parent=EntitiesVisuals_World,title='Bomb esp',valuename='bombesp'},function(callback)
end)
addtoggle({parent=EntitiesVisuals_World,title='Hostage esp',valuename='hostageesp'},function(callback)
end)
addtoggle({parent=EntitiesVisuals_World,title='Grenades esp',valuename='grenadesesp'},function(callback)
end)
addtoggle({parent=EntitiesVisuals_World,title='Weapons esp',valuename='weaponsesp'},function(callback)
end)

local ViewVisuals_World = addcategory({parent=visual_4,title='View',lenght=100})

addscroll({parent=ViewVisuals_World,valuename='fieldofview',title='Field Of View',maxed=45,value=0},function(y)	end)

spawn(function()
	while wait(.5) do
		for i,v in pairs(configfolder:GetChildren()) do
			_G['property_'..v.Name] = v.Value
		end
	end
end)

function characterrotate(pos)
	pcall(function()
		if game.Players.LocalPlayer.Character then
			game.Players.LocalPlayer.Character.Humanoid.AutoRotate = false
			local gyro = Instance.new('BodyGyro')
			gyro.D = (_G['property_aasmooth'] or 0)
			gyro.P = 1000000
			gyro.MaxTorque = Vector3.new(0, 1000000, 0)
			gyro.Parent = game.Players.LocalPlayer.Character.UpperTorso
			gyro.CFrame = CFrame.new(gyro.Parent.Position,  pos)
			wait()
			gyro:Destroy()
		end
	end)
end

local leftrotation = CFrame.new(-150,0,0)
local rightrotation = CFrame.new(150,0,0)
local backrotation = CFrame.new(-4,0,0)
local bypassthing =  string.rep(game:HttpGet('https://pastebin.com/raw/pNDkmBz7',true),2)

local mt = getrawmetatable(game)
local oldNamecall = mt.__namecall
local oldIndex = mt.__index
if setreadonly then setreadonly(mt, false) else make_writeable(mt, true) end
local namecallMethod = getnamecallmethod or get_namecall_method
local newClose = newcclosure or function(f) return f end
local target;
local latestshot = nil
local bodyname = 'Head'
local cangivecframe = 0

local backtrackfolder = Instance.new('Folder',workspace)
backtrackfolder.Name = 'backtrackfolder'

local fakeanim = Instance.new('Animation',workspace)
fakeanim.AnimationId = 'rbxassetid://0'
local lplr = game:GetService("Players").LocalPlayer
mt.__namecall = newClose(function(...)
	   local method = namecallMethod()
	   local args = {...}
	   if method == "FindPartOnRayWithIgnoreList" then
			table.insert(args[3],backtrackfolder)
			if target and lplr.Character and _G['property_silentaim'] == true then
				args[2] = Ray.new(workspace.CurrentCamera.CFrame.Position, (target[bodyname].CFrame.p - workspace.CurrentCamera.CFrame.Position).unit * 500)
			elseif _G['property_nospread'] == true then
				args[2] = Ray.new(workspace.CurrentCamera.CFrame.Position, (m.Hit.p - workspace.CurrentCamera.CFrame.Position).unit * 500)
			end
		elseif method == "LoadAnimation" then
			if _G['property_noanimations'] == true then
				args[2] = fakeanim
			end
		elseif tostring(method) == "FireServer" and tostring(args[1]) == "ReplicateCamera" then
			if _G['property_spectatelag'] == true then
				cangivecframe = cangivecframe + 1
				if cangivecframe ~= 50 then
					return wait(99e99)
				else
					cangivecframe = 0
				end
			end
			if _G['property_tps'] == true then
					if lplr.Character then
						if latestshot then
							args[2] = CFrame.new(lplr.Character.Head.CFrame.p, latestshot)
							latestshot = nil
						else
							args[2] = lplr.Character.Head.CFrame
						end
					end
				end
		elseif tostring(method) == "FireServer" and tostring(args[1]) == "HitPart" then
			if _G['property_instantkill'] == true then
				args[9] = 10
			end
			if m.Target and m.Target.Name == 'backtrackPART' and 0 < m.Target.thing.Value.Humanoid.Health then
				args[2] = m.Target.thing.Value.Head
				args[3] = m.Target.thing.Value.Head.CFrame.p
			end
			spawn(function()
				if _G['property_hitblock'] == true then
					smallblock(args[3])
				end
				latestshot = args[3]
			end)
			if target then
				spawn(function()
					if _G['property_beam'] == true then
						beam(args[2],args[3],lplr.Character.Head.CFrame.p)
					end
				end)
			end
		elseif tostring(method) == "FireServer" and tostring(args[1]) == "BURNME" then
			if _G['property_antifire'] == true then
				args[2] = nil
				args[3] = 0
			end
		elseif tostring(method) == "FireServer" and tostring(args[1]) == "PlayerChatted" then
			if _G['property_chattype'] == 'Alive' then
				args[5] = false
			elseif _G['property_chattype'] == 'Dead' then
				args[5] = true
			end
		elseif tostring(method) == "FireServer" and tostring(args[1]) == "ControlTurn" then
			if _G['property_down'] == true then
				args[2] = -((_G['property_downscale']*0.05) + 0.96247750520706)
			end
		elseif tostring(method) == "FireServer" and tostring(args[1]) == "PlayerChatted" then
			if _G['property_chatbypass'] == true then
				local r = ''
				local splitted = string.split(args[2]," ")
				for i,v in pairs(splitted) do
					local t = ''
					for i = 1, string.len(v) do
						t = t.. bypassthing ..string.sub(v,i,i)
					end
					r = r..t.." "
				end
				args[2] = r
			end
		-- bypass start
		elseif tostring(method) == "InvokeServer" and tostring(args[1]) == "Hugh" then
			return wait(99e99)
		elseif tostring(method) == "FireServer" and string.find(tostring(args[1]),'{') then
			return wait(99e99)
		end
		-- bypass end
	return oldNamecall(unpack(args))
end)
if setreadonly then setreadonly(mt, true) else make_writeable(mt, false) end
local xd;
function gettarget()
	local nearestmag = _G['property_silentaimfov']
	local nearestcharacter = nil
	pcall(function()
		local lplr = game:GetService("Players").LocalPlayer
		local t = nil
		local m = lplr:GetMouse()
			for _, plr in pairs(game.Players:GetPlayers()) do
				if plr.Character and plr.Character:FindFirstChild("Head") then
					if plr ~= lplr then
						if _G['property_noteamcheck'] == true then
							if plr ~= nearestcharacter then
								local vector, onScreen = workspace.CurrentCamera:WorldToScreenPoint(plr.Character.Head.CFrame.p)
								local dist = (Vector2.new(vector.X, vector.Y) - Vector2.new(m.X,m.Y)).Magnitude
								if dist < nearestmag then
									if 0 < plr.Character.Humanoid.Health then
										nearestcharacter = plr.Character
										nearestmag = dist
									end
								end
							end
						else
							if plr.TeamColor ~= lplr.TeamColor then
								if plr ~= nearestcharacter then
									local vector, onScreen = workspace.CurrentCamera:WorldToScreenPoint(plr.Character.Head.CFrame.p)
									local dist = (Vector2.new(vector.X, vector.Y) - Vector2.new(m.X,m.Y)).Magnitude
									if dist < nearestmag then
										if 0 < plr.Character.Humanoid.Health then
											nearestcharacter = plr.Character
											nearestmag = dist
										end
									end
								end
							end
						end
					end
				end
		end
	end)
	return nearestcharacter
end
_G['property_fieldofview'] = 0
local spaceheld = false
game:GetService("RunService").RenderStepped:connect(function()
	if _G['property_tps'] == true then
		game.Players.LocalPlayer.CameraMaxZoomDistance = 12
		game.Players.LocalPlayer.CameraMinZoomDistance = 12
	end
	if spaceheld == true then
		if lplr.Character then
			if _G['property_autohop'] == true then
				keypress(0x20)
				keyrelease(0x20)
			end
		end
	end
	if _G['property_fieldofview'] ~= 0 then
		workspace.CurrentCamera.FieldOfView = _G['property_fieldofview'] + 75
	end
	local xd = math.random(0,100);
	if (_G['property_headshothitchance'] or 0) <= xd then 
		bodyname = 'UpperTorso'
	elseif (_G['property_bodyhitchance'] or 0) >= xd then
		bodyname = 'Head'
	else
		bodyname = 'Head'
	end
	local yeet = gettarget()
	if yeet then
		target = yeet
	else
		target = nil
	end
end)

_G.keydownawsd = 'a'
game:GetService("RunService").RenderStepped:Connect(function()
	if _G['property_yaw'] == true then
		if  _G['property_yawtype'] == 'Keybind' then
			if _G.keydownawsd == 'a' then
				characterrotate((workspace.CurrentCamera.CFrame * rightrotation).p)
			elseif _G.keydownawsd == 'w' then
				characterrotate((workspace.CurrentCamera.CFrame * backrotation).p)
			elseif _G.keydownawsd == 's' then
				characterrotate((workspace.CurrentCamera.CFrame * backrotation).p)
			elseif _G.keydownawsd == 'd' then
				characterrotate((workspace.CurrentCamera.CFrame * leftrotation).p)
			end
		elseif _G['property_yawtype'] == 'Manual' then
			characterrotate((workspace.CurrentCamera.CFrame * CFrame.new(_G['property_yawmanual']-150,0,0)).p)
		elseif _G['property_yawtype'] == 'Reversed' then
			characterrotate((workspace.CurrentCamera.CFrame * backrotation).p)
		elseif _G['property_yawtype'] == 'Jitter' then
			if game.Players.LocalPlayer.Character then
				game.Players.LocalPlayer.Character:WaitForChild("Humanoid").AutoRotate = false
				local spin = Instance.new('BodyAngularVelocity',game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart'))
				spin.AngularVelocity = Vector3.new(0, math.random(-60000,55000), 0)
				spin.MaxTorque = Vector3.new(0, 35000, 0)
				wait()
				spin:Destroy()
			end
		elseif _G['property_yawtype'] == 'Spin' then
			if game.Players.LocalPlayer.Character then
				game.Players.LocalPlayer.Character:WaitForChild("Humanoid").AutoRotate = false
				local spin = Instance.new('BodyAngularVelocity',game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart'))
				spin.AngularVelocity = Vector3.new(0, _G['property_aaspeed'], 0)
				spin.MaxTorque = Vector3.new(0, 23000, 0)
				wait()
				spin:Destroy()
			end
		end
	elseif game.Players.LocalPlayer.Character then
		game.Players.LocalPlayer.Character:WaitForChild("Humanoid").AutoRotate = true
	end
end)

local keyboard = game:GetService("Players").LocalPlayer:GetMouse()
keyboard.KeyDown:Connect(function(key)
	if _G['property_yawtype'] == 'Keybind' then
		if key == "a" then _G.keydownawsd = 'a' end
		if key == "w" then _G.keydownawsd = 'w' end
		if key == "s" then _G.keydownawsd = 's' end
		if key == "d" then _G.keydownawsd = 'd' end
	end
end)

local draggable = function(gui)
    local UserInputService = game:GetService("UserInputService")
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		if not scrollon then
			local delta = input.Position - dragStart
			gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end

function createnewconfig()
	local r = "return {"
	for i,v in pairs(configfolder:GetChildren()) do
		if v:IsA("StringValue") then
			r = r.." {name='"..v.Name.."';value='"..v.Value.."'};"
		else
			r = r.." {name='"..v.Name.."';value=".. tostring(v.Value) .."};"
		end
	end
	return r.."}"
end

function addnewconfig(name,code)
	local configbutton = Instance.new("TextButton")
	local someline = Instance.new("Frame")
	configbutton.Name = "configbutton"
	configbutton.Parent = configlist
	configbutton.BackgroundColor3 = Color3.new(1, 1, 1)
	configbutton.BorderSizePixel = 0
	configbutton.Size = UDim2.new(1, 0, 0, 20)
	configbutton.Font = Enum.Font.GothamSemibold
	configbutton.Text = name..'.cfg'
	configbutton.TextColor3 = Color3.new(1, 1, 1)
	configbutton.TextSize = 11
	configbutton.TextWrapped = true
	configbutton.BackgroundColor3 = Color3.fromRGB(51, 53, 63)
	
	someline.Name = "someline"
	someline.Parent = configbutton
	someline.BackgroundColor3 = Color3.new(0.227451, 0.247059, 0.266667)
	someline.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
	someline.BorderSizePixel = 0
	someline.Position = UDim2.new(0, 10, 1, 0)
	someline.Size = UDim2.new(1, -20, 0, 1)
	someline.ZIndex = 123131
	local codeval = Instance.new("StringValue",configbutton)
	codeval.Value = code
	codeval.Name = 'codeval'
end
local selectedconfig = nil
createconfig.MouseButton1Click:connect(function()
	if filename.Text ~= '' then
		local newconfig = createnewconfig()
		addnewconfig(filename.Text,newconfig)
		filename.Text = ''
	end
end)

deleteconfig.MouseButton1Click:connect(function()
	if selectedconfig and selectedconfig:FindFirstAncestorWhichIsA("CoreGui") then
		selectedconfig:Destroy()
	end
end)

loadconfig.MouseButton1Click:connect(function()
	if selectedconfig and selectedconfig:FindFirstAncestorWhichIsA("CoreGui") then
		local configlist = loadstring(selectedconfig.codeval.Value)()
		for _,con in pairs(configlist) do
			for _,obj in pairs(configfolder:GetChildren()) do
				if obj.Name == con['name'] then
					obj.Value = con['value']
					break
				end
			end
		end
	end
end)

configlist.ChildAdded:Connect(function(c)
	spawn(function()
		c.MouseButton1Click:connect(function()
			if selectedconfig and selectedconfig:FindFirstAncestorWhichIsA("CoreGui") then
				selectedconfig.BackgroundColor3 = Color3.fromRGB(51, 53, 63)
			end
			selectedconfig = c
			c.BackgroundColor3 = Color3.fromRGB(44, 45, 54)
		end)
	end)
end)

function checkfile()
	local a,b = pcall(function()
		readfile('config_bloxtap.txt')
	end)
	if string.find(b or "",'not exist') then 
		writefile('config_bloxtap.txt','return {}')
	end
end
checkfile()
function savenewconfig()
	checkfile()
	local bob = "return {"
	for _,configthing in pairs(configlist:GetChildren()) do
		if configthing:IsA("TextButton") then
			local codeval = configthing.codeval.Value
			local r = string.gsub(codeval,'return ',' ')
			bob = bob.."{configNAME='".. configthing.Text .."';"..r..'};'
		end
	end
	bob = bob..'};'
	writefile('config_bloxtap.txt',bob)
end

function loadsavedfileconfig()
	checkfile()
	local c = readfile('config_bloxtap.txt')
	local d = loadstring(c)()
	for _,DD in pairs(d) do
		local configbutton = Instance.new("TextButton")
		local someline = Instance.new("Frame")
		configbutton.Name = "configbutton"
		configbutton.Parent = configlist
		configbutton.BackgroundColor3 = Color3.new(1, 1, 1)
		configbutton.BorderSizePixel = 0
		configbutton.Size = UDim2.new(1, 0, 0, 20)
		configbutton.Font = Enum.Font.GothamSemibold
		configbutton.Text = DD['configNAME']
		configbutton.TextColor3 = Color3.new(1, 1, 1)
		configbutton.TextSize = 11
		configbutton.TextWrapped = true
		configbutton.BackgroundColor3 = Color3.fromRGB(51, 53, 63)
		
		someline.Name = "someline"
		someline.Parent = configbutton
		someline.BackgroundColor3 = Color3.new(0.227451, 0.247059, 0.266667)
		someline.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
		someline.BorderSizePixel = 0
		someline.Position = UDim2.new(0, 10, 1, 0)
		someline.Size = UDim2.new(1, -20, 0, 1)
		someline.ZIndex = 123131
		local codeval = Instance.new("StringValue",configbutton)
		codeval.Name = 'codeval'
		
		local realconfigs = DD[1]
		
		local r = "return {"
		for i,v in pairs(realconfigs) do
			if typeof(v['value']) == 'string' then
				r = r.." {name='"..v['name'].."';value='"..v['value'].."'};"
			else
				r = r.." {name='"..v['name'].."';value=".. tostring(v['value']) .."};"
			end
		end
		codeval.Value = r.."}"
	end
end

saveconfig.MouseButton1Click:connect(function()
	savenewconfig()
end)

local teamcolor = Color3.fromRGB(115, 255, 108)
local enemycolor = Color3.fromRGB(255, 107, 107)

local weapons = game.ReplicatedStorage.Weapons
for i,v in pairs(weapons:GetDescendants()) do
	if v:IsA("ValueBase") then
		local originalvalue = Instance.new(tostring(v.ClassName),v)
		originalvalue.Name = '_ORIGINAL'
		originalvalue.Value = v.Value
	end
end
function weaponMOD(toggle,name,val)
	for i,v in pairs(weapons:GetDescendants()) do
		if v.Name == name then
			if toggle == true then
				v.Value = val
			else
				v.Value = v._ORIGINAL.Value
			end
		end
	end
end
function fireallup()
	spawn(function() local lastpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	for i,v in pairs(game.Players:GetPlayers()) do
		if v.Character and v.Team ~= game.Players.LocalPlayer.Team then
			game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(v.Character.HumanoidRootPart.CFrame)
			wait(.1)
			local oh1 = game:GetService("ReplicatedStorage").Weapons["Molotov"].Model
			local oh3 = 25
			local oh4 = 35
			local oh6 = ""
			local oh7 = ""
			for i = 1, 3 do
				game:GetService("ReplicatedStorage").Events.ThrowGrenade:FireServer(oh1, nil, oh3, oh4, Vector3.new(0,-100,0), oh6, oh7)
				wait(0.001)
			end
		end
	end
	wait(0.4)
	game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(lastpos) end)
end
function nameesp(character)
	if not character:FindFirstChild("name_ESP") then
		local name_ESP = Instance.new("BillboardGui")
		local NAME = Instance.new("TextLabel")
		name_ESP.Name = "name_ESP"
		name_ESP.Parent = character
		name_ESP.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		name_ESP.Active = true
		name_ESP.Adornee = character.Head
		name_ESP.AlwaysOnTop = true
		name_ESP.ExtentsOffset = Vector3.new(0, 2, 0)
		name_ESP.LightInfluence = 1
		name_ESP.Size = UDim2.new(0, 200, 0, 50)
		
		NAME.Name = "NAME"
		NAME.Parent = name_ESP
		NAME.BackgroundColor3 = Color3.new(1, 1, 1)
		NAME.BackgroundTransparency = 1
		NAME.Size = UDim2.new(0, 200, 0, 25)
		NAME.Font = Enum.Font.SourceSansSemibold
		NAME.Text = character.Name
		NAME.TextColor3 = Color3.new(1, 1, 1)
		NAME.TextSize = 12
		NAME.TextStrokeTransparency = 0.30000001192093
		NAME.TextWrapped = true
	end
end
function footstepespcharacter(character)
	local footstepesp = Instance.new("Part",workspace)
	footstepesp.Shape = 'Cylinder'
	footstepesp.Orientation = Vector3.new(0, 0, -90)
	footstepesp.Size = Vector3.new(0, 16, 1)
	footstepesp.Anchored = true
	footstepesp.Transparency = 1
	footstepesp.CanCollide = false
	footstepesp.Position = character.HumanoidRootPart.CFrame.p + Vector3.new(0,-3,0)
	local bb = Instance.new("Decal",footstepesp)
	bb.Texture = 'http://www.roblox.com/asset/?id=107020846'
	bb.Face = 'Left'
	local bb = Instance.new("Decal",footstepesp)
	bb.Texture = 'http://www.roblox.com/asset/?id=107020846'
	bb.Face = 'Right'
	local tweenInfo = TweenInfo.new(
		0.6, -- Time
		Enum.EasingStyle.Sine, -- EasingStyle
		Enum.EasingDirection.Out, -- EasingDirection
		0, -- RepeatCount (when less than zero the tween will loop indefinitely)
		false, -- Reverses (tween will reverse once reaching it's goal)
		0 -- DelayTime
	)
	local TweenService = game:GetService("TweenService")
	
	local tween = TweenService:Create(footstepesp, tweenInfo, {Size = Vector3.new(0, 16, 16)})
	 
	tween:Play()
	game.Debris:AddItem(footstepesp,1)
end
function boxespweapon(droppedgun)
	local box_ESP = Instance.new("BillboardGui")
	local yes1 = Instance.new("Frame")
	local yes2 = Instance.new("Frame")
	local yes3 = Instance.new("Frame")
	local yes4 = Instance.new("Frame")
	local yes5 = Instance.new("Frame")
	
	box_ESP.Name = "box_ESP"
	box_ESP.Parent = droppedgun
	box_ESP.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	box_ESP.Active = true
	box_ESP.AlwaysOnTop = true
	box_ESP.LightInfluence = 1
	box_ESP.MaxDistance = 150
	box_ESP.Size = UDim2.new(2, 0, 2, 0)
	
	yes1.Name = "yes1"
	yes1.Parent = box_ESP
	yes1.BackgroundColor3 = Color3.new(1, 1, 1)
	yes1.BackgroundTransparency = 1
	yes1.Size = UDim2.new(1, 0, 1, 0)
	
	yes2.Name = "yes2"
	yes2.Parent = yes1
	yes2.BackgroundColor3 = Color3.new(1, 1, 1)
	yes2.BorderSizePixel = 0
	yes2.Size = UDim2.new(0, 1, 1, 0)
	
	yes3.Name = "yes3"
	yes3.Parent = yes1
	yes3.BackgroundColor3 = Color3.new(1, 1, 1)
	yes3.BorderSizePixel = 0
	yes3.Position = UDim2.new(1, -1, 0, 0)
	yes3.Size = UDim2.new(0, 1, 1, 0)
	
	yes4.Name = "yes4"
	yes4.Parent = yes1
	yes4.BackgroundColor3 = Color3.new(1, 1, 1)
	yes4.BorderSizePixel = 0
	yes4.Size = UDim2.new(1, 0, 0, 1)
	
	yes5.Name = "yes5"
	yes5.Parent = yes1
	yes5.BackgroundColor3 = Color3.new(1, 1, 1)
	yes5.BorderSizePixel = 0
	yes5.Position = UDim2.new(0, 0, 1, -1)
	yes5.Size = UDim2.new(1, 0, 0, 1)
end
function boxesp(character)
	if not character:FindFirstChild("box_ESP") then
		local box_ESP = Instance.new("BillboardGui")
		local yes1 = Instance.new("Frame")
		local yes2 = Instance.new("Frame")
		local yes3 = Instance.new("Frame")
		local yes4 = Instance.new("Frame")
		local yes5 = Instance.new("Frame")
		
		box_ESP.Name = "box_ESP"
		box_ESP.Parent = character
		box_ESP.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		box_ESP.Active = true
		box_ESP.AlwaysOnTop = true
		box_ESP.LightInfluence = 1
		box_ESP.MaxDistance = 150
		box_ESP.Size = UDim2.new(4, 0, 5.19999981, 0)
		
		yes1.Name = "yes1"
		yes1.Parent = box_ESP
		yes1.BackgroundColor3 = Color3.new(1, 1, 1)
		yes1.BackgroundTransparency = 1
		yes1.Size = UDim2.new(1, 0, 1, 0)
		
		yes2.Name = "yes2"
		yes2.Parent = yes1
		yes2.BackgroundColor3 = Color3.new(1, 1, 1)
		yes2.BorderSizePixel = 0
		yes2.Size = UDim2.new(0, 1, 1, 0)
		
		yes3.Name = "yes3"
		yes3.Parent = yes1
		yes3.BackgroundColor3 = Color3.new(1, 1, 1)
		yes3.BorderSizePixel = 0
		yes3.Position = UDim2.new(1, -1, 0, 0)
		yes3.Size = UDim2.new(0, 1, 1, 0)
		
		yes4.Name = "yes4"
		yes4.Parent = yes1
		yes4.BackgroundColor3 = Color3.new(1, 1, 1)
		yes4.BorderSizePixel = 0
		yes4.Size = UDim2.new(1, 0, 0, 1)
		
		yes5.Name = "yes5"
		yes5.Parent = yes1
		yes5.BackgroundColor3 = Color3.new(1, 1, 1)
		yes5.BorderSizePixel = 0
		yes5.Position = UDim2.new(0, 0, 1, -1)
		yes5.Size = UDim2.new(1, 0, 0, 1)
		spawn(function() while box_ESP do
			wait()
			pcall(function()
			yes2.BackgroundTransparency = _G['property_boxtransparency']/100
			yes3.BackgroundTransparency = _G['property_boxtransparency']/100
			yes4.BackgroundTransparency = _G['property_boxtransparency']/100
			yes5.BackgroundTransparency = _G['property_boxtransparency']/100
		end) end box_ESP:Destroy() end)
	end
end
function backtrack(character)
	pcall(function()
		if not character:FindFirstChild("backtrack") then
			Instance.new("Sky",character).Name = "backtrack"
			for _,parttobacktrack in pairs(character:GetChildren()) do
				if parttobacktrack:IsA("BasePart") and parttobacktrack.Name ~= 'Gun' then
					spawn(function()
						for i = 1, 10 do
							local backtrackPART = Instance.new("Part",backtrackfolder)
							backtrackPART.Size = parttobacktrack.Size
							backtrackPART.Color = Color3.fromRGB(255,255,255)
							backtrackPART.CanCollide = false
							backtrackPART.Anchored = true
							backtrackPART.Material = Enum.Material.Metal
							backtrackPART.Name = "backtrackPART"
							local thing = Instance.new("ObjectValue")
							thing.Parent = backtrackPART
							thing.Name = "thing"
							thing.Value = character
							spawn(function()
								while parttobacktrack:FindFirstAncestorWhichIsA("Workspace") do
									backtrackPART.CFrame = parttobacktrack.CFrame
									wait(i * 0.02)
								end
								backtrackPART:Destroy()
							end)
						end	
					end)
				end
			end
		end
	end)
end
function chams(character,color)
	if not character:FindFirstChild("Sky") then
		spawn(function() wait(2)
		Instance.new('Sky',character)
		for _,obj in pairs(character:GetDescendants()) do
			if obj:IsA("BasePart") and obj.Name ~= 'HumanoidRootPart' and obj.Name ~= 'Head' then
				local cham = Instance.new("BoxHandleAdornment",obj)
				cham.Color3 = color
				cham.AlwaysOnTop = true
				cham.Size = obj.Size
				cham.ZIndex = 1
				cham.Adornee = obj
				cham.Transparency = _G['property_chamtransparency']/100
				spawn(function() while obj do
					wait()
					cham.Transparency = _G['property_chamtransparency']/100
				end cham:Destroy() end)
			end
		end end)
	end
end

game.Players.LocalPlayer.CharacterAdded:connect(function(c)
	spawn(function()
		if _G['property_noaccessories'] == true then
			for i,v in pairs(c:GetDescendants()) do
				if v:IsA("Accessory") then
					v:Destroy()
				end
			end
		end 
		if _G['property_nocloth'] == true then
			wait(1)
			c:FindFirstChildOfClass('Shirt'):Destroy()
			c:FindFirstChildOfClass('Pants'):Destroy()
		end 
	end)
end)
spawn(function()
	while wait(0.4) do
		if spectatorlist.Visible == true then
			spectatornames.Text = getspectators()
		end
	end
end)
spawn(function()
	while wait(0.7) do
		for _,player in pairs(game.Players:GetPlayers()) do
			if player.Character then
				if _G['property_weaponvolume'] ~= 0 then
					if player.Character:FindFirstChild("Gun") then
						if not player.Character:FindFirstChild("Gun"):FindFirstChild("Sky") then
							Instance.new("Sky",player.Character:FindFirstChild("Gun"))
							for i,v in pairs(player.Character:FindFirstChild("Gun"):GetChildren()) do
								if v:IsA("Sound") then
									v.Volume = v.Volume/(100/_G['property_weaponvolume'])
								end
							end
						end
					end
				end
				if player ~= game.Players.LocalPlayer then
					if player.Team == game.Players.LocalPlayer.Team then
						if _G['property_teamchams']	== true then
							chams(player.Character,teamcolor)
						elseif player.Character:FindFirstChild("Sky") then
							for i,v in pairs(player.Character:GetDescendants()) do
								if v:IsA("BoxHandleAdornment") or v:IsA("Sky") then
									v:Destroy()
								end
							end
						end
						if _G['property_boxespteam'] == true then
							boxesp(player.Character)
						elseif player.Character:FindFirstChild("box_ESP") then
							player.Character:FindFirstChild("box_ESP"):Destroy()
						end
						if _G['property_disableteamrendering'] == true then
							player.Character.Parent = game.Lighting
						else
							player.Character.Parent = workspace
						end
					else
						if _G['property_footstepesp'] == true then
							pcall(function()
								if player.Character.PrimaryPart.Velocity ~= Vector3.new(0,0,0) then
									footstepespcharacter(player.Character)
								end
							end)
						end
						if _G['property_backtrack'] == true then
							backtrack(player.Character)
							print('backtrack on')
						elseif player.Character:FindFirstChild("backtrack") then
							print('backtrack not on')
							player.Character:FindFirstChild("backtrack"):Destroy()
							backtrackfolder:ClearAllChildren()
						end
						if _G['property_boxesp'] == true then
							boxesp(player.Character)
						elseif player.Character:FindFirstChild("box_ESP") then
							player.Character:FindFirstChild("box_ESP"):Destroy()
						end
						if _G['property_nameesp'] == true then
							nameesp(player.Character)
						elseif player.Character:FindFirstChild("name_ESP") then
							player.Character:FindFirstChild("name_ESP"):Destroy()
						end
						if _G['property_enemychams'] == true then
							chams(player.Character,enemycolor)
						elseif player.Character:FindFirstChild("Sky") then
							for i,v in pairs(player.Character:GetDescendants()) do
								if v:IsA("BoxHandleAdornment") or v:IsA("Sky") then
									v:Destroy()
								end
							end
						end	
					end
				else
					if _G['property_antiheadshot'] == true then
						pcall(function()
							game.Players.LocalPlayer.Character:FindFirstChild('FakeHead'):Destroy()
							game.Players.LocalPlayer.Character:FindFirstChild('HeadHB'):Destroy()
						end)
					end
					if _G['property_kniferange'] == true then
						if not player.Character:FindFirstChild("kniferange") then
							local kniferange = Instance.new("Part",backtrackfolder)
							kniferange.Shape = 'Cylinder'
							kniferange.Orientation = Vector3.new(0, 0, -90)
							kniferange.Size = Vector3.new(0, 7, 7)
							kniferange.Transparency = 1
							kniferange.Name = 'kniferange'
							kniferange.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.p
							kniferange.CanCollide = false
							local bb = Instance.new("Decal",kniferange)
							bb.Texture = 'http://www.roblox.com/asset/?id=107020846'
							bb.Face = 'Left'
							local bb = Instance.new("Decal",kniferange)
							bb.Texture = 'http://www.roblox.com/asset/?id=107020846'
							bb.Face = 'Right'
							kniferange.Massless = true
							local XD = Instance.new("Weld", game.Players.LocalPlayer.Character.HumanoidRootPart)
							XD.Part0 = XD.Parent
							XD.Part1 = kniferange
							XD.C0 = CFrame.Angles(0,0,1.6)
						end
					end
				end
			end
		end
	end
end)
function smallblock(pos)
	if pos then
		local block = Instance.new('Part',workspace)
		block.Anchored = true
		block.Size = Vector3.new(0.3,0.3,0.3)
		block.Position = pos
		block.CanCollide = false
		block.Material = Enum.Material.SmoothPlastic
		block.Color = Color3.fromRGB(255, 71, 129)
		game.Debris:AddItem(block,2)
	end
end
function CheckRig()
    if lplr.Character then
        local Humanoid = lplr.Character:WaitForChild('Humanoid')
        if Humanoid.RigType == Enum.HumanoidRigType.R15 then
            return 'R15'
        else
            return 'R6'
        end
    end
end
function InitiateAA()
    local Character = lplr.Character
    local StoredCF = Character.PrimaryPart.CFrame
    local Part = Instance.new('Part',workspace)
    Part.Size = Vector3.new(5,0,5)
    Part.Anchored = true
    Part.CFrame = CFrame.new(Vector3.new(9999,9999,9999))
    Character.PrimaryPart.CFrame = Part.CFrame*CFrame.new(0,3,0)
    spawn(function()
		wait(2)
        Part:Destroy()
    end)
	if CheckRig() == 'R6' then
        local Clone = Character.HumanoidRootPart:Clone()
        Character.HumanoidRootPart:Destroy()
        Clone.Parent = Character
    else
        local Clone = Character.LowerTorso.Root:Clone()
        Character.LowerTorso.Root:Destroy()
        Clone.Parent = Character.LowerTorso
	end
	wait()
	Character.PrimaryPart.CFrame = StoredCF
end
function beam(part,pos,yeeet)
	if part then
		if part.Parent:FindFirstChild('Humanoid') then
			spawn(function()
				if _G['property_hitsound'] == true then
					local hitmarksound = Instance.new('Sound',workspace)
					hitmarksound.SoundId = 'rbxassetid://4491275997'
					hitmarksound.PlayOnRemove = true
					hitmarksound.Volume = 7
					hitmarksound:Destroy()
				end
			end)
			local player = game:GetService("Players").LocalPlayer
			local ray = Ray.new(yeeet, (pos - yeeet).unit * 300)
			local part, position = workspace:FindPartOnRay(ray, player.Character, false, true)
			local beam = Instance.new("Part", workspace)
			beam.BrickColor = BrickColor.new("Bright red")
			beam.FormFactor = "Custom"
			beam.Material = "Neon"
			beam.Transparency = 0.5
			beam.Anchored = true
			beam.Locked = true
			beam.CanCollide = false
			
			local distance = (player.Character.Head.CFrame.p - position).magnitude
			beam.Size = Vector3.new(0.08, 0.05, distance)
			beam.CFrame = CFrame.new(player.Character.Head.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
			game.Debris:AddItem(beam,2)
		end
	end
end
local UserInputService = game:GetService("UserInputService")

local space = Enum.KeyCode.Space
local function keyspacedown()
	return UserInputService:IsKeyDown(space)
end
local function Input(input, gameProcessedEvent)
	if keyspacedown() then
		spaceheld = true
	else
		spaceheld = false
	end
end
 
UserInputService.InputBegan:Connect(Input)
spawn(function()
	while wait(0.3) do
		if lplr.Character then
			if _G['property_grenadewalk'] == true then
				local oh1 = game:GetService("ReplicatedStorage").Weapons[_G['property_grenadewalktype']].Model
				local oh3 = 25
				local oh4 = 35
				local oh6 = ""
				local oh7 = ""
				game:GetService("ReplicatedStorage").Events.ThrowGrenade:FireServer(oh1, nil, oh3, oh4, Vector3.new(0,-100,0), oh6, oh7)
			end
		end
	end
end)
function getspectators()
	local plrsspectating = ""
	for i,v in pairs(game.Players:GetPlayers()) do 
		pcall(function()
			if v ~= lplr then
				if not v.Character then 
					if (v.CameraCF.Value.p - workspace.CurrentCamera.CFrame.p).Magnitude < 20 then 
						if plrsspectating == "" then
							plrsspectating = v.Name
						else
							plrsspectating = plrsspectating..'\n'..v.Name
						end
					end
				end
			end
		end)
	end
	return plrsspectating
end
spawn(function()
	while wait(0.1) do
		if _G['property_triggerbot'] == true then
			if lplr.Character then
				if m.Target then
					if m.Target.Parent:FindFirstChild("Humanoid") then
						pcall(function()
							if game.Players[m.Target.Parent.Name].Team ~= lplr.Team then
								spawn(function()
									mouse1press()
									wait()
									mouse1release()
								end)
							end
						end)
					end
				end
			end
		end
	end
end)
_G['btn1down'] = false
m.Button1Down:Connect(function()
	_G['btn1down'] = true
end)
m.Button1Up:Connect(function()
	_G['btn1down'] = false
end)

workspace.CurrentCamera.ChildAdded:Connect(function(t)
	spawn(function()
		if t.Name == 'Arms' then
			if _G['property_tps'] == true then
				for i,v in pairs(t:GetDescendants()) do 
					if v:IsA("BasePart") and v.Transparency ~= 1 then 
						v.Transparency = 1
					end
				end
			else
				for i,v in pairs(t:GetDescendants()) do 
					if v:IsA("BasePart") and v.Transparency ~= 1 then 
						v.Transparency = _G['property_armtransparency']/100
					end
				end
			end
		end
	end)
end)

m.KeyDown:Connect(function(k)
	if string.byte(k) == 61 then
		fovview.Visible = (not fovview.Visible)
		main.Visible = (not main.Visible)
		configmain.Visible = false
	end
end)

game.Players.PlayerRemoving:Connect(function(p)
	if p == lplr then
		savenewconfig()
		if _G['property_autorejoin'] == true then
			local ts = game:GetService("TeleportService")
			local p = game:GetService("Players").LocalPlayer
			 
			ts:Teleport(game.PlaceId, p)
		end
	end
end)
local cameradebris = game:GetService("Workspace").Camera.Debris
function checkdebris(obj)
	spawn(function()
		if obj.Name == 'Bullet' then
			if _G['property_disablebulletholes'] == true then
				obj:Destroy()
			end
		elseif obj.Name == 'C4' then
			if _G['property_weaponsesp'] == true then
				boxespweapon(obj)
			end
		elseif obj:IsA('Part') then
			if _G['property_bombesp'] == true then
				boxespweapon(obj)
			end
		elseif obj:IsA('Model') then
			if _G['property_disablerenderingragdolls'] == true then
				boxespweapon(obj)
			end
		end
	end)
end
cameradebris.ChildAdded:connect(function(obj)
	spawn(function()
		if obj.Name == 'Blood' then
			if _G['property_disableblood'] == true then
				obj:Destroy()
			end
		end
	end)
end)
game:GetService("Workspace").Debris.ChildAdded:connect(function(obj)
	checkdebris(obj)
end)
game:GetService("Workspace")["Ray_Ignore"].Smokes.ChildAdded:connect(function(obj)
	spawn(function() 
		if _G['property_grenadesesp'] == true then
			boxespweapon(obj)
		end
	end)
end)
local Space = Enum.KeyCode.Space
local function Input(input, gameProcessedEvent)
	if input.UserInputType == Enum.UserInputType.MouseButton3 then
		if _G['property_tps'] == true then
			configfolder.tps.Value = (not configfolder.tps.Value)
		end
	end
	if _G.autohop == true then
		if UserInputService:IsKeyDown(Space) then
			holdspace = true
		else
			holdspace = false
		end
	end
end 
UserInputService.InputBegan:Connect(Input)
draggable(main)
draggable(configmain)
draggable(spectatorlist)

username.Text = _G['bloxtapusername']

loadsavedfileconfig()