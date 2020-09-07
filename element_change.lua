getglobal game
getfield -1 GetService
pushvalue -2
pushstring ReplicatedStorage
pcall 2 1 0
getfield -1 NameElement -- Must be exact. Eg. azicorn not Azicorn --
pushstring ElementHere
setfield -2 Value
emptystack