CREATE TABLE RecipeIngredient (
    id INT NOT NULL,
    recipe_id INT NOT NULL,
    ingredient_id INT NOT NULL,
    measure_id INT NOT NULL,
    amount INT,

    PRIMARY KEY (id),

    FOREIGN KEY (recipe_id)
        REFERENCES Recipe(id),

    FOREIGN KEY (ingredient_id)
        REFERENCES Ingredient(id),

    FOREIGN KEY (measure_id)
        REFERENCES Measure(id)
);