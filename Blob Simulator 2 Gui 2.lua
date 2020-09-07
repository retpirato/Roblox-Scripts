local Player = game.Players.LocalPlayer	
local ScreenGui = Instance.new("ScreenGui")	
ScreenGui.Parent = Player.PlayerGui	
ScreenGui.Name = "Gui"	
local Frame = Instance.new("Frame")	
Frame.Parent = ScreenGui	
Frame.Size = UDim2.new(0,150,0,30)	
Frame.Position = UDim2.new(0,0,0,567.5)	
Frame.BackgroundColor3 = Color3.new(.350,.0,.100)	
Frame.Name = "MainFrame"	
Frame.Draggable = true	
Frame.Active = true	
	
local Button1 = Instance.new('TextButton')	
Button1.Text = 'Coin Farm'	
Button1.Size = UDim2.new(0,200,0,40)	
Button1.Position = UDim2.new(0,0,0,00)	
Button1.Parent = Frame	
	
Button1.MouseButton1Click:connect(function()	
while true do	
	function farm()
game.ReplicatedStorage.BlobModule.BlobClick:FireServer(game.Workspace.Zone_7.LittleCoin, "sclick")	
game.ReplicatedStorage.BlobModule.BlobClick:FireServer(game.Workspace.Zone_7.LittleCoin, "sclick")	
game.ReplicatedStorage.BlobModule.BlobClick:FireServer(game.Workspace.Zone_7.LittleCoin, "sclick")	
wait(1)	
game.ReplicatedStorage.BlobModule.BlobClick:FireServer(game.Workspace.Zone_7.MediumCoin, "sclick")	
game.ReplicatedStorage.BlobModule.BlobClick:FireServer(game.Workspace.Zone_7.MediumCoin, "sclick")	
game.ReplicatedStorage.BlobModule.BlobClick:FireServer(game.Workspace.Zone_7.MediumCoin, "sclick")	
wait(1)	
game.ReplicatedStorage.BlobModule.BlobClick:FireServer(game.Workspace.Zone_7.BigCoin, "sclick")	
game.ReplicatedStorage.BlobModule.BlobClick:FireServer(game.Workspace.Zone_7.BigCoin, "sclick")	
game.ReplicatedStorage.BlobModule.BlobClick:FireServer(game.Workspace.Zone_7.BigCoin, "sclick")	
wait(1)	
game.ReplicatedStorage.BlobModule.BlobClick:FireServer(game.Workspace.Zone_8.LittleCoin, "sclick")	
game.ReplicatedStorage.BlobModule.BlobClick:FireServer(game.Workspace.Zone_8.LittleCoin, "sclick")	
game.ReplicatedStorage.BlobModule.BlobClick:FireServer(game.Workspace.Zone_8.LittleCoin, "sclick")	
wait(1)	
game.ReplicatedStorage.BlobModule.BlobClick:FireServer(game.Workspace.Zone_8.MediumCoin, "sclick")	
game.ReplicatedStorage.BlobModule.BlobClick:FireServer(game.Workspace.Zone_8.MediumCoin, "sclick")	
game.ReplicatedStorage.BlobModule.BlobClick:FireServer(game.Workspace.Zone_8.MediumCoin, "sclick")	
wait(1)	
game.ReplicatedStorage.BlobModule.BlobClick:FireServer(game.Workspace.Zone_8.BigCoin, "sclick")	
game.ReplicatedStorage.BlobModule.BlobClick:FireServer(game.Workspace.Zone_8.BigCoin, "sclick")	
game.ReplicatedStorage.BlobModule.BlobClick:FireServer(game.Workspace.Zone_8.BigCoin, "sclick")	
wait(1)	
	end
pcall(farm)	
wait()	
end	
end)	
	
local Player = game.Players.LocalPlayer	
local ScreenGui = Instance.new("ScreenGui")	
ScreenGui.Parent = Player.PlayerGui	
ScreenGui.Name = "Gui"	
local Frame = Instance.new("Frame")	
Frame.Parent = ScreenGui	
Frame.Size = UDim2.new(0,50,0,30)	
Frame.Position = UDim2.new(0,0,0,517.5)	
Frame.BackgroundColor3 = Color3.new(.350,.0,.100)	
Frame.Name = "MainFrame"	
Frame.Draggable = true	
Frame.Active = true	
	
local Button1 = Instance.new('TextButton')	
Button1.Text = 'Blob 1'	
Button1.Size = UDim2.new(0,50,0,40)	
Button1.Position = UDim2.new(0,0,0,00)	
Button1.Parent = Frame	
	
Button1.MouseButton1Click:connect(function()	
local blob1 = "Radioactive Bloberus Fire"	
game.ReplicatedStorage.Events.EquipBlob:FireServer(game.Players.LocalPlayer.Blobs[blob1])	
end)	
	
local Player = game.Players.LocalPlayer	
local ScreenGui = Instance.new("ScreenGui")	
ScreenGui.Parent = Player.PlayerGui	
ScreenGui.Name = "Gui"	
local Frame = Instance.new("Frame")	
Frame.Parent = ScreenGui	
Frame.Size = UDim2.new(0,50,0,30)	
Frame.Position = UDim2.new(0,75,0,517.5)	
Frame.BackgroundColor3 = Color3.new(.350,.0,.100)	
Frame.Name = "MainFrame"	
Frame.Draggable = true	
Frame.Active = true	
	
local Button1 = Instance.new('TextButton')	
Button1.Text = 'Blob 2'	
Button1.Size = UDim2.new(0,50,0,40)	
Button1.Position = UDim2.new(0,0,0,00)	
Button1.Parent = Frame	
	
Button1.MouseButton1Click:connect(function()	
local blob2 = "Shiny Three-eyed Blob"	
game.ReplicatedStorage.Events.EquipBlob:FireServer(game.Players.LocalPlayer.Blobs[blob2])	
end)	

local Player = game.Players.LocalPlayer	
local ScreenGui = Instance.new("ScreenGui")	
ScreenGui.Parent = Player.PlayerGui	
ScreenGui.Name = "Gui"	
local Frame = Instance.new("Frame")	
Frame.Parent = ScreenGui	
Frame.Size = UDim2.new(0,50,0,30)	
Frame.Position = UDim2.new(0,150,0,517.5)	
Frame.BackgroundColor3 = Color3.new(.350,.0,.100)	
Frame.Name = "MainFrame"	
Frame.Draggable = true	
Frame.Active = true	
	
local Button1 = Instance.new('TextButton')	
Button1.Text = 'Blob 3'	
Button1.Size = UDim2.new(0,50,0,40)	
Button1.Position = UDim2.new(0,0,0,00)	
Button1.Parent = Frame	
	
Button1.MouseButton1Click:connect(function()	
local blob3 = "Shiny White Hat Blob"	
game.ReplicatedStorage.Events.EquipBlob:FireServer(game.Players.LocalPlayer.Blobs[blob3])	
end)	

local Player = game.Players.LocalPlayer	
local ScreenGui = Instance.new("ScreenGui")	
ScreenGui.Parent = Player.PlayerGui	
ScreenGui.Name = "Gui"	
local Frame = Instance.new("Frame")	
Frame.Parent = ScreenGui	
Frame.Size = UDim2.new(0,100,0,30)	
Frame.Position = UDim2.new(0,0,0,467.5)	
Frame.BackgroundColor3 = Color3.new(.350,.0,.100)	
Frame.Name = "MainFrame"	
Frame.Draggable = true	
Frame.Active = true	
	
local Button1 = Instance.new('TextButton')	
Button1.Text = 'Realm 7'	
Button1.Size = UDim2.new(0,100,0,40)	
Button1.Position = UDim2.new(0,0,0,00)	
Button1.Parent = Frame	
	
Button1.MouseButton1Click:connect(function()	
local realm = "Ice Mountain"	
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace[realm].Part.CFrame	
end)	

local Player = game.Players.LocalPlayer	
local ScreenGui = Instance.new("ScreenGui")	
ScreenGui.Parent = Player.PlayerGui	
ScreenGui.Name = "Gui"	
local Frame = Instance.new("Frame")	
Frame.Parent = ScreenGui	
Frame.Size = UDim2.new(0,100,0,30)	
Frame.Position = UDim2.new(0,100,0,467.5)	
Frame.BackgroundColor3 = Color3.new(.350,.0,.100)	
Frame.Name = "MainFrame"	
Frame.Draggable = true	
Frame.Active = true	
	
local Button1 = Instance.new('TextButton')	
Button1.Text = 'Egg Shop'	
Button1.Size = UDim2.new(0,100,0,40)	
Button1.Position = UDim2.new(0,0,0,00)	
Button1.Parent = Frame	
	
Button1.MouseButton1Click:connect(function()	
local egg = "Tier 13"	
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.GameComponents.EggShop[egg].CFrame	
end)