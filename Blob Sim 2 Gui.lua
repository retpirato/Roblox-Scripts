-- Made by Not Phoenix#2308

--[[
	Make sure to subscribe to Damian's channel!
	
	https://www.youtube.com/channel/UCbKVVX29h_E5Lv2ieR6mWcQ
--]]
local BlobF = Instance.new("ScreenGui")
local Console = Instance.new("ImageLabel")
local Name = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local crasher = Instance.new("TextButton")
local killaura = Instance.new("TextButton")
local unlockall = Instance.new("TextButton")
local Others = Instance.new("ImageLabel")
local Name_2 = Instance.new("TextLabel")
local Frame_2 = Instance.new("Frame")
local killone = Instance.new("TextButton")
local kick = Instance.new("TextButton")
local killothers = Instance.new("TextButton")
local loopkill = Instance.new("TextButton")
local LocalPlayer = Instance.new("ImageLabel")
local Name_3 = Instance.new("TextLabel")
local Frame_3 = Instance.new("Frame")
local LoopJump = Instance.new("TextButton")
local Noclip = Instance.new("TextButton")
local Walkspeed = Instance.new("TextButton")
local equip = Instance.new("TextButton")
local Blob = Instance.new("TextBox")
local autofarm = Instance.new("TextButton")
local Credits = Instance.new("TextLabel")
local GuiName = Instance.new("TextLabel")
local PlayerName = Instance.new("ImageLabel")
local Name_4 = Instance.new("TextLabel")
local Frame_4 = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
--Properties:
BlobF.Name = "Blob F****"
BlobF.Parent = game.CoreGui
BlobF.ResetOnSpawn = false

Console.Name = "Console"
Console.Parent = BlobF
Console.BackgroundColor3 = Color3.new(1, 1, 1)
Console.BackgroundTransparency = 1
Console.Position = UDim2.new(0.0137408478, 0, 0.0661875829, 0)
Console.Size = UDim2.new(0.0924315676, 0, 0.036724776, 0)
Console.Image = "rbxassetid://2271525432"
Console.ImageColor3 = Color3.new(0.905882, 0.67451, 0.345098)
Console.ScaleType = Enum.ScaleType.Slice
Console.SliceCenter = Rect.new(7, 7, 8, 8)

Name.Name = "Name"
Name.Parent = Console
Name.BackgroundColor3 = Color3.new(1, 1, 1)
Name.BackgroundTransparency = 1
Name.Position = UDim2.new(0.0361857079, 0, 0, 0)
Name.Size = UDim2.new(0.887990057, 0, 0.99999994, 0)
Name.Font = Enum.Font.SourceSansLight
Name.Text = "Console"
Name.TextColor3 = Color3.new(1, 1, 1)
Name.TextScaled = true
Name.TextSize = 14
Name.TextWrapped = true

Frame.Parent = Console
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BackgroundTransparency = 0.69999998807907
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(-0.00145841262, 0, 0.897360325, 0)
Frame.Size = UDim2.new(1.00145864, 0, 2.94737792, 0)
Frame.ZIndex = 0

crasher.Name = "crasher"
crasher.Parent = Frame
crasher.BackgroundColor3 = Color3.new(1, 1, 1)
crasher.BackgroundTransparency = 1
crasher.Position = UDim2.new(0.0411044806, 0, 0.0470752679, 0)
crasher.Size = UDim2.new(0.92900008, 0, 0.314996094, 0)
crasher.Font = Enum.Font.SourceSansLight
crasher.Text = "> Sever crasher"
crasher.TextColor3 = Color3.new(1, 1, 1)
crasher.TextScaled = true
crasher.TextSize = 14
crasher.TextWrapped = true
crasher.TextXAlignment = Enum.TextXAlignment.Left

killaura.Name = "killaura"
killaura.Parent = Frame
killaura.BackgroundColor3 = Color3.new(1, 1, 1)
killaura.BackgroundTransparency = 1
killaura.Position = UDim2.new(0.0411044806, 0, 0.356002927, 0)
killaura.Size = UDim2.new(0.92900008, 0, 0.314996094, 0)
killaura.Font = Enum.Font.SourceSansLight
killaura.Text = "> Kill Aura"
killaura.TextColor3 = Color3.new(1, 1, 1)
killaura.TextScaled = true
killaura.TextSize = 14
killaura.TextWrapped = true
killaura.TextXAlignment = Enum.TextXAlignment.Left

unlockall.Name = "unlockall"
unlockall.Parent = Frame
unlockall.BackgroundColor3 = Color3.new(1, 1, 1)
unlockall.BackgroundTransparency = 1
unlockall.Position = UDim2.new(0.0411044806, 0, 0.636358857, 0)
unlockall.Size = UDim2.new(0.92900008, 0, 0.314996094, 0)
unlockall.Font = Enum.Font.SourceSansLight
unlockall.Text = "> Unlock all levels"
unlockall.TextColor3 = Color3.new(1, 1, 1)
unlockall.TextScaled = true
unlockall.TextSize = 14
unlockall.TextWrapped = true
unlockall.TextXAlignment = Enum.TextXAlignment.Left

Others.Name = "Others"
Others.Parent = BlobF
Others.BackgroundColor3 = Color3.new(1, 1, 1)
Others.BackgroundTransparency = 1
Others.Position = UDim2.new(0.114781551, 0, 0.0661875829, 0)
Others.Size = UDim2.new(0.0924315676, 0, 0.036724776, 0)
Others.Image = "rbxassetid://2271525432"
Others.ImageColor3 = Color3.new(0.905882, 0.67451, 0.345098)
Others.ScaleType = Enum.ScaleType.Slice
Others.SliceCenter = Rect.new(7, 7, 8, 8)

Name_2.Name = "Name"
Name_2.Parent = Others
Name_2.BackgroundColor3 = Color3.new(1, 1, 1)
Name_2.BackgroundTransparency = 1
Name_2.Position = UDim2.new(0.049186863, 0, 0, 0)
Name_2.Size = UDim2.new(0.887990057, 0, 0.99999994, 0)
Name_2.Font = Enum.Font.SourceSansLight
Name_2.Text = "Others"
Name_2.TextColor3 = Color3.new(1, 1, 1)
Name_2.TextScaled = true
Name_2.TextSize = 14
Name_2.TextWrapped = true

Frame_2.Parent = Others
Frame_2.BackgroundColor3 = Color3.new(0, 0, 0)
Frame_2.BackgroundTransparency = 0.69999998807907
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(-0.000999874785, 0, 0.892000556, 0)
Frame_2.Size = UDim2.new(1.00100005, 0, 3.6005125, 0)
Frame_2.ZIndex = 0

killone.Name = "killone"
killone.Parent = Frame_2
killone.BackgroundColor3 = Color3.new(1, 1, 1)
killone.BackgroundTransparency = 1
killone.Position = UDim2.new(0.0237563457, 0, 0.0880953223, 0)
killone.Size = UDim2.new(0.976243615, 0, 0.230374545, 0)
killone.Font = Enum.Font.SourceSansLight
killone.Text = "> Kill"
killone.TextColor3 = Color3.new(1, 1, 1)
killone.TextScaled = true
killone.TextSize = 14
killone.TextWrapped = true
killone.TextXAlignment = Enum.TextXAlignment.Left

kick.Name = "kick"
kick.Parent = Frame_2
kick.BackgroundColor3 = Color3.new(1, 1, 1)
kick.BackgroundTransparency = 1
kick.Position = UDim2.new(0.0237563457, 0, 0.31403175, 0)
kick.Size = UDim2.new(0.976243615, 0, 0.230374545, 0)
kick.Font = Enum.Font.SourceSansLight
kick.Text = "> Kick"
kick.TextColor3 = Color3.new(1, 1, 1)
kick.TextScaled = true
kick.TextSize = 14
kick.TextWrapped = true
kick.TextXAlignment = Enum.TextXAlignment.Left

killothers.Name = "killothers"
killothers.Parent = Frame_2
killothers.BackgroundColor3 = Color3.new(1, 1, 1)
killothers.BackgroundTransparency = 1
killothers.Position = UDim2.new(0.0467314422, 0, 0.537998676, 0)
killothers.Size = UDim2.new(0.976243615, 0, 0.230374545, 0)
killothers.Font = Enum.Font.SourceSansLight
killothers.Text = "> Kill all"
killothers.TextColor3 = Color3.new(1, 1, 1)
killothers.TextScaled = true
killothers.TextSize = 14
killothers.TextWrapped = true
killothers.TextXAlignment = Enum.TextXAlignment.Left

loopkill.Name = "loopkill"
loopkill.Parent = Frame_2
loopkill.BackgroundColor3 = Color3.new(1, 1, 1)
loopkill.BackgroundTransparency = 1
loopkill.Position = UDim2.new(0.0467314422, 0, 0.760977387, 0)
loopkill.Size = UDim2.new(0.976243615, 0, 0.230374545, 0)
loopkill.Font = Enum.Font.SourceSansLight
loopkill.Text = "> Loopkill"
loopkill.TextColor3 = Color3.new(1, 1, 1)
loopkill.TextScaled = true
loopkill.TextSize = 14
loopkill.TextWrapped = true
loopkill.TextXAlignment = Enum.TextXAlignment.Left

LocalPlayer.Name = "LocalPlayer"
LocalPlayer.Parent = BlobF
LocalPlayer.BackgroundColor3 = Color3.new(1, 1, 1)
LocalPlayer.BackgroundTransparency = 1
LocalPlayer.Position = UDim2.new(0.215399548, 0, 0.0661875829, 0)
LocalPlayer.Size = UDim2.new(0.0924315676, 0, 0.036724776, 0)
LocalPlayer.Image = "rbxassetid://2271525432"
LocalPlayer.ImageColor3 = Color3.new(0.905882, 0.67451, 0.345098)
LocalPlayer.ScaleType = Enum.ScaleType.Slice
LocalPlayer.SliceCenter = Rect.new(7, 7, 8, 8)

Name_3.Name = "Name"
Name_3.Parent = LocalPlayer
Name_3.BackgroundColor3 = Color3.new(1, 1, 1)
Name_3.BackgroundTransparency = 1
Name_3.Position = UDim2.new(0.0361857079, 0, 0, 0)
Name_3.Size = UDim2.new(0.887990057, 0, 0.99999994, 0)
Name_3.Font = Enum.Font.SourceSansLight
Name_3.Text = "Local Player"
Name_3.TextColor3 = Color3.new(1, 1, 1)
Name_3.TextScaled = true
Name_3.TextSize = 14
Name_3.TextWrapped = true

Frame_3.Parent = LocalPlayer
Frame_3.BackgroundColor3 = Color3.new(0, 0, 0)
Frame_3.BackgroundTransparency = 0.69999998807907
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(-0.00145826978, 0, 0.897359788, 0)
Frame_3.Size = UDim2.new(1.00145864, 0, 5.92456675, 0)
Frame_3.ZIndex = 0

LoopJump.Name = "LoopJump"
LoopJump.Parent = Frame_3
LoopJump.BackgroundColor3 = Color3.new(1, 1, 1)
LoopJump.BackgroundTransparency = 1
LoopJump.Position = UDim2.new(0.041553922, 0, 0.16669023, 0)
LoopJump.Size = UDim2.new(0.976000011, 0, 0.156529069, 0)
LoopJump.Font = Enum.Font.SourceSansLight
LoopJump.Text = "> Infinite Jump"
LoopJump.TextColor3 = Color3.new(1, 1, 1)
LoopJump.TextScaled = true
LoopJump.TextSize = 14
LoopJump.TextWrapped = true
LoopJump.TextXAlignment = Enum.TextXAlignment.Left

Noclip.Name = "Noclip"
Noclip.Parent = Frame_3
Noclip.BackgroundColor3 = Color3.new(1, 1, 1)
Noclip.BackgroundTransparency = 1
Noclip.Position = UDim2.new(0.0317261629, 0, 0.308809727, 0)
Noclip.Size = UDim2.new(0.976243436, 0, 0.156659752, 0)
Noclip.Font = Enum.Font.SourceSansLight
Noclip.Text = "> Noclip [B]"
Noclip.TextColor3 = Color3.new(1, 1, 1)
Noclip.TextScaled = true
Noclip.TextSize = 14
Noclip.TextWrapped = true
Noclip.TextXAlignment = Enum.TextXAlignment.Left

Walkspeed.Name = "Walkspeed"
Walkspeed.Parent = Frame_3
Walkspeed.BackgroundColor3 = Color3.new(1, 1, 1)
Walkspeed.BackgroundTransparency = 1
Walkspeed.Position = UDim2.new(0.0415536538, 0, 0.0234192666, 0)
Walkspeed.Size = UDim2.new(1.00176716, 0, 0.139149085, 0)
Walkspeed.Font = Enum.Font.SourceSansLight
Walkspeed.Text = "> Speed"
Walkspeed.TextColor3 = Color3.new(1, 1, 1)
Walkspeed.TextScaled = true
Walkspeed.TextSize = 14
Walkspeed.TextWrapped = true
Walkspeed.TextXAlignment = Enum.TextXAlignment.Left

equip.Name = "equip"
equip.Parent = Frame_3
equip.BackgroundColor3 = Color3.new(1, 1, 1)
equip.BackgroundTransparency = 1
equip.Position = UDim2.new(0.0495236181, 0, 0.455844939, 0)
equip.Size = UDim2.new(0.976000011, 0, 0.156529069, 0)
equip.Font = Enum.Font.SourceSansLight
equip.Text = "> Equip"
equip.TextColor3 = Color3.new(1, 1, 1)
equip.TextScaled = true
equip.TextSize = 14
equip.TextWrapped = true
equip.TextXAlignment = Enum.TextXAlignment.Left

Blob.Name = "Blob"
Blob.Parent = Frame_3
Blob.BackgroundColor3 = Color3.new(0, 0, 0)
Blob.BackgroundTransparency = 0.69999998807907
Blob.Position = UDim2.new(0.0237561949, 0, 0.609040201, 0)
Blob.Size = UDim2.new(0.939719379, 0, 0.156529069, 0)
Blob.Font = Enum.Font.SourceSans
Blob.Text = "Enter blob name here"
Blob.TextColor3 = Color3.new(1, 1, 1)
Blob.TextScaled = true
Blob.TextSize = 14
Blob.TextWrapped = true

autofarm.Name = "autofarm"
autofarm.Parent = Frame_3
autofarm.BackgroundColor3 = Color3.new(1, 1, 1)
autofarm.BackgroundTransparency = 1
autofarm.Position = UDim2.new(0.0495236181, 0, 0.807269871, 0)
autofarm.Size = UDim2.new(0.976000011, 0, 0.156529069, 0)
autofarm.Font = Enum.Font.SourceSansLight
autofarm.Text = "> AUTO FARM | OFF"
autofarm.TextColor3 = Color3.new(1, 1, 1)
autofarm.TextScaled = true
autofarm.TextSize = 14
autofarm.TextWrapped = true
autofarm.TextXAlignment = Enum.TextXAlignment.Left

Credits.Name = "Credits"
Credits.Parent = BlobF
Credits.BackgroundColor3 = Color3.new(0, 0, 0)
Credits.BackgroundTransparency = 1
Credits.Position = UDim2.new(0.0884589553, 0, 0.0171989724, 0)
Credits.Size = UDim2.new(0.211850137, 0, 0.0479115434, 0)
Credits.Font = Enum.Font.SciFi
Credits.Text = "Made by: Not Phoenix#2308"
Credits.TextColor3 = Color3.new(1, 1, 1)
Credits.TextSize = 16
Credits.TextStrokeColor3 = Color3.new(0.337255, 0.337255, 0.337255)
Credits.TextStrokeTransparency = 0.60000002384186
Credits.TextWrapped = true

GuiName.Name = "GuiName"
GuiName.Parent = BlobF
GuiName.BackgroundColor3 = Color3.new(0, 0, 0)
GuiName.BackgroundTransparency = 1
GuiName.Position = UDim2.new(0.0135916593, 0, 0.0171989724, 0)
GuiName.Size = UDim2.new(0.0982948467, 0, 0.0479115434, 0)
GuiName.Font = Enum.Font.SciFi
GuiName.Text = "Blob F****"
GuiName.TextColor3 = Color3.new(0.905882, 0.67451, 0.345098)
GuiName.TextScaled = true
GuiName.TextSize = 14
GuiName.TextStrokeTransparency = 0.60000002384186
GuiName.TextWrapped = true

PlayerName.Name = "PlayerName"
PlayerName.Parent = BlobF
PlayerName.BackgroundColor3 = Color3.new(1, 1, 1)
PlayerName.BackgroundTransparency = 1
PlayerName.Position = UDim2.new(0.324851394, 0, 0.739137471, 0)
PlayerName.Size = UDim2.new(0.0924315676, 0, 0.036724776, 0)
PlayerName.Image = "rbxassetid://2271525432"
PlayerName.ImageColor3 = Color3.new(0.905882, 0.67451, 0.345098)
PlayerName.ScaleType = Enum.ScaleType.Slice
PlayerName.SliceCenter = Rect.new(7, 7, 8, 8)

Name_4.Name = "Name"
Name_4.Parent = PlayerName
Name_4.BackgroundColor3 = Color3.new(1, 1, 1)
Name_4.BackgroundTransparency = 1
Name_4.Position = UDim2.new(0.049186863, 0, 0, 0)
Name_4.Size = UDim2.new(0.887990057, 0, 0.99999994, 0)
Name_4.Font = Enum.Font.SourceSansLight
Name_4.Text = "Player"
Name_4.TextColor3 = Color3.new(1, 1, 1)
Name_4.TextScaled = true
Name_4.TextSize = 14
Name_4.TextWrapped = true

Frame_4.Parent = PlayerName
Frame_4.BackgroundColor3 = Color3.new(0, 0, 0)
Frame_4.BackgroundTransparency = 0.69999998807907
Frame_4.BorderSizePixel = 0
Frame_4.Position = UDim2.new(0.949663222, 0, -0.0261258669, 0)
Frame_4.Size = UDim2.new(2.31275654, 0, 1.0261302, 0)
Frame_4.ZIndex = 0

TextBox.Parent = Frame_4
TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox.BackgroundTransparency = 1
TextBox.Position = UDim2.new(1.17592911e-07, 0, 0, 0)
TextBox.Size = UDim2.new(1, 0, 1.00000072, 0)
TextBox.Font = Enum.Font.SourceSans
TextBox.Text = "Player name here"
TextBox.TextColor3 = Color3.new(1, 1, 1)
TextBox.TextSize = 14
TextBox.TextStrokeTransparency = 0
-- Scripts:
function SCRIPT_GECH87_FAKESCRIPT() -- crasher.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = crasher
	script.Parent.MouseButton1Click:Connect(function()
			for i, v in pairs(workspace:GetChildren()) do
			game.ReplicatedStorage.Events.DestroyBlob:FireServer(v)
		end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_GECH87_FAKESCRIPT))
function SCRIPT_PHKK88_FAKESCRIPT() -- killaura.LocalScript 
	print("Will be added back soon!")
end
coroutine.resume(coroutine.create(SCRIPT_PHKK88_FAKESCRIPT))
function SCRIPT_BBBE65_FAKESCRIPT() -- unlockall.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = unlockall
	script.Parent.MouseButton1Click:Connect(function()
			local one = game.Workspace.GameComponents.Zones.Realm2.Door
			local two2 = game.Workspace.GameComponents.Zones.Realm3.Door
			local two3 = game.Workspace.GameComponents.Zones.Realm4.Door
			local two4 = game.Workspace.GameComponents.Zones.Realm5.Door
			local two5 = game.Workspace.GameComponents.Zones.Realm6.Door
			local two6 = game.Workspace.GameComponents.Zones.Realm7.Door
			local two7 = game.Workspace.GameComponents.Zones.Realm8.Door
			local two8 = game.Workspace.GameComponents.Zones.Realm9.Door
			local two9 = game.Workspace.GameComponents.Zones.Realm10.Door
			local two10 = game.Workspace.GameComponents.Zones.Realm11.Door
			
			game.ReplicatedStorage.Events.DestroyBlob:FireServer(one)
			game.ReplicatedStorage.Events.DestroyBlob:FireServer(two2)
			game.ReplicatedStorage.Events.DestroyBlob:FireServer(two3)
			game.ReplicatedStorage.Events.DestroyBlob:FireServer(two4)
			game.ReplicatedStorage.Events.DestroyBlob:FireServer(two5)
			game.ReplicatedStorage.Events.DestroyBlob:FireServer(two6)
			game.ReplicatedStorage.Events.DestroyBlob:FireServer(two7)
			game.ReplicatedStorage.Events.DestroyBlob:FireServer(two8)
			game.ReplicatedStorage.Events.DestroyBlob:FireServer(two9)
			game.ReplicatedStorage.Events.DestroyBlob:FireServer(two10)
			warn("Done! You can now acces all levels")
	end)

end
coroutine.resume(coroutine.create(SCRIPT_BBBE65_FAKESCRIPT))
function SCRIPT_LFYQ85_FAKESCRIPT() -- killone.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = killone
	script.Parent.MouseButton1Click:Connect(function()
		local plr = script.Parent.Parent.Parent.Parent.PlayerName.Frame.TextBox
		game.ReplicatedStorage.Events.DestroyBlob:FireServer(game.Players[plr.Text].Character.Head)
	end)

end
coroutine.resume(coroutine.create(SCRIPT_LFYQ85_FAKESCRIPT))
function SCRIPT_QNPY67_FAKESCRIPT() -- kick.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = kick
	script.Parent.MouseButton1Click:Connect(function()
		local plr = script.Parent.Parent.Parent.Parent.PlayerName.Frame.TextBox
		game.ReplicatedStorage.Events.DestroyBlob:FireServer(game.Players[plr.Text])
	end)

end
coroutine.resume(coroutine.create(SCRIPT_QNPY67_FAKESCRIPT))
function SCRIPT_BDTB90_FAKESCRIPT() -- killothers.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = killothers
	script.Parent.MouseButton1Click:Connect(function()
		for i, v in pairs(game.Players:GetChildren()) do
			game.ReplicatedStorage.Events.DestroyBlob:FireServer(v.Character.Head)
		end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_BDTB90_FAKESCRIPT))
function SCRIPT_NVZC87_FAKESCRIPT() -- loopkill.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = loopkill
	function run(muhaha)
		local plr = script.Parent.Parent.Parent.Parent.PlayerName.Frame.TextBox
		while true do
			game.ReplicatedStorage.Events.DestroyBlob:FireServer(game.Players[plr.Text].Character.Head)
			wait(7)
		end
	end
	
	script.Parent.MouseButton1Click:Connect(run)

end
coroutine.resume(coroutine.create(SCRIPT_NVZC87_FAKESCRIPT))
function SCRIPT_IMMF71_FAKESCRIPT() -- LoopJump.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = LoopJump
	script.Parent.MouseButton1Click:Connect(function()
		game:GetService("UserInputService").JumpRequest:connect(function()
			game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")		
		end)
	end)

end
coroutine.resume(coroutine.create(SCRIPT_IMMF71_FAKESCRIPT))
function SCRIPT_KHZE76_FAKESCRIPT() -- Noclip.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = Noclip
	local noclipplayer = game:GetService("Players").LocalPlayer
		local noclipmouse = noclipplayer:GetMouse()
		
		local donoclip = false
		local noclip = false
		
		function b_noclip(key)
			if (key == "b") then
				if noclip == false then
					donoclip = true
					
					noclip = true
				elseif noclip == true then
					donoclip = false
					
					noclip = false
				end
			end
		end
		
		noclipmouse.KeyDown:connect(b_noclip)
		
		game:GetService("Players").LocalPlayer.Character.Head.Touched:connect(function(obj)
			if obj ~= workspace.Terrain then
				if donoclip == true then
					obj.CanCollide = false
				else
					obj.CanCollide = true
				end
			end
		end)

end
coroutine.resume(coroutine.create(SCRIPT_KHZE76_FAKESCRIPT))
function SCRIPT_BSLM65_FAKESCRIPT() -- Walkspeed.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = Walkspeed
	local plr = game.Players.LocalPlayer
	
	script.Parent.MouseButton1Click(function()
		plr.Character.Humanoid.WalkSpeed.Value = "50"
	end)

end
coroutine.resume(coroutine.create(SCRIPT_BSLM65_FAKESCRIPT))
function SCRIPT_NXTK79_FAKESCRIPT() -- equip.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = equip
	script.Parent.MouseButton1Click:connect(function()
	    game.ReplicatedStorage.Events.EquipBlob:FireServer(game.ReplicatedStorage.Blobs[script.Parent.Parent.Blob.Text])
	end)

end
coroutine.resume(coroutine.create(SCRIPT_NXTK79_FAKESCRIPT))
function SCRIPT_QGBS78_FAKESCRIPT() -- autofarm.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = autofarm
	local on = false
	
	script.Parent.MouseButton1Click:connect(function()
	    if on == false then
			on = true
			script.Parent.Text = "> Auto Farm | ON"
			
		elseif on == true then
			on = false
			script.Parent.Text = "> Auto Farm | OFF"
		end
	
		repeat
			wait()
			local min = tonumber(1)
			local max = tonumber(999999999)
				for _,v in pairs(game.Workspace:GetChildren()) do
				for _,c in pairs(v:GetChildren()) do
					if c.Name ~= "CoinRegion" then
						for _,b in pairs(c:GetChildren()) do 
							if b:FindFirstChild("Stats") ~= nil then
								if b.Stats.Health.Value > min -1  and b.Stats.Health.Value < max +1 then
									if script.Parent.Text == "> Auto Farm | ON" then	
									wait(1)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = b.CFrame	 
									local A_1 = b
									local A_2 = "click"
									local Event = game:GetService("ReplicatedStorage").BlobModule.BlobClick
									Event:FireServer(A_1, A_2)
									wait(1)
									if b:FindFirstChild("Damagers") ~= nil then
										if b.Damagers:FindFirstChild(game.Players.LocalPlayer.Name) ~= nil then
											if b:WaitForChild("Damagers"):WaitForChild(game.Players.LocalPlayer.Name).Value >= b.Stats.Health.Value then 
												warn("done")
												
											end
										end
									end
								end
							end
						end
					end
				end
				end
				end
		until on == false
	end)

end
coroutine.resume(coroutine.create(SCRIPT_QGBS78_FAKESCRIPT))
function SCRIPT_ULQH76_FAKESCRIPT() -- BlobF.Client 
	local script = Instance.new('LocalScript')
	script.Parent = BlobF
	script.Parent.Console.Active = true
	script.Parent.Console.Draggable = true
	script.Parent.Others.Active = true
	script.Parent.Others.Draggable = true
	script.Parent.LocalPlayer.Active = true
	script.Parent.LocalPlayer.Draggable = true
	
	warn("Blob F**** has successfully loaded")

end
coroutine.resume(coroutine.create(SCRIPT_ULQH76_FAKESCRIPT))