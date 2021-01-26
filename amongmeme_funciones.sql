CURDATE:SELECT CURRENT_DATE()
NOW: SELECT NOW
DATABASE: SELECT DATABASE()
LEFT:SELECT LEFT ("EDUARDO MANOSLARGAS",5) AS ExtractString;
LCASE: SELECT LCASE ("OLA K ASE")
EXP: SELECT EXP(4)
ISNULL
BIN
SUBSTRING
LAST_INSERT_ID
REPLACE
DATE_SUB
UCASE
GREATEST
LEAST
AVG
SELECT AVG(cost) AS AveragePrice FROM items
<<<<<<< HEAD
(El as AveragePrice, solo sirve para poner un nombre al resultado)
SELECT ROUND(AVG(cost),0) AS AveragePrice FROM items ( El round sirve para redondear el numero a tantos decimales que yo quiera)
SELECT SUBSTRING(name, 2,5) FROM characters

Una querry dentro de un querry es llamada subquerry.

SELECT id_item,item,cost 
FROM items 
ORDER BY cost 
DESC LIMIT 1
    SELECT MAX(cost) FROM items)
=======
>>>>>>> d3c160e95bff334edbf4a021e38bd90eccfcb53b
