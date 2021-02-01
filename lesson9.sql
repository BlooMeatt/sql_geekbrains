USE lesson9;

-- Задание 1.В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных.
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users.
-- Используйте транзакции.

SELECT * FROM shop.users;
SELECT * FROM sample.users;

START TRANSACTION;
	INSERT INTO sample.users SELECT * FROM shop.users WHERE id = 1;
	DELETE FROM shop.users WHERE id = 1;
COMMIT;

-- Задание 2.Создайте представление, которое выводит название name товарной
-- позиции из таблицы products и соответствующее название каталога name
-- из таблицы catalogs.

CREATE OR REPLACE VIEW goods AS
SELECT p.name AS product, c.name AS catalog
FROM products p
JOIN catalogs c
ON p.catalog_id = c.id;
 
SELECT * from goods;

-- Задание 4.Пусть имеется любая таблица с календарным полем created_at. 
-- Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя
-- только 5 самых свежих записей.

DROP TABLE IF EXISTS dates;
CREATE TABLE IF NOT EXISTS dates (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  created_at DATE NOT NULL
);

INSERT INTO dates (name, created_at) VALUES
('d1', '2020-01-01'),
('d2', '2020-01-02'),
('d3', '2020-01-03'),
('d4', '2020-01-04'),
('d5', '2020-01-05'),
('d6', '2020-01-06'),
('d7', '2020-01-07'),
('d8', '2020-01-08'),
('d9', '2020-01-09'),
('d10', '2020-01-10');

DELETE dates	
FROM dates
JOIN
 (SELECT created_at FROM  dates
  ORDER BY created_at DESC
  LIMIT 5, 1) 
  AS delpst
  ON dates.created_at <= delpst.created_at;

SELECT * FROM dates;
SELECT * FROM dates order by created_at DESC;

-- Хранимые процедуры и функции, триггеры

-- Задание 1.Создайте хранимую функцию hello(), которая будет возвращать приветствие,
-- в зависимости от текущего времени суток. С 6:00 до 12:00 функция должна
-- возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать
-- фразу "Добрый день", с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 —
-- "Доброй ночи".

DROP FUNCTION IF EXISTS hello;

DELIMITER //

CREATE FUNCTION hello ()
RETURNS varchar(50) NO SQL
BEGIN
  DECLARE hour INT;
  SET hour = HOUR(NOW());
  CASE
    WHEN hour BETWEEN 0 AND 5 THEN
      RETURN "Доброй ночи";
    WHEN hour BETWEEN 6 AND 11 THEN
      RETURN "Доброе утро";
    WHEN hour BETWEEN 12 AND 17 THEN
      RETURN "Добрый день";
    WHEN hour BETWEEN 18 AND 23 THEN
      RETURN "Добрый вечер";
  END CASE;
END//

DELIMITER ;
SELECT NOW() AS time, hello () AS hello;

--  Задание 2.В таблице products есть два текстовых поля: name с названием товара и
-- description с его описанием. Допустимо присутствие обоих полей или одного из них.
-- Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. 
-- Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены.
-- При попытке присвоить полям NULL-значение необходимо отменить операцию.

DELIMITER //

CREATE TRIGGER field_check_insert BEFORE INSERT ON products
FOR EACH ROW 
	BEGIN
  		IF NEW.name IS NULL AND NEW.description IS NULL THEN
    		SIGNAL SQLSTATE '45000'
    			SET MESSAGE_TEXT = 'Одно из полей должно быть заполнено!';
		END IF;
	END//

CREATE TRIGGER field_check_update BEFORE UPDATE ON products
FOR EACH ROW 
	BEGIN
  		IF NEW.name IS NULL AND NEW.description IS NULL THEN
    		SIGNAL SQLSTATE '45000'
    			SET MESSAGE_TEXT = 'Одно из полей должно быть заполнено!';
		END IF;
	END//
	
INSERT INTO products
  (name, description, price, catalog_id)
VALUES
  (NULL, NULL, 9360.00, 2)//