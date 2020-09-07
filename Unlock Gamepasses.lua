getglobal game
getfield -1 GetService
pushvalue -2
pushstring ReplicatedStorage
pcall 2 1 0
getfield -1 Dark
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
emptystack
getglobal game
getfield -1 GetService
pushvalue -2
pushstring ReplicatedStorage
pcall 2 1 0
getfield -1 Light
getfield -1 Clone
pushvalue -2
pcall 1 1 0
getglobal game
getfield -1 Players
getfield -1 LocalPlayer
getfield -1 Backpack
pushvalue -1
setfield -6 Parent
emptystack