local function CreateInstance(cls,props)
local inst = Instance.new(cls)
for i,v in pairs(props) do
	inst[i] = v
end
return inst
end

local players = game:GetService"Players"
local localp = players.LocalPlayer
local mouse = localp:GetMouse()
local uis = game:GetService"UserInputService"

--config
local cheats = {
	killall = false;
	oneshot = false;
	triggerbot = false;
	triggerdelay = 100;
	antiaim = "Off";
	
	moola = true;
	
	loadout = false;
	primary = "MP9";
	secondary = "USP";
	
	quickdefuse = false;
	deftype = "Near";
	fastplant = false;
	planttype = "Normal";
	
	jointeam = "Spectator";
	chatspam = false;
	pinmeme = false;
	
	thirdp = false;
	thirdpkey = Enum.KeyCode.H;
	fovchanger = false;
	
	esp = true;
	esptarget = "Enemy";
	bomb = true;
	chams = true;
	chamstarget = "Enemy";
	weapons = false;
	
	esp_enemycolor = Color3.fromRGB(220,80,40);
	esp_teamcolor = Color3.fromRGB(40, 220, 220);
	esp_bombcolor = Color3.fromRGB(220,60,210);
	esp_bombcarriercolor = Color3.fromRGB(220,210,40);
	esp_weaponcolor = Color3.fromRGB(200,200,200);
	esp_itemtextcolor = Color3.fromRGB(220,60,210);
	
	weptype = "Pistols";
}

local pistols = {"USP", "P2000", "Glock", "DualBerettas", "P250", "FiveSeven", "Tec9", "CZ", "DesertEagle" ,"R8"}
local semis = {"MP9", "MAC10", "MP7", "UMP", "P90", "Bizon"}
local heavies = {"Nova", "XM", "MAG7", "SawedOff", "M249", "Negev"}
local rifles = { "M4A4", "M4A1", "AK47", "Scout", "Famas", "Galil", "AUG", "SG", "AWP", "SCAR20", "G3SG1"}
local teams = {"CT", "T", "Spectator"}
local defuseTypes = {"Near", "Anywhere"}
local plantTypes = {"Normal", "Anti def."}
local espTargets = {"Enemy", "Both"}
local antiaimTypes = {"Off", "Down"}

local wepTypes = {
	"Pistols",
	"SMGs",
	"Rifles",
	"Heavies",
}

local inputting = false
local inputtingTo

local chatmessages = {
	"Snippet owns me and all",
	"Contact Jan#5106 if you would like to stop getting tapped",
	"Snippet - the best Counter Blox cheat on the market",
	"Show 'em some love, they just got tapped by Snippet",
	"Don't like getting tapped? Buy wally's hub lol",
	"Did you see that? Only Snippet is capable of that",
	"What are you waiting for? Get good, get Snippet",
}

local selectedwep = "USP"
local selectedskin = "Stock"
--will make these auto apply based on what the "applied" value is
local skins = {
	["USP"] = {"USP", applied = "Stock", available = {"Stock", "Skull", "Jade Dream", "Crimson", "Paradise", "Dizzy", "Racing", "Crimson", "Frostbite", "Nighttown", "Paradise", "YellowBelly"}};
	["P2000"] = {"P2000", applied = "Stock", available = {"Stock", "Golden Age", "Apathy", "Comet", "Ruby", "Lunar", "Candycorn"}};
	["Glock"] = {"Glock", applied = "Stock", available = {"Stock", "Day Dreamer", "Desert Camo", "Anubis", "Wetland", "Midnight Tiger", "Angler", "Rush", "Gravestomper", "Scapter", "Tarnish"}};
	["DualBerettas"] = {"DualBerettas", applied = "Stock", available = {"Stock", "Floral", "Neon web", "Hexline", "Xmas"}};
	["P250"] = {"P250", applied = "Stock", available = {"Stock", "Amber", "Bomber", "Goldish", "Equinox", "Frosted", "Green Web", "Solstice", "TC250"}};
	["FiveSeven"] = {"FiveSeven", applied = "Stock", available = {"Stock", "Danjo", "Midnight Ride", "Gifted", "Stigma", "Summer"}};
	["Tec9"] = {"Tec9", applied = "Stock", available = {"Stock", "Charger", "Ironline", "Skintech", "Stocking Stuffer"}};
	["CZ"] = {"CZ", applied = "Stock", available = {"Stock", "Lightning", "Spectre", "Festive", "Orange Web"}};
	["DesertEagle"] = {"DesertEagle", applied = "Stock", available = {"Stock", "Honor-bound", "Krystallos", "Cool Blue", "Cold Truth", "DropX", "Glittery", "Grim", "Scapter", "Survivor", "Weeb", "Xmas"}};
	["R8"] = {"R8", applied = "Stock", available = {"Stock", "Spaded", "Violet", "Hunter", "Banana Gun"}};
	
	["MP9"] = {"MP9", applied = "Stock", available = {"Stock", "Velvita", "Blueroyal", "Wilderness", "Decked Halls", "Cookie Man"}};
	["MAC10"] = {"MAC10", applied = "Stock", available = {"Stock", "Pimpin", "Wetland", "Skeleboney", "Turbo", "Golden Rings"}};
	["MP7"] = {"MP7", applied = "Stock", available = {"Stock", "Sunshot", "Calaxian", "Silent Ops", "Goo", "Holiday"}};
	["UMP"] = {"UMP", applied = "Stock", available = {"Stock", "Militia Camo", "Magma", "Death Grip", "Redline"}};
	["P90"] = {"P90", applied = "Stock", available = {"Stock", "Demon Within", "Redcopy", "Elegant", "Krampus", "P-Chan", "Pine", "Skulls"}};
	["Bizon"] = {"Bizon", applied = "Stock", available = {"Stock", "Shattered", "Oblivion", "Saint Nick", "Festive", "Sergeant"}};
	
	["Nova"] = {"Nova", applied = "Stock", available = {"Stock", "Tiger", "Terraformer", "Sharkesh", "Black Ice"}};
	["XM"] = {"XM", applied = "Stock", available = {"Stock", "Red", "Atomic", "Spectrum", "Arctic", "Campfire"}};
	["MAG7"] = {"Mag7", applied = "Stock", available = {"Stock", "Bombshell", "Outbreak", "Frosty", "Molten", "Striped"}};
	["SawedOff"] = {"SawedOff", applied = "Stock", available = {"Stock", "Colorboom", "Casino", "Opal", "Spooky"}};
	["M249"] = {"M249", applied = "Stock", available = {"Stock", "Aggressor", "P2020", "Spooky", "Wolf"}};
	["Negev"] = {"Negev", applied = "Stock", available = {"Stock", "Wetland", "Quazar", "Winterfell", "Midnightbones"}};
	
	["M4A4"] = {"M4A4", applied = "Stock", available = {"Stock", "Candyskull", "Desert Camo", "Pinkvision", "Precision", "Racer", "Stardust", "Pinkie", "Toy Soldier", "BOT[S]", "Endline", "Devil", "Ice Cap", "Pondside", "Scapter", "Stardust", "Toy Soldier"}};
	["M4A1"] = {"M4A1", applied = "Stock", available = {"Stock", "Desert Camo", "Toucan", "Impulse", "Technician", "Wastelander", "Animatic", "Heavens Gate"}};
	["AK47"] = {"AK47", applied = "Stock", available = {"Stock", "Clown", "Quantum", "Ace", "Code Orange", "Bloodboom", "Precision", "Patch", "Gifted", "Eve", "Hypersonic", "Mean Green", "Outlaws", "Scapter", "Secret Santa", "Skin Committee", "Ugly Sweater", "VAV", "Variant Camo"}};
	["Scout"] = {"Scout", applied = "Stock", available = {"Stock", "Flowing Mists", "Pulse", "Railgun", "Theory", "Hellborn", "Hot Cocoa", "Xmas"}};
	["Famas"] = {"Famas", applied = "Stock", available = {"Stock", "Goliath", "Abstract", "Centipede", "Redux", "Haunted Forest", "Toxic Rain"}};
	["Galil"] = {"Galil", applied = "Stock", available = {"Stock", "Hardware", "Toxicity", "Hardware 2", "Burnt"}};
	["AUG"] = {"AUG", applied = "Stock", available = {"Stock", "Dream Hound", "Phoenix", "Sunsthetic", "Enlisted", "Homestead", "NightHawk"}};
	["SG"] = {"SG", applied = "Stock", available = {"Stock", "Variant Camo", "Knighthood", "Yltude"}};
	["AWP"] = {"AWP", applied = "Stock", available = {"Stock", "Desert Camo", "Instinct", "Bloodborne", "Pink Vision", "Difference", "Abaddon", "Forever", "Lunar", "Racer", "Coffin Biter", "Blastech", "Blue", "Bolt Action", "Dark Galaxy", "Grepkin", "JTF2", "Nerf", "Pear Tree", "Northern Lights", "Scapter", "Weeb"}};
	["SCAR20"] = {"SCAR20", applied = "Stock", available = {"Stock", "Amethyst", "Foliage"}};
	["G3SG1"] = {"G3SG1", applied = "Stock", available = {"Stock", "Foliage", "Hex", "Amethyst", "Mahogany", "Autumn"}};
	}

local snippethub = CreateInstance('ScreenGui',{DisplayOrder=0,Enabled=true,ResetOnSpawn=true,Name='snippethub', Parent=game.CoreGui})
local counterb = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=true,AnchorPoint=Vector2.new(0.5, 0.5),BackgroundColor3=Color3.new(0, 0, 0),BackgroundTransparency=0.80000001192093,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=true,Position=UDim2.new(0.5, 0, 0.5, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 385, 0, 415),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'counterb',Parent = snippethub})
local sett = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0, 0, 0),BackgroundTransparency=0.80000001192093,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 5, 0, 19),Rotation=0,Selectable=false,Size=UDim2.new(1, -10, 1, -24),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=false,ZIndex=1,Name = 'sett',Parent = counterb})
local skinstab = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0, 0, 0),BackgroundTransparency=0.69999998807907,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 5, 0, 15),Rotation=0,Selectable=false,Size=UDim2.new(0, 280, 0, 215),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'skinstab',Parent = sett})
local title = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Skinchanger',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0.5),BackgroundColor3=Color3.new(1, 0.133333, 0.321569),BackgroundTransparency=0.20000000298023,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 10, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(1, -20, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='title',Parent = skinstab})
local weplist = CreateInstance('ScrollingFrame',{BottomImage='rbxasset://textures/ui/Scroll/scroll-bottom.png',CanvasPosition=Vector2.new(0, 0),CanvasSize=UDim2.new(0, 0, 0, 200),MidImage='rbxasset://textures/ui/Scroll/scroll-middle.png',ScrollBarThickness=2,ScrollingEnabled=true,TopImage='rbxasset://textures/ui/Scroll/scroll-top.png',Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=1,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0, 5, 0, 40),Rotation=0,Selectable=true,Size=UDim2.new(0.5, -10, 1, -70),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='weplist',Parent = skinstab})
local UIListLayout = CreateInstance('UIListLayout', {Padding = UDim.new(0, 2), FillDirection = Enum.FillDirection.Vertical, HorizontalAlignment = Enum.HorizontalAlignment.Left, SortOrder = Enum.SortOrder.Name, VerticalAlignment = Enum.VerticalAlignment.Top, Name = 'UIListLayout', Parent = weplist })
local UIPadding = CreateInstance('UIPadding', {PaddingLeft = UDim.new(0,2), PaddingRight = UDim.new(0,5), PaddingTop = UDim.new(0,2), Parent = weplist})
local skinlist = CreateInstance('ScrollingFrame',{BottomImage='rbxasset://textures/ui/Scroll/scroll-bottom.png',CanvasPosition=Vector2.new(0, 0),CanvasSize=UDim2.new(0, 0, 0, 398),MidImage='rbxasset://textures/ui/Scroll/scroll-middle.png',ScrollBarThickness=2,ScrollingEnabled=true,TopImage='rbxasset://textures/ui/Scroll/scroll-top.png',Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=1,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0.5, 5, 0, 40),Rotation=0,Selectable=true,Size=UDim2.new(0.5, -10, 1, -70),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='skinlist',Parent = skinstab})
local UIListLayout = CreateInstance('UIListLayout', {Padding = UDim.new(0, 2), FillDirection = Enum.FillDirection.Vertical, HorizontalAlignment = Enum.HorizontalAlignment.Left, SortOrder = Enum.SortOrder.Name, VerticalAlignment = Enum.VerticalAlignment.Top, Name = 'UIListLayout', Parent = skinlist })
local UIPadding = CreateInstance('UIPadding', {PaddingLeft = UDim.new(0,2), PaddingRight = UDim.new(0,5), PaddingTop = UDim.new(0,2), Parent = skinlist})
local applyskin = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Apply skin',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0.133333, 0.321569),BackgroundTransparency=0,BorderColor3=Color3.new(0.619608, 0.0823529, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 7, 0, 192),Rotation=0,Selectable=true,Size=UDim2.new(1, -14, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='applyskin',Parent = skinstab})
local weptype = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='',TextColor3=Color3.new(0.972549, 0.972549, 0.972549),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 5, 0, 17),Rotation=0,Selectable=true,Size=UDim2.new(0, 72, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=2,Name='weptype',Parent = skinstab})
local box = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Pistols',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 72, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='box',Parent = weptype})
local list = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 1, 4),Rotation=0,Selectable=false,Size=UDim2.new(1, 0, 0, 74),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=false,ZIndex=2,Name = 'list',Parent = box})
local UIListLayout = CreateInstance('UIListLayout', {Padding = UDim.new(0, 2), FillDirection = Enum.FillDirection.Vertical, HorizontalAlignment = Enum.HorizontalAlignment.Left, SortOrder = Enum.SortOrder.Name, VerticalAlignment = Enum.VerticalAlignment.Top, Name = 'UIListLayout', Parent = list })
local UIPadding = CreateInstance('UIPadding', {PaddingLeft = UDim.new(0,2), PaddingRight = UDim.new(0,5), PaddingTop = UDim.new(0,2), Parent = list})
local setttab = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Settings',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0.133333, 0.321569),BackgroundTransparency=0.20000000298023,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 55, 0, 5),Rotation=0,Selectable=true,Size=UDim2.new(0, 50, 0, 14),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='setttab',Parent = counterb})
local maintab = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Main',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0.133333, 0.321569),BackgroundTransparency=0.20000000298023,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 5, 0, 5),Rotation=0,Selectable=true,Size=UDim2.new(0, 50, 0, 14),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='maintab',Parent = counterb})
local main = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0, 0, 0),BackgroundTransparency=0.80000001192093,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 5, 0, 19),Rotation=0,Selectable=false,Size=UDim2.new(1, -10, 1, -24),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'main',Parent = counterb})
local misc = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0, 0, 0),BackgroundTransparency=0.69999998807907,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 190, 0, 15),Rotation=0,Selectable=false,Size=UDim2.new(0, 180, 0, 240),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'misc',Parent = main})
local loadout = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Auto loadout',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 5, 0, 40),Rotation=0,Selectable=true,Size=UDim2.new(1, -10, 0, 20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='loadout',Parent = misc})
local box = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=2,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 2, 0, 2),Rotation=0,Selectable=false,Size=UDim2.new(0, 16, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'box',Parent = loadout})
local moola = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Infinite cash',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 5, 0, 15),Rotation=0,Selectable=true,Size=UDim2.new(1, -10, 0, 20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='moola',Parent = misc})
local box = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=2,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 2, 0, 2),Rotation=0,Selectable=false,Size=UDim2.new(0, 16, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'box',Parent = moola})
local title = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Misc',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0.5),BackgroundColor3=Color3.new(1, 0.133333, 0.321569),BackgroundTransparency=0.20000000298023,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 10, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(1, -20, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='title',Parent = misc})
local secondary = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Secondary',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 5, 0, 90),Rotation=0,Selectable=true,Size=UDim2.new(1, -10, 0, 20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='secondary',Parent = misc})
local box = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='USP',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 2, 0, 2),Rotation=0,Selectable=true,Size=UDim2.new(0, 72, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='box',Parent = secondary})
local list = CreateInstance('ScrollingFrame',{BottomImage='rbxasset://textures/ui/Scroll/scroll-bottom.png',CanvasPosition=Vector2.new(0, 0),CanvasSize=UDim2.new(0, 0, 0, 182),MidImage='rbxasset://textures/ui/Scroll/scroll-middle.png',ScrollBarThickness=2,ScrollingEnabled=true,TopImage='rbxasset://textures/ui/Scroll/scroll-top.png',Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=1,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0, 0, 1, 4),Rotation=0,Selectable=true,Size=UDim2.new(1, 0, 0, 144),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=false,ZIndex=2,Name='list',Parent = box})
local UIListLayout = CreateInstance('UIListLayout', {Padding = UDim.new(0, 2), FillDirection = Enum.FillDirection.Vertical, HorizontalAlignment = Enum.HorizontalAlignment.Left, SortOrder = Enum.SortOrder.Name, VerticalAlignment = Enum.VerticalAlignment.Top, Name = 'UIListLayout', Parent = list })
local UIPadding = CreateInstance('UIPadding', {PaddingLeft = UDim.new(0,2), PaddingRight = UDim.new(0,5), PaddingTop = UDim.new(0,2), Parent = list})
local primary = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Primary',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 5, 0, 65),Rotation=0,Selectable=true,Size=UDim2.new(1, -10, 0, 20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='primary',Parent = misc})
local box = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='MP9',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 2, 0, 2),Rotation=0,Selectable=true,Size=UDim2.new(0, 72, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='box',Parent = primary})
local list = CreateInstance('ScrollingFrame',{BottomImage='rbxasset://textures/ui/Scroll/scroll-bottom.png',CanvasPosition=Vector2.new(0, 0),CanvasSize=UDim2.new(0, 0, 0, 416),MidImage='rbxasset://textures/ui/Scroll/scroll-middle.png',ScrollBarThickness=2,ScrollingEnabled=true,TopImage='rbxasset://textures/ui/Scroll/scroll-top.png',Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=1,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0, 0, 1, 4),Rotation=0,Selectable=true,Size=UDim2.new(1, 0, 0, 144),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=false,ZIndex=2,Name='list',Parent = box})
local UIListLayout = CreateInstance('UIListLayout', {Padding = UDim.new(0, 2), FillDirection = Enum.FillDirection.Vertical, HorizontalAlignment = Enum.HorizontalAlignment.Left, SortOrder = Enum.SortOrder.Name, VerticalAlignment = Enum.VerticalAlignment.Top, Name = 'UIListLayout', Parent = list })
local UIPadding = CreateInstance('UIPadding', {PaddingLeft = UDim.new(0,2), PaddingRight = UDim.new(0,5), PaddingTop = UDim.new(0,2), Parent = list})
local jointeam = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Join team',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 5, 0, 165),Rotation=0,Selectable=true,Size=UDim2.new(1, -10, 0, 20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='jointeam',Parent = misc})
local box = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Spectator',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 2, 0, 2),Rotation=0,Selectable=true,Size=UDim2.new(0, 72, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='box',Parent = jointeam})
local list = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 1, 4),Rotation=0,Selectable=false,Size=UDim2.new(1, 0, 0, 56),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=false,ZIndex=2,Name = 'list',Parent = box})
local UIListLayout = CreateInstance('UIListLayout', {Padding = UDim.new(0, 2), FillDirection = Enum.FillDirection.Vertical, HorizontalAlignment = Enum.HorizontalAlignment.Left, SortOrder = Enum.SortOrder.Name, VerticalAlignment = Enum.VerticalAlignment.Top, Name = 'UIListLayout', Parent = list })
local UIPadding = CreateInstance('UIPadding', {PaddingLeft = UDim.new(0,2), PaddingRight = UDim.new(0,5), PaddingTop = UDim.new(0,2), Parent = list})
local fastplant = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Fast plant',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 85, 0, 140),Rotation=0,Selectable=true,Size=UDim2.new(1, -90, 0, 20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='fastplant',Parent = misc})
local box = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=2,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 2, 0, 2),Rotation=0,Selectable=false,Size=UDim2.new(0, 16, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'box',Parent = fastplant})
local planttype = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='',TextColor3=Color3.new(0.972549, 0.972549, 0.972549),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 7, 0, 142),Rotation=0,Selectable=true,Size=UDim2.new(0, 72, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=2,Name='planttype',Parent = misc})
local box = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Normal',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 72, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='box',Parent = planttype})
local list = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 1, 4),Rotation=0,Selectable=false,Size=UDim2.new(1, 0, 0, 38),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=false,ZIndex=2,Name = 'list',Parent = box})
local UIListLayout = CreateInstance('UIListLayout', {Padding = UDim.new(0, 2), FillDirection = Enum.FillDirection.Vertical, HorizontalAlignment = Enum.HorizontalAlignment.Left, SortOrder = Enum.SortOrder.Name, VerticalAlignment = Enum.VerticalAlignment.Top, Name = 'UIListLayout', Parent = list })
local UIPadding = CreateInstance('UIPadding', {PaddingLeft = UDim.new(0,2), PaddingRight = UDim.new(0,5), PaddingTop = UDim.new(0,2), Parent = list})
local quickdefuse = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Quick defuse',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 85, 0, 115),Rotation=0,Selectable=true,Size=UDim2.new(1, -90, 0, 20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='quickdefuse',Parent = misc})
local box = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=2,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 2, 0, 2),Rotation=0,Selectable=false,Size=UDim2.new(0, 16, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'box',Parent = quickdefuse})
local note = CreateInstance('Frame',{Style=Enum.FrameStyle.RobloxRound,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1, 4, 0, 2),Rotation=0,Selectable=false,Size=UDim2.new(0, 100, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=false,ZIndex=1,Name = 'note',Parent = quickdefuse})
local text = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size12,Text='Works with hostages',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=12,TextStrokeColor3=Color3.new(1, 1, 1),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0, 0, 0),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(1, 0, 1, 0),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='text',Parent = note})
local respawn = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Respawn',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0.133333, 0.321569),BackgroundTransparency=0,BorderColor3=Color3.new(0.619608, 0.0823529, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 7, 0, 192),Rotation=0,Selectable=true,Size=UDim2.new(1, -14, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='respawn',Parent = misc})
local chatspam = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Chat advertise',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 5, 0, 215),Rotation=0,Selectable=true,Size=UDim2.new(1, -10, 0, 20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='chatspam',Parent = misc})
local box = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=2,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 2, 0, 2),Rotation=0,Selectable=false,Size=UDim2.new(0, 16, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'box',Parent = chatspam})
local deftype = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='',TextColor3=Color3.new(0.972549, 0.972549, 0.972549),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 7, 0, 117),Rotation=0,Selectable=true,Size=UDim2.new(0, 72, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=2,Name='deftype',Parent = misc})
local box = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Near',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 72, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='box',Parent = deftype})
local list = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 1, 4),Rotation=0,Selectable=false,Size=UDim2.new(1, 0, 0, 38),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=false,ZIndex=2,Name = 'list',Parent = box})
local UIListLayout = CreateInstance('UIListLayout', {Padding = UDim.new(0, 2), FillDirection = Enum.FillDirection.Vertical, HorizontalAlignment = Enum.HorizontalAlignment.Left, SortOrder = Enum.SortOrder.Name, VerticalAlignment = Enum.VerticalAlignment.Top, Name = 'UIListLayout', Parent = list })
local UIPadding = CreateInstance('UIPadding', {PaddingLeft = UDim.new(0,2), PaddingRight = UDim.new(0,5), PaddingTop = UDim.new(0,2), Parent = list})
local rage = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0, 0, 0),BackgroundTransparency=0.69999998807907,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 5, 0, 15),Rotation=0,Selectable=false,Size=UDim2.new(0, 180, 0, 115),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'rage',Parent = main})
local killall = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Kill all',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 5, 0, 15),Rotation=0,Selectable=true,Size=UDim2.new(1, -10, 0, 20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='killall',Parent = rage})
local box = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=2,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 2, 0, 2),Rotation=0,Selectable=false,Size=UDim2.new(0, 16, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'box',Parent = killall})
local title = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Rage',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0.5),BackgroundColor3=Color3.new(1, 0.133333, 0.321569),BackgroundTransparency=0.20000000298023,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 10, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(1, -20, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='title',Parent = rage})
local triggerbot = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Triggerbot',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 85, 0, 65),Rotation=0,Selectable=true,Size=UDim2.new(1, -90, 0, 20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='triggerbot',Parent = rage})
local box = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=2,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 2, 0, 2),Rotation=0,Selectable=false,Size=UDim2.new(0, 16, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'box',Parent = triggerbot})
local oneshot = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='One shot',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 5, 0, 40),Rotation=0,Selectable=true,Size=UDim2.new(1, -10, 0, 20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='oneshot',Parent = rage})
local box = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=2,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 2, 0, 2),Rotation=0,Selectable=false,Size=UDim2.new(0, 16, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'box',Parent = oneshot})
local triggerdelay = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,MultiLine=false,Text='',TextColor3=Color3.new(1, 1, 1), PlaceholderText='delay(ms)', PlaceholderColor3=Color3.new(0.898039, 0.117647, 0.313726),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 6, 0, 67),Rotation=0,Selectable=true,Size=UDim2.new(0, 72, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='triggerdelay',Parent = rage})
local antiaim = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Anti-aim',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 5, 0, 90),Rotation=0,Selectable=true,Size=UDim2.new(1, -10, 0, 20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='antiaim',Parent = rage})
local box = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Off',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 2, 0, 2),Rotation=0,Selectable=true,Size=UDim2.new(0, 72, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='box',Parent = antiaim})
local list = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 1, 4),Rotation=0,Selectable=false,Size=UDim2.new(1, 0, 0, 38),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=false,ZIndex=2,Name = 'list',Parent = box})
local UIListLayout = CreateInstance('UIListLayout', {Padding = UDim.new(0, 2), FillDirection = Enum.FillDirection.Vertical, HorizontalAlignment = Enum.HorizontalAlignment.Left, SortOrder = Enum.SortOrder.Name, VerticalAlignment = Enum.VerticalAlignment.Top, Name = 'UIListLayout', Parent = list })
local UIPadding = CreateInstance('UIPadding', {PaddingLeft = UDim.new(0,2), PaddingRight = UDim.new(0,5), PaddingTop = UDim.new(0,2), Parent = list})
local other = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0, 0, 0),BackgroundTransparency=0.69999998807907,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 5, 0, 143),Rotation=0,Selectable=false,Size=UDim2.new(0, 180, 0, 115),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'other',Parent = main})
local bhop = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Autobhop',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 5, 0, 15),Rotation=0,Selectable=true,Size=UDim2.new(1, -10, 0, 20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='bhop',Parent = other})
local box = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=2,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 2, 0, 2),Rotation=0,Selectable=false,Size=UDim2.new(0, 16, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'box',Parent = bhop})
local title = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Other',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0.5),BackgroundColor3=Color3.new(1, 0.133333, 0.321569),BackgroundTransparency=0.20000000298023,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 10, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(1, -20, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='title',Parent = other})
local thirdp = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Thirdperson',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 85, 0, 65),Rotation=0,Selectable=true,Size=UDim2.new(1, -90, 0, 20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='thirdp',Parent = other})
local box = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=2,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 2, 0, 2),Rotation=0,Selectable=false,Size=UDim2.new(0, 16, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'box',Parent = thirdp})
local fovchanger = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Change fov',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 85, 0, 40),Rotation=0,Selectable=true,Size=UDim2.new(1, -90, 0, 20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='fovchanger',Parent = other})
local box = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=2,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 2, 0, 2),Rotation=0,Selectable=false,Size=UDim2.new(0, 16, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'box',Parent = fovchanger})
local thirdpkey = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Toggle key',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 5, 0, 90),Rotation=0,Selectable=true,Size=UDim2.new(1, -10, 0, 20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='thirdpkey',Parent = other})
local box = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='KeypadOne',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 2, 0, 2),Rotation=0,Selectable=true,Size=UDim2.new(0.5, 0, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='box',Parent = thirdpkey})
local thirdpdistance = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,MultiLine=false,Text='',TextColor3=Color3.new(1, 1, 1), PlaceholderText='distance', PlaceholderColor3=Color3.new(0.898039, 0.117647, 0.313726),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 6, 0, 67),Rotation=0,Selectable=true,Size=UDim2.new(0, 72, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='thirdpdistance',Parent = other})
local fov = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,MultiLine=false,Text='',TextColor3=Color3.new(1, 1, 1), PlaceholderText='amount', PlaceholderColor3=Color3.new(0.898039, 0.117647, 0.313726),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 6, 0, 42),Rotation=0,Selectable=true,Size=UDim2.new(0, 72, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='fov',Parent = other})
local visuals = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0, 0, 0),BackgroundTransparency=0.69999998807907,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 5, 0, 271),Rotation=0,Selectable=false,Size=UDim2.new(0, 180, 0, 115),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'visuals',Parent = main})
local esp = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Player ESP',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 85, 0, 15),Rotation=0,Selectable=true,Size=UDim2.new(1, -90, 0, 20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='esp',Parent = visuals})
local box = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=2,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 2, 0, 2),Rotation=0,Selectable=false,Size=UDim2.new(0, 16, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'box',Parent = esp})
local title = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Visuals',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0.5),BackgroundColor3=Color3.new(1, 0.133333, 0.321569),BackgroundTransparency=0.20000000298023,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 10, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(1, -20, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='title',Parent = visuals})
local esptarget = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='',TextColor3=Color3.new(0.972549, 0.972549, 0.972549),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 7, 0, 17),Rotation=0,Selectable=true,Size=UDim2.new(0, 72, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=2,Name='esptarget',Parent = visuals})
local box = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Enemy',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 72, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='box',Parent = esptarget})
local list = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 1, 4),Rotation=0,Selectable=false,Size=UDim2.new(1, 0, 0, 38),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=false,ZIndex=2,Name = 'list',Parent = box})
local UIListLayout = CreateInstance('UIListLayout', {Padding = UDim.new(0, 2), FillDirection = Enum.FillDirection.Vertical, HorizontalAlignment = Enum.HorizontalAlignment.Left, SortOrder = Enum.SortOrder.Name, VerticalAlignment = Enum.VerticalAlignment.Top, Name = 'UIListLayout', Parent = list })
local UIPadding = CreateInstance('UIPadding', {PaddingLeft = UDim.new(0,2), PaddingRight = UDim.new(0,5), PaddingTop = UDim.new(0,2), Parent = list})
local bomb = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Bomb',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 5, 0, 40),Rotation=0,Selectable=true,Size=UDim2.new(1, -10, 0, 20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='bomb',Parent = visuals})
local box = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=2,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 2, 0, 2),Rotation=0,Selectable=false,Size=UDim2.new(0, 16, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'box',Parent = bomb})
local chams = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Chams',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 85, 0, 90),Rotation=0,Selectable=true,Size=UDim2.new(1, -90, 0, 20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='chams',Parent = visuals})
local box = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=2,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 2, 0, 2),Rotation=0,Selectable=false,Size=UDim2.new(0, 16, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'box',Parent = chams})
local chamstarget = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='',TextColor3=Color3.new(0.972549, 0.972549, 0.972549),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=1,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 7, 0, 92),Rotation=0,Selectable=true,Size=UDim2.new(0, 72, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=2,Name='chamstarget',Parent = visuals})
local box = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Enemy',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 72, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='box',Parent = chamstarget})
local list = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 1, 4),Rotation=0,Selectable=false,Size=UDim2.new(1, 0, 0, 38),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=false,ZIndex=2,Name = 'list',Parent = box})
local UIListLayout = CreateInstance('UIListLayout', {Padding = UDim.new(0, 2), FillDirection = Enum.FillDirection.Vertical, HorizontalAlignment = Enum.HorizontalAlignment.Left, SortOrder = Enum.SortOrder.Name, VerticalAlignment = Enum.VerticalAlignment.Top, Name = 'UIListLayout', Parent = list })
local UIPadding = CreateInstance('UIPadding', {PaddingLeft = UDim.new(0,2), PaddingRight = UDim.new(0,5), PaddingTop = UDim.new(0,2), Parent = list})
local weapons = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Weapons',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Right,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=1,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 5, 0, 65),Rotation=0,Selectable=true,Size=UDim2.new(1, -10, 0, 20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='weapons',Parent = visuals})
local box = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.619608, 0.0823529, 0.207843),BackgroundTransparency=0,BorderColor3=Color3.new(1, 0.133333, 0.321569),BorderSizePixel=2,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 2, 0, 2),Rotation=0,Selectable=false,Size=UDim2.new(0, 16, 0, 16),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'box',Parent = weapons})
local topbar = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text=' Snippet - Counter Blox',TextColor3=Color3.new(1, 1, 1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(1, 0.133333, 0.321569),BackgroundTransparency=0.20000000298023,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(1, 0, 0, -20),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='topbar',Parent = counterb})

local espfolder = Instance.new("Folder", game:GetService"CoreGui")
espfolder.Name = "espstuff"
local bombfolder = Instance.new("Folder", game:GetService"CoreGui")
bombfolder.Name = "bomb"
local weaponfolder = Instance.new("Folder", game:GetService"CoreGui")
weaponfolder.Name = "weapons"

wait(1)
--auto set gui

local function uhh(this)
	for _, obj in pairs(this) do
		if obj:IsA"TextButton" then
			if typeof(cheats[obj.Name]) == "boolean" then
				if cheats[obj.Name] then
					obj.box.BackgroundColor3 = Color3.fromRGB(255, 34, 82)
				else
					obj.box.BackgroundColor3 = Color3.fromRGB(158, 21, 53)
				end
			elseif typeof(cheats[obj.Name]) == "string" or typeof(cheats[obj.Name]) == "number" then
				obj.box.Text = cheats[obj.Name]
			elseif typeof(cheats[obj.Name]) == "userdata" then
				obj.Box.Text = string.char(cheats[obj.Name].Value):upper()
			end
		end
	end
end

uhh(main:GetDescendants())
uhh(sett:GetDescendants())

local function uhh1(obj)
	obj.MouseButton1Click:connect(function()
		if typeof(cheats[obj.Name]) == "boolean" then
			if cheats[obj.Name] then
				cheats[obj.Name] = false
				obj.box.BackgroundColor3 = Color3.fromRGB(158, 21, 53)
				if obj.Name == "skinchanger" then
					for _,thisgun in pairs(localp.SkinFolder:GetDescendants()) do
						if thisgun:IsA"StringValue" then
							thisgun.RobloxLocked = false
							thisgun.Value = "Stock"
						end
					end
				end
			else
				cheats[obj.Name] = true
				obj.box.BackgroundColor3 = Color3.fromRGB(255, 34, 82)
				if obj.Name == "skinchanger" then
					for _,thisgun in pairs(localp.SkinFolder:GetDescendants()) do
						if thisgun:IsA"StringValue" then
							thisgun.RobloxLocked = true
							thisgun.Value = skins[thisgun.Name].applied
						end
					end
				end
			end
		elseif typeof(cheats[obj.Name]) == "string" then
			if obj.box.list.Visible == true then
				obj.box.list.Visible = false
			else
				obj.box.list.Visible = true
			end
			for _,option in pairs(obj.box.list:GetChildren()) do
				if option:IsA"TextButton" then
					option.MouseButton1Click:connect(function()
						cheats[obj.Name] = option.Text
						obj.box.Text = option.Text
						obj.box.list.Visible = false
						if obj.Name == "jointeam" then
							localp.Status.Team.Value = cheats.jointeam
							game.ReplicatedStorage.Events['JoinTeam']:FireServer(cheats.jointeam)
						end
					end)
				end
			end
		elseif typeof(cheats[obj.Name]) == "userdata" then
			inputting = true
			print(inputting)
			inputtingTo = obj
		elseif obj.Name == "respawn" then
			game.ReplicatedStorage.Events.Spawnme:FireServer()
		elseif obj.Name == "applyskin" then
			skins[selectedwep].applied = selectedskin
			for _,thisgun in pairs(localp.SkinFolder:GetDescendants()) do
				if thisgun.Name == selectedwep then
					thisgun.Value = selectedskin
				end
			end
		end
	end)
	obj.MouseEnter:connect(function()
		if obj:FindFirstChild"note" then
			obj.note.Visible = true
		end
	end)
	obj.MouseLeave:connect(function()
		if obj:FindFirstChild"note" then
			obj.note.Visible = false
		end
	end)
end

for _, obj in pairs(main:GetDescendants()) do
	if obj:IsA"TextButton" then
		uhh1(obj)
	end
end

for _, obj in pairs(sett:GetDescendants()) do
	if obj:IsA"TextButton" then
		uhh1(obj)
	end
end

local function makeListItems(thistable, p, skin, wep)
	for _,v in pairs(thistable) do
		for i=1, table.getn(v), 1 do
			local option = Instance.new("TextButton", p)
			option.Name = "option"..i
			option.LayoutOrder = i
			option.BackgroundColor3 = Color3.fromRGB(182, 24, 63)
			option.BorderSizePixel = 0
			option.Text = v[i]
			option.TextColor3 = Color3.new(1,1,1)
			option.Size = UDim2.new(1,0,0,16)
			option.ZIndex = 2
			option.Font = Enum.Font.SourceSans
			option.TextSize = 14
			if skin then
				option.MouseButton1Click:connect(function()
					selectedskin = option.Text
				end)
			end
			if wep then
				option.MouseButton1Click:connect(function()
					for _,v in pairs(weplist:GetChildren()) do
						if v:IsA"TextButton" then
							v:Destroy()
						end
					end
					local t
					if option.Text == "Pistols" then
						t = pistols
					elseif option.Text == "SMGs" then
						t = semis
					elseif option.Text == "Rifles" then
						t = rifles
					else
						t = heavies
					end
					makeListItems({t}, weplist, false)
					for _,wep in pairs(weplist:GetChildren()) do
						if wep:IsA"TextButton" then
							wep.MouseButton1Click:connect(function()
								for _,button in pairs(skinlist:GetChildren()) do
									if button:IsA"TextButton" then
										button:Destroy()
									end
								end
								selectedwep = wep.Text
								makeListItems({skins[wep.Text].available}, skinlist, true, false)
							end)
						end
					end
				end)
			end
		end
	end
end

for _,thisgun in pairs(localp.SkinFolder:GetDescendants()) do
	if thisgun:IsA"StringValue" then
		thisgun.RobloxLocked = true
	end
end

makeListItems({semis, heavies, rifles}, primary.box.list, false)
makeListItems({pistols}, secondary.box.list, false)
makeListItems({teams}, jointeam.box.list, false)
makeListItems({plantTypes}, planttype.box.list, false)
makeListItems({defuseTypes}, deftype.box.list, false)
makeListItems({espTargets}, esptarget.box.list, false)
makeListItems({espTargets}, chamstarget.box.list, false)
makeListItems({antiaimTypes}, antiaim.box.list, false)
makeListItems({wepTypes}, weptype.box.list, false, true)

maintab.MouseButton1Click:connect(function()
	main.Visible = true
	sett.Visible = false
end)

setttab.MouseButton1Click:connect(function()
	sett.Visible = true
	main.Visible = false
end)

--functions
local function fuckplayer(player, hitpart)
	if players[player.Name].Team ~= localp.Team then
		local Remote = game.ReplicatedStorage.Events['HitPart']
		local Arguments = {
			[1] = hitpart,
			[2] = hitpart.Position,
			[3] = localp.Character.EquippedTool.Value,
			[4] = 8192,
			[5] = localp.Character.Gun,
			[8] = 8,
			[9] = false,
			[10] = false,
			[11] = hitpart.Position,
			[12] = 14117,
			[13] = Vector3.new(0,0,0)
			}
		Remote:FireServer(unpack(Arguments))
	end
end

local function autoLoadout()
	game.ReplicatedStorage.Events['ApplyGun']:FireServer(game:GetService"ReplicatedStorage".Weapons[cheats.primary])
	game.ReplicatedStorage.Events['ApplyGun']:FireServer(game:GetService"ReplicatedStorage".Weapons[cheats.secondary])
end

local function getSite()
	local site
	if (localp.Character.HumanoidRootPart.Position-workspace.Map.SpawnPoints.C4Plant.Position).magnitude <
		(localp.Character.HumanoidRootPart.Position-workspace.Map.SpawnPoints.C4Plant2.Position).magnitude then
		site = "B"
	else
		site = "A"
	end
	return site
end

local function plantC4(pos)
	if cheats.planttype == "Normal" then
		game.ReplicatedStorage.Events['PlantC4']:FireServer((localp.Character.HumanoidRootPart.CFrame+Vector3.new(0,-2,0))*CFrame.Angles(0,0,4), getSite())
	else --Anti def.
		game.ReplicatedStorage.Events['PlantC4']:FireServer(localp.Character.HumanoidRootPart.CFrame+Vector3.new(0,-6,0), "")
	end
end

local function defuse()
	if cheats.deftype == "Near" then
		if (localp.Character.HumanoidRootPart.Position - workspace.C4.PrimaryPart.Position).magnitude < 10 then
			if workspace.Map.Gamemode.Value == "defusal" then
				localp.Backpack.Defuse:FireServer(workspace.C4)
			else
				localp.Backpack.Defuse:FireServer(workspace.Map.Regen.Hostages.Hostage)
			end
		end
	else --Anywhere
		if workspace.Map.Gamemode.Value == "defusal" then
			localp.Backpack.Defuse:FireServer(workspace.C4)
		else
			localp.Backpack.Defuse:FireServer(workspace.Map.Regen.Hostages.Hostage)
		end
	end
end

local function addEsp(object, parent, size, identifier)
	local billboard = Instance.new("BillboardGui", parent)
	billboard.Size = size
	if identifier == "object" then
		billboard.Adornee = object
	end
	billboard.AlwaysOnTop = true
	billboard.Name = object.Name
	
	local lines = Instance.new("Frame", billboard)
	lines.Name = "lines"
	lines.Size = UDim2.new(1,-2,1,-2)
	lines.Position = UDim2.new(0,1,0,1)
	lines.BackgroundTransparency = 1
	
	local outlines = Instance.new("Folder", lines)
	outlines.Name = "outlines"
	local inlines = Instance.new("Folder", lines)
	inlines.Name = "inlines"
	
	local outline1 = Instance.new("Frame", outlines)
	outline1.Name = "left"
	outline1.BorderSizePixel = 0
	outline1.BackgroundColor3 = Color3.new(0,0,0)
	outline1.Size = UDim2.new(0,-1,1,0)
	
	local outline2 = Instance.new("Frame", outlines)
	outline2.Name = "right"
	outline2.BorderSizePixel = 0
	outline2.BackgroundColor3 = Color3.new(0,0,0)
	outline2.Position = UDim2.new(1,0,0,0)
	outline2.Size = UDim2.new(0,1,1,0)
	
	local outline3 = Instance.new("Frame", outlines)
	outline3.Name = "up"
	outline3.BorderSizePixel = 0
	outline3.BackgroundColor3 = Color3.new(0,0,0)
	outline3.Size = UDim2.new(1,0,0,-1)
	
	local outline4 = Instance.new("Frame", outlines)
	outline4.Name = "down"
	outline4.BorderSizePixel = 0
	outline4.BackgroundColor3 = Color3.new(0,0,0)
	outline4.Position = UDim2.new(0,0,1,0)
	outline4.Size = UDim2.new(1,0,0,1)
	
	local inline1 = Instance.new("Frame", inlines)
	inline1.Name = "left"
	inline1.BorderSizePixel = 0
	inline1.Size = UDim2.new(0,1,1,0)
	
	local inline2 = Instance.new("Frame", inlines)
	inline2.Name = "right"
	inline2.BorderSizePixel = 0
	inline2.Position = UDim2.new(1,0,0,0)
	inline2.Size = UDim2.new(0,-1,1,0)
	
	local inline3 = Instance.new("Frame", inlines)
	inline3.Name = "up"
	inline3.BorderSizePixel = 0
	inline3.Size = UDim2.new(1,0,0,1)
	
	local inline4 = Instance.new("Frame", inlines)
	inline4.Name = "down"
	inline4.BorderSizePixel = 0
	inline4.Position = UDim2.new(0,0,1,0)
	inline4.Size = UDim2.new(1,0,0,-1)
	
	if identifier == "object" then
		local label = Instance.new("TextLabel", billboard)
		label.Name = "label"
		label.Size = UDim2.new(1,0,1,0)
		label.BackgroundTransparency = 1
		label.TextStrokeTransparency = 0
		label.TextColor3 = cheats.esp_itemtextcolor
		label.Text = object.Name
		label.Font = Enum.Font.Code
		label.TextSize = 16
		object.AncestryChanged:connect(function()
			if object.Name ~= "C4" then
				if object.Parent ~= workspace.Debris then
					billboard:Destroy()
				end
			end
		end)
	end
	
	if identifier == "player" then
		spawn(function()
			while object do
				wait()
				if cheats.esp then
					if object.Character and object.Character:FindFirstChild"LowerTorso" then
						local head = object.Character:FindFirstChild"Head"
						local lowerpart = object.Character:FindFirstChild"LeftFoot"
						local leftarm = object.Character:FindFirstChild"LeftUpperArm"
						local rightarm = object.Character:FindFirstChild"RightUpperArm"
						if (head and lowerpart) and (leftarm and rightarm) then
							billboard.Size = UDim2.new(((leftarm.Position+Vector3.new(0,0.5,0))-(rightarm.Position-Vector3.new(0,0.5,0))).magnitude,0,((head.Position+Vector3.new(0,1,0))-(lowerpart.Position)).magnitude,0)
						end
						local color = cheats.esp_enemycolor
						if object.Team ~= localp.Team then
							color = cheats.esp_enemycolor
							billboard.Adornee = object.Character.LowerTorso
						else
							if cheats.esptarget == "Both" then
								color = cheats.esp_teamcolor
								billboard.Adornee = object.Character.LowerTorso
							else
								billboard.Adornee = nil
							end
						end
						if object.Name == workspace.Status.HasBomb.Value then
							color = cheats.esp_bombcarriercolor
						end
						inline1.BackgroundColor3 = color
						inline2.BackgroundColor3 = color
						inline3.BackgroundColor3 = color
						inline4.BackgroundColor3 = color
					end
				else
					billboard.Adornee = nil
				end
			end
		end)
	end
end

spawn(function()
	while wait() do
		if cheats.triggerbot then
			if localp.Character and mouse.Target and mouse.Target.Parent:FindFirstChild"Humanoid" then
				if players[mouse.Target.Parent.Name].Team ~= localp.Team then
					wait(cheats.triggerdelay/1000)
					mouse1click()
				end
			end
		end
	end
end)

--idk
uis.InputBegan:connect(function(key, gameProcessed)
	if inputting then
		print(inputting)
		cheats[inputtingTo.Name] = key.KeyCode
		inputtingTo.Text = string.char(key.KeyCode.Value):upper()
		inputting = false
	end
	if not gameProcessed then
		if key.UserInputType == Enum.UserInputType.MouseButton1 then
			if cheats.killall and localp.Character and localp.Character:FindFirstChild"Head" then
				for _,player in pairs(players:GetChildren()) do
					if player.Character and player.Character:FindFirstChild"Head" then
						fuckplayer(player, player.Character.Head)
					end
				end
			end
			if cheats.oneshot and localp.Character then
				if mouse.Target and mouse.Target.Parent:FindFirstChild"Humanoid" then
					fuckplayer(mouse.Target.Parent, mouse.Target)
				end
			end
			if cheats.fastplant then
				if localp.Character and localp.Character.EquippedTool.Value == "C4" then
					plantC4()
				end
			end
		elseif key.UserInputType == Enum.UserInputType.MouseButton2 then
			if cheats.killall and localp.Character then
				if localp.Character:FindFirstChild"EquippedTool" then
					if localp.Character.EquippedTool.Value == "R8" then
						if mouse.Target and mouse.Target.Parent:FindFirstChild"Humanoid" then
							fuckplayer(mouse.Target.Parent, mouse.Target)
						end
					end
				end
			end
		end
		if key.KeyCode == cheats.thirdpkey then
			if cheats.thirdp then
				cheats.thirdp = false
				thirdp.box.BackgroundColor3 = Color3.fromRGB(158, 21, 53)
			else
				cheats.thirdp = true
				thirdp.box.BackgroundColor3 = Color3.fromRGB(255, 34, 82)
			end
		end
		if key.KeyCode == Enum.KeyCode.E then
			if cheats.quickdefuse then
				if workspace:FindFirstChild"C4" then
					defuse()
				end
			end
		end
	end
	if key.KeyCode == Enum.KeyCode.F8 then
		if counterb.Visible == true then
			counterb.Visible = false
			--uis.MouseBehavior = Enum.MouseBehavior.LockCenter
		else
			counterb.Visible = true
			--uis.MouseBehavior = Enum.MouseBehavior.Default
		end
	end
end)

localp.CharacterAdded:connect(function()
	if cheats.loadout then
		autoLoadout()
	end
end)
localp.Cash.Changed:connect(function()
	if cheats.moola then
		localp.Cash.Value = 16000
	end
end)
localp.Status.Team.Changed:connect(function()
	jointeam.box.Text = localp.Status.Team.Value
end)

players.PlayerAdded:connect(function(player)
	local size = UDim2.new(4,0,5.6,0)
	addEsp(player, espfolder, size, "player")
end)

for _,player in pairs(players:GetChildren()) do
	if player.Name ~= localp.Name and not espfolder:FindFirstChild(player.Name) then
		local size = UDim2.new(4,0,5.6,0)
		addEsp(player, espfolder, size, "player")
	end
end

players.PlayerRemoving:connect(function(player)
	if espfolder:FindFirstChild(player.Name) then
		espfolder[player.Name]:Destroy()
	end
end)

local function objectInWorkspace(child)
	if cheats.weapons then
		local primaries = {semis, heavies, rifles}
		for _,v in pairs(primaries) do
			for _,w in pairs(v) do
				if child.Name == w then
					local size = UDim2.new(1.4,0,1.4,0)
					addEsp(child, bombfolder, size, "object")
				end
			end
		end
		for _,v in pairs(pistols) do
			if child.Name == v then
				local size = UDim2.new(1.4,0,1.4,0)
				addEsp(child, bombfolder, size, "object")
			end
		end
	end
	if child.Name == "C4" then
		if cheats.bomb then
			if bombfolder:FindFirstChild"C4" then
				bombfolder.C4.Adornee = child
			else
				local size = UDim2.new(1.4,0,1.4,0)
				addEsp(child, bombfolder, size, "object")
				for _,v in pairs(bombfolder.C4.lines.inlines:GetChildren()) do
					v.BackgroundColor3 = cheats.esp_bombcolor
				end
			end
			if child.Parent == workspace then
				for i=38,0,-1 do
					wait(1)
					bombfolder.C4.label.Text = "C4 - "..i
				end
				bombfolder.C4.label.Text = "C4"
			end
		end
	end
end

workspace.Debris.DescendantAdded:connect(function(child)
	objectInWorkspace(child, false)
end)

workspace.DescendantAdded:connect(function(child)
	objectInWorkspace(child, true)
end)

workspace.CurrentCamera.ChildAdded:Connect(function(child)
	if child.Name == "Arms" then
		if cheats.thirdp then
			for _,v in pairs(workspace.Camera.Arms:GetDescendants()) do
				if pcall(function() return v["Transparency"] end) then
					if typeof(v.Transparency) == "number" then
					    v.Transparency = 1
					end
				end
			end
		end
	end
end)

spawn(function()
	while wait(2) do
		if cheats.chatspam then
			local A_1 = chatmessages[math.random(1,table.getn(chatmessages))]
			local A_2 = false
			local A_3 = "Innocent"
			local A_4 = false
			local A_5 = false
			local Event = game:GetService("ReplicatedStorage").Events.PlayerChatted
			Event:FireServer(A_1, A_2, A_3, A_4, A_5)
		end
	end
end)


game:GetService("RunService").RenderStepped:connect(function()
	if cheats.fovchanger then
		workspace.CurrentCamera.FieldOfView = fov.Text
	end
	if cheats.thirdp then
		if localp.Character then
			localp.CameraMinZoomDistance = thirdpdistance.Text
			localp.CameraMaxZoomDistance = thirdpdistance.Text
			game.Workspace.ThirdPerson.Value = true
		end
	end
	if cheats.antiaim == "Down" then
		game.ReplicatedStorage.Events.ControlTurn.RobloxLocked = true
		local Arguments = {[1] = 5.1,[2] = false}
		game.ReplicatedStorage.Events.ControlTurn:FireServer(unpack(Arguments))
	else
		game.ReplicatedStorage.Events.ControlTurn.RobloxLocked = false
	end
end)