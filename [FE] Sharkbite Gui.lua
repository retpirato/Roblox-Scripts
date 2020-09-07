wait(0.1)
--Made by !!!RelentlessRaptor#5709 on discord.
--Please do not take anything from this gui without giving me credit. Thanks!
--Variables
main = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)
main.Name = ("Bite")
tab = Instance.new("Frame",main)
frame = Instance.new("Frame",tab)
close = Instance.new("TextButton",tab)
min = Instance.new("TextButton",tab)
blabel = Instance.new("TextLabel",tab)
btn1 = Instance.new("TextButton",frame)--kill all(shark)
btn2 = Instance.new("TextButton",frame)--fly(e)
btn3 = Instance.new("TextButton",frame)
btn4 = Instance.new("TextButton",frame)
btn5 = Instance.new("TextButton",frame)
btn6 = Instance.new("TextButton",frame)
btn7 = Instance.new("TextButton",frame)--island1
btn8 = Instance.new("TextButton",frame)--island2
btn9 = Instance.new("TextButton",frame)--island3

--Appearance

tab.AnchorPoint = Vector2.new(0.5,0.5)
tab.Position = UDim2.new(0.5,0,0.5,0)
tab.Size = UDim2.new(0,400,0,25)
tab.BorderSizePixel = 0
tab.BackgroundColor3 = Color3.new(1,1,1)
tab.Draggable = true
tab.Active = true

frame.Position = UDim2.new(0,0,0,25)
frame.Size = UDim2.new(0,400,0,263)
frame.BorderSizePixel = 0
frame.BackgroundColor3 = Color3.new(150/255,150/255,150/255)

close.Position = UDim2.new(1,-20,0,0)
close.Size = UDim2.new(0,20,0,20)
close.BorderSizePixel = 0
close.BackgroundColor3 = Color3.new(1,1,1)
close.Text = ("X")
close.Font = ("Arial")
close.TextSize = 15
close.TextColor3 = Color3.new(26/255,26/255,26/255)

min.Position = UDim2.new(1,-40,0,0)
min.Size = UDim2.new(0,20,0,20)
min.BorderSizePixel = 0
min.BackgroundColor3 = Color3.new(1,1,1)
min.Text = ("_")
min.Font = ("Arial")
min.TextSize = 15
min.TextColor3 = Color3.new(26/255,26/255,26/255)

blabel.Position = UDim2.new(0,135,0,8)
blabel.BackgroundTransparency = 1
blabel.Text = ("Shark Bite Gui Beta by RelentlessRaptor")
blabel.TextSize = 10
blabel.TextColor3 = Color3.new(0,0,0)


btn1.Position = UDim2.new(0,5,0,5)
btn1.Size = UDim2.new(0,126,0,80)
btn1.BorderSizePixel = 0
btn1.BackgroundColor3 = Color3.new(100/255,100/255,100/255)
btn1.Text = ("Kill All (Shark)")
btn1.Font = ("Arial")
btn1.TextSize = 20
btn1.TextColor3 = Color3.new(0,0,0)

btn2.Position = UDim2.new(0,136,0,5)
btn2.Size = UDim2.new(0,126,0,80)
btn2.BorderSizePixel = 0
btn2.BackgroundColor3 = Color3.new(100/255,100/255,100/255)
btn2.Text = ("Fly (E)")
btn2.Font = ("Arial")
btn2.TextSize = 20
btn2.TextColor3 = Color3.new(0,0,0)

btn3.Position = UDim2.new(0,267,0,5)
btn3.Size = UDim2.new(0,128,0,80)
btn3.BorderSizePixel = 0
btn3.BackgroundColor3 = Color3.new(100/255,100/255,100/255)
btn3.Text = ("Kill Shark(s)")
btn3.Font = ("Arial")
btn3.TextSize = 20
btn3.TextColor3 = Color3.new(0,0,0)

btn4.Position = UDim2.new(0,5,0,93)
btn4.Size = UDim2.new(0,126,0,80)
btn4.BorderSizePixel = 0
btn4.BackgroundColor3 = Color3.new(100/255,100/255,100/255)
btn4.Text = ("Equip Rocket")
btn4.Font = ("Arial")
btn4.TextSize = 18
btn4.TextColor3 = Color3.new(0,0,0)

btn5.Position = UDim2.new(0,136,0,93)
btn5.Size = UDim2.new(0,126,0,80)
btn5.BorderSizePixel = 0
btn5.BackgroundColor3 = Color3.new(100/255,100/255,100/255)
btn5.Text = ("God Shark(s)")
btn5.Font = ("Arial")
btn5.TextSize = 20
btn5.TextColor3 = Color3.new(0,0,0)

btn6.Position = UDim2.new(0,267,0,93)
btn6.Size = UDim2.new(0,128,0,80)
btn6.BorderSizePixel = 0
btn6.BackgroundColor3 = Color3.new(100/255,100/255,100/255)
btn6.Text = ("btn6")
btn6.Font = ("Arial")
btn6.TextSize = 20
btn6.TextColor3 = Color3.new(0,0,0)

btn7.Position = UDim2.new(0,5,0,178)
btn7.Size = UDim2.new(0,126,0,80)
btn7.BorderSizePixel = 0
btn7.BackgroundColor3 = Color3.new(100/255,100/255,100/255)
btn7.Text = ("Island 1")
btn7.Font = ("Arial")
btn7.TextSize = 20
btn7.TextColor3 = Color3.new(0,0,0)

btn8.Position = UDim2.new(0,136,0,178)
btn8.Size = UDim2.new(0,126,0,80)
btn8.BorderSizePixel = 0
btn8.BackgroundColor3 = Color3.new(100/255,100/255,100/255)
btn8.Text = ("Island 2")
btn8.Font = ("Arial")
btn8.TextSize = 20
btn8.TextColor3 = Color3.new(0,0,0)

btn9.Position = UDim2.new(0,267,0,178)
btn9.Size = UDim2.new(0,128,0,80)
btn9.BorderSizePixel = 0
btn9.BackgroundColor3 = Color3.new(100/255,100/255,100/255)
btn9.Text = ("Island 3")
btn9.Font = ("Arial")
btn9.TextSize = 20
btn9.TextColor3 = Color3.new(0,0,0)

--Buttons / functions

for i, v in pairs(game.Workspace:GetChildren()) do
	if v.Name == ("GAMEROOF") or v.Name == ("SmallIslandBarrier2") or v.Name == ("Barrier")  then
		v:Destroy()
	end
end
for i, v in pairs(game.Workspace.StuffSimonHasntFoldered:GetChildren()) do
	if v.Name == ("SmallIslandBarriers3") or v.Name == ("Model") then
		v:Destroy()
	end
end


close.MouseEnter:connect(function()
	close.BackgroundColor3 = Color3.new(1,0,0)
end)
close.MouseLeave:connect(function()
	close.BackgroundColor3 = Color3.new(1,1,1)
end)
close.MouseButton1Up:connect(function()
	main:Remove()
end)

minid = false
min.MouseButton1Up:connect(function()
	if minid == false then
		frame.Position = UDim2.new(2000,0,0,0)
		minid = true
	else
		frame.Position = UDim2.new(0,0,0,25)
		minid = false
	end
	
end)


btn1.MouseEnter:connect(function()
	btn1.TextColor3 = Color3.new(1,1,1)
	btn1.BackgroundColor3 = Color3.new(135/255, 135/255, 135/255)
end)
btn1.MouseLeave:connect(function()
	btn1.TextColor3 = Color3.new(0,0,0)
	btn1.BackgroundColor3 = Color3.new(100/255, 100/255, 100/255)	
end)
btn1.MouseButton1Down:connect(function()
for i = 1, 5 do
    wait(0.5)
    for i, v in pairs(game.Players:GetChildren()) do
        v.Character.Head.Anchored = true
        v.Character.Head.Position = game.Workspace.Sharks["Shark"..game.Players.LocalPlayer.Name].Body.Position
    end
end
end)

btn2.MouseEnter:connect(function()
	btn2.TextColor3 = Color3.new(1,1,1)
	btn2.BackgroundColor3 = Color3.new(135/255, 135/255, 135/255)
end)
btn2.MouseLeave:connect(function()
	btn2.TextColor3 = Color3.new(0,0,0)
	btn2.BackgroundColor3 = Color3.new(100/255, 100/255, 100/255)	
end)
btn2.MouseButton1Down:connect(function()
	repeat wait()
    until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
local mouse = game.Players.LocalPlayer:GetMouse()
repeat wait() until mouse
local plr = game.Players.LocalPlayer
local torso = plr.Character.Torso
local flying = true
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 50
local speed = 0
 
function Fly()
local bg = Instance.new("BodyGyro", torso)
bg.P = 9e4
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
bg.cframe = torso.CFrame
local bv = Instance.new("BodyVelocity", torso)
bv.velocity = Vector3.new(0,0.1,0)
bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
repeat wait()
plr.Character.Humanoid.PlatformStand = true
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
speed = speed+.5+(speed/maxspeed)
if speed > maxspeed then
speed = maxspeed
end
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
speed = speed-1
if speed < 0 then
speed = 0
end
end
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
else
bv.velocity = Vector3.new(0,0.1,0)
end
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
until not flying
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrl = {f = 0, b = 0, l = 0, r = 0}
speed = 0
bg:Destroy()
bv:Destroy()
plr.Character.Humanoid.PlatformStand = false
end
mouse.KeyDown:connect(function(key)
if key:lower() == "e" then
if flying then flying = false
else
flying = true
Fly()
end
elseif key:lower() == "w" then
ctrl.f = 1
elseif key:lower() == "s" then
ctrl.b = -1
elseif key:lower() == "a" then
ctrl.l = -1
elseif key:lower() == "d" then
ctrl.r = 1
end
end)
mouse.KeyUp:connect(function(key)
if key:lower() == "w" then
ctrl.f = 0
elseif key:lower() == "s" then
ctrl.b = 0
elseif key:lower() == "a" then
ctrl.l = 0
elseif key:lower() == "d" then
ctrl.r = 0
end
end)
Fly()
end)

btn3.MouseEnter:connect(function()
	btn3.TextColor3 = Color3.new(1,1,1)
	btn3.BackgroundColor3 = Color3.new(135/255, 135/255, 135/255)
end)
btn3.MouseLeave:connect(function()
	btn3.TextColor3 = Color3.new(0,0,0)
	btn3.BackgroundColor3 = Color3.new(100/255, 100/255, 100/255)	
end)
btn3.MouseButton1Down:connect(function()
	for _, v in pairs(game.Players:GetChildren()) do
		if v.TeamColor == game.Teams.Shark.TeamColor then
			for i = 1, 10000 do
	   			 game.Workspace.Events.Projectiles.HealthChange:FireServer(v.Name, 20000, i)
			end	
		end
	end
end)

btn4.MouseEnter:connect(function()
	btn4.TextColor3 = Color3.new(1,1,1)
	btn4.BackgroundColor3 = Color3.new(135/255, 135/255, 135/255)
end)
btn4.MouseLeave:connect(function()
	btn4.TextColor3 = Color3.new(0,0,0)
	btn4.BackgroundColor3 = Color3.new(100/255, 100/255, 100/255)	
end)
btn4.MouseButton1Down:connect(function()
	game.Workspace.Events.Shop.ChangeActiveGun:FireServer("Rocket")
end)

btn5.MouseEnter:connect(function()
	btn5.TextColor3 = Color3.new(1,1,1)
	btn5.BackgroundColor3 = Color3.new(135/255, 135/255, 135/255)
end)
btn5.MouseLeave:connect(function()
	btn5.TextColor3 = Color3.new(0,0,0)
	btn5.BackgroundColor3 = Color3.new(100/255, 100/255, 100/255)	
end)
btn5.MouseButton1Down:connect(function()
	for i, v in pairs(game.Players:GetChildren()) do
		if v.TeamColor == game.Teams.Shark.TeamColor then
			for i = 1, 10000 do
				game.Workspace.Events.Projectiles.HealthChange:FireServer(game.Players.LocalPlayer.Name, -200000, i)
			end
		end
	end
end)

btn6.MouseEnter:connect(function()
	btn6.TextColor3 = Color3.new(1,1,1)
	btn6.BackgroundColor3 = Color3.new(135/255, 135/255, 135/255)
end)
btn6.MouseLeave:connect(function()
	btn6.TextColor3 = Color3.new(0,0,0)
	btn6.BackgroundColor3 = Color3.new(100/255, 100/255, 100/255)	
end)
btn6.MouseButton1Down:connect(function()
	
end)

btn7.MouseEnter:connect(function()
	btn7.TextColor3 = Color3.new(1,1,1)
	btn7.BackgroundColor3 = Color3.new(135/255, 135/255, 135/255)
end)
btn7.MouseLeave:connect(function()
	btn7.TextColor3 = Color3.new(0,0,0)
	btn7.BackgroundColor3 = Color3.new(100/255, 100/255, 100/255)	
end)
btn7.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1075.19519, 299.016357, -685.695618, 0.954701662, 3.47420573e-05, -0.297564596, -2.5533247e-05, 0.99999994, 3.47346067e-05, 0.297564596, -2.5510788e-05, 0.954701662)
end)

btn8.MouseEnter:connect(function()
	btn8.TextColor3 = Color3.new(1,1,1)
	btn8.BackgroundColor3 = Color3.new(135/255, 135/255, 135/255)
end)
btn8.MouseLeave:connect(function()
	btn8.TextColor3 = Color3.new(0,0,0)
	btn8.BackgroundColor3 = Color3.new(100/255, 100/255, 100/255)	
end)
btn8.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-460.699707, 267.499939, -697.299988, 1, 3.08505369e-05, -1.1920929e-07, -3.08209055e-05, 0.99999994, 1.45519152e-11, 1.1920929e-07, 5.25978976e-08, 1)
end)

btn9.MouseEnter:connect(function()
	btn9.TextColor3 = Color3.new(1,1,1)
	btn9.BackgroundColor3 = Color3.new(135/255, 135/255, 135/255)
end)
btn9.MouseLeave:connect(function()
	btn9.TextColor3 = Color3.new(0,0,0)
	btn9.BackgroundColor3 = Color3.new(100/255, 100/255, 100/255)	
end)
btn9.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(472.017944, 295.799194, 1189.14563, 0.997364998, 0.0596748926, -0.0412537605, -0.0677004457, 0.969953597, -0.233680651, 0.0260693599, 0.235857844, 0.971437812)
end)