--Prison Breaker--
local function SendNotification(title,text,duration,...)
  game.StarterGui:SetCore("SendNotification", {
    Title = title;
    Text = text;
	Icon = "";
    Duration = duration;
  })
end

  game.Players.ChildAdded:Connect(function(player)
  if not pcall (function()
  SendNotification("Player Joined",""..player.Name.."  Has joined the server",2.5 )
  end) then
    print ("Error")
  end
  end)

  game.Players.ChildRemoved:Connect(function(player)
  if not pcall (function()
  SendNotification("Player Left",""..player.Name.."  Has rage quit",2.5 )
  end) then
    print ("Error")
  end
  end)
  for i,v in pairs(game:GetService("CoreGui"):GetChildren()) do 
	if v.Name == "PurchasePromptApp" then 
		v:Remove()
    end
end
for i,v in pairs(game:GetService("CoreGui"):GetChildren()) do 
	if v.Name == "PrisonBreakerV1.6" then 
		v:Remove()
    end
end

local toggle = false
local PrisonBreakerV16 = Instance.new("ScreenGui")
local openmain = Instance.new("Frame")
local open = Instance.new("TextButton")
local main = Instance.new("Frame")
local title = Instance.new("TextLabel")
local home = Instance.new("TextButton")
local guis = Instance.new("TextButton")
local teams = Instance.new("TextButton")
local funcs = Instance.new("TextButton")
local homemain = Instance.new("Frame")
local title_2 = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")
local teamsmain = Instance.new("Frame")
local cop = Instance.new("TextButton")
local inmate = Instance.new("TextButton")
local neutral = Instance.new("TextButton")
local crim = Instance.new("TextButton")
local guismain = Instance.new("Frame")
local prisonbreakerv15 = Instance.new("TextButton")
local prisondestroyer = Instance.new("TextButton")
local kickgui = Instance.new("TextButton")
local scriptsmain = Instance.new("Frame")
local godmode = Instance.new("TextButton")
local destroy = Instance.new("TextButton")
local hitbox = Instance.new("TextButton")
local antikickmainon = Instance.new("Frame")
local antikickon = Instance.new("TextButton")
local antikickmainoff = Instance.new("Frame")
local antikickoff = Instance.new("TextButton")
local modguns = Instance.new("TextButton")
PrisonBreakerV16.Name = "PrisonBreakerV1.6"
PrisonBreakerV16.Parent = game.CoreGui
-- All Skids Welcome 

openmain.Name = "openmain"
openmain.Parent = PrisonBreakerV16
openmain.BackgroundColor3 = Color3.new(1, 1, 1)
openmain.Position = UDim2.new(0.0104873544, 0, 0.549140036, 0)
openmain.Size = UDim2.new(0, 100, 0, 26)

open.Name = "open"
open.Parent = openmain
open.BackgroundColor3 = Color3.new(1, 0, 0.498039)
open.Position = UDim2.new(0, 0, -0.0299201012, 0)
open.Size = UDim2.new(0, 100, 0, 26)
open.Font = Enum.Font.GothamBlack
open.Text = "OPEN"
open.TextColor3 = Color3.new(0, 0, 0)
open.TextSize = 18
open.TextWrapped = true
open.MouseButton1Down:connect(function()
local main = game:GetService("CoreGui")["PrisonBreakerV1.6"].main
wait(0.01)
if toggle == false then
  main:TweenPosition(UDim2.new(0.081, 0, 0.3, 0), 'Out', 'Quad', 0.8)
    toggle = true
      else
        main:TweenPosition(UDim2.new(1.5, 0, 0.8, 0), 'Out', 'Quad', 0.8)
          toggle = false
        end
      wait(0.9)
    if main.Position == (UDim2.new(0.081, 0, 0.3, 0)) then 
  open.Text = "CLOSE"
else
  open.Text = "OPEN"
    end
end)

main.Name = "main"
main.Parent = PrisonBreakerV16
main.BackgroundColor3 = Color3.new(0, 0, 127)
main.BorderColor3 = Color3.new(0, 0, 127)
main.BorderSizePixel = 5
main.Position = UDim2.new(1.5, 0, 0.8, 0)
main.Size = UDim2.new(0, 465, 0, 341)
main.Active = true
main.Draggable = true

title.Name = "title"
title.Parent = main
title.BackgroundColor3 = Color3.new(0, 0, 0)
title.BorderSizePixel = 2
title.Position = UDim2.new(0.0064516128, 0, 0.829912007, 0)
title.Size = UDim2.new(0, 459, 0, 58)
title.Font = Enum.Font.GothamBold
title.Text = "PrisonBreaker V1.6 Made By Jake11price"
title.TextColor3 = Color3.new(1, 0, 0)
title.TextSize = 15

home.Name = "home"
home.Parent = main
home.BackgroundColor3 = Color3.new(255, 0, 0)
home.Position = UDim2.new(0.0129032256, 0, 0.0263929628, 0)
home.Size = UDim2.new(0, 100, 0, 37)
home.Font = Enum.Font.GothamBlack
home.Text = "Home"
home.TextColor3 = Color3.new(0, 0, 0)
home.TextSize = 25
function SCRIPT_CIMJ66_FAKESCRIPT() -- Frame.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = home
	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	
	counter = 0
	
	while wait(0.1)do
	 script.Parent.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)
	 
	 counter = counter + 0.01
	end
	

end
coroutine.resume(coroutine.create(SCRIPT_CIMJ66_FAKESCRIPT))
home.MouseButton1Down:connect(function()
teamsmain.Visible = false
guismain.Visible = false
scriptsmain.Visible = false
homemain.Visible = true
end)

guis.Name = "guis"
guis.Parent = main
guis.BackgroundColor3 = Color3.new(255, 0, 0)
guis.Position = UDim2.new(0.246848866, 0, 0.0263929628, 0)
guis.Size = UDim2.new(0, 108, 0, 37)
guis.Font = Enum.Font.GothamBlack
guis.Text = "Guis"
guis.TextColor3 = Color3.new(0, 0, 0)
guis.TextSize = 25
function SCRIPT_CIMJ66_FAKESCRIPT() -- Frame.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = guis
	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	
	counter = 0
	
	while wait(0.1)do
	 script.Parent.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)
	 
	 counter = counter + 0.01
	end
	

end
coroutine.resume(coroutine.create(SCRIPT_CIMJ66_FAKESCRIPT))
guis.MouseButton1Down:connect(function()
teamsmain.Visible = false
scriptsmain.Visible = false
homemain.Visible = false
guismain.Visible = true
end)

teams.Name = "teams"
teams.Parent = main
teams.BackgroundColor3 = Color3.new(255, 0, 0)
teams.Position = UDim2.new(0.500149369, 0, 0.0263929628, 0)
teams.Size = UDim2.new(0, 108, 0, 37)
teams.Font = Enum.Font.GothamBlack
teams.Text = "Teams"
teams.TextColor3 = Color3.new(0, 0, 0)
teams.TextSize = 25
function SCRIPT_CIMJ66_FAKESCRIPT() -- Frame.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = teams
	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	
	counter = 0
	
	while wait(0.1)do
	 script.Parent.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)
	 
	 counter = counter + 0.01
	end
	

end
coroutine.resume(coroutine.create(SCRIPT_CIMJ66_FAKESCRIPT))
teams.MouseButton1Down:connect(function()
scriptsmain.Visible = false
homemain.Visible = false
guismain.Visible = false
teamsmain.Visible = true
end)

funcs.Name = "funcs"
funcs.Parent = main
funcs.BackgroundColor3 = Color3.new(255, 0, 0)
funcs.Position = UDim2.new(0.754838645, 0, 0.0263929628, 0)
funcs.Size = UDim2.new(0, 108, 0, 37)
funcs.Font = Enum.Font.GothamBlack
funcs.Text = "New Scripts"
funcs.TextColor3 = Color3.new(0, 0, 0)
funcs.TextSize = 18
function SCRIPT_CIMJ66_FAKESCRIPT() -- Frame.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = funcs
	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	
	counter = 0
	
	while wait(0.1)do
	 script.Parent.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)
	 
	 counter = counter + 0.01
	end
	

end
coroutine.resume(coroutine.create(SCRIPT_CIMJ66_FAKESCRIPT))
funcs.MouseButton1Down:connect(function()
homemain.Visible = false
guismain.Visible = false
teamsmain.Visible = false
scriptsmain.Visible = true
end)

homemain.Name = "homemain"
homemain.Parent = main
homemain.BackgroundColor3 = Color3.new(0, 0, 0)
homemain.Position = UDim2.new(0, 0, 0.178885639, 0)
homemain.Size = UDim2.new(0, 465, 0, 218)

title_2.Name = "title"
title_2.Parent = homemain
title_2.BackgroundColor3 = Color3.new(0.333333, 1, 0)
title_2.BorderSizePixel = 0
title_2.Position = UDim2.new(0.0206066482, 0, 0.0379392318, 0)
title_2.Size = UDim2.new(0, 445, 0, 87)
title_2.Font = Enum.Font.GothamBlack
title_2.Text = "This is my last prison life gui... Enjoy the new scripts!"
title_2.TextColor3 = Color3.new(0, 0, 0)
title_2.TextScaled = true
title_2.TextSize = 14
title_2.TextWrapped = true

TextLabel.Parent = homemain
TextLabel.BackgroundColor3 = Color3.new(0, 1, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0193548389, 0, 0.486238539, 0)
TextLabel.Size = UDim2.new(0, 445, 0, 87)
TextLabel.Font = Enum.Font.GothamBlack
TextLabel.Text = "Subscribe to my Youtube Channel: Jake11price"
TextLabel.TextColor3 = Color3.new(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

teamsmain.Name = "teamsmain"
teamsmain.Parent = main
teamsmain.BackgroundColor3 = Color3.new(0, 0, 0)
teamsmain.BorderSizePixel = 0
teamsmain.Position = UDim2.new(0, 0, 0.178885639, 0)
teamsmain.Size = UDim2.new(0, 462, 0, 222)
teamsmain.Visible = false

cop.Name = "cop"
cop.Parent = teamsmain
cop.BackgroundColor3 = Color3.new(0, 0, 1)
cop.BorderSizePixel = 1
cop.Position = UDim2.new(0.0199004635, 0, 0.28773582, 0)
cop.Size = UDim2.new(0, 89, 0, 70)
cop.Font = Enum.Font.GothamBlack
cop.Text = "Guards"
cop.TextColor3 = Color3.new(0, 0, 0)
cop.TextSize = 18
cop.TextWrapped = true
cop.MouseButton1Down:connect(function()
workspace.Remote.TeamEvent:FireServer("Bright blue")
end)

inmate.Name = "inmate"
inmate.Parent = teamsmain
inmate.BackgroundColor3 = Color3.new(1, 0.666667, 0)
inmate.BorderSizePixel = 1
inmate.Position = UDim2.new(0.278606981, 0, 0.28773585, 0)
inmate.Size = UDim2.new(0, 89, 0, 70)
inmate.Font = Enum.Font.GothamBlack
inmate.Text = "Inmates"
inmate.TextColor3 = Color3.new(0, 0, 0)
inmate.TextSize = 18
inmate.MouseButton1Down:connect(function()
workspace.Remote.TeamEvent:FireServer("Bright orange")
end)

neutral.Name = "neutral"
neutral.Parent = teamsmain
neutral.BackgroundColor3 = Color3.new(0.584314, 0.584314, 0.584314)
neutral.BorderSizePixel = 1
neutral.Position = UDim2.new(0.524875581, 0, 0.28773585, 0)
neutral.Size = UDim2.new(0, 89, 0, 70)
neutral.Font = Enum.Font.GothamBlack
neutral.Text = "Neutral"
neutral.TextColor3 = Color3.new(0, 0, 0)
neutral.TextSize = 18
neutral.MouseButton1Down:connect(function()
Workspace.Remote.TeamEvent:FireServer("Medium stone grey")
end)

crim.Name = "crim"
crim.Parent = teamsmain
crim.BackgroundColor3 = Color3.new(1, 0, 0)
crim.BorderSizePixel = 1
crim.Position = UDim2.new(0.768656731, 0, 0.28773585, 0)
crim.Size = UDim2.new(0, 89, 0, 70)
crim.Font = Enum.Font.GothamBlack
crim.Text = "Criminals"
crim.TextColor3 = Color3.new(0, 0, 0)
crim.TextSize = 18
crim.MouseButton1Down:connect(function()
local Crim = Instance.new("Part")
   Crim.Name = "plr"
     Crim.Parent = workspace
       Crim.Anchored = true
         Crim.Archivable = true
           Crim.CFrame = CFrame.new(9e99, 9e99, 9e99)
              Bruh = game.Workspace["Criminals Spawn"].SpawnLocation
                wait(0.1)
              Crim.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
           Crim.Transparency = 1
        Crim.Anchored = true
     Crim.CanCollide = false
  lol = true               
Bruh = game.Workspace["Criminals Spawn"].SpawnLocation
  Bruh.CanCollide = false
    Bruh.Size = Vector3.new(51.05, 24.12, 54.76)
      Bruh.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
         Bruh.Transparency = 1
           wait(0.1)
             lol = false
               wait(0.04)
                 if lol == false then
                   Bruh.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                   Bruh.Size = Vector3.new(6, 0.2, 6)
                   Bruh.Transparency = 0
                   lol = false
            end
end)

guismain.Name = "guismain"
guismain.Parent = main
guismain.BackgroundColor3 = Color3.new(1, 0.45098, 0)
guismain.BorderSizePixel = 0
guismain.Position = UDim2.new(0, 0, 0.178885639, 0)
guismain.Size = UDim2.new(0, 462, 0, 222)
guismain.Visible = false

prisonbreakerv15.Name = "prisonbreakerv1.5"
prisonbreakerv15.Parent = guismain
prisonbreakerv15.BackgroundColor3 = Color3.new(0, 0, 0)
prisonbreakerv15.Position = UDim2.new(0.0273631848, 0, 0.0566037744, 0)
prisonbreakerv15.Size = UDim2.new(0, 109, 0, 50)
prisonbreakerv15.Font = Enum.Font.GothamBlack
prisonbreakerv15.Text = "PrisonBreaker V1.5"
prisonbreakerv15.TextColor3 = Color3.new(0, 1, 0)
prisonbreakerv15.TextScaled = true
prisonbreakerv15.TextSize = 14
prisonbreakerv15.TextWrapped = true
prisonbreakerv15.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/HpCpt9rt",true))()
end)

prisondestroyer.Name = "prisondestroyer"
prisondestroyer.Parent = guismain
prisondestroyer.BackgroundColor3 = Color3.new(0, 0, 0)
prisondestroyer.Position = UDim2.new(0.363184065, 0, 0.0566037744, 0)
prisondestroyer.Size = UDim2.new(0, 109, 0, 50)
prisondestroyer.Font = Enum.Font.GothamBlack
prisondestroyer.Text = "PrisonDestroyer"
prisondestroyer.TextColor3 = Color3.new(0, 1, 0)
prisondestroyer.TextScaled = true
prisondestroyer.TextSize = 14
prisondestroyer.TextWrapped = true
prisondestroyer.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/nu20tAZE",true))()
end)

kickgui.Name = "kickgui"
kickgui.Parent = guismain
kickgui.BackgroundColor3 = Color3.new(0, 0, 0)
kickgui.Position = UDim2.new(0.701492548, 0, 0.0566037744, 0)
kickgui.Size = UDim2.new(0, 109, 0, 50)
kickgui.Font = Enum.Font.GothamBlack
kickgui.Text = "Kick Gui"
kickgui.TextColor3 = Color3.new(0, 1, 0)
kickgui.TextSize = 18
kickgui.TextWrapped = true
kickgui.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/AncyYd8Q", true))()
end)

scriptsmain.Name = "scriptsmain"
scriptsmain.Parent = main
scriptsmain.BackgroundColor3 = Color3.new(1, 0.45098, 0)
scriptsmain.BorderSizePixel = 0
scriptsmain.Position = UDim2.new(0, 0, 0.178885639, 0)
scriptsmain.Size = UDim2.new(0, 462, 0, 222)
scriptsmain.Visible = false

godmode.Name = "godmode"
godmode.Parent = scriptsmain
godmode.BackgroundColor3 = Color3.new(0, 0, 0)
godmode.Position = UDim2.new(0.12686567, 0, 0.061611373, 0)
godmode.Size = UDim2.new(0, 126, 0, 44)
godmode.Font = Enum.Font.GothamBlack
godmode.Text = "Godmode (SWAT ONLY)"
godmode.TextColor3 = Color3.new(0, 1, 0)
godmode.TextScaled = true
godmode.TextSize = 14
godmode.TextWrapped = true
godmode.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.Humanoid.HealthChanged:Connect(function(health)
if health < game.Players.LocalPlayer.Character.Humanoid.MaxHealth then
		workspace.Remote.TeamEvent:FireServer("Bright blue")
workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.clothes["Riot Police"].ITEMPICKUP)
workspace.Remote.TeamEvent:FireServer("Bright orange")
end
end)
end)

destroy.Name = "destroy"
destroy.Parent = scriptsmain
destroy.BackgroundColor3 = Color3.new(0, 0, 0)
destroy.Position = UDim2.new(0.559701502, 0, 0.061611373, 0)
destroy.Size = UDim2.new(0, 126, 0, 44)
destroy.Font = Enum.Font.GothamBlack
destroy.Text = "CRASH OTHERS!"
destroy.TextColor3 = Color3.new(0, 1, 0)
destroy.TextScaled = true
destroy.TextSize = 14
destroy.TextWrapped = true
destroy.MouseButton1Down:connect(function()
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Destroying Server...";
Text = "Please wait up to 30 seconds!!";
})
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(917.909851, 129.489944, 2328.6958)
wait(0.5)
local client = game:GetService("Players").LocalPlayer

for _, child in next, client.Backpack:GetChildren() do
if child:IsA("Tool") then
client.Character.Humanoid:UnequipTools()
end
end

local Crim = Instance.new("Part")
   Crim.Name = "plr"
     Crim.Parent = workspace
       Crim.Anchored = true
         Crim.Archivable = true
           Crim.CFrame = CFrame.new(9e99, 9e99, 9e99)
              Bruh = game.Workspace["Criminals Spawn"].SpawnLocation
	            wait(0.1)
	          Crim.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	       Crim.Transparency = 1
	    Crim.Anchored = true
	 Crim.CanCollide = false
  lol = true				
Bruh = game.Workspace["Criminals Spawn"].SpawnLocation
  Bruh.CanCollide = false
    Bruh.Size = Vector3.new(51.05, 24.12, 54.76)
	  Bruh.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		 Bruh.Transparency = 1
		   wait(0.1)
		     lol = false
		       wait(0.04)
		         if lol == false then
		           Bruh.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		           Bruh.Size = Vector3.new(6, 0.2, 6)
		           Bruh.Transparency = 0
		           lol = false
		    end
        game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP) 
    wait(0.1)
local tbl_main = 
  {
    "CRASHING SERVER!! Script made by jake11price.", 
      "All"
      }
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(tbl_main))
wait(0.5)
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Warning!!";
Text = "DO NOT EQUIP THE REMINGTON 870 UNTIL YOU TURN BACK INTO AN INMATE!!";
})
for i,v in pairs(game:GetService("Players"):GetChildren()) do
	for i=1,650 do
      local tbl_36BA2890 = 
       {
         ["RayObject"] = Ray.new(Vector3.new(839.947937, 99.4999466, 2211.61719), Vector3.new(-379.812744, 31.2091656, 121.524826)), 
           ["Distance"] = 61.344123840332, 
             ["Cframe"] = CFrame.new(809.089844, 101.766418, 2219.49268, 0.363455683, 0.0792314336, -0.928236127, -1.86264515e-09, 0.996376872, 0.0850477219, 0.931611478, -0.0309110768, 0.362138808), 
               ["Hit"] = v.Character.Head
                 }
               local tbl_36B5BF78 = 
            {
          ["RayObject"] = Ray.new(Vector3.new(839.947937, 99.4999466, 2211.61719), Vector3.new(-379.036713, 35.5271149, 122.755898)), 
        ["Distance"] = 61.299308776855, 
      ["Cframe"] = CFrame.new(809.180542, 102.100838, 2219.57886, 0.366918802, 0.0893238857, -0.92595464, 0, 0.995379448, 0.0960210636, 0.930253029, -0.035231933, 0.365223378), 
     ["Hit"] = v.Character.Head
    }
local tbl_36B585E8 = 
  {
    ["RayObject"] = Ray.new(Vector3.new(839.947937, 99.4999466, 2211.61719), Vector3.new(-379.921326, 20.3493805, 123.473427)), 
      ["Distance"] = 61.141574859619, 
        ["Cframe"] = CFrame.new(809.180542, 100.912926, 2219.61255, 0.36787042, 0.0533849634, -0.928343356, 0, 0.99835068, 0.0574107729, 0.929877102, -0.021119725, 0.367263645), 
          ["Hit"] = v.Character.Head
           }
             local tbl_36B5CC38 = 
              {
                ["RayObject"] = Ray.new(Vector3.new(839.947937, 99.4999466, 2211.61719), Vector3.new(-371.464417, 33.5804787, 144.521744)), 
                  ["Distance"] = 63.866916656494, 
                    ["Cframe"] = CFrame.new(808.680542, 102.047562, 2221.70142, 0.418726623, 0.0821772888, -0.90438652, 0, 0.995897233, 0.0904924273, 0.908112347, -0.0378915891, 0.417008668), 
                      ["Hit"] = v.Character.Head
                        }
                          local tbl_36B5BB28 = 
                            {
                          ["RayObject"] = Ray.new(Vector3.new(839.947937, 99.4999466, 2211.61719), Vector3.new(-376.177948, 24.8940163, 133.680374)), 
                        ["Distance"] = 62.931880950928, 
                      ["Cframe"] = CFrame.new(808.680542, 101.319054, 2220.68823, 0.391926825, 0.0631896704, -0.917823792, 0, 0.997638524, 0.0686846897, 0.91999644, -0.0269193724, 0.391001284), 
                    ["Hit"] = v.Character.Head
                  }
                local tbl_36B58A98 = 
              {
            tbl_36B5BB28, 
          tbl_36B5CC38, 
        tbl_36B585E8, 
      tbl_36B5BF78, 
    tbl_36BA2890
}
  local tbl_main = 
    {
      tbl_36B58A98, 
        game:GetService("Players").LocalPlayer.Backpack["Remington 870"]
          }
            game:GetService("ReplicatedStorage").ShootEvent:FireServer(unpack(tbl_main))
              local tbl_36BA2890 = 
                {
                  ["RayObject"] = Ray.new(Vector3.new(839.947937, 99.4999466, 2211.61719), Vector3.new(-379.812744, 31.2091656, 121.524826)), 
                    ["Distance"] = 61.344123840332, 
                      ["Cframe"] = CFrame.new(809.089844, 101.766418, 2219.49268, 0.363455683, 0.0792314336, -0.928236127, -1.86264515e-09, 0.996376872, 0.0850477219, 0.931611478, -0.0309110768, 0.362138808), 
                        ["Hit"] = v.Character.Head
                          }
                            local tbl_36B5BF78 = 
                              {
                            ["RayObject"] = Ray.new(Vector3.new(839.947937, 99.4999466, 2211.61719), Vector3.new(-379.036713, 35.5271149, 122.755898)), 
                          ["Distance"] = 61.299308776855, 
                        ["Cframe"] = CFrame.new(809.180542, 102.100838, 2219.57886, 0.366918802, 0.0893238857, -0.92595464, 0, 0.995379448, 0.0960210636, 0.930253029, -0.035231933, 0.365223378), 
                      ["Hit"] = v.Character.Head
                    }
                  local tbl_36B585E8 = 
                {
              ["RayObject"] = Ray.new(Vector3.new(839.947937, 99.4999466, 2211.61719), Vector3.new(-379.921326, 20.3493805, 123.473427)), 
            ["Distance"] = 61.141574859619, 
          ["Cframe"] = CFrame.new(809.180542, 100.912926, 2219.61255, 0.36787042, 0.0533849634, -0.928343356, 0, 0.99835068, 0.0574107729, 0.929877102, -0.021119725, 0.367263645), 
        ["Hit"] = v.Character.Head
      }
    local tbl_36B5CC38 = 
  {
["RayObject"] = Ray.new(Vector3.new(839.947937, 99.4999466, 2211.61719), Vector3.new(-371.464417, 33.5804787, 144.521744)), 
  ["Distance"] = 63.866916656494, 
    ["Cframe"] = CFrame.new(808.680542, 102.047562, 2221.70142, 0.418726623, 0.0821772888, -0.90438652, 0, 0.995897233, 0.0904924273, 0.908112347, -0.0378915891, 0.417008668), 
      ["Hit"] = v.Character.Head
        }
          local tbl_36B5BB28 = 
            {
              ["RayObject"] = Ray.new(Vector3.new(839.947937, 99.4999466, 2211.61719), Vector3.new(-376.177948, 24.8940163, 133.680374)), 
                ["Distance"] = 62.931880950928, 
                  ["Cframe"] = CFrame.new(808.680542, 101.319054, 2220.68823, 0.391926825, 0.0631896704, -0.917823792, 0, 0.997638524, 0.0686846897, 0.91999644, -0.0269193724, 0.391001284), 
                    ["Hit"] = v.Character.Head
                      }
                        local tbl_36B58A98 = 
                      {
                    tbl_36B5BB28, 
                  tbl_36B5CC38, 
                tbl_36B585E8, 
              tbl_36B5BF78, 
            tbl_36BA2890
          }
        local tbl_main = 
      {
    tbl_36B58A98, 
  game:GetService("Players").LocalPlayer.Backpack["Remington 870"]
}
  game:GetService("ReplicatedStorage").ShootEvent:FireServer(unpack(tbl_main))
    end
      end
        workspace.Remote.TeamEvent:FireServer("Bright orange")
end)

hitbox.Name = "hitbox"
hitbox.Parent = scriptsmain
hitbox.BackgroundColor3 = Color3.new(0, 0, 0)
hitbox.Position = UDim2.new(0.12686567, 0, 0.379146874, 0)
hitbox.Size = UDim2.new(0, 126, 0, 50)
hitbox.Font = Enum.Font.GothamBlack
hitbox.Text = "Guard Hitbox Expander"
hitbox.TextColor3 = Color3.new(0, 1, 0)
hitbox.TextScaled = true
hitbox.TextSize = 14
hitbox.TextWrapped = true
hitbox.MouseButton1Down:connect(function()
_G.HeadSize = 10
_G.Disabled = true
_G.Reset = true

game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in pairs(game.Teams["Guards"]:GetPlayers()) do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
if _G.Reset then
if v.Character.Humanoid.Health == 0 then 
v.Character.HumanoidRootPart.Size = Vector3.new(1,1,1)
end
end
end
end
end
end)
end)

antikickmainon.Name = "antikickmainon"
antikickmainon.Parent = scriptsmain
antikickmainon.BackgroundColor3 = Color3.new(1, 1, 1)
antikickmainon.Position = UDim2.new(0.559701502, 0, 0.379146934, 0)
antikickmainon.Size = UDim2.new(0, 126, 0, 50)
antikickmainon.Visible = false

antikickon.Name = "antikickon"
antikickon.Parent = antikickmainon
antikickon.BackgroundColor3 = Color3.new(0, 1, 0)
antikickon.Size = UDim2.new(0, 126, 0, 50)
antikickon.Font = Enum.Font.GothamBlack
antikickon.Text = "CrimAura (On)"
antikickon.TextColor3 = Color3.new(0, 0, 0)
antikickon.TextSize = 14
antikickon.MouseButton1Down:connect(function()
antikickmainon.Visible = false
antikickmainoff.Visible = true
_G.Crim = false
end)

antikickmainoff.Name = "antikickmainoff"
antikickmainoff.Parent = scriptsmain
antikickmainoff.BackgroundColor3 = Color3.new(1, 1, 1)
antikickmainoff.Position = UDim2.new(0.559701562, 0, 0.379146814, 0)
antikickmainoff.Size = UDim2.new(0, 126, 0, 50)

antikickoff.Name = "antikickoff"
antikickoff.Parent = antikickmainoff
antikickoff.BackgroundColor3 = Color3.new(1, 0, 0)
antikickoff.Size = UDim2.new(0, 126, 0, 50)
antikickoff.Font = Enum.Font.GothamBlack
antikickoff.Text = "CrimAura (Off)"
antikickoff.TextColor3 = Color3.new(0, 0, 0)
antikickoff.TextSize = 14
antikickoff.TextWrapped = true
antikickoff.MouseButton1Down:connect(function()
antikickmainoff.Visible = false
antikickmainon.Visible = true
wait(0.6)
_G.Crim = true
	while _G.Crim == true do wait() do
		for i,v in pairs(game.Teams["Guards"]:GetPlayers()) do
	for o,l in pairs(game.Teams["Inmates"]:GetPlayers()) do
		local tbl_main = 
{
      game:GetService("Workspace")["Prison_ITEMS"].single["Crude Knife"].ITEMPICKUP
}
game:GetService("Workspace").Remote.ItemHandler:InvokeServer(unpack(tbl_main))

wait(0.00001)
for i,v in pairs(game.Teams["Guards"]:GetPlayers()) do
	for o,l in pairs(game.Teams["Inmates"]:GetPlayers()) do
if v.Name ~= game.Players.LocalPlayer.Name then
	if l.Name ~= game.Players.LocalPlayer.Name then
local tbl_main = 
{
      v, 
      game:GetService("Players").LocalPlayer.Backpack["Crude Knife"]
}
game:GetService("ReplicatedStorage").meleeEvent:FireServer(unpack(tbl_main))
local tbl_main = 
{
      l, 
      game:GetService("Players").LocalPlayer.Backpack["Crude Knife"]
}
game:GetService("ReplicatedStorage").meleeEvent:FireServer(unpack(tbl_main))


local Crim = Instance.new("Part")
   Crim.Name = "plr"
     Crim.Parent = workspace
       Crim.Anchored = true
         Crim.Archivable = true
           Crim.CFrame = CFrame.new(9e99, 9e99, 9e99)
              Bruh = game.Workspace["Criminals Spawn"].SpawnLocation
	          Crim.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	       Crim.Transparency = 1
	    Crim.Anchored = true
	 Crim.CanCollide = false
  lol = true				
Bruh = game.Workspace["Criminals Spawn"].SpawnLocation
  Bruh.CanCollide = false
    Bruh.Size = Vector3.new(51.05, 24.12, 54.76)
	  Bruh.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		 Bruh.Transparency = 1
		 		   wait(0.001)
		     lol = false
		         if lol == false then
		           Bruh.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		           Bruh.Size = Vector3.new(6, 0.2, 6)
		           Bruh.Transparency = 0
		           lol = false
		    end
		end
	end
end
end
end
end
end
end
end)

modguns.Name = "modguns"
modguns.Parent = scriptsmain
modguns.BackgroundColor3 = Color3.new(0, 0, 0)
modguns.Position = UDim2.new(0.137171283, 0, 0.706161141, 0)
modguns.Size = UDim2.new(0, 329, 0, 50)
modguns.Font = Enum.Font.GothamBlack
modguns.Text = "Mod All Guns"
modguns.TextColor3 = Color3.new(0, 1, 0)
modguns.TextSize = 30
modguns.TextWrapped = true
modguns.MouseButton1Down:connect(function()
for i,v in pairs(Workspace.Prison_ITEMS.giver:GetChildren()) do
 
lol = Workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
print(lol)
end

local client = game:GetService("Players").LocalPlayer

for _, child in next, client.Backpack:GetChildren() do
if child:IsA("Tool") then
client.Character.Humanoid:UnequipTools()
end
end
local reg = (getreg or debug.getregistry)
local get = (debug.getupvalues or secret953)
local client = game:GetService("Players").LocalPlayer
local render = game:GetService('RunService').RenderStepped

local function fakeStats()
function change(t)
local myStats = {
ReloadTime = 0,
FireRate = 0,
AutoFire = true,
StoredAmmo = math.huge,
MaxAmmo = math.huge,
CurrentAmmo = math.huge,
}

for name, fake in next, myStats do
t[name] = fake
end
end

for k, v in next, reg() do
if type(v) == "function" then
local upvals = get(v)
if upvals and upvals.GunStates then
change(upvals.GunStates)
end
end
end
end

client.Backpack.ChildAdded:connect(function(child)
if child:IsA("Tool") and child:FindFirstChild("GunInterface") then
client.Character.Humanoid:EquipTool(child)

render:wait()
fakeStats()
render:wait()

client.Character.Humanoid:UnequipTools()
end
end)

for _, child in next, client.Backpack:GetChildren() do
if child:IsA("Tool") and child:FindFirstChild("GunInterface") then
client.Character.Humanoid:EquipTool(child)

render:wait()
fakeStats()
render:wait()

client.Character.Humanoid:UnequipTools()
end
end
end)

for i,v in pairs(game:GetService("Workspace")["Prison_Halls"]:GetChildren()) do 
if v.Name ~= ("floor") then
	if v.Name ~= ("lights") then
	     v:Remove()
      end
   end
end
for i,v in pairs(game:GetService("Workspace")["Prison_Guard_Outpost"]:GetChildren()) do 
   if v.Name ~= ("floor") then
	  if v.Name ~= ("lights") then
	     v:Remove()
	  end
   end
end
for i,v in pairs(game:GetService("Workspace")["Prison_Cafeteria"]:GetChildren()) do 
     if v.Name ~= ("floor") then
	    if v.Name ~= ("lights") then
	     v:Remove()
      end
   end
end
for i,v in pairs(game:GetService("Workspace")["Prison_Fences"]:GetChildren()) do 
	v:Remove()
end
for i,v in pairs(game:GetService("Workspace")["Prison_OuterWall"]:GetChildren()) do 
	v:Remove()
end
for i,v in pairs(game:GetService("Workspace")["Doors"]:GetChildren()) do 
	v:Remove()
end
for i,v in pairs(game:GetService("Workspace")["Prison_Administration"]:GetChildren()) do 
   if v.Name ~= ("light_floor1") then
	   if v.Name ~= ("light_floor2") then
	     v:Remove()
      end
   end
end
for i,v in pairs(game:GetService("Workspace")["Prison_Cellblock"]:GetChildren()) do 
   if v.Name ~= ("c_floor") then
	   if v.Name ~= ("a_lights") then
		   if v.Name ~= ("b_lights") then
			  if v.Name ~= ("c_lights") then
	            v:Remove()
			end
		  end
	   end
   end
end
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(917.909851, 129.489944, 2328.6958)
wait(1)
print("Successfully Loaded PrisonBreaker V1.6")
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "PrisonBreaker V1.6 Loaded";
Text = "Enjoy destroying the game ;)";
})