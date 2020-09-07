-- Farewell infortality 
-- Revamp by ImFrostic, Version 2.8 
 
 -- Objects

local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local bar1 = Instance.new("Frame")
local brack = Instance.new("TextButton")
local xuhro = Instance.new("TextButton")
local bypass = Instance.new("TextButton")
local bfg = Instance.new("TextButton")
local open = Instance.new("TextButton")
local close = Instance.new("TextButton")

-- Properties

ScreenGui.Parent = game.CoreGui

main.Name = "main"
main.Parent = ScreenGui
main.Active = true
main.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
main.BorderSizePixel = 0
main.Draggable = true
main.Position = UDim2.new(0.37885803, 0, 0.0909090862, 0)
main.Selectable = true
main.Size = UDim2.new(0, 492, 0, 479)
main.Visible = false

bar1.Name = "bar1"
bar1.Parent = main
bar1.BackgroundColor3 = Color3.new(0, 0.333333, 1)
bar1.BorderSizePixel = 0
bar1.Size = UDim2.new(0, 492, 0, 52)

brack.Name = "brack"
brack.Parent = main
brack.BackgroundColor3 = Color3.new(0, 0.333333, 1)
brack.BorderSizePixel = 0
brack.Position = UDim2.new(0.0934959352, 0, 0.1511143, 0)
brack.Size = UDim2.new(0, 376, 0, 50)
brack.Font = Enum.Font.SourceSans
brack.Text = "Brack's GUI Press +"
brack.TextColor3 = Color3.new(0.207843, 0.0156863, 0.180392)
brack.TextSize = 40
brack.MouseButton1Down:connect(function()
loadstring(game:HttpGet(('https://pastebin.com/raw/H4t2tZZE'),true))()
end)

xuhro.Name = "xuhro"
xuhro.Parent = main
xuhro.BackgroundColor3 = Color3.new(0, 0.333333, 1)
xuhro.BorderSizePixel = 0
xuhro.Position = UDim2.new(0.0934959352, 0, 0.358514696, 0)
xuhro.Size = UDim2.new(0, 376, 0, 50)
xuhro.Font = Enum.Font.SourceSans
xuhro.Text = "Xuhro's GUI Press H"
xuhro.TextColor3 = Color3.new(0.207843, 0.0156863, 0.180392)
xuhro.TextSize = 40
xuhro.MouseButton1Down:connect(function()
loadstring(game:HttpGet(('https://pastebin.com/raw/54C4aN8i'),true))()
end)

bypass.Name = "bypass"
bypass.Parent = main
bypass.BackgroundColor3 = Color3.new(0, 0.333333, 1)
bypass.BorderSizePixel = 0
bypass.Position = UDim2.new(0.0934959352, 0, 0.573121607, 0)
bypass.Size = UDim2.new(0, 376, 0, 50)
bypass.Font = Enum.Font.SourceSans
bypass.Text = "Bypass"
bypass.TextColor3 = Color3.new(0.207843, 0.0156863, 0.180392)
bypass.TextSize = 40
bypass.MouseButton1Down:connect(function()
loadstring(game:HttpGet(('https://pastebin.com/raw/zs9iq6PC'),true))()
end)

bfg.Name = "bfg"
bfg.Parent = main
bfg.BackgroundColor3 = Color3.new(0, 0.333333, 1)
bfg.BorderSizePixel = 0
bfg.Position = UDim2.new(0.0934959352, 0, 0.793319404, 0)
bfg.Size = UDim2.new(0, 376, 0, 54)
bfg.Font = Enum.Font.SourceSans
bfg.Text = ".bfg"
bfg.TextColor3 = Color3.new(0.207843, 0.0156863, 0.180392)
bfg.TextSize = 40
bfg.MouseButton1Down:connect(function()
loadstring(game:HttpGet(('https://pastebin.com/raw/TDXW4KVJ'),true))()
end)

open.Name = "open"
open.Parent = ScreenGui
open.BackgroundColor3 = Color3.new(0, 0.333333, 1)
open.BorderSizePixel = 0
open.Position = UDim2.new(0, 0, 0.478056431, 0)
open.Size = UDim2.new(0, 200, 0, 50)
open.Font = Enum.Font.SourceSans
open.Text = "Open"
open.TextColor3 = Color3.new(0.207843, 0.0156863, 0.180392)
open.TextSize = 40
open.MouseButton1Down:connect(function()
main.Visible = true
close.Visible = true
open.Visible = false
end)

close.Name = "close"
close.Parent = ScreenGui
close.BackgroundColor3 = Color3.new(0, 0.333333, 1)
close.BorderSizePixel = 0
close.Position = UDim2.new(0, 0, 0.478056431, 0)
close.Size = UDim2.new(0, 200, 0, 50)
close.Visible = false
close.Font = Enum.Font.SourceSans
close.Text = "Close"
close.TextColor3 = Color3.new(0.207843, 0.0156863, 0.180392)
close.TextSize = 40
close.MouseButton1Down:connect(function()
main.Visible = false
close.Visible = false
open.Visible = true
end)

-- Scripts