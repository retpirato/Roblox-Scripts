-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local Area47GUI = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UnlimitedAmmo = Instance.new("TextButton")
local Noclip = Instance.new("TextButton")
local Speed = Instance.new("TextButton")
local Btools = Instance.new("TextButton")
local Frame = Instance.new("Frame")
local Credits = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local Frame_2 = Instance.new("Frame")
local Admin = Instance.new("TextButton")
local RemoveAllDoors = Instance.new("TextButton")
local ESP = Instance.new("TextButton")
local Aimbot = Instance.new("TextButton")
local Frame_3 = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local EmergencyTP = Instance.new("TextButton")
local Outside = Instance.new("TextButton")
local Prison = Instance.new("TextButton")
local Sector1 = Instance.new("TextButton")
local Sector3 = Instance.new("TextButton")
local Sector4 = Instance.new("TextButton")
local ShyGuy = Instance.new("TextButton")
local Warhead = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local OpenMain = Instance.new("Frame")
local Open = Instance.new("TextButton")
--Properties:
Area47GUI.Name = "Area 47 GUI"
Area47GUI.Parent = game.CoreGui
Area47GUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = Area47GUI
Main.BackgroundColor3 = Color3.new(0, 0, 0)
Main.BackgroundTransparency = 0.30000001192093
Main.BorderColor3 = Color3.new(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.00732064433, 0, 0.00737100746, 0)
Main.Size = UDim2.new(0, 396, 0, 356)
Main.Visible = false
Main.Draggable = true

UnlimitedAmmo.Name = "Unlimited Ammo"
UnlimitedAmmo.Parent = Main
UnlimitedAmmo.BackgroundColor3 = Color3.new(0.54902, 0.180392, 0.54902)
UnlimitedAmmo.BackgroundTransparency = 0.60000002384186
UnlimitedAmmo.BorderColor3 = Color3.new(0.54902, 0.180392, 0.54902)
UnlimitedAmmo.Position = UDim2.new(0.0412876643, 0, 0.408099324, 0)
UnlimitedAmmo.Size = UDim2.new(0, 148, 0, 36)
UnlimitedAmmo.Font = Enum.Font.SourceSans
UnlimitedAmmo.Text = "Unlimited Ammo"
UnlimitedAmmo.TextColor3 = Color3.new(0, 0, 0)
UnlimitedAmmo.TextSize = 14
UnlimitedAmmo.MouseButton1Down:connect(function()
local player = game:GetService('Players').LocalPlayer; local char = player.Character; local bag = player.Backpack; local AAD = true;

local function giveammo()
    for i,v in pairs(bag:GetDescendants()) do
        if v:IsA('NumberValue') then
            if v.Name == "Ammo" or v.Name == "Clip" then
                v.Value = math.huge
            end
        end
    end
end


giveammo()
end)

Noclip.Name = "Noclip"
Noclip.Parent = Main
Noclip.BackgroundColor3 = Color3.new(0.54902, 0.180392, 0.54902)
Noclip.BackgroundTransparency = 0.60000002384186
Noclip.BorderColor3 = Color3.new(0.54902, 0.180392, 0.54902)
Noclip.Position = UDim2.new(0.0433715656, 0, 0.55020237, 0)
Noclip.Size = UDim2.new(0, 148, 0, 34)
Noclip.Font = Enum.Font.SourceSans
Noclip.Text = "Noclip"
Noclip.TextColor3 = Color3.new(0, 0, 0)
Noclip.TextSize = 14
Noclip.MouseButton1Down:connect(function()
noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)

if key == "e" then
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
print('Loaded')
print('Press "E" to noclip')
end)

Speed.Name = "Speed"
Speed.Parent = Main
Speed.BackgroundColor3 = Color3.new(0.54902, 0.180392, 0.54902)
Speed.BackgroundTransparency = 0.60000002384186
Speed.BorderColor3 = Color3.new(0.54902, 0.180392, 0.54902)
Speed.Position = UDim2.new(0.535802662, 0, 0.55020237, 0)
Speed.Size = UDim2.new(0, 148, 0, 33)
Speed.Font = Enum.Font.SourceSans
Speed.Text = "Speed"
Speed.TextColor3 = Color3.new(0, 0, 0)
Speed.TextSize = 14
Speed.MouseButton1Down:connect(function()
game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 50
end)

Btools.Name = "Btools"
Btools.Parent = Main
Btools.BackgroundColor3 = Color3.new(0.54902, 0.180392, 0.54902)
Btools.BackgroundTransparency = 0.60000002384186
Btools.BorderColor3 = Color3.new(0.54902, 0.180392, 0.54902)
Btools.Position = UDim2.new(0.0436860099, 0, 0.269139826, 0)
Btools.Size = UDim2.new(0, 148, 0, 35)
Btools.Font = Enum.Font.SourceSans
Btools.Text = "Btools"
Btools.TextColor3 = Color3.new(0, 0, 0)
Btools.TextSize = 14
Btools.MouseButton1Down:connect(function()
loadstring(game:GetObjects('rbxassetid://552440069')[1].Source)()
end)

Frame.Parent = Main
Frame.BackgroundColor3 = Color3.new(0.54902, 0.180392, 0.54902)
Frame.BorderColor3 = Color3.new(0.54902, 0.180392, 0.54902)
Frame.Position = UDim2.new(0.00542006828, 0, 0.853054941, 0)
Frame.Size = UDim2.new(0, 388, 0, 50)

Credits.Name = "Credits"
Credits.Parent = Frame
Credits.BackgroundColor3 = Color3.new(0, 0, 0)
Credits.BackgroundTransparency = 1
Credits.Position = UDim2.new(0.110928349, 0, 0.107134968, 0)
Credits.Size = UDim2.new(0, 290, 0, 38)
Credits.Font = Enum.Font.Antique
Credits.Text = "Made by: insanes321 (All Scripts go to their rightfull owners)"
Credits.TextColor3 = Color3.new(0, 0, 0)
Credits.TextScaled = true
Credits.TextSize = 14
Credits.TextWrapped = true

Close.Name = "Close"
Close.Parent = Frame
Close.BackgroundColor3 = Color3.new(0.266667, 0.266667, 0.266667)
Close.BackgroundTransparency = 1
Close.BorderColor3 = Color3.new(0.266667, 0.266667, 0.266667)
Close.Position = UDim2.new(-0.00231190445, 0, 0.384947121, 0)
Close.Size = UDim2.new(0, 46, 0, 33)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.new(0, 0, 0)
Close.TextScaled = true
Close.TextSize = 14
Close.TextWrapped = true
Close.MouseButton1Down:connect(function()
OpenMain.Visible = true
Main.Visible = false
end)

Frame_2.Parent = Main
Frame_2.BackgroundColor3 = Color3.new(0.54902, 0.180392, 0.54902)
Frame_2.BackgroundTransparency = 0.20000000298023
Frame_2.BorderColor3 = Color3.new(0.54902, 0.180392, 0.54902)
Frame_2.Position = UDim2.new(0.00542006828, 0, 0.00104851136, 0)
Frame_2.Size = UDim2.new(0, 385, 0, 64)

Admin.Name = "Admin"
Admin.Parent = Main
Admin.BackgroundColor3 = Color3.new(0.54902, 0.180392, 0.54902)
Admin.BackgroundTransparency = 0.60000002384186
Admin.BorderColor3 = Color3.new(0.54902, 0.180392, 0.54902)
Admin.Position = UDim2.new(0.535802662, 0, 0.269139826, 0)
Admin.Size = UDim2.new(0, 148, 0, 34)
Admin.Font = Enum.Font.SourceSans
Admin.Text = "Admin"
Admin.TextColor3 = Color3.new(0, 0, 0)
Admin.TextSize = 14
Admin.MouseButton1Down:connect(function()
loadstring(game:HttpGet(('https://pastebin.com/raw/tzTXmYf2'),true))()
end)

RemoveAllDoors.Name = "Remove All Doors"
RemoveAllDoors.Parent = Main
RemoveAllDoors.BackgroundColor3 = Color3.new(0.54902, 0.180392, 0.54902)
RemoveAllDoors.BackgroundTransparency = 0.60000002384186
RemoveAllDoors.BorderColor3 = Color3.new(0.54902, 0.180392, 0.54902)
RemoveAllDoors.Position = UDim2.new(0.0433715656, 0, 0.68554312, 0)
RemoveAllDoors.Size = UDim2.new(0, 148, 0, 36)
RemoveAllDoors.Font = Enum.Font.SourceSans
RemoveAllDoors.Text = "Remove All Doors"
RemoveAllDoors.TextColor3 = Color3.new(0, 0, 0)
RemoveAllDoors.TextSize = 14
RemoveAllDoors.MouseButton1Down:connect(function()
local doorspath = game.workspace.DOORS:GetChildren()

for i,v in pairs(doorspath) do
    if v.Name == "SMALLDOOR" then
        v:Destroy()
    end
end

local doorspath = game.workspace.DOORS:GetChildren()

for i,v in pairs(doorspath) do
    if v.Name == "GATES" then
        v:Destroy()
    end
end
end)

ESP.Name = "ESP"
ESP.Parent = Main
ESP.BackgroundColor3 = Color3.new(0.54902, 0.180392, 0.54902)
ESP.BackgroundTransparency = 0.60000002384186
ESP.BorderColor3 = Color3.new(0.54902, 0.180392, 0.54902)
ESP.Position = UDim2.new(0.534255981, 0, 0.408099324, 0)
ESP.Size = UDim2.new(0, 148, 0, 34)
ESP.Font = Enum.Font.SourceSans
ESP.Text = "ESP"
ESP.TextColor3 = Color3.new(0, 0, 0)
ESP.TextSize = 14
ESP.MouseButton1Down:connect(function()
-- -----------------------------------
--  ___      _   _   _              --
-- / __| ___| |_| |_(_)_ _  __ _ ___--
-- \__ \/ -_)  _|  _| | ' \/ _` (_-<--
-- |___/\___|\__|\__|_|_||_\__, /__/--
--                         |___/    --
-- -----------------------------------
-- -----------------------------------
								ALLYCOLOR = {0,255,255}  	--//Color of the ESP  of people on the same team
								ENEMYCOLOR =  {255,0,0} 	--//Color of the ESP  of people on NOT the same team
								TRANSPARENCY = 0.5			--//Transparency of the ESP
								HEALTHBAR_ACTIVATED = true 	--//Renders the Healthbar
--
--

--							!!!Don't Change Anything Below Here Unless You Know What You're Doing!!!

function createFlex()
-- -----------------------------------------------------------------------------------
--[VARIABLES] //Changing may result in Errors!
players = game:GetService("Players") --//Required for PF
faces = {"Front","Back","Bottom","Left","Right","Top"} --//Every possible Enum face
currentPlayer = nil --//Used for the Team-Check
lplayer = players.LocalPlayer --//The LocalPlayer
-- -----------------------------------------------------------------------------------
players.PlayerAdded:Connect(function(p)
	currentPlayer = p
		p.CharacterAdded:Connect(function(character) --//For when a new Player joins the game 
			createESP(character)			
		end)		
end)
-- -----------------------------------------------------------------------------------
function checkPart(obj)  if (obj:IsA("Part") or obj:IsA("MeshPart")) and obj.Name~="HumanoidRootPart" then return true end end --//Check if the Part is suitable 
-- -----------------------------------------------------------------------------------
function actualESP(obj) 
	
	for i=0,5 do
		surface = Instance.new("SurfaceGui",obj) --//Creates the SurfaceGui
		surface.Face = Enum.NormalId[faces[i+1]] --//Adjusts the Face and chooses from the face table
		surface.AlwaysOnTop = true

		frame = Instance.new("Frame",surface)	--//Creates the viewable Frame
		frame.Size = UDim2.new(1,0,1,0)
		frame.BorderSizePixel = 0												
		frame.BackgroundTransparency = TRANSPARENCY
			if currentPlayer.Team == players.LocalPlayer.Team then --//Checks the Players Team
					frame.BackgroundColor3 = Color3.new(ALLYCOLOR[1],ALLYCOLOR[2],ALLYCOLOR[3])	--//If in same Team											
			else
				frame.BackgroundColor3 = Color3.new(ENEMYCOLOR[1],ENEMYCOLOR[2],ENEMYCOLOR[3])	--//If in another Team
			end
															
	end
end
-- -----------------------------------------------------------------------------------
function createHealthbar(hrp) 
	board =Instance.new("BillboardGui",hrp) --//Creates the BillboardGui with HumanoidRootPart as the Parent
	board.Name = "total"
	board.Size = UDim2.new(1,0,1,0)
	board.StudsOffset = Vector3.new(3,1,0)
	board.AlwaysOnTop = true

	bar = Instance.new("Frame",board) --//Creates the red background
	bar.BackgroundColor3 = Color3.new(255,0,0)
	bar.BorderSizePixel = 0
	bar.Size = UDim2.new(0.2,0,4,0)
	bar.Name = "total2"
												
	health = Instance.new("Frame",bar) --//Creates the changing green Frame
	health.BackgroundColor3 = Color3.new(0,255,0)
	health.BorderSizePixel = 0
	health.Size = UDim2.new(1,0,hrp.Parent.Humanoid.Health/100,0)
		hrp.Parent.Humanoid.Changed:Connect(function(property) --//Triggers when any Property changed
			hrp.total.total2.Frame.Size = UDim2.new(1,0,hrp.Parent.Humanoid.Health/100,0) --//Adjusts the size of the green Frame								
		end)
end
-- -----------------------------------------------------------------------------------
function createESP(c) --//Checks and calls the proper function
	bugfix = c:WaitForChild("Head") --// *Used so the children of the character arent nil.
	for i,v in pairs(c:GetChildren()) do
		if checkPart(v) then
		actualESP(v)
		end
	end
	if HEALTHBAR_ACTIVATED then --//If the user decided to
		createHealthbar(c:WaitForChild("HumanoidRootPart")) --//Calls the function of the creation
	end
end
-- -----------------------------------------------------------------------------------
for i,people in pairs(players:GetChildren())do
	if people ~= players.LocalPlayer then
		currentPlayer = people
																--//Used for Players already in the Game
		createESP(people.Character)
			people.CharacterAdded:Connect(function(character)
				createESP(character)			
			end)
	end
end
-- -----------------------------------------------------------------------------------
end --//End of the entire function

createFlex() --// Does exactly that :)
end)

Aimbot.Name = "Aimbot"
Aimbot.Parent = Main
Aimbot.BackgroundColor3 = Color3.new(0.54902, 0.180392, 0.54902)
Aimbot.BackgroundTransparency = 0.60000002384186
Aimbot.BorderColor3 = Color3.new(0.54902, 0.180392, 0.54902)
Aimbot.Position = UDim2.new(0.538320959, 0, 0.68554312, 0)
Aimbot.Size = UDim2.new(0, 148, 0, 34)
Aimbot.Font = Enum.Font.SourceSans
Aimbot.Text = "Aimbot press \"V\""
Aimbot.TextColor3 = Color3.new(0, 0, 0)
Aimbot.TextSize = 14
Aimbot.MouseButton1Down:connect(function()
--   /$$$$$$  /$$$$$$ /$$      /$$ /$$      /$$  /$$$$$$  /$$$$$$$  /$$   /$$  /$$$$$$         /$$$$$$       /$$
--  /$$__  $$|_  $$_/| $$$    /$$$| $$  /$ | $$ /$$__  $$| $$__  $$| $$  /$$/ /$$__  $$       /$$__  $$    /$$$$
-- | $$  \ $$  | $$  | $$$$  /$$$$| $$ /$$$| $$| $$  \ $$| $$  \ $$| $$ /$$/ | $$  \__/      |__/  \ $$   |_  $$
-- | $$$$$$$$  | $$  | $$ $$/$$ $$| $$/$$ $$ $$| $$  | $$| $$$$$$$/| $$$$$/  |  $$$$$$          /$$$$$/     | $$
-- | $$__  $$  | $$  | $$  $$$| $$| $$$$_  $$$$| $$  | $$| $$__  $$| $$  $$   \____  $$        |___  $$     | $$
-- | $$  | $$  | $$  | $$\  $ | $$| $$$/ \  $$$| $$  | $$| $$  \ $$| $$\  $$  /$$  \ $$       /$$  \ $$     | $$
-- | $$  | $$ /$$$$$$| $$ \/  | $$| $$/   \  $$|  $$$$$$/| $$  | $$| $$ \  $$|  $$$$$$/      |  $$$$$$//$$ /$$$$$$
-- |__/  |__/|______/|__/     |__/|__/     \__/ \______/ |__/  |__/|__/  \__/ \______/        \______/|__/|______/
-- LAWN KEVIN DID IT ALL I SWEAR


-- AIMWORKS 7: MOWS THE LAWN NOW
-- THE HOTTEST NEW BOT ON ROBLOX
-- AND PROBABLY THE BUGGIEST TOO
-- BUT WHATEVER IT'S GOOD ENOUGH
-- WRITTEN BY UNREAL AND FRIENDS
-- THANKS AUSTIN, CACA22, SAFAZI
-- THX 2 THETRUERIAS 4 BUG FIXES
-- SHOUTOUT TO CHROME/XETRICS XD

-- i should probably be using userinputservice
-- combine closestplayer and ray checks using :Distance and distance-1
-- move lasso to mouse cursor position
-- better
-- prune dead vars
-- shit these comments are like a million years old most of these arent even relevant anymore wtf
-- new comment that isnt rly old: REWRITE EVEERRYTHNing
-- update to that: neoworks tbh

local accuracy	    =  500 -- percent accuracy in general.
local aimkey	    =  "f"
local headshot      =  500 -- percent accuracy of headshots in FILTERINGENABLED GAMES. only FE games are affected by this number . this percentage, if the aimbot dis accurate enough, is the percent chance that the aimbot will want to favor a headshot
local ignoreFOV     =  true -- you can have it shoot through walls, target people you cant see, etc., using settings here.
	  local FOV     =  0.25 -- -1 to disable. decides radius size
local ignoreWalls   =  false
local perfect_aim   =  true -- you might want this to be false if you dont want to look really shady
local perfect_aim_firstperson_distance = 30
local pf_automatic_triggers = true
local RenderLassos  =  true
local ShootingTeam  =  false -- will target neutral people anyways XDDD
local SpreadControlRadius = Vector3.new(30, 30, 30) -- the larger you make those numbers the more likely your bullet is to hit. anything above 25, 25, 25 is a bit much. try 15, 15, 5
local trigger_speed =  0.1
local triggers 	    =  true
local forceheadshotsyolo = false

_G.debugaimworks = function(string_args) loadstring(string_args)() end

-- todo --
_G.SwordFightMode = false -- stuff that i am testing goes in _G. so i can toggle it

-- aim engine vars
-- todo: more priorities
-- prune dead vars
local aim_through_list = {nil, nil, nil}
local bone_name
local camera = workspace.CurrentCamera
local closest_distance
local deathBlock
local distance
local distance2
local FilteringEnabled = workspace.FilteringEnabled
local huge = math.huge
local in_fov
local lasso
local localplayer = game:GetService("Players").LocalPlayer
local most_viable_player
local mouse = localplayer:GetMouse()
local CreatorId = game.CreatorId
local placeid 	= game.PlaceId
local players_service = game:GetService("Players")
local position
local random = math.random
local ray = Ray.new
local ray_start
local running = true
local sleeping
local target
local tele_bone
local targ_bone
local ticksslept = 0
local trigger_debounce
local triggering = false
local vector
local viableplayers = {}
local distanceninemillion
local friends = {"safazi", "rektec", "alusionteam"}

local ScreenX, ScreenY = workspace.CurrentCamera.ViewportSize.X, workspace.CurrentCamera.ViewportSize.Y
local inversePi = 1 / math.pi
local magic = FOV*inversePi

Pixels = ScreenX * ScreenY

Radius = math.sqrt(Pixels*magic)

print(Radius)

-- if game.PlaceId == 302436427 then -- anarchy
-- 	ShootingTeam = true
-- 	triggers = false
-- end

local getGroupFromName=function(name)
    if(not game.Lighting:FindFirstChild'Groups')then return;end;
    for i,v in pairs(game.Lighting.Groups:children'')do
        for o,b in pairs(v:children'')do
            if(b.Value==name)then
                return v;
            end;
        end;
    end;
end;

local function FindInstance(instance_className, search_directory) -- i can inline this in a LOT of places... plus i can very very easily make this return a table of all found parts if a certain parameter is passed... might add that feature to my boilerplate

	if not search_directory then return end

	for i, v in pairs(search_directory:GetChildren()) do
		if v.className == instance_className then
			return(v)
		end
	end

end

local function CreateBlockOfDeath()

	if deathBlock then deathBlock:Destroy() end

	deathBlock = Instance.new("Part", workspace)
	deathBlock.Anchored = true
	deathBlock.CanCollide = false
	deathBlock.Transparency = 1
	deathBlock.Size = SpreadControlRadius
	deathBlock.Locked = true
	mouse.TargetFilter = deathBlock
	return deathBlock -- unnecessary

end -- Finished

local function ReturnsScreenCoordinatesAsVectorAndFOVChecksAsBool(player, bone) -- note: figure out what i wanted to do with datas in here

	if not bone then
		return {_, false}
	end

	return camera:WorldToScreenPoint(player.Character[bone].Position)

end

local function ReturnsPlayerCheckResults(player)

	-- Checks teams. If we won't shoot teammates and they're a teammate when we're not neutral, target them. We do this now because it can save a lot of FPS.
	if not ShootingTeam then -- if not shooting teammates
		if player.TeamColor == localplayer.TeamColor then -- if we're not shooting teammates and they're teammates
			if not (player.Neutral and localplayer.Neutral) then -- if we're not shooting teammates and they're teammates and they're not neutral
				return false
			end
		end
	end


	if not localplayer.Character then return false end -- what the fuck why do i need these wqtfwtf is going on AaaaAAAAA a a
	if not localplayer.Character:FindFirstChild'Head' then return false end ---wtf?????
	if not player.Character then return false end -- so it turns out roblox studio seems to have what i think is a bug where even if you don't have a character, you still have a character. nice

	distanceninemillion = player:DistanceFromCharacter(localplayer.Character.Head.Position)
	if distanceninemillion <= 3 or distanceninemillion > 1000 then return false end


	-- ok back to normal


	-- Checks if the player can be hurt.
	if FindInstance("ForceField", player.Character) then
		return false
	end

	-- Checks if they're dead.
	-- if FindInstance("Humanoid", player.Character, true).Health == 0 then
	-- 	return false
	-- end

	-- print(player.Character.Humanoid.Health)
	if player.Character.Humanoid.Health == 0 then return false end

	if friends[player.Name] then return false end

	if game.Lighting:FindFirstChild'Groups' then
		if getGroupFromName(player.Name) == getGroupFromName(localplayer.Name) then return false end
	end

	-- Checks if person is in FOV.
	local screen_position, in_fov = ReturnsScreenCoordinatesAsVectorAndFOVChecksAsBool(player, "Torso") -- end my life
	if not (in_fov or ignoreFOV) then
		return false
	else -- there's a bug somewhere here with fov checks and i want to end my life. it works in roblox studio too but not in online
		if (not ignoreFOV) and (FOV~=-1) then
			distance2 = (Vector2.new(screen_position.X, screen_position.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
			if distance2<=Radius then
				-- print(distance2)
				return player, screen_position
			end
			-- print(distance2)
			return false
		else
			return player, screen_position
		end
	end


end

local function ReturnsBoneOrFalse(player)

	if perfect_aim then
		return (FilteringEnabled and "Head" or "Left Arm") -- should be Head or
	end

	if not (random(1, 100) <= accuracy) then
		return false
	end

	if (random(1, 100) <= headshot) and FilteringEnabled then
		return "Head"
	end

	return "Left Arm" -- should be left arm

end


-- rewrite for cursor distance checks then optimize
local function ReturnsViablePlayerOrNil() -- fun fact: this isnt even the worst part of the script
	-- i blame austin _entirely_
	aim_through_list[1], aim_through_list[2] = deathBlock, localplayer.Character
	local distance = 1000
	local closest_distance = 1000
	local most_viable_player = nil

	-- FPS optimizations for shitty pcs... should more than double FPS in some situations. not really necessary for me :D..
	-- if sleeping and ticksslept ~= 15 then
	-- 	ticksslept = ticksslept + 1
	-- 	return target
	-- end

	local your_character = localplayer.Character
	local your_head = your_character and your_character:FindFirstChild "Head"

	for i, player_being_checked in pairs(players_service:GetPlayers()) do -- getplayers is underrated

		local player_or_false, targets_coordinates = ReturnsPlayerCheckResults(player_being_checked)

		if player_or_false then

			local char = player_being_checked.Character
			local target_torso = char and char:FindFirstChild "Torso" -- where the ray will aim/shoot for

			if target_torso then

				-- phantom fuckery tbh
				-- aim ahead (why arent we just taking advantage of ignorerays austin tf) of gun sights... Swag :O
				if (camera.Focus.p - camera.CoordinateFrame.p).magnitude <= 1 then
					ray_start = your_head.Position + your_head.CFrame.lookVector * 16 + Vector3.new(0, 4, 0)
				else
					ray_start = your_head.Position + Vector3.new(0, 4, 0)
					-- ray_start = your_head.Position + your_head.CFrame.lookVector * 10 + Vector3.new(0, 3, 0)
				end

				-- ray_start = your_head.Position + your_head.CFrame.lookVector * 10 + Vector3.new(0, 3, 0) -- doododoo do DOODODOododoDoERFAhaagr

				if not targets_coordinates then -- unnecessary rn
					distance = (Vector2.new(targets_coordinates.X, targets_coordinates.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude -- broken
				else
					distance = (Vector2.new(targets_coordinates.X, targets_coordinates.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
				end
				vector = (target_torso.Position - ray_start)

				-- distance = vector -- bug

				if (not targets_coordinates) or (distance <= closest_distance) then

					-- create ray that starts at 'ray_start' and points towards the target
					local new_ray = ray(ray_start, vector.unit * 1000) -- "fire" ray and make sure to ignore our own character
					local hit, position = workspace:FindPartOnRayWithIgnoreList(new_ray, aim_through_list) -- check if the ray hit anything and if it's a descendant of the target's character

					if (hit and hit:isDescendantOf(char)) or ignoreWalls then
						-- only change closest_distance if the target character is visible
						closest_distance = distance
						most_viable_player = player_being_checked
					end -- hit or ignore walls

				end -- meets distance or no priority

			end -- closes player_or_false

		end -- closes player_or_false check
	end -- closes table loop

	deathBlock.Name = tostring(ReturnsBoneOrFalse(most_viable_player))
	sleeping = true
	return most_viable_player

end -- closes function

local function TargetPlayer(player) -- this needs to be refactored

	-- not needed anymore unless you want sticky aim (this can be a good thing) or the aimbot lags you
	-- sticky aim would be defined as "wont instantly target another guy if they enter the screen"

	-- if ticksslept == 15 then -- ok
	-- 	ticksslept = 0
	-- 	sleeping = false
	-- end

	if aim_through_list[3] then
		aim_through_list[3].Position = aim_through_list[3].Position + Vector3.new(0,200,0)
		table.remove(aim_through_list, 3)
	end

	if not player then -- i see this and i pretty much give up on rewriting
		if lasso then lasso:Destroy() lasso = nil end -- this feels wrong. i cant stand reusing code outside functions >:(
		target = nil
		if RenderLassos then
			lasso = Instance.new("SelectionPointLasso", camera)
			lasso.Humanoid, lasso.Point = FindInstance("Humanoid", localplayer.Character, true), mouse.Hit.p
			lasso.Color = BrickColor.new(1, 1, 0)
		end
		return -- this one line here determines a surprising amount about how the aimbot works XD
		-- thats not a good thing :(
	end

	if RenderLassos then -- should be snaplassos... always gon be lassos tbh
		if lasso then lasso:Destroy() lasso = nil end
		lasso = Instance.new("SelectionPartLasso", camera)
	    lasso.Humanoid, lasso.Part = FindInstance("Humanoid", player.Character, true), game.Players.LocalPlayer.Character.Torso
		lasso.Color = player.TeamColor
	end

	bone_name = ReturnsBoneOrFalse(player)

	if (CreatorId == 1103278 or placeid == 302436427 or forceheadshotsyolo) and player.Character.Head and bone_name then
		tele_bone = player.Character[bone_name]

		tele_bone.Size = SpreadControlRadius
		tele_bone.CFrame = CFrame.new(workspace.CurrentCamera.CoordinateFrame.p + workspace.CurrentCamera.CoordinateFrame.lookVector * perfect_aim_firstperson_distance, workspace.CurrentCamera.CoordinateFrame.p) -- // thx to my main man safazi,,,,
		tele_bone.Transparency = 1
		tele_bone:ClearAllChildren()
		table.insert(aim_through_list, 3, tele_bone)
		target = player
		return player
	end

	if bone_name then
		deathBlock.Parent = player.Character
		deathBlock.Name = bone_name
	else
		deathBlock.Parent 	= workspace
		deathBlock.Position = Vector3.new(100, 10000, 100) -- enhacncet Feature Pro wow. :O
		return
	end

	target = player
	return player

end


--[[

INIT PROCESS DOCUMENTATION:

1] CREATE DEATHBLOCK
2] MAKE DEATHBLOCK REGENERATE
3] USE BINDTORENDERSTEP TO START AIMBOT LOOP
4] DETECT KEY INPUT (WITHOUT USERINPUTSERVICE. I KNOW THAT IM LAME)

]]--


CreateBlockOfDeath()
workspace.DescendantRemoving:connect(function(instance)
	if instance == deathBlock then CreateBlockOfDeath() end
end)
-- Keeps blockie safe :33 XD

-- test? havent tried
local function shoot() -- elysian only :33333 XDd. bother jordan, not mememememe.

	if not mouse1press then return end
	-- if not getfgwindowtitle() == "ROBLOX" then return end
	if trigger_debounce then return end

	trigger_debounce = true

	if pf_automatic_triggers and mouse1press() and not triggering then
		triggering = true
		mouse1press()
	elseif mouse1press then
		mouse1press()
		wait(0.03)
		mouse1release()
		wait(trigger_speed)
	end

	trigger_debounce = false

end

local function releasemouse()
	mouse1release()
	triggering=false
end


-- refaactorrrr
game:GetService("RunService"):BindToRenderStep("First", Enum.RenderPriority.First.Value, function() -- another clusterfuck

	if running then
		if localplayer.Character then -- pretty sure i do this in getviableplayer lmao tbh
			TargetPlayer(ReturnsViablePlayerOrNil())
			if target and target.Character then
				if localplayer:GetMouse().Target == deathBlock then return end -- praise targetfilter!
				-- later
				-- deathBlock.CFrame = CFrame.new(localplayer.Character.Head.Position + (mouse.Hit.p + localplayer.Character.Head.Position).unit * 16)
				if (CreatorId ~= 1103278 and game.PlaceId ~= 302436427) or not forceheadshotsyolo then -- // if not phantom forces
					deathBlock.CFrame = CFrame.new(mouse.Hit.p)
				end
				-- print(deathBlock)
				if triggers then shoot() end
			else
				deathBlock.Parent = workspace
				deathBlock.Position = Vector3.new(100, 10000, 100)
				if triggering then releasemouse() end
			end
		else
			deathBlock.Parent = workspace
			deathBlock.Position = Vector3.new(100, 10000, 100)
		end
	end

end)

local keydown = mouse.KeyDown:connect(function(keys)
	if (keys == aimkey) then
		running = not running
		if (running) then
			print("[SILENTAIM] activated.")
		else
			print("[SILENTAIM] deactivated.")
		end
	end
end)


local key = "z" -- what do you want the key to be to toggle the autoshoot
-- ok let me run you through some good shit

local moistureizer = mouse.KeyDown:connect(function(k)
	if (k == key) then
		-- print("TELEPORTING TO" .. print(tostring(mouse.Hit.p)))
		triggers = (not triggers)  -- fuck off notepad++ you're gay and ass and shit nigga Damn WOW..,. ,,
		-- tbh idk what im typing
		-- me irl
	end
end)
end)

Frame_3.Parent = Main
Frame_3.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_3.Position = UDim2.new(0.980097473, 0, -3.12890916e-05, 0)
Frame_3.Size = UDim2.new(0, 7, 0, 355)

Title.Name = "Title"
Title.Parent = Frame_3
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 3
Title.BorderColor3 = Color3.new(1, 1, 1)
Title.Position = UDim2.new(-53.9742889, 0, 0.0182720814, 0)
Title.Size = UDim2.new(0, 368, 0, 50)
Title.Font = Enum.Font.SourceSans
Title.Text = "Area 47 Fucker"
Title.TextColor3 = Color3.new(0, 0, 0)
Title.TextSize = 67

ScrollingFrame.Parent = Main
ScrollingFrame.BackgroundColor3 = Color3.new(0, 0, 0)
ScrollingFrame.BackgroundTransparency = 0.30000001192093
ScrollingFrame.BorderColor3 = Color3.new(0, 0, 0)
ScrollingFrame.Position = UDim2.new(0.997689962, 0, -0.00164001982, 0)
ScrollingFrame.Size = UDim2.new(0, 193, 0, 356)

EmergencyTP.Name = "Emergency TP"
EmergencyTP.Parent = ScrollingFrame
EmergencyTP.BackgroundColor3 = Color3.new(0.54902, 0.180392, 0.54902)
EmergencyTP.BackgroundTransparency = 0.30000001192093
EmergencyTP.BorderColor3 = Color3.new(0.54902, 0.180392, 0.54902)
EmergencyTP.Position = UDim2.new(0.0615618899, 0, 0.904971123, 0)
EmergencyTP.Size = UDim2.new(0, 147, 0, 50)
EmergencyTP.Font = Enum.Font.SourceSans
EmergencyTP.Text = "Emergency TP Outside"
EmergencyTP.TextColor3 = Color3.new(0, 0, 0)
EmergencyTP.TextScaled = true
EmergencyTP.TextSize = 14
EmergencyTP.TextWrapped = true
EmergencyTP.MouseButton1Down:connect(function()
game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(738.050354, 44, 321.299866)
end)

Outside.Name = "Outside"
Outside.Parent = ScrollingFrame
Outside.BackgroundColor3 = Color3.new(0.54902, 0.180392, 0.54902)
Outside.BackgroundTransparency = 0.30000001192093
Outside.BorderColor3 = Color3.new(0.54902, 0.180392, 0.54902)
Outside.Position = UDim2.new(0.0615618899, 0, 0.0904352665, 0)
Outside.Size = UDim2.new(0, 147, 0, 50)
Outside.Font = Enum.Font.SourceSans
Outside.Text = "Outside"
Outside.TextColor3 = Color3.new(0, 0, 0)
Outside.TextScaled = true
Outside.TextSize = 14
Outside.TextWrapped = true
Outside.MouseButton1Down:connect(function()
game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(47.7811317, 5, 276.674103)
end)

Prison.Name = "Prison"
Prison.Parent = ScrollingFrame
Prison.BackgroundColor3 = Color3.new(0.54902, 0.180392, 0.54902)
Prison.BackgroundTransparency = 0.30000001192093
Prison.BorderColor3 = Color3.new(0.54902, 0.180392, 0.54902)
Prison.Position = UDim2.new(0.0615618899, 0, 0.303184032, 0)
Prison.Size = UDim2.new(0, 147, 0, 50)
Prison.Font = Enum.Font.SourceSans
Prison.Text = "Prison"
Prison.TextColor3 = Color3.new(0, 0, 0)
Prison.TextScaled = true
Prison.TextSize = 14
Prison.TextWrapped = true
Prison.MouseButton1Down:connect(function()
game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-100.540573, 5.10000038, -211.48114)
end)

Sector1.Name = "Sector 1"
Sector1.Parent = ScrollingFrame
Sector1.BackgroundColor3 = Color3.new(0.54902, 0.180392, 0.54902)
Sector1.BackgroundTransparency = 0.30000001192093
Sector1.BorderColor3 = Color3.new(0.54902, 0.180392, 0.54902)
Sector1.Position = UDim2.new(0.0615618899, 0, 0.194552302, 0)
Sector1.Size = UDim2.new(0, 147, 0, 50)
Sector1.Font = Enum.Font.SourceSans
Sector1.Text = "Sector 1"
Sector1.TextColor3 = Color3.new(0, 0, 0)
Sector1.TextScaled = true
Sector1.TextSize = 14
Sector1.TextWrapped = true
Sector1.MouseButton1Down:connect(function()
game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(46.0985031, 5, 39.3189621)
end)


Sector3.Name = "Sector 3"
Sector3.Parent = ScrollingFrame
Sector3.BackgroundColor3 = Color3.new(0.54902, 0.180392, 0.54902)
Sector3.BackgroundTransparency = 0.30000001192093
Sector3.BorderColor3 = Color3.new(0.54902, 0.180392, 0.54902)
Sector3.Position = UDim2.new(0.0615618899, 0, 0.420264721, 0)
Sector3.Size = UDim2.new(0, 147, 0, 50)
Sector3.Font = Enum.Font.SourceSans
Sector3.Text = "Sector 3"
Sector3.TextColor3 = Color3.new(0, 0, 0)
Sector3.TextScaled = true
Sector3.TextSize = 14
Sector3.TextWrapped = true
Sector3.MouseButton1Down:connect(function()
game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-0.769785643, 5.00001907, -274.055725)
end)

Sector4.Name = "Sector 4"
Sector4.Parent = ScrollingFrame
Sector4.BackgroundColor3 = Color3.new(0.54902, 0.180392, 0.54902)
Sector4.BackgroundTransparency = 0.30000001192093
Sector4.BorderColor3 = Color3.new(0.54902, 0.180392, 0.54902)
Sector4.Position = UDim2.new(0.0615618899, 0, 0.542262852, 0)
Sector4.Size = UDim2.new(0, 147, 0, 50)
Sector4.Font = Enum.Font.SourceSans
Sector4.Text = "Sector 4"
Sector4.TextColor3 = Color3.new(0, 0, 0)
Sector4.TextScaled = true
Sector4.TextSize = 14
Sector4.TextWrapped = true
Sector4.MouseButton1Down:connect(function()
game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(214.436829, 5.01000214, -445.022736)
end)

ShyGuy.Name = "Shy Guy"
ShyGuy.Parent = ScrollingFrame
ShyGuy.BackgroundColor3 = Color3.new(0.54902, 0.180392, 0.54902)
ShyGuy.BackgroundTransparency = 0.30000001192093
ShyGuy.BorderColor3 = Color3.new(0.54902, 0.180392, 0.54902)
ShyGuy.Position = UDim2.new(0.0615618899, 0, 0.658296168, 0)
ShyGuy.Size = UDim2.new(0, 147, 0, 50)
ShyGuy.Font = Enum.Font.SourceSans
ShyGuy.Text = "Shy Guy"
ShyGuy.TextColor3 = Color3.new(0, 0, 0)
ShyGuy.TextScaled = true
ShyGuy.TextSize = 14
ShyGuy.TextWrapped = true
ShyGuy.MouseButton1Down:connect(function()
game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(160.937592, 5.00000381, -416.507599)
end)

Warhead.Name = "Warhead"
Warhead.Parent = ScrollingFrame
Warhead.BackgroundColor3 = Color3.new(0.54902, 0.180392, 0.54902)
Warhead.BackgroundTransparency = 0.30000001192093
Warhead.BorderColor3 = Color3.new(0.54902, 0.180392, 0.54902)
Warhead.Position = UDim2.new(0.0615618899, 0, 0.775013149, 0)
Warhead.Size = UDim2.new(0, 147, 0, 50)
Warhead.Font = Enum.Font.SourceSans
Warhead.Text = "WarHead"
Warhead.TextColor3 = Color3.new(0, 0, 0)
Warhead.TextScaled = true
Warhead.TextSize = 14
Warhead.TextWrapped = true
Warhead.MouseButton1Down:connect(function()
game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(305.22998, 5, -443.805115)
end)

TextLabel.Parent = ScrollingFrame
TextLabel.BackgroundColor3 = Color3.new(0.54902, 0.180392, 0.54902)
TextLabel.BorderColor3 = Color3.new(0.54902, 0.180392, 0.54902)
TextLabel.Position = UDim2.new(0.00473971199, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 179, 0, 50)
TextLabel.Font = Enum.Font.SciFi
TextLabel.Text = "Teleports"
TextLabel.TextColor3 = Color3.new(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

OpenMain.Name = "OpenMain"
OpenMain.Parent = Area47GUI
OpenMain.BackgroundColor3 = Color3.new(0.25098, 0.639216, 1)
OpenMain.BorderColor3 = Color3.new(0.25098, 0.639216, 1)
OpenMain.Position = UDim2.new(0.00732064433, 0, 0.895551741, 0)
OpenMain.Size = UDim2.new(0, 157, 0, 48)

Open.Name = "Open"
Open.Parent = OpenMain
Open.BackgroundColor3 = Color3.new(0.54902, 0.180392, 0.54902)
Open.BorderColor3 = Color3.new(0.54902, 0.180392, 0.54902)
Open.Position = UDim2.new(-0.0163693726, 0, -0.020833334, 0)
Open.Size = UDim2.new(0, 161, 0, 50)
Open.Font = Enum.Font.SourceSans
Open.Text = "Open"
Open.TextColor3 = Color3.new(0, 0, 0)
Open.TextScaled = true
Open.TextSize = 14
Open.TextWrapped = true
Open.MouseButton1Down:connect(function()
Main.Visible = true
OpenMain.Visible = false
end)
-- Scripts: