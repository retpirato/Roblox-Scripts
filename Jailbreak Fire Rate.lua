local newcclosure = newcclosure or function(f)
return f
end

local getreg = debug.getregistry or getreg

if not getreg then
warn("Your exploit does not support the functions required for this script")
end

local pistol
local rifle
local rocketlauncher
local shotgun
local ak47

for _,o in pairs(getreg()) do
if typeof(o) == "table" then
if o.Pistol then
pistol = o.Pistol
rifle = o.Rifle
rocketlauncher = o.RocketLauncher
shotgun = o.Shotgun
ak47 = o.AK47
end
end
end

if pistol then
pistol.MagSize = math.huge
pistol.FireAuto = true
pistol.FireFreq = 5000
pistol.BulletSpread = 0
pistol.BulletSpeed = 5000
warn("Modded the pistol")
end

if rifle then
rifle.MagSize = math.huge
rifle.FireAuto = true
rifle.FireFreq = 5000
rifle.BulletSpread = 0
rifle.BulletSpeed = 5000
warn("Modded the rifle")
end

if rocketlauncher then
rocketlauncher.MagSize = math.huge
rocketlauncher.FireAuto = true
rocketlauncher.FireFreq = 5000
rocketlauncher.BulletSpread = 0
rocketlauncher.BulletSpeed = 5000
warn("Modded the Rocket Launcher")
end

if shotgun then
shotgun.MagSize = math.huge
shotgun.FireAuto = true
shotgun.FireFreq = 5000
shotgun.BulletSpread = 0
shotgun.BulletSpeed = 5000
warn("Modded the Shotgun")
end

if ak47 then
ak47.MagSize = math.huge
ak47.FireAuto = true
ak47.FireFreq = 5000
ak47.BulletSpread = 0
ak47.BulletSpeed = 5000
warn("Modded the AK47")
end