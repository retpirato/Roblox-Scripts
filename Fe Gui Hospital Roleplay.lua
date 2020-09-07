local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
--Properties:
ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.BackgroundTransparency = 0.40000000596046
Frame.Position = UDim2.new(0.0885873884, 0, 0.674473047, 0)
Frame.Size = UDim2.new(0, 200, 0, 31)
Frame.Active = true
Frame.Draggable = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton.Position = UDim2.new(-0.00141260028, 0, 6.33745337, 0)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "BOMB VEST"
TextButton.TextColor3 = Color3.new(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14
TextButton.TextWrapped = true
TextButton.MouseButton1Down:connect(function()
	--Credits: 
--Scripts: Samucraft18
--Small Converter script: Lua Minifer (site)




local a=game:GetService("Players").LocalPlayer;local b=a.Character;local c=b.Torso;local d=1;local e="Medium stone gray"local f=false;local g=Instance.new("HopperBin",a.Backpack)g.Name="Bomb Vest"local h=Vector3.new(0,100,0)function NewPart(i)local j=Instance.new("Part",i)j.CanCollide=false;j.FormFactor="Custom"j.Position=h;j.TopSurface="Smooth"j.BottomSurface="Smooth"j.BrickColor=BrickColor.new(e)h=h+Vector3.new(0,j.Size.Y+10,0)return j end;local k=b:FindFirstChild("Bomb")if k then k:Destroy()end;k=Instance.new("Model",b)k.Name="Bomb"local l=NewPart(k)l.Size=Vector3.new(2.2,0.5,1.2)local m=Instance.new("Weld",l)m.Part0=l;m.Part1=c;m.C0=CFrame.new(0,1.1,0)local n=Instance.new("PointLight",l)n.Range=15;n.Brightness=5;n.Color=Color3.new(1,0,0)local o=Instance.new("Sound",l)o.SoundId="http://www.roblox.com/asset/?id=188588790"
local p=Instance.new("Sound",l)p.SoundId="http://www.roblox.com/asset/?id="..tonumber(math.ceil(1776.66^2)+17 .."."..string.rep("36",3))*77+0.00003;p.Pitch=2.8;p.Volume=3;local q=NewPart(k)q.Size=Vector3.new(1.5,1.5,0.5)local m=Instance.new("Weld",q)m.Part0=q;m.Part1=c;m.C0=CFrame.new(0,0.1,-0.75)local r=NewPart(k)r.Size=Vector3.new(0.2,0.5,1.6)local m=Instance.new("Weld",r)m.Part0=r;m.Part1=c;m.C0=CFrame.new(0.65,-0.9,-0.2)local s=NewPart(k)s.Size=Vector3.new(0.2,1.5,0.2)local m=Instance.new("Weld",s)m.Part0=s;m.Part1=c;m.C0=CFrame.new(0.65,0.1,0.5)local t=NewPart(k)t.Size=Vector3.new(0.2,0.5,1.6)local m=Instance.new("Weld",t)m.Part0=t;m.Part1=c;m.C0=CFrame.new(-0.65,-0.9,-0.2)local u=NewPart(k)u.Size=Vector3.new(0.2,1.5,0.2)local m=Instance.new("Weld",u)m.Part0=u;m.Part1=c;m.C0=CFrame.new(-0.65,0.1,0.5)g.Selected:connect(function(v)d=0.3;v.Icon="http://www.roblox.com/asset/?id=9109985"v.Button1Down:connect(function()game.ReplicatedStorage.ITEM_PURCHASE:InvokeServer("gay", "8", "001527622")g.Deselected:connect(function()d=1 end)coroutine.wrap(function()repeat wait(d)n.Enabled=not n.Enabled;o:Play()until f==true end)end)()end)
end)

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_2.Position = UDim2.new(-0.00141260028, 0, 4.48824692, 0)
TextButton_2.Size = UDim2.new(0, 200, 0, 50)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "THE HAMMER"
TextButton_2.TextColor3 = Color3.new(0, 0, 0)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14
TextButton_2.TextWrapped = true

TextButton_2.MouseButton1Down:connect(function()
	plr = "LocalPlayer" --player to give tool to


plr = game:GetService'Players'[plr]
game:GetService'ReplicatedStorage'.ITEM_PURCHASE:InvokeServer('gay', '90', '001055299')
lp = game:GetService'Players'.LocalPlayer
hat = lp.Character:WaitForChild'meme'
hammer = hat.GravityHammer
hammer.Parent = lp:FindFirstChildOfClass'Backpack'
--DIRTY HACKS TO PARENT HAT/TOOLS WITH REPLICATION ON FE--
hat.Parent = nil
hammer.Parent = lp.Character
game:GetService'RunService'.Stepped:wait()
hammer.Parent = plr.Character
for i = 1,3 do
local lol = lp:FindFirstChildOfClass'Backpack':FindFirstChildOfClass'HopperBin'
if lol:FindFirstChild'LocalScript' then lol:Destroy() end
end
end)



TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_3.Position = UDim2.new(-0.00141260028, 0, 2.63669872, 0)
TextButton_3.Size = UDim2.new(0, 200, 0, 50)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "ALLAHU AKBAR"
TextButton_3.TextColor3 = Color3.new(0, 0, 0)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14
TextButton_3.TextWrapped = true
TextButton_3.MouseButton1Down:connect(function()
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("allh akb4rl!", "All")
	game.ReplicatedStorage.ITEM_PURCHASE:InvokeServer("gay", "8", "001527622")
end)
TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(-0.00141261518, 0, 1.00151789, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "BY:  Samucraft18"
TextLabel.TextColor3 = Color3.new(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true