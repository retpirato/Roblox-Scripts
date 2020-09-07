local plrs = game:GetService("Players")
local TeamBased = true ; local teambasedswitch = "o"
local presskeytoaim = true; local aimkey = "e"
local lockaim = true; local lockangle = 5
local CharactersFolder = workspace:WaitForChild('Characters')
local DeltaSens = game:GetService('UserInputService').MouseDeltaSensitivity
-- Scripts:
local enemyColor = Color3.fromRGB(255,0,0)
local teamColor = Color3.fromRGB(50,205,50)
local targetPlayer = ""
local targetPlayerColor = Color3.fromRGB(255,255,255)



local lplr = game:GetService("Players").LocalPlayer
local ScreenGui = Instance.new("ScreenGui",game:GetService('Players').LocalPlayer.PlayerGui)
local ESPLocation = Instance.new("Folder",ScreenGui)
local CharactersFolder = workspace:WaitForChild('Characters')
local debounce = true
local windowFocused = false

local Targets = {  
        "Head",
    }

local function quickRemove(tbl,index)
	local size = #tbl
	tbl[index] = tbl[size]
	tbl[size] = nil
end

function espPart(part,player,color)
    local esp = Instance.new("BoxHandleAdornment",ESPLocation)
    esp.Adornee = part
    esp.AlwaysOnTop = true
    esp.ZIndex = 1
    esp.Transparency = 0.5
    esp.Size = part.Size -- - Vector3.new(0,1,0)
	if part.Name == "LeftHand" or part.Name == "RightHand" then
		esp.Size = part.Size - Vector3.new(0,1,0)
	end
    esp.Color3 = color
    if player.Name == targetPlayer then
        esp.Size = part.Size + Vector3.new(.1, .1, .1)
		esp.Color3 = targetPlayerColor
    end
    esp.MouseEnter:Connect(function()
        if player.Team ~= game:GetService('Players').LocalPlayer.Team then
            local currentFrame = esp
        end
    end)

    CharactersFolder.ChildAdded:Connect(function(instance)
		if instance.Name == player.Name then
        	esp:Destroy()
		end
    end)
	CharactersFolder.ChildRemoved:Connect(function(instance)
		if instance.Name == player.Name then
        	esp:Destroy()
		end
    end)
end

function espPlayer(targetPlayer)
    if CharactersFolder:FindFirstChild(targetPlayer.Name) ~= nil then
        for _,part in pairs(CharactersFolder:FindFirstChild(targetPlayer.Name).Hitbox:GetChildren())do
            if part:IsA("BasePart") and part.Name ~= "Head" and part.Name ~= "RightFoot" and game:GetService('Players').LocalPlayer.Name ~= part.Parent.Name then
				if game:GetService('Teams'):FindFirstChild(targetPlayer.Name, true).Parent == game:GetService('Teams'):FindFirstChild(lplr.Name, true).Parent then
						debounce = false
						espPart(part,targetPlayer,teamColor)
				end
				if debounce == true then
					espPart(part,targetPlayer,enemyColor)
				end
            end
        end
		debounce = true
    end
end

function ESP()
    ESPLocation:ClearAllChildren()
    for _,player in pairs(game:GetService('Players'):GetPlayers())do
        if player ~= game:GetService('Players').LocalPlayer then
            espPlayer(player)
        end
    end
end


local function WaitUntilCharacterLoaded(Char)
    for _,Part in pairs(Targets)do
        Char:WaitForChild(Part)
    end
end

CharactersFolder.ChildAdded:Connect(function(instance)
   if instance.Name ~= game:GetService('Players').LocalPlayer.Name then
       WaitUntilCharacterLoaded(instance:WaitForChild('Hitbox'))
       espPlayer(game:GetService('Players')[instance.Name])
   end
end)



ESP()

local plrsforaim = {}


local CF = CFrame.new


local cam = workspace.CurrentCamera

local mouse = lplr:GetMouse()
local aimatpart = nil


function checkDistance(part)

    for i,v in pairs(game.Players:GetPlayers())do
        if v and v.Parent.Parent.Name ~= lplr.Name then
            local distance = (workspace.Characters[lplr.Name].Hitbox.Head.Position - part.Position).Magnitude
			return distance
        end
    end
end

game:GetService('UserInputService').InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton2 then
	if not aimatpart then
		local maxangle = math.rad(20)
		local lowestdistance = math.huge -- infinity
		local NearestPlayer
		for i, plr in pairs(plrs:GetChildren()) do
			local CharModel = CharactersFolder:FindFirstChild(plr.Name)
			if CharModel ~= nil then
				if plr.Name ~= lplr.Name and CharactersFolder:FindFirstChild(plr.Name) and CharactersFolder[plr.Name].Health.Value > 1 and CharactersFolder[lplr.Name].Health.Value > 1 then
					if TeamBased == true then
			            if game:GetService('Teams'):FindFirstChild(plr.Name, true).Parent ~= game:GetService('Teams'):FindFirstChild(lplr.Name, true).Parent then
			                local an = checkfov(CharactersFolder[plr.Name].Hitbox.Head)
							local dist = checkDistance(CharactersFolder[plr.Name].Hitbox.Head)
			                if an < maxangle and dist < lowestdistance then
							  lowestdistance = dist
			                  maxangle = an
			                  aimatpart = CharactersFolder[plr.Name].Hitbox.Head
			                end
			            end
					else
						
						local an = checkfov(CharactersFolder[plr.Name].Hitbox.Head)
						local dist = checkDistance(CharactersFolder[plr.Name].Hitbox.Head)
							if an < maxangle and dist < lowestdistance then
								lowestdistance = dist
								maxangle = an
								aimatpart = CharactersFolder[plr.Name].Hitbox.Head
								break
							end
					end
				end
			end
		end
	end
	end
end)

game:GetService('UserInputService').InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton2 then
	aimatpart = nil
	end
end)


function getfovxyz (p0, p1, deg)
	local x1, y1, z1 = p0:ToOrientation()
	local cf = CFrame.new(p0.p, p1.p)
	local x2, y2, z2 = cf:ToOrientation()
	--local d = math.deg
	if deg then
		--return Vector3.new(d(x1-x2), d(y1-y2), d(z1-z2))
	else
		return Vector3.new((x1-x2), (y1-y2), (z1-z2))
	end
end

function getaimbotplrs()
	plrsforaim = {}
	for i, plr in pairs(plrs:GetChildren()) do
		local CharModel = CharactersFolder:FindFirstChild(plr.Name)
		if CharModel ~= nil then
			if CharactersFolder[plr.Name].Hitbox and CharactersFolder[plr.Name].Hitbox.Humanoid and CharactersFolder[plr.Name].Health.Value > 0 and plr.Name ~= lplr.Name and CharactersFolder[plr.Name].Hitbox.Head then

				if TeamBased == true then
					if game:GetService('Teams'):FindFirstChild(plr.Name, true).Parent ~= game:GetService('Teams'):FindFirstChild(lplr.Name, true).Parent then
						local cf = CFrame.new(workspace.CurrentCamera.CFrame.p, CharactersFolder[plr.Name].Hitbox.Head.CFrame.p)
						local r = Ray.new(cf, cf.LookVector * 10000)
						local ign = {}
						for i, v in pairs(CharactersFolder[lplr.Name].Hitbox:GetChildren()) do
							if v:IsA("BasePart") then
								table.insert(ign , v)
							end
						end
						local obj = workspace:FindPartOnRayWithIgnoreList(r, ign)
						if obj.Parent == CharactersFolder[plr.Name].Hitbox and obj.Parent ~= CharactersFolder[lplr.Name].Hitbox then
							table.insert(plrsforaim, obj)
						end
					end
				else
					local cf = CFrame.new(workspace.CurrentCamera.CFrame.p, CharactersFolder[plr.Name].Hitbox.Head.CFrame.p)
					local r = Ray.new(cf, cf.LookVector * 10000)
					local ign = {}
					for i, v in pairs(CharactersFolder[lplr.Name].Hitbox:GetChildren()) do
						if v:IsA("BasePart") then
							table.insert(ign , v)
						end
					end
					local obj = workspace:FindPartOnRayWithIgnoreList(r, ign)
					if obj.Parent == CharactersFolder[plr.Name].Hitbox and obj.Parent ~= CharactersFolder[lplr.Name].Hitbox then
						table.insert(plrsforaim, obj)
					end
				end


			end
		end
	end
end

function aimat(part)
	local MouseLocation = game:GetService('UserInputService'):GetMouseLocation()
	local ScreenPoint = cam:WorldToViewportPoint(part.Position)
    local MousePos = Vector2.new(ScreenPoint.X, ScreenPoint.Y) - MouseLocation
	local MoveMouse = mousemoverel or game:GetService('UserInputService').MoveMouse
    MoveMouse(MousePos.X, MousePos.Y)

end
function checkfov (part)
	local fov = getfovxyz(workspace.CurrentCamera.CFrame, part.CFrame)
	local angle = math.abs(fov.X) + math.abs(fov.Y)
	return angle
end

game:GetService('RunService').RenderStepped:Connect(function(step)
	if windowFocused == true then
		if aimatpart then
			game:GetService('UserInputService').MouseDeltaSensitivity = .4
			aimat(aimatpart)
			if aimatpart.Parent == CharactersFolder[lplr.Name].Hitbox then
				aimatpart = nil
			end
		else
			game:GetService('UserInputService').MouseDeltaSensitivity = DeltaSens
		end
	end
end)

game:GetService('UserInputService').WindowFocusReleased:Connect(function()
	windowFocused = false
end)

game:GetService('UserInputService').WindowFocused:Connect(function()
	windowFocused = true
end)
warn("loaded")