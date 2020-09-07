-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local ArsenalScript = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local MainName = Instance.new("TextLabel")
local Aimbot = Instance.new("TextButton")
local ESP = Instance.new("TextButton")
local Close = Instance.new("TextButton")
local OpenFrame = Instance.new("Frame")
local Open = Instance.new("TextButton")
--Properties:
ArsenalScript.Name = "ArsenalScript"
ArsenalScript.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ArsenalScript.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = ArsenalScript
MainFrame.BackgroundColor3 = Color3.new(0.333333, 1, 0)
MainFrame.BackgroundTransparency = 0.44999998807907
MainFrame.Position = UDim2.new(0.332874835, 0, 0.200501248, 0)
MainFrame.Size = UDim2.new(0, 285, 0, 286)

MainName.Name = "MainName"
MainName.Parent = MainFrame
MainName.BackgroundColor3 = Color3.new(1, 1, 1)
MainName.BackgroundTransparency = 0.44999998807907
MainName.Size = UDim2.new(0, 285, 0, 50)
MainName.Font = Enum.Font.SourceSans
MainName.Text = "Arsenal GUI"
MainName.TextColor3 = Color3.new(0, 0, 0)
MainName.TextScaled = true
MainName.TextSize = 14
MainName.TextWrapped = true

Aimbot.Name = "Aimbot"
Aimbot.Parent = MainFrame
Aimbot.BackgroundColor3 = Color3.new(1, 1, 1)
Aimbot.BackgroundTransparency = 0.44999998807907
Aimbot.Position = UDim2.new(0.147368416, 0, 0.227272734, 0)
Aimbot.Size = UDim2.new(0, 200, 0, 50)
Aimbot.Font = Enum.Font.SourceSans
Aimbot.Text = "Aimbot (H)"
Aimbot.TextColor3 = Color3.new(0, 0, 0)
Aimbot.TextScaled = true
Aimbot.TextSize = 14
Aimbot.TextWrapped = true
Aimbot.MouseButton1Down:connect(function()
loadstring(game:HttpGet'https://pastebin.com/raw/1Hhnwpup')()
end)

ESP.Name = "ESP"
ESP.Parent = MainFrame
ESP.BackgroundColor3 = Color3.new(1, 1, 1)
ESP.BackgroundTransparency = 0.44999998807907
ESP.Position = UDim2.new(0.147368416, 0, 0.421717167, 0)
ESP.Size = UDim2.new(0, 200, 0, 50)
ESP.Font = Enum.Font.SourceSans
ESP.Text = "ESP"
ESP.TextColor3 = Color3.new(0, 0, 0)
ESP.TextScaled = true
ESP.TextSize = 14
ESP.TextWrapped = true
ESP.MouseButton1Down:connect(function()
crashy = true -- CHANGE THIS TO TRUE IF IT CRASHES THIS GAME
on = false
if game.CoreGui:FindFirstChild('ESP') then
	game.CoreGui.ESP:Destroy()
elseif game.Players.LocalPlayer.PlayerGui:FindFirstChild('ESP') then
	game.Players.LocalPlayer.PlayerGui.ESP:Destroy()
end

function doit(hey)
	local t1 = Instance.new('SurfaceGui',hey)
	t1.AlwaysOnTop = true
	local t1g = Instance.new('Frame',t1)
	t1g.Size = UDim2.new(1,0,1,0)
	t1g.BackgroundColor3 = t1.Parent.BrickColor.Color
	local t2 = Instance.new('SurfaceGui',hey)		
	t2.AlwaysOnTop = true
	t2.Face = Enum.NormalId.Right
	local t2g = Instance.new('Frame',t2)
	t2g.Size = UDim2.new(1,0,1,0)
	t2g.BackgroundColor3 = t2.Parent.BrickColor.Color
	local t3 = Instance.new('SurfaceGui',hey)
	t3.AlwaysOnTop = true
	t3.Face = Enum.NormalId.Left
	local t3g = Instance.new('Frame',t3)
	t3g.Size = UDim2.new(1,0,1,0)
	t3g.BackgroundColor3 = t3.Parent.BrickColor.Color
	local t4 = Instance.new('SurfaceGui',hey)
	t4.AlwaysOnTop = true
	t4.Face = Enum.NormalId.Back
	local t4g = Instance.new('Frame',t4)
	t4g.Size = UDim2.new(1,0,1,0)
	t4g.BackgroundColor3 = t4.Parent.BrickColor.Color
	local t5 = Instance.new('SurfaceGui',hey)
	t5.AlwaysOnTop = true
	t5.Face = Enum.NormalId.Top
	local t5g = Instance.new('Frame',t5)
	t5g.Size = UDim2.new(1,0,1,0)
	t5g.BackgroundColor3 = t5.Parent.BrickColor.Color
	local t6 = Instance.new('SurfaceGui',hey)
	t6.AlwaysOnTop = true
	t6.Face = Enum.NormalId.Bottom
	local t6g = Instance.new('Frame',t6)
	t6g.Size = UDim2.new(1,0,1,0)
	t6g.BackgroundColor3 = t6.Parent.BrickColor.Color
end
function undo(chr)
	for i,v in pairs(chr:GetChildren()) do
		if v.ClassName == "Part" or v.ClassName == "MeshPart" then
			for a,c in pairs(v:GetChildren()) do
				if c.ClassName == "SurfaceGui" then
					c:Destroy()
				end
				if c.ClassName == "BillboardGui" and c.Name == "thingyye" then
					c:Destroy()
				end
			end
		end
	end
end

local gui = Instance.new('ScreenGui')
if crashy == false then
	gui.Parent = game.CoreGui
else
	gui.Parent = game.Players.LocalPlayer.PlayerGui
end
gui.Name = "ESP"
gui.ResetOnSpawn = false
local frame = Instance.new('Frame',gui)
frame.Size = UDim2.new(0.2,0,0.3,0)
frame.Position = UDim2.new(0,0,0.9,0)
frame.BackgroundTransparency = 0.5
frame.BackgroundColor3 = Color3.fromRGB(131,182,239)
frame.BorderSizePixel = 4
frame.BorderColor3 = Color3.fromRGB(66,134,244)
frame.Active = true
frame.Draggable = true 
local txt = Instance.new('TextLabel',frame)
txt.Text = "Mustardfoot's ESP Gui"
txt.TextColor3 = Color3.fromRGB(255,255,255)
txt.Size = UDim2.new(1,0,0.3,0)
txt.TextScaled = true
txt.BackgroundTransparency = 1
local but = Instance.new('TextButton',frame)
but.Text = "ESP On"
but.TextColor3 = Color3.fromRGB(255,255,255)
but.Size = UDim2.new(0.7,0,0.3,0)
but.Position = UDim2.new(0.15,0,0.5,0)
but.BorderSizePixel = 0
but.TextScaled = true
but.BackgroundColor3 = Color3.fromRGB(66,134,244)
but.BackgroundTransparency = 0.4
for i,v in pairs(game.Players:GetChildren()) do
	if v.Character ~= nil then
		undo(v.Character)
	end
end

but.MouseButton1Down:connect(function()
if but.Text == "ESP On" then
but.Text = "ESP Off"
on = true
for i,v in pairs(game.Players:GetChildren()) do
	if v.Character ~= game.Players.LocalPlayer.Character and v.Character.Head:FindFirstChild('ScreenGui') == nil then
		if v.Character:FindFirstChild('Head') then
			local bill = Instance.new('BillboardGui',v.Character.Head)
			bill.Name = "thingyye"
			bill.AlwaysOnTop = true
			bill.Size = UDim2.new(2,1,2)
			bill.Adornee = v.Character.Head 
			local txt = Instance.new('TextLabel',bill)
			txt.Text = v.Name
			txt.BackgroundTransparency = 1
			txt.Size = UDim2.new(1,0,1,0)
			txt.TextColor3 = v.TeamColor.Color
		end
		for a,c in pairs(v.Character:GetChildren()) do
			if c.ClassName == "MeshPart" and c.Transparency ~= 1 then
				doit(c)
			elseif c.ClassName == "Part" and c.Transparency ~= 1 then
			doit(c)
			end
		end
	end 
end 
else
	but.Text = "ESP On"
	on = false
	for i,v in pairs(game.Players:GetChildren()) do
		undo(v.Character)
	end
end
end)

for i,v in pairs(game.Players:GetChildren()) do
	v.CharacterAdded:connect(function()
	v.Character:WaitForChild('Head')
	wait(1)
	if on == true then
	if v.Character ~= game.Players.LocalPlayer.Character and v.Character.Head:FindFirstChild('ScreenGui') == nil then
		if v.Character:FindFirstChild('Head') then
			local bill = Instance.new('BillboardGui',v.Character.Head)
			bill.Name = "thingyye"
			bill.AlwaysOnTop = true
			bill.Size = UDim2.new(2,1,2)
			bill.Adornee = v.Character.Head 
			local txt = Instance.new('TextLabel',bill)
			txt.Text = v.Name
			txt.BackgroundTransparency = 1
			txt.Size = UDim2.new(1,0,1,0)
			txt.TextColor3 = v.TeamColor.Color
		end
		for a,c in pairs(v.Character:GetChildren()) do
			if c.ClassName == "MeshPart" and c.Transparency ~= 1 then
				doit(c)
			elseif c.ClassName == "Part" and c.Transparency ~= 1 then
			doit(c)
			end
		end
	end 
	end
	end)
end  

game.Players.PlayerAdded:connect(function(v)
v.CharacterAdded:connect(function()
	v.Character:WaitForChild('Head')
	wait(1)
	if on == true then
	if v.Character ~= game.Players.LocalPlayer.Character and v.Character.Head:FindFirstChild('ScreenGui') == nil then
		if v.Character:FindFirstChild('Head') then
			local bill = Instance.new('BillboardGui',v.Character.Head)
			bill.Name = "thingyye"
			bill.AlwaysOnTop = true
			bill.Size = UDim2.new(2,1,2)
			bill.Adornee = v.Character.Head 
			local txt = Instance.new('TextLabel',bill)
			txt.Text = v.Name
			txt.BackgroundTransparency = 1
			txt.Size = UDim2.new(1,0,1,0)
			txt.TextColor3 = v.TeamColor.Color
		end
		for a,c in pairs(v.Character:GetChildren()) do
			if c.ClassName == "MeshPart" and c.Transparency ~= 1 then
				doit(c)
			elseif c.ClassName == "Part" and c.Transparency ~= 1 then
			doit(c)
			end
		end
	end 
	end
	end)
end)
end)

Close.Name = "Close"
Close.Parent = MainFrame
Close.BackgroundColor3 = Color3.new(1, 1, 1)
Close.BackgroundTransparency = 0.44999998807907
Close.Position = UDim2.new(0.147368416, 0, 0.648989916, 0)
Close.Size = UDim2.new(0, 200, 0, 50)
Close.Font = Enum.Font.SourceSans
Close.Text = "Close"
Close.TextColor3 = Color3.new(0, 0, 0)
Close.TextScaled = true
Close.TextSize = 14
Close.TextWrapped = true
Close.MouseButton1Down:connect(function()
MainFrame.Visible = false
OpenFrame.Visible = true
end)

OpenFrame.Name = "OpenFrame"
OpenFrame.Parent = ArsenalScript
OpenFrame.BackgroundColor3 = Color3.new(0.333333, 1, 0)
OpenFrame.BackgroundTransparency = 0.44999998807907
OpenFrame.Position = UDim2.new(0, 0, 0.476190478, 0)
OpenFrame.Size = UDim2.new(0, 106, 0, 37)
OpenFrame.Visible = false

Open.Name = "Open"
Open.Parent = OpenFrame
Open.BackgroundColor3 = Color3.new(1, 1, 1)
Open.BackgroundTransparency = 0.44999998807907
Open.Position = UDim2.new(-0.00357516296, 0, 0.162162155, 0)
Open.Size = UDim2.new(0, 106, 0, 24)
Open.Font = Enum.Font.SourceSans
Open.Text = "Open"
Open.TextColor3 = Color3.new(0, 0, 0)
Open.TextScaled = true
Open.TextSize = 14
Open.TextWrapped = true
Open.MouseButton1Down:connect(function()
OpenFrame.Visible = false
MainFrame.Visible = true
end)
-- Scripts: