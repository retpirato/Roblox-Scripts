getglobal workspace
getfield -1 MightyDantheman
getfield -1 Health
getfield -1 Destroy
pushvalue -2
pcall 1 0 0
getglobal game
getfield -1 GetService
pushvalue -2
pushstring ReplicatedStorage
pcall 2 1 0
getfield -1 Profiles
getfield -1 MightyDantheman
getfield -1 Health
getfield -1 Destroy
pushvalue -2
pcall 1 0 0
emptystack