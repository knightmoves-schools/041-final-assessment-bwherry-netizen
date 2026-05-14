SELECT
    Recipe.name,
    COUNT(RecipeIngredient.ingredient_id) AS ingredient_count
FROM Recipe
LEFT JOIN RecipeIngredient
    ON Recipe.id = RecipeIngredient.recipe_id
GROUP BY Recipe.id, Recipe.name;