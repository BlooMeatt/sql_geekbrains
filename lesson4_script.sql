/* Все данные в полях updated_at обновлены
 * Обновлены данные во всех таблицах, чтобы быть больше похожими на случайные
*/
USE vk;

SELECT * FROM cities;
UPDATE cities SET updated_at = now() WHERE updated_at < created_at;
UPDATE cities SET country_id = 1+floor(rand()*100);

-- Уменьшение числа групп
SELECT * FROM communities;
DELETE FROM communities WHERE id>25;

-- Добавление столбца 
SELECT *FROM communities_users;
ALTER TABLE communities_users ADD COLUMN updated_at datetime DEFAULT current_timestamp() ON UPDATE current_timestamp();
DELETE FROM communities_users WHERE community_id>25;

-- Переименование столбца на comment, что лучше отражает его назначение (коммент под постом)
SELECT * FROM content;
ALTER TABLE content RENAME COLUMN message TO comment;
UPDATE content SET user_id = 1+floor(rand()*100); 

-- Добавление поля, отражающего дату и время лайка пользователя
SELECT * FROM content_likes;
ALTER TABLE content_likes ADD COLUMN created_at datetime DEFAULT current_timestamp();

-- Добавление телефонного кода страны, который можно использовать для автоопределения при регистрации
DESC countries;
SELECT * FROM countries;
ALTER TABLE countries ADD COLUMN phone_code varchar(7);
UPDATE countries SET phone_code = concat('+',(1+floor(rand()*100))); 

-- Удаление статусов, тк я считаю, что дружба либо есть, либо ее нет. Семейное положение можно отразить в профиле пользователя.
SELECT * FROM friendship;
ALTER TABLE friendship DROP status_id;
ALTER TABLE friendship DROP updated_at;
ALTER TABLE friendship DROP created_at;
UPDATE friendship SET confirmed_at = now() WHERE confirmed_at < requested_at;
UPDATE friendship SET friend_id = 1+floor(rand()*100); 

-- Удаление таблицы статусов, см. выше
DROP TABLE friendship_statuses;

-- Переработка таблицы, поле filename переименовано и теперь показывает путь к файлу
SELECT * FROM media;
UPDATE media SET user_id = 1+floor(rand()*100);
UPDATE media SET `size` = 100000+floor(rand()*100000);
ALTER TABLE media RENAME COLUMN filename TO source;
UPDATE media SET source = concat('\\\\fileserver\\VK\\',source, (SELECT name FROM extensions ORDER BY rand() LIMIT 1)); 
UPDATE media SET metadata = concat('{"owner":"', 
	(SELECT concat(first_name,' ',last_name) FROM users WHERE id = user_id),
	'"}');
ALTER TABLE media MODIFY COLUMN metadata JSON;

-- Временная таблица для расширений
CREATE TEMPORARY TABLE extensions (name varchar(20));
INSERT INTO extensions VALUES ('.jpg'),('.avi'),('.mp3');

-- Удалены старые данные, добавлены нормальные типы медиафайлов
SELECT * FROM media_types;
DELETE FROM media_types;
truncate media_types;
INSERT INTO media_types (name) VALUES ('audio'),('video'),('image');

SELECT * FROM messages;
UPDATE messages SET from_user_id = 1+floor(rand()*100);

-- Добавил семейное положение в профиль пользователя
SELECT * FROM profiles;
ALTER TABLE profiles ADD COLUMN martial_status_id int(3);
UPDATE profiles SET city_id = 1+floor(rand()*100);
UPDATE profiles SET country_id = 1+floor(rand()*100);
UPDATE profiles SET martial_status_id = floor(1+rand()*2);

-- Таблица хранит варианты семейного положения
CREATE TABLE martial_statuses (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name varchar(15) NOT NULL
);
SELECT * FROM martial_statuses;
INSERT INTO martial_statuses (name) VALUES ('single'),('married');

 -- Добавление поля created_at, показывающее, когда пользователь поставил отметку "нравится"
SELECT * FROM user_likes;
ALTER TABLE user_likes ADD COLUMN created_at datetime DEFAULT current_timestamp();

-- Корректировка телефонного номера, теперь код хранится отдельно
DESC users;
SELECT * FROM users;
UPDATE users SET phone = 1000000+floor(rand()*1000000);


