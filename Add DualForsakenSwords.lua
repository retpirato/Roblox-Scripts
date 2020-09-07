getglobal game
getfield -1 GetService
pushvalue -2
pushstring Lighting
pcall 2 1 0
getfield -1 DualForsakenSwords
getfield -1 Clone
pushvalue -2
pcall 1 1 0
getglobal game
getfield -1 GetService
pushvalue -2
pushstring Players
pcall 2 1 0
getfield -1 LocalPlayer
getfield -1 Backpack
pushvalue -1
setfield -6 Parent
getglobal game
getfield -1 Lighting
getfield -1 DualForsakenSwords
getfield -1 Clone
pushvalue -2
pcall 1 1 0
getglobal game
getfield -1 GetService
pushvalue -2
pushstring Players
pcall 2 1 0
getfield -1 LocalPlayer
getfield -1 StarterGear
pushvalue -1
setfield -6 Parent
emptystack