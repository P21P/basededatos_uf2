
CREATE PROCEDURE citycount (IN country CHAR(3), OUT cities INT)
	BEGIN
		SELECT COUNT (*) INTO cities FROM world.city
		WHERE CountryCode = country;
	END

CALL citycount('JPN', @cities);

SELECT @cities;

------------------------------------------------------------------------------------------

DELIMITER;

DROP PROCEDURE IF EXISTS getItemNamebyId;

DELIMITER //

CREATE PROCEDURE getItemNamebyId (IN iditem INT UNSIGNED, OUT name VARCHAR(24))
	BEGIN
		SELECT item INTO name FROM items
		WHERE id_item = iditem;
	END//
DELIMITER ;

CALL getItemNamebyId(@nombre);
SELECT @nombre;

----------------------------------------------------------------------------------------

DELIMITER ;
DROP PROCEDURE IF EXISTS removeItemById;

DELIMETER //

CREATE PROCEDURE removeItemById (IN iditem INT UNSIGNED)
BEGIN
	DELETE FROM items WHERE id_item=iditem;
END//
DELIMITER ;

----------------------------------------------------------------------------------------

CREATE FUNCTION hello (s CHAR(20))
RETURNS CHAR(50) DETERMINISTIC
RETURN CONCAT ('Hello, ',s,'!');

SELECT hello('world');

---------------------------------------------------------------------------------------
DELIMITER //

CREATE FUNCTION (a INT UNSIGNED, b INT UNSIGNED) RETURNS INT UNSIGNED
BEGIN
	RETURN a+b;
END//
DELIMITER ;

SELECT suma(6,7); Para llamar a la funcion
-----------------------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS getItemByCharacterId;

DELIMITER //

CREATE PROCEDURE getItemByCharacterId(In idhcaracter INT UNSIGNED, OUT iditem INT UNSIGNED
	OUT item VARCHAR(24), OUT cost INT)

BEGIN
	SELECT id_item, item, cost INTO iditem, item, cost FROM characters
	LEFT JOIN characters_items
	ON characters.id_character=characters_items-id_character
	LEFT JOIN items
	ON items.id_item=characters_items.id_item
	WHERE characters.id_character=idcharacter;
	LIMIT 1;
END//

DELIMITER ;

CALL getItemByCharacterId(1,@iditem,@item,@cost);
SELECT @iditem,@item,@cost;
------------------------------------------------------------------------------------------
