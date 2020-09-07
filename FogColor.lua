getglobal game
getfield -1 GetService
pushvalue -2
pushstring Lighting
pcall 2 1 0
getglobal Color3
getfield -1 new
pushnumber 255
pushnumber 255
pushnumber 100
setfield -3 FogColor
emptystack