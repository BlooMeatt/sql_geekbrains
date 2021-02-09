/*
 * Создайте таблицу logs типа Archive. 
 * Пусть при каждом создании записи в таблицах users, catalogs и products 
 * в таблицу logs помещается время и дата создания записи, название таблицы, 
 * идентификатор первичного ключа и содержимое поля name.
 */

-- Факультативные задания я не успеваю разобрать, вернусь к ним после сдачи курсовой работы

-- DROP DATABASE IF EXISTS lesson11;
-- CREATE DATABASE lesson11;
USE lesson9;

DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	tbl varchar(50) NOT NULL,
	row_id int UNSIGNED NOT NULL,
	row_name varchar(50) NOT NULL,
	created_at datetime DEFAULT current_timestamp
) engine = archive;

DELIMITER //
CREATE TRIGGER users_log AFTER INSERT ON users 
FOR EACH ROW 
	BEGIN 
		INSERT INTO logs VALUES ("users", NEW.id, NEW.name, default);
	END//

CREATE TRIGGER catalogs_log AFTER INSERT ON catalogs 
FOR EACH ROW 
BEGIN 
	INSERT INTO logs VALUES (NULL,"catalogs",NEW.id,NEW.name, default);
END//

CREATE TRIGGER products_log AFTER INSERT ON products 
FOR EACH ROW 
BEGIN 
	INSERT INTO logs VALUES (NULL,"products",NEW.id,NEW.name, default);
END//