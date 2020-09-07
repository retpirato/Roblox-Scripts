local remote = Game["ReplicatedStorage"]["Events"]["HandleUI"]
local args = {
  [1] = "VehicleMenu",
  [2] = "gamepass4",
  [3] = "Countach"
}
remote:InvokeServer(unpack(args))