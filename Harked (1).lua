local main = Instance.new("ScreenGui")
local top = Instance.new("Frame")
local back = Instance.new("Frame")
local kill = Instance.new("TextButton")
local btools = Instance.new("TextButton")
local top_2 = Instance.new("TextLabel")
local naked = Instance.new("TextButton")
local credits = Instance.new("TextLabel")
local hatless = Instance.new("TextButton")
local sink = Instance.new("TextButton")
local nuke = Instance.new("TextButton")
local kick = Instance.new("TextButton")
local target = Instance.new("TextBox")
local queue = Instance.new("TextLabel")
local nolimbs = Instance.new("TextButton")
--Properties:
main.Name = "main"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

top.Name = "top"
top.Parent = main
top.Draggable = true
top.Active = true
top.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
top.BackgroundTransparency = 0.30000001192093
top.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
top.Position = UDim2.new(0.612145662, 0, 0.311965823, 0)
top.Size = UDim2.new(0, 291, 0, 30)

back.Name = "back"
back.Parent = top
back.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
back.BackgroundTransparency = 0.30000001192093
back.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
back.BorderSizePixel = 0
back.Position = UDim2.new(-0.00343642617, 0, 1, 0)
back.Size = UDim2.new(0, 293, 0, 293)

kill.Name = "kill"
kill.Parent = top
kill.BackgroundColor3 = Color3.new(0.67451, 0.67451, 0.67451)
kill.BackgroundTransparency = 0.5
kill.BorderSizePixel = 0
kill.Position = UDim2.new(0.0206185561, 0, 1.76666665, 0)
kill.Size = UDim2.new(0, 134, 0, 40)
kill.Font = Enum.Font.SourceSansLight
kill.Text = "Kill"
kill.TextColor3 = Color3.new(1, 1, 1)
kill.TextSize = 23

btools.Name = "btools"
btools.Parent = top
btools.BackgroundColor3 = Color3.new(0.67451, 0.67451, 0.67451)
btools.BackgroundTransparency = 0.5
btools.BorderSizePixel = 0
btools.Position = UDim2.new(0.525773168, 0, 1.76666665, 0)
btools.Size = UDim2.new(0, 131, 0, 40)
btools.Font = Enum.Font.SourceSansLight
btools.Text = "Btools"
btools.TextColor3 = Color3.new(1, 1, 1)
btools.TextSize = 23

top_2.Name = "top"
top_2.Parent = top
top_2.BackgroundColor3 = Color3.new(1, 1, 1)
top_2.BackgroundTransparency = 1
top_2.Position = UDim2.new(0.154639184, 0, -0.333333343, 0)
top_2.Size = UDim2.new(0, 200, 0, 50)
top_2.Font = Enum.Font.SourceSansLight
top_2.Text = "Harked"
top_2.TextColor3 = Color3.new(1, 1, 1)
top_2.TextSize = 45

naked.Name = "naked"
naked.Parent = top
naked.BackgroundColor3 = Color3.new(0.67451, 0.67451, 0.67451)
naked.BackgroundTransparency = 0.5
naked.BorderSizePixel = 0
naked.Position = UDim2.new(0.0206185561, 0, 3.56217241, 0)
naked.Size = UDim2.new(0, 134, 0, 40)
naked.Font = Enum.Font.SourceSansLight
naked.Text = "Naked"
naked.TextColor3 = Color3.new(1, 1, 1)
naked.TextSize = 23

credits.Name = "credits"
credits.Parent = top
credits.BackgroundColor3 = Color3.new(1, 1, 1)
credits.BackgroundTransparency = 1
credits.Position = UDim2.new(0, 0, 1, 0)
credits.Size = UDim2.new(0, 291, 0, 23)
credits.Font = Enum.Font.SourceSansLight
credits.Text = "Commands/Scripts by Dong , UI by Unverified"
credits.TextColor3 = Color3.new(1, 1, 1)
credits.TextSize = 17
credits.TextWrapped = true

hatless.Name = "hatless"
hatless.Parent = top
hatless.BackgroundColor3 = Color3.new(0.67451, 0.67451, 0.67451)
hatless.BackgroundTransparency = 0.5
hatless.BorderSizePixel = 0
hatless.Position = UDim2.new(0.0206185561, 0, 5.39550591, 0)
hatless.Size = UDim2.new(0, 134, 0, 40)
hatless.Font = Enum.Font.SourceSansLight
hatless.Text = "Hatless"
hatless.TextColor3 = Color3.new(1, 1, 1)
hatless.TextSize = 23

sink.Name = "sink"
sink.Parent = top
sink.BackgroundColor3 = Color3.new(0.67451, 0.67451, 0.67451)
sink.BackgroundTransparency = 0.5
sink.BorderSizePixel = 0
sink.Position = UDim2.new(0.525773168, 0, 5.39550591, 0)
sink.Size = UDim2.new(0, 131, 0, 40)
sink.Font = Enum.Font.SourceSansLight
sink.Text = "Sink"
sink.TextColor3 = Color3.new(1, 1, 1)
sink.TextSize = 23

nuke.Name = "nuke"
nuke.Parent = top
nuke.BackgroundColor3 = Color3.new(0.67451, 0.67451, 0.67451)
nuke.BackgroundTransparency = 0.5
nuke.BorderSizePixel = 0
nuke.Position = UDim2.new(0.525773168, 0, 7.1955061, 0)
nuke.Size = UDim2.new(0, 131, 0, 40)
nuke.Font = Enum.Font.SourceSansLight
nuke.Text = "Nuke"
nuke.TextColor3 = Color3.new(1, 1, 1)
nuke.TextSize = 23

kick.Name = "kick"
kick.Parent = top
kick.BackgroundColor3 = Color3.new(0.67451, 0.67451, 0.67451)
kick.BackgroundTransparency = 0.5
kick.BorderSizePixel = 0
kick.Position = UDim2.new(0.0206185561, 0, 7.1955061, 0)
kick.Size = UDim2.new(0, 134, 0, 40)
kick.Font = Enum.Font.SourceSansLight
kick.Text = "Kick"
kick.TextColor3 = Color3.new(1, 1, 1)
kick.TextSize = 23

target.Name = "target"
target.Parent = top
target.BackgroundColor3 = Color3.new(0.67451, 0.67451, 0.67451)
target.BackgroundTransparency = 0.40000000596046
target.Position = UDim2.new(0.0206185561, 0, 8.86666584, 0)
target.Size = UDim2.new(0, 278, 0, 33)
target.Font = Enum.Font.SourceSans
target.Text = ""
target.TextColor3 = Color3.new(1, 1, 1)
target.TextSize = 23

queue.Name = "queue"
queue.Parent = top
queue.BackgroundColor3 = Color3.new(1, 1, 1)
queue.BackgroundTransparency = 1
queue.Position = UDim2.new(0.15463917, 0, 10.0333328, 0)
queue.Size = UDim2.new(0, 201, 0, 23)
queue.Font = Enum.Font.SourceSans
queue.Text = "Replication Queue: 0"
queue.TextColor3 = Color3.new(1, 0, 0.0156863)
queue.TextSize = 20
queue.TextWrapped = true

nolimbs.Name = "nolimbs"
nolimbs.Parent = top
nolimbs.BackgroundColor3 = Color3.new(0.67451, 0.67451, 0.67451)
nolimbs.BackgroundTransparency = 0.5
nolimbs.BorderSizePixel = 0
nolimbs.Position = UDim2.new(0.525773168, 0, 3.56217265, 0)
nolimbs.Size = UDim2.new(0, 131, 0, 40)
nolimbs.Font = Enum.Font.SourceSansLight
nolimbs.Text = "NoLimbs"
nolimbs.TextColor3 = Color3.new(1, 1, 1)
nolimbs.TextSize = 23

-- SLAVE'S WORK --

for i,slaves in pairs(game:GetDescendants()) do
    if slaves.Name == "DestroySegway" then
        print("no u")   
    
kill.MouseButton1Down:connect(function()
if string.lower(target.Text) == "all" then
	for i,c in pairs(game.Players:GetPlayers()) do
 		ohok = c.Character["Head"]
        slaves:FireServer(ohok, {Value = ohok})
	end	
	else
if game.Players:FindFirstChild(target.Text) then
if game.Players:FindFirstChild(target.Text).Character then
	slaves:FireServer(game.Players:FindFirstChild(target.Text).Character.Head, {Value = game.Players:FindFirstChild(target.Text).Character.Head}) else
		print("nibba who this")
	
end
	
	
end

end
end)

btools.MouseButton1Down:connect(function()
	local Tool = Instance.new("Tool",game.Players.LocalPlayer.Backpack)
local Equipped = false

Tool.RequiresHandle = false
Tool.Name = "Destroy Tool"
local Field = Instance.new("SelectionBox",game.Workspace)
local Mouse = game.Players.LocalPlayer:GetMouse()
Field.LineThickness = 0.1

Tool.Equipped:connect(function()
Equipped = true

while Equipped == true do
if Mouse.Target ~= nil then
Field.Adornee = Mouse.Target

else
Field.Adornee = nil
end
wait()
end
end)


Tool.Unequipped:connect(function()
Equipped = false
Field.Adornee = nil
end)

Tool.Activated:connect(function()
if Mouse.Target ~= nil then
slaves:FireServer(Mouse.Target, {Value = Mouse.Target})	
local AttemptTarget = Mouse.Target
while AttemptTarget ~= nil do
AttemptTarget.Velocity = Vector3.new(0,-1000000000000000,0)
AttemptTarget.CanCollide = false
wait()
end

end
end)
end)

naked.MouseButton1Down:connect(function()
	if string.lower(target.Text) == "all" then
		for i,c in pairs(game.Players:GetPlayers()) do
    ohok = c.Character.Shirt
    ohoka = c.Character.Pants
    slaves:FireServer(ohok, {Value = ohok})
    slaves:FireServer(ohoka, {Value = ohoka})
		end
	else
		slaves:FireServer(game.Players:FindFirstChild(target.Text).Character.Shirt, {Value = game.Players:FindFirstChild(target.Text).Character.Shirt})
		slaves:FireServer(game.Players:FindFirstChild(target.Text).Character.Pants, {Value = game.Players:FindFirstChild(target.Text).Character.Pants})
end
end)

nolimbs.MouseButton1Down:connect(function()
	if string.lower(target.Text) == "all" then
		for i,c in pairs(game.Players:GetPlayers()) do
    ohok = c.Character["Right Arm"]
    ohoka = c.Character["Left Arm"]
    ohokb = c.Character["Right Leg"]
    ohokc = c.Character["Left Leg"]
        slaves:FireServer(ohok, {Value = ohok})
	slaves:FireServer(ohoka, {Value = ohoka})
        slaves:FireServer(ohokb, {Value = ohokb})
	slaves:FireServer(ohokc, {Value = ohokc})
		end
	else
		slaves:FireServer(game.Players:FindFirstChild(target.Text).Character["Right Arm"], {Value = game.Players:FindFirstChild(target.Text).Character["Right Arm"]})
		slaves:FireServer(game.Players:FindFirstChild(target.Text).Character["Right Leg"], {Value = game.Players:FindFirstChild(target.Text).Character["Right Leg"]})
		slaves:FireServer(game.Players:FindFirstChild(target.Text).Character["Left Arm"], {Value = game.Players:FindFirstChild(target.Text).Character["Left Arm"]})
		slaves:FireServer(game.Players:FindFirstChild(target.Text).Character["Left Leg"], {Value = game.Players:FindFirstChild(target.Text).Character["Left Leg"]})
	end
end)

hatless.MouseButton1Down:connect(function()
	if string.lower(target.Text) == "all" then
		for i,x in pairs(game.Players:GetPlayers()) do
    for i,c in pairs(x.Character:GetChildren()) do
    if c:IsA("Accessory") then
    ohok = c
    slaves:FireServer(ohok, {Value = ohok})
   
end
end
end
	else
		for i, hats in pairs(game.Players:FindFirstChild(target.Text).Character:GetChildren()) do
			if hats:IsA("Accessory") then
				slaves:FireServer(hats, {Value = hats })
			end
		end
end
end)

sink.MouseButton1Down:connect(function()
	if string.lower(target.Text) == "all" then
		for i,c in pairs(game.Players:GetPlayers()) do
    ohok = c.Character.HumanoidRootPart
    slaves:FireServer(ohok, {Value = ohok})
		end
	else
		slaves:FireServer(game.Players:FindFirstChild(target.Text).Character["HumanoidRootPart"], {Value = game.Players:FindFirstChild(target.Text).Character["HumanoidRootPart"]})
end
end)

kick.MouseButton1Down:connect(function()
	if string.lower(target.Text) == "all" then
		for i,c in pairs(game.Players:GetPlayers()) do
    ohok = c
        slaves:FireServer(ohok, {Value = ohok})
		end
	else
		slaves:FireServer(game.Players:FindFirstChild(target.Text), {Value = game.Players:FindFirstChild(target.Text)})
	end
end)

nuke.MouseButton1Down:connect(function()
	for i,c in pairs(game.Workspace:GetChildren()) do
    ohok = c
        slaves:FireServer(ohok, {Value = ohok})
end
end)

end
end