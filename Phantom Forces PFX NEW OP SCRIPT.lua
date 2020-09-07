if game:GetService('CoreGui'):FindFirstChild('PFX') then 
	game:GetService('CoreGui').PFX:Destroy()
end

if PROTOSMASHER_LOADED and (not shared.repair) then
	warn("Loading ProtoSmasher Fixes, Ty wally and Classy")--credits to wally
	coroutine.wrap(function()
		pcall(function()
			loadstring(game:HttpGet("https://pastebin.com/raw/m8zyuQMv", true))()
		end)
	end)()
	repeat wait() until shared.repair
end

local getgc = (getgc or get_gc_objects);--200 iq xd
local secret953 = secret953 or debug.getupvalues;
local secret500 = secret500 or debug.setupvalue;
local getreg = getreg or debug.getregistry;

local Windows = {}
local Spotted = {}

local V = Vector3.new()
local Client = {}

for i,v in next, getgc() do
    if network and gamelogic and effects and char then
        break
    end

    if type(v) == "function" then
        for k,x in next, getupvalues(v) do
            if type(x) == "table" then
                for Func, Name in next, x do
                    if Func == "loadgrenade" and "loadgun" then
                        Client.char = x
                    elseif Func == "breakwindows" then
                        Client.effects = x
                    elseif Func == "add" then
                        Client.network = x 
                    end
                end
            end
        end
    end
end

local settings = {
    FallDamage = false,
    InfFrags = false,
    InfCreds = false,
    Esp = false,
    SpotAll = false,
    BreakWindows = false,
    InfJump = false,
    NoClip = false,
    NoRecoil = false,
    NoFlash = false,
    NoSway = false,
    NoSpread = false,
    InstaReload = false,
    RapidFire = false,
    FullAutox = false,
    oneshot = false,
    Spawn = false,
    GunMods = false,
    FireRate = false
}

local version = 'v.2.0.b'
local Updated = '8/15/2019'
local DiscordLink = 'https://discord.gg/MyjGtee'

local GoodStat = 'Hooked, Secured, Ready to use'
local MainFrameFail = 'Failed to hook mainframe'
local HookFuncFail = 'Failed to Hook Functions'
local Failure = 'Failed to Hook func, or Mainframe'

local P = game.Players
local client = game.Players.LocalPlayer

if Client then
    local LoadGun = Client.char.loadgun
    local LoadFrag = Client.char.loadgrenade

    local Char = Client.char

    local Network = Client.network

    local Effects = Client.effects

    local Send = Network.send

    local function PlayerData()
        for i, v in ipairs(game:GetService'Players':GetPlayers'') do
            if v.TeamColor ~= client.TeamColor then
                table.insert(Spotted, v);
            end;
        end;
        return Spotted
    end
    
        function BreakWindex()--llol
            for i,v in next, workspace:GetDescendants() do
                if v.Name:lower() == "window" then
                    table.insert(Windows,v)
                end
            end
            Effects:breakwindows(Windows)
        end
            --[[do
                Funcs = debug.getupvalue(Network.add, 'funcs')
                if Funcs then
        
                local OldNewBullet = Funcs.newbullet
                    function Funcs.newbullet(...)
                        local Args = {...}
                        if settings.NoRecoil or settings.GunMods then Args[1].acceleration = Vector3.new(0,0,0) end
                        return OldNewBullet(unpack(Args))
                    end
                    if settings.SpotAll then
                        Funcs.spotplayer(PlayerData())
                    end
            end]]

            do
                Network.send = function(self, ...)
                    local Args = {...};
                    if #Args > 0 then
                        local Name = Args[1];
                        if Name == 'changehealthx' then
                            if #Args > 4 and Args[5] == 'Falling' and settings.FallDamage then
                                return
                            end
                        --[[elseif settings.InfCreds then
                            Funcs['updatemoney'](math.huge)
                        end]]
                    end
                    return Send(self, ...)
                end
            end

            --[[
                [TO DO LIST]
                {finished}
            ]]
            Char.loadgun = function(...)
                local args = {...}
                local GunData = args[2]

                if settings.NoRecoil then
                    GunData.camkickmin = V
                    GunData.camkickmax = V
                    GunData.aimcamkickmin = V
                    GunData.aimcamkickmax = V
                    GunData.aimtranskickmin = V
                    GunData.aimtranskickmax = V
                    GunData.transkickmin = V
                    GunData.transkickmax = V
                    GunData.rotkickmin = V
                    GunData.rotkickmax = V
                    GunData.aimrotkickmin = V
                    GunData.aimrotkickmax = V
                end

                if settings.NoFlash then
                    GunData.hideflash = true
                    GunData.hideminimap = true
                end

                if settings.NoSway then
                    GunData.swayamp = 0
                    GunData.swayspeed = 0
                    GunData.steadyspeed = 0
                    GunData.breathspeed = 0
                end

                if settings.NoSpread then
                    GunData.hipfirespreadrecover = 100
                    GunData.hipfirespread = 0
                    GunData.hipfirestability = 0
                end

                if settings.RapidFire then
                    GunData.firerate = 1500
                    GunData.variablefirerate = false
                    GunData.firemodes = {true, 3, 1}
                    GunData.requirechamber = false
                end

                if settings.FullAutox then
                    GunData.variablefirerate = false
                    GunData.firemodes = {true, 3, 1}
                    GunData.requirechamber = false
                end

                --[[if settings.FireRate then
                    GunData.firerate = FireRateTXT.Text
                    GunData.variablefirerate = false
                    GunData.requirechamber = false
                end]]

                if settings.InstaReload then
                    for i, v in next, GunData.animations do
						if string.find(string.lower(i), "reload") then
							GunData.animations[i].timescale = 0.0
						end
                    end
                end

                if settings.GunMods then
                    GunData.hideflash = true;
                    GunData.hideminimap = true;
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
                    GunData.swayamp = 0;
                    GunData.swayspeed = 0;
                    GunData.steadyspeed = 0;
                    GunData.breathspeed = 0;
                    GunData.variablefirerate = false;
                    GunData.firemodes = {true, 3, 1};
                    GunData.requirechamber = false;
                end
            args[2] = GunData
            return LoadGun(unpack(args))
        end

        function InfJumpers()--Made by Exploit Revived(Old Lx friend ;-; he quit xd)
            local Player = game:GetService("Players").LocalPlayer;
            local UserInputService = game:GetService("UserInputService");
            local Bricks = {};
            local Space;
            local WalkInAir = false;
            
            UserInputService.InputBegan:Connect(function(
                InputObject,
                GameProcessedEvent
                )
                if (
                    (not GameProcessedEvent) and 
                    (InputObject.UserInputType == Enum.UserInputType.Keyboard)
                ) then
                    if (InputObject.KeyCode == Enum.KeyCode.P) then
                        for Key, Value in next, Bricks do
                            Value:Destroy();
                        end;
                    elseif (InputObject.KeyCode == Enum.KeyCode.Space) then
                        Space = true;
                    elseif (InputObject.KeyCode == Enum.KeyCode.L) then
                        WalkInAir = (not WalkInAir);
                    end;
                end;
            end);

            UserInputService.InputEnded:Connect(function(
                InputObject,
                GameProcessedEvent
                )
                if (
                    (not GameProcessedEvent) and
                    (InputObject.UserInputType == Enum.UserInputType.Keyboard)
                ) then
                    if (InputObject.KeyCode == Enum.KeyCode.Space) then
                        Space = nil;
                    end;
                end;
            end);

            local LastPosition = Vector3.new(0, 0, 0);

            game:GetService("RunService").RenderStepped:Connect(function()
                local PositionChanged;
                local Torso = (
                    Player.Character or
                    Player.CharacterAdded:wait()
                ):WaitForChild("Torso");
                if ((Torso.Position - LastPosition).Magnitude > 0.75) then
                    PositionChanged = true;
                end;

                if (Space or (WalkInAir and PositionChanged)) then
                    local FlyBrick = Instance.new("Part",
                    (
                        Torso:GetChildren()[1] or
                        Torso
                    )
                );

                FlyBrick.Transparency = 1;
                FlyBrick.Anchored = true;

                FlyBrick.CFrame = (
                    Torso.CFrame *
                    CFrame.new(0, -2.25, 0)
                );

                FlyBrick.Size = Vector3.new(5, 0.05, 5);
                FlyBrick.BrickColor = BrickColor.new("Institutional white");
                FlyBrick.Locked = true;
                FlyBrick.TopSurface = Enum.SurfaceType.SmoothNoOutlines;
                FlyBrick.BottomSurface = FlyBrick.TopSurface;
                FlyBrick.RightSurface = FlyBrick.TopSurface;
                FlyBrick.LeftSurface = FlyBrick.TopSurface;
                FlyBrick.FrontSurface = FlyBrick.TopSurface;
                FlyBrick.BackSurface = FlyBrick.TopSurface;
                Bricks[#Bricks + 1] = FlyBrick;
            end;
            LastPosition = Torso.Position;
        end)   
    end

        function CreateUI()
            local PFX = Instance.new("ScreenGui")
            local MainFrame = Instance.new("Frame")
            local JustAPlate = Instance.new("TextLabel")
            local Version = Instance.new("TextLabel")
            local SideTItle = Instance.new("ImageLabel")
            local MainTitle = Instance.new("ImageLabel")
            local Exit = Instance.new("TextButton")
            local Line1 = Instance.new("Frame")
            local Line2 = Instance.new("Frame")
            local NoFallDamageBTN = Instance.new("TextButton")
            local Frame = Instance.new("Frame")
            local ToggleKey = Instance.new("TextLabel")
            local NoClipBTN = Instance.new("TextButton")
            local Frame_2 = Instance.new("Frame")
            local InfJumpBTN = Instance.new("TextButton")
            local Frame_3 = Instance.new("Frame")
            local breakWindowsBTN = Instance.new("TextButton")
            local Frame_4 = Instance.new("Frame")
            local ESPBTN = Instance.new("TextButton")
            local Frame_5 = Instance.new("Frame")
            local Status = Instance.new("TextLabel")
            local Credits = Instance.new("TextLabel")
            local NoRecoilBTN = Instance.new("TextButton")
            local Frame_6 = Instance.new("Frame")
            local NoFlashBTN = Instance.new("TextButton")
            local Frame_7 = Instance.new("Frame")
            local NoSwayBTN = Instance.new("TextButton")
            local Frame_8 = Instance.new("Frame")
            local FullAutoBTN = Instance.new("TextButton")
            local Frame_9 = Instance.new("Frame")
            local InstaReloadBTN = Instance.new("TextButton")
            local Frame_10 = Instance.new("Frame")
            local RapidFireBTN = Instance.new("TextButton")
            local Frame_11 = Instance.new("Frame")
            local GunModBTN = Instance.new("TextButton")
            local Frame_12 = Instance.new("Frame")
            local DiscordInfo = Instance.new("TextLabel")
            local UpdateInfo = Instance.new("TextLabel")
            
            PFX.Name = "PFX"
            PFX.Parent = game.CoreGui
            
            MainFrame.Name = "MainFrame"
            MainFrame.Parent = PFX
            MainFrame.Active = true
            MainFrame.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
            MainFrame.BackgroundTransparency = 0.0099999997764826
            MainFrame.BorderColor3 = Color3.new(0.133333, 0.133333, 0.133333)
            MainFrame.BorderSizePixel = 0
            MainFrame.Position = UDim2.new(0.148790941, 0, 0.384246916, 0)
            MainFrame.Selectable = true
            MainFrame.Size = UDim2.new(0, 435, 0, 325)
            
            JustAPlate.Name = "JustAPlate"
            JustAPlate.Parent = MainFrame
            JustAPlate.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
            JustAPlate.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
            JustAPlate.BorderSizePixel = 0
            JustAPlate.Position = UDim2.new(0, 0, 0.0215384606, 0)
            JustAPlate.Size = UDim2.new(0, 435, 0, 32)
            JustAPlate.Font = Enum.Font.SourceSans
            JustAPlate.Text = ""
            JustAPlate.TextColor3 = Color3.new(1, 1, 1)
            JustAPlate.TextSize = 25
            
            Version.Name = "Version"
            Version.Parent = JustAPlate
            Version.BackgroundColor3 = Color3.new(1, 1, 1)
            Version.BackgroundTransparency = 1
            Version.Position = UDim2.new(0.572413802, 0, 0.1875, 0)
            Version.Size = UDim2.new(0, 97, 0, 26)
            Version.Font = Enum.Font.SourceSans
            Version.Text = "v.1.7.b"
            Version.TextColor3 = Color3.new(1, 1, 1)
            Version.TextSize = 20
            Version.TextXAlignment = Enum.TextXAlignment.Left
            
            SideTItle.Name = "SideTItle"
            SideTItle.Parent = JustAPlate
            SideTItle.BackgroundColor3 = Color3.new(1, 1, 1)
            SideTItle.BackgroundTransparency = 1
            SideTItle.Position = UDim2.new(0.0206896197, 0, -0.65625, 0)
            SideTItle.Size = UDim2.new(0, 131, 0, 80)
            SideTItle.Image = "rbxassetid://3632678994"
            
            MainTitle.Name = "MainTitle"
            MainTitle.Parent = JustAPlate
            MainTitle.BackgroundColor3 = Color3.new(1, 1, 1)
            MainTitle.BackgroundTransparency = 1
            MainTitle.Position = UDim2.new(0.190804526, 0, -1.34375, 0)
            MainTitle.Size = UDim2.new(0, 180, 0, 121)
            MainTitle.Image = "rbxassetid://3632679485"
            
            Exit.Name = "Exit"
            Exit.Parent = JustAPlate
            Exit.BackgroundColor3 = Color3.new(1, 1, 1)
            Exit.BackgroundTransparency = 1
            Exit.Position = UDim2.new(0.912643671, 0, 0, 0)
            Exit.Size = UDim2.new(0, 38, 0, 32)
            Exit.Font = Enum.Font.SourceSans
            Exit.Text = "❌ "
            Exit.TextColor3 = Color3.new(0, 0, 0)
            Exit.TextSize = 14
            
            Line1.Name = "Line1"
            Line1.Parent = MainFrame
            Line1.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
            Line1.BackgroundTransparency = 0.20000000298023
            Line1.BorderSizePixel = 0
            Line1.Position = UDim2.new(-0.0183908045, 0, 0.0923076943, 0)
            Line1.Size = UDim2.new(0, 8, 0, 302)
            
            Line2.Name = "Line2"
            Line2.Parent = MainFrame
            Line2.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
            Line2.BackgroundTransparency = 0.20000000298023
            Line2.BorderSizePixel = 0
            Line2.Position = UDim2.new(0, 0, 1.00000012, 0)
            Line2.Size = UDim2.new(0, 423, 0, 7)
            
            NoFallDamageBTN.Name = "NoFallDamageBTN"
            NoFallDamageBTN.Parent = MainFrame
            NoFallDamageBTN.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            NoFallDamageBTN.BackgroundTransparency = 0.5
            NoFallDamageBTN.BorderSizePixel = 0
            NoFallDamageBTN.Position = UDim2.new(0.0620689653, 0, 0.144615382, 0)
            NoFallDamageBTN.Size = UDim2.new(0, 104, 0, 28)
            NoFallDamageBTN.Font = Enum.Font.SourceSans
            NoFallDamageBTN.Text = "No Fall Damage"
            NoFallDamageBTN.TextColor3 = Color3.new(1, 1, 1)
            NoFallDamageBTN.TextSize = 18
            
            Frame.Parent = NoFallDamageBTN
            Frame.BackgroundColor3 = Color3.new(0.0941177, 0.0941177, 0.0941177)
            Frame.BorderSizePixel = 0
            Frame.Position = UDim2.new(0, 0, 0.928571701, 0)
            Frame.Size = UDim2.new(0, 104, 0, 2)
            
            ToggleKey.Name = "ToggleKey"
            ToggleKey.Parent = MainFrame
            ToggleKey.BackgroundColor3 = Color3.new(1, 1, 1)
            ToggleKey.BackgroundTransparency = 1
            ToggleKey.Position = UDim2.new(0.751724124, 0, 0.916923285, 0)
            ToggleKey.Size = UDim2.new(0, 108, 0, 26)
            ToggleKey.Font = Enum.Font.SourceSans
            ToggleKey.Text = "Press 'p' to Toggle"
            ToggleKey.TextColor3 = Color3.new(1, 1, 1)
            ToggleKey.TextSize = 14
            
            NoClipBTN.Name = "NoClipBTN"
            NoClipBTN.Parent = MainFrame
            NoClipBTN.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            NoClipBTN.BackgroundTransparency = 0.5
            NoClipBTN.BorderSizePixel = 0
            NoClipBTN.Position = UDim2.new(0.358620673, 0, 0.141538516, 0)
            NoClipBTN.Size = UDim2.new(0, 104, 0, 28)
            NoClipBTN.Font = Enum.Font.SourceSans
            NoClipBTN.Text = "NoClip: OFF"
            NoClipBTN.TextColor3 = Color3.new(1, 1, 1)
            NoClipBTN.TextSize = 20
            
            Frame_2.Parent = NoClipBTN
            Frame_2.BackgroundColor3 = Color3.new(0.0941177, 0.0941177, 0.0941177)
            Frame_2.BorderSizePixel = 0
            Frame_2.Position = UDim2.new(0, 0, 0.928571701, 0)
            Frame_2.Size = UDim2.new(0, 104, 0, 2)
            
            InfJumpBTN.Name = "InfJumpBTN"
            InfJumpBTN.Parent = MainFrame
            InfJumpBTN.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            InfJumpBTN.BackgroundTransparency = 0.5
            InfJumpBTN.BorderSizePixel = 0
            InfJumpBTN.Position = UDim2.new(0.668965459, 0, 0.144615352, 0)
            InfJumpBTN.Size = UDim2.new(0, 104, 0, 28)
            InfJumpBTN.Font = Enum.Font.SourceSans
            InfJumpBTN.Text = "Inf Jump"
            InfJumpBTN.TextColor3 = Color3.new(1, 1, 1)
            InfJumpBTN.TextSize = 20
            
            Frame_3.Parent = InfJumpBTN
            Frame_3.BackgroundColor3 = Color3.new(0.0941177, 0.0941177, 0.0941177)
            Frame_3.BorderSizePixel = 0
            Frame_3.Position = UDim2.new(0, 0, 0.928571701, 0)
            Frame_3.Size = UDim2.new(0, 104, 0, 2)
            
            breakWindowsBTN.Name = "breakWindowsBTN"
            breakWindowsBTN.Parent = MainFrame
            breakWindowsBTN.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            breakWindowsBTN.BackgroundTransparency = 0.5
            breakWindowsBTN.BorderSizePixel = 0
            breakWindowsBTN.Position = UDim2.new(0.358620673, 0, 0.279999971, 0)
            breakWindowsBTN.Size = UDim2.new(0, 104, 0, 28)
            breakWindowsBTN.Font = Enum.Font.SourceSans
            breakWindowsBTN.Text = "Break Windows"
            breakWindowsBTN.TextColor3 = Color3.new(1, 1, 1)
            breakWindowsBTN.TextSize = 19
            
            Frame_4.Parent = breakWindowsBTN
            Frame_4.BackgroundColor3 = Color3.new(0.0941177, 0.0941177, 0.0941177)
            Frame_4.BorderSizePixel = 0
            Frame_4.Position = UDim2.new(0, 0, 0.928571701, 0)
            Frame_4.Size = UDim2.new(0, 104, 0, 2)
            
            ESPBTN.Name = "ESPBTN"
            ESPBTN.Parent = MainFrame
            ESPBTN.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            ESPBTN.BackgroundTransparency = 0.5
            ESPBTN.BorderSizePixel = 0
            ESPBTN.Position = UDim2.new(0.0620689653, 0, 0.280000001, 0)
            ESPBTN.Size = UDim2.new(0, 104, 0, 28)
            ESPBTN.Font = Enum.Font.SourceSans
            ESPBTN.Text = "Esp: OFF"
            ESPBTN.TextColor3 = Color3.new(1, 1, 1)
            ESPBTN.TextSize = 20
            
            Frame_5.Parent = ESPBTN
            Frame_5.BackgroundColor3 = Color3.new(0.0941177, 0.0941177, 0.0941177)
            Frame_5.BorderSizePixel = 0
            Frame_5.Position = UDim2.new(0, 0, 0.928571701, 0)
            Frame_5.Size = UDim2.new(0, 104, 0, 2)
            
            Status.Name = "Status"
            Status.Parent = MainFrame
            Status.BackgroundColor3 = Color3.new(1, 1, 1)
            Status.BackgroundTransparency = 2
            Status.Position = UDim2.new(0.0482758619, 0, 0.86461544, 0)
            Status.Size = UDim2.new(0, 392, 0, 17)
            Status.Font = Enum.Font.SourceSans
            Status.Text = "Functionality Status : NIL"
            Status.TextColor3 = Color3.new(1, 0.141176, 0.0666667)
            Status.TextSize = 20
            Status.TextXAlignment = Enum.TextXAlignment.Left
            
            Credits.Name = "Credits"
            Credits.Parent = MainFrame
            Credits.BackgroundColor3 = Color3.new(1, 1, 1)
            Credits.BackgroundTransparency = 2
            Credits.Position = UDim2.new(0.0482758619, 0, 0.916923106, 0)
            Credits.Size = UDim2.new(0, 392, 0, 17)
            Credits.Font = Enum.Font.SourceSans
            Credits.Text = "Made by ThisW0ntGetBanned#0001"
            Credits.TextColor3 = Color3.new(1, 0.454902, 0.0941177)
            Credits.TextSize = 20
            Credits.TextXAlignment = Enum.TextXAlignment.Left
            
            NoRecoilBTN.Name = "NoRecoilBTN"
            NoRecoilBTN.Parent = MainFrame
            NoRecoilBTN.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            NoRecoilBTN.BackgroundTransparency = 0.5
            NoRecoilBTN.BorderSizePixel = 0
            NoRecoilBTN.Position = UDim2.new(0.0620689392, 0, 0.412307739, 0)
            NoRecoilBTN.Size = UDim2.new(0, 104, 0, 28)
            NoRecoilBTN.Font = Enum.Font.SourceSans
            NoRecoilBTN.Text = "No Recoil"
            NoRecoilBTN.TextColor3 = Color3.new(1, 1, 1)
            NoRecoilBTN.TextSize = 20
            
            Frame_6.Parent = NoRecoilBTN
            Frame_6.BackgroundColor3 = Color3.new(0.0941177, 0.0941177, 0.0941177)
            Frame_6.BorderSizePixel = 0
            Frame_6.Position = UDim2.new(0, 0, 0.928571701, 0)
            Frame_6.Size = UDim2.new(0, 104, 0, 2)
            
            NoFlashBTN.Name = "NoFlashBTN"
            NoFlashBTN.Parent = MainFrame
            NoFlashBTN.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            NoFlashBTN.BackgroundTransparency = 0.5
            NoFlashBTN.BorderSizePixel = 0
            NoFlashBTN.Position = UDim2.new(0.358620733, 0, 0.412307709, 0)
            NoFlashBTN.Size = UDim2.new(0, 104, 0, 28)
            NoFlashBTN.Font = Enum.Font.SourceSans
            NoFlashBTN.Text = "No Flash"
            NoFlashBTN.TextColor3 = Color3.new(1, 1, 1)
            NoFlashBTN.TextSize = 20
            
            Frame_7.Parent = NoFlashBTN
            Frame_7.BackgroundColor3 = Color3.new(0.0941177, 0.0941177, 0.0941177)
            Frame_7.BorderSizePixel = 0
            Frame_7.Position = UDim2.new(0, 0, 0.928571701, 0)
            Frame_7.Size = UDim2.new(0, 104, 0, 2)
            
            NoSwayBTN.Name = "NoSwayBTN"
            NoSwayBTN.Parent = MainFrame
            NoSwayBTN.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            NoSwayBTN.BackgroundTransparency = 0.5
            NoSwayBTN.BorderSizePixel = 0
            NoSwayBTN.Position = UDim2.new(0.666666687, 0, 0.280000031, 0)
            NoSwayBTN.Size = UDim2.new(0, 104, 0, 28)
            NoSwayBTN.Font = Enum.Font.SourceSans
            NoSwayBTN.Text = "No Sway"
            NoSwayBTN.TextColor3 = Color3.new(1, 1, 1)
            NoSwayBTN.TextSize = 20
            
            Frame_8.Parent = NoSwayBTN
            Frame_8.BackgroundColor3 = Color3.new(0.0941177, 0.0941177, 0.0941177)
            Frame_8.BorderSizePixel = 0
            Frame_8.Position = UDim2.new(0, 0, 0.928571701, 0)
            Frame_8.Size = UDim2.new(0, 104, 0, 2)
            
            FullAutoBTN.Name = "FullAutoBTN"
            FullAutoBTN.Parent = MainFrame
            FullAutoBTN.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            FullAutoBTN.BackgroundTransparency = 0.5
            FullAutoBTN.BorderSizePixel = 0
            FullAutoBTN.Position = UDim2.new(0.664367855, 0, 0.412307739, 0)
            FullAutoBTN.Size = UDim2.new(0, 104, 0, 28)
            FullAutoBTN.Font = Enum.Font.SourceSans
            FullAutoBTN.Text = "Full Auto"
            FullAutoBTN.TextColor3 = Color3.new(1, 1, 1)
            FullAutoBTN.TextSize = 20
            
            Frame_9.Parent = FullAutoBTN
            Frame_9.BackgroundColor3 = Color3.new(0.0941177, 0.0941177, 0.0941177)
            Frame_9.BorderSizePixel = 0
            Frame_9.Position = UDim2.new(0, 0, 0.928571701, 0)
            Frame_9.Size = UDim2.new(0, 104, 0, 2)
            
            InstaReloadBTN.Name = "InstaReloadBTN"
            InstaReloadBTN.Parent = MainFrame
            InstaReloadBTN.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            InstaReloadBTN.BackgroundTransparency = 0.5
            InstaReloadBTN.BorderSizePixel = 0
            InstaReloadBTN.Position = UDim2.new(0.0620689988, 0, 0.538461566, 0)
            InstaReloadBTN.Size = UDim2.new(0, 104, 0, 28)
            InstaReloadBTN.Font = Enum.Font.SourceSans
            InstaReloadBTN.Text = "Insta Reload"
            InstaReloadBTN.TextColor3 = Color3.new(1, 1, 1)
            InstaReloadBTN.TextSize = 20
            
            Frame_10.Parent = InstaReloadBTN
            Frame_10.BackgroundColor3 = Color3.new(0.0941177, 0.0941177, 0.0941177)
            Frame_10.BorderSizePixel = 0
            Frame_10.Position = UDim2.new(0, 0, 0.928571701, 0)
            Frame_10.Size = UDim2.new(0, 104, 0, 2)
            
            RapidFireBTN.Name = "RapidFireBTN"
            RapidFireBTN.Parent = MainFrame
            RapidFireBTN.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            RapidFireBTN.BackgroundTransparency = 0.5
            RapidFireBTN.BorderSizePixel = 0
            RapidFireBTN.Position = UDim2.new(0.356321901, 0, 0.538461566, 0)
            RapidFireBTN.Size = UDim2.new(0, 104, 0, 28)
            RapidFireBTN.Font = Enum.Font.SourceSans
            RapidFireBTN.Text = "Rapid Fire"
            RapidFireBTN.TextColor3 = Color3.new(1, 1, 1)
            RapidFireBTN.TextSize = 20
            
            Frame_11.Parent = RapidFireBTN
            Frame_11.BackgroundColor3 = Color3.new(0.0941177, 0.0941177, 0.0941177)
            Frame_11.BorderSizePixel = 0
            Frame_11.Position = UDim2.new(0, 0, 0.928571701, 0)
            Frame_11.Size = UDim2.new(0, 104, 0, 2)
            
            GunModBTN.Name = "GunModBTN"
            GunModBTN.Parent = MainFrame
            GunModBTN.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
            GunModBTN.BackgroundTransparency = 0.5
            GunModBTN.BorderSizePixel = 0
            GunModBTN.Position = UDim2.new(0.664367855, 0, 0.538461566, 0)
            GunModBTN.Size = UDim2.new(0, 104, 0, 28)
            GunModBTN.Font = Enum.Font.SourceSans
            GunModBTN.Text = "Gun Mods(All)"
            GunModBTN.TextColor3 = Color3.new(1, 1, 1)
            GunModBTN.TextSize = 20
            
            Frame_12.Parent = GunModBTN
            Frame_12.BackgroundColor3 = Color3.new(0.0941177, 0.0941177, 0.0941177)
            Frame_12.BorderSizePixel = 0
            Frame_12.Position = UDim2.new(0, 0, 0.928571701, 0)
            Frame_12.Size = UDim2.new(0, 104, 0, 2)
            
            DiscordInfo.Name = "DiscordInfo"
            DiscordInfo.Parent = MainFrame
            DiscordInfo.BackgroundColor3 = Color3.new(1, 1, 1)
            DiscordInfo.BackgroundTransparency = 2
            DiscordInfo.Position = UDim2.new(0.0482758619, 0, 0.76000011, 0)
            DiscordInfo.Size = UDim2.new(0, 392, 0, 17)
            DiscordInfo.Font = Enum.Font.SourceSans
            DiscordInfo.Text = "Discord : "
            DiscordInfo.TextColor3 = Color3.new(0.156863, 0.211765, 0.713726)
            DiscordInfo.TextSize = 20
            DiscordInfo.TextXAlignment = Enum.TextXAlignment.Left
            
            UpdateInfo.Name = "UpdateInfo"
            UpdateInfo.Parent = MainFrame
            UpdateInfo.BackgroundColor3 = Color3.new(1, 1, 1)
            UpdateInfo.BackgroundTransparency = 2
            UpdateInfo.Position = UDim2.new(0.0482758619, 0, 0.812307775, 0)
            UpdateInfo.Size = UDim2.new(0, 392, 0, 17)
            UpdateInfo.Font = Enum.Font.SourceSans
            UpdateInfo.Text = "Last Updated : "
            UpdateInfo.TextColor3 = Color3.new(0.333333, 1, 0)
            UpdateInfo.TextSize = 20
            UpdateInfo.TextXAlignment = Enum.TextXAlignment.Left                                      
            
            UpdateInfo.Text = 'Last Updated : '..tostring(Updated)
            DiscordInfo.Text = 'Discord : '..DiscordLink
            Version.Text = tostring(version)

            if Client then
                Status.Text = 'Functionality Status : '..GoodStat
            end

            if not Client then
                Status.Text = 'Functionality Status : '..MainFrameFail
            end

            if not Client and not Network then
                Status.Text = 'Functionality Status : '..Failure
            end

            MainFrame.Draggable = true

            Exit.MouseButton1Click:connect(function()
                if game:GetService('CoreGui'):FindFirstChild('PFX') then 
                    game:GetService('CoreGui').PFX:Destroy()
                end
            end)

            --[[SpotAllBTN.MouseButton1Click:connect(function()
                settings.SpotAll = not settings.SpotAll
                if settings.SpotAll then
                    for i, v in next, PlayerData() do
                        Funcs.spotplayer(v) 
                    end
                end
            end)]]

            NoFallDamageBTN.MouseButton1Click:connect(function()
                settings.FallDamage = not settings.FallDamage
                if settings.FallDamage then
                end
            end)

            NoClipBTN.MouseButton1Click:connect(function()
                if NoClipBTN.Text == "NoClip: OFF" then
                    settings.NoClip = true
                    NoClipBTN.Text = "NoClip: ON"
                    NoClipBTN.TextColor3 = Color3.new(0,185,0)
                    Stepped = game:GetService("RunService").Stepped:Connect(function()
                        if not settings.NoClip == false then
                            for a, b in pairs(Workspace:GetChildren()) do
                                if b.Name == client.Name then
                                    for i, v in pairs(Workspace[client.Name]:GetChildren()) do
                                        if v:IsA("BasePart") then
                                            v.CanCollide = false
                                        end
                                    end
                                end
                            end
                        else
                            Stepped:Disconnect()
                        end
                    end)
                        elseif NoClipBTN.Text == "NoClip: ON" then
                    settings.NoClip = false
                    NoClipBTN.Text = "NoClip: OFF"
                    NoClipBTN.TextColor3 = Color3.new(170,0,0)
                end
            end)

            --[[InfCredsBTN.MouseButton1Click:connect(function()
                settings.InfCreds = not settings.InfCreds
                if settings.InfCreds then
                end
            end)]]
            
            InfJumpBTN.MouseButton1Click:connect(function()
                settings.InfJump = not settings.InfJump 
                if settings.InfJump then
                    InfJumpers()
                end
            end)
            
            breakWindowsBTN.MouseButton1Click:connect(function()
                settings.BreakWindows = not settings.BreakWindows
                if settings.BreakWindows then
                    BreakWindex()
                end
            end)
            
            ESPBTN.MouseButton1Click:connect(function()
                settings.Esp = not settings.Esp 
                if settings.Esp then
                    ESPBTN.Text = "Esp: ON"
                    ESPBTN.TextColor3 = Color3.new(0,185,0)
                    for _,p in pairs(game:GetChildren()) do
                        if p.ClassName == ("Players") then
                        plrs = p
                        end
                     end
    
                     while true do
                        wait(0.1)
                        for _, v in pairs(plrs:GetChildren()) do
                            if v.TeamColor ~= plrs.LocalPlayer.TeamColor and not v.Character.Head:FindFirstChild("BillboardGui") then
                                i = Instance.new("BillboardGui",v.Character.Head)
                                i.Active = true
                                i.AlwaysOnTop = true
                                i.Size = UDim2.new(1,0,1,0)
                                h = Instance.new("Frame",i)
                                h.Size = UDim2.new(2,0,1,0)
                                h.AnchorPoint = Vector2.new(0.25, 0)
                                h.BackgroundColor3 = Color3.new(1,0,0)
                                h.BorderSizePixel = 0
                                h.BackgroundTransparency = 0.4
                                
                                i2 = Instance.new("BillboardGui",v.Character.Torso)
                                i2.Active = true
                                i2.AlwaysOnTop = true
                                i2.Size = UDim2.new(2,0,2,0)
                                t = Instance.new("Frame",i2)
                                t.Size = UDim2.new(1,0,1,0)
                                t.AnchorPoint = Vector2.new(0, 0)
                                t.BackgroundColor3 = Color3.new(0,1,0)
                                t.BorderSizePixel = 0
                                t.BackgroundTransparency = 0.4
                                
                                i3 = Instance.new("BillboardGui",v.Character["Left Arm"])
                                i3.Active = true
                                i3.AlwaysOnTop = true
                                i3.Size = UDim2.new(1,0,2,0)
                                la = Instance.new("Frame",i3)
                                la.Size = UDim2.new(1,0,1,0)
                                la.AnchorPoint = Vector2.new(0, 0)
                                la.BackgroundColor3 = Color3.new(0,0,1)
                                la.BorderSizePixel = 0
                                la.BackgroundTransparency = 0.4
                                
                                i4 = Instance.new("BillboardGui",v.Character["Right Arm"])
                                i4.Active = true
                                i4.AlwaysOnTop = true
                                i4.Size = UDim2.new(1,0,2,0)
                                ra = Instance.new("Frame",i4)
                                ra.Size = UDim2.new(1,0,1,0)
                                ra.AnchorPoint = Vector2.new(0, 0)
                                ra.BackgroundColor3 = Color3.new(0,0,1)
                                ra.BorderSizePixel = 0
                                ra.BackgroundTransparency = 0.4
                                
                                i5 = Instance.new("BillboardGui",v.Character["Left Leg"])
                                i5.Active = true
                                i5.AlwaysOnTop = true
                                i5.Size = UDim2.new(1,0,2,0)
                                ll = Instance.new("Frame",i5)
                                ll.Size = UDim2.new(1,0,1,0)
                                ll.AnchorPoint = Vector2.new(0, 0)
                                ll.BackgroundColor3 = Color3.new(0,0,1)
                                ll.BorderSizePixel = 0
                                ll.BackgroundTransparency = 0.4
                                
                                i6 = Instance.new("BillboardGui",v.Character["Right Leg"])
                                i6.Active = true
                                i6.AlwaysOnTop = true
                                i6.Size = UDim2.new(1,0,2,0)
                                rl = Instance.new("Frame",i6)
                                rl.Size = UDim2.new(1,0,1,0)
                                rl.AnchorPoint = Vector2.new(0, 0)
                                rl.BackgroundColor3 = Color3.new(0,0,1)
                                rl.BorderSizePixel = 0
                                rl.BackgroundTransparency = 0.4
                            end
                        end
                    end
                else
                    ESPBTN.Text = "Esp: OFF"
                    ESPBTN.TextColor3 = Color3.new(170,0,0)
                    for i, v in next, game.Players:GetChildren() do--Could be very BUGGY
                        v.Character.Head:FindFirstChild("BillboardGui"):Remove()   
                        v.Character.Torso:FindFirstChild("BillboardGui"):Remove()  
                        v.Character["Left Arm"]:FindFirstChild("BillboardGui"):Remove()  
                        v.Character["Right Arm"]:FindFirstChild("BillboardGui"):Remove()
                        v.Character["Right Leg"]:FindFirstChild("BillboardGui"):Remove()
                        v.Character["Left Leg"]:FindFirstChild("BillboardGui"):Remove()
                    end
                end
            end)
            
            --[[InFagsBTN.MouseButton1Click:connect(function()
                settings.InfFrags = not settings.InfFrags
                if settings.InfFrags then
                end
            end)]]
            
            NoFlashBTN.MouseButton1Click:connect(function()
                settings.NoFlash = not settings.NoFlash
                if settings.NoFlash then
                end
            end)
            
            NoSwayBTN.MouseButton1Click:connect(function()
                settings.NoSway = not settings.NoSway
                if settings.NoSway then
                end
            end)
            
            --[[FireRateBTN.MouseButton1Click:connect(function()
                settings.FireRate = not settings.FireRate
                if settings.FireRate then
                end
            end)]]

            GunModBTN.MouseButton1Click:connect(function()
                settings.GunMods = not settings.GunMods
                if settings.GunMods then
                end
            end)
            
            InstaReloadBTN.MouseButton1Click:connect(function()
                settings.InstaReload = not settings.InstaReload 
                if settings.InstaReload then
                end
            end)
            
            RapidFireBTN.MouseButton1Click:connect(function()
                settings.RapidFire = not settings.RapidFire
                if settings.RapidFire then
                end
            end)
            
            FullAutoBTN.MouseButton1Click:connect(function()
                settings.FullAutox = not settings.FullAutox
                if settings.FullAutox then
                end
            end)
            
            NoRecoilBTN.MouseButton1Click:connect(function()
                settings.NoRecoil = not settings.NoRecoil
                if settings.NoRecoil then
                end
            end)

            game:GetService("UserInputService").InputBegan:Connect(function(key,ischat)
                if ischat then return end
                if key.KeyCode == Enum.KeyCode.P then
                    MainFrame.Visible = not MainFrame.Visible
                end
            end)

            function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end

            local counter1 = 1
    
            while wait() do
                MainTitle.ImageColor3 = Color3.fromHSV(zigzag(counter1),1,1)
                SideTItle.ImageColor3 = Color3.fromHSV(zigzag(counter1),1,1)
                counter1 = counter1 + 0.01
            end
        end
        CreateUI()
    end
end