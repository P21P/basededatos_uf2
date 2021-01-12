SELECT characters.id_character, 
characters.name, items.item,characters_items.id_character_item
FROM characters_items
INNER JOIN characters ON characters_items.id_character = 
characters.id_character
INNER JOIN items ON characters_items.id_item = 
items.id_item

SELECT *
FROM characters
LEFT JOIN characters_items 
	ON characters.id_character=characters_items.id_character

SELECT *
FROM characters
LEFT JOIN characters_items 
	ON characters.id_character=characters_items.id_character
LEFT JOIN items
	ON items.id_item=characters_items.id_item

SELECT characters.id_characters, characters.name, items.id_item, items.item
FROM characters
LEFT JOIN characters_items 
	ON characters.id_character=characters_items.id_character
RIGHT JOIN items
	ON items.id_item=characters_items.id_item

SELECT characters.id_character, characters.name, items.id_item, items.item
FROM characters
LEFT JOIN characters_items 
	ON characters.id_character=characters_items.id_character
INNER JOIN items
	ON items.id_item=characters_items.id_item