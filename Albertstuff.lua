wait(1)
local plr = game.Players.LocalPlayer
local char = plr.Character
hum=char.Humanoid
for i,v in pairs (char:GetChildren()) do
	if v.Name~="Humanoid" and v.ClassName~="Part" then
		v:Destroy()
	end
end

for i,v in pairs (char:WaitForChild("Head"):GetChildren()) do
	if v.ClassName=="Sound" then
		v:Destroy()
	end
end
spawn(function()
	while wait() do
		char:WaitForChild("Right Arm").BrickColor=BrickColor.new("Cool yellow")
		char:WaitForChild("Left Arm").BrickColor=BrickColor.new("Cool yellow")
		char:WaitForChild("Head").BrickColor=BrickColor.new("Cool yellow")
		char:WaitForChild("Right Leg").BrickColor=BrickColor.new("Medium blue")
		char:WaitForChild("Left Leg").BrickColor=BrickColor.new("Medium blue")
		char:WaitForChild("Torso").BrickColor=BrickColor.new("Bright yellow")
	end
end)
ac = Instance.new("Accessory",workspace)
ac.AttachmentPos=Vector3.new(0, -0.1, 0.2)
o2 = Instance.new("Part")
o3 = Instance.new("SpecialMesh")
o4 = Instance.new("Vector3Value")
o2.Name = "Handle"
o2.Parent = ac
o2.Position = char.Torso.Position
spawn(function()
	repeat
		if ac.Parent~=char then
			o2.Position = char.Torso.Position
		else
			break
		end
		wait()
	until ac.Parent==char
end)
o2.Rotation = Vector3.new(0, -0.75999999, 0)
o2.CanCollide = false
o2.Locked = true
o2.FormFactor = Enum.FormFactor.Custom
o2.Size = Vector3.new(1.60000014, 0.800000012, 1.60000014)
o2.CFrame = CFrame.new(0.128948003, 5.08735895, -0.544525981, 0.999912918, 1.17847014e-26, -0.0131900534, -4.89980362e-24, 1, -3.70551116e-22, 0.013190059, 3.70583553e-22, 0.999912918)
o2.BottomSurface = Enum.SurfaceType.Smooth
o2.TopSurface = Enum.SurfaceType.Smooth
o2.Position = Vector3.new(0.128948003, 5.08735895, -0.544525981)
o3.Parent = o2
o3.MeshId = "http://www.roblox.com/asset/?id=120626701"
o3.Scale = Vector3.new(0.899999976, 0.819999993, 0.819999993)
o3.TextureId = "http://www.roblox.com/asset/?id=120626735"
o3.MeshType = Enum.MeshType.FileMesh
o4.Name = "OriginalSize"
o4.Parent = o2
o4.Value = Vector3.new(1.60000014, 0.800000012, 1.60000014)

















local mouse = plr:GetMouse()
local torso = char.Torso
local RightArm1 = torso["Right Shoulder"]
local LeftArm1 = torso["Left Shoulder"]
local RightLeg1 = torso["Right Hip"]
local LeftLeg1 = torso["Left Hip"]
local Torso1 = char.HumanoidRootPart.RootJoint
local Head1 = torso.Neck

local RightArm = torso["Right Shoulder"]:Clone()
local LeftArm = torso["Left Shoulder"]:Clone()
local RightLeg = torso["Right Hip"]:Clone()
local LeftLeg = torso["Left Hip"]:Clone()
local Torso = char.HumanoidRootPart.RootJoint:Clone()
local Head = torso.Neck:Clone()

RightArm1:Destroy()
LeftArm1:Destroy()
RightLeg1:Destroy()
LeftLeg1:Destroy()
Torso1:Destroy()
Head1:Destroy()

RightArm.Parent=torso
LeftArm.Parent=torso
RightLeg.Parent=torso
LeftLeg.Parent=torso
Head.Parent=torso
Torso.Parent=char.HumanoidRootPart




local animpose = "Idle"
cananim = true
num=0

local attacking = false
if char:FindFirstChildOfClass("Humanoid"):FindFirstChild("Animator") then char:FindFirstChildOfClass("Humanoid").Animator:Destroy() end
if char:FindFirstChild("Animate") then char.Animate:Destroy() end





spawn(function()
	while wait() do
		if torso then
			local velocity=torso.Velocity
			if hum==nil then
				return
			end
			if hum.MoveDirection==Vector3.new(0,0,0) then
				animpose="Idle"
			else
				animpose="Running"
			end
			if velocity.Y>0.5 then
				animpose="Jumping"
			end
			if velocity.Y<-0.5 then
				animpose="Falling"
			end
		end
	end
end)


function sound(id,loop,tim,endtim,eff)
	local s=Instance.new("Sound",char.Torso)
	s.SoundId=id
	if loop==true then
		s.Looped=true
		s.Name="Music"
	else
		s.Volume=2
		if id~="rbxassetid://245537790" and id~='rbxassetid://1179921724' and id~='rbxassetid://1251737869' then
			s.PlaybackSpeed = 1+math.random(-100,100)/1000
		end
	end
	if tim then
		s.TimePosition=tim
	end
	spawn(function()
		if endtim then
			repeat wait() until s.TimePosition==endtim or s.TimePosition>=endtim
			s:Stop()
		end
	end)
	if eff=="echo" then
		spawn(function()
			wait(1)
			local echo=Instance.new("EchoSoundEffect",s)
			echo.Delay=0.05
			echo.WetLevel=11
			echo.DryLevel=-1
		end)
	end
	if eff=="quiet" then
		s.Volume=0.3
	end
	s:Play()
end
--SCREEEEM
function lazor()
	sound("rbxassetid://1251737869",false,5.3,7.7,'echo')
	cananim=false
	for i=1,30 do
		wait(1/60)
		Torso.C1 = Torso.C1:lerp(CFrame.new(0, 0, 0, -0.934085608, 0.339979589, -0.10907802, -0.102499805, 0.0373069048, 0.994033217, 0.342020363, 0.939692557, 0),0.2)
		LeftLeg.C1 = LeftLeg.C1:lerp(CFrame.new(-0.50000006, 0.365961194, 0.435137242, -0.173563123, -0.0313025787, -0.984325111, -0.00543563766, 0.999509931, -0.0308270231, 0.98480773, 0, -0.173648223),0.2)
		RightLeg.C1 = RightLeg.C1:lerp(CFrame.new(0.5, 1, -7.4505806e-09, 0.0094302753, 0.0843551308, 0.996391118, 0.110700019, 0.990222573, -0.0848806128, -0.993809104, 0.111100972, -4.34407745e-08),0.2)
		LeftArm.C1 = LeftArm.C1:lerp(CFrame.new(0.499999881, 0.49999997, 0, 0.686760783, 0.0407644771, -0.725739539, 0.724464417, 0.0430024639, 0.687969565, 0.0592533089, -0.998242974, -2.59004374e-09),0.2)
		RightArm.C1 = RightArm.C1:lerp(CFrame.new(-0.5, -0.0484665036, 2.98023224e-08, -0.31701979, -0.00180978479, 0.948417187, -0.948401749, -0.00541418325, -0.317024946, 0.00570865162, -0.999983728, 2.49531951e-10),0.2)
		Head.C1 = Head.C1:lerp(CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),0.2)
	end

	local keeprunning=true
	spawn(function()
		while wait() do
			local ray = Ray.new(char['Right Arm'].CFrame.p,(mouse.Hit.p-char['Right Arm'].CFrame.p).unit*300)
			local part,position = workspace:FindPartOnRay(ray,char, false, true)
			local distance = (char['Right Arm'].CFrame.p - position).magnitude
			if keeprunning==false then
				break
			end
			if part then
				if part.Parent:FindFirstChild("Humanoid") then
					part:BreakJoints()
					part.Anchored=false

				end
			end
			
			local ex=Instance.new("Explosion",workspace)
			ex.Position=position
			ex.Visible=false
			ex.DestroyJointRadiusPercent=0
			ex.BlastPressure=100001
			ex.BlastRadius=1
			
			local ex=Instance.new("Explosion",workspace)
			ex.Position=position
			ex.Visible=false
			ex.DestroyJointRadiusPercent=0
			ex.BlastPressure=100
			ex.BlastRadius=30
			
			Torso.C1 = Torso.C1:lerp(CFrame.new(0.45384407, 3.25962901e-09, -0.163368881, -0.840329647, -0.538628399, 0.061037913, 0.12248569, -0.0789824352, 0.989322543, -0.528056264, 0.838833332, 0.132345542),0.2)
			LeftLeg.C1 = LeftLeg.C1:lerp(CFrame.new(-0.486327916, 0.918347716, -0.0835282654, -0.139580116, -0.193979532, -0.971024871, -0.210418463, 0.96403873, -0.162337258, 0.967595696, 0.18166253, -0.175377563),0.2)
			RightLeg.C1 = RightLeg.C1:lerp(CFrame.new(0.504761815, 1.01941562, -0.072208859, -0.0534072705, 0.0794541091, 0.995406747, -0.0726492628, 0.993878722, -0.083230041, -0.995926619, -0.0767606497, -0.0473080687),0.2)
			LeftArm.C1 = LeftArm.C1:lerp(CFrame.new(0.5, 0.49999994, -5.96046448e-08, -0.0783533007, -0.155531406, -0.984718561, -0.400697172, 0.909370303, -0.111747369, 0.912854075, 0.385818183, -0.1335731),0.2)
			RightArm.C1 = RightArm.C1:lerp(CFrame.new(-0.267708331, 0.709498703, -0.021721065, -0.500156283, -0.117081404, 0.85798347, -0.864884198, 0.0187412351, -0.501621544, 0.0426508784, -0.992945492, -0.110635392),0.2)
			Head.C1 = Head.C1:lerp(CFrame.new(0, -0.5, 0, -0.951892793, 0.28452459, 0.113780133, 0, -0.371307135, 0.928510129, 0.306431323, 0.883842111, 0.353444576),0.2)

			local beam = Instance.new("Part", char)
			beam.BrickColor = BrickColor.new("Institutional white")
			beam.FormFactor = "Custom"
			beam.Material = "Neon"
			beam.Transparency = 0.5
			beam.Anchored = true
			beam.Locked = true
			beam.CanCollide = false
			beam.Size = Vector3.new(0.3, 0.3, distance)
			beam.CFrame = CFrame.new((char['Right Arm'].CFrame*CFrame.new(0,-3,0)).p, mouse.Hit.p)  * CFrame.new(0, 0, -distance/2)
			spawn(function()
				for i=1,10 do
					beam.Transparency=i/10
					wait()
				end
				beam:Destroy()
			end)
			spawn(function()
				for i=1,20 do
					beam.Size=Vector3.new(i,i,beam.Size.Z)
					wait()
				end
			end)
		end
	end)
	for i=1,10 do
		sound("rbxassetid://245537790",false)
	end
	wait(3)
	keeprunning=false
	cananim=true
end
dodamage=false
deb=false
hum.Touched:connect(function(part)
	local ded=part.Parent:FindFirstChildOfClass("Humanoid")
	if deb==true then
		return
	end
	deb=true
	if ded then
		if dodamage == true then
			ded.Health=ded.Health-(math.random(5,10))
			sound("rbxassetid://386946017",false,0,0.36,'quiet')
			if supermode==true then
				local ex=Instance.new("Explosion",workspace)
				if math.random(1,3) ==1 then
					ex.Visible=false
				end
				ex.DestroyJointRadiusPercent=0
				ex.Position=part.Position
				ex.BlastPressure=1000
				part:BreakJoints()
				part.Anchored=false
			end
		end
	end
	wait(0.1)
	deb=false
end)
function SUPERlazor()
	sound("rbxassetid://1179921724",false,'echo')
	
	wait(2)
	cananim=false
	for i=1,30 do
		wait(1/60)
		Torso.C1 = Torso.C1:lerp(CFrame.new(0, 0, 0, -0.934085608, 0.339979589, -0.10907802, -0.102499805, 0.0373069048, 0.994033217, 0.342020363, 0.939692557, 0),0.2)
		LeftLeg.C1 = LeftLeg.C1:lerp(CFrame.new(-0.50000006, 0.365961194, 0.435137242, -0.173563123, -0.0313025787, -0.984325111, -0.00543563766, 0.999509931, -0.0308270231, 0.98480773, 0, -0.173648223),0.2)
		RightLeg.C1 = RightLeg.C1:lerp(CFrame.new(0.5, 1, -7.4505806e-09, 0.0094302753, 0.0843551308, 0.996391118, 0.110700019, 0.990222573, -0.0848806128, -0.993809104, 0.111100972, -4.34407745e-08),0.2)
		LeftArm.C1 = LeftArm.C1:lerp(CFrame.new(0.499999881, 0.49999997, 0, 0.686760783, 0.0407644771, -0.725739539, 0.724464417, 0.0430024639, 0.687969565, 0.0592533089, -0.998242974, -2.59004374e-09),0.2)
		RightArm.C1 = RightArm.C1:lerp(CFrame.new(-0.5, -0.0484665036, 2.98023224e-08, -0.31701979, -0.00180978479, 0.948417187, -0.948401749, -0.00541418325, -0.317024946, 0.00570865162, -0.999983728, 2.49531951e-10),0.2)
		Head.C1 = Head.C1:lerp(CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),0.2)
	end

	local keeprunning=true
	spawn(function()
		while wait() do
			local ray = Ray.new(char['Right Arm'].CFrame.p,(mouse.Hit.p-char['Right Arm'].CFrame.p).unit*300)
			local part,position = workspace:FindPartOnRay(ray,char, false, true)
			local distance = (char['Right Arm'].CFrame.p - position).magnitude
			if keeprunning==false then
				break
			end
			if part then
				if part.Parent:FindFirstChild("Humanoid") then
					part:BreakJoints()
					part.Anchored=false
					part.Velocity = Vector3.new(math.random(-160,160),math.random(-160,160),math.random(-160,160))
					if math.random(1,3) == 1 then
						part:Destroy()
					end
				end
			end
			
			local ex=Instance.new("Explosion",workspace)
			ex.Position=position
			ex.Visible=false
			ex.DestroyJointRadiusPercent=0
			ex.BlastPressure=100
			ex.BlastRadius=10
			ex.Hit:connect(function(part)
				if part.Parent~=char and part.Parent~=char:WaitForChild("Accessory") then
					part:BreakJoints()
				end
			end)
			if math.random(1,5)==5 then
				sound("rbxassetid://314970761",false)
			end
			Torso.C1 = Torso.C1:lerp(CFrame.new(0.45384407, 3.25962901e-09, -0.163368881, -0.840329647, -0.538628399, 0.061037913, 0.12248569, -0.0789824352, 0.989322543, -0.528056264, 0.838833332, 0.132345542),0.2)
			LeftLeg.C1 = LeftLeg.C1:lerp(CFrame.new(-0.486327916, 0.918347716, -0.0835282654, -0.139580116, -0.193979532, -0.971024871, -0.210418463, 0.96403873, -0.162337258, 0.967595696, 0.18166253, -0.175377563),0.2)
			RightLeg.C1 = RightLeg.C1:lerp(CFrame.new(0.504761815, 1.01941562, -0.072208859, -0.0534072705, 0.0794541091, 0.995406747, -0.0726492628, 0.993878722, -0.083230041, -0.995926619, -0.0767606497, -0.0473080687),0.2)
			LeftArm.C1 = LeftArm.C1:lerp(CFrame.new(0.5, 0.49999994, -5.96046448e-08, -0.0783533007, -0.155531406, -0.984718561, -0.400697172, 0.909370303, -0.111747369, 0.912854075, 0.385818183, -0.1335731),0.2)
			RightArm.C1 = RightArm.C1:lerp(CFrame.new(-0.267708331, 0.709498703, -0.021721065, -0.500156283, -0.117081404, 0.85798347, -0.864884198, 0.0187412351, -0.501621544, 0.0426508784, -0.992945492, -0.110635392),0.2)
			Head.C1 = Head.C1:lerp(CFrame.new(0, -0.5, 0, -0.951892793, 0.28452459, 0.113780133, 0, -0.371307135, 0.928510129, 0.306431323, 0.883842111, 0.353444576),0.2)

			local beam = Instance.new("Part", char)
			local colorz = {"Really red","Gold","Lime green","Really blue","Royal purple"}
			beam.BrickColor = BrickColor.new(colorz[math.random(1,#colorz)])
			beam.FormFactor = "Custom"
			beam.Material = "Neon"
			beam.Transparency = 0.5
			beam.Anchored = true
			beam.Locked = true
			beam.CanCollide = false
			beam.Size = Vector3.new(0.3, 0.3, distance)
			beam.CFrame = CFrame.new((char['Right Arm'].CFrame*CFrame.new(0,-3,0)).p, mouse.Hit.p)  * CFrame.new(0, 0, -distance/2)
			spawn(function()
				while beam do
					if beam==nil then break end
					beam.Anchored=true
					swait()
				end
			end)
			spawn(function()
				for i=1,10 do
					beam.Transparency=i/10
					beam.CFrame=beam.CFrame*CFrame.new(0,0,-i/10)
					wait()
				end
				beam:Destroy()
			end)
			spawn(function()
				for i=5,70, 3 do
					beam.Size=Vector3.new(i,i,beam.Size.Z)
					wait()
				end
			end)
		end
	end)
	for i=1,10 do
		sound("rbxassetid://314970761",false)
	end
	wait(6)
	keeprunning=false
	cananim=true
end


mouse.Button1Down:connect(function()
	normpunch()
end)


supermode=false
mouse.KeyDown:connect(function(key)
	local k=string.lower(key)
	if attacking==true then
		return
	end
	if k=="q" then
		attacking=true
		if supermode==false then
			lazor()
		else
			SUPERlazor()
		end
		attacking=false
	end
	if k=="l" then
		transition()
	end
end)

punch = 1
function normpunch()
	if attacking==true then
		return
	end
	dodamage=true
	attacking=true
	cananim=false
	sound("rbxassetid://138097048",false)
	if punch==1 then
		for i=1,10 do
			Torso.C1 = Torso.C1:lerp(CFrame.new(0, 0, 0, -0.910118103, -0.41434893, 0, 0, 0, 1, -0.41434893, 0.910118103, 0),0.3)
			LeftLeg.C1 = LeftLeg.C1:lerp(CFrame.new(-0.5, 1, 3.7252903e-09, 0.00116646651, 0.0136213535, -0.99990654, 0.023496937, 0.999630809, 0.0136450082, 0.999723256, -0.0235106573, 0.000845975766),0.3)
			RightLeg.C1 = RightLeg.C1:lerp(CFrame.new(0.5, 1, 4.65661287e-10, -4.35437997e-08, 0.0874831304, 0.996165991, 0.00556585658, 0.996150553, -0.0874817744, -0.999984503, 0.00554451346, -0.000486961944),0.3)
			LeftArm.C1 = LeftArm.C1:lerp(CFrame.new(0.5, 0.5, 0, 0.0391717218, -0.188973963, -0.981200516, -0.199156061, 0.960776389, -0.192991138, 0.979184568, 0.202971816, -4.2801517e-08),0.3)
			RightArm.C1 = RightArm.C1:lerp(CFrame.new(-0.312758863, 0.804995358, -0.0404221117, -0.349137038, 0.0591336042, 0.935203969, -0.937045753, -0.0294431858, -0.347962916, 0.0069590779, -0.997815788, 0.0656905994),0.3)
			Head.C1 = Head.C1:lerp(CFrame.new(0, -0.5, 0, -0.957687616, 0.287809789, 0, 0, 0, 1, 0.287809789, 0.957687616, 0),0.3)
			swait()
		end
	end
	
	if punch==2 then
		for i=1,10 do
			swait()
			Torso.C1 = Torso.C1:lerp(CFrame.new(0, 0, 0, -0.983417749, -0.116297476, 0.139156267, 0.140106976, 0, 0.990136385, -0.115150362, 0.993214428, 0.0162940882),0.3)
			LeftLeg.C1 = LeftLeg.C1:lerp(CFrame.new(-0.5, 0.86816901, 0, -4.32735874e-08, -0.141177684, -0.989984274, -6.17107254e-09, 0.989984274, -0.141177684, 1, 0, -4.37113883e-08),0.3)
			RightLeg.C1 = RightLeg.C1:lerp(CFrame.new(0.5, 1.23575175, 0.176770806, -0.0336775407, -0.11687994, 0.992574871, -0.983614028, 0.179874539, -0.0121925017, -0.177113876, -0.976721108, -0.12102247),0.3)
			LeftArm.C1 = LeftArm.C1:lerp(CFrame.new(0.5, 0.49999994, 0, -4.33072991e-08, -0.135659724, -0.990755498, -0.144958332, 0.98029089, -0.134226859, 0.989437759, 0.143618271, -0.0196650494),0.3)
			RightArm.C1 = RightArm.C1:lerp(CFrame.new(-0.5, 0.49999997, 0, 0.0339012295, 0.115021303, 0.992784381, 0.280674934, 0.952282727, -0.119913273, -0.959203959, 0.282714903, -4.19281356e-08),0.3)
			Head.C1 = Head.C1:lerp(CFrame.new(0, -0.5, 0, -1, 0, 0, 0, -0.0711001009, 0.997469187, 0, 0.997469187, 0.0711001009),0.3)
		end
	end
	
	if punch==3 then
		for i=1,10 do
			swait()
			Torso.C1 = Torso.C1:lerp(CFrame.new(0, 0, 0, -0.93749547, 0.347997427, 0, 0, 0, 1, 0.347997427, 0.93749547, 0),0.3)
			LeftLeg.C1 = LeftLeg.C1:lerp(CFrame.new(-0.50000006, 1, 0, 0.0109365005, -0.0829221606, -0.996496022, -0.130298764, 0.98794055, -0.083640255, 0.991414428, 0.13075693, -4.33361009e-08),0.3)
			RightLeg.C1 = RightLeg.C1:lerp(CFrame.new(0.49999997, 1, -3.7252903e-09, 0.114501342, 0.0127837732, 0.99334085, 5.62495939e-10, 0.999917209, -0.0128684072, -0.993423104, 0.00147345045, 0.114491865),0.3)
			LeftArm.C1 = LeftArm.C1:lerp(CFrame.new(0.352809936, 1.3686024, 0.0138391852, -4.37113883e-08, 0, -1, 0.999440074, -0.0334585831, -4.36869136e-08, -0.0334585831, -0.999440074, 1.4625211e-09),0.3)
			RightArm.C1 = RightArm.C1:lerp(CFrame.new(-0.5, 0.5, 0, -4.33629381e-08, 0.126015082, 0.992028356, 0.172522247, 0.97715348, -0.124125555, -0.985005617, 0.171146959, -0.0217404477),0.3)
			Head.C1 = Head.C1:lerp(CFrame.new(0, -0.5, 0, -1, 0, 0, 0, -0.07533779, 0.997158051, 0, 0.997158051, 0.07533779),0.3)
		end
	end
	if punch~=3 then
		punch=punch+1
	else
		punch=1
	end
	cananim=true
	dodamage=false
	attacking=false
end



---transiton
function transition()
	if supermode==false then
		sound("rbxassetid://1321047607",false,0,5)
		
		cananim=false
		attacking=true
		local stord = false
		spawn(function()
			wait(3)
			stord=true
		end)
		local ParticleEmitter0 = Instance.new("ParticleEmitter")
		ParticleEmitter0.Parent = torso
		ParticleEmitter0.Transparency = NumberSequence.new(0.20000000298023,0.20000000298023)
		ParticleEmitter0.Size = NumberSequence.new(3.2240438461304,1.0928964614868,3.7158470153809,0)
		ParticleEmitter0.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
		ParticleEmitter0.Texture = "http://www.roblox.com/asset/?id=232918622"
		ParticleEmitter0.Lifetime = NumberRange.new(3)
		ParticleEmitter0.Rate = 1000
		ParticleEmitter0.VelocitySpread = 180
		ParticleEmitter0.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
		repeat
			Torso.C1 = Torso.C1:lerp(CFrame.new(0, 0.787846208, 0.138918549, -1, 0, 0, 0, -0.173648179, 0.98480773, 0, 0.98480773, 0.173648179),0.2)
			LeftLeg.C1 = LeftLeg.C1:lerp(CFrame.new(-0.45286727, 0.316941619, 0.628786147, -4.36354597e-08, -0.058915928, -0.998262942, 0.21313341, 0.975326002, -0.0575622357, 0.977023065, -0.21276319, 0.0125569087),0.2)
			RightLeg.C1 = RightLeg.C1:lerp(CFrame.new(0.5, 0.627124608, -0.0240803957, -4.37113883e-08, 0, 1, 0.551679194, 0.834056437, 2.4114664e-08, -0.834056437, 0.551679194, -3.6457763e-08),0.2)
			LeftArm.C1 = LeftArm.C1:lerp(CFrame.new(0.5, 0.5, 0, 0.774880886, 0.296248376, -0.558387458, 0.52156949, 0.199403673, 0.829580307, 0.357106328, -0.934063733, -1.56096132e-08),0.2)
			RightArm.C1 = RightArm.C1:lerp(CFrame.new(-0.5, 0.5, 0, -0.00304316962, 0.0175396204, 0.999841511, -0.170919135, 0.985124171, -0.0178016629, -0.985280335, -0.170946226, -4.30679705e-08),0.2)
			Head.C1 = Head.C1:lerp(CFrame.new(0, -0.5, 0, -1, 0, 0, 0, -0.362809777, 0.931863308, 0, 0.931863308, 0.362809777),0.2)
			swait()
		until stord==true
		sound("rbxassetid://245537790",false)
		ParticleEmitter0.Speed=NumberRange.new(50)
		local mas = char
		local CharacterMesh0 = Instance.new("CharacterMesh")
		local CharacterMesh1 = Instance.new("CharacterMesh")
		local CharacterMesh2 = Instance.new("CharacterMesh")
		local CharacterMesh3 = Instance.new("CharacterMesh")
		local CharacterMesh4 = Instance.new("CharacterMesh")
		CharacterMesh0.Name = "GirlRocker   Left Arm"
		CharacterMesh0.Parent = mas
		CharacterMesh0.MeshId = 717353151
		CharacterMesh0.BodyPart = Enum.BodyPart.LeftArm
		CharacterMesh0.OverlayTextureId = 717346901
		CharacterMesh1.Name = "GirlRocker   Right Arm"
		CharacterMesh1.Parent = mas
		CharacterMesh1.MeshId = 717353483
		CharacterMesh1.BodyPart = Enum.BodyPart.RightArm
		CharacterMesh1.OverlayTextureId = 717346901
		CharacterMesh2.Name = "GirlRocker   Right Leg"
		CharacterMesh2.Parent = mas
		CharacterMesh2.MeshId = 717353619
		CharacterMesh2.BodyPart = Enum.BodyPart.RightLeg
		CharacterMesh2.OverlayTextureId = 717346901
		CharacterMesh3.Name = "GirlRocker   Torso"
		CharacterMesh3.Parent = mas
		CharacterMesh3.MeshId = 717353723
		CharacterMesh3.BodyPart = Enum.BodyPart.Torso
		CharacterMesh3.OverlayTextureId = 717346901
		CharacterMesh4.Name = "GirlRocker Left Leg"
		CharacterMesh4.Parent = mas
		CharacterMesh4.MeshId = 717353920
		CharacterMesh4.BodyPart = Enum.BodyPart.LeftLeg
		CharacterMesh4.OverlayTextureId = 717346901
		for i=1,90 do
			Torso.C1 = Torso.C1:lerp(CFrame.new(0, -1.06972265, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),0.2)
			LeftLeg.C1 = LeftLeg.C1:lerp(CFrame.new(-0.5, 1, 0, -4.37113883e-08, 0, -1, -0.0906665474, 0.995881319, 3.96316047e-09, 0.995881319, 0.0906665474, -4.35313545e-08),0.2)
			RightLeg.C1 = RightLeg.C1:lerp(CFrame.new(0.5, 1, 0, -4.37113883e-08, 0, 1, 0.0595862567, 0.998223186, 2.60459809e-09, -0.998223186, 0.0595862567, -4.36337224e-08),0.2)
			LeftArm.C1 = LeftArm.C1:lerp(CFrame.new(0.5, 0.5, 0, -4.34208935e-08, -0.115096748, -0.993354261, -5.0310387e-09, 0.993354261, -0.115096748, 1, 0, -4.37113883e-08),0.2)
			RightArm.C1 = RightArm.C1:lerp(CFrame.new(-0.5, 0.5, 0, -4.36014211e-08, 0.0708893314, 0.997484207, 3.0986711e-09, 0.997484207, -0.0708893314, -1, 0, -4.37113883e-08),0.2)
			Head.C1 = Head.C1:lerp(CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0.249942318, 0.968260705, 0, 0.968260705, -0.249942318),0.2)
			swait()
		end
		ParticleEmitter0.Enabled=false
        supermode=true
        cananim=true
        attacking=false
	end
end











function swait(t)
	if t == nil or t == 0 then
		game:service('RunService').Stepped:wait(0)
		return true
	else
		for i = 0, t do
			game:service('RunService').Stepped:wait(0)
		end
		return true
	end
end

function scream()
	sound("rbxassetid://444895479",false,5.3509586219885250102)
	cananim = false
	for i=0,1.5, 0.1 do
		swait()
	end
	
	attacking=true
	for i=0,1.5, 0.1 do
		swait()
	end
	wait()
	cananim = true
	attacking=false
end


spawn(function()
	while swait() do
		if animpose=="Idle" then
			for i=0,0.1,0.0025 do
				if animpose == "Idle" and cananim then
					swait()
					LeftArm.C1 = LeftArm.C1:lerp(CFrame.new(0.500000238, 0.500000238, -2.38418579e-07, 0.000574484526, -0.0482845455, -0.998833477, -0.00805476494, 0.998800993, -0.0482876077, 0.999967396, 0.0080731092, 0.000184875054),i)
						RightArm.C1 = RightArm.C1:lerp(CFrame.new(-0.50000006, 0.500000238, 0, -0.000810533762, 0.0540908612, 0.998535693, -0.00984518789, 0.998487175, -0.0540962256, -0.999951184, -0.00987461861, -0.000276772887),i)
				else
					break
				end
			end
			for i=0,0.1,0.0025 do
				if animpose == "Idle" and cananim then
					swait()
					LeftArm.C1 = LeftArm.C1:lerp(CFrame.new(0.50000006, 0.50000006, -9.47312119e-16, -4.35179714e-08, -0.0939683169, -0.99557513, -4.10748546e-09, 0.99557513, -0.0939683169, 1, 0, -4.37113883e-08),i)
					RightArm.C1 = RightArm.C1:lerp(CFrame.new(-0.5, 0.5, -1.77635684e-15, -4.34464624e-08, 0.109930925, 0.993939221, 4.80523354e-09, 0.993939221, -0.109930925, -1, 0, -4.37113883e-08),i)
				else
					break
				end
			end
		end
	end
end)

while swait() do
	num = num + 0.05
	local sin = math.sin(num)
	if animpose == "Falling" and cananim then
		Torso.C1 = Torso.C1:lerp(CFrame.new(0, 0, 0, -1, 0, 0, 0, -0.089640595, 0.995974183, 0, 0.995974183, 0.089640595),0.2)
		LeftLeg.C1 = LeftLeg.C1:lerp(CFrame.new(-0.5, 0.940049231, 0.240459353, -4.37113883e-08, 0, -1, 0.0583860278, 0.998294055, -2.55213428e-09, 0.998294055, -0.0583860278, -4.36368204e-08),0.2)
		RightLeg.C1 = RightLeg.C1:lerp(CFrame.new(0.5, 1, 0, -4.37113883e-08, 0, 1, 0.144062787, 0.989568532, 6.29718455e-09, -0.989568532, 0.144062787, -4.32554152e-08),0.2)
		LeftArm.C1 = LeftArm.C1:lerp(CFrame.new(0.5, 0.635436773, 0, -4.28449951e-08, -0.198112398, -0.98017925, -8.65976801e-09, 0.98017925, -0.198112398, 1, 0, -4.37113883e-08),0.2)
		RightArm.C1 = RightArm.C1:lerp(CFrame.new(-0.5, 0.599987805, 0, -4.26205062e-08, 0.222013503, 0.975043535, 9.70451808e-09, 0.975043535, -0.222013503, -1, 0, -4.37113883e-08),0.2)
		Head.C1 = Head.C1:lerp(CFrame.new(0, -0.5, 0, -1, 0, 0, 0, -0.231759518, 0.972773135, 0, 0.972773135, 0.231759518),0.2)
	end


	if animpose == "Idle" and cananim then
		for i=0,0.1,0.001 do
			if animpose == "Idle" and cananim then
				swait()
				Torso.C1 = Torso.C1:lerp(CFrame.new(0, 0.200000048, 0, -0.98480767, -0.173648626, 0, 0, 0, 1, -0.173648626, 0.98480767, 0),i)
				LeftLeg.C1 = LeftLeg.C1:lerp(CFrame.new(-0.506504774, 0.77988106, 0.0818042755, 0.00300081098, -0.0723684728, -0.997373462, -0.186295643, 0.979876935, -0.0716594532, 0.982489169, 0.186021373, -0.0105415061),i)
				RightLeg.C1 = RightLeg.C1:lerp(CFrame.new(0.485123575, 0.800115585, 0.135903358, -0.000153154135, -0.00734659936, 0.999972999, -0.0196102634, 0.999780715, 0.0073421835, -0.999807715, -0.0196086094, -0.000297189312),i)
				Head.C1 = Head.C1:lerp(CFrame.new(0, -0.5, 0, -0.98480767, 0.173648402, 0, 0, 0, 1, 0.173648402, 0.98480767, 0),i)
				i=i/2
			else
				break
			end
		end
		for i=0,0.1,0.001 do
			if animpose == "Idle" and cananim then
				swait()
				Torso.C1 = Torso.C1:lerp(CFrame.new(0, 0, 0, -0.98480767, -0.173648626, 0, 0, 0, 1, -0.173648626, 0.98480767, 0),i)
				LeftLeg.C1 = LeftLeg.C1:lerp(CFrame.new(-0.49999994, 1, 0, -4.3619707e-08, -0.0647336245, -0.997902572, -0.143231794, 0.98761338, -0.0640661567, 0.989689171, 0.142931372, -0.00927195605),i)
				RightLeg.C1 = RightLeg.C1:lerp(CFrame.new(0.5, 1.00000012, 0.0391067117, -4.37113883e-08, 0, 1, -0.0612497553, 0.998122454, -2.67731193e-09, -0.998122454, -0.0612497553, -4.3629317e-08),i)
				Head.C1 = Head.C1:lerp(CFrame.new(0, -0.5, 0, -0.98480767, 0.173648402, 0, 0, 0, 1, 0.173648402, 0.98480767, 0),i)
				i=i/2
			else
				break
			end
		end
	end
	if animpose == "Running" and cananim then
		for i = 0, 0.25, 0.01 do
			if animpose == "Running" and cananim then
				Torso.C1 = Torso.C1:lerp(CFrame.new(0, 0, 0, -1, 0, 0, 0, -0.0358745977, 0.99935627, 0, 0.99935627, 0.0358745977),i)
				LeftLeg.C1 = LeftLeg.C1:lerp(CFrame.new(-0.5, 0.999999821, 8.94069672e-08, -4.37113883e-08, 0, -1, 0.342020363, 0.939692557, -1.49501851e-08, 0.939692557, -0.342020363, -4.10752676e-08),i)
				RightLeg.C1 = RightLeg.C1:lerp(CFrame.new(0.5, 1.00000024, 5.96046448e-08, -4.37113883e-08, 0, 1, 0.500000179, 0.866025269, 2.18557012e-08, -0.866025269, 0.500000179, -3.78551661e-08),i)
				LeftArm.C1 = LeftArm.C1:lerp(CFrame.new(0.5, 0.5, -2.98023224e-08, -4.37113883e-08, 0, -1, -0.5, 0.866025388, 2.18556941e-08, 0.866025388, 0.5, -3.78551732e-08),i)
				RightArm.C1 = RightArm.C1:lerp(CFrame.new(-0.5, 0.5, -1.49011612e-08, -4.37113883e-08, 0, 1, -0.5, 0.866025388, -2.18556941e-08, -0.866025388, -0.5, -3.78551732e-08),i)
				Head.C1 = Head.C1:lerp(CFrame.new(0, -0.5, 0, -1, 0, 0, 0, -0.106743492, 0.994286597, 0, 0.994286597, 0.106743492),i)
				swait()
				i=i/i*1.5
			else
				break
			end
		end
		for i = 0, 0.25, 0.01 do
			if animpose == "Running" and cananim then
				Torso.C1 = Torso.C1:lerp(CFrame.new(0, 0, 0, -0.999985278, 0, -0.00542885857, -0.00542835938, -0.0135572571, 0.999893367, -7.36004295e-05, 0.99990809, 0.0135570578),i)
				LeftLeg.C1 = LeftLeg.C1:lerp(CFrame.new(-0.5, 0.999999821, -1.1920929e-07, -4.37113883e-08, 0, -1, -0.499999791, 0.866025567, 2.18556853e-08, 0.866025567, 0.499999791, -3.78551803e-08),i)
				RightLeg.C1 = RightLeg.C1:lerp(CFrame.new(0.5, 1.00000012, -2.38418579e-07, -4.37113883e-08, 0, 1, -0.342020005, 0.939692616, -1.49501691e-08, -0.939692616, -0.342020005, -4.10752676e-08),i)
				LeftArm.C1 = LeftArm.C1:lerp(CFrame.new(0.5, 0.483990371, 0.00582697988, -4.37113883e-08, 0, -1, 0.57357651, 0.819151998, -2.50718255e-08, 0.819151998, -0.57357651, -3.58062699e-08),i)
				RightArm.C1 = RightArm.C1:lerp(CFrame.new(-0.5, 0.49999997, -2.98023224e-08, -4.37113883e-08, 0, 1, 0.500000179, 0.866025329, 2.18557012e-08, -0.866025329, 0.500000179, -3.78551697e-08),i)
				Head.C1 = Head.C1:lerp(CFrame.new(0, -0.5, 0, -1, 0, 0, 0, -0.103604339, 0.994618595, 0, 0.994618595, 0.103604339),i)
				swait()
				i=i/i*1.5
			else
				break
			end
		end
	end

	if animpose == "Jumping" and cananim then
		Torso.C1 = Torso.C1:lerp(CFrame.new(0, 0, 0, -1, 0, 0, 0, -0.082511276, 0.996590137, 0, 0.996590137, 0.082511276),0.2)
		LeftLeg.C1 = LeftLeg.C1:lerp(CFrame.new(-0.495160788, 0.605178833, 0.315436631, 0.00363327051, -0.0117048975, -0.999924898, -0.296433508, 0.95497489, -0.012255826, 0.955046594, 0.296455771, -4.17464108e-08),0.2)
		RightLeg.C1 = RightLeg.C1:lerp(CFrame.new(0.5, 1, 0, -4.37113883e-08, 0, 1, 0.10612049, 0.994353294, 4.63867389e-09, -0.994353294, 0.10612049, -4.34645635e-08),0.2)
		LeftArm.C1 = LeftArm.C1:lerp(CFrame.new(0.5, 0.5, 0, -4.36747598e-08, -0.0409301594, -0.999162018, -1.78911408e-09, 0.999162018, -0.0409301594, 1, 0, -4.37113883e-08),0.2)
		RightArm.C1 = RightArm.C1:lerp(CFrame.new(-0.5, 0.5, 0, -4.36556142e-08, 0.0504997671, 0.998724043, 2.20741492e-09, 0.998724043, -0.0504997671, -1, 0, -4.37113883e-08),0.2)
		Head.C1 = Head.C1:lerp(CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0.106113546, 0.99435401, 0, 0.99435401, -0.106113546),0.2)
	end
end