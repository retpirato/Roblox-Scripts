while true do
wait(1)
spawn(function()
while true do
wait()
game:GetService("ReplicatedStorage").MysteryBox:InvokeServer("Magnificent")
game:GetService("ReplicatedStorage").MysteryBox:InvokeServer("Luxury")
game:GetService("ReplicatedStorage").MysteryBox:InvokeServer("Spectral")
game:GetService("ReplicatedStorage").MysteryBox:InvokeServer("Inferno")
game:GetService("ReplicatedStorage").MysteryBox:InvokeServer("Unreal")
end
end)
end