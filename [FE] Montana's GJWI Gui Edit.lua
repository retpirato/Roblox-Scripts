 -- // Riley's Edit



iPlayer = game.Players.LocalPlayer.Name

local Gui = Instance.new('ScreenGui', game.Players[iPlayer].PlayerGui)

Gui.Name = 'Hub'

local Grab_f = Instance.new('Frame', Gui)

Grab_f.Name = 'Grab'

Grab_f.Active = true

Grab_f.BackgroundColor3 = Color3.new(255,255,127/255)

Grab_f.BackgroundTransparency = 0.5

Grab_f.BorderSizePixel = 0

Grab_f.Position = UDim2.new(0.5,-150,0.5,-92)

Grab_f.Size = UDim2.new(0,300,0,24)

Grab_f.Draggable = true

local Close = Instance.new('TextButton', Grab_f)

Close.Name = 'Close'

Close.BackgroundTransparency = 1

Close.Position = UDim2.new(1,-23,0,1)

Close.Size = UDim2.new(0,22,0,22)

Close.Font = 'SourceSans'

Close.FontSize = 'Size18'

Close.TextColor3 = Color3.new(255,255,255)

Close.Text = 'x'

local Body_f = Instance.new('Frame', Grab_f)

Body_f.Name = 'Body'

Body_f.BackgroundColor3 = Color3.new(60/255,60/255,60/255)

Body_f.BackgroundTransparency = 0.5

Body_f.BorderSizePixel = 0

Body_f.Position = UDim2.new(0,0,0,25)

Body_f.Size = UDim2.new(0,300,0,170)



Close.TextStrokeTransparency = 0.8

local Title = Instance.new('TextLabel', Grab_f)

Title.Name = 'Title'

Title.BackgroundTransparency = 1

Title.Position = UDim2.new(0,5,0,0)

Title.Size = UDim2.new(0,200,1,0)

Title.Font = 'SourceSansLight'

Title.FontSize = 'Size18'

Title.Text = "Riley's Apoc Gui Edit"

Title.TextColor3 = Color3.new(255,255,255)

Title.TextStrokeColor3 = Color3.new(60/255,60/255,60/255)

Title.TextStrokeTransparency = 0.6

local PlayerName = Instance.new('TextBox', Body_f)

PlayerName.Name = 'PlayerName'

PlayerName.BorderSizePixel = 0

PlayerName.Position = UDim2.new(0,10,0,10)

PlayerName.Size = UDim2.new(0,280,0,30)

PlayerName.Font = 'SourceSans'

PlayerName.FontSize = 'Size18'

PlayerName.Text = 'Player name [plr]'

PlayerName.BackgroundColor3 = Color3.new(255,255,255)

PlayerName.TextColor3 = Color3.new(60/255,60/255,60/255)

PlayerName.TextWrapped = true



local Credits = Instance.new('TextLabel', Body_f)

Credits.BackgroundTransparency = 1

Credits.Text = 'Version 1.0.0'

Credits.Position = UDim2.new(0,0,1,0)

Credits.Size = UDim2.new(1,0,0,20)



local Command_TpBodies = Instance.new('TextButton', Body_f)

Command_TpBodies.Name = 'Bodies'

Command_TpBodies.BackgroundColor3 = Color3.new(255,170/255,255)

Command_TpBodies.BackgroundTransparency = 0.1

Command_TpBodies.BorderSizePixel = 0

Command_TpBodies.Position = UDim2.new(0,10,0,50)

Command_TpBodies.Size = UDim2.new(0,135,0,30)

Command_TpBodies.Font = 'SourceSansItalic'

Command_TpBodies.FontSize = 'Size18'

Command_TpBodies.Text = 'TP BODIES'

Command_TpBodies.TextColor3 = Color3.new(80/255,80/255,80/255)

Command_TpBodies.TextWrapped = true



local Command_KillAll = Command_TpBodies:Clone()

Command_KillAll.Name = 'KillAll'

Command_KillAll.Parent = Body_f

Command_KillAll.Position = UDim2.new(0,155,0,50)

Command_KillAll.Text = 'KILL ALL'



local Command_KillPlr = Command_TpBodies:Clone()

Command_KillPlr.Name = 'KillPlr'

Command_KillPlr.Parent = Body_f

Command_KillPlr.Position = UDim2.new(0,10,0,90)

Command_KillPlr.Text = 'KILL [plr]'



local Command_TpMe = Command_TpBodies:Clone()

Command_TpMe.Name = 'TpMe'

Command_TpMe.Parent = Body_f

Command_TpMe.Position = UDim2.new(0,10,0,130)

Command_TpMe.Text = 'TP [plr] ME'



local Command_TpTo = Command_TpBodies:Clone()

Command_TpTo.Name = 'TpTo'

Command_TpTo.Parent = Body_f

Command_TpTo.Position = UDim2.new(0,155,0,130)

Command_TpTo.Text = 'TP ME [plr]'



local Command_TpAllMe = Command_TpBodies:Clone()

Command_TpAllMe.Name = 'TpAllMe'

Command_TpAllMe.Parent = Body_f

Command_TpAllMe.Position = UDim2.new(0,155,0,90)

Command_TpAllMe.Text = 'TP ALL ME'



Command_TpBodies.MouseButton1Down:connect(function()

for _, corpse in pairs(workspace:GetChildren()) do

if corpse.Name == "Corpse" then

corpse:MoveTo(workspace[game.Players.LocalPlayer.Name].Torso.Position + Vector3.new(math.random(-10,10),0,math.random(-10,10)))

end

end

end)





Command_KillAll.MouseButton1Down:connect(function()

for i,v in pairs(game.Players:GetPlayers()) do

if v.Name == game.Players.LocalPlayer.Name then

print('nope')

else

getPlayer = game.Workspace:FindFirstChild(v.Name)

wait(.01)

game.Lighting.Remote.AddHealth:FireServer(getPlayer.Humanoid, -5345355)

end

end

end)



Command_KillPlr.MouseButton1Down:connect(function()

gitPlayer = game.Workspace:FindFirstChild(PlayerName.Text)

game.Lighting.Remote.AddHealth:FireServer(gitPlayer.Humanoid, -5000000)

end)



Command_TpMe.MouseButton1Down:connect(function()

gitPlayer = PlayerName.Text

game.Lighting.Remote:WaitForChild("TeleportRequest"):InvokeServer("To Me", math.floor(tick() % 1 * 100000), gitPlayer)

end)



Command_TpTo.MouseButton1Down:connect(function()

gitPlayer = PlayerName.Text

game.Lighting.Remote:WaitForChild("TeleportRequest"):InvokeServer("Me To", math.floor(tick() % 1 * 100000), gitPlayer)

end)



Command_TpAllMe.MouseButton1Down:connect(function()

for i,v in pairs(game.Players:GetPlayers()) do

if v.Name == game.Players.LocalPlayer.Name then

print'nope'

else

wait(.01)

game.Lighting.Remote:WaitForChild("TeleportRequest"):InvokeServer("To Me", math.floor(tick() % 1 * 100000), v.Name)

end

end

end)







Close.MouseButton1Down:connect(function()

if Body_f.Visible == true then

Body_f.Visible = false

Close.Text = '+'

elseif Body_f.Visible == false then

Body_f.Visible = true

Close.Text = 'X'

end

end)



--



while wait() do

Credits.TextColor3 = Color3.new(1,0,0)

for i=1,15 do

game:GetService("RunService").RenderStepped:wait()

Credits.TextColor3 = Color3.new(Credits.TextColor3.r,Credits.TextColor3.g+(17/255),Credits.TextColor3.b)

end

for i=1,15 do

game:GetService("RunService").RenderStepped:wait()

Credits.TextColor3 = Color3.new(Credits.TextColor3.r-(17/255),Credits.TextColor3.g,Credits.TextColor3.b)

end

for i=1,15 do

game:GetService("RunService").RenderStepped:wait()

Credits.TextColor3 = Color3.new(Credits.TextColor3.r,Credits.TextColor3.g,Credits.TextColor3.b+(17/255))

end

for i=1,15 do

game:GetService("RunService").RenderStepped:wait()

Credits.TextColor3 = Color3.new(Credits.TextColor3.r,Credits.TextColor3.g-(17/255),Credits.TextColor3.b)

end

for i=1,15 do

game:GetService("RunService").RenderStepped:wait()

Credits.TextColor3 = Color3.new(Credits.TextColor3.r+(17/255),Credits.TextColor3.g,Credits.TextColor3.b)

end

for i=1,15 do

game:GetService("RunService").RenderStepped:wait()

Credits.TextColor3 = Color3.new(Credits.TextColor3.r,Credits.TextColor3.g,Credits.TextColor3.b-(17/255))

end
end