USE geekbrains;

SELECT
	s.name AS Имя,
	c.name AS Класс,
	r.room_name AS Кабинет,
	d.line_number AS Ряд,
	d.desk_number AS Парта,
	l.lesson_start AS Начало_урока,
	l.lesson_finish AS Конец_урока
FROM
	lesson l
LEFT JOIN student s ON l.student_id =s.id 
LEFT JOIN desks d ON l.desk_id =d.id 
LEFT JOIN room r ON d.room_id =r.id  
LEFT JOIN classes c ON s.class_id =c.id;