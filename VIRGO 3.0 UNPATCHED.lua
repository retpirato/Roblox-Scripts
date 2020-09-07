local Settings={
	UIName='Phantom Forces';
	MainColor=Color3.fromRGB(255,100,100);
	ToggleKey='RightControl';
};

local Storage=Instance.new'ScreenGui';
Storage.Parent=game:GetService'RunService':IsStudio()and (wait(2/3)and game:GetService'Players'.LocalPlayer.PlayerGui or nil) or game:GetService'CoreGui';
local OptionsForColors={
	TEXT_='TextColor3';
	BACKGROUND='BackgroundColor3';
};
local function Colorize(I) -- Great var name!
	for i,v in next,OptionsForColors do
		if I.Name:find(i) and I[v]then
			I[v]=Settings.MainColor;
		else
			-- print(I.Name, 'noped', i);
		end;
	end;
	I.ChildAdded:Connect(Colorize);
end;
Storage.ChildAdded:Connect(Colorize);

local Main=Instance.new'Frame';Main.Name='MainFrame';
Main.BackgroundTransparency=1;Main.BorderSizePixel=0;
Main.Size=UDim2.new(1,0,1,0);
Main.Parent=Storage;Main.Visible=false;
local HUD=Main:Clone();
HUD.Name='HUD';
HUD.Parent=Storage;
HUD.Visible=true;

local UILabel=Instance.new'TextLabel';
UILabel.Name='TEXT_UILabel';
UILabel.BackgroundTransparency=1;UILabel.BorderSizePixel=0;
UILabel.Position=UDim2.new(0.05,0,0.85,0);
UILabel.Size=UDim2.new(0.15,0,0.1,0);
UILabel.Text=Settings.UIName;
UILabel.TextScaled=true;
UILabel.Font=Enum.Font.SourceSansLight;
UILabel.Parent=Main;

local Tabs={};
local Toggles={};
local ToggleSettings={};
local X=10;

local function UpdateArrayList()
	local Y=0;
	for i,v in ipairs(HUD:GetChildren())do
		if v.Name:find'ARR_' then
			v:Destroy();
		end;
	end;
	for i,v in ipairs(Main:GetDescendants())do
		if v.Name:find'TOGGLE_' then
			local P1,P2=v.Name:find'TOGGLE_';
			local Name=v.Name:sub(P2+1);
			v.TextColor3=Toggles[Name]and Settings.MainColor or Color3.new(1,1,1);
		end;
	end;
	for i,v in next,Toggles do
		if v then
			local Label=Instance.new'TextLabel';
			Label.Name='TEXT_ARR_'..i;
			Label.BackgroundTransparency=1;Label.BorderSizePixel=0;
			Label.Position=UDim2.new(0.1,-5,0,Y);
			Label.Size=UDim2.new(0.9,0,0,30);
			Label.Text=i;
			Label.TextScaled=true;
			Label.Font=Enum.Font.SourceSansLight;
			Label.TextXAlignment=Enum.TextXAlignment.Right;
			Label.Parent=HUD;
			Y=Y+30
		end;
	end;
end;

local function CreateTab(TabName)
	Tabs[TabName]={};
	Tabs[TabName].Toggles={};
	local Frame=Instance.new'TextLabel';
	Frame.Name='BACKGROUND_'..TabName;
	Frame.BorderSizePixel=0;
	Frame.Position=UDim2.new(0,X,0,10);
	Frame.Active=true;
	Frame.Draggable=true;
	Frame.Size=UDim2.new(0,250,0,30);
	Frame.TextColor3=Color3.fromRGB(84,84,84);
	Frame.TextSize=18;
	Frame.Font=Enum.Font.SourceSansLight;
	Frame.Text=TabName;
	Frame.Parent=Main;
	local Toggle=Instance.new'TextButton';
	Toggle.Name=TabName..'Toggle';
	Toggle.BackgroundTransparency=1;
	Toggle.BorderSizePixel=0;
	Toggle.Position=UDim2.new(0,220,0,0);
	Toggle.Size=UDim2.new(0,30,0,30);
	Toggle.TextColor3=Color3.fromRGB(84,84,84)
	Toggle.TextSize=16
	Toggle.Text='-';
	Toggle.Font=Enum.Font.SciFi;
	Toggle.Parent=Frame;
	local Y=0;
	local Frame2=Instance.new'Frame';
	Frame2.Name=TabName..'Dropdown';
	Frame2.BackgroundColor3=Color3.new(0,0,0);
	Frame2.BackgroundTransparency=0.5;
	Frame2.BorderSizePixel=0;
	Frame2.Position=UDim2.new(0,0,0,30);
	Frame2.Size=UDim2.new(0,250,0,0);
	Frame2.ClipsDescendants=true;
	Frame2.Parent=Frame;

	Tabs[TabName].OpenClose=function()
		if Frame2.Size==UDim2.new(0,250,0,Y)or Frame2.Size==UDim2.new(0,250,0,0)then
			Frame2:TweenSize(Toggle.Text=='+' and UDim2.new(0,250,0,Y)or UDim2.new(0,250,0,0), 'Out', 'Quad', 1/3);
			Toggle.Text=Toggle.Text=='-' and '+' or '-'
		end;
	end;Toggle.MouseButton1Click:Connect(Tabs[TabName].OpenClose);
	Tabs[TabName].AddToggle=function(ToggleName,Optional)
		if Tabs[TabName].ToggleName==nil then
			local Button=Instance.new'TextButton';
			Button.Name='TOGGLE_'..ToggleName
			Button.BackgroundTransparency=1;
			Button.BorderSizePixel=0;
			Button.Position=UDim2.new(0,5,0,Y);
			Y=Y+25;
			Frame2.Size=Frame2.Size+UDim2.new(0,0,0,25);
			Button.Size=UDim2.new(0,245,0,25);
			Button.Text='> '..ToggleName;
			Button.TextColor3=Color3.new(1,1,1);
			Button.TextSize=16;
			Button.Font=Enum.Font.SourceSansSemibold
			Button.TextXAlignment=Enum.TextXAlignment.Left;
			Button.Parent=Frame2;
			Toggles[ToggleName]=false;
			ToggleSettings[ToggleName]=Optional;
			Button.MouseButton1Click:Connect(function()
				Toggles[ToggleName]=not Toggles[ToggleName];
				UpdateArrayList();
			end);
			return Button;
		end;
	end;


	X=X+300
end;

game:GetService'UserInputService'.InputBegan:Connect(function(IO,GPE)
	if IO.KeyCode==Enum.KeyCode[Settings.ToggleKey]then
		Main.Visible=not Main.Visible;
	end;
end);

--------------------------------------------------------------

CreateTab'Tools';
Tabs.Tools.AddToggle'GunMod';
Tabs.Tools.AddToggle'InstaKill';
Tabs.Tools.AddToggle'NadeMod';
CreateTab'Render';
Tabs.Render.AddToggle'GlobalESP';
CreateTab'Utilities';
Tabs.Utilities.AddToggle'Credits';
Tabs.Utilities.AddToggle'UnlockAll';
Tabs.Utilities.AddToggle'NoFall';


local P = game:GetService'Players'.LocalPlayer;
local Misc = game:GetService'ReplicatedStorage'.Misc;
local PGUI = P.PlayerGui;
local ChatGui = PGUI.ChatGame;

local C = Color3.fromRGB(100, 100, 255);
local CurrentTexts={};

spawn(function()
	repeat wait();
		for H = 0, 1, 1/300 do wait();
			for i, v in next, CurrentTexts do
				if v and v.Visible then 
					v.TextColor3 = Color3.fromHSV(H, 1, 1);
				else
					table.remove(CurrentTexts, i);
				end;
			end;
		end;
	until nil;
end);

local function Console(String, Color)
	local Msg = Misc.Msger;
	local Message = Msg:Clone();
	local MTag = Message.Tag;
	local Offset = 5;
	Message.Parent = ChatGui.GlobalChat;
	Message.Text = '[VIRGO]: ';
	table.insert(CurrentTexts, Message);
	Message.Msg.Text = String;
	Message.Msg.Position = UDim2.new(0, Message.TextBounds.x, 0, 0);
	if Color then
		Message.Msg.TextColor3 = Color;
	end;
	Message.Visible = true;
	Message.Msg.Visible = true;
end;

local secret953 = secret953 or debug.getupvalues;
local secret500 = secret500 or debug.setupvalue;
local getreg = getreg or debug.getregistry;

local ScriptSettings = {
	['firerate'] = 1500
};
local InitTime = tick();

local Client;
local Functions;
local Bypassed;

do
	for i, v in next, getreg() do
		if type(v) == 'function' then
			local Upvalues = secret953(v);
			if not Client and Upvalues and Upvalues.network and Upvalues.char and Upvalues.gamelogic then
				Client = Upvalues;
			elseif not Bypassed and Upvalues and Upvalues.netkick then
				secret500(v, 'netkick', function() end);
				Bypassed = true;
			end;
		end;
	end;
end;

if Client then
	Console('[1/3] Hooked client' .. (Bypassed and ' and bypassed PF\'s anticheat.' or ' but failed to bypass PF\'s anticheat.'));
else
	Console'[1/3] Could not access Framework.';
	error'Stop using skidsploits without the debug library.';
end;

local BlacklistedArguments = {
	['closeconnection'] = true,
	['logmessage'] = true
};

do
	if Synapse then
		Console'[2/3] SIP detected, no need to bypass contextlevel check.';
		Console'(Note: If you get a \'nice network\' ban it\'s not my fault, it\'s 3dsbob\'s. Complain to him not me.)';
	elseif not secret500(Client.network.send, 'settings', error) then
		Console'[2/3] Failed to bypass contextlevel check, aborting for security purposes.';
		P:Kick'Rejoin! (If this kick hadn\'t have happened you would have been banned so be grateful. -Classy.)';
	else
		Console'[2/3] Bypassed contextlevel check.';
	end;
	
	local Upvalues = secret953(Client.network.add);
	if Upvalues and Upvalues.funcs then
		Functions = Upvalues.funcs;
		Console'[3/3] Got functions.';
	else
		Console'[3/3] Failed to init some dependencies, some features may not work as intended.';
	end;
end;

local Succ, NoSucc = pcall(function()

	local Network = Client.network;
	local Char = Client.char;
	local GameLogic = Client.gamelogic;

	local Send = Network.send;
	local G = Char.loadgun;
	local GR = Char.loadgrenade;

	local V = Vector3.new();
	
	Network.send = function(self, ...)
		local Args = {...};
		if #Args > 0 then
			local Name = Args[1];
			-- if not Name:find'ping' and not checkcaller'' then for i, v in next, Args do warn(i, v, typeof(v)) end end
			if Name == 'changehealthx' then
				if #Args > 4 and type(Args[5]) == 'string' and Args[5] == 'Falling' and Toggles.NoFall then
					Console'Nofall! Watch your legs next time :)';
					return;
				end
			elseif Toggles.InstaKill and Name == 'bullethit' then
				if type(Args[3]) == 'number' and Args[3] > -100 then
					Args[3] = -100;
					return Send(self, unpack(Args));
				end;
			elseif Name == 'logmessage' or Name == 'deploycheck' then return
			end;
		end;
		return Send(self, ...);
	end;

	
	-- Dysekts kewl function
	Char.loadgun = function(...) -- TODO: implement a self arg to make things look more tidy.
		if Toggles.GunMod then
			local Args = {...}; if #Args == 0 then return G(...); end;
			local GunData = Args[2];
			Console(string.format('Modding %s (%s)', GunData.name, GunData.type));
			GunData.hideflash = true;
			GunData.hideminimap = true;
			GunData.hiderange = 0;
			GunData.sparerounds = 9999;
			GunData.magsize = 9999;
			GunData.camkickmin = V;
			GunData.camkickmax = V;
			GunData.aimcamkickmin = V;
			GunData.aimcamkickmax = V;
			GunData.aimtranskickmin = V;
			GunData.aimtranskickmax = V;
			GunData.transkickmin = V;
			GunData.transkickmax = V;
			GunData.rotkickmin = V;
			GunData.rotkickmax = V;
			GunData.aimrotkickmin = V;
			GunData.aimrotkickmax = V;
			GunData.hipfirespread = 0;
			GunData.hipfirestability = 0;
			GunData.swayamp = 0;
			GunData.swayspeed = 0;
			GunData.steadyspeed = 0;
			GunData.breathspeed = 0;
			GunData.hipfirespreadrecover = 100;
			GunData.hipfirespreadrecover = 100;
			GunData.bulletspeed = 5000;
			GunData.crosssize = 2;
			GunData.crossexpansion = 0;
			GunData.firerate = ScriptSettings['firerate'];
			GunData.variablefirerate = false;
			GunData.range0 = 1000;
			GunData.range1 = 1000;
			GunData.penetrationdepth = 100;
			GunData.firemodes = {true, 3, 1};
			GunData.requirechamber = false;
			GunData.animations.onfire = {};
			Args[2] = GunData;
			return G(unpack(Args));
		end;
		return G(...);
	end;

	-- Dysekts kewl function 2.0
	Char.loadgrenade = function(...) -- TODO: implement a self arg to make things look more tidy.
		if Toggles.NadeMod then
			Console'Throwing grenade(s).';
			GameLogic.gammo = math.huge;
			local Args = {...};
			local Grenade = Args[2];
			Grenade.animations.pull = {};
			Grenade.animations.throw = {};
			Args[2] = Grenade;
			Args[3][Grenade.mainpart].CFrame = P.Character.HumanoidRootPart.CFrame * CFrame.new(2,0,0);
			local ThrownGrenade = GR(unpack(Args));
			ThrownGrenade:pull();
			ThrownGrenade:throw();
			Char.grenadehold = false;
			repeat wait(1000) until nil;
			return;
		end;
		return GR(...);
	end;

	local function ESP()
		local Spotted = {};
		for i, v in ipairs(game:GetService'Players':GetPlayers'') do
			if v.TeamColor ~= P.TeamColor then
				table.insert(Spotted, v);
			end;
		end;
		Network:send('spotplayers', Spotted);
	end;

	spawn(function()
		repeat wait(1);
			if Toggles.GlobalESP then
				ESP();
			end;
		until nil;
	end);

	spawn(function()
		repeat wait(.5);
			if Toggles.Credits then
				spawn(function()
					Toggles.Credits = false;
					UpdateArrayList();
					Console('Giving infinite credits, these cannot be used to buy cases/keys.', C);
					Functions['updatemoney'](math.huge);
				end);
			end;
				
			if Toggles.UnlockAll then
				spawn(function()
					Toggles.UnlockAll=false;
					UpdateArrayList();
					Console('Unlocking weapons and attachments.', C);
					local Attachments = require(game:GetService'ReplicatedStorage'.AttachmentModules.Info);
					local Guns = game:GetService'ReplicatedStorage'.GunModules:GetChildren();
					for i, v in next, Attachments do
						v.unlockkills = 0;
					end;
					for i, v in next, Guns do
						if v.ClassName:find'Module' then
							local GunModule = require(v);
							GunModule.unlockrank = 0;
						end;
					end;
				end);
			end;

		until nil;
	end);

end);

if not Succ then
	Console(NoSucc);
end;

Console(string.format('Fully loaded VIRGO! Init time: %s seconds', tostring(tick() - InitTime)));