-- DROP VIEW client_car_info;
-- DROP VIEW orders_full_info;

CREATE VIEW client_car_info AS 
SELECT ca.id,c.name, a.vendor, a.model,et.type_name AS engine_type, ca.odometer,ca.car_vin 
FROM client_auto ca
JOIN clients c ON ca.client_id = c.id
JOIN autos a ON ca.model_id = a.id
JOIN engine_types et ON ca.engine_type_id = et.id
ORDER BY id;

SELECT * FROM client_car_info;

CREATE VIEW orders_full_info as
SELECT 
o.id, 
c.name AS Client_name,
(SELECT concat_ws(" ", a.vendor,a.model) FROM autos a WHERE a.id = ca.model_id) AS Client_auto,
s.name AS Service_name,
p.name AS Part_name,
st.name AS Staff_name,
o.created_at,
o.finished_at,
order_price(o.id) AS total_price
FROM orders o
JOIN client_auto ca ON o.client_auto_id = ca.id
JOIN clients c ON ca.client_id = c.id
JOIN pricelist s ON o.service_id = s.id 
JOIN parts p ON o.part_id = p.id 
JOIN staff st ON o.staff_id = st.id 
;

SELECT  *  FROM orders_full_info ORDER BY Client_auto ;

SELECT DISTINCT 
(SELECT AVG( DATE_FORMAT(FROM_DAYS(TO_DAYS(CURDATE()) - TO_DAYS(birthday)), '%Y') + 0 ) FROM clients) AS Avg_client_age,
(SELECT AVG( DATE_FORMAT(FROM_DAYS(TO_DAYS(CURDATE()) - TO_DAYS(hired_at)), '%Y') + 0 ) FROM staff) AS Avg_staff_exp,
(SELECT a.vendor FROM client_auto ca JOIN autos a ON ca.model_id = a.id GROUP BY a.vendor ORDER BY count(a.vendor) DESC LIMIT 1) AS Pop_car,
(SELECT count(a.vendor) AS pop_cars FROM client_auto ca JOIN autos a ON ca.model_id = a.id  GROUP BY a.vendor ORDER BY pop_cars DESC LIMIT 1) AS total_cars
FROM client_auto ca 
JOIN autos a ON ca.model_id = a.id;