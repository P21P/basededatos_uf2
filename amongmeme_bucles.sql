DELIMITER $$

CREATE PROCEDURE doiterate(p1 INT)
BEGIN
	label1: LOOP
    SET p1 = p1 + 1;
    IF p1 < 10 THEN
    	ITERATE label1;
    END IF;
    LEAVE label1;
   END LOOP label1;
   SET @x = p1;
   
END$$

DELIMITER ;

CALL doiterate(1);
SELECT @x;
------------------------------------------------
DELIMITER $$

CREATE PROCEDURE dowhile()
BEGIN
	DECLARE v1 INT DEFAULT 5;
	WHILE v1 > 0 DO
	SET v1 = v1 -1;
	END WHILE;
END$$

DELIMITER :
----------------------------------------------