--Made by N3xul.
local reset = "ResetAvatarAppearance"
local value = true
local Event = game:GetService("ReplicatedStorage").Channels.PlayerChannel
Event:FireServer(reset, value)