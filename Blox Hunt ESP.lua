local a = workspace:getDescendants()
for i=1,#a do
if a[i].Name == "Object" then
if not a[i]:findFirstChild("BillboardGui") then
local BillboardGui = Instance.new("BillboardGui")
local TextLabel = Instance.new("TextLabel")
BillboardGui.Parent = a[i]
BillboardGui.Active = true
BillboardGui.AlwaysOnTop = true
BillboardGui.Size = UDim2.new(0, 200, 0, 50)
if a[i]:findFirstChild("Center") then
BillboardGui.Adornee = a[i].Center
end
TextLabel.Parent = BillboardGui
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.FontSize = Enum.FontSize.Size14
TextLabel.Text = a[i].Parent.Name
TextLabel.TextColor3 = Color3.fromRGB(100,100,255)
TextLabel.TextSize = 14
TextLabel.TextStrokeColor3 = Color3.new(1, 1, 1)
TextLabel.TextStrokeTransparency = 0
end
end
end