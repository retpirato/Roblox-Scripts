-- by mudock
-- Project JoJo exploit

local P=workspace:FindFirstChildOfClass'Part'
local R=game:GetService'ReplicatedStorage':WaitForChild'Logic':WaitForChild'hitbox'
local R2=game:GetService'ReplicatedStorage':WaitForChild'Logic':WaitForChild'misc'
local LP=game:GetService'Players'.LocalPlayer
for _,a in ipairs(workspace:GetChildren())do
if(a:FindFirstChildOfClass'Humanoid'and a.Name~=LP.Name)then
    spawn(function()
        local Pa=LP.Character:FindFirstChildOfClass'Part'
        R:InvokeServer(0,Pa,Pa.CFrame,2e8,LP.Character.Torso.voiceline,a:FindFirstChildOfClass'Humanoid')
    end)
end
end
workspace.ChildAdded:Connect(function(a)
wait(.125)
if(a:FindFirstChildOfClass'Humanoid'and a.Name~=LP.Name)then
    spawn(function()
        repeat wait(.75)until not a:FindFirstChildOfClass'ForceField'
        local Pa=LP.Character:FindFirstChildOfClass'Part'
        R:InvokeServer(0,Pa,Pa.CFrame,2e8,LP.Character.Torso.voiceline,a:FindFirstChildOfClass'Humanoid')
    end)
end
end)
for _,a in ipairs(game:GetService'Players':GetPlayers())do
R2:FireServer(10,a['S/Level'],2e8,'zxck0d929easjdkadasdji29e9u2es21')
R2:FireServer(10,a['Level'],2e8,'zxck0d929easjdkadasdji29e9u2es21')
R2:FireServer(10,a['Speed'],2e8,'zxck0d929easjdkadasdji29e9u2es21')
R2:FireServer(10,a['S/Speed'],2e8,'zxck0d929easjdkadasdji29e9u2es21')
R2:FireServer(10,a['Power'],2e8,'zxck0d929easjdkadasdji29e9u2es21')
R2:FireServer(10,a['S/Power'],2e8,'zxck0d929easjdkadasdji29e9u2es21')
R2:FireServer(10,a['Stand'],'UI','zxck0d929easjdkadasdji29e9u2es21')
R2:FireServer(10,a['S/Stand'],'UI','zxck0d929easjdkadasdji29e9u2es21')
R2:FireServer(10,a['Points'],2e8,'zxck0d929easjdkadasdji29e9u2es21')
R2:FireServer(10,a['S/Points'],2e8,'zxck0d929easjdkadasdji29e9u2es21')
R2:FireServer(10,a['Special'],2e8,'zxck0d929easjdkadasdji29e9u2es21')
R2:FireServer(10,a['S/Special'],2e8,'zxck0d929easjdkadasdji29e9u2es21')
end