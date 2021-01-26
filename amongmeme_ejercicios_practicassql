DELIMITER $$

CREATE PROCEDURE relate_character_item (in_id_item INT UNSIGNED, in_id_character INT UNSIGNED)
BEGIN 

	INSERT INTO characters_items (id_item,id_character) VALUES (in_id_item, in_id_character);

END$$

DELIMITER ;
CALL relate_character_item(2,3);
------------------------------------------------
DROP FUNCTION IF EXISTS addItem;
DELIMITER $$

CREATE FUNCTION insert_item (
    in_item VARCHAR(24),
    in_cost INT, 
    in_consumable BOOLEAN, 
    in_tradeable BOOLEAN, 
    in_weight FLOAT, 
    in_id_item_type INT UNSIGNED
)RETURNS INT UNSIGNED
BEGIN
	INSERT INTO items (item,cost,consumable,tradeable,weight,id_item_type)
    	VALUES(in_item,in_cost,in_consumable,in_tradeable,in_weight,in_id_item_type);
 
	RETURN LAST_INSERT_ID();
END$$

SELECT insert_item("Arco",100,0,1,1000,1)
DELIMITER ;
----------------------------------------------
DROP FUNCTION IF EXISTS id_item_by_name;

DELIMITER $$

CREATE FUNCTION id_item_by_name(in_item VARCHAR(24)) RETURNS INT UNSIGNED
BEGIN
         SET @id :=0;
         SELECT id_item INTO @id FROM items WHERE item=in_item;
         RETURN @id;
                                
END$$

DELIMITER ;
(SET + @nombre_de_la_variable --> sirve para crear una variable)
----------------------------------------------


















