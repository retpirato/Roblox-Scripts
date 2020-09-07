getgenv().get = function(link) return game:HttpGet(link, true) end
spawn(function() loadstring(get('https://pastebin.com/raw/CUg5Xw94'))() end)
repeat wait() until getgenv().isBypassed and getgenv().store

if getgenv().if_settings then
for i,v in pairs(getgenv().if_settings) do
if i == 'distance_t' then getgenv().if_settings[i] = true elseif i == 'curAim' then v:Disconnect() end
if type(v) == 'boolean' then
getgenv().if_settings[i] = false
end
end
end
getgenv().if_settings = getgenv().if_settings or {}

if_settings.legit_settings = {
smoothness = 0
}

if_settings.legit_bot = false
if_settings.aim_bot = false
if_settings.mouse_t = false
if_settings.distance_t = true
if_settings.bighead_t = false
if_settings.options_toggle = false
if_settings.mashead_t = false

if_settings.box_toggle = false
if_settings.name_toggle = false
if_settings.distance_toggle = false
if_settings.backpack_toggle = false
if_settings.health_toggle = false
if_settings.chams_toggle = false
if_settings.itemchams_toggle = false
if_settings.lvl_toggle = false
if_settings.s_toggle = false

if_settings.rhouses_toggle = false
if_settings.noclip_toggle = false
if_settings.flying = false
if_settings.fly_toggle = false
if_settings.invis_a = false

--// Settings
local settings = {}
settings.toggleButton = "LeftControl" --//Keys are at https://wiki.roblox.com/index.php?title=API:Enum/KeyCode
settings.Color = Color3.fromRGB(60, 62, 66)
settings.ToggleColor = Color3.fromRGB(187, 255, 0)
settings.Version = "4.0"
local ScreenGui = Instance.new('ScreenGui', store)
local gui_elements = Instance.new('ScreenGui', store)
local Blur = Instance.new("BlurEffect", ScreenGui)

if store:FindFirstChild('IslandFricker') then
store.IslandFricker:Destroy()
end

if store:FindFirstChild('IslandFricker_GUIElements') then
store.IslandFricker_GUIElements:Destroy()
end

if store:FindFirstChild('PLR_ESP') then
store.PLR_ESP:Destroy()
end

if store:FindFirstChild('Chams') then
store.Chams:Destroy()
end

if game:GetService('Lighting'):FindFirstChild('IF_Blur') then
game:GetService('Lighting').IF_Blur:Destroy()
end

Blur.Name = "IF_Blur"
Blur.Size = 20
ScreenGui.Name = 'IslandFricker'
ScreenGui.ResetOnSpawn = false
ScreenGui.Enabled = false
gui_elements.Name = 'IslandFricker_GUIElements'
gui_elements.ResetOnSpawn = false

spawn(function() loadstring(get('https://pastebin.com/raw/wQTMjD32', true))() Blur.Parent = game.Lighting; ScreenGui.Enabled = true; end)

function createHeader(Title,x,y)
local Header = Instance.new("TextButton")
local List = Instance.new("Frame")
Header.Name = Title
Header.Parent = ScreenGui
Header.BackgroundColor3 = settings.Color
Header.BorderSizePixel = 0
Header.Draggable = true
Header.Position = UDim2.new(0, x, 0, y)
Header.Size = UDim2.new(0, 245, 0, 35)
Header.ZIndex = 2
Header.Font = Enum.Font.SourceSans
Header.Text = Title
Header.TextColor3 = Color3.new(1, 1, 1)
Header.TextSize = 21

List.Name = "List"
List.Parent = Header
List.BackgroundColor3 = Color3.new(0, 0, 0)
List.BackgroundTransparency = 0.60000002384186
List.BorderSizePixel = 0
List.ClipsDescendants = true
List.Position = UDim2.new(0, 0, 0, 0)
List.Size = UDim2.new(0, 245, 0, 35)

Header.MouseButton1Click:Connect(function()
if List.Size.Y.Offset <= 35 then
List:TweenSize(UDim2.new(0,245,0,35+30*#List:GetChildren()),Enum.EasingDirection.Out,Enum.EasingStyle.Quint,0.7)
else
List:TweenSize(UDim2.new(0,245,0,30),Enum.EasingDirection.Out,Enum.EasingStyle.Quint,0.7)
end 
end)

return Header
end

function createHeader_noAnim(Title, x, y)
local Header = Instance.new("TextButton")
local List = Instance.new("Frame")
Header.Name = Title
Header.Parent = ScreenGui
Header.BackgroundColor3 = settings.Color
Header.BorderSizePixel = 0
Header.Draggable = true
Header.Position = UDim2.new(0, x, 0, y)
Header.Size = UDim2.new(0, 245, 0, 35)
Header.ZIndex = 2
Header.Font = Enum.Font.SourceSans
Header.Text = Title
Header.TextColor3 = Color3.new(1, 1, 1)
Header.TextSize = 21

List.Name = "List"
List.Parent = Header
List.BackgroundColor3 = Color3.new(0, 0, 0)
List.BackgroundTransparency = 0.60000002384186
List.BorderSizePixel = 0
List.ClipsDescendants = true
List.Position = UDim2.new(0, 0, 0, 0)
List.Size = UDim2.new(0, 245, 0, 35)

return Header
end

function addButton(Title,Header,func)
local Button = Instance.new("TextButton")
Button.Name = Title .. "_Button"
Button.Parent = Header.List
Button.BackgroundColor3 = Color3.new(1, 1, 1)
Button.BackgroundTransparency = 1
Button.Position = UDim2.new(0, 0, 0, 5+30*#Header.List:GetChildren())
Button.Size = UDim2.new(0, 245, 0, 30)
Button.Font = Enum.Font.SourceSansBold
Button.Text = " >  "..Title
Button.TextColor3 = Color3.new(1, 1, 1)
Button.TextSize = 25
Button.TextXAlignment = Enum.TextXAlignment.Left
if func ~= nil then
Button.MouseButton1Click:Connect(func)
end

return Button
end

function rayCast(input)
if typeof(input) == 'Instance' and input:IsA('Player') then
local cam = workspace:FindFirstChildOfClass("Camera") or workspace.Camera or workspace.CurrentCamera
local Ray = Ray.new(cam.CFrame.p, (input.Character:FindFirstChild("Head").Position - cam.CFrame.p).unit * 2048)
local part = workspace:FindPartOnRayWithIgnoreList(Ray, {game.Players.LocalPlayer.Character})
if part ~= nil and part:IsDescendantOf(input.Character) then
return true
end
return false
end

return distanceCalculator('closest')
end

function distanceCalculator(sentDistance)
if not game.Players.LocalPlayer.Character then return end
if sentDistance == nil or sentDistance == '' then
local Players = { }

for i,v in pairs(game.Players:GetChildren()) do
if v.Name ~= game.Players.LocalPlayer.Name and v:FindFirstChild('TeamName') and v.TeamName.Value ~= game.Players.LocalPlayer.TeamName.Value and v.Character and v.Character:FindFirstChild('HumanoidRootPart') then
local dist = v:DistanceFromCharacter(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
Players[v.Name] = dist
else
Players[v.Name] = "LocalPlayer"
end
end

return Players
elseif sentDistance ~= nil and sentDistance == 'closest' then
local closest = 0
local calc = distanceCalculator()

local num = false
for i,v in pairs(calc) do
if (v ~= 'LocalPlayer' and game.Players:FindFirstChild(i) and game.Players[i].Character and rayCast(game.Players[i]) and game.Players[i]:FindFirstChild('TeamName') and game.Players[i].TeamName.Value ~= game.Players.LocalPlayer.TeamName.Value and (not num or v < num)) then
closest = i;
num = v;
end
end

return game.Players:FindFirstChild(tostring(closest))
else
local plr = game.Players.LocalPlayer
local sentCalculations = {}

for i,v in pairs(game.Players:GetChildren()) do
if v.Name ~= plr.Name and sentDistance.p and v:FindFirstChild('TeamName') and v.TeamName.Value ~= game.Players.LocalPlayer.TeamName.Value and v.Character and v.Character:FindFirstChild('HumanoidRootPart') then
local distance = (sentDistance.p - v.Character.HumanoidRootPart.Position).magnitude
distance = distance
sentCalculations[v.Name] = distance
end
end

return sentCalculations
end
end

function makeESP(sentObj)
local plrfolder;
if store:FindFirstChild('PLR_ESP') then
plrfolder = store.PLR_ESP
else
plrfolder = Instance.new('Folder')
plrfolder.Name = "PLR_ESP"
plrfolder.Parent = store
end

if sentObj ~= nil and sentObj:IsA('Player') and sentObj ~= game.Players.LocalPlayer and sentObj.Character then
local distance_fol = Instance.new('Folder')
local health_fol = Instance.new('Folder')
local backpack_fol = Instance.new('Folder')
local box_fol = Instance.new('Folder')

-- main ui
local b_gui = Instance.new('BillboardGui')
b_gui.Name = sentObj.Name .. "_Visuals"
b_gui.AlwaysOnTop = true
b_gui.Size = UDim2.new(8, 0, 12, 0)
b_gui.StudsOffset = Vector3.new(0, 0.75, 0)
b_gui.ZIndexBehavior = "Sibling"
b_gui.LightInfluence = 0
if sentObj.Character then
b_gui.Adornee = sentObj.Character:FindFirstChild('HumanoidRootPart')
else
b_gui:Destroy()
distance_fol:Destroy()
health_fol:Destroy()
backpack_fol:Destroy()
box_fol:Destroy()
end
b_gui.Parent = plrfolder

-- make folders
distance_fol.Name = "distance"
distance_fol.Parent = b_gui

health_fol.Name = "health"
health_fol.Parent = b_gui

backpack_fol.Name = "backpack"
backpack_fol.Parent = b_gui

box_fol.Name = "box"
box_fol.Parent = b_gui

-- make esp features

local name_label = Instance.new('TextLabel')
name_label.Name = "name"
name_label.Size = UDim2.new(0.5, 0, 0.1, 0)
name_label.Position = UDim2.new(0.25, 0, 0.085, 0)
name_label.BackgroundTransparency = 1
name_label.BorderSizePixel = 0
name_label.Font = "SourceSansBold"
if sentObj.Name ~= game.Players.LocalPlayer.Name then
name_label.Text = sentObj.Name
else
name_label.Text = "LocalPlayer"
end
name_label.TextScaled = true
name_label.TextStrokeColor3 = Color3.fromRGB(42, 42, 42)
name_label.TextColor3 = Color3.fromRGB(255, 255, 255)
name_label.TextStrokeTransparency = 0.9
name_label.TextWrapped = true
name_label.Visible = false
name_label.Parent = b_gui

local lvl_label = Instance.new('TextLabel')
lvl_label.Name = "lvl"
lvl_label.Position = UDim2.new(0.25, 0, 0.03, 0)
lvl_label.Size = UDim2.new(0.5, 0, 0.06, 0)
lvl_label.BackgroundTransparency = 1
lvl_label.BorderSizePixel = 0
lvl_label.TextColor3 = Color3.fromRGB(42, 206, 255)
lvl_label.TextScaled = true
lvl_label.TextStrokeTransparency = 0.9
lvl_label.TextWrapped = true
lvl_label.TextStrokeColor3 = Color3.fromRGB(42, 42, 42)
lvl_label.Text = "Level " .. tostring(game:GetService("ReplicatedStorage").Player_Data[sentObj.Name].Player_Level.Value)

lvl_label.Visible = false
lvl_label.Parent = b_gui

-- actual box esp
local box_l_frame = Instance.new('Frame')
box_l_frame.Name = "side_left"
box_l_frame.BackgroundTransparency = 0
box_l_frame.BackgroundColor3 = Color3.fromRGB(235, 255, 103)
box_l_frame.BorderSizePixel = 0
box_l_frame.Position = UDim2.new(0.18, 0, 0.2, 0)
box_l_frame.Size = UDim2.new(0.02, 0, 0.6, 0)
box_l_frame.Visible = false
box_l_frame.Parent = box_fol

local box_r_frame = Instance.new('Frame')
box_r_frame.Name = "side_right"
box_r_frame.BackgroundTransparency = 0
box_r_frame.BackgroundColor3 = Color3.fromRGB(235, 255, 103)
box_r_frame.BorderSizePixel = 0
box_r_frame.Position = UDim2.new(0.78, 0, 0.2, 0)
box_r_frame.Size = UDim2.new(0.02, 0, 0.6, 0)
box_r_frame.Visible = false
box_r_frame.Parent = box_fol

local box_t_frame = Instance.new('Frame')
box_t_frame.Name = "side_top"
box_t_frame.BackgroundTransparency = 0
box_t_frame.BackgroundColor3 = Color3.fromRGB(235, 255, 103)
box_t_frame.BorderSizePixel = 0
box_t_frame.Position = UDim2.new(0.2, 0, 0.2, 0)
box_t_frame.Size = UDim2.new(0.6, 0, 0.015, 0)
box_t_frame.Visible = false
box_t_frame.Parent = box_fol

local box_b_frame = Instance.new('Frame')
box_b_frame.Name = "side_bottom"
box_b_frame.BackgroundTransparency = 0
box_b_frame.BackgroundColor3 = Color3.fromRGB(235, 255, 103)
box_b_frame.BorderSizePixel = 0
box_b_frame.Position = UDim2.new(0.18, 0, 0.8, 0)
box_b_frame.Size = UDim2.new(0.627, 0, 0.015, 0)
box_b_frame.Visible = false
box_b_frame.Parent = box_fol

-- health
local health_b_frame = Instance.new('Frame')
health_b_frame.Name = "health_bar"
health_b_frame.BackgroundColor3 = Color3.fromRGB(0, 225, 119)
health_b_frame.BorderColor3 = Color3.fromRGB(0, 223, 74)
health_b_frame.BorderSizePixel = 2
health_b_frame.Position = UDim2.new(0.83, 0, 0.75, 0)
health_b_frame.Size = UDim2.new(0.7, 0, 0.03, 0)
health_b_frame.Visible = false
health_b_frame.Parent = health_fol

local health_label = Instance.new('TextLabel')
health_label.Name = "health_label"
health_label.BackgroundTransparency = 1
health_label.BorderSizePixel = 0
health_label.Position = UDim2.new(0.83, 0, 0.64, 0)
health_label.Size = UDim2.new(0.7, 0, 0.1, 0)
health_label.Text = "Health"
health_label.Font = "SourceSansBold"
health_label.TextColor3 = Color3.fromRGB(255, 255, 255)
health_label.TextScaled = true
health_label.TextWrapped = true
health_label.TextStrokeColor3 = Color3.fromRGB(42, 42, 42)
health_label.TextStrokeTransparency = 0.9
health_label.Visible = false
health_label.Parent = health_fol

-- distance
local distance_label = Instance.new('TextLabel')
distance_label.Name = "distance"
distance_label.BackgroundTransparency = 1
distance_label.BorderSizePixel = 0
distance_label.Position = UDim2.new(-0.44, 0, 0.2, 0)
distance_label.Size = UDim2.new(0.6, 0, 0.1, 0)
distance_label.Text = "Distance"
distance_label.Font = "SourceSansBold"
distance_label.TextColor3 = Color3.fromRGB(255, 255, 255)
distance_label.TextScaled = true
distance_label.TextWrapped = true
distance_label.TextStrokeColor3 = Color3.fromRGB(42, 42, 42)
distance_label.TextStrokeTransparency = 0.9
distance_label.Visible = false
distance_label.Parent = distance_fol

local distance_num_label = Instance.new('TextLabel')
distance_num_label.Name = "distance_num"
distance_num_label.BackgroundTransparency = 1
distance_num_label.BorderSizePixel = 0
distance_num_label.Position = UDim2.new(-0.44, 0, 0.3, 0)
distance_num_label.Size = UDim2.new(0.6, 0, 0.07, 0)
distance_num_label.Text = "Getting Player Distance"
distance_num_label.Font = "SourceSansBold"
distance_num_label.TextColor3 = Color3.fromRGB(255, 255, 255)
distance_num_label.TextScaled = true
distance_num_label.TextWrapped = true
distance_num_label.TextStrokeColor3 = Color3.fromRGB(42, 42, 42)
distance_num_label.TextStrokeTransparency = 0.9
distance_num_label.Visible = false
distance_num_label.Parent = distance_fol

-- backpack
local s_1 = Instance.new('BoolValue', backpack_fol)
local s_2 = Instance.new('BoolValue', backpack_fol)
local s_3 = Instance.new('BoolValue', backpack_fol)
local s_4 = Instance.new('BoolValue', backpack_fol)
local s_5 = Instance.new('BoolValue', backpack_fol)
local s_6 = Instance.new('BoolValue', backpack_fol)

s_1.Name = "slot1"
s_2.Name = "slot2"
s_3.Name = "slot3"
s_4.Name = "slot4"
s_5.Name = "slot5"
s_6.Name = "slot6"
s_1.Value = false
s_2.Value = false
s_3.Value = false
s_4.Value = false
s_5.Value = false
s_6.Value = false

local backpack_label = Instance.new('TextLabel')
backpack_label.Name = "backpack_label"
backpack_label.BackgroundTransparency = 1
backpack_label.BorderSizePixel = 0
backpack_label.Position = UDim2.new(0.82, 0, 0.2, 0)
backpack_label.Size = UDim2.new(0.5, 0, 0.1, 0)
backpack_label.Text = "Backpack"
backpack_label.Font = "SourceSansBold"
backpack_label.TextColor3 = Color3.fromRGB(255, 255, 255)
backpack_label.TextScaled = true
backpack_label.TextWrapped = true
backpack_label.TextStrokeColor3 = Color3.fromRGB(42, 42, 42)
backpack_label.TextStrokeTransparency = 0.9
backpack_label.Visible = false
backpack_label.Parent = backpack_fol

local hold = Instance.new('Frame')
hold.Name = "hold"
hold.Position = UDim2.new(0.825, 0, 0.31, 0)
hold.Size = UDim2.new(0.5, 0, 0.5, 0)
hold.BackgroundTransparency = 1
hold.Parent = backpack_fol

local ui = Instance.new('UIGridLayout', hold)
ui.CellPadding = UDim2.new(0, 4, 0, 4)
ui.CellSize = UDim2.new(0.3, 0, 0.2, 0)
ui.FillDirection = Enum.FillDirection.Vertical
ui.FillDirectionMaxCells = 3
ui.SortOrder = Enum.SortOrder.LayoutOrder

local item1 = Instance.new('ImageLabel', hold)
local item2 = item1:Clone()
local item3 = item2:Clone()
local item4 = item3:Clone()
local item5 = item4:Clone()
local item6 = item5:Clone()

item1.LayoutOrder = 1
item2.LayoutOrder = 2
item3.LayoutOrder = 3
item4.LayoutOrder = 4
item5.LayoutOrder = 5
item6.LayoutOrder = 6

item1.Name = "1"
item2.Name = "2"
item3.Name = "3"
item4.Name = "4"
item5.Name = "5"
item6.Name = "6"

item1.Visible = false
item2.Visible = false
item3.Visible = false
item4.Visible = false
item5.Visible = false
item6.Visible = false

-- scripts

-- backpack

local itemImages = require(game.ReplicatedStorage.Modules.Game_Data).itemImages
spawn(function()
repeat wait() until sentObj:FindFirstChild('Backpack')
for i,v in pairs(sentObj.Backpack:GetChildren()) do
if itemImages[v.Name] ~= nil then
if s_1.Value ~= true then
item1.Image = 'rbxassetid://' .. itemImages[v.Name]
s_1.Value = true
elseif s_2.Value ~= true then
item2.Image = 'rbxassetid://' .. itemImages[v.Name]
s_2.Value = true
elseif s_3.Value ~= true then
item3.Image = 'rbxassetid://' .. itemImages[v.Name]
s_3.Value = true
elseif s_4.Value ~= true then
item4.Image = 'rbxassetid://' .. itemImages[v.Name]
s_4.Value = true
elseif s_5.Value ~= true then
item5.Image = 'rbxassetid://' .. itemImages[v.Name]
s_5.Value = true
elseif s_6.Value ~= true then
item6.Image = 'rbxassetid://' .. itemImages[v.Name]
s_6.Value = true
end
end
end

sentObj.Backpack.ChildRemoved:connect(function()
if s_1.Value == true then
item1.Visible = false
item1.Image = 'rbxassetid://'
s_1.Value = false
elseif s_2.Value ~= true then
item2.Visible = false
item2.Image = 'rbxassetid://'
s_2.Value = false
elseif s_3.Value ~= true then
item3.Visible = false
item3.Image = 'rbxassetid://'
s_3.Value = false
elseif s_4.Value ~= true then
item4.Visible = false
item4.Image = 'rbxassetid://'
s_4.Value = false
elseif s_5.Value ~= true then
item5.Visible = false
item5.Image = 'rbxassetid://'
s_5.Value = false
elseif s_6.Value ~= true then
item6.Visible = false
item6.Image = 'rbxassetid://'
s_6.Value = false
end
end)

sentObj.Backpack.ChildAdded:connect(function(v)
if itemImages[v.Name] ~= nil then
if s_1.Value ~= true then
item1.Image = 'rbxassetid://' .. itemImages[v.Name]
s_1.Value = true
elseif s_2.Value ~= true then
item2.Image = 'rbxassetid://' .. itemImages[v.Name]
s_2.Value = true
elseif s_3.Value ~= true then
item3.Image = 'rbxassetid://' .. itemImages[v.Name]
s_3.Value = true
elseif s_4.Value ~= true then
item4.Image = 'rbxassetid://' .. itemImages[v.Name]
s_4.Value = true
elseif s_5.Value ~= true then
item5.Image = 'rbxassetid://' .. itemImages[v.Name]
s_5.Value = true
elseif s_6.Value ~= true then
item6.Image = 'rbxassetid://' .. itemImages[v.Name]
s_6.Value = true
end
end
end)
end)

-- health

if sentObj.Character:FindFirstChild('Humanoid') then
local g = Color3.fromRGB(0, 225, 119)
local g_b = Color3.fromRGB(0, 223, 74)
local y = Color3.fromRGB(255, 236, 20)
local y_b = Color3.fromRGB(223, 210, 25)
local r = Color3.fromRGB(255, 60, 63)
local r_b = Color3.fromRGB(223, 64, 66)
sentObj.Character.Humanoid.Player_Health.Changed:connect(function(health)
if health >= 75 then
health_b_frame.BackgroundColor3 = g
health_b_frame.BorderColor3 = g_b
elseif health >= 35 then
health_b_frame.BackgroundColor3 = y
health_b_frame.BorderColor3 = y_b
elseif health >= 1 then
health_b_frame.BackgroundColor3 = r
health_b_frame.BorderColor3 = r_b
else
health_b_frame.BackgroundColor3 = g
health_b_frame.BorderColor3 = g_b
end

health_b_frame.Size = UDim2.new(health/100 - 0.3, 0, 0.03, 0)
end)
end

sentObj.Character.Humanoid.Died:connect(function()
b_gui:Destroy()
end)
end
end

local tping = false
function tp(input, extra)
if not game.Players.LocalPlayer.Character then return end
local x, y, z;
local chosen;
if not extra then
if not typeof(input) == 'Vector3' then
if input:IsA('Model') then input = input.PrimaryPart.Position end
if input.Position then input = input.Position end
if typeof(input) == 'CFrame' then input = Vector3.new(input) end
end
x = input.X; y = input.Y; z = input.Z;
chosen = game.Players.LocalPlayer.Character.HumanoidRootPart;
else
if not typeof(extra) == 'Vector3' then
if extra:IsA('Model') then extra = extra.PrimaryPart.Position end
if extra.Position then extra = extra.Position end
if typeof(extra) == 'CFrame' then extra = Vector3.new(extra) end
end
x = extra.X; y = extra.Y; z = extra.Z;
chosen = input;
end
local valtomove = 4.3
tping = true

spawn(function()
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
local suc, err = pcall(function() local test = v.CanCollide end)
if suc then
v.CanCollide = false
end
end

repeat
wait()
if tping == true and game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid") then
game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
end
until not tping

for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
local suc, err = pcall(function() local test = v.CanCollide end)
if suc then
v.CanCollide = false
end
end
end)

if y < chosen.Position.Y then
while y < chosen.Position.Y do
wait()
chosen.CFrame = CFrame.new(Vector3.new(chosen.Position.X,chosen.Position.Y-5.5,chosen.Position.Z))
end
end

if y > chosen.Position.Y then
while y > chosen.Position.Y do
wait()
chosen.CFrame = CFrame.new(Vector3.new(chosen.Position.X,chosen.Position.Y+5.5,chosen.Position.Z))
end
end

if x < chosen.Position.X then
while x < chosen.Position.X do
wait()
chosen.CFrame = CFrame.new(Vector3.new(chosen.Position.X-valtomove,chosen.Position.Y,chosen.Position.Z))
end
end

if z < chosen.Position.Z then
while z < chosen.Position.Z do
wait()
chosen.CFrame = CFrame.new(Vector3.new(chosen.Position.X,chosen.Position.Y,chosen.Position.Z-valtomove))
end
end

if x > chosen.Position.X then
while x > chosen.Position.X do
wait()
chosen.CFrame = CFrame.new(Vector3.new(chosen.Position.X+valtomove,chosen.Position.Y,chosen.Position.Z))
end
end

if z > chosen.Position.Z then
while z > chosen.Position.Z do
wait()
chosen.CFrame = CFrame.new(Vector3.new(chosen.Position.X,chosen.Position.Y,chosen.Position.Z+valtomove))
end
end
tping = false
end

function tpLoot(sentObj)
if not game.Players.LocalPlayer.Character then return end
if sentObj.Parent and sentObj.Parent == workspace:FindFirstChild('Loot_Spawns') or sentObj.Parent == workspace:FindFirstChild('Crate_Spawns') then
if sentObj.Parent == workspace:FindFirstChild('Loot_Spawns') and sentObj:FindFirstChild('Base') then
tp(sentObj.Base.Position)
elseif sentObj.Parent == workspace:FindFirstChild('Crate_Spawns') and sentObj:FindFirstChild('ChestTop') and sentObj:FindFirstChild('ChestBottom') then
tp(sentObj.ChestTop.Position)
end
end
end

if_settings.flying = false
if_settings.bg = false; if_settings.bv = false;
spawn(function()
repeat wait() until game.Players.LocalPlayer.Character
if_settings.bg = Instance.new('BodyGyro', game.Players.LocalPlayer.Character.HumanoidRootPart)
if_settings.bv = Instance.new('BodyVelocity', game.Players.LocalPlayer.Character.HumanoidRootPart)
end)
function flyh()
if not game.Players.LocalPlayer.Character then return end
if not if_settings.bg and not if_settings.bv then
if_settings.bg = Instance.new('BodyGyro', game.Players.LocalPlayer.Character.HumanoidRootPart)
if_settings.bv = Instance.new('BodyVelocity', game.Players.LocalPlayer.Character.HumanoidRootPart)
end

if_settings.flying = not if_settings.flying
if if_settings.flying and if_settings.fly_toggle then
if_settings.bv.velocity = Vector3.new(0, 0.1, 0)
if_settings.bv.MaxForce = Vector3.new(9e9, 9e9, 9e9)
if_settings.bg.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
if_settings.bg.P = 9e4
if_settings.bg.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
repeat
local x, y, z;
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + (workspace.CurrentCamera.CFrame.LookVector * 4)
wait()
until if_settings.flying == false or if_settings.fly_toggle == false
else
if_settings.bg:Destroy()
if_settings.bv:Destroy()
end
end

function createChams(sentObj)
if sentObj ~= nil or sentObj ~= '' then
local folder
if not store:FindFirstChild('Chams') then
folder = Instance.new('Folder')
folder.Name = "Chams"
folder.Parent = store
elseif store:FindFirstChild('Chams') then
folder = store.Chams
end

if (sentObj.ClassName == "Model") or (sentObj.Parent == workspace.Loot_Spawns) then
local item_folder
if store:FindFirstChild('Chams'):FindFirstChild('Item_Chams') then
item_folder = store.Chams.Item_Chams
else
item_folder = Instance.new('Folder')
item_folder.Name = "Item_Chams"
item_folder.Parent = store.Chams
end

local lvl1 = Color3.fromRGB(163, 162, 165)
local lvl2 = Color3.fromRGB(32, 153, 35 )
local lvl3 = Color3.fromRGB(12, 194, 218)
local lvl4 = Color3.fromRGB(147, 52, 203)
local crate = Color3.fromRGB(244, 196, 65)

if sentObj:FindFirstChild('Level') and sentObj.Level.Value then
if sentObj.Level.Value == 1 then
local Box = Instance.new("BoxHandleAdornment")
Box.Size = sentObj:FindFirstChild('Base').Size
Box.Name = sentObj.Name .. "_Cham_Rarity1"
Box.Adornee = sentObj:FindFirstChild('Base')
Box.AlwaysOnTop = true
Box.ZIndex = 5
Box.Transparency = 1
Box.Color3 = lvl1
Box.Parent = store:FindFirstChild('Chams'):FindFirstChild('Item_Chams')

sentObj.AncestryChanged:connect(function()
Box:Destroy()
end)
elseif sentObj.Level.Value == 2 then
local Box = Instance.new("BoxHandleAdornment")
Box.Size = sentObj:FindFirstChild('Base').Size
Box.Name = sentObj.Name .. "_Cham_Rarity2"
Box.Adornee = sentObj:FindFirstChild('Base')
Box.AlwaysOnTop = true
Box.ZIndex = 5
Box.Transparency = 1
Box.Color3 = lvl2
Box.Parent = store:FindFirstChild('Chams'):FindFirstChild('Item_Chams')

sentObj.AncestryChanged:connect(function()
Box:Destroy()
end)
elseif sentObj.Level.Value == 3 then
local Box = Instance.new("BoxHandleAdornment")
Box.Size = sentObj:FindFirstChild('Base').Size
Box.Name = sentObj.Name .. "_Cham_Rarity3"
Box.Adornee = sentObj:FindFirstChild('Base')
Box.AlwaysOnTop = true
Box.ZIndex = 5
Box.Transparency = 1
Box.Color3 = lvl3
Box.Parent = store:FindFirstChild('Chams'):FindFirstChild('Item_Chams')

sentObj.AncestryChanged:connect(function()
Box:Destroy()
end)
elseif sentObj.Level.Value == 4 then
local Box = Instance.new("BoxHandleAdornment")
Box.Size = sentObj:FindFirstChild('Base').Size
Box.Name = sentObj.Name .. "_Cham_Rarity4"
Box.Adornee = sentObj:FindFirstChild('Base')
Box.AlwaysOnTop = true
Box.ZIndex = 5
Box.Transparency = 1
Box.Color3 = lvl4
Box.Parent = store:FindFirstChild('Chams'):FindFirstChild('Item_Chams')

sentObj.AncestryChanged:connect(function()
Box:Destroy()
end)
end
elseif sentObj:FindFirstChild('ChestBottom') or sentObj:FindFirstChild('ChestTop') then
local Box = Instance.new("BoxHandleAdornment")
Box.Size = sentObj:GetExtentsSize()
Box.Name = "Chest_Cham"
Box.Adornee = sentObj:FindFirstChild('ChestTop')
Box.AlwaysOnTop = true
Box.ZIndex = 5
Box.Transparency = 1
Box.Color3 = crate
Box.Parent = store:FindFirstChild('Chams'):FindFirstChild('Item_Chams')

sentObj.AncestryChanged:connect(function()
Box:Destroy()
end)
end

elseif sentObj:IsA('Player') and sentObj ~= game.Players.LocalPlayer and sentObj.Character then
local plr_folder
if store:FindFirstChild('Chams'):FindFirstChild('Player_Chams') then
plr_folder = store.Chams.Player_Chams
else
plr_folder = Instance.new('Folder')
plr_folder.Name = "Player_Chams"
plr_folder.Parent = store:FindFirstChild('Chams')
end

local plr_folder_real

if store:FindFirstChild('Chams'):FindFirstChild('Player_Chams'):FindFirstChild(sentObj.Name) then
plr_folder_real = store.Chams.Player_Chams[sentObj.Name]
else
local plr_folder_real = Instance.new('Folder')
plr_folder_real.Name = sentObj.Name
plr_folder_real.Parent = plr_folder
end

if sentObj.Character then
for i,v in pairs(sentObj.Character:GetChildren()) do
if v:IsA("PVInstance") or v.Name == "HumanoidRootPart" then
local Box = Instance.new("BoxHandleAdornment")

if v:IsA("BasePart") then
Box.Size = v.Size
elseif v:IsA("Model") then
Box.Size = v:GetExtentsSize()
end

local gotC3
local g = 102
local b = 102

for i,v in pairs(sentObj:FindFirstChild("Backpack"):GetChildren()) do
g = g + 1
b = b + 1
end

gotC3 = Color3.fromRGB(255, g, b)

Box.Name = sentObj.Name .. "_" .. v.Name
Box.Adornee = v
Box.AlwaysOnTop = true
Box.ZIndex = 5
Box.Transparency = 1
if gotC3 and gotC3 ~= nil then
Box.Color3 = gotC3
else
Box.Color3 = Color3.fromRGB(255, 102, 102)
end
Box.Parent = store:FindFirstChild('Chams'):FindFirstChild('Player_Chams'):FindFirstChild(sentObj.Name)

sentObj.Character:FindFirstChild('Humanoid').Died:connect(function()
Box:Destroy()
end)
end
end
end
end
end
end

local move = mousemoverel or Input.MoveMouse

function AimAt(x, y)
local cam = workspace:FindFirstChildOfClass("Camera") or workspace.Camera or workspace.CurrentCamera
local vps = cam.ViewportSize
local vpsx = vps.X
local vpsy = vps.Y
local screencenterx = vpsx/2
local screencentery = vpsy/2
local aimatx
local aimaty

if x ~= 0 then
if x < screencenterx then
aimatx = -(screencenterx - x)
aimatx = aimatx
if aimatx + screencenterx > screencenterx * 2 then
aimatx = 0
end
end
if x > screencenterx then
aimatx = x - screencenterx
aimatx = aimatx
if aimatx + screencenterx < 0 then
aimatx = 0
end
end
end

if y ~= 0 then
if y > screencentery then
aimaty = -(screencentery - y)
aimaty = aimaty
if aimaty + screencentery > screencentery * 2 then
aimaty = 0
end
end
if y < screencentery then
aimaty = y - screencentery
aimaty = aimaty
if aimaty + screencentery < 0 then
aimaty = 0
end
end
end
return aimatx, aimaty
end

function legitbot(mode)
if not game.Players.LocalPlayer.Character then return end
if mode == "distance" and rayCast() then
local cam = workspace:FindFirstChildOfClass("Camera") or workspace.Camera or workspace.CurrentCamera
local add = Vector3.new()
if (cam.CFrame.p - rayCast().Character.Head.Position).magnitude > 1000 then
add = Vector3.new(-5, 0, 0)
end

for i=if_settings.legit_settings.smoothness, 0.1, -0.1 do
cam.CFrame = CFrame.new(cam.CFrame.p, rayCast().Character.Head.Position + add / i)
wait(i / (i * 3))
end
elseif mode == "mouse" then
local mouse = game.Players.LocalPlayer:GetMouse()
local cam = workspace:FindFirstChildOfClass("Camera") or workspace.Camera or workspace.CurrentCamera

if distanceCalculator('closest') then
local add = Vector3.new()
if (cam.CFrame.p - distanceCalculator('closest').Character.Head.Position).magnitude > 1000 then
add = Vector3.new(-5, 0, 0)
end

for i=if_settings.legit_settings.smoothness, 0.1, -0.1 do
cam.CFrame = CFrame.new(cam.CFrame.p, distanceCalculator('closest').Character.Head.Position + add / i)
wait(i / (i * 3))
end
end
end
end

function aimLock(mode)
if not game.Players.LocalPlayer.Character then return end
if mode == "distance" and rayCast() then
local cam = workspace:FindFirstChildOfClass("Camera") or workspace.Camera or workspace.CurrentCamera

cam.CFrame = CFrame.new(cam.CFrame.p, rayCast().Character.Head.Position)
elseif mode == "mouse" then
local mouse = game.Players.LocalPlayer:GetMouse()
local cam = workspace:FindFirstChildOfClass("Camera") or workspace.Camera or workspace.CurrentCamera

if distanceCalculator('closest') then

cam.CFrame = CFrame.new(cam.CFrame.p, distanceCalculator('closest').Character.Head.Position)
end
end
end

function esp_check(args)
-- in general check

if args and tostring(args) == "items" then
if not store:FindFirstChild('Chams') or (store:FindFirstChild('Chams') and not store.Chams:FindFirstChild('Item_Chams')) then
for i,v in pairs(workspace.Loot_Spawns:GetChildren()) do
createChams(v)
end

for i,v in pairs(workspace.Crate_Spawns:GetChildren()) do
createChams(v)
end
return true
else
return true
end
end

if not store:FindFirstChild('PLR_ESP') or (store:FindFirstChild('PLR_ESP') and #store.PLR_ESP:GetChildren() ~= #game:GetService('Players'):GetPlayers()) then
for i,v in pairs(game:GetService('Players'):GetPlayers()) do
if v.Character and (not store:FindFirstChild('PLR_ESP') or store:FindFirstChild('PLR_ESP') and not store.PLR_ESP:FindFirstChild(v.Name .. '_Visuals')) then
createChams(v)
makeESP(v)
end
end
local i = 0
repeat i = i + 1; wait() until store:FindFirstChild('PLR_ESP') and #store.PLR_ESP:GetChildren() == #game.Players:GetPlayers() or i == 500
i=0
return true
else
return true
end
end

local aim_options = createHeader_noAnim("Options", 10, 200)
aim_options.Visible = false
aim_options.ZIndex = 5
local list = aim_options.List
list.Size = UDim2.new(0, 245, 0, 214)

local smooth_frame = Instance.new('Frame')
local distance_m = Instance.new('TextButton')
local mouse_m = Instance.new('TextButton')
local smooth_box = Instance.new('TextBox')
local smooth_label = Instance.new('TextButton')

smooth_frame.Name = "smooth_frame"
smooth_frame.BackgroundColor3 = Color3.fromRGB(60, 62, 66)
smooth_frame.BorderSizePixel = 0
smooth_frame.Position = UDim2.new(0.029, 0, 0.467, 0)
smooth_frame.Size = UDim2.new(0, 230, 0, 106)
smooth_frame.ZIndex = 2
smooth_frame.Parent = list

distance_m.BackgroundTransparency = 1
distance_m.AutoButtonColor = false
distance_m.Name = "Distance_Button"
distance_m.Position = UDim2.new(0, 0, 0, 35)
distance_m.Size = UDim2.new(0, 245, 0, 30)
distance_m.Font = "SourceSansBold"
distance_m.Text = '> Distance'
distance_m.TextColor3 = settings.ToggleColor
distance_m.TextScaled = false
distance_m.TextSize = 25
distance_m.TextStrokeTransparency = 1
distance_m.Parent = list

mouse_m.Name = "Mouse_Button"
mouse_m.BackgroundTransparency = 1
mouse_m.AutoButtonColor = false
mouse_m.Position = UDim2.new(0, 0, 0, 65)
mouse_m.Size = UDim2.new(0, 245, 0, 30)
mouse_m.Font = "SourceSansBold"
mouse_m.Text = '> Mouse'
mouse_m.TextColor3 = Color3.fromRGB(255, 255, 255)
mouse_m.TextScaled = false
mouse_m.TextSize = 25
mouse_m.TextStrokeTransparency = 1
mouse_m.Parent = list

smooth_box.Name = "smoothness_amount"
smooth_box.BackgroundColor3 = Color3.fromRGB(52, 54, 58)
smooth_box.BorderSizePixel = 0
smooth_box.Position = UDim2.new(0.086, 0, 0.696, 0)
smooth_box.Size = UDim2.new(0, 200, 0, 46)
smooth_box.Text = '0'
smooth_box.Font = "SourceSansBold"
smooth_box.TextColor3 = Color3.fromRGB(255, 255, 255)
smooth_box.TextScaled = true
smooth_box.TextWrapped = true
smooth_box.TextStrokeTransparency = 1
smooth_box.ZIndex = 3
smooth_box.Parent = list

smooth_label.Name = "smooth_label"
smooth_label.BackgroundTransparency = 1
smooth_label.Position = UDim2.new(0.045, 0, 0.451, 0)
smooth_label.Size = UDim2.new(0, 222, 0, 51)
smooth_label.ZIndex = 3
smooth_label.Font = "SourceSansLight"
smooth_label.Text = "Smoothness"
smooth_label.TextColor3 = Color3.fromRGB(255, 255, 255)
smooth_label.TextScaled = true
smooth_label.TextWrapped = true
smooth_label.TextStrokeTransparency = 1
smooth_label.Parent = list

local mouse = game.Players.LocalPlayer:GetMouse()

-- Name + Version Label

local Frame = Instance.new("Frame", ScreenGui)
Frame.BackgroundTransparency = 1
Frame.Position = UDim2.new(0, 2, 0, 2)
Frame.Size = UDim2.new(0, 380, 0, 80)
local TextLabel = Instance.new("TextLabel", Frame)
TextLabel.Name = "GUI_Name"
TextLabel.BackgroundTransparency = 1
TextLabel.Font = "SourceSansLight"
TextLabel.Text = 'IslandFricker'
TextLabel.TextSize = 48
TextLabel.TextColor3 = settings.Color
TextLabel.TextStrokeTransparency = 0.75
TextLabel.Position = UDim2.new(0, 10, 0, 0)
TextLabel.Size = UDim2.new(0, 210, 0, 60)
local TextLabel_2 = Instance.new("TextLabel", Frame)
TextLabel_2.Name = "GUI_Version"
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.Font = "SourceSansLight"
TextLabel_2.Text = "v" .. settings.Version
TextLabel_2.TextSize = 24
TextLabel_2.TextColor3 = Color3.fromRGB(128, 128, 128)
TextLabel_2.TextStrokeTransparency = 0.75
TextLabel_2.Position = UDim2.new(0, 220, 0, 10)
TextLabel_2.Size = UDim2.new(0, 50, 0, 50)

-- aim_options section haha
local aimbot = createHeader("Aimbot",10,65)

local l_bot = addButton("Legitbot", aimbot)
local a_bot = addButton("Aimlock", aimbot)
local o_scales = addButton("Options", aimbot)

-- visuals section (renamed from esp lol)

local visuals = createHeader("Visuals", 265, 65)

local box_esp = addButton("Box", visuals)
local name_esp = addButton("Name", visuals)
local distance_esp = addButton("Distance", visuals)
local backpack = addButton("Backpack", visuals)
local lvl_esp = addButton("Level", visuals)
local health = addButton("Health", visuals)
local chams = addButton("Player Chams", visuals)
local item_chams = addButton("Item Chams", visuals)
local reset = addButton("Refresh ESP", visuals)

-- misc section

local misc = createHeader("Misc", 520, 65)

local r_houses = addButton("Remove Buildings", misc)
local noclip = addButton("Noclip", misc)
local tp_loot = addButton("TP To Loot", misc)
local gwin = addButton("Guaranteed Win", misc)
local fly = addButton("Fly Hacks", misc)

-- teleport section
local tps = createHeader("Teleports", 775, 65)

local locations = {
CC = function() tp(Vector3.new(2339.269, 149.162, -1705.783)) end,
DD = function() tp(Vector3.new(-1488.969, 76.66, -126.069)) end,
FreakyF = function() tp(Vector3.new(133.037, 144.058, -2244.885)) end,
HorrifiedH = function() tp(Vector3.new(763.611, 166.863, 1450.335)) end,
HiddenH = function() tp(Vector3.new(-1322.731, 121.312, -2293.659)) end,
LilL = function() tp(Vector3.new(-242.223, 106.826, -145.312)) end,
LonelyL = function() tp(Vector3.new(2049.817, 189.828, 1908.058)) end,
MM = function() tp(Vector3.new(-2041.523, 243.027, 1295.134)) end,
NN = function() tp(Vector3.new(2689.767, 204.932, 892.649)) end,
OO = function() tp(Vector3.new(-2533.73, 149.464, 2374.52)) end,
PP = function() tp(Vector3.new(-2435.575, 169.256, -439.33)) end,
SS = function() tp(Vector3.new(-459.601, 309.16, 642.006)) end,
TeaserT = function() tp(Vector3.new(-1986.823, 172.663, -1867.608)) end,
TinyT = function() tp(Vector3.new(484.176, 171.149, 2248.187)) end,
TopsyT = function() tp(Vector3.new(786.716, 212.958, -1014.743)) end,
VV = function() tp(Vector3.new(1518.284, 529.282, 1436.449)) end,
WW = function() tp(Vector3.new(-649.505, 168.216, 2230.685)) end
}

local buttons = {
CC = addButton("Crummy City", tps),
DD = addButton("Dirty Depot", tps),
FreakyF = addButton("Freaky Fields", tps),
HorrifiedH = addButton("Happy Hillside", tps),
HiddenH = addButton("Hidden Haven", tps),
LilL = addButton("Lil' Lake", tps),
LonelyL = addButton("Lonely Land", tps),
MM = addButton("Mini Mountain", tps),
NN = addButton("Neat Neighborhood", tps),
OO = addButton("Outer Oasis", tps),
PP = addButton("Pleasent Place", tps),
SS = addButton("Sad Settlement", tps),
TeaserT = addButton("Teaser Town", tps),
TinyT = addButton("Tiny Town", tps),
TopsyT = addButton("Topsy Towers", tps),
VV = addButton("Volatile Volcano", tps),
WW = addButton("Wonky Willows", tps)
}

for i,v in pairs(buttons) do
buttons[i] = v
v.MouseButton1Down:connect(function()
if not game.Players.LocalPlayer.Character then v.TextColor3 = Color3.fromRGB(255, 76, 76) wait(0.2) v.TextColor3 = Color3.fromRGB(255, 255, 255) return end
if not tping then
v.TextColor3 = settings.ToggleColor
locations[tostring(i) or i.Name]()
v.TextColor3 = Color3.fromRGB(255, 255, 255)
else
v.TextColor3 = Color3.fromRGB(255, 76, 76) wait(0.2) .TextColor3 = Color3.fromRGB(255, 255, 255)
wait(0.2)
v.TextColor3 = Color3.fromRGB(255, 255, 255)
end
end)
end

fly.MouseButton1Down:connect(function()
if not game.Players.LocalPlayer.Character then fly.TextColor3 = Color3.fromRGB(255, 76, 76) wait(0.2) fly.TextColor3 = Color3.fromRGB(255, 255, 255) return end
if_settings.fly_toggle = not if_settings.fly_toggle
if if_settings.fly_toggle == true then
fly.TextColor3 = settings.ToggleColor
else
fly.TextColor3 = Color3.fromRGB(255 ,255, 255)
repeat flyh() wait() until if_settings.flying == false
end
end)

local gwin_t = false
local gwin_helper = Instance.new('Part', workspace)
gwin_helper.Size = Vector3.new(5, 2, 5)
gwin_helper.Anchored = true
gwin_helper.Transparency = 1
gwin.MouseButton1Down:connect(function()
if not game.Players.LocalPlayer.Character then gwin.TextColor3 = Color3.fromRGB(255, 76, 76) wait(0.2) gwin.TextColor3 = Color3.fromRGB(255, 255, 255) return end
gwin_t = not gwin_t
if gwin_t then
gwin.TextColor3 = settings.ToggleColor
tp(Vector3.new(workspace.Field.Position.X, workspace.MapBase.Water.Position.Y - 5, workspace.Field.Position.Z))
repeat wait() until tping == false
gwin_helper.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 3, 0)

workspace.Field:GetPropertyChangedSignal('Position'):Connect(function()
tp(Vector3.new(workspace.Field.Position.X, workspace.MapBase.Water.Position.Y + 10000, workspace.Field.Position.Z))
repeat wait() until tping == false
gwin_helper.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 3, 0)
end)
end
end)

distance_m.MouseButton1Down:connect(function()
if if_settings.distance_t == true then
distance_m.TextColor3 = Color3.fromRGB(255, 255, 255)
mouse_m.TextColor3 = settings.ToggleColor
if_settings.mouse_t = true
if_settings.distance_t = false
else
distance_m.TextColor3 = settings.ToggleColor
mouse_m.TextColor3 = Color3.fromRGB(255, 255, 255)
if_settings.mouse_t = false
if_settings.distance_t = true
end
end)

mouse_m.MouseButton1Down:connect(function()
if if_settings.mouse_t == true then
mouse_m.TextColor3 = Color3.fromRGB(255, 255, 255)
distance_m.TextColor3 = settings.ToggleColor
if_settings.mouse_t = false
if_settings.distance_t = true
else
mouse_m.TextColor3 = settings.ToggleColor
distance_m.TextColor3 = Color3.fromRGB(255, 255, 255)
if_settings.mouse_t = true
if_settings.distance_t = false
end
end)

smooth_box:GetPropertyChangedSignal("Text"):Connect(function()
smooth_box.Text = smooth_box.Text:gsub("%D+", "")
if smooth_box.Text ~= nil or smooth_box.Text ~= '' then
if_settings.legit_settings.smoothness = tonumber(smooth_box.Text)
end
end)

aim_options.MouseButton1Down:connect(function()
if list.Size.Y.Offset <= 35 then
list:TweenSize(UDim2.new(0,245,0,317),Enum.EasingDirection.Out,Enum.EasingStyle.Quint,0.7)
else
list:TweenSize(UDim2.new(0,245,0,30),Enum.EasingDirection.Out,Enum.EasingStyle.Quint,0.7)
end 
end)

l_bot.MouseButton1Down:connect(function()
if_settings.legit_bot = not if_settings.legit_bot
if if_settings.legit_bot == true then
a_bot.TextColor3 = Color3.fromRGB(255, 255, 255)
l_bot.TextColor3 = settings.ToggleColor
else
if_settings.legit_bot = false
if_settings.aim_bot = false
a_bot.TextColor3 = Color3.fromRGB(255, 255, 255)
l_bot.TextColor3 = Color3.fromRGB(255, 255, 255)
end
end)

a_bot.MouseButton1Down:connect(function()
if_settings.aim_bot = not if_settings.aim_bot
if if_settings.aim_bot == true then
l_bot.TextColor3 = Color3.fromRGB(255, 255, 255)
a_bot.TextColor3 = settings.ToggleColor
else
if_settings.legit_bot = false
if_settings.aim_bot = false
l_bot.TextColor3 = Color3.fromRGB(255, 255, 255)
a_bot.TextColor3 = Color3.fromRGB(255, 255, 255)
end
end)

o_scales.MouseButton1Down:connect(function()
if_settings.options_toggle = not if_settings.options_toggle
if if_settings.options_toggle == true then
o_scales.TextColor3 = settings.ToggleColor
aim_options.Visible = true
else
o_scales.TextColor3 = Color3.fromRGB(255, 255, 255)
aim_options.Visible = false
end
end)

reset.MouseButton1Down:connect(function()
if not game.Players.LocalPlayer.Character then reset.TextColor3 = Color3.fromRGB(255, 76, 76) wait(0.2) reset.TextColor3 = Color3.fromRGB(255, 255, 255) return end
reset.TextColor3 = settings.ToggleColor
if store:FindFirstChild('ESP') then
store.ESP:Destroy()
end

if store:FindFirstChild('PLR_ESP') then
store.PLR_ESP:Destroy()
end

if store:FindFirstChild('Chams') then
store.Chams:Destroy()
end

--[[if_settings.itemchams_toggle = false
if_settings.chams_toggle = false
if_settings.distance_toggle = false
if_settings.health_toggle = false
if_settings.name_toggle = false
if_settings.backpack_toggle = false
if_settings.box_toggle = false]]

for i,v in pairs(game:GetService('Players'):GetPlayers()) do
if v.Character and (not store:FindFirstChild('PLR_ESP') or store:FindFirstChild('PLR_ESP') and not store.PLR_ESP:FindFirstChild(v.Name .. '_Visuals')) then
createChams(v)
makeESP(v)
end
end

for i,v in pairs(workspace.Loot_Spawns:GetChildren()) do
createChams(v)
end

for i,v in pairs(workspace.Crate_Spawns:GetChildren()) do
createChams(v)
end

if if_settings.itemchams_toggle then
for i,v in pairs(store.Chams.Item_Chams:GetChildren()) do
v.Transparency = 0.35
end
end

if if_settings.chams_toggle then
for i,v in pairs(store:FindFirstChild('Chams'):FindFirstChild('Player_Chams'):GetChildren()) do
for x,c in pairs(v:GetChildren()) do
c.Transparency = 0.35
end
end
end

if if_settings.distance_toggle then
for i,v in pairs(store:FindFirstChild('PLR_ESP'):GetChildren()) do
for x,c in pairs(v:FindFirstChild('distance'):GetChildren()) do
c.Visible = true
end
end
end

if if_settings.health_toggle then
for i,v in pairs(store:FindFirstChild('PLR_ESP'):GetChildren()) do
for x,c in pairs(v:FindFirstChild('health'):GetChildren()) do
c.Visible = true
end
end
end

if if_settings.name_toggle then
for i,v in pairs(store:FindFirstChild('PLR_ESP'):GetChildren()) do
v:FindFirstChild('name').Visible = true
end
end

if if_settings.backpack_toggle then
for i,v in pairs(store:FindFirstChild('PLR_ESP'):GetChildren()) do
for x,c in pairs(v:FindFirstChild('backpack'):GetChildren()) do
if not c:IsA('BoolValue') then
c.Visible = true
end
end
end
end

if if_settings.box_toggle then
for i,v in pairs(store:FindFirstChild('PLR_ESP'):GetChildren()) do
for x,c in pairs(v:FindFirstChild('box'):GetChildren()) do
c.Visible = true
end
end
end

if if_settings.lvl_toggle then
for i,v in pairs(store:FindFirstChild('PLR_ESP'):GetChildren()) do
if v:FindFirstChild('lvl') then
v.lvl.Visible = false
end
end
end

wait(0.2)
reset.TextColor3 = Color3.fromRGB(255, 255, 255)
end)

lvl_esp.MouseButton1Down:connect(function()
if_settings.lvl_toggle = not if_settings.lvl_toggle
if if_settings.lvl_toggle == true then
lvl_esp.TextColor3 = settings.ToggleColor
if esp_check() then
for i,v in pairs(store:FindFirstChild('PLR_ESP'):GetChildren()) do
if v:FindFirstChild('lvl') then
v.lvl.Visible = false
end
end
else
warn('esp broke lol')
end
else
lvl_esp.TextColor3 = Color3.fromRGB(255, 255, 255)
for i,v in pairs(store:FindFirstChild('PLR_ESP'):GetChildren()) do
if v:FindFirstChild('lvl') then
v.lvl.Visible = false
end
end
end
end)

item_chams.MouseButton1Down:connect(function()
if_settings.itemchams_toggle = not if_settings.itemchams_toggle

if if_settings.itemchams_toggle == true then
item_chams.TextColor3 = settings.ToggleColor
if esp_check("items") then
for i,v in pairs(store.Chams.Item_Chams:GetChildren()) do
v.Transparency = 0.35
end
else
warn('esp broke somehow lol')
end
else
item_chams.TextColor3 = Color3.fromRGB(255, 255, 255)
if esp_check("items") then
for i,v in pairs(store.Chams.Item_Chams:GetChildren()) do
v.Transparency = 1
end
else
warn('esp broke somehow lol')
end
end
end)

chams.MouseButton1Down:connect(function()
if_settings.chams_toggle = not if_settings.chams_toggle
if if_settings.chams_toggle == true then
chams.TextColor3 = settings.ToggleColor
if esp_check() then
for i,v in pairs(store:FindFirstChild('Chams'):FindFirstChild('Player_Chams'):GetChildren()) do
for x,c in pairs(v:GetChildren()) do
c.Transparency = 0.35
end
end
else
warn('esp broke somehow lol')
end
else
chams.TextColor3 = Color3.fromRGB(255, 255, 255)
for i,v in pairs(store.Chams.Player_Chams:GetChildren()) do
for x,c in pairs(v:GetChildren()) do
c.Transparency = 1
end
end
end
end)

health.MouseButton1Down:connect(function()
if_settings.health_toggle = not if_settings.health_toggle
if if_settings.health_toggle == true then
health.TextColor3 = settings.ToggleColor
if esp_check() then
for i,v in pairs(store:FindFirstChild('PLR_ESP'):GetChildren()) do
for x,c in pairs(v:FindFirstChild('health'):GetChildren()) do
c.Visible = true
end
end
else
warn('esp broke somehow lol')
end
else
health.TextColor3 = Color3.fromRGB(255, 255, 255)
for i,v in pairs(store:FindFirstChild('PLR_ESP'):GetChildren()) do
for x,c in pairs(v:FindFirstChild('health'):GetChildren()) do
c.Visible = false
end
end
end
end)

backpack.MouseButton1Down:connect(function()
if_settings.backpack_toggle = not if_settings.backpack_toggle
if if_settings.backpack_toggle == true then
backpack.TextColor3 = settings.ToggleColor
if esp_check() then
for i,v in pairs(store:FindFirstChild('PLR_ESP'):GetChildren()) do
for x,c in pairs(v:FindFirstChild('backpack'):GetChildren()) do
if not c:IsA('BoolValue') then
c.Visible = true
end
end
end
else
warn('esp broke somehow lol')
end
else
backpack.TextColor3 = Color3.fromRGB(255, 255, 255)
for i,v in pairs(store:FindFirstChild('PLR_ESP'):GetChildren()) do
for x,c in pairs(v:FindFirstChild('backpack'):GetChildren()) do
if not c:IsA('BoolValue') then
c.Visible = false
end
end
end
end
end)

distance_esp.MouseButton1Down:connect(function()
if_settings.distance_toggle = not if_settings.distance_toggle
if if_settings.distance_toggle == true then
distance_esp.TextColor3 = settings.ToggleColor
if esp_check() then
for i,v in pairs(store:FindFirstChild('PLR_ESP'):GetChildren()) do
for x,c in pairs(v:FindFirstChild('distance'):GetChildren()) do
c.Visible = true
end
end
else
warn('esp broke somehow lol')
end
else
distance_esp.TextColor3 = Color3.fromRGB(255, 255, 255)
for i,v in pairs(store:FindFirstChild('PLR_ESP'):GetChildren()) do
for x,c in pairs(v:FindFirstChild('distance'):GetChildren()) do
c.Visible = false
end
end
end
end)

name_esp.MouseButton1Down:connect(function()
if_settings.name_toggle = not if_settings.name_toggle
if if_settings.name_toggle == true then
name_esp.TextColor3 = settings.ToggleColor
if esp_check() then
for i,v in pairs(store:FindFirstChild('PLR_ESP'):GetChildren()) do
v:FindFirstChild('name').Visible = true
end
else
warn('esp broke somehow lol')
end
else
name_esp.TextColor3 = Color3.fromRGB(255, 255, 255)
for i,v in pairs(store:FindFirstChild('PLR_ESP'):GetChildren()) do
v:FindFirstChild('name').Visible = false
end
end
end)

box_esp.MouseButton1Down:connect(function()
if_settings.box_toggle = not if_settings.box_toggle
if if_settings.box_toggle == true then
box_esp.TextColor3 = settings.ToggleColor
if esp_check() then
for i,v in pairs(store:FindFirstChild('PLR_ESP'):GetChildren()) do
for x,c in pairs(v:FindFirstChild('box'):GetChildren()) do
c.Visible = true
end
end
else
warn('esp broke somehow lol')
end
else
box_esp.TextColor3 = Color3.fromRGB(255, 255, 255)
for i,v in pairs(store:FindFirstChild('PLR_ESP'):GetChildren()) do
for x,c in pairs(v:FindFirstChild('box'):GetChildren()) do
c.Visible = false
end
end
end
end)

tp_loot.MouseButton1Down:connect(function()
if not game.Players.LocalPlayer.Character then tp_loot.TextColor3 = Color3.fromRGB(255, 76, 76) wait(0.2) tp_loot.TextColor3 = Color3.fromRGB(255, 255, 255) return end
tp_loot.TextColor3 = settings.ToggleColor
if workspace:FindFirstChild('Crate_Spawns') and workspace:FindFirstChild('Loot_Spawns') then
math.randomseed(tick())

local random_crate = math.random(1, #workspace:FindFirstChild('Crate_Spawns'):GetChildren())

tpLoot(workspace:FindFirstChild('Crate_Spawns'):GetChildren()[random_crate])
end
wait(0.2)
tp_loot.TextColor3 = Color3.fromRGB(255, 255, 255)
end)

function removeOBJs(obj, toggle, use)
if toggle then
local suc, idk = pcall(function() local test = obj.Transparency; local test2 = obj.CanCollide end)
if suc then
obj.Transparency = use
obj.CanCollide = false
else
for i,v in pairs(obj:GetChildren()) do 
removeOBJs(v, true)
end
end
else
local suc, idk = pcall(function() local test = obj.Transparency; local test2 = obj.CanCollide end)
if suc then
obj.Transparency = 0
obj.CanCollide = true
else
for i,v in pairs(obj:GetChildren()) do 
removeOBJs(v, false)
end
end
end
end

noclip.MouseButton1Down:connect(function()
if_settings.noclip_toggle = not if_settings.noclip_toggle
if if_settings.noclip_toggle == true then
noclip.TextColor3 = settings.ToggleColor
removeOBJs(workspace.Map_Objects, true, 0.25)
else
noclip.TextColor3 = Color3.fromRGB(255, 255, 255)
removeOBJs(workspace.Map_Objects, false)
end
end)

r_houses.MouseButton1Down:connect(function()
if_settings.rhouses_toggle = not if_settings.rhouses_toggle
if if_settings.rhouses_toggle == true then
r_houses.TextColor3 = settings.ToggleColor
removeOBJs(workspace.Map_Objects, true, 1)
else
r_houses.TextColor3 = Color3.fromRGB(255, 255, 255)
removeOBJs(workspace.Map_Objects, false)
end
end)

function getMode()
if if_settings.distance_t then
return "distance"
elseif if_settings.mouse_t then
return "mouse"
else
return
end
end

local hold = false
mouse.Button2Down:connect(function()
hold = true
end)

mouse.Button2Up:connect(function()
hold = false
local cam = workspace:FindFirstChildOfClass("Camera") or workspace.Camera or workspace.CurrentCamera
cam.CameraType = Enum.CameraType.Custom
end)

spawn(function()
getgenv().if_settings.curAim = game:GetService('RunService').Heartbeat:connect(function()
if hold and (if_settings.aim_bot or if_settings.legit_bot) then
if if_settings.legit_bot then
-- is legitbot
legitbot(getMode())
elseif if_settings.aim_bot then
-- is aimbot
aimLock(getMode())
end
end
if game.Players.LocalPlayer.Character then game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 40 end
end)
end)

spawn(function()
game:GetService("UserInputService").InputBegan:Connect(function(key)
if key.KeyCode == Enum.KeyCode[settings.toggleButton] then
ScreenGui.Enabled = not ScreenGui.Enabled
if ScreenGui.Enabled then
spawn(function() Blur.Parent = game.Lighting end)
else
spawn(function() Blur.Parent = ScreenGui end)
end
elseif key.KeyCode == Enum.KeyCode.F and if_settings.fly_toggle == true then
flyh()
end
end)

workspace.Map_Objects.ChildAdded:connect(function(obj)
if if_settings.noclip_toggle or if_settings.rhouses_toggle then
local decided = 1
if if_settings.noclip_toggle then decided = 0.25 end
removeOBJs(obj, true, decided)
end
end)

game.DescendantAdded:connect(function(obj)
if obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then
obj:GetPropertyChangedSignal("Text"):connect(function()
if if_settings.s_toggle == true then
obj.Text = filter(obj.Text)
end
end)
end
end)
end)

while wait() and if_settings.distance_toggle do
if #game.Players:GetPlayers() <= 1 or not game.Players.LocalPlayer.Character then return end
if esp_check() then
for i,v in pairs(game.Players:GetChildren()) do
if not store.PLR_ESP:FindFirstChild(v.Name .. '_Visuals') then return end
local distance_num_label = store.PLR_ESP[v.Name .. "_Visuals"].distance.distance_num
if distanceCalculator()[v.Name] and v.Name ~= game.Players.LocalPlayer.Name then
distance_num_label.Text = tostring(distanceCalculator()[v.Name])
else
distance_num_label.Text = "0"
end
end
else
warn('esp broke lol')
end
end