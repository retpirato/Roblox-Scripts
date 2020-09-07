getglobal while wait(0
getfield -1 1) do
getglobal game
getfield -1 Players
getfield -1 LocalPlayer
getfield -1 ChangeStat
getfield -1 InvokeServer
pushvalue -2
pushstring Update
pushstring Level
pushnumber 1
pcall 4 1 0
getglobal end