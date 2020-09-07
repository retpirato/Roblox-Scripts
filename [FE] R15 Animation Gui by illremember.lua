-- Objects

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local top = Instance.new("Frame")
local close = Instance.new("TextButton")
local menu = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local cheerdance = Instance.new("TextButton")
local Guitar = Instance.new("TextButton")
local Shake = Instance.new("TextButton")
local insane = Instance.new("TextButton")
local flingarms = Instance.new("TextButton")
local rotate = Instance.new("TextButton")
local bend = Instance.new("TextButton")
local floatslash = Instance.new("TextButton")
local quickjump = Instance.new("TextButton")
local spin = Instance.new("TextButton")
local fastspin = Instance.new("TextButton")
local Swordswing = Instance.new("TextButton")
local spinslice = Instance.new("TextButton")
local airarms = Instance.new("TextButton")
local detacharms = Instance.new("TextButton")
local spear = Instance.new("TextButton")
local armshake = Instance.new("TextButton")

-- Properties

ScreenGui.Parent = game.CoreGui

Main.Name = "Main"
Main.Parent = ScreenGui
Main.Active = true
Main.BackgroundColor3 = Color3.new(0.941177, 0.941177, 0.941177)
Main.ClipsDescendants = true
Main.Draggable = true
Main.Position = UDim2.new(0, 355, 0, 40)
Main.Size = UDim2.new(0, 435, 0, 271)

top.Name = "top"
top.Parent = Main
top.BackgroundColor3 = Color3.new(0.160784, 0.501961, 0.72549)
top.BorderSizePixel = 0
top.Size = UDim2.new(0, 435, 0, 20)

close.Name = "close"
close.Parent = top
close.BackgroundColor3 = Color3.new(1, 1, 1)
close.BackgroundTransparency = 1
close.Position = UDim2.new(0, 410, 0, 0)
close.Size = UDim2.new(0, 25, 0, 20)
close.Font = Enum.Font.SourceSansSemibold
close.Text = "X"
close.TextColor3 = Color3.new(0.937255, 0.937255, 0.937255)
close.TextSize = 25
close.TextWrapped = true

menu.Name = "menu"
menu.Parent = Main
menu.BackgroundColor3 = Color3.new(0.203922, 0.596078, 0.858824)
menu.BorderSizePixel = 0
menu.Position = UDim2.new(0, 0, 0, 20)
menu.Size = UDim2.new(0, 435, 0, 35)

TextLabel.Parent = menu
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(0, 435, 0, 35)
TextLabel.Font = Enum.Font.SourceSansLight
TextLabel.Text = "Super Animation [R15]"
TextLabel.TextColor3 = Color3.new(0.933333, 0.933333, 0.933333)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

cheerdance.Name = "cheerdance"
cheerdance.Parent = Main
cheerdance.BackgroundColor3 = Color3.new(0.298039, 0.298039, 0.298039)
cheerdance.BorderSizePixel = 0
cheerdance.Position = UDim2.new(0, 10, 0, 65)
cheerdance.Size = UDim2.new(0, 135, 0, 25)
cheerdance.AutoButtonColor = false
cheerdance.Font = Enum.Font.SourceSans
cheerdance.Text = "Cheer Dance"
cheerdance.TextColor3 = Color3.new(0.901961, 0.901961, 0.901961)
cheerdance.TextSize = 20
cheerdance.TextWrapped = true

Guitar.Name = "Guitar"
Guitar.Parent = Main
Guitar.BackgroundColor3 = Color3.new(0.298039, 0.298039, 0.298039)
Guitar.BorderSizePixel = 0
Guitar.Position = UDim2.new(0, 150, 0, 65)
Guitar.Size = UDim2.new(0, 135, 0, 25)
Guitar.AutoButtonColor = false
Guitar.Font = Enum.Font.SourceSans
Guitar.Text = "Guitar"
Guitar.TextColor3 = Color3.new(0.901961, 0.901961, 0.901961)
Guitar.TextSize = 20
Guitar.TextWrapped = true

Shake.Name = "Shake"
Shake.Parent = Main
Shake.BackgroundColor3 = Color3.new(0.298039, 0.298039, 0.298039)
Shake.BorderSizePixel = 0
Shake.Position = UDim2.new(0, 290, 0, 65)
Shake.Size = UDim2.new(0, 135, 0, 25)
Shake.AutoButtonColor = false
Shake.Font = Enum.Font.SourceSans
Shake.Text = "Shake"
Shake.TextColor3 = Color3.new(0.901961, 0.901961, 0.901961)
Shake.TextSize = 20
Shake.TextWrapped = true

insane.Name = "insane"
insane.Parent = Main
insane.BackgroundColor3 = Color3.new(0.298039, 0.298039, 0.298039)
insane.BorderSizePixel = 0
insane.Position = UDim2.new(0, 290, 0, 95)
insane.Size = UDim2.new(0, 135, 0, 25)
insane.AutoButtonColor = false
insane.Font = Enum.Font.SourceSans
insane.Text = "Insane"
insane.TextColor3 = Color3.new(0.901961, 0.901961, 0.901961)
insane.TextSize = 20
insane.TextWrapped = true

flingarms.Name = "flingarms"
flingarms.Parent = Main
flingarms.BackgroundColor3 = Color3.new(0.298039, 0.298039, 0.298039)
flingarms.BorderSizePixel = 0
flingarms.Position = UDim2.new(0, 150, 0, 95)
flingarms.Size = UDim2.new(0, 135, 0, 25)
flingarms.AutoButtonColor = false
flingarms.Font = Enum.Font.SourceSans
flingarms.Text = "Fling Arms"
flingarms.TextColor3 = Color3.new(0.901961, 0.901961, 0.901961)
flingarms.TextSize = 20
flingarms.TextWrapped = true

rotate.Name = "rotate"
rotate.Parent = Main
rotate.BackgroundColor3 = Color3.new(0.298039, 0.298039, 0.298039)
rotate.BorderSizePixel = 0
rotate.Position = UDim2.new(0, 10, 0, 95)
rotate.Size = UDim2.new(0, 135, 0, 25)
rotate.AutoButtonColor = false
rotate.Font = Enum.Font.SourceSans
rotate.Text = "Rotate"
rotate.TextColor3 = Color3.new(0.901961, 0.901961, 0.901961)
rotate.TextSize = 20
rotate.TextWrapped = true

bend.Name = "bend"
bend.Parent = Main
bend.BackgroundColor3 = Color3.new(0.298039, 0.298039, 0.298039)
bend.BorderSizePixel = 0
bend.Position = UDim2.new(0, 10, 0, 125)
bend.Size = UDim2.new(0, 135, 0, 25)
bend.AutoButtonColor = false
bend.Font = Enum.Font.SourceSans
bend.Text = "Bend"
bend.TextColor3 = Color3.new(0.901961, 0.901961, 0.901961)
bend.TextSize = 20
bend.TextWrapped = true

floatslash.Name = "floatslash"
floatslash.Parent = Main
floatslash.BackgroundColor3 = Color3.new(0.298039, 0.298039, 0.298039)
floatslash.BorderSizePixel = 0
floatslash.Position = UDim2.new(0, 150, 0, 125)
floatslash.Size = UDim2.new(0, 135, 0, 25)
floatslash.AutoButtonColor = false
floatslash.Font = Enum.Font.SourceSans
floatslash.Text = "Float Slash"
floatslash.TextColor3 = Color3.new(0.901961, 0.901961, 0.901961)
floatslash.TextSize = 20
floatslash.TextWrapped = true

quickjump.Name = "quickjump"
quickjump.Parent = Main
quickjump.BackgroundColor3 = Color3.new(0.298039, 0.298039, 0.298039)
quickjump.BorderSizePixel = 0
quickjump.Position = UDim2.new(0, 290, 0, 125)
quickjump.Size = UDim2.new(0, 135, 0, 25)
quickjump.AutoButtonColor = false
quickjump.Font = Enum.Font.SourceSans
quickjump.Text = "Quick Jump"
quickjump.TextColor3 = Color3.new(0.901961, 0.901961, 0.901961)
quickjump.TextSize = 20
quickjump.TextWrapped = true

spin.Name = "spin"
spin.Parent = Main
spin.BackgroundColor3 = Color3.new(0.298039, 0.298039, 0.298039)
spin.BorderSizePixel = 0
spin.Position = UDim2.new(0, 10, 0, 156)
spin.Size = UDim2.new(0, 135, 0, 25)
spin.AutoButtonColor = false
spin.Font = Enum.Font.SourceSans
spin.Text = "Spin"
spin.TextColor3 = Color3.new(0.901961, 0.901961, 0.901961)
spin.TextSize = 20
spin.TextWrapped = true

fastspin.Name = "fastspin"
fastspin.Parent = Main
fastspin.BackgroundColor3 = Color3.new(0.298039, 0.298039, 0.298039)
fastspin.BorderSizePixel = 0
fastspin.Position = UDim2.new(0, 150, 0, 156)
fastspin.Size = UDim2.new(0, 135, 0, 25)
fastspin.AutoButtonColor = false
fastspin.Font = Enum.Font.SourceSans
fastspin.Text = "Fast Spin"
fastspin.TextColor3 = Color3.new(0.901961, 0.901961, 0.901961)
fastspin.TextSize = 20
fastspin.TextWrapped = true

Swordswing.Name = "Swordswing"
Swordswing.Parent = Main
Swordswing.BackgroundColor3 = Color3.new(0.298039, 0.298039, 0.298039)
Swordswing.BorderSizePixel = 0
Swordswing.Position = UDim2.new(0, 290, 0, 156)
Swordswing.Size = UDim2.new(0, 135, 0, 25)
Swordswing.AutoButtonColor = false
Swordswing.Font = Enum.Font.SourceSans
Swordswing.Text = "Sword Swing"
Swordswing.TextColor3 = Color3.new(0.901961, 0.901961, 0.901961)
Swordswing.TextSize = 20
Swordswing.TextWrapped = true

spinslice.Name = "spinslice"
spinslice.Parent = Main
spinslice.BackgroundColor3 = Color3.new(0.298039, 0.298039, 0.298039)
spinslice.BorderSizePixel = 0
spinslice.Position = UDim2.new(0, 150, 0, 186)
spinslice.Size = UDim2.new(0, 135, 0, 25)
spinslice.AutoButtonColor = false
spinslice.Font = Enum.Font.SourceSans
spinslice.Text = "Spin Slice"
spinslice.TextColor3 = Color3.new(0.901961, 0.901961, 0.901961)
spinslice.TextSize = 20
spinslice.TextWrapped = true

airarms.Name = "airarms"
airarms.Parent = Main
airarms.BackgroundColor3 = Color3.new(0.298039, 0.298039, 0.298039)
airarms.BorderSizePixel = 0
airarms.Position = UDim2.new(0, 290, 0, 186)
airarms.Size = UDim2.new(0, 135, 0, 25)
airarms.AutoButtonColor = false
airarms.Font = Enum.Font.SourceSans
airarms.Text = "Air Arms"
airarms.TextColor3 = Color3.new(0.901961, 0.901961, 0.901961)
airarms.TextSize = 20
airarms.TextWrapped = true

detacharms.Name = "detacharms"
detacharms.Parent = Main
detacharms.BackgroundColor3 = Color3.new(0.298039, 0.298039, 0.298039)
detacharms.BorderSizePixel = 0
detacharms.Position = UDim2.new(0, 10, 0, 186)
detacharms.Size = UDim2.new(0, 135, 0, 25)
detacharms.AutoButtonColor = false
detacharms.Font = Enum.Font.SourceSans
detacharms.Text = "Detach Arms"
detacharms.TextColor3 = Color3.new(0.901961, 0.901961, 0.901961)
detacharms.TextSize = 20
detacharms.TextWrapped = true

spear.Name = "spear"
spear.Parent = Main
spear.BackgroundColor3 = Color3.new(0.298039, 0.298039, 0.298039)
spear.BorderSizePixel = 0
spear.Position = UDim2.new(0, 80, 0, 216)
spear.Size = UDim2.new(0, 135, 0, 25)
spear.AutoButtonColor = false
spear.Font = Enum.Font.SourceSans
spear.Text = "Spear"
spear.TextColor3 = Color3.new(0.901961, 0.901961, 0.901961)
spear.TextSize = 20
spear.TextWrapped = true

armshake.Name = "armshake"
armshake.Parent = Main
armshake.BackgroundColor3 = Color3.new(0.298039, 0.298039, 0.298039)
armshake.BorderSizePixel = 0
armshake.Position = UDim2.new(0, 220, 0, 216)
armshake.Size = UDim2.new(0, 135, 0, 25)
armshake.AutoButtonColor = false
armshake.Font = Enum.Font.SourceSans
armshake.Text = "Arm Shake"
armshake.TextColor3 = Color3.new(0.901961, 0.901961, 0.901961)
armshake.TextSize = 20
armshake.TextWrapped = true

-- Scripts 

close.MouseButton1Click:connect(function()
if Main.Size == UDim2.new(0, 435, 0, 271) then
Main.Size = UDim2.new(0, 435, 0, 55)
else
Main.Size = UDim2.new(0, 435, 0, 271)
end
end)
c = Color3.new(0.298039, 0.298039, 0.298039)
l = Color3.new(0.498039, 0.498039, 0.498039)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://1029253339"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local cheerdanceactive = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    track = character:WaitForChild("Humanoid"):LoadAnimation(Anim)
    cheerdanceactive = false
cheerdance.BackgroundColor3 = c
end)
cheerdance.MouseButton1Click:connect(function()
cheerdanceactive = not cheerdanceactive
if cheerdanceactive then
cheerdance.BackgroundColor3 = l
while wait() do
if track.IsPlaying == false then
if cheerdanceactive then
track:Play(.1, 1, 1)
end
end
end
else
track:Stop()
cheerdance.BackgroundColor3 = c
end
end)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://1119819044"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local Guitaractive = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    track = character:WaitForChild("Humanoid"):LoadAnimation(Anim)
    Guitaractive = false
Guitar.BackgroundColor3 = c
end)
Guitar.MouseButton1Click:connect(function()
Guitaractive = not Guitaractive
if Guitaractive then
Guitar.BackgroundColor3 = l
while wait() do
if track.IsPlaying == false then
if Guitaractive then
track:Play(.1, 1, 1)
end
end
end
else
track:Stop()
Guitar.BackgroundColor3 = c
end
end)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://857149191"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local Shakeactive = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    track = character:WaitForChild("Humanoid"):LoadAnimation(Anim)
    Shakeactive = false
Shake.BackgroundColor3 = c
end)
Shake.MouseButton1Click:connect(function()
Shakeactive = not Shakeactive
if Shakeactive then
Shake.BackgroundColor3 = l
while wait() do
if track.IsPlaying == false then
if Shakeactive then
track:Play(.1, 1, 1)
end
end
end
else
track:Stop()
Shake.BackgroundColor3 = c
end
end)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://1029253339"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local insaneactive = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    track = character:WaitForChild("Humanoid"):LoadAnimation(Anim)
    insaneactive = false
insane.BackgroundColor3 = c
end)
insane.MouseButton1Click:connect(function()
insaneactive = not insaneactive
if insaneactive then
insane.BackgroundColor3 = l
while wait() do
if track.IsPlaying == false then
if insaneactive then
track:Play(.1, 1, 50)
end
end
end
else
track:Stop()
insane.BackgroundColor3 = c
end
end)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://754656200"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local flingarmsactive = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    track = character:WaitForChild("Humanoid"):LoadAnimation(Anim)
    flingarmsactive = false
flingarms.BackgroundColor3 = c
end)
flingarms.MouseButton1Click:connect(function()
flingarmsactive = not flingarmsactive
if flingarmsactive then
flingarms.BackgroundColor3 = l
while wait() do
if track.IsPlaying == false then
if flingarmsactive then
track:Play(.1, 1, 10)
end
end
end
else
track:Stop()
flingarms.BackgroundColor3 = c
end
end)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://675025570"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local rotateactive = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    track = character:WaitForChild("Humanoid"):LoadAnimation(Anim)
    rotateactive = false
rotate.BackgroundColor3 = c
end)
rotate.MouseButton1Click:connect(function()
rotateactive = not rotateactive
if rotateactive then
rotate.BackgroundColor3 = l
while wait() do
if track.IsPlaying == false then
if rotateactive then
track:Play(.1, 1, 1)
end
end
end
else
track:Stop()
rotate.BackgroundColor3 = c
end
end)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://696096087"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local bendactive = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    track = character:WaitForChild("Humanoid"):LoadAnimation(Anim)
    bendactive = false
bend.BackgroundColor3 = c
end)
bend.MouseButton1Click:connect(function()
bendactive = not bendactive
if bendactive then
bend.BackgroundColor3 = l
while wait() do
if track.IsPlaying == false then
if bendactive then
track:Play(.1, 1, 1)
end
end
end
else
track:Stop()
bend.BackgroundColor3 = c
end
end)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://717879555"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local floatslashactive = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    track = character:WaitForChild("Humanoid"):LoadAnimation(Anim)
    floatslashactive = false
floatslash.BackgroundColor3 = c
end)
floatslash.MouseButton1Click:connect(function()
floatslashactive = not floatslashactive
if floatslashactive then
floatslash.BackgroundColor3 = l
while wait() do
if track.IsPlaying == false then
if floatslashactive then
track:Play(.1, 1, 1)
end
end
end
else
track:Stop()
floatslash.BackgroundColor3 = c
end
end)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://717879555"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local quickjumpactive = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    track = character:WaitForChild("Humanoid"):LoadAnimation(Anim)
    quickjumpactive = false
quickjump.BackgroundColor3 = c
end)
quickjump.MouseButton1Click:connect(function()
quickjumpactive = not quickjumpactive
if quickjumpactive then
quickjump.BackgroundColor3 = l
while wait() do
if track.IsPlaying == false then
if quickjumpactive then
track:Play(.1, 1, 7)
end
end
end
else
track:Stop()
quickjump.BackgroundColor3 = c
end
end)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://754658275"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local spinactive = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    track = character:WaitForChild("Humanoid"):LoadAnimation(Anim)
    spinactive = false
spin.BackgroundColor3 = c
end)
spin.MouseButton1Click:connect(function()
spinactive = not spinactive
if spinactive then
spin.BackgroundColor3 = l
while wait() do
if track.IsPlaying == false then
if spinactive then
track:Play(.1, 1, 1)
end
end
end
else
track:Stop()
spin.BackgroundColor3 = c
end
end)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://754658275"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local fastspinactive = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    track = character:WaitForChild("Humanoid"):LoadAnimation(Anim)
    fastspinactive = false
fastspin.BackgroundColor3 = c
end)
fastspin.MouseButton1Click:connect(function()
fastspinactive = not fastspinactive
if fastspinactive then
fastspin.BackgroundColor3 = l
while wait() do
if track.IsPlaying == false then
if fastspinactive then
track:Play(.1, 1, 10)
end
end
end
else
track:Stop()
fastspin.BackgroundColor3 = c
end
end)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://846754447"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local Swordswingactive = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    track = character:WaitForChild("Humanoid"):LoadAnimation(Anim)
    Swordswingactive = false
Swordswing.BackgroundColor3 = c
end)
Swordswing.MouseButton1Click:connect(function()
Swordswingactive = not Swordswingactive
if Swordswingactive then
Swordswing.BackgroundColor3 = l
while wait() do
if track.IsPlaying == false then
if Swordswingactive then
track:Play(.1, 1, 1)
end
end
end
else
track:Stop()
Swordswing.BackgroundColor3 = c
end
end)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://846744780"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local spinsliceactive = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    track = character:WaitForChild("Humanoid"):LoadAnimation(Anim)
    spinsliceactive = false
spinslice.BackgroundColor3 = c
end)
spinslice.MouseButton1Click:connect(function()
spinsliceactive = not spinsliceactive
if spinsliceactive then
spinslice.BackgroundColor3 = l
while wait() do
if track.IsPlaying == false then
if spinsliceactive then
track:Play(.1, 1, 1)
end
end
end
else
track:Stop()
spinslice.BackgroundColor3 = c
end
end)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://1424674606"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local airarmsactive = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    track = character:WaitForChild("Humanoid"):LoadAnimation(Anim)
    airarmsactive = false
airarms.BackgroundColor3 = c
end)
airarms.MouseButton1Click:connect(function()
airarmsactive = not airarmsactive
if airarmsactive then
airarms.BackgroundColor3 = l
while wait() do
if track.IsPlaying == false then
if airarmsactive then
track:Play(.1, 1, 1)
end
end
end
else
track:Stop()
airarms.BackgroundColor3 = c
end
end)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://1296868982"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local detacharmsactive = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    track = character:WaitForChild("Humanoid"):LoadAnimation(Anim)
    detacharmsactive = false
detacharms.BackgroundColor3 = c
end)
detacharms.MouseButton1Click:connect(function()
detacharmsactive = not detacharmsactive
if detacharmsactive then
detacharms.BackgroundColor3 = l
while wait() do
if track.IsPlaying == false then
if detacharmsactive then
track:Play(.1, 1, 1)
end
end
end
else
track:Stop()
detacharms.BackgroundColor3 = c
end
end)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://1323151362"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local spearactive = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    track = character:WaitForChild("Humanoid"):LoadAnimation(Anim)
    spearactive = false
spear.BackgroundColor3 = c
end)
spear.MouseButton1Click:connect(function()
spearactive = not spearactive
if spearactive then
spear.BackgroundColor3 = l
while wait() do
if track.IsPlaying == false then
if spearactive then
track:Play(.1, 1, 1)
end
end
end
else
track:Stop()
spear.BackgroundColor3 = c
end
end)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://1149279561"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local armshakeactive = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    track = character:WaitForChild("Humanoid"):LoadAnimation(Anim)
    armshakeactive = false
armshake.BackgroundColor3 = c
end)
armshake.MouseButton1Click:connect(function()
armshakeactive = not armshakeactive
if armshakeactive then
armshake.BackgroundColor3 = l
while wait() do
if track.IsPlaying == false then
if armshakeactive then
track:Play(.1, 1, 1)
end
end
end
else
track:Stop()
armshake.BackgroundColor3 = c
end
end)