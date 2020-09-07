-- Gui to Lua
-- Version: 3.2

-- Instances:

local ShitStrezaOnTop = Instance.new("ScreenGui")
local Frame = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_Roundify_12px = Instance.new("ImageLabel")
local discord = Instance.new("TextButton")
local Frame_2 = Instance.new("Frame")
local TextButton_2 = Instance.new("TextButton")

--Properties:

ShitStrezaOnTop.Name = "Shit Streza On Top"
ShitStrezaOnTop.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Name = "Frame"
Frame.Parent = ShitStrezaOnTop
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0.158415839, 0, 0.438162446, 0)
Frame.Size = UDim2.new(0, 325, 0, 274)
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.fromRGB(29, 29, 29)
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.120

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0746616125, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 275, 0, 44)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "S T R E Z A"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
TextButton.BackgroundTransparency = 1.000
TextButton.BorderColor3 = Color3.fromRGB(27, 27, 27)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.285619646, 0, 0.20143874, 0)
TextButton.Size = UDim2.new(0, 139, 0, 44)
TextButton.ZIndex = 2
TextButton.Font = Enum.Font.GothamSemibold
TextButton.Text = "Execute"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextButton_Roundify_12px.Name = "TextButton_Roundify_12px"
TextButton_Roundify_12px.Parent = Frame
TextButton_Roundify_12px.Active = true
TextButton_Roundify_12px.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_Roundify_12px.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_Roundify_12px.BackgroundTransparency = 1.000
TextButton_Roundify_12px.Position = UDim2.new(0.499276131, 0, 0.278776884, 0)
TextButton_Roundify_12px.Selectable = true
TextButton_Roundify_12px.Size = UDim2.new(0.818459868, 0, 0.183453262, 0)
TextButton_Roundify_12px.Image = "rbxassetid://3570695787"
TextButton_Roundify_12px.ImageColor3 = Color3.fromRGB(39, 39, 39)
TextButton_Roundify_12px.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_12px.SliceCenter = Rect.new(100, 100, 100, 100)
TextButton_Roundify_12px.SliceScale = 0.120

discord.Name = "discord"
discord.Parent = Frame
discord.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
discord.BackgroundTransparency = 1.000
discord.BorderColor3 = Color3.fromRGB(27, 27, 27)
discord.BorderSizePixel = 0
discord.Position = UDim2.new(-0.326688081, 0, 0.836974084, 0)
discord.Size = UDim2.new(0, 536, 0, 44)
discord.ZIndex = 2
discord.Font = Enum.Font.GothamSemibold
discord.Text = "Discord: 326SwvS"
discord.TextColor3 = Color3.fromRGB(255, 255, 255)
discord.TextSize = 30.000
discord.TextWrapped = true

Frame_2.Parent = ShitStrezaOnTop
Frame_2.Active = true
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.157797024, 0, 0.486454666, 0)
Frame_2.Size = UDim2.new(0, 326, 0, 1)

TextButton_2.Parent = ShitStrezaOnTop
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.BackgroundTransparency = 1.000
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.336014867, 0, 0.438162446, 0)
TextButton_2.Size = UDim2.new(0, 38, 0, 35)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "X"
TextButton_2.TextColor3 = Color3.fromRGB(170, 0, 0)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

-- Scripts:

local function SLIKMR_fake_script() -- TextLabel.Streza Colors 
	local script = Instance.new('LocalScript', TextLabel)

	
	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	
	counter = 0
	
	while wait(0.1)do
		 script.Parent.TextColor3 = Color3.fromHSV(zigzag(counter),1,1)
	 
	 counter = counter + 0.01
	end
end
coroutine.wrap(SLIKMR_fake_script)()
local function FYYM_fake_script() -- TextButton.Games Execution 
	local script = Instance.new('LocalScript', TextButton)

	print("Streza Is Currently In [BETA Testing] Join Our Discord @ discord.gg/326SwvS")
	function Arsenal()
		loadstring(game:HttpGet("https://pastebin.com/raw/RviqFvtr", true))()
		
	end
	--PIGGY------------------------------------------------------------------------------------------------------PIGGY-----------------------------
	if game.PlaceId == 4623386862 then
		script.Parent.Text = "Piggy"
	end
	
	script.Parent.MouseButton1Click:Connect(function()
		if game.PlaceId == 4623386862
		then loadstring(game:HttpGet("https://raw.githubusercontent.com/joeengo/PiggyHax/master/Piggy%20Hax.txt", true))()
		end
		wait(0.08)
		script.Parent.Parent.Parent:Destroy()
	end)
	--PIGGY----------------------------------------------------------------------------------------------------------------------------------------
	--JAILBREAK------------------------------------------------------------------------------------------------------------------------------------
	if game.PlaceId == 606849621
	then
		script.Parent.Text = "Jailbreak"
	end
	
	script.Parent.MouseButton1Click:Connect(function()
		if game.PlaceId == 606849621
		then loadstring(game:HttpGet("https://raw.githubusercontent.com/HazeWasTaken/JailedHax/master/PayPal", true))() --credits to hazed#0001
		end
		wait(0.08)
		script.Parent.Parent.Parent:Destroy()
	end)
	--Jailbreak------------------------------------------------------------------------------------------------------------------------------------
	--Adopt Me------------------------------------------------------------------------------------------------------------------------------------- 
	if game.PlaceId == 920587237 
	then
		script.Parent.Text = "Adopt Me"
	end
	
	script.Parent.MouseButton1Click:Connect(function()
		if game.PlaceId == 920587237
		then
		    loadstring(game:HttpGet("http://stockerperso.me/scripts/haxxme.lua", true))()
		end
		wait(0.08)
		script.Parent.Parent.Parent:Destroy()
	end)
	--Adopt Me-------------------------------------------------------------------------------------------------------------------------------------
	--Arsenal--------------------------------------------------------------------------------------------------------------------------------------
	if game.PlaceId == 286090429
	then
		script.Parent.Text = "Arsenal"
	end
	script.Parent.MouseButton1Click:Connect(function()
		if game.PlaceId == 286090429
		then
			Arsenal()
		end
	end)
	--Arsenal---------------------------------------------------------------------------------------------------------------------------------------
	
	
	
end
coroutine.wrap(FYYM_fake_script)()
local function CZXXB_fake_script() -- Frame_2.Streza Colors 
	local script = Instance.new('LocalScript', Frame_2)

	
	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	
	counter = 0
	
	while wait(0.1)do
		 script.Parent.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)
	 
	 counter = counter + 0.01
	end
end
coroutine.wrap(CZXXB_fake_script)()
local function JFEBRR_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(JFEBRR_fake_script)()
