CREATE TABLE RecipeIngredient (
    id INT Not Null,
    recipe_id INT Not Null,
    ingredient_id INT Not Null,
    measure_id INT Not Null,
    amount INT,
    PRIMARY KEY (id),
    FOREIGN KEY (recipe_id) REFERENCES Recipe(id),
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient(id),
    FOREIGN KEY (measure_id) REFERENCES Measure(id)
);