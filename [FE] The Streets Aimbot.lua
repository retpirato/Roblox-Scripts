--[AimBot Settings]--
local FreeForAll = false

local AimingFor = "Head"

local AutoAim = false

local Chams = true

local PointToAiming = false

local IgnoreFOV = false
--[End AimBot Settings]--

--[AimBot HotKeys]--
local ModeSwitch = "Q" --Changes whether games FFA or TDM (shoot at all or only enemies).

local AimSwitch = "E" --Change where to shoot at the 'Head' or 'HumanoidRootPart'.

local AutoAimKey = "P" --Change whether you manually lockon or auto-lockon.

local ChamSwitch = "T" --Change whether chams(esp) is disabled or enabled)

local PointSwitch = "I" --Change wherer to render a line between you and who you're aiming at.

local WallSwitch = "Y" --Change whether to be able to aim at people through walls.
--[End AimBot HotKeys]--

--[[
				NOTHING BELOW HERE NEEDS TO BE EDITED	
				NOTHING BELOW HERE NEEDS TO BE EDITED	
				NOTHING BELOW HERE NEEDS TO BE EDITED	
				NOTHING BELOW HERE NEEDS TO BE EDITED	
--]]

--[[
	
  /$$$$$$                  /$$                 /$$       /$$$$$$$                       /$$$$$$                                  /$$                        
 /$$__  $$                | $$                | $$      | $$__  $$                     /$$__  $$                                | $$                        
| $$  \__/  /$$$$$$   /$$$$$$$  /$$$$$$   /$$$$$$$      | $$  \ $$ /$$   /$$ /$$      | $$  \__/  /$$$$$$$  /$$$$$$   /$$$$$$  /$$$$$$    /$$$$$$   /$$$$$$ 
| $$       /$$__  $$ /$$__  $$ /$$__  $$ /$$__  $$      | $$$$$$$ | $$  | $$|__/      |  $$$$$$  /$$_____/ |____  $$ /$$__  $$|_  $$_/   /$$__  $$ /$$__  $$
| $$      | $$  \ $$| $$  | $$| $$$$$$$$| $$  | $$      | $$__  $$| $$  | $$           \____  $$| $$        /$$$$$$$| $$  \ $$  | $$    | $$$$$$$$| $$  \__/
| $$    $$| $$  | $$| $$  | $$| $$_____/| $$  | $$      | $$  \ $$| $$  | $$ /$$       /$$  \ $$| $$       /$$__  $$| $$  | $$  | $$ /$$| $$_____/| $$      
|  $$$$$$/|  $$$$$$/|  $$$$$$$|  $$$$$$$|  $$$$$$$      | $$$$$$$/|  $$$$$$$|__/      |  $$$$$$/|  $$$$$$$|  $$$$$$$| $$$$$$$/  |  $$$$/|  $$$$$$$| $$      
 \______/  \______/  \_______/ \_______/ \_______/      |_______/  \____  $$           \______/  \_______/ \_______/| $$____/    \___/   \_______/|__/      
                                                                   /$$  | $$                                        | $$                                    
                                                                  |  $$$$$$/                                        | $$                                    
                                                                   \______/                                         |__/                                    

--]]

warn("[ScapAssist] Your Hotkeys Are: ModeSwitch["..ModeSwitch.."], AimSwitch["..AimSwitch.."], AutoAimKey["..AutoAimKey.."], ChamSwitch["..ChamSwitch.."], PointSwitch["..PointSwitch.."], WallSwitch["..WallSwitch.."]")

--[Aimbot Hooks]--
local AimingAt = nil

local Distance = 0

local Camera = game.Workspace.CurrentCamera

local Mouse = game.Players.LocalPlayer:GetMouse()

local MouseDown = false

local Vals = {}

local Dist = {}
--[End Aimbot Hooks]--

--[Aimbot Framework]--
game:GetService("RunService").RenderStepped:connect(function()
	if game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name) then
		for i,c in pairs(Vals) do
			table.remove(Vals, i)
		end
		for i,c in pairs(Dist) do
			table.remove(Dist, i)
		end
		for _,v in pairs(game.Players:GetChildren()) do
			if game.Workspace:FindFirstChild(v.Name) then
				if FreeForAll == true then
					if v.Name ~= game.Players.LocalPlayer.Name and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild(AimingFor) and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
						local Distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Character.HumanoidRootPart.Position).magnitude
						local Position,Bool = Camera:WorldToScreenPoint(v.Character[AimingFor].Position)					
						if IgnoreFOV == false then
							if Bool == true then
								table.insert(Vals, {v.Name, Distance})
								table.insert(Dist, Distance)
							end
						else
							table.insert(Vals, {v.Name, Distance})
							table.insert(Dist, Distance)
						end
					end
				elseif FreeForAll == false then
					if v.Name ~= game.Players.LocalPlayer.Name and v.TeamColor ~= game.Players.LocalPlayer.TeamColor and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild(AimingFor) and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
						local Distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Character.HumanoidRootPart.Position).magnitude
						local Position,Bool = Camera:WorldToScreenPoint(v.Character[AimingFor].Position)
						if IgnoreFOV == false then
							if Bool == true then
								table.insert(Vals, {v.Name, Distance})
								table.insert(Dist, Distance)
							end
						else
							table.insert(Vals, {v.Name, Distance})
							table.insert(Dist, Distance)
						end
					end
				end
			end
		end
		for _,t in pairs(Vals) do
			if t[2] == math.min(unpack(Dist)) then
				AimingAt = t[1]
			end
		end
		if AutoAim == true or MouseDown == true and AimingAt ~= nil and game.Players[AimingAt].Character:FindFirstChild(AimingFor) and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
			local Position,Bool = Camera:WorldToScreenPoint(game.Players[AimingAt].Character[AimingFor].Position)
			if IgnoreFOV == true then
				if game.Players[AimingAt].Character:FindFirstChild(AimingFor) then
					Camera.CoordinateFrame = CFrame.new(Camera.Focus.p, game.Players[AimingAt].Character[AimingFor].Position)
				end
			elseif IgnoreFOV == false then
				if game.Players[AimingAt].Character:FindFirstChild(AimingFor) and Bool == true then
					Camera.CoordinateFrame = CFrame.new(Camera.Focus.p, game.Players[AimingAt].Character[AimingFor].Position)
				end
			end
		end
		
		if PointToAiming and AimingAt ~= nil and game.Players[AimingAt].Character:FindFirstChild(AimingFor) and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
			if game.Players[AimingAt].Character[AimingFor]:FindFirstChild("Attachment") then
				game.Players[AimingAt].Character[AimingFor].Attachment:Destroy()
			end
			local Attach = Instance.new("Attachment")
			Attach.Parent = game.Players[AimingAt].Character[AimingFor]
			if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Attachment") then
				game.Players.LocalPlayer.Character.HumanoidRootPart.Attachment:Destroy()
			end
			local Attach2 = Instance.new("Attachment")
			Attach.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
			if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("RodConstraint") then
				game.Players.LocalPlayer.Character.HumanoidRootPart.RodConstraint:Destroy()
			end
			local Con = Instance.new("RodConstraint")
			Con.Attachment0 = Attach
			Con.Attachment1 = Attach2
			Con.Visible = true
			Con.Thickness = 5
			Con.Color = BrickColor.new("Lime green")
			Con.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		elseif not PointToAiming then
			if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("RodConstraint") then
				game.Players.LocalPlayer.Character.HumanoidRootPart.RodConstraint:Destroy()
			end
		end
		
		if Chams and AimingAt ~= nil and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
			for _,q in pairs(Camera:GetChildren()) do
				if q:IsA("BoxHandleAdornment") then
					q:Destroy()
				end
			end
			for _,v in pairs(game.Players:GetChildren()) do
				if v.Name ~= game.Players.LocalPlayer.Name and game.Workspace:FindFirstChild(v.Name) then
					for _,c in pairs(v.Character:GetChildren()) do
						if c:IsA("BasePart") then
							if v.TeamColor == game.Players.LocalPlayer.TeamColor then
								local esp = Instance.new("BoxHandleAdornment", Camera)
								esp.Color3 = Color3.new(0, 255, 0)
								esp.Size = c.Size
								esp.AlwaysOnTop = true
								esp.ZIndex = 1
								esp.Adornee = c
							elseif v.TeamColor ~= game.Players.LocalPlayer.TeamColor then
								local esp = Instance.new("BoxHandleAdornment", Camera)
								esp.Color3 = Color3.new(255, 0, 0)
								esp.Size = c.Size
								esp.AlwaysOnTop = true
								esp.ZIndex = 1
								esp.Adornee = c
							end
						end
					end 
				end
			end
		elseif not Chams then
			for _,q in pairs(Camera:GetChildren()) do
				if q:IsA("BoxHandleAdornment") then
					q:Destroy()
				end
			end
		end
	end
end)

game:GetService("UserInputService").InputBegan:connect(function(key)
	if key.UserInputType == Enum.UserInputType.Keyboard then
		if key.KeyCode == Enum.KeyCode[ModeSwitch] then
			if FreeForAll == true then
				FreeForAll = false
				warn("[ScapAssist] FreeForAll set to: false")
			else
				FreeForAll = true
				warn("[ScapAssist] FreeForAll set to: true")
			end
		elseif key.KeyCode == Enum.KeyCode[AimSwitch] then
			if AimingFor == "Head" then
				AimingFor = "HumanoidRootPart"
			elseif AimingFor == "HumanoidRootPart" then
				AimingFor = "Head"
				
			end
		warn("[ScapAssist] AimingFor set to: "..AimingFor)
		elseif key.KeyCode == Enum.KeyCode[AutoAimKey] then
			if AutoAim == true then
				AutoAim = false
				warn("[ScapAssist] AutoAim set to: false")
			else
				AutoAim = true
				warn("[ScapAssist] AutoAim set to: true")
			end
		elseif key.KeyCode == Enum.KeyCode[ChamSwitch] then
			if Chams == true then
				Chams = false
				warn("[ScapAssist] Chams set to: false")
			else
				Chams = true
				warn("[ScapAssist] Chams set to: true")
			end
		end
	end
end)

Mouse.Button2Down:connect(function()
	MouseDown = true
end)

Mouse.Button2Up:connect(function()
	MouseDown = false
end)
--[End Aimbot Framework]--