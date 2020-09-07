-- MT-API - 3dsboy - Auto Detects Exploit and Very cool API
if not getgenv().MTAPIMutex then loadstring(game:HttpGet("https://pastebin.com/raw/UwFCVrhS", true))() end

-- Oof that Remote..
game:GetService("ReplicatedStorage").Communication.FallDamage:AddCallHook("FireServer", function() end)

warn("Fall Damage Bypassed - HamstaGang - V3RM")