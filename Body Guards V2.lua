-- Location: Players.Cronizete.Character.BODYGUARDSV2
-- Synapse Decompiler
-- Purchase Here: https://brack4712.xyz/synapse/purchase

--// Controls
--// X = Summon a bodyguard
--// M = Change Types of bodyguards (Snipers, riflers) Sniper is the default
--// Q = Aim
--// C = Makes all the bodyguards disappear.
--// Click = Shoot (You have to aim at somebody for snipers, you don't have to for the rifles)

plr = game:service'Players'.LocalPlayer
char = plr.Character

--// Anti double
script.Name = "BODYGUARDSV2_TEMP"
for _, a in pairs(char:GetDescendants()) do
	if a.Name == "BODYGUARDSV2" then
		a:Destroy()
	elseif a.Name == "" then
		a:Destroy()
	end
end
script.Name = "BODYGUARDSV2"
--// Main Script

head = char.Head
mouse = plr:GetMouse()
sam = 0
char.Archivable = true
arms = nil
torso = nil
follow = false
current = nil
curfollow = nil
rifleshoot = false
targ, huma = nil,nil

--// points
point1 = Instance.new('Part', char)
point1.Anchored = false
point1.CanCollide = false
point1.Transparency = 1
point1.Size = Vector3.new(0.2,0.2,0.2)

Weld = Instance.new("Weld",game.Players.LocalPlayer.Character)
Weld.Part0 = game.Players.LocalPlayer.Character["Torso"]
Weld.Part1 = point1
Weld.C1 = CFrame.new(10, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)

point2 = Instance.new('Part', char)
point2.Anchored = false
point2.CanCollide = false
point2.Transparency = 1
point2.Size = Vector3.new(0.2,0.2,0.2)

Weld = Instance.new("Weld",game.Players.LocalPlayer.Character)
Weld.Part0 = game.Players.LocalPlayer.Character["Torso"]
Weld.Part1 = point2
Weld.C1 = CFrame.new(-10, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
--// points

--// Configuration

max = 15
max1 = 2
maxammo = 30
mode = "Snipers"

--//

snipers,riflers,welds = {},{},{}

skinc = {
	'Rust',
	'Cool yellow',
	'Br. yellowish orange',
	'Pastel yellow',
	'CGA brown'
}

props = {
	'HeadColor',
	'LeftArmColor',
	'RightArmColor',
	'TorsoColor',
	'RightLegColor',
	'LeftLegColor'
}

snpr = char:Clone()
snpr.Name = ""

for _, a in pairs(snpr:children()) do
	if a:IsA'CharacterMesh' or a:IsA'Accessory' or a:IsA'Shirt' or a:IsA'Pants' then
		a:Destroy()
	end
end

snpr.Parent = nil

bg = Instance.new("BodyGyro", snpr.HumanoidRootPart)
bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
bg.Name = "FOLLOW"
bg.P = 10000
bg.D = 100

sfx = Instance.new('Sound', snpr.Head)
sfx.SoundId = "rbxassetid://740599871"
sfx.Volume = 3
sfx2 = Instance.new('Sound', snpr)
sfx2.Name = "SNIPERSOUND"
sfx2.SoundId = "rbxassetid://136523485"
sfx2.Volume = 3

lazor = Instance.new('Part', snpr)
lazor.Name = "Laser"
lazor.Anchored = true
lazor.Shape = Enum.PartType.Ball
lazor.Size = Vector3.new(0.3,0.3,0.3)
lazor.BrickColor = BrickColor.new('Really red')
lazor.Transparency = 0.4
lazor.CanCollide = false

shirt = Instance.new('Shirt', snpr)
shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=139465409"
pants = Instance.new('Pants', snpr)
pants.PantsTemplate = "http://www.roblox.com/asset/?id=139466214"
----------------------------------------------------------------
hat = Instance.new('Part', snpr)
hat.Name = 'Hat'
hat.Anchored = false
hat.CanCollide = false
mesh = Instance.new('SpecialMesh', hat)
mesh.MeshId = "http://www.roblox.com/asset/?id=31152467"
mesh.TextureId = "http://www.roblox.com/asset/?id=32002857"
mesh.Scale = Vector3.new(1,1,1)
weld = Instance.new('Weld', hat)
weld.Part0 = hat
weld.Part1 = snpr.Head
weld.C0 = CFrame.new(0,-0.2,0)
--------------------------------------------
sniper = Instance.new('Part', snpr)
sniper.Anchored = false
sniper.CanCollide = false
sniper.Name = "Sniper"
sniper.Size = Vector3.new(7.88, 1.77, 1)
mesh = Instance.new('SpecialMesh', sniper)
mesh.MeshId = "rbxassetid://462309398"
mesh.TextureId = "rbxassetid://462309404"
mesh.Scale = Vector3.new(0.006, 0.006, 0.006)
weld = Instance.new('Weld', sniper)
weld.Part0 = sniper
weld.Part1 = snpr.Head
weld.C0 = CFrame.new(-2,0.5,-0.2) * CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0))

arms = {snpr:FindFirstChild("Left Arm"), snpr:FindFirstChild("Right Arm")}
torso = snpr:FindFirstChild("Torso")

if arms ~= nil and torso ~= nil then
	local sh = {torso:FindFirstChild("Left Shoulder"), torso:FindFirstChild("Right Shoulder")}
	if sh ~= nil then
		local yes = true
		if yes then
			yes = false
			sh[1].Part1 = nil
			sh[2].Part1 = nil
			local weld1 = Instance.new("Weld")
			weld1.Part0 = torso
			weld1.Parent = torso
			weld1.Part1 = arms[1]
			weld1.C1 = CFrame.new(-0.249, 1.35, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
			welds[1] = weld1
			local weld2 = Instance.new("Weld")
			weld2.Part0 = torso
			weld2.Parent = torso
			weld2.Part1 = arms[2]
			weld2.C1 = CFrame.new(-1, -0.2, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-15), 0)
			welds[2] = weld2
		end
	end
end

function sniper(pos)
	if sam <= max - 1 then
		local sniper = snpr:Clone()
		local bodyc = sniper:FindFirstChildOfClass'BodyColors'
		local skincolor = skinc[math.random(1,5)]
		
		for _, a in pairs(props) do
			bodyc[a] = BrickColor.new(skincolor)
		end
		
		sniper.Parent = char
		sniper:MoveTo(pos)
		sniper.Torso.CFrame = CFrame.new(sniper.Torso.Position, head.Position)
		table.insert(snipers, sniper)
		sam = sam + 1
	end
end

function rifler(pos)
	if sam <= max1 - 1 then
		local rifler = snpr:Clone()
		local bodyc = rifler:FindFirstChildOfClass'BodyColors'
		local skincolor = skinc[math.random(1,5)]
		
		for _, a in pairs(props) do
			bodyc[a] = BrickColor.new(skincolor)
		end
		
		for _, a in pairs(rifler:GetDescendants()) do
			if a:IsA'BodyGyro' then
				a:Destroy()
			end
		end
		
		rifler.Parent = char
		rifler:MoveTo(pos)
		rifler.Torso.CFrame = CFrame.new(rifler.Torso.Position, head.Position)
		rifler:FindFirstChild'SNIPERSOUND'.Pitch = 1.2
		rifle = rifler:FindFirstChild'Sniper'
		rifle.Name = "Rifle"
		rifle:FindFirstChildOfClass'SpecialMesh'.TextureId = "rbxassetid://546505949"
		rifle:FindFirstChildOfClass'SpecialMesh'.MeshId = "rbxassetid://546505802"
		rifle:FindFirstChildOfClass'SpecialMesh'.Scale = Vector3.new(0.2, 0.2, 0.2)
		rifle:FindFirstChildOfClass'Weld'.C0 = CFrame.new(-.4,.6,1.6) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
		table.insert(riflers, rifler)
		sam = sam + 1
	end
end

function ray(a,b)
	local ray = Ray.new(a.CFrame.p, (b - a.CFrame.p).unit * 700)
	local part, position = workspace:FindPartOnRay(ray, char, false, true)
 
	local beam = Instance.new("Part", workspace)
	beam.FormFactor = "Custom"
	beam.Material = "Plastic"
	beam.Transparency = 0.25
	beam.Anchored = true
	beam.Locked = true
	beam.CanCollide = false
	beam.BrickColor = BrickColor.new('Really black')

	local distance = (a.CFrame.p - position).magnitude 
	beam.Size = Vector3.new(0.08, 0.08, distance)
	beam.CFrame = CFrame.new(a.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
	
	game:GetService('Debris'):AddItem(beam, 0.1)
end

mouse.KeyDown:connect(function(k)
	local key = k:lower()
	if key == "x" then
		follow = false
		if mode == "Snipers" then
			sniper(mouse.Hit.p)
		elseif mode == "Riflers" then
			rifler(mouse.Hit.p)
		end
		wait(.3)
		if curfollow then
			follow = true
		elseif not curfollow then
			follow = false
		end
	elseif key == "c" then
		for _, a in pairs(char:children()) do
			if a.Name == "" then
				for i = 1,10 do
					a:FindFirstChild'HumanoidRootPart'.CFrame = a:FindFirstChild'HumanoidRootPart'.CFrame * CFrame.new(0,-i + 0.8,0)
					wait()
				end
				wait(.15)
				a:Destroy()
				sam = sam - 1
			end
		end
	elseif key == "m" then
		if mode == "Snipers" then
			mode = "Riflers"
		elseif mode == "Riflers" then
			mode = "Snipers"
		end
	elseif key == "q" then
		if not follow then
			follow = true
			curfollow = true
			on = false
			for i = 1, sam / 2 do
				wait(.6)
				local now
				ypcall(function()
					if mode == "Snipers" then
						now = snipers[math.random(1,#snipers)]
					elseif mode == "Riflers" then
						now = riflers[math.random(1,#riflers)]
					end
				end)
				for _, a in pairs(riflers) do
					bg = Instance.new("BodyGyro", a.HumanoidRootPart)
					bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
					bg.Name = "FOLLOW"
					bg.P = 10000
					bg.D = 100
				end
				now.Head.Sound:Resume()
				current = now.Head.Sound.SoundId
			end
		elseif follow then
			for _, a in pairs(riflers) do
				for _, b in pairs(a:GetDescendants()) do
					if b:IsA'BodyGyro' then
						b:Destroy()
					end
				end
			end
			follow = false
			curfollow = false
		end
	end
end)

mouse.Button1Down:connect(function()
	if follow and mode ~= "Riflers" and mouse.Target and mouse.Target.Parent and mouse.Target.Parent:FindFirstChildOfClass'Humanoid' then
		follow = false
		local targ = mouse.Target
		huma = targ.Parent:FindFirstChildOfClass'Humanoid'
		for _, a in pairs(targ.Parent:children()) do
			if a:IsA'ForceField' then
				a:Destroy()
			end
		end
		huma.MaxHealth = 100
		huma.Name = "Humanoid"
		if mode == "Snipers" then
			for _, a in pairs(snipers) do
				if a:FindFirstChild'HumanoidRootPart' then
					wait(.2)
					rootpart = a.HumanoidRootPart
					snd = rootpart.Parent:FindFirstChild'SNIPERSOUND'
					snd:Play()
					ray(a:FindFirstChild'Sniper',targ.Parent.Head.Position)
					huma:TakeDamage(huma.MaxHealth/2/2/2)
				end
			end
		follow = true
		end
	end
end)

mouse.Button1Down:connect(function()
	if mode == "Riflers" then
		rifleshoot = true
	end
end)

mouse.Button1Up:connect(function()
	if mode == "Riflers" then
		rifleshoot = false
	end
end)

while wait() do
	ypcall(function()
		riflers[1]:FindFirstChildOfClass'Humanoid':MoveTo(point1.Position)
		riflers[2]:FindFirstChildOfClass'Humanoid':MoveTo(point2.Position)
	end)
	if follow then
		if mode == "Snipers" then
			for _, a in pairs(snipers) do
				if a:FindFirstChild'HumanoidRootPart' then
					rootpart = a.HumanoidRootPart
					rootpart.FOLLOW.CFrame = CFrame.new(rootpart.Position, mouse.Hit.p * Vector3.new(1,0,1) + rootpart.Position * Vector3.new(0,1,0))
					rootpart.Parent:WaitForChild'Laser'.CFrame = mouse.Hit
				end
			end
		elseif mode == "Riflers" then
			for _, a in pairs(riflers) do
				if a:FindFirstChild'HumanoidRootPart' then
					rootpart = a.HumanoidRootPart
					ypcall(function() rootpart.FOLLOW.CFrame = CFrame.new(rootpart.Position, mouse.Hit.p * Vector3.new(1,0,1) + rootpart.Position * Vector3.new(0,1,0)) end)
					rootpart.Parent:WaitForChild'Laser'.CFrame = mouse.Hit
				end
			end
		end
	end
	if rifleshoot and follow and mouse.Target and mouse.Target.Parent then
		local targ = mouse.Target
		local huma = nil
		if targ.Parent:FindFirstChildOfClass'Humanoid' then
			huma = targ.Parent:FindFirstChildOfClass'Humanoid'
		else
			huma = nil
		end
		if huma ~= nil then
			for _, a in pairs(riflers) do
				if a:FindFirstChild'HumanoidRootPart' and huma.Health ~= 0 then
					wait(.02)
					rootpart = a.HumanoidRootPart
					snd = rootpart.Parent:FindFirstChild'SNIPERSOUND'
					snd.Pitch = 80
					snd:Resume()
					ray(a:FindFirstChild'Rifle',targ.Parent.Head.Position)
					huma:TakeDamage(huma.MaxHealth/2/2/2/2/2)
				end
			end
		else
			for _, a in pairs(riflers) do
				snd = rootpart.Parent:FindFirstChild'SNIPERSOUND'
				snd.Pitch = 80
				snd:Resume()
				ray(a:FindFirstChild'Rifle',mouse.Hit.p)
			end
		end
	end
end