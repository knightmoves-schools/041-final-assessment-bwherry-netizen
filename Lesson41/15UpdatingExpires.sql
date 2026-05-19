/*BEGIN TRANSACTION;

UPDATE Pantry
SET Expire = CURRENT_DATE;

COMMIT; */

SELECT * FROM Pantry
Where in_stock = 'Y'
AND Expire >= CURRENT_DATE;