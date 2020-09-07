wait(0.5)
math.randomseed(tick())
local player = game.Players.LocalPlayer
local rekt = {}
local paralyzed = false
local curpoint = nil
local curpart = nil
local finishnum = 1
local zombiemode = false
local zombies = {}
local lastgui = nil
local mouse = player:GetMouse()

function getplr(char)
	local plr = nil
	for i,v in pairs(game.Players:GetChildren()) do
		if v.Character == char then
			plr = v
		end
	end
	return plr
end

function bleed(frick)
	while frick.Parent ~= nil do
	local reeee = coroutine.wrap(function()
	local thing = Instance.new('Part',game.Workspace)
	thing.Size = Vector3.new(0.2,0.2,0.2)
	thing.CFrame = frick.CFrame
	thing.Shape = Enum.PartType.Ball
	thing.CFrame = frick.CFrame
	thing.Transparency = 1
	thing.BrickColor = BrickColor.new('Maroon')
	thing.Material = Enum.Material.SmoothPlastic
	thing.Name = "Blood"
	thing.CanCollide =false
	local rawrxd = Instance.new('BodyForce',thing)
	rawrxd.Force = frick.CFrame.upVector*(math.random()*2)+Vector3.new(math.random(-5, 5)/10,1.5,0)
	local coru = coroutine.wrap(function()
		wait(0.01)
		rawrxd:Destroy()
	end)
	coru()
	local ree = Instance.new('ParticleEmitter',thing)
	ree.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(100,0,0)),ColorSequenceKeypoint.new(1,Color3.fromRGB(100,0,0))})
	ree.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0.1),NumberSequenceKeypoint.new(1,0.1)})
	ree.Texture = 'rbxassetid://867743272'
	ree.Lifetime = NumberRange.new(0.4)
	ree.Rate = 50
	ree.LockedToPart = true
	ree.Speed = NumberRange.new(0, 2)  
	
	thing.Touched:connect(function(tou)
		if tou.Parent and tou.Parent:IsA('Tool') == false and tou.Parent.Parent:FindFirstChildOfClass('Humanoid') == nil and tou.Parent:FindFirstChildOfClass('Humanoid') == nil and tou.Name ~= "Blood" and tou.Parent.Name ~= "Projectile" and tou.Parent.Name ~= "big ass knife" and tou.Parent ~= player.Character and tou.Parent.ClassName ~= "Accessory" and tou.Parent.Name ~= "bitch ass knife" then
			local pos = Vector3.new(thing.Position.X,(tou.Position.Y+(tou.Size.Y/2))+0.02,thing.Position.Z)
			thing:Destroy()
			if tou.Name == "BloodPuddle" then
				local reee = tou.CFrame
				if tou.Transparency > -0.2 then
					tou.Transparency = tou.Transparency -0.1
				end
				if tou.Size.X < 10 then
					tou.Size = tou.Size+Vector3.new(0.1,0,0.1)
					tou.CFrame = reee
				end
			else
				local bloodlol = Instance.new('Part',workspace)
				bloodlol.Size=Vector3.new(1,0.2,1)
				bloodlol.Name = "BloodPuddle"
				bloodlol.Anchored = true
				bloodlol.CanCollide = false
				bloodlol.Material = Enum.Material.SmoothPlastic
				bloodlol.BrickColor = BrickColor.new('Maroon')
				local cyl = Instance.new('CylinderMesh',bloodlol)
				cyl.Scale = Vector3.new(1,0.1,1)
				bloodlol.CFrame = CFrame.new(pos)
				local coru=coroutine.wrap(function()
					while bloodlol.Parent ~= nil do
						if bloodlol.Transparency < 1 then
							bloodlol.Transparency = bloodlol.Transparency+0.05
						else
							bloodlol:Destroy()
						end
						wait(0.1)
					end
				end)
				coru()
			end
		end
	end)
	local coru = coroutine.wrap(function()
		wait(1)
		thing:Destroy()
	end)
	coru()
	end)
	reeee()
	wait()
	end
end

function killz(playa,hitz,kneef,explode,pool,head,charred,override)
	local soundy = false
	local heyy = hitz
	if hitz == "Right Arm" then
	local Limb = playa:FindFirstChild("Right Arm")
	local ters = playa:FindFirstChild('Torso')
		if Limb and ters then
			if ters:FindFirstChild('Right Shoulder') then ters["Right Shoulder"]:Destroy() end
			for i,v in pairs(Limb:GetChildren()) do
				if v:IsA('Weld') or v:IsA('Motor6D') or v:IsA('Rotate') then
					v:Destroy()
				end
			end
			Limb.CFrame = ters.CFrame * CFrame.new(1.5, 0, 0)
			local Joint = Instance.new("Rotate")
			Joint.Name = "RightShoulder"
			Joint.Part0 = ters
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.C1 = CFrame.new(-0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.Parent = ters
			if charred and zombiemode == false then 
				Limb.BrickColor = BrickColor.new('Black') 
				local fire = Instance.new('Fire',Limb)
				fire.Heat = 5
				fire.Size = 5
				game:GetService('Debris'):AddItem(fire,2)
				local coru=coroutine.wrap(function()
					wait(2)
					for i,v in pairs(Limb:GetChildren()) do
						if v:IsA('ParticleEmitter') then
							v:Destroy()
						end
					end
				end)
				coru()
			end
			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = playa
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb
			if kneef then
			local coru = coroutine.wrap(function()
				local uno = Instance.new('Part',workspace)
					local dos = Instance.new('Part',workspace)
					uno.CFrame = playa:FindFirstChild(hitz).CFrame
					dos.CFrame = kneef["big ass knife"].CFrame
					local weld = Instance.new('Weld',kneef["big ass knife"])
					weld.Part0 = playa:FindFirstChild(hitz)
					weld.Part1 = kneef["big ass knife"]
					weld.C0 = uno.CFrame:toObjectSpace(dos.CFrame)
					uno:Destroy()
					dos:Destroy()
					playa:FindFirstChild(hitz).Anchored = false
					for i, v in pairs(kneef:GetChildren()) do
						if v:IsA('BasePart') then
						v.Anchored = false
						end
					end
					if zombiemode == false or override then
					wait()
					end
					if kneef:FindFirstChild('Grab') and kneef.Grab:FindFirstChildOfClass('BodyVelocity') then
						kneef.Grab:FindFirstChildOfClass('BodyVelocity'):Destroy()
					end
					local bleedpart = Instance.new("Part", kneef)
					bleedpart.CanCollide = false
					bleedpart.Size = Vector3.new(0.2, 0.2, 0.2)
					bleedpart.CFrame = kneef["big ass knife"].CFrame
					bleedpart.Color = Color3.new(115/225, 115/225, 115/225)
					bleedpart.Transparency = 1
	
					local bleedpartweld = Instance.new("Weld", kneef["big ass knife"])
					bleedpartweld.Part0 = kneef["big ass knife"]
					bleedpartweld.Part1 = bleedpart
					bleedpartweld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),0,0)
					local coru = coroutine.wrap(function()
					bleed(bleedpart)
					end)
					coru()
					game:GetService('Debris'):AddItem(bleedpart,2)
			end)
			coru()
			end
		end	
	elseif hitz == "Left Arm" then
		local Limb = playa:FindFirstChild("Left Arm")
	local ters = playa:FindFirstChild('Torso')
		if Limb and ters then
			if ters:FindFirstChild('Left Shoulder') then ters["Left Shoulder"]:Destroy() end
			for i,v in pairs(Limb:GetChildren()) do
				if v:IsA('Weld') or v:IsA('Motor6D') or v:IsA('Rotate') then
					v:Destroy()
				end
			end
			Limb.CFrame = ters.CFrame * CFrame.new(-1.5, 0, 0)
			local Joint = Instance.new("Rotate")
			Joint.Name = "LeftShoulder"
			Joint.Part0 = ters
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(-1.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.C1 = CFrame.new(0, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.Parent = ters
			if charred and zombiemode == false then 
				Limb.BrickColor = BrickColor.new('Black') 
				local fire = Instance.new('Fire',Limb)
				fire.Heat = 5
				fire.Size = 5
				game:GetService('Debris'):AddItem(fire,2)
				local coru=coroutine.wrap(function()
					wait(2)
					for i,v in pairs(Limb:GetChildren()) do
						if v:IsA('ParticleEmitter') then
							v:Destroy()
						end
					end
				end)
				coru()
			end

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.CanCollide = true
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = playa
			local W = Instance.new("Weld")
			W.Part0 = ters
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb
			if kneef then
			local coru = coroutine.wrap(function()
				local uno = Instance.new('Part',workspace)
					local dos = Instance.new('Part',workspace)
					uno.CFrame = playa:FindFirstChild(hitz).CFrame
					dos.CFrame = kneef["big ass knife"].CFrame
					local weld = Instance.new('Weld',kneef["big ass knife"])
					weld.Part0 = playa:FindFirstChild(hitz)
					weld.Part1 = kneef["big ass knife"]
					weld.C0 = uno.CFrame:toObjectSpace(dos.CFrame)
					uno:Destroy()
					dos:Destroy()
					playa:FindFirstChild(hitz).Anchored = false
					for i, v in pairs(kneef:GetChildren()) do
						if v:IsA('BasePart') then
						v.Anchored = false
						end
					end
					if zombiemode == false or override then
					wait()
					end
					if kneef:FindFirstChild('Grab') and kneef.Grab:FindFirstChildOfClass('BodyVelocity') then
						kneef.Grab:FindFirstChildOfClass('BodyVelocity'):Destroy()
					end
					local bleedpart = Instance.new("Part", kneef)
					bleedpart.CanCollide = false
					bleedpart.Size = Vector3.new(0.2, 0.2, 0.2)
					bleedpart.CFrame = kneef["big ass knife"].CFrame
					bleedpart.Color = Color3.new(115/225, 115/225, 115/225)
					bleedpart.Transparency = 1
	
					local bleedpartweld = Instance.new("Weld", kneef["big ass knife"])
					bleedpartweld.Part0 = kneef["big ass knife"]
					bleedpartweld.Part1 = bleedpart
					bleedpartweld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),0,0)
					local coru = coroutine.wrap(function()
					bleed(bleedpart)
					end)
					coru()
					game:GetService('Debris'):AddItem(bleedpart,2)
			end)
			coru()
			end
		end
	elseif hitz == "Right Leg" then
		local Limb = playa:FindFirstChild("Right Leg")
	local ters = playa:FindFirstChild('Torso')
		if Limb and ters then
			if ters:FindFirstChild('Right Hip') then ters["Right Hip"]:Destroy() end
			for i,v in pairs(Limb:GetChildren()) do
				if v:IsA('Weld') or v:IsA('Motor6D') or v:IsA('Rotate') then
					v:Destroy()
				end
			end
			Limb.CFrame = ters.CFrame * CFrame.new(0.5, -2, 0)
			local Joint = Instance.new("Rotate")
			Joint.Name = "Right Hip"
			Joint.Part0 = ters
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.Parent = ters
			if charred and zombiemode == false then 
				Limb.BrickColor = BrickColor.new('Black') 
				local fire = Instance.new('Fire',Limb)
				fire.Heat = 5
				fire.Size = 5
				game:GetService('Debris'):AddItem(fire,2)
				local coru=coroutine.wrap(function()
					wait(2)
					for i,v in pairs(Limb:GetChildren()) do
						if v:IsA('ParticleEmitter') then
							v:Destroy()
						end
					end
				end)
				coru()
			end
			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = playa
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb
			if kneef then
			local coru = coroutine.wrap(function()
				local uno = Instance.new('Part',workspace)
				local dos = Instance.new('Part',workspace)
				uno.CFrame = playa:FindFirstChild(hitz).CFrame
				dos.CFrame = kneef["big ass knife"].CFrame
				local weld = Instance.new('Weld',kneef["big ass knife"])
				weld.Part0 = playa:FindFirstChild(hitz)
				weld.Part1 = kneef["big ass knife"]
				weld.C0 = uno.CFrame:toObjectSpace(dos.CFrame)
				uno:Destroy()
				dos:Destroy()
				playa:FindFirstChild(hitz).Anchored = false
				for i, v in pairs(kneef:GetChildren()) do
					if v:IsA('BasePart') then
						v.Anchored = false
						end
					end
					if zombiemode == false or override then
					wait()
					end
					if kneef:FindFirstChild('Grab') and kneef.Grab:FindFirstChildOfClass('BodyVelocity') then
						kneef.Grab:FindFirstChildOfClass('BodyVelocity'):Destroy()
					end
					local bleedpart = Instance.new("Part", kneef)
					bleedpart.CanCollide = false
					bleedpart.Size = Vector3.new(0.2, 0.2, 0.2)
					bleedpart.CFrame = kneef["big ass knife"].CFrame
					bleedpart.Color = Color3.new(115/225, 115/225, 115/225)
					bleedpart.Transparency = 1
	
					local bleedpartweld = Instance.new("Weld", kneef["big ass knife"])
					bleedpartweld.Part0 = kneef["big ass knife"]
					bleedpartweld.Part1 = bleedpart
					bleedpartweld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),0,0)
					local coru = coroutine.wrap(function()
					bleed(bleedpart)
					end)
					coru()
					game:GetService('Debris'):AddItem(bleedpart,2)
			end)
			coru()
			end
			if playa then
				table.insert(rekt,playa)
			end
		end
	elseif hitz == "Left Leg" then
		local Limb = playa:FindFirstChild("Left Leg")
	local ters = playa:FindFirstChild('Torso')
		if Limb and ters then
			if ters:FindFirstChild('Left Hip') then ters["Left Hip"]:Destroy() end
			for i,v in pairs(Limb:GetChildren()) do
				if v:IsA('Weld') or v:IsA('Motor6D') or v:IsA('Rotate') then
					v:Destroy()
				end
			end
		Limb.CFrame = ters.CFrame * CFrame.new(0.5, -2, 0)
			Limb.CFrame = ters.CFrame * CFrame.new(-0.5, -2, 0)
			local Joint = Instance.new("Rotate")
			Joint.Name = "LeftHip"
			Joint.Part0 = ters
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.Parent = ters
			if charred and zombiemode == false then 
				Limb.BrickColor = BrickColor.new('Black') 
				local fire = Instance.new('Fire',Limb)
				fire.Heat = 5
				fire.Size = 5
				game:GetService('Debris'):AddItem(fire,2)
				local coru=coroutine.wrap(function()
					wait(2)
					for i,v in pairs(Limb:GetChildren()) do
						if v:IsA('ParticleEmitter') then
							v:Destroy()
						end
					end
				end)
				coru()
			end

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = playa
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb
			Limb.CanCollide = false
			if kneef then
			local coru = coroutine.wrap(function()
				local uno = Instance.new('Part',workspace)
					local dos = Instance.new('Part',workspace)
					uno.CFrame = playa:FindFirstChild(hitz).CFrame
					dos.CFrame = kneef["big ass knife"].CFrame
					local weld = Instance.new('Weld',kneef["big ass knife"])
					weld.Part0 = playa:FindFirstChild(hitz)
					weld.Part1 = kneef["big ass knife"]
					weld.C0 = uno.CFrame:toObjectSpace(dos.CFrame)
					uno:Destroy()
					dos:Destroy()
					playa:FindFirstChild(hitz).Anchored = false
					for i, v in pairs(kneef:GetChildren()) do
						if v:IsA('BasePart') then
						v.Anchored = false
						end
					end
					if zombiemode == false or override then
					wait()
					end
					if kneef:FindFirstChild('Grab') and kneef.Grab:FindFirstChildOfClass('BodyVelocity') then
						kneef.Grab:FindFirstChildOfClass('BodyVelocity'):Destroy()
					end
					local bleedpart = Instance.new("Part", kneef)
					bleedpart.CanCollide = false
					bleedpart.Size = Vector3.new(0.2, 0.2, 0.2)
					bleedpart.CFrame = kneef["big ass knife"].CFrame
					bleedpart.Color = Color3.new(115/225, 115/225, 115/225)
					bleedpart.Transparency = 1
	
					local bleedpartweld = Instance.new("Weld", kneef["big ass knife"])
					bleedpartweld.Part0 = kneef["big ass knife"]
					bleedpartweld.Part1 = bleedpart
					bleedpartweld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),0,0)
					local coru = coroutine.wrap(function()
					bleed(bleedpart)
					end)
					coru()
					game:GetService('Debris'):AddItem(bleedpart,2)
			end)
			coru()
			end
			if playa then
				table.insert(rekt,playa)
			end
		end
	elseif playa then
		if finishnum ~= 1 then
			local coru=coroutine.wrap(function()
			player.Character.Head.Psycho.Playing = true
			wait(3)
			player.Character.Head.Psycho.Playing = false
			end)
			coru()
		end
		local playa2 = playa
		playa.Archivable = true
		local playa = playa:Clone()
		playa.Archivable = false
		playa2:Destroy()
		playa.Parent = workspace
		local Gibs = game.Workspace
		local Torso = playa.Torso
		local Head = playa:FindFirstChild("Head")
		local function Scan(ch)
		local e
		for e = 1,#ch do
			Scan(ch[e]:GetChildren())
			if (ch[e].ClassName == "Weld" and ch[e]:FindFirstChild('Part1') and ch[e].Part1.Name ~= 'Projectile') or ch[e].ClassName == "Motor6D" or ch[e].ClassName == "Rotate" or (ch[e]:IsA('BasePart') and ch[e].Size == Vector3.new(1, 1, 1)) then
				ch[e]:remove()
			end
		end
		end
	Scan(playa:GetChildren())
		if playa:FindFirstChild('HumanoidRootPart') and (zombiemode == false or override) then
			playa:FindFirstChild('HumanoidRootPart'):Destroy()
		end
		local hum2 = playa:FindFirstChildOfClass("Humanoid")
	if zombiemode == true and override == false then
		soundy = true
	end
	if string.sub(hum2.Parent.Name,string.len(hum2.Parent.Name)-8,string.len(hum2.Parent.Name)) ~= "'s Zombie" then
		override = true
	end
	if hum2 ~= nil then
		hum2.Name = "Humanoid2"
		hum2.Health = 0
		if zombiemode == false or override == true then
			table.insert(rekt,hum2.Parent)
		else
			local gyro = Instance.new('BodyGyro',Torso)
			hum2.PlatformStand = false
			for i,v in pairs(hum2.Parent.Torso:GetChildren()) do
				if v:IsA('BodyGyro') then v:Destroy() end
			end
			if playa:FindFirstChild('HumanoidRootPart') then
				hum2.Parent.HumanoidRootPart.CFrame = hum2.Parent.Torso.CFrame
				local weldcrucial = Instance.new('Weld',hum2.Parent.HumanoidRootPart)
				weldcrucial.Part0 = hum2.Parent.HumanoidRootPart
				weldcrucial.Part1 = hum2.Parent.Torso
			end
		end
	end
	local ch = playa:GetChildren()
	local i
	for i = 1,#ch do
		if ch[i].Name == "THandle1" or ch[i].Name == "THandle2" then
			ch[i]:remove()
		end
	end

		if Head then
			local Neck = Instance.new("Weld")
			Neck.Name = "Neck"
			Neck.Part0 = Torso
			Neck.Part1 = Head
			if pool then
				local part = Instance.new('Part',Torso)
				part.Position = Vector3.new(0,10,0)
				part.Size = Vector3.new(0.2,0.2,0.2)
				part.Transparency = 1
				part.CanCollide = false
				local we = Instance.new('Weld',Torso)
				we.Part0 = Torso
				we.Part1 = part
				we.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),0,0)
				local coru=coroutine.wrap(function()
				bleed(part)
				end)
				coru()
			end
			if head == false or head == nil then
				Neck.C0 = CFrame.new(0, 1.5, 0)
			else
				Neck.C0 = CFrame.new(0, 1.5, 0.2)*CFrame.Angles(0.5, 0.25, 0.25)
				local bleedpart = Instance.new("Part", Torso)
				bleedpart.Size = Vector3.new(0.2, 0.2, 0.2)
				bleedpart.Color = Color3.new(115/225, 115/225, 115/225)
				bleedpart.CanCollide = false
				bleedpart.Position = Head.Position + Vector3.new(0, 1, 0)
				bleedpart.Transparency = 1
	
				local bleedpartweld = Instance.new("Weld", Torso)
				bleedpartweld.Part0 = Torso
				bleedpartweld.Part1 = bleedpart
				bleedpartweld.C0 = CFrame.Angles(-1, 0, -0.35) * CFrame.new(0, 1, 0.8)
				local coru = coroutine.wrap(function()
				bleed(bleedpart)
				end)
				coru()
			end
			Neck.C1 = CFrame.new()
			Neck.Parent = Torso
		end
		local Limb = playa:FindFirstChild("Right Arm")
		if Limb then

			Limb.CFrame = Torso.CFrame * CFrame.new(1.5, 0, 0)
			local Joint = Instance.new("Rotate")
			Joint.Name = "RightShoulder"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.C1 = CFrame.new(-0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = playa
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb
		end
		local Limb = playa:FindFirstChild("Left Arm")
		if Limb then
	
			Limb.CFrame = Torso.CFrame * CFrame.new(-1.5, 0, 0)
			local Joint = Instance.new("Rotate")
			Joint.Name = "LeftShoulder"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(-1.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.C1 = CFrame.new(0, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = playa
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb
		end
		local Limb = playa:FindFirstChild("Right Leg")
		if Limb then
			Limb.CanCollide = false
			Limb.CFrame = Torso.CFrame * CFrame.new(0.5, -2, 0)
			local Joint = Instance.new("Rotate")
			Joint.Name = "RightHip"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CanCollide = true
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = playa
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb
		end
		local Limb = playa:FindFirstChild("Left Leg")
		if Limb then
			Limb.CanCollide = false
			Limb.CFrame = Torso.CFrame * CFrame.new(-0.5, -2, 0)
			local Joint = Instance.new("Rotate")
			Joint.Name = "LeftHip"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			if zombiemode == false or override then
			B.CanCollide = true
			end
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = playa
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb
		end
		--[[
		local Bar = Instance.new("Part")
		Bar.TopSurface = 0
		Bar.BottomSurface = 0
		Bar.formFactor = "Symmetric"
		Bar.Size = Vector3.new(1, 1, 1)
		Bar.Transparency = 1
		Bar.CFrame = Torso.CFrame * CFrame.new(0, 0.5, 0)
		Bar.Parent = playa
		local Weld = Instance.new("Weld")
		Weld.Part0 = Torso
		Weld.Part1 = Bar
		Weld.C0 = CFrame.new(0, 0.5, 0)
		Weld.Parent = Torso
		--]]
		playa.Parent = Gibs
		if kneef and explode == nil then
			local coru = coroutine.wrap(function()
				if playa:FindFirstChild(hitz) then
					local uno = Instance.new('Part',workspace)
					local dos = Instance.new('Part',workspace)
					uno.CFrame = playa:FindFirstChild(hitz).CFrame
					dos.CFrame = kneef["big ass knife"].CFrame
					local weld = Instance.new('Weld',kneef["big ass knife"])
					weld.Part0 = playa:FindFirstChild(hitz)
					weld.Part1 = kneef["big ass knife"]
					weld.C0 = uno.CFrame:toObjectSpace(dos.CFrame)
					uno:Destroy()
					dos:Destroy()
					playa:FindFirstChild(hitz).Anchored = false
					for i, v in pairs(kneef:GetChildren()) do
						if v:IsA('BasePart') then
						v.Anchored = false
						end
					end
					if explode == nil or explode == false then
					local bleedpart = Instance.new("Part", kneef)
					bleedpart.Size = Vector3.new(0.2, 0.2, 0.2)
					bleedpart.Color = Color3.new(115/225, 115/225, 115/225)
					bleedpart.CanCollide = false
					bleedpart.Position = Head.Position + Vector3.new(0, 1, 0)
					bleedpart.Transparency = 1
	
					local bleedpartweld = Instance.new("Weld", kneef["big ass knife"])
					bleedpartweld.Part0 = kneef["big ass knife"]
					bleedpartweld.Part1 = bleedpart
					bleedpartweld.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),0,0)
					local coru = coroutine.wrap(function()
					bleed(bleedpart)
					end)
					coru()
					end
					end
					if zombiemode == false or override then
					wait()
					end
					if kneef:FindFirstChild('Grab') and kneef.Grab:FindFirstChildOfClass('BodyVelocity') then
						kneef.Grab:FindFirstChildOfClass('BodyVelocity'):Destroy()
					end
			end)
			coru()
		end
		if explode then
			local movevector = CFrame.new(explode.Position,Torso.Position).lookVector
			local repulse = Instance.new('BodyForce',Torso)
            repulse.Force = movevector*10000 + Vector3.new(0,5000,0)
            game.Debris:AddItem(repulse,0.05)
		end
		if charred and zombiemode == false then
			for i,v in pairs(playa:GetChildren()) do
				if v:IsA('BasePart') then
					v.BrickColor = BrickColor.Black()
					local fire = Instance.new('Fire',v)
					fire.Size = 5
					fire.Heat = 5
				elseif v:IsA('Accessory') then
					for a,c in pairs(v:GetChildren()) do
						if c:IsA('BasePart') then
							c.BrickColor = BrickColor.Black()
							local fire = Instance.new('Fire',v)
							fire.Size = 5
							fire.Heat = 5
							for o,p in pairs(c:GetChildren()) do
								if p:IsA("SpecialMesh") then
									p.TextureId = ""
								end
							end
						end
					end
				end
			end
		end
		if soundy then
			local sound = Instance.new('Sound',Head)
			sound.SoundId = 'rbxassetid://903640857'
			sound.Volume = 1
			sound:Play()
			sound.Ended:connect(function() 
				sound:Destroy()
				local ambient = Instance.new('Sound',Head)
				ambient.Volume = 0.25
				ambient.Looped = true
				ambient.SoundId = 'rbxassetid://903641031'
				ambient:Play()
			end)
		end
		if override then
			if (string.len(hum2.Parent.Name) < 9 or string.sub(hum2.Parent.Name,string.len(hum2.Parent.Name)-8,string.len(hum2.Parent.Name)) ~= "'s Zombie") and zombiemode == true and #zombies < 10 then
				local coru = coroutine.wrap(function()
					wait(4.5)
					hum2.Parent.Name = hum2.Parent.Name.."'s Zombie"
					hum2.HipHeight = 0.2
					wait(0.5)
					killz(hum2.Parent,"Head",nil,nil,false,false,false,false)
				end)
				coru()
			else
				game:GetService('Debris'):AddItem(playa, 12)
			end
		else
			hum2.Health = 0
			table.insert(zombies,playa)
			local attack = Instance.new('Sound',Head)
			attack.SoundId = 'rbxassetid://903641424'
			attack.Volume = 2
			for i,v in pairs(playa:GetChildren()) do
				if v:IsA('BasePart') and v:FindFirstChildOfClass('TouchTransmitter') == nil then
					v.Touched:connect(function(hit)
						if hit.Parent and hit.Parent:FindFirstChildOfClass('Humanoid') then
							local found = false
							if hit.Parent == player.Character then
								found = true
							end
							for a,c in pairs(zombies) do
								if c == hit.Parent then
									found = true
								end
							end
							if found == false and hit.Parent:FindFirstChildOfClass('Humanoid').Health > 0 then
								attack:Play()
								if hit.Parent:FindFirstChildOfClass('Humanoid').Health - 2 <= 0 then
									hit.Parent:FindFirstChildOfClass('Humanoid').Health = 0
									wait()
									killz(hit.Parent,"Head")
								else
									hit.Parent:FindFirstChildOfClass('Humanoid'):TakeDamage(2)
								end
							end
						end
					end)
				end
			end
			local coru = coroutine.wrap(function()
				wait(2)
				for i,v in pairs(playa:GetChildren()) do
				if v:IsA('BasePart') then
					for a,c in pairs(v:GetChildren()) do
						if c:IsA('Fire') or c:IsA('ParticleEmitter') then
							c:Destroy()
						end
					end
				elseif v:IsA('Accessory') then
					for a,c in pairs(v:GetChildren()) do
						if c:IsA('BasePart') then
							for b,d in pairs(c:GetChildren()) do
								if d:IsA('Fire') or d:IsA('ParticleEmitter') then
									d:Destroy()
								end
							end
						end
					end
				end
			end
			end)
			coru()
		end
	end	
end

mouse.KeyDown:connect(function(key)
	if key == "t" and mouse.Target then
		local hum = mouse.Target.Parent:FindFirstChildOfClass('Humanoid')
		if hum == nil then hum = mouse.Target.Parent.Parent:FindFirstChildOfClass('Humanoid') end
		if curpoint == nil then
			if hum and hum.Parent:FindFirstChild('Head') then
				curpart = hum.Parent.Head
			else
				curpart = nil
				curpoint = mouse.Hit.p
			end
			if player.PlayerGui:FindFirstChild('Notification') then player.PlayerGui.Notification:Destroy() end
			notify("ZOMBIE TARGET SET",false)
		else
			curpart = nil
			curpoint = nil
			if player.PlayerGui:FindFirstChild('Notification') then player.PlayerGui.Notification:Destroy() end
			notify("ZOMBIE TARGET REMOVED",false)
		end
	elseif key == "y" then
		for o,p in pairs(zombies) do
			local coru = coroutine.wrap(function()
			if p:FindFirstChild('Torso') then
			killz(p,"Head",nil,nil,false,false,false,true)
			else
			table.remove(zombies,o)
			end
			end)
			coru()
			wait()
		end
		for i,v in pairs(zombies) do
			table.remove(zombies,i)
		end
		if player.PlayerGui:FindFirstChild('Notification') then player.PlayerGui.Notification:Destroy() end
		notify("ZOMBIES TERMINATED",false)
	end
end)

function nub()
local me = player.Character
local point = me.HumanoidRootPart
local playergui = player.PlayerGui
local rightshoulderz = me.Torso["Right Shoulder"]:Clone()
local leftshoulderz = me.Torso["Left Shoulder"]:Clone()
local torsojoint = me.HumanoidRootPart["RootJoint"]:Clone()
local lefthipz = me.Torso["Left Hip"]:Clone()
local righthipz = me.Torso["Right Hip"]:Clone()
local mode = "kill"
local lerpz = false
local active = false
local acting = false
local hit = false
local canClick = true
local stabbing = false
local grabbing = false
local finishing = false
local kyssing = false
local canbackgroundmusic = true
local cancolorfilter = true
local spinboolean = false
local grabbed = nil
local doing = false
local rightshoulder = nil
local leftshoulder = nil
local headweld = nil
local usable = true
finishnum = 1

function notify(msg,forever)
	local doit = coroutine.wrap(function()
		local gui = Instance.new('ScreenGui',playergui)
		gui.Name = "Notification"
		local frame = Instance.new('Frame',gui)
		frame.Position = UDim2.new(0,0,0,0)
		frame.Size = UDim2.new(1,0,0.2,0)
		frame.BackgroundTransparency = 1
		local txt = Instance.new('TextLabel',frame)
		txt.TextColor3 = Color3.new(255,255,255)
		txt.TextStrokeColor3 = Color3.new(0, 0, 0)
		txt.TextStrokeTransparency = 0
		txt.BackgroundTransparency = 1
		txt.Text = ""
		txt.Size = UDim2.new(1,0,0.3,0)
		txt.Position = UDim2.new(0,0,0.4,0)
		txt.TextScaled = true
		txt.Font = "Code"
		txt.TextXAlignment = "Center"
		local tap = Instance.new("Sound")
		tap.Parent = gui
		tap.SoundId = "rbxassetid://147982968"
		tap.TimePosition = 0.1
		local str = msg
		local len = string.len(str)
		for i=1,len do
			txt.Text = string.sub(str,1,i)
			pitche = math.random(20, 40)/10
			tap.PlaybackSpeed = pitche
			tap:Play()
			wait(0.01)
		end
		if forever == false then
			wait(1)
			while txt.TextTransparency < 1 do
				txt.TextTransparency = txt.TextTransparency + 0.1
				txt.TextStrokeTransparency = txt.TextStrokeTransparency + 0.1
				wait(0.001)
			end
			gui:Destroy()
		end
	end)
	doit()
end

wait(0.5)
notify("PRESS [Z] TO EQUIP KNIFE || Created by mustardfoot and Tollonis",true)
local laugh = Instance.new('Sound',me.Head)
laugh.SoundId = 'rbxassetid://378827985'
laugh.Name = "Psycho"
laugh.Volume = 5
-- 1 - bitch ass knife
local obj1 = Instance.new("Model")
obj1.Name = "bitch ass knife"
obj1.Parent = game.Workspace

-- 2 - Grab
local obj2 = Instance.new("Part")
obj2.CFrame = CFrame.new(Vector3.new(20.4525032, 6.14501333, -134.399979)) * CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
obj2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.Material = Enum.Material.Concrete
obj2.Size = Vector3.new(1, 0.25, 0.25)
obj2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.Anchored = true
obj2.BrickColor = BrickColor.new("Black")
obj2.Friction = 0.30000001192093
obj2.Shape = Enum.PartType.Cylinder
obj2.Name = "Grab"
obj2.Parent = obj1

-- 3 - handletopcap
local obj3 = Instance.new("Part")
obj3.CFrame = CFrame.new(Vector3.new(19.9725456, 6.14502859, -134.399933)) * CFrame.Angles(0, 1.5707963705063, 0)
obj3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.Material = Enum.Material.Concrete
obj3.Size = Vector3.new(0.349999994, 0.349999994, 0.349999994)
obj3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.Anchored = true
obj3.BrickColor = BrickColor.new("Black")
obj3.Friction = 0.30000001192093
obj3.Shape = Enum.PartType.Ball
obj3.Name = "handletopcap"
obj3.Parent = obj1

-- 4 - handlebottomcap
local obj4 = Instance.new("Part")
obj4.CFrame = CFrame.new(Vector3.new(20.9725285, 6.14502859, -134.399918)) * CFrame.Angles(0, 1.5707963705063, 0)
obj4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.Material = Enum.Material.Concrete
obj4.Size = Vector3.new(0.25, 0.25, 0.25)
obj4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.Anchored = true
obj4.BrickColor = BrickColor.new("Black")
obj4.Friction = 0.30000001192093
obj4.Shape = Enum.PartType.Ball
obj4.Name = "handlebottomcap"
obj4.Parent = obj1

-- 5 - handleguardmid
local obj5 = Instance.new("Part")
obj5.CFrame = CFrame.new(Vector3.new(19.9474983, 6.14502859, -134.399918)) * CFrame.Angles(0, 1.5707963705063, 0)
obj5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.Material = Enum.Material.Concrete
obj5.Size = Vector3.new(0.349999994, 0.349999994, 0.100000001)
obj5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.Anchored = true
obj5.BrickColor = BrickColor.new("Black")
obj5.Friction = 0.30000001192093
obj5.Shape = Enum.PartType.Block
obj5.Name = "handleguardmid"
obj5.Parent = obj1

-- 6 - handleguardcap1
local obj6 = Instance.new("Part")
obj6.CFrame = CFrame.new(Vector3.new(19.9474983, 6.32502794, -134.399918)) * CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
obj6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.Material = Enum.Material.Concrete
obj6.Size = Vector3.new(0.100000001, 0.349999994, 0.349999994)
obj6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.Anchored = true
obj6.BrickColor = BrickColor.new("Black")
obj6.Friction = 0.30000001192093
obj6.Shape = Enum.PartType.Cylinder
obj6.Name = "handleguardcap1"
obj6.Parent = obj1

-- 7 - handleguardcap2
local obj7 = Instance.new("Part")
obj7.CFrame = CFrame.new(Vector3.new(19.9474983, 5.97502899, -134.399918)) * CFrame.Angles(-3.1415927410126, 0, -3.1415927410126)
obj7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj7.Material = Enum.Material.Concrete
obj7.Size = Vector3.new(0.100000009, 0.349999994, 0.349999994)
obj7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj7.Anchored = true
obj7.BrickColor = BrickColor.new("Black")
obj7.Friction = 0.30000001192093
obj7.Shape = Enum.PartType.Cylinder
obj7.Name = "handleguardcap2"
obj7.Parent = obj1

-- 8 - big ass knife
local obj8 = Instance.new("Part")
obj8.CFrame = CFrame.new(Vector3.new(18.4375095, 6.14502859, -134.401321)) * CFrame.Angles(0, 1.5707963705063, 0)
obj8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.Material = Enum.Material.Metal
obj8.Size = Vector3.new(0.0500000007, 0.280000001, 0.839999795)
obj8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.Anchored = true
obj8.BrickColor = BrickColor.new("Lily white")
obj8.Friction = 0.30000001192093
obj8.Shape = Enum.PartType.Block
obj8.Name = "big ass knife"
obj8.Parent = obj1

-- 9 - Mesh
local obj9 = Instance.new("BlockMesh")
obj9.Scale = Vector3.new(0.5, 1, 1)
obj9.Parent = obj8

-- 10 - big ass knife
local obj10 = Instance.new("Part")
obj10.CFrame = CFrame.new(Vector3.new(19.7425137, 6.14502859, -134.401321)) * CFrame.Angles(0, 1.5707963705063, 0)
obj10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.Material = Enum.Material.Metal
obj10.Size = Vector3.new(0.0500000007, 0.280000001, 0.289999962)
obj10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj10.Anchored = true
obj10.BrickColor = BrickColor.new("Lily white")
obj10.Friction = 0.30000001192093
obj10.Shape = Enum.PartType.Block
obj10.Name = "big ass knife"
obj10.Parent = obj1
local knife = obj10

-- 11 - Mesh
local obj11 = Instance.new("BlockMesh")
obj11.Scale = Vector3.new(0.5, 1, 1)
obj11.Parent = obj10

-- 12 - big ass knife
local obj12 = Instance.new("Part")
obj12.CFrame = CFrame.new(Vector3.new(19.1075306, 6.08502865, -134.401321)) * CFrame.Angles(0, 1.5707963705063, 0)
obj12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.Material = Enum.Material.Metal
obj12.Size = Vector3.new(0.0500000007, 0.159999996, 0.979999959)
obj12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj12.Anchored = true
obj12.BrickColor = BrickColor.new("Lily white")
obj12.Friction = 0.30000001192093
obj12.Shape = Enum.PartType.Block
obj12.Name = "big ass knife"
obj12.Parent = obj1

-- 13 - Mesh
local obj13 = Instance.new("BlockMesh")
obj13.Scale = Vector3.new(0.5, 1, 1)
obj13.Parent = obj12

-- 14 - serration
local obj14 = Instance.new("WedgePart")
obj14.CFrame = CFrame.new(Vector3.new(19.4963322, 6.15381575, -134.400375)) * CFrame.Angles(1.5707963705063, -0.78539824485779, -1.5707963705063)
obj14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.Material = Enum.Material.Metal
obj14.Size = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
obj14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj14.Anchored = true
obj14.BrickColor = BrickColor.new("Lily white")
obj14.Friction = 0.30000001192093
obj14.Name = "serration"
obj14.Parent = obj1

-- 15 - Mesh
local obj15 = Instance.new("BlockMesh")
obj15.Scale = Vector3.new(0.5, 1, 1)
obj15.Parent = obj14

-- 16 - serration
local obj16 = Instance.new("WedgePart")
obj16.CFrame = CFrame.new(Vector3.new(19.2763138, 6.15381575, -134.400375)) * CFrame.Angles(1.5707963705063, -0.78539824485779, -1.5707963705063)
obj16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.Material = Enum.Material.Metal
obj16.Size = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
obj16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj16.Anchored = true
obj16.BrickColor = BrickColor.new("Lily white")
obj16.Friction = 0.30000001192093
obj16.Name = "serration"
obj16.Parent = obj1

-- 17 - Mesh
local obj17 = Instance.new("BlockMesh")
obj17.Scale = Vector3.new(0.5, 1, 1)
obj17.Parent = obj16

-- 18 - serration
local obj18 = Instance.new("WedgePart")
obj18.CFrame = CFrame.new(Vector3.new(19.3863068, 6.15381575, -134.400375)) * CFrame.Angles(1.5707963705063, -0.78539824485779, -1.5707963705063)
obj18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.Material = Enum.Material.Metal
obj18.Size = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
obj18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj18.Anchored = true
obj18.BrickColor = BrickColor.new("Lily white")
obj18.Friction = 0.30000001192093
obj18.Name = "serration"
obj18.Parent = obj1

-- 19 - Mesh
local obj19 = Instance.new("BlockMesh")
obj19.Scale = Vector3.new(0.5, 1, 1)
obj19.Parent = obj18

-- 20 - serration
local obj20 = Instance.new("WedgePart")
obj20.CFrame = CFrame.new(Vector3.new(19.5963173, 6.15381575, -134.400375)) * CFrame.Angles(1.5707963705063, -0.78539824485779, -1.5707963705063)
obj20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.Material = Enum.Material.Metal
obj20.Size = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
obj20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj20.Anchored = true
obj20.BrickColor = BrickColor.new("Lily white")
obj20.Friction = 0.30000001192093
obj20.Name = "serration"
obj20.Parent = obj1

-- 21 - Mesh
local obj21 = Instance.new("BlockMesh")
obj21.Scale = Vector3.new(0.5, 1, 1)
obj21.Parent = obj20

-- 22 - serration
local obj22 = Instance.new("WedgePart")
obj22.CFrame = CFrame.new(Vector3.new(19.1663074, 6.15381575, -134.400375)) * CFrame.Angles(1.5707963705063, -0.78539824485779, -1.5707963705063)
obj22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj22.Material = Enum.Material.Metal
obj22.Size = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
obj22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj22.Anchored = true
obj22.BrickColor = BrickColor.new("Lily white")
obj22.Friction = 0.30000001192093
obj22.Name = "serration"
obj22.Parent = obj1

-- 23 - Mesh
local obj23 = Instance.new("BlockMesh")
obj23.Scale = Vector3.new(0.5, 1, 1)
obj23.Parent = obj22

-- 24 - serration
local obj24 = Instance.new("WedgePart")
obj24.CFrame = CFrame.new(Vector3.new(18.9663048, 6.15381575, -134.400375)) * CFrame.Angles(1.5707963705063, -0.78539824485779, -1.5707963705063)
obj24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.Material = Enum.Material.Metal
obj24.Size = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
obj24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj24.Anchored = true
obj24.BrickColor = BrickColor.new("Lily white")
obj24.Friction = 0.30000001192093
obj24.Name = "serration"
obj24.Parent = obj1

-- 25 - Mesh
local obj25 = Instance.new("BlockMesh")
obj25.Scale = Vector3.new(0.5, 1, 1)
obj25.Parent = obj24

-- 26 - serration
local obj26 = Instance.new("WedgePart")
obj26.CFrame = CFrame.new(Vector3.new(18.8562984, 6.15381575, -134.400375)) * CFrame.Angles(1.5707963705063, -0.78539824485779, -1.5707963705063)
obj26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj26.Material = Enum.Material.Metal
obj26.Size = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
obj26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj26.Anchored = true
obj26.BrickColor = BrickColor.new("Lily white")
obj26.Friction = 0.30000001192093
obj26.Name = "serration"
obj26.Parent = obj1

-- 27 - Mesh
local obj27 = Instance.new("BlockMesh")
obj27.Scale = Vector3.new(0.5, 1, 1)
obj27.Parent = obj26

-- 28 - serration
local obj28 = Instance.new("WedgePart")
obj28.CFrame = CFrame.new(Vector3.new(19.0663071, 6.15381575, -134.400375)) * CFrame.Angles(1.5707963705063, -0.78539824485779, -1.5707963705063)
obj28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj28.Material = Enum.Material.Metal
obj28.Size = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
obj28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj28.Anchored = true
obj28.BrickColor = BrickColor.new("Lily white")
obj28.Friction = 0.30000001192093
obj28.Name = "serration"
obj28.Parent = obj1

-- 29 - Mesh
local obj29 = Instance.new("BlockMesh")
obj29.Scale = Vector3.new(0.5, 1, 1)
obj29.Parent = obj28

-- 30 - knifetip1
local obj30 = Instance.new("WedgePart")
obj30.CFrame = CFrame.new(Vector3.new(18.0163059, 6.14381599, -134.400375)) * CFrame.Angles(1.5707963705063, -0.78539824485779, -1.5707963705063)
obj30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj30.Material = Enum.Material.Metal
obj30.Size = Vector3.new(0.0500000007, 0.200000003, 0.200000003)
obj30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj30.Anchored = true
obj30.BrickColor = BrickColor.new("Lily white")
obj30.Friction = 0.30000001192093
obj30.Name = "knifetip1"
obj30.Parent = obj1

-- 31 - Mesh
local obj31 = Instance.new("BlockMesh")
obj31.Scale = Vector3.new(0.5, 1, 1)
obj31.Parent = obj30

-- 32 - redstuff
local obj32 = Instance.new("Part")
obj32.CFrame = CFrame.new(Vector3.new(19.9470005, 5.9749999, -134.399994)) * CFrame.Angles(-0, 0, -0)
obj32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj32.Material = Enum.Material.SmoothPlastic
obj32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj32.Size = Vector3.new(0.0500000007, 0.360000014, 0.360000014)
obj32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj32.BrickColor = BrickColor.new("Institutional white")
obj32.Friction = 0.30000001192093
obj32.Shape = Enum.PartType.Cylinder
obj32.Name = "redstuff"
obj32.Anchored = true
obj32.Parent = obj1


-- 33 - redstuff
local obj33 = Instance.new("Part")
obj33.CFrame = CFrame.new(Vector3.new(18.9800053, 6.1400156, -134.404984)) * CFrame.Angles(-0, 0, -0)
obj33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj33.Material = Enum.Material.SmoothPlastic
obj33.Size = Vector3.new(1.81999993, 0.100000001, 0.0500000007)
obj33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj33.BrickColor = BrickColor.new("Institutional white")
obj33.Friction = 0.30000001192093
obj33.Shape = Enum.PartType.Block
obj33.Name = "redstuff"
obj33.Anchored = true
obj33.Parent = obj1

-- 34 - redstuff
local obj34 = Instance.new("Part")
obj34.CFrame = CFrame.new(Vector3.new(19.9470005, 6.32499981, -134.399994)) * CFrame.Angles(-0, 0, -0)
obj34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj34.Size = Vector3.new(0.0500000007, 0.360000014, 0.360000014)
obj34.Material = Enum.Material.SmoothPlastic
obj34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj34.BrickColor = BrickColor.new("Institutional white")
obj34.Friction = 0.30000001192093
obj34.Shape = Enum.PartType.Cylinder
obj34.Name = "redstuff"
obj34.Anchored = true
obj34.Parent = obj1

-- 35 - redstuff
local obj35 = Instance.new("Part")
obj35.CFrame = CFrame.new(Vector3.new(19.8830166, 6.14501476, -134.399963)) * CFrame.Angles(-0, 0, -0)
obj35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj35.Size = Vector3.new(0.0500000007, 0.319999993, 0.319999993)
obj35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj35.BrickColor = BrickColor.new("Institutional white")
obj35.Friction = 0.30000001192093
obj35.Shape = Enum.PartType.Cylinder
obj35.Material = Enum.Material.SmoothPlastic
obj35.Name = "redstuff"
obj35.Anchored = true
obj35.Parent = obj1

-- 36 - redstuff
local obj36 = Instance.new("Part")
obj36.CFrame = CFrame.new(Vector3.new(20.9430103, 6.14501476, -134.399963)) * CFrame.Angles(-0, 0, -0)
obj36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj36.Material = Enum.Material.SmoothPlastic
obj36.Size = Vector3.new(0.0500000007, 0.25999999, 0.25999999)
obj36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj36.BrickColor = BrickColor.new("Institutional white")
obj36.Friction = 0.30000001192093
obj36.Shape = Enum.PartType.Cylinder
obj36.Name = "redstuff"
obj36.Anchored = true
obj36.Parent = obj1

-- 37 - redstuff
local obj37 = Instance.new("WedgePart")
obj37.CFrame = CFrame.new(Vector3.new(18.066288, 6.14381599, -134.400375)) * CFrame.Angles(1.5707963705063, -0.78539824485779, -1.5707963705063)
obj37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj37.Material = Enum.Material.SmoothPlastic
obj37.Size = Vector3.new(0.0500000007, 0.0700000003, 0.0700000003)
obj37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj37.Anchored = true
obj37.BrickColor = BrickColor.new("Institutional white")
obj37.Friction = 0.30000001192093
obj37.Name = "redstuff"
obj37.Anchored = true
obj37.Parent = obj1

-- 38 - redstuff
local obj38 = Instance.new("Part")
obj38.CFrame = CFrame.new(Vector3.new(20.1230125, 6.14501476, -134.399979)) * CFrame.Angles(-0, 0, -0)
obj38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj38.Material = Enum.Material.SmoothPlastic
obj38.Size = Vector3.new(0.0500000007, 0.25999999, 0.25999999)
obj38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj38.BrickColor = BrickColor.new("Institutional white")
obj38.Friction = 0.30000001192093
obj38.Shape = Enum.PartType.Cylinder
obj38.Name = "redstuff"
obj38.Anchored = true
obj38.Parent = obj1

local audio = Instance.new('Sound',knife)
audio.Volume = 2

local audio2 = Instance.new('Sound',knife)
audio2.Volume = 2

local holdpart = Instance.new("Part")
holdpart.Parent = me
holdpart.Size = Vector3.new(0.4, 0.4, 0.2)
holdpart.Position = me.Head.Position + Vector3.new(0, 1, 0)
holdpart.BrickColor = BrickColor.new("Burnt Sienna")

local previous = nil
for i,v in pairs(obj1:GetChildren()) do
	if v:IsA('BasePart') then
		if previous then
			local weld = Instance.new('Weld',v)
			weld.Part0 = v
			weld.Part1 = previous
			weld.C0 = v.CFrame:inverse() * previous.CFrame
			previous.Anchored = false
			previous.CanCollide = false
			local vee = v
			weld.AncestryChanged:connect(function(mez,par)
				wait()
				weld.Parent = vee
			end)
		end
		previous = v
	end
end
previous.Anchored = false
previous.CanCollide = false

local holdpartweld = Instance.new("Weld", me.Torso)
holdpartweld.Part0 = me.Torso
holdpartweld.Part1 = holdpart
holdpartweld.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(-1, -0.8, 0.15)

holdpartweld.AncestryChanged:connect(function(mez,par)
	if par ~= me.Torso then
		wait()
		holdpartweld.Parent = me.Torso
	end
end)

local knifeweld = Instance.new('Weld',me.Torso)
knifeweld.Part0 = me.Torso
knifeweld.Part1 = obj2
knifeweld.C1 = CFrame.Angles(0,math.rad(90),0) * CFrame.new(1, 0.8, 0.55)
knifeweld.AncestryChanged:connect(function(mez,par)
	if par ~= me.Torso then
		wait()
		knifeweld.Parent = me.Torso
	end
end)
local ScreenGui = Instance.new("ScreenGui")
local CustomizeGui = Instance.new("Frame")
local Customize = Instance.new("TextLabel")
local ClosestColor = Instance.new("TextLabel")
local Line = Instance.new("TextLabel")
local Color = Instance.new("ImageLabel")
local Close = Instance.new("TextButton")
local RedHue = Instance.new("TextLabel")
local GreenHue = Instance.new("TextLabel")
local RedInput = Instance.new("TextBox")
local BlueHue = Instance.new("TextLabel")
local GreenInput = Instance.new("TextBox")
local TransInput = Instance.new("TextBox")
local BlueInput = Instance.new("TextBox")
local Message = Instance.new("TextLabel")
local Message2 = Instance.new("TextLabel")
local TrailTransparency = Instance.new("TextLabel")
local TrailInput = Instance.new("TextBox")
local MusicOption = Instance.new("TextButton")
local ScreenOption = Instance.new("TextButton")
local ScreenOptionTxt = Instance.new("TextLabel")
local MusicOptionTxt = Instance.new("TextLabel")

-- Properties

ScreenGui.Parent = playergui

CustomizeGui.Name = "CustomizeGui"
CustomizeGui.Parent = ScreenGui
CustomizeGui.BackgroundColor3 = Color3.new(0.294118, 0.294118, 0.294118)
CustomizeGui.BackgroundTransparency = 0.5
CustomizeGui.BorderColor3 = Color3.new(0, 0, 0)
CustomizeGui.BorderSizePixel = 2
CustomizeGui.Position = UDim2.new(0, 0, 0.5, 0)
CustomizeGui.Size = UDim2.new(0.449999988, 0, 0.449999988, 0)

Customize.Name = "Customize"
Customize.Parent = CustomizeGui
Customize.BackgroundColor3 = Color3.new(0.294118, 0.294118, 0.294118)
Customize.BackgroundTransparency = 0.75
Customize.BorderSizePixel = 0
Customize.Size = UDim2.new(1, 0, 0.200000003, 0)
Customize.FontSize = Enum.FontSize.Size28
Customize.Text = "ACCENT COLOR CUSTOMIZATION"
Customize.TextColor3 = Color3.new(1, 1, 1)
Customize.TextScaled = true
Customize.TextSize = 25
Customize.TextStrokeTransparency = 0.5
Customize.TextWrapped = true

ClosestColor.Name = "ClosestColor"
ClosestColor.Parent = CustomizeGui
ClosestColor.BackgroundColor3 = Color3.new(1, 1, 1)
ClosestColor.BackgroundTransparency = 1
ClosestColor.Position = UDim2.new(0, 0, 0.850000024, 0)
ClosestColor.Size = UDim2.new(1, 0, 0.150000006, 0)
ClosestColor.Font = Enum.Font.SourceSansLight
ClosestColor.FontSize = Enum.FontSize.Size32
ClosestColor.Text = "Your color is closest to Institutional White"
ClosestColor.TextColor3 = Color3.new(1, 1, 1)
ClosestColor.TextSize = 30
ClosestColor.TextStrokeTransparency = 0.5

Line.Name = "Line"
Line.Parent = CustomizeGui
Line.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Line.BackgroundTransparency = 0.5
Line.BorderColor3 = Color3.new(0, 0, 0)
Line.BorderSizePixel = 0
Line.Position = UDim2.new(0, 0, 0.200000003, 0)
Line.Size = UDim2.new(1, 0, 0.0299999993, 0)
Line.Font = Enum.Font.SourceSans
Line.FontSize = Enum.FontSize.Size14
Line.Text = " "
Line.TextSize = 14

Color.Name = "Color"
Color.Parent = CustomizeGui
Color.BackgroundColor3 = Color3.new(1, 1, 1)
Color.BorderSizePixel = 0
Color.Position = UDim2.new(0.699999988, 0, 0.419999987, 0)
Color.Size = UDim2.new(0.300000012, 0, 0.300000012, 0)
Color.SizeConstraint = Enum.SizeConstraint.RelativeYY

MusicOption.Parent = CustomizeGui
MusicOption.Name = "MusicOption"
MusicOption.BackgroundColor3 = Color3.new(0, 1, 0)
MusicOption.BorderSizePixel = 1
MusicOption.Position = UDim2.new(0.01, 0, -0.12, 0)
MusicOption.Size = UDim2.new(0.05, 0, 0.1, 0)
MusicOption.Text = ""
MusicOption.BackgroundTransparency = 0.5

ScreenOption.Parent = CustomizeGui
ScreenOption.Name = "ScreenOption"
ScreenOption.BackgroundColor3 = Color3.new(0, 1, 0)
ScreenOption.BorderSizePixel = 1
ScreenOption.Position = UDim2.new(0.01, 0, -0.23, 0)
ScreenOption.Size = UDim2.new(0.05, 0, 0.1, 0)
ScreenOption.Text = ""
ScreenOption.BackgroundTransparency = 0.5

ScreenOptionTxt.Name = "ScreenOptionTxt"
ScreenOptionTxt.Parent = CustomizeGui
ScreenOptionTxt.BackgroundColor3 = Color3.new(1, 1, 1)
ScreenOptionTxt.BackgroundTransparency = 1
ScreenOptionTxt.Position = UDim2.new(0.07, 0, -0.23, 0)
ScreenOptionTxt.Size = UDim2.new(1, 0, 0.07, 0)
ScreenOptionTxt.Font = Enum.Font.SourceSans
ScreenOptionTxt.FontSize = Enum.FontSize.Size24
ScreenOptionTxt.Text = "Psychopath Red Filter"
ScreenOptionTxt.TextColor3 = Color3.new(1, 1, 1)
ScreenOptionTxt.TextScaled = true
ScreenOptionTxt.TextSize = 20
ScreenOptionTxt.TextStrokeColor3 = Color3.new(0, 0, 0)
ScreenOptionTxt.TextStrokeTransparency = 0.5
ScreenOptionTxt.TextWrapped = true
ScreenOptionTxt.TextXAlignment = "Left"

MusicOptionTxt.Name = "MusicOptionTxt"
MusicOptionTxt.Parent = CustomizeGui
MusicOptionTxt.BackgroundColor3 = Color3.new(1, 1, 1)
MusicOptionTxt.BackgroundTransparency = 1
MusicOptionTxt.Position = UDim2.new(0.07, 0, -0.12, 0)
MusicOptionTxt.Size = UDim2.new(1, 0, 0.07, 0)
MusicOptionTxt.Font = Enum.Font.SourceSans
MusicOptionTxt.FontSize = Enum.FontSize.Size24
MusicOptionTxt.Text = "Psychopath Background Music"
MusicOptionTxt.TextColor3 = Color3.new(1, 1, 1)
MusicOptionTxt.TextScaled = true
MusicOptionTxt.TextSize = 20
MusicOptionTxt.TextStrokeColor3 = Color3.new(0, 0, 0)
MusicOptionTxt.TextStrokeTransparency = 0.5
MusicOptionTxt.TextWrapped = true
MusicOptionTxt.TextXAlignment = "Left"

Close.Name = "Close"
Close.Parent = CustomizeGui
Close.BackgroundColor3 = Color3.new(0.294118, 0.294118, 0.294118)
Close.BackgroundTransparency = 0.5
Close.BorderColor3 = Color3.new(0, 0, 0)
Close.BorderSizePixel = 2
Close.Position = UDim2.new(1.005, 0, 0, 0)
Close.Size = UDim2.new(0.100000001, 0, 0.2, 0)
Close.Font = Enum.Font.SourceSans
Close.FontSize = Enum.FontSize.Size14
Close.Text = "X"
Close.TextColor3 = Color3.new(1, 1, 1)
Close.TextScaled = true
Close.TextSize = 14
Close.TextStrokeTransparency = 0
Close.TextWrapped = true

RedHue.Name = "RedHue"
RedHue.Parent = CustomizeGui
RedHue.BackgroundColor3 = Color3.new(1, 1, 1)
RedHue.BackgroundTransparency = 1
RedHue.Position = UDim2.new(0.100000001, 0, 0.400000006, 0)
RedHue.Size = UDim2.new(0.300000012, 0, 0.100000001, 0)
RedHue.Font = Enum.Font.SourceSans
RedHue.FontSize = Enum.FontSize.Size24
RedHue.Text = "RED Hue Value: "
RedHue.TextColor3 = Color3.new(1, 1, 1)
RedHue.TextScaled = true
RedHue.TextSize = 20
RedHue.TextStrokeColor3 = Color3.new(1, 0, 0)
RedHue.TextStrokeTransparency = 0.75
RedHue.TextWrapped = true

GreenHue.Name = "GreenHue"
GreenHue.Parent = CustomizeGui
GreenHue.BackgroundColor3 = Color3.new(1, 1, 1)
GreenHue.BackgroundTransparency = 1
GreenHue.Position = UDim2.new(0.100000001, 0, 0.5, 0)
GreenHue.Size = UDim2.new(0.300000012, 0, 0.100000001, 0)
GreenHue.Font = Enum.Font.SourceSans
GreenHue.FontSize = Enum.FontSize.Size24
GreenHue.Text = "GREEN Hue Value:"
GreenHue.TextColor3 = Color3.new(1, 1, 1)
GreenHue.TextScaled = true
GreenHue.TextSize = 20
GreenHue.TextStrokeColor3 = Color3.new(0, 1, 0)
GreenHue.TextStrokeTransparency = 0.75
GreenHue.TextWrapped = true

RedInput.Name = "RedInput"
RedInput.Parent = CustomizeGui
RedInput.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
RedInput.BackgroundTransparency = 0.5
RedInput.BorderSizePixel = 0
RedInput.Position = UDim2.new(0.419999987, 0, 0.425000007, 0)
RedInput.Size = UDim2.new(0.200000003, 0, 0.075000003, 0)
RedInput.Font = Enum.Font.SourceSans
RedInput.FontSize = Enum.FontSize.Size14
RedInput.Text = "255"
RedInput.TextColor3 = Color3.new(1, 1, 1)
RedInput.TextSize = 14
RedInput.TextStrokeTransparency = 0

BlueHue.Name = "BlueHue"
BlueHue.Parent = CustomizeGui
BlueHue.BackgroundColor3 = Color3.new(1, 1, 1)
BlueHue.BackgroundTransparency = 1
BlueHue.Position = UDim2.new(0.100000001, 0, 0.600000024, 0)
BlueHue.Size = UDim2.new(0.300000012, 0, 0.100000001, 0)
BlueHue.Font = Enum.Font.SourceSans
BlueHue.FontSize = Enum.FontSize.Size24
BlueHue.Text = "BLUE Hue Value:"
BlueHue.TextColor3 = Color3.new(1, 1, 1)
BlueHue.TextScaled = true
BlueHue.TextSize = 20
BlueHue.TextStrokeColor3 = Color3.new(0, 0, 1)
BlueHue.TextStrokeTransparency = 0.75
BlueHue.TextWrapped = true

TrailTransparency.Name = "TrailTransparency"
TrailTransparency.Parent = CustomizeGui
TrailTransparency.BackgroundColor3 = Color3.new(1, 1, 1)
TrailTransparency.BackgroundTransparency = 1
TrailTransparency.Position = UDim2.new(0.090000001, 0, 0.700000024, 0)
TrailTransparency.Size = UDim2.new(0.310000012, 0, 0.100000001, 0)
TrailTransparency.Font = Enum.Font.SourceSans
TrailTransparency.FontSize = Enum.FontSize.Size24
TrailTransparency.Text = "Trail Transparency:"
TrailTransparency.TextColor3 = Color3.new(1, 1, 1)
TrailTransparency.TextScaled = true
TrailTransparency.TextSize = 20
TrailTransparency.TextStrokeColor3 = Color3.new(0, 0, 0)
TrailTransparency.TextWrapped = true

GreenInput.Name = "GreenInput"
GreenInput.Parent = CustomizeGui
GreenInput.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
GreenInput.BackgroundTransparency = 0.5
GreenInput.BorderSizePixel = 0
GreenInput.Position = UDim2.new(0.419999987, 0, 0.524999976, 0)
GreenInput.Size = UDim2.new(0.200000003, 0, 0.075000003, 0)
GreenInput.Font = Enum.Font.SourceSans
GreenInput.FontSize = Enum.FontSize.Size14
GreenInput.Text = "255"
GreenInput.TextColor3 = Color3.new(1, 1, 1)
GreenInput.TextSize = 14
GreenInput.TextStrokeTransparency = 0

TransInput.Name = "TransInput"
TransInput.Parent = CustomizeGui
TransInput.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
TransInput.BackgroundTransparency = 0.5
TransInput.BorderSizePixel = 0
TransInput.Position = UDim2.new(0.419999987, 0, 0.725000024, 0)
TransInput.Size = UDim2.new(0.200000003, 0, 0.075000003, 0)
TransInput.Font = Enum.Font.SourceSans
TransInput.FontSize = Enum.FontSize.Size14
TransInput.Text = "50"
TransInput.TextColor3 = Color3.new(1, 1, 1)
TransInput.TextSize = 14
TransInput.TextStrokeTransparency = 0

BlueInput.Name = "BlueInput"
BlueInput.Parent = CustomizeGui
BlueInput.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
BlueInput.BackgroundTransparency = 0.5
BlueInput.BorderSizePixel = 0
BlueInput.Position = UDim2.new(0.419999987, 0, 0.625, 0)
BlueInput.Size = UDim2.new(0.200000003, 0, 0.075000003, 0)
BlueInput.Font = Enum.Font.SourceSans
BlueInput.FontSize = Enum.FontSize.Size14
BlueInput.Text = "255"
BlueInput.TextColor3 = Color3.new(1, 1, 1)
BlueInput.TextSize = 14
BlueInput.TextStrokeTransparency = 0

Message.Name = "Message"
Message.Parent = CustomizeGui
Message.BackgroundColor3 = Color3.new(1, 1, 1)
Message.BackgroundTransparency = 1
Message.Position = UDim2.new(0, 0, 0.2500004, 0)
Message.Size = UDim2.new(1, 0, 0.100000006, 0)
Message.Font = Enum.Font.SourceSans
Message.FontSize = Enum.FontSize.Size18
Message.Text = "|| Inputs must be values ||"
Message.TextColor3 = Color3.new(1, 1, 1)
Message.TextScaled = true
Message.TextSize = 15
Message.TextStrokeTransparency = 0.75
Message.TextWrapped = true

local attun = Instance.new("Attachment", knife)
attun.Position = Vector3.new(0, 0.1, -1.75)
local atdos = Instance.new("Attachment", knife)
atdos.Position = Vector3.new(0, -0.1, 0.5)
local trail = Instance.new("Trail", knife)
trail.LightEmission = 0.5
trail.Attachment0 = attun
trail.Attachment1 = atdos
trail.Lifetime = 0.175
trail.MinLength = 0
trail.Enabled = false

function updatez()
	local rc = tonumber(RedInput.Text)
	local gc = tonumber(GreenInput.Text)
	local bc = tonumber(BlueInput.Text)
	local tcupd = tonumber(TransInput.Text)
	if rc == nil then
		rc = 0
	end
	if gc == nil then
		gc = 0
	end
	if bc == nil then
		bc = 0
	end
	if tcupd == nil then
		tcupd = 0
	end
	local tc = tcupd/100
	Color.BackgroundColor3 = Color3.fromRGB(rc,gc,bc)
	ClosestColor.Text = "Your color is closest to "..tostring(BrickColor.new(Color3.fromRGB(rc,gc,bc)))
	obj32.Color = Color3.fromRGB(rc,gc,bc)
	obj33.Color = Color3.fromRGB(rc,gc,bc)
	obj34.Color = Color3.fromRGB(rc,gc,bc)
	obj35.Color = Color3.fromRGB(rc,gc,bc)
	obj36.Color = Color3.fromRGB(rc,gc,bc)
	obj37.Color = Color3.fromRGB(rc,gc,bc)
	obj38.Color = Color3.fromRGB(rc,gc,bc)
	trail.Color = ColorSequence.new(Color3.fromRGB(rc, gc, bc))
	trail.Transparency = NumberSequence.new(tc)
	TrailTransparency.TextStrokeTransparency = tc
end

RedInput.Changed:connect(function(val)
	if val == "Text" and tonumber(RedInput.Text) then
		RedInput.Text = tostring(tonumber(RedInput.Text))
		if tonumber(RedInput.Text) > 255 then
			RedInput.Text = '255'
		end
	elseif val == "Text" then
		RedInput.Text = ""
	end
	updatez()
end)
GreenInput.Changed:connect(function(val)
	if val == "Text" and tonumber(GreenInput.Text) then
		GreenInput.Text = tostring(tonumber(GreenInput.Text))
		if tonumber(GreenInput.Text) > 255 then
			GreenInput.Text = '255'
		end
	elseif val == "Text" then
		GreenInput.Text = ""
	end
	updatez()
end)
BlueInput.Changed:connect(function(val)
	if val == "Text" and tonumber(BlueInput.Text) then
		BlueInput.Text = tostring(tonumber(BlueInput.Text))
		if tonumber(BlueInput.Text) > 255 then
			BlueInput.Text = '255'
		end
	elseif val == "Text" then
		BlueInput.Text = ""
	end
	updatez()
end)
TransInput.Changed:connect(function(val)
	if val == "Text" and tonumber(TransInput.Text) then
		TransInput.Text = tostring(tonumber(TransInput.Text))
		if tonumber(TransInput.Text) > 100 then
			TransInput.Text = '100'
		end
	elseif val == "Text" then
		TransInput.Text = ""
	end
	updatez()
end)

Close.MouseButton1Click:connect(function()
	if lerpz == false then
		lerpz = true
		if Close.Text ~= "+" then
			CustomizeGui:TweenPosition(UDim2.new(-0.45,0,0.5,0,Enum.EasingDirection.Out,Enum.EasingStyle.Quint,2))
			for i=1,10 do
				Close.TextTransparency = i/10
				Close.TextStrokeTransparency = i/10
				wait(0.01)
			end
			Close.Text = "+"
			for i=1,10 do
				Close.TextTransparency = (10-i+1)/10
				Close.TextStrokeTransparency = (10-i+1)/10
				wait(0.01)
			end
			lerpz = false
		else
			CustomizeGui:TweenPosition(UDim2.new(0,0,0.5,0,Enum.EasingDirection.Out,Enum.EasingStyle.Quint,2))
			for i=1,10 do
				Close.TextTransparency = i/10
				Close.TextStrokeTransparency = i/10
				wait(0.01)
			end
			Close.Text = "X"
			for i=1,10 do
				Close.TextTransparency = (10-i+1)/10
				Close.TextStrokeTransparency = (10-i+1)/10
				wait(0.01)
			end
			lerpz = false
		end
	end
end)

MusicOption.MouseButton1Click:connect(function()
	if canbackgroundmusic == true then
		canbackgroundmusic = false
		MusicOption.BackgroundColor3 = Color3.new(1, 0, 0)
	else
		canbackgroundmusic = true
		MusicOption.BackgroundColor3 = Color3.new(0, 1, 0)
	end
end)

ScreenOption.MouseButton1Click:connect(function()
	if cancolorfilter == true then
		cancolorfilter = false
		ScreenOption.BackgroundColor3 = Color3.new(1, 0, 0)
	else
		cancolorfilter = true
		ScreenOption.BackgroundColor3 = Color3.new(0, 1, 0)
	end
end)

function equip()
	local doit = coroutine.wrap(function()
	if me:FindFirstChild('Right Arm') and me:FindFirstChild('Torso') then
		acting = true
		local arm = me["Right Arm"]
		local arm2 = me["Left Arm"]
		local tors = me.Torso
		local weld = Instance.new('Weld',arm)
		weld.Part0 = arm
		weld.Part1 = tors
		weld.C0 = CFrame.new(-1.5,0,0)
		local weld2 = Instance.new("Weld", arm2)
		weld2.Part0 = arm2
		weld2.Part1 = tors
		weld2.C0 = CFrame.new(1.5, 0, 0)
		wait(0.001)
		for i = 0,1,0.1 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil then return end
			weld.C0 = weld.C0:lerp(CFrame.new(-0.2,0.2,-0.5)*CFrame.Angles(0,-3.1,0.9),i)
			weld2.C0 = weld2.C0:lerp(CFrame.new(1.5, 0.6, 0) * CFrame.Angles(0,0,0.5),i)
			wait(0.001)
		end
		wait(0.15)
		trail.Enabled = true
		for i = 0,1,0.1 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil then return end
			weld.C0 = weld.C0:lerp(CFrame.new(-0.5,2,0)*CFrame.Angles(0,0,-1.55),i)
			weld2.C0 = weld2.C0:lerp(CFrame.new(1.5, 0, 0), i)
			wait(0.001)
		end
		trail.Enabled = false
		wait(0.2)
		for i = 0,1,0.1 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil then return end
			weld.C0 = weld.C0:lerp(CFrame.new(-1.5,0,0),i)
			wait(0.001)
		end
		weld:Destroy()
		weld2:Remove()
		if tors ~= nil then
			rightshoulderz:Clone().Parent = me.Torso
			leftshoulderz:Clone().Parent = me.Torso
		end
	end
	acting = false
	end)
	doit()
end

function kysnigga()
	if kyssing == true then return end
	kyssing = true
	acting = true
	decearingTHING = math.random(1, 100)
	if decearingTHING == 4 then
		decearingEGG = Instance.new("Sound", me.Torso)
		decearingEGG.SoundId = "rbxassetid://138084557"
		decearingEGG.PlaybackSpeed = math.random(10, 12) / 10
		decearingEGG.TimePosition = 0.2
		decearingEGG:Play()
	end
	me.Humanoid.WalkSpeed = 0
	me.Humanoid.JumpPower = 0
	
	local rightarm = Instance.new("Weld", me.Torso)
	rightarm.Part0 = me.Torso
	rightarm.Part1 = me["Right Arm"]
	rightarm.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(1.5, 0, 0)
	
	local leftarm = Instance.new("Weld", me.Torso)
	leftarm.Part0 = me.Torso
	leftarm.Part1 = me["Left Arm"]
	leftarm.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(-1.5, 0, 0)
	
	local tors = Instance.new("Weld", me.HumanoidRootPart)
	tors.Part0 = me.HumanoidRootPart
	tors.Part1 = me.Torso
	tors.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0)
	
	local rightleg = Instance.new("Weld", me.Torso)
	rightleg.Part0 = me.Torso
	rightleg.Part1 = me["Right Leg"]
	rightleg.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(0.5, -2, 0)
	
	local leftleg = Instance.new("Weld", me.Torso)
	leftleg.Part0 = me.Torso
	leftleg.Part1 = me["Left Leg"]
	leftleg.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(-0.5, -2, 0)
	
	for i = 0, 1, 0.03 do
		tors.C0 = tors.C0:lerp(CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(-10), 0, 0), i)
		leftleg.C0 = leftleg.C0:lerp(CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-80), 0, 0), i)
		rightleg.C0 = rightleg.C0:lerp(CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-80), 0, 0), i)
		rightarm.C0 = rightarm.C0:lerp(CFrame.new(1.5, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), i)
		wait()
	end
	for i = 0, 1, 0.03 do
		tors.C0 = tors.C0:lerp(CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(5), 0, 0), i)
		leftleg.C0 = leftleg.C0:lerp(CFrame.new(-0.5, -1, 0.15) * CFrame.Angles(math.rad(-95), 0, 0), i)
		rightleg.C0 = rightleg.C0:lerp(CFrame.new(0.5, -1, 0.15) * CFrame.Angles(math.rad(-95), 0, 0), i)
		rightarm.C0 = rightarm.C0:lerp(CFrame.new(1, 0.3, -1.5) * CFrame.Angles(math.rad(90), 0, math.rad(-35)), i)
		leftarm.C0 = leftarm.C0:lerp(CFrame.new(-1, 0.3, -1.5) * CFrame.Angles(math.rad(90), 0, math.rad(35)), i)
		knifeweld.C1 = knifeweld.C1:lerp(CFrame.new(1.35, 0, 1) * CFrame.Angles(1.55, math.rad(-180), 1), i)
		wait()
	end
	local bleedzer = Instance.new('Part',me.Torso)
	bleedzer.CFrame = me.Torso.CFrame
	bleedzer.Size = Vector3.new(0.1,0.1,0.1)
	bleedzer.Transparency = 1
	bleedzer.CanCollide = false
	local weld = Instance.new('Weld',bleedzer)
	weld.Part0 = bleedzer
	weld.Part1 = me.Torso
	weld.C0= CFrame.new(0,0,0)*CFrame.Angles(math.rad(-90),0,0)
	local woodpekker = coroutine.wrap(function()
		bleed(bleedzer)
	end)
	woodpekker()
	audio.SoundId = "rbxassetid://199977936"
	audio.PlaybackSpeed = 1.5
	audio:Play()
	audio2.SoundId = "rbxassetid://220834019"
	audio2.PlaybackSpeed = 1
	audio2.TimePosition = 0.1
	audio2:Play()
	for i = 0, 1, 0.1 do
		tors.C0 = tors.C0:lerp(CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(-20), 0, 0), i)
		leftleg.C0 = leftleg.C0:lerp(CFrame.new(-0.5, -1, -0.35) * CFrame.Angles(math.rad(-70), 0, 0), i)
		rightleg.C0 = rightleg.C0:lerp(CFrame.new(0.5, -1, -0.35) * CFrame.Angles(math.rad(-70), 0, 0), i)
		rightarm.C0 = rightarm.C0:lerp(CFrame.new(1, 0, 0) * CFrame.Angles(math.rad(70), 0, math.rad(-35)), i)
		leftarm.C0 = leftarm.C0:lerp(CFrame.new(-1, 0, 0) * CFrame.Angles(math.rad(70), 0, math.rad(35)), i)
		knifeweld.C1 = knifeweld.C1:lerp(CFrame.new(1.35, 0, 1) * CFrame.Angles(1.55, math.rad(-180), 1), i)
		wait()
	end
	wait(1)
	audio.SoundId = "rbxassetid://210943487"
	audio.TimePosition = 0.2
	audio.PlaybackSpeed = 0.75
	audio:Play()
	for i = 0, 1, 0.03 do
		tors.C0 = tors.C0:lerp(CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(-20), 0, 0), i)
		leftleg.C0 = leftleg.C0:lerp(CFrame.new(-0.5, -1, -0.35) * CFrame.Angles(math.rad(-70), 0, 0), i)
		rightleg.C0 = rightleg.C0:lerp(CFrame.new(0.5, -1, -0.35) * CFrame.Angles(math.rad(-70), 0, 0), i)
		rightarm.C0 = rightarm.C0:lerp(CFrame.new(1, 0.3, -1.5) * CFrame.Angles(math.rad(70), 0, math.rad(-35)), i)
		leftarm.C0 = leftarm.C0:lerp(CFrame.new(-1, 0.3, -1.5) * CFrame.Angles(math.rad(70), 0, math.rad(35)), i)
		knifeweld.C1 = knifeweld.C1:lerp(CFrame.new(1.35, 0, 1) * CFrame.Angles(1.55, math.rad(-180), 1), i)
		wait()
	end
	for i = 0, 1, 0.03 do
		rightarm.C0 = rightarm.C0:lerp(CFrame.new(1.5, 0, -0.4) * CFrame.Angles(math.rad(30), 0, math.rad(0)), i)
		leftarm.C0 = leftarm.C0:lerp(CFrame.new(-1.5, 0, -0.4) * CFrame.Angles(math.rad(30), 0, math.rad(0)), i)
		knifeweld.C1 = knifeweld.C1:lerp(CFrame.fromEulerAnglesXYZ(1.55, math.rad(-90), 1.55) * CFrame.new(0, 0.95, 0), i)
		wait()
	end
	wait(0.24)
	if me:FindFirstChildOfClass('Humanoid') then
		me:FindFirstChildOfClass('Humanoid').Health = 0
	end
	wait(0.01)
	killz(me,me.Torso.Name,nil,nil,true)
	
	tors:Remove()
	rightarm:Remove()
	rightleg:Remove()
	leftleg:Remove()
	leftarm:Remove()
	rightshoulderz:Clone().Parent = me.Torso
	leftshoulderz:Clone().Parent = me.Torso
	torsojoint:Clone().Parent = me.HumanoidRootPart
	lefthipz:Clone().Parent = me.Torso
	righthipz:Clone().Parent = me.Torso
	me.Humanoid.JumpPower = 50
	me.Humanoid.WalkSpeed = 16
	acting = false
	canClick = true
	doing = false
	hit = false
	kyssing = false
	if decearingTHING == 4 then
		decearingEGG:Remove()
	end
end

function bleedout()
	local doit = coroutine.wrap(function()
		local targe = grabbed
		local num = 0
		while targe and targe:FindFirstChildOfClass('Humanoid') and targe:FindFirstChildOfClass('Humanoid').Health > 0 and num < 11 do
			if targe.Head:FindFirstChild('Died') then
				tone = math.random(6, 12) / 10
				targe.Head.Died.PlaybackSpeed = tone
				targe.Head.Died:Play()
			else
				local deathsound = Instance.new('Sound',targe.Head)
				deathsound.Name = "Died"
				deathsound.SoundId = 'rbxasset://sounds/uuhhh.mp3'
				deathsound.Volume = 0.65
				deathsound.EmitterSize = 5
				deathsound.MaxDistance = 150
				tone = math.random(5, 15) / 10
				targe.Head.Died.PlaybackSpeed = tone
				targe.Head.Died:Play()
			end
			targe:FindFirstChildOfClass('Humanoid').Health = targe:FindFirstChildOfClass('Humanoid').Health - 7
			num = num+1
			wait(0.325)
		end
		targe:FindFirstChildOfClass('Humanoid').Health = 0
		wait()
		killz(targe,'Head',nil,nil,false,true)
		wait(2)
		targe:Remove()
	end)
	doit()
end

function liedown()
	local doit = coroutine.wrap(function()
	local targe = grabbed
		wait(2)
		if targe and targe:FindFirstChildOfClass('Humanoid') then
			targe:FindFirstChildOfClass('Humanoid').PlatformStand = false
		end
	end)
	doit()
end

function grab()
	local doit = coroutine.wrap(function()
	acting = true
	me:FindFirstChildOfClass('Humanoid').WalkSpeed = me:FindFirstChildOfClass('Humanoid').WalkSpeed + 3
	local arm = me["Right Arm"]
	local tors = me.Torso
	local arm2 = me["Left Arm"]
	local humanroot = me.HumanoidRootPart
	local weld2 = Instance.new('Weld',arm)
	weld2.Part0 = arm
	weld2.Part1 = tors
	weld2.C0 = CFrame.new(-1.5,0,0) * CFrame.Angles(0, 0, 0)
	local weld3 = Instance.new('Weld',arm2)
	weld3.Part0 = arm2
	weld3.Part1 = tors
	weld3.C0 = CFrame.new(1.5,0,-0.3) * CFrame.Angles(0.3,0.1,0)
	for i = 0,1,0.05 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil or humanroot == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-1.2,1.3,0.4)*CFrame.Angles(0.5,0,-1.2),i)
		weld3.C0 = weld3.C0:lerp(CFrame.new(1.2,1.3,0)*CFrame.Angles(0,0,1.2),i)
		knifeweld.C1 = CFrame.fromEulerAnglesXYZ(1.55, math.rad(-90), -1.55) * CFrame.new(0, 0.95, 0)
		wait(0.01)
	end
	grabbing = true
	trail.Enabled = true
	for i = 0,1,0.10 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil or humanroot == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-0.9, 0.80, -1.1)* CFrame.Angles(-1.5, 0, -1.3), i)
		weld3.C0 = weld3.C0:lerp(CFrame.new(0.8, 1, -0.5)* CFrame.Angles(-1.5, 0, 1.1), i)
		wait(0.01)
	end
	trail.Enabled = false
	wait(0.5)
	grabbing = false
	me:FindFirstChildOfClass('Humanoid').WalkSpeed = me:FindFirstChildOfClass('Humanoid').WalkSpeed - 3
	if grabbed == nil then
		for i = 0,1,0.1 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil then return end
			weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0,0),i)
			weld3.C0 = weld3.C0:lerp(CFrame.new(1.5,0,0),i)
			knifeweld.C1 = CFrame.fromEulerAnglesXYZ(1.55, math.rad(-90), 1.55) * CFrame.new(0, 0.95, 0)
			wait(0.001)
		end
		weld2:Destroy()
		weld3:Destroy()
		rightshoulderz:Clone().Parent = me.Torso
			leftshoulderz:Clone().Parent = me.Torso
		acting = false
		canClick = true
	end
	end)
	doit()
end

function kill()
	paralyzed = false
	if grabbed.Torso:FindFirstChild("TargetWeld") == nil or grabbed:FindFirstChildOfClass('Humanoid').Health <= 0 then hardrelease() return end
	targetweld = grabbed.Torso.TargetWeld
	targetweld2 = nil
	local reee = grabbed:FindFirstChild("Left Arm")
	if reee and reee:FindFirstChild("Weld") then
		targetweld2 = reee.Weld
	end
	for i, v in pairs(grabbed:GetChildren()) do
		if v.Name == "Part" then
			v.CanCollide = true
		end
	end
	targetweld3pt = grabbed:FindFirstChild("Right Arm")
	local targetrightshoulder = rightshoulder
	local targetleftshoulder = leftshoulder
	local targetweld3 = Instance.new("Weld", targetweld3pt)
	targetweld3.Part0 = grabbed.Torso
	targetweld3.Part1 = targetweld3pt
	targetweld3.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(1.5, 0, 0)
	
	local doit = coroutine.wrap(function()
	local arm = me["Right Arm"]
	local tors = grabbed.Torso
	local arm2 = me["Left Arm"]
	if arm:FindFirstChildOfClass('Weld') == nil or arm2:FindFirstChildOfClass('Weld') == nil then return end
	doing = true
	local weld2 = arm:FindFirstChildOfClass('Weld')
	local weld3 = arm2:FindFirstChildOfClass('Weld')
	local humanroot = me.HumanoidRootPart
	
	for i = 0,1,0.1 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil or weld3 == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-0.9, 0.80, -1.1)* CFrame.Angles(-1.9, 0, -1.4), i)
		weld3.C0 = weld3.C0:lerp(CFrame.new(0.8, 0.5, -0.5)* CFrame.Angles(-1.5, 0.4, 1.1), i)
		wait(0.01)
	end
	
	audio:Stop()
	audio.SoundId = "rbxassetid://517040733"
	tone = math.random(1, 3)
	if tone == 1 then audio.PlaybackSpeed = 0.8 audio.TimePosition = 0.3 end
	if tone == 2 then audio.PlaybackSpeed = 1 audio.TimePosition = 0.1 end
	if tone == 3 then audio.PlaybackSpeed = 1.2 audio.TimePosition = 0.2 end
	audio:Play()
	
	local bleedpart = Instance.new("Part", grabbed)
	bleedpart.Size = Vector3.new(0.2, 0.2, 0.2)
	bleedpart.Color = Color3.new(115/225, 115/225, 115/225)
	bleedpart.CanCollide = false
	bleedpart.Position = grabbed.Head.Position + Vector3.new(0, 1, 0)
	bleedpart.Transparency = 1
	
	local bleedpartweld = Instance.new("Weld", grabbed.Torso)
	bleedpartweld.Part0 = grabbed.Torso
	bleedpartweld.Part1 = bleedpart
	bleedpartweld.C0 = CFrame.Angles(-1, 0, -0.35) * CFrame.new(0, 1, 0.8)
	local coru=coroutine.wrap(function()
	bleed(bleedpart)
	end)
	coru()
	
	local slightthrow = Instance.new("BodyThrust", grabbed.Torso)
	slightthrow.Force = Vector3.new(0, 0, -2500)
	
	local slightthrow2 = Instance.new("BodyAngularVelocity", grabbed.Torso)
	slightthrow2.AngularVelocity = Vector3.new(0, -1000, 0)
	slightthrow2.MaxTorque = Vector3.new(1000, 1000, 1000)
	
	if grabbed:FindFirstChildOfClass('Humanoid') then
		grabbed:FindFirstChildOfClass('Humanoid').PlatformStand = true
	end
	
	killz(grabbed,'Left Leg')
	killz(grabbed,'Left Arm')
	killz(grabbed,'Right Leg')
	killz(grabbed,'Right Arm')
	
	trail.Enabled = true
	
	for i = 0,1,0.2 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil or weld3 == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-0.9, 1.7, -0.5)* CFrame.Angles(-0.25, 0, -1.4), i)
		weld3.C0 = weld3.C0:lerp(CFrame.new(0.8, 1.6, -0.5)* CFrame.Angles(-1.5, -1, 1.1), i)
		wait(0.01)
	end
	
	trail.Enabled = false
	
	bleedout()
	
	rightshoulderz:Clone().Parent = me.Torso
		leftshoulderz:Clone().Parent = me.Torso
	grabbed = nil
	
	if humanroot:FindFirstChild('Holder') then
		humanroot.Holder:Destroy()
	end
	
	wait(0.2)
	slightthrow:Remove()
	slightthrow2:Remove()
	for i = 0,1,0.05 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil or weld3 == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5, 0, 0)* CFrame.Angles(0, 0, 0), i)
		weld3.C0 = weld3.C0:lerp(CFrame.new(1.5, 0, 0)* CFrame.Angles(0, 0, 0), i)
		knifeweld.C1 = CFrame.fromEulerAnglesXYZ(1.55, math.rad(-90), 1.55) * CFrame.new(0, 0.95, 0)
		wait(0.01)
	end
	
	weld2:Destroy()
	weld3:Destroy()
	targetweld = nil
	targetweld2 = nil
	targetweld3 = nil
	rightshoulderz:Clone().Parent = me.Torso
	leftshoulderz:Clone().Parent = me.Torso
	acting = false
	canClick = true
	doing = false
	end)
	doit()
end

function finish()
	if finishing == true then return end
	finishing = true
	acting = true
	decearingTHING = math.random(1, 100)
	if decearingTHING == 4 then
		decearingEGG = Instance.new("Sound", me.Torso)
		decearingEGG.SoundId = "rbxassetid://138084557"
		decearingEGG.PlaybackSpeed = math.random(10, 12) / 10
		decearingEGG.TimePosition = 0.2
		decearingEGG:Play()
	end
	me.Humanoid.WalkSpeed = 0
	me.Humanoid.JumpPower = 0
	
	local rightarm = Instance.new("Weld", me.Torso)
	rightarm.Part0 = me.Torso
	rightarm.Part1 = me["Right Arm"]
	rightarm.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(1.5, 0, 0)
	
	local tors = Instance.new("Weld", me.HumanoidRootPart)
	tors.Part0 = me.HumanoidRootPart
	tors.Part1 = me.Torso
	tors.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0)
	
	local rightleg = Instance.new("Weld", me.Torso)
	rightleg.Part0 = me.Torso
	rightleg.Part1 = me["Right Leg"]
	rightleg.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(0.5, -2, 0)
	
	local leftleg = Instance.new("Weld", me.Torso)
	leftleg.Part0 = me.Torso
	leftleg.Part1 = me["Left Leg"]
	leftleg.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(-0.5, -2, 0)
	
	for i = 0, 1, 0.05 do
		tors.C0 = tors.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15), 0, 0), i)
		leftleg.C0 = leftleg.C0:lerp(CFrame.new(-0.5, -2, 0.2) * CFrame.Angles(math.rad(-15), 0, 0), i)
		rightleg.C0 = rightleg.C0:lerp(CFrame.new(0.5, -2, 0.2) * CFrame.Angles(math.rad(-15), 0, 0), i)
		rightarm.C0 = rightarm.C0:lerp(CFrame.new(1.5, 1.9, 0) * CFrame.Angles(math.rad(179), math.rad(179), 0), i)
		wait()
	end
	for i=1,finishnum do
		local num1 = 0.5
		local num2 = 0.5
		local num3 = 0.25
	if finishnum ~= 1 then
		num3 = 0
	end
	trail.Enabled = true
	for i = 0, 1, num1 do
		tors.C0 = tors.C0:lerp(CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(-60), 0, 0), i)
		leftleg.C0 = leftleg.C0:lerp(CFrame.new(-0.5, -1.5, 0) * CFrame.Angles(math.rad(0), 0, 0), i)
		rightleg.C0 = rightleg.C0:lerp(CFrame.new(0.5, -0.7, -1) * CFrame.Angles(math.rad(10), 0, 0), i)
		rightarm.C0 = rightarm.C0:lerp(CFrame.new(1.5, 1.9, -1) * CFrame.Angles(math.rad(160), math.rad(150), 0), i)
		wait()
	end
	wait()
	for i = 0, 1, num2 do
		tors.C0 = tors.C0:lerp(CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-20), 0, 0), i)
		leftleg.C0 = leftleg.C0:lerp(CFrame.new(-0.5, -1.5, 0) * CFrame.Angles(math.rad(-30), 0, 0), i)
		rightleg.C0 = rightleg.C0:lerp(CFrame.new(0.5, -0.7, -1) * CFrame.Angles(math.rad(-20), 0, 0), i)
		rightarm.C0 = rightarm.C0:lerp(CFrame.new(1.5, 1.9, 0.2) * CFrame.Angles(math.rad(250), math.rad(180), 0), i)
		wait()
	end
	trail.Enabled = false
	wait(num3)
	end
	wait()
	for i = 0, 1, 0.05 do
		tors.C0 = tors.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), i)
		leftleg.C0 = leftleg.C0:lerp(CFrame.new(-0.5, -2, 0) * CFrame.Angles(0, 0, 0), i)
		rightleg.C0 = rightleg.C0:lerp(CFrame.new(0.5, -2, 0) * CFrame.Angles(0, 0, 0), i)
		rightarm.C0 = rightarm.C0:lerp(CFrame.new(1.5, 0, 0) * CFrame.Angles(0, 0, 0), i)
		wait()
	end
	tors:Remove()
	rightarm:Remove()
	rightleg:Remove()
	leftleg:Remove()
	rightshoulderz:Clone().Parent = me.Torso
	leftshoulderz:Clone().Parent = me.Torso
	torsojoint:Clone().Parent = me.HumanoidRootPart
	lefthipz:Clone().Parent = me.Torso
	righthipz:Clone().Parent = me.Torso
	me.Humanoid.JumpPower = 50
	me.Humanoid.WalkSpeed = 16
	acting = false
	canClick = true
	doing = false
	hit = false
	finishing = false
	if decearingTHING == 4 then
		decearingEGG:Remove()
	end
end

function throw()
	if grabbed.Torso:FindFirstChild("TargetWeld") == nil or grabbed:FindFirstChildOfClass('Humanoid').Health <= 0 then return end
	paralyzed = false
	targetweld = grabbed.Torso.TargetWeld
	local ree = grabbed:FindFirstChild("Left Arm")
	targetweld2 =nil
	if ree and ree:FindFirstChild("Weld") then
		targetweld2 = ree.Weld
	end
	
	for i, v in pairs(grabbed:GetChildren()) do
		if v.Name == "Part" then
			v.CanCollide = true
		end
	end
	
	
	local doit = coroutine.wrap(function()
	local arm = me["Right Arm"]
	local tors = grabbed.Torso
	local arm2 = me["Left Arm"]
	local targrightshoulder = rightshoulder
	
	local targleftshoulder = leftshoulder
	if arm:FindFirstChildOfClass('Weld') == nil or arm2:FindFirstChildOfClass('Weld') == nil then return end
	doing = true
	local weld2 = arm:FindFirstChildOfClass('Weld')
	local weld3 = arm2:FindFirstChildOfClass('Weld')
	local humanroot = me.HumanoidRootPart
	
	for i = 0,1,0.2 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil or weld3 == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-0.9, 1.7, -0.5)* CFrame.Angles(-0.25, 1, -1.4), i)
		weld3.C0 = weld3.C0:lerp(CFrame.new(0.8, 1.6, -0.5)* CFrame.Angles(-1.5, -1, 1.1), i)
		targetweld.C0 = targetweld.C0:lerp(CFrame.new(0, 1.5, 0)*CFrame.Angles(0, 0, 0), i)
		if targetweld2 then
			targetweld2.C0 = targetweld2.C0:lerp(CFrame.new(-1.5, 0, 0)*CFrame.Angles(0, 0, 0), i)
		end
		wait(0.01)
	end
	
	audio:Stop()
	audio.SoundId = "rbxassetid://536642316"
	tone = math.random(1, 3)
	if tone == 1 then audio.PlaybackSpeed = 0.8 audio.TimePosition = 0.08 end
	if tone == 2 then audio.PlaybackSpeed = 1 audio.TimePosition = 0.1 end
	if tone == 3 then audio.PlaybackSpeed = 1.2 audio.TimePosition = 0.12 end
	audio:Play()
	
	local slightthrow = Instance.new("BodyVelocity", grabbed.Torso)
	slightthrow.Velocity = Vector3.new(0,20,0)+(me.Torso.CFrame.lookVector*20)
	slightthrow.P = 5000
	slightthrow.MaxForce = Vector3.new(9000001,9000001,9000001)
	local point = grabbed.Torso.Position
	local aaaaaa = grabbed
	liedown()
	
	rightshoulderz:Clone().Parent = me.Torso
			leftshoulderz:Clone().Parent = me.Torso
	grabbed = nil
	
	if humanroot:FindFirstChild('Holder') then
		humanroot.Holder:Destroy()
	end
	local coru = coroutine.wrap(function()
		while aaaaaa and aaaaaa:FindFirstChild('Torso') and (aaaaaa.Torso.Position-point).magnitude < 5 do wait(0.001) end
		slightthrow:Remove()
	end)
	coru()
	
	for i = 0,1,0.05 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil or weld3 == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0,0),i)
		weld3.C0 = weld3.C0:lerp(CFrame.new(1.5,0,0),i)
		wait(0.01)
	end
	weld2:Destroy()
	weld3:Destroy()
	targetweld:Remove()
	if targetweld2 then
		targetweld2:Remove()
	end
	if rightshoulder then
	rightshoulder:Clone().Parent = tors
	end
	if leftshoulder then
	leftshoulder:Clone().Parent = tors
	end
	headweld:Clone().Parent = tors
	rightshoulderz:Clone().Parent = me.Torso
			leftshoulderz:Clone().Parent = me.Torso
	acting = false
	canClick = true
	doing = false
	end)
	doit()
end

cfn,ang,mr,int=CFrame.new,CFrame.Angles,math.rad,Instance.new
bc=BrickColor.new
local minimumsize = Vector3.new(0.7,0.7,0.7) 
local surface_between_splitted_parts = 'SmoothNoOutlines'
local fragmentable = workspace
local list = {}
local brickcount = 0
local storage = {}
local fillup = 1000
local maximumstorage = 2000 
local storage_position = Vector3.new(0,0,5000) 
local stored_partsize = Vector3.new(1,1,1) 
local parts_created_per_frame = 5 

local minimumsize = Vector3.new(0.7,0.7,0.7) 
local surface_between_splitted_parts = 'SmoothNoOutlines'
local fragmentable = workspace
local list = {}
local brickcount = 0
local storage = {}
local fillup = 1000
local maximumstorage = 2000
local storage_position = Vector3.new(0,0,5000) 
local stored_partsize = Vector3.new(1,1,1)
local parts_created_per_frame = 5 


function fragmentate(cframe,size,color,explosion_position,explosion_blastradius,backsurface,bottomsurface,frontsurface,leftsurface,rightsurface,topsurface,transparency,reflectance,material)
	local xi = size.X >= minimumsize.X*(1+explosion_blastradius/16) and 2 or 1 
	local yi = size.Y >= minimumsize.Y*(1+explosion_blastradius/16) and 2 or 1
	local zi = size.Z >= minimumsize.Z*(1+explosion_blastradius/16) and 2 or 1
	if xi == 1 and yi == 1 and zi == 1 or (cframe.p-explosion_position).magnitude > size.magnitude/2 + explosion_blastradius then 
		if xi == 1 and yi == 1 and zi == 1 then return end 
		if #storage > 0 then
			local p = storage[1]
			p.BrickColor = color
			p.Size = size
			p.Anchored = false
			p.BackSurface = backsurface
			p.BottomSurface = bottomsurface
			p.FrontSurface = frontsurface
			p.LeftSurface = leftsurface
			p.RightSurface = rightsurface
			p.TopSurface = topsurface
			p.Transparency = transparency
			p.CFrame = cframe
			p.Reflectance = reflectance
			p.Material = material
			game:GetService('Debris'):AddItem(p,30)
			p:BreakJoints()
			table.remove(storage,1)
		else
			local p = Instance.new("Part",fragmentable)
			p.BrickColor = color
			p.FormFactor = "Custom"
			p.Size = size
			p.BackSurface = backsurface
			p.BottomSurface = bottomsurface
			p.FrontSurface = frontsurface
			p.LeftSurface = leftsurface
			p.RightSurface = rightsurface
			p.TopSurface = topsurface
			p.Transparency = transparency
			p.Material = material
		    if p.Transparency>0.285 then
			    p.Anchored = false
			else
			    p.Anchored=false
			    p.Material='Wood'
				game:GetService('Debris'):AddItem(p,10)
			end
			p.CFrame = cframe
			p.Reflectance = reflectance
			p:BreakJoints()
		end
		return 
	end
	local mody = math.random(-125,125)/1000
	for y = 1,yi do
		if math.random()> 0.5 then
			local modx = math.random(-125,125)/1000
			for x = 1,xi do
				local modz = math.random(-125,125)/1000
				for z = 1,zi do --offset = x/xi-0.75+modx)
					fragmentate(cframe*CFrame.new(size.X*(xi==1 and 0 or x/xi-0.75+modx),size.Y*(yi==1 and 0 or y/yi-0.75+mody),size.Z*(zi==1 and 0 or z/zi-0.75+modz)),
						Vector3.new(xi == 2 and size.X*(1-2*math.abs(x/xi-0.75+modx)) or size.X,yi == 2 and size.Y*(1-2*math.abs(y/yi-0.75+mody)) or size.Y,
						zi == 2 and size.Z*(1-2*math.abs(z/zi-0.75+modz)) or size.Z or mustardfoot_was_here),color,explosion_position,explosion_blastradius,
						z~=zi and surface_between_splitted_parts or backsurface,y==2 and surface_between_splitted_parts or bottomsurface,
						z==2 and surface_between_splitted_parts or frontsurface,x==2 and surface_between_splitted_parts or leftsurface,x~=xi and surface_between_splitted_parts or rightsurface,
						y~=yi and surface_between_splitted_parts or topsurface,transparency,reflectance,material) 
				end
				
			end
		else
			local modz = math.random(-125,125)/1000
			for z = 1,zi do
				local modx = math.random(-125,125)/1000
				for x = 1,xi do
					fragmentate(cframe*CFrame.new(size.X*(xi==1 and 0 or x/xi-0.75+modx),size.Y*(yi==1 and 0 or y/yi-0.75+mody),size.Z*(zi==1 and 0 or z/zi-0.75+modz)),
						Vector3.new(xi == 2 and size.X*(1-2*math.abs(x/xi-0.75+modx)) or size.X,yi == 2 and size.Y*(1-2*math.abs(y/yi-0.75+mody)) or size.Y,
						zi == 2 and size.Z*(1-2*math.abs(z/zi-0.75+modz)) or size.Z),color,explosion_position,explosion_blastradius,
						z~=zi and surface_between_splitted_parts or backsurface,y==2 and surface_between_splitted_parts or bottomsurface,
						z==2 and surface_between_splitted_parts or frontsurface,x==2 and surface_between_splitted_parts or leftsurface,x~=xi and surface_between_splitted_parts or rightsurface,
						y~=yi and surface_between_splitted_parts or topsurface,transparency,reflectance,material)
				end
			end
		end
	end				
end

function start_fragmentation(position,radius,nuh)
	local search = Region3.new(position-Vector3.new(radius,radius,radius)*1.1,position+Vector3.new(radius,radius,radius)*1.1)
	repeat
	local finish = false
	local parts = workspace:FindPartsInRegion3WithIgnoreList(search,list,100)
	for i = 1,#parts do
		table.insert(list,1,parts[i])
	end
	finish = true
	until #parts < 100 and finish
	local t = tick()
	for i = 1,#list do
		local p = list[i]
		if p:IsA('UnionOperation') == false and p:IsA('CornerWedgePart') == false and p:IsA('TrussPart') == false and p:IsA('WedgePart') == false and p.Parent and p.Parent ~= obj1 and p.Parent.Name ~= "Projectile" and p:IsDescendantOf(fragmentable) and p:GetMass()<50000 and p.Transparency>0.285 and p.Name~='Base' and p.Parent:FindFirstChildOfClass('Humanoid') == nil and p.Parent.Parent:FindFirstChildOfClass('Humanoid') == nil and p:IsDescendantOf(me)==false then
			fragmentate(p.CFrame,p.Size,p.BrickColor,position,radius,p.BackSurface,p.BottomSurface,p.FrontSurface,p.LeftSurface,p.RightSurface,p.TopSurface,p.Transparency,p.Reflectance,p.Material)
			if #storage < maximumstorage and p.Shape == "Block" then 
				p.Anchored = false
				p.FormFactor = "Custom"
				p.Size = stored_partsize
				p.Position = storage_position
				table.insert(storage,1,p)
			else 
				p:Destroy()
			end
	    end
		if nuh == false and p.Parent and p.Parent ~= obj1 and p.Parent.Name ~= "Projectile" and p:IsDescendantOf(fragmentable) and p:GetMass()<53000 and p.Transparency<0.05 and p.Name~='Base' and tostring(p.Material)=='Enum.Material.Wood' and p:IsDescendantOf(me)==false then
			fragmentate(p.CFrame,p.Size,p.BrickColor,position,radius,p.BackSurface,p.BottomSurface,p.FrontSurface,p.LeftSurface,p.RightSurface,p.TopSurface,p.Transparency,p.Reflectance,p.Material)
			if #storage < maximumstorage and p.Shape == "Block" then
				p.Anchored = false
				p.Material='Wood'
				p.FormFactor = "Custom"
				p.Size = stored_partsize
				p.Position = storage_position
				table.insert(storage,1,p)
			else 
				p:Destroy()
			end
		end
	end	
	list = {}
end


function fling()
local doit = coroutine.wrap(function()
if me:FindFirstChild('Right Arm') and me:FindFirstChild('Torso') and me:FindFirstChild('HumanoidRootPart') then
	acting = true
	for i=1,finishnum do
	local weld2 = Instance.new('Weld',me["Right Arm"])
	weld2.Part0 = me["Right Arm"]
	weld2.Part1 = me["Torso"]
	weld2.C0 = CFrame.new(-1.5,0,0)
	if finishnum == 1 then
	for i = 0,1,0.05 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0.9,-0.5)*CFrame.Angles(-math.pi/0.75,-math.pi/8,0),i)
		wait(0.01)	
	end
	end
	audio.SoundId = "rbxassetid://166083610"
	audio.PlaybackSpeed = 1
	audio.TimePosition = 0.1
	audio:Play()
	if finishnum == 1 then
	for i = 0,1,0.5 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,1.2,0.1)*CFrame.Angles(math.pi/0.9,0,0),i)
		wait(0.001)	
	end
	end
	weld2.C0 = CFrame.new(-1.5,1.2,0.1)*CFrame.Angles(math.pi/0.9,0,0)
	local knofe = obj1:Clone()
	for i, v in pairs(obj1:GetChildren()) do
		if v:IsA('BasePart') then
		v.Transparency = 1
		end
	end
	knofe.Parent = workspace
	knofe.Name = "Projectile"
	knofe.Grab.CFrame = CFrame.new(knofe.Grab.CFrame.p, mouse.Hit.p)*CFrame.Angles(0,math.pi/2,0)
	knofe:FindFirstChild("Trail", true).Enabled = true
	local heck = Instance.new('BodyVelocity',knofe.Grab)
	heck.Velocity = (knofe.Grab.CFrame*CFrame.Angles(0,math.pi/-2,0)).lookVector*120
	local coru = coroutine.wrap(function()
		wait(0.45)
		if heck then
			heck:Destroy()
		end
	end)
	coru()
	local able = true
	knofe["big ass knife"].Touched:connect(function(hit)
		if hit.Parent and hit.Parent:FindFirstChildOfClass('Humanoid') and hit.Transparency < 1 and knofe.Grab.CanCollide == false and hit.Parent ~= me and hit.Parent.Parent ~= me then
			local thing = hit.Parent:FindFirstChildOfClass('Humanoid')
			local ree = hit.Parent
			if thing == nil then
				ree = hit.Parent.Parent
			end
			if ree:FindFirstChildOfClass('Humanoid').Health > 0 then
				knofe:FindFirstChild("Trail", true).Enabled = false
				game:GetService('Debris'):AddItem(knofe,5)
				tone = math.random(1, 3)
				local sound = Instance.new('Sound',knofe.Grab)
				if tone == 1 then sound.SoundId = "rbxassetid://220833967" end
				if tone == 2 then sound.SoundId = "rbxassetid://220833976" end
				if tone == 3 then sound.SoundId = "rbxassetid://220834000" end
				sound.PlaybackSpeed = 1
				sound:Play()
				for i, v in pairs(knofe:GetChildren()) do
					if v:IsA('BasePart') then
					v.CanCollide = true
					v.Anchored = true
					end
				end
				hit.Anchored = true
				if ree:FindFirstChildOfClass('Humanoid') and hit.Name == "Torso" or hit.Name == "Head" then
					ree:FindFirstChildOfClass('Humanoid').Health = 0
				end
				wait()
				killz(ree,hit.Name,knofe)
			else
				knofe:FindFirstChild("Trail", true).Enabled = false
				heck.Velocity = Vector3.new(0,0,0)
				heck:Destroy()
				game:GetService('Debris'):AddItem(knofe,5)
				tone = math.random(1, 3)
				local sound = Instance.new('Sound',knofe.Grab)
				if tone == 1 then sound.SoundId = "rbxassetid://220833967" end
				if tone == 2 then sound.SoundId = "rbxassetid://220833976" end
				if tone == 3 then sound.SoundId = "rbxassetid://220834000" end
				sound.PlaybackSpeed = 1
				sound:Play()
				for i, v in pairs(knofe:GetChildren()) do
					if v:IsA('BasePart') then
					v.Anchored = false
					end
				end
				hit.Anchored = true
				wait(0.001)
				hit.Anchored = false
				for i, v in pairs(knofe:GetChildren()) do
					if v:IsA('BasePart') then
					v.Anchored = false
					end
				end
				if knofe then
					local coru = coroutine.wrap(function()
						if hit then
							local uno = Instance.new('Part',workspace)
							local dos = Instance.new('Part',workspace)
							uno.CFrame = hit.CFrame
							dos.CFrame = knofe["big ass knife"].CFrame
							local weld = Instance.new('Weld',knofe["big ass knife"])
							weld.Part0 = hit
							weld.Part1 = knofe["big ass knife"]
							weld.C0 = uno.CFrame:toObjectSpace(dos.CFrame)
							uno:Destroy()
							dos:Destroy()
						end
					end)
					coru()
				end
			end
		elseif hit.Parent and hit.Parent ~= me and hit.Parent.Parent ~= me and hit.CanCollide and knofe.Grab.CanCollide == false then
			if hit.Transparency and (hit.Transparency<=0.285 or hit:GetMass()<=3000) then
				knofe:FindFirstChild("Trail", true).Enabled = false
				local sound = Instance.new('Sound',knofe.Grab)
				sound.SoundId = 'rbxassetid://267585646'
				sound:Play()
				for i,v in pairs(knofe:GetChildren()) do
					if v:IsA('BasePart') then
						v.Anchored = true
					end
				end
				wait()
				heck.Velocity = Vector3.new(0,0,0)
				heck:Destroy()
				local uno = Instance.new('Part',workspace)
							local dos = Instance.new('Part',workspace)
							uno.CFrame = hit.CFrame
							dos.CFrame = knofe["big ass knife"].CFrame
							local weld = Instance.new('Weld',knofe["big ass knife"])
							weld.Part0 = hit
							weld.Part1 = knofe["big ass knife"]
							weld.C0 = uno.CFrame:toObjectSpace(dos.CFrame)
							uno:Destroy()
							dos:Destroy()
							for i,v in pairs(knofe:GetChildren()) do
					if v:IsA('BasePart') then
						v.Anchored = false
					end
				end
				game:GetService('Debris'):AddItem(knofe,5)
				for i,v in pairs(knofe:GetChildren()) do
					if v:IsA('BasePart') then
					v.CanCollide = true
					end
				end
			end
			if hit.Parent and hit.Transparency>0.285 and able == true and hit:GetMass()<3000 and hit.Parent:FindFirstChildOfClass('Humanoid') == nil and (hit.Parent.Parent == nil or hit.Parent.Parent:FindFirstChildOfClass('Humanoid') == nil) then
				knofe:FindFirstChild("Trail", true).Enabled = false
				able = false
				local sound = Instance.new('Sound',knofe.Grab)
				sound.SoundId = 'rbxassetid://144884907'
				sound:Play()
				local coru = coroutine.wrap(function()
					start_fragmentation(knofe["big ass knife"].Position,1.25,knofe)
				end)
				coru()
			end
		end
	end)
	if finishnum == 1 then
	for i= 0,1,0.1 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0,0),i)
		wait(0.001)
	end
	else
		for i= 0,1,0.5 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0,0),i)
		wait(0.001)
	end
	end
	for i,v in pairs(obj1:GetChildren()) do
		if v:IsA('BasePart') then
		v.Transparency = 0
		end
	end
	weld2:Destroy()
	rightshoulderz:Clone().Parent = me.Torso
	end
	acting = false
	canClick = true
end
end)
doit()
end

function instasplode()
	local coru = coroutine.wrap(function()
		acting = true
		for i=1,1 do
		local weld2 = Instance.new('Weld',me["Right Arm"])
		weld2.Part0 = me["Right Arm"]
		weld2.Part1 = me["Torso"]
		weld2.C0 = CFrame.new(-1.5,0,0)
		if finishnum == 1 then
		for i = 0,1,0.05 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil then return end
			weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0.9,-0.5)*CFrame.Angles(-math.pi/0.75,-math.pi/8,0),i)
			wait(0.01)	
		end
		end
		weld2.C0 = CFrame.new(-1.5,0.9,-0.5)*CFrame.Angles(-math.pi/0.75,-math.pi/8,0)
		audio.SoundId = "rbxassetid://166083610"
		audio.PlaybackSpeed = 1
		audio.TimePosition = 0.1
		audio:Play()
		if finishnum == 1 then
		for i = 0,1,0.5 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil then return end
			weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,1.2,0.1)*CFrame.Angles(math.pi/0.9,0,0),i)
			wait(0.001)	
		end
		end
		weld2.C0 = CFrame.new(-1.5,1.2,0.1)*CFrame.Angles(math.pi/0.9,0,0)
		local knofe = obj1:Clone()
		for i,v in pairs(obj1:GetChildren()) do
			if v:IsA('BasePart') then
			v.Transparency = 1
			end
		end
		knofe.Parent = workspace
		knofe.Name = "Projectile"
		knofe.Grab.CFrame = CFrame.new(knofe.Grab.CFrame.p, mouse.Hit.p)*CFrame.Angles(0,math.pi/2,0)
		knofe:FindFirstChild("Trail", true).Enabled = false
		fireofjesUS = Instance.new("Fire", knofe.Grab)
		local heck = Instance.new('BodyVelocity',knofe.Grab)
		heck.Velocity = (knofe.Grab.CFrame*CFrame.Angles(0,math.pi/-2,0)).lookVector*120
		local coru = coroutine.wrap(function()
			wait(0.45)
			if heck then
				heck:Destroy()
			end
		end)
		coru()
		knofe["big ass knife"].Touched:connect(function(hit)
			if hit.Parent ~= me and hit.Parent.Parent ~= me and hit.Transparency < 1 and knofe.Grab.CanCollide == false then
				heck.Velocity = Vector3.new(0,0,0)
				heck:Destroy()
				for i,v in pairs(knofe:GetChildren()) do
					if v:IsA('BasePart') then
					v.CanCollide = true
					end
				end
				local hum = hit.Parent:FindFirstChildOfClass('Humanoid')
				if hum == nil then
					hum = hit.Parent.Parent:FindFirstChildOfClass('Humanoid')
				end
				if knofe then
					local coru = coroutine.wrap(function()
						if hit then
							local uno = Instance.new('Part',workspace)
							local dos = Instance.new('Part',workspace)
							uno.CFrame = hit.CFrame
							dos.CFrame = knofe["big ass knife"].CFrame
							local weld = Instance.new('Weld',knofe["big ass knife"])
							weld.Part0 = hit
							weld.Part1 = knofe["big ass knife"]
							weld.C0 = uno.CFrame:toObjectSpace(dos.CFrame)
							uno:Destroy()
							dos:Destroy()
						end
					end)
					coru()
				end
					local sound = Instance.new('Sound',knofe.Grab)
					sound.Name = "BOOM"
					sound.EmitterSize = 25
					sound.SoundId = 'rbxassetid://476477344'
					sound.Volume = 0.5
					sound:Play()
					local exppart = Instance.new("Part", game.Workspace)
					exppart.Size = Vector3.new(0.2, 0.2, 0.2)
					exppart.Anchored = true
					exppart.CanCollide = false
					exppart.CFrame = CFrame.new(knofe.Grab.CFrame.p)
					exppart.Transparency = 1
					local expaccent = Instance.new("ParticleEmitter", exppart)
					expaccent.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))})
					expaccent.LightEmission = 0.2
					expaccent.LightInfluence = 0.3
					expaccent.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 0)})
					expaccent.Acceleration = Vector3.new(0, 30, 0)
					expaccent.Drag = 15
					expaccent.LockedToPart = false
					expaccent.Lifetime = NumberRange.new(0.5, 1.5)
					expaccent.Rate = 2000
					expaccent.Speed = NumberRange.new(0,0)
					expaccent.SpreadAngle = Vector2.new(360, 360)
					expaccent:Clone().Parent = exppart
					expaccent:Clone().Parent = exppart
					local exp = Instance.new('Explosion',game.Workspace)
					exp.Position = knofe["big ass knife"].Position
					exp.ExplosionType = Enum.ExplosionType.NoCraters
					exp.BlastRadius = 5
					exp.Visible = false
					exp.BlastPressure = 0
					exp.DestroyJointRadiusPercent = 0
					exp.Hit:connect(function(hit)
						if hit.Parent and hit.Parent ~= me and hit.Parent.Name ~= "bitch ass knife" then
							wait(0.001)
							tgt = hit
							local coru=coroutine.wrap(function(tgtt)
								local fireofgods = Instance.new("Fire", tgtt)
								fireofgods.Size = 0
								fireofgods.Heat = 0
								local fireofgodsaccent = expaccent:Clone()
								fireofgodsaccent.Parent = hit
								fireofgodsaccent.Rate = 0
								fireofgodsaccent.Speed = NumberRange.new(5, 50)
								fireofgodsaccent.SpreadAngle = Vector2.new(45, 45)
								fireofgodsaccent.Acceleration = Vector3.new(0, 20, 0)
								
								while fireofgods.Size < 10 do
									fireofgods.Size = fireofgods.Size + 0.1
									fireofgods.Heat = fireofgods.Heat + 0.1
									fireofgodsaccent.Rate = fireofgodsaccent.Rate + 1
									wait()
								end
								if hit.Parent and hit.Parent:FindFirstChildOfClass('Humanoid') == nil and hit.Parent.Parent:FindFirstChildOfClass('Humanoid') == nil then
									hit:BreakJoints()
								elseif hit.Parent and hit.Parent:IsA('Accessory') then
									for i,v in pairs(hit:GetChildren()) do
										if v:IsA('SpecialMesh') then
											v.TextureId = ""
										end
									end
								end
								hit.BrickColor = BrickColor.new("Black")
								for i,v in pairs(hit.Parent:GetChildren()) do
									if v:IsA('Shirt') or v:IsA('Pants') then
										v:Destroy()
									end
								end
								
								while fireofgods.Size > 5 do
									fireofgods.Size = fireofgods.Size - 0.1
									fireofgods.Heat = fireofgods.Heat - 0.1
									wait()
								end
								fireofgods:Destroy()
								if hit.Parent then
									if hit.Parent:FindFirstChildOfClass('Humanoid') == nil and hit.Parent.Parent:FindFirstChildOfClass('Humanoid') == nil then
										local p = hit
										fragmentate(p.CFrame,p.Size,p.BrickColor,p.Position,0.01,p.BackSurface,p.BottomSurface,p.FrontSurface,p.LeftSurface,p.RightSurface,p.TopSurface,p.Transparency,p.Reflectance,p.Material)
										hit:Remove()
									elseif hit.Parent:FindFirstChildOfClass('Humanoid') ~= nil then
										print(hit.Name)
										if hit.Name == "Torso" or hit.Name == "Head" then
											print('ohhh YAAAA')
											hit.Parent:FindFirstChildOfClass('Humanoid').Health = 0
										end
										wait()
										killz(hit.Parent,hit.Name,nil,nil,false,false,true)
									end
								end
							end)
							coru(tgt)
						end
					end)
					local explosionaccenttimeout = coroutine.wrap(function()
						wait(0.2)
						for i, exploodn in pairs(exppart:GetChildren()) do
							exploodn.Enabled = false
						end
						wait(2)
						for i, exploodn in pairs(exppart:GetChildren()) do
							exploodn:Remove()
						end
					end)
					explosionaccenttimeout()
					for i,v in pairs(knofe:GetChildren()) do
						if v:IsA('BasePart') then
						v.Transparency = 1
						end
					end
					exp.AncestryChanged:connect(function() knofe:Destroy() end)
				coru()
			end
		end)
		if finishnum == 1 then
		for i= 0,1,0.1 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil then return end
			weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0,0),i)
			wait(0.001)
		end
		else
			wait(0.1)
		end
		weld2.C0 = CFrame.new(-1.5,0,0)
		for i,v in pairs(obj1:GetChildren()) do
			if v:IsA('BasePart') then
			v.Transparency = 0
			end
		end
		weld2:Destroy()
		rightshoulderz:Clone().Parent = me.Torso
		end
		acting = false
		canClick = true
	end)
	coru()
end

function fireworkit()
	local coru = coroutine.wrap(function()
		acting = true
		local ree = 1
		if finishnum > 1 then
			ree = 3
		end
		for i=1,ree do
		local weld2 = Instance.new('Weld',me["Right Arm"])
		weld2.Part0 = me["Right Arm"]
		weld2.Part1 = me["Torso"]
		weld2.C0 = CFrame.new(-1.5,0,0)
		weld2.C0 = CFrame.new(-1.5,0.9,-0.5)*CFrame.Angles(-math.pi/0.75,-math.pi/8,0)
		audio.SoundId = "rbxassetid://166083610"
		audio.PlaybackSpeed = 1
		audio.TimePosition = 0.1
		audio:Play()
		weld2.C0 = CFrame.new(-1.5,1.2,0.1)*CFrame.Angles(math.pi/0.9,0,0)
		local knofe = obj1:Clone()
		for i,v in pairs(obj1:GetChildren()) do
			if v:IsA('BasePart') then
			v.Transparency = 1
			end
		end
		local sound = Instance.new('Sound',knofe.Grab)
		sound.Volume = 0.25
		sound.EmitterSize = 200
		sound.MaxDistance = 300
		sound.SoundId = 'rbxassetid://551051176'
		sound:Play()
		knofe.Parent = workspace
		knofe.Name = "Projectile"
		knofe.Grab.CFrame = CFrame.new(knofe.Grab.CFrame.p, mouse.Hit.p)*CFrame.Angles(0,math.pi/2,0)
		local partic = Instance.new('ParticleEmitter',knofe.Grab)
		partic.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,0,0)),ColorSequenceKeypoint.new(0.4,Color3.fromRGB(255,125,0)),ColorSequenceKeypoint.new(0.8,Color3.new(1,1,0)),ColorSequenceKeypoint.new(1,Color3.new(1,1,1))})
		partic.LightEmission = 0.5
		partic.LightInfluence = 0
		partic.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5),NumberSequenceKeypoint.new(1,0.15)})
		partic.Rotation = NumberRange.new(0,90)
		partic.SpreadAngle = Vector2.new(5,5)
		partic.Speed = NumberRange.new(20)
		partic.Texture = 'rbxassetid://603193846'
		partic.EmissionDirection = Enum.NormalId.Left
		partic.Lifetime = NumberRange.new(0.5,1)
		partic.Rate = 100
		local heck = Instance.new('BodyVelocity',knofe.Grab)
		heck.Velocity = (knofe.Grab.CFrame*CFrame.Angles(0,math.pi/-2,0)).lookVector*240
		knofe["big ass knife"].Touched:connect(function(hit)
			sound:Destroy()
			local sound2 = Instance.new('Sound',workspace)
			sound2.SoundId = 'rbxassetid://138080762'
			sound2:Play()
			if heck then
				heck:Destroy()
			end
			for i,v in pairs(knofe:GetChildren()) do
				v.Anchored = true
			end
			partic.Enabled = false
			local colorscheme = math.random(1,4)
			--1 - red & orange
			--2 - blue & pink
			--3 - green & purple
			--4 - blue, red, white
			local colar1 = Color3.fromRGB(255,0,0)
			local colar2 = Color3.fromRGB(255,125,0)
			local colar3 = Color3.fromRGB(255,255,255)
			if colorscheme == 2 then
				colar1 = Color3.fromRGB(0,132,255)
				colar2 = Color3.fromRGB(243,105,255)
			elseif colorscheme == 3 then
				colar1 = Color3.fromRGB(76,255,0)
				colar2 = Color3.fromRGB(128,0,255)
			elseif colorscheme == 4 then
				colar2 = Color3.fromRGB(0,132,255)
			end
			local partic2 = Instance.new('ParticleEmitter',knofe.Grab)
			partic2.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,colar1),ColorSequenceKeypoint.new(1,colar1)})
			partic2.LightEmission = 0.5
			partic2.LightInfluence = 0
			partic2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5),NumberSequenceKeypoint.new(1,0.1)})
			partic2.Rotation = NumberRange.new(0,90)
			partic2.SpreadAngle = Vector2.new(180,180)
			partic2.Speed = NumberRange.new(20)
			partic2.Texture = 'rbxassetid://603193846'
			partic2.EmissionDirection = Enum.NormalId.Right
			partic2.Lifetime = NumberRange.new(2,2.5)
			partic2.Rate = 1000
			partic2.Drag = 1
			local partic3 = partic2:Clone()
			partic3.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,colar2),ColorSequenceKeypoint.new(1,colar2)})
			partic3.Parent = knofe.Grab
			if colorscheme == 4 then
				local partic4 = partic2:Clone()
				partic4.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,colar3),ColorSequenceKeypoint.new(1,colar3)})
				partic4.Parent = knofe.Grab
			end
			wait(1)
			for i,v in pairs(knofe.Grab:GetChildren()) do
				if v:IsA('ParticleEmitter') then
					v.Enabled = false
				end
			end
			sound:Destroy()
			wait(2)
			knofe:Destroy()
		end)
		wait(0.1)
		weld2.C0 = CFrame.new(-1.5,0,0)
		for i,v in pairs(obj1:GetChildren()) do
			if v:IsA('BasePart') then
			v.Transparency = 0
			end
		end
		weld2:Destroy()
		rightshoulderz:Clone().Parent = me.Torso
		end
		acting = false
		canClick = true
	end)
	coru()
end

function paralyze()
	local coru = coroutine.wrap(function()
		if paralyzed == true then return end
		paralyzed = true
		local arm = me["Right Arm"]
		local tors = grabbed.Torso
		local arm2 = me["Left Arm"]
		if arm:FindFirstChildOfClass('Weld') == nil or arm2:FindFirstChildOfClass('Weld') == nil then return end
		doing = true
		local weld2 = arm:FindFirstChildOfClass('Weld')
		local weld3 = arm2:FindFirstChildOfClass('Weld')
		local humanroot = me.HumanoidRootPart
		for i = 0,1,0.075 do
			weld2.C0 = weld2.C0:lerp(CFrame.new(-0.9, 0.80, -1.1)* CFrame.Angles(-2, 0, -1.5), i)
			weld3.C0 = weld3.C0:lerp(CFrame.new(0.8, 1, -0.5)* CFrame.Angles(-1.4, 0, 1.1), i)
			wait(0.01)
		end
		for i = 0,1,0.30 do
			weld2.C0 = weld2.C0:lerp(CFrame.new(-0.9, 0.80, -1.1)* CFrame.Angles(-0.75, 0, -1.75), i)
			weld3.C0 = weld3.C0:lerp(CFrame.new(0.8, 1, -0.5)* CFrame.Angles(-1.4, 0, 1.1), i)
			wait(0.01)
		end
		killz(grabbed,'Left Leg')
		killz(grabbed,'Left Arm')
		killz(grabbed,'Right Leg')
		killz(grabbed,'Right Arm')
		
		for i, v in pairs(grabbed:GetChildren()) do
			if v.Name == "Part" then
				v.CanCollide = false
			end
		end
		
		audio:Stop()
		audio.SoundId = "rbxassetid://2801263"
		tone = math.random(1, 3)
		if tone == 1 then audio.PlaybackSpeed = 0.8 audio.TimePosition = 0 end
		if tone == 2 then audio.PlaybackSpeed = 1 audio.TimePosition = 0 end
		if tone == 3 then audio.PlaybackSpeed = 1.2 audio.TimePosition = 0 end
		audio:Play()
		
		local bleedpart = Instance.new("Part", grabbed)
		bleedpart.Size = Vector3.new(0.2, 0.2, 0.2)
		bleedpart.Color = Color3.new(115/225, 115/225, 115/225)
		bleedpart.CanCollide = false
		bleedpart.Position = grabbed.Head.Position + Vector3.new(0, 1, 0)
		bleedpart.Transparency = 1
		
		local bleedpartweld = Instance.new("Weld", grabbed.Torso)
		bleedpartweld.Part0 = grabbed.Torso
		bleedpartweld.Part1 = bleedpart
		bleedpartweld.C0 = CFrame.Angles(-1, 0, -0.35) * CFrame.new(0, 1, 0.8)
		local cuntruu=coroutine.wrap(function()
			bleed(bleedpart)
		end)
		local thicc = coroutine.wrap(function()
			wait(3)
			bleedpart:Remove()
		end)
		cuntruu()
		thicc()
	
		for i = 0,1,0.075 do
			weld2.C0 = weld2.C0:lerp(CFrame.new(-0.9, 0.80, -1.1)* CFrame.Angles(-1.5, 0, -1.3), i)
			weld3.C0 = weld3.C0:lerp(CFrame.new(0.8, 1, -0.5)* CFrame.Angles(-1.5, 0, 1.1), i)
			wait(0.01)
		end
		acting = true
		canClick = true
		doing = false
	end)
	coru()
end

function explode()
	local coru = coroutine.wrap(function()
		acting = true
		for i=1,finishnum do
		local weld2 = Instance.new('Weld',me["Right Arm"])
		weld2.Part0 = me["Right Arm"]
		weld2.Part1 = me["Torso"]
		weld2.C0 = CFrame.new(-1.5,0,0)
		if finishnum == 1 then
		for i = 0,1,0.05 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil then return end
			weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0.9,-0.5)*CFrame.Angles(-math.pi/0.75,-math.pi/8,0),i)
			wait(0.01)	
		end
		end
		weld2.C0 = CFrame.new(-1.5,0.9,-0.5)*CFrame.Angles(-math.pi/0.75,-math.pi/8,0)
		audio.SoundId = "rbxassetid://166083610"
		audio.PlaybackSpeed = 1
		audio.TimePosition = 0.1
		audio:Play()
		if finishnum == 1 then
		for i = 0,1,0.5 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil then return end
			weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,1.2,0.1)*CFrame.Angles(math.pi/0.9,0,0),i)
			wait(0.001)	
		end
		end
		weld2.C0 = CFrame.new(-1.5,1.2,0.1)*CFrame.Angles(math.pi/0.9,0,0)
		local knofe = obj1:Clone()
		for i,v in pairs(obj1:GetChildren()) do
			if v:IsA('BasePart') then
			v.Transparency = 1
			end
		end
		knofe.Parent = workspace
		knofe.Name = "Projectile"
		knofe.Grab.CFrame = CFrame.new(knofe.Grab.CFrame.p, mouse.Hit.p)*CFrame.Angles(0,math.pi/2,0)
		knofe:FindFirstChild("Trail", true).Enabled = false
		local heck = Instance.new('BodyVelocity',knofe.Grab)
		heck.Velocity = (knofe.Grab.CFrame*CFrame.Angles(0,math.pi/-2,0)).lookVector*120
		local coru = coroutine.wrap(function()
			wait(0.45)
			if heck then
				heck:Destroy()
			end
		end)
		coru()
		knofe["big ass knife"].Touched:connect(function(hit)
			if hit.Parent ~= me and hit.Parent.Parent ~= me and hit.Transparency < 1 and knofe.Grab.CanCollide == false then
				heck.Velocity = Vector3.new(0,0,0)
				heck:Destroy()
				for i,v in pairs(knofe:GetChildren()) do
					if v:IsA('BasePart') then
					v.CanCollide = true
					end
				end
				local hum = hit.Parent:FindFirstChildOfClass('Humanoid')
				if hum == nil then
					hum = hit.Parent.Parent:FindFirstChildOfClass('Humanoid')
				end
				if hum then
					tone = math.random(1, 3)
					local sound = Instance.new('Sound',knofe.Grab)
					if tone == 1 then sound.SoundId = "rbxassetid://220833967" end
					if tone == 2 then sound.SoundId = "rbxassetid://220833976" end
					if tone == 3 then sound.SoundId = "rbxassetid://220834000" end
					sound.PlaybackSpeed = 1
					sound:Play()
				else
					local sound = Instance.new('Sound',knofe.Grab)
					sound.SoundId = 'rbxassetid://267585646'
					sound:Play()
				end
				if knofe then
					local coru = coroutine.wrap(function()
						if hit then
							local uno = Instance.new('Part',workspace)
							local dos = Instance.new('Part',workspace)
							uno.CFrame = hit.CFrame
							dos.CFrame = knofe["big ass knife"].CFrame
							local weld = Instance.new('Weld',knofe["big ass knife"])
							weld.Part0 = hit
							weld.Part1 = knofe["big ass knife"]
							weld.C0 = uno.CFrame:toObjectSpace(dos.CFrame)
							uno:Destroy()
							dos:Destroy()
						end
					end)
					coru()
				end
				local coru = coroutine.wrap(function()
					for i=1,15,0.7 do
						local sound = Instance.new('Sound',knofe.Grab)
						if knofe then
							if knofe.serration.BrickColor == BrickColor.new('Really red') then
								for i, v in pairs(knofe:GetChildren()) do
									if v.Name == "big ass knife" or v.Name == "serration" or v.Name == "knifetip1" or v.Name == "fricc" then
										v.BrickColor = BrickColor.new('Lily white')
										v.Material = Enum.Material.SmoothPlastic
									end
								end
							else
								for i,v in pairs(knofe:GetChildren()) do
									if v.Name == "big ass knife" or v.Name == "serration" or v.Name == "knifetip1" or v.Name == "fricc" then
										v.BrickColor = BrickColor.new('Really red')
										v.Material = Enum.Material.Neon
										sound.SoundId = 'rbxassetid://300473653'
										sound.Volume = 0.75
										sound.TimePosition = 0.05
										sound.EmitterSize = 25
										sound.PlaybackSpeed = 1
										sound:Play()
									end
								end
							end
							wait(1/i)
							sound:Destroy()
						end
					end
					local sound = Instance.new('Sound',knofe.Grab)
					sound.Name = "BOOM"
					sound.EmitterSize = 25
					sound.SoundId = 'rbxassetid://12222084'
					sound.TimePosition = 0.1
					sound.Volume = 0.5
					sound:Play()
					local exppart = Instance.new("Part", game.Workspace)
					exppart.Size = Vector3.new(0.2, 0.2, 0.2)
					exppart.Anchored = true
					exppart.CanCollide = false
					exppart.CFrame = CFrame.new(knofe.Grab.CFrame.p)
					exppart.Transparency = 1
					local expaccent = Instance.new("ParticleEmitter", exppart)
					expaccent.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))})
					expaccent.LightEmission = 0.2
					expaccent.LightInfluence = 0.3
					expaccent.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 0)})
					expaccent.Acceleration = Vector3.new(0, -8, 0)
					expaccent.Drag = 15
					expaccent.LockedToPart = true
					expaccent.Lifetime = NumberRange.new(0.5, 1.5)
					expaccent.Rate = 2000
					expaccent.Speed = NumberRange.new(10, 150)
					expaccent.SpreadAngle = Vector2.new(360, 360)
					
					local exp = Instance.new('Explosion',game.Workspace)
					exp.Position = knofe["big ass knife"].Position
					exp.ExplosionType = Enum.ExplosionType.NoCraters
					exp.BlastRadius = 10
					exp.BlastPressure = 100000
					exp.DestroyJointRadiusPercent = 1
					exp.Hit:connect(function(hit)
						if hit.Parent and hit.Parent ~= me and hit.Parent:FindFirstChildOfClass('Humanoid') then
							if hit.Parent:FindFirstChildOfClass('Humanoid') and hit.Name == "Torso" or hit.Name == "Head" then
								hit.Parent:FindFirstChildOfClass('Humanoid').Health = 0
							end
							wait(0.001)
							local coru=coroutine.wrap(function()
							killz(hit.Parent,'Head',knofe,exp)
							end)
							coru()
						elseif hit.Parent and hit.Parent ~= workspace and hit.Parent ~= me then
							if hit.Parent.Name ~= "Projectile" then
								hit.Parent:BreakJoints()
							end
						elseif hit.Parent and hit.Parent ~= me then
							hit:BreakJoints()
						end
					end)
					local explosionaccenttimeout = coroutine.wrap(function()
						wait(0.2)
						expaccent.Enabled = false
						wait(2)
						exppart:Remove()
					end)
					explosionaccenttimeout()
					for i,v in pairs(knofe:GetChildren()) do
						if v:IsA('BasePart') then
						v.Transparency = 1
						end
					end
					exp.AncestryChanged:connect(function() knofe:Destroy() end)
				end)
				coru()
			end
		end)
		if finishnum == 1 then
		for i= 0,1,0.1 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil then return end
			weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0,0),i)
			wait(0.001)
		end
		else
			wait(0.1)
		end
		weld2.C0 = CFrame.new(-1.5,0,0)
		for i,v in pairs(obj1:GetChildren()) do
			if v:IsA('BasePart') then
			v.Transparency = 0
			end
		end
		weld2:Destroy()
		rightshoulderz:Clone().Parent = me.Torso
		end
		acting = false
		canClick = true
	end)
	coru()
end

function release()
	if grabbed.Torso:FindFirstChild("TargetWeld") == nil or grabbed:FindFirstChildOfClass('Humanoid').Health <= 0 then return end
	targetweld = grabbed.Torso.TargetWeld
	local ree= grabbed:FindFirstChild("Left Arm")
	targetweld2 = nil
	if ree and ree:FindFirstChild("Weld") then
		targetweld2 = ree.Weld
	end
	for i, v in pairs(grabbed:GetChildren()) do
		if v.Name == "Part" then
			v.CanCollide = true
		end
	end
	paralyzed = false
	local doit = coroutine.wrap(function()
	local arm = me["Right Arm"]
	local tors = grabbed.Torso
	local arm2 = me["Left Arm"]
	if arm:FindFirstChildOfClass('Weld') == nil or arm2:FindFirstChildOfClass('Weld') == nil then return end
	doing = true
	local weld2 = arm:FindFirstChildOfClass('Weld')
	local weld3 = arm2:FindFirstChildOfClass('Weld')
	local humanroot = me.HumanoidRootPart
	
	if grabbed:FindFirstChildOfClass('Humanoid') then
		grabbed:FindFirstChildOfClass('Humanoid').PlatformStand = false
	end
	
	rightshoulderz:Clone().Parent = me.Torso
	leftshoulderz:Clone().Parent = me.Torso
	grabbed = nil
	
	if humanroot:FindFirstChild('Holder') then
		humanroot.Holder:Destroy()
	end
	
	for i = 0,1,0.1 do
		if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld2 == nil or weld3 == nil then return end
		weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0,0),i)
		weld3.C0 = weld3.C0:lerp(CFrame.new(1.5,0,0),i)
		targetweld.C0 = targetweld.C0:lerp(CFrame.new(0, 1.5, 0)*CFrame.Angles(0, 0, 0), i)
		if targetweld2 then
			targetweld2.C0 = targetweld2.C0:lerp(CFrame.new(-1.5, 0, 0)*CFrame.Angles(0, 0, 0), i)
		end
		wait(0.01)
	end
	
	knifeweld.C1 = CFrame.fromEulerAnglesXYZ(1.55, math.rad(-90), 1.55) * CFrame.new(0, 0.95, 0.2)
	weld2:Destroy()
	weld3:Destroy()
	targetweld:Remove()
	if targetweld2 then
		targetweld2:Remove()
	end
	if rightshoulder then
	rightshoulder:Clone().Parent = tors
	end
	if leftshoulder then
	leftshoulder:Clone().Parent = tors
	end
	headweld:Clone().Parent = tors
	rightshoulderz:Clone().Parent = me.Torso
			leftshoulderz:Clone().Parent = me.Torso
	acting = false
	canClick = true
	doing = false
	end)
	doit()
end

function stabwithpassion()
	local doit = coroutine.wrap(function()
		if me:FindFirstChild('Right Arm') and me:FindFirstChild('Torso') and me:FindFirstChild('HumanoidRootPart') and me:FindFirstChild('Left Arm') then
			acting = true
			me:FindFirstChildOfClass('Humanoid').WalkSpeed = me:FindFirstChildOfClass('Humanoid').WalkSpeed + 10
			local arm = me["Right Arm"]
			local tors = me.Torso
			local arm2 = me["Left Arm"]
			local humanroot = me.HumanoidRootPart
			local weld = Instance.new('Weld',tors)
			weld.Part0 = tors
			weld.Part1 = humanroot
			weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(0, 0, 0)
			local weld2 = Instance.new('Weld',arm)
			weld2.Part0 = arm
			weld2.Part1 = tors
			weld2.C0 = CFrame.new(-1.5,0,0) * CFrame.Angles(0, 0, 0)
			local weld3 = Instance.new('Weld',arm2)
			weld3.Part0 = arm2
			weld3.Part1 = tors
			weld3.C0 = CFrame.new(1.5,0,-0.3) * CFrame.Angles(0.3,0.1,0)

			for i = 0,1,0.15 do
				if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil or weld2 == nil or humanroot == nil then return end
				weld.C0 = weld.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(20),0),i)
				weld2.C0 = weld2.C0:lerp(CFrame.new(-1.2,1.3,0.4)*CFrame.Angles(0.5,0,-1.2),i)
				knifeweld.C1 = knifeweld.C1:lerp(CFrame.fromEulerAnglesXYZ(1.55, math.rad(90), -1.55) * CFrame.new(0, 0.95, 0), i)
				wait(0.01)
			end
			wait(0.001)
			trail.Enabled = true
			stabbing = true
			audio2.SoundId = 'rbxassetid://608537390'
			audio2:Play()
			for i = 0,1,0.2 do
				if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil or weld2 == nil or humanroot == nil then return end
				weld.C0 = weld.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(-45),0),i)
				weld2.C0 = weld2.C0:lerp(CFrame.new(-1.6,0.8,-1)*CFrame.Angles(math.rad(-90),0,-1),i)
				wait(0.01)
			end
			trail.Enabled = false
			wait(0.1)
			me:FindFirstChildOfClass('Humanoid').WalkSpeed = me:FindFirstChildOfClass('Humanoid').WalkSpeed - 10
			stabbing = false
			wait(0.001)
			for i = 0,1,0.075 do
				if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil or weld2 == nil or humanroot == nil then return end
				weld.C0 = weld.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(0,0,0),i)
				weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0,0)*CFrame.Angles(0,0,0),i)
				weld3.C0 = weld3.C0:lerp(CFrame.new(1.5,0,0)*CFrame.Angles(0,0,0),i)
				knifeweld.C1 = knifeweld.C1:lerp(CFrame.fromEulerAnglesXYZ(1.55, math.rad(-90), 1.55) * CFrame.new(0, 0.95, 0), i)
				wait(0.01)
			end
		weld:Destroy()
		weld2:Destroy()
		weld3:Destroy()
		torsojoint:Clone().Parent = humanroot
		rightshoulderz:Clone().Parent = me.Torso
		leftshoulderz:Clone().Parent = me.Torso
		canClick = true
		hit = false
		acting = false
		end
	end)
	doit()
end

function stab()
	local doit = coroutine.wrap(function()
		if me:FindFirstChild('Right Arm') and me:FindFirstChild('Torso') and me:FindFirstChild('HumanoidRootPart') and me:FindFirstChild('Left Arm') then
			acting = true
			me:FindFirstChildOfClass('Humanoid').WalkSpeed = me:FindFirstChildOfClass('Humanoid').WalkSpeed + 3
			local arm = me["Right Arm"]
			local tors = me.Torso
			local arm2 = me["Left Arm"]
			local humanroot = me.HumanoidRootPart
			local weld = Instance.new('Weld',tors)
			weld.Part0 = tors
			weld.Part1 = humanroot
			weld.C0 = CFrame.new(0,0,0) * CFrame.Angles(0, 0, 0)
			local weld2 = Instance.new('Weld',arm)
			weld2.Part0 = arm
			weld2.Part1 = tors
			weld2.C0 = CFrame.new(-1.5,0,0) * CFrame.Angles(0, 0, 0)
			local weld3 = Instance.new('Weld',arm2)
			weld3.Part0 = arm2
			weld3.Part1 = tors
			weld3.C0 = CFrame.new(1.5,0,-0.3) * CFrame.Angles(0.3,0.1,0)

			for i = 0,1,0.1 do
				if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil or weld2 == nil or humanroot == nil then return end
				weld.C0 = weld.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(0,0.3,0),i)
				weld2.C0 = weld2.C0:lerp(CFrame.new(-1.2,1.3,0.4)*CFrame.Angles(0.5,0,-1.2),i)
				wait(0.01)
			end
			wait(0.001)
			trail.Enabled = true
			stabbing = true
			audio2.SoundId = 'rbxassetid://608537390'
			audio2:Play()
			for i = 0,1,0.25 do
				if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil or weld2 == nil or humanroot == nil then return end
				weld.C0 = weld.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(0,-0.3,0),i)
				weld2.C0 = weld2.C0:lerp(CFrame.new(-1.6,0.8,0.5)*CFrame.Angles(-0.5,0,-0.5),i)
				wait(0.01)
			end
			trail.Enabled = false
			wait(0.1)
			me:FindFirstChildOfClass('Humanoid').WalkSpeed = me:FindFirstChildOfClass('Humanoid').WalkSpeed - 3
			for i = 0,1,0.25 do
				if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil or weld2 == nil or humanroot == nil then return end
				weld.C0 = weld.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(0,0.3,0),i)
				weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0.6,-0.3)*CFrame.Angles(0.5,0,-0.5),i)
				wait(0.01)
			end
			stabbing = false
			wait(0.001)
			for i = 0,1,0.05 do
				if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil or weld2 == nil or humanroot == nil then return end
				weld.C0 = weld.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(0,0,0),i)
				weld2.C0 = weld2.C0:lerp(CFrame.new(-1.5,0,0)*CFrame.Angles(0,0,0),i)
				weld3.C0 = weld3.C0:lerp(CFrame.new(1.5,0,0)*CFrame.Angles(0,0,0),i)
				wait(0.01)
			end
		weld:Destroy()
		weld2:Destroy()
		weld3:Destroy()
		torsojoint:Clone().Parent = humanroot
		rightshoulderz:Clone().Parent = me.Torso
		leftshoulderz:Clone().Parent = me.Torso
		canClick = true
		hit = false
		acting = false
		end
	end)
	doit()
end
function hardrelease()
	rightshoulderz:Clone().Parent = me.Torso
	leftshoulderz:Clone().Parent = me.Torso
	if me:FindFirstChild('Right Arm') then
	for i,v in pairs(me["Right Arm"]:GetChildren()) do
		if v:IsA('Weld') then
			v:Destroy()
		end
	end
	end
	if me:FindFirstChild('Left Arm') then
	for i,v in pairs(me["Left Arm"]:GetChildren()) do
		if v:IsA('Weld') then
			v:Destroy()
		end
	end
	end
	acting = false
	canClick = true
	doing = false
	grabbed = nil
end
function unequip()
	local doit = coroutine.wrap(function()
	if me:FindFirstChild('Right Arm') and me:FindFirstChild('Torso') then
		acting = true
		local arm = me["Right Arm"]
		local arm2 = me["Left Arm"]
		local tors = me.Torso
		local weld = Instance.new('Weld',arm)
		weld.Part0 = arm
		weld.Part1 = tors
		weld.C0 = CFrame.new(-1.5,0,0)
		local weld2 = Instance.new("Weld", arm2)
		weld2.Part0 = arm2
		weld2.Part1 = tors
		weld2.C0 = CFrame.new(1.5, 0, 0)
		wait(0.001)
		trail.Enabled = true
		for i = 0,1,0.1 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil then return end
			weld.C0 = weld.C0:lerp(CFrame.new(-0.2,0.2,-0.5)*CFrame.Angles(0,-3.1,0.9),i)
			weld2.C0 = weld2.C0:lerp(CFrame.new(1.5, 0.6, 0) * CFrame.Angles(0,0,0.5),i)
			wait(0.001)
		end
		trail.Enabled = false
		wait(0.25)
		for i = 0,1,0.1 do
			if me:FindFirstChild('Right Arm') == nil or me:FindFirstChild('Torso') == nil or weld == nil then return end
			weld.C0 = weld.C0:lerp(CFrame.new(-1.5,0,0),i)
			weld2.C0 = weld2.C0:lerp(CFrame.new(1.5, 0, 0), i)
			wait(0.01)
		end
		weld:Destroy()
		weld2:Remove()
		if tors ~= nil then
			rightshoulderz:Clone().Parent = me.Torso
			leftshoulderz:Clone().Parent = me.Torso
		end
		acting = false
	end
	end)
	doit()
end

mouse.KeyDown:connect(function(key)
	if usable == true then
	if key == "z" then
		if active == false and acting == false then
			active = true
			if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
			notify("KNIFE EQUIPPED",false)
			audio:Stop()
			audio.SoundId = 'rbxassetid://608618332'
			equip()
			wait(0.6)
			audio:Play()
			knifeweld.Part0 = me["Right Arm"]
			knifeweld.C1 = CFrame.fromEulerAnglesXYZ(1.55, math.rad(-90), 1.55) * CFrame.new(0, 0.95, 0)
		elseif acting == false then
			active = false
			if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
			audio:Stop()
			audio.SoundId = 'rbxassetid://608538233'
			unequip()
			notify("KNIFE UNEQUIPPED",false)
			wait(0.3)
			audio:Play()
			knifeweld.Part0 = me.Torso
			knifeweld.C1 = CFrame.Angles(0,math.rad(90),0) * CFrame.new(1, 0.8, 0.55)
			canClick = true
		end
	elseif key == "f" then
		if mode == 'kill' or active == false then return end
		mode = "kill"
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		notify("MODE || KILL || [F]",false)
	elseif key == "e" then
		if mode == 'throw' or active == false then return end
		mode = "throw"
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		notify("MODE || PUSH || [E]",false)
	elseif key == "q" then
		if mode == 'release' or active == false then return end
		mode = "release"
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		notify("MODE || RELEASE || [Q]",false)
	elseif key == "x" then
		if mode == 'stab' or active == false or acting == true then return end
		mode = "stab"
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		notify("MODE || STAB || [X]",false)
	elseif key == "c" then
		if mode == 'fling' or active == false or acting == true then return end
		mode = "fling"
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		notify("MODE || THROW || [C]",false)
	elseif key == "b" then
		if mode == 'instasplode' or active == false or acting == true then return end
		mode = "instasplode"
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		notify("MODE || MOLOTOV || [B]",false)
	elseif key == "r" then
		if mode == 'paralyze' or active == false then return end
		mode = "paralyze"
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		notify("MODE || PARALYZE || [R]",false)
	elseif key == "v" then
		if mode == 'explode' or active == false or acting == true then return end
		mode = "explode"
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		notify("MODE || EXPLODE || [V]",false)
	elseif key == "k" then
		if mode == 'suicide' or active == false or acting == true then return end
		mode = "suicide"
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		notify("MODE || SUICIDE || [K]",false)
	elseif key == "h" then
		if mode == 'firework' or active == false or acting == true then return end
		mode = "firework"
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		notify("MODE || FIREWORK || [H]",false)
	elseif key == "g" then
		if mode == 'finish' or active == false then return end
		mode = "finish"
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		local welp = "ON"
		if finishnum == 1 then
			welp = "OFF"
		end
		notify("MODE || FINISH || [G] || "..welp,false)
	elseif key == "n" then
		if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
		if zombiemode == false then
			notify("ZOMBIE MODE ON || [N]",false)
			zombiemode = true
		else
			notify("ZOMBIE MODE OFF || [N]",false)
			zombiemode = false
		end
	elseif key == "m" then
		if finishnum == 1 then
			finishnum = 15
			if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
			notify("PSYCHOPATH MODE ON || [M]",false)
			if cancolorfilter then
			local Sp00kyGui = Instance.new("ScreenGui")
			local ImageLabel = Instance.new("ImageLabel")

			-- Properties

			Sp00kyGui.Parent = playergui
			Sp00kyGui.Name = "REEEEEEEE"

			ImageLabel.Parent = Sp00kyGui
			ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
			ImageLabel.BackgroundTransparency = 1
			ImageLabel.Size = UDim2.new(1, 0, 1, 0)
			ImageLabel.Image = "rbxassetid://74443700"
			ImageLabel.ImageColor3 = Color3.new(1, 0, 0)
			end
			if canbackgroundmusic == true then
				local sound = Instance.new('Sound',playergui)
				sound.Name = 'PSYCHOPAAAATH'
				sound.SoundId = 'rbxassetid://220875210'
				sound.Looped = true
				sound.Volume = 0.5
				sound:Play()
			end
		else
			finishnum = 1
			if playergui:FindFirstChild('Notification') then playergui.Notification:Destroy() end
			notify("PSYCHOPATH MODE OFF || [M]",false)
			for i,v in pairs(playergui:GetChildren()) do
				if v.Name == "REEEEEEEE" then
					v:Destroy()
				end
			end
			local thisniggarighthere = playergui:FindFirstChild('PSYCHOPAAAATH')
			if thisniggarighthere then thisniggarighthere:Destroy() end
		end
	end
	end
end)

mouse.Button1Down:connect(function()
	if active == false or usable == false then return end
	if canClick == true and acting == false then
		if mode == "stab" and finishnum == 1 then
			canClick = false
			stab()
		elseif mode == "stab" and finishnum == 15 then
			canClick = false
			stabwithpassion()
		elseif mode == "fling" then
			canClick = false
			fling()
		elseif mode == "explode" then
			canClick = false
			explode()
		elseif mode == "instasplode" then
			canClick = false
			instasplode()
		elseif mode == "finish" then
			canClick = false
			finish()
		elseif mode == "suicide" then
			canClick = false
			kysnigga()
		elseif mode == "firework" then
			canClick = false
			fireworkit()
		else
			canClick = false
			grab()
		end
	else
		if grabbed ~= nil and doing == false then
			if mode == "release" then
				if acting == true and grabbed:FindFirstChildOfClass('Humanoid') and grabbed:FindFirstChildOfClass('Humanoid').Health > 0 then
				release()
				else
				hardrelease()
				end
			elseif mode == "kill" then
				if acting == true and grabbed:FindFirstChildOfClass('Humanoid') and grabbed:FindFirstChildOfClass('Humanoid').Health > 0 then
				kill()
				else
				hardrelease()
				end
			elseif mode == "paralyze" then
				if acting == true and grabbed:FindFirstChildOfClass('Humanoid') and grabbed:FindFirstChildOfClass('Humanoid').Health > 0 then
				paralyze()
				else
				hardrelease()
				end
			elseif mode == "throw" then
				if acting == true and grabbed:FindFirstChildOfClass('Humanoid') and grabbed:FindFirstChildOfClass('Humanoid').Health > 0 then
				throw()
				else
				hardrelease()
				end
			elseif mode == "explode" then
				if acting == true and grabbed:FindFirstChildOfClass('Humanoid') and grabbed:FindFirstChildOfClass('Humanoid').Health > 0 then
				throw()
				else
				hardrelease()
				end
			end
		end
	end
end)

knife.Touched:connect(function(hitz)
	if hitz.Parent and hitz.Parent:FindFirstChildOfClass("Humanoid") and hitz.Parent:FindFirstChild('Torso') and acting == true then
		if mode == "stab" and stabbing == true and hit == false then
			hit = true
			tone = math.random(1, 3)
			audio:Stop()
			if tone == 1 then audio.SoundId = "rbxassetid://220833967" end
			if tone == 2 then audio.SoundId = "rbxassetid://220833976" end
			if tone == 3 then audio.SoundId = "rbxassetid://220834000" end
			audio.PlaybackSpeed = 1
			audio:Play()
			killz(hitz.Parent,'Left Leg')
			killz(hitz.Parent,'Left Arm')
			killz(hitz.Parent,'Right Leg')
			killz(hitz.Parent,'Right Arm')
		elseif mode == "finish" and finishing == true then
			print('PSYCHOPATH MODE REEEEEEEEEEEEEEEE')
			tone = math.random(1, 3)
			audio:Stop()
			if tone == 1 then audio.SoundId = "rbxassetid://220833967" end
			if tone == 2 then audio.SoundId = "rbxassetid://220833976" end
			if tone == 3 then audio.SoundId = "rbxassetid://220834000" end
			audio.PlaybackSpeed = 1
			audio:Play()
			if hit == false then
				hitz.Parent:FindFirstChildOfClass('Humanoid').Health = 0
				wait()
				killz(hitz.Parent,'Head',nil,false,true)
			end
			hit = true
		elseif grabbed == nil and grabbing == true and hit == false then
			if hitz.Parent:FindFirstChildOfClass("Humanoid").Health > 0 and hitz.Parent:FindFirstChild('Torso') and hitz.Parent.Torso:FindFirstChild('Neck') then
			grabbed = hitz.Parent
			local weldz = Instance.new('Weld',point)
			weldz.Name = "Holder"
			weldz.Part0 = point
			weldz.Part1 = hitz.Parent.Torso
			weldz.C0 = CFrame.new(0,0,-1.2)
			end
		end
	end
end)

player.CharacterAdded:connect(function()
	usable = false
	for i,v in pairs(playergui:GetChildren()) do
		if v.Name == "REEEEEEEE" or v.Name == 'PSYCHOPAAAATH' then
			v:Destroy()
		end
	end
end)
while usable do
	local coru = coroutine.wrap(function()
	if grabbed ~= nil then
		if grabbed:FindFirstChildOfClass('Humanoid') and grabbed:FindFirstChildOfClass('Humanoid').Health > 0 then
			for i,v in pairs(grabbed:GetChildren()) do
				if v:IsA('Tool') then
					local model = Instance.new('Model',workspace)
					v.Parent = model
					model:TranslateBy(Vector3.new(3,0,0))
				end
			end
			grabbed:FindFirstChildOfClass('Humanoid').Name = "Hoomanoid"
			grabbed:FindFirstChildOfClass('Humanoid').JumpPower = 0
			grabbed:FindFirstChildOfClass('Humanoid').WalkSpeed = 0
			grabbed:FindFirstChildOfClass('Humanoid').PlatformStand = true
			grabweld = grabbed.Torso:FindFirstChild("TargetWeld")
			if grabweld ~= nil then return end
			grabbed:FindFirstChildOfClass('Humanoid').PlatformStand = true
			if grabbed.Torso:FindFirstChild('Left Shoulder') then
			leftshoulder = grabbed.Torso["Left Shoulder"]:Clone()
			end
			if grabbed.Torso:FindFirstChild('Right Shoulder') then
			rightshoulder = grabbed.Torso["Right Shoulder"]:Clone()
			end
			headweld = grabbed.Torso["Neck"]:Clone()
			local targetweld = Instance.new('Weld',grabbed.Torso)
			targetweld.Part0 = grabbed.Torso
			targetweld.Part1 = grabbed.Head
			targetweld.Name = "TargetWeld"
			targetweld.C0 = CFrame.new(0,1.5,0) * CFrame.Angles(0, 0, 0)
			if grabbed:FindFirstChild('Left Arm') then
			local targetweld2 = Instance.new('Weld',grabbed["Left Arm"])
			targetweld2.Part0 = grabbed.Torso
			targetweld2.Part1 = grabbed["Left Arm"]
			targetweld2.C0 = CFrame.new(-1.5,0,0) * CFrame.Angles(0, 0, 0)
			end
			
			for i = 0,1,0.1 do
				if me:FindFirstChild("Left Arm") == nil or me:FindFirstChild("Torso") == nil or targetweld == nil then return end
				targetweld.C0 = targetweld.C0:lerp(CFrame.new(0, 1.5, 0)*CFrame.Angles(0.25, 0, 0), i)
				if targetweld2 then
					targetweld2.C0 = targetweld2.C0:lerp(CFrame.new(-1.5, 0.5, 0)*CFrame.Angles(0, 0, -0.55), i)
				end
				wait(0.001)
			end
		end
	end
	end)
	coru()
	wait()
end

end
local coru=coroutine.wrap(function()
nub()
end)
coru()

player.CharacterAppearanceLoaded:connect(function()
	local coru =coroutine.wrap(function()
		nub()
	end)
	coru()
end)

while true do
	local coru=coroutine.wrap(function()
	for i,v in pairs(rekt) do
		if v and v:FindFirstChildOfClass('Humanoid') then
			for a,c in pairs(v:GetChildren()) do
				if c:IsA('Tool') then
					local model = Instance.new('Model',workspace)
					c.Parent = model
					model:TranslateBy(Vector3.new(3,0,0))
				end
			end
			v:FindFirstChildOfClass('Humanoid').Jump = false
			v:FindFirstChildOfClass('Humanoid').Sit = false
			v:FindFirstChildOfClass('Humanoid').JumpPower = 0
			v:FindFirstChildOfClass('Humanoid').PlatformStand = true
			v:FindFirstChildOfClass('Humanoid').Name = "No escape."
			local thing = getplr(v)
			if thing then
				thing.CameraMinZoomDistance = 3
			end
		else
			local thing = getplr(v)
			if thing then
				thing.CameraMinZoomDistance = 0.5
			end
			table.remove(rekt,i)
		end
	end
	end)
	coru()
	local coru2 = coroutine.wrap(function()
		if curpart then
			curpoint = curpart.CFrame.p
		end
		if lastgui then
			lastgui:Destroy()
			lastgui = nil
		end
		if curpoint then
			lastgui = Instance.new('BillboardGui',player.PlayerGui)
			lastgui.AlwaysOnTop = true
			lastgui.MaxDistance = 0
			lastgui.Size = UDim2.new(5,0,5,0)
			if curpart == nil then
				lastgui.Adornee = workspace
				lastgui.StudsOffsetWorldSpace = curpoint
			else
				lastgui.Adornee = curpart
			end
			local cross = Instance.new('ImageLabel',lastgui)
			cross.BackgroundTransparency = 1
			cross.Size = UDim2.new(1,0,1,0)
			cross.Image = 'rbxassetid://316279304'
			for i,v in pairs(zombies) do
				if v:FindFirstChildOfClass('Humanoid') then
					v:FindFirstChildOfClass('Humanoid').WalkToPoint = curpoint
				end
			end
		else
			for i,v in pairs(zombies) do
				if v:FindFirstChildOfClass('Humanoid') and v:FindFirstChild('Head') then
					v:FindFirstChildOfClass('Humanoid').WalkToPoint = v.Head.Position
				end
			end
		end
	end)
	coru2()
	wait()
end