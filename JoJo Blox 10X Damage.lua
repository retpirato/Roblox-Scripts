local meta = getrawmetatable(game)
local old = meta.__namecall
setreadonly(meta,false)
meta.__namecall = newcclosure(function(self,...)
local method = getnamecallmethod()
local args = {...}
if method == "FireServer" and self.Name == "Damage"  then
for i = 1, 10 do
old(self,...)
end
return old(self,...)
else
return old(self,...)
end
end)