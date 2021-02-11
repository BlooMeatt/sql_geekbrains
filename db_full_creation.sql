/*
 *Данных скрипт совмещает создание структуры БД с ее наполнением
 *Также здесь корректируются некоторые неправильно сгенерированные данные
 *Сделано для упрощения тестирования и восстановление базы в случае повреждения струткуры или данных
*/
DROP DATABASE IF EXISTS exam;
CREATE DATABASE exam;

USE exam;

DROP TABLE IF EXISTS countries;
CREATE TABLE countries (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name varchar(50) NOT NULL
);

DROP TABLE IF EXISTS cities ;
CREATE TABLE cities (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name varchar(50) NOT NULL,
	country_id int UNSIGNED,
	FOREIGN KEY (country_id) REFERENCES  countries(id) ON DELETE RESTRICT
);

DROP TABLE IF EXISTS clients;
CREATE TABLE clients (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name varchar(50) NOT NULL,
	birthday date DEFAULT NULL,
	city_id int UNSIGNED DEFAULT NULL,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	FOREIGN KEY (city_id) REFERENCES  cities(id) ON DELETE RESTRICT
	
);

DROP TABLE IF EXISTS autos;
CREATE TABLE autos (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	vendor varchar(50) NOT NULL,
	model varchar(50) NOT NULL
);

DROP TABLE IF EXISTS engine_types;
CREATE TABLE engine_types (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	type_name varchar(15) NOT NULL
);

DROP TABLE IF EXISTS client_auto;
CREATE TABLE client_auto (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	client_id int UNSIGNED NOT NULL,
	model_id int UNSIGNED NOT NULL,
	odometer int NOT NULL,
	engine_type_id int UNSIGNED NOT NULL,
	engine_volume float(3,1),
	engine_bhp int UNSIGNED NOT NULL,
	car_vin varchar(17) NOT NULL,
	FOREIGN KEY (client_id) REFERENCES  clients(id) ON DELETE RESTRICT,
	FOREIGN KEY (model_id) REFERENCES  autos(id) ON DELETE RESTRICT,
	FOREIGN KEY (engine_type_id) REFERENCES  engine_types(id) ON DELETE RESTRICT
);

DROP TABLE IF EXISTS staff;
CREATE TABLE staff (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name varchar(50) NOT NULL,
	hired_at date DEFAULT (CURRENT_DATE + INTERVAL 1 YEAR)
);

DROP TABLE IF EXISTS pricelist;
CREATE TABLE pricelist (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name varchar(50) NOT NULL,
	price int NOT NULL
);

DROP TABLE IF EXISTS parts;
CREATE TABLE parts (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name varchar(50) NOT NULL,
	model_id int UNSIGNED NOT NULL,
	price int NOT NULL,
	quantity int DEFAULT NULL,
	FOREIGN KEY (model_id) REFERENCES  autos(id) ON DELETE RESTRICT
);

DROP TABLE IF EXISTS orders ;
CREATE TABLE orders (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	client_auto_id int UNSIGNED NOT NULL,
	service_id int UNSIGNED NOT NULL,
	part_id int UNSIGNED DEFAULT NULL,
	staff_id int UNSIGNED NOT NULL,
	created_at date DEFAULT (CURRENT_DATE),
	finished_at date DEFAULT (CURRENT_DATE),
	FOREIGN KEY (client_auto_id) REFERENCES  client_auto(id) ON DELETE RESTRICT,
	FOREIGN KEY (service_id) REFERENCES  pricelist(id) ON DELETE RESTRICT,
	FOREIGN KEY (part_id) REFERENCES  parts(id) ON DELETE RESTRICT,
	FOREIGN KEY (staff_id) REFERENCES  staff(id) ON DELETE RESTRICT	
);

DROP TABLE IF EXISTS orders_archive;
CREATE TABLE orders_archive (
	id INT UNSIGNED NOT NULL,
	client_auto_id int UNSIGNED NOT NULL,
	service_id int UNSIGNED NOT NULL,
	part_id int UNSIGNED DEFAULT NULL,
	staff_id int UNSIGNED NOT NULL,
	created_at date,
	finished_at date
) engine = archive;

insert into countries (id, name) values (1, 'China');
insert into countries (id, name) values (2, 'China');
insert into countries (id, name) values (3, 'China');
insert into countries (id, name) values (4, 'China');
insert into countries (id, name) values (5, 'Portugal');
insert into countries (id, name) values (6, 'China');
insert into countries (id, name) values (7, 'Russia');
insert into countries (id, name) values (8, 'China');
insert into countries (id, name) values (9, 'Ukraine');
insert into countries (id, name) values (10, 'United States');

insert into cities (id, name, country_id) values (1, 'Sifala', 7);
insert into cities (id, name, country_id) values (2, 'Kanbe', 7);
insert into cities (id, name, country_id) values (3, 'Khafizan', 1);
insert into cities (id, name, country_id) values (4, 'Sanhui', 10);
insert into cities (id, name, country_id) values (5, 'Nang Rong', 3);
insert into cities (id, name, country_id) values (6, 'Naples', 3);
insert into cities (id, name, country_id) values (7, 'Tuburan', 1);
insert into cities (id, name, country_id) values (8, 'Serra da Boa Viagem', 8);
insert into cities (id, name, country_id) values (9, 'Spirovo', 4);
insert into cities (id, name, country_id) values (10, 'Mörön', 10);

insert into clients (id, name, birthday, city_id) values (1, 'Kial Rawsen', '1991-09-03', 3);
insert into clients (id, name, birthday, city_id) values (2, 'Alwin Pallant', '1996-06-26', 7);
insert into clients (id, name, birthday, city_id) values (3, 'Morissa Remirez', '1990-07-04', 9);
insert into clients (id, name, birthday, city_id) values (4, 'Ambur Ware', '1993-03-25', 6);
insert into clients (id, name, birthday, city_id) values (5, 'Harper Steeples', '1994-01-15', 2);
insert into clients (id, name, birthday, city_id) values (6, 'Chalmers Sellick', '1996-10-10', 9);
insert into clients (id, name, birthday, city_id) values (7, 'Dyanne Edelheit', '1991-12-20', 5);
insert into clients (id, name, birthday, city_id) values (8, 'Jorgan Brandsen', '1997-12-06', 10);
insert into clients (id, name, birthday, city_id) values (9, 'Joni Drynan', '1989-11-25', 6);
insert into clients (id, name, birthday, city_id) values (10, 'Elvina Tunno', '1995-07-16', 6);
insert into clients (id, name, birthday, city_id) values (11, 'Tressa Sibun', '1983-03-07', 6);
insert into clients (id, name, birthday, city_id) values (12, 'Kacie Meatyard', '1987-10-27', 2);
insert into clients (id, name, birthday, city_id) values (13, 'Keely Konke', '1989-02-14', 9);
insert into clients (id, name, birthday, city_id) values (14, 'Jervis Mendel', '1993-10-10', 4);
insert into clients (id, name, birthday, city_id) values (15, 'Henrietta Cleland', '1992-01-28', 2);
insert into clients (id, name, birthday, city_id) values (16, 'Tabbitha Gogie', '1988-04-18', 3);
insert into clients (id, name, birthday, city_id) values (17, 'Chan Mougenel', '1991-10-27', 4);
insert into clients (id, name, birthday, city_id) values (18, 'Laurel Schimek', '1985-10-31', 1);
insert into clients (id, name, birthday, city_id) values (19, 'Anita Flukes', '1990-05-07', 4);
insert into clients (id, name, birthday, city_id) values (20, 'Brittan O''Leagham', '1988-01-12', 7);
insert into clients (id, name, birthday, city_id) values (21, 'Carita Douch', '1995-09-30', 7);
insert into clients (id, name, birthday, city_id) values (22, 'Lannie Toone', '1983-04-03', 7);
insert into clients (id, name, birthday, city_id) values (23, 'Cathyleen McMoyer', '1983-08-02', 8);
insert into clients (id, name, birthday, city_id) values (24, 'Tamarah Bagshaw', '1990-05-03', 2);
insert into clients (id, name, birthday, city_id) values (25, 'Moyna Trenouth', '1999-03-18', 2);
insert into clients (id, name, birthday, city_id) values (26, 'Jules Chant', '1986-01-02', 6);
insert into clients (id, name, birthday, city_id) values (27, 'Ulrike Amort', '1996-01-20', 10);
insert into clients (id, name, birthday, city_id) values (28, 'Elsbeth Janic', '1980-09-24', 5);
insert into clients (id, name, birthday, city_id) values (29, 'Emanuele Danko', '1985-11-23', 10);
insert into clients (id, name, birthday, city_id) values (30, 'Erastus Fiddeman', '1990-10-08', 2);
insert into clients (id, name, birthday, city_id) values (31, 'Cross Servant', '1990-03-09', 9);
insert into clients (id, name, birthday, city_id) values (32, 'Murial Tremberth', '1989-12-19', 1);
insert into clients (id, name, birthday, city_id) values (33, 'Madge Sarchwell', '1994-09-28', 5);
insert into clients (id, name, birthday, city_id) values (34, 'Kikelia Rushworth', '1988-12-31', 10);
insert into clients (id, name, birthday, city_id) values (35, 'Aarika Jarrad', '1983-02-28', 3);
insert into clients (id, name, birthday, city_id) values (36, 'Zarah Chafney', '1993-03-20', 7);
insert into clients (id, name, birthday, city_id) values (37, 'Athene Boutton', '1986-07-10', 2);
insert into clients (id, name, birthday, city_id) values (38, 'Vina Arondel', '1985-12-25', 6);
insert into clients (id, name, birthday, city_id) values (39, 'Martha Roxbee', '1991-05-14', 4);
insert into clients (id, name, birthday, city_id) values (40, 'Llywellyn Aizikovitch', '1983-05-28', 3);
insert into clients (id, name, birthday, city_id) values (41, 'Brianna Pledge', '1984-01-01', 4);
insert into clients (id, name, birthday, city_id) values (42, 'Aura Banaszewski', '1984-06-05', 5);
insert into clients (id, name, birthday, city_id) values (43, 'Terry Mountcastle', '1982-11-08', 10);
insert into clients (id, name, birthday, city_id) values (44, 'Saunder Leverington', '1989-08-05', 2);
insert into clients (id, name, birthday, city_id) values (45, 'Michel Cancellieri', '1982-06-24', 3);
insert into clients (id, name, birthday, city_id) values (46, 'Ruthann Wragg', '1996-01-13', 6);
insert into clients (id, name, birthday, city_id) values (47, 'Dena Siddell', '1997-07-14', 4);
insert into clients (id, name, birthday, city_id) values (48, 'Gibb Wartonby', '1989-04-05', 8);
insert into clients (id, name, birthday, city_id) values (49, 'Andeee Oxterby', '1994-02-07', 8);
insert into clients (id, name, birthday, city_id) values (50, 'Claribel Van Waadenburg', '1984-03-02', 3);
insert into clients (id, name, birthday, city_id) values (51, 'Lucien Bradford', '1986-11-02', 9);
insert into clients (id, name, birthday, city_id) values (52, 'Luther Dubois', '1994-10-19', 10);
insert into clients (id, name, birthday, city_id) values (53, 'Lida Mabbott', '1996-11-25', 2);
insert into clients (id, name, birthday, city_id) values (54, 'Emmett Santry', '1995-03-26', 4);
insert into clients (id, name, birthday, city_id) values (55, 'Sharron Whear', '1986-01-15', 1);
insert into clients (id, name, birthday, city_id) values (56, 'Tedmund Aleksahkin', '1986-07-13', 7);
insert into clients (id, name, birthday, city_id) values (57, 'Leilah Sutherington', '1988-11-08', 3);
insert into clients (id, name, birthday, city_id) values (58, 'Isis Skewis', '1993-09-14', 5);
insert into clients (id, name, birthday, city_id) values (59, 'Brande Senett', '1985-09-17', 10);
insert into clients (id, name, birthday, city_id) values (60, 'Kial Hartil', '1991-12-14', 10);
insert into clients (id, name, birthday, city_id) values (61, 'Janeva Behnecke', '1990-11-20', 5);
insert into clients (id, name, birthday, city_id) values (62, 'Erma Greenman', '1987-01-25', 9);
insert into clients (id, name, birthday, city_id) values (63, 'Boothe Barajaz', '1986-05-04', 9);
insert into clients (id, name, birthday, city_id) values (64, 'Anallese Haydn', '1995-08-28', 7);
insert into clients (id, name, birthday, city_id) values (65, 'Berke Giacomucci', '1980-10-01', 6);
insert into clients (id, name, birthday, city_id) values (66, 'Matty Bousfield', '1985-07-01', 7);
insert into clients (id, name, birthday, city_id) values (67, 'Alvy Simison', '1990-02-19', 4);
insert into clients (id, name, birthday, city_id) values (68, 'Eadie Bottell', '1984-07-18', 3);
insert into clients (id, name, birthday, city_id) values (69, 'Devlin Broose', '1999-03-26', 10);
insert into clients (id, name, birthday, city_id) values (70, 'Phoebe Turfus', '1997-05-04', 5);
insert into clients (id, name, birthday, city_id) values (71, 'Latisha Sowrey', '1992-10-29', 3);
insert into clients (id, name, birthday, city_id) values (72, 'Anna-diane Naseby', '1986-04-24', 10);
insert into clients (id, name, birthday, city_id) values (73, 'Illa Habden', '1986-02-07', 5);
insert into clients (id, name, birthday, city_id) values (74, 'Karmen Kindell', '1998-08-28', 7);
insert into clients (id, name, birthday, city_id) values (75, 'Moore Thouless', '1985-11-30', 1);
insert into clients (id, name, birthday, city_id) values (76, 'Jarred Girogetti', '1985-07-21', 8);
insert into clients (id, name, birthday, city_id) values (77, 'Phaedra Gwillyam', '1994-05-17', 10);
insert into clients (id, name, birthday, city_id) values (78, 'Arlena Barry', '1987-09-25', 3);
insert into clients (id, name, birthday, city_id) values (79, 'Claire Crosby', '1985-11-14', 9);
insert into clients (id, name, birthday, city_id) values (80, 'Walliw Rush', '1987-06-29', 4);
insert into clients (id, name, birthday, city_id) values (81, 'Catherin Le Barr', '1997-01-04', 9);
insert into clients (id, name, birthday, city_id) values (82, 'Ariana Wackly', '1984-01-01', 10);
insert into clients (id, name, birthday, city_id) values (83, 'Egon Oley', '1995-07-04', 2);
insert into clients (id, name, birthday, city_id) values (84, 'Chlo Britten', '1995-09-07', 4);
insert into clients (id, name, birthday, city_id) values (85, 'Lorri Harbison', '1993-07-19', 6);
insert into clients (id, name, birthday, city_id) values (86, 'Grethel Crate', '1998-05-09', 9);
insert into clients (id, name, birthday, city_id) values (87, 'Jermaine Jakobsson', '1995-07-05', 8);
insert into clients (id, name, birthday, city_id) values (88, 'Layla Lambird', '1985-11-20', 2);
insert into clients (id, name, birthday, city_id) values (89, 'Nichols Grimsdale', '1981-07-26', 4);
insert into clients (id, name, birthday, city_id) values (90, 'Arleen Hayles', '1996-01-22', 1);
insert into clients (id, name, birthday, city_id) values (91, 'Joni Rawsthorne', '1990-04-16', 5);
insert into clients (id, name, birthday, city_id) values (92, 'Kelley Wiffield', '1991-12-24', 2);
insert into clients (id, name, birthday, city_id) values (93, 'Montague Hedger', '1987-03-08', 2);
insert into clients (id, name, birthday, city_id) values (94, 'Alli Costa', '1986-11-08', 10);
insert into clients (id, name, birthday, city_id) values (95, 'Delinda Jiruca', '1997-02-02', 8);
insert into clients (id, name, birthday, city_id) values (96, 'Yance Youhill', '1991-12-04', 4);
insert into clients (id, name, birthday, city_id) values (97, 'Rufe Whiterod', '1984-08-10', 6);
insert into clients (id, name, birthday, city_id) values (98, 'Malcolm Dymocke', '1982-08-08', 6);
insert into clients (id, name, birthday, city_id) values (99, 'Cy Dyne', '1989-10-25', 3);
insert into clients (id, name, birthday, city_id) values (100, 'Kaleena Cossum', '1988-07-11', 4);

insert into autos (id, vendor, model) values (1, 'Cadillac', 'Escalade');
insert into autos (id, vendor, model) values (2, 'Mercury', 'Grand Marquis');
insert into autos (id, vendor, model) values (3, 'Chrysler', 'Sebring');
insert into autos (id, vendor, model) values (4, 'Kia', 'Rondo');
insert into autos (id, vendor, model) values (5, 'Mazda', 'Millenia');
insert into autos (id, vendor, model) values (6, 'Lexus', 'RX Hybrid');
insert into autos (id, vendor, model) values (7, 'BMW', '5 Series');
insert into autos (id, vendor, model) values (8, 'Volvo', 'XC70');
insert into autos (id, vendor, model) values (9, 'Dodge', 'Dakota');
insert into autos (id, vendor, model) values (10, 'Land Rover', 'Range Rover');
insert into autos (id, vendor, model) values (11, 'Volvo', 'XC70');
insert into autos (id, vendor, model) values (12, 'Ford', 'F350');
insert into autos (id, vendor, model) values (13, 'Volkswagen', 'CC');
insert into autos (id, vendor, model) values (14, 'Oldsmobile', 'Silhouette');
insert into autos (id, vendor, model) values (15, 'Isuzu', 'Amigo');
insert into autos (id, vendor, model) values (16, 'Chevrolet', 'Camaro');
insert into autos (id, vendor, model) values (17, 'Nissan', 'Armada');
insert into autos (id, vendor, model) values (18, 'Ford', 'Ranger');
insert into autos (id, vendor, model) values (19, 'Honda', 'Accord');
insert into autos (id, vendor, model) values (20, 'Audi', '5000CS Quattro');
insert into autos (id, vendor, model) values (21, 'Pontiac', 'Daewoo Kalos');
insert into autos (id, vendor, model) values (22, 'GMC', '3500');
insert into autos (id, vendor, model) values (23, 'Nissan', '300ZX');
insert into autos (id, vendor, model) values (24, 'Ford', 'E250');
insert into autos (id, vendor, model) values (25, 'GMC', '3500');
insert into autos (id, vendor, model) values (26, 'Toyota', 'Avalon');
insert into autos (id, vendor, model) values (27, 'Subaru', 'XT');
insert into autos (id, vendor, model) values (28, 'Chevrolet', 'Corsica');
insert into autos (id, vendor, model) values (29, 'Ford', 'E150');
insert into autos (id, vendor, model) values (30, 'Mitsubishi', 'Montero Sport');
insert into autos (id, vendor, model) values (31, 'Saab', '9-3');
insert into autos (id, vendor, model) values (32, 'Lexus', 'SC');
insert into autos (id, vendor, model) values (33, 'Lexus', 'LS Hybrid');
insert into autos (id, vendor, model) values (34, 'Dodge', 'Ram 2500 Club');
insert into autos (id, vendor, model) values (35, 'Dodge', 'Ram');
insert into autos (id, vendor, model) values (36, 'Mazda', 'B-Series Plus');
insert into autos (id, vendor, model) values (37, 'Studebaker', 'Avanti');
insert into autos (id, vendor, model) values (38, 'Mitsubishi', 'Truck');
insert into autos (id, vendor, model) values (39, 'Chevrolet', 'Avalanche 1500');
insert into autos (id, vendor, model) values (40, 'Dodge', 'Ram 3500');
insert into autos (id, vendor, model) values (41, 'GMC', 'Envoy');
insert into autos (id, vendor, model) values (42, 'Ford', 'E350');
insert into autos (id, vendor, model) values (43, 'Toyota', '4Runner');
insert into autos (id, vendor, model) values (44, 'GMC', '1500 Club Coupe');
insert into autos (id, vendor, model) values (45, 'Ford', 'Freestar');
insert into autos (id, vendor, model) values (46, 'Ford', 'Crown Victoria');
insert into autos (id, vendor, model) values (47, 'Jaguar', 'XJ Series');
insert into autos (id, vendor, model) values (48, 'Pontiac', 'Trans Sport');
insert into autos (id, vendor, model) values (49, 'Ford', 'Mustang');
insert into autos (id, vendor, model) values (50, 'Chevrolet', 'Cavalier');

insert into engine_types (type_name) values ('petrol');
insert into engine_types (type_name) values ('diesel');
insert into engine_types (type_name) values ('hybrid');
insert into engine_types (type_name) values ('electric');


insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (1, 22, 15, 151501, 1, 1.6, 289, 'JH4NA21685S901838');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (2, 41, 1, 114238, 1, 2.5, 406, '19XFB2E54FE506905');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (3, 68, 44, 138295, 3, 4.7, 100, '5LMJJ3H50AE679820');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (4, 80, 43, 125832, 2, 6.4, 351, 'WBA3B5G51DN725716');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (5, 8, 36, 155065, 2, 1.6, 453, 'WBAEJ134X2A911034');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (6, 98, 16, 150927, 4, 4.4, 209, 'WVGAV3AX8EW386475');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (7, 67, 45, 195437, 3, 2.6, 409, 'WBALM53589E933051');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (8, 79, 10, 34934, 4, 5.6, 374, '1C3BC2EB8BN872488');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (9, 72, 38, 71446, 2, 2.6, 335, '1GYFC16239R300599');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (10, 81, 1, 73238, 3, 2.1, 83, 'JN1CV6FE0BM558093');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (11, 17, 44, 37136, 1, 3.1, 214, '1FAHP2DW5CG880588');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (12, 74, 42, 8556, 4, 7.2, 446, 'WAUHF68PX6A933734');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (13, 62, 19, 121889, 4, 4.2, 373, '3GYVKMEF1AG382700');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (14, 3, 46, 183772, 4, 3.9, 374, 'WVGEG9BP2CD547862');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (15, 71, 21, 192643, 4, 6.1, 167, 'WBAEN33443P162391');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (16, 91, 15, 36359, 4, 7.9, 79, 'WP1AA2A23BL132583');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (17, 54, 24, 186514, 2, 7.7, 103, 'WBA3B5C56EF458851');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (18, 6, 7, 195743, 2, 1.5, 143, 'KMHHT6KD3BU470575');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (19, 82, 41, 179220, 3, 6.6, 207, '2C4RRGAG5ER141676');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (20, 56, 50, 60291, 1, 3.7, 428, 'JH4DC44501S577623');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (21, 40, 20, 5319, 4, 2.0, 471, 'WBABS33431J311160');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (22, 21, 35, 46584, 3, 6.0, 121, 'SAJWJ2GD2F8523317');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (23, 77, 20, 64023, 1, 3.2, 188, '3VWC17AU0FM806654');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (24, 85, 12, 7759, 4, 3.9, 107, '5TFBW5F11DX621829');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (25, 78, 24, 132747, 1, 3.1, 306, 'WBALW3C52EC261752');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (26, 87, 21, 171005, 2, 6.2, 421, '3N1AB7AP4FL401987');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (27, 57, 12, 113730, 1, 2.2, 302, '5N1AZ2MH0FN209719');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (28, 9, 36, 65856, 3, 3.9, 423, 'WBADT63472C904940');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (29, 51, 34, 152673, 4, 7.6, 213, 'WA1CGCFE5BD821324');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (30, 69, 24, 17610, 2, 5.6, 420, 'WBAWC73529E242142');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (31, 14, 20, 14847, 3, 4.8, 76, '3N1AB6AP5CL545604');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (32, 96, 27, 53395, 3, 3.3, 185, 'JM3KE2BE2F0594959');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (33, 66, 50, 111063, 1, 3.4, 183, 'WBAHN835X8D727769');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (34, 40, 5, 171307, 1, 6.9, 51, '3CZRE3H50BG836247');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (35, 81, 17, 107862, 4, 4.3, 72, 'JTDKDTB36E1480276');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (36, 59, 26, 18314, 2, 1.8, 92, 'WAUSH78E46A014350');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (37, 78, 34, 78427, 2, 2.1, 234, 'WAUHFBFLXDN792615');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (38, 38, 24, 127608, 3, 3.9, 107, '3D73M3HL3AG703175');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (39, 39, 6, 99879, 2, 1.4, 288, 'WP1AA2A26BL197265');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (40, 94, 29, 169600, 4, 2.9, 293, '4T3BA3BB8CU978008');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (41, 30, 22, 149174, 1, 4.7, 247, 'JN1CV6EK6FM234689');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (42, 60, 33, 135822, 3, 6.5, 324, 'WVGEG9BP8CD751002');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (43, 55, 25, 3061, 2, 3.7, 237, '1VWAH7A36DC949326');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (44, 67, 33, 17082, 3, 2.8, 174, 'JN1AZ4EH9BM416708');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (45, 76, 37, 129048, 4, 7.9, 57, '1N6AF0KY0FN830945');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (46, 86, 46, 85497, 3, 5.3, 238, 'JN1CV6FEXEM936621');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (47, 89, 32, 14160, 1, 1.4, 401, 'WAUBC48H65K310311');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (48, 20, 12, 155857, 4, 5.8, 283, '1G4PS5SK7F4578758');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (49, 36, 25, 95139, 1, 3.4, 247, 'WP0CB2A89CS546926');
insert into client_auto (id, client_id, model_id, odometer, engine_type_id, engine_volume, engine_bhp, car_vin) values (50, 54, 14, 69204, 2, 6.9, 341, 'KMHTC6ADXDU346219');

UPDATE client_auto SET engine_volume = NULL WHERE engine_type_id =4;

insert into staff (id, name, hired_at) values (1, 'Odessa Barrow', '2012-10-13');
insert into staff (id, name, hired_at) values (2, 'Blaire Reedick', '2011-04-12');
insert into staff (id, name, hired_at) values (3, 'Ardenia Winfred', '2014-10-06');
insert into staff (id, name, hired_at) values (4, 'Huberto Allard', '2011-07-20');
insert into staff (id, name, hired_at) values (5, 'Marysa Jobes', '2013-10-26');
insert into staff (id, name, hired_at) values (6, 'Kerby Banaszewski', '2015-10-27');
insert into staff (id, name, hired_at) values (7, 'Hallie Lloyds', '2017-09-08');
insert into staff (id, name, hired_at) values (8, 'Waldo Gyver', '2013-10-21');
insert into staff (id, name, hired_at) values (9, 'Valentijn Croster', '2019-01-20');
insert into staff (id, name, hired_at) values (10, 'Corrie Jorissen', '2018-03-04');
insert into staff (id, name, hired_at) values (11, 'Allys Jimmes', '2017-06-11');
insert into staff (id, name, hired_at) values (12, 'Doralyn Merrydew', '2010-04-01');
insert into staff (id, name, hired_at) values (13, 'Waylan Lamb-shine', '2010-10-30');
insert into staff (id, name, hired_at) values (14, 'Marleah Cleaves', '2013-09-27');
insert into staff (id, name, hired_at) values (15, 'Chelsy Trimmill', '2019-03-21');
insert into staff (id, name, hired_at) values (16, 'Saree Cuddehay', '2013-07-17');
insert into staff (id, name, hired_at) values (17, 'Web Anmore', '2013-07-01');
insert into staff (id, name, hired_at) values (18, 'Lurette Skentelbery', '2014-02-05');
insert into staff (id, name, hired_at) values (19, 'Shaylynn Gilbeart', '2019-10-18');
insert into staff (id, name, hired_at) values (20, 'Richardo Broadfield', '2016-04-24');

insert into pricelist (id, name, price) values (1, 'sapien quis libero nullam sit', 2849);
insert into pricelist (id, name, price) values (2, 'in est risus', 1222);
insert into pricelist (id, name, price) values (3, 'id ornare', 3206);
insert into pricelist (id, name, price) values (4, 'quam sollicitudin vitae', 2929);
insert into pricelist (id, name, price) values (5, 'lectus vestibulum quam sapien varius', 8572);
insert into pricelist (id, name, price) values (6, 'quis orci eget orci vehicula', 2713);
insert into pricelist (id, name, price) values (7, 'vulputate nonummy maecenas tincidunt lacus', 8586);
insert into pricelist (id, name, price) values (8, 'feugiat', 8350);
insert into pricelist (id, name, price) values (9, 'pede justo', 4142);
insert into pricelist (id, name, price) values (10, 'nulla tempus', 9360);
insert into pricelist (id, name, price) values (11, 'pellentesque at', 8016);
insert into pricelist (id, name, price) values (12, 'ut nunc', 9944);
insert into pricelist (id, name, price) values (13, 'bibendum morbi', 5247);
insert into pricelist (id, name, price) values (14, 'ut nunc', 6354);
insert into pricelist (id, name, price) values (15, 'turpis donec', 1109);
insert into pricelist (id, name, price) values (16, 'primis in', 7079);
insert into pricelist (id, name, price) values (17, 'est risus', 5302);
insert into pricelist (id, name, price) values (18, 'nam tristique tortor eu', 1336);
insert into pricelist (id, name, price) values (19, 'a feugiat et eros', 9743);
insert into pricelist (id, name, price) values (20, 'magna ac consequat metus sapien', 2447);
insert into pricelist (id, name, price) values (21, 'amet erat nulla tempus', 5495);
insert into pricelist (id, name, price) values (22, 'id massa', 8617);
insert into pricelist (id, name, price) values (23, 'lacinia erat vestibulum sed magna', 4136);
insert into pricelist (id, name, price) values (24, 'eget rutrum at lorem', 8537);
insert into pricelist (id, name, price) values (25, 'ac diam cras pellentesque', 7107);

insert into parts (id, name, model_id, price, quantity) values (1, 'in quam fringilla rhoncus mauris', 38, 15436, 19);
insert into parts (id, name, model_id, price, quantity) values (2, 'lectus suspendisse', 9, 2370, 7);
insert into parts (id, name, model_id, price, quantity) values (3, 'turpis integer', 10, 12811, 8);
insert into parts (id, name, model_id, price, quantity) values (4, 'vestibulum sagittis sapien cum', 10, 5781, 13);
insert into parts (id, name, model_id, price, quantity) values (5, 'quis justo maecenas rhoncus aliquam', 7, 21004, 11);
insert into parts (id, name, model_id, price, quantity) values (6, 'consequat', 49, 3814, 9);
insert into parts (id, name, model_id, price, quantity) values (7, 'sed', 12, 29784, 13);
insert into parts (id, name, model_id, price, quantity) values (8, 'ligula in', 37, 28859, 7);
insert into parts (id, name, model_id, price, quantity) values (9, 'vulputate justo in blandit ultrices', 16, 8830, 17);
insert into parts (id, name, model_id, price, quantity) values (10, 'nec', 33, 12982, 7);
insert into parts (id, name, model_id, price, quantity) values (11, 'justo aliquam', 50, 20878, 17);
insert into parts (id, name, model_id, price, quantity) values (12, 'vestibulum aliquet', 38, 28016, 18);
insert into parts (id, name, model_id, price, quantity) values (13, 'id turpis integer aliquet massa', 7, 5747, 20);
insert into parts (id, name, model_id, price, quantity) values (14, 'magnis dis parturient', 8, 25890, 12);
insert into parts (id, name, model_id, price, quantity) values (15, 'dapibus nulla suscipit ligula', 33, 12027, 5);
insert into parts (id, name, model_id, price, quantity) values (16, 'morbi vestibulum', 23, 11273, 15);
insert into parts (id, name, model_id, price, quantity) values (17, 'eleifend donec ut dolor', 47, 26503, 15);
insert into parts (id, name, model_id, price, quantity) values (18, 'mi nulla ac enim', 17, 10078, 11);
insert into parts (id, name, model_id, price, quantity) values (19, 'nulla eget', 45, 18896, 15);
insert into parts (id, name, model_id, price, quantity) values (20, 'ultrices enim', 49, 27459, 7);
insert into parts (id, name, model_id, price, quantity) values (21, 'primis', 42, 17390, 15);
insert into parts (id, name, model_id, price, quantity) values (22, 'condimentum', 13, 20731, 14);
insert into parts (id, name, model_id, price, quantity) values (23, 'mauris lacinia sapien quis libero', 34, 9401, 17);
insert into parts (id, name, model_id, price, quantity) values (24, 'et eros vestibulum ac est', 4, 3928, 9);
insert into parts (id, name, model_id, price, quantity) values (25, 'donec', 36, 26793, 2);
insert into parts (id, name, model_id, price, quantity) values (26, 'pede malesuada', 45, 9179, 2);
insert into parts (id, name, model_id, price, quantity) values (27, 'vivamus vestibulum sagittis', 12, 18666, 19);
insert into parts (id, name, model_id, price, quantity) values (28, 'tempor convallis nulla neque', 10, 7543, 20);
insert into parts (id, name, model_id, price, quantity) values (29, 'morbi sem', 46, 5243, 20);
insert into parts (id, name, model_id, price, quantity) values (30, 'est congue', 49, 6642, 13);
insert into parts (id, name, model_id, price, quantity) values (31, 'quam fringilla rhoncus', 21, 24730, 12);
insert into parts (id, name, model_id, price, quantity) values (32, 'lacinia aenean sit', 48, 27513, 13);
insert into parts (id, name, model_id, price, quantity) values (33, 'erat', 22, 1818, 12);
insert into parts (id, name, model_id, price, quantity) values (34, 'enim leo rhoncus sed vestibulum', 30, 23527, 4);
insert into parts (id, name, model_id, price, quantity) values (35, 'maecenas tristique est et tempus', 39, 3033, 8);
insert into parts (id, name, model_id, price, quantity) values (36, 'condimentum', 21, 9948, 6);
insert into parts (id, name, model_id, price, quantity) values (37, 'nulla neque libero convallis eget', 27, 2813, 8);
insert into parts (id, name, model_id, price, quantity) values (38, 'amet nulla quisque arcu', 21, 17062, 16);
insert into parts (id, name, model_id, price, quantity) values (39, 'turpis', 16, 29941, 12);
insert into parts (id, name, model_id, price, quantity) values (40, 'pellentesque quisque', 35, 16881, 15);
insert into parts (id, name, model_id, price, quantity) values (41, 'faucibus cursus', 30, 24348, 8);
insert into parts (id, name, model_id, price, quantity) values (42, 'nascetur ridiculus mus vivamus vestibulum', 9, 7918, 4);
insert into parts (id, name, model_id, price, quantity) values (43, 'vestibulum', 17, 26974, 16);
insert into parts (id, name, model_id, price, quantity) values (44, 'et eros vestibulum ac est', 41, 18530, 20);
insert into parts (id, name, model_id, price, quantity) values (45, 'pede ac diam cras', 15, 11033, 16);
insert into parts (id, name, model_id, price, quantity) values (46, 'diam in magna bibendum', 38, 6789, 12);
insert into parts (id, name, model_id, price, quantity) values (47, 'adipiscing molestie hendrerit', 34, 17025, 7);
insert into parts (id, name, model_id, price, quantity) values (48, 'ante ipsum primis', 19, 2099, 8);
insert into parts (id, name, model_id, price, quantity) values (49, 'amet nunc', 19, 25302, 6);
insert into parts (id, name, model_id, price, quantity) values (50, 'ut massa volutpat', 44, 15079, 8);
insert into parts (id, name, model_id, price, quantity) values (51, 'curabitur at', 19, 17224, 4);
insert into parts (id, name, model_id, price, quantity) values (52, 'sapien arcu sed', 12, 18557, 13);
insert into parts (id, name, model_id, price, quantity) values (53, 'consequat varius', 35, 22698, 19);
insert into parts (id, name, model_id, price, quantity) values (54, 'dolor quis odio consequat varius', 49, 11092, 16);
insert into parts (id, name, model_id, price, quantity) values (55, 'ridiculus mus vivamus vestibulum', 29, 10321, 2);
insert into parts (id, name, model_id, price, quantity) values (56, 'lorem ipsum', 50, 15176, 11);
insert into parts (id, name, model_id, price, quantity) values (57, 'nisl', 24, 27240, 7);
insert into parts (id, name, model_id, price, quantity) values (58, 'pede', 49, 3371, 13);
insert into parts (id, name, model_id, price, quantity) values (59, 'justo eu massa donec', 39, 23446, 18);
insert into parts (id, name, model_id, price, quantity) values (60, 'nibh fusce lacus purus aliquet', 37, 20480, 2);
insert into parts (id, name, model_id, price, quantity) values (61, 'commodo', 13, 3577, 16);
insert into parts (id, name, model_id, price, quantity) values (62, 'donec ut dolor', 29, 3467, 15);
insert into parts (id, name, model_id, price, quantity) values (63, 'sem mauris laoreet ut rhoncus', 20, 2617, 1);
insert into parts (id, name, model_id, price, quantity) values (64, 'justo maecenas rhoncus', 5, 13100, 5);
insert into parts (id, name, model_id, price, quantity) values (65, 'pede ullamcorper augue a', 15, 17263, 17);
insert into parts (id, name, model_id, price, quantity) values (66, 'in blandit ultrices', 6, 29479, 5);
insert into parts (id, name, model_id, price, quantity) values (67, 'vestibulum ac est', 37, 14053, 7);
insert into parts (id, name, model_id, price, quantity) values (68, 'orci mauris lacinia', 33, 9431, 6);
insert into parts (id, name, model_id, price, quantity) values (69, 'pretium quis', 46, 24466, 6);
insert into parts (id, name, model_id, price, quantity) values (70, 'arcu libero rutrum ac lobortis', 46, 4572, 1);
insert into parts (id, name, model_id, price, quantity) values (71, 'leo pellentesque ultrices mattis odio', 2, 12691, 10);
insert into parts (id, name, model_id, price, quantity) values (72, 'ipsum primis in faucibus orci', 49, 26513, 9);
insert into parts (id, name, model_id, price, quantity) values (73, 'cum sociis natoque penatibus', 48, 27968, 2);
insert into parts (id, name, model_id, price, quantity) values (74, 'diam cras pellentesque volutpat dui', 17, 16351, 14);
insert into parts (id, name, model_id, price, quantity) values (75, 'lacus at velit', 35, 8240, 3);
insert into parts (id, name, model_id, price, quantity) values (76, 'ipsum', 22, 12409, 19);
insert into parts (id, name, model_id, price, quantity) values (77, 'augue a suscipit', 6, 28783, 12);
insert into parts (id, name, model_id, price, quantity) values (78, 'vivamus', 5, 27474, 15);
insert into parts (id, name, model_id, price, quantity) values (79, 'massa id nisl venenatis lacinia', 35, 13900, 13);
insert into parts (id, name, model_id, price, quantity) values (80, 'eu massa donec dapibus duis', 10, 1636, 13);
insert into parts (id, name, model_id, price, quantity) values (81, 'cubilia curae mauris viverra', 49, 23144, 12);
insert into parts (id, name, model_id, price, quantity) values (82, 'ligula in lacus curabitur', 33, 4692, 4);
insert into parts (id, name, model_id, price, quantity) values (83, 'nec nisi volutpat eleifend donec', 31, 13815, 10);
insert into parts (id, name, model_id, price, quantity) values (84, 'nonummy integer', 43, 20032, 13);
insert into parts (id, name, model_id, price, quantity) values (85, 'vestibulum eget vulputate ut ultrices', 24, 27824, 20);
insert into parts (id, name, model_id, price, quantity) values (86, 'integer ac leo', 30, 28499, 4);
insert into parts (id, name, model_id, price, quantity) values (87, 'sed augue aliquam erat volutpat', 31, 28987, 19);
insert into parts (id, name, model_id, price, quantity) values (88, 'porttitor id consequat in', 31, 3239, 19);
insert into parts (id, name, model_id, price, quantity) values (89, 'id sapien', 4, 15325, 4);
insert into parts (id, name, model_id, price, quantity) values (90, 'integer ac', 25, 2017, 12);
insert into parts (id, name, model_id, price, quantity) values (91, 'orci pede', 13, 10296, 18);
insert into parts (id, name, model_id, price, quantity) values (92, 'primis in faucibus', 5, 12512, 5);
insert into parts (id, name, model_id, price, quantity) values (93, 'tellus semper interdum', 12, 3355, 19);
insert into parts (id, name, model_id, price, quantity) values (94, 'sapien', 34, 4539, 19);
insert into parts (id, name, model_id, price, quantity) values (95, 'diam erat fermentum justo nec', 18, 7662, 12);
insert into parts (id, name, model_id, price, quantity) values (96, 'a', 38, 18260, 5);
insert into parts (id, name, model_id, price, quantity) values (97, 'lectus', 25, 12440, 14);
insert into parts (id, name, model_id, price, quantity) values (98, 'turpis adipiscing', 5, 17917, 3);
insert into parts (id, name, model_id, price, quantity) values (99, 'habitasse platea', 3, 8967, 17);
insert into parts (id, name, model_id, price, quantity) values (100, 'porttitor lacus at turpis donec', 1, 12957, 8);

insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (1, 24, 18, 33, 18, '2020-03-07', '2020-11-19');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (2, 44, 12, 91, 8, '2020-07-28', '2020-02-09');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (3, 40, 25, 55, 7, '2019-10-21', '2021-02-04');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (4, 22, 4, 70, 2, '2020-09-08', '2020-11-07');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (5, 38, 7, 89, 6, '2020-08-26', '2020-05-18');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (6, 21, 24, 15, 11, '2019-11-10', '2020-06-19');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (7, 35, 21, 18, 10, '2020-08-21', '2021-01-23');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (8, 28, 20, 33, 14, '2020-03-05', '2020-10-19');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (9, 46, 18, 6, 6, '2020-06-29', '2020-05-09');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (10, 4, 12, 28, 9, '2019-11-15', '2020-05-08');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (11, 49, 25, 84, 7, '2020-05-22', '2020-11-27');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (12, 46, 24, 16, 6, '2020-02-25', '2020-07-02');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (13, 45, 3, 3, 11, '2020-02-24', '2020-08-20');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (14, 10, 20, 35, 17, '2020-08-12', '2020-01-30');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (15, 3, 22, 18, 4, '2020-07-25', '2020-08-07');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (16, 5, 25, 86, 18, '2020-07-31', '2020-02-18');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (17, 1, 21, 99, 11, '2020-09-11', '2020-11-28');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (18, 8, 19, 66, 3, '2020-03-13', '2020-12-04');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (19, 18, 3, 65, 10, '2020-09-21', '2020-11-13');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (20, 40, 10, 4, 7, '2020-05-31', '2020-11-14');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (21, 30, 2, 45, 1, '2020-05-26', '2020-06-15');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (22, 44, 8, 57, 5, '2019-12-12', '2020-07-24');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (23, 27, 2, 65, 16, '2019-11-03', '2020-10-07');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (24, 46, 21, 59, 20, '2019-12-05', '2020-07-04');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (25, 43, 5, 26, 4, '2020-08-27', '2020-03-08');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (26, 24, 7, 44, 1, '2019-12-10', '2019-12-29');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (27, 34, 15, 82, 20, '2020-10-14', '2020-04-24');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (28, 9, 7, 61, 18, '2020-04-11', '2020-08-03');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (29, 23, 21, 69, 12, '2019-11-12', '2020-01-19');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (30, 21, 15, 93, 13, '2020-02-17', '2020-05-12');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (31, 9, 13, 28, 3, '2019-11-17', '2020-10-15');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (32, 30, 3, 45, 12, '2020-05-07', '2020-06-10');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (33, 49, 22, 95, 8, '2019-10-23', '2020-03-14');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (34, 42, 22, 26, 18, '2020-04-27', '2020-08-19');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (35, 21, 18, 85, 9, '2019-10-11', '2020-05-23');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (36, 21, 14, 30, 3, '2019-12-28', '2020-04-17');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (37, 37, 11, 75, 20, '2020-02-07', '2020-11-06');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (38, 46, 6, 62, 1, '2019-11-13', '2020-02-13');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (39, 16, 22, 67, 13, '2020-09-20', '2020-07-06');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (40, 30, 18, 2, 18, '2019-10-22', '2020-01-13');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (41, 31, 8, 80, 15, '2019-10-19', '2020-12-26');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (42, 10, 11, 60, 16, '2020-03-11', '2019-12-04');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (43, 24, 22, 96, 17, '2020-09-25', '2020-02-22');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (44, 3, 1, 44, 12, '2020-09-22', '2020-02-28');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (45, 18, 4, 83, 2, '2020-02-06', '2020-02-02');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (46, 33, 25, 63, 14, '2019-10-16', '2021-01-24');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (47, 38, 4, 16, 7, '2020-10-27', '2020-11-16');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (48, 43, 1, 25, 20, '2019-10-26', '2021-01-20');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (49, 6, 17, 46, 9, '2019-10-25', '2020-03-19');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (50, 30, 25, 72, 4, '2020-06-06', '2020-03-09');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (51, 38, 3, 9, 11, '2020-01-22', '2020-05-12');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (52, 12, 17, 34, 19, '2019-12-13', '2020-05-31');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (53, 2, 13, 25, 18, '2019-11-02', '2020-01-03');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (54, 2, 24, 71, 9, '2020-10-31', '2020-11-16');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (55, 31, 16, 87, 4, '2020-02-23', '2020-06-24');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (56, 19, 23, 54, 20, '2020-08-04', '2020-07-06');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (57, 38, 19, 92, 6, '2020-09-16', '2020-01-27');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (58, 8, 23, 25, 18, '2020-08-25', '2020-10-10');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (59, 49, 6, 77, 12, '2020-02-25', '2020-08-31');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (60, 27, 23, 91, 17, '2020-08-16', '2020-01-08');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (61, 23, 8, 80, 11, '2019-10-15', '2020-01-28');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (62, 39, 13, 13, 15, '2020-02-24', '2020-10-10');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (63, 30, 12, 38, 8, '2020-03-21', '2019-12-22');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (64, 48, 24, 60, 2, '2020-06-15', '2020-12-02');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (65, 27, 5, 13, 20, '2020-03-15', '2019-12-29');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (66, 36, 19, 48, 7, '2020-06-07', '2020-11-03');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (67, 45, 20, 33, 8, '2020-04-14', '2020-11-07');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (68, 16, 4, 30, 12, '2019-12-22', '2020-01-25');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (69, 18, 20, 55, 1, '2020-06-16', '2020-04-02');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (70, 8, 14, 86, 19, '2020-05-22', '2020-08-23');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (71, 49, 14, 95, 8, '2020-01-04', '2020-05-07');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (72, 14, 7, 64, 19, '2020-05-17', '2020-02-01');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (73, 15, 1, 4, 13, '2020-05-11', '2020-01-13');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (74, 38, 3, 42, 18, '2020-04-22', '2020-11-02');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (75, 35, 3, 74, 2, '2020-01-11', '2019-12-28');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (76, 19, 8, 18, 8, '2020-08-21', '2020-06-16');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (77, 42, 3, 24, 16, '2020-05-29', '2020-05-21');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (78, 17, 3, 75, 19, '2020-08-11', '2019-12-18');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (79, 40, 12, 48, 18, '2020-02-17', '2019-12-16');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (80, 28, 12, 25, 1, '2019-12-23', '2020-10-27');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (81, 43, 16, 93, 10, '2020-10-16', '2020-08-13');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (82, 50, 5, 83, 19, '2020-06-15', '2020-06-29');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (83, 36, 16, 38, 6, '2019-10-30', '2020-10-02');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (84, 5, 22, 100, 18, '2019-11-01', '2020-03-27');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (85, 5, 13, 41, 8, '2020-03-23', '2020-12-18');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (86, 26, 5, 18, 5, '2019-11-03', '2020-06-19');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (87, 36, 25, 24, 16, '2020-05-21', '2020-10-13');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (88, 32, 24, 15, 16, '2020-08-14', '2019-12-03');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (89, 44, 6, 81, 9, '2020-07-20', '2020-10-05');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (90, 36, 2, 94, 5, '2020-05-16', '2020-01-29');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (91, 11, 22, 87, 2, '2020-05-10', '2020-10-12');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (92, 46, 8, 87, 1, '2020-09-07', '2020-09-02');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (93, 1, 21, 78, 18, '2020-06-17', '2020-02-06');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (94, 28, 11, 99, 20, '2019-11-04', '2020-06-04');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (95, 40, 10, 64, 4, '2020-02-02', '2020-08-25');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (96, 26, 2, 15, 3, '2020-08-04', '2020-02-24');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (97, 24, 11, 20, 16, '2020-10-18', '2020-03-13');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (98, 30, 24, 95, 15, '2019-12-09', '2020-04-26');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (99, 50, 12, 79, 4, '2020-09-24', '2020-10-27');
insert into orders (id, client_auto_id, service_id, part_id, staff_id, created_at, finished_at) values (100, 41, 9, 42, 18, '2020-08-06', '2020-10-04');

UPDATE orders SET finished_at = date_add(created_at, INTERVAL 1 month) WHERE  created_at > finished_at;

CREATE INDEX auto_models_idx ON autos(vendor,model);

CREATE INDEX pricelist_idx ON pricelist(name,price);

CREATE INDEX parts_idx ON parts(name,price);