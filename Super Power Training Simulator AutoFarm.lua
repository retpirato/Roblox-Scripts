_G.toggle = true --true ON | false OFF
while _G.toggle do
wait()
local A =
{
[1] = "+JF1"
}
local AA = game:GetService("ReplicatedStorage").RemoteEvent
AA:FireServer(A)
wait()
local B =
{
[1] = "+MS1"
}
local BB = game:GetService("ReplicatedStorage").RemoteEvent
BB:FireServer(B)
wait()
local C =
{
[1] = "+FS1"
}
local CC = game:GetService("ReplicatedStorage").RemoteEvent
CC:FireServer(C)
wait()
local D =
{
[1] = "+BT1"
}
local DD = game:GetService("ReplicatedStorage").RemoteEvent
DD:FireServer(D)
wait()
local E =
{
[1] = "+PP1"
}
local EE = game:GetService("ReplicatedStorage").RemoteEvent
EE:FireServer(E)
wait()
local F =
{
[1] = "+FS2"
}
local FF = game:GetService("ReplicatedStorage").RemoteEvent
FF:FireServer(F)
wait()
local G =
{
[1] = "+FS3"
}
local GG = game:GetService("ReplicatedStorage").RemoteEvent
GG:FireServer(G)
end