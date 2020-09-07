banned = {"Players you hate"}
for _,p in pairs(game.Players:GetChildren()) do
   for _,v in pairs(banned) do
      if p.Name==v then
         print("SAY :BTOOLS  NOW!")
         repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("Delete")
         game.Players.LocalPlayer.Backpack:WaitForChild("Delete"):WaitForChild("delete"):FireServer(p)
      end 
   end
end
game.Players.PlayerAdded:Connect(function(p)
   for _,v in pairs(banned) do
      if p.Name==v then
         print("EQUIP THE BTOOLS NOW!")
         repeat wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("Delete")
         game.Players.LocalPlayer.Backpack:WaitForChild("Delete"):WaitForChild("delete"):FireServer(p)
      end 
   end
end)
function cmdz()
   if game.Players.LocalPlayer.PlayerGui:FindFirstChild("Cmds") then
   game.Players.LocalPlayer.PlayerGui.Cmds:Destroy()
end
function sandbox(var,func)
   local env = getfenv(func)
   local newenv = setmetatable({},{
       __index = function(self,k)
           if k=="script" then
               return var
           else
               return env[k]
           end
       end,
   })
   setfenv(func,newenv)
   return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
ScreenGui0 = Instance.new("ScreenGui")
ScrollingFrame1 = Instance.new("ScrollingFrame")
TextLabel2 = Instance.new("TextLabel")
UIGridLayout3 = Instance.new("UIGridLayout")
TextLabel4 = Instance.new("TextLabel")
TextLabel5 = Instance.new("TextLabel")
TextLabel6 = Instance.new("TextLabel")
TextLabel7 = Instance.new("TextLabel")
TextLabel8 = Instance.new("TextLabel")
TextLabel9 = Instance.new("TextLabel")
TextLabel10 = Instance.new("TextLabel")
TextLabel11 = Instance.new("TextLabel")
TextLabel12 = Instance.new("TextLabel")
TextLabel13 = Instance.new("TextLabel")
TextLabel14 = Instance.new("TextLabel")
TextLabel15 = Instance.new("TextLabel")
TextLabel16 = Instance.new("TextLabel")
TextLabel17 = Instance.new("TextLabel")
TextLabel18 = Instance.new("TextLabel")
TextLabel19 = Instance.new("TextLabel")
TextButton20 = Instance.new("TextButton")
Script21 = Instance.new("Script")
ScreenGui0.Name = "Cmds"
ScreenGui0.Parent = mas
ScrollingFrame1.Parent = ScreenGui0
ScrollingFrame1.Position = UDim2.new(-0.5, 0, 0.280561119, 0)
ScrollingFrame1.Transparency = 0.5
ScrollingFrame1.Size = UDim2.new(0, 226, 0, 233)
ScrollingFrame1.BackgroundColor = BrickColor.new("Really black")
ScrollingFrame1.BackgroundColor3 = Color3.new(0, 0, 0)
ScrollingFrame1.BackgroundTransparency = 0.5
TextLabel2.Name = "a"
TextLabel2.Parent = ScrollingFrame1
TextLabel2.Position = UDim2.new(-0.128205135, 0, -0.128755361, 0)
TextLabel2.Transparency = 1
TextLabel2.Size = UDim2.new(0, 174, 0, 44)
TextLabel2.BackgroundColor = BrickColor.new("Institutional white")
TextLabel2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel2.BackgroundTransparency = 1
TextLabel2.Font = Enum.Font.SciFi
TextLabel2.FontSize = Enum.FontSize.Size24
TextLabel2.Text = ":kick kick a user"
TextLabel2.TextColor = BrickColor.new("Institutional white")
TextLabel2.TextColor3 = Color3.new(1, 1, 1)
TextLabel2.TextSize = 20
TextLabel2.TextStrokeTransparency = 0
UIGridLayout3.Parent = ScrollingFrame1
UIGridLayout3.CellPadding = UDim2.new(0, 0, 0, 5)
UIGridLayout3.CellSize = UDim2.new(0, 174, 0, 44)
TextLabel4.Name = "b"
TextLabel4.Parent = ScrollingFrame1
TextLabel4.Transparency = 1
TextLabel4.Size = UDim2.new(0, 174, 0, 44)
TextLabel4.BackgroundColor = BrickColor.new("Institutional white")
TextLabel4.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel4.BackgroundTransparency = 1
TextLabel4.Font = Enum.Font.SciFi
TextLabel4.FontSize = Enum.FontSize.Size24
TextLabel4.Text = ":ban  ban a user"
TextLabel4.TextColor = BrickColor.new("Institutional white")
TextLabel4.TextColor3 = Color3.new(1, 1, 1)
TextLabel4.TextSize = 20
TextLabel4.TextStrokeTransparency = 0
TextLabel5.Name = "c"
TextLabel5.Parent = ScrollingFrame1
TextLabel5.Transparency = 1
TextLabel5.Size = UDim2.new(0, 174, 0, 44)
TextLabel5.BackgroundColor = BrickColor.new("Institutional white")
TextLabel5.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel5.BackgroundTransparency = 1
TextLabel5.Font = Enum.Font.SciFi
TextLabel5.FontSize = Enum.FontSize.Size24
TextLabel5.Text = ":admin  get admin"
TextLabel5.TextColor = BrickColor.new("Institutional white")
TextLabel5.TextColor3 = Color3.new(1, 1, 1)
TextLabel5.TextSize = 20
TextLabel5.TextStrokeTransparency = 0
TextLabel6.Name = "d"
TextLabel6.Parent = ScrollingFrame1
TextLabel6.Transparency = 1
TextLabel6.Size = UDim2.new(0, 174, 0, 44)
TextLabel6.BackgroundColor = BrickColor.new("Institutional white")
TextLabel6.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel6.BackgroundTransparency = 1
TextLabel6.Font = Enum.Font.SciFi
TextLabel6.FontSize = Enum.FontSize.Size24
TextLabel6.Text = ":shutdown Kicks all"
TextLabel6.TextColor = BrickColor.new("Institutional white")
TextLabel6.TextColor3 = Color3.new(1, 1, 1)
TextLabel6.TextSize = 20
TextLabel6.TextStrokeTransparency = 0
TextLabel6.TextWrap = true
TextLabel6.TextWrapped = true
TextLabel7.Name = "f"
TextLabel7.Parent = ScrollingFrame1
TextLabel7.Transparency = 1
TextLabel7.Size = UDim2.new(0, 174, 0, 44)
TextLabel7.BackgroundColor = BrickColor.new("Institutional white")
TextLabel7.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel7.BackgroundTransparency = 1
TextLabel7.Font = Enum.Font.SciFi
TextLabel7.FontSize = Enum.FontSize.Size24
TextLabel7.Text = ":unslock  unlocks the server"
TextLabel7.TextColor = BrickColor.new("Institutional white")
TextLabel7.TextColor3 = Color3.new(1, 1, 1)
TextLabel7.TextSize = 20
TextLabel7.TextStrokeTransparency = 0
TextLabel7.TextWrap = true
TextLabel7.TextWrapped = true
TextLabel8.Name = "e"
TextLabel8.Parent = ScrollingFrame1
TextLabel8.Transparency = 1
TextLabel8.Size = UDim2.new(0, 174, 0, 44)
TextLabel8.BackgroundColor = BrickColor.new("Institutional white")
TextLabel8.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel8.BackgroundTransparency = 1
TextLabel8.Font = Enum.Font.SciFi
TextLabel8.FontSize = Enum.FontSize.Size24
TextLabel8.Text = ":slock  locks the server"
TextLabel8.TextColor = BrickColor.new("Institutional white")
TextLabel8.TextColor3 = Color3.new(1, 1, 1)
TextLabel8.TextSize = 20
TextLabel8.TextStrokeTransparency = 0
TextLabel8.TextWrap = true
TextLabel8.TextWrapped = true
TextLabel9.Name = "g"
TextLabel9.Parent = ScrollingFrame1
TextLabel9.Transparency = 1
TextLabel9.Size = UDim2.new(0, 174, 0, 44)
TextLabel9.BackgroundColor = BrickColor.new("Institutional white")
TextLabel9.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel9.BackgroundTransparency = 1
TextLabel9.Font = Enum.Font.SciFi
TextLabel9.FontSize = Enum.FontSize.Size24
TextLabel9.Text = ":rworkspace  deletes workspace"
TextLabel9.TextColor = BrickColor.new("Institutional white")
TextLabel9.TextColor3 = Color3.new(1, 1, 1)
TextLabel9.TextSize = 20
TextLabel9.TextStrokeTransparency = 0
TextLabel9.TextWrap = true
TextLabel9.TextWrapped = true
TextLabel10.Name = "h"
TextLabel10.Parent = ScrollingFrame1
TextLabel10.Transparency = 1
TextLabel10.Size = UDim2.new(0, 174, 0, 44)
TextLabel10.BackgroundColor = BrickColor.new("Institutional white")
TextLabel10.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel10.BackgroundTransparency = 1
TextLabel10.Font = Enum.Font.SciFi
TextLabel10.FontSize = Enum.FontSize.Size24
TextLabel10.Text = ":radminpads  removes pads"
TextLabel10.TextColor = BrickColor.new("Institutional white")
TextLabel10.TextColor3 = Color3.new(1, 1, 1)
TextLabel10.TextSize = 20
TextLabel10.TextStrokeTransparency = 0
TextLabel10.TextWrap = true
TextLabel10.TextWrapped = true
TextLabel11.Name = "i"
TextLabel11.Parent = ScrollingFrame1
TextLabel11.Transparency = 1
TextLabel11.Size = UDim2.new(0, 174, 0, 44)
TextLabel11.BackgroundColor = BrickColor.new("Institutional white")
TextLabel11.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel11.BackgroundTransparency = 1
TextLabel11.Font = Enum.Font.SciFi
TextLabel11.FontSize = Enum.FontSize.Size24
TextLabel11.Text = ":rregen  removes regen button"
TextLabel11.TextColor = BrickColor.new("Institutional white")
TextLabel11.TextColor3 = Color3.new(1, 1, 1)
TextLabel11.TextSize = 20
TextLabel11.TextStrokeTransparency = 0
TextLabel11.TextWrap = true
TextLabel11.TextWrapped = true
TextLabel12.Name = "j"
TextLabel12.Parent = ScrollingFrame1
TextLabel12.Transparency = 1
TextLabel12.Size = UDim2.new(0, 174, 0, 44)
TextLabel12.BackgroundColor = BrickColor.new("Institutional white")
TextLabel12.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel12.BackgroundTransparency = 1
TextLabel12.Font = Enum.Font.SciFi
TextLabel12.FontSize = Enum.FontSize.Size24
TextLabel12.Text = ":robby  removes obby"
TextLabel12.TextColor = BrickColor.new("Institutional white")
TextLabel12.TextColor3 = Color3.new(1, 1, 1)
TextLabel12.TextSize = 20
TextLabel12.TextStrokeTransparency = 0
TextLabel12.TextWrap = true
TextLabel12.TextWrapped = true
TextLabel13.Name = "k"
TextLabel13.Parent = ScrollingFrame1
TextLabel13.Transparency = 1
TextLabel13.Size = UDim2.new(0, 174, 0, 44)
TextLabel13.BackgroundColor = BrickColor.new("Institutional white")
TextLabel13.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel13.BackgroundTransparency = 1
TextLabel13.Font = Enum.Font.SciFi
TextLabel13.FontSize = Enum.FontSize.Size24
TextLabel13.Text = ":rhouse  Removes the ugly house"
TextLabel13.TextColor = BrickColor.new("Institutional white")
TextLabel13.TextColor3 = Color3.new(1, 1, 1)
TextLabel13.TextSize = 20
TextLabel13.TextStrokeTransparency = 0
TextLabel13.TextWrap = true
TextLabel13.TextWrapped = true
TextLabel14.Name = "l"
TextLabel14.Parent = ScrollingFrame1
TextLabel14.Transparency = 1
TextLabel14.Size = UDim2.new(0, 174, 0, 44)
TextLabel14.BackgroundColor = BrickColor.new("Institutional white")
TextLabel14.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel14.BackgroundTransparency = 1
TextLabel14.Font = Enum.Font.SciFi
TextLabel14.FontSize = Enum.FontSize.Size24
TextLabel14.Text = ":robbybox  Removes the obby box"
TextLabel14.TextColor = BrickColor.new("Institutional white")
TextLabel14.TextColor3 = Color3.new(1, 1, 1)
TextLabel14.TextSize = 20
TextLabel14.TextStrokeTransparency = 0
TextLabel14.TextWrap = true
TextLabel14.TextWrapped = true
TextLabel15.Name = "m"
TextLabel15.Parent = ScrollingFrame1
TextLabel15.Transparency = 1
TextLabel15.Size = UDim2.new(0, 174, 0, 44)
TextLabel15.BackgroundColor = BrickColor.new("Institutional white")
TextLabel15.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel15.BackgroundTransparency = 1
TextLabel15.Font = Enum.Font.SciFi
TextLabel15.FontSize = Enum.FontSize.Size24
TextLabel15.Text = ":rbuildbricks  Removes build bricks"
TextLabel15.TextColor = BrickColor.new("Institutional white")
TextLabel15.TextColor3 = Color3.new(1, 1, 1)
TextLabel15.TextScaled = true
TextLabel15.TextSize = 20
TextLabel15.TextStrokeTransparency = 0
TextLabel15.TextWrap = true
TextLabel15.TextWrapped = true
TextLabel16.Name = "n"
TextLabel16.Parent = ScrollingFrame1
TextLabel16.Transparency = 1
TextLabel16.Size = UDim2.new(0, 174, 0, 44)
TextLabel16.BackgroundColor = BrickColor.new("Institutional white")
TextLabel16.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel16.BackgroundTransparency = 1
TextLabel16.Font = Enum.Font.SciFi
TextLabel16.FontSize = Enum.FontSize.Size24
TextLabel16.Text = ":radmindivider Removes dividers"
TextLabel16.TextColor = BrickColor.new("Institutional white")
TextLabel16.TextColor3 = Color3.new(1, 1, 1)
TextLabel16.TextSize = 20
TextLabel16.TextStrokeTransparency = 0
TextLabel16.TextWrap = true
TextLabel16.TextWrapped = true
TextLabel17.Name = "o"
TextLabel17.Parent = ScrollingFrame1
TextLabel17.Transparency = 1
TextLabel17.Size = UDim2.new(0, 174, 0, 44)
TextLabel17.BackgroundColor = BrickColor.new("Institutional white")
TextLabel17.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel17.BackgroundTransparency = 1
TextLabel17.Font = Enum.Font.SciFi
TextLabel17.FontSize = Enum.FontSize.Size24
TextLabel17.Text = ":banlist prints banlist."
TextLabel17.TextColor = BrickColor.new("Institutional white")
TextLabel17.TextColor3 = Color3.new(1, 1, 1)
TextLabel17.TextSize = 20
TextLabel17.TextStrokeTransparency = 0
TextLabel17.TextWrap = true
TextLabel17.TextWrapped = true
TextLabel18.Name = "p"
TextLabel18.Parent = ScrollingFrame1
TextLabel18.Transparency = 1
TextLabel18.Size = UDim2.new(0, 174, 0, 44)
TextLabel18.BackgroundColor = BrickColor.new("Institutional white")
TextLabel18.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel18.BackgroundTransparency = 1
TextLabel18.Font = Enum.Font.SciFi
TextLabel18.FontSize = Enum.FontSize.Size24
TextLabel18.Text = ":explore  Makes an easy explorer"
TextLabel18.TextColor = BrickColor.new("Institutional white")
TextLabel18.TextColor3 = Color3.new(1, 1, 1)
TextLabel18.TextSize = 20
TextLabel18.TextStrokeTransparency = 0
TextLabel18.TextWrap = true
TextLabel18.TextWrapped = true
TextLabel19.Name = "q"
TextLabel19.Parent = ScrollingFrame1
TextLabel19.Transparency = 1
TextLabel19.Size = UDim2.new(0, 174, 0, 44)
TextLabel19.BackgroundColor = BrickColor.new("Institutional white")
TextLabel19.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel19.BackgroundTransparency = 1
TextLabel19.Font = Enum.Font.SciFi
TextLabel19.FontSize = Enum.FontSize.Size24
TextLabel19.Text = ":cmdsx  Makes a list of commands"
TextLabel19.TextColor = BrickColor.new("Institutional white")
TextLabel19.TextColor3 = Color3.new(1, 1, 1)
TextLabel19.TextSize = 20
TextLabel19.TextStrokeTransparency = 0
TextLabel19.TextWrap = true
TextLabel19.TextWrapped = true
TextButton20.Name = "close"
TextButton20.Parent = ScreenGui0
TextButton20.Position = UDim2.new(0.21011059, 0, 0.18036072, 0)
TextButton20.Transparency = 0.5
TextButton20.BackgroundColor = BrickColor.new("Really black")
TextButton20.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton20.BackgroundTransparency = 0.5
TextButton20.Font = Enum.Font.SourceSans
TextButton20.FontSize = Enum.FontSize.Size14
TextButton20.Text = ""
TextButton20.TextColor = BrickColor.new("Institutional white")
TextButton20.TextColor3 = Color3.new(0, 0, 0)
TextButton20.TextScaled = true
TextButton20.TextSize = 14
TextButton20.TextWrap = true
TextButton20.TextWrapped = true
Script21.Name = "Entry"
Script21.Parent = ScreenGui0
mas.Cmds.close.TextTransparency=0
   for _,v in pairs(mas.Cmds.ScrollingFrame:GetChildren()) do
       if v.className~="UIGridLayout" then
           v.TextTransparency=0
       end
   end
table.insert(cors,sandbox(Script21,function()
Cmds=script.Parent
Scroll=Cmds.ScrollingFrame
close=Cmds.close
Scroll:TweenPosition(UDim2.new(0.21, 0,0.281, 0),Enum.EasingDirection.In,Enum.EasingStyle.Bounce)
close:TweenSize(UDim2.new(0, 226,0, 50))
close.Text="Close"

close.MouseButton1Click:Connect(function()
   Scroll:TweenPosition(UDim2.new(-0.5, 0,0.281, 0),Enum.EasingDirection.In,Enum.EasingStyle.Bounce)
   close:TweenSize(UDim2.new(0,0,0,0))
   close.Text=""
   
   wait(1.5)
   script.Parent:Destroy()
   return
end)
end))
for i,v in pairs(mas:GetChildren()) do
   v.Parent = game.Players.LocalPlayer.PlayerGui
   pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
   spawn(function()
       pcall(v)
   end)
end
end
function explore()
   TextProperties = {"ClassName", "Name", "Value", "Text", "Reflectance", "Transparency", "Heat", "TeamName", "WalkSpeed", "Health", "MaxHealth", "Size", "Position", "AccountAge", "RobloxLocked", "TeamColor", "userId", "Brightness", "Ambient", "TimeOfDay", "FieldOfView", "CameraType", "LinkedSource"}
BoolProperties = {"Anchored", "CanCollide", "Disabled", "Jump", "Sit", "Visible", "Enabled", "Locked", "FilteringEnabled", "StreamingEnabled", "GlobalShadows"}
BrickColorProperties = {"BrickColor", "Color", "TeamColor", "Texture", "Value"}
s = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
s.ResetOnSpawn=false
pgr = Instance.new("TextButton")
pgr.Parent = s
pgr.Size = UDim2.new(0,100,0,40)
pgr.Position = UDim2.new(0,30,0,440)
pgr.Text="Explorer"
pgr.BackgroundTransparency = 0.3
pgr.TextColor = BrickColor.new("White")
pgr.BackgroundColor = BrickColor.new("Really Black")
pgr.BorderColor = BrickColor.new("Black")
pgr.Font = "ArialBold"
pgr.FontSize = "Size14"
pgr.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
pgr.TextStrokeTransparency = 0.3
pgr.BorderSizePixel = 1
pgr.BorderColor = BrickColor.new("White")

if game.Players.LocalPlayer.PlayerGui:findFirstChild("Explorer") then 
   game.Players.LocalPlayer.PlayerGui:findFirstChild("Explorer"):Remove() 
end

local Cloned
local Deleted
local DeleteParent
local Player
local Search
local ScriptSearch
local Gui
local Cloned = nil
local Deleted = nil
local DeleteParent = nil
local Current = 0
local CurrentOption = 0

function Clear()
   if Gui then 
       Gui:Remove() 
   end
   Current = 0
   CurrentOption = 0
end

function AddButton(N, Function, Color, Copy)
   if not N then 
       error("RenderButton - No Name Specified")
   end
   if not Function then 
       error("RenderButton - No Function Specified") 
   end
   if not Color then 
       Color = Color3.new(1, 1, 1) 
   end
   if Copy == nil then 
       Copy = true 
   end
   P = Instance.new("TextButton")
   if Copy then
       P.Size = UDim2.new(0, 110, 0, 20)
   else
       P.Size = UDim2.new(0, 130, 0, 20)
   end
   P.Text = N.Name
   P.Name = N.Name
   P.Parent = Gui
   P.BackgroundColor3 = Color
   P.TextColor3 = Color3.new(0, 0, 0)
   P.BackgroundTransparency = 0.5
   P.Position = UDim2.new(0, ((math.modf(Current/30))*150)+300, 0, 50+(20*((Current%30)-1)))
   P.MouseButton1Click:connect(function() 
       Function(P) 
   end)
   D = Instance.new("TextButton")
   D.Size = UDim2.new(0, 20, 0, 20)
   D.Text = "X"
   D.Name = N.Name
   D.Parent = Gui
   D.BackgroundColor3 = Color3.new(1, 0, 0)
   D.TextColor3 = Color3.new(0, 0, 0)
   D.BackgroundTransparency = 0.5
   D.Position = UDim2.new(0, ((math.modf(Current/30))*150)+300+130, 0, 50+(20*((Current%30)-1)))
   D.MouseButton1Click:connect(function()
       Deleted = N
       DeleteParent = N.Parent
       game.Players.LocalPlayer.Backpack:WaitForChild("Delete"):WaitForChild("delete"):FireServer(N)
       function Search(Object)
   Gui = Instance.new("ScreenGui")
   Gui.Parent = game.Players.LocalPlayer.PlayerGui
   Gui.Name = "Explorer"
   if Object ~= game then
       AddOption("Back", function() 
           Clear(); 
           Search(Object.Parent) 
       end, Color3.new(0.5, 1, 1), false)
   end
   AddOption("Reload", function() Clear(); Search(Object); end, Color3.new(0.2, 1, 0.2), false)
   if Cloned then
       AddOption("Paste", function() Cloned:Clone().Parent = Object; Clear(); Search(Object); end, Color3.new(0.5, 1, 1), false)
   end
   if Deleted then
       AddOption("Undo", function() Deleted.Parent = DeleteParent; Deleted = nil; DeletedParent = nil; Clear(); Search(Object); end, Color3.new(1, 0.6, 0.1), false)
   end
   if Object:IsA("Player") then
       AddOption("Goto Character", function() Clear(); if Object.Character then Search(Object.Character); end end, Color3.new(1, 1, 1), false)
   end
   if Object:IsA("LocalScript") then
       AddOption("EditScript", function() Clear(); ScriptSearch(Object); end, Color3.new(1, 1, 1), false)
   end
   if Object:IsA("Terrain") then
       AddOption("Clear", function() Object:Clear(); end, Color3.new(1, 1, 1), false)
   end
   LoadOptions(Object)
   AddOption("Close", Clear, Color3.new(1, 0.2, 0), false)
   if not Object:IsA("Workspace") or not Object:IsA("Player") then
       for Num, Obj in pairs(Object:GetChildren()) do
           --if not Obj:IsA("BasePart") or not Object.Parent == game.Workspace then
           if true then
               if Obj:IsA("LocalScript") then
                   AddButton(Obj, function() Clear(); Search(Obj); end, Color3.new(1, 0, 0), true)
               elseif Obj:IsA("Script") or Obj:IsA("StarterScript") or Obj:IsA("CoreScript") then
                   AddButton(Obj, function() Clear(); Search(Obj); end, Color3.new(0.5, 0.5, 0.8), true)
               elseif Obj.Parent == game then
                   AddButton(Obj, function() Clear(); Search(Obj); end, Color3.new(1, 1, 1), false)
               else
                   AddButton(Obj, function() Clear(); Search(Obj); end, Color3.new(1, 1, 1), true)
               end
           end
       end
   end
   function MoveUp(Place, Amount)
       for i,v in pairs(Place:GetChildren()) do
           if v:IsA("TextLabel") or v:IsA("TextBox") then
               v.Position = v.Position + UDim2.new(0,0,0,-Amount)
           end
       end
   end
   function MoveDown(Place, Amount)
       for i,v in pairs(Place:GetChildren()) do
           if v:IsA("TextLabel") or v:IsA("TextBox") then
               v.Position = v.Position + UDim2.new(0,0,0,Amount)
           end
       end
   end
   i=0
   function ScriptSearch(S)
       Script2 = S
       Script = Script2.Source
       Table = {}
       Enabled = true
       Gui = Instance.new("ScreenGui")
       Gui.Parent = game.Players.LocalPlayer.PlayerGui
       Gui.Name = "Explorer"
       while Enabled do
           Start, End = string.find(Script, '\n')
           print(Start, End)
           if Start and End then
               table.insert(Table, string.sub(Script, 1, End))
               New = string.sub(Script, End+1, string.len(Script))
               Script = New
           else
               Enabled = false
               table.insert(Table, string.sub(Script, 1, End))
               print("Finished")
           end
       end
       P = Instance.new("TextLabel")
       P.Size = UDim2.new(0, 500, 0, 20)
       P.Text = Script2.Name
       P.Name = "Script Line"
       P.Parent = Gui
       P.BackgroundColor3 = Color3.new(1, 1, 1)
       P.TextColor3 = Color3.new(0, 0, 0)
       P.BackgroundTransparency = 0.5
       P.Position = UDim2.new(0.5, -250, 0, 150+(20*(i-1)))
       P.TextXAlignment = "Left"
       i=i+1
       New = {}
       for I,Val in pairs(Table) do
           print(Val)
           P = Instance.new("TextBox")
           P.ClearTextOnFocus = false
           P.Size = UDim2.new(0, 500, 0, 20)
           P.Text = Val
           P.Name = "Script Line"
           P.Parent = Gui
           P.BackgroundColor3 = Color3.new(1, 1, 1)
           P.TextColor3 = Color3.new(0, 0, 0)
           P.BackgroundTransparency = 0.5
           P.Position = UDim2.new(0.5, -250, 0, 150+(20*(i-1)))
           P.TextXAlignment = "Left"
           table.insert(New, P)
           i=i+1
       end
       i=1
       P = Instance.new("TextButton")
       P.Size = UDim2.new(0, 20, 0, 20)
       P.Text = "^"
       P.Name = "Scroll"
       P.Parent = Gui
       P.BackgroundColor3 = Color3.new(1, 1, 1)
       P.TextColor3 = Color3.new(0, 0, 0)
       P.BackgroundTransparency = 0.5
       P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))
       P.MouseButton1Click:connect(function() 
           MoveUp(Gui, -20) 
       end)
       i=i+1
       P = Instance.new("TextButton")
       P.Size = UDim2.new(0, 20, 0, 20)
       P.Text = "v"
       P.Name = "Scroll"
       P.Parent = Gui
       P.BackgroundColor3 = Color3.new(1, 1, 1)
       P.TextColor3 = Color3.new(0, 0, 0)
       P.BackgroundTransparency = 0.5
       P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))
       P.MouseButton1Click:connect(function() 
           MoveDown(Gui, -20) 
       end)
       i=i+1
       P = Instance.new("TextButton")
       P.Size = UDim2.new(0, 20, 0, 20)
       P.Text = "^^"
       P.Name = "Scroll"
       P.Parent = Gui
       P.BackgroundColor3 = Color3.new(1, 1, 1)
       P.TextColor3 = Color3.new(0, 0, 0)
       P.BackgroundTransparency = 0.5
       P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))
       P.MouseButton1Click:connect(function() 
           MoveUp(Gui, -200) 
       end)
       i=i+1
       P = Instance.new("TextButton")
       P.Size = UDim2.new(0, 20, 0, 20)
       P.Text = "vv"
       P.Name = "Scroll"
       P.Parent = Gui
       P.BackgroundColor3 = Color3.new(1, 1, 1)
       P.TextColor3 = Color3.new(0, 0, 0)
       P.BackgroundTransparency = 0.5
       P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))
       P.MouseButton1Click:connect(function() 
           MoveDown(Gui, -200) 
       end)
       i=i+1
       P = Instance.new("TextButton")
       P.Size = UDim2.new(0, 20, 0, 20)
       P.Text = "S"
       P.Name = "Save"
       P.Parent = Gui
       P.BackgroundColor3 = Color3.new(0, 1, 0)
       P.TextColor3 = Color3.new(0, 0, 0)
       P.BackgroundTransparency = 0.5
       P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))
       P.MouseButton1Click:connect(function()
           StringS = ""
           for Num, Obj in pairs(New) do
               StringS = StringS..Obj.Text..'\n'
           end
           S.Source = StringS
           S.Disabled = true
           S.Disabled = false
       end)
       i=i+1
       P = Instance.new("TextButton")
       P.Size = UDim2.new(0, 20, 0, 20)
       P.Text = "x"
       P.Name = "Back"
       P.Parent = Gui
       P.BackgroundColor3 = Color3.new(1, 0.2, 0)
       P.TextColor3 = Color3.new(0, 0, 0)
       P.BackgroundTransparency = 0.5
       P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))
       P.MouseButton1Click:connect(function()
           Clear()
           i=0
           Search(S)
       end)
       i=i+1
   end
end

       Clear()
       Search(DeleteParent)
   end)
   if Copy then
       C = Instance.new("TextButton")
       C.Size = UDim2.new(0, 20, 0, 20)
       C.Text = "C"
       C.Name = N.Name
       C.Parent = Gui
       C.BackgroundColor3 = Color3.new(0, 1, 0.5)
       C.TextColor3 = Color3.new(0, 0, 0)
       C.BackgroundTransparency = 0.5
       C.Position = UDim2.new(0, ((math.modf(Current/30))*150)+300+110, 0, 50+(20*((Current%30)-1)))
       C.MouseButton1Click:connect(function()
           Cloned = N
           Clear()
           Search(N.Parent)
       end)
   end
   Current = Current + 1
   return P
end
   
function AddOption(N, Function, Color, Text)
   if not N then 
       error("RenderButton - No Name Specified") 
   end
   if not Color then 
       Color = Color3.new(1, 1, 1) 
   end
   if Text == nil then 
       Text = false 
   end
   if Text then
       P = Instance.new("TextBox")
   else
       P = Instance.new("TextButton")
   end
   P.Text = N
   P.Name = N
   P.Parent = Gui
   P.BackgroundColor3 = Color
   P.TextColor3 = Color3.new(0, 0, 0)
   P.BackgroundTransparency = 0.5
   P.Size = UDim2.new(0, 150, 0, 20)
   P.Position = UDim2.new(0, ((math.modf(CurrentOption/30))*150)+150, 0, 50+(20*((CurrentOption%30)-1)))
   if not Text and Function then
       P.MouseButton1Click:connect(function() Function(P) end)
   end
   CurrentOption = CurrentOption + 1
   return P
end

function AddTextOption(Obj, Prop)
   local Ob = Obj
   local Pro = Prop
   if type(Ob[Pro]) == "number" or type(Ob[Pro]) == "string" then
       CurrentOption = CurrentOption + 1
       local T = AddOption(Ob[Pro], nil, Color3.new(0.1, 0.4, 0.1), true)
       CurrentOption = CurrentOption - 2
       local O = AddOption("Change "..Pro..":", function() Ob[Pro] = T.Text end, Color3.new(0.1, 0.8, 0.1), false)
       CurrentOption = CurrentOption + 1
   end
end

function AddBrickColorOption(Obj, Prop)
   local Ob = Obj
   local Pro = Prop
   if BrickColor.new(tostring(Ob[Pro])) == Ob[Pro] then
       CurrentOption = CurrentOption + 1
       local T = AddOption(tostring(Ob[Pro]), nil, Color3.new(0.1, 0.4, 0.1), true)
       CurrentOption = CurrentOption - 2
       local O = AddOption("Change "..Pro..":", function() Ob[Pro] = BrickColor.new(T.Text) end, Color3.new(0.1, 0.8, 0.1), false)
       CurrentOption = CurrentOption + 1
   end
end

function AddBoolOption(Obj, Prop)
   local Ob = Obj
   local Pro = Prop
   if type(Ob[Pro]) == "boolean" then
       local O = AddOption(Pro..": "..tostring(Ob[Pro]), nil, Color3.new(0.1, 0.8, 0.1), false)
       O.MouseButton1Click:connect(function()
           if Ob[Pro] then
               Ob[Pro] = false
               O.Text = Pro..": false"
           else
               Ob[Pro] = true
               O.Text = Pro..": true"
           end
       end)
   end
end

function TestProperty(Obj, Property)
   Success = pcall(function() 
       if Obj[Property] then 
           return 
       end 
   end)
   return Success
end

function LoadOptions(Object)
   for Num, Prop in pairs(TextProperties) do
       if TestProperty(Object, Prop) then
           AddTextOption(Object, Prop)
       end
   end
   for Num, Prop in pairs(BoolProperties) do
       if TestProperty(Object, Prop) then
           AddBoolOption(Object, Prop)
       end
   end
   for Num, Prop in pairs(BrickColorProperties) do
       if TestProperty(Object, Prop) then
           AddBrickColorOption(Object, Prop)
       end
   end
end

function Search(Object)
   Gui = Instance.new("ScreenGui")
   Gui.Parent = game.Players.LocalPlayer.PlayerGui
   Gui.Name = "Explorer"
   if Object ~= game then
       AddOption("Back", function() 
           Clear(); 
           Search(Object.Parent) 
       end, Color3.new(0.5, 1, 1), false)
   end
   AddOption("Reload", function() Clear(); Search(Object); end, Color3.new(0.2, 1, 0.2), false)
   if Cloned then
       AddOption("Paste", function() Cloned:Clone().Parent = Object; Clear(); Search(Object); end, Color3.new(0.5, 1, 1), false)
   end
   if Deleted then
       AddOption("Undo", function() Deleted.Parent = DeleteParent; Deleted = nil; DeletedParent = nil; Clear(); Search(Object); end, Color3.new(1, 0.6, 0.1), false)
   end
   if Object:IsA("Player") then
       AddOption("Goto Character", function() Clear(); if Object.Character then Search(Object.Character); end end, Color3.new(1, 1, 1), false)
   end
   if Object:IsA("LocalScript") then
       AddOption("EditScript", function() Clear(); ScriptSearch(Object); end, Color3.new(1, 1, 1), false)
   end
   if Object:IsA("Terrain") then
       AddOption("Clear", function() Object:Clear(); end, Color3.new(1, 1, 1), false)
   end
   LoadOptions(Object)
   AddOption("Close", Clear, Color3.new(1, 0.2, 0), false)
   if not Object:IsA("Workspace") or not Object:IsA("Player") then
       for Num, Obj in pairs(Object:GetChildren()) do
           --if not Obj:IsA("BasePart") or not Object.Parent == game.Workspace then
           if true then
               if Obj:IsA("LocalScript") then
                   AddButton(Obj, function() Clear(); Search(Obj); end, Color3.new(1, 0, 0), true)
               elseif Obj:IsA("Script") or Obj:IsA("StarterScript") or Obj:IsA("CoreScript") then
                   AddButton(Obj, function() Clear(); Search(Obj); end, Color3.new(0.5, 0.5, 0.8), true)
               elseif Obj.Parent == game then
                   AddButton(Obj, function() Clear(); Search(Obj); end, Color3.new(1, 1, 1), false)
               else
                   AddButton(Obj, function() Clear(); Search(Obj); end, Color3.new(1, 1, 1), true)
               end
           end
       end
   end
   function MoveUp(Place, Amount)
       for i,v in pairs(Place:GetChildren()) do
           if v:IsA("TextLabel") or v:IsA("TextBox") then
               v.Position = v.Position + UDim2.new(0,0,0,-Amount)
           end
       end
   end
   function MoveDown(Place, Amount)
       for i,v in pairs(Place:GetChildren()) do
           if v:IsA("TextLabel") or v:IsA("TextBox") then
               v.Position = v.Position + UDim2.new(0,0,0,Amount)
           end
       end
   end
   i=0
   function ScriptSearch(S)
       Script2 = S
       Script = Script2.Source
       Table = {}
       Enabled = true
       Gui = Instance.new("ScreenGui")
       Gui.Parent = game.Players.LocalPlayer.PlayerGui
       Gui.Name = "Explorer"
       while Enabled do
           Start, End = string.find(Script, '\n')
           print(Start, End)
           if Start and End then
               table.insert(Table, string.sub(Script, 1, End))
               New = string.sub(Script, End+1, string.len(Script))
               Script = New
           else
               Enabled = false
               table.insert(Table, string.sub(Script, 1, End))
               print("Finished")
           end
       end
       P = Instance.new("TextLabel")
       P.Size = UDim2.new(0, 500, 0, 20)
       P.Text = Script2.Name
       P.Name = "Script Line"
       P.Parent = Gui
       P.BackgroundColor3 = Color3.new(1, 1, 1)
       P.TextColor3 = Color3.new(0, 0, 0)
       P.BackgroundTransparency = 0.5
       P.Position = UDim2.new(0.5, -250, 0, 150+(20*(i-1)))
       P.TextXAlignment = "Left"
       i=i+1
       New = {}
       for I,Val in pairs(Table) do
           print(Val)
           P = Instance.new("TextBox")
           P.ClearTextOnFocus = false
           P.Size = UDim2.new(0, 500, 0, 20)
           P.Text = Val
           P.Name = "Script Line"
           P.Parent = Gui
           P.BackgroundColor3 = Color3.new(1, 1, 1)
           P.TextColor3 = Color3.new(0, 0, 0)
           P.BackgroundTransparency = 0.5
           P.Position = UDim2.new(0.5, -250, 0, 150+(20*(i-1)))
           P.TextXAlignment = "Left"
           table.insert(New, P)
           i=i+1
       end
       i=1
       P = Instance.new("TextButton")
       P.Size = UDim2.new(0, 20, 0, 20)
       P.Text = "^"
       P.Name = "Scroll"
       P.Parent = Gui
       P.BackgroundColor3 = Color3.new(1, 1, 1)
       P.TextColor3 = Color3.new(0, 0, 0)
       P.BackgroundTransparency = 0.5
       P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))
       P.MouseButton1Click:connect(function() 
           MoveUp(Gui, -20) 
       end)
       i=i+1
       P = Instance.new("TextButton")
       P.Size = UDim2.new(0, 20, 0, 20)
       P.Text = "v"
       P.Name = "Scroll"
       P.Parent = Gui
       P.BackgroundColor3 = Color3.new(1, 1, 1)
       P.TextColor3 = Color3.new(0, 0, 0)
       P.BackgroundTransparency = 0.5
       P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))
       P.MouseButton1Click:connect(function() 
           MoveDown(Gui, -20) 
       end)
       i=i+1
       P = Instance.new("TextButton")
       P.Size = UDim2.new(0, 20, 0, 20)
       P.Text = "^^"
       P.Name = "Scroll"
       P.Parent = Gui
       P.BackgroundColor3 = Color3.new(1, 1, 1)
       P.TextColor3 = Color3.new(0, 0, 0)
       P.BackgroundTransparency = 0.5
       P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))
       P.MouseButton1Click:connect(function() 
           MoveUp(Gui, -200) 
       end)
       i=i+1
       P = Instance.new("TextButton")
       P.Size = UDim2.new(0, 20, 0, 20)
       P.Text = "vv"
       P.Name = "Scroll"
       P.Parent = Gui
       P.BackgroundColor3 = Color3.new(1, 1, 1)
       P.TextColor3 = Color3.new(0, 0, 0)
       P.BackgroundTransparency = 0.5
       P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))
       P.MouseButton1Click:connect(function() 
           MoveDown(Gui, -200) 
       end)
       i=i+1
       P = Instance.new("TextButton")
       P.Size = UDim2.new(0, 20, 0, 20)
       P.Text = "S"
       P.Name = "Save"
       P.Parent = Gui
       P.BackgroundColor3 = Color3.new(0, 1, 0)
       P.TextColor3 = Color3.new(0, 0, 0)
       P.BackgroundTransparency = 0.5
       P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))
       P.MouseButton1Click:connect(function()
           StringS = ""
           for Num, Obj in pairs(New) do
               StringS = StringS..Obj.Text..'\n'
           end
           S.Source = StringS
           S.Disabled = true
           S.Disabled = false
       end)
       i=i+1
       P = Instance.new("TextButton")
       P.Size = UDim2.new(0, 20, 0, 20)
       P.Text = "x"
       P.Name = "Back"
       P.Parent = Gui
       P.BackgroundColor3 = Color3.new(1, 0.2, 0)
       P.TextColor3 = Color3.new(0, 0, 0)
       P.BackgroundTransparency = 0.5
       P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))
       P.MouseButton1Click:connect(function()
           Clear()
           i=0
           Search(S)
       end)
       i=i+1
   end
end

pgr.MouseButton1Click:connect(function()
   Clear()
   Search(game)
end)
end
--kohls admin house nbc
warn("Kohls Admin House NBC Admin")
print("Written by: Bloxy")
warn("Updated by: rocket12211")

plr = game.Players.LocalPlayer
prefix = ":"
banned = {}

function GetPlayer(String) -- timeless/xfunnieuss
 local Found = {}
 local strl = String:lower()
 if strl == "all" then
     for i,v in pairs(game.Players:GetPlayers()) do
         table.insert(Found,v)
     end
 elseif strl == "others" then
     for i,v in pairs(game.Players:GetPlayers()) do
         if v.Name ~= game.Players.LocalPlayer.Name then
             table.insert(Found,v)
         end
     end   
elseif strl == "me" then
     for i,v in pairs(game.Players:GetPlayers()) do
         if v.Name == game.Players.LocalPlayer.Name then
             table.insert(Found,v)
         end
     end  
 else
     for i,v in pairs(game.Players:GetPlayers()) do
         if v.Name:lower():sub(1, #String) == String:lower() then
             table.insert(Found,v)
         end
     end    
 end
 return Found    
end

plr.Chatted:Connect(function(msg)
if string.sub(msg, 1, 6) == (prefix.."kick ") then
for i,v in pairs(GetPlayer(string.sub(msg, 7))) do
local remote = game.Players.LocalPlayer.Backpack:WaitForChild("Delete"):WaitForChild("delete")
remote:FireServer(v)
end
end
end)


prefix = ":"
slock = false

plr = game.Players.LocalPlayer
plr.Chatted:Connect(function(ok)
if string.sub(ok, 1) == (prefix.. "admin") then
now = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
=
game.Workspace.Terrain.GameFolder.Admin.Pads['Touch to get admin'].Head.CFrame

wait(0.2)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = now
end
end)

plr.Chatted:connect(function(wtf)
if string.sub(wtf, 1) == (prefix.. "shutdown") then
for i,v in pairs(game.Players:GetPlayers()) do
if v~= plr then
local remote = game.Players.LocalPlayer.Backpack:WaitForChild("Delete"):WaitForChild("delete")
remote:FireServer(v)
end
end
end
end)


plr.Chatted:connect(function(lol)
if string.sub(lol, 1) == (prefix.. "slock") then
slock = true
warn'Server Locked!'
end
end)

plr.Chatted:Connect(function(oyes)
if string.sub(oyes, 1) == (prefix.. "unslock") then
slock = false
warn'Server Unlocked!'
end
end)


plr.Chatted:connect(function(wtf)
if string.sub(wtf, 1) == (prefix.. "shutdown") then
wait(1)
plr:Kick'sometimes a nigga is a nigger and a snowflake is a white guy'
end
end)


game.Players.PlayerAdded:connect(function(xDDD)
if slock == true then
local remote = game.Players.LocalPlayer.Backpack:WaitForChild("Delete"):WaitForChild("delete")
remote:FireServer(xDDD)
wait()
warn("Someone tried to join:", xDDD.Name, "-SLOCKED")
end
end)

plr.Chatted:Connect(function(xd)
if string.sub(xd, 1) == (prefix.. "rworkspace") then
local remote = game.Players.LocalPlayer.Backpack:WaitForChild("Delete"):WaitForChild("delete")

remote:FireServer(Workspace.Terrain.GameFolder)
remote:FireServer(Workspace.Terrain.GameFolder)
end
end)

plr.Chatted:Connect(function(msg)
if string.sub(msg, 1, 5) == (prefix.."ban ") then
for i,v in pairs(GetPlayer(string.sub(msg, 6))) do
table.insert(banned,v.Name)
local remote = game.Players.LocalPlayer.Backpack:WaitForChild("Delete"):WaitForChild("delete")
remote:FireServer(v)
wait()
print("Banned:", v.Name)
end
end
end)

game.Players.PlayerAdded:connect(function(x)
wait(0.25)
for i,v in pairs(banned) do
if x.Name == v then
local remote = game.Players.LocalPlayer.Backpack:WaitForChild("Delete"):WaitForChild("delete")
remote:FireServer(x)
wait()
warn("Someone tried to join:", x.Name, "-BANNED")
end
end
end)

plr.Chatted:Connect(function(rEE)
if string.sub(rEE, 1, 12) == (prefix.."radminpads") then
local remote = game.Players.LocalPlayer.Backpack:WaitForChild("Delete"):WaitForChild("delete")
remote:FireServer(game.Workspace.Terrain.GameFolder.Admin.Pads)
end
end)

plr.Chatted:Connect(function(xAr)
if string.sub(xAr, 1, 8) == (prefix.."rregen") then
local remote = game.Players.LocalPlayer.Backpack:WaitForChild("Delete"):WaitForChild("delete")
remote:FireServer(game.Workspace.Terrain.GameFolder.Admin.Regen)
end
end)

plr.Chatted:Connect(function(wE)
if string.sub(wE, 1, 7) == (prefix.."robby") then
local remote = game.Players.LocalPlayer.Backpack:WaitForChild("Delete"):WaitForChild("delete")
remote:FireServer(game.Workspace.Terrain.GameFolder.Workspace.Obby)
end
end)

plr.Chatted:Connect(function(wsE)
if string.sub(wsE, 1, 8) == (prefix.."rhouse") then
local remote = game.Players.LocalPlayer.Backpack:WaitForChild("Delete"):WaitForChild("delete")
remote:FireServer(game.Workspace.Terrain.GameFolder.Workspace["Basic House"])
end
end)

plr.Chatted:Connect(function(wzE)
if string.sub(wzE, 1, 10) == (prefix.."robbybox") then
local remote = game.Players.LocalPlayer.Backpack:WaitForChild("Delete"):WaitForChild("delete")
remote:FireServer(game.Workspace.Terrain.GameFolder.Workspace["Obby Box"])
end
end)

plr.Chatted:Connect(function(wzE)
if string.sub(wzE, 1, 14) == (prefix.."rbuildbricks") then
local remote = game.Players.LocalPlayer.Backpack:WaitForChild("Delete"):WaitForChild("delete")
remote:FireServer(game.Workspace.Terrain.GameFolder.Workspace["Building Bricks"])
end
end)

plr.Chatted:Connect(function(wzE)
if string.sub(wzE, 1, 15) == (prefix.."radmindivider") then
local remote = game.Players.LocalPlayer.Backpack:WaitForChild("Delete"):WaitForChild("delete")
remote:FireServer(game.Workspace.Terrain.GameFolder.Workspace["Admin Dividers"])
end
end)

plr.Chatted:Connect(function(ssA)
if string.sub(ssA, 1, 11) == (prefix.."banlist") then
for i,v in pairs(banned) do
warn("----------------")
print(v)
end
end
end)
plr.Chatted:Connect(function(wsE)
if string.sub(wsE, 1, 9) == (prefix.."explore") then
explore()
end
end)
plr.Chatted:Connect(function(wsE)
if string.sub(wsE, 1, 7) == (prefix.."cmdsx") then
cmdz()
end
end)
--:kick -- kick a user
--:ban -- ban a user
--:admin -- get admin
--:shutdown -- basically kicks everyone
--:slock -- locks the server
--:unslock -- unlocks the server
--:rworkspace -- deletes the workspace
--:radminpads -- removes admin pads
--:rregen -- removes regen button
--:robby -- removes obby
--:rhouse -- Removes the ugly house
--:robbybox -- Removes the obby box
--:rbuildbricks -- Removes the bricks of building
--:radmindivider -- Removes the admin dividers
--:banlist -- shows people you banned.
--:explore -- Makes an easy explorer
--:cmdsx -- Makes a list of commands