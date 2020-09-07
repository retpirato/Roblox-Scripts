--PRISON LIFE - KICK GUI--
local jakeskickgui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local title = Instance.new("TextLabel")
local kick = Instance.new("TextButton")
local kicktext = Instance.new("TextBox")
local title_2 = Instance.new("TextLabel")
local close = Instance.new("TextButton")
local openmain = Instance.new("Frame")
local open = Instance.new("TextButton")
--Properties:
jakeskickgui.Name = "jakeskickgui"
jakeskickgui.Parent = game.CoreGui

main.Name = "main"
main.Parent = jakeskickgui
main.BackgroundColor3 = Color3.new(0, 0, 0)
main.Position = UDim2.new(0.276372612, 0, 0.55282557, 0)
main.Size = UDim2.new(0, 234, 0, 146)
main.Active = true
main.Draggable = true

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local function RemoveSpaces(String)
	return String:gsub("%s+", "") or String
end

local function FindPlayer(String)
	String = RemoveSpaces(String)
	for _, _Player in pairs(Players:GetPlayers()) do
		if _Player.Name:lower():match('^'.. String:lower()) then
			return _Player
		end
	end
	return nil
end

title.Name = "title"
title.Parent = main
title.BackgroundColor3 = Color3.new(1, 1, 1)
title.Size = UDim2.new(0, 234, 0, 31)
title.Font = Enum.Font.GothamBold
title.Text = "Prison Life Kick Player"
title.TextColor3 = Color3.new(0, 0, 0)
title.TextSize = 14

kick.Name = "kick"
kick.Parent = main
kick.BackgroundColor3 = Color3.new(1, 1, 1)
kick.Position = UDim2.new(0.0726495758, 0, 0.534832001, 0)
kick.Size = UDim2.new(0, 200, 0, 33)
kick.Font = Enum.Font.GothamBlack
kick.Text = "KICK"
kick.TextColor3 = Color3.new(0, 0, 0)
kick.TextSize = 14
kick.MouseButton1Down:connect(function()
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Player will be kicked!";
        Text = "Please wait up to 30 secs!!";
        })
	local kick = FindPlayer(kicktext.Text)
for i,v in pairs(game.Players:GetChildren()) do
if v.Name == (kick.Name) then
local tbl_main = 
{
      "Start", 
      v
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Start", 
      v
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Start", 
      v
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Start", 
      v
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Start", 
      v
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Start", 
      v
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Start", 
      v
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Start", 
      v
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Start", 
      v
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Start", 
      v
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Start", 
      v
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Start", 
      v
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Start", 
      v
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Start", 
      v
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Start", 
      v
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Start", 
      v
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Start", 
      v
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

local tbl_main = 
{
      "Vote"
}
game:GetService("Workspace").Remote.votekick:InvokeServer(unpack(tbl_main))

        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "If Player is not kicked";
        Text = "Please try again in 1 min and 30 secs!!";
        })

	wait(13)
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Player Should be kicked";
        Text = "If not please wait and try again!!";
        })
	end
end
end)

kicktext.Name = "kicktext"
kicktext.Parent = main
kicktext.BackgroundColor3 = Color3.new(1, 1, 1)
kicktext.Position = UDim2.new(0.0726495758, 0, 0.254595488, 0)
kicktext.Size = UDim2.new(0, 200, 0, 30)
kicktext.Font = Enum.Font.Gotham
kicktext.Text = "PlayerName"
kicktext.TextColor3 = Color3.new(0, 0, 0)
kicktext.TextSize = 14

title_2.Name = "title"
title_2.Parent = main
title_2.BackgroundColor3 = Color3.new(1, 1, 1)
title_2.Position = UDim2.new(0, 0, 0.801369846, 0)
title_2.Size = UDim2.new(0, 234, 0, 29)
title_2.Font = Enum.Font.GothamBlack
title_2.Text = "Made By Jake11price"
title_2.TextColor3 = Color3.new(0, 0, 0)
title_2.TextSize = 14

close.Name = "close"
close.Parent = main
close.BackgroundColor3 = Color3.new(0, 0, 0)
close.Position = UDim2.new(0.85042733, 0, 0, 0)
close.Size = UDim2.new(0, 35, 0, 31)
close.Font = Enum.Font.GothamBold
close.Text = "X"
close.TextColor3 = Color3.new(1, 0, 0)
close.TextScaled = true
close.TextSize = 14
close.TextWrapped = true
close.MouseButton1Down:connect(function()
main.Visible = false
openmain.Visible = true
end)

openmain.Name = "openmain"
openmain.Parent = jakeskickgui
openmain.BackgroundColor3 = Color3.new(0, 0, 0)
openmain.Position = UDim2.new(0.00431832112, 0, 0.886977911, 0)
openmain.Size = UDim2.new(0, 100, 0, 27)
openmain.Visible = false

open.Name = "open"
open.Parent = openmain
open.BackgroundColor3 = Color3.new(0, 0, 0)
open.Size = UDim2.new(0, 100, 0, 27)
open.Font = Enum.Font.GothamBold
open.Text = "OPEN"
open.TextColor3 = Color3.new(1, 1, 1)
open.TextSize = 14
open.MouseButton1Down:connect(function()
openmain.Visible = false
main.Visible = true
end)