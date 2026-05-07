# SQL Final Assesment - Recipe Database
## Project Overview
Throughout this assignment you will build from scratch a database to store recipes, their ingredients, and other associated information. After building the database, you will be asked to perform queries and modifications on your database.

## How to complete the Assignment
In the folder `Lesson41` you will find blank numbered `.sql` files. Below, are instructions for what to fill each file with. You'll also find a blank `.db` file which you can use as your database file. Working in order, you will run each script you write one by one, at the end you will be instructed to drop every table. Then, you can walk through and rebuild your database and run all of your queries during your in-person assesment.

## Tips and Additional Info
- It's reccommended to commit your work to GitHub often. 
- If you get stuck and do something you don't intend to a table, you can write a script to drop everything, or revert any changes to your `.db` file, then if you run every script you've already written in order, you should be back where you started in terms of the state of the database.
- If you find it useful, you're more than welcome to add additional rows to each table. The instructions are intended to give you a minimum requiremet only, but some parts may be more clear with additional data to work with.

## Project Instructions
### I: Setting Up The Database
- `1CreateRecipes` - First, create a table to store your recipes, their description, instructions to make them, and a 1-5 rating for the recipe.
    - Should create a `recipe` table with the following columns/datatypes/constraints
        - `id` / Integer / Not Null / Unique
        - `name` / Text / Not Null
        - `description` / Text
        - `instructions` / Text
        - `rating` / Integer
     - Should designate the `id` column as the table's primary key
     - Should ensure the `rating` column has a value of 1, 2, 3, 4 or 5.
- `2CreateIngredients` - Next, create a table that will store the ingredients representing what ingredients your recipes will use.
    - Should create a `Ingredient` table with the following columns/datatypes/constraints
        - `id` / Integer / Not Null / Unique
        - `name` / Text / Not Null
    - Should designate the `id` column as the table's primary key
- `3CreateMeasures` - Next, we'll create a table that will store the various measurements your recipes will be using.
    - Should create a `Measure` table with the following columns/datatypes/constraints
        - `id` / Integer / Not Null / Unique
        - `name` / Text / Not Null
    - Should designate the `id` column as the table's primary key
- `4CreateRecipeIngredients` - Now, you will need a table to tie everything together. Using the IDs in the three other tables, you will can associate recipes, ingredients, and measures together, with each row representing a specific measure of an ingredient in a recipe. 
    - Should create a `RecipeIngredient` table with the following columns/datatypes/constraints
        - `id` / Integer / Not Null
        - `recipe_id` / Integer / Not Null
        - `ingredient_id` / Integer / Not Null
        - `measure_id` / Integer / Not Null
        - `amount` / Integer
    - Should designate `recipe_id` as a Foreign Key referring to the `id` in the `recipe` table
    - Should designate `ingredient_id` as a Foreign Key referring to the `id` in the `Ingredient` table
    - Should designate `measure_id` as a Foreign Key referring to the `id` in the `Measure` table

### II: Initializing Some Data
- `5Insertrecipes`
   - Should insert following values into the `recipe` table (id / name / description / instructions / rating)
        -  1 / Hash Browns / Shredded potatoes cooked on a griddle or cast iron. / *Add your own instructions* / *Add your own rating*
        -  2 / French Toast / Bread coated in batter and on a griddle or cast iron / *Add your own instructions* / *Add your own rating*
        -  3 / Hard Boiled Egg / Egg boiled in it's shell / *Add your own instructions* / *Add your own rating*
- `6InsertIngredients`
    - Should insert the following values into the `Ingredient` table (id / name)
        -  1 / Potatoes
        -  2 / Butter
        -  3 / Salt
        -  4 / Pepper        
        -  5 / Bread(slice)
        -  6 / Egg
        -  7 / Milk
        -  8 / Vanilla Extract
        -  9 / Cinnamon
- `7InsertMeasures`
   - Should insert following values into the `Measure` table (id / name)
        -  1 / Milliliter
        -  2 / Tablespoon
        -  3 / Teaspoon
        -  4 / Pinch
        -  5 / Grams
        -  6 / Count
- `8InsertRecipeIngredients`
    - Should insert following values into `RecipeIngredient` table ( id / recipe_id / ingredient_id / measure_id / amount)
        - (1, 1, 1, 5, 100)
        - (2, 1, 2, 2, 2)
        - (3, 1, 3, 3, 2)
        - (4, 1, 4, 3, 1)
        - (5, 2, 2, 2, 2)
        - (6, 2, 5, 6, 2)
        - (7, 2, 6, 6, 1)
        - (8, 2, 7, 1, 120)
        - (9, 2, 8, 3, 1)
        - (10, 2, 9, 3, 2)
        - (11, 2, 3, 4, 1)
        - (12, 3, 6, 6, 1)
        - (13, 3, 3, 4, 2)
 
### III: Querying The Database
- `9-1ShoppingForFrenchToast` - You want to make french toast but aren't sure what you'll need from the store, you decide to use your database to make a shopping list
    - Should retreive the `Name` of each ingredient in the recipe to make "French Toast".
- `9-2FindingFrenchToastIngredients` - Just knowing what you need isn't too helpful on it's own, so you decide to expand your previous query to find how much of each ingredient you'll need.
    - Should retreive the following columns/rows
        - The `Name` of each ingredient in the recipe to make "French Toast"
        - The `Name` of the measure each ingredient should be measured in 
        - The `Amount` of each unit of measurement we need for each Ingredient
- `9-3QuadrupledFrenchToast` - You realize you have some friends coming from brunch, and each recipe only makes enough to serve one, also you realize the titles of each column aren't particularly helpful, you modify your additonal query to account for these issues.
    - Should retreive the following columns/rows
        - The `Name` of each ingredient in the recipe to make "French Toast", titled as "Ingredient"
        - The `Name` of the measure each ingredient should be measured in, titled as "Measure"
        - The `Amount` of each unit of measurement we need for each Ingredient, quadrupled from the original recipe titled as "Four Servings"
- `9-4NoCinnamon` - One of your friends thought the french toast was great, however she isn't a fan of the cinnamon, she wanted to see if you could giver her a copy of the ingredient list, minus cinnamon.
    - Should retreive the following columns/rows
        - The `Name` of each ingredient in the recipe to make "French Toast", EXECEPT "Cinnamon" titled as "Ingredient"
        - The `Name` of the measure each ingredient should be measured in, titled as "Measure"
        - The `Amount` of each unit of measurement we need for each Ingredient, titled as "One Serving"
    - Should not remove any existing rows from any tables

### IV: Making Modifications
- `10-1ChangingBread` - Your friend who asked for your recipe decided to make it for you sometime, She made it with sourdough bread, and it was the best you ever had. You never had sourdough before, and never though tot specify the type of bread, but you were so impressed you decided you will only use sourdough in any of your cooking from now on.
    - Should modify the `Ingredient` table so that the "Bread(slice)" row is changed to "Sourdough Bread(slice)"
- `10-2AddingAnIngredient` - You realize the different bread wasn't the only change your friend made to your recipe. She also substituted the cinnamon for nutmeg, you decide to add this to your recipe as well. You decide accomplishing this with a transaction is best. (NOTE: Depending on your development enviornment you may run into trouble getting a transaction to run/rollback correctly, if this is the case for you, you may skip running this file given you still fill it out with what you believe the correct syntax to be)
    - Should do the following within a transaction.
        - Insert a row into the `Ingredient` table for "Nutmeg"
        - Insert a row into the `RecipeIngredient` table that will add "Nutmeg" to the "French Toast" recipe in the same proportions as "Cinnamon" is currently.
        - Deletes the row in `RecipeIngredient` corresponding to "Cinnamon" in the "French Toast" recipe.
    - Should not add or delete any rows other than the ones specified.
- `11-1AddingAPantry` - You think it would be useful to add a table to your database keeping track of whether you have ingredients inculded in your recipes. You start by setting up your table.
    - Should create a `Pantry` table with the following columns/datatypes/constraints
        - `id` / INTEGER / Not Null
        - `ingredient_id` / INTEGER 
        - `in_stock` / TEXT 
    - Should designate `ingredient_id` as a Foreign Key referring to the `id` in the `Ingredient` table
    - Should ensure `in_stock` only contains a value of "Y" or "N"
- `11-2AddingInStockIngredients` - After cooking breakfast last weekend you still have butter, salt, and eggs left over. You decide to update your pantry table accordingly.
    - Should insert the following values into the `Pantry` table (id / ingredient_id / in_stock)
        -  1 / 2 / "Y"
        -  2 / 3 / "Y"
        -  3 / 6 / "Y"
        -  4 / 1 / "N"
        -  5 / 4 / "N"
        -  6 / 5 / "N"
        -  7 / 7 / "N"
        -  8 / 8 / "N"
        -  9 / 9 / "N"
        -  10 / 10 / "N"
- `11-3AddingAnExpireDate` - After the fact, you realized keeping track of when items in your pantry expire would be a great idea. You want to add this column to your recently created pantry table. 
    - Should add the following column/datatype/constraint to the `Pantry` table
        - `Expire` / TEXT / Defaults to 1/1/1970

### V: More Breakfast Queries
- `12GroceryListOrganized` - You're going grocery shopping and making all the recipes in your database, you want to make a shopping list, but need to make sure it's organized by recipe.
    - Should retreive the following columns/rows for all Ingredients needed to make all recipes in the `recipe` table
        - Ingredient's `name` titled as "Ingredient Name"
        - recipe's `name` that the Ingredient is a part of titled as "recipe Name"
    - Should order by the recipe's name alphabetically
    - It's ok if ingredient names appear twice, the same ingredient and recipe combination should not appear twice
- `13CountingIngredients` - You're curious which of your recipes uses the most and least ingredients. You decide to write a script to figure it out.
    - Should return the following columns/rows
        - The `name` of each recipe (must include all recipes in the `recipe` table)
        - The `count` of ingredients for each recipe

### VI: Cleanup
-   `14Cleanup` - You'll want to be able to run all of these scripts in order when you demonstrate your code during your in-person assesment. Write a single transaction to delete all of your tables and their data. (If you are unable to get transactions to run, you may create addtional files with the `.sql` extension to accomplish this, still fill this file with what you believe the correct syntax to be)
    - Should delete all tables in the database
    - Should be a single transaction.

## Next Steps
**Once you complete the game please:**
1. Set up a time for a 2 hour Pairing Assessment with your classroom guide.

**During the Pairing Assessment you will:**
1. Demonstrate your working code to your classroom guide, by running each `.sql` file in order.
2. Explain your code to your classroom guide
3. Make 6 live changes to your code with your classroom guide.

Copyright &copy; 2023 Knight Moves. All Rights Reserved.
