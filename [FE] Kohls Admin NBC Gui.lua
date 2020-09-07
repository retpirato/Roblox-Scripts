-- Objects

local Kohls = Instance.new("ScreenGui")
local MFrame = Instance.new("Frame")
local TFrame = Instance.new("Frame")
local Tiddle = Instance.new("TextLabel")
local Tutup = Instance.new("TextButton")
local Tunda = Instance.new("TextButton")
local Nama = Instance.new("TextBox")
local Ban = Instance.new("TextButton")
local Kick = Instance.new("TextButton")
local Madwe = Instance.new("TextLabel")
local Unlock = Instance.new("TextButton")
local Admin = Instance.new("TextButton")
local Noclip = Instance.new("TextButton")
local Data = Instance.new("TextBox")

-- Properties

Kohls.Name = "Kohls"
Kohls.Parent = game.CoreGui

MFrame.Name = "MFrame"
MFrame.Parent = Kohls
MFrame.Active = true
MFrame.BackgroundColor3 = Color3.new(255, 255, 255)
MFrame.BackgroundTransparency = 0.10000000149012
MFrame.BorderColor3 = Color3.new(255, 255, 255)
MFrame.BorderSizePixel = 2
MFrame.Position = UDim2.new(0.138755977, 0, 0.139393941, 0)
MFrame.Size = UDim2.new(0, 497, 0, 289)
MFrame.Draggable = true

TFrame.Name = "TFrame"
TFrame.Parent = MFrame
TFrame.BackgroundColor3 = Color3.new(255, 255, 255)
TFrame.BorderColor3 = Color3.new(0, 0, 0)
TFrame.BorderSizePixel = 2
TFrame.Size = UDim2.new(0, 497, 0, 30)

Tiddle.Name                   = "Tiddle"
Tiddle.Parent                 = TFrame
Tiddle.BackgroundColor3       = Color3.new(255, 255, 255)
Tiddle.BackgroundTransparency = 1
Tiddle.Size                   = UDim2.new(0, 497, 0, 30)
Tiddle.Font                   = Enum.Font.SciFi
Tiddle.Text                   = "iShaw: K.A.H Edition"
Tiddle.TextColor3             = Color3.new(0, 0, 0)
Tiddle.TextSize               = 25

Tutup.Name = "Tutup"
Tutup.Parent = TFrame
Tutup.BackgroundColor3 = Color3.new(255, 255, 255)
Tutup.BorderColor3 = Color3.new(0, 0, 0)
Tutup.BorderSizePixel = 2
Tutup.Position = UDim2.new(0.93664664, 0, 0, 0)
Tutup.Size = UDim2.new(0, 31, 0, 30)
Tutup.Font = Enum.Font.SciFi
Tutup.Text = "X"
Tutup.TextColor3 = Color3.new(0, 0, 0)
Tutup.TextSize = 25
Tutup.MouseButton1Down:connect(function()
Kohls:Destroy()
end)


Tunda.Name = "Tunda"
Tunda.Parent = TFrame
Tunda.BackgroundColor3 = Color3.new(255, 255, 255)
Tunda.BorderColor3 = Color3.new(0, 0, 0)
Tunda.BorderSizePixel = 2
Tunda.Position = UDim2.new(0.875305355, 0, 0, 0)
Tunda.Size = UDim2.new(0, 31, 0, 30)
Tunda.Font = Enum.Font.SciFi
Tunda.Text = "-"
Tunda.TextColor3 = Color3.new(0, 0, 0)
Tunda.TextSize = 25

tunda = false

Tunda.MouseButton1Down:connect(function()
if tunda == false then
MFrame:TweenSize(UDim2.new(0, 497, 0, 27),"In","Sine",1,true)
wait(1)
Kick.Visible = false
Ban.Visible = false
Unlock.Visible = false
Noclip.Visible = false
Admin.Visible = false
Nama.Visible = false
Data.Visible = false
Madwe.Visible = false
tunda = true
else
MFrame:TweenSize(UDim2.new(0, 497, 0, 289),"In","Sine",1,true)
wait(1)
Kick.Visible = true
Ban.Visible = true
Unlock.Visible = true
Noclip.Visible = true
Admin.Visible = true
Nama.Visible = true
Data.Visible = true
Madwe.Visible = true
tunda = false
end
end)

Nama.Name = "Nama"
Nama.Parent = MFrame
Nama.BackgroundColor3 = Color3.new(255, 255, 255)
Nama.BorderColor3 = Color3.new(0, 0, 0)
Nama.BorderSizePixel = 2
Nama.Position = UDim2.new(0.0824949667, 0, 0.138408303, 0)
Nama.Size = UDim2.new(0, 410, 0, 50)
Nama.Font = Enum.Font.SciFi
Nama.Text = "Target name here!"
Nama.TextColor3 = Color3.new(0, 0, 0)
Nama.TextSize = 20

Ban.Name = "Ban"
Ban.Parent = MFrame
Ban.BackgroundColor3 = Color3.new(255, 255, 255)
Ban.BorderColor3 = Color3.new(0, 0, 0)
Ban.BorderSizePixel = 2
Ban.Position = UDim2.new(0.145241275, 0, 0.356401384, 0)
Ban.Size = UDim2.new(0, 169, 0, 50)
Ban.Font = Enum.Font.SciFi
Ban.Text = "Ban player"
Ban.TextColor3 = Color3.new(0, 0, 0)
Ban.TextSize = 25

Kick.Name = "Kick"
Kick.Parent = MFrame
Kick.BackgroundColor3 = Color3.new(255, 255, 255)
Kick.BorderColor3 = Color3.new(0, 0, 0)
Kick.BorderSizePixel = 2
Kick.Position = UDim2.new(0.540145934, 0, 0.356401384, 0)
Kick.Size = UDim2.new(0, 169, 0, 50)
Kick.Font = Enum.Font.SciFi
Kick.Text = "Kick player"
Kick.TextColor3 = Color3.new(0, 0, 0)
Kick.TextSize = 25

Madwe.Name = "Madwe"
Madwe.Parent = MFrame
Madwe.BackgroundColor3 = Color3.new(255, 255, 255)
Madwe.BackgroundTransparency = 1
Madwe.Position = UDim2.new(0, 0, 0.899653971, 0)
Madwe.Size = UDim2.new(0, 165, 0, 29)
Madwe.Font = Enum.Font.SciFi
Madwe.Text = "Credit: Shaw"
Madwe.TextColor3 = Color3.new(0, 0, 0)
Madwe.TextSize = 20

Unlock.Name = "Unlock"
Unlock.Parent = MFrame
Unlock.BackgroundColor3 = Color3.new(255, 255, 255)
Unlock.BorderColor3 = Color3.new(0, 0, 0)
Unlock.BorderSizePixel = 2
Unlock.Position = UDim2.new(0.513078451, 0, 0.58477509, 0)
Unlock.Size = UDim2.new(0, 225, 0, 50)
Unlock.Font = Enum.Font.SciFi
Unlock.Text = "RemoveAdmin"
Unlock.TextColor3 = Color3.new(0, 0, 0)
Unlock.TextSize = 25

Admin.Name = "Admin"
Admin.Parent = MFrame
Admin.BackgroundColor3 = Color3.new(255, 255, 255)
Admin.BorderColor3 = Color3.new(0, 0, 0)
Admin.BorderSizePixel = 2
Admin.Position = UDim2.new(0.0321931541, 0, 0.58477509, 0)
Admin.Size = UDim2.new(0, 225, 0, 50)
Admin.Font = Enum.Font.SciFi
Admin.Text = "Get Admin"
Admin.TextColor3 = Color3.new(0, 0, 0)
Admin.TextSize = 25

Noclip.Name = "Noclip"
Noclip.Parent = MFrame
Noclip.BackgroundColor3 = Color3.new(255, 255, 255)
Noclip.BorderColor3 = Color3.new(0, 0, 0)
Noclip.BorderSizePixel = 2
Noclip.Position = UDim2.new(0.619718313, 0, 0.795847774, 0)
Noclip.Size = UDim2.new(0, 172, 0, 41)
Noclip.Font = Enum.Font.SciFi
Noclip.Text = "Noclip"
Noclip.TextColor3 = Color3.new(0, 0, 0)
Noclip.TextSize = 25

Data.Name = "Data"
Data.Parent = MFrame
Data.BackgroundColor3 = Color3.new(255, 255, 255)
Data.BorderColor3 = Color3.new(0, 0, 0)
Data.BorderSizePixel = 2
Data.Position = UDim2.new(0.372233391, 0, 0.795847774, 0)
Data.Size = UDim2.new(0, 112, 0, 50)
Data.Font = Enum.Font.SciFi
Data.Text = "Data Unlocked"
Data.TextColor3 = Color3.new(0, 0, 0)
Data.TextScaled = true
Data.TextSize = 14
Data.TextWrapped = true

-- Scripts

Admin.MouseButton1Down:connect(function()
now = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
=
game.Workspace.Terrain.GameFolder.Admin.Pads['Touch to get admin'].Head.CFrame

wait(0.2)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = now
end)

noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
Noclip.Text = "Noclip [true]"
end
end)
Noclip.MouseButton1Down:connect(function()
noclip = not noclip
Noclip.Text = "Noclip [false]"
end)

Unlock.MouseButton1Down:connect(function()
for i,v in pairs(game.Workspace:GetDescendants()) do
if v:IsA("Part") then 
v.Locked = false
print("Unlocked" .. v.Name)
Data.Text = "Remove Admin" .. v.Name
end end
end)

function GetPlayer(plrname)
    for _,player in pairs(game.Players:GetPlayers()) do
        if plrname:lower() == player.Name:sub(1,plrname:len()):lower() then
            return player
        end
    end
    return nil
end

local Banned = {}

Ban.MouseButton1Down:connect(function()
    local target = GetPlayer(Nama.Text)
    if target then
        table.insert(Banned,target.Name)
        wait(0.5)
        game.Players.LocalPlayer.Backpack.Delete.delete:FireServer(target)
Nama.Text = "iShaw has banned " .. Nama.Text
print('Banned ',Nama.Text)
    end
end)

Kick.MouseButton1Down:connect(function()
    local target = GetPlayer(Nama.Text)
    if target then
        game.Players.LocalPlayer.Backpack.Delete.delete:FireServer(target)
Nama.Text = "iShaw has kicked " .. Nama.Text
print("Kicked ", Nama.Text)
    end
end)

game.Players.PlayerAdded:connect(function(plr)
    for i = 1,#Banned do
        if Banned[i] == plr.Name then
            game.Players.LocalPlayer.Backpack.Delete.delete:FireServer(plr)
        end
    end
end)

while true do
    wait(1)
    if not game.Players.LocalPlayer.Backpack:FindFirstChild("Delete") then
        game:GetService'Players':Chat(":btools me")
    end
end