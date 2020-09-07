local meta = getrawmetatable(game)
local old = meta.__namecall
setreadonly(meta, false)
meta.__namecall = newcclosure(function(self,...)
local method = getnamecallmethod()
local args = {...}
if method == "FireServer" and self.Name == "StaminaWaste"  then
return nil
else
return old(self,...)
end
end)