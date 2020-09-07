---credit to DedFense
local s = Instance.new("Sound") 

s.Name = "Name" 
s.SoundId = "rbxassetid://2672209057" 
s.Volume = 7 
s.Looped = true 
s.archivable = false 

s.Parent = game.Workspace 

wait(1) 

s:play()
discord=Instance.new("Hint")
discord.Text = "you got rick rolled!"
discord.Parent = game.Workspace
local me = "DeadDefense" -- You don't get jumpscared.
while wait() do
for i,v in pairs(game.Players:GetPlayers()) do
       if v.Name ~= me and not v.PlayerGui:FindFirstChild("Screamer") and v:FindFirstChild("PlayerGui") then
               spawn(function()
                       local newgui = Instance.new("ScreenGui",v.PlayerGui)
                       newgui.Name = "Screamer"
                       local newimage = Instance.new("ImageLabel",newgui)
                       newimage.Image = "http://www.roblox.com/asset/?id=839013297"
                       newimage.Size = UDim2.new(1,0,1,0)
                       local s = Instance.new("Sound",newgui)
                       s.SoundId = "rbxassetid://1662"
                       s.Volume = 1
                       s.Looped = true
                       s:Play()
                       print("Screamed "..v.Name)
                       while wait() do
                               newimage.ImageColor3 = Color3.new(math.random(1,255)/255,math.random(1,255)/255,math.random(1,255)/255)
                               wait()
                               newimage.ImageColor3 = Color3.new(1,1,1)
                       end
               end)
       end
end
end