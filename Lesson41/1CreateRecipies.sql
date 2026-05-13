CREATE TABLE Recipe (
    id INT NOT NULL UNIQUE,
    name TEXT NOT NULL,
    description TEXT,
    instructions TEXT,
    rating INT 
    CHECK (rating IN (1,2,3,4,5)),
    PRIMARY KEY (id)
);