--Mythic Crates for CR (Keep in mind these cost 200 ROBUX each!)

local remote = Game["ReplicatedStorage"]["RemoteFunction"]
local args = {
    [1] = "Purchase",
    [2] = "Mythic Crate"
}
remote:InvokeServer(unpack(args))