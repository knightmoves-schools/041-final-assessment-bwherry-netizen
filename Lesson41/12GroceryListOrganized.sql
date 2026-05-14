SELECT DISTINCT
    Ingredient.name AS "Ingredient Name",
    Recipe.name AS "Recipe Name"
FROM RecipeIngredient
JOIN Ingredient
    ON RecipeIngredient.ingredient_id = Ingredient.id
JOIN Recipe
    ON RecipeIngredient.recipe_id = Recipe.id
ORDER BY Recipe.name ASC;