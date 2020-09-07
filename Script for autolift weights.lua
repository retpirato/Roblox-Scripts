while true do
wait(1)
local tbl_main =
{
    "LiftWeight"
}
game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(tbl_main))
end


Script for autosell :

while true do
wait(20)
local tbl_main = 
{
    "SellMuscle"
}
game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(tbl_main))
end