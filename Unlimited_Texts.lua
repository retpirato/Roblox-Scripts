_G.on = true
while _G.on do
wait()
local amount = 1 --[[ Amount of times to run ]]
for z = 1, amount do
   local remote = Game["ReplicatedStorage"]["ToolEvents"]["CashEvent"]
   local args = {}
   remote:FireServer(unpack(args))
end
end