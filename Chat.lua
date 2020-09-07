getglobal game
getfield -1 GetService
pushvalue -2
pushstring Players
pcall 2 1 0
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 Head
getglobal game
getfield -1 Chat
getfield -1 Chat
pushvalue -2
pushvalue -5
pushstring Your message goes here!
pushstring Blue
pcall 4 0 0
emptystack