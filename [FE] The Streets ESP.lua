--[[
----------------------------------------------------------
------¦-------------?----------?-------?---?----?-------?-
-?---?--------------?----?------------¦--?-?----?-?-------
-?-¦-?--------------?----------?-------?---?----?-------?-
----------------------------------------------------------
            
                ESP made by Crystal Junkie
    v3rmillion.net/member.php?action=profile&uid=372628
                     
                    Have Fun with it
--]]

	trans = 0.5

warn ("....................................................................................")
print ("								ESP loaded. Enjoy!")
warn ("....................................................................................")

	while true do	
	for i,l in pairs(game:GetService("Players"):GetChildren()) do
		if l ~= game:GetService("Players").LocalPlayer then
		for i,v in pairs(l.Character:GetChildren()) do
			if v.ClassName == "MeshPart" or "Part" and v.Name ~= "HumanoidRootPart" then
			--
				xd = Instance.new("SurfaceGui")
				xd.Face = Enum.NormalId.Back
			xd.Parent = v
			xd.AlwaysOnTop = true
			Frame = Instance.new("Frame")
			Frame.Parent = xd
			Frame.BackgroundColor3 = Color3.new(1, 1, 1)
			Frame.Size = UDim2.new(1, 0, 1, 0)
			Frame.BackgroundTransparency = trans
			
			if l.Team ~= game:GetService("Players").LocalPlayer.Team then
				Frame.BackgroundColor3 = Color3.new(255,0 ,0)
				else Frame.BackgroundColor3 = Color3.new(0, 255, 255)

			end
			
			--
			
				xd = Instance.new("SurfaceGui")
				xd.Face = Enum.NormalId.Bottom
			xd.Parent = v
			xd.AlwaysOnTop = true
			Frame = Instance.new("Frame")
			Frame.Parent = xd
			Frame.BackgroundColor3 = Color3.new(1, 1, 1)
			Frame.Size = UDim2.new(1, 0, 1, 0)
			Frame.BackgroundTransparency = trans
			
			if l.Team ~= game:GetService("Players").LocalPlayer.Team then
				Frame.BackgroundColor3 = Color3.new(255,0 ,0)
				else Frame.BackgroundColor3 = Color3.new(0, 255, 255)

			end

			--
			
			xd = Instance.new("SurfaceGui")
				xd.Face = Enum.NormalId.Front
			xd.Parent = v
			xd.AlwaysOnTop = true
			Frame = Instance.new("Frame")
			Frame.Parent = xd
			Frame.BackgroundColor3 = Color3.new(1, 1, 1)
			Frame.Size = UDim2.new(1, 0, 1, 0)
			Frame.BackgroundTransparency = trans
			
			if l.Team ~= game:GetService("Players").LocalPlayer.Team then
				Frame.BackgroundColor3 = Color3.new(255,0 ,0)
				else Frame.BackgroundColor3 = Color3.new(0, 255, 255)

			end
			
			
			--
			
			xd = Instance.new("SurfaceGui")
				xd.Face = Enum.NormalId.Left
			xd.Parent = v
			xd.AlwaysOnTop = true
			Frame = Instance.new("Frame")
			Frame.Parent = xd
			Frame.BackgroundColor3 = Color3.new(1, 1, 1)
			Frame.Size = UDim2.new(1, 0, 1, 0)
			Frame.BackgroundTransparency = trans
			
			if l.Team ~= game:GetService("Players").LocalPlayer.Team then
				Frame.BackgroundColor3 = Color3.new(255,0 ,0)
				else Frame.BackgroundColor3 = Color3.new(0, 255, 255)

			end
			--
			
			xd = Instance.new("SurfaceGui")
				xd.Face = Enum.NormalId.Right
			xd.Parent = v
			xd.AlwaysOnTop = true
			Frame = Instance.new("Frame")
			Frame.Parent = xd
			Frame.BackgroundColor3 = Color3.new(1, 1, 1)
			Frame.Size = UDim2.new(1, 0, 1, 0)
			Frame.BackgroundTransparency = trans
			
		if l.Team ~= game:GetService("Players").LocalPlayer.Team then
				Frame.BackgroundColor3 = Color3.new(255,0 ,0)
				else Frame.BackgroundColor3 = Color3.new(0, 255, 255)

			end
			--
			
			xd = Instance.new("SurfaceGui")
				xd.Face = Enum.NormalId.Top
			xd.Parent = v
			xd.AlwaysOnTop = true
			Frame = Instance.new("Frame")
			Frame.Parent = xd
			Frame.BackgroundColor3 = Color3.new(1, 1, 1)
			Frame.Size = UDim2.new(1, 0, 1, 0)
			Frame.BackgroundTransparency = trans
			
			
			if l.Team ~= game:GetService("Players").LocalPlayer.Team then
				Frame.BackgroundColor3 = Color3.new(255,0 ,0)
				else Frame.BackgroundColor3 = Color3.new(0, 255, 255)

			end
		
			
		
				
			end
		end
		end
		end
		
	wait (10)
		for i,v in pairs (game:GetService("Players"):GetChildren()) do
			for i,k in pairs(v.Character:GetChildren()) do
			for i,l in pairs(k:GetChildren()) do
			if l.ClassName == "SurfaceGui" then
				l:Remove()
			end
			end
			end
			end
			
		end