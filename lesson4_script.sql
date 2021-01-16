USE vk;

SELECT * FROM cities;
UPDATE cities SET updated_at = now() WHERE updated_at < created_at;
UPDATE cities SET country_id = 1+floor(rand()*100);

SELECT * FROM communities;
DELETE FROM communities WHERE id>25;

SELECT *FROM communities_users;
ALTER TABLE communities_users ADD COLUMN updated_at datetime DEFAULT current_timestamp() ON UPDATE current_timestamp();
DELETE FROM communities_users WHERE community_id>25;

SELECT * FROM content;
ALTER TABLE content RENAME COLUMN message TO comment;
UPDATE content SET user_id = 1+floor(rand()*100); 

SELECT * FROM content_likes;
ALTER TABLE content_likes ADD COLUMN created_at datetime DEFAULT current_timestamp();

DESC countries;
SELECT * FROM countries;
ALTER TABLE countries ADD COLUMN phone_code varchar(7);
UPDATE countries SET phone_code = concat('+',(1+floor(rand()*100))); 

SELECT * FROM friendship;
ALTER TABLE friendship DROP status_id;
ALTER TABLE friendship DROP updated_at;
ALTER TABLE friendship DROP created_at;
UPDATE friendship SET confirmed_at = now() WHERE confirmed_at < requested_at;
UPDATE friendship SET friend_id = 1+floor(rand()*100); 

DROP TABLE friendship_statuses;

SELECT * FROM media;
UPDATE media SET user_id = 1+floor(rand()*100);
UPDATE media SET `size` = 100000+floor(rand()*100000);
ALTER TABLE media RENAME COLUMN filename TO source;
UPDATE media SET source = concat('\\\\fileserver\\VK\\',source, (SELECT name FROM extensions ORDER BY rand() LIMIT 1)); 
UPDATE media SET metadata = concat('{"owner":"', 
	(SELECT concat(first_name,' ',last_name) FROM users WHERE id = user_id),
	'"}');
ALTER TABLE media MODIFY COLUMN metadata JSON;

CREATE TEMPORARY TABLE extensions (name varchar(20));
INSERT INTO extensions VALUES ('.jpg'),('.avi'),('.mp3');

SELECT * FROM media_types;
DELETE FROM media_types;
truncate media_types;
INSERT INTO media_types (name) VALUES ('audio'),('video'),('image');

SELECT * FROM messages;
UPDATE messages SET from_user_id = 1+floor(rand()*100);

SELECT * FROM profiles;
UPDATE profiles SET city_id = 1+floor(rand()*100);
UPDATE profiles SET country_id = 1+floor(rand()*100);

SELECT * FROM user_likes;
ALTER TABLE user_likes ADD COLUMN created_at datetime DEFAULT current_timestamp();

DESC users;
SELECT * FROM users;
UPDATE users SET phone = 1000000+floor(rand()*1000000);


