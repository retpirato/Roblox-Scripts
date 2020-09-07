if game.CoreGui:findFirstChild("Explorer") then
  game.CoreGui:findFirstChild("Explorer"):remove();
end

local TextProperties = {"BorderSizePixel", "BackgroundTransparency", "Gravity", "ClassName", "Name", "Value", "Text", "Reflectance", "Transparency", "Heat", "TeamName", "WalkSpeed", "Health", "MaxHealth", "Size", "Position", "AccountAge", "RobloxLocked", "TeamColor", "userId", "Brightness", "Ambient", "TimeOfDay", "FieldOfView", "CameraType", "LinkedSource"}
local BoolProperties = {"Anchored", "CanCollide", "Disabled", "Jump", "Sit", "Visible", "Enabled", "Locked", "FilteringEnabled", "StreamingEnabled", "GlobalShadows"}
local BrickColorProperties = {"BrickColor", "BackgroundColor3", "BorderColor3", "Color", "TeamColor", "Texture", "Value"}

local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
ScreenGui.Name = 'Explorer'
local Button = Instance.new("TextButton")
Button.Parent = ScreenGui
Button.Size = UDim2.new(0,100,0,20)
Button.Position = UDim2.new(0,30,0,440)
Button.Text = 'Open Explorer'
Button.BackgroundTransparency = 0.3
Button.TextColor3 = Color3.new(255/255,255/255,255/255)
Button.BackgroundColor3 = Color3.new(85/255,170/255,255/255)
Button.Font = Enum.Font.SciFi
Button.FontSize = Enum.FontSize.Size14;
Button.BorderSizePixel = 0



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
  P.BackgroundColor3 = Color3.new(85/255,170/255,255/255)
  P.BorderColor3 = Color3.new(85/255,170/255,255/255)
  P.BorderSizePixel = 0
  P.TextColor3 = Color3.new(1,1,1)
  P.Font = Enum.Font.SciFi
  P.FontSize = Enum.FontSize.Size14;
  P.BackgroundTransparency = 0.5
  P.Position = UDim2.new(0, ((math.modf(Current/30))*150)+300, 0, 50+(20*((Current%30)-1)))
  P.MouseButton1Click:connect(function()
      Function(P)
  end)
  local D = Instance.new("TextButton")
  D.Size = UDim2.new(0, 20, 0, 20)
  D.Text = "X"
  D.Name = N.Name
  D.Parent = Gui
  D.BackgroundColor3 = Color3.new(1,0,0)
  D.BorderColor3 = Color3.new(1,0,0)
  D.BorderSizePixel = 0
  D.TextColor3 = Color3.new(1,1,1)
  D.Font = Enum.Font.SciFi
  D.FontSize = Enum.FontSize.Size14;
  D.BackgroundTransparency = 0.5
  D.Position = UDim2.new(0, ((math.modf(Current/30))*150)+300+130, 0, 50+(20*((Current%30)-1)))
  D.MouseButton1Click:connect(function()
      Deleted = N
      DeleteParent = N.Parent
      N.Parent = nil
      Clear()
      Search(DeleteParent)
  end)
  if Copy then
      local C = Instance.new("TextButton")
      C.Size = UDim2.new(0, 20, 0, 20)
      C.Text = "C"
      C.Name = N.Name
      C.Parent = Gui
      C.BackgroundColor3 = Color3.new(85/255,170/255,255/255)
      C.BorderColor3 = Color3.new(85/255,170/255,255/255)
  C.BorderSizePixel = 0
      C.TextColor3 = Color3.new(1,1,1)
      C.Font = Enum.Font.SciFi
    C.FontSize = Enum.FontSize.Size14;
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
  Color = nil;
  if not N then
      N = "No Name Specified";
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
  P.BackgroundColor3 = Color3.new(85/255,170/255,255/255)
  P.BorderColor3 = Color3.new(85/255,170/255,255/255)
  P.TextColor3 = Color3.new(1,1,1)
  P.BorderSizePixel = 0
  P.Font = Enum.Font.SciFi
  P.FontSize = Enum.FontSize.Size14;
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
  Gui.Parent = game.CoreGui
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
AddOption("Kill Player", function() if Object.Character:FindFirstChild('Humanoid') then Object.Character.Humanoid.Health = 0; end end)   
   AddOption("Goto  Character", function() Clear(); if Object.Character then Search(Object.Character); end end, Color3.new(1, 1, 1), false)
  end
  if Object:IsA("Terrain") then
      AddOption("Clear", function() Object:Clear(); end, Color3.new(1, 1, 1), false)
  end
  LoadOptions(Object)
  AddOption("Close", Clear, Color3.new(1, 0.2, 0), false)
  if not Object:IsA("Workspace") or not Object:IsA("Player") then
      for Num, Obj in pairs(Object:GetChildren()) do
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
  local function MoveUp(Place, Amount)
      for i,v in pairs(Place:GetChildren()) do
          if v:IsA("TextLabel") or v:IsA("TextBox") then
              v.Position = v.Position + UDim2.new(0,0,0,-Amount)
          end
      end
  end
  local function MoveDown(Place, Amount)
      for i,v in pairs(Place:GetChildren()) do
          if v:IsA("TextLabel") or v:IsA("TextBox") then
              v.Position = v.Position + UDim2.new(0,0,0,Amount)
          end
      end
  end
  i=0;
end

Button.MouseButton1Click:connect(function()
  Clear()
  Search(game)
end)