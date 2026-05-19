SELECT Ingredient.name
FROM RecipeIngredient
JOIN Recipe
    ON RecipeIngredient.recipe_id = Recipe.id
JOIN Ingredient
    ON RecipeIngredient.ingredient_id = Ingredient.id
JOIN Pantry
    ON Ingredient.id = Pantry.ingredient_id
WHERE Recipe.name = 'French Toast'
AND Pantry.in_stock = 'N';