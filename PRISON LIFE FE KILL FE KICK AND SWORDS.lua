function GetPlayer(String)
   local Found = {}
   local strl = String:lower()
       for i,v in pairs(game.Players:GetPlayers()) do
           if v.Name:lower():sub(1, #String) == String:lower() then
               table.insert(Found,v.Name)
           end
       end    
   return Found    
end
local PrisonRuinerGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Kill = Instance.new("TextButton")
local Merge = Instance.new("TextButton")
local Kick = Instance.new("TextButton")
local KillAll = Instance.new("TextButton")
local Sword = Instance.new("TextButton")
local Player = Instance.new("TextBox")
local TextLabel_2 = Instance.new("TextLabel")
local Line = Instance.new("TextLabel")
local Spectate = Instance.new("TextButton")
local Goto = Instance.new("TextButton")
local Unspectate = Instance.new("TextButton")
PrisonRuinerGui.Name = "Prison Ruiner Gui"
PrisonRuinerGui.Parent = game.CoreGui
PrisonRuinerGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Frame.Active = true
Frame.Draggable = true
Frame.Parent = PrisonRuinerGui
Frame.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Frame.BorderColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0496657118, 0, 0.473186165, 0)
Frame.Size = UDim2.new(0, 337, 0, 319)
TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 337, 0, 42)
TextLabel.Font = Enum.Font.Cartoon
TextLabel.Text = "Prison Ruiner Gui"
TextLabel.TextColor3 = Color3.new(0.196078, 0.196078, 0.196078)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true
Kill.Name = "Kill"
Kill.Parent = Frame
Kill.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Kill.BorderColor3 = Color3.new(0, 0, 0)
Kill.BorderSizePixel = 0
Kill.Position = UDim2.new(0.0579999983, 0, 0.173843265, 0)
Kill.Size = UDim2.new(0, 131, 0, 33)
Kill.Font = Enum.Font.Cartoon
Kill.Text = "Kill"
Kill.TextColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Kill.TextScaled = true
Kill.TextSize = 14
Kill.TextWrapped = true
Merge.Name = "Merge"
Merge.Parent = Frame
Merge.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Merge.BorderColor3 = Color3.new(0, 0, 0)
Merge.BorderSizePixel = 0
Merge.Position = UDim2.new(0.550999999, 0, 0.173131928, 0)
Merge.Size = UDim2.new(0, 131, 0, 33)
Merge.Font = Enum.Font.Cartoon
Merge.Text = "Merge"
Merge.TextColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Merge.TextScaled = true
Merge.TextSize = 14
Merge.TextWrapped = true
Kick.Name = "Kick"
Kick.Parent = Frame
Kick.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Kick.BorderColor3 = Color3.new(0, 0, 0)
Kick.BorderSizePixel = 0
Kick.Position = UDim2.new(0.0579999983, 0, 0.300999999, 0)
Kick.Size = UDim2.new(0, 131, 0, 33)
Kick.Font = Enum.Font.Cartoon
Kick.Text = "Kick"
Kick.TextColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Kick.TextScaled = true
Kick.TextSize = 14
Kick.TextWrapped = true
KillAll.Name = "Kill All"
KillAll.Parent = Frame
KillAll.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
KillAll.BorderColor3 = Color3.new(0, 0, 0)
KillAll.BorderSizePixel = 0
KillAll.Position = UDim2.new(0.550999999, 0, 0.302032351, 0)
KillAll.Size = UDim2.new(0, 131, 0, 33)
KillAll.Font = Enum.Font.Cartoon
KillAll.Text = "Kill All"
KillAll.TextColor3 = Color3.new(0.196078, 0.196078, 0.196078)
KillAll.TextScaled = true
KillAll.TextSize = 14
KillAll.TextWrapped = true
Sword.Name = "Sword"
Sword.Parent = Frame
Sword.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Sword.BorderColor3 = Color3.new(0, 0, 0)
Sword.BorderSizePixel = 0
Sword.Position = UDim2.new(0.0579999685, 0, 0.855558157, 0)
Sword.Size = UDim2.new(0, 131, 0, 33)
Sword.Font = Enum.Font.Cartoon
Sword.Text = "Sword"
Sword.TextColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Sword.TextScaled = true
Sword.TextSize = 14
Sword.TextWrapped = true
Player.Name = "Player"
Player.Parent = Frame
Player.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Player.BorderColor3 = Color3.new(0, 0, 0)
Player.BorderSizePixel = 0
Player.Position = UDim2.new(0.202000022, 0, 0.609539211, 0)
Player.Size = UDim2.new(0, 200, 0, 33)
Player.Font = Enum.Font.Cartoon
Player.PlaceholderColor3 = Color3.new(0.490196, 0.490196, 0.490196)
Player.PlaceholderText = "Player"
Player.Text = ""
Player.TextColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Player.TextScaled = true
Player.TextSize = 14
Player.TextWrapped = true
TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
TextLabel_2.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.855000019, 0, 0.654999971, 0)
TextLabel_2.Size = UDim2.new(0, 49, 0, 40)
TextLabel_2.Font = Enum.Font.Cartoon
TextLabel_2.Text = "Gui by Uctron"
TextLabel_2.TextColor3 = Color3.new(0.196078, 0.196078, 0.196078)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14
TextLabel_2.TextWrapped = true
Line.Name = "Line"
Line.Parent = Frame
Line.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Line.BorderColor3 = Color3.new(0, 0, 0)
Line.BorderSizePixel = 0
Line.Position = UDim2.new(0, 0, 0.78076911, 0)
Line.Size = UDim2.new(0, 337, 0, 10)
Line.Font = Enum.Font.Cartoon
Line.Text = ""
Line.TextColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Line.TextScaled = true
Line.TextSize = 14
Line.TextWrapped = true
Spectate.Name = "Spectate"
Spectate.Parent = Frame
Spectate.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Spectate.BorderColor3 = Color3.new(0, 0, 0)
Spectate.BorderSizePixel = 0
Spectate.Position = UDim2.new(0.0579999983, 0, 0.42899999, 0)
Spectate.Size = UDim2.new(0, 131, 0, 33)
Spectate.Font = Enum.Font.Cartoon
Spectate.Text = "Spectate"
Spectate.TextColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Spectate.TextScaled = true
Spectate.TextSize = 14
Spectate.TextWrapped = true
Goto.Name = "Goto"
Goto.Parent = Frame
Goto.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Goto.BorderColor3 = Color3.new(0, 0, 0)
Goto.BorderSizePixel = 0
Goto.Position = UDim2.new(0.551999986, 0, 0.430999994, 0)
Goto.Size = UDim2.new(0, 131, 0, 33)
Goto.Font = Enum.Font.Cartoon
Goto.Text = "Goto"
Goto.TextColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Goto.TextScaled = true
Goto.TextSize = 14
Goto.TextWrapped = true
Unspectate.Name = "Unspectate"
Unspectate.Parent = Frame
Unspectate.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Unspectate.BorderColor3 = Color3.new(0, 0, 0)
Unspectate.BorderSizePixel = 0
Unspectate.Position = UDim2.new(0.550581574, 0, 0.855558157, 0)
Unspectate.Size = UDim2.new(0, 131, 0, 33)
Unspectate.Font = Enum.Font.Cartoon
Unspectate.Text = "Unspectate"
Unspectate.TextColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Unspectate.TextScaled = true
Unspectate.TextSize = 14
Unspectate.TextWrapped = true

Kill.MouseButton1Click:Connect(function()
local savedteam = game.Players.LocalPlayer.TeamColor.Name
workspace.Remote.TeamEvent:FireServer("Medium stone grey")
workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)	
for i,v in pairs(GetPlayer(Player.Text)) do
local A_1 = {[1] = {["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-391.152252, 8.65560055, -83.2166901)), ["Distance"] = 3.2524313926697, ["Cframe"] = CFrame.new(840.310791, 101.334137, 2267.87988, 0.0636406094, 0.151434347, -0.986416459, 0, 0.988420188, 0.151741937, 0.997972965, -0.00965694897, 0.0629036576), ["Hit"] = game.Players[v].Character.Head}, [2] = {["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-392.481476, -8.44939327, -76.7261353)), ["Distance"] = 3.2699294090271, ["Cframe"] = CFrame.new(840.290466, 101.184189, 2267.93506, 0.0964837447, 0.0589403138, -0.993587971, 4.65661287e-10, 0.998245299, 0.0592165813, 0.995334625, -0.00571343815, 0.0963144377), ["Hit"] = game.Players[v].Character.Head}, [3] = {["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-389.21701, -2.50536323, -92.2163162)), ["Distance"] = 3.1665518283844, ["Cframe"] = CFrame.new(840.338867, 101.236496, 2267.80371, 0.0166504811, 0.0941716284, -0.995416701, 1.16415322e-10, 0.995554805, 0.0941846818, 0.999861419, -0.00156822044, 0.0165764652), ["Hit"] = game.Players[v].Character.Head}, [4] = {["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-393.353973, 3.13988972, -72.5452042)), ["Distance"] = 3.3218522071838, ["Cframe"] = CFrame.new(840.277222, 101.285957, 2267.9707, 0.117109694, 0.118740402, -0.985994935, -1.86264515e-09, 0.992826641, 0.119563118, 0.993119001, -0.0140019981, 0.116269611), ["Hit"] = game.Players[v].Character.Head}, [5] = {["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)), ["Distance"] = 3.222757101059, ["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302), ["Hit"] = game.Players[v].Character.Head}}
local A_2 = game.Players.LocalPlayer.Backpack["Remington 870"]
local Event = game:GetService("ReplicatedStorage").ShootEvent
Event:FireServer(A_1, A_2)
Event:FireServer(A_1, A_2)
end
workspace.Remote.TeamEvent:FireServer(savedteam)
end)

KillAll.MouseButton1Click:Connect(function()
local savedteam = game.Players.LocalPlayer.TeamColor.Name
workspace.Remote.TeamEvent:FireServer("Medium stone grey")
workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)	
for i,v in pairs(game.Players:GetPlayers()) do
local A_1 = {[1] = {["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-391.152252, 8.65560055, -83.2166901)), ["Distance"] = 3.2524313926697, ["Cframe"] = CFrame.new(840.310791, 101.334137, 2267.87988, 0.0636406094, 0.151434347, -0.986416459, 0, 0.988420188, 0.151741937, 0.997972965, -0.00965694897, 0.0629036576), ["Hit"] = v.Character.Head}, [2] = {["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-392.481476, -8.44939327, -76.7261353)), ["Distance"] = 3.2699294090271, ["Cframe"] = CFrame.new(840.290466, 101.184189, 2267.93506, 0.0964837447, 0.0589403138, -0.993587971, 4.65661287e-10, 0.998245299, 0.0592165813, 0.995334625, -0.00571343815, 0.0963144377), ["Hit"] = v.Character.Head}, [3] = {["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-389.21701, -2.50536323, -92.2163162)), ["Distance"] = 3.1665518283844, ["Cframe"] = CFrame.new(840.338867, 101.236496, 2267.80371, 0.0166504811, 0.0941716284, -0.995416701, 1.16415322e-10, 0.995554805, 0.0941846818, 0.999861419, -0.00156822044, 0.0165764652), ["Hit"] = v.Character.Head}, [4] = {["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-393.353973, 3.13988972, -72.5452042)), ["Distance"] = 3.3218522071838, ["Cframe"] = CFrame.new(840.277222, 101.285957, 2267.9707, 0.117109694, 0.118740402, -0.985994935, -1.86264515e-09, 0.992826641, 0.119563118, 0.993119001, -0.0140019981, 0.116269611), ["Hit"] = v.Character.Head}, [5] = {["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)), ["Distance"] = 3.222757101059, ["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302), ["Hit"] = v.Character.Head}}
local A_2 = game.Players.LocalPlayer.Backpack["Remington 870"]
local Event = game:GetService("ReplicatedStorage").ShootEvent
Event:FireServer(A_1, A_2)
Event:FireServer(A_1, A_2)
end
game.Players.LocalPlayer.Character:BreakJoints()
workspace.Remote.TeamEvent:FireServer(savedteam)
end)

Merge.MouseButton1Click:Connect(function()
for i,v in pairs(GetPlayer(Player.Text)) do
repeat
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v].Character.HumanoidRootPart.CFrame
game:GetService("RunService").Heartbeat:Wait()
until game.Players.LocalPlayer.Character.Humanoid.Health == 0
end
end)

Kick.MouseButton1Click:Connect(function()
for i,v in pairs(GetPlayer(Player.Text)) do
workspace.Remote.loadchar:InvokeServer(game.Players.LocalPlayer,game.Players[v].TeamColor.Name)
wait(.1)
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Starting...";
Text = "Now attempting to kick "..v;
Duration = 5;
})
for i=1,10 do
workspace.Remote.votekick:InvokeServer("Start",game.Players[v])
workspace.Remote.votekick:InvokeServer("Vote")
game:GetService("RunService").Stepped:Wait()
end
if not game.Players:FindFirstChild(v) then
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Success!";
Text = v.." has been kicked.";
Duration = 5;
})
end
end
end)

Spectate.MouseButton1Click:Connect(function()
for i,v in pairs(GetPlayer(Player.Text)) do
workspace.CurrentCamera.CameraSubject = game.Players[v].Character.Humanoid
end
end)

Goto.MouseButton1Click:Connect(function()
for i,v in pairs(GetPlayer(Player.Text)) do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v].Character.HumanoidRootPart.CFrame
end
end)

Unspectate.MouseButton1Click:Connect(function()
for i,v in pairs(GetPlayer(Player.Text)) do
workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
end
end)

Sword.MouseButton1Click:Connect(function()
for i,v in pairs(GetPlayer(Player.Text)) do
local Sword = Instance.new("Tool")
local Handle = Instance.new("Part")
local Mesh = Instance.new("SpecialMesh")
local Unsheath = Instance.new("Sound")
local SwordSlash = Instance.new("Sound")
SwordSlash.Name = "SwordSlash"
Unsheath.Name = "Unsheath"
Unsheath.SoundId = "http://www.roblox.com/asset/?id=12222225"
Unsheath.Volume = 1
SwordSlash.SoundId = "http://www.roblox.com/asset/?id=12222216"
SwordSlash.Volume = .7
Unsheath.Parent = Handle
SwordSlash.Parent = Handle
Mesh.Parent = Handle
Mesh.MeshId = "rbxassetid://497078148"
Mesh.Scale = Vector3.new(5,5,5)
Handle.Name = "Handle"
Handle.Parent = Sword
Sword.GripForward = Vector3.new(-1,0,0)
Sword.GripPos = Vector3.new(0,0,-1.5)
Sword.GripRight = Vector3.new(0,1,0)
Sword.GripUp = Vector3.new(0,0,1)
Sword.ToolTip = "Uctron's Sword"
Sword.TextureId = "rbxasset://Textures/Sword128.png"
Sword.CanBeDropped = false
Sword.RequiresHandle = true
Handle.Orientation = Vector3.new(-46.24, 42.14, 50.93)
Handle.Position = Vector3.new(-3.174,1.57,3.04)
Handle.CanCollide = true
Handle.Size = Vector3.new(1,.8,4)
Mesh.MeshId = "rbxasset://fonts/sword.mesh"
Mesh.MeshType = "FileMesh"
Mesh.Offset = Vector3.new(0,0,0)
Mesh.Scale = Vector3.new(1,1,1)
Mesh.TextureId = "rbxasset://textures/SwordTexture.png"
Sword.Equipped:Connect(function()
Unsheath:Play()
end)
Sword.Activated:Connect(function()
SwordSlash:Play()
Handle.Touched:Connect(function(Handle)
p=game.Players:FindFirstChild(Handle.Parent.Name)
game.ReplicatedStorage.meleeEvent:FireServer(p)
end)
local Anim = Instance.new("StringValue")
Anim.Name = "toolanim"
Anim.Value = "Slash"
Anim.Parent = Sword
end)
Mouse_Icon = "rbxasset://textures/GunCursor.png"
Reloading_Icon = "rbxasset://textures/GunWaitCursor.png"
Tool = Sword
Mouse = nil
function UpdateIcon()
if Mouse then
Mouse.Icon = Tool.Enabled and Mouse_Icon or Reloading_Icon
end
end
function OnEquipped(ToolMouse)
Mouse = ToolMouse
UpdateIcon()
end
function OnChanged(Property)
if Property == "Enabled" then
UpdateIcon()
end
end
Tool.Equipped:Connect(OnEquipped)
Tool.Changed:Connect(OnChanged)
Sword.Parent = game.Players.LocalPlayer.Backpack
end
end)