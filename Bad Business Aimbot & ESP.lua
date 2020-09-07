-- Created by Peyton @ V3rmillion
local LocalPlayer, Characters, ESPList, LocalCharacter = game:GetService('Players').LocalPlayer, workspace.Characters, {}

local Leaderboard = LocalPlayer.PlayerGui.LeaderboardGui.Leaderboard
local function GetTeam(Player)
    local Name = Player.Name
    for i,v in next, Leaderboard.Teams:GetDescendants() do
        if v.Name == 'NameLabel' and v.Text == Name then
            return v.Parent.Parent.Parent
        end
    end
end

local Camera, Div = workspace.CurrentCamera, Vector2.new(2,2)
local function GetNearestToCenter()
   local Center = Camera.ViewportSize / Div
   local Character, CharacterDistance, ScreenPosition = nil, 0, nil
-- Created by Peyton @ V3rmillion
   for i,v in next, Characters:GetChildren() do
       if v.Name ~= LocalPlayer.Name and GetTeam(v) ~= GetTeam(LocalPlayer) and v:FindFirstChild('Health') and v.Health.Value > 0 and v:FindFirstChild('Hitbox') and v.Hitbox:FindFirstChild('Head') then
           local Position, OnScreen = Camera:WorldToViewportPoint(v.Hitbox.Head.Position)
           if OnScreen then
                local Vec2 = Vector2.new(Position.X, Position.Y)
                local Distance = (Vec2 - Center).magnitude
                if not Character or CharacterDistance > Distance then
                    Character, CharacterDistance, ScreenPosition = v, Distance, Vec2
                end
           end
       end
   end
   return ScreenPosition and Center and (ScreenPosition - Center) or nil
end

local function NewCircle()
    local Circle = Drawing.new('Circle')
    Circle.Color = Color3.new(255, 0, 0)
    Circle.Filled = true
    Circle.Transparency = 0.5
    Circle.Visible = true
    return Circle
end
-- Created by Peyton @ V3rmillion
local function Add(Character)
    if Character == workspace.Characters:FindFirstChild(LocalPlayer.Name) then
        LocalCharacter = Character
    elseif GetTeam(Character) ~= GetTeam(LocalPlayer) then
        ESPList[Character] = NewCircle()
    end
end

local function Remove(Character)
    if ESPList[Character] then
        ESPList[Character]:Remove()
        ESPList[Character] = nil
    end
end

local UserInputService, AimEnable = game:GetService('UserInputService'), false
local function Update()
   for Character,v in next, ESPList do
        if Character and Character.Parent ~= Characters then 
            Remove(Characters)
        elseif Character:FindFirstChild('Hitbox') and Character.Hitbox:FindFirstChild('Head') then
            local Position, OnScreen = workspace.CurrentCamera:WorldToViewportPoint(Character.Hitbox.Head.Position)
            v.Position = Vector2.new(Position.X, Position.Y)
            v.Radius = 700 / Position.Z
            v.Visible = OnScreen
        end
   end
   
   if AimEnable and UserInputService.MouseBehavior ~= Enum.MouseBehavior.Default and Characters:FindFirstChild(LocalPlayer.Name) and Characters[LocalPlayer.Name].Health.Value ~= 0 then
       local ToMove = GetNearestToCenter()
       if ToMove then mousemoverel(ToMove.X, ToMove.Y) end
   else
       AimEnable = false
   end
end
-- Created by Peyton @ V3rmillion
for i,v in next, Characters:GetChildren() do Add(v) end
Characters.ChildAdded:Connect(Add)
Characters.ChildRemoved:Connect(Remove)
game:GetService('RunService').RenderStepped:Connect(Update)
UserInputService.InputBegan:Connect(function(input, gameProcessed) if input.UserInputType == Enum.UserInputType.MouseButton2 then AimEnable = true end end)
UserInputService.InputEnded:Connect(function(input, gameProcessed) if input.UserInputType == Enum.UserInputType.MouseButton2 then AimEnable = false end end)

print("Loaded Good Business by Peyton @ V3rmillion")
