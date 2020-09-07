wait(3)

local plr = game:GetService("Players").LocalPlayer

local char = plr.Character

local gui = plr.PlayerGui

local mouse = plr:GetMouse()



local UI = Instance.new("ScreenGui", gui)



local Back = Instance.new("TextLabel", UI)

local Red = Instance.new("TextButton", Back)

local Yellow = Instance.new("TextButton", Back)

local Blue = Instance.new("TextButton", Back)

local Green = Instance.new("TextButton", Back)

local Msg = Instance.new("TextLabel", Back)

local TXTBOX = Instance.new("TextBox", Back)

local var = Instance.new("StringValue", UI)

local exec = Instance.new("TextButton", Back)



Back.BackgroundColor3 = Color3.new(155, 155, 155)

Back.BackgroundTransparency = 0.7

Back.BorderColor3 = Color3.new(27, 42, 53)

Back.Name = "Background"

Back.Position = UDim2.new(0, 900, 0, 350)

Back.Size = UDim2.new(0, 200, 0, 200)

Back.Text = ""



Red.BackgroundColor3 = Color3.new(255, 255, 255)

Red.BackgroundTransparency = 0.7

Red.BorderColor3 = Color3.new(255, 0, 0)

Red.BorderSizePixel = 2

Red.Name = "Red"

Red.Position = UDim2.new(0, 0, 0, 0)

Red.Size = UDim2.new(0, 50, 0, 25)

Red.Text = "Red"



Blue.BackgroundColor3 = Color3.new(255, 255, 255)

Blue.BackgroundTransparency = 0.7

Blue.BorderColor3 = Color3.new(0, 0, 255)

Blue.BorderSizePixel = 2

Blue.Name = "Blue"

Blue.Position = UDim2.new(0, 50, 0, 0)

Blue.Size = UDim2.new(0, 50, 0, 25)

Blue.Text = "Blue"



Green.BackgroundColor3 = Color3.new(255, 255, 255)

Green.BackgroundTransparency = 0.7

Green.BorderColor3 = Color3.new(0, 255, 0)

Green.BorderSizePixel = 2

Green.Name = "Green"

Green.Position = UDim2.new(0, 100, 0, 0)

Green.Size = UDim2.new(0, 50, 0, 25)

Green.Text = "Green"



Yellow.BackgroundColor3 = Color3.new(255, 255, 255)

Yellow.BackgroundTransparency = 0.7

Yellow.BorderColor3 = Color3.new(255, 255, 0)

Yellow.BorderSizePixel = 2

Yellow.Name = "Yellow"

Yellow.Position = UDim2.new(0, 150, 0, 0)

Yellow.Size = UDim2.new(0, 50, 0, 25)

Yellow.Text = "Yellow"



TXTBOX.BackgroundColor3 = Color3.new(1, 1, 1)

TXTBOX.BackgroundTransparency = 0.7

TXTBOX.BorderColor3 = Color3.new(50, 50, 50)

TXTBOX.BorderSizePixel = 2

TXTBOX.Name = "Msg"

TXTBOX.Position = UDim2.new(0, 25, 0, 100)

TXTBOX.Size = UDim2.new(0, 150, 0, 25)

TXTBOX.Text = "Message"

TXTBOX.TextColor3 = Color3.new(51, 255, 51)



Msg.BackgroundColor3 = Color3.new(1, 1, 1)

Msg.BackgroundTransparency = 1

Msg.BorderColor3 = Color3.new(50, 50, 50)

Msg.BorderSizePixel = 0

Msg.Name = "MSGLabel"

Msg.Position = UDim2.new(0, 25, 0, 75)

Msg.Size = UDim2.new(0, 150, 0, 25)

Msg.Text = "Type message here.."

Msg.TextColor3 = Color3.new(51, 255, 255)





exec.BackgroundColor3 = Color3.new(1, 1, 1)

exec.BackgroundTransparency = 0.5

exec.BorderColor3 = Color3.new(50, 50, 50)

exec.BorderSizePixel = 1

exec.Name = "Execute"

exec.Position = UDim2.new(0, 50, 0, 130)

exec.Size = UDim2.new(0, 100, 0, 20)

exec.Text = "Execute"

exec.TextColor3 = Color3.new(51, 255, 255)







Red.MouseButton1Down:connect(function()

var.Value = "Red"

print("Loaded Yellow")

ife()

end)



Blue.MouseButton1Down:connect(function()

var.Value = "Blue"

print("Loaded Blue")

ife()

end)



Yellow.MouseButton1Down:connect(function()

var.Value = "Yellow"

print("Loaded Yellow")

ife()

end)



Green.MouseButton1Down:connect(function()

var.Value = "Green"

print("Loaded Green")

ife()

end)



function ife()

if var.Value == "Red" then

Red.BorderSizePixel = 3

Blue.BorderSizePixel = 2

Green.BorderSizePixel = 2

Yellow.BorderSizePixel = 2

print("Loaded Red Val")

elseif var.Value == "Blue" then

Red.BorderSizePixel = 2

Blue.BorderSizePixel = 3

Green.BorderSizePixel = 2

Yellow.BorderSizePixel = 2

print("Loaded Red Val")

elseif var.Value == "Green" then

Red.BorderSizePixel = 2

Blue.BorderSizePixel = 2

Green.BorderSizePixel = 3

Yellow.BorderSizePixel = 2

print("Loaded Green Val")

elseif var.Value == "Yellow" then

Red.BorderSizePixel = 2

Blue.BorderSizePixel = 2

Green.BorderSizePixel = 2

Yellow.BorderSizePixel = 3

print("Loaded Green Val")

end

end



exec.MouseButton1Down:connect(function()

executed()

end)

function executed()

for i,v in pairs(game.Players:GetChildren()) do game.Lighting.Remote.SendMessage:FireServer(v, tostring(var.Value) , tostring(TXTBOX.Text)) end 







end




print("Loaded Succesfully!")
