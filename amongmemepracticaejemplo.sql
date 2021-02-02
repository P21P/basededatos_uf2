CREATE TABLE users (
    id_user INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(24) NOT NULL,
    name VARCHAR(24) NOT NULL,
    surname VARCHAR(24) NOT NULL,
    birthdate DATE NOT NULL,
    email VARCHAR(32) NOT NULL,
    contrseña VARCHAR(32),
    register DATE NOT NULL

);
-------------------------------------------------
INSERT INTO users (username,name,surname,birthdate,email,contrseña,register)
VALUES
('PFD_21','Pablo','Ferrer','2002-10-21','pablofd14@gmail.com',MD5('Papo1449'),CURRENT_DATE())