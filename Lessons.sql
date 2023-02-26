drop database geekbrains;
create database geekbrains;
use geekbrains;

-- Кабинет
DROP TABLE IF EXISTS room;
CREATE TABLE room (
	id int UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	room_name varchar(50)
);

-- Парты
DROP TABLE IF EXISTS desks;
CREATE TABLE desks (
	id int UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	room_id INT UNSIGNED NOT NULL
);

-- Классы
DROP TABLE IF EXISTS classes;
CREATE TABLE classes (
	id int UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	name varchar(50)
);

-- Ученики
DROP TABLE IF EXISTS student;
CREATE TABLE student (
	id int UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	class_id INT UNSIGNED NOT NULL,
	name varchar(50)
);

-- Уроки
DROP TABLE IF EXISTS lesson;
CREATE TABLE lesson (
	id int UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	student_id INT UNSIGNED NOT NULL,
	desk_id INT UNSIGNED NOT NULL,
	variant_number int,
	lesson_start DATETIME DEFAULT CURRENT_TIMESTAMP,  
 	lesson_finish DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Внешние ключи
ALTER TABLE  lesson
	ADD CONSTRAINT student_id_fk
		FOREIGN KEY (student_id) REFERENCES student(id)
			ON DELETE CASCADE;
ALTER TABLE  lesson
	ADD CONSTRAINT desk_id_fk
		FOREIGN KEY (desk_id) REFERENCES desks(id)
			ON DELETE CASCADE;			