CREATE TABLE Pantry (
    id INT NOT NULL,
    ingredient_id INT NOT NULL,
    in_stock TEXT CHECK (in_stock IN ('Y', 'N')),
    PRIMARY KEY (id),
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient(id)
);