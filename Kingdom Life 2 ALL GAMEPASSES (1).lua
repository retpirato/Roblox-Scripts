-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local V3rm = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Slots = Instance.new("Frame")
local East = Instance.new("TextButton")
local West = Instance.new("TextButton")
local South = Instance.new("TextButton")
local Inn = Instance.new("TextButton")
local Elven = Instance.new("TextButton")
local Cave = Instance.new("TextButton")
local Bar = Instance.new("TextButton")
local Lake = Instance.new("TextButton")
local Crypt = Instance.new("TextButton")
local Castle = Instance.new("TextButton")
local TextBox = Instance.new("TextBox")
local Wizard = Instance.new("TextButton")
local Bar_2 = Instance.new("TextButton")
--Properties:
V3rm.Name = "V3rm"
V3rm.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
V3rm.ResetOnSpawn = false

MainFrame.Name = "MainFrame"
MainFrame.Parent = V3rm
MainFrame.Active = true
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.new(1, 1, 1)
MainFrame.BackgroundTransparency = 1
MainFrame.ClipsDescendants = true
MainFrame.Position = UDim2.new(0.36804235, 0, 0.224201471, 0)
MainFrame.Selectable = true
MainFrame.Size = UDim2.new(0.484438837, 0, 0.401719898, 0)

Slots.Name = "Slots"
Slots.Parent = MainFrame
Slots.Active = true
Slots.AnchorPoint = Vector2.new(0.5, 0.5)
Slots.BackgroundColor3 = Color3.new(0.890196, 0.890196, 0.890196)
Slots.BorderSizePixel = 5
Slots.Position = UDim2.new(0.428909421, 0, 0.647095323, 0)
Slots.Selectable = true
Slots.Size = UDim2.new(0.544671714, 0, 0.468830109, 0)
Slots.ZIndex = 2

East.Name = "East"
East.Parent = Slots
East.AnchorPoint = Vector2.new(0.5, 0.5)
East.BackgroundColor3 = Color3.new(0.917647, 0.14902, 0.0470588)
East.BackgroundTransparency = 0.20000000298023
East.Position = UDim2.new(0.482369423, 0, 0.68658638, 0)
East.Size = UDim2.new(0.282192618, 0, 0.146419004, 0)
East.ZIndex = 20
East.Font = Enum.Font.SourceSans
East.Text = "East Camp"
East.TextColor3 = Color3.new(0, 0, 0)
East.TextSize = 14

West.Name = "West"
West.Parent = Slots
West.AnchorPoint = Vector2.new(0.5, 0.5)
West.BackgroundColor3 = Color3.new(0.917647, 0.14902, 0.0470588)
West.BackgroundTransparency = 0.20000000298023
West.Position = UDim2.new(0.160235032, 0, 0.690543652, 0)
West.Size = UDim2.new(0.282192618, 0, 0.146419004, 0)
West.ZIndex = 20
West.Font = Enum.Font.SourceSans
West.Text = "West Camp"
West.TextColor3 = Color3.new(0, 0, 0)
West.TextSize = 14

South.Name = "South"
South.Parent = Slots
South.AnchorPoint = Vector2.new(0.5, 0.5)
South.BackgroundColor3 = Color3.new(0.917647, 0.14902, 0.0470588)
South.BackgroundTransparency = 0.20000000298023
South.Position = UDim2.new(0.80648005, 0, 0.496637434, 0)
South.Size = UDim2.new(0.282192618, 0, 0.146419004, 0)
South.ZIndex = 20
South.Font = Enum.Font.SourceSans
South.Text = "South Camp"
South.TextColor3 = Color3.new(0, 0, 0)
South.TextSize = 14

Inn.Name = "Inn"
Inn.Parent = Slots
Inn.AnchorPoint = Vector2.new(0.5, 0.5)
Inn.BackgroundColor3 = Color3.new(0.917647, 0.14902, 0.0470588)
Inn.BackgroundTransparency = 0.20000000298023
Inn.Position = UDim2.new(0.482369423, 0, 0.496637434, 0)
Inn.Size = UDim2.new(0.282192618, 0, 0.146419004, 0)
Inn.ZIndex = 20
Inn.Font = Enum.Font.SourceSans
Inn.Text = "Inn"
Inn.TextColor3 = Color3.new(0, 0, 0)
Inn.TextSize = 14

Elven.Name = "Elven"
Elven.Parent = Slots
Elven.AnchorPoint = Vector2.new(0.5, 0.5)
Elven.BackgroundColor3 = Color3.new(0.917647, 0.14902, 0.0470588)
Elven.BackgroundTransparency = 0.20000000298023
Elven.Position = UDim2.new(0.160235032, 0, 0.496637434, 0)
Elven.Size = UDim2.new(0.282192618, 0, 0.146419004, 0)
Elven.ZIndex = 20
Elven.Font = Enum.Font.SourceSans
Elven.Text = "Elvin Forest"
Elven.TextColor3 = Color3.new(0, 0, 0)
Elven.TextSize = 14

Cave.Name = "Cave"
Cave.Parent = Slots
Cave.AnchorPoint = Vector2.new(0.5, 0.5)
Cave.BackgroundColor3 = Color3.new(0.917647, 0.14902, 0.0470588)
Cave.BackgroundTransparency = 0.20000000298023
Cave.Position = UDim2.new(0.80648005, 0, 0.302731186, 0)
Cave.Size = UDim2.new(0.282192618, 0, 0.146419004, 0)
Cave.ZIndex = 20
Cave.Font = Enum.Font.SourceSans
Cave.Text = "Dwarf Cave"
Cave.TextColor3 = Color3.new(0, 0, 0)
Cave.TextSize = 14

Bar.Name = "Bar"
Bar.Parent = Slots
Bar.AnchorPoint = Vector2.new(0.5, 0.5)
Bar.BackgroundColor3 = Color3.new(0.917647, 0.14902, 0.0470588)
Bar.BackgroundTransparency = 0.20000000298023
Bar.Position = UDim2.new(0.482369423, 0, 0.302731186, 0)
Bar.Size = UDim2.new(0.282192618, 0, 0.146419004, 0)
Bar.ZIndex = 20
Bar.Font = Enum.Font.SourceSans
Bar.Text = "Bar"
Bar.TextColor3 = Color3.new(0, 0, 0)
Bar.TextSize = 14

Lake.Name = "Lake"
Lake.Parent = Slots
Lake.AnchorPoint = Vector2.new(0.5, 0.5)
Lake.BackgroundColor3 = Color3.new(0.917647, 0.14902, 0.0470588)
Lake.BackgroundTransparency = 0.20000000298023
Lake.Position = UDim2.new(0.160235032, 0, 0.302731186, 0)
Lake.Size = UDim2.new(0.282192618, 0, 0.146419004, 0)
Lake.ZIndex = 20
Lake.Font = Enum.Font.SourceSans
Lake.Text = "Lake"
Lake.TextColor3 = Color3.new(0, 0, 0)
Lake.TextSize = 14

Crypt.Name = "Crypt"
Crypt.Parent = Slots
Crypt.AnchorPoint = Vector2.new(0.5, 0.5)
Crypt.BackgroundColor3 = Color3.new(0.917647, 0.14902, 0.0470588)
Crypt.BackgroundTransparency = 0.20000000298023
Crypt.Position = UDim2.new(0.80648005, 0, 0.116739482, 0)
Crypt.Size = UDim2.new(0.282192618, 0, 0.146419004, 0)
Crypt.ZIndex = 20
Crypt.Font = Enum.Font.SourceSans
Crypt.Text = "Crypt"
Crypt.TextColor3 = Color3.new(0, 0, 0)
Crypt.TextSize = 14

Castle.Name = "Castle"
Castle.Parent = Slots
Castle.AnchorPoint = Vector2.new(0.5, 0.5)
Castle.BackgroundColor3 = Color3.new(0.917647, 0.14902, 0.0470588)
Castle.BackgroundTransparency = 0.20000000298023
Castle.Position = UDim2.new(0.482369393, 0, 0.116739482, 0)
Castle.Size = UDim2.new(0.282192618, 0, 0.146419004, 0)
Castle.ZIndex = 20
Castle.Font = Enum.Font.SourceSans
Castle.Text = "Castle"
Castle.TextColor3 = Color3.new(0, 0, 0)
Castle.TextSize = 14

TextBox.Parent = Slots
TextBox.AnchorPoint = Vector2.new(0.5, 0.5)
TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox.BackgroundTransparency = 1
TextBox.Position = UDim2.new(0.559288502, 0, 0.906214893, 0)
TextBox.Size = UDim2.new(0.395256907, 0, 0.197863519, 0)
TextBox.ZIndex = 50
TextBox.Font = Enum.Font.SourceSans
TextBox.Text = "Made by TheRotators"
TextBox.TextColor3 = Color3.new(0, 0, 0)
TextBox.TextScaled = true
TextBox.TextSize = 14
TextBox.TextWrapped = true

Wizard.Name = "Wizard"
Wizard.Parent = Slots
Wizard.AnchorPoint = Vector2.new(0.5, 0.5)
Wizard.BackgroundColor3 = Color3.new(0.917647, 0.14902, 0.0470588)
Wizard.BackgroundTransparency = 0.20000000298023
Wizard.Position = UDim2.new(0.160235032, 0, 0.116739482, 0)
Wizard.Size = UDim2.new(0.282192618, 0, 0.146419004, 0)
Wizard.ZIndex = 20
Wizard.Font = Enum.Font.SourceSans
Wizard.Text = "Wizard Tower"
Wizard.TextColor3 = Color3.new(0, 0, 0)
Wizard.TextSize = 14

Bar_2.Name = "Bar"
Bar_2.Parent = Slots
Bar_2.AnchorPoint = Vector2.new(0.5, 0.5)
Bar_2.BackgroundColor3 = Color3.new(0.917647, 0.14902, 0.0470588)
Bar_2.BackgroundTransparency = 0.20000000298023
Bar_2.Position = UDim2.new(0.805386961, 0, 0.686285257, 0)
Bar_2.Size = UDim2.new(0.282192618, 0, 0.146419004, 0)
Bar_2.ZIndex = 20
Bar_2.Font = Enum.Font.SourceSans
Bar_2.Text = "All Gamepass"
Bar_2.TextColor3 = Color3.new(0, 0, 0)
Bar_2.TextSize = 14
-- Scripts:
function SCRIPT_AJQX85_FAKESCRIPT() -- MainFrame.V3rm 
local script = Instance.new('LocalScript')
script.Parent = MainFrame

player = game.Players.LocalPlayer
mouse = player:GetMouse()
guiFrame = script.Parent
guiFrame.Size = UDim2.new(0, 806, 0, 0)
guiFrame.Visible = true
local visible = false
mouse.KeyDown:connect(function(key)
if key == "x" then
if not visible then
guiFrame:TweenSize(UDim2.new(0, 806, 0, 376), "InOut", "Quad", 0.3, true)
visible = true
else
guiFrame:TweenSize(UDim2.new(0, 806, 0, 0), "InOut", "Quad", 0.3, true)
visible = false
end
end
end)


end
coroutine.resume(coroutine.create(SCRIPT_AJQX85_FAKESCRIPT))
function SCRIPT_ZNCQ87_FAKESCRIPT() -- East.Script 
local script = Instance.new('Script')
script.Parent = East
script.Parent.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Spawns["East Camp"].CFrame
end)

end
coroutine.resume(coroutine.create(SCRIPT_ZNCQ87_FAKESCRIPT))
function SCRIPT_HCQW66_FAKESCRIPT() -- West.Script 
local script = Instance.new('Script')
script.Parent = West
script.Parent.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Spawns["West Camp"].CFrame
end)

end
coroutine.resume(coroutine.create(SCRIPT_HCQW66_FAKESCRIPT))
function SCRIPT_FPQK76_FAKESCRIPT() -- South.Script 
local script = Instance.new('Script')
script.Parent = South
script.Parent.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Spawns["Southern Camp"].CFrame

end)

end
coroutine.resume(coroutine.create(SCRIPT_FPQK76_FAKESCRIPT))
function SCRIPT_XJPD80_FAKESCRIPT() -- Inn.Script 
local script = Instance.new('Script')
script.Parent = Inn
script.Parent.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Spawns.Inn.CFrame

end)

end
coroutine.resume(coroutine.create(SCRIPT_XJPD80_FAKESCRIPT))
function SCRIPT_KEUB90_FAKESCRIPT() -- Elven.Script 
local script = Instance.new('Script')
script.Parent = Elven
script.Parent.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Spawns["Elven Forest"].CFrame

end)

end
coroutine.resume(coroutine.create(SCRIPT_KEUB90_FAKESCRIPT))
function SCRIPT_XRVI71_FAKESCRIPT() -- Cave.Script 
local script = Instance.new('Script')
script.Parent = Cave
script.Parent.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Spawns["Dwarf Cave"].CFrame
end)

end
coroutine.resume(coroutine.create(SCRIPT_XRVI71_FAKESCRIPT))
function SCRIPT_TCGW76_FAKESCRIPT() -- Bar.Script 
local script = Instance.new('Script')
script.Parent = Bar
script.Parent.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Spawns["Bar"].CFrame
end)

end
coroutine.resume(coroutine.create(SCRIPT_TCGW76_FAKESCRIPT))
function SCRIPT_TBJV65_FAKESCRIPT() -- Lake.Script 
local script = Instance.new('Script')
script.Parent = Lake

script.Parent.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Spawns["Lake"].CFrame

end)

end
coroutine.resume(coroutine.create(SCRIPT_TBJV65_FAKESCRIPT))
function SCRIPT_PLOO82_FAKESCRIPT() -- Crypt.Script 
local script = Instance.new('Script')
script.Parent = Crypt
script.Parent.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Spawns["Crypt"].CFrame
end)

end
coroutine.resume(coroutine.create(SCRIPT_PLOO82_FAKESCRIPT))
function SCRIPT_BJZR80_FAKESCRIPT() -- Castle.Script 
local script = Instance.new('Script')
script.Parent = Castle
script.Parent.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Spawns["Castle"].CFrame
end)

end
coroutine.resume(coroutine.create(SCRIPT_BJZR80_FAKESCRIPT))
function SCRIPT_JJHT75_FAKESCRIPT() -- Wizard.Script 
local script = Instance.new('Script')
script.Parent = Wizard

script.Parent.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Spawns["Wizard Tower"].CFrame
end)

end
coroutine.resume(coroutine.create(SCRIPT_JJHT75_FAKESCRIPT))
function SCRIPT_GPSU76_FAKESCRIPT() -- Bar_2.Script 
local script = Instance.new('Script')
script.Parent = Bar_2
script.Parent.MouseButton1Click:connect(function()
game:GetService("Players").LocalPlayer.UserId = 20415935
end)

end
coroutine.resume(coroutine.create(SCRIPT_GPSU76_FAKESCRIPT))