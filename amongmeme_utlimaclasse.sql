ALTER TABLE es la clausla para alterar elementos de nuestra base de datos, no para cambiar los datos, sino para cambiar cosas estructurales, como el nombre de una tabla,de una columna, añadir un tabla.

------------------------------------------------
ALTER TABLE stats 
ADD felicidad INT;
------------------------------------------------
ALTER TABLE stats 
MODIFY felicidad INT
AFTER `level`
--> Para mover una columna detras de otra columna de una tabla.

------------------------------------------------
ALTER TABLE stats
ADD sadness INT AFTER felicidad
--> Añadir una columna y moverla despues de la columna felicidad.
------------------------------------------------
ALTER TABLE stats
CHANGE felicidad happines INT
--> Camiar el nombre de una columna por otro
------------------------------------------------
SELECT COUNT(item) FROM items WHERE item LIKE '%e%'
--> Retorna el numero que devuelve el numero de items que contiene la letra e
-----------------------------------------------
DROP FUNCTION IF EXISTS num_items_by_name;
DELIMITER $$

CREATE FUNCTION num_items_by_name (name varchar(32)) RETURNS INT
BEGIN
	SET @num := 0;
    
	SELECT COUNT(item) INTO @num
    FROM items 
    WHERE item LIKE CONCAT ('%',name,'%');
    RETURN @num;

END$$

DELIMITER ;
SELECT num_items_by_name('%e%')
--> Funcion que te devuelve el numero de palabras que contengan la letra e
----------------------------------------------

