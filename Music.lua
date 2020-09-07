getglobal workspace
getglobal Instance
getfield -1 new
pushstring Sound
pushvalue -4
pcall 2 0 0
emptystack
getglobal workspace
getfield -1 Sound
pushstring LuaC_Music
setfield -2 Name
emptystack
getglobal workspace
getfield -1 LuaC_Music
pushnumber 1
setfield -2 Looped
emptystack
getglobal workspace
getfield -1 LuaC_Music
pushnumber 1
setfield -2 Volume
emptystack
getglobal workspace
getfield -1 LuaC_Music
pushstring rbxassetid://606958534
setfield -2 SoundId
emptystack
getglobal workspace
getfield -1 LuaC_Music
getfield -1 Play
pushvalue -2
pcall 1 0 0
emptystack