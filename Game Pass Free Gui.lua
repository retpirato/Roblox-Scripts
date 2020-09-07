gui = Instance.new('ScreenGui',game:GetService("CoreGui"))
frame = Instance.new('Frame',gui)
frame.Size = UDim2.new(0.2,0,0.05,0)
frame.Position = UDim2.new(0.8,0,0.4,0)
tbox = Instance.new('TextBox',frame)
tbox.Size = UDim2.new(0.8,0,1,0)
tbox.Text = 'gamepassid'
tbutton = Instance.new('TextButton',frame)
tbutton.Size = UDim2.new(0.2,0,1,0)
tbutton.Position = UDim2.new(0.8,0,0,0)
tbutton.Text = 'off'
market = game:GetService("MarketplaceService")
http = game:GetService("HttpService")
tbutton.MouseButton1Down:connect(function()
   if tbutton.Text=='off' then
       gamePassId = tonumber(tbox.Text)
       info = market:GetProductInfo(gamePassId, Enum.InfoType.GamePass)
       connection = game:GetService("RunService").Stepped:connect(function()
           pcall(market.PerformPurchase,market,Enum.InfoType.Asset, info["ProductId"], info["PriceInRobux"], http:GenerateGUID(false))
       end)
       tbutton.Text = 'on'
   else
       connection:Disconnect()
       tbutton.Text = 'off'
   end
end)