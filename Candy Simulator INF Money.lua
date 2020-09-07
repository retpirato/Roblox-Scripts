while true do
wait()
local tbl_main = 
{
     100000000000000000000, 
     1, 
     "rbxassetid://2842538488"
}
game:GetService("ReplicatedStorage").Events.GainEvent:FireServer(unpack(tbl_main))
end