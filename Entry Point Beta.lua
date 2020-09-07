---// Made by Phoenixx yuh yuh
---// UI lib is SHIT btw but it was just fast and easy button making.

local Env = {}

local mouse = game.Players.LocalPlayer:GetMouse()
local gui = game.CoreGui

local MainGui = Instance.new("ScreenGui", gui)

local Buttons = {}
local Registered = {}
local Activated = {}

local ESPNPC = false

function GetTemplate()
	local InputFrame = Instance.new("TextButton")
	local Outline = Instance.new("Frame")
	local Outline2 = Instance.new("Frame")
	local Shadows = Instance.new("Folder", InputFrame)
	local AmbientShadow = Instance.new("ImageLabel")
	local PenumbraShadow = Instance.new("ImageLabel")
	local UmbraShadow = Instance.new("ImageLabel")
	
	InputFrame.Name = "InputFrame"
	InputFrame.Active = false
	InputFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	InputFrame.BackgroundColor3 = Color3.new(0.192157, 0.192157, 0.192157)
	InputFrame.BackgroundTransparency = 0.60000002384186
	InputFrame.BorderColor3 = Color3.new(0.192157, 0.192157, 0.192157)
	InputFrame.BorderSizePixel = 0
	InputFrame.Position = UDim2.new(0.952, 0, 0.2 + (0.075 * (#Buttons + 1)), 0)
	InputFrame.Selectable = false
	InputFrame.Size = UDim2.new(0.0960000008, 0, 0.0489999987, 0)
	InputFrame.AutoButtonColor = false
	InputFrame.Font = Enum.Font.Code
	InputFrame.Text = "Sample"
	InputFrame.TextColor3 = Color3.new(1, 1, 1)
	InputFrame.TextSize = 20
	InputFrame.TextWrapped = true
	
	Outline.Name = "Outline"
	Outline.Parent = InputFrame
	Outline.AnchorPoint = Vector2.new(0.5, 0.5)
	Outline.BackgroundColor3 = Color3.new(0.827451, 0.827451, 0.827451)
	Outline.BorderSizePixel = 0
	Outline.Position = UDim2.new(0.5, 0, 0.975, 0)
	Outline.Size = UDim2.new(1, 0, 0.07, 0)
	Outline.ZIndex = 2
	
	Outline2.Name = "Outline2"
	Outline2.Parent = Outline
	Outline2.ZIndex = 3
	Outline2.AnchorPoint = Vector2.new(0.5, 0.5)
	Outline2.BackgroundColor3 = Color3.fromRGB(161, 0, 35)
	Outline2.BorderSizePixel = 0
	Outline2.Position = UDim2.new(0.5, 0, 0.5, 0)
	Outline2.Size = UDim2.new(0, 0, 1, 0)
	
	AmbientShadow.Name = "AmbientShadow"
	AmbientShadow.Parent = Shadows
	AmbientShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	AmbientShadow.BackgroundTransparency = 1
	AmbientShadow.Position = UDim2.new(0.5, 0, 0.5, 3)
	AmbientShadow.Size = UDim2.new(1, 5, 1, 5)
	AmbientShadow.ZIndex = 0
	AmbientShadow.Image = "rbxassetid://1316045217"
	AmbientShadow.ImageColor3 = Color3.new(0, 0, 0)
	AmbientShadow.ImageTransparency = 0.80000001192093
	AmbientShadow.ScaleType = Enum.ScaleType.Slice
	AmbientShadow.SliceCenter = Rect.new(10, 10, 118, 118)
	
	PenumbraShadow.Name = "PenumbraShadow"
	PenumbraShadow.Parent = Shadows
	PenumbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	PenumbraShadow.BackgroundTransparency = 1
	PenumbraShadow.Position = UDim2.new(0.5, 0, 0.5, 1)
	PenumbraShadow.Size = UDim2.new(1, 18, 1, 18)
	PenumbraShadow.ZIndex = 0
	PenumbraShadow.Image = "rbxassetid://1316045217"
	PenumbraShadow.ImageColor3 = Color3.new(0, 0, 0)
	PenumbraShadow.ImageTransparency = 0.87999999523163
	PenumbraShadow.ScaleType = Enum.ScaleType.Slice
	PenumbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)
	
	UmbraShadow.Name = "UmbraShadow"
	UmbraShadow.Parent = Shadows
	UmbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	UmbraShadow.BackgroundTransparency = 1
	UmbraShadow.Position = UDim2.new(0.5, 0, 0.5, 6)
	UmbraShadow.Size = UDim2.new(1, 10, 1, 10)
	UmbraShadow.ZIndex = 0
	UmbraShadow.Image = "rbxassetid://1316045217"
	UmbraShadow.ImageColor3 = Color3.new(0, 0, 0)
	UmbraShadow.ImageTransparency = 0.86000001430511
	UmbraShadow.ScaleType = Enum.ScaleType.Slice
	UmbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)
	
	return InputFrame
end

function GetNotifTemplate()
	local InputFrame = Instance.new("TextLabel")
	local Outline = Instance.new("Frame")
	local Outline2 = Instance.new("Frame")
	local Shadows = Instance.new("Folder", InputFrame)
	local AmbientShadow = Instance.new("ImageLabel")
	local PenumbraShadow = Instance.new("ImageLabel")
	local UmbraShadow = Instance.new("ImageLabel")
	
	InputFrame.Name = "InputFrame"
	InputFrame.Active = false
	InputFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	InputFrame.BackgroundColor3 = Color3.new(0.192157, 0.192157, 0.192157)
	InputFrame.BackgroundTransparency = 0
	InputFrame.BorderColor3 = Color3.new(0.192157, 0.192157, 0.192157)
	InputFrame.BorderSizePixel = 0
	InputFrame.Position = UDim2.new(0.5, 0, 1.1, 0)
	InputFrame.Selectable = false
	InputFrame.Size = UDim2.new(0.3, 0, 0.05, 0)
	InputFrame.Font = Enum.Font.Code
	InputFrame.Text = "Sample"
	InputFrame.TextColor3 = Color3.new(1, 1, 1)
	InputFrame.TextSize = 20
	InputFrame.TextWrapped = true
	
	Outline.Name = "Outline"
	Outline.Parent = InputFrame
	Outline.AnchorPoint = Vector2.new(0.5, 0.5)
	Outline.BackgroundColor3 = Color3.new(0.827451, 0.827451, 0.827451)
	Outline.BorderSizePixel = 0
	Outline.Position = UDim2.new(0.5, 0, 0.975, 0)
	Outline.Size = UDim2.new(1, 0, 0.07, 0)
	Outline.ZIndex = 2
	
	Outline2.Name = "Outline2"
	Outline2.Parent = Outline
	Outline2.ZIndex = 3
	Outline2.AnchorPoint = Vector2.new(0.5, 0.5)
	Outline2.BackgroundColor3 = Color3.fromRGB(161, 0, 35)
	Outline2.BorderSizePixel = 0
	Outline2.Position = UDim2.new(0.5, 0, 0.5, 0)
	Outline2.Size = UDim2.new(0, 0, 1, 0)
	
	AmbientShadow.Name = "AmbientShadow"
	AmbientShadow.Parent = Shadows
	AmbientShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	AmbientShadow.BackgroundTransparency = 1
	AmbientShadow.Position = UDim2.new(0.5, 0, 0.5, 3)
	AmbientShadow.Size = UDim2.new(1, 5, 1, 5)
	AmbientShadow.ZIndex = 0
	AmbientShadow.Image = "rbxassetid://1316045217"
	AmbientShadow.ImageColor3 = Color3.new(0, 0, 0)
	AmbientShadow.ImageTransparency = 0.80000001192093
	AmbientShadow.ScaleType = Enum.ScaleType.Slice
	AmbientShadow.SliceCenter = Rect.new(10, 10, 118, 118)
	
	PenumbraShadow.Name = "PenumbraShadow"
	PenumbraShadow.Parent = Shadows
	PenumbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	PenumbraShadow.BackgroundTransparency = 1
	PenumbraShadow.Position = UDim2.new(0.5, 0, 0.5, 1)
	PenumbraShadow.Size = UDim2.new(1, 18, 1, 18)
	PenumbraShadow.ZIndex = 0
	PenumbraShadow.Image = "rbxassetid://1316045217"
	PenumbraShadow.ImageColor3 = Color3.new(0, 0, 0)
	PenumbraShadow.ImageTransparency = 0.87999999523163
	PenumbraShadow.ScaleType = Enum.ScaleType.Slice
	PenumbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)
	
	UmbraShadow.Name = "UmbraShadow"
	UmbraShadow.Parent = Shadows
	UmbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	UmbraShadow.BackgroundTransparency = 1
	UmbraShadow.Position = UDim2.new(0.5, 0, 0.5, 6)
	UmbraShadow.Size = UDim2.new(1, 10, 1, 10)
	UmbraShadow.ZIndex = 0
	UmbraShadow.Image = "rbxassetid://1316045217"
	UmbraShadow.ImageColor3 = Color3.new(0, 0, 0)
	UmbraShadow.ImageTransparency = 0.86000001430511
	UmbraShadow.ScaleType = Enum.ScaleType.Slice
	UmbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)
	
	return InputFrame
end

function makeImage()
	local id = 'rbxassetid://1084963972'
	local id2 = 'rbxassetid://867619398'
	
	local randoms = {
		0,
		90,
		180,
		-90
	}
	
	local image = Instance.new("ImageLabel", MainGui)
	image.Size = UDim2.new(0, 20, 0, 20)
	image.AnchorPoint = Vector2.new(0.5, 0.5)
	image.Position = UDim2.new(0, mouse.X, 0, mouse.Y)
	image.Image = id
	image.Rotation = randoms[math.random(#randoms)]
	image.BackgroundTransparency = 1
	image.ImageColor3 = Color3.fromRGB(255, 200, 0)
	
	local image2 = image:Clone()
	image2.Parent = image.Parent
	image2.Image = id2
	
	local tween = game:GetService("TweenService"):Create(image, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
		ImageTransparency = 1
	})
	tween:Play()
	
	local tween2 = game:GetService("TweenService"):Create(image2, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
		ImageTransparency = 1
	})
	tween2:Play()
	
	image:TweenSize(UDim2.new(0, 100, 0, 100), "Out", "Quad", .3, true)
	image2:TweenSize(UDim2.new(0, 100, 0, 100), "Out", "Quad", .3, true)
end

function Env:RegisterButton(button, canClose, toggle, func)
	for i, v in pairs(Registered) do
		if v == button then
			return "Already Registered!"
		end
	end
	
	local origPos = button.Position
	local origSize = button.Size
	
	button.MouseEnter:Connect(function()
		if not Activated[button] then
			button:TweenSizeAndPosition(origSize + UDim2.new(0.034, 0, 0, 0), origPos + UDim2.new(-0.017, 0, 0, 0), "Out", "Quad", .5, true)
			button.Outline.Outline2:TweenSizeAndPosition(UDim2.new(1, 0, 1, 0), UDim2.new(0.5, 0, 0.5, 0), "Out", "Quad", .5, true)
			
			local tween = game:GetService("TweenService"):Create(button, TweenInfo.new(.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				BackgroundTransparency = 0.3
			})
			tween:Play()
		end
	end)
	
	button.MouseLeave:Connect(function()
		if not Activated[button] then
			button:TweenSizeAndPosition(origSize, origPos, "Out", "Quad", .5, true)
			button.Outline.Outline2:TweenSizeAndPosition(UDim2.new(0, 0, 1, 0), UDim2.new(0.5, 0, 0.5, 0), "Out", "Quad", .5, true)
			
			local tween = game:GetService("TweenService"):Create(button, TweenInfo.new(.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				BackgroundTransparency = 0.6
			})
			tween:Play()
		end
	end)
	
	button.MouseButton1Down:Connect(function()
		makeImage()
		
		if Activated[button] and canClose then
			Activated[button] = nil
			button:TweenSizeAndPosition(origSize, origPos, "Out", "Quad", .5, true)
			button.Outline.Outline2:TweenSizeAndPosition(UDim2.new(0, 0, 1, 0), UDim2.new(0.5, 0, 0.5, 0), "Out", "Quad", .5, true)
			
			local tween = game:GetService("TweenService"):Create(button, TweenInfo.new(.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				BackgroundTransparency = 0.6
			})
			tween:Play()
			
			local ctween = game:GetService("TweenService"):Create(button.Outline.Outline2, TweenInfo.new(.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				BackgroundColor3 = Color3.fromRGB(161, 0, 35)
			})
			ctween:Play()
		else
			if toggle then
				Activated[button] = true
				button:TweenSizeAndPosition(origSize + UDim2.new(0.034 * 2, 0, 0, 0), origPos + UDim2.new(-0.017 * 2, 0, 0, 0), "Out", "Quad", .5, true)
				button.Outline.Outline2:TweenSizeAndPosition(UDim2.new(1, 0, 1, 0), UDim2.new(0.5, 0, 0.5, 0), "Out", "Quad", .5, true)
				
				local tween = game:GetService("TweenService"):Create(button, TweenInfo.new(.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundTransparency = 0
				})
				tween:Play()
				
				local ctween = game:GetService("TweenService"):Create(button.Outline.Outline2, TweenInfo.new(.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundColor3 = Color3.fromRGB(0, 189, 129)
				})
				ctween:Play()
			end
			
			if not toggle then
				Activated[button] = nil
				
				button:TweenSizeAndPosition(origSize, origPos, "Out", "Quad", .5, true)
				button.Outline.Outline2:TweenSizeAndPosition(UDim2.new(0, 0, 1, 0), UDim2.new(0.5, 0, 0.5, 0), "Out", "Quad", .5, true)
				
				local tween = game:GetService("TweenService"):Create(button, TweenInfo.new(.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundTransparency = 0.6
				})
				tween:Play()
				
				local ctween = game:GetService("TweenService"):Create(button.Outline.Outline2, TweenInfo.new(.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundColor3 = Color3.fromRGB(161, 0, 35)
				})
				ctween:Play()
			end
			
		end
		func()
		
	end)
end

function Env:MakeButton(text)
	local button = GetTemplate()
	button.Parent = MainGui
	button.Text = text
	
	table.insert(Buttons, button)
	return button
end

function Env:NotifyTweenUp(frame, Time)
	frame:TweenPosition(UDim2.new(0.5, 0, 0.6, 0), "Out", "Quad", Time, true)
end

function Env:NotifyTweenDown(frame, Time)
	frame:TweenPosition(UDim2.new(0.5, 0, 1.1, 0), "Out", "Quad", Time, true)
end

function Env:Notify(text, Duration)
	local frame = GetNotifTemplate()
	frame.Text = text
	frame.Parent = MainGui
	
	if type(Duration) == "boolean" and Duration == true then
		Duration = 5
	end
	
	Env:NotifyTweenUp(frame, 0.7)
	
	if type(Duration) == 'number' then
		spawn(function()
			wait(Duration)
			Env:NotifyTweenDown(frame, 0.7)
			wait(1)
			frame:Destroy()
		end)
	end
	
	return frame
end


-----/// Game values

local Actors = game:GetService("Workspace").Level.Actors

function KillNPCs()
	for i, v in pairs(Actors:GetChildren()) do wait()
		local Hum = v.Character.Humanoid
		local idk1 = 45
		local idk2 = 15
		local head = v.Character.Head
		local pos1 = v.Character.Head.Position
		local pos2 = v.Character.Head.Position
		local idk3 = 0
		local Event = game:GetService("ReplicatedStorage").Weapons.Triggers.PlayerHit
		Event:FireServer(Hum, idk1, idk2, head, pos1, pos2, idk3)
	end
	
	Actors.ChildAdded:Connect(function(v) wait()
		local Hum = v.Character:WaitForChild("Humanoid")
		local idk1 = 45
		local idk2 = 15
		local head = v.Character.Head
		local pos1 = v.Character.Head.Position
		local pos2 = v.Character.Head.Position
		local idk3 = 0
		local Event = game:GetService("ReplicatedStorage").Weapons.Triggers.PlayerHit
		Event:FireServer(Hum, idk1, idk2, head, pos1, pos2, idk3)
	end)
end

function AutoFarmStart()
	if game.PlaceId == 2215221144 then
		local t1 = Env:Notify("Grab the Diamond Drill", false)
		repeat
			wait()
		until game:GetService("Players").LocalPlayer.Status.Tools:FindFirstChild("Bag") and game:GetService("Players").LocalPlayer.Status.Tools:FindFirstChild("Bag"):FindFirstChild("DiamondDrill")
		Env:NotifyTweenDown(t1, 0.7)
		local VaultWire = workspace.Level.Geometry.Vault.Sensor.Wire
		local VaultWireColor = VaultWire.BrickColor
		
		local function Startup()
			for i, v in pairs(workspace.Level.Geometry:GetChildren()) do
				wait()
				if v.Name == "PowerBox" and v.Wire.BrickColor == VaultWireColor then
					
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Door.CFrame
					wait(.5)
					for i = 1, 3 do
						wait(.2)
						pcall(function()
							local A_1 = v.Interact
							local A_2 = v
							local Event = game:GetService("ReplicatedStorage").Interact.StartInteraction
							Event:FireServer(A_1, A_2)
		
							local A_1 = "Interaction"
							local A_2 = true
							local Event = game:GetService("Workspace").Level.Players.Player.AnimateServer.ChangeInput
							Event:FireServer(A_1, A_2)
		
							local A_1 = v.Interact
							local Event = game:GetService("ReplicatedStorage").Interact.ReserveUse
							Event:InvokeServer(A_1)
		
							local A_1 = v.Interact
							local A_2 = 100
							local Event = game:GetService("ReplicatedStorage").Interact.UpdateInteraction
							Event:InvokeServer(A_1, A_2)
		
							local A_1 = "Interaction"
							local A_2 = false
							local Event = game:GetService("Workspace").Level.Players.Player.AnimateServer.ChangeInput
							Event:FireServer(A_1, A_2)
		
							local A_1 = v.Interact
							local Event = game:GetService("ReplicatedStorage").Interact.TriggerInteraction
							Event:InvokeServer(A_1)
						end)
					end
				end
			end
		
			game.Players.LocalPlayer.Character:MoveTo(workspace.Level.Geometry.Vault.Location.Position)
		
			wait(.5)
		
			for i = 1, 3 do
				wait(.2)
				pcall(function()
					local A_1 = game:GetService("Players").LocalPlayer.Status.Tools.Bag
					local Event = game:GetService("ReplicatedStorage").Items.PickupBag
					Event:InvokeServer(A_1)
		
					local A_1 = "Interaction"
					local A_2 = false
					local Event = game:GetService("Workspace").Level.Players.Player.AnimateServer.ChangeInput
					Event:FireServer(A_1, A_2)
		
		
					local A_1 = game:GetService("Workspace").Level.Geometry.Vault.VaultDoor.Interact
					local A_2 = game:GetService("Workspace").Level.Geometry.Vault.VaultDoor
					local Event = game:GetService("ReplicatedStorage").Interact.StartInteraction
					Event:FireServer(A_1, A_2)
		
					local A_1 = game:GetService("Workspace").Level.Geometry.Vault.VaultDoor.Interact
					local Event = game:GetService("ReplicatedStorage").Interact.ReserveUse
					Event:InvokeServer(A_1)
		
					local A_1 = game:GetService("Workspace").Level.Geometry.Vault.VaultDoor.Interact
					local A_2 = 100
					local Event = game:GetService("ReplicatedStorage").Interact.UpdateInteraction
					Event:InvokeServer(A_1, A_2)
		
					local A_1 = game:GetService("Workspace").Level.Geometry.Vault.VaultDoor.Interact
					local Event = game:GetService("ReplicatedStorage").Interact.ReleaseUse
					Event:InvokeServer(A_1)
		
					local A_1 = game:GetService("Workspace").Level.Geometry.Vault.VaultDoor.Interact
					local Event = game:GetService("ReplicatedStorage").Interact.TriggerInteraction
					Event:InvokeServer(A_1)
				end)
			end
		end
		
		function Startup()
			for i, v in pairs(workspace.Level.Geometry:GetChildren()) do
				wait()
				if v.Name == "PowerBox" and v.Wire.BrickColor == VaultWireColor then
					
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Door.CFrame
					wait(.5)
					for i = 1, 3 do
						wait(.2)
						pcall(function()
							local A_1 = v.Interact
							local A_2 = v
							local Event = game:GetService("ReplicatedStorage").Interact.StartInteraction
							Event:FireServer(A_1, A_2)
		
							local A_1 = "Interaction"
							local A_2 = true
							local Event = game:GetService("Workspace").Level.Players.Player.AnimateServer.ChangeInput
							Event:FireServer(A_1, A_2)
		
							local A_1 = v.Interact
							local Event = game:GetService("ReplicatedStorage").Interact.ReserveUse
							Event:InvokeServer(A_1)
		
							local A_1 = v.Interact
							local A_2 = 100
							local Event = game:GetService("ReplicatedStorage").Interact.UpdateInteraction
							Event:InvokeServer(A_1, A_2)
		
							local A_1 = "Interaction"
							local A_2 = false
							local Event = game:GetService("Workspace").Level.Players.Player.AnimateServer.ChangeInput
							Event:FireServer(A_1, A_2)
		
							local A_1 = v.Interact
							local Event = game:GetService("ReplicatedStorage").Interact.TriggerInteraction
							Event:InvokeServer(A_1)
						end)
					end
				end
			end
		
			game.Players.LocalPlayer.Character:MoveTo(workspace.Level.Geometry.Vault.Location.Position)
		
			wait(.5)
		
			for i = 1, 3 do
				wait(.2)
				pcall(function()
					local A_1 = game:GetService("Players").LocalPlayer.Status.Tools.Bag
					local Event = game:GetService("ReplicatedStorage").Items.PickupBag
					Event:InvokeServer(A_1)
		
					local A_1 = "Interaction"
					local A_2 = false
					local Event = game:GetService("Workspace").Level.Players.Player.AnimateServer.ChangeInput
					Event:FireServer(A_1, A_2)
		
		
					local A_1 = game:GetService("Workspace").Level.Geometry.Vault.VaultDoor.Interact
					local A_2 = game:GetService("Workspace").Level.Geometry.Vault.VaultDoor
					local Event = game:GetService("ReplicatedStorage").Interact.StartInteraction
					Event:FireServer(A_1, A_2)
		
					local A_1 = game:GetService("Workspace").Level.Geometry.Vault.VaultDoor.Interact
					local Event = game:GetService("ReplicatedStorage").Interact.ReserveUse
					Event:InvokeServer(A_1)
		
					local A_1 = game:GetService("Workspace").Level.Geometry.Vault.VaultDoor.Interact
					local A_2 = 100
					local Event = game:GetService("ReplicatedStorage").Interact.UpdateInteraction
					Event:InvokeServer(A_1, A_2)
		
					local A_1 = game:GetService("Workspace").Level.Geometry.Vault.VaultDoor.Interact
					local Event = game:GetService("ReplicatedStorage").Interact.ReleaseUse
					Event:InvokeServer(A_1)
		
					local A_1 = game:GetService("Workspace").Level.Geometry.Vault.VaultDoor.Interact
					local Event = game:GetService("ReplicatedStorage").Interact.TriggerInteraction
					Event:InvokeServer(A_1)
				end)
			end
		end
		
		Startup()
		
		wait()
		local t2 = Env:Notify("Grab the Money Bag", false)
		repeat
			wait()
		until game:GetService("Players").LocalPlayer.Status.Tools:FindFirstChild("Bag") and game:GetService("Players").LocalPlayer.Status.Tools:FindFirstChild("Bag"):FindFirstChildOfClass("IntValue").Name:lower():find("loot")
		Env:NotifyTweenDown(t2, 0.7)
		wait(1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Level.Geometry.PlayerSpawn.Geometry.IndustrialTable.Part.CFrame
	end
end



----/// Trash env functions

Env:Notify("Made by Phoenixx", 5)


local KillNPC = Env:MakeButton("Kill NPCs")
local tex = KillNPC.Text
Env:RegisterButton(KillNPC, true, false, function()
	if Activated[KillNPC] ~= true then
		KillNPCs()
		KillNPC.Text = "Killed NPCs!"
		wait(1)
		KillNPC.Text = tex
	end
end)
if game.PlaceId == 2215221144 then
	local AutoFarm = Env:MakeButton("Start Autofarm")
	Env:RegisterButton(AutoFarm, false, true, function()
		AutoFarmStart()
	end)
end

local NPCCham = Env:MakeButton("NPC Chams")
local tex = NPCCham.Text
Env:RegisterButton(NPCCham, true, true, function()
	if Activated[NPCCham] == true then
		ESPNPC = true
		NPCCham.Text = "Activated Chams!"
		wait(1)
		NPCCham.Text = tex
	else
		ESPNPC = false
	end
end)

Actors.ChildAdded:Connect(function(v)
	if ESPNPC then
		repeat wait() until v:FindFirstChild("Character")
		for i,v in pairs(v.Character:GetChildren()) do
			if v.ClassName == "MeshPart" or "Part" and v.Name ~= "HumanoidRootPart" then
		--
				xd = Instance.new("SurfaceGui")
				xd.Face = Enum.NormalId.Back
				xd.Parent = workspace.CurrentCamera
				xd.Adornee = v
				xd.AlwaysOnTop = true
				Frame = Instance.new("Frame")
				Frame.Parent = xd
				Frame.BackgroundColor3 = Color3.new(1, 1, 1)
				Frame.Size = UDim2.new(1, 0, 1, 0)
				Frame.BackgroundTransparency = 0.6
		
				Frame.BackgroundColor3 = Color3.new(230,0,0)
		
		--
		
				xd = Instance.new("SurfaceGui")
				xd.Face = Enum.NormalId.Bottom
				xd.Parent = workspace.CurrentCamera
				xd.Adornee = v
				xd.AlwaysOnTop = true
				Frame = Instance.new("Frame")
				Frame.Parent = xd
				Frame.BackgroundColor3 = Color3.new(1, 1, 1)
				Frame.Size = UDim2.new(1, 0, 1, 0)
				Frame.BackgroundTransparency = 0.6
		
				Frame.BackgroundColor3 = Color3.new(230,0,0)
	
		--
		
				xd = Instance.new("SurfaceGui")
				xd.Face = Enum.NormalId.Front
				xd.Parent = workspace.CurrentCamera
				xd.Adornee = v
				xd.AlwaysOnTop = true
				Frame = Instance.new("Frame")
				Frame.Parent = xd
				Frame.BackgroundColor3 = Color3.new(1, 1, 1)
				Frame.Size = UDim2.new(1, 0, 1, 0)
				Frame.BackgroundTransparency = 0.6
		
				Frame.BackgroundColor3 = Color3.new(230,0,0)
		
		
		--
		
				xd = Instance.new("SurfaceGui")
				xd.Face = Enum.NormalId.Left
				xd.Parent = workspace.CurrentCamera
				xd.Adornee = v
				xd.AlwaysOnTop = true
				Frame = Instance.new("Frame")
				Frame.Parent = xd
				Frame.BackgroundColor3 = Color3.new(1, 1, 1)
				Frame.Size = UDim2.new(1, 0, 1, 0)
				Frame.BackgroundTransparency = 0.6
		
				Frame.BackgroundColor3 = Color3.new(230,0,0)
		--
		
				xd = Instance.new("SurfaceGui")
				xd.Face = Enum.NormalId.Right
				xd.Parent = workspace.CurrentCamera
				xd.Adornee = v
				xd.AlwaysOnTop = true
				Frame = Instance.new("Frame")
				Frame.Parent = xd
				Frame.BackgroundColor3 = Color3.new(1, 1, 1)
				Frame.Size = UDim2.new(1, 0, 1, 0)
				Frame.BackgroundTransparency = 0.6
		
				Frame.BackgroundColor3 = Color3.new(230,0,0)
		--
		
				xd = Instance.new("SurfaceGui")
				xd.Face = Enum.NormalId.Top
				xd.Parent = workspace.CurrentCamera
				xd.Adornee = v
				xd.AlwaysOnTop = true
				Frame = Instance.new("Frame")
				Frame.Parent = xd
				Frame.BackgroundColor3 = Color3.new(1, 1, 1)
				Frame.Size = UDim2.new(1, 0, 1, 0)
				Frame.BackgroundTransparency = 0.6
		
		
				Frame.BackgroundColor3 = Color3.new(230,0,0)
			
			end
		end
	end
end)


while true do wait()
	if ESPNPC == true then
		for i, v in pairs(Actors:GetChildren()) do
			for i,v in pairs(v.Character:GetChildren()) do
				if v.ClassName == "MeshPart" or "Part" and v.Name ~= "HumanoidRootPart" then
			--
					xd = Instance.new("SurfaceGui")
					xd.Face = Enum.NormalId.Back
					xd.Parent = workspace.CurrentCamera
					xd.Adornee = v
					xd.AlwaysOnTop = true
					Frame = Instance.new("Frame")
					Frame.Parent = xd
					Frame.BackgroundColor3 = Color3.new(1, 1, 1)
					Frame.Size = UDim2.new(1, 0, 1, 0)
					Frame.BackgroundTransparency = 0.6
			
					Frame.BackgroundColor3 = Color3.new(230,0,0)
			
			--
			
					xd = Instance.new("SurfaceGui")
					xd.Face = Enum.NormalId.Bottom
					xd.Parent = workspace.CurrentCamera
					xd.Adornee = v
					xd.AlwaysOnTop = true
					Frame = Instance.new("Frame")
					Frame.Parent = xd
					Frame.BackgroundColor3 = Color3.new(1, 1, 1)
					Frame.Size = UDim2.new(1, 0, 1, 0)
					Frame.BackgroundTransparency = 0.6
			
					Frame.BackgroundColor3 = Color3.new(230,0,0)
	
			--
			
					xd = Instance.new("SurfaceGui")
					xd.Face = Enum.NormalId.Front
					xd.Parent = workspace.CurrentCamera
					xd.Adornee = v
					xd.AlwaysOnTop = true
					Frame = Instance.new("Frame")
					Frame.Parent = xd
					Frame.BackgroundColor3 = Color3.new(1, 1, 1)
					Frame.Size = UDim2.new(1, 0, 1, 0)
					Frame.BackgroundTransparency = 0.6
			
					Frame.BackgroundColor3 = Color3.new(230,0,0)
			
			
			--
			
					xd = Instance.new("SurfaceGui")
					xd.Face = Enum.NormalId.Left
					xd.Parent = workspace.CurrentCamera
					xd.Adornee = v
					xd.AlwaysOnTop = true
					Frame = Instance.new("Frame")
					Frame.Parent = xd
					Frame.BackgroundColor3 = Color3.new(1, 1, 1)
					Frame.Size = UDim2.new(1, 0, 1, 0)
					Frame.BackgroundTransparency = 0.6
			
					Frame.BackgroundColor3 = Color3.new(230,0,0)
			--
			
					xd = Instance.new("SurfaceGui")
					xd.Face = Enum.NormalId.Right
					xd.Parent = workspace.CurrentCamera
					xd.Adornee = v
					xd.AlwaysOnTop = true
					Frame = Instance.new("Frame")
					Frame.Parent = xd
					Frame.BackgroundColor3 = Color3.new(1, 1, 1)
					Frame.Size = UDim2.new(1, 0, 1, 0)
					Frame.BackgroundTransparency = 0.6
			
					Frame.BackgroundColor3 = Color3.new(230,0,0)
			--
			
					xd = Instance.new("SurfaceGui")
					xd.Face = Enum.NormalId.Top
					xd.Parent = workspace.CurrentCamera
					xd.Adornee = v
					xd.AlwaysOnTop = true
					Frame = Instance.new("Frame")
					Frame.Parent = xd
					Frame.BackgroundColor3 = Color3.new(1, 1, 1)
					Frame.Size = UDim2.new(1, 0, 1, 0)
					Frame.BackgroundTransparency = 0.6
			
			
					Frame.BackgroundColor3 = Color3.new(230,0,0)
				
				end
			end
		end
		repeat wait() until ESPNPC ~= true
		workspace.CurrentCamera:ClearAllChildren()
	end		
end