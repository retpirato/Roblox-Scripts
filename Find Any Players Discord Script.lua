-- Made By Kaeden
for i,v in pairs(game.Players:GetPlayers()) do
local api = game:HttpGet("https://verify.eryn.io/api/roblox/".. v.UserId)
local decode = game:GetService('HttpService'):JSONDecode(api)
print("\nRoblox Username: ".. v.Name .. "\nAccount Age: " .. v.AccountAge .. "\nDiscord User ID(s): " .. table.concat(decode["users"],", "))
end