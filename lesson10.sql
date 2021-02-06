/*
Задние 1. Проанализировать какие запросы могут выполняться наиболее часто в процессе работы приложения и добавить необходимые индексы.

Задание 2. Оконные функции
-- Построить запрос, который будет выводить следующие столбцы:
-- имя группы
-- среднее количество пользователей в группах 
-- самый молодой пользователь в группе 
-- самый старший пользователь в группе 
-- общее количество пользователей в группе 
-- всего пользователей в системе 
-- отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100
 */

-- Задание 1.

USE vk;


-- Индекс сообщений, кому и от кого. Возможно пондобится быстро найти все ссобщения от конкретного пользователя

SHOW indexes FROM messages;
DROP INDEX messages_from_to_isx ON messages;
CREATE INDEX messages_from_to_idx ON messages(from_user_id, to_user_id);

SELECT * FROM messages WHERE from_user_id = 27;


-- Индекс групп для подсчета количества пользователя и возможного поиска групп друзей

DROP INDEX community_user_id_idx ON communities_users;
CREATE INDEX community_user_id_idx ON communities_users(community_id, user_id);

SELECT  *  FROM communities;
SELECT  *  FROM communities_users;

-- Индекс друзей для поиска друзей друзей

SELECT  *  FROM friendship f ;

CREATE INDEX friends_user_id_idx ON friendship(user_id, friend_id);

-- Задание 2

-- Добавление новой записи для проверки изменения результата
INSERT INTO communities_users(community_id, user_id) VALUES (1,2);
SELECT  *  FROM communities_users;

-- Запрос для сверки пользователей и групп
SELECT c.name, cu.user_id , u.first_name FROM communities_users cu
JOIN communities c ON c.id = cu.community_id
JOIN users u ON cu.user_id = u.id 
ORDER BY name;

-- Решение задачи
SELECT DISTINCT 
	c.name,
	count(cu.user_id) OVER (PARTITION BY c.id) AS total_in_group,
	FIRST_VALUE(u.first_name) OVER (PARTITION BY c.id ORDER BY p.birthday desc) AS youngest,
	FIRST_VALUE(u.first_name) OVER (PARTITION BY c.id ORDER BY p.birthday) AS oldest,
	count(cu.user_id) OVER () / (SELECT count(*) FROM communities) AS avg_users,
	(SELECT count(*) FROM users) AS total_users,
	count(cu.user_id) OVER (PARTITION BY c.id) / (SELECT count(*) FROM users) * 100 AS '% from all'
	FROM communities c
	LEFT JOIN communities_users cu ON cu.community_id = c.id 
	LEFT JOIN users u ON cu.user_id = u.id 
	LEFT JOIN profiles p ON cu.user_id = p.user_id
	ORDER BY name;