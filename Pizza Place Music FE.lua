-- Objects

local hello = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local IDBox = Instance.new("TextBox")
local ChangeB = Instance.new("TextButton")
local AnimationToggle = Instance.new("TextButton")
local plr = game:GetService("Players").LocalPlayer


-- Properties

hello.Archivable = false
hello.Name = "hello"
hello.Parent = game:GetService("CoreGui")
hello.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = hello
Main.Active = true
Main.BackgroundColor3 = Color3.new(0, 0, 0)
Main.BorderColor3 = Color3.new(0, 1, 0)
Main.Draggable = true
Main.Position = UDim2.new(0.595648885, 0, 0.546666682, 0)
Main.Size = UDim2.new(0, 467, 0, 251)

Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.new(0, 0, 0)
Title.BorderColor3 = Color3.new(0, 1, 0)
Title.Size = UDim2.new(0, 467, 0, 50)
Title.Font = Enum.Font.SciFi
Title.FontSize = Enum.FontSize.Size14
Title.Text = "Work At A Pizza Place Sound GUI"
Title.TextColor3 = Color3.new(0, 1, 0)
Title.TextScaled = true
Title.TextSize = 14
Title.TextWrapped = true

IDBox.Name = "IDBox"
IDBox.Parent = Main
IDBox.BackgroundColor3 = Color3.new(0, 0, 0)
IDBox.BorderColor3 = Color3.new(0, 1, 0)
IDBox.Position = UDim2.new(0.285867244, 0, 0.314741045, 0)
IDBox.Size = UDim2.new(0, 200, 0, 50)
IDBox.Font = Enum.Font.SciFi
IDBox.FontSize = Enum.FontSize.Size14
IDBox.Text = "SoundID"
IDBox.TextColor3 = Color3.new(0, 1, 0)
IDBox.TextScaled = true
IDBox.TextSize = 14
IDBox.TextWrapped = true

ChangeB.Name = "ChangeB"
ChangeB.Parent = Main
ChangeB.BackgroundColor3 = Color3.new(0, 0, 0)
ChangeB.BorderColor3 = Color3.new(0, 1, 0)
ChangeB.Position = UDim2.new(0.286937892, 0, 0.605577707, 0)
ChangeB.Size = UDim2.new(0, 200, 0, 50)
ChangeB.Font = Enum.Font.SciFi
ChangeB.FontSize = Enum.FontSize.Size14
ChangeB.Text = "Change Sounds"
ChangeB.TextColor3 = Color3.new(0, 1, 0)
ChangeB.TextScaled = true
ChangeB.TextSize = 14
ChangeB.TextWrapped = true

AnimationToggle.Name = "AnimationToggle"
AnimationToggle.Parent = Main
AnimationToggle.BackgroundColor3 = Color3.new(0, 0, 0)
AnimationToggle.BorderColor3 = Color3.new(0, 1, 0)
AnimationToggle.Position = UDim2.new(0, 0, 0.828685284, 0)
AnimationToggle.Size = UDim2.new(0, 87, 0, 43)
AnimationToggle.Font = Enum.Font.SciFi
AnimationToggle.FontSize = Enum.FontSize.Size14
AnimationToggle.Text = "Disable Animations"
AnimationToggle.TextColor3 = Color3.new(1, 0, 0)
AnimationToggle.TextScaled = true
AnimationToggle.TextSize = 14
AnimationToggle.TextWrapped = true

local function play()
	local id = tostring(IDBox.Text)
	A_1 = 
	{
		["Sleep"] = 
	{
		["MovementCancel"] = false, 
		["SoundLooped"] = true, 
		["R15"] = 868398961, 
		["R6"] = 868450390, 
		["SoundId"] = id, 
		["Priority"] = Enum.AnimationPriority.Action, 
		["FaceId"] = 66329905, 
		["Volume"] = 10
	}, 
		["Bye"] = 
	{
		["SoundId"] = id, 
		["Priority"] = Enum.AnimationPriority.Action, 
		["R15"] = 867286113, 
		["R6"] = 154179312
	}, 
		["Point"] = 
	{
		["SoundId"] = id, 
		["Priority"] = Enum.AnimationPriority.Action, 
		["R15"] = 867172216, 
		["R6"] = 154188723
	}, 
		["Dance2"] = 
	{
		["MovementCancel"] = true, 
		["Priority"] = Enum.AnimationPriority.Action, 
		["R15"] = 507776043, 
		["R6"] = 182436842
	}, 
		["Glee"] = 
	{
		["R15"] = 867266586, 
		["R6"] = 154159852, 
		["SoundId"] = id, 
		["Priority"] = Enum.AnimationPriority.Action, 
		["FaceId"] = 27802003
	}, 
		["Twist"] = 
	{
		["Priority"] = Enum.AnimationPriority.Action, 
		["R15"] = 867708782, 
		["MovementCancel"] = true
	}, 
		["ToolHold"] = 
	{
		["Priority"] = Enum.AnimationPriority.Action, 
		["R15"] = 507768375, 
		["R6"] = 182393478
	}, 
		["SitSeat"] = 
	{
		["Weight"] = 0.99, 
		["Priority"] = Enum.AnimationPriority.Movement, 
		["R15"] = 507768133, 
		["R6"] = 178130996
	}, 
		["Shocked"] = 
	{
		["R15"] = 1602091152, 
		["R6"] = 1620310558, 
		["SoundId"] = id, 
		["Priority"] = Enum.AnimationPriority.Action, 
		["FaceId"] = 1601874588
	}, 
		["Laugh"] = 
	{
		["R15"] = 867167112, 
		["R6"] = 154166518, 
		["SoundId"] = id, 
		["Priority"] = Enum.AnimationPriority.Action, 
		["FaceId"] = 32063242
	}, 
		["Idle"] = 
	{
		["Weight"] = 0.4, 
		["Priority"] = Enum.AnimationPriority.Movement, 
		["R15"] = 507766388, 
		["R6"] = 180435571
	}, 
		["Jump"] = 
	{
		["Weight"] = 0.7, 
		["Priority"] = Enum.AnimationPriority.Movement, 
		["R15"] = 507765000, 
		["R6"] = 125750702
	}, 
		["Sad"] = 
	{
		["R15"] = 867309991, 
		["R6"] = 153230853, 
		["SoundId"] = id, 
		["Priority"] = Enum.AnimationPriority.Action, 
		["FaceId"] = 76690153
	}, 
		["Run"] = 
	{
		["Weight"] = 1, 
		["Priority"] = Enum.AnimationPriority.Movement, 
		["R15"] = 507767714, 
		["R6"] = 180426354
	}, 
		["Swim"] = 
	{
		["Priority"] = Enum.AnimationPriority.Movement, 
		["R15"] = 507784897, 
		["R6"] = 865902879
	}, 
		["SwimIdle"] = 
	{
		["Weight"] = 0.5, 
		["Priority"] = Enum.AnimationPriority.Movement, 
		["R15"] = 507785072, 
		["R6"] = 865918502
	}, 
		["ConfusionOrb"] = 
	{
		["Priority"] = Enum.AnimationPriority.Action, 
		["R15"] = 866541157, 
		["R6"] = 866550588
	}, 
		["Amazed"] = 
	{
		["R15"] = 154174346, 
		["R6"] = 154174346, 
		["SoundId"] = id, 
		["Priority"] = Enum.AnimationPriority.Action, 
		["FaceId"] = 45528113
	}, 
		["Walk"] = 
	{
		["Weight"] = 0.6, 
		["Priority"] = Enum.AnimationPriority.Movement, 
		["R15"] = 507777826, 
		["R6"] = 180426354
	}, 
		["Swing"] = 
	{
		["Priority"] = Enum.AnimationPriority.Action, 
		["R15"] = 867712012, 
		["MovementCancel"] = true
	}, 
		["Shuffle"] = 
	{
		["Priority"] = Enum.AnimationPriority.Action, 
		["R15"] = 867706152, 
		["MovementCancel"] = true
	}, 
		["Climb"] = 
	{
		["Priority"] = Enum.AnimationPriority.Movement, 
		["R15"] = 507765644, 
		["R6"] = 180436334
	}, 
		["Cheer"] = 
	{
		["R15"] = 507770677, 
		["R6"] = 129423030, 
		["SoundId"] = id, 
		["Priority"] = Enum.AnimationPriority.Action, 
		["FaceId"] = 27802003
	}, 
		["Dance3"] = 
	{
		["MovementCancel"] = true, 
		["Priority"] = Enum.AnimationPriority.Action, 
		["R15"] = 507777268, 
		["R6"] = 182436935
	}, 
		["Think"] = 
	{
		["R15"] = 867186419, 
		["R6"] = 154185274, 
		["SoundId"] = id, 
		["Priority"] = Enum.AnimationPriority.Action, 
		["FaceId"] = 29716203
	}, 
		["Evil"] = 
	{
		["R15"] = 1601646327, 
		["R6"] = 1620296629, 
		["SoundId"] = id, 
		["Priority"] = Enum.AnimationPriority.Action, 
		["FaceId"] = 1604383339
	}, 
		["Sit"] = 
	{
		["MovementCancel"] = true, 
		["Priority"] = Enum.AnimationPriority.Action, 
		["R15"] = 868506496, 
		["R6"] = 868508890
	}, 
		["Fall"] = 
	{
		["Weight"] = 0.7, 
		["Priority"] = Enum.AnimationPriority.Movement, 
		["R15"] = 507767968, 
		["R6"] = 180436148
	}, 
		["ThrowCoin"] = 
	{
		["Priority"] = Enum.AnimationPriority.Action, 
		["R15"] = 867194400, 
		["R6"] = 156055482
	}, 
		["Easy"] = 
	{
		["Priority"] = Enum.AnimationPriority.Action, 
		["R15"] = 867707598, 
		["MovementCancel"] = true
	}, 
		["Hi"] = 
	{
		["SoundId"] = id, 
		["Priority"] = Enum.AnimationPriority.Action, 
		["R15"] = 867286113, 
		["R6"] = 154179312
	}, 
		["Whistle"] = 
	{
		["R15"] = 507766388, 
		["R6"] = 180435571, 
		["Priority"] = Enum.AnimationPriority.Action, 
		["FaceId"] = 22877631, 
		["Weight"] = 0.4
	}, 
		["SleepSeat"] = 
	{
		["MovementCancel"] = true, 
		["SoundLooped"] = true, 
		["R15"] = 869454065, 
		["R6"] = 869468579, 
		["SoundId"] = id, 
		["Priority"] = Enum.AnimationPriority.Action, 
		["FaceId"] = 66329905, 
		["Volume"] = 0.3
	}, 
		["Marashin"] = 
	{
		["Priority"] = Enum.AnimationPriority.Action, 
		["R15"] = 867685946, 
		["MovementCancel"] = true
	}, 
		["Scared"] = 
	{
		["R15"] = 867226524, 
		["R6"] = 154170755, 
		["SoundId"] = id, 
		["Priority"] = Enum.AnimationPriority.Action, 
		["FaceId"] = 47206380
	}, 
		["Clap"] = 
	{
		["SoundId"] = id, 
		["Priority"] = Enum.AnimationPriority.Action, 
		["R15"] = 868638275, 
		["R6"] = 868730451
	}, 
		["HipHop2"] = 
	{
		["Priority"] = Enum.AnimationPriority.Action, 
		["R15"] = 867704764, 
		["MovementCancel"] = true
	}, 
		["Die"] = 
	{
		["R15"] = 1604492808, 
		["R6"] = 1620270981, 
		["SoundId"] = id, 
		["Priority"] = Enum.AnimationPriority.Action, 
		["FaceId"] = 1604616024, 
		["MovementCancel"] = true
	}, 
		["Disgust"] = 
	{
		["R15"] = 1598209877, 
		["R6"] = 1620305485, 
		["SoundId"] = id, 
		["Priority"] = Enum.AnimationPriority.Action, 
		["FaceId"] = 1598203828
	}, 
		["Wave"] = 
	{
		["Priority"] = Enum.AnimationPriority.Action, 
		["R15"] = 507770239, 
		["R6"] = 128777973
	}, 
		["Flair"] = 
	{
		["Priority"] = Enum.AnimationPriority.Action, 
		["R15"] = 867701010, 
		["MovementCancel"] = true
	}, 
		["Confused"] = 
	{
		["R15"] = 867207299, 
		["R6"] = 154183110, 
		["SoundId"] = id, 
		["Priority"] = Enum.AnimationPriority.Action, 
		["FaceId"] = 120250454
	}, 
		["Angry"] = 
	{
		["R15"] = 867275109, 
		["R6"] = 154168543, 
		["SoundId"] = id, 
		["Priority"] = Enum.AnimationPriority.Action, 
		["FaceId"] = 14020216
	}, 
		["HipHop"] = 
	{
		["Priority"] = Enum.AnimationPriority.Action, 
		["R15"] = 867703959, 
		["MovementCancel"] = true
	}, 
		["Dance"] = 
	{
		["MovementCancel"] = true, 
		["Priority"] = Enum.AnimationPriority.Action, 
		["R15"] = 507771019, 
		["R6"] = 182435998
	}, 
		["Driving"] = 
	{
		["Priority"] = Enum.AnimationPriority.Movement, 
		["R15"] = 866020346, 
		["R6"] = 178130996
	}
	}
	plr.Character.Humanoid.Health = 0
end

plr.CharacterAdded:Connect(function()
	local Event = game:GetService("Workspace").Main.LoadSoundsIntoHead
	Event:FireServer(A_1)
	wait(.05)
	print("Done!")
end)

ChangeB.MouseButton1Click:Connect(function()
	play()
end)

AnimationToggle.MouseButton1Click:Connect(function()
	plr.Character.CustomAnimation.Disabled = true
end)