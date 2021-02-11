-- Триггер на проверку ввода данных в таблицу 

DROP TRIGGER IF EXISTS engine_type_check;
delimiter //
CREATE TRIGGER engine_type_check BEFORE INSERT ON client_auto
FOR EACH ROW 
BEGIN 
	IF NEW.engine_type_id = 4 AND NEW.engine_volume is NOT NULL THEN 
	SIGNAL SQLSTATE '45000'
		SET message_text = 'У электрокаров не может быть параметра "обьем двигателя"!';
	END IF;
END//

DROP FUNCTION IF EXISTS order_price//

-- Подсчет стоимости заказа

CREATE FUNCTION order_price(order_id int)
RETURNS int(6) DETERMINISTIC
BEGIN
	DECLARE res int(6);
	SELECT p.price + s.price AS total_price INTO res FROM orders o
	JOIN parts p ON o.part_id = p.id
	JOIN pricelist s ON o.service_id = s.id 
	WHERE o.id = order_id;
	RETURN res;
END//

-- Архивация старых записей

delimiter //
DROP PROCEDURE IF EXISTS arcive_old_orders//
CREATE PROCEDURE arcive_old_orders (last_date date)
BEGIN 
	START TRANSACTION; 
	INSERT INTO orders_archive SELECT * FROM orders o WHERE o.finished_at < last_date;
	DELETE FROM orders WHERE finished_at < last_date;
	COMMIT;
	SELECT  *  FROM orders;
	SELECT  *  FROM orders_archive;
END//
delimiter ;

SELECT order_price(10);

-- CALL arcive_old_orders ('2021-01-01');
