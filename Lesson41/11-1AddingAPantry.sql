CREATE TABLE Pantry (
    id INTEGER NOT NULL,
    ingredient_id INTEGER,
    in_stock TEXT CHECK (in_stock IN ('Y', 'N')),
    PRIMARY KEY (id),
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient(id)
);