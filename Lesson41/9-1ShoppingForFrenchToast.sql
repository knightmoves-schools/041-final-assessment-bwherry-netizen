SELECT Ingredient.name
FROM RecipeIngredient
JOIN Recipe ON RecipeIngredient.recipe_id = Recipe.id
JOIN Ingredient ON RecipeIngredient.ingredient_id = Ingredient.id
WHERE Recipe.name = 'French Toast';
