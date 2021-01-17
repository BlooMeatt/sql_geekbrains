USE lesson5;

-- Фильтрация и сортировка

/*
	Задание 1
	Пусть в таблице users поля created_at и updated_at оказались незаполненными.
	Заполните их текущими датой и временем.
*/
DROP TABLE IF EXISTS users_1;
CREATE TABLE users_1 (
	id int UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	name varchar(100),
	birthday_at date,
	created_at datetime DEFAULT null,
	updated_at datetime DEFAULT null
);

INSERT INTO users_1 (name, birthday_at)
VALUES
	('User1', '1999-01-01'),
	('User2', '1998-02-01'),
	('User3', '1997-03-01'),
	('User4', '1996-04-01'),
	('User5', '1995-05-01'),
	('User6', '1994-06-01'),
	('User7', '1993-07-01'),
	('User8', '1992-08-01'),
	('User9', '1991-09-01'),
	('User10', '1990-10-01');

UPDATE users_1 SET created_at = now(), updated_at = now();
SELECT * FROM users_1;

/*
	Задание 2
	Таблица users была неудачно спроектирована. 
	Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате 20.10.2017 8:10. 
	Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.
*/

DROP TABLE IF EXISTS users_2;
CREATE TABLE users_2 (
	id int UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	name varchar(100),
	birthday_at date,
	created_at varchar(255) DEFAULT null,
	updated_at varchar(255) DEFAULT null
);

INSERT INTO users_2 (name, birthday_at, created_at, updated_at)
VALUES
	('User1', '1999-01-01','01.01.2020 12:00','01.01.2021 12:00'),
	('User2', '1998-01-01','01.01.2020 12:00','01.01.2021 12:00'),
	('User3', '1997-01-01','01.01.2020 12:00','01.01.2021 12:00'),
	('User4', '1996-01-01','01.01.2020 12:00','01.01.2021 12:00'),
	('User5', '1995-01-01','01.01.2020 12:00','01.01.2021 12:00'),
	('User6', '1994-01-01','01.01.2020 12:00','01.01.2021 12:00'),
	('User7', '1993-01-01','01.01.2020 12:00','01.01.2021 12:00'),
	('User8', '1992-01-01','01.01.2020 12:00','01.01.2021 12:00'),
	('User9', '1991-01-01','01.01.2020 12:00','01.01.2021 12:00'),
	('User10', '1990-01-01','01.01.2020 12:00','01.01.2021 12:00');

UPDATE users_2 SET created_at = str_to_date(created_at, '%d.%m.%Y %k:%i'),updated_at = str_to_date(updated_at, '%d.%m.%Y %k:%i');
ALTER TABLE users_2 CHANGE created_at created_at datetime DEFAULT current_timestamp;
ALTER TABLE users_2 CHANGE updated_at updated_at datetime DEFAULT current_timestamp ON UPDATE current_timestamp;
DESC users_2;
SELECT * FROM users_2;
/*
Задание 3
В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 
0, если товар закончился и выше нуля, если на складе имеются запасы. 
Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value. 
Однако нулевые запасы должны выводиться в конце, после всех записей.
*/

DROP TABLE IF EXISTS items;
CREATE TABLE items (
	id int UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	name varchar(100),
	value int(10),
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
 	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
INSERT INTO items (name,value) VALUES
('item2','0'),
('item3','2500'),
('item4','0'),
('item5','30'),
('item6','500'),
('item7','1'),
('item8','100'),
('item9','1'),
('item10','0');
SELECT * FROM items;
SELECT * FROM items ORDER BY value = 0, value;

-- Задание 4
SELECT name, birthday_at FROM users_1 WHERE date_format(birthday_at, '%M') IN ('may', 'august'); 

-- Агрегация данных

/* 
Задание 1
Подсчитайте средний возраст пользователей в таблице users.
*/

SELECT avg(timestampdiff(YEAR, birthday_at, now())) AS age FROM users_1;

/*
 Задание 2
 Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
 Следует учесть, что необходимы дни недели текущего года, а не года рождения.
 */

-- Решение подсмотрел, потому что сначала не разобрался.
-- Дата собирается как строка из текущего года плюс месяц-день пользователя, преобразуется в нужный тип и форматируется по дню недели
SELECT date_format(DATE(CONCAT_WS('-', YEAR(NOW()), MONTH(birthday_at), DAY(birthday_at))), '%W') AS DAY, count(*) AS total 
FROM users_1 GROUP BY DAY ORDER BY total desc;

/* Задание 3
 * Подсчитайте произведение чисел в столбце таблицы.
*/

SELECT round(exp(sum(ln(value)))) FROM items;
