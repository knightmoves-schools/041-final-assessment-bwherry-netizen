SELECT 
    UPPER(description),
    SUBSTRING(instructions, 1, 20)
FROM Recipe

