--[[
	AposAdmin
	-
	Personal Edition
	
	Made by: Apostasia
	Desc: An admin script for the game Plates of Fate: Mayhem
	
	IMPORTANT NOTE: I ask that if you do use this script, please don't do tasteless shit like spam kill/ or explode/ or just destroy the server. Try to have some fun and let others have fun too without fucking shit up
	
	Commands:
	kill/playername or others -- kills a player
	loopkill/playername --loopkills a player until they leave the server
	explode/playername or others -- places a mine at the targets location
	plate/playername or others -- places a plate at the targets location, you can use these plates to place decals or audios on, the anime/ command also works on these plates (have to use anime/Nobody)
	tree/playername or others -- places a tree at the targets location
	banana/playername or others -- places 3 bananas at the targets location to trip them
	potato/playername or others -- gives the target 3 hot potatos that slowly kill them, if they are on the Playing team they can give these potatos to other players but if they are on the Spectating team they cannot, and will die from the potatos
	kawaii/ -- places a random touhou/anime character and random touhou/anime audio on every plate
	anime/platename -- places a random touhou/anime character and random touhou/anime audio on a specific plate, also has a 1/75 chance of giving that plate the LEGENDARY UTSUHO. you are required by cosmic law to give a win to the person who gets Utsuho on their plate using the win/ command
	health/playername -- restores the target back to full health
	god/playername -- continously restores the targets health to full, this doesnt make you totally invulnerable though, as things that do more damage than your max health will kill you. the script also stops giving health after you have died
	utsuho/platename -- puts Utsuho and a PRAISE THE SUN audio on a plate, Utsuhos given using this command don't qualify for the LEGENDARY UTSUHO lottery
	destroy/server -- PLEASE DON'T ABUSE THIS, it places plates all around the lobby and puts anime/touhou on every one of them, then when thats done it puts mines all over the place
	tp/playername -- teleports to a player
	platetp/platename -- teleports to a plate, it teleports to a plate based on the owner of the plate, so if you used platetp/Leon it would teleport you to the plate owned by someone with Leon in their name
	points/ -- gives yourself 999 million points, can only work for the account your signed in on, just use points/ with nothing past it
	win/playername -- PLEASE DON'T ABUSE THIS, makes that player win the game by killing everyone else except them, this will only work on players in the Playing team and will only kill other people in the Playing team
	expand10/playername -- expands the players plate by 10 studs, does NOT work with plates that arent owned by a player
	expand25/playername -- read above
	expand50/playername -- read above
	expand100/playername -- read above
	shrink10/playername -- does what expand/ does but instead of expanding it shrinks
	shrink25/playername -- read above
	shrink50/playername -- read above
	shrink100/playername -- ready above
	decal/decalid -- places this decal on all plates
	audio/audioid -- places this audio on all plates
	particle/decalid -- like the decal/ command, put instead of decals it places particles, but that also uses decal ids
	sparkle/ -- places sparkles on everyones plate, not sure if it works tho
	detonate/ -- places a banana on every landmine in the map, basically triggering them all. also places a nuke alarm audio on every plate lol
	platewalk/on or off -- best used with a speed coil, places a plate under you every .15 seconds, can use this to create a staircase of plates. Since these qualify as game plates, they will also be affected by events and other commands, can also possibly lag the server out, breaking the timer
	trap/platename -- "sabotages" the target plate, so whenever you or an inanimate object touches the plate, a landmine is placed at the location where it was touched, best used with things like banana rain for total carnage
	EXPLOOOSION/ -- PLEASE DON'T ABUSE THIS, EXTREMELY LAGGY, summons the spirit of Megumin as thousands of mines are placed into the arena, also konosuba reference lmao
	layer/Yvaluehere -- places mines at certain Y values in the arena. For reference, 1.5 is the Y value for where player legs touch plates on normal rounds
	
	tool/tooltype -- gives you the tool specified, some tools are client sided though and will only work/show for you
	round/roundtype -- activates one of my special custom rounds
	delete/deletetype -- deletes the target from the game so it cant harm you, doesnt work too well with things like the Moon
	
	Tool Types (The ones that work):
	gravcoil - Gravity Coil
	speedcoil - Speed Coil
	regencoil - Regeneration Coil
	banana - Banana Peel
	pie - Pie
	plate - Placeable Plate
	parachute - Parachute
	
	Round Types:
	minefield - places a small amount of mines around the arena
	megafield - minefields big brother, places a lot of mines around the arena but not enough to lag anyone out
	plates - places plates at random locations around the arena
	moneyrain - rains dolla bills ma boii lmao we rich, the money can also set off landmines
	bananarain - rains banana peels, these can set off landmines and can trip players
	platesize - sets a players plate size to anything between -10 to 15 studs
	yatagarasu - an unfinished round dedicated to utsuho, probably wont finish so now it looks like a mess, dont use unless your bored
	
	Delete Types:
	fire - deletes fire around the map
	blackhole - deletes blackholes
	lavaspinner - deletes small and the giant lava spinners
	bomb - deletes plate bombs so their explosions dont hurt you
	prison - deletes cages
	spike - deletes spikes
	zombie - deletes zombies so they cant harm you
	bombcloud - deletes bomb clouds, doesnt work too well
	tornado - deletes tornados
	fence - deletes electric fences
	disco - deletes the giant disco ball of doom (Disco Doom round)
	plrbomb - deletes the bomb thats placed on your head, rendering its explosion useless
	cactus - deletes cacti
	wall - deletes brick walls
	freeze - deletes freeze parts and sets your walkspeed and jumppower back to normal
	volcano - deletes volcano pellets
	moon - deletes the moon, doesnt work
	nuke - deletes nuke explosions so they cant hurt you
	landmine - deletes landmines so they cant be triggered by you or hurt you
	marble - deletes the marble set on you so you can be free, doesnt work most of the time so you have to manually execute it with this script:
	for i,v in pairs (game.Players.LocalPlayer.Character:GetChildren()) do
		if v.Name == "Marble" then
			v:Destroy()
		end
	end
--]]

plr = game.Players.LocalPlayer
local player
local all = "all"
local others = "others"
local me = "me"
local pos
local mine = "minefield"
local bana = "bananarain"
local pla = "plates"
local mon = "moneyrain"
local mega = "megafield"
local size = "platesize"
local point = "points"
local yata = "yatagarasu"
local wati = true
did = "s"
mem = "s"

local swrd = "sword"
local pot = "potato"
local pie = "pie"
local gracoil = "gravcoil"
local specoil = "speedcoil"
local regcoil = "regencoil"
local cola = "cola"
local banan = "banana"
local para = "parachute"
local firew = "firework"
local plate = "plate"
local burg = "burger"
local plamine = "mine"
local treer = "tree"
local telep = "teleport"
local mbag = "bag"

local on = "on"
local off = "off"
local status = "s"

local fire = "fire"
local black = "blackhole"
local ls = "lavaspinner"
local bmb = "bomb"
local pri = "prison"
local spk = "spike"
local zomb = "zombie"
local bmbc = "bombcloud"
local tor = "tornado"
local fen = "fence"
local dis = "disco"
local pbmb = "plrbomb"
local cac = "cactus"
local wal = "wall"
local frz = "freeze"
local vol = "volcano"
local mun = "moon"
local nuk = "nuke"
local min = "landmine"
local marbl = "marble"

local coin = "coin"
local chest = "chest"

function layer(y)
	local xx = math.random(-111.6, 111.6)
	local zz = math.random(-108.2, 108.2)
	for i = 1,5 do
	for i = 1,100 do
		print("Layered!")
		workspace.RemoteEvents.PlaceMineEvent:FireServer(Vector3.new(xx,y,zz), "D=9Vb7aMuZt!8aMH")
		xx = math.random(-111.6, 111.6)
		zz = math.random(-108.2, 108.2)
	end
	end
end

function addplates(stage)
	local xx = math.random(-111.6, 111.6)
	local zz = math.random(-108.2, 108.2)
	local yy = math.random(stage, stage*3)
	for i = 1,60 do
		workspace.RemoteEvents.PlacePlateEvent:FireServer(Vector3.new(xx,yy,zz),"D=9Vb7aMuZt!8aMH")
		xx = math.random(-111.6, 111.6)
		zz = math.random(-108.2, 108.2)
		yy = math.random(stage, stage*3)
	end
end

function utsuho()
	workspace.RemoteEvents.PlacePlateEvent:FireServer(Vector3.new(55.8,90,54.1),"D=9Vb7aMuZt!8aMH")
	for i,v in pairs (workspace.Plates:GetChildren()) do
		if v.Plate.Position == Vector3.new(55.8,90,54.1) then
			workspace.RemoteEvents.AddDecal:FireServer(148020567, v, "D=9Vb7aMuZt!8aMH")
			for i = 1,3 do
			workspace.RemoteEvents.AddParticles:FireServer(148020567, v, "D=9Vb7aMuZt!8aMH")
			end
			v.Plate.Touched:Connect(function(who)
				if who.Name == "Right Leg" or who.Name == "Left Leg" or who.Name == "Right Arm" or who.Name == "Left Arm" or who.Name == "Torso" or who.Name == "Head" or who.Name == "HumanoidRootPart" then
					local winner = who.Parent.Name
					for i,b in pairs (game.Players:GetChildren()) do
						if b.Team == game.Teams.Playing and b.Name ~= winner then
							workspace.RemoteEvents.TakeDamageEvent:FireServer(b.Character.Humanoid, 99999, "D=9Vb7aMuZt!8aMH")
						end
					end
				end
			end)
		end
	end
	layer(-5)
	wait(10)
	addplates(5)
	wait(5)
	layer(2)
	layer(5)
	layer(7)
	wait(5)
	addplates(20)
	wait(10)
	layer(10)
	layer(13)
	layer(16)
	layer(19)
	wait(5)
	addplates(30)
	wait(5)
end

local xx = math.random(-69.25, 147.75)
local zz = math.random(113.75, 330.75)
local yy = math.random(-20.5,45.5)
local plat = math.random(-10,10)
plr.Chatted:Connect(function(msg)
if string.sub(msg, 1, 5) == "kill/" then
if not all:match(string.sub(msg, 6)) or others:match(string.sub(msg, 6)) or me:match(string.sub(msg, 6)) then
for i,v in pairs (game.Players:GetChildren()) do
if v.Name ~= "XxCreeperStalkerz" or v.Name ~= "Apostasla" then
if v.Name:match(string.sub(msg, 6)) then
player = v.Character.Humanoid
workspace.RemoteEvents.TakeDamageEvent:FireServer(player, 99999, "D=9Vb7aMuZt!8aMH")
elseif all:match(string.sub(msg, 6)) then
player = v.Character.Humanoid
workspace.RemoteEvents.TakeDamageEvent:FireServer(player, 99999, "D=9Vb7aMuZt!8aMH")
elseif others:match(string.sub(msg, 6)) then
if v ~= game.Players.LocalPlayer then
player = v.Character.Humanoid
workspace.RemoteEvents.TakeDamageEvent:FireServer(player, 99999, "D=9Vb7aMuZt!8aMH")
elseif me:match(string.sub(msg, 6)) then
if v == game.Players.LocalPlayer then
player = v.Character.Humanoid
workspace.RemoteEvents.TakeDamageEvent:FireServer(player, 99999, "D=9Vb7aMuZt!8aMH")
end
end
end
end
end
end
end
if string.sub(msg, 1, 9) == "loopkill/" then
if not all:match(string.sub(msg, 10)) or others:match(string.sub(msg, 10)) or me:match(string.sub(msg, 10)) then
for i,v in pairs (game.Players:GetChildren()) do
if v.Name ~= "XxCreeperStalkerz" or v.Name ~= "Apostasla" then
if v.Name:match(string.sub(msg, 10)) then
while wait(1) do
player = v.Character.Humanoid
workspace.RemoteEvents.TakeDamageEvent:FireServer(player, 99999, "D=9Vb7aMuZt!8aMH")
end
elseif all:match(string.sub(msg, 10)) then
while wait(1) do
player = v.Character.Humanoid
workspace.RemoteEvents.TakeDamageEvent:FireServer(player, 99999, "D=9Vb7aMuZt!8aMH")
end
elseif others:match(string.sub(msg, 10)) then
if v ~= game.Players.LocalPlayer then
while wait(1) do
player = v.Character.Humanoid
workspace.RemoteEvents.TakeDamageEvent:FireServer(player, 99999, "D=9Vb7aMuZt!8aMH")
end
elseif me:match(string.sub(msg, 10)) then
if v == game.Players.LocalPlayer then
while wait(1) do
player = v.Character.Humanoid
workspace.RemoteEvents.TakeDamageEvent:FireServer(player, 99999, "D=9Vb7aMuZt!8aMH")
end
end
end
end
end
end
end
end
if string.sub(msg, 1, 8) == "explode/" then
if not all:match(string.sub(msg, 9)) or others:match(string.sub(msg, 9)) or me:match(string.sub(msg, 9)) then
for i,v in pairs (game.Players:GetChildren()) do
if v.Name ~= "XxCreeperStalkerz" or v.Name ~= "Apostasla" then
if v.Name:match(string.sub(msg, 9)) then
pos = v.Character.HumanoidRootPart.Position
workspace.RemoteEvents.PlaceMineEvent:FireServer(Vector3.new(pos.X,pos.Y,pos.Z),"D=9Vb7aMuZt!8aMH")
elseif all:match(string.sub(msg, 9)) then
pos = v.Character.HumanoidRootPart.Position
workspace.RemoteEvents.PlaceMineEvent:FireServer(Vector3.new(pos.X,pos.Y,pos.Z),"D=9Vb7aMuZt!8aMH")
elseif others:match(string.sub(msg, 9)) then
if v ~= game.Players.LocalPlayer then
pos = v.Character.HumanoidRootPart.Position
workspace.RemoteEvents.PlaceMineEvent:FireServer(Vector3.new(pos.X,pos.Y,pos.Z),"D=9Vb7aMuZt!8aMH")
elseif me:match(string.sub(msg, 9)) then
if v == game.Players.LocalPlayer then
pos = v.Character.HumanoidRootPart.Position
workspace.RemoteEvents.PlaceMineEvent:FireServer(Vector3.new(pos.X,pos.Y,pos.Z),"D=9Vb7aMuZt!8aMH")
end
end
end
end
end
end
end
if string.sub(msg, 1, 6) == "plate/" then
if not all:match(string.sub(msg, 7)) or others:match(string.sub(msg, 7)) or me:match(string.sub(msg, 7)) then
for i,v in pairs (game.Players:GetChildren()) do
if v.Name:match(string.sub(msg, 7)) then
pos = v.Character.HumanoidRootPart.Position
workspace.RemoteEvents.PlacePlateEvent:FireServer(Vector3.new(pos.X,pos.Y,pos.Z),"D=9Vb7aMuZt!8aMH")
elseif all:match(string.sub(msg, 7)) then
pos = v.Character.HumanoidRootPart.Position
workspace.RemoteEvents.PlacePlateEvent:FireServer(Vector3.new(pos.X,pos.Y,pos.Z),"D=9Vb7aMuZt!8aMH")
elseif others:match(string.sub(msg, 7)) then
if v ~= game.Players.LocalPlayer then
pos = v.Character.HumanoidRootPart.Position
workspace.RemoteEvents.PlacePlateEvent:FireServer(Vector3.new(pos.X,pos.Y,pos.Z),"D=9Vb7aMuZt!8aMH")
elseif me:match(string.sub(msg, 7)) then
if v == game.Players.LocalPlayer then
pos = v.Character.HumanoidRootPart.Position
workspace.RemoteEvents.PlacePlateEvent:FireServer(Vector3.new(pos.X,pos.Y,pos.Z),"D=9Vb7aMuZt!8aMH")
end
end
end
end
end
end
if string.sub(msg, 1, 5) == "tree/" then
if not all:match(string.sub(msg, 6)) or others:match(string.sub(msg, 6)) or me:match(string.sub(msg, 6)) then
for i,v in pairs (game.Players:GetChildren()) do
if v.Name:match(string.sub(msg, 6)) then
pos = v.Character.HumanoidRootPart.Position
workspace.RemoteEvents.PlaceTreeEvent:FireServer(Vector3.new(pos.X,pos.Y,pos.Z),"D=9Vb7aMuZt!8aMH")
elseif all:match(string.sub(msg, 6)) then
pos = v.Character.HumanoidRootPart.Position
workspace.RemoteEvents.PlaceTreeEvent:FireServer(Vector3.new(pos.X,pos.Y,pos.Z),"D=9Vb7aMuZt!8aMH")
elseif others:match(string.sub(msg, 6)) then
if v ~= game.Players.LocalPlayer then
pos = v.Character.HumanoidRootPart.Position
workspace.RemoteEvents.PlaceTreeEvent:FireServer(Vector3.new(pos.X,pos.Y,pos.Z),"D=9Vb7aMuZt!8aMH")
elseif me:match(string.sub(msg, 6)) then
if v == game.Players.LocalPlayer then
pos = v.Character.HumanoidRootPart.Position
workspace.RemoteEvents.PlaceTreeEvent:FireServer(Vector3.new(pos.X,pos.Y,pos.Z),"D=9Vb7aMuZt!8aMH")
end
end
end
end
end
end
if string.sub(msg, 1, 7) == "banana/" then
if not all:match(string.sub(msg, 8)) or others:match(string.sub(msg, 8)) or me:match(string.sub(msg, 8)) then
for i,v in pairs (game.Players:GetChildren()) do
if v.Name:match(string.sub(msg, 8)) then
pos = v.Character.HumanoidRootPart.Position
for i = 1,3 do
workspace.RemoteEvents.BananaEvent:FireServer(Vector3.new(pos.X,pos.Y,pos.Z),"D=9Vb7aMuZt!8aMH")
end
elseif all:match(string.sub(msg, 8)) then
pos = v.Character.HumanoidRootPart.Position
for i = 1,3 do
workspace.RemoteEvents.BananaEvent:FireServer(Vector3.new(pos.X,pos.Y,pos.Z),"D=9Vb7aMuZt!8aMH")
end
elseif others:match(string.sub(msg, 8)) then
if v ~= game.Players.LocalPlayer then
pos = v.Character.HumanoidRootPart.Position
for i = 1,3 do
workspace.RemoteEvents.BananaEvent:FireServer(Vector3.new(pos.X,pos.Y,pos.Z),"D=9Vb7aMuZt!8aMH")
end
elseif me:match(string.sub(msg, 8)) then
if v == game.Players.LocalPlayer then
pos = v.Character.HumanoidRootPart.Position
for i = 1,3 do
workspace.RemoteEvents.BananaEvent:FireServer(Vector3.new(pos.X,pos.Y,pos.Z),"D=9Vb7aMuZt!8aMH")
end
end
end
end
end
end
end
if string.sub(msg, 1, 7) == "potato/" then
if not all:match(string.sub(msg, 8)) or others:match(string.sub(msg, 8)) or me:match(string.sub(msg, 8)) then
for i,v in pairs (game.Players:GetChildren()) do
if v.Name ~= "XxCreeperStalkerz" or v.Name ~= "Apostasla" then
if v.Name:match(string.sub(msg, 8)) then
for i = 1,3 do
workspace.RemoteEvents.PotatoEvent:FireServer(""..v.Name,"D=9Vb7aMuZt!8aMH")
end
elseif all:match(string.sub(msg, 8)) then
for i = 1,3 do
workspace.RemoteEvents.PotatoEvent:FireServer(""..v.Name,"D=9Vb7aMuZt!8aMH")
end
elseif others:match(string.sub(msg, 8)) then
if v ~= game.Players.LocalPlayer then
for i = 1,3 do
workspace.RemoteEvents.PotatoEvent:FireServer(""..v.Name,"D=9Vb7aMuZt!8aMH")
end
elseif me:match(string.sub(msg, 8)) then
if v == game.Players.LocalPlayer then
for i = 1,3 do
workspace.RemoteEvents.BananaEvent:FireServer(""..v.Name,"D=9Vb7aMuZt!8aMH")
end
end
end
end
end
end
end
end
if string.sub(msg, 1, 7) == "kawaii/" then
local decals = {305103891,148020056,426868863,51193582,147906004,496638309,253197559,148020132,147905960,481751303,493330460,147905379,148020283,149874244,149874205,149874142,149874121,149874091,149874074,149874053,149874019,149873976,149873926,148021078,148021043,148020947,148020932,148020914,148020831,148020602,148020411,148020366,148020343,148020177,148020092,148020028,148019993,147906126,147906096,147906037,147905917,147905713,147905608,147905537,147905513,147905447,147905405,147905353,147905331,147905274,147905257,147905207,147905183,135796114,135795749,135795807,135795953,135795910,135795616,135795592,135795638,135795523}
local decal = math.random(#decals)
local c = decals[ decal ]

local songs = {747000636,919270364,155880750,225557046,919256199,919236601,590243700,235201055,155880750,730013942,737043670,379240208,343508984,383056380,911777530,747000636,920219269,168337558,171222847,363553876,227488587,665015838}
local song = math.random(#songs)
local b = songs[ song ]

for i,v in pairs (workspace.Plates:GetChildren()) do
workspace.RemoteEvents.AddDecal:FireServer(c, v, "D=9Vb7aMuZt!8aMH")
for i = 1,3 do
workspace.RemoteEvents.AddParticles:FireServer(c, v, "D=9Vb7aMuZt!8aMH")
end
workspace.RemoteEvents.AddSound:FireServer("rbxassetid://"..b, v, "D=9Vb7aMuZt!8aMH")
song = math.random(#songs)
b = songs[ song ]
decal = math.random(#decals)
c = decals[ decal ]
end
end
if string.sub(msg, 1, 7) == "health/" then
	for i,v in pairs (game.Players:GetChildren()) do
		if v.Name:match(string.sub(msg, 8)) then
			workspace.RemoteEvents.TakeDamageEvent:FireServer(v.Character.Humanoid, v.Character.Humanoid.Health-v.Character.Humanoid.MaxHealth, "D=9Vb7aMuZt!8aMH")
		end
	end
end
if string.sub(msg, 1, 4) == "god/" then
	for i,v in pairs (game.Players:GetChildren()) do
		if v.Name:match(string.sub(msg, 5)) then
			repeat wait() workspace.RemoteEvents.TakeDamageEvent:FireServer(v.Character.Humanoid, -999999999, "D=9Vb7aMuZt!8aMH") until v.Character.Humanoid.Health == 0
		end
	end
end
if string.sub(msg, 1, 6) == "anime/" then
for i,v in pairs (workspace.Plates:GetChildren()) do
if v.Owner.Value:match(string.sub(msg, 7)) then
player = v.Owner.Value
end
end
local z
local n
local decals
local decal
local chooser = math.random(1,75)
local songs = {747000636,919270364,155880750,225557046,919256199,919236601,590243700,235201055,155880750,730013942,737043670,379240208,343508984,383056380,911777530,747000636,920219269,168337558,171222847,363553876,227488587,298226253}
local song = math.random(#songs)
local x = songs[ song ]

if chooser ~= 1 then
decals = {305103891,148020056,426868863,51193582,147906004,496638309,253197559,148020132,147905960,481751302,147905379,148020283,149874244,149874204,149874142,149874121,149874091,149874074,149874054,149874019,149873976,149873926,148021078,148021043,148020947,148020932,148020914,148020831,148020602,148020411,148020366,148020343,148020177,148020092,148020028,148019993,147906126,147906096,147906037,147905917,147905713,147905608,147905537,147905513,147905447,147905403,147905353,147905331,147905274,147905257,147905207,147905183,135796113,135795749,135795807,135795953,135795910,135795616,135795592,135795638,135795523}
decal = math.random(#decals)
z = decals[ decal ]
else
z = 148020567
x = 156401749
end

print("Decal is "..z)
print("Audio is "..x)
for i,b in pairs (workspace.Plates:GetChildren()) do
if b.Owner.Value == player and wati == true then
workspace.RemoteEvents.AddDecal:FireServer(z, b, "D=9Vb7aMuZt!8aMH")
for i = 1,3 do
workspace.RemoteEvents.AddParticles:FireServer(z, b, "D=9Vb7aMuZt!8aMH")
end
workspace.RemoteEvents.AddSound:FireServer("rbxassetid://"..x, b, "D=9Vb7aMuZt!8aMH")
wati = false
wait(3)
wati = true
end
end
end
if string.sub(msg, 1, 7) == "utsuho/" then
	for i,v in pairs (workspace.Plates:GetChildren()) do
		if v.Owner.Value:match(string.sub(msg, 8)) then
			z = 148020567
			x = 156401749
			workspace.RemoteEvents.AddDecal:FireServer(z, v, "D=9Vb7aMuZt!8aMH")
			for i = 1,3 do
				workspace.RemoteEvents.AddParticles:FireServer(z, v, "D=9Vb7aMuZt!8aMH")
			end
			workspace.RemoteEvents.AddSound:FireServer("rbxassetid://"..x, v, "D=9Vb7aMuZt!8aMH")
		end
	end
end
if string.sub(msg, 1, 14) == "destroy/server" then
local xx = math.random(-151.6, 151.6)
local zz = math.random(-108.2, 108.2)
for i = 1,10 do
for i = 1,50 do
workspace.RemoteEvents.PlacePlateEvent:FireServer(Vector3.new(xx,yy,zz), "D=9Vb7aMuZt!8aMH")
xx = math.random(-151.6, 151.6)
zz = math.random(-158.2, 158.2)
yy = math.random(-20.5,45.5)
end
end
wait(3)
local decals = {305103891,148020056,426868863,51193582,147906004,496638309,253197559,148020132,147905960,481751303,493330460,147905379,148020283,149874244,149874205,149874142,149874121,149874091,149874074,149874053,149874019,149873976,149873926,148021078,148021043,148020947,148020932,148020914,148020831,148020602,148020411,148020366,148020343,148020177,148020092,148020028,148019993,147906126,147906096,147906037,147905917,147905713,147905608,147905537,147905513,147905447,147905405,147905353,147905331,147905274,147905257,147905207,147905183,135796114,135795749,135795807,135795953,135795910,135795616,135795592,135795638}
local decal = math.random(#decals)
local c = decals[ decal ]

local songs = {919270364,155880750,225557046,919256199,919236601,590243700,235201055,155880750,201179350,730013942,737043670,343514724,379240208,237388464,343508984,284768504,609167755,383056380,164833164,911777530,397723799,298226253}
local song = math.random(#songs)
local b = songs[ song ]

for i,v in pairs (workspace.Plates:GetChildren()) do
workspace.RemoteEvents.AddDecal:FireServer(c, v, "D=9Vb7aMuZt!8aMH")
for i = 1,5 do
workspace.RemoteEvents.AddParticles:FireServer(c, v, "D=9Vb7aMuZt!8aMH")
end
workspace.RemoteEvents.AddSound:FireServer("rbxassetid://"..b, v, "D=9Vb7aMuZt!8aMH")
song = math.random(#songs)
b = songs[ song ]
decal = math.random(#decals)
c = decals[ decal ]
end
for i = 1,10 do
for i = 1,300 do
workspace.RemoteEvents.PlaceMineEvent:FireServer(Vector3.new(xx,yy,zz), "D=9Vb7aMuZt!8aMH")
xx = math.random(-151.6, 151.6)
zz = math.random(-158.2, 158.2)
yy = math.random(-20.5,85.5)
end
end
end
if string.sub(msg, 1, 3) == "tp/" then
for i,v in pairs (game.Players:GetChildren()) do
if v.Name:match(string.sub(msg, 4)) then
player = v.Character.HumanoidRootPart.Position
workspace.RemoteEvents.ToolTeleportEvent:FireServer(Vector3.new(player.X,player.Y,player.Z), "D=9Vb7aMuZt!8aMH")
end
end
end

if string.sub(msg, 1, 8) == "platetp/" then
for i,v in pairs (game.Players:GetChildren()) do
if v.Name:match(string.sub(msg, 9)) then
	for i,b in pairs (workspace.Plates:GetChildren()) do
		if b.Owner.Value == v.Name then
local plater = b.Plate.Position
workspace.RemoteEvents.ToolTeleportEvent:FireServer(Vector3.new(plater.X,plater.Y,plater.Z), "D=9Vb7aMuZt!8aMH")
end
end
end
end
end
if string.sub(msg, 1, 7) == "points/" then
if not all:match(string.sub(msg, 8)) or others:match(string.sub(msg, 8)) or me:match(string.sub(msg, 8)) then
if me:match(string.sub(msg, 8)) then
workspace.RemoteEvents.ShopBuyEvent:FireServer(-999999999, "D=9Vb7aMuZt!8aMH")
end
end
end
if string.sub(msg, 1, 4) == "win/" then
for i,v in pairs (game.Players:GetChildren()) do
if v.Name:match(string.sub(msg, 5)) and v.Team == game.Teams.Playing then
for i,b in pairs (game.Players:GetChildren()) do
	if b.Team == game.Teams.Playing and b ~= v then
	workspace.RemoteEvents.TakeDamageEvent:FireServer(b.Character.Humanoid, 99999, "D=9Vb7aMuZt!8aMH")
end
end
end
end
end
if string.sub(msg, 1, 9) == "expand50/" then
for i,v in pairs (game.Players:GetChildren()) do
if v.Name:match(string.sub(msg, 10)) then
if v.gamestats.Plate.Value then
	game.Workspace.RemoteEvents.ChangePlateSize:FireServer(v.gamestats.Plate.Value, 50, "D=9Vb7aMuZt!8aMH")
end
end
end
end
if string.sub(msg, 1, 9) == "expand10/" then
for i,v in pairs (game.Players:GetChildren()) do
if v.Name:match(string.sub(msg, 10)) then
if v.gamestats.Plate.Value then
	game.Workspace.RemoteEvents.ChangePlateSize:FireServer(v.gamestats.Plate.Value, 10, "D=9Vb7aMuZt!8aMH")
end
end
end
end
if string.sub(msg, 1, 9) == "expand25/" then
for i,v in pairs (game.Players:GetChildren()) do
if v.Name:match(string.sub(msg, 10)) then
if v.gamestats.Plate.Value then
	game.Workspace.RemoteEvents.ChangePlateSize:FireServer(v.gamestats.Plate.Value, 25, "D=9Vb7aMuZt!8aMH")
end
end
end
end
if string.sub(msg, 1, 10) == "expand100/" then
for i,v in pairs (game.Players:GetChildren()) do
if v.Name:match(string.sub(msg, 11)) then
if v.gamestats.Plate.Value then
	game.Workspace.RemoteEvents.ChangePlateSize:FireServer(v.gamestats.Plate.Value, 100, "D=9Vb7aMuZt!8aMH")
end
end
end
end
if string.sub(msg, 1, 9) == "shrink50/" then
for i,v in pairs (game.Players:GetChildren()) do
if v.Name:match(string.sub(msg, 10)) then
if v.gamestats.Plate.Value then
	game.Workspace.RemoteEvents.ChangePlateSize:FireServer(v.gamestats.Plate.Value, -50, "D=9Vb7aMuZt!8aMH")
end
end
end
end
if string.sub(msg, 1, 9) == "shrink10/" then
for i,v in pairs (game.Players:GetChildren()) do
if v.Name:match(string.sub(msg, 10)) then
if v.gamestats.Plate.Value then
	game.Workspace.RemoteEvents.ChangePlateSize:FireServer(v.gamestats.Plate.Value, -10, "D=9Vb7aMuZt!8aMH")
end
end
end
end
if string.sub(msg, 1, 9) == "shrink25/" then
for i,v in pairs (game.Players:GetChildren()) do
if v.Name:match(string.sub(msg, 10)) then
if v.gamestats.Plate.Value then
	game.Workspace.RemoteEvents.ChangePlateSize:FireServer(v.gamestats.Plate.Value, -25, "D=9Vb7aMuZt!8aMH")
end
end
end
end
if string.sub(msg, 1, 10) == "shrink100/" then
for i,v in pairs (game.Players:GetChildren()) do
if v.Name:match(string.sub(msg, 11)) then
if v.gamestats.Plate.Value then
	game.Workspace.RemoteEvents.ChangePlateSize:FireServer(v.gamestats.Plate.Value, -100, "D=9Vb7aMuZt!8aMH")
end
end
end
end
if string.sub(msg, 1, 10) == "obliviate/" then
for i,v in pairs (game.Players:GetChildren()) do
if v.Name:match(string.sub(msg, 11)) then
if v.gamestats.Plate.Value then
	game.Workspace.RemoteEvents.ChangePlateSize:FireServer(v.gamestats.Plate.Value, -999999, "D=9Vb7aMuZt!8aMH")
end
end
end
end
if string.sub(msg, 1, 6) == "decal/" then
for i,b in pairs (workspace.Plates:GetChildren()) do
	workspace.RemoteEvents.AddDecal:FireServer(string.sub(msg, 7), b, "D=9Vb7aMuZt!8aMH")
end
end
if string.sub(msg, 1, 6) == "audio/" then
for i,b in pairs (workspace.Plates:GetChildren()) do
	workspace.RemoteEvents.AddSound:FireServer("rbxassetid://"..string.sub(msg, 7), b, "D=9Vb7aMuZt!8aMH")
end
end
if string.sub(msg, 1, 9) == "particle/" then
for i,b in pairs (workspace.Plates:GetChildren()) do
	workspace.RemoteEvents.AddParticles:FireServer(string.sub(msg, 10), b, "D=9Vb7aMuZt!8aMH")
end
end
if string.sub(msg, 1, 8) == "sparkle/" then
for i,b in pairs (workspace.Plates:GetChildren()) do
	workspace.RemoteEvents.AddParticles:FireServer(string.sub(msg, 9), "D=9Vb7aMuZt!8aMH")
end
end

if string.sub(msg, 1, 9) == "detonate/" then
for i,v in pairs (workspace.Plates:GetChildren()) do
workspace.RemoteEvents.AddSound:FireServer("rbxassetid://134314368", v, "D=9Vb7aMuZt!8aMH")
end
	for i,v in pairs (workspace.ArenaEvents:GetChildren()) do
	if v.Name == "Landmine" then
		workspace.RemoteEvents.BananaEvent:FireServer(Vector3.new(v.Position.X,v.Position.Y+1,v.Position.Z), "D=9Vb7aMuZt!8aMH")
	end
end
end
if string.sub(msg, 1, 10) == "platewalk/" then
	if on:match(string.sub(msg, 11)) then
		status = "on"
		while status == on do
			wait(.15)
			pos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
			workspace.RemoteEvents.PlacePlateEvent:FireServer(Vector3.new(pos.X,pos.Y-2.5,pos.Z), "D=9Vb7aMuZt!8aMH")
		end
	end
	if off:match(string.sub(msg, 11)) then
		status = "off"
	end
end
if string.sub(msg, 1, 5) == "trap/" then
for i,v in pairs (game.Players:GetChildren()) do
if v.Name:match(string.sub(msg, 6)) then
	player = v.Name
for i,b in pairs (workspace.Plates:GetChildren()) do
	if b.Owner.Value == player then
		b.Plate.Touched:Connect(function(who)
			print("Touched by "..who.Name)
			workspace.RemoteEvents.PlaceMineEvent:FireServer(Vector3.new(who.Position.X,who.Position.Y,who.Position.Z), "D=9Vb7aMuZt!8aMH")
		end)
	end
end
end
end
end
if string.sub(msg, 1, 12) == "EXPLOOOSION/" then
if not all:match(string.sub(msg, 13)) or others:match(string.sub(msg, 13)) or me:match(string.sub(msg, 13)) then
for i,v in pairs (workspace.Plates:GetChildren()) do
local becal = 723125463
workspace.RemoteEvents.AddDecal:FireServer(becal, v, true)
for i = 1,5 do
workspace.RemoteEvents.AddParticles:FireServer(becal, v, true)
end
workspace.RemoteEvents.AddSound:FireServer("rbxassetid://665015838", v, "D=9Vb7aMuZt!8aMH")
local xx = math.random(-111.6, 111.6)
local zz = math.random(-108.2, 108.2)
local yy = math.random(-20.5,85.5)
for i = 1,15 do
for i = 1,200 do
workspace.RemoteEvents.PlaceMineEvent:FireServer(Vector3.new(xx,yy,zz), "D=9Vb7aMuZt!8aMH")
xx = math.random(-111.6, 111.6)
zz = math.random(-108.2, 108.2)
yy = math.random(-20.5,85.5)
end
end
end
end
end

if string.sub(msg, 1, 6) == "layer/" then
	local xx = math.random(-111.6, 111.6)
	local zz = math.random(-108.2, 108.2)
	print("Layering!")
	for i = 1,5 do
	for i = 1,100 do
		print("Layered!")
		workspace.RemoteEvents.PlaceMineEvent:FireServer(Vector3.new(xx,string.sub(msg,7),zz), "D=9Vb7aMuZt!8aMH")
		xx = math.random(-111.6, 111.6)
		zz = math.random(-108.2, 108.2)
	end
	wait(1)
	end
end

if string.sub(msg, 1, 5) == "tool/" then
	if banan:match(string.sub(msg, 6)) then
		print("Giving tool")
		local tool = game.ReplicatedStorage["BananaPeel"]:Clone()
		tool.Parent = game.Players.LocalPlayer.Backpack
	elseif swrd:match(string.sub(msg, 6)) then
		print("Giving tool")
		local tool = game.ReplicatedStorage["Sword"]:Clone()
		tool.Parent = game.Players.LocalPlayer.Backpack
	elseif cola:match(string.sub(msg, 6)) then
		print("Giving tool")
		local tool = game.ReplicatedStorage["Bloxy Cola"]:Clone()
		tool.Parent = game.Players.LocalPlayer.Backpack
	elseif gracoil:match(string.sub(msg, 6)) then
		print("Giving tool")
		local tool = game.ReplicatedStorage["GravityCoil"]:Clone()
		tool.Parent = game.Players.LocalPlayer.Backpack
	elseif regcoil:match(string.sub(msg, 6)) then
		local tool = game.ReplicatedStorage["RegenCoil"]:Clone()
		tool.Parent = game.Players.LocalPlayer.Backpack
	elseif specoil:match(string.sub(msg, 6)) then
		local tool = game.ReplicatedStorage["SpeedCoil"]:Clone()
		tool.Parent = game.Players.LocalPlayer.Backpack
	elseif para:match(string.sub(msg, 6)) then
		local tool = game.ReplicatedStorage["Parachute"]:Clone()
		tool.Parent = game.Players.LocalPlayer.Backpack
	elseif firew:match(string.sub(msg, 6)) then
		local tool = game.ReplicatedStorage["Fireworks"]:Clone()
		tool.Parent = game.Players.LocalPlayer.Backpack
	elseif pie:match(string.sub(msg, 6)) then
		local tool = game.ReplicatedStorage["PieTool"]:Clone()
		tool.Parent = game.Players.LocalPlayer.Backpack
	elseif pot:match(string.sub(msg, 6)) then
		local tool = game.ReplicatedStorage["Hot Potato"]:Clone()
		tool.Parent = game.Players.LocalPlayer.Backpack
	elseif plamine:match(string.sub(msg, 6)) then
		local tool = game.ReplicatedStorage["Place Mine"]:Clone()
		tool.Parent = game.Players.LocalPlayer.Backpack
	elseif burg:match(string.sub(msg, 6)) then
		local tool = game.ReplicatedStorage["Burger"]:Clone()
		tool.Parent = game.Players.LocalPlayer.Backpack
	elseif mbag:match(string.sub(msg, 6)) then
		local tool = game.ReplicatedStorage["Moneybag"]:Clone()
		tool.Parent = game.Players.LocalPlayer.Backpack
	elseif treer:match(string.sub(msg, 6)) then
		local tool = game.ReplicatedStorage["Place Tree"]:Clone()
		tool.Parent = game.Players.LocalPlayer.Backpack
	elseif telep:match(string.sub(msg, 6)) then
		local tool = game.ReplicatedStorage["Teleport to Plate"]:Clone()
		tool.Parent = game.Players.LocalPlayer.Backpack
	elseif plate:match(string.sub(msg, 6)) then
		local tool = game.ReplicatedStorage["Place Plate"]:Clone()
		tool.Parent = game.Players.LocalPlayer.Backpack
	end
end
if string.sub(msg, 1, 6) == "round/" then
if mine:match(string.sub(msg, 7)) then
local xx = math.random(-111.6, 111.6)
local zz = math.random(-108.2, 108.2)
local yy = math.random(-20.5,85.5)
for i = 1,50 do
workspace.RemoteEvents.PlaceMineEvent:FireServer(Vector3.new(xx,yy,zz), "D=9Vb7aMuZt!8aMH")
xx = math.random(-111.6, 111.6)
zz = math.random(-108.2, 108.2)
yy = math.random(-20.5,85.5)
end
elseif mega:match(string.sub(msg, 7)) then
local xx = math.random(-111.6, 111.6)
local zz = math.random(-108.2, 108.2)
local yy = math.random(-20.5,85.5)
for i = 1,10 do
for i = 1,100 do
workspace.RemoteEvents.PlaceMineEvent:FireServer(Vector3.new(xx,yy,zz), "D=9Vb7aMuZt!8aMH")
xx = math.random(-111.6, 111.6)
zz = math.random(-108.2, 108.2)
yy = math.random(-20.5,85.5)
end
end
elseif bana:match(string.sub(msg, 7)) then
local xx = math.random(-111.6, 111.6)
local zz = math.random(-108.2, 108.2)
for i = 1,25 do
for i = 1,100 do
workspace.RemoteEvents.BananaEvent:FireServer(Vector3.new(xx,103.5,zz), "D=9Vb7aMuZt!8aMH")
xx = math.random(-111.6, 111.6)
zz = math.random(-108.2, 108.2)
wait()
end
wait(2)
end
elseif pla:match(string.sub(msg, 7)) then
local xx = math.random(-111.6, 111.6)
local zz = math.random(-108.2, 108.2)
for i = 1,10 do
for i = 1,5 do
workspace.RemoteEvents.PlacePlateEvent:FireServer(Vector3.new(xx,yy,zz), "D=9Vb7aMuZt!8aMH")
xx = math.random(-111.6, 111.6)
zz = math.random(-108.2, 108.2)
yy = math.random(-20.5,45.5)
wait()
end
wait(3.5)
end
elseif mon:match(string.sub(msg, 7)) then
local xx = math.random(-111.6, 111.6)
local zz = math.random(-108.2, 108.2)
for i = 1,25 do
for i = 1,75 do
workspace.RemoteEvents.MoneybagEvent:FireServer(CFrame.new(Vector3.new(xx,103.5,zz)), "D=9Vb7aMuZt!8aMH")
xx = math.random(-111.6, 111.6)
zz = math.random(-108.2, 108.2)
wait(.1)
end
wait(2)
end
elseif size:match(string.sub(msg, 7)) then
for i,v in pairs(game.Players:GetChildren()) do
plat = math.random(-10,15)
if v.gamestats.Plate then
game.Workspace.RemoteEvents.ChangePlateSize:FireServer(v.gamestats.Plate.Value, plat, "D=9Vb7aMuZt!8aMH")
end
end
elseif yata:match(string.sub(msg,7)) then
	workspace.RemoteEvents.PlacePlateEvent:FireServer(Vector3.new(111.6,10,-108.2), "D=9Vb7aMuZt!8aMH")
	workspace.RemoteEvents.PlacePlateEvent:FireServer(Vector3.new(111.6,10,108.2), "D=9Vb7aMuZt!8aMH")
	workspace.RemoteEvents.PlacePlateEvent:FireServer(Vector3.new(-111.6,10,108.2), "D=9Vb7aMuZt!8aMH")
	workspace.RemoteEvents.PlacePlateEvent:FireServer(Vector3.new(-111.6,10,-108.2), "D=9Vb7aMuZt!8aMH")
	for i,v in pairs (workspace.Plates:GetChildren()) do
		if v.Plate.Position.Y == 10 then
			workspace.RemoteEvents.AddSound:FireServer("rbxassetid://919270364", v, "D=9Vb7aMuZt!8aMH")
		end
	end
	utsuho()
end
end
if string.sub(msg, 1, 7) == "delete/" then
if fire:match(string.sub(msg, 8)) then
for i,v in pairs (workspace.ArenaEvents:GetChildren()) do
if v.Name == "FirePart" then
v:Destroy()
end
end
elseif black:match(string.sub(msg, 8)) then
for i,v in pairs (workspace.ArenaEvents:GetChildren()) do
if v.Name == "Blackhole" then
v:Destroy()
end
end
elseif tor:match(string.sub(msg, 8)) then
for i,v in pairs (workspace.ArenaEvents:GetChildren()) do
if v.Name == "Tornado" then
v:Destroy()
end
end
elseif min:match(string.sub(msg, 8)) then
for i,v in pairs (workspace.ArenaEvents:GetChildren()) do
if v.Name == "Landmine" then
v:Destroy()
end
end
elseif vol:match(string.sub(msg, 8)) then
for i,v in pairs (workspace.ArenaEvents:GetChildren()) do
if v.Name == "Part" and v.BrickColor == BrickColor.new("Crimson") then
v:Destroy()
end
end
elseif dis:match(string.sub(msg, 8)) then
for i,v in pairs (workspace.ArenaEvents:GetChildren()) do
if v.Name == "DiscoBallOfDoom" then
v:Destroy()
end
end
elseif nuk:match(string.sub(msg, 8)) then
for i,v in pairs (workspace.ArenaEvents:GetChildren()) do
if v.Name == "Nuke" or v.Name == "NukeExplosion" then
v:Destroy()
end
end
elseif mun:match(string.sub(msg, 8)) then
for i,v in pairs (workspace.ArenaEvents:GetChildren()) do
if v.Name == "Moon" then
v:Destroy()
end
end
elseif ls:match(string.sub(msg, 8)) then
for i,v in pairs (workspace.Plates:GetChildren()) do
for i,b in pairs (v:GetChildren()) do
if b.Name == "LavaSpinner" then
b:Destroy()
end
end
end
for i,v in pairs (workspace.ArenaEvents:GetChildren()) do
if v.Name == "GiantLavaSpinner" then
v:Destroy()
end
end
elseif bmb:match(string.sub(msg, 8)) then
for i,v in pairs (workspace.Plates:GetChildren()) do
for i,b in pairs (v:GetChildren()) do
if b.Name == "TimeBomb" then
b:Destroy()
end
end
end
elseif pri:match(string.sub(msg, 8)) then
for i,v in pairs (workspace.Plates:GetChildren()) do
for i,b in pairs (v:GetChildren()) do
if b.Name == "Cage" then
b:Destroy()
end
end
end
elseif spk:match(string.sub(msg, 8)) then
for i,v in pairs (workspace.Plates:GetChildren()) do
for i,b in pairs (v:GetChildren()) do
if b.Name == "Spike" then
b:Destroy()
end
end
end
elseif zomb:match(string.sub(msg, 8)) then
for i,v in pairs (workspace.Plates:GetChildren()) do
for i,b in pairs (v:GetChildren()) do
if b.Name == "Zombie" then
b:Destroy()
end
end
end
elseif bmbc:match(string.sub(msg, 8)) then
for i,v in pairs (workspace.Plates:GetChildren()) do
for i,b in pairs (v:GetChildren()) do
if b.Name == "BombCloud" then
b:Destroy()
end
end
end
elseif fen:match(string.sub(msg, 8)) then
for i,v in pairs (workspace.Plates:GetChildren()) do
for i,b in pairs (v:GetChildren()) do
if b.Name == "ElectricFence" then
b:Destroy()
end
end
end
elseif cac:match(string.sub(msg, 8)) then
for i,v in pairs (workspace.Plates:GetChildren()) do
for i,b in pairs (v:GetChildren()) do
if b.Name == "Cactus" then
b:Destroy()
end
end
end
elseif wal:match(string.sub(msg, 8)) then
for i,v in pairs (workspace.Plates:GetChildren()) do
for i,b in pairs (v:GetChildren()) do
if b.Name == "Wall" then
b:Destroy()
end
end
end
elseif pbmb:match(string.sub(msg, 8)) then
game.Players.LocalPlayer.Character.PlayerTimeBomb:Destroy()
end
elseif frz:match(string.sub(msg, 8)) then
for i,v in pairs (game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "Part" then
v:Destroy()
end
end
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
elseif marbl:match(string.sub(msg, 8)) then
for i,v in pairs (game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "Marble" then
v:Destroy()
end
end
end
end)