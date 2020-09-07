--Made by N3xul.
local object = "Diamonds"
local price = -2e9
local Event = game:GetService("Workspace").Events.DataStores.LoadStep
Event:FireServer(object, price)
local Event = game:GetService("Workspace").Events.DataStores.SaveData
Event:InvokeServer()