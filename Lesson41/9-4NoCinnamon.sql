SELECT
    Ingredient.name AS Ingredient,
    Measure.name AS Measure,
    RecipeIngredient.amount AS "One Serving"
FROM RecipeIngredient
JOIN Recipe
    ON RecipeIngredient.recipe_id = Recipe.id
JOIN Ingredient
    ON RecipeIngredient.ingredient_id = Ingredient.id
JOIN Measure
    ON RecipeIngredient.measure_id = Measure.id
WHERE Recipe.name = 'French Toast'
AND Ingredient.name <> 'Cinnamon';