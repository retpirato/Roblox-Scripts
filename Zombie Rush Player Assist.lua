--[[
Tarvax's Zombie Rush
This script is intended to assist with the game instead of fully botting it.
This is designed to be used with a pistol
It functions by slowly killing random zombies
As you progress, turn the speed up (tap E) to kill off zombies more quickly
Z - Enable / Disable
E - Speed up zombie Slaughter by 25%
Q - Slow down zombie Slaughter by 25%
C - Kill zombies as quickly as possible (Great for when you are in trouble)
U - Unload this script

Donations appreciated!
    BTC 1NEp47ZeVztTZ4dnSeCyhifqYexaT8r8FK

Thank you Cool Doggo for the inspiration! (https://v3rmillion.net/showthread.php?tid=865980)
]]--

local delay = 1
local running = false
local sentMessage = false
local player = game.Players.LocalPlayer
local SuperSpeed = false

-- Preloading the function names because there were some nil issues
local tzrKeyDown
local tzrKeyUp
local tzr
local unloadAll
local DeadFunc
local tzrWhile
local NotifyUser

NotifyUser = function(theMessage)
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
        Text = theMessage;
        Color = Color3.new(0, 0, 1);    
    })
end

DeadFunc = function() end

tzrKeyDown = function(inputobject)
    if inputobject.KeyCode == Enum.KeyCode.Q then
        delay = delay * 1.25
        if delay > 5 then delay = 5 end
        NotifyUser(tostring(math.floor((1/delay)*100)/100) .. " random zombie kills per second")
    elseif inputobject.KeyCode == Enum.KeyCode.E then
        delay = delay / 1.25
        if delay < 0.001 then delay = 0.001 end
        NotifyUser(tostring(math.floor((1/delay)*100)/100) .. " random zombie kills per second")
    elseif inputobject.KeyCode == Enum.KeyCode.C then
        SuperSpeed = true
        NotifyUser("SUPERSPEED")
    elseif inputobject.KeyCode == Enum.KeyCode.Z then
        if running then
            running = false
            NotifyUser("TZR Disabled")
        else
            running = true
            NotifyUser("TZR Enabled")
        end
        tzrWhile()
    elseif inputobject.KeyCode == Enum.KeyCode.U then
        pcall(unloadAll)
    end
end

tzrKeyUp = function(inputobject)
    if inputobject.KeyCode == Enum.KeyCode.C then
        SuperSpeed = false
        NotifyUser("SUPERSPEED OFF")
    end
end

tzr = function()
    local zombies = game.Workspace['Zombie Storage']:GetChildren();
    for i,zombie in pairs(game.Workspace['Zombie Storage']:GetChildren()) do
        if SuperSpeed == false then zombie = zombies[math.random(#zombies)] end
        local weaponName = player.EquipStorage.Primary.Value
        local weapon
        if player.Backpack:FindFirstChild(weaponName) then
            weapon = player.Backpack:FindFirstChild(weaponName)
        elseif player.Character:FindFirstChild(weaponName) then
            weapon = player.Character:FindFirstChild(weaponName)
        else
            weapon = nil
        end
        if weapon then
            local humanoid = zombie:FindFirstChild('Humanoid')
            if humanoid then
                spawn(function()
                    for i=1,10 do
                        weapon.GunController.RemoteFunction:InvokeServer({['Name'] = weapon.Name, ['HumanoidTables'] = {{['HeadHits'] = 1, ['THumanoid'] = humanoid, ['BodyHits'] = 0}}})
                    end
                end)
            end
        end
        if SuperSpeed == false then return end
    end
end

tzrWhile = function()
    while running == true do
        pcall(tzr)
        if SuperSpeed then
            wait(0.00001)
        else
            wait(math.floor(delay*100)/100)
        end
    end
end

unloadAll = function()
    running = false
    tzrKeyUp = DeadFunc
    tzrKeyDown = DeadFunc
    tzr = DeadFunc
    unloadAll = DeadFunc
    NotifyUser("TZR unloaded")
    NotifyUser = DeadFunc
end
game:GetService("UserInputService").InputBegan:Connect(function(inputobject) tzrKeyDown(inputobject) end)
game:GetService("UserInputService").InputEnded:Connect(function(inputobject) tzrKeyUp(inputobject) end)
NotifyUser("TZR Loaded, Press Z to enable")
