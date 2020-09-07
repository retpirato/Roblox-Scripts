---by quuisiYT
--RULES: DO NOT MODIFIY, DO NOT COPY, DO NOT REUPLOAD(u can only cange ID of song)
--Thank you for reading this c:


--Variables
local  plr = game.Players.LocalPlayer
repeat wait(.2) until plr.Character
local char = plr.Character
local song = Instance.new("Sound")
song.Parent = char.Torso
song.SoundId = "rbxassetid://1083429812"
local distort = Instance.new("DistortionSoundEffect",char.Torso)
distort.Priority = 100
song:Play()
song.Looped = true
song.Volume = 10
local speed = song.PlaybackLoudness
local runsrv = game:GetService("RunService")
local canbam = false
local bamcolour = BrickColor.new("New Yeller")
local finishedpose1 = false
local finishedpose2 = false
local legright = char.Torso["Right Hip"]
local legleft = char.Torso["Left Hip"]
local armright = char.Torso["Right Shoulder"]
local armleft = char.Torso["Left Shoulder"]
local neck = char.Torso.Neck
char.Animate:Destroy()
for i,v in pairs (char.Humanoid:GetPlayingAnimationTracks()) do
    v:Stop()
end
local legrightold = legright.C0
local legleftold = legleft.C0
local armrightold = armright.C0
local armleftold = armleft.C0
--Functions
local creatortag = Instance.new("BillboardGui")
creatortag.Size = UDim2.new(0,200,0,100)
creatortag.Parent = plr.Character.Head
creatortag.StudsOffset = Vector3.new(0,3,0)
local createtext = Instance.new("TextLabel")
createtext.Parent = creatortag
createtext:TweenSize(UDim2.new(1,0,1,0))
createtext.BackgroundTransparency = 1
createtext.TextColor3 = Color3.new(255,255,255)
createtext.Text = ":b ereh saw uuq:"
function createbeat()
	local beat = Instance.new("Part")
	beat.Parent = workspace
	beat.Anchored = true
	beat.Size = Vector3.new(2,2,2)
	beat.Transparency = 0.55
	
	beat.Shape = "Ball"
	beat.CanCollide = false
	beat.Name = plr.Name.."Beat"
	beat.CFrame = char.Torso.CFrame * CFrame.new(0,-.5,0)
	if song.TimePosition > 30 then
		beat.BrickColor = BrickColor.Random()
	else
		beat.BrickColor = bamcolour
	end
beat.Material = Enum.Material.Neon
end

workspace.ChildAdded:Connect(function(child)
	wait()
	
	if child.Name == plr.Name.."Beat" then
		--print("yey?")
		for i = 1,6 do
		child.Size = child.Size + Vector3.new(1,1,1)
		wait()
	end
	for i = 1,4 do
		child.Transparency = child.Transparency + .1
		wait()
	end
	child:Destroy()
	end
end)



function pose1()
	local i = .06
	while runsrv.RenderStepped:wait() do
		if song.PlaybackLoudness > 426 and song.TimePosition > 95 then
		i = i - song.PlaybackLoudness
		else
			i = i - .01
		end
		legright.C0 = legright.C0:Lerp(legright.C0 * CFrame.Angles(12.18, 2.17, 10.19), i)
		legleft.C0 = legleft.C0:Lerp(legleft.C0 * CFrame.Angles(12.18, 2.17, 10.19), i)
		armright.C0 = armright.C0:Lerp(armright.C0 * CFrame.Angles(12.18, 2.17, 10.19), i)
			armleft.C0 = armleft.C0:Lerp(armleft.C0 * CFrame.Angles(12.18, 2.17, 10.19), i)
		if i < 0 then
			break
		end
	end
	wait(.1)
	--pose2()
end


function pose2()
	local i = .1
	while runsrv.RenderStepped:wait() do
		if song.PlaybackLoudness > 426 and song.TimePosition > 95 then
		i = i - song.PlaybackLoudness
		else
			i = i - .01
		end
		legright.C0 = legright.C0:Lerp(legrightold * CFrame.Angles(1,0,.9), i)
		legleft.C0 = legleft.C0:Lerp(legleftold * CFrame.Angles(1,0,.9), i)
		armright.C0 = armright.C0:Lerp(armrightold * CFrame.Angles(1,0,0), i)
			armleft.C0 = armleft.C0:Lerp(armleftold* CFrame.Angles(1,0,0), i)
		if i < 0 then
			break
		end
	end
	wait(.1)
	--pose3()
end


function pose3()
	local i = .1
	while runsrv.RenderStepped:wait() do
	if song.PlaybackLoudness > 426 and song.TimePosition > 95 then
		i = i - song.PlaybackLoudness
		else
			i = i - .01
		end
		legright.C0 = legright.C0:Lerp(legrightold, i)
		legleft.C0 = legleft.C0:Lerp(legleftold, i)
		armright.C0 = armright.C0:Lerp(armrightold, i)
			armleft.C0 = armleft.C0:Lerp(armleftold, i)
		if i < 0 then
			break
		end
	end
	wait(.1)
	--pose1()
end
--Main Programm
runsrv.RenderStepped:Connect(function()
	speed = song.PlaybackLoudness
	--print(speed)
	if speed > 426 then
		if canbam == false then
			canbam = true
	char.Humanoid.Health = 1e43535
	char.Humanoid.MaxHealth = 1e43535
		--print("BAM!")
		createbeat()
		---wait()
		wait(.01)
		canbam = false
		end
	end
end)
plr.Chatted:Connect(function(message)
	if char.Head:FindFirstChild("Message") then
		char.Head:FindFirstChild("Message"):Destroy()
	end
	local messagebill = Instance.new("BillboardGui")
messagebill.Size = UDim2.new(0,200,0,100)
messagebill.Parent = plr.Character.Head
messagebill.StudsOffset = Vector3.new(0,4,0)
messagebill.Name = "Message"
local chattext = Instance.new("TextLabel")
chattext.Parent = messagebill
chattext.Size = UDim2.new(1,0,1,0)
chattext.BackgroundTransparency = 1
chattext.TextColor3 = Color3.new(60,0,100)
chattext.TextScaled =  true
local length = string.len(message)
chattext.Text = ""
for i = 1, length do
				wait(.05)
				local subText = string.sub(message, 1, i)
				
				chattext.Text = subText
end
wait(3)
if messagebill then
	for i = length,1,-1 do
		wait(.1)
		local subText = string.sub(message, 1, i)
				
				chattext.Text = subText
	end
	wait(.1)
	messagebill:Destroy()
end
end)

wait(3)
pose1()

while wait() do
		local i = .06
	while runsrv.RenderStepped:wait() do
		if song.PlaybackLoudness > 426 and song.TimePosition > 95 then
		i = i - song.PlaybackLoudness
		else
			i = i - .01
		end
		legright.C0 = legright.C0:Lerp(legright.C0 * CFrame.Angles(12.18, 2.17, 10.19), i)
		legleft.C0 = legleft.C0:Lerp(legleft.C0 * CFrame.Angles(12.18, 2.17, 10.19), i)
		armright.C0 = armright.C0:Lerp(armright.C0 * CFrame.Angles(12.18, 2.17, 10.19), i)
			armleft.C0 = armleft.C0:Lerp(armleft.C0 * CFrame.Angles(12.18, 2.17, 10.19), i)
		if i < 0 then
			break
		end
	end
	wait(.1)
	local i = .1
	while runsrv.RenderStepped:wait() do
		if song.PlaybackLoudness > 426 and song.TimePosition > 95 then
		i = i - song.PlaybackLoudness
		else
			i = i - .01
		end
		legright.C0 = legright.C0:Lerp(legrightold * CFrame.Angles(1,0,.9), i)
		legleft.C0 = legleft.C0:Lerp(legleftold * CFrame.Angles(1,0,.9), i)
		armright.C0 = armright.C0:Lerp(armrightold * CFrame.Angles(1,0,0), i)
			armleft.C0 = armleft.C0:Lerp(armleftold* CFrame.Angles(1,0,0), i)
		if i < 0 then
			break
		end
	end
	wait(.1)
	local i = .1
	while runsrv.RenderStepped:wait() do
	if song.PlaybackLoudness > 426 and song.TimePosition > 95 then
		i = i - song.PlaybackLoudness
		else
			i = i - .01
		end
		legright.C0 = legright.C0:Lerp(legrightold, i)
		legleft.C0 = legleft.C0:Lerp(legleftold, i)
		armright.C0 = armright.C0:Lerp(armrightold, i)
			armleft.C0 = armleft.C0:Lerp(armleftold, i)
		if i < 0 then
			break
		end
	end
	wait(.1)
	
end