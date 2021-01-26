-- 1. Создать и заполнить таблицы лайков и постов.
-- 2. Создать все необходимые внешние ключи и диаграмму отношений.
-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?
-- 4. Подсчитать количество лайков которые получили 10 самых молодых пользователей.
-- 5. Найти 10 пользователей, которые проявляют наименьшую активность в
-- использовании социальной сети
-- (критерии активности необходимо определить самостоятельно).

USE vk;

DROP TABLE user_likes;
DROP TABLE content_likes;
DROP TABLE content;

-- Таблица лайков
DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  target_id INT UNSIGNED NOT NULL,
  target_type_id INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Таблица типов лайков
DROP TABLE IF EXISTS target_types;
CREATE TABLE target_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO target_types (name) VALUES 
  ('messages'),
  ('users'),
  ('media'),
  ('posts');

-- Заполняем лайки
INSERT INTO likes 
  SELECT 
    id, 
    FLOOR(1 + (RAND() * 100)), 
    FLOOR(1 + (RAND() * 100)),
    FLOOR(1 + (RAND() * 4)),
    CURRENT_TIMESTAMP 
  FROM messages;

-- Проверим
SELECT * FROM likes LIMIT 10;

-- Создадим таблицу постов
DROP TABLE IF exists posts;
CREATE TABLE posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  community_id INT UNSIGNED,
  head VARCHAR(255),
  body TEXT NOT NULL,
  media_id INT UNSIGNED,
  is_public BOOLEAN DEFAULT TRUE,
  is_archived BOOLEAN DEFAULT FALSE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
DESC profiles ;

-- Добавляем внешние ключи
ALTER TABLE cities MODIFY country_id int UNSIGNED NOT NULL;
ALTER TABLE cities
	ADD CONSTRAINT cities_country_id_fk
		FOREIGN KEY (country_id) REFERENCES countries(id)
			ON DELETE cascade;

ALTER TABLE communities_users 
	ADD CONSTRAINT community_id_fk
		FOREIGN KEY (community_id) REFERENCES communities(id)
			ON DELETE CASCADE;
		
ALTER TABLE communities_users 
	ADD CONSTRAINT user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE;

ALTER TABLE profiles
	ADD CONSTRAINT profiles_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE RESTRICT;	
		
ALTER TABLE profiles
	ADD CONSTRAINT profiles_photo_id_fk
		FOREIGN KEY (photo_id) REFERENCES media(id)
			ON DELETE SET null;
		
UPDATE profiles SET country_id = floor(1+rand()*100);	

ALTER TABLE profiles MODIFY martial_status_id int UNSIGNED;
ALTER TABLE profiles
	ADD CONSTRAINT profiles_city_id_fk
		FOREIGN KEY (city_id) REFERENCES cities(id)
			ON DELETE SET null;
			
ALTER TABLE profiles
	ADD CONSTRAINT profiles_country_id_fk
		FOREIGN KEY (country_id) REFERENCES countries(id)
			ON DELETE SET NULL;
			
ALTER TABLE profiles
	ADD CONSTRAINT profiles_martial_status_fk
		FOREIGN KEY (martial_status_id) REFERENCES martial_statuses(id)
			ON DELETE SET NULL;
			
ALTER TABLE posts
	ADD CONSTRAINT posts_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE;
ALTER TABLE posts
	ADD CONSTRAINT posts_community_id_fk
		FOREIGN KEY (community_id) REFERENCES communities(id)
			ON DELETE CASCADE;
ALTER TABLE posts
	ADD CONSTRAINT posts_media_id_fk
		FOREIGN KEY (media_id) REFERENCES media(id)
			ON DELETE CASCADE;
			
ALTER TABLE media
	ADD CONSTRAINT media_type_id_fk
		FOREIGN KEY (media_type_id) REFERENCES media_types(id)
			ON DELETE restrict;
			
ALTER TABLE friendship 
	ADD CONSTRAINT friend_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE;
			
ALTER TABLE friendship 
	ADD CONSTRAINT friend_to_user_id_fk
		FOREIGN KEY (friend_id) REFERENCES users(id)
			ON DELETE CASCADE;
			
ALTER TABLE messages
	ADD CONSTRAINT message_user_id_fk
		FOREIGN KEY (from_user_id) REFERENCES users(id)
			ON DELETE CASCADE;
			
ALTER TABLE messages
	ADD CONSTRAINT message_to_user_id_fk
		FOREIGN KEY (to_user_id) REFERENCES users(id)
			ON DELETE CASCADE;
		
ALTER TABLE content MODIFY media_id int UNSIGNED NOT NULL;			
ALTER TABLE content 
	ADD CONSTRAINT content_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE;
			
ALTER TABLE content 
	ADD CONSTRAINT content_media_id_fk
		FOREIGN KEY (media_id) REFERENCES media(id)
			ON DELETE CASCADE;
			
ALTER TABLE likes 
	ADD CONSTRAINT likes_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE;
			
ALTER TABLE likes 
	ADD CONSTRAINT likes_target_type_id_fk
		FOREIGN KEY (target_type_id) REFERENCES target_types(id)
			ON DELETE restrict;

-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?			
SELECT (SELECT gender FROM profiles WHERE user_id = likes.user_id) AS gender, COUNT(*) AS total
    FROM likes
    	GROUP BY gender
    		ORDER BY total DESC; 

-- 4. Подсчитать количество лайков которые получили 10 самых молодых пользователей.
SELECT sum(likes_sum) AS total_likes FROM 
(SELECT 
	(SELECT count(*) FROM likes WHERE target_id = profiles.user_id AND target_type_id = 2) 
	AS likes_sum
	FROM profiles
	ORDER BY birthday 
	DESC LIMIT 10)
	AS likes_total;

-- 5. Найти 10 пользователей, которые проявляют наименьшую активность в
-- использовании социальной сети
-- В качестве критерия активности я выбрал количество поставленных лайков всего пользователем

-- Эксперименты
SELECT  *  FROM posts WHERE user_id = 14;
SELECT  *  FROM likes WHERE user_id = 14;
SELECT count(*) AS total, user_id FROM posts GROUP BY user_id ORDER BY total;
SELECT count(*) AS total, user_id FROM likes GROUP BY user_id ORDER BY total;

SELECT 
	(SELECT count(*) FROM likes WHERE user_id = profiles.user_id) AS total_likes, 
	(SELECT count(*) FROM posts WHERE user_id = profiles.user_id) AS total_posts
	FROM profiles ORDER BY user_id ; 

-- Решение задачи
SELECT
	(SELECT count(*) FROM likes WHERE user_id = profiles.user_id) + (SELECT count(*) FROM posts WHERE user_id = profiles.user_id) 
	AS total_activity, user_id 
	FROM profiles 
	ORDER BY total_activity , user_id 
	LIMIT 10 ;