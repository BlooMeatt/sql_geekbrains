-- 1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

-- 2. Выведите список товаров products и разделов catalogs, который соответствует товару.

-- 3. (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name).
-- Поля from, to и label содержат английские названия городов, поле name — русское. 
-- Выведите список рейсов flights с русскими названиями городов.





USE lesson7;

-- Задача 1
DROP TABLE IF EXISTS users;
CREATE TABLE users (
	user_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	username varchar(50)
);
INSERT INTO users (username) VALUES 
	('user2'),
	('user3'),
	('user4'),
	('user5'),
	('user6'),
	('user7'),
	('user8'),
	('user9'),
	('user10'),
	('user11'),
	('user12');

SELECT  *  FROM users;
DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
	order_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	user_id INT UNSIGNED NOT NULL,
	FOREIGN KEY (user_id) REFERENCES users (user_id) ON DELETE CASCADE
);
INSERT INTO orders (user_id) VALUES
	(floor(1+rand()*11)),
	(floor(1+rand()*11)),
	(floor(1+rand()*11)),
	(floor(1+rand()*11)),
	(floor(1+rand()*11)),
	(floor(1+rand()*11)),
	(floor(1+rand()*11)),
	(floor(1+rand()*11)),
	(floor(1+rand()*11)),
	(floor(1+rand()*11)),
	(floor(1+rand()*11)),
	(floor(1+rand()*11)),
	(floor(1+rand()*11))
;

SELECT  count(*),user_id FROM orders GROUP by user_id;

-- Решение задачи
SELECT  users.username FROM users JOIN orders
     WHERE users.user_id = orders.user_id GROUP BY username;
    
-- Задача 2
SELECT  *  FROM catalogs;
SELECT  *  FROM products;
SELECT p.id, p.name, p.price, c.name AS Type FROM products p JOIN catalogs c WHERE p.catalog_id = c.id;

-- Задача 3
DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	src varchar (50) NOT NULL,
	dst varchar (50) NOT NULL 
);
DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	label varchar(50),
	name varchar(50)
);

INSERT INTO flights (src,dst) VALUES 
('moscow', 'omsk'),
('novgorod', 'kazan'),
('irkutsk', 'moscow'),
('omsk', 'irkutsk'),
('moscow', 'kazan');
INSERT INTO cities (label, name) VALUES
('moscow', 'Москва'),
('irkutsk', 'Иркутск'),
('novgorod', 'Новгород'),
('kazan', 'Казань'),
('omsk', 'Омск');

SELECT f.id, city_src.name, city_dst.name 
	FROM flights as f 
	JOIN cities AS city_src ON  f.src = city_src.label 
	JOIN cities AS city_dst ON  f.dst = city_dst.label
	ORDER BY id;
