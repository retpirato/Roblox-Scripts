local Player = game.Players.LocalPlayer
repeat wait()until Player.Character
local Char = Player.Character
local RootPart = Char.HumanoidRootPart
local Hum = Char.Humanoid
 
local TargetTeam = game.Teams.Criminal
 
function LoadChar()
    repeat wait()until Player.Character
    Char = Player.Character
    RootPart = Char.HumanoidRootPart
    Hum = Char.Humanoid
end
Player.CharacterAdded:Connect(LoadChar)
 
local Cam = workspace.CurrentCamera
 
 
local Enabled = true
if Player.Name == "Player" or Player.Name == "Player1" then
    Enabled = true
end
 
function GetOffset()
    return CFrame.new(0, 0, -1.25)
end
 
function FPView()
    Player.CameraMode = "LockFirstPerson"
end
 
function ResetView()
    Player.CameraMode = "Default"
end
 
function PointCam(pos)
    if typeof(pos) == "CFrame" then
        pos = pos.p
    end
    Cam.CFrame = CFrame.new(Cam.CFrame.p, pos)
end
 
function TPToTarget(TargetChar)
    local player = game.Players:GetPlayerFromCharacter(TargetChar)
    if not player then return end
    if player.Team == TargetTeam then
        local TargetHRP = TargetChar.HumanoidRootPart
        local offset = GetOffset()
        local pos = TargetHRP.CFrame * offset
        RootPart.CanCollide = false
        RootPart.CFrame = pos
        --RootPart.Anchored = true
        Hum.WalkSpeed, Hum.JumpPower = 0, 0
        --NoClip(Player)
        FPView()
        PointCam(TargetHRP.Position)
    else
        ToNextPlayer()
    end
end
local Target = "None"
 
function GetPlayers(parent)--either game.Players or a team
    local plrs = {}
    for i,v in pairs(parent:GetPlayers())do
        if v then
            if v ~= Player and not v:IsInGroup(3172221)then
                plrs[#plrs+1] = v
            end
        end
    end
    return plrs
end
 
 
 
local index = 0
function ToNextPlayer()
    local parent = TargetTeam
    local plrs = GetPlayers(parent)
    local newindex = index+1
    if #plrs>0 then
        index = newindex<=#plrs and newindex or 1
        Target = plrs[index].Name
    end
end
 
function Step()
    local TargetChar = workspace:FindFirstChild(Target)
    if TargetChar then
        TPToTarget(TargetChar)
    end
end
 
Player:GetMouse().KeyDown:Connect(function(k)
    k = k:lower()
    if k == "q" then
        ToNextPlayer()
    end
end)
 
 
function Start()
    ToNextPlayer()
end
 
 
 
if Enabled then
   
    Start()
   
   
   
    --run
    game:GetService("RunService").Heartbeat:Connect(function()
        if Enabled then
            Step()
        end
    end)
end