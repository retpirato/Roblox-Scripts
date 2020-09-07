game:GetObjects('rbxassetid://943706273')[1].Parent = game.CoreGui 
gui = game.CoreGui:WaitForChild('perv')
main = gui.main 
open = gui.op 
openb = gui.op.opb
main.close.MouseButton1Click:connect(function() 
	main:TweenPosition(UDim2.new(0, 510,0, -244),'Out', 'Quad', 0.5) 
	wait(0.3) 
	main.Visible = false 
	open.Visible = true 
	open:TweenPosition(UDim2.new(0, 0,0, 694),'Out', 'Quad', 0.5) 
end)
openb.MouseButton1Click:connect(function() 
	open:TweenPosition(UDim2.new(0, -122,0, 662),'Out', 'Quad', 0.5) 
	wait(0.3) 
	open.Visible = false 
    main.Visible = true 
    main:TweenPosition(UDim2.new(0, 513,0, 114),'Out', 'Quad', 0.5) 
end)
if game.Workspace.FilteringEnabled == true then 
	main.fecheck.Text = "Filtering Enabled"
else 
	main.fecheck.Text = "Filtering Disabled"  
end
plrname = game.Players.LocalPlayer.Name 
main.name.Text = ""..plrname..""
main.feb.MouseButton1Click:connect(function() 
	loadstring(game:GetObjects("rbxassetid://943116278")[1].Source)()
end)
main.lp.MouseButton1Click:connect(function() 
	while wait() do 
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100 
		wait() 
	end
end)
main.head.MouseButton1Click:connect(function() 
	local lol = game:GetService'Players'.LocalPlayer.Character
pcall(function()
for i,v in pairs(lol:GetChildren()) do
if v.Name ~= 'Head' and v.Name ~= 'Torso' and v.Name ~= 'HumanoidRootPart' then
v:Destroy()
end
end
local ok = lol:FindFirstChild'Torso'
if ok then ok = ok:FindFirstChild'roblox' if ok then ok:Destroy() end end
Instance.new('Humanoid', lol)
if lol.HumanoidRootPart:FindFirstChild'Rank' then lol.HumanoidRootPart:FindFirstChild'Rank':Destroy() end
local nouxd = lol:FindFirstChild'Torso'
wait'1'
lol.Head.Position = lol.Head.Position + Vector3.new(1,1,1)
if nouxd then nouxd.Transparency = 1 end
wait'.3'
startFly()
end)
end)
main.shutdown.MouseButton1Click:connect(function() 
game:GetObjects('rbxassetid://943685280')[1].Parent = game.CoreGui 
gui = game.CoreGui:WaitForChild('perv')
main = gui.main 
open = gui.op 
openb = gui.op.opb
main.close.MouseButton1Click:connect(function() 
	main:TweenPosition(UDim2.new(0, 510,0, -244),'Out', 'Quad', 0.5) 
	wait(0.3) 
	main.Visible = false 
	open.Visible = true 
	open:TweenPosition(UDim2.new(0, 0,0, 694),'Out', 'Quad', 0.5) 
end)
openb.MouseButton1Click:connect(function() 
	open:TweenPosition(UDim2.new(0, -122,0, 662),'Out', 'Quad', 0.5) 
	wait(0.3) 
	open.Visible = false 
    main.Visible = true 
    main:TweenPosition(UDim2.new(0, 513,0, 114),'Out', 'Quad', 0.5) 
end)
if game.Workspace.FilteringEnabled == true then 
	main.fecheck.Text = "Filtering Enabled"
else 
	main.fecheck.Text = "Filtering Disabled"  
end
plrname = game.Players.LocalPlayer.Name 
main.name.Text = ""..plrname..""
main.feb.MouseButton1Click:connect(function() 
	loadstring(game:GetObjects("rbxassetid://943116278")[1].Source)()
end)
main.lp.MouseButton1Click:connect(function() 
	while wait() do 
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100 
		wait() 
	end
end)
main.head.MouseButton1Click:connect(function() 
	local lol = game:GetService'Players'.LocalPlayer.Character
pcall(function()
for i,v in pairs(lol:GetChildren()) do
if v.Name ~= 'Head' and v.Name ~= 'Torso' and v.Name ~= 'HumanoidRootPart' then
v:Destroy()
end
end
local ok = lol:FindFirstChild'Torso'
if ok then ok = ok:FindFirstChild'roblox' if ok then ok:Destroy() end end
Instance.new('Humanoid', lol)
if lol.HumanoidRootPart:FindFirstChild'Rank' then lol.HumanoidRootPart:FindFirstChild'Rank':Destroy() end
local nouxd = lol:FindFirstChild'Torso'
wait'1'
lol.Head.Position = lol.Head.Position + Vector3.new(1,1,1)
if nouxd then nouxd.Transparency = 1 end
wait'.3'
startFly()
end)
end)
main.shutdown.MouseButton1Click:connect(function() 
for i =1,100 do
spawn(function()
while wait() do
for i,v in pairs(game:GetService'Players':GetPlayers()) do
if v.Character ~= nil and v.Character:FindFirstChild'Head' then
for _,x in pairs(v.Character.Head:GetChildren()) do
if x:IsA'Sound' then x.Playing = true end
end
end
end
end
end)
end
end)
local speed = 50 
local c
local h
local bv
local bav
local cam
local flying
local p = game:GetService'Players'.LocalPlayer
local buttons = {W = false, S = false, A = false, D = false, Moving = false}
local startFly = function ()
if not p.Character or not p.Character.Head or flying then return end
c = p.Character
h = c.Humanoid
h.PlatformStand = true
cam = workspace:WaitForChild('Camera')
bv = Instance.new("BodyVelocity")
bav = Instance.new("BodyAngularVelocity")
bv.Velocity, bv.MaxForce, bv.P = Vector3.new(0, 0, 0), Vector3.new(10000, 10000, 10000), 1000
bav.AngularVelocity, bav.MaxTorque, bav.P = Vector3.new(0, 0, 0), Vector3.new(10000, 10000, 10000), 1000
bv.Parent = c.Head
bav.Parent = c.Head
flying = true
h.Died:connect(function() flying = false end)
end
local endFly = function ()
if not p.Character or not flying then return end
h.PlatformStand = false
bv:Destroy()
bav:Destroy()
flying = false
end
game:GetService("UserInputService").InputBegan:connect(function (input, GPE) 
if GPE then return end
for i, e in pairs(buttons) do
if i ~= "Moving" and input.KeyCode == Enum.KeyCode[i] then
buttons[i] = true
buttons.Moving = true
end
end
end)
game:GetService("UserInputService").InputEnded:connect(function (input, GPE) 
if GPE then return end
local a = false
for i, e in pairs(buttons) do
if i ~= "Moving" then
if input.KeyCode == Enum.KeyCode[i] then
buttons[i] = false
end
if buttons[i] then a = true end
end
end
buttons.Moving = a
end)
local setVec = function (vec)
return vec * (speed / vec.Magnitude)
end
game:GetService("RunService").Heartbeat:connect(function (step)
if flying and c and c.PrimaryPart then
local p = c.PrimaryPart.Position
local cf = cam.CFrame
local ax, ay, az = cf:toEulerAnglesXYZ()
c:SetPrimaryPartCFrame(CFrame.new(p.x, p.y, p.z) * CFrame.Angles(ax, ay, az))
if buttons.Moving then
local t = Vector3.new()
if buttons.W then t = t + (setVec(cf.lookVector)) end
if buttons.S then t = t - (setVec(cf.lookVector)) end
if buttons.A then t = t - (setVec(cf.rightVector)) end
if buttons.D then t = t + (setVec(cf.rightVector)) end
c:TranslateBy(t * step)
end
end
end)
hi.TextButton.fh.MouseButton1Down:Connect(function()
local lol = game:GetService'Players'.LocalPlayer.Character
pcall(function()
for i,v in pairs(lol:GetChildren()) do
if v.Name ~= 'Head' and v.Name ~= 'Torso' and v.Name ~= 'HumanoidRootPart' then
v:Destroy()
end
end
local ok = lol:FindFirstChild'Torso'
if ok then ok = ok:FindFirstChild'roblox' if ok then ok:Destroy() end end
Instance.new('Humanoid', lol)
if lol.HumanoidRootPart:FindFirstChild'Rank' then lol.HumanoidRootPart:FindFirstChild'Rank':Destroy() end
local nouxd = lol:FindFirstChild'Torso'
wait'1'
lol.Head.Position = lol.Head.Position + Vector3.new(1,1,1)
if nouxd then nouxd.Transparency = 1 end
wait'.3'
startFly()
end)
end)
end)
main.e.MouseButton1Click:connect(function() 
	loadstring(game:GetObjects("rbxassetid://943133208")[1].Source)()
end)
main.wasp.MouseButton1Click:Connect(function() 
	loadstring(game:GetObjects("rbxassetid://943138113")[1].Source)()
end)
mouse = game.Players.LocalPlayer:GetMouse()
mouse.Button1Down:connect(function()
    local t = mouse.target:GetFullName()
    game.CoreGui.perv.main.getname.Text = t
end)
main.c.MouseButton1Click:connect(function() 
    loadstring(game:GetObjects("rbxassetid://943216339")[1].Source)()
end)
main.vp.MouseButton1Click:connect(function()
for i,v in pairs(game.Players:GetPlayers()) do
local AnimationId = "248263260"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = v.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end)
main.reach.MouseButton1Click:connect(function() 
for i,v in pairs(game.Players:GetPlayers()) do
local AnimationId = "33796059"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = v.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(90)
end	
end) 
main.e.MouseButton1Click:connect(function() 
	loadstring(game:GetObjects("rbxassetid://943133208")[1].Source)()
end)
main.wasp.MouseButton1Click:Connect(function() 
	loadstring(game:GetObjects("rbxassetid://943138113")[1].Source)()
end)
mouse = game.Players.LocalPlayer:GetMouse()
mouse.Button1Down:connect(function()
    local t = mouse.target:GetFullName()
    game.CoreGui.perv.main.getname.Text = t
end)
main.c.MouseButton1Click:connect(function() 
    loadstring(game:GetObjects("rbxassetid://943216339")[1].Source)()
end)
main.vp.MouseButton1Click:connect(function()
for i,v in pairs(game.Players:GetPlayers()) do
local AnimationId = "248263260"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = v.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end)
main.reach.MouseButton1Click:connect(function() 
for i,v in pairs(game.Players:GetPlayers()) do
local AnimationId = "33796059"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = v.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(90)
end	
end)
print"cool"