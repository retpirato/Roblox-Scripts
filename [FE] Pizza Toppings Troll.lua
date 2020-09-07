for i,v in pairs(workspace.AllDough:GetChildren()) do
	workspace.GameService.AddIngredientToPizza:FireServer(v, "Sausage")
	workspace.GameService.AddIngredientToPizza:FireServer(v, "Cheese")
	workspace.GameService.AddIngredientToPizza:FireServer(v, "Pepperoni")
	workspace.GameService.AddIngredientToPizza:FireServer(v, "TomatoSauce")
end