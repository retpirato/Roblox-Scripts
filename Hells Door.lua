-- Objects

local ScreenGui = Instance.new("ScreenGui")
local TextBox = Instance.new("TextBox")


function MoveSpawn(obj1,PLAYER)
	local playerpos = nil
	if PLAYER:FindFirstChildOfClass('Humanoid') and PLAYER:FindFirstChild('HumanoidRootPart') then
		playerpos = PLAYER.HumanoidRootPart.Position - Vector3.new(0,PLAYER:FindFirstChildOfClass('Humanoid').HipHeight+3,0)
	end
	print(playerpos)
	for _,part in pairs (obj1:GetChildren()) do
		if part:IsA('BasePart') and playerpos then
			print('thefuck')
			print(playerpos)
			part.CFrame = part.CFrame + playerpos + Vector3.new(-2.6,-20,-143)
		end
	end
end

function ToHell(obj1)
	for i,v in pairs(obj1:GetChildren()) do
		v.CFrame = v.CFrame+Vector3.new(5000,5000,5000)
	end
end

function MoveBy(obj1,AMNT)
	for i,v in pairs(obj1:GetChildren()) do
		if v:IsA('BasePart') then
			v.CFrame = v.CFrame + AMNT
		end
	end
end

function MovePartBy(part,AMNT)
	part.CFrame = part.CFrame+AMNT
end

-- Properties

ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui
ScreenGui.ResetOnSpawn = false

TextBox.Parent = ScreenGui
TextBox.AnchorPoint = Vector2.new(0.5, 0.5)
TextBox.BackgroundColor3 = Color3.new(0, 0, 0)
TextBox.BorderColor3 = Color3.new(0.47451, 0, 0)
TextBox.BorderSizePixel = 5
TextBox.Position = UDim2.new(0.5, 0, 0.949999988, 0)
TextBox.Size = UDim2.new(0.300000012, 0, 0.100000001, 0)
TextBox.Font = Enum.Font.SourceSans
TextBox.FontSize = Enum.FontSize.Size14
TextBox.Text = "Enter Target's Name (Can be Shortened)"
TextBox.TextColor3 = Color3.new(0.47451, 0, 0)
TextBox.TextScaled = true
TextBox.TextSize = 14
TextBox.TextWrapped = true

TextBox.FocusLost:connect(function()
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(TextBox.Text)) == string.lower(TextBox.Text) and string.lower(TextBox.Text) ~= "all" and string.lower(TextBox.Text) ~= "others" and string.lower(TextBox.Text) ~= "me") or string.lower(TextBox.Text) == "all" or (string.lower(TextBox.Text) == "others" and v ~= game.Players.LocalPlayer) or (string.lower(TextBox.Text) == "me" and v == game.Players.LocalPlayer) then
local coru = coroutine.wrap(function()
print('elevatoring '..v.Name)
local plr = v
-- 1 - Model
local obj1 = Instance.new("Model")
obj1.Parent = workspace

-- 2 - Part
local obj2 = Instance.new("Part")
obj2.CFrame = CFrame.new(Vector3.new(7.60000801, 8.2000227, 143.099991)) * CFrame.Angles(-0, 0, -0)
obj2.Material = Enum.Material.Neon
obj2.Size = Vector3.new(0.400000006, 0.200000003, 6.5999999)
obj2.Anchored = true
obj2.BrickColor = BrickColor.new("Maroon")
obj2.Friction = 0.30000001192093
obj2.Shape = Enum.PartType.Block
obj2.Parent = obj1

-- 3 - Part
local obj3 = Instance.new("Part")
obj3.CFrame = CFrame.new(Vector3.new(17.550005, 2.40002203, 152.699997)) * CFrame.Angles(-0, 0, -0)
obj3.Material = Enum.Material.Foil
obj3.Size = Vector3.new(19.4999981, 0.200000003, 0.200000003)
obj3.Anchored = true
obj3.BrickColor = BrickColor.new("Really black")
obj3.Friction = 0.30000001192093
obj3.Shape = Enum.PartType.Block
obj3.Parent = obj1

-- 4 - Wedge
local obj4 = Instance.new("WedgePart")
obj4.CFrame = CFrame.new(Vector3.new(27.300005, 0.107478142, 133.599991)) * CFrame.Angles(-3.1415927410126, 0, 1.5707963705063)
obj4.TopSurface = Enum.SurfaceType.Smooth
obj4.Material = Enum.Material.Marble
obj4.Size = Vector3.new(0.200000003, 1, 1)
obj4.Anchored = true
obj4.BrickColor = BrickColor.new("Maroon")
obj4.Friction = 0.30000001192093
obj4.Name = "Wedge"
obj4.Parent = obj1

-- 5 - Part
local obj5 = Instance.new("Part")
obj5.CFrame = CFrame.new(Vector3.new(17.7938519, 0.107021809, 143.101028)) * CFrame.Angles(-0, -0.78539991378784, -0)
obj5.TopSurface = Enum.SurfaceType.Smooth
obj5.BottomSurface = Enum.SurfaceType.Smooth
obj5.Material = Enum.Material.Marble
obj5.Size = Vector3.new(1.40999985, 0.200000003, 26.8800011)
obj5.Anchored = true
obj5.BrickColor = BrickColor.new("Maroon")
obj5.Friction = 0.30000001192093
obj5.Shape = Enum.PartType.Block
obj5.Parent = obj1

-- 6 - Part
local obj6 = Instance.new("Part")
obj6.CFrame = CFrame.new(Vector3.new(7.6000042, 6.50002193, 149.850006)) * CFrame.Angles(0, 1.5707963705063, 0)
obj6.Material = Enum.Material.Cobblestone
obj6.Size = Vector3.new(6.90000153, 13, 0.400000006)
obj6.Anchored = true
obj6.BrickColor = BrickColor.new("Maroon")
obj6.Friction = 0.30000001192093
obj6.Shape = Enum.PartType.Block
obj6.Parent = obj1

-- 7 - Part
local obj7 = Instance.new("Part")
obj7.CFrame = CFrame.new(Vector3.new(27.4000034, 2.40002203, 143.199997)) * CFrame.Angles(-0, 0, -0)
obj7.Material = Enum.Material.Foil
obj7.Size = Vector3.new(0.200000003, 0.200000003, 19.2000008)
obj7.Anchored = true
obj7.BrickColor = BrickColor.new("Really black")
obj7.Friction = 0.30000001192093
obj7.Shape = Enum.PartType.Block
obj7.Parent = obj1

-- 8 - Part
local obj8 = Instance.new("Part")
obj8.CFrame = CFrame.new(Vector3.new(17.8000011, 6.50002193, 153.199997)) * CFrame.Angles(-0, 0, -0)
obj8.Material = Enum.Material.Cobblestone
obj8.Size = Vector3.new(20, 13, 0.200000003)
obj8.Anchored = true
obj8.BrickColor = BrickColor.new("Maroon")
obj8.Friction = 0.30000001192093
obj8.Shape = Enum.PartType.Block
obj8.Parent = obj1

-- 9 - Part
local obj9 = Instance.new("Part")
obj9.CFrame = CFrame.new(Vector3.new(7.6000042, 4.05002213, 139.899994)) * CFrame.Angles(-0, 0, -0)
obj9.Material = Enum.Material.Neon
obj9.Size = Vector3.new(0.400000006, 8.10000038, 0.200000003)
obj9.Anchored = true
obj9.BrickColor = BrickColor.new("Maroon")
obj9.Friction = 0.30000001192093
obj9.Shape = Enum.PartType.Block
obj9.Parent = obj1

-- 10 - Part
local obj10 = Instance.new("Part")
obj10.CFrame = CFrame.new(Vector3.new(17.8000011, 0.100021839, 143.100006)) * CFrame.Angles(-0, 0, -0)
obj10.TopSurface = Enum.SurfaceType.Smooth
obj10.BottomSurface = Enum.SurfaceType.Smooth
obj10.Material = Enum.Material.Wood
obj10.Size = Vector3.new(20, 0.200000003, 20)
obj10.Anchored = true
obj10.BrickColor = BrickColor.new("Black")
obj10.Friction = 0.30000001192093
obj10.Shape = Enum.PartType.Block
obj10.Parent = obj1

-- 11 - Wedge
local obj11 = Instance.new("WedgePart")
obj11.CFrame = CFrame.new(Vector3.new(8.2999897, 0.107478142, 152.600006)) * CFrame.Angles(-0, 0, -1.5707963705063)
obj11.TopSurface = Enum.SurfaceType.Smooth
obj11.Material = Enum.Material.Marble
obj11.Size = Vector3.new(0.200000003, 1, 1)
obj11.BottomSurface = Enum.SurfaceType.Smooth
obj11.Anchored = true
obj11.BrickColor = BrickColor.new("Maroon")
obj11.Friction = 0.30000001192093
obj11.Name = "Wedge"
obj11.Parent = obj1

-- 12 - Wedge
local obj12 = Instance.new("WedgePart")
obj12.CFrame = CFrame.new(Vector3.new(8.2988987, 0.107478142, 133.599976)) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)
obj12.TopSurface = Enum.SurfaceType.Smooth
obj12.Material = Enum.Material.Marble
obj12.Size = Vector3.new(0.200000003, 1, 1)
obj12.BottomSurface = Enum.SurfaceType.Smooth
obj12.Anchored = true
obj12.BrickColor = BrickColor.new("Maroon")
obj12.Friction = 0.30000001192093
obj12.Name = "Wedge"
obj12.Parent = obj1

-- 13 - Part
local obj13 = Instance.new("Part")
obj13.CFrame = CFrame.new(Vector3.new(17.7979107, 0.107021809, 143.093857)) * CFrame.Angles(-3.1415927410126, -0.78540050983429, -3.1415927410126)
obj13.TopSurface = Enum.SurfaceType.Smooth
obj13.BottomSurface = Enum.SurfaceType.Smooth
obj13.Material = Enum.Material.Marble
obj13.Size = Vector3.new(1.40999985, 0.200000003, 26.8800011)
obj13.Anchored = true
obj13.BrickColor = BrickColor.new("Maroon")
obj13.Friction = 0.30000001192093
obj13.Shape = Enum.PartType.Block
obj13.Parent = obj1

-- 14 - Wedge
local obj14 = Instance.new("WedgePart")
obj14.CFrame = CFrame.new(Vector3.new(27.2989597, 0.107478142, 152.600037)) * CFrame.Angles(-1.5707963705063, 1.5707963705063, 0)
obj14.TopSurface = Enum.SurfaceType.Smooth
obj14.Material = Enum.Material.Marble
obj14.Size = Vector3.new(0.200000003, 1, 1)
obj14.Anchored = true
obj14.BrickColor = BrickColor.new("Maroon")
obj14.Friction = 0.30000001192093
obj14.Name = "Wedge"
obj14.Parent = obj1

-- 15 - Part
local obj15 = Instance.new("Part")
obj15.CFrame = CFrame.new(Vector3.new(27.8999996, 6.50002193, 143.100006)) * CFrame.Angles(0, 1.5707963705063, 0)
obj15.Material = Enum.Material.Cobblestone
obj15.Size = Vector3.new(20.4000015, 13, 0.200000003)
obj15.Anchored = true
obj15.BrickColor = BrickColor.new("Maroon")
obj15.Friction = 0.30000001192093
obj15.Shape = Enum.PartType.Block
obj15.Parent = obj1

-- 16 - Part
local obj16 = Instance.new("Part")
obj16.CFrame = CFrame.new(Vector3.new(7.60000038, 4.05002213, 146.299988)) * CFrame.Angles(-0, 0, -0)
obj16.Material = Enum.Material.Neon
obj16.Size = Vector3.new(0.400000006, 8.10000038, 0.200000003)
obj16.Anchored = true
obj16.BrickColor = BrickColor.new("Maroon")
obj16.Friction = 0.30000001192093
obj16.Shape = Enum.PartType.Block
obj16.Parent = obj1

-- 17 - Part
local obj17 = Instance.new("Part")
obj17.CFrame = CFrame.new(Vector3.new(17.8000011, 6.50002193, 133)) * CFrame.Angles(-0, 0, -0)
obj17.Material = Enum.Material.Cobblestone
obj17.Size = Vector3.new(20, 13, 0.200000003)
obj17.Anchored = true
obj17.BrickColor = BrickColor.new("Maroon")
obj17.Friction = 0.30000001192093
obj17.Shape = Enum.PartType.Block
obj17.Parent = obj1

-- 18 - Part
local obj18 = Instance.new("Part")
obj18.CFrame = CFrame.new(Vector3.new(7.6000042, 6.50002193, 136.350006)) * CFrame.Angles(0, 1.5707963705063, 0)
obj18.Material = Enum.Material.Cobblestone
obj18.Size = Vector3.new(6.90000153, 13, 0.400000006)
obj18.Anchored = true
obj18.BrickColor = BrickColor.new("Maroon")
obj18.Friction = 0.30000001192093
obj18.Shape = Enum.PartType.Block
obj18.Parent = obj1

-- 19 - Part
local obj19 = Instance.new("Part")
obj19.CFrame = CFrame.new(Vector3.new(7.6000042, 10.6500206, 143.099991)) * CFrame.Angles(0, 1.5707963705063, 0)
obj19.Material = Enum.Material.Cobblestone
obj19.Size = Vector3.new(6.60000181, 4.69999981, 0.400000006)
obj19.Anchored = true
obj19.BrickColor = BrickColor.new("Maroon")
obj19.Friction = 0.30000001192093
obj19.Shape = Enum.PartType.Block
obj19.Parent = obj1

-- 20 - Part
local obj20 = Instance.new("Part")
obj20.CFrame = CFrame.new(Vector3.new(17.6500034, 2.40002203, 133.5)) * CFrame.Angles(-0, 0, -0)
obj20.Material = Enum.Material.Foil
obj20.Size = Vector3.new(19.7000008, 0.200000003, 0.200000003)
obj20.Anchored = true
obj20.BrickColor = BrickColor.new("Really black")
obj20.Friction = 0.30000001192093
obj20.Shape = Enum.PartType.Block
obj20.Parent = obj1

-- 21 - Door1
local obj21 = Instance.new("Part")
obj21.CFrame = CFrame.new(Vector3.new(7.60000038, 4.05002213, 144.649994)) * CFrame.Angles(-0, 0, -0)
obj21.Material = Enum.Material.Granite
obj21.Size = Vector3.new(0.200000003, 8.10000038, 3.10000014)
obj21.Anchored = true
obj21.BrickColor = BrickColor.new("Really black")
obj21.Friction = 0.30000001192093
obj21.Shape = Enum.PartType.Block
obj21.Name = "Door1"
obj21.Parent = obj1

-- 22 - Part
local obj22 = Instance.new("Part")
obj22.CFrame = CFrame.new(Vector3.new(17.8000011, 12.9000273, 143.100006)) * CFrame.Angles(-0, 0, -0)
obj22.TopSurface = Enum.SurfaceType.Smooth
obj22.BottomSurface = Enum.SurfaceType.Smooth
obj22.Material = Enum.Material.Wood
obj22.Size = Vector3.new(20, 0.200000003, 20)
obj22.Anchored = true
obj22.BrickColor = BrickColor.new("Black")
obj22.Friction = 0.30000001192093
obj22.Shape = Enum.PartType.Block
obj22.Parent = obj1

-- 23 - Wedge
local obj23 = Instance.new("WedgePart")
obj23.CFrame = CFrame.new(Vector3.new(8.2999897, 12.9074841, 152.600006)) * CFrame.Angles(-0, 0, -1.5707963705063)
obj23.TopSurface = Enum.SurfaceType.Smooth
obj23.Material = Enum.Material.Marble
obj23.Size = Vector3.new(0.200000003, 1, 1)
obj23.BottomSurface = Enum.SurfaceType.Smooth
obj23.Anchored = true
obj23.BrickColor = BrickColor.new("Maroon")
obj23.Friction = 0.30000001192093
obj23.Name = "Wedge"
obj23.Parent = obj1

-- 24 - Wedge
local obj24 = Instance.new("WedgePart")
obj24.CFrame = CFrame.new(Vector3.new(8.2988987, 12.9074841, 133.599976)) * CFrame.Angles(1.5707963705063, -1.5707963705063, 0)
obj24.TopSurface = Enum.SurfaceType.Smooth
obj24.Material = Enum.Material.Marble
obj24.Size = Vector3.new(0.200000003, 1, 1)
obj24.BottomSurface = Enum.SurfaceType.Smooth
obj24.Anchored = true
obj24.BrickColor = BrickColor.new("Maroon")
obj24.Friction = 0.30000001192093
obj24.Name = "Wedge"
obj24.Parent = obj1

-- 25 - Wedge
local obj25 = Instance.new("WedgePart")
obj25.CFrame = CFrame.new(Vector3.new(27.300005, 12.9074841, 133.599991)) * CFrame.Angles(-3.1415927410126, 0, 1.5707963705063)
obj25.TopSurface = Enum.SurfaceType.Smooth
obj25.Material = Enum.Material.Marble
obj25.Size = Vector3.new(0.200000003, 1, 1)
obj25.Anchored = true
obj25.BrickColor = BrickColor.new("Maroon")
obj25.Friction = 0.30000001192093
obj25.Name = "Wedge"
obj25.Parent = obj1

-- 26 - Part
local obj26 = Instance.new("Part")
obj26.CFrame = CFrame.new(Vector3.new(17.7938519, 12.9070272, 143.101028)) * CFrame.Angles(-0, -0.78539991378784, -0)
obj26.TopSurface = Enum.SurfaceType.Smooth
obj26.BottomSurface = Enum.SurfaceType.Smooth
obj26.Material = Enum.Material.Marble
obj26.Size = Vector3.new(1.40999985, 0.200000003, 26.8800011)
obj26.Anchored = true
obj26.BrickColor = BrickColor.new("Maroon")
obj26.Friction = 0.30000001192093
obj26.Shape = Enum.PartType.Block
obj26.Parent = obj1

-- 27 - Part
local obj27 = Instance.new("Part")
obj27.CFrame = CFrame.new(Vector3.new(17.7979107, 12.9070272, 143.093857)) * CFrame.Angles(-3.1415927410126, -0.78540050983429, -3.1415927410126)
obj27.TopSurface = Enum.SurfaceType.Smooth
obj27.BottomSurface = Enum.SurfaceType.Smooth
obj27.Material = Enum.Material.Marble
obj27.Size = Vector3.new(1.40999985, 0.200000003, 26.8800011)
obj27.Anchored = true
obj27.BrickColor = BrickColor.new("Maroon")
obj27.Friction = 0.30000001192093
obj27.Shape = Enum.PartType.Block
obj27.Parent = obj1

-- 28 - Door2
local obj28 = Instance.new("Part")
obj28.CFrame = CFrame.new(Vector3.new(7.60000038, 4.05002213, 141.550003)) * CFrame.Angles(-0, 0, -0)
obj28.Material = Enum.Material.Granite
obj28.Size = Vector3.new(0.200000003, 8.10000038, 3.10000014)
obj28.Anchored = true
obj28.BrickColor = BrickColor.new("Really black")
obj28.Friction = 0.30000001192093
obj28.Shape = Enum.PartType.Block
obj28.Name = "Door2"
obj28.Parent = obj1

-- 29 - Wedge
local obj29 = Instance.new("WedgePart")
obj29.CFrame = CFrame.new(Vector3.new(27.2989597, 12.9074841, 152.600037)) * CFrame.Angles(-1.5707963705063, 1.5707963705063, 0)
obj29.TopSurface = Enum.SurfaceType.Smooth
obj29.Material = Enum.Material.Marble
obj29.Size = Vector3.new(0.200000003, 1, 1)
obj29.Anchored = true
obj29.BrickColor = BrickColor.new("Maroon")
obj29.Friction = 0.30000001192093
obj29.Name = "Wedge"
obj29.Parent = obj1

-- 30 - Wedge
local obj30 = Instance.new("WedgePart")
obj30.CFrame = CFrame.new(Vector3.new(27.2918797, 12.8000755, 152.600006)) * CFrame.Angles(-0, 0, 1.5707963705063)
obj30.TopSurface = Enum.SurfaceType.Smooth
obj30.Material = Enum.Material.Marble
obj30.Size = Vector3.new(0.200000003, 1, 1)
obj30.BottomSurface = Enum.SurfaceType.Smooth
obj30.Anchored = true
obj30.BrickColor = BrickColor.new("Really black")
obj30.Friction = 0.30000001192093
obj30.Name = "Wedge"
obj30.Parent = obj1

-- 31 - Part
local obj31 = Instance.new("Part")
obj31.CFrame = CFrame.new(Vector3.new(17.7939548, 12.8005333, 143.093857)) * CFrame.Angles(-3.1415927410126, 0.78539752960205, -0)
obj31.TopSurface = Enum.SurfaceType.Smooth
obj31.BottomSurface = Enum.SurfaceType.Smooth
obj31.Material = Enum.Material.Marble
obj31.Size = Vector3.new(1.40999985, 0.200000003, 26.8800011)
obj31.Anchored = true
obj31.BrickColor = BrickColor.new("Really black")
obj31.Friction = 0.30000001192093
obj31.Shape = Enum.PartType.Block
obj31.Parent = obj1

-- 32 - Wedge
local obj32 = Instance.new("WedgePart")
obj32.CFrame = CFrame.new(Vector3.new(8.29290962, 12.8000755, 152.600037)) * CFrame.Angles(-1.5707963705063, -1.5707963705063, 0)
obj32.TopSurface = Enum.SurfaceType.Smooth
obj32.Material = Enum.Material.Marble
obj32.Size = Vector3.new(0.200000003, 1, 1)
obj32.Anchored = true
obj32.BrickColor = BrickColor.new("Really black")
obj32.Friction = 0.30000001192093
obj32.Name = "Wedge"
obj32.Parent = obj1

-- 33 - Part
local obj33 = Instance.new("Part")
obj33.CFrame = CFrame.new(Vector3.new(17.7918682, 12.8075333, 143.100006)) * CFrame.Angles(-0, 0, -3.1415927410126)
obj33.TopSurface = Enum.SurfaceType.Smooth
obj33.BottomSurface = Enum.SurfaceType.Smooth
obj33.Material = Enum.Material.Concrete
obj33.Size = Vector3.new(20, 0.200000003, 20)
obj33.Anchored = true
obj33.BrickColor = BrickColor.new("Maroon")
obj33.Friction = 0.30000001192093
obj33.Shape = Enum.PartType.Block
obj33.Parent = obj1

-- 34 - Wedge
local obj34 = Instance.new("WedgePart")
obj34.CFrame = CFrame.new(Vector3.new(8.2918644, 12.8000755, 133.599991)) * CFrame.Angles(-3.1415927410126, 0, -1.5707963705063)
obj34.TopSurface = Enum.SurfaceType.Smooth
obj34.Material = Enum.Material.Marble
obj34.Size = Vector3.new(0.200000003, 1, 1)
obj34.Anchored = true
obj34.BrickColor = BrickColor.new("Really black")
obj34.Friction = 0.30000001192093
obj34.Name = "Wedge"
obj34.Parent = obj1

-- 35 - Part
local obj35 = Instance.new("Part")
obj35.CFrame = CFrame.new(Vector3.new(17.7980175, 12.8005333, 143.101028)) * CFrame.Angles(-0, 0.78539896011353, -3.1415927410126)
obj35.TopSurface = Enum.SurfaceType.Smooth
obj35.BottomSurface = Enum.SurfaceType.Smooth
obj35.Material = Enum.Material.Marble
obj35.Size = Vector3.new(1.40999985, 0.200000003, 26.8800011)
obj35.Anchored = true
obj35.BrickColor = BrickColor.new("Really black")
obj35.Friction = 0.30000001192093
obj35.Shape = Enum.PartType.Block
obj35.Parent = obj1

-- 36 - Wedge
local obj36 = Instance.new("WedgePart")
obj36.CFrame = CFrame.new(Vector3.new(27.2929707, 12.8000755, 133.599976)) * CFrame.Angles(1.5707963705063, 1.5707963705063, 0)
obj36.TopSurface = Enum.SurfaceType.Smooth
obj36.Material = Enum.Material.Marble
obj36.Size = Vector3.new(0.200000003, 1, 1)
obj36.BottomSurface = Enum.SurfaceType.Smooth
obj36.Anchored = true
obj36.BrickColor = BrickColor.new("Really black")
obj36.Friction = 0.30000001192093
obj36.Name = "Wedge"
obj36.Parent = obj1

-- 2 - HANDS
local hand = Instance.new("Part")
hand.CFrame = CFrame.new(Vector3.new(13.4999914, 4.49999952, 143.299988)) * CFrame.Angles(-1.570796251297, 0.84960347414017, -1.5707963705063)
hand.FormFactor = Enum.FormFactor.Symmetric
hand.TopSurface = Enum.SurfaceType.Weld
hand.BottomSurface = Enum.SurfaceType.Weld
hand.Material = Enum.Material.Neon
hand.Size = Vector3.new(8, 9, 2)
hand.Anchored = true
hand.BrickColor = BrickColor.new("Really black")
hand.Friction = 0.30000001192093
hand.Shape = Enum.PartType.Block
hand.Name = "HANDS"
hand.CanCollide = false
hand.Parent = obj1

-- 3 - Mesh
local handmesh = Instance.new("SpecialMesh")
handmesh.MeshType = Enum.MeshType.FileMesh
handmesh.Scale = Vector3.new(2, 2, 2)
handmesh.MeshId = "http://www.roblox.com/asset/?id=32054761"
handmesh.Parent = hand

-- 4 - Realistic Stone Fist
local fist = Instance.new("Part")
fist.CFrame = CFrame.new(Vector3.new(3.50006008, 3.00004196, 143.000076)) * CFrame.Angles(-3.1415786743164, 1.8000484487857e-05, -1.5707963705063)
fist.Transparency = 1
fist.Material = Enum.Material.Neon
fist.Size = Vector3.new(6, 6, 6)
fist.Anchored = true
fist.CanCollide = false
fist.BrickColor = BrickColor.new("Really black")
fist.Friction = 0.30000001192093
fist.Shape = Enum.PartType.Block
fist.Name = "Realistic Stone Fist"
fist.Parent = obj1

-- 5 - Mesh
local fistmesh = Instance.new("SpecialMesh")
fistmesh.MeshType = Enum.MeshType.FileMesh
fistmesh.Scale = Vector3.new(15, 15, 15)
fistmesh.MeshId = "http://www.roblox.com/asset/?id=90718752"
fistmesh.Parent = fist


if plr.Character then
	function thatstuff()
	MoveSpawn(obj1,plr.Character)
	if plr.Character:FindFirstChild('Torso') and plr.Character:FindFirstChild('HumanoidRootPart') then
		plr.Character.Torso.Anchored = true
	elseif plr.Character:FindFirstChild('UpperTorso') and plr.Character:FindFirstChild('HumanoidRootPart') then
		plr.Character.UpperTorso.Anchored = true
	end
	local thing = Instance.new('Part',workspace)
	thing.Size = Vector3.new(0.2,0.2,0.2)
	thing.Material = Enum.Material.Neon
	thing.BrickColor = BrickColor.new('Really red')
	local plrpos = nil
	thing.Anchored=true
	thing.CFrame = CFrame.new(plr.Character.HumanoidRootPart.Position) + Vector3.new(15,0,0)
	if plr.Character:FindFirstChildOfClass('Humanoid') then
		plr.Character:FindFirstChildOfClass('Humanoid').Name = "No Escape."
		plrpos = Vector3.new(0,plr.Character:FindFirstChildOfClass('Humanoid').HipHeight+3,0)
	end
	if plrpos then
		thing.CFrame = thing.CFrame - plrpos
	end
	local flame = Instance.new('ParticleEmitter',thing)
	flame.Texture = 'rbxassetid://743419909'
	flame.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,0,0)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))})
	flame.LightEmission = 1
	flame.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5,0),NumberSequenceKeypoint.new(1,0,0)})
	flame.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.137,0,0),NumberSequenceKeypoint.new(0.809,0.256,0),NumberSequenceKeypoint.new(1,1,0)})
	flame.Lifetime = NumberRange.new(0.5,1)
	flame.Rate = 10000
	flame.VelocityInheritance = 1
	flame.VelocitySpread = 15
	flame.Speed = NumberRange.new(10)
	for i=1,120 do
		if thing then
			thing.Size = thing.Size+Vector3.new(0.2,0,0.2)
			thing.CFrame = CFrame.new(plr.Character.HumanoidRootPart.Position) + Vector3.new(15,0,0)
			if plr.Character:FindFirstChildOfClass('Humanoid') then
				plrpos = Vector3.new(0,plr.Character:FindFirstChildOfClass('Humanoid').HipHeight+3,0)
			end
			if plrpos then
				thing.CFrame = thing.CFrame + Vector3.new(0,0.1,0) - plrpos
			end
			
			wait()
		end
	end
	for i=1,51 do
		MoveBy(obj1,Vector3.new(0,0.4,0))
		wait()
	end
	local sound = Instance.new('Sound',obj21)
	sound.SoundId = 'rbxassetid://138169063'
	sound.Volume = 1
	sound:Play()
	wait(1)
	for i=1,50 do
		MovePartBy(obj21,Vector3.new(0,0,0.1))
		MovePartBy(obj28,Vector3.new(0,0,-0.1))
		wait()
	end
	wait(0.5)
	for i=1,100 do
		MovePartBy(hand,Vector3.new(-0.1,0,0))
		wait()
	end
	hand.Transparency = 1
	fist.Transparency = 0
	wait(0.5)
	for i=1,75 do
		MovePartBy(fist,Vector3.new(0.2,0,0))
		if plr.Character:FindFirstChild('Torso') then
			MovePartBy(plr.Character.Torso,Vector3.new(0.2,0,0))
		end
		wait()
	end
	local sound = Instance.new('Sound',obj21)
	sound.SoundId = 'rbxassetid://178555466'
	sound.Volume = 1
	sound:Play()
	for i=1,50 do
		MovePartBy(obj21,Vector3.new(0,0,-0.1))
		MovePartBy(obj28,Vector3.new(0,0,0.1))
		wait()
	end
	for i=1,10 do
		fist.Transparency = i/10
		wait()
	end
	wait(1)
	for i=1,51 do
		MoveBy(obj1,Vector3.new(0,-0.4,0))
		if plr.Character:FindFirstChild('Torso') then
			MovePartBy(plr.Character.Torso,Vector3.new(0,-0.4,0))
		end
		wait()
	end
	ToHell(obj1)
	if plr.Character:FindFirstChild('Torso') then
		plr.Character.Torso.CFrame = plr.Character.Torso.CFrame + Vector3.new(5000,5000,5000)
		plr.Character.Torso.Anchored = false
	end
	local cf = thing.CFrame
	for i=1,120 do
		if thing then
			thing.Size = thing.Size-Vector3.new(0.2,0,0.2)
			thing.CFrame = cf
			wait()
		end
	end
	if thing then
		thing:Destroy()
	end
	if plr.Character:FindFirstChildOfClass('Humanoid') then
		plr.Character:FindFirstChildOfClass('Humanoid').JumpPower = 0
	end
	for i=1,100 do
		MovePartBy(obj33,Vector3.new(0,-0.1,0))
		wait()
	end
	if plr.Character:FindFirstChildOfClass('Humanoid') then
		plr.Character:FindFirstChildOfClass('Humanoid').Health = 0
	end
	for i=1,15 do
		MovePartBy(obj33,Vector3.new(0,-0.1,0))
		wait()
	end
	wait(10)
	if obj1 then
		obj1:Destroy()
	end
	end
	local success, message = pcall(thatstuff)
	if success == false then
    		print("An error occurred: "..message..". Removing the elevator for this player.")
		obj1:Destroy()
	end
end


end)
coru()
end--33
end
TextBox.Text = "Enter Target's Name (Can be Shortened)"
end)