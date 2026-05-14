SELECT 
    Ingredient.name AS Ingredient,
    Measure.name AS Measure,
    RecipeIngredient.amount * 4 AS "Four Servings"
FROM RecipeIngredient
JOIN Recipe
    ON RecipeIngredient.recipe_id = Recipe.id
JOIN Ingredient
    ON RecipeIngredient.ingredient_id = Ingredient.id
JOIN Measure
    ON RecipeIngredient.measure_id = Measure.id
WHERE Recipe.name = 'French Toast';