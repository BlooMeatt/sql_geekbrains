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
	line_number int not null,
	desk_number int not null,
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
			
ALTER TABLE  student
	ADD CONSTRAINT class_id_fk
		FOREIGN KEY (class_id) REFERENCES classes(id)
			ON DELETE CASCADE;

ALTER TABLE desks
	ADD CONSTRAINT room_id_fk
		FOREIGN KEY (room_id) REFERENCES room(id)
			ON DELETE CASCADE;
			
-- Заполняем таблицы
INSERT INTO classes (name)
VALUES
  ("Huádōng"),
  ("Castilla y León"),
  ("PD"),
  ("Berlin"),
  ("Jammu and Kashmir"),
  ("TR"),
  ("O"),
  ("Jalisco"),
  ("CAJ"),
  ("Biobío");
		
INSERT INTO student (name,class_id)
VALUES
  ("Rajah Meyers",1),
  ("Chaim Curtis",6),
  ("Maris Shannon",3),
  ("Cyrus Fitzgerald",10),
  ("Teegan Wilkerson",10),
  ("Francis Hinton",7),
  ("Whilemina Steele",8),
  ("Anthony Whitaker",5),
  ("Jordan Willis",7),
  ("Athena Benjamin",9);

INSERT INTO room (room_name)
VALUES
	("Физика"),
	("Математика"),
	("География"),
	("Химия"),
	("Биология");

INSERT INTO desks (line_number,desk_number,room_id)
VALUES
	(1,1,1),
	(1,2,1),
	(1,3,1),
	(1,4,1),
	(1,5,1),
	(2,1,1),
	(2,2,1),
	(2,3,1),
	(2,4,1),
	(2,5,1),
	(1,1,2),
	(1,2,2),
	(1,3,2),
	(1,4,2),
	(1,5,2),
	(2,1,2),
	(2,2,2),
	(2,3,2),
	(2,4,2),
	(2,5,2),
	(1,1,3),
	(1,2,3),
	(1,3,3),
	(1,4,3),
	(1,5,3),
	(2,1,3),
	(2,2,3),
	(2,3,3),
	(2,4,3),
	(2,5,3),
	(1,1,4),
	(1,2,4),
	(1,3,4),
	(1,4,4),
	(1,5,4),
	(2,1,4),
	(2,2,4),
	(2,3,4),
	(2,4,4),
	(2,5,4),
	(1,1,5),
	(1,2,5),
	(1,3,5),
	(1,4,5),
	(1,5,5),
	(2,1,5),
	(2,2,5),
	(2,3,5),
	(2,4,5),
	(2,5,5);
  
INSERT INTO lesson (student_id,desk_id,lesson_start,lesson_finish)
VALUES
  (1,10,"2023-05-21 10:00:00","2023-05-21 10:45:00"),
  (3,23,"2023-05-21 11:00:00","2023-05-21 11:45:00"),
  (4,22,"2023-05-21 12:00:00","2023-05-21 12:45:00"),
  (4,45,"2023-05-21 13:00:00","2023-05-21 13:45:00"),
  (3,1,"2023-05-21 14:00:00","2023-05-21 14:45:00"),
  (7,4,"2023-05-21 15:00:00","2023-05-21 15:45:00"),
  (8,6,"2023-05-21 10:00:00","2023-05-21 10:45:00"),
  (7,13,"2023-05-21 11:00:00","2023-05-21 11:45:00"),
  (3,10,"2023-05-21 12:00:00","2023-05-21 12:45:00"),
  (9,31,"2023-05-21 13:00:00","2023-05-21 13:45:00"),
  (7,2,"2023-05-21 14:00:00","2023-05-21 14:45:00"),
  (9,6,"2023-05-21 15:00:00","2023-05-21 15:45:00"),
  (2,9,"2023-05-21 11:00:00","2023-05-21 11:45:00"),
  (2,44,"2023-05-21 12:00:00","2023-05-21 12:45:00"),
  (4,47,"2023-05-21 13:00:00","2023-05-21 13:45:00"),
  (1,36,"2023-05-21 14:00:00","2023-05-21 14:45:00"),
  (6,30,"2023-05-21 11:00:00","2023-05-21 11:45:00"),
  (8,22,"2023-05-21 11:00:00","2023-05-21 11:45:00"),
  (6,17,"2023-05-21 11:00:00","2023-05-21 11:45:00"),
  (7,1,"2023-05-21 11:00:00","2023-05-21 11:45:00");