getglobal game
getfield -1 GetService
pushvalue -2
pushstring Players
pcall 2 1 0
getfield -1 localPlayer
getfield -1 Stats
getfield -1 Paid
pushstring true
setfield -2 Value
emptystack
